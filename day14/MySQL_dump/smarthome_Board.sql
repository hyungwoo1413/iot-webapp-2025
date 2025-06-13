-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: smarthome
-- ------------------------------------------------------
-- Server version	9.2.0

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
-- Table structure for table `Board`
--

DROP TABLE IF EXISTS `Board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Board` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Email` varchar(125) NOT NULL,
  `Writer` varchar(50) DEFAULT NULL,
  `Title` varchar(250) NOT NULL,
  `Contents` longtext NOT NULL,
  `Boardcol` varchar(45) DEFAULT NULL,
  `PostDate` datetime DEFAULT NULL,
  `ReadCount` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Board`
--

LOCK TABLES `Board` WRITE;
/*!40000 ALTER TABLE `Board` DISABLE KEYS */;
INSERT INTO `Board` VALUES (2,'1234@123.com','관리자','안녕하세요','<p>ㅎㅇㅎㅇㅎㅇ</p>',NULL,'2025-06-09 16:12:31',0),(3,'123@123.com','관리자','123','<p>테스트</p>',NULL,'2025-06-09 16:13:08',1),(4,'123@123.com','관리자','123','<p>123</p>',NULL,'2025-06-09 16:20:57',0),(6,'3','3','33','3',NULL,'2025-06-09 16:24:07',2),(7,'3','3','3','3',NULL,'2025-06-09 16:24:07',1),(8,'3','3','3','3',NULL,'2025-06-09 16:24:07',0),(9,'3','3','3','3',NULL,'2025-06-09 16:24:07',0),(10,'3','3','3','3',NULL,'2025-06-09 16:24:07',0),(11,'3','3','3','3',NULL,'2025-06-09 16:24:07',1),(12,'3','3','3','3',NULL,'2025-06-09 16:24:07',0),(13,'3','3','3','3',NULL,'2025-06-09 16:24:07',0),(14,'3','3','3','3',NULL,'2025-06-09 16:24:07',0),(15,'3','3','3','3',NULL,'2025-06-09 16:24:07',0),(16,'guddn3412@gmail.com','관리자','123','<p>123</p>',NULL,'2025-06-09 16:50:53',0),(17,'guddn3412@gmail.com','관리자','안녕하세요','<p>안녕하세요 ~~&nbsp; &nbsp;<br>123123123</p>',NULL,'2025-06-09 16:55:19',8);
/*!40000 ALTER TABLE `Board` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-12 16:05:41
