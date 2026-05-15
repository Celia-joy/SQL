-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: practice_db
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `districts`
--

DROP TABLE IF EXISTS `districts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `districts` (
  `district_id` int NOT NULL AUTO_INCREMENT,
  `district_name` varchar(100) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`district_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `districts`
--

LOCK TABLES `districts` WRITE;
/*!40000 ALTER TABLE `districts` DISABLE KEYS */;
INSERT INTO `districts` VALUES (1,'Rulindo','Northern'),(2,'Rusizi','Western'),(3,'Rutsiro','Western'),(4,'Ruhango','Southern'),(5,'Rwamagana','Eastern'),(6,'Rubavu','Western'),(7,'Rukomo','Northern'),(8,'Nyagatare','Eastern'),(9,'Musanze','Northern'),(10,'Huye','Southern'),(11,'Gasabo','Kigali'),(12,'Nyarugenge','Kigali'),(13,'Kicukiro','Kigali');
/*!40000 ALTER TABLE `districts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sectors`
--

DROP TABLE IF EXISTS `sectors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sectors` (
  `sector_id` int NOT NULL AUTO_INCREMENT,
  `sector_name` varchar(100) DEFAULT NULL,
  `district_id` int DEFAULT NULL,
  `population` int DEFAULT NULL,
  PRIMARY KEY (`sector_id`),
  KEY `district_id` (`district_id`),
  CONSTRAINT `sectors_ibfk_1` FOREIGN KEY (`district_id`) REFERENCES `districts` (`district_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sectors`
--

LOCK TABLES `sectors` WRITE;
/*!40000 ALTER TABLE `sectors` DISABLE KEYS */;
INSERT INTO `sectors` VALUES (1,'Rugali',1,15000),(2,'Rukoma',1,12000),(3,'Rushaki',1,18000),(4,'Rubavu',2,25000),(5,'Rugerero',2,22000),(6,'Rwaza',3,14000),(7,'Rutsiro',3,13000),(8,'Ruhango',4,20000),(9,'Rwabuye',4,16000),(10,'Rwamagana',5,30000),(11,'Gishali',5,25000),(12,'Rubona',6,21000),(13,'Rukoko',6,19000),(14,'Rukomo',7,17000),(15,'Nyagatare',8,35000),(16,'Musanze',9,40000),(17,'Rugendo',9,28000),(18,'Mugombwa',10,12000),(19,'Kigoma',10,11000),(20,'Rugarama',11,45000),(21,'Kacyiru',11,50000),(22,'Nyamirambo',12,55000),(23,'Gikondo',13,32000),(24,'Kagarama',13,28000),(25,'Rwagakigali',1,16000),(26,'Gashonga',2,20000),(27,'Kigeyo',3,15000),(28,'Kinazi',4,18000),(29,'Mukarange',5,22000),(30,'Kibaya',6,17000),(31,'Karama',7,19000),(32,'Rwankuba',8,24000),(33,'Muhondo',9,26000),(34,'Tumba',10,14000),(35,'Karemera',11,35000),(36,'Remera',12,48000),(37,'Niboye',13,30000),(38,'Rugali',1,15500),(39,'Rwankeri',2,23000),(40,'Rwanyakayaga',3,12500),(41,'Kigabiro',4,21000),(42,'Rwamagana',5,32000),(43,'Bushoki',8,27000),(44,'Kabuga',5,29000),(45,'Gatunda',8,22000),(46,'Kageyo',3,16000),(47,'Nyanza',4,19500);
/*!40000 ALTER TABLE `sectors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-15 10:32:30
