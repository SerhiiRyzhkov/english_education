CREATE DATABASE  IF NOT EXISTS `my_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `my_db`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: my_db
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
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `author_id` varchar(45) NOT NULL,
  `message` text,
  `timestamp` varchar(45) DEFAULT 'CURRENT_TIMESTAMP',
  PRIMARY KEY (`ID`),
  KEY `fk_Messages_User_idx` (`author_id`),
  CONSTRAINT `fk_Messages_User` FOREIGN KEY (`author_id`) REFERENCES `users` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'masha@ukr.net','id auctor lorem. Aliquam adipiscing tempus','2023-01-05 21:24:37'),(2,'elina@ukr.net','Sed venenatis commodo vulputate','2023-01-05 21:24:37'),(3,'elina@ukr.net','Nam imperdiet adipiscing lorem','2023-01-05 21:24:37'),(4,'polina@ukr.net','In dapibus justo sit amet est tincidunt','2023-01-05 21:24:37'),(5,'vadim@ukr.net','Sed venenatis commodo vulputate','2023-01-05 21:24:37'),(6,'vadim@ukr.net','Sed venenatis commodo vulputate','2023-01-05 21:24:37'),(7,'masha@ukr.net','consectetur adipiscing elit','2023-01-05 21:24:37'),(8,'vadim@ukr.net','In dapibus justo sit amet est tincidunt','2023-01-05 21:24:37'),(9,'dayana@ukr.net','In dapibus justo sit amet est tincidunt','2023-01-05 21:24:37'),(10,'dayana@ukr.net','Sed venenatis commodo vulputate','2023-01-05 21:24:37'),(11,'admin@ukr.net','Lorem ipsum dolor sit amet','2023-01-05 21:24:37'),(12,'makar@ukr.net','Lorem ipsum dolor sit amet','2023-01-05 21:24:37'),(13,'makar@ukr.net','In dapibus justo sit amet est tincidunt','2023-01-05 21:24:38');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-30 17:17:15
