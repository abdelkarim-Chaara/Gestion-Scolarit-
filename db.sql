-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: homestead
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.21-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `annonces`
--

DROP TABLE IF EXISTS `annonces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `annonces` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `groupe_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `annonces_user_id_foreign` (`user_id`),
  KEY `annonces_groupe_id_foreign` (`groupe_id`),
  CONSTRAINT `annonces_groupe_id_foreign` FOREIGN KEY (`groupe_id`) REFERENCES `groupes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `annonces_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `annonces`
--

LOCK TABLES `annonces` WRITE;
/*!40000 ALTER TABLE `annonces` DISABLE KEYS */;
INSERT INTO `annonces` VALUES (1,'Offre en formation continue au titre de l’année universitaire 2017/2018','Offre en formation continue au titre de l’année universitaire 2017/2018','normal',1,'2017-06-30 15:28:46','2017-06-30 15:28:46',NULL),(2,'Planning des contrôles continus N°2 (CC2) Cycles MASTER & INGENIEUR - Semestre de Printemps 2016-2017','Planning des contrôles continus N°2 (CC2) Cycles MASTER & INGENIEUR - Semestre de Printemps 2016-2017','normal',1,'2017-06-30 15:28:33','2017-06-30 15:28:33',NULL),(3,'test prof','test','urgent',9,'2017-06-30 14:05:22','2017-06-30 14:05:22',1);
/*!40000 ALTER TABLE `annonces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `groupe_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_user_id_foreign` (`user_id`),
  KEY `documents_groupe_id_foreign` (`groupe_id`),
  CONSTRAINT `documents_groupe_id_foreign` FOREIGN KEY (`groupe_id`) REFERENCES `groupes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `documents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES (2,'test','test','public','file/gTjQGBxaqmCQa6cM743jcYTw78QxQJVbjnJe62Nn.pdf',5,1,'2017-06-30 01:38:34','2017-06-30 01:38:34'),(3,'test prof','test','groupe','file/nAH01HKEUYWrKjlihdQo1rtOG1eZCLsmzHqT3SBL.pdf',9,1,'2017-06-30 14:05:08','2017-06-30 14:05:08');
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupes`
--

DROP TABLE IF EXISTS `groupes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupes`
--

LOCK TABLES `groupes` WRITE;
/*!40000 ALTER TABLE `groupes` DISABLE KEYS */;
INSERT INTO `groupes` VALUES (1,'LSI1','Logiciels et systèmes informatiques (LSI)','2017-06-29 23:21:58','2017-06-29 23:21:58'),(2,'LSI2','Logiciels et systèmes informatiques (LSI)','2017-06-29 23:45:37','2017-06-29 23:45:37');
/*!40000 ALTER TABLE `groupes` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2017_06_20_235037_create_permission_tables',1),(4,'2017_06_21_121341_annonces',1),(5,'2017_06_21_121726_groupes',1),(6,'2017_06_21_122129_documents',1),(7,'2017_06_21_122303_modules',1),(8,'2017_06_21_123212_plannings',1),(9,'2017_06_21_123533_notes',1),(10,'2017_06_23_021528_add_groupe_to_users_table',1),(11,'2017_06_24_170444_add_groupe_to_annonces_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nbr_heure` int(11) NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `modules_user_id_foreign` (`user_id`),
  CONSTRAINT `modules_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES (1,'Systèmes d’exploitation et systèmes embarqués','Systèmes d’exploitation et systèmes embarqués',90,7,'2017-06-29 23:23:17','2017-06-29 23:23:17'),(2,'Développement web et Frameworks   (php, zend, samfony)','Développement web et Frameworks   (php, zend, samfony)',90,6,'2017-06-29 23:23:41','2017-06-29 23:23:41'),(3,'Modélisation orientée objet et Programmation C++','Modélisation orientée objet et Programmation C++',90,9,'2017-06-29 23:24:01','2017-06-29 23:24:01'),(4,'Théorie des graphes et Applications','Théorie des graphes et Applications',90,7,'2017-06-29 23:24:22','2017-06-29 23:24:22'),(5,'Architecture des réseaux informatiques et techniques d’acheminent','Architecture des réseaux informatiques et techniques d’acheminent',90,8,'2017-06-29 23:24:52','2017-06-29 23:24:52');
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `note` double(8,2) NOT NULL DEFAULT '0.00',
  `module_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notes_module_id_foreign` (`module_id`),
  KEY `notes_user_id_foreign` (`user_id`),
  CONSTRAINT `notes_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE,
  CONSTRAINT `notes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (17,15.00,2,4,'2017-06-30 00:06:01','2017-06-30 01:40:30'),(18,15.00,2,5,'2017-06-30 00:06:01','2017-06-30 01:40:30'),(20,16.00,1,4,'2017-06-30 00:06:01','2017-06-30 00:23:17'),(21,17.00,1,5,'2017-06-30 00:06:01','2017-06-30 00:23:17'),(23,0.00,3,4,'2017-06-30 00:06:01','2017-06-30 00:06:01'),(24,0.00,3,5,'2017-06-30 00:06:01','2017-06-30 00:06:01'),(26,0.00,4,4,'2017-06-30 00:06:01','2017-06-30 00:06:01'),(27,0.00,4,5,'2017-06-30 00:06:01','2017-06-30 00:06:01'),(29,12.00,5,4,'2017-06-30 00:06:02','2017-06-30 00:37:34'),(30,17.00,5,5,'2017-06-30 00:06:02','2017-06-30 00:37:34');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
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
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
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
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plannings`
--

DROP TABLE IF EXISTS `plannings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plannings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date_debut` int(11) NOT NULL,
  `date_fin` int(11) NOT NULL,
  `jour` int(11) NOT NULL,
  `module_id` int(10) unsigned DEFAULT NULL,
  `groupe_id` int(10) unsigned DEFAULT NULL,
  `semstre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plannings_module_id_foreign` (`module_id`),
  KEY `plannings_groupe_id_foreign` (`groupe_id`),
  CONSTRAINT `plannings_groupe_id_foreign` FOREIGN KEY (`groupe_id`) REFERENCES `groupes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `plannings_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plannings`
--

LOCK TABLES `plannings` WRITE;
/*!40000 ALTER TABLE `plannings` DISABLE KEYS */;
INSERT INTO `plannings` VALUES (141,0,1,1,2,1,'S1','2017-06-30 01:34:31','2017-06-30 01:34:31'),(142,1,2,1,2,1,'S1','2017-06-30 01:34:31','2017-06-30 01:34:31'),(143,2,3,1,NULL,1,'S1','2017-06-30 01:34:31','2017-06-30 01:34:31'),(144,3,4,1,NULL,1,'S1','2017-06-30 01:34:31','2017-06-30 01:34:31'),(145,4,5,2,NULL,1,'S1','2017-06-30 01:34:31','2017-06-30 01:34:31'),(146,5,6,2,NULL,1,'S1','2017-06-30 01:34:31','2017-06-30 01:34:31'),(147,6,7,2,1,1,'S1','2017-06-30 01:34:31','2017-06-30 01:34:31'),(148,7,8,2,1,1,'S1','2017-06-30 01:34:31','2017-06-30 01:34:31'),(149,8,9,3,3,1,'S1','2017-06-30 01:34:31','2017-06-30 01:34:31'),(150,9,10,3,3,1,'S1','2017-06-30 01:34:31','2017-06-30 01:34:31'),(151,10,11,3,NULL,1,'S1','2017-06-30 01:34:31','2017-06-30 01:34:31'),(152,11,12,3,NULL,1,'S1','2017-06-30 01:34:31','2017-06-30 01:34:31'),(153,12,13,4,4,1,'S1','2017-06-30 01:34:31','2017-06-30 01:34:31'),(154,13,14,4,4,1,'S1','2017-06-30 01:34:31','2017-06-30 01:34:31'),(155,14,15,4,3,1,'S1','2017-06-30 01:34:31','2017-06-30 01:34:31'),(156,15,16,4,3,1,'S1','2017-06-30 01:34:31','2017-06-30 01:34:31'),(157,16,17,5,5,1,'S1','2017-06-30 01:34:31','2017-06-30 01:34:31'),(158,17,18,5,5,1,'S1','2017-06-30 01:34:31','2017-06-30 01:34:31'),(159,18,19,5,NULL,1,'S1','2017-06-30 01:34:31','2017-06-30 01:34:31'),(160,19,20,5,NULL,1,'S1','2017-06-30 01:34:31','2017-06-30 01:34:31'),(161,0,1,1,2,2,'S2','2017-06-30 01:35:12','2017-06-30 01:35:12'),(162,1,2,1,2,2,'S2','2017-06-30 01:35:12','2017-06-30 01:35:12'),(163,2,3,1,NULL,2,'S2','2017-06-30 01:35:12','2017-06-30 01:35:12'),(164,3,4,1,NULL,2,'S2','2017-06-30 01:35:12','2017-06-30 01:35:12'),(165,4,5,2,3,2,'S2','2017-06-30 01:35:12','2017-06-30 01:35:12'),(166,5,6,2,3,2,'S2','2017-06-30 01:35:12','2017-06-30 01:35:12'),(167,6,7,2,NULL,2,'S2','2017-06-30 01:35:12','2017-06-30 01:35:12'),(168,7,8,2,NULL,2,'S2','2017-06-30 01:35:12','2017-06-30 01:35:12'),(169,8,9,3,NULL,2,'S2','2017-06-30 01:35:12','2017-06-30 01:35:12'),(170,9,10,3,NULL,2,'S2','2017-06-30 01:35:12','2017-06-30 01:35:12'),(171,10,11,3,2,2,'S2','2017-06-30 01:35:12','2017-06-30 01:35:12'),(172,11,12,3,2,2,'S2','2017-06-30 01:35:12','2017-06-30 01:35:12'),(173,12,13,4,4,2,'S2','2017-06-30 01:35:12','2017-06-30 01:35:12'),(174,13,14,4,4,2,'S2','2017-06-30 01:35:12','2017-06-30 01:35:12'),(175,14,15,4,NULL,2,'S2','2017-06-30 01:35:12','2017-06-30 01:35:12'),(176,15,16,4,NULL,2,'S2','2017-06-30 01:35:12','2017-06-30 01:35:12'),(177,16,17,5,3,2,'S2','2017-06-30 01:35:12','2017-06-30 01:35:12'),(178,17,18,5,3,2,'S2','2017-06-30 01:35:12','2017-06-30 01:35:12'),(179,18,19,5,1,2,'S2','2017-06-30 01:35:12','2017-06-30 01:35:12'),(180,19,20,5,1,2,'S2','2017-06-30 01:35:12','2017-06-30 01:35:12');
/*!40000 ALTER TABLE `plannings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_has_permissions`
--

DROP TABLE IF EXISTS `user_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_has_permissions` (
  `user_id` int(10) unsigned NOT NULL,
  `permission_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`permission_id`),
  KEY `user_has_permissions_permission_id_foreign` (`permission_id`),
  CONSTRAINT `user_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_has_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_has_permissions`
--

LOCK TABLES `user_has_permissions` WRITE;
/*!40000 ALTER TABLE `user_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_has_roles`
--

DROP TABLE IF EXISTS `user_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_has_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`user_id`),
  KEY `user_has_roles_user_id_foreign` (`user_id`),
  CONSTRAINT `user_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_has_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_has_roles`
--

LOCK TABLES `user_has_roles` WRITE;
/*!40000 ALTER TABLE `user_has_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groupe` int(10) unsigned DEFAULT NULL,
  `imageprofile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'assets/img/courses/thumb-teacher-2.jpg',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_groupe_foreign` (`groupe`),
  CONSTRAINT `users_groupe_foreign` FOREIGN KEY (`groupe`) REFERENCES `groupes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin@fstt.com','$2y$10$Rng2rGZ9P0RNnXMFMkg.ruJmRL7supgAIqJlJP7/4y/XMbDIpwY6W','Admin',NULL,'assets/img/courses/thumb-teacher-2.jpg','1WZfsbWwUBWsx6y1GSRvUzouA30Jb8q0ggq7u6wM6yQZSM5DOUgi5B9lbib4','2017-06-29 19:52:21','2017-06-29 19:52:21'),(4,'soufiane ayanouz','soufiane@fstt.com','$2y$10$nQ6T.HY94834Eo8CBXEcYeXdqJGE1.2RO26Nc31nop7kiyrenuKU.','etudiant',1,'assets/img/courses/thumb-teacher-2.jpg','mvJ2MIq8hOA9yTDUIK6DjdcLfNorLTZg4lxpVDR13CH0U6gm7IAEAIovYJ1a','2017-06-29 23:16:22','2017-06-29 23:21:58'),(5,'abdelkarim chaara','chaara@fstt.com','$2y$10$bgl36z2CSdOX037g/pKKMOzTEM4eNcb4HgfOFRAdTcH330bi7a0ue','etudiant',1,'assets/img/courses/thumb-teacher-2.jpg','I6e2UydGAv2GxRUti7XbeWQ2eKoySiVp7I5H9Oakh5XAcxErMmYLt26tfWgE','2017-06-29 23:16:53','2017-06-29 23:21:58'),(6,'Abdelhadi FENNAN','fenan@fstt.com','$2y$10$LCKY9.b/rzjlF8uGqpTqDeGz549gHfMR/erkb0XfFUC2HpEfaJjIq','professeur',NULL,'imageprofile/S4IKGc7LQc2N74vCQU4yPxAZkxh58KbeeDFFHGR5.jpeg','qgwfvBap168ecT1yoQwTHC5DmKhwqhHoKQcWRKf0FKJRIcwiblFUd0LC9ce6','2017-06-29 23:17:31','2017-06-30 01:41:21'),(7,'Abderrahim ghadi','ghadi@fstt.com','$2y$10$Zb4pNJFPqf3zvDSp6IW.Kug8Dr0HLarpPQcRpRu0OAeTB4qbWftT.','professeur',NULL,'imageprofile/nCGyuSJxew6FVgopGUSp0uZCNRYj1oyVZSD2ayTc.png','tnqPgGSa2zoDN0Oe9qbYGPGK0kYHhUDCnmNJr4NqmPkoVCMDS7nmpTAbrGNP','2017-06-29 23:17:56','2017-06-30 00:36:53'),(8,'Mohamed benhmed','benhmed@fstt.com','$2y$10$qmkySjq/Wkrs8Ytln9TsUuxdG66Ck2./7V8X.ajhATSckhQmiP1p6','professeur',NULL,'imageprofile/rusXzBCOlvwIlQuIfT6WEVeBFRcqi09H7vL4WiWr.jpeg','en6eTYzr4ZbsNFaTKraZBUsKBztq1iOlJbcJ122eWdXVcQmMs77e3wokhODU','2017-06-29 23:18:22','2017-06-30 00:40:03'),(9,'Chakire El amrani','amrani@fstt.com','$2y$10$QMLWfcD6AQKfmtDAdo8rhOrnfsriBuljnMpf6afq4dKjvqcGgCdq6','professeur',NULL,'imageprofile/EwpdhWaYnsX70tlOUall5fxuMJaWuWnpKk2GTLq7.png','G5qvW5So0o4xjNVfeuWERa5ysUWf6QyScIzJl3SgsVQm3Cszzkvxg9oCHR8e','2017-06-29 23:19:04','2017-06-30 00:22:27');
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

-- Dump completed on 2017-06-30 15:47:06
