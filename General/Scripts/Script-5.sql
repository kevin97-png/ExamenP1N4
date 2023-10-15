-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: admin_usuarios
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_10_13_221557_create_usuarios_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `fecha_registro` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Verner','Cummings','ngoldner@crooks.net','1988-05-31','2023-10-14 05:34:14','2023-10-14 05:34:14'),(2,'Yvette','Hoeger','mandy.runte@will.com','1997-06-30','2023-10-14 05:34:14','2023-10-14 05:34:14'),(3,'Dayton','Herzog','dtillman@hotmail.com','2014-03-18','2023-10-14 05:34:14','2023-10-14 05:34:14'),(4,'Jeanette','Corwin','emerald.feeney@harber.net','2018-04-09','2023-10-14 05:34:14','2023-10-14 05:34:14'),(5,'Filiberto','Runolfsdottir','swehner@bartoletti.com','2011-04-17','2023-10-14 05:34:14','2023-10-14 05:34:14'),(6,'Nya','Cummerata','efren59@yahoo.com','1971-08-22','2023-10-14 05:34:14','2023-10-14 05:34:14'),(7,'Davonte','Rodriguez','randerson@gorczany.com','1980-07-22','2023-10-14 05:34:14','2023-10-14 05:34:14'),(8,'Nakia','Kihn','alberto.zieme@yahoo.com','2022-08-05','2023-10-14 05:34:14','2023-10-14 05:34:14'),(9,'Roscoe','Dickinson','daugherty.kristoffer@kuhlman.com','1970-06-09','2023-10-14 05:34:14','2023-10-14 05:34:14'),(10,'Yazmin','Rath','lulu.lakin@stamm.com','1996-07-05','2023-10-14 05:34:14','2023-10-14 05:34:14'),(11,'Demetris','Eichmann','mills.garry@skiles.com','2014-06-10','2023-10-14 05:34:14','2023-10-14 05:34:14'),(12,'Erick','Smitham','nwuckert@bartoletti.org','1985-12-30','2023-10-14 05:34:14','2023-10-14 05:34:14'),(13,'Enos','Reynolds','jratke@gmail.com','1988-11-30','2023-10-14 05:34:14','2023-10-14 05:34:14'),(14,'Adelbert','Schroeder','watsica.general@yahoo.com','1977-03-07','2023-10-14 05:34:14','2023-10-14 05:34:14'),(15,'Dixie','Block','leola64@carter.com','2002-03-06','2023-10-14 05:34:14','2023-10-14 05:34:14'),(16,'Adalberto','Heathcote','gus.hills@hotmail.com','1975-07-14','2023-10-14 05:34:14','2023-10-14 05:34:14'),(17,'Newton','Cole','freeda87@hotmail.com','2018-10-21','2023-10-14 05:34:14','2023-10-14 05:34:14'),(18,'Trystan','Schumm','williamson.anya@hodkiewicz.com','2023-06-08','2023-10-14 05:34:14','2023-10-14 05:34:14'),(19,'Demond','Thompson','bulah.mills@yahoo.com','1992-11-10','2023-10-14 05:34:14','2023-10-14 05:34:14'),(20,'Ellie','Veum','rod.lebsack@kris.com','2002-10-05','2023-10-14 05:34:14','2023-10-14 05:34:14'),(21,'Jaycee','Boehm','braulio15@gmail.com','1980-03-06','2023-10-14 05:34:14','2023-10-14 05:34:14'),(22,'Ken','Koch','javier29@yahoo.com','2022-07-22','2023-10-14 05:34:14','2023-10-14 05:34:14'),(23,'Alfreda','Huel','roma.dicki@yahoo.com','1989-10-26','2023-10-14 05:34:14','2023-10-14 05:34:14'),(24,'Kathleen','Klocko','brown.percival@goldner.com','1986-04-29','2023-10-14 05:34:14','2023-10-14 05:34:14'),(25,'Norberto','Hammes','albin.yost@hotmail.com','1982-10-29','2023-10-14 05:34:14','2023-10-14 05:34:14'),(26,'Narciso','Sporer','eokeefe@kshlerin.net','1992-09-18','2023-10-14 05:34:14','2023-10-14 05:34:14'),(27,'Aliya','Cartwright','will.doyle@hotmail.com','2007-01-13','2023-10-14 05:34:14','2023-10-14 05:34:14'),(28,'Lon','Gislason','yjohnston@hotmail.com','1975-05-02','2023-10-14 05:34:14','2023-10-14 05:34:14'),(29,'Jammie','Daugherty','zsenger@trantow.com','1992-04-05','2023-10-14 05:34:14','2023-10-14 05:34:14'),(30,'Keyshawn','Reichel','gleichner.darius@yahoo.com','1989-06-16','2023-10-14 05:34:14','2023-10-14 05:34:14'),(31,'Nicole','Mraz','kovacek.mina@romaguera.biz','2004-04-28','2023-10-14 05:34:14','2023-10-14 05:34:14'),(32,'Vivianne','Eichmann','alanna.lehner@witting.org','2007-12-11','2023-10-14 05:34:14','2023-10-14 05:34:14'),(33,'Meta','Metz','enid78@gmail.com','1975-11-01','2023-10-14 05:34:14','2023-10-14 05:34:14'),(34,'Blaze','Jacobs','nitzsche.damaris@gmail.com','2015-06-16','2023-10-14 05:34:14','2023-10-14 05:34:14'),(35,'Nina','Kshlerin','rath.jasper@hotmail.com','2006-01-17','2023-10-14 05:34:14','2023-10-14 05:34:14'),(36,'Chelsea','Johns','lhand@hotmail.com','2002-05-06','2023-10-14 05:34:14','2023-10-14 05:34:14'),(37,'Tate','Hackett','renner.sierra@welch.com','2006-09-30','2023-10-14 05:34:14','2023-10-14 05:34:14'),(38,'Margarette','Carroll','leatha47@yahoo.com','1996-03-02','2023-10-14 05:34:14','2023-10-14 05:34:14'),(39,'Erica','Koss','ybrekke@mills.com','1990-06-12','2023-10-14 05:34:14','2023-10-14 05:34:14'),(40,'London','Heller','hspencer@yahoo.com','1991-04-22','2023-10-14 05:34:14','2023-10-14 05:34:14'),(41,'Chase','Hagenes','mayer.preston@fadel.net','1979-02-04','2023-10-14 05:34:14','2023-10-14 05:34:14'),(42,'Foster','Hayes','hkessler@reichel.biz','1972-01-12','2023-10-14 05:34:14','2023-10-14 05:34:14'),(43,'Ollie','Pollich','candace34@hotmail.com','1983-03-30','2023-10-14 05:34:14','2023-10-14 05:34:14'),(44,'Vickie','Mertz','gage37@hotmail.com','2000-08-05','2023-10-14 05:34:14','2023-10-14 05:34:14'),(45,'Curt','Hintz','xlockman@gmail.com','1984-06-17','2023-10-14 05:34:14','2023-10-14 05:34:14'),(46,'Clotilde','Watsica','thora24@kemmer.net','1971-06-28','2023-10-14 05:34:14','2023-10-14 05:34:14'),(47,'Jewell','Kilback','ujerde@gmail.com','2006-05-14','2023-10-14 05:34:14','2023-10-14 05:34:14'),(48,'Damion','Thompson','mohammad.beatty@yahoo.com','2006-12-31','2023-10-14 05:34:14','2023-10-14 05:34:14'),(49,'Kelly','Gleichner','garnett83@lehner.com','2012-03-12','2023-10-14 05:34:14','2023-10-14 05:34:14'),(50,'Rahul','Kiehn','sortiz@johnson.org','2011-07-10','2023-10-14 05:34:14','2023-10-14 05:34:14'),(51,'Dale','Satterfield','rcormier@hotmail.com','2015-05-14','2023-10-14 05:34:14','2023-10-14 05:34:14'),(52,'Oswaldo','Schaefer','ortiz.wilhelmine@gmail.com','2011-09-17','2023-10-14 05:34:14','2023-10-14 05:34:14'),(53,'Mckayla','Stanton','nbuckridge@lehner.net','1979-02-01','2023-10-14 05:34:14','2023-10-14 05:34:14'),(54,'Rosalee','McKenzie','ptorphy@hotmail.com','2011-01-16','2023-10-14 05:34:14','2023-10-14 05:34:14'),(55,'Sally','Ortiz','corine.smitham@hotmail.com','1987-10-10','2023-10-14 05:34:14','2023-10-14 05:34:14'),(56,'Veronica','Armstrong','ashlee13@gmail.com','1992-01-13','2023-10-14 05:34:14','2023-10-14 05:34:14'),(57,'Deanna','VonRueden','jfranecki@lueilwitz.biz','2014-09-22','2023-10-14 05:34:14','2023-10-14 05:34:14'),(58,'Brandy','Wiegand','deontae.gleason@stehr.com','1989-06-26','2023-10-14 05:34:14','2023-10-14 05:34:14'),(59,'Luigi','Daniel','bernhard.isaiah@pfannerstill.info','1989-01-23','2023-10-14 05:34:14','2023-10-14 05:34:14'),(60,'Torrance','Hegmann','sawayn.cristopher@gmail.com','2017-01-05','2023-10-14 05:34:14','2023-10-14 05:34:14'),(61,'Silas','Mayert','carroll.jevon@hotmail.com','1974-02-14','2023-10-14 05:34:14','2023-10-14 05:34:14'),(62,'Desiree','Crooks','dashawn45@green.com','1979-04-06','2023-10-14 05:34:14','2023-10-14 05:34:14'),(63,'Keely','Schroeder','joaquin10@gmail.com','2022-08-23','2023-10-14 05:34:14','2023-10-14 05:34:14'),(64,'Tessie','Olson','reinger.mattie@kuhic.info','1988-03-12','2023-10-14 05:34:14','2023-10-14 05:34:14'),(65,'Grover','Koelpin','talon51@hotmail.com','1993-02-08','2023-10-14 05:34:14','2023-10-14 05:34:14'),(66,'Valerie','Huel','hahn.barrett@gmail.com','1980-10-04','2023-10-14 05:34:14','2023-10-14 05:34:14'),(67,'Henry','Langworth','kaela57@yahoo.com','1990-12-17','2023-10-14 05:34:14','2023-10-14 05:34:14'),(68,'Amber','Cummerata','dedrick.hayes@gmail.com','1995-12-18','2023-10-14 05:34:14','2023-10-14 05:34:14'),(69,'Adolfo','Vandervort','drobel@bins.org','2007-05-07','2023-10-14 05:34:14','2023-10-14 05:34:14'),(70,'Blaze','Wuckert','kasey69@gmail.com','2020-05-29','2023-10-14 05:34:14','2023-10-14 05:34:14'),(71,'Tiffany','Hermiston','deckow.alexandrine@yahoo.com','1999-01-18','2023-10-14 05:34:14','2023-10-14 05:34:14'),(72,'Paolo','Lemke','mariane95@kuvalis.org','1970-07-06','2023-10-14 05:34:14','2023-10-14 05:34:14'),(73,'Kobe','Flatley','nicole85@yahoo.com','2008-07-13','2023-10-14 05:34:14','2023-10-14 05:34:14'),(74,'Domenico','Medhurst','kraig38@gmail.com','1990-06-05','2023-10-14 05:34:14','2023-10-14 05:34:14'),(75,'Ricardo','Braun','jennyfer.kling@gmail.com','1998-03-06','2023-10-14 05:34:14','2023-10-14 05:34:14'),(76,'Vallie','Connelly','milan68@gmail.com','1971-10-15','2023-10-14 05:34:14','2023-10-14 05:34:14'),(77,'Myrna','Hill','isaac.goodwin@runte.com','2019-12-25','2023-10-14 05:34:14','2023-10-14 05:34:14'),(78,'Allen','Ledner','oscar.damore@fisher.com','1995-10-11','2023-10-14 05:34:14','2023-10-14 05:34:14'),(79,'Ariel','Goldner','osbaldo.klocko@schoen.com','1977-01-08','2023-10-14 05:34:14','2023-10-14 05:34:14'),(80,'Mac','Heaney','ezequiel.morissette@yahoo.com','1990-10-29','2023-10-14 05:34:14','2023-10-14 05:34:14'),(81,'Margaret','Bauch','rashawn51@hotmail.com','1981-02-10','2023-10-14 05:34:14','2023-10-14 05:34:14'),(82,'Lew','McKenzie','madeline.hammes@yahoo.com','1976-07-03','2023-10-14 05:34:14','2023-10-14 05:34:14'),(83,'Rickey','Terry','ottilie89@yahoo.com','2018-09-06','2023-10-14 05:34:14','2023-10-14 05:34:14'),(84,'Rhoda','Osinski','alice.weber@borer.net','1979-12-19','2023-10-14 05:34:14','2023-10-14 05:34:14'),(85,'Lexus','Wiza','moses95@rolfson.com','1983-08-28','2023-10-14 05:34:14','2023-10-14 05:34:14'),(86,'Adam','Leuschke','ohuel@predovic.org','1990-08-07','2023-10-14 05:34:14','2023-10-14 05:34:14'),(87,'Alisa','Bailey','peter.davis@cassin.com','2022-12-12','2023-10-14 05:34:14','2023-10-14 05:34:14'),(88,'Nathan','Cassin','mueller.shaniya@fisher.com','1971-03-01','2023-10-14 05:34:14','2023-10-14 05:34:14'),(89,'Omer','Hermann','fahey.jana@farrell.com','2016-09-29','2023-10-14 05:34:14','2023-10-14 05:34:14'),(90,'Henriette','Ryan','garth.nolan@christiansen.org','2010-11-20','2023-10-14 05:34:14','2023-10-14 05:34:14'),(91,'Lamont','Metz','arno63@hotmail.com','1987-06-17','2023-10-14 05:34:14','2023-10-14 05:34:14'),(92,'Euna','Herzog','crooks.lucio@kessler.com','1973-03-16','2023-10-14 05:34:14','2023-10-14 05:34:14'),(93,'Ernie','Nitzsche','yernser@gmail.com','2009-04-12','2023-10-14 05:34:14','2023-10-14 05:34:14'),(94,'Julien','Schaefer','ilueilwitz@zboncak.com','1981-05-11','2023-10-14 05:34:14','2023-10-14 05:34:14'),(95,'Lee','Nienow','eleazar88@gmail.com','2005-01-23','2023-10-14 05:34:14','2023-10-14 05:34:14'),(96,'Stacy','Shields','friesen.kaitlin@stehr.biz','2010-12-12','2023-10-14 05:34:14','2023-10-14 05:34:14'),(97,'Katherine','Zulauf','jdach@yahoo.com','1987-10-01','2023-10-14 05:34:14','2023-10-14 05:34:14'),(98,'Tyrese','Mueller','ovonrueden@fisher.net','1996-04-05','2023-10-14 05:34:14','2023-10-14 05:34:14'),(99,'Jerald','Hand','konopelski.jude@kris.com','2000-03-07','2023-10-14 05:34:14','2023-10-14 05:34:14'),(101,'Fernanda','Ortega','ferortega13@gmail','2023-10-13','2023-10-14 05:43:49','2023-10-14 05:46:52');
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

-- Dump completed on 2023-10-13 17:47:38

