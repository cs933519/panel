-- MariaDB dump 10.18  Distrib 10.5.8-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: panel
-- ------------------------------------------------------
-- Server version	10.5.8-MariaDB-1:10.5.8+maria~bionic

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `allocations`
--

DROP TABLE IF EXISTS `allocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `allocations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `node_id` int(10) unsigned NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_alias` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port` mediumint(8) unsigned NOT NULL,
  `server_id` int(10) unsigned DEFAULT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `allocations_node_id_ip_port_unique` (`node_id`,`ip`,`port`),
  KEY `allocations_server_id_foreign` (`server_id`),
  CONSTRAINT `allocations_node_id_foreign` FOREIGN KEY (`node_id`) REFERENCES `nodes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `allocations_server_id_foreign` FOREIGN KEY (`server_id`) REFERENCES `servers` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allocations`
--

LOCK TABLES `allocations` WRITE;
/*!40000 ALTER TABLE `allocations` DISABLE KEYS */;
INSERT INTO `allocations` VALUES (1,1,'23.227.165.150',NULL,25565,1,NULL,NULL,'2021-01-27 22:08:48'),(2,1,'23.227.165.150',NULL,25566,NULL,NULL,NULL,NULL),(3,1,'23.227.165.150',NULL,25567,NULL,NULL,NULL,NULL),(4,1,'23.227.165.150',NULL,25568,NULL,NULL,NULL,NULL),(5,1,'23.227.165.150',NULL,25569,NULL,NULL,NULL,NULL),(6,1,'23.227.165.150',NULL,25570,NULL,NULL,NULL,NULL),(7,1,'23.227.165.150',NULL,25571,NULL,NULL,NULL,NULL),(8,1,'23.227.165.150',NULL,25572,NULL,NULL,NULL,NULL),(9,1,'23.227.165.150',NULL,25573,NULL,NULL,NULL,NULL),(10,1,'23.227.165.150',NULL,25574,NULL,NULL,NULL,NULL),(11,1,'23.227.165.150',NULL,25575,NULL,NULL,NULL,NULL),(12,1,'23.227.165.150',NULL,25576,NULL,NULL,NULL,NULL),(13,1,'23.227.165.150',NULL,25577,NULL,NULL,NULL,NULL),(14,1,'23.227.165.150',NULL,25578,NULL,NULL,NULL,NULL),(15,1,'23.227.165.150',NULL,25579,NULL,NULL,NULL,NULL),(16,1,'23.227.165.150',NULL,25580,NULL,NULL,NULL,NULL),(17,1,'23.227.165.150',NULL,25581,NULL,NULL,NULL,NULL),(18,1,'23.227.165.150',NULL,25582,NULL,NULL,NULL,NULL),(19,1,'23.227.165.150',NULL,25583,NULL,NULL,NULL,NULL),(20,1,'23.227.165.150',NULL,25584,NULL,NULL,NULL,NULL),(21,1,'23.227.165.150',NULL,25585,NULL,NULL,NULL,NULL),(22,1,'23.227.165.150',NULL,25586,NULL,NULL,NULL,NULL),(23,1,'23.227.165.150',NULL,25587,NULL,NULL,NULL,NULL),(24,1,'23.227.165.150',NULL,25588,NULL,NULL,NULL,NULL),(25,1,'23.227.165.150',NULL,25589,NULL,NULL,NULL,NULL),(26,1,'23.227.165.150',NULL,25590,NULL,NULL,NULL,NULL),(27,1,'23.227.165.150',NULL,25591,NULL,NULL,NULL,NULL),(28,1,'23.227.165.150',NULL,25592,NULL,NULL,NULL,NULL),(29,1,'23.227.165.150',NULL,25593,NULL,NULL,NULL,NULL),(30,1,'23.227.165.150',NULL,25594,NULL,NULL,NULL,NULL),(31,1,'23.227.165.150',NULL,25595,NULL,NULL,NULL,NULL),(32,1,'23.227.165.150',NULL,25596,NULL,NULL,NULL,NULL),(33,1,'23.227.165.150',NULL,25597,NULL,NULL,NULL,NULL),(34,1,'23.227.165.150',NULL,25598,NULL,NULL,NULL,NULL),(35,1,'23.227.165.150',NULL,25599,NULL,NULL,NULL,NULL),(36,1,'23.227.165.150',NULL,25600,NULL,NULL,NULL,NULL),(37,1,'23.227.165.150',NULL,25601,NULL,NULL,NULL,NULL),(38,1,'23.227.165.150',NULL,25602,NULL,NULL,NULL,NULL),(39,1,'23.227.165.150',NULL,25603,NULL,NULL,NULL,NULL),(40,1,'23.227.165.150',NULL,25604,NULL,NULL,NULL,NULL),(41,1,'23.227.165.150',NULL,25605,NULL,NULL,NULL,NULL),(42,1,'23.227.165.150',NULL,25606,NULL,NULL,NULL,NULL),(43,1,'23.227.165.150',NULL,25607,NULL,NULL,NULL,NULL),(44,1,'23.227.165.150',NULL,25608,NULL,NULL,NULL,NULL),(45,1,'23.227.165.150',NULL,25609,NULL,NULL,NULL,NULL),(46,1,'23.227.165.150',NULL,25610,NULL,NULL,NULL,NULL),(47,1,'23.227.165.150',NULL,25611,NULL,NULL,NULL,NULL),(48,1,'23.227.165.150',NULL,25612,NULL,NULL,NULL,NULL),(49,1,'23.227.165.150',NULL,25613,NULL,NULL,NULL,NULL),(50,1,'23.227.165.150',NULL,25614,NULL,NULL,NULL,NULL),(51,1,'23.227.165.150',NULL,25615,NULL,NULL,NULL,NULL),(52,1,'23.227.165.150',NULL,25616,NULL,NULL,NULL,NULL),(53,1,'23.227.165.150',NULL,25617,NULL,NULL,NULL,NULL),(54,1,'23.227.165.150',NULL,25618,NULL,NULL,NULL,NULL),(55,1,'23.227.165.150',NULL,25619,NULL,NULL,NULL,NULL),(56,1,'23.227.165.150',NULL,25620,NULL,NULL,NULL,NULL),(57,1,'23.227.165.150',NULL,25621,NULL,NULL,NULL,NULL),(58,1,'23.227.165.150',NULL,25622,NULL,NULL,NULL,NULL),(59,1,'23.227.165.150',NULL,25623,NULL,NULL,NULL,NULL),(60,1,'23.227.165.150',NULL,25624,NULL,NULL,NULL,NULL),(61,1,'23.227.165.150',NULL,25625,NULL,NULL,NULL,NULL),(62,1,'23.227.165.150',NULL,25626,NULL,NULL,NULL,NULL),(63,1,'23.227.165.150',NULL,25627,NULL,NULL,NULL,NULL),(64,1,'23.227.165.150',NULL,25628,NULL,NULL,NULL,NULL),(65,1,'23.227.165.150',NULL,25629,NULL,NULL,NULL,NULL),(66,1,'23.227.165.150',NULL,25630,NULL,NULL,NULL,NULL),(67,1,'23.227.165.150',NULL,25631,NULL,NULL,NULL,NULL),(68,1,'23.227.165.150',NULL,25632,NULL,NULL,NULL,NULL),(69,1,'23.227.165.150',NULL,25633,NULL,NULL,NULL,NULL),(70,1,'23.227.165.150',NULL,25634,NULL,NULL,NULL,NULL),(71,1,'23.227.165.150',NULL,25635,NULL,NULL,NULL,NULL),(72,1,'23.227.165.150',NULL,25636,NULL,NULL,NULL,NULL),(73,1,'23.227.165.150',NULL,25637,NULL,NULL,NULL,NULL),(74,1,'23.227.165.150',NULL,25638,NULL,NULL,NULL,NULL),(75,1,'23.227.165.150',NULL,25639,NULL,NULL,NULL,NULL),(76,1,'23.227.165.150',NULL,25640,NULL,NULL,NULL,NULL),(77,1,'23.227.165.150',NULL,25641,NULL,NULL,NULL,NULL),(78,1,'23.227.165.150',NULL,25642,NULL,NULL,NULL,NULL),(79,1,'23.227.165.150',NULL,25643,NULL,NULL,NULL,NULL),(80,1,'23.227.165.150',NULL,25644,NULL,NULL,NULL,NULL),(81,1,'23.227.165.150',NULL,25645,NULL,NULL,NULL,NULL),(82,1,'23.227.165.150',NULL,25646,NULL,NULL,NULL,NULL),(83,1,'23.227.165.150',NULL,25647,NULL,NULL,NULL,NULL),(84,1,'23.227.165.150',NULL,25648,NULL,NULL,NULL,NULL),(85,1,'23.227.165.150',NULL,25649,NULL,NULL,NULL,NULL),(86,1,'23.227.165.150',NULL,25650,NULL,NULL,NULL,NULL),(87,1,'23.227.165.150',NULL,25651,NULL,NULL,NULL,NULL),(88,1,'23.227.165.150',NULL,25652,NULL,NULL,NULL,NULL),(89,1,'23.227.165.150',NULL,25653,NULL,NULL,NULL,NULL),(90,1,'23.227.165.150',NULL,25654,NULL,NULL,NULL,NULL),(91,1,'23.227.165.150',NULL,25655,NULL,NULL,NULL,NULL),(92,1,'23.227.165.150',NULL,25656,NULL,NULL,NULL,NULL),(93,1,'23.227.165.150',NULL,25657,NULL,NULL,NULL,NULL),(94,1,'23.227.165.150',NULL,25658,NULL,NULL,NULL,NULL),(95,1,'23.227.165.150',NULL,25659,NULL,NULL,NULL,NULL),(96,1,'23.227.165.150',NULL,25660,NULL,NULL,NULL,NULL),(97,1,'23.227.165.150',NULL,25661,NULL,NULL,NULL,NULL),(98,1,'23.227.165.150',NULL,25662,NULL,NULL,NULL,NULL),(99,1,'23.227.165.150',NULL,25663,NULL,NULL,NULL,NULL),(100,1,'23.227.165.150',NULL,25664,NULL,NULL,NULL,NULL),(101,1,'23.227.165.150',NULL,25665,NULL,NULL,NULL,NULL),(102,1,'23.227.165.150',NULL,25666,NULL,NULL,NULL,NULL),(103,1,'23.227.165.150',NULL,25667,NULL,NULL,NULL,NULL),(104,1,'23.227.165.150',NULL,25668,NULL,NULL,NULL,NULL),(105,1,'23.227.165.150',NULL,25669,NULL,NULL,NULL,NULL),(106,1,'23.227.165.150',NULL,25670,NULL,NULL,NULL,NULL),(107,1,'23.227.165.150',NULL,25671,NULL,NULL,NULL,NULL),(108,1,'23.227.165.150',NULL,25672,NULL,NULL,NULL,NULL),(109,1,'23.227.165.150',NULL,25673,NULL,NULL,NULL,NULL),(110,1,'23.227.165.150',NULL,25674,NULL,NULL,NULL,NULL),(111,1,'23.227.165.150',NULL,25675,NULL,NULL,NULL,NULL),(112,1,'23.227.165.150',NULL,25676,NULL,NULL,NULL,NULL),(113,1,'23.227.165.150',NULL,25677,NULL,NULL,NULL,NULL),(114,1,'23.227.165.150',NULL,25678,NULL,NULL,NULL,NULL),(115,1,'23.227.165.150',NULL,25679,NULL,NULL,NULL,NULL),(116,1,'23.227.165.150',NULL,25680,NULL,NULL,NULL,NULL),(117,1,'23.227.165.150',NULL,25681,NULL,NULL,NULL,NULL),(118,1,'23.227.165.150',NULL,25682,NULL,NULL,NULL,NULL),(119,1,'23.227.165.150',NULL,25683,NULL,NULL,NULL,NULL),(120,1,'23.227.165.150',NULL,25684,NULL,NULL,NULL,NULL),(121,1,'23.227.165.150',NULL,25685,NULL,NULL,NULL,NULL),(122,1,'23.227.165.150',NULL,25686,NULL,NULL,NULL,NULL),(123,1,'23.227.165.150',NULL,25687,NULL,NULL,NULL,NULL),(124,1,'23.227.165.150',NULL,25688,NULL,NULL,NULL,NULL),(125,1,'23.227.165.150',NULL,25689,NULL,NULL,NULL,NULL),(126,1,'23.227.165.150',NULL,25690,NULL,NULL,NULL,NULL),(127,1,'23.227.165.150',NULL,25691,NULL,NULL,NULL,NULL),(128,1,'23.227.165.150',NULL,25692,NULL,NULL,NULL,NULL),(129,1,'23.227.165.150',NULL,25693,NULL,NULL,NULL,NULL),(130,1,'23.227.165.150',NULL,25694,NULL,NULL,NULL,NULL),(131,1,'23.227.165.150',NULL,25695,NULL,NULL,NULL,NULL),(132,1,'23.227.165.150',NULL,25696,NULL,NULL,NULL,NULL),(133,1,'23.227.165.150',NULL,25697,NULL,NULL,NULL,NULL),(134,1,'23.227.165.150',NULL,25698,NULL,NULL,NULL,NULL),(135,1,'23.227.165.150',NULL,25699,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `allocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_keys`
--

DROP TABLE IF EXISTS `api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `key_type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `identifier` char(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `allowed_ips` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `memo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `r_servers` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `r_nodes` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `r_allocations` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `r_users` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `r_locations` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `r_nests` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `r_eggs` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `r_database_hosts` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `r_server_databases` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_keys_identifier_unique` (`identifier`),
  KEY `api_keys_user_id_foreign` (`user_id`),
  CONSTRAINT `api_keys_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_keys`
--

LOCK TABLES `api_keys` WRITE;
/*!40000 ALTER TABLE `api_keys` DISABLE KEYS */;
INSERT INTO `api_keys` VALUES (1,1,2,'RgSQqVxFVAdAYPCb','eyJpdiI6ImpvVlFkYWhFdDZnL2F1bU4vZWZpQXc9PSIsInZhbHVlIjoiTVRiK2pBUjBZNFJCODY3U2JFUjlFUFJmVnVmZVd4dWhiam5XejFEWGU2ZFM4bHhJcmpmT2twQVdCUU9FTVlFQSIsIm1hYyI6ImFjN2FiMmQ4N2U5NWRkOTViMjAxY2E5MmUwNDljZDUwYWNiOWZkMjA5YjRlNThiYTZmNDJiYTUyMmMwNGIwOTgifQ==','[]','Automatically generated node deployment key.','2021-01-27 19:14:39','2021-01-27 19:14:35','2021-01-27 19:14:39',0,1,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_logs`
--

DROP TABLE IF EXISTS `api_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `authorized` tinyint(1) NOT NULL,
  `error` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` char(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` char(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_logs`
--

LOCK TABLES `api_logs` WRITE;
/*!40000 ALTER TABLE `api_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backups`
--

DROP TABLE IF EXISTS `backups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `server_id` int(10) unsigned NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upload_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_successful` tinyint(1) NOT NULL DEFAULT 1,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ignored_files` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bytes` bigint(20) unsigned NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `backups_uuid_unique` (`uuid`),
  KEY `backups_server_id_foreign` (`server_id`),
  CONSTRAINT `backups_server_id_foreign` FOREIGN KEY (`server_id`) REFERENCES `servers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backups`
--

LOCK TABLES `backups` WRITE;
/*!40000 ALTER TABLE `backups` DISABLE KEYS */;
/*!40000 ALTER TABLE `backups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `database_hosts`
--

DROP TABLE IF EXISTS `database_hosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `database_hosts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `port` int(10) unsigned NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_databases` int(10) unsigned DEFAULT NULL,
  `node_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `database_hosts_node_id_foreign` (`node_id`),
  CONSTRAINT `database_hosts_node_id_foreign` FOREIGN KEY (`node_id`) REFERENCES `nodes` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database_hosts`
--

LOCK TABLES `database_hosts` WRITE;
/*!40000 ALTER TABLE `database_hosts` DISABLE KEYS */;
INSERT INTO `database_hosts` VALUES (1,'dal-ext-01-devgame Database Host','dal-ext-01-devgame.bya.ac',3306,'client_db_user','eyJpdiI6Im5qd0lKR0ZtYzQzalFlcVViUGdpZmc9PSIsInZhbHVlIjoiWnd0T2ZhQTFnV2UxM01xcjMwcmcwVVIxTEsrNU9YUlNsWDh1dzVzWjlZbldtZXd4ZTN6SXVxd3UrWTgxQmx1ZSIsIm1hYyI6ImU0N2MwZmY2NDc4OWUzYTEzOTU5MWM3NDhiMDE1MzYzYTU0YjNjZjVmNWMzMDgwZmMyMTQ5MDk4MjFhNzRkYTQifQ==',NULL,1,'2021-01-27 19:16:22','2021-01-27 19:16:22');
/*!40000 ALTER TABLE `database_hosts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `databases`
--

DROP TABLE IF EXISTS `databases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `databases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `server_id` int(10) unsigned NOT NULL,
  `database_host_id` int(10) unsigned NOT NULL,
  `database` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remote` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '%',
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_connections` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `databases_database_host_id_username_unique` (`database_host_id`,`username`),
  UNIQUE KEY `databases_database_host_id_server_id_database_unique` (`database_host_id`,`server_id`,`database`),
  KEY `databases_server_id_foreign` (`server_id`),
  CONSTRAINT `databases_database_host_id_foreign` FOREIGN KEY (`database_host_id`) REFERENCES `database_hosts` (`id`),
  CONSTRAINT `databases_server_id_foreign` FOREIGN KEY (`server_id`) REFERENCES `servers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `databases`
--

LOCK TABLES `databases` WRITE;
/*!40000 ALTER TABLE `databases` DISABLE KEYS */;
/*!40000 ALTER TABLE `databases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `egg_mount`
--

DROP TABLE IF EXISTS `egg_mount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `egg_mount` (
  `egg_id` int(11) NOT NULL,
  `mount_id` int(11) NOT NULL,
  UNIQUE KEY `egg_mount_egg_id_mount_id_unique` (`egg_id`,`mount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `egg_mount`
--

LOCK TABLES `egg_mount` WRITE;
/*!40000 ALTER TABLE `egg_mount` DISABLE KEYS */;
/*!40000 ALTER TABLE `egg_mount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `egg_variables`
--

DROP TABLE IF EXISTS `egg_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `egg_variables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `egg_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `env_variable` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_viewable` tinyint(3) unsigned NOT NULL,
  `user_editable` tinyint(3) unsigned NOT NULL,
  `rules` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `service_variables_egg_id_foreign` (`egg_id`),
  CONSTRAINT `service_variables_egg_id_foreign` FOREIGN KEY (`egg_id`) REFERENCES `eggs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `egg_variables`
--

LOCK TABLES `egg_variables` WRITE;
/*!40000 ALTER TABLE `egg_variables` DISABLE KEYS */;
INSERT INTO `egg_variables` VALUES (1,1,'Bungeecord Version','The version of Bungeecord to download and use.','BUNGEE_VERSION','latest',1,1,'required|alpha_num|between:1,6','2021-01-27 18:38:39','2021-01-27 18:38:39'),(2,1,'Bungeecord Jar File','The name of the Jarfile to use when running Bungeecord.','SERVER_JARFILE','bungeecord.jar',1,1,'required|regex:/^([\\w\\d._-]+)(\\.jar)$/','2021-01-27 18:38:39','2021-01-27 18:38:39'),(3,2,'Server Jar File','The name of the Jarfile to use when running Forge Mod.','SERVER_JARFILE','server.jar',1,1,'required|regex:/^([\\w\\d._-]+)(\\.jar)$/','2021-01-27 18:38:39','2021-01-27 18:38:39'),(4,2,'Minecraft Version','The version of minecraft you want to install for.\r\n\r\nLeaving latest will install the latest recommended version.','MC_VERSION','latest',1,1,'required|string|max:9','2021-01-27 18:38:39','2021-01-27 18:38:39'),(5,2,'Build Type','The type of server jar to download from forge.\r\n\r\nValid types are \"recommended\" and \"latest\".','BUILD_TYPE','recommended',1,1,'required|string|max:20','2021-01-27 18:38:39','2021-01-27 18:38:39'),(6,2,'Forge Version','Gets an exact version.\r\n\r\nEx. 1.15.2-31.2.4\r\n\r\nOverrides MC_VERSION and BUILD_TYPE. If it fails to download the server files it will fail to install.','FORGE_VERSION','',1,1,'nullable|string|max:20','2021-01-27 18:38:39','2021-01-27 18:38:39'),(7,3,'Minecraft Version','The version of minecraft to download. \r\n\r\nLeave at latest to always get the latest version. Invalid versions will default to latest.','MINECRAFT_VERSION','latest',1,0,'nullable|string|max:20','2021-01-27 18:38:39','2021-01-27 18:38:39'),(8,3,'Server Jar File','The name of the server jarfile to run the server with.','SERVER_JARFILE','server.jar',1,1,'required|string|max:20','2021-01-27 18:38:39','2021-01-27 18:38:39'),(9,3,'Download Path','A URL to use to download a server.jar rather than the ones in the install script. This is not user viewable.','DL_PATH','',0,0,'nullable|string','2021-01-27 18:38:39','2021-01-27 18:38:39'),(10,3,'Build Number','The build number for the paper release.\r\n\r\nLeave at latest to always get the latest version. Invalid versions will default to latest.','BUILD_NUMBER','latest',1,0,'required|string|max:20','2021-01-27 18:38:39','2021-01-27 18:38:39'),(11,4,'Sponge Version','The version of SpongeVanilla to download and use.','SPONGE_VERSION','1.12.2-7.3.0',1,0,'required|regex:/^([a-zA-Z0-9.\\-_]+)$/','2021-01-27 18:38:39','2021-01-27 18:38:39'),(12,4,'Server Jar File','The name of the Jarfile to use when running SpongeVanilla.','SERVER_JARFILE','server.jar',1,1,'required|regex:/^([\\w\\d._-]+)(\\.jar)$/','2021-01-27 18:38:39','2021-01-27 18:38:39'),(13,5,'Server Jar File','The name of the server jarfile to run the server with.','SERVER_JARFILE','server.jar',1,1,'required|regex:/^([\\w\\d._-]+)(\\.jar)$/','2021-01-27 18:38:39','2021-01-27 18:38:39'),(14,5,'Server Version','The version of Minecraft Vanilla to install. Use \"latest\" to install the latest version.','VANILLA_VERSION','latest',1,1,'required|string|between:3,15','2021-01-27 18:38:39','2021-01-27 18:38:39'),(15,6,'Server Password','If specified, players must provide this password to join the server.','ARK_PASSWORD','',1,1,'nullable|alpha_dash|between:1,100','2021-01-27 18:38:39','2021-01-27 18:38:39'),(16,6,'Admin Password','If specified, players must provide this password (via the in-game console) to gain access to administrator commands on the server.','ARK_ADMIN_PASSWORD','PleaseChangeMe',1,1,'nullable|alpha_dash|between:1,100','2021-01-27 18:38:39','2021-01-27 18:38:39'),(17,6,'Server Map','Available Maps: TheIsland, TheCenter, Ragnarok, ScorchedEarth_P, Aberration_P, Extinction, Valguero_P, Genesis','SERVER_MAP','TheIsland',1,1,'required|string|max:20','2021-01-27 18:38:39','2021-01-27 18:38:39'),(18,6,'App ID','ARK steam app id for auto updates. Leave blank to avoid auto update.','SRCDS_APPID','376030',1,0,'nullable|numeric','2021-01-27 18:38:39','2021-01-27 18:38:39'),(19,6,'Server Name','ARK server name','SESSION_NAME','A Pterodactyl Hosted ARK Server',1,1,'required|string|max:128','2021-01-27 18:38:39','2021-01-27 18:38:39'),(20,6,'Use Rcon','Enable or disable rcon system. (true or false)\r\n\r\nDefault True for the console to work.','ENABLE_RCON','True',1,0,'required|string|in:True,False','2021-01-27 18:38:39','2021-01-27 18:38:39'),(21,6,'Rcon Port','ARK rcon port used by rcon tools.','RCON_PORT','27020',1,1,'required|numeric','2021-01-27 18:38:39','2021-01-27 18:38:39'),(22,6,'Query Port','ARK query port used by steam server browser and ark client server browser.','QUERY_PORT','27015',1,1,'required|numeric','2021-01-27 18:38:39','2021-01-27 18:38:39'),(23,6,'Auto-update server','This is to enable auto-updating for servers.\r\n\r\nDefault is 0. Set to 1 to update','AUTO_UPDATE','0',1,1,'required|boolean','2021-01-27 18:38:39','2021-01-27 18:38:39'),(24,6,'Ballte Eye','Enable BattleEye\r\n\r\n0 to disable\r\n1 to enable\r\n\r\ndefault=\"1\"','BATTLE_EYE','1',1,1,'required|boolean','2021-01-27 18:38:39','2021-01-27 18:38:39'),(25,7,'Map','The default map for the server.','SRCDS_MAP','de_dust2',1,1,'required|string|alpha_dash','2021-01-27 18:38:39','2021-01-27 18:38:39'),(26,7,'Steam Account Token','The Steam Account Token required for the server to be displayed publicly.','STEAM_ACC','',1,1,'required|string|alpha_num|size:32','2021-01-27 18:38:39','2021-01-27 18:38:39'),(27,7,'Source AppID','Required for game to update on server restart. Do not modify this.','SRCDS_APPID','740',0,0,'required|string|max:20','2021-01-27 18:38:39','2021-01-27 18:38:39'),(28,8,'Game ID','The ID corresponding to the game to download and run using SRCDS.','SRCDS_APPID','',1,0,'required|numeric|digits_between:1,6','2021-01-27 18:38:39','2021-01-27 18:38:39'),(29,8,'Game Name','The name corresponding to the game to download and run using SRCDS.','SRCDS_GAME','',1,0,'required|alpha_dash|between:1,100','2021-01-27 18:38:39','2021-01-27 18:38:39'),(30,8,'Map','The default map for the server.','SRCDS_MAP','',1,1,'required|string|alpha_dash','2021-01-27 18:38:39','2021-01-27 18:38:39'),(31,9,'Map','The default map for the server.','SRCDS_MAP','gm_flatgrass',1,1,'required|string|alpha_dash','2021-01-27 18:38:39','2021-01-27 18:38:39'),(32,9,'Steam Account Token','The Steam Account Token required for the server to be displayed publicly.','STEAM_ACC','',1,1,'nullable|string|alpha_num|size:32','2021-01-27 18:38:39','2021-01-27 18:38:39'),(33,9,'Source AppID','Required for game to update on server restart. Do not modify this.','SRCDS_APPID','4020',0,0,'required|string|max:20','2021-01-27 18:38:39','2021-01-27 18:38:39'),(34,9,'Workshop ID','The ID of your workshop collection (the numbers at the end of the URL)','WORKSHOP_ID','',1,1,'nullable|integer','2021-01-27 18:38:39','2021-01-27 18:38:39'),(35,9,'Gamemode','The gamemode of your server.','GAMEMODE','sandbox',1,1,'required|string','2021-01-27 18:38:39','2021-01-27 18:38:39'),(36,9,'Max Players','The maximum amount of players allowed on your game server.','MAX_PLAYERS','32',1,1,'required|integer|max:128','2021-01-27 18:38:39','2021-01-27 18:38:39'),(37,9,'Tickrate','The tickrate defines how fast the server will update each entities location.','TICKRATE','22',1,1,'required|integer|max:100','2021-01-27 18:38:39','2021-01-27 18:38:39'),(38,10,'Game ID','The ID corresponding to the game to download and run using SRCDS.','SRCDS_APPID','237410',1,0,'required|regex:/^(237410)$/','2021-01-27 18:38:39','2021-01-27 18:38:39'),(39,10,'Game Name','The name corresponding to the game to download and run using SRCDS.','SRCDS_GAME','insurgency',1,0,'required|regex:/^(insurgency)$/','2021-01-27 18:38:39','2021-01-27 18:38:39'),(40,10,'Default Map','The default map to use when starting the server.','SRCDS_MAP','sinjar',1,1,'required|regex:/^(\\w{1,20})$/','2021-01-27 18:38:39','2021-01-27 18:38:39'),(41,11,'Game ID','The ID corresponding to the game to download and run using SRCDS.','SRCDS_APPID','232250',1,0,'required|regex:/^(232250)$/','2021-01-27 18:38:39','2021-01-27 18:38:39'),(42,11,'Game Name','The name corresponding to the game to download and run using SRCDS.','SRCDS_GAME','tf',1,0,'required|regex:/^(tf)$/','2021-01-27 18:38:39','2021-01-27 18:38:39'),(43,11,'Default Map','The default map to use when starting the server.','SRCDS_MAP','cp_dustbowl',1,1,'required|regex:/^(\\w{1,20})$/','2021-01-27 18:38:39','2021-01-27 18:38:39'),(44,12,'Maximum Users','Maximum concurrent users on the mumble server.','MAX_USERS','100',1,0,'required|numeric|digits_between:1,5','2021-01-27 18:38:39','2021-01-27 18:38:39'),(45,12,'Server Version','Version of Mumble Server to download and use.','MUMBLE_VERSION','latest',1,1,'required|regex:/^([0-9_\\.-]{5,8})$/','2021-01-27 18:38:39','2021-01-27 18:38:39'),(46,13,'Server Version','The version of Teamspeak 3 to use when running the server.','TS_VERSION','latest',1,1,'required|string|max:6','2021-01-27 18:38:39','2021-01-27 18:38:39'),(47,13,'File Transfer Port','The Teamspeak file transfer port','FILE_TRANSFER','30033',1,0,'required|integer|between:1,65535','2021-01-27 18:38:39','2021-01-27 18:38:39'),(48,14,'Server Name','The name of your server in the public server list.','HOSTNAME','A Rust Server',1,1,'required|string|max:40','2021-01-27 18:38:39','2021-01-27 18:38:39'),(49,14,'OxideMod','Set whether you want the server to use and auto update OxideMod or not. Valid options are \"1\" for true and \"0\" for false.','OXIDE','0',1,1,'required|boolean','2021-01-27 18:38:39','2021-01-27 18:38:39'),(50,14,'Level','The world file for Rust to use.','LEVEL','Procedural Map',1,1,'required|string|max:20','2021-01-27 18:38:39','2021-01-27 18:38:39'),(51,14,'Description','The description under your server title. Commonly used for rules & info. Use \\n for newlines.','DESCRIPTION','Powered by Pterodactyl',1,1,'required|string','2021-01-27 18:38:39','2021-01-27 18:38:39'),(52,14,'URL','The URL for your server. This is what comes up when clicking the \"Visit Website\" button.','SERVER_URL','http://pterodactyl.io',1,1,'nullable|url','2021-01-27 18:38:39','2021-01-27 18:38:39'),(53,14,'World Size','The world size for a procedural map.','WORLD_SIZE','3000',1,1,'required|integer','2021-01-27 18:38:39','2021-01-27 18:38:39'),(54,14,'World Seed','The seed for a procedural map.','WORLD_SEED','',1,1,'nullable|string','2021-01-27 18:38:39','2021-01-27 18:38:39'),(55,14,'Max Players','The maximum amount of players allowed in the server at once.','MAX_PLAYERS','40',1,1,'required|integer','2021-01-27 18:38:39','2021-01-27 18:38:39'),(56,14,'Server Image','The header image for the top of your server listing.','SERVER_IMG','',1,1,'nullable|url','2021-01-27 18:38:39','2021-01-27 18:38:39'),(57,14,'RCON Port','Port for RCON connections.','RCON_PORT','28016',1,0,'required|integer','2021-01-27 18:38:39','2021-01-27 18:38:39'),(58,14,'RCON Password','RCON access password.','RCON_PASS','CHANGEME',1,1,'required|string|max:64','2021-01-27 18:38:39','2021-01-27 18:38:39'),(59,14,'Save Interval','Sets the server’s auto-save interval in seconds.','SAVEINTERVAL','60',1,1,'required|integer','2021-01-27 18:38:39','2021-01-27 18:38:39'),(60,14,'Additional Arguments','Add additional startup parameters to the server.','ADDITIONAL_ARGS','',1,1,'nullable|string','2021-01-27 18:38:39','2021-01-27 18:38:39');
/*!40000 ALTER TABLE `egg_variables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eggs`
--

DROP TABLE IF EXISTS `eggs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eggs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nest_id` int(10) unsigned NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`features`)),
  `docker_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`docker_images`)),
  `file_denylist` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `update_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config_files` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config_startup` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config_logs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config_stop` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config_from` int(10) unsigned DEFAULT NULL,
  `startup` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `script_container` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'alpine:3.4',
  `copy_script_from` int(10) unsigned DEFAULT NULL,
  `script_entry` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ash',
  `script_is_privileged` tinyint(1) NOT NULL DEFAULT 1,
  `script_install` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `service_options_uuid_unique` (`uuid`),
  KEY `service_options_nest_id_foreign` (`nest_id`),
  KEY `eggs_config_from_foreign` (`config_from`),
  KEY `eggs_copy_script_from_foreign` (`copy_script_from`),
  CONSTRAINT `eggs_config_from_foreign` FOREIGN KEY (`config_from`) REFERENCES `eggs` (`id`) ON DELETE SET NULL,
  CONSTRAINT `eggs_copy_script_from_foreign` FOREIGN KEY (`copy_script_from`) REFERENCES `eggs` (`id`) ON DELETE SET NULL,
  CONSTRAINT `service_options_nest_id_foreign` FOREIGN KEY (`nest_id`) REFERENCES `nests` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eggs`
--

LOCK TABLES `eggs` WRITE;
/*!40000 ALTER TABLE `eggs` DISABLE KEYS */;
INSERT INTO `eggs` VALUES (1,'a71168cc-4b95-4d66-8a09-59c27fd13750',1,'support@pterodactyl.io','Bungeecord','For a long time, Minecraft server owners have had a dream that encompasses a free, easy, and reliable way to connect multiple Minecraft servers together. BungeeCord is the answer to said dream. Whether you are a small server wishing to string multiple game-modes together, or the owner of the ShotBow Network, BungeeCord is the ideal solution for you. With the help of BungeeCord, you will be able to unlock your community\'s full potential.','[\"eula\"]','[\"quay.io\\/pterodactyl\\/core:java\",\"quay.io\\/pterodactyl\\/core:java-11\"]','',NULL,'{\r\n    \"config.yml\": {\r\n        \"parser\": \"yaml\",\r\n        \"find\": {\r\n            \"listeners[0].query_enabled\": true,\r\n            \"listeners[0].query_port\": \"{{server.build.default.port}}\",\r\n            \"listeners[0].host\": \"0.0.0.0:{{server.build.default.port}}\",\r\n            \"servers.*.address\": {\r\n                \"regex:^(127\\\\.0\\\\.0\\\\.1|localhost)(:\\\\d{1,5})?$\": \"{{config.docker.interface}}$2\"\r\n            }\r\n        }\r\n    }\r\n}','{\r\n    \"done\": \"Listening on \",\r\n    \"userInteraction\": [\r\n        \"Listening on /0.0.0.0:25577\"\r\n    ]\r\n}','{\r\n    \"custom\": false,\r\n    \"location\": \"proxy.log.0\"\r\n}','end',NULL,'java -Xms128M -Xmx{{SERVER_MEMORY}}M -jar {{SERVER_JARFILE}}','debian:buster-slim',NULL,'bash',1,'#!/bin/bash\r\n# Bungeecord Installation Script\r\n#\r\n# Server Files: /mnt/server\r\napt update\r\napt install -y curl\r\n\r\ncd /mnt/server\r\n\r\nif [ -z \"${BUNGEE_VERSION}\" ] || [ \"${BUNGEE_VERSION}\" == \"latest\" ]; then\r\n    BUNGEE_VERSION=\"lastStableBuild\"\r\nfi\r\n\r\ncurl -o ${SERVER_JARFILE} https://ci.md-5.net/job/BungeeCord/${BUNGEE_VERSION}/artifact/bootstrap/target/BungeeCord.jar','2021-01-27 18:38:39','2021-01-27 18:38:39'),(2,'0b787f99-7748-42ef-a55f-40756e678fd2',1,'support@pterodactyl.io','Forge Minecraft','Minecraft Forge Server. Minecraft Forge is a modding API (Application Programming Interface), which makes it easier to create mods, and also make sure mods are compatible with each other.','[\"eula\"]','[\"quay.io\\/pterodactyl\\/core:java\",\"quay.io\\/pterodactyl\\/core:java-11\"]','',NULL,'{\r\n    \"server.properties\": {\r\n        \"parser\": \"properties\",\r\n        \"find\": {\r\n            \"server-ip\": \"0.0.0.0\",\r\n            \"enable-query\": \"true\",\r\n            \"server-port\": \"{{server.build.default.port}}\",\r\n            \"query.port\": \"{{server.build.default.port}}\"\r\n        }\r\n    }\r\n}','{\r\n    \"done\": \")! For help, type \",\r\n    \"userInteraction\": [\r\n        \"Go to eula.txt for more info.\"\r\n    ]\r\n}','{\r\n    \"custom\": false,\r\n    \"location\": \"logs/latest.log\"\r\n}','stop',NULL,'java -Xms128M -Xmx{{SERVER_MEMORY}}M -jar {{SERVER_JARFILE}}','openjdk:8-jdk-slim',NULL,'bash',1,'#!/bin/bash\r\n# Forge Installation Script\r\n#\r\n# Server Files: /mnt/server\r\napt update\r\napt install -y curl jq\r\n\r\n#Go into main direction\r\nif [ ! -d /mnt/server ]; then\r\n    mkdir /mnt/server\r\nfi\r\n\r\ncd /mnt/server\r\n\r\nif [ ! -z ${FORGE_VERSION} ]; then\r\n    DOWNLOAD_LINK=https://files.minecraftforge.net/maven/net/minecraftforge/forge/${FORGE_VERSION}/forge-${FORGE_VERSION}\r\nelse\r\n    JSON_DATA=$(curl -sSL https://files.minecraftforge.net/maven/net/minecraftforge/forge/promotions_slim.json)\r\n\r\n    if [ \"${MC_VERSION}\" == \"latest\" ] || [ \"${MC_VERSION}\" == \"\" ] ; then\r\n        echo -e \"getting latest recommended version of forge.\"\r\n        MC_VERSION=$(echo -e ${JSON_DATA} | jq -r \'.promos | del(.\"latest-1.7.10\") | del(.\"1.7.10-latest-1.7.10\") | to_entries[] | .key | select(contains(\"recommended\")) | split(\"-\")[0]\' | sort -t. -k 1,1n -k 2,2n -k 3,3n -k 4,4n | tail -1)\r\n    	BUILD_TYPE=recommended\r\n    fi\r\n\r\n    if [ \"${BUILD_TYPE}\" != \"recommended\" ] && [ \"${BUILD_TYPE}\" != \"latest\" ]; then\r\n        BUILD_TYPE=recommended\r\n    fi\r\n\r\n    echo -e \"minecraft version: ${MC_VERSION}\"\r\n    echo -e \"build type: ${BUILD_TYPE}\"\r\n\r\n    ## some variables for getting versions and things\r\n    FILE_SITE=$(echo -e ${JSON_DATA} | jq -r \'.homepage\' | sed \"s/http:/https:/g\")\r\n    VERSION_KEY=$(echo -e ${JSON_DATA} | jq -r --arg MC_VERSION \"${MC_VERSION}\" --arg BUILD_TYPE \"${BUILD_TYPE}\" \'.promos | del(.\"latest-1.7.10\") | del(.\"1.7.10-latest-1.7.10\") | to_entries[] | .key | select(contains($MC_VERSION)) | select(contains($BUILD_TYPE))\')\r\n\r\n    ## locating the forge version\r\n    if [ \"${VERSION_KEY}\" == \"\" ] && [ \"${BUILD_TYPE}\" == \"recommended\" ]; then\r\n        echo -e \"dropping back to latest from recommended due to there not being a recommended version of forge for the mc version requested.\"\r\n        VERSION_KEY=$(echo -e ${JSON_DATA} | jq -r --arg MC_VERSION \"${MC_VERSION}\" \'.promos | del(.\"latest-1.7.10\") | del(.\"1.7.10-latest-1.7.10\") | to_entries[] | .key | select(contains($MC_VERSION)) | select(contains(\"recommended\"))\')\r\n    fi\r\n\r\n    ## Error if the mc version set wasn\'t valid.\r\n    if [ \"${VERSION_KEY}\" == \"\" ] || [ \"${VERSION_KEY}\" == \"null\" ]; then\r\n    	echo -e \"The install failed because there is no valid version of forge for the version on minecraft selected.\"\r\n    	exit 1\r\n    fi\r\n\r\n    FORGE_VERSION=$(echo -e ${JSON_DATA} | jq -r --arg VERSION_KEY \"$VERSION_KEY\" \'.promos | .[$VERSION_KEY]\')\r\n\r\n    if [ \"${MC_VERSION}\" == \"1.7.10\" ] || [ \"${MC_VERSION}\" == \"1.8.9\" ]; then\r\n        DOWNLOAD_LINK=${FILE_SITE}${MC_VERSION}-${FORGE_VERSION}-${MC_VERSION}/forge-${MC_VERSION}-${FORGE_VERSION}-${MC_VERSION}\r\n        FORGE_JAR=forge-${MC_VERSION}-${FORGE_VERSION}-${MC_VERSION}.jar\r\n        if [ \"${MC_VERSION}\" == \"1.7.10\" ]; then\r\n            FORGE_JAR=forge-${MC_VERSION}-${FORGE_VERSION}-${MC_VERSION}-universal.jar\r\n        fi\r\n    else\r\n        DOWNLOAD_LINK=${FILE_SITE}${MC_VERSION}-${FORGE_VERSION}/forge-${MC_VERSION}-${FORGE_VERSION}\r\n        FORGE_JAR=forge-${MC_VERSION}-${FORGE_VERSION}.jar\r\n    fi\r\nfi\r\n\r\n\r\n#Adding .jar when not eding by SERVER_JARFILE\r\nif [[ ! $SERVER_JARFILE = *\\.jar ]]; then\r\n  SERVER_JARFILE=\"$SERVER_JARFILE.jar\"\r\nfi\r\n\r\n#Downloading jars\r\necho -e \"Downloading forge version ${FORGE_VERSION}\"\r\necho -e \"Download link is ${DOWNLOAD_LINK}\"\r\nif [ ! -z \"${DOWNLOAD_LINK}\" ]; then \r\n    if curl --output /dev/null --silent --head --fail ${DOWNLOAD_LINK}-installer.jar; then\r\n        echo -e \"installer jar download link is valid.\"\r\n    else\r\n        echo -e \"link is invalid closing out\"\r\n        exit 2\r\n    fi\r\nelse\r\n    echo -e \"no download link closing out\"\r\n    exit 3\r\nfi\r\n\r\ncurl -s -o installer.jar -sS ${DOWNLOAD_LINK}-installer.jar\r\n\r\n#Checking if downloaded jars exist\r\nif [ ! -f ./installer.jar ]; then\r\n    echo \"!!! Error by downloading forge version ${FORGE_VERSION} !!!\"\r\n    exit\r\nfi\r\n\r\n#Installing server\r\necho -e \"Installing forge server.\\n\"\r\njava -jar installer.jar --installServer || { echo -e \"install failed\"; exit 4; }\r\n\r\nmv $FORGE_JAR $SERVER_JARFILE\r\n\r\n#Deleting installer.jar\r\necho -e \"Deleting installer.jar file.\\n\"\r\nrm -rf installer.jar','2021-01-27 18:38:39','2021-01-27 18:38:39'),(3,'2c60180e-b681-4c78-8dbd-1350bb8ba986',1,'parker@pterodactyl.io','Paper','High performance Spigot fork that aims to fix gameplay and mechanics inconsistencies.','[\"eula\"]','[\"quay.io\\/pterodactyl\\/core:java-11\",\"quay.io\\/pterodactyl\\/core:java\"]','',NULL,'{\r\n    \"server.properties\": {\r\n        \"parser\": \"properties\",\r\n        \"find\": {\r\n            \"server-ip\": \"0.0.0.0\",\r\n            \"server-port\": \"{{server.build.default.port}}\"\r\n        }\r\n    }\r\n}','{\r\n    \"done\": \")! For help, type \",\r\n    \"userInteraction\": [\r\n        \"Go to eula.txt for more info.\"\r\n    ]\r\n}','{}','stop',NULL,'java -Xms128M -Xmx{{SERVER_MEMORY}}M -Dterminal.jline=false -Dterminal.ansi=true -jar {{SERVER_JARFILE}}','debian:buster-slim',NULL,'bash',1,'#!/bin/bash\r\n# Paper Installation Script\r\n#\r\n# Server Files: /mnt/server\r\nPROJECT=paper\r\n\r\napt update\r\napt install -y curl jq\r\n\r\nif [ -n \"${DL_PATH}\" ]; then\r\n	echo -e \"Using supplied download url: ${DL_PATH}\"\r\n	DOWNLOAD_URL=`eval echo $(echo ${DL_PATH} | sed -e \'s/{{/${/g\' -e \'s/}}/}/g\')`\r\nelse\r\n	VER_EXISTS=`curl -s https://papermc.io/api/v2/projects/${PROJECT} | jq -r --arg VERSION $MINECRAFT_VERSION \'.versions[] | contains($VERSION)\' | grep true`\r\n	LATEST_VERSION=`curl -s https://papermc.io/api/v2/projects/${PROJECT} | jq -r \'.versions\' | jq -r \'.[-1]\'`\r\n\r\n	if [ \"${VER_EXISTS}\" == \"true\" ]; then\r\n		echo -e \"Version is valid. Using version ${MINECRAFT_VERSION}\"\r\n	else\r\n		echo -e \"Using the latest ${PROJECT} version\"\r\n		MINECRAFT_VERSION=${LATEST_VERSION}\r\n	fi\r\n	\r\n	BUILD_EXISTS=`curl -s https://papermc.io/api/v2/projects/${PROJECT}/versions/${MINECRAFT_VERSION} | jq -r --arg BUILD ${BUILD_NUMBER} \'.builds[] | tostring | contains($BUILD)\' | grep true`\r\n	LATEST_BUILD=`curl -s https://papermc.io/api/v2/projects/${PROJECT}/versions/${MINECRAFT_VERSION} | jq -r \'.builds\' | jq -r \'.[-1]\'`\r\n	\r\n	if [ \"${BUILD_EXISTS}\" == \"true\" ]; then\r\n		echo -e \"Build is valid for version ${MINECRAFT_VERSION}. Using build ${BUILD_NUMBER}\"\r\n	else\r\n		echo -e \"Using the latest ${PROJECT} build for version ${MINECRAFT_VERSION}\"\r\n		BUILD_NUMBER=${LATEST_BUILD}\r\n	fi\r\n	\r\n	JAR_NAME=${PROJECT}-${MINECRAFT_VERSION}-${BUILD_NUMBER}.jar\r\n	\r\n	echo \"Version being downloaded\"\r\n	echo -e \"MC Version: ${MINECRAFT_VERSION}\"\r\n	echo -e \"Build: ${BUILD_NUMBER}\"\r\n	echo -e \"JAR Name of Build: ${JAR_NAME}\"\r\n	DOWNLOAD_URL=https://papermc.io/api/v2/projects/${PROJECT}/versions/${MINECRAFT_VERSION}/builds/${BUILD_NUMBER}/downloads/${JAR_NAME}\r\nfi\r\n\r\ncd /mnt/server\r\n\r\necho -e \"Running curl -o ${SERVER_JARFILE} ${DOWNLOAD_URL}\"\r\n\r\nif [ -f ${SERVER_JARFILE} ]; then\r\n	mv ${SERVER_JARFILE} ${SERVER_JARFILE}.old\r\nfi\r\n\r\ncurl -o ${SERVER_JARFILE} ${DOWNLOAD_URL}\r\n\r\nif [ ! -f server.properties ]; then\r\n    echo -e \"Downloading MC server.properties\"\r\n    curl -o server.properties https://raw.githubusercontent.com/parkervcp/eggs/master/minecraft/java/server.properties\r\nfi','2021-01-27 18:38:39','2021-01-27 18:38:39'),(4,'c1b68577-eade-49a2-9c29-2ba153ed25b2',1,'support@pterodactyl.io','Sponge (SpongeVanilla)','SpongeVanilla is the SpongeAPI implementation for Vanilla Minecraft.','[\"eula\"]','[\"quay.io\\/pterodactyl\\/core:java-glibc\"]','',NULL,'{\r\n    \"server.properties\": {\r\n        \"parser\": \"properties\",\r\n        \"find\": {\r\n            \"server-ip\": \"0.0.0.0\",\r\n            \"enable-query\": \"true\",\r\n            \"server-port\": \"{{server.build.default.port}}\",\r\n            \"query.port\": \"{{server.build.default.port}}\"\r\n        }\r\n    }\r\n}','{\r\n    \"done\": \")! For help, type \",\r\n    \"userInteraction\": [\r\n        \"Go to eula.txt for more info.\"\r\n    ]\r\n}','{\r\n    \"custom\": false,\r\n    \"location\": \"logs/latest.log\"\r\n}','stop',NULL,'java -Xms128M -Xmx{{SERVER_MEMORY}}M -jar {{SERVER_JARFILE}}','debian:buster-slim',NULL,'bash',1,'#!/bin/bash\r\n# Sponge Installation Script\r\n#\r\n# Server Files: /mnt/server\r\n\r\napt update\r\napt install -y curl\r\n\r\ncd /mnt/server\r\n\r\ncurl -sSL \"https://repo.spongepowered.org/maven/org/spongepowered/spongevanilla/${SPONGE_VERSION}/spongevanilla-${SPONGE_VERSION}.jar\" -o ${SERVER_JARFILE}','2021-01-27 18:38:39','2021-01-27 18:38:39'),(5,'a0a16fdf-1637-4df4-8720-aa97cd587655',1,'support@pterodactyl.io','Vanilla Minecraft','Minecraft is a game about placing blocks and going on adventures. Explore randomly generated worlds and build amazing things from the simplest of homes to the grandest of castles. Play in Creative Mode with unlimited resources or mine deep in Survival Mode, crafting weapons and armor to fend off dangerous mobs. Do all this alone or with friends.','[\"eula\"]','[\"quay.io\\/pterodactyl\\/core:java\",\"quay.io\\/pterodactyl\\/core:java-11\"]','',NULL,'{\r\n    \"server.properties\": {\r\n        \"parser\": \"properties\",\r\n        \"find\": {\r\n            \"server-ip\": \"0.0.0.0\",\r\n            \"enable-query\": \"true\",\r\n            \"server-port\": \"{{server.build.default.port}}\"\r\n        }\r\n    }\r\n}','{\r\n    \"done\": \")! For help, type \",\r\n    \"userInteraction\": [\r\n        \"Go to eula.txt for more info.\"\r\n    ]\r\n}','{\r\n    \"custom\": false,\r\n    \"location\": \"logs/latest.log\"\r\n}','stop',NULL,'java -Xms128M -Xmx{{SERVER_MEMORY}}M -jar {{SERVER_JARFILE}}','debian:buster-slim',NULL,'bash',1,'#!/bin/bash\r\n# Vanilla MC Installation Script\r\n#\r\n# Server Files: /mnt/server\r\napt update\r\napt install -y jq curl\r\n\r\nmkdir -p /mnt/server\r\ncd /mnt/server\r\n\r\nLATEST_VERSION=`curl https://launchermeta.mojang.com/mc/game/version_manifest.json | jq -r \'.latest.release\'`\r\n\r\necho -e \"latest version is $LATEST_VERSION\"\r\n\r\nif [ -z \"$VANILLA_VERSION\" ] || [ \"$VANILLA_VERSION\" == \"latest\" ]; then\r\n  MANIFEST_URL=$(curl -sSL https://launchermeta.mojang.com/mc/game/version_manifest.json | jq --arg VERSION $LATEST_VERSION -r \'.versions | .[] | select(.id== $VERSION )|.url\')\r\nelse\r\n  MANIFEST_URL=$(curl -sSL https://launchermeta.mojang.com/mc/game/version_manifest.json | jq --arg VERSION $VANILLA_VERSION -r \'.versions | .[] | select(.id== $VERSION )|.url\')\r\nfi\r\n\r\nDOWNLOAD_URL=$(curl ${MANIFEST_URL} | jq .downloads.server | jq -r \'. | .url\')\r\n\r\necho -e \"running: curl -o ${SERVER_JARFILE} $DOWNLOAD_URL\"\r\ncurl -o ${SERVER_JARFILE} $DOWNLOAD_URL\r\n\r\necho -e \"Install Complete\"','2021-01-27 18:38:39','2021-01-27 18:38:39'),(6,'7b05af76-a730-4dda-bf2d-8efc7a8ffba7',2,'dev@shepper.fr','Ark: Survival Evolved','As a man or woman stranded, naked, freezing, and starving on the unforgiving shores of a mysterious island called ARK, use your skill and cunning to kill or tame and ride the plethora of leviathan dinosaurs and other primeval creatures roaming the land. Hunt, harvest resources, craft items, grow crops, research technologies, and build shelters to withstand the elements and store valuables, all while teaming up with (or preying upon) hundreds of other players to survive, dominate... and escape! — Gamepedia: ARK',NULL,'[\"quay.io\\/parkervcp\\/pterodactyl-images:debian_source\"]','',NULL,'{}','{\r\n    \"done\": \"Waiting commands for 127.0.0.1:\",\r\n    \"userInteraction\": []\r\n}','{\r\n    \"custom\": true,\r\n    \"location\": \"logs/latest.log\"\r\n}','^C',NULL,'rmv() { echo -e \"stoppping server\"; rcon -a 127.0.0.1:${RCON_PORT} -p ${ARK_ADMIN_PASSWORD} -c saveworld && rcon -a 127.0.0.1:${RCON_PORT} -p ${ARK_ADMIN_PASSWORD} -c DoExit; }; trap rmv 15; cd ShooterGame/Binaries/Linux && ./ShooterGameServer {{SERVER_MAP}}?listen?SessionName=\"{{SESSION_NAME}}\"?ServerPassword={{ARK_PASSWORD}}?ServerAdminPassword={{ARK_ADMIN_PASSWORD}}?Port={{SERVER_PORT}}?RCONPort={{RCON_PORT}}?QueryPort={{QUERY_PORT}}?RCONEnabled={{ENABLE_RCON}}$( [ \"$BATTLE_EYE\" == \"0\" ] || printf %s \'?-NoBattlEye\' ) -server -log & until echo \"waiting for rcon connection...\"; rcon -a 127.0.0.1:${RCON_PORT} -p ${ARK_ADMIN_PASSWORD}; do sleep 5; done','debian:buster-slim',NULL,'bash',1,'#!/bin/bash\r\n# steamcmd Base Installation Script\r\n#\r\n# Server Files: /mnt/server\r\n# Image to install with is \'ubuntu:18.04\'\r\napt -y update\r\napt -y --no-install-recommends --no-install-suggests install curl lib32gcc1 ca-certificates\r\n\r\n## just in case someone removed the defaults.\r\nif [ \"${STEAM_USER}\" == \"\" ]; then\r\n    STEAM_USER=anonymous\r\n    STEAM_PASS=\"\"\r\n    STEAM_AUTH=\"\"\r\nfi\r\n\r\n## download and install steamcmd\r\ncd /tmp\r\nmkdir -p /mnt/server/steamcmd\r\ncurl -sSL -o steamcmd.tar.gz https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz\r\ntar -xzvf steamcmd.tar.gz -C /mnt/server/steamcmd\r\n\r\nmkdir -p /mnt/server/Engine/Binaries/ThirdParty/SteamCMD/Linux\r\ntar -xzvf steamcmd.tar.gz -C /mnt/server/Engine/Binaries/ThirdParty/SteamCMD/Linux\r\n\r\ncd /mnt/server/steamcmd\r\n\r\n# SteamCMD fails otherwise for some reason, even running as root.\r\n# This is changed at the end of the install process anyways.\r\nchown -R root:root /mnt\r\nexport HOME=/mnt/server\r\n\r\n## install game using steamcmd\r\n./steamcmd.sh +login ${STEAM_USER} ${STEAM_PASS} ${STEAM_AUTH} +force_install_dir /mnt/server +app_update ${SRCDS_APPID} ${EXTRA_FLAGS} +quit ## other flags may be needed depending on install. looking at you cs 1.6\r\n\r\n## set up 32 bit libraries\r\nmkdir -p /mnt/server/.steam/sdk32\r\ncp -v linux32/steamclient.so ../.steam/sdk32/steamclient.so\r\n\r\n## set up 64 bit libraries\r\nmkdir -p /mnt/server/.steam/sdk64\r\ncp -v linux64/steamclient.so ../.steam/sdk64/steamclient.so\r\n\r\n## create a symbolic link for loading mods\r\ncd /mnt/server/Engine/Binaries/ThirdParty/SteamCMD/Linux\r\nln -sf ../../../../../Steam/steamapps steamapps\r\ncd /mnt/server','2021-01-27 18:38:39','2021-01-27 18:38:39'),(7,'f2cf6d5e-fbf9-4805-9118-1920fb855d9b',2,'support@pterodactyl.io','Counter-Strike: Global Offensive','Counter-Strike: Global Offensive is a multiplayer first-person shooter video game developed by Hidden Path Entertainment and Valve Corporation.',NULL,'[\"quay.io\\/pterodactyl\\/core:source\"]','',NULL,'{}','{\r\n    \"done\": \"Connection to Steam servers successful\",\r\n    \"userInteraction\": []\r\n}','{\r\n    \"custom\": true,\r\n    \"location\": \"logs/latest.log\"\r\n}','quit',NULL,'./srcds_run -game csgo -console -port {{SERVER_PORT}} +ip 0.0.0.0 +map {{SRCDS_MAP}} -strictportbind -norestart +sv_setsteamaccount {{STEAM_ACC}}','ubuntu:18.04',NULL,'bash',1,'#!/bin/bash\r\n# steamcmd Base Installation Script\r\n#\r\n# Server Files: /mnt/server\r\n# Image to install with is \'ubuntu:18.04\'\r\napt -y update\r\napt -y --no-install-recommends install curl lib32gcc1 ca-certificates\r\n\r\n## just in case someone removed the defaults.\r\nif [ \"${STEAM_USER}\" == \"\" ]; then\r\n    STEAM_USER=anonymous\r\n    STEAM_PASS=\"\"\r\n    STEAM_AUTH=\"\"\r\nfi\r\n\r\n## download and install steamcmd\r\ncd /tmp\r\nmkdir -p /mnt/server/steamcmd\r\ncurl -sSL -o steamcmd.tar.gz https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz\r\ntar -xzvf steamcmd.tar.gz -C /mnt/server/steamcmd\r\ncd /mnt/server/steamcmd\r\n\r\n# SteamCMD fails otherwise for some reason, even running as root.\r\n# This is changed at the end of the install process anyways.\r\nchown -R root:root /mnt\r\nexport HOME=/mnt/server\r\n\r\n## install game using steamcmd\r\n./steamcmd.sh +login ${STEAM_USER} ${STEAM_PASS} ${STEAM_AUTH} +force_install_dir /mnt/server +app_update ${SRCDS_APPID} ${EXTRA_FLAGS} +quit ## other flags may be needed depending on install. looking at you cs 1.6\r\n\r\n## set up 32 bit libraries\r\nmkdir -p /mnt/server/.steam/sdk32\r\ncp -v linux32/steamclient.so ../.steam/sdk32/steamclient.so\r\n\r\n## set up 64 bit libraries\r\nmkdir -p /mnt/server/.steam/sdk64\r\ncp -v linux64/steamclient.so ../.steam/sdk64/steamclient.so','2021-01-27 18:38:39','2021-01-27 18:38:39'),(8,'1d1cd086-77a5-4d26-b03b-1790a006eecf',2,'support@pterodactyl.io','Custom Source Engine Game','This option allows modifying the startup arguments and other details to run a custom SRCDS based game on the panel.',NULL,'[\"quay.io\\/pterodactyl\\/core:source\"]','',NULL,'{}','{\r\n    \"done\": \"gameserver Steam ID\",\r\n    \"userInteraction\": []\r\n}','{\r\n    \"custom\": true,\r\n    \"location\": \"logs/latest.log\"\r\n}','quit',NULL,'./srcds_run -game {{SRCDS_GAME}} -console -port {{SERVER_PORT}} +map {{SRCDS_MAP}} +ip 0.0.0.0 -strictportbind -norestart','debian:buster-slim',NULL,'bash',1,'#!/bin/bash\r\n# steamcmd Base Installation Script\r\n#\r\n# Server Files: /mnt/server\r\n# Image to install with is \'debian:buster-slim\'\r\n\r\n##\r\n#\r\n# Variables\r\n# STEAM_USER, STEAM_PASS, STEAM_AUTH - Steam user setup. If a user has 2fa enabled it will most likely fail due to timeout. Leave blank for anon install.\r\n# WINDOWS_INSTALL - if it\'s a windows server you want to install set to 1\r\n# SRCDS_APPID - steam app id ffound here - https://developer.valvesoftware.com/wiki/Dedicated_Servers_List\r\n# EXTRA_FLAGS - when a server has extra glas for things like beta installs or updates.\r\n#\r\n##\r\n\r\napt -y update\r\napt -y --no-install-recommends install curl lib32gcc1 ca-certificates\r\n\r\n## just in case someone removed the defaults.\r\nif [ \"${STEAM_USER}\" == \"\" ]; then\r\n    echo -e \"steam user is not set.\\n\"\r\n    echo -e \"Using anonymous user.\\n\"\r\n    STEAM_USER=anonymous\r\n    STEAM_PASS=\"\"\r\n    STEAM_AUTH=\"\"\r\nelse\r\n    echo -e \"user set to ${STEAM_USER}\"\r\nfi\r\n\r\n## download and install steamcmd\r\ncd /tmp\r\nmkdir -p /mnt/server/steamcmd\r\ncurl -sSL -o steamcmd.tar.gz https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz\r\ntar -xzvf steamcmd.tar.gz -C /mnt/server/steamcmd\r\ncd /mnt/server/steamcmd\r\n\r\n# SteamCMD fails otherwise for some reason, even running as root.\r\n# This is changed at the end of the install process anyways.\r\nchown -R root:root /mnt\r\nexport HOME=/mnt/server\r\n\r\n## install game using steamcmd\r\n./steamcmd.sh +login ${STEAM_USER} ${STEAM_PASS} ${STEAM_AUTH} $( [[ \"${WINDOWS_INSTALL}\" == \"1\" ]] && printf %s \'+@sSteamCmdForcePlatformType windows\' ) +force_install_dir /mnt/server +app_update ${SRCDS_APPID} ${EXTRA_FLAGS} validate +quit ## other flags may be needed depending on install. looking at you cs 1.6\r\n\r\n## set up 32 bit libraries\r\nmkdir -p /mnt/server/.steam/sdk32\r\ncp -v linux32/steamclient.so ../.steam/sdk32/steamclient.so\r\n\r\n## set up 64 bit libraries\r\nmkdir -p /mnt/server/.steam/sdk64\r\ncp -v linux64/steamclient.so ../.steam/sdk64/steamclient.so','2021-01-27 18:38:39','2021-01-27 18:38:39'),(9,'5390e515-e9cc-4713-89ba-fd31bacf89c5',2,'support@pterodactyl.io','Garrys Mod','Garrys Mod, is a sandbox physics game created by Garry Newman, and developed by his company, Facepunch Studios.',NULL,'[\"quay.io\\/pterodactyl\\/core:source\"]','',NULL,'{}','{\r\n    \"done\": \"gameserver Steam ID\",\r\n    \"userInteraction\": []\r\n}','{\r\n    \"custom\": true,\r\n    \"location\": \"logs/latest.log\"\r\n}','quit',NULL,'./srcds_run -game garrysmod -console -port {{SERVER_PORT}} +ip 0.0.0.0 +host_workshop_collection {{WORKSHOP_ID}} +map {{SRCDS_MAP}} +gamemode {{GAMEMODE}} -strictportbind -norestart +sv_setsteamaccount {{STEAM_ACC}} +maxplayers {{MAX_PLAYERS}}  -tickrate {{TICKRATE}}','debian:buster-slim',NULL,'bash',1,'#!/bin/bash\r\n# steamcmd Base Installation Script\r\n#\r\n# Server Files: /mnt/server\r\n# Image to install with is \'debian:buster-slim\'\r\napt -y update\r\napt -y --no-install-recommends install curl lib32gcc1 ca-certificates\r\n\r\n## just in case someone removed the defaults.\r\nif [ \"${STEAM_USER}\" == \"\" ]; then\r\n    echo -e \"steam user is not set.\\n\"\r\n    echo -e \"Using anonymous user.\\n\"\r\n    STEAM_USER=anonymous\r\n    STEAM_PASS=\"\"\r\n    STEAM_AUTH=\"\"\r\nelse\r\n    echo -e \"user set to ${STEAM_USER}\"\r\nfi\r\n\r\n## download and install steamcmd\r\ncd /tmp\r\nmkdir -p /mnt/server/steamcmd\r\ncurl -sSL -o steamcmd.tar.gz https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz\r\ntar -xzvf steamcmd.tar.gz -C /mnt/server/steamcmd\r\ncd /mnt/server/steamcmd\r\n\r\n# SteamCMD fails otherwise for some reason, even running as root.\r\n# This is changed at the end of the install process anyways.\r\nchown -R root:root /mnt\r\nexport HOME=/mnt/server\r\n\r\n## install game using steamcmd\r\n./steamcmd.sh +login ${STEAM_USER} ${STEAM_PASS} ${STEAM_AUTH} $( [[ \"${WINDOWS_INSTALL}\" == \"1\" ]] && printf %s \'+@sSteamCmdForcePlatformType windows\' ) +force_install_dir /mnt/server +app_update ${SRCDS_APPID} ${EXTRA_FLAGS} validate +quit ## other flags may be needed depending on install. looking at you cs 1.6\r\n\r\n## set up 32 bit libraries\r\nmkdir -p /mnt/server/.steam/sdk32\r\ncp -v linux32/steamclient.so ../.steam/sdk32/steamclient.so\r\n\r\n## set up 64 bit libraries\r\nmkdir -p /mnt/server/.steam/sdk64\r\ncp -v linux64/steamclient.so ../.steam/sdk64/steamclient.so\r\n\r\n# Creating needed default files for the game\r\ncd /mnt/server/garrysmod/lua/autorun/server\r\necho \'\r\n-- Docs: https://wiki.garrysmod.com/page/resource/AddWorkshop\r\n-- Place the ID of the workshop addon you want to be downloaded to people who join your server, not the collection ID\r\n-- Use https://beta.configcreator.com/create/gmod/resources.lua to easily create a list based on your collection ID\r\n\r\nresource.AddWorkshop( \"\" )\r\n\' > workshop.lua\r\n\r\ncd /mnt/server/garrysmod/cfg\r\necho \'\r\n// Please do not set RCon in here, use the startup parameters.\r\n\r\nhostname		\"New Gmod Server\"\r\nsv_password		\"\"\r\nsv_loadingurl   \"\"\r\n\r\n// Steam Server List Settings\r\nsv_region \"255\"\r\nsv_lan \"0\"\r\nsv_max_queries_sec_global \"30000\"\r\nsv_max_queries_window \"45\"\r\nsv_max_queries_sec \"5\"\r\n\r\n// Server Limits\r\nsbox_maxprops		100\r\nsbox_maxragdolls	5\r\nsbox_maxnpcs		10\r\nsbox_maxballoons	10\r\nsbox_maxeffects		10\r\nsbox_maxdynamite	10\r\nsbox_maxlamps		10\r\nsbox_maxthrusters	10\r\nsbox_maxwheels		10\r\nsbox_maxhoverballs	10\r\nsbox_maxvehicles	20\r\nsbox_maxbuttons		10\r\nsbox_maxsents		20\r\nsbox_maxemitters	5\r\nsbox_godmode		0\r\nsbox_noclip		    0\r\n\r\n// Network Settings - Please keep these set to default.\r\n\r\nsv_minrate		75000\r\nsv_maxrate		0\r\ngmod_physiterations	2\r\nnet_splitpacket_maxrate	45000\r\ndecalfrequency		12 \r\n\r\n// Execute Ban Files - Please do not edit\r\nexec banned_ip.cfg \r\nexec banned_user.cfg \r\n\r\n// Add custom lines under here\r\n\' > server.cfg','2021-01-27 18:38:39','2021-01-27 18:38:39'),(10,'448eb173-6b82-48d4-9612-4b075d356402',2,'support@pterodactyl.io','Insurgency','Take to the streets for intense close quarters combat, where a team\'s survival depends upon securing crucial strongholds and destroying enemy supply in this multiplayer and cooperative Source Engine based experience.',NULL,'[\"quay.io\\/pterodactyl\\/core:source\"]','',NULL,'{}','{\"done\": \"gameserver Steam ID\", \"userInteraction\": []}','{\"custom\": true, \"location\": \"logs/latest.log\"}','quit',NULL,'./srcds_run -game {{SRCDS_GAME}} -console -port {{SERVER_PORT}} +map {{SRCDS_MAP}} +ip 0.0.0.0 -strictportbind -norestart','debian:buster-slim',NULL,'bash',1,'#!/bin/bash\r\n# steamcmd Base Installation Script\r\n#\r\n# Server Files: /mnt/server\r\n# Image to install with is \'debian:buster-slim\'\r\n\r\n##\r\n#\r\n# Variables\r\n# STEAM_USER, STEAM_PASS, STEAM_AUTH - Steam user setup. If a user has 2fa enabled it will most likely fail due to timeout. Leave blank for anon install.\r\n# WINDOWS_INSTALL - if it\'s a windows server you want to install set to 1\r\n# SRCDS_APPID - steam app id ffound here - https://developer.valvesoftware.com/wiki/Dedicated_Servers_List\r\n# EXTRA_FLAGS - when a server has extra glas for things like beta installs or updates.\r\n#\r\n##\r\n\r\napt -y update\r\napt -y --no-install-recommends install curl lib32gcc1 ca-certificates\r\n\r\n## just in case someone removed the defaults.\r\nif [ \"${STEAM_USER}\" == \"\" ]; then\r\n    echo -e \"steam user is not set.\\n\"\r\n    echo -e \"Using anonymous user.\\n\"\r\n    STEAM_USER=anonymous\r\n    STEAM_PASS=\"\"\r\n    STEAM_AUTH=\"\"\r\nelse\r\n    echo -e \"user set to ${STEAM_USER}\"\r\nfi\r\n\r\n## download and install steamcmd\r\ncd /tmp\r\nmkdir -p /mnt/server/steamcmd\r\ncurl -sSL -o steamcmd.tar.gz https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz\r\ntar -xzvf steamcmd.tar.gz -C /mnt/server/steamcmd\r\ncd /mnt/server/steamcmd\r\n\r\n# SteamCMD fails otherwise for some reason, even running as root.\r\n# This is changed at the end of the install process anyways.\r\nchown -R root:root /mnt\r\nexport HOME=/mnt/server\r\n\r\n## install game using steamcmd\r\n./steamcmd.sh +login ${STEAM_USER} ${STEAM_PASS} ${STEAM_AUTH} $( [[ \"${WINDOWS_INSTALL}\" == \"1\" ]] && printf %s \'+@sSteamCmdForcePlatformType windows\' ) +force_install_dir /mnt/server +app_update ${SRCDS_APPID} ${EXTRA_FLAGS} validate +quit ## other flags may be needed depending on install. looking at you cs 1.6\r\n\r\n## set up 32 bit libraries\r\nmkdir -p /mnt/server/.steam/sdk32\r\ncp -v linux32/steamclient.so ../.steam/sdk32/steamclient.so\r\n\r\n## set up 64 bit libraries\r\nmkdir -p /mnt/server/.steam/sdk64\r\ncp -v linux64/steamclient.so ../.steam/sdk64/steamclient.so','2021-01-27 18:38:39','2021-01-27 18:38:39'),(11,'11030395-6803-4781-8c9a-84f79c180a18',2,'support@pterodactyl.io','Team Fortress 2','Team Fortress 2 is a team-based first-person shooter multiplayer video game developed and published by Valve Corporation. It is the sequel to the 1996 mod Team Fortress for Quake and its 1999 remake.',NULL,'[\"quay.io\\/pterodactyl\\/core:source\"]','',NULL,'{}','{\r\n    \"done\": \"gameserver Steam ID\",\r\n    \"userInteraction\": []\r\n}','{\r\n    \"custom\": true,\r\n    \"location\": \"logs/latest.log\"\r\n}','quit',NULL,'./srcds_run -game {{SRCDS_GAME}} -console -port {{SERVER_PORT}} +map {{SRCDS_MAP}} +ip 0.0.0.0 -strictportbind -norestart','debian:buster-slim',NULL,'bash',1,'#!/bin/bash\r\n# steamcmd Base Installation Script\r\n#\r\n# Server Files: /mnt/server\r\n# Image to install with is \'debian:buster-slim\'\r\n\r\n##\r\n#\r\n# Variables\r\n# STEAM_USER, STEAM_PASS, STEAM_AUTH - Steam user setup. If a user has 2fa enabled it will most likely fail due to timeout. Leave blank for anon install.\r\n# WINDOWS_INSTALL - if it\'s a windows server you want to install set to 1\r\n# SRCDS_APPID - steam app id ffound here - https://developer.valvesoftware.com/wiki/Dedicated_Servers_List\r\n# EXTRA_FLAGS - when a server has extra glas for things like beta installs or updates.\r\n#\r\n##\r\n\r\napt -y update\r\napt -y --no-install-recommends install curl lib32gcc1 ca-certificates\r\n\r\n## just in case someone removed the defaults.\r\nif [ \"${STEAM_USER}\" == \"\" ]; then\r\n    echo -e \"steam user is not set.\\n\"\r\n    echo -e \"Using anonymous user.\\n\"\r\n    STEAM_USER=anonymous\r\n    STEAM_PASS=\"\"\r\n    STEAM_AUTH=\"\"\r\nelse\r\n    echo -e \"user set to ${STEAM_USER}\"\r\nfi\r\n\r\n## download and install steamcmd\r\ncd /tmp\r\nmkdir -p /mnt/server/steamcmd\r\ncurl -sSL -o steamcmd.tar.gz https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz\r\ntar -xzvf steamcmd.tar.gz -C /mnt/server/steamcmd\r\ncd /mnt/server/steamcmd\r\n\r\n# SteamCMD fails otherwise for some reason, even running as root.\r\n# This is changed at the end of the install process anyways.\r\nchown -R root:root /mnt\r\nexport HOME=/mnt/server\r\n\r\n## install game using steamcmd\r\n./steamcmd.sh +login ${STEAM_USER} ${STEAM_PASS} ${STEAM_AUTH} $( [[ \"${WINDOWS_INSTALL}\" == \"1\" ]] && printf %s \'+@sSteamCmdForcePlatformType windows\' ) +force_install_dir /mnt/server +app_update ${SRCDS_APPID} ${EXTRA_FLAGS} validate +quit ## other flags may be needed depending on install. looking at you cs 1.6\r\n\r\n## set up 32 bit libraries\r\nmkdir -p /mnt/server/.steam/sdk32\r\ncp -v linux32/steamclient.so ../.steam/sdk32/steamclient.so\r\n\r\n## set up 64 bit libraries\r\nmkdir -p /mnt/server/.steam/sdk64\r\ncp -v linux64/steamclient.so ../.steam/sdk64/steamclient.so','2021-01-27 18:38:39','2021-01-27 18:38:39'),(12,'1283a3ec-c5a4-4b9b-9191-36b2e11ba85d',3,'support@pterodactyl.io','Mumble Server','Mumble is an open source, low-latency, high quality voice chat software primarily intended for use while gaming.',NULL,'[\"quay.io\\/pterodactyl\\/core:glibc\"]','',NULL,'{\"murmur.ini\":{\"parser\": \"ini\", \"find\":{\"logfile\": \"murmur.log\", \"port\": \"{{server.build.default.port}}\", \"host\": \"0.0.0.0\", \"users\": \"{{server.build.env.MAX_USERS}}\"}}}','{\"done\": \"Server listening on\", \"userInteraction\": [ \"Generating new server certificate\"]}','{\"custom\": true, \"location\": \"logs/murmur.log\"}','^C',NULL,'./murmur.x86 -fg','debian:buster-slim',NULL,'bash',1,'#!/bin/bash\r\n# Mumble Installation Script\r\n#\r\n# Server Files: /mnt/server\r\nGITHUB_PACKAGE=mumble-voip/mumble\r\nMATCH=murmur-static\r\n\r\napt update\r\napt install -y tar curl jq bzip2\r\n\r\nif [ ! -d /mnt/server/ ]; then\r\n    mkdir /mnt/server/\r\nfi\r\n\r\ncd /mnt/server\r\n\r\nif [ -z \"${GITHUB_USER}\" ] && [ -z \"${GITHUB_OAUTH_TOKEN}\" ] ; then\r\n    echo -e \"using anon api call\"\r\nelse\r\n    echo -e \"user and oauth token set\"\r\n    alias curl=\'curl -u ${GITHUB_USER}:${GITHUB_OAUTH_TOKEN} \'\r\nfi\r\n\r\n## get release info and download links\r\nLATEST_JSON=$(curl --silent \"https://api.github.com/repos/${GITHUB_PACKAGE}/releases/latest\")\r\nRELEASES=$(curl --silent \"https://api.github.com/repos/${GITHUB_PACKAGE}/releases\")\r\n\r\nif [ -z \"${VERSION}\" ] || [ \"${VERSION}\" == \"latest\" ]; then\r\n    DOWNLOAD_LINK=$(echo ${LATEST_JSON} | jq .assets | jq -r .[].browser_download_url | grep -m 1 -i ${MATCH})\r\nelse\r\n    VERSION_CHECK=$(echo ${RELEASES} | jq -r --arg VERSION \"${VERSION}\" \'.[] | select(.tag_name==$VERSION) | .tag_name\')\r\n    if [ \"${VERSION}\" == \"${VERSION_CHECK}\" ]; then\r\n        DOWNLOAD_LINK=$(echo ${RELEASES} | jq -r --arg VERSION \"${VERSION}\" \'.[] | select(.tag_name==$VERSION) | .assets[].browser_download_url\' | grep -m 1 -i ${MATCH})\r\n    else\r\n        echo -e \"defaulting to latest release\"\r\n        DOWNLOAD_LINK=$(echo ${LATEST_JSON} | jq .assets | jq -r .[].browser_download_url)\r\n    fi\r\nfi\r\n\r\ncurl -L ${DOWNLOAD_LINK} | tar xjv --strip-components=1','2021-01-27 18:38:39','2021-01-27 18:38:39'),(13,'0088f129-e982-4330-88ab-b1cfa6a83d7d',3,'support@pterodactyl.io','Teamspeak3 Server','VoIP software designed with security in mind, featuring crystal clear voice quality, endless customization options, and scalabilty up to thousands of simultaneous users.',NULL,'[\"quay.io\\/parkervcp\\/pterodactyl-images:base_debian\"]','',NULL,'{}','{\r\n    \"done\": \"listening on 0.0.0.0:\",\r\n    \"userInteraction\": []\r\n}','{\r\n    \"custom\": true,\r\n    \"location\": \"logs/ts3.log\"\r\n}','^C',NULL,'./ts3server default_voice_port={{SERVER_PORT}} query_port={{SERVER_PORT}} filetransfer_ip=0.0.0.0 filetransfer_port={{FILE_TRANSFER}} license_accepted=1','debian:buster-slim',NULL,'bash',1,'#!/bin/bash\r\n# TS3 Installation Script\r\n#\r\n# Server Files: /mnt/server\r\napt update\r\napt install -y tar curl jq bzip2\r\n\r\nif [ -z ${TS_VERSION} ] || [ ${TS_VERSION} == latest ]; then\r\n    TS_VERSION=$(curl -sSL https://teamspeak.com/versions/server.json | jq -r \'.linux.x86_64.version\')\r\nfi\r\n\r\ncd /mnt/server\r\n\r\necho -e \"getting files from http://files.teamspeak-services.com/releases/server/${TS_VERSION}/teamspeak3-server_linux_amd64-${TS_VERSION}.tar.bz2\" \r\ncurl -L http://files.teamspeak-services.com/releases/server/${TS_VERSION}/teamspeak3-server_linux_amd64-${TS_VERSION}.tar.bz2 | tar -xvj --strip-components=1\r\n\r\nrm teamspeak3-server_linux_amd64-${TS_VERSION}.tar.bz2','2021-01-27 18:38:39','2021-01-27 18:38:39'),(14,'2d866d4c-c8b1-4c00-9271-c16fe26fff27',4,'support@pterodactyl.io','Rust','The only aim in Rust is to survive. To do this you will need to overcome struggles such as hunger, thirst and cold. Build a fire. Build a shelter. Kill animals for meat. Protect yourself from other players, and kill them for meat. Create alliances with other players and form a town. Do whatever it takes to survive.',NULL,'[\"quay.io\\/pterodactyl\\/core:rust\"]','',NULL,'{}','{\r\n    \"done\": \"Server startup complete\",\r\n    \"userInteraction\": []\r\n}','{\r\n    \"custom\": false,\r\n    \"location\": \"latest.log\"\r\n}','quit',NULL,'./RustDedicated -batchmode +server.port {{SERVER_PORT}} +server.identity \"rust\" +rcon.port {{RCON_PORT}} +rcon.web true +server.hostname \\\"{{HOSTNAME}}\\\" +server.level \\\"{{LEVEL}}\\\" +server.description \\\"{{DESCRIPTION}}\\\" +server.url \\\"{{SERVER_URL}}\\\" +server.headerimage \\\"{{SERVER_IMG}}\\\" +server.worldsize \\\"{{WORLD_SIZE}}\\\" +server.seed \\\"{{WORLD_SEED}}\\\" +server.maxplayers {{MAX_PLAYERS}} +rcon.password \\\"{{RCON_PASS}}\\\" +server.saveinterval {{SAVEINTERVAL}} {{ADDITIONAL_ARGS}}','debian:buster-slim',NULL,'bash',1,'#!/bin/bash\r\n# steamcmd Base Installation Script\r\n#\r\n# Server Files: /mnt/server\r\n# Image to install with is \'debian:buster-slim\'\r\napt -y update\r\napt -y --no-install-recommends install curl lib32gcc1 ca-certificates\r\n\r\nSRCDS_APPID=258550\r\n\r\n## just in case someone removed the defaults.\r\nif [ \"${STEAM_USER}\" == \"\" ]; then\r\n    echo -e \"steam user is not set.\\n\"\r\n    echo -e \"Using anonymous user.\\n\"\r\n    STEAM_USER=anonymous\r\n    STEAM_PASS=\"\"\r\n    STEAM_AUTH=\"\"\r\nelse\r\n    echo -e \"user set to ${STEAM_USER}\"\r\nfi\r\n\r\n## download and install steamcmd\r\ncd /tmp\r\nmkdir -p /mnt/server/steamcmd\r\ncurl -sSL -o steamcmd.tar.gz https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz\r\ntar -xzvf steamcmd.tar.gz -C /mnt/server/steamcmd\r\ncd /mnt/server/steamcmd\r\n\r\n# SteamCMD fails otherwise for some reason, even running as root.\r\n# This is changed at the end of the install process anyways.\r\nchown -R root:root /mnt\r\nexport HOME=/mnt/server\r\n\r\n## install game using steamcmd\r\n./steamcmd.sh +login ${STEAM_USER} ${STEAM_PASS} ${STEAM_AUTH} +force_install_dir /mnt/server +app_update ${SRCDS_APPID} ${EXTRA_FLAGS} validate +quit ## other flags may be needed depending on install. looking at you cs 1.6\r\n\r\n## set up 32 bit libraries\r\nmkdir -p /mnt/server/.steam/sdk32\r\ncp -v linux32/steamclient.so ../.steam/sdk32/steamclient.so\r\n\r\n## set up 64 bit libraries\r\nmkdir -p /mnt/server/.steam/sdk64\r\ncp -v linux64/steamclient.so ../.steam/sdk64/steamclient.so','2021-01-27 18:38:39','2021-01-27 18:38:39');
/*!40000 ALTER TABLE `eggs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `exception` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
INSERT INTO `failed_jobs` VALUES (1,'redis','standard','{\"uuid\":\"2e99f359-439f-4768-9b40-ed43f4c0832b\",\"timeout\":null,\"id\":\"0iZHovTChZLRx5yc1JgXCQJav1HQqlXm\",\"data\":{\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:23:\\\"Pterodactyl\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:40:\\\"Pterodactyl\\\\Notifications\\\\AccountCreated\\\":11:{s:5:\\\"token\\\";N;s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:23:\\\"Pterodactyl\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"b1e30dda-aaaa-4a88-9334-280e17095682\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\",\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\"},\"displayName\":\"Pterodactyl\\\\Notifications\\\\AccountCreated\",\"maxTries\":null,\"maxExceptions\":null,\"timeoutAt\":null,\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"delay\":null,\"attempts\":2}','2021-01-27 18:41:55','Swift_TransportException: Connection could not be established with host smtp.gmail.com :stream_socket_client(): unable to connect to ssl://smtp.gmail.com:467 (Connection timed out) in /var/www/pterodactyl/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/StreamBuffer.php:269\nStack trace:\n#0 [internal function]: Swift_Transport_StreamBuffer->{closure}()\n#1 /var/www/pterodactyl/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/StreamBuffer.php(272): stream_socket_client()\n#2 /var/www/pterodactyl/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/StreamBuffer.php(58): Swift_Transport_StreamBuffer->establishSocketConnection()\n#3 /var/www/pterodactyl/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(143): Swift_Transport_StreamBuffer->initialize()\n#4 /var/www/pterodactyl/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#5 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(521): Swift_Mailer->send()\n#6 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage()\n#7 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Notifications/Channels/MailChannel.php(65): Illuminate\\Mail\\Mailer->send()\n#8 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Notifications/NotificationSender.php(146): Illuminate\\Notifications\\Channels\\MailChannel->send()\n#9 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Notifications/NotificationSender.php(105): Illuminate\\Notifications\\NotificationSender->sendToNotifiable()\n#10 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Notifications\\NotificationSender->Illuminate\\Notifications\\{closure}()\n#11 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Notifications/NotificationSender.php(107): Illuminate\\Notifications\\NotificationSender->withLocale()\n#12 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Notifications/ChannelManager.php(54): Illuminate\\Notifications\\NotificationSender->sendNow()\n#13 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Notifications/SendQueuedNotifications.php(94): Illuminate\\Notifications\\ChannelManager->sendNow()\n#14 [internal function]: Illuminate\\Notifications\\SendQueuedNotifications->handle()\n#15 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(33): call_user_func_array()\n#16 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Container/Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure()\n#18 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#19 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call()\n#20 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call()\n#21 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#22 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#23 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then()\n#24 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#25 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#26 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#27 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then()\n#28 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#29 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call()\n#30 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(306): Illuminate\\Queue\\Worker->process()\n#32 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(132): Illuminate\\Queue\\Worker->runJob()\n#33 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon()\n#34 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#35 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(33): call_user_func_array()\n#37 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Container/Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#38 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure()\n#39 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#40 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call()\n#41 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call()\n#42 /var/www/pterodactyl/vendor/symfony/console/Command/Command.php(258): Illuminate\\Console\\Command->execute()\n#43 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run()\n#44 /var/www/pterodactyl/vendor/symfony/console/Application.php(911): Illuminate\\Console\\Command->run()\n#45 /var/www/pterodactyl/vendor/symfony/console/Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand()\n#46 /var/www/pterodactyl/vendor/symfony/console/Application.php(140): Symfony\\Component\\Console\\Application->doRun()\n#47 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run()\n#48 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run()\n#49 /var/www/pterodactyl/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#50 {main}'),(2,'redis','standard','{\"uuid\":\"3a30c486-bf4b-4bea-9ffb-caa23f08fef0\",\"timeout\":null,\"id\":\"PovbyVnsx59SdwFng7pR4EidCICDfBw9\",\"data\":{\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":13:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:23:\\\"Pterodactyl\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:2;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:40:\\\"Pterodactyl\\\\Notifications\\\\AccountCreated\\\":11:{s:5:\\\"token\\\";N;s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:23:\\\"Pterodactyl\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"1472bf78-4ce8-40b6-8cd0-3f75188f7691\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\",\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\"},\"displayName\":\"Pterodactyl\\\\Notifications\\\\AccountCreated\",\"maxTries\":null,\"maxExceptions\":null,\"timeoutAt\":null,\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"delay\":null,\"attempts\":2}','2021-01-27 18:43:28','Swift_TransportException: Connection could not be established with host smtp.gmail.com :stream_socket_client(): unable to connect to ssl://smtp.gmail.com:467 (Connection timed out) in /var/www/pterodactyl/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/StreamBuffer.php:269\nStack trace:\n#0 [internal function]: Swift_Transport_StreamBuffer->{closure}()\n#1 /var/www/pterodactyl/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/StreamBuffer.php(272): stream_socket_client()\n#2 /var/www/pterodactyl/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/StreamBuffer.php(58): Swift_Transport_StreamBuffer->establishSocketConnection()\n#3 /var/www/pterodactyl/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(143): Swift_Transport_StreamBuffer->initialize()\n#4 /var/www/pterodactyl/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#5 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(521): Swift_Mailer->send()\n#6 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage()\n#7 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Notifications/Channels/MailChannel.php(65): Illuminate\\Mail\\Mailer->send()\n#8 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Notifications/NotificationSender.php(146): Illuminate\\Notifications\\Channels\\MailChannel->send()\n#9 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Notifications/NotificationSender.php(105): Illuminate\\Notifications\\NotificationSender->sendToNotifiable()\n#10 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Notifications\\NotificationSender->Illuminate\\Notifications\\{closure}()\n#11 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Notifications/NotificationSender.php(107): Illuminate\\Notifications\\NotificationSender->withLocale()\n#12 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Notifications/ChannelManager.php(54): Illuminate\\Notifications\\NotificationSender->sendNow()\n#13 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Notifications/SendQueuedNotifications.php(94): Illuminate\\Notifications\\ChannelManager->sendNow()\n#14 [internal function]: Illuminate\\Notifications\\SendQueuedNotifications->handle()\n#15 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(33): call_user_func_array()\n#16 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Container/Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure()\n#18 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#19 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call()\n#20 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call()\n#21 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#22 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#23 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then()\n#24 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#25 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#26 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#27 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then()\n#28 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#29 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call()\n#30 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(306): Illuminate\\Queue\\Worker->process()\n#32 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(132): Illuminate\\Queue\\Worker->runJob()\n#33 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon()\n#34 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#35 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(33): call_user_func_array()\n#37 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Container/Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#38 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure()\n#39 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#40 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call()\n#41 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call()\n#42 /var/www/pterodactyl/vendor/symfony/console/Command/Command.php(258): Illuminate\\Console\\Command->execute()\n#43 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run()\n#44 /var/www/pterodactyl/vendor/symfony/console/Application.php(911): Illuminate\\Console\\Command->run()\n#45 /var/www/pterodactyl/vendor/symfony/console/Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand()\n#46 /var/www/pterodactyl/vendor/symfony/console/Application.php(140): Symfony\\Component\\Console\\Application->doRun()\n#47 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run()\n#48 /var/www/pterodactyl/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run()\n#49 /var/www/pterodactyl/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#50 {main}');
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `short` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `locations_short_unique` (`short`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (2,'DAL-EXT','Dallas 5800X Node(s)','2021-01-27 19:13:19','2021-01-27 19:13:19');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2016_01_23_195641_add_allocations_table',1),(2,'2016_01_23_195851_add_api_keys',1),(3,'2016_01_23_200044_add_api_permissions',1),(4,'2016_01_23_200159_add_downloads',1),(5,'2016_01_23_200421_create_failed_jobs_table',1),(6,'2016_01_23_200440_create_jobs_table',1),(7,'2016_01_23_200528_add_locations',1),(8,'2016_01_23_200648_add_nodes',1),(9,'2016_01_23_201433_add_password_resets',1),(10,'2016_01_23_201531_add_permissions',1),(11,'2016_01_23_201649_add_server_variables',1),(12,'2016_01_23_201748_add_servers',1),(13,'2016_01_23_202544_add_service_options',1),(14,'2016_01_23_202731_add_service_varibles',1),(15,'2016_01_23_202943_add_services',1),(16,'2016_01_23_203119_create_settings_table',1),(17,'2016_01_23_203150_add_subusers',1),(18,'2016_01_23_203159_add_users',1),(19,'2016_01_23_203947_create_sessions_table',1),(20,'2016_01_25_234418_rename_permissions_column',1),(21,'2016_02_07_172148_add_databases_tables',1),(22,'2016_02_07_181319_add_database_servers_table',1),(23,'2016_02_13_154306_add_service_option_default_startup',1),(24,'2016_02_20_155318_add_unique_service_field',1),(25,'2016_02_27_163411_add_tasks_table',1),(26,'2016_02_27_163447_add_tasks_log_table',1),(27,'2016_03_18_155649_add_nullable_field_lastrun',1),(28,'2016_08_30_212718_add_ip_alias',1),(29,'2016_08_30_213301_modify_ip_storage_method',1),(30,'2016_09_01_193520_add_suspension_for_servers',1),(31,'2016_09_01_211924_remove_active_column',1),(32,'2016_09_02_190647_add_sftp_password_storage',1),(33,'2016_09_04_171338_update_jobs_tables',1),(34,'2016_09_04_172028_update_failed_jobs_table',1),(35,'2016_09_04_182835_create_notifications_table',1),(36,'2016_09_07_163017_add_unique_identifier',1),(37,'2016_09_14_145945_allow_longer_regex_field',1),(38,'2016_09_17_194246_add_docker_image_column',1),(39,'2016_09_21_165554_update_servers_column_name',1),(40,'2016_09_29_213518_rename_double_insurgency',1),(41,'2016_10_07_152117_build_api_log_table',1),(42,'2016_10_14_164802_update_api_keys',1),(43,'2016_10_23_181719_update_misnamed_bungee',1),(44,'2016_10_23_193810_add_foreign_keys_servers',1),(45,'2016_10_23_201624_add_foreign_allocations',1),(46,'2016_10_23_202222_add_foreign_api_keys',1),(47,'2016_10_23_202703_add_foreign_api_permissions',1),(48,'2016_10_23_202953_add_foreign_database_servers',1),(49,'2016_10_23_203105_add_foreign_databases',1),(50,'2016_10_23_203335_add_foreign_nodes',1),(51,'2016_10_23_203522_add_foreign_permissions',1),(52,'2016_10_23_203857_add_foreign_server_variables',1),(53,'2016_10_23_204157_add_foreign_service_options',1),(54,'2016_10_23_204321_add_foreign_service_variables',1),(55,'2016_10_23_204454_add_foreign_subusers',1),(56,'2016_10_23_204610_add_foreign_tasks',1),(57,'2016_11_04_000949_add_ark_service_option_fixed',1),(58,'2016_11_11_220649_add_pack_support',1),(59,'2016_11_11_231731_set_service_name_unique',1),(60,'2016_11_27_142519_add_pack_column',1),(61,'2016_12_01_173018_add_configurable_upload_limit',1),(62,'2016_12_02_185206_correct_service_variables',1),(63,'2017_01_03_150436_fix_misnamed_option_tag',1),(64,'2017_01_07_154228_create_node_configuration_tokens_table',1),(65,'2017_01_12_135449_add_more_user_data',1),(66,'2017_02_02_175548_UpdateColumnNames',1),(67,'2017_02_03_140948_UpdateNodesTable',1),(68,'2017_02_03_155554_RenameColumns',1),(69,'2017_02_05_164123_AdjustColumnNames',1),(70,'2017_02_05_164516_AdjustColumnNamesForServicePacks',1),(71,'2017_02_09_174834_SetupPermissionsPivotTable',1),(72,'2017_02_10_171858_UpdateAPIKeyColumnNames',1),(73,'2017_03_03_224254_UpdateNodeConfigTokensColumns',1),(74,'2017_03_05_212803_DeleteServiceExecutableOption',1),(75,'2017_03_10_162934_AddNewServiceOptionsColumns',1),(76,'2017_03_10_173607_MigrateToNewServiceSystem',1),(77,'2017_03_11_215455_ChangeServiceVariablesValidationRules',1),(78,'2017_03_12_150648_MoveFunctionsFromFileToDatabase',1),(79,'2017_03_14_175631_RenameServicePacksToSingluarPacks',1),(80,'2017_03_14_200326_AddLockedStatusToTable',1),(81,'2017_03_16_181109_ReOrganizeDatabaseServersToDatabaseHost',1),(82,'2017_03_16_181515_CleanupDatabasesDatabase',1),(83,'2017_03_18_204953_AddForeignKeyToPacks',1),(84,'2017_03_31_221948_AddServerDescriptionColumn',1),(85,'2017_04_02_163232_DropDeletedAtColumnFromServers',1),(86,'2017_04_15_125021_UpgradeTaskSystem',1),(87,'2017_04_20_171943_AddScriptsToServiceOptions',1),(88,'2017_04_21_151432_AddServiceScriptTrackingToServers',1),(89,'2017_04_27_145300_AddCopyScriptFromColumn',1),(90,'2017_04_27_223629_AddAbilityToDefineConnectionOverSSLWithDaemonBehindProxy',1),(91,'2017_05_01_141528_DeleteDownloadTable',1),(92,'2017_05_01_141559_DeleteNodeConfigurationTable',1),(93,'2017_06_10_152951_add_external_id_to_users',1),(94,'2017_06_25_133923_ChangeForeignKeyToBeOnCascadeDelete',1),(95,'2017_07_08_152806_ChangeUserPermissionsToDeleteOnUserDeletion',1),(96,'2017_07_08_154416_SetAllocationToReferenceNullOnServerDelete',1),(97,'2017_07_08_154650_CascadeDeletionWhenAServerOrVariableIsDeleted',1),(98,'2017_07_24_194433_DeleteTaskWhenParentServerIsDeleted',1),(99,'2017_08_05_115800_CascadeNullValuesForDatabaseHostWhenNodeIsDeleted',1),(100,'2017_08_05_144104_AllowNegativeValuesForOverallocation',1),(101,'2017_08_05_174811_SetAllocationUnqiueUsingMultipleFields',1),(102,'2017_08_15_214555_CascadeDeletionWhenAParentServiceIsDeleted',1),(103,'2017_08_18_215428_RemovePackWhenParentServiceOptionIsDeleted',1),(104,'2017_09_10_225749_RenameTasksTableForStructureRefactor',1),(105,'2017_09_10_225941_CreateSchedulesTable',1),(106,'2017_09_10_230309_CreateNewTasksTableForSchedules',1),(107,'2017_09_11_002938_TransferOldTasksToNewScheduler',1),(108,'2017_09_13_211810_UpdateOldPermissionsToPointToNewScheduleSystem',1),(109,'2017_09_23_170933_CreateDaemonKeysTable',1),(110,'2017_09_23_173628_RemoveDaemonSecretFromServersTable',1),(111,'2017_09_23_185022_RemoveDaemonSecretFromSubusersTable',1),(112,'2017_10_02_202000_ChangeServicesToUseAMoreUniqueIdentifier',1),(113,'2017_10_02_202007_ChangeToABetterUniqueServiceConfiguration',1),(114,'2017_10_03_233202_CascadeDeletionWhenServiceOptionIsDeleted',1),(115,'2017_10_06_214026_ServicesToNestsConversion',1),(116,'2017_10_06_214053_ServiceOptionsToEggsConversion',1),(117,'2017_10_06_215741_ServiceVariablesToEggVariablesConversion',1),(118,'2017_10_24_222238_RemoveLegacySFTPInformation',1),(119,'2017_11_11_161922_Add2FaLastAuthorizationTimeColumn',1),(120,'2017_11_19_122708_MigratePubPrivFormatToSingleKey',1),(121,'2017_12_04_184012_DropAllocationsWhenNodeIsDeleted',1),(122,'2017_12_12_220426_MigrateSettingsTableToNewFormat',1),(123,'2018_01_01_122821_AllowNegativeValuesForServerSwap',1),(124,'2018_01_11_213943_AddApiKeyPermissionColumns',1),(125,'2018_01_13_142012_SetupTableForKeyEncryption',1),(126,'2018_01_13_145209_AddLastUsedAtColumn',1),(127,'2018_02_04_145617_AllowTextInUserExternalId',1),(128,'2018_02_10_151150_remove_unique_index_on_external_id_column',1),(129,'2018_02_17_134254_ensure_unique_allocation_id_on_servers_table',1),(130,'2018_02_24_112356_add_external_id_column_to_servers_table',1),(131,'2018_02_25_160152_remove_default_null_value_on_table',1),(132,'2018_02_25_160604_define_unique_index_on_users_external_id',1),(133,'2018_03_01_192831_add_database_and_port_limit_columns_to_servers_table',1),(134,'2018_03_15_124536_add_description_to_nodes',1),(135,'2018_05_04_123826_add_maintenance_to_nodes',1),(136,'2018_09_03_143756_allow_egg_variables_to_have_longer_values',1),(137,'2018_09_03_144005_allow_server_variables_to_have_longer_values',1),(138,'2019_03_02_142328_set_allocation_limit_default_null',1),(139,'2019_03_02_151321_fix_unique_index_to_account_for_host',1),(140,'2020_03_22_163911_merge_permissions_table_into_subusers',1),(141,'2020_03_22_164814_drop_permissions_table',1),(142,'2020_04_03_203624_add_threads_column_to_servers_table',1),(143,'2020_04_03_230614_create_backups_table',1),(144,'2020_04_04_131016_add_table_server_transfers',1),(145,'2020_04_10_141024_store_node_tokens_as_encrypted_value',1),(146,'2020_04_17_203438_allow_nullable_descriptions',1),(147,'2020_04_22_055500_add_max_connections_column',1),(148,'2020_04_26_111208_add_backup_limit_to_servers',1),(149,'2020_05_20_234655_add_mounts_table',1),(150,'2020_05_21_192756_add_mount_server_table',1),(151,'2020_07_02_213612_create_user_recovery_tokens_table',1),(152,'2020_07_09_201845_add_notes_column_for_allocations',1),(153,'2020_08_20_205533_add_backup_state_column_to_backups',1),(154,'2020_08_22_132500_update_bytes_to_unsigned_bigint',1),(155,'2020_08_23_175331_modify_checksums_column_for_backups',1),(156,'2020_09_13_110007_drop_packs_from_servers',1),(157,'2020_09_13_110021_drop_packs_from_api_key_permissions',1),(158,'2020_09_13_110047_drop_packs_table',1),(159,'2020_09_13_113503_drop_daemon_key_table',1),(160,'2020_10_10_165437_change_unique_database_name_to_account_for_server',1),(161,'2020_10_26_194904_remove_nullable_from_schedule_name_field',1),(162,'2020_11_02_201014_add_features_column_to_eggs',1),(163,'2020_12_12_102435_support_multiple_docker_images_and_updates',1),(164,'2020_12_14_013707_make_successful_nullable_in_server_transfers',1),(165,'2020_12_17_014330_add_archived_field_to_server_transfers_table',1),(166,'2020_12_24_092449_make_allocation_fields_json',1),(167,'2020_12_26_184914_add_upload_id_column_to_backups_table',1),(168,'2021_01_10_153937_add_file_denylist_to_egg_configs',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mount_node`
--

DROP TABLE IF EXISTS `mount_node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mount_node` (
  `node_id` int(11) NOT NULL,
  `mount_id` int(11) NOT NULL,
  UNIQUE KEY `mount_node_node_id_mount_id_unique` (`node_id`,`mount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mount_node`
--

LOCK TABLES `mount_node` WRITE;
/*!40000 ALTER TABLE `mount_node` DISABLE KEYS */;
/*!40000 ALTER TABLE `mount_node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mount_server`
--

DROP TABLE IF EXISTS `mount_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mount_server` (
  `server_id` int(11) NOT NULL,
  `mount_id` int(11) NOT NULL,
  UNIQUE KEY `mount_server_server_id_mount_id_unique` (`server_id`,`mount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mount_server`
--

LOCK TABLES `mount_server` WRITE;
/*!40000 ALTER TABLE `mount_server` DISABLE KEYS */;
/*!40000 ALTER TABLE `mount_server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mounts`
--

DROP TABLE IF EXISTS `mounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_only` tinyint(3) unsigned NOT NULL,
  `user_mountable` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mounts_id_unique` (`id`),
  UNIQUE KEY `mounts_uuid_unique` (`uuid`),
  UNIQUE KEY `mounts_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mounts`
--

LOCK TABLES `mounts` WRITE;
/*!40000 ALTER TABLE `mounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `mounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nests`
--

DROP TABLE IF EXISTS `nests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` char(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `services_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nests`
--

LOCK TABLES `nests` WRITE;
/*!40000 ALTER TABLE `nests` DISABLE KEYS */;
INSERT INTO `nests` VALUES (1,'fbe9acb1-349b-41b4-8d78-90cd5a7c5954','support@pterodactyl.io','Minecraft','Minecraft - the classic game from Mojang. With support for Vanilla MC, Spigot, and many others!','2021-01-27 18:38:39','2021-01-27 18:38:39'),(2,'3f24fc58-a89a-43cc-9e37-2966c1856cbf','support@pterodactyl.io','Source Engine','Includes support for most Source Dedicated Server games.','2021-01-27 18:38:39','2021-01-27 18:38:39'),(3,'fd6fb84d-74f3-426b-95f0-0a31ec876040','support@pterodactyl.io','Voice Servers','Voice servers such as Mumble and Teamspeak 3.','2021-01-27 18:38:39','2021-01-27 18:38:39'),(4,'4fc737e9-2752-4a2f-9a65-f30f7380fd91','support@pterodactyl.io','Rust','Rust - A game where you must fight to survive.','2021-01-27 18:38:39','2021-01-27 18:38:39');
/*!40000 ALTER TABLE `nests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nodes`
--

DROP TABLE IF EXISTS `nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nodes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `public` smallint(5) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` int(10) unsigned NOT NULL,
  `fqdn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheme` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'https',
  `behind_proxy` tinyint(1) NOT NULL DEFAULT 0,
  `maintenance_mode` tinyint(1) NOT NULL DEFAULT 0,
  `memory` int(10) unsigned NOT NULL,
  `memory_overallocate` int(11) NOT NULL DEFAULT 0,
  `disk` int(10) unsigned NOT NULL,
  `disk_overallocate` int(11) NOT NULL DEFAULT 0,
  `upload_size` int(10) unsigned NOT NULL DEFAULT 100,
  `daemon_token_id` char(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `daemon_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `daemonListen` smallint(5) unsigned NOT NULL DEFAULT 8080,
  `daemonSFTP` smallint(6) NOT NULL DEFAULT 2022,
  `daemonBase` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/home/daemon-files',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nodes_uuid_unique` (`uuid`),
  UNIQUE KEY `nodes_daemon_token_id_unique` (`daemon_token_id`),
  KEY `nodes_location_id_foreign` (`location_id`),
  CONSTRAINT `nodes_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nodes`
--

LOCK TABLES `nodes` WRITE;
/*!40000 ALTER TABLE `nodes` DISABLE KEYS */;
INSERT INTO `nodes` VALUES (1,'370e72f0-8971-4e43-8312-142e7c95bcdf',1,'dal-ext-01-devgame','VM Number 916. 4 Threads on a 5800X',2,'dal-ext-01-devgame.bya.ac','https',0,0,65535,0,204800,0,100,'i0Xf7wsTR3xItRJ4','eyJpdiI6IlFZdDFtR1NnWkE5WVZMT1BxdUJteXc9PSIsInZhbHVlIjoiT0lnMkRyODNUSllwVWZscFNWZjZuNXZWN0tkb2NiSmQweVpoUmRTK084eHh1Vm9PcVQ5NUZBUHNvUmVpb2tSSS9vMWlaeWNxUnZ1VFNsaFpKeHhPOFE2NFQ5aVQ4elV1cXNNbFJEUy9icXc9IiwibWFjIjoiZTVmYTk0ZDExNjUyZDZiMjQwYjAwM2RhMTQ0MGQ2NjZjNDE5N2Y4ZTU2MDcyZTc2M2Q4NThmZWY0ZjA0N2M5YSJ9',8080,2022,'/var/lib/pterodactyl/volumes','2021-01-27 19:14:13','2021-01-27 19:14:13');
/*!40000 ALTER TABLE `nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recovery_tokens`
--

DROP TABLE IF EXISTS `recovery_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recovery_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `recovery_tokens_user_id_foreign` (`user_id`),
  CONSTRAINT `recovery_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recovery_tokens`
--

LOCK TABLES `recovery_tokens` WRITE;
/*!40000 ALTER TABLE `recovery_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `recovery_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `server_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cron_day_of_week` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cron_day_of_month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cron_hour` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cron_minute` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_processing` tinyint(1) NOT NULL,
  `last_run_at` timestamp NULL DEFAULT NULL,
  `next_run_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `schedules_server_id_foreign` (`server_id`),
  CONSTRAINT `schedules_server_id_foreign` FOREIGN KEY (`server_id`) REFERENCES `servers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_transfers`
--

DROP TABLE IF EXISTS `server_transfers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_transfers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `server_id` int(10) unsigned NOT NULL,
  `successful` tinyint(1) DEFAULT NULL,
  `old_node` int(10) unsigned NOT NULL,
  `new_node` int(10) unsigned NOT NULL,
  `old_allocation` int(10) unsigned NOT NULL,
  `new_allocation` int(10) unsigned NOT NULL,
  `old_additional_allocations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json)',
  `new_additional_allocations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json)',
  `archived` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `server_transfers_server_id_foreign` (`server_id`),
  CONSTRAINT `server_transfers_server_id_foreign` FOREIGN KEY (`server_id`) REFERENCES `servers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_transfers`
--

LOCK TABLES `server_transfers` WRITE;
/*!40000 ALTER TABLE `server_transfers` DISABLE KEYS */;
/*!40000 ALTER TABLE `server_transfers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server_variables`
--

DROP TABLE IF EXISTS `server_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server_variables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `server_id` int(10) unsigned DEFAULT NULL,
  `variable_id` int(10) unsigned NOT NULL,
  `variable_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `server_variables_server_id_foreign` (`server_id`),
  KEY `server_variables_variable_id_foreign` (`variable_id`),
  CONSTRAINT `server_variables_server_id_foreign` FOREIGN KEY (`server_id`) REFERENCES `servers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `server_variables_variable_id_foreign` FOREIGN KEY (`variable_id`) REFERENCES `egg_variables` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server_variables`
--

LOCK TABLES `server_variables` WRITE;
/*!40000 ALTER TABLE `server_variables` DISABLE KEYS */;
INSERT INTO `server_variables` VALUES (1,1,7,'latest',NULL,NULL),(2,1,8,'server.jar',NULL,NULL),(3,1,9,'',NULL,NULL),(4,1,10,'latest',NULL,NULL);
/*!40000 ALTER TABLE `server_variables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servers`
--

DROP TABLE IF EXISTS `servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `external_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uuidShort` char(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `skip_scripts` tinyint(1) NOT NULL DEFAULT 0,
  `suspended` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `owner_id` int(10) unsigned NOT NULL,
  `memory` int(10) unsigned NOT NULL,
  `swap` int(11) NOT NULL,
  `disk` int(10) unsigned NOT NULL,
  `io` int(10) unsigned NOT NULL,
  `cpu` int(10) unsigned NOT NULL,
  `threads` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oom_disabled` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `allocation_id` int(10) unsigned NOT NULL,
  `nest_id` int(10) unsigned NOT NULL,
  `egg_id` int(10) unsigned NOT NULL,
  `startup` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `installed` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `allocation_limit` int(10) unsigned DEFAULT NULL,
  `database_limit` int(10) unsigned DEFAULT 0,
  `backup_limit` int(10) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `servers_uuid_unique` (`uuid`),
  UNIQUE KEY `servers_uuidshort_unique` (`uuidShort`),
  UNIQUE KEY `servers_allocation_id_unique` (`allocation_id`),
  UNIQUE KEY `servers_external_id_unique` (`external_id`),
  KEY `servers_node_id_foreign` (`node_id`),
  KEY `servers_owner_id_foreign` (`owner_id`),
  KEY `servers_nest_id_foreign` (`nest_id`),
  KEY `servers_egg_id_foreign` (`egg_id`),
  CONSTRAINT `servers_allocation_id_foreign` FOREIGN KEY (`allocation_id`) REFERENCES `allocations` (`id`),
  CONSTRAINT `servers_egg_id_foreign` FOREIGN KEY (`egg_id`) REFERENCES `eggs` (`id`),
  CONSTRAINT `servers_nest_id_foreign` FOREIGN KEY (`nest_id`) REFERENCES `nests` (`id`),
  CONSTRAINT `servers_node_id_foreign` FOREIGN KEY (`node_id`) REFERENCES `nodes` (`id`),
  CONSTRAINT `servers_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servers`
--

LOCK TABLES `servers` WRITE;
/*!40000 ALTER TABLE `servers` DISABLE KEYS */;
INSERT INTO `servers` VALUES (1,NULL,'441b1798-cafd-4a36-9f7a-6e498203bec0','441b1798',1,'test Minecraft server','',0,0,2,10000,-1,0,500,0,'0',1,1,1,3,'java -Xms128M -Xmx{{SERVER_MEMORY}}M -Dterminal.jline=false -Dterminal.ansi=true -jar {{SERVER_JARFILE}}','quay.io/pterodactyl/core:java-11',1,0,0,0,'2021-01-27 22:08:48','2021-01-27 22:13:12');
/*!40000 ALTER TABLE `servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subusers`
--

DROP TABLE IF EXISTS `subusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subusers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`permissions`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subusers_user_id_foreign` (`user_id`),
  KEY `subusers_server_id_foreign` (`server_id`),
  CONSTRAINT `subusers_server_id_foreign` FOREIGN KEY (`server_id`) REFERENCES `servers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subusers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subusers`
--

LOCK TABLES `subusers` WRITE;
/*!40000 ALTER TABLE `subusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `subusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `schedule_id` int(10) unsigned NOT NULL,
  `sequence_id` int(10) unsigned NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_offset` int(10) unsigned NOT NULL,
  `is_queued` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tasks_schedule_id_sequence_id_index` (`schedule_id`,`sequence_id`),
  CONSTRAINT `tasks_schedule_id_foreign` FOREIGN KEY (`schedule_id`) REFERENCES `schedules` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks_log`
--

DROP TABLE IF EXISTS `tasks_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `task_id` int(10) unsigned NOT NULL,
  `run_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `run_status` int(10) unsigned NOT NULL,
  `response` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks_log`
--

LOCK TABLES `tasks_log` WRITE;
/*!40000 ALTER TABLE `tasks_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `external_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_first` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_last` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` char(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `root_admin` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `use_totp` tinyint(3) unsigned NOT NULL,
  `totp_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totp_authenticated_at` timestamp NULL DEFAULT NULL,
  `gravatar` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_uuid_unique` (`uuid`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`),
  KEY `users_external_id_index` (`external_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,'6416152d-dbeb-40b5-92f9-9015bc0d9f10','samuel','sl@byteania.com','Samuel','L','$2y$10$jlHwo9q7h0N0Povx/oOkjuPBiFT.eWOv39/Nu2bLQJGpx0MvtsQ5m','93ViBITQHx8agUA2KzNWS1x71jLfoAcEPtA0k2mVE8myNNH8QyjcE9cFcj6f','en',1,0,NULL,NULL,1,'2021-01-27 18:40:24','2021-01-27 18:40:24'),(2,NULL,'f760e958-4215-4afb-ac6b-9e61417edd41','developer','dev@dev.com','dev','dev','$2y$10$5UAz/AWpG7bb9dxT1Hgp1uns89zrGoTBaTK4vYT6IMspmyCiuTGNe','99Wwq9CMzqQjQfOLSTKqLhcAaOKivKF2x37CWN0GxifpDBZ4Hhxyh4aZj6Ec','en',1,0,'eyJpdiI6IiswWWN5b3VwU2syUGF5akROcHZlVUE9PSIsInZhbHVlIjoiRENBVlY0VGlIWUlQNVMxQWtwcElnMVJ6UnRKQ0VTS01GbSs4ZjlzWGViK0xoR2MrY1N3WEtmZXdhdGRJVytjdSIsIm1hYyI6IjIzZjMwYmEyZGYwYWQ0OTI4M2Q3NmMzYjgyMGU0OWM2NzI2NGRmOGFkYWYxZDViNzA0YzZmZGUzYzJkZDNkZjUifQ==',NULL,1,'2021-01-27 18:41:55','2021-01-28 00:42:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-28  4:06:41
