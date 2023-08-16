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
-- Table structure for table `building`
--

DROP TABLE IF EXISTS `building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `building` (
  `idBuilding` int NOT NULL AUTO_INCREMENT,
  `openHours` int NOT NULL,
  `buildingNumber` int NOT NULL,
  `contact` int NOT NULL,
  `collegeFullName` varchar(45) NOT NULL,
  `photo` varchar(45) NOT NULL,
  `facNum` int NOT NULL,
  `site` varchar(45) NOT NULL,
  `facCode` int NOT NULL,
  `buildingType` varchar(45) NOT NULL,
  `buildingName` varchar(45) NOT NULL,
  `buildingAddress` json NOT NULL,
  PRIMARY KEY (`idBuilding`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building`
--

LOCK TABLES `building` WRITE;
/*!40000 ALTER TABLE `building` DISABLE KEYS */;
INSERT INTO `building` VALUES (2,12,110,3821,'uw','no',1,'apartment',1,'good','trailside','{\"address\": \"24thAve\"}');
/*!40000 ALTER TABLE `building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `idCourse` int NOT NULL AUTO_INCREMENT,
  `courseName` varchar(100) NOT NULL,
  `curriculum` varchar(45) NOT NULL,
  `courseTitle` json NOT NULL,
  `coursesDescription` varchar(100) NOT NULL,
  `recommendPre` varchar(45) NOT NULL,
  `genedureq` varchar(45) NOT NULL,
  `quarter` varchar(45) NOT NULL,
  `additionalDetails` varchar(45) NOT NULL,
  `section` json NOT NULL,
  `credits` varchar(45) NOT NULL,
  `sln` int NOT NULL,
  `capacity` int NOT NULL,
  `prerequisite` varchar(45) DEFAULT NULL,
  `idDepartment` int NOT NULL,
  `idBuilding` int NOT NULL,
  PRIMARY KEY (`idCourse`),
  KEY `fromCoursetoDepartment_idx` (`idDepartment`),
  KEY `fromCoursetoBuilidng` (`idBuilding`),
  CONSTRAINT `fromCoursetoBuilidng` FOREIGN KEY (`idBuilding`) REFERENCES `building` (`idBuilding`) ON DELETE CASCADE,
  CONSTRAINT `fromCoursetoDepartment` FOREIGN KEY (`idDepartment`) REFERENCES `department` (`idDepartment`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'info330','good','{\"title\": \"database\"}','good','info200','info201','2022-06-19','good','{\"section\": \"ab\"}','w',10981,12,'14021',1,2);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course-instructor`
--

DROP TABLE IF EXISTS `course-instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course-instructor` (
  `idCourse` int NOT NULL,
  `idInstructor` int NOT NULL,
  PRIMARY KEY (`idCourse`,`idInstructor`),
  KEY `fromCoursetoInstructor` (`idInstructor`),
  CONSTRAINT `fromCoursetoInstructor` FOREIGN KEY (`idInstructor`) REFERENCES `instructor` (`idInstructor`) ON DELETE CASCADE,
  CONSTRAINT `fromInstructortoCourse` FOREIGN KEY (`idCourse`) REFERENCES `course` (`idCourse`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course-instructor`
--

LOCK TABLES `course-instructor` WRITE;
/*!40000 ALTER TABLE `course-instructor` DISABLE KEYS */;
INSERT INTO `course-instructor` VALUES (1,1);
/*!40000 ALTER TABLE `course-instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course-textbook`
--

DROP TABLE IF EXISTS `course-textbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course-textbook` (
  `idCourse` int NOT NULL,
  `idTextbook` int NOT NULL,
  PRIMARY KEY (`idCourse`,`idTextbook`),
  KEY `fromCoursetoTextbook_idx` (`idTextbook`),
  CONSTRAINT `fromCoursetoTextbook` FOREIGN KEY (`idTextbook`) REFERENCES `textbook` (`idTextbook`) ON DELETE CASCADE,
  CONSTRAINT `fromTextbooktoCourse` FOREIGN KEY (`idCourse`) REFERENCES `course` (`idCourse`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course-textbook`
--

LOCK TABLES `course-textbook` WRITE;
/*!40000 ALTER TABLE `course-textbook` DISABLE KEYS */;
INSERT INTO `course-textbook` VALUES (1,1);
/*!40000 ALTER TABLE `course-textbook` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'www.info.com','informatics');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor`
--

DROP TABLE IF EXISTS `instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructor` (
  `idInstructor` int NOT NULL AUTO_INCREMENT,
  `instructorFirstName` varchar(45) NOT NULL,
  `instructorTitle` varchar(45) NOT NULL,
  `phoneNumber` int NOT NULL,
  `filedsOfInterest` varchar(45) NOT NULL,
  `introductionWebsite` json NOT NULL,
  `instructorLastName` varchar(45) NOT NULL,
  PRIMARY KEY (`idInstructor`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor`
--

LOCK TABLES `instructor` WRITE;
/*!40000 ALTER TABLE `instructor` DISABLE KEYS */;
INSERT INTO `instructor` VALUES (1,'bob','info',2068325679,'info','{\"http\": \"www.infomatics.com\"}','boiko');
/*!40000 ALTER TABLE `instructor` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'{\"address\": \"trailside\"}',2019232,'foster','{\"name\": \"creasa\"}','{\"address\": \"trailside\"}','infomatics');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student-course`
--

DROP TABLE IF EXISTS `student-course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student-course` (
  `idStudent` int NOT NULL AUTO_INCREMENT,
  `idCourse` int NOT NULL,
  PRIMARY KEY (`idStudent`,`idCourse`),
  KEY `fromStudenttoCourse` (`idCourse`),
  CONSTRAINT `fromCoursetoStudent` FOREIGN KEY (`idStudent`) REFERENCES `student` (`idStudent`) ON DELETE CASCADE,
  CONSTRAINT `fromStudenttoCourse` FOREIGN KEY (`idCourse`) REFERENCES `course` (`idCourse`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student-course`
--

LOCK TABLES `student-course` WRITE;
/*!40000 ALTER TABLE `student-course` DISABLE KEYS */;
INSERT INTO `student-course` VALUES (1,1);
/*!40000 ALTER TABLE `student-course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student-study_abroad`
--

DROP TABLE IF EXISTS `student-study_abroad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student-study_abroad` (
  `idStudent` int NOT NULL AUTO_INCREMENT,
  `idStudy_abroad` int NOT NULL,
  PRIMARY KEY (`idStudent`,`idStudy_abroad`),
  KEY `fromStudenttoStudyabroad_idx` (`idStudy_abroad`),
  CONSTRAINT `fromStudenttoStudyabroad` FOREIGN KEY (`idStudy_abroad`) REFERENCES `study_abroad` (`idStudy_abroad`) ON DELETE CASCADE,
  CONSTRAINT `fromStudyabroadtoStudent` FOREIGN KEY (`idStudy_abroad`) REFERENCES `student` (`idStudent`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student-study_abroad`
--

LOCK TABLES `student-study_abroad` WRITE;
/*!40000 ALTER TABLE `student-study_abroad` DISABLE KEYS */;
INSERT INTO `student-study_abroad` VALUES (1,1);
/*!40000 ALTER TABLE `student-study_abroad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `study_abroad`
--

DROP TABLE IF EXISTS `study_abroad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `study_abroad` (
  `idStudy_abroad` int NOT NULL AUTO_INCREMENT,
  `region` varchar(45) NOT NULL,
  `programName` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `idDepartment` int NOT NULL,
  PRIMARY KEY (`idStudy_abroad`),
  KEY `fromstidyabroadtoDepartment_idx` (`idDepartment`),
  CONSTRAINT `fromstidyabroadtoDepartment` FOREIGN KEY (`idDepartment`) REFERENCES `department` (`idDepartment`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `study_abroad`
--

LOCK TABLES `study_abroad` WRITE;
/*!40000 ALTER TABLE `study_abroad` DISABLE KEYS */;
INSERT INTO `study_abroad` VALUES (1,'seattle','oversea','seattle','USA',1);
/*!40000 ALTER TABLE `study_abroad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `textbook`
--

DROP TABLE IF EXISTS `textbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `textbook` (
  `idTextbook` int NOT NULL AUTO_INCREMENT,
  `productType` varchar(45) NOT NULL,
  `price` int NOT NULL,
  `edition` varchar(45) NOT NULL,
  `internationalStandardBookNumber` int NOT NULL,
  `bookTitle` varchar(45) NOT NULL,
  `author` varchar(45) NOT NULL,
  PRIMARY KEY (`idTextbook`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `textbook`
--

LOCK TABLES `textbook` WRITE;
/*!40000 ALTER TABLE `textbook` DISABLE KEYS */;
INSERT INTO `textbook` VALUES (1,'story',110,'good',3821,'travel','thompson');
/*!40000 ALTER TABLE `textbook` ENABLE KEYS */;
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

-- Dump completed on 2022-04-25 17:54:36
