-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: admin_usuarios
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (6,'2014_10_12_000000_create_users_table',1),(7,'2014_10_12_100000_create_password_reset_tokens_table',1),(8,'2019_08_19_000000_create_failed_jobs_table',1),(9,'2019_12_14_000001_create_personal_access_tokens_table',1),(10,'2023_10_14_091543_create_usuarios_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `fecha_registro` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Randal Hoeger','Reynolds','maggie39@example.com','2010-12-19 19:58:29','2023-10-15 03:10:11','2023-10-15 03:10:11'),(2,'Kristofer Muller','Keeling','veda.gulgowski@example.net','2011-10-16 01:20:12','2023-10-15 03:10:11','2023-10-15 03:10:11'),(3,'Yasmine Koelpin','Smitham','fcrist@example.net','2007-09-08 08:10:55','2023-10-15 03:10:11','2023-10-15 03:10:11'),(4,'Sigrid Stamm','Spencer','afay@example.org','2013-08-24 03:45:55','2023-10-15 03:10:11','2023-10-15 03:10:11'),(5,'Andres Becker','Hettinger','szulauf@example.net','1994-12-14 17:59:58','2023-10-15 03:10:11','2023-10-15 03:10:11'),(6,'Estella Hauck','Cronin','welch.horace@example.org','1996-01-12 19:32:42','2023-10-15 03:10:11','2023-10-15 03:10:11'),(7,'Mrs. Karolann Johnston','Johnston','brandt.fisher@example.net','2017-03-13 15:56:30','2023-10-15 03:10:11','2023-10-15 03:10:11'),(8,'Aryanna Renner','Green','rokuneva@example.com','1992-04-15 21:18:15','2023-10-15 03:10:11','2023-10-15 03:10:11'),(9,'Mr. Jaycee Prosacco DDS','Ebert','modesta42@example.org','1982-01-07 02:15:03','2023-10-15 03:10:11','2023-10-15 03:10:11'),(10,'Stewart Smith','Deckow','kayleigh39@example.org','1975-02-16 01:46:22','2023-10-15 03:10:11','2023-10-15 03:10:11'),(11,'Cecile Moen DVM','Medhurst','baufderhar@example.org','2006-11-16 00:01:49','2023-10-15 03:10:11','2023-10-15 03:10:11'),(12,'Granville Romaguera','Predovic','xweissnat@example.org','1993-12-21 23:23:14','2023-10-15 03:10:11','2023-10-15 03:10:11'),(13,'Prof. Montana Volkman II','Greenholt','bquitzon@example.net','1976-04-02 14:11:16','2023-10-15 03:10:11','2023-10-15 03:10:11'),(14,'Cyril Effertz','Hegmann','orval.durgan@example.net','1970-04-01 12:02:48','2023-10-15 03:10:11','2023-10-15 03:10:11'),(15,'Dr. Casey Hettinger Jr.','Stanton','madalyn17@example.org','2008-12-24 08:10:15','2023-10-15 03:10:11','2023-10-15 03:10:11'),(16,'Kimberly Rolfson','Gibson','luettgen.dandre@example.com','2017-05-01 23:43:57','2023-10-15 03:10:11','2023-10-15 03:10:11'),(17,'Eugene Murphy','Parisian','kilback.clara@example.org','2000-01-29 07:55:24','2023-10-15 03:10:11','2023-10-15 03:10:11'),(18,'Dr. Fredrick Harber IV','O\'Reilly','thaddeus09@example.com','2011-08-05 03:45:27','2023-10-15 03:10:11','2023-10-15 03:10:11'),(19,'Christelle Baumbach','Borer','edwin31@example.net','2012-12-30 21:01:18','2023-10-15 03:10:11','2023-10-15 03:10:11'),(20,'Marjorie Braun','Turner','ihoppe@example.org','1978-02-06 20:40:39','2023-10-15 03:10:11','2023-10-15 03:10:11'),(21,'Kianna Macejkovic','Braun','waldo.grant@example.org','1990-09-02 17:13:25','2023-10-15 03:10:11','2023-10-15 03:10:11'),(22,'Mrs. Nia Quitzon','Steuber','crist.clemens@example.net','1982-11-15 04:34:48','2023-10-15 03:10:11','2023-10-15 03:10:11'),(23,'Miss Fay Gleason IV','Streich','gertrude.hoppe@example.net','2018-12-16 14:58:52','2023-10-15 03:10:11','2023-10-15 03:10:11'),(24,'Prof. Vanessa Mayer','Krajcik','lucious72@example.org','2004-04-17 18:11:02','2023-10-15 03:10:11','2023-10-15 03:10:11'),(25,'Genoveva Hirthe','Klocko','aswift@example.com','1987-12-12 13:41:25','2023-10-15 03:10:11','2023-10-15 03:10:11'),(26,'Maegan Harber PhD','Macejkovic','murphy.ofelia@example.com','2008-09-10 01:21:20','2023-10-15 03:10:11','2023-10-15 03:10:11'),(27,'Prof. Brody Jones','Ondricka','ratke.cecelia@example.org','1970-10-08 02:10:28','2023-10-15 03:10:11','2023-10-15 03:10:11'),(28,'Ashtyn Toy IV','Jakubowski','lang.domenico@example.net','1970-10-29 22:23:19','2023-10-15 03:10:11','2023-10-15 03:10:11'),(29,'Faustino Tillman','Ondricka','vauer@example.net','2003-03-27 23:05:48','2023-10-15 03:10:11','2023-10-15 03:10:11'),(30,'Ms. Annetta Romaguera III','Huel','carissa.oconner@example.com','2013-07-29 10:35:05','2023-10-15 03:10:12','2023-10-15 03:10:12'),(31,'Javier Ward III','Kunde','omccullough@example.org','1979-01-24 23:09:24','2023-10-15 03:10:12','2023-10-15 03:10:12'),(32,'Santina Roob III','McClure','witting.manley@example.com','1979-06-07 05:00:36','2023-10-15 03:10:12','2023-10-15 03:10:12'),(33,'Henderson Lemke V','Gorczany','issac.gibson@example.com','2000-08-31 13:10:57','2023-10-15 03:10:12','2023-10-15 03:10:12'),(34,'Miss Dora Johnson','Rogahn','maggio.annabelle@example.com','1996-02-25 18:31:57','2023-10-15 03:10:12','2023-10-15 03:10:12'),(35,'Dr. Jayden Carroll','Von','zoe57@example.net','2009-07-14 20:55:48','2023-10-15 03:10:12','2023-10-15 03:10:12'),(36,'Ms. Magdalen Mraz Jr.','Schoen','avery.rippin@example.org','1992-03-05 23:43:48','2023-10-15 03:10:12','2023-10-15 03:10:12'),(37,'Dana Metz','Aufderhar','florida.yost@example.org','2021-05-01 12:20:40','2023-10-15 03:10:12','2023-10-15 03:10:12'),(38,'Enrico Cartwright','Upton','towne.jessy@example.net','1997-10-03 20:46:53','2023-10-15 03:10:12','2023-10-15 03:10:12'),(39,'Maude Feeney Jr.','Prosacco','emmanuel.bernhard@example.net','2017-08-16 20:24:00','2023-10-15 03:10:12','2023-10-15 03:10:12'),(40,'Faustino Goldner','Williamson','baumbach.shanon@example.org','1991-10-07 12:06:22','2023-10-15 03:10:12','2023-10-15 03:10:12'),(41,'Mr. Gerard Schumm','Blanda','epurdy@example.net','1992-10-27 16:58:50','2023-10-15 03:10:12','2023-10-15 03:10:12'),(42,'Delta Daniel III','Goyette','mable45@example.net','2013-11-23 01:12:54','2023-10-15 03:10:12','2023-10-15 03:10:12'),(43,'Delaney Ortiz','Aufderhar','alphonso.kunze@example.com','2020-06-23 18:03:36','2023-10-15 03:10:12','2023-10-15 03:10:12'),(44,'Ms. Lillian Wuckert','Dickens','arely.von@example.org','2012-02-20 06:14:34','2023-10-15 03:10:12','2023-10-15 03:10:12'),(45,'Mr. Norbert Zboncak','Predovic','pollich.victor@example.net','2014-05-06 02:02:17','2023-10-15 03:10:12','2023-10-15 03:10:12'),(46,'Dr. Heather Brekke','Emmerich','pcorkery@example.com','1970-02-25 05:47:56','2023-10-15 03:10:12','2023-10-15 03:10:12'),(47,'Piper McGlynn I','Cassin','nlockman@example.com','2013-02-27 16:44:34','2023-10-15 03:10:12','2023-10-15 03:10:12'),(48,'Darrick Parker','Gulgowski','jedidiah95@example.org','2003-01-21 04:25:41','2023-10-15 03:10:12','2023-10-15 03:10:12'),(49,'Rosa Yost','Heaney','celia.swaniawski@example.net','1979-12-25 02:21:48','2023-10-15 03:10:12','2023-10-15 03:10:12'),(50,'Myrtle Feeney','Metz','eleanore31@example.org','1987-11-19 17:44:34','2023-10-15 03:10:12','2023-10-15 03:10:12'),(51,'Silas Ryan','Rice','astanton@example.org','1973-06-13 08:06:25','2023-10-15 03:10:12','2023-10-15 03:10:12'),(52,'Roxane Predovic','Fritsch','roberta45@example.com','1973-12-17 14:04:10','2023-10-15 03:10:12','2023-10-15 03:10:12'),(53,'Jacinthe Koss','Waters','uriah67@example.net','2022-11-02 07:44:50','2023-10-15 03:10:12','2023-10-15 03:10:12'),(54,'Dion Gerhold','Graham','golda27@example.net','1991-06-12 15:06:12','2023-10-15 03:10:12','2023-10-15 03:10:12'),(55,'Dr. Kayleigh Kihn DVM','Morar','bruen.marie@example.net','2019-10-30 17:52:08','2023-10-15 03:10:12','2023-10-15 03:10:12'),(56,'Dr. Jameson Conroy II','O\'Reilly','daugherty.marcelina@example.com','2016-08-10 14:30:24','2023-10-15 03:10:12','2023-10-15 03:10:12'),(57,'Laverna Gorczany','Padberg','peter01@example.net','2003-02-10 16:49:48','2023-10-15 03:10:12','2023-10-15 03:10:12'),(58,'Camille Homenick','Collier','rosenbaum.sigmund@example.org','1986-11-25 07:27:28','2023-10-15 03:10:12','2023-10-15 03:10:12'),(59,'Jarrett D\'Amore','Schaden','jayne.mertz@example.com','1975-11-19 06:17:05','2023-10-15 03:10:12','2023-10-15 03:10:12'),(60,'Prof. Laura Harris V','Feest','gjacobi@example.net','1986-10-27 10:53:29','2023-10-15 03:10:12','2023-10-15 03:10:12'),(61,'Dr. Rebeca Auer','Witting','kenton65@example.org','1978-08-28 10:13:13','2023-10-15 03:10:12','2023-10-15 03:10:12'),(62,'Lyric Krajcik','Kris','idickens@example.org','1979-05-12 11:52:33','2023-10-15 03:10:12','2023-10-15 03:10:12'),(63,'Ephraim Gleason Sr.','Bosco','noble.mitchell@example.com','2008-12-19 07:44:46','2023-10-15 03:10:12','2023-10-15 03:10:12'),(64,'Dr. Lesly Mante PhD','Rutherford','estelle19@example.net','1996-11-10 08:56:32','2023-10-15 03:10:12','2023-10-15 03:10:12'),(65,'Adelbert Strosin','Paucek','bartoletti.macie@example.org','2006-02-18 05:35:59','2023-10-15 03:10:12','2023-10-15 03:10:12'),(66,'Mr. Jennings Lesch','Franecki','bhartmann@example.net','1997-05-06 18:21:08','2023-10-15 03:10:12','2023-10-15 03:10:12'),(67,'Dr. Ericka Botsford','Mosciski','bcorkery@example.org','1986-12-13 01:59:22','2023-10-15 03:10:12','2023-10-15 03:10:12'),(68,'Ernestine Murazik','Wilkinson','ttillman@example.com','1978-07-11 18:49:16','2023-10-15 03:10:12','2023-10-15 03:10:12'),(69,'Giovanna Wunsch','Muller','cheyenne61@example.com','2007-02-11 03:14:45','2023-10-15 03:10:12','2023-10-15 03:10:12'),(70,'Hazel Schumm','Harvey','beaulah64@example.com','2011-09-04 03:56:15','2023-10-15 03:10:12','2023-10-15 03:10:12'),(71,'Werner Hettinger V','Williamson','corene49@example.net','2022-07-15 05:09:02','2023-10-15 03:10:12','2023-10-15 03:10:12'),(72,'Danial Block','Kerluke','trantow.winona@example.org','1992-12-28 21:17:33','2023-10-15 03:10:12','2023-10-15 03:10:12'),(73,'Ms. Luna Wuckert DDS','Gaylord','ole.harber@example.org','2002-09-20 17:29:57','2023-10-15 03:10:12','2023-10-15 03:10:12'),(74,'Lucius Mann','Corwin','thompson.clemens@example.net','2009-04-10 17:11:28','2023-10-15 03:10:12','2023-10-15 03:10:12'),(75,'Prof. Elias Grady','Hamill','katharina.goyette@example.org','2020-02-17 11:10:20','2023-10-15 03:10:12','2023-10-15 03:10:12'),(76,'Domingo Murazik PhD','Becker','kiara48@example.net','2001-11-09 10:24:48','2023-10-15 03:10:12','2023-10-15 03:10:12'),(77,'Reinhold Little','Tromp','woodrow.robel@example.net','2007-12-21 15:58:32','2023-10-15 03:10:12','2023-10-15 03:10:12'),(78,'Mrs. Wava Armstrong','Koepp','raphael44@example.com','1980-12-04 17:07:22','2023-10-15 03:10:12','2023-10-15 03:10:12'),(79,'Devin DuBuque','Gulgowski','ferry.dayton@example.com','1995-06-01 13:57:57','2023-10-15 03:10:12','2023-10-15 03:10:12'),(80,'Kaci Donnelly','Rice','katelin83@example.org','1979-07-30 10:43:37','2023-10-15 03:10:12','2023-10-15 03:10:12'),(81,'Chelsey Hayes','Farrell','lorenz64@example.net','2000-04-27 23:28:22','2023-10-15 03:10:12','2023-10-15 03:10:12'),(82,'Maeve Roberts','Larson','swift.vena@example.com','1973-06-11 12:16:04','2023-10-15 03:10:12','2023-10-15 03:10:12'),(83,'Prof. Gilbert Goyette','Homenick','stoltenberg.diego@example.org','1984-02-13 08:56:43','2023-10-15 03:10:12','2023-10-15 03:10:12'),(84,'Brannon Gleason','Will','layne59@example.net','1988-03-09 17:45:46','2023-10-15 03:10:12','2023-10-15 03:10:12'),(85,'Kitty Rempel DVM','Boyer','qbarrows@example.net','2005-03-27 17:24:32','2023-10-15 03:10:12','2023-10-15 03:10:12'),(86,'Letitia Mohr','Walsh','pfeffer.abby@example.net','1987-09-02 17:26:15','2023-10-15 03:10:12','2023-10-15 03:10:12'),(87,'Newton Torphy','Kassulke','zlynch@example.org','2013-06-11 06:40:56','2023-10-15 03:10:12','2023-10-15 03:10:12'),(88,'Maia Homenick','Hayes','stiedemann.sydney@example.net','2016-02-06 19:38:58','2023-10-15 03:10:12','2023-10-15 03:10:12'),(89,'Christopher Jones','Dietrich','yoconnell@example.com','1971-06-13 19:18:12','2023-10-15 03:10:12','2023-10-15 03:10:12'),(90,'Name Stokes','Stracke','lklocko@example.org','1980-03-19 17:15:26','2023-10-15 03:10:12','2023-10-15 03:10:12'),(91,'Jordy McDermott','Hyatt','ebony48@example.net','2014-07-15 03:13:33','2023-10-15 03:10:12','2023-10-15 03:10:12'),(92,'Grace Reichel','Cronin','gia30@example.org','1984-06-01 14:07:15','2023-10-15 03:10:12','2023-10-15 03:10:12'),(93,'Sean Jacobi','Schulist','carolyne16@example.org','1972-07-15 18:38:37','2023-10-15 03:10:12','2023-10-15 03:10:12'),(94,'Miss Charity Heaney','Witting','rherman@example.com','1983-11-23 19:09:04','2023-10-15 03:10:12','2023-10-15 03:10:12'),(95,'Lysanne Weimann','Schamberger','owelch@example.org','1973-11-01 09:38:46','2023-10-15 03:10:12','2023-10-15 03:10:12'),(96,'Melyna Reinger','Muller','dean38@example.com','1987-12-09 07:03:59','2023-10-15 03:10:12','2023-10-15 03:10:12'),(97,'Dr. Laverne West','Walsh','avis50@example.org','2022-01-05 16:48:38','2023-10-15 03:10:12','2023-10-15 03:10:12'),(98,'Milton Koepp','Prosacco','hilton40@example.com','1998-10-07 07:34:38','2023-10-15 03:10:12','2023-10-15 03:10:12'),(99,'Cydney Kihn','Quitzon','crist.janae@example.net','1985-07-05 11:32:19','2023-10-15 03:10:12','2023-10-15 03:10:12'),(100,'Miss Karli Klocko DVM','Wintheiser','zmarks@example.org','1981-03-16 20:43:55','2023-10-15 03:10:12','2023-10-15 03:10:12');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'admin_usuarios'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-14 20:12:06
