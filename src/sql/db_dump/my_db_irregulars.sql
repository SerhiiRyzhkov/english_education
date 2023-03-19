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
-- Table structure for table `irregulars`
--

DROP TABLE IF EXISTS `irregulars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `irregulars` (
  `id` int NOT NULL AUTO_INCREMENT,
  `base` varchar(145) DEFAULT NULL,
  `past` varchar(145) DEFAULT NULL,
  `participle` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irregulars`
--

LOCK TABLES `irregulars` WRITE;
/*!40000 ALTER TABLE `irregulars` DISABLE KEYS */;
INSERT INTO `irregulars` VALUES (1,'arise','arose','arisen'),(2,'awake','awoke','awoken'),(3,'be','was/were','been'),(4,'bear','bore','borne'),(5,'beat','beat','beaten'),(6,'become','became','become'),(7,'begin','began','begun'),(8,'bend','bent','bent'),(9,'bet','bet','bet'),(10,'bind','bound','bound'),(11,'bid','bid','bid'),(12,'bite','bit','bitten'),(13,'bleed','bled','bled'),(14,'blow','blew','blown'),(15,'break','broke','broken'),(16,'breed','bred','bred'),(17,'bring','brought','brought'),(18,'broadcast','broadcast','broadcast'),(19,'build','built','built'),(20,'burst','burst','burst'),(21,'buy','bought','bought'),(22,'cast','cast','cast'),(23,'catch','caught','caught'),(24,'choose','chose','chosen'),(25,'cling','clung','clung'),(26,'come','came','come'),(27,'cost','cost','cost'),(28,'creep','crept','crept'),(29,'cut','cut','cut'),(30,'deal','dealt','dealt'),(31,'dig','dug','dug'),(32,'dive','dove/dived','dived'),(33,'do','did','done'),(34,'draw','drew','drawn'),(35,'dream','dreamed/dreamt','dreamed/dreamt'),(36,'drink','drank','drunk'),(37,'drive','drove','driven'),(38,'eat','ate','eaten'),(39,'fall','fell','fallen'),(40,'feed','fed','fed'),(41,'feel','felt','felt'),(42,'fight','fought','fought'),(43,'find','found','found'),(44,'flee','fled','fled'),(45,'fling','flung','flung'),(46,'fly','flew','flown'),(47,'forbid','forbade','forbidden'),(48,'forget','forgot','forgotten'),(49,'forgive','forgave','forgiven'),(50,'freeze','froze','frozen'),(51,'get','got','got'),(52,'give','gave','given'),(53,'go','went','gone'),(54,'grind','ground','ground'),(55,'grow','grew','grown'),(56,'hang','hung/hanged','hung/hanged'),(57,'have','had','had'),(58,'hear','heard','heard'),(59,'hide','hid','hidden'),(60,'hit','hit','hit'),(61,'hold','held','held'),(62,'hurt','hurt','hurt'),(63,'keep','kept','kept'),(64,'kneel','knelt','knelt'),(65,'know','knew','known'),(66,'lay','laid','laid'),(67,'lead','led','led'),(68,'leave','left','left'),(69,'lend','lent','lent'),(70,'let','let','let'),(71,'lie (as in “lie down”)','lay','lain'),(72,'light','lit/lighted','lit/lighted'),(73,'lose','lost','lost'),(74,'make','made','made'),(75,'mean','meant','meant'),(76,'meet','met','met'),(77,'mistake','mistook','mistaken'),(78,'mow','mowed','mown/mowed'),(79,'overtake','overtook','overtaken'),(80,'pay','paid','paid'),(81,'proofread','proofread','proofread'),(82,'put','put','put'),(83,'quit','quit','quit'),(84,'read','read','read'),(85,'reset','reset','reset'),(86,'ride','rode','ridden'),(87,'ring','rang','rung'),(88,'rise','rose','risen'),(89,'run','ran','run'),(90,'say','said','said'),(91,'see','saw','seen'),(92,'seek','sought','sought'),(93,'sell','sold','sold'),(94,'send','sent','sent'),(95,'set','set','set'),(96,'sew','sewed','sewn/sewed'),(97,'shake','shook','shaken'),(98,'shave','shaved','shaven'),(99,'shed','shed','shed'),(100,'shine','shone','shone'),(101,'shoot','shot','shot'),(102,'show','showed','shown'),(103,'shrink','shrank','shrunk'),(104,'shut','shut','shut'),(105,'sing','sang','sung'),(106,'sink','sank','sunk'),(107,'sit','sat','sat'),(108,'slay','slew','slain'),(109,'sleep','slept','slept'),(110,'slide','slid','slid'),(111,'sling','slung','slung'),(112,'sneak','snuck/sneaked','snuck/sneaked'),(113,'sow','sowed','sown/sowed'),(114,'speak','spoke','spoken'),(115,'speed','sped','sped'),(116,'spend','spent','spent'),(117,'spill','spilt/spilled','spilt/spilled'),(118,'spin','spun','spun'),(119,'spit','spat','spat'),(120,'split','split','split'),(121,'spread','spread','spread'),(122,'spring','sprang','sprung'),(123,'stand','stood','stood'),(124,'steal','stole','stolen'),(125,'stick','stuck','stuck'),(126,'sting','stung','stung'),(127,'stink','stank','stunk'),(128,'strike','struck','struck'),(129,'string','strung','strung'),(130,'strive','strove','striven'),(131,'swear','swore','sworn'),(132,'sweep','swept','swept'),(133,'swell','swelled','swollen/swelled'),(134,'swim','swam','swum'),(135,'swing','swung','swung'),(136,'take','took','taken'),(137,'teach','taught','taught'),(138,'tear','tore','torn'),(139,'think','thought','thought'),(140,'throw','threw','thrown'),(141,'thrust','thrust','thrust'),(142,'tread','trod','trodden'),(143,'understand','understood','understood'),(144,'upset','upset','upset'),(145,'wake','woke','woken'),(146,'wear','wore','worn'),(147,'weave','wove','worn'),(148,'weave','wove','woven'),(149,'weep','wept','wept'),(150,'wet','wet/wetted','wet/wetted'),(151,'win','won','won'),(152,'wind','wound','wound'),(153,'wring','wrung','wrung'),(154,'write','wrote','written');
/*!40000 ALTER TABLE `irregulars` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-20  1:37:34
