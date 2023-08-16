CREATE DATABASE  IF NOT EXISTS `myuw` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `myuw`;
-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: localhost    Database: myuw
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `idclass` int NOT NULL AUTO_INCREMENT,
  `className` varchar(100) NOT NULL,
  `iddepartment` int NOT NULL,
  `curriculum` varchar(45) NOT NULL,
  `courseTitle` json NOT NULL,
  `coursesDescription` varchar(100) NOT NULL,
  `prerequisite` varchar(45) NOT NULL,
  `recommendPre` varchar(45) NOT NULL,
  `genedureq` varchar(45) NOT NULL,
  `quarter` datetime NOT NULL,
  `additionalDetails` varchar(45) NOT NULL,
  `section` varchar(45) NOT NULL,
  `type(credits)` varchar(45) NOT NULL,
  `sln` int NOT NULL,
  `meetingTime` datetime NOT NULL,
  `seatsAvailability` int NOT NULL,
  `capacity` int NOT NULL,
  PRIMARY KEY (`idclass`),
  KEY `fromClasstoDepartment_idx` (`iddepartment`),
  CONSTRAINT `fromClasstoDepartment` FOREIGN KEY (`iddepartment`) REFERENCES `department` (`idDepartment`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `idDepartment` int NOT NULL AUTO_INCREMENT,
  `classWebsite` varchar(45) NOT NULL,
  `departName` varchar(45) NOT NULL,
  PRIMARY KEY (`idDepartment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `idStudent` int NOT NULL AUTO_INCREMENT,
  `localAddress` json NOT NULL,
  `studentNumber` int NOT NULL,
  `classStanding` varchar(45) NOT NULL,
  `studentName` json NOT NULL,
  `permanentAddress` json NOT NULL,
  `major` varchar(45) NOT NULL,
  PRIMARY KEY (`idStudent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student-class`
--

DROP TABLE IF EXISTS `student-class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student-class` (
  `idStudent` int NOT NULL,
  `idClass` int NOT NULL,
  `registrationDate` datetime NOT NULL,
  PRIMARY KEY (`idStudent`,`idClass`),
  KEY `StudentclasstoClass` (`idClass`),
  CONSTRAINT `StudentclasstoClass` FOREIGN KEY (`idClass`) REFERENCES `class` (`idclass`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `StudentclasstoStudent` FOREIGN KEY (`idStudent`) REFERENCES `student` (`idStudent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student-class`
--

LOCK TABLES `student-class` WRITE;
/*!40000 ALTER TABLE `student-class` DISABLE KEYS */;
/*!40000 ALTER TABLE `student-class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'myuw'
--

--
-- Dumping routines for database 'myuw'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-15 12:15:41
