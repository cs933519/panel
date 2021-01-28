<?php

namespace Pterodactyl\Http\Controllers\Api\Remote\Servers;

use Cake\Chronos\Chronos;
use Illuminate\Support\Arr;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Http\JsonResponse;
use Pterodactyl\Models\Allocation;
use Illuminate\Support\Facades\Log;
use Pterodactyl\Models\ServerTransfer;
use Illuminate\Database\ConnectionInterface;
use Pterodactyl\Http\Controllers\Controller;
use Pterodactyl\Services\Nodes\NodeJWTService;
use Pterodactyl\Repositories\Eloquent\ServerRepository;
use Pterodactyl\Repositories\Wings\DaemonServerRepository;
use Pterodactyl\Repositories\Wings\DaemonTransferRepository;
use Pterodactyl\Exceptions\Http\Connection\DaemonConnectionException;
use Pterodactyl\Services\Servers\ServerConfigurationStructureService;

class ServerTransferController extends Controller
{
    /**
     * @var \Illuminate\Database\ConnectionInterface
     */
    private $connection;

    /**
     * @var \Pterodactyl\Repositories\Eloquent\ServerRepository
     */
    private $repository;

    /**
     * @var \Pterodactyl\Repositories\Wings\DaemonServerRepository
     */
    private $daemonServerRepository;

    /**
     * @var \Pterodactyl\Repositories\Wings\DaemonTransferRepository
     */
    private $daemonTransferRepository;

    /**
     * @var \Pterodactyl\Services\Servers\ServerConfigurationStructureService
     */
    private $configurationStructureService;

    /**
     * @var \Pterodactyl\Services\Nodes\NodeJWTService
     */
    private $jwtService;

    /**
     * ServerTransferController constructor.
     *
     * @param \Illuminate\Database\ConnectionInterface $connection
     * @param \Pterodactyl\Repositories\Eloquent\ServerRepository $repository
     * @param \Pterodactyl\Repositories\Wings\DaemonServerRepository $daemonServerRepository
     * @param \Pterodactyl\Repositories\Wings\DaemonTransferRepository $daemonTransferRepository
     * @param \Pterodactyl\Services\Servers\ServerConfigurationStructureService $configurationStructureService
     * @param \Pterodactyl\Services\Nodes\NodeJWTService $jwtService
     */
    public function __construct(
        ConnectionInterface $connection,
        ServerRepository $repository,
        DaemonServerRepository $daemonServerRepository,
        DaemonTransferRepository $daemonTransferRepository,
        ServerConfigurationStructureService $configurationStructureService,
        NodeJWTService $jwtService
    ) {
        $this->connection = $connection;
        $this->repository = $repository;
        $this->daemonServerRepository = $daemonServerRepository;
        $this->daemonTransferRepository = $daemonTransferRepository;
        $this->configurationStructureService = $configurationStructureService;
        $this->jwtService = $jwtService;
    }

    /**
     * The daemon notifies us about the archive status.
     *
     * @param \Illuminate\Http\Request $request
     * @param string $uuid
     * @return \Illuminate\Http\JsonResponse
     *
     * @throws \Pterodactyl\Exceptions\Repository\RecordNotFoundException
     * @throws \Throwable
     */
    public function archive(Request $request, string $uuid)
    {
        $server = $this->repository->getByUuid($uuid);

        // Unsuspend the server and don't continue the transfer.
        if (! $request->input('successful')) {
            return $this->processFailedTransfer($server->transfer);
        }

        // We want to generate a new configuration using the new node_id value from the
        // transfer, and not the old node value.
        $data = $this->configurationStructureService->handle($server, [
            'node_id' => $server->transfer->new_node,
        ]);

        $allocations = $server->getAllocationMappings();
        $primary = array_key_first($allocations);
        Arr::set($data, 'allocations.default.ip', $primary);
        Arr::set($data, 'allocations.default.port', $allocations[$primary][0]);
        Arr::set($data, 'service.skip_scripts', true);
        Arr::set($data, 'suspended', false);

        $this->connection->transaction(function () use ($data, $server) {
            // This token is used by the new node the server is being transfered to. It allows
            // that node to communicate with the old node during the process to initiate the
            // actual file transfer.
            $token = $this->jwtService
                ->setExpiresAt(Chronos::now()->addMinutes(15))
                ->setSubject($server->uuid)
                ->handle($server->node, $server->uuid, 'sha256');

            // Update the archived field on the transfer to make clients connect to the websocket
            // on the new node to be able to receive transfer logs.
            $server->transfer->forceFill(['archived' => true])->saveOrFail();

            // On the daemon transfer repository, make sure to set the node after the server
            // because setServer() tells the repository to use the server's node and not the one
            // we want to specify.
            $this->daemonTransferRepository
                ->setServer($server)
                ->setNode($server->transfer->newNode)
                ->notify($server, $data, $server->node, $token->__toString());
        });

        return new JsonResponse([], Response::HTTP_NO_CONTENT);
    }

    /**
     * The daemon notifies us about a transfer failure.
     *
     * @param string $uuid
     * @return \Illuminate\Http\JsonResponse
     *
     * @throws \Throwable
     */
    public function failure(string $uuid)
    {
        $server = $this->repository->getByUuid($uuid);

        return $this->processFailedTransfer($server->transfer);
    }

    /**
     * The daemon notifies us about a transfer success.
     *
     * @param string $uuid
     * @return \Illuminate\Http\JsonResponse
     *
     * @throws \Throwable
     */
    public function success(string $uuid)
    {
        $server = $this->repository->getByUuid($uuid);
        $transfer = $server->transfer;

        /** @var \Pterodactyl\Models\Server $server */
        $server = $this->connection->transaction(function () use ($server, $transfer) {
            $allocations = [$transfer->old_allocation];
            if (! empty($transfer->old_additional_allocations)) {
                array_push($allocations, $transfer->old_additional_allocations);
            }

            // Remove the old allocations for the server and re-assign the server to the new
            // primary allocation and node.
            Allocation::query()->whereIn('id', $allocations)->update(['server_id' => null]);
            $server->update([
                'allocation_id' => $transfer->new_allocation,
                'node_id' => $transfer->new_node,
            ]);

            $server = $server->fresh();
            $server->transfer->update(['successful' => true]);

            return $server;
        });

        // Delete the server from the old node making sure to point it to the old node so
        // that we do not delete it from the new node the server was transfered to.
        try {
            $this->daemonServerRepository
                ->setServer($server)
                ->setNode($transfer->oldNode)
                ->delete();
        } catch (DaemonConnectionException $exception) {
            Log::warning($exception, ['transfer_id' => $server->transfer->id]);
        }

        return new JsonResponse([], Response::HTTP_NO_CONTENT);
    }

    /**
     * Release all of the reserved allocations for this transfer and mark it as failed in
     * the database.
     *
     * @param \Pterodactyl\Models\ServerTransfer $transfer
     * @return \Illuminate\Http\JsonResponse
     *
     * @throws \Throwable
     */
    protected function processFailedTransfer(ServerTransfer $transfer)
    {
        $this->connection->transaction(function () use (&$transfer) {
            $transfer->forceFill(['successful' => false])->saveOrFail();

            $allocations = [$transfer->new_allocation];
            if (! empty($transfer->new_additional_allocations)) {
                array_push($allocations, $transfer->new_additional_allocations);
            }

            Allocation::query()->whereIn('id', $allocations)->update(['server_id' => null]);
        });

        return new JsonResponse([], Response::HTTP_NO_CONTENT);
    }
}