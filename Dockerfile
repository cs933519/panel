# Stage 0:
# Build the assets that are needed for the frontend. This build stage is then discarded
# since we won't need NodeJS anymore in the future. This Docker image ships a final production
# level distribution of Pterodactyl.
FROM mhart/alpine-node:14
WORKDIR /app
COPY . ./
RUN yarn install --frozen-lockfile \
    && yarn run build:production

# Stage 1:
# Build the actual container with all of the needed PHP dependencies that will run the application.
FROM php:7.4-fpm-alpine
WORKDIR /app
COPY . ./
COPY --from=0 /app/public/assets ./public/assets
RUN apk add --no-cache --update ca-certificates dcron curl git supervisor tar unzip nginx libpng-dev libxml2-dev libzip-dev certbot \
    && docker-php-ext-configure zip \
    && docker-php-ext-install bcmath gd pdo_mysql zip \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && cp .env.example .env \
    && mkdir -p bootstrap/cache/ storage/logs storage/framework/sessions storage/framework/views storage/framework/cache \
    && chmod 777 -R bootstrap storage \
    && composer install --no-dev --optimize-autoloader \
    && rm -rf .env bootstrap/cache/*.php \
    && chown -R nginx:nginx .

RUN rm /usr/local/etc/php-fpm.d/www.conf.default \
    && echo "* * * * * /usr/local/bin/php /app/artisan schedule:run >> /dev/null 2>&1" >> /var/spool/cron/crontabs/root \
    && sed -i s/ssl_session_cache/#ssl_session_cache/g /etc/nginx/nginx.conf \
    && mkdir -p /var/run/php /var/run/nginx

COPY .github/docker/default.conf /etc/nginx/conf.d/default.conf
COPY .github/docker/www.conf /usr/local/etc/php-fpm.d/www.conf
COPY .github/docker/supervisord.conf /etc/supervisord.conf

EXPOSE 80 443
ENTRYPOINT ["/bin/ash", ".github/docker/entrypoint.sh"]
CMD [ "supervisord", "-n", "-c", "/etc/supervisord.conf" ]