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
-- Table structure for table `AspNetUsers`
--

DROP TABLE IF EXISTS `AspNetUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AspNetUsers` (
  `Id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `UserName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NormalizedUserName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Email` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NormalizedEmail` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `SecurityStamp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ConcurrencyStamp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `PhoneNumber` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int NOT NULL,
  `City` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Hobby` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Mobile` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  KEY `EmailIndex` (`NormalizedEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AspNetUsers`
--

LOCK TABLES `AspNetUsers` WRITE;
/*!40000 ALTER TABLE `AspNetUsers` DISABLE KEYS */;
INSERT INTO `AspNetUsers` VALUES ('02689ded-a01b-4599-9dae-943504189ad3','1234@123.com','1234@123.COM','1234@123.com','1234@123.COM',0,'AQAAAAIAAYagAAAAEDZvfozHiFJm8/fNwQXRpe6/B4RVEL5WkRinOFEODrvKP1HZ3Vz1z8dbTIhe9FAzrg==','VBICB42OD4UIOHI6QLIT2BO2FIWUCDWP','fbcec63f-22b7-4862-85f8-41720877c317',NULL,0,0,NULL,1,0,NULL,NULL,NULL),('4d1630ba-17b5-4bcb-9cc6-adf13bd57d1d','guddn3412@gmail.com','GUDDN3412@GMAIL.COM','guddn3412@gmail.com','GUDDN3412@GMAIL.COM',0,'AQAAAAIAAYagAAAAEHO1yQRpGYdOOIvUNJt7S2uksZjeQMsayj2gFCrA2spHeTjGj7sSFmE/TJYZWbeo1Q==','G4Z3ZT5HHT3W3BZ63SP2SHIPAC5WPZ6J','ec7c57bb-8900-4bba-8ca5-025aae9748c0',NULL,0,0,NULL,1,0,NULL,NULL,NULL),('73941bcc-0118-4eaa-b713-a934950324b8','asdasdasd@asdasdas.com','ASDASDASD@ASDASDAS.COM','asdasdasd@asdasdas.com','ASDASDASD@ASDASDAS.COM',0,'AQAAAAIAAYagAAAAEAPHUnhp+7dXxCZtiy0cswjVzxlR8szA/IksMjFioG43CxE0RZh+zK2qSnow2anWAw==','CRL37CNSOKKP523T3HDEX74TTXZTD33O','896ac88c-1a47-47ba-a013-192856e37cbf',NULL,0,0,NULL,1,0,NULL,NULL,NULL),('939b661f-7267-4d54-8cf6-93ba47f90a34','123@123.com','123@123.COM','123@123.com','123@123.COM',0,'AQAAAAIAAYagAAAAENyrP8EyIWXPWXJcJPX+ggaSnjBy+ti5QatHQly8q68m7H38wSaf9Zf+uEQFs5C/Xg==','EXYFNYN32NT2UCOSS2PKNDVIRCQVCY4G','1f83caf1-167c-4954-b226-af15d9f2c2cc',NULL,0,0,NULL,1,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `AspNetUsers` ENABLE KEYS */;
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
