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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'masha@ukr.net','id auctor lorem. Aliquam adipiscing tempus','2023-01-05 21:24:37'),(2,'elina@ukr.net','Sed venenatis commodo vulputate','2023-01-05 21:24:37'),(3,'elina@ukr.net','Nam imperdiet adipiscing lorem','2023-01-05 21:24:37'),(4,'polina@ukr.net','In dapibus justo sit amet est tincidunt','2023-01-05 21:24:37'),(5,'vadim@ukr.net','Sed venenatis commodo vulputate','2023-01-05 21:24:37'),(6,'vadim@ukr.net','Sed venenatis commodo vulputate','2023-01-05 21:24:37'),(7,'masha@ukr.net','consectetur adipiscing elit','2023-01-05 21:24:37'),(8,'vadim@ukr.net','In dapibus justo sit amet est tincidunt','2023-01-05 21:24:37'),(9,'dayana@ukr.net','In dapibus justo sit amet est tincidunt','2023-01-05 21:24:37'),(10,'dayana@ukr.net','Sed venenatis commodo vulputate','2023-01-05 21:24:37'),(11,'admin@ukr.net','Lorem ipsum dolor sit amet','2023-01-05 21:24:37'),(12,'makar@ukr.net','Lorem ipsum dolor sit amet','2023-01-05 21:24:37'),(13,'makar@ukr.net','In dapibus justo sit amet est tincidunt','2023-01-05 21:24:38'),(14,'admin@ukr.net','HELLO FROM ADMIN','2023-02-02 15:18:11'),(16,'admin@ukr.net','hello from admin','2023-02-02 13:41:59.547'),(17,'admin@ukr.net','hello from admin','2023-02-02 13:42:19.618'),(18,'admin@ukr.net','hello from admin','2023-02-02 13:42:22.45'),(19,'admin@ukr.net','Hello from admin2','2023-02-02 13:50:49.357'),(20,'admin@ukr.net','Hello guys!','2023-02-02 13:56:33.16'),(21,'admin@ukr.net','3123','2023-02-02 13:56:51.449'),(22,'admin@ukr.net','4444444','2023-02-02 13:56:55.521'),(23,'admin@ukr.net','22222','2023-02-02 13:56:58.803'),(24,'admin@ukr.net','33333','2023-02-02 13:57:04.636'),(25,'admin@ukr.net','ffds','2023-02-02 15:08:19.137'),(26,'user@ukr.net','Here','2023-02-02 15:40:52.647'),(27,'user@ukr.net','test','2023-02-02 15:49:19.691'),(28,'admin@ukr.net','refresh test completed','2023-02-02 17:49:39'),(29,'admin@ukr.net','refresh test completed2','2023-02-02 17:50:00'),(30,'admin@ukr.net','ADD','2023-03-03 13:20:50.746');
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

-- Dump completed on 2023-03-03 18:20:51
