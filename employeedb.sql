-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: employeedb
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
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `department_id` int NOT NULL AUTO_INCREMENT,
  `department_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Human Resources'),(2,'Information Technology'),(3,'Finance'),(4,'Marketing'),(5,'Sales'),(6,'Operations'),(7,'Research and Development'),(8,'Customer Service'),(9,'Legal'),(10,'Administration');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `department_id` int DEFAULT NULL,
  `position_id` int DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `department_id` (`department_id`),
  KEY `position_id` (`position_id`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`),
  CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`position_id`) REFERENCES `positions` (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'John','Anderson',55000.00,1,4),(2,'Sarah','Johnson',65000.00,2,2),(3,'Michael','Williams',75000.00,2,1),(4,'Emily','Brown',48000.00,3,4),(5,'David','Jones',82000.00,4,1),(6,'Lisa','Garcia',59000.00,5,7),(7,'James','Miller',71000.00,6,2),(8,'Patricia','Davis',54000.00,1,8),(9,'Robert','Rodriguez',89000.00,2,6),(10,'Jennifer','Martinez',62000.00,3,4),(11,'Charles','Hernandez',67000.00,4,9),(12,'Linda','Lopez',73000.00,5,10),(13,'Christopher','Gonzalez',58000.00,6,3),(14,'Barbara','Wilson',85000.00,7,1),(15,'Daniel','Anderson',49000.00,8,8),(16,'Susan','Thomas',91000.00,9,6),(17,'Matthew','Taylor',66000.00,10,4),(18,'Jessica','Moore',72000.00,1,7),(19,'Kevin','Jackson',54000.00,2,3),(20,'Nancy','Martin',68000.00,3,5),(21,'Brian','Lee',77000.00,4,2),(22,'Karen','White',63000.00,5,4),(23,'Ronald','Harris',59000.00,6,8),(24,'Donna','Sanchez',81000.00,7,1),(25,'Jason','Clark',56000.00,8,7),(26,'Michelle','Ramirez',74000.00,9,10),(27,'Frank','Lewis',67000.00,10,3),(28,'Sandra','Robinson',88000.00,1,6),(29,'Edward','Walker',52000.00,2,9),(30,'Betty','Young',69000.00,3,4),(31,'George','Allen',76000.00,4,2),(32,'Helen','King',64000.00,5,7),(33,'Kenneth','Wright',83000.00,6,1),(34,'Donna','Scott',58000.00,7,5),(35,'Larry','Torres',71000.00,8,4),(36,'Ruth','Nguyen',66000.00,9,8),(37,'Scott','Hill',79000.00,10,2),(38,'Kimberly','Flores',61000.00,1,9),(39,'Eric','Green',70000.00,2,3),(40,'Deborah','Adams',86000.00,3,6),(41,'Stephen','Baker',55000.00,4,7),(42,'Laura','Gonzales',68000.00,5,4),(43,'Andrew','Nelson',75000.00,6,2),(44,'Stephanie','Carter',62000.00,7,8),(45,'Joshua','Mitchell',84000.00,8,1),(46,'Rebecca','Perez',59000.00,9,5),(47,'Anthony','Roberts',72000.00,10,10),(48,'Sharon','Turner',67000.00,1,3),(49,'Paul','Phillips',81000.00,2,6),(50,'Cynthia','Campbell',64000.00,3,4),(51,'Mark','Parker',77000.00,4,2),(52,'Kathleen','Evans',58000.00,5,9),(53,'Steven','Edwards',69000.00,6,7),(54,'Virginia','Collins',85000.00,7,1),(55,'Jerry','Stewart',60000.00,8,5),(56,'Angela','Sanchez',73000.00,9,3),(57,'Willie','Morris',66000.00,10,8),(58,'Amanda','Rogers',79000.00,1,2),(59,'Patrick','Reed',62000.00,2,4),(60,'Marie','Cook',71000.00,3,9),(61,'Jonathan','Morgan',84000.00,4,6),(62,'Frances','Bell',57000.00,5,7),(63,'Tyler','Murphy',69000.00,6,3),(64,'Diana','Bailey',76000.00,7,10),(65,'Austin','Rivera',65000.00,8,4),(66,'Evelyn','Cooper',82000.00,9,1),(67,'Nathan','Richardson',59000.00,10,5),(68,'Megan','Cox',71000.00,1,8),(69,'Kyle','Howard',67000.00,2,2),(70,'Olivia','Ward',84000.00,3,6),(71,'Zachary','Torres',62000.00,4,9),(72,'Emma','Peterson',73000.00,5,3),(73,'Dylan','Gray',66000.00,6,7),(74,'Samantha','Ramirez',80000.00,7,1),(75,'Brandon','James',58000.00,8,5),(76,'Hannah','Watson',69000.00,9,4),(77,'Justin','Brooks',75000.00,10,2),(78,'Kayla','Kelly',64000.00,1,8),(79,'Christian','Sanders',81000.00,2,6),(80,'Natalie','Price',60000.00,3,7),(81,'Jordan','Bennett',72000.00,4,3),(82,'Grace','Wood',67000.00,5,9),(83,'Samuel','Barnes',85000.00,6,1),(84,'Anna','Ross',59000.00,7,5),(85,'Gabriel','Henderson',71000.00,8,4),(86,'Alyssa','Coleman',66000.00,9,8),(87,'Jose','Jenkins',78000.00,10,2),(88,'Lillian','Perry',63000.00,1,7),(89,'Noah','Powell',74000.00,2,3),(90,'Brianna','Long',69000.00,3,9),(91,'Logan','Patterson',82000.00,4,1),(92,'Isabella','Hughes',58000.00,5,5),(93,'Caleb','Flores',67000.00,6,4),(94,'Sophia','Washington',76000.00,7,10),(95,'Jackson','Butler',65000.00,8,3),(96,'Mia','Simmons',80000.00,9,6),(97,'Ethan','Foster',61000.00,10,7),(98,'Chloe','Gonzales',72000.00,1,2),(99,'Ryan','Bryant',69000.00,2,8),(100,'Madison','Alexander',84000.00,3,1),(101,'Tyler','Russell',59000.00,4,5),(102,'Victoria','Griffin',71000.00,5,4);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positions` (
  `position_id` int NOT NULL AUTO_INCREMENT,
  `position_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positions`
--

LOCK TABLES `positions` WRITE;
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
INSERT INTO `positions` VALUES (1,'Manager'),(2,'Senior Developer'),(3,'Junior Developer'),(4,'Analyst'),(5,'Coordinator'),(6,'Director'),(7,'Specialist'),(8,'Assistant'),(9,'Consultant'),(10,'Team Lead');
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-15 10:30:46
