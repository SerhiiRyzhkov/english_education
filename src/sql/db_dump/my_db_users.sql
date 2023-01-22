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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  `mobile` varchar(100) NOT NULL,
  `level` varchar(2) DEFAULT NULL,
  `points` int DEFAULT '0',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin@ukr.net','admin','admin','$2a$05$Fk0jEmt6wgFvBQ68BldApO4AKXoEY9ZDNl0JpnZMmfkZtO/Cn.kz6',1,'+380663790304','A1',0),('andrey@ukr.net','Andrey','Goncharenko','$2a$05$oeZZaFJhkK88qlmMbAFK.uc8u2Dl4M5FWbDSNqzbBOhQ.oVj9eM3m',1,'+380663790304',NULL,86),('danilo@ukr.net','Danilo','Ignatenko','$2a$05$mwHehKcTFECGZIELFCrNmefD5mhD9y9BzHfBNp52gcwYDcQfs2a96',1,'+380663790304',NULL,41),('dayana@ukr.net','Dayana','Yastremskaya','$2a$05$JyfW/M81r.8bXTDr.LIBE.hBiHqSUHubZmSFgi24LrcmmhGSAYFK2',1,'+380663790304',NULL,62),('elina@ukr.net','Elina','Bistrenko','$2a$05$pMotYjJlCOZDZ6fIFvhUA.5etE4X4OcRqgFS1b546Cl/gN6XxEOxS',1,'+380663790304',NULL,7),('ivak@ukr.net','Ivak','Grezko','$2a$05$LtcrMy0t.uCawo62/YZQMuebfchlLIgw8tI8ksHWp6KDYJcZPVLj6',1,'+380663790304',NULL,47),('makar@ukr.net','Makar','Davidenko','$2a$05$260FR7AzKaTC/l22vAwEq.F2uQk2mI6pWXhrhLYnQ58C2cVc1CK2m',1,'+380663790304',NULL,19),('maksim@ukr.net','Maksim','Kolesko','$2a$05$z6bn1TnQVfSrXz21Kzzi3eoX8XlRfjsOH2iwjjjkv7MF92nGLtR.e',1,'+380663790304',NULL,37),('marta@ukr.net','Marta','Kostuk','$2a$05$88j5Wuuy3hrziHWUmnaXhetznUbm3wX7R9tBQ9pXAvE3XVl4LhrRC',1,'+380663790304',NULL,99),('masha@ukr.net','Masha','Ivanenko','$2a$05$ljJz0RsOqiqah9eOsL.8tOunk1Tu7gwfKu/biXUhTWF2efTfKtQDq',1,'+380663790304',NULL,29),('mykola@ukr.net','Mykola','Polyoviy','$2a$05$P8tspYmUbxr/orp/jxJkluN/aIVtrd4aKynyevSJPmmlhndY1GxJ6',1,'+380663790304',NULL,50),('olena@ukr.net','Olena','Terlicka','$2a$05$55gB9szfqn.seVwCZKoTi.7qsqaYO5n1MzumptbaNFBIPFcIZd9fy',1,'+380663790304',NULL,77),('polina@ukr.net','Polina','Yaremchuk','$2a$05$c9SWOAKZqGpE/FYNIi94fe3Oeeys86O.PB9bZceF.yquWoaur8E3S',1,'+380663790304',NULL,99),('tanya@ukr.net','Tanya','Nosova','$2a$05$JXq6773TFJfgPeaka2Wl5uRtMV11yPpAIw70aXPEBfR0SoSnS1hWq',1,'+380663790304',NULL,17),('taras@ukr.net','Taras','Stepanenko','$2a$05$uPXWe5c.JfkadOj1QUvaWeoUEhhtf3vYVX1M9z2CovvccKq8BhGfS',1,'+380663790304',NULL,23),('user@ukr.net','user','user','$2a$05$LN3RHMayUeNJW.TJKt.8wOzt.18E8Uspy2c20Emvby9e5h2O235NC',1,'+380663790304','A2',29),('vadim@ukr.net','Vadim','Petrenko','$2a$05$aoUOTfpLffsgJQeLSraHneoVJlRWH26pT17JwvbdVuBSne23oOdzi',1,'+380663790304',NULL,13),('yulya@ukr.net','Yulya','Maksimenko','$2a$05$Rp4q2KzqjoiXk0rojdkq6.JT7V/up.ZiNHHMEFebWxSpt6qmOsaOi',1,'+380663790304',NULL,9);
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

-- Dump completed on 2023-01-22 22:45:06
