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
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `title` varchar(345) DEFAULT NULL,
  `level` varchar(2) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `format` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,'reading-a1-1','My next summer holiday plan','A1','Reading','reading'),(2,'reading-a1-2','Pancake Day','A1','Reading','reading'),(3,'reading-a1-3','Memories of my first day at school','A1','Reading','reading'),(4,'reading-a1-4','Three popular inventions from the 1920s','A2','Reading','reading'),(5,'reading-a2-5','Three experiences I have had','A2','Reading','reading'),(6,'reading-a2-6','How my life has changed','A2','Reading','reading'),(7,'reading-a2-7','Why do people collect?','A2','Reading','reading'),(8,'reading-b1-8','SpeedFlatmating','B1','Reading','reading'),(9,'reading-b1-9','Five restaurant reviews','B1','Reading','reading'),(10,'reading-b1-10','How sleep transformed professional football','B1','Reading','reading'),(11,'reading-b2-11','Crypto addicts','B2','Reading','reading'),(12,'reading-b2-12','Personality and health','B2','Reading','reading'),(13,'reading-b2-13','Teenage Social Media Millionaires','B2','Reading','reading'),(14,'reading-c1-14','A threat to bananas','C1','Reading','reading'),(15,'reading-c1-15','Cultural behaviour in business','C1','Reading','reading'),(16,'reading-c1-16','Four book summaries','C1','Reading','reading'),(17,'reading-c2-17','Cookies','C2','Reading','reading'),(18,'reading-c2-18','Jesus and the Aubergines','C2','Reading','reading'),(19,'reading-c2-19','Safety At The Beach','C2','Reading','reading'),(20,'20','WHAT’S YOUR JOB?','A1','Listening','audio'),(21,'21','WHAT DID YOU DO LAST WEEKEND?','A1','Listening','audio'),(22,'22','tHE HOUSE: MY FAVOURITE ROOM','A1','Listening','audio'),(23,'23','INVITATIONS: WOULD YOU LIKE TO …?','A1','Listening','audio'),(24,'24','SUMMER JOB INTERVIEW','A2','Listening','audio'),(25,'25','TALKING ABOUT FILMS','A2','Listening','audio'),(26,'26','FUTURE PLANS','A2','Listening','audio'),(27,'27','IF I WERE A MILLIONAIRE','A2','Listening','audio'),(28,'28','THE CITY WHERE I LIVE','A2','Listening','audio'),(29,'29','WHY SAINT PATRICK’S DAY WENT GLOBAL','B1','Listening','audio'),(30,'30','STONEHENGE','B1','Listening','audio'),(31,'31','500-YEAR-OLD PAINTINGS FROM RAPHAEL FOUND','B1','Listening','audio'),(32,'32','FRIDA KAHLO','B2','Listening','audio'),(33,'33','THE PERSONALITY OF CENTENARIANS','B2','Listening','audio'),(34,'34','INSIDE GOOGLE’S OFFICE','B2','Listening','audio'),(35,'35','WHY ENGLISH SPELLING IS SO WEIRD','B2','Listening','audio'),(36,'36','A job interview','C1','Listening','audio'),(37,'37','A project management meeting','C1','Listening','audio'),(38,'38','An interview about two books','C1','Listening','audio'),(39,'39','Birthday parties','C1','Listening','audio'),(40,'40','Herding reindeer','C2','Listening','audio'),(41,'41','Hunting pigeons with falcons','C2','Listening','audio');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-10 18:11:25
