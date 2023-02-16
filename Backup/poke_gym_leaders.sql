-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: poke
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `gym_leaders`
--

LOCK TABLES `gym_leaders` WRITE;
/*!40000 ALTER TABLE `gym_leaders` DISABLE KEYS */;
INSERT INTO `gym_leaders` (`id_gym_leader`, `id_medal`, `name`, `birth_date`, `adress`, `active`, `created_at`, `modified_at`) VALUES (1,1,'Brock',NULL,NULL,1,'2022-12-28 19:38:11','2022-12-28 19:38:11'),(2,2,'Misty',NULL,NULL,1,'2022-12-28 19:38:11','2022-12-28 19:38:11'),(3,3,'Lt. Surge',NULL,NULL,1,'2022-12-28 19:38:11','2022-12-28 19:38:11'),(4,4,'Erika',NULL,NULL,1,'2022-12-28 19:38:11','2022-12-28 19:38:11'),(5,5,'Koga',NULL,NULL,1,'2022-12-28 19:38:11','2022-12-28 19:38:11'),(6,6,'sabrina',NULL,NULL,1,'2022-12-28 19:38:11','2022-12-28 19:38:11'),(7,7,'Blaine',NULL,NULL,1,'2022-12-28 19:38:11','2022-12-28 19:38:11'),(8,8,'Azul',NULL,NULL,1,'2022-12-28 19:38:11','2022-12-28 19:38:11'),(9,9,'Pegaso',NULL,NULL,1,'2022-12-28 19:38:11','2022-12-28 19:38:11'),(10,10,'Antón',NULL,NULL,1,'2022-12-28 19:38:11','2022-12-28 19:38:11'),(11,11,'Blanca',NULL,NULL,1,'2022-12-28 19:38:11','2022-12-28 19:38:11'),(12,12,'Morti',NULL,NULL,1,'2022-12-28 19:38:11','2022-12-28 19:38:11'),(13,13,'Aníbal',NULL,NULL,1,'2022-12-28 19:38:11','2022-12-28 19:38:11'),(14,14,'Yasmina',NULL,NULL,1,'2022-12-28 19:38:11','2022-12-28 19:38:11'),(15,15,'Fredo',NULL,NULL,1,'2022-12-28 19:38:11','2022-12-28 19:38:11'),(16,16,'Débora',NULL,NULL,1,'2022-12-28 19:38:11','2022-12-28 19:38:11');
/*!40000 ALTER TABLE `gym_leaders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-07 20:28:48