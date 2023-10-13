-- MariaDB dump 10.19  Distrib 10.6.12-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: it
-- ------------------------------------------------------
-- Server version	10.6.12-MariaDB-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `FOOTBALL`
--

DROP TABLE IF EXISTS `FOOTBALL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FOOTBALL` (
  `PLAYER_ID` int(11) NOT NULL,
  `PLAYER_NAME` text NOT NULL,
  `CLUB` text NOT NULL,
  `JERSEY_NO` int(11) NOT NULL,
  `COUNTRY` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FOOTBALL`
--

LOCK TABLES `FOOTBALL` WRITE;
/*!40000 ALTER TABLE `FOOTBALL` DISABLE KEYS */;
/*!40000 ALTER TABLE `FOOTBALL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INFO`
--

DROP TABLE IF EXISTS `INFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INFO` (
  `APURVA` text NOT NULL,
  `RAGHAV` text NOT NULL,
  `TEESHA` text NOT NULL,
  `AARTIKA` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INFO`
--

LOCK TABLES `INFO` WRITE;
/*!40000 ALTER TABLE `INFO` DISABLE KEYS */;
/*!40000 ALTER TABLE `INFO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ItLab193`
--

DROP TABLE IF EXISTS `ItLab193`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ItLab193` (
  `First Name` varchar(30) NOT NULL,
  `Last Name` varchar(30) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Phone Number` bigint(10) NOT NULL,
  `Address` varchar(60) NOT NULL,
  `Pincode` mediumint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ItLab193`
--

LOCK TABLES `ItLab193` WRITE;
/*!40000 ALTER TABLE `ItLab193` DISABLE KEYS */;
/*!40000 ALTER TABLE `ItLab193` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MY_INFO`
--

DROP TABLE IF EXISTS `MY_INFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MY_INFO` (
  `First Name` varchar(20) NOT NULL,
  `Last Name` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Mobile Number` bigint(10) NOT NULL,
  `Address` varchar(40) NOT NULL,
  `Pincode` mediumint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MY_INFO`
--

LOCK TABLES `MY_INFO` WRITE;
/*!40000 ALTER TABLE `MY_INFO` DISABLE KEYS */;
/*!40000 ALTER TABLE `MY_INFO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MyGuests`
--

DROP TABLE IF EXISTS `MyGuests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MyGuests` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MyGuests`
--

LOCK TABLES `MyGuests` WRITE;
/*!40000 ALTER TABLE `MyGuests` DISABLE KEYS */;
/*!40000 ALTER TABLE `MyGuests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Registration Form`
--

DROP TABLE IF EXISTS `Registration Form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Registration Form` (
  `First_Name` varchar(10) NOT NULL,
  `Last_Name` varchar(25) NOT NULL,
  `Email_Id` varchar(35) NOT NULL,
  `CITY` varchar(50) NOT NULL,
  `Mobile_No` int(20) NOT NULL,
  `Pincode` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Registration Form`
--

LOCK TABLES `Registration Form` WRITE;
/*!40000 ALTER TABLE `Registration Form` DISABLE KEYS */;
/*!40000 ALTER TABLE `Registration Form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Registration_Form`
--

DROP TABLE IF EXISTS `Registration_Form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Registration_Form` (
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(40) NOT NULL,
  `Email` int(60) NOT NULL,
  `MobileNumber` varchar(40) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Pincode` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Registration_Form`
--

LOCK TABLES `Registration_Form` WRITE;
/*!40000 ALTER TABLE `Registration_Form` DISABLE KEYS */;
/*!40000 ALTER TABLE `Registration_Form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Registration_form_202100494`
--

DROP TABLE IF EXISTS `Registration_form_202100494`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Registration_form_202100494` (
  `first_name` varchar(300) NOT NULL,
  `last_name` varchar(300) NOT NULL,
  `email_id` varchar(300) NOT NULL,
  `mobile_no` varchar(300) NOT NULL,
  `address` varchar(300) NOT NULL,
  `pincode` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Registration_form_202100494`
--

LOCK TABLES `Registration_form_202100494` WRITE;
/*!40000 ALTER TABLE `Registration_form_202100494` DISABLE KEYS */;
/*!40000 ALTER TABLE `Registration_form_202100494` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SRS`
--

DROP TABLE IF EXISTS `SRS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SRS` (
  `First_Name` varchar(20) DEFAULT NULL,
  `Last_Name` varchar(20) DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `Mobile_no` bigint(10) DEFAULT NULL,
  `Address` varchar(40) DEFAULT NULL,
  `Pincoce` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SRS`
--

LOCK TABLES `SRS` WRITE;
/*!40000 ALTER TABLE `SRS` DISABLE KEYS */;
/*!40000 ALTER TABLE `SRS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Student Registration Form`
--

DROP TABLE IF EXISTS `Student Registration Form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Student Registration Form` (
  `Student ID` int(10) NOT NULL AUTO_INCREMENT,
  `First Name` varchar(50) DEFAULT NULL,
  `Last Name` varchar(50) DEFAULT NULL,
  `Date of Birth` date DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Email Address` text DEFAULT NULL,
  `Contact Number` int(10) DEFAULT NULL,
  PRIMARY KEY (`Student ID`),
  UNIQUE KEY `Contact Number` (`Contact Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Student Registration Form`
--

LOCK TABLES `Student Registration Form` WRITE;
/*!40000 ALTER TABLE `Student Registration Form` DISABLE KEYS */;
/*!40000 ALTER TABLE `Student Registration Form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `it_ritik`
--

DROP TABLE IF EXISTS `it_ritik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `it_ritik` (
  `Name` varchar(20) NOT NULL,
  `Reg No` int(10) NOT NULL,
  `Phone` int(10) NOT NULL,
  `CGPA` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `it_ritik`
--

LOCK TABLES `it_ritik` WRITE;
/*!40000 ALTER TABLE `it_ritik` DISABLE KEYS */;
/*!40000 ALTER TABLE `it_ritik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration form`
--

DROP TABLE IF EXISTS `registration form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration form` (
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email_id` varchar(30) NOT NULL,
  `mobile_no` int(10) NOT NULL,
  `city` varchar(30) NOT NULL,
  `pincode` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration form`
--

LOCK TABLES `registration form` WRITE;
/*!40000 ALTER TABLE `registration form` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_form_202100399`
--

DROP TABLE IF EXISTS `registration_form_202100399`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_form_202100399` (
  `first name` varchar(20) NOT NULL,
  `last name` varchar(20) NOT NULL,
  `phone number` bigint(15) NOT NULL,
  `adress` varchar(999) NOT NULL,
  `pincode` int(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `date of birth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_form_202100399`
--

LOCK TABLES `registration_form_202100399` WRITE;
/*!40000 ALTER TABLE `registration_form_202100399` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_form_202100399` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `regno` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `dept` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `dob` varchar(30) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'123123','Anubhab Ghosh','IT','abcd.ppp@gmail.com','21324234','12/11/2001','Gangtok','Sikkim','2023-10-07 11:12:44'),(10,'123123','swayam xyz',NULL,'ayeswayam@gmail.com123',NULL,NULL,NULL,NULL,'2023-10-07 07:11:37'),(14,'345222','swayam',NULL,'ayeswayam@gmail.com',NULL,NULL,NULL,NULL,'2023-10-07 09:45:59'),(15,'678','Parimala',NULL,'sddhvydsah@yahoo.com',NULL,NULL,'Gangtok',NULL,'2023-10-07 10:01:43'),(24,'1234','yuvrani',NULL,'byuvrani@gmail.com',NULL,NULL,'ghy',NULL,'2023-10-07 10:04:24'),(25,'234111','Dev qqqqqq',NULL,'gsdgv@gmail.com',NULL,NULL,'Pune',NULL,'2023-10-07 10:39:04'),(26,'1111','sunit',NULL,'sunit_202000072@smit.smu.edu.in',NULL,NULL,'guwahati',NULL,'2023-10-07 10:05:02'),(27,'123','Dev  bbbb',NULL,'gsdgv@gmail.com333',NULL,NULL,'Pune',NULL,'2023-10-07 10:13:05'),(29,'12556','sunit',NULL,'sunit_202000072@smit.smu.edu.in',NULL,NULL,'guwahati',NULL,'2023-10-07 10:21:55'),(33,'454647','Mehersa BB',NULL,'abc@gmail.com',NULL,NULL,'Kathmandu',NULL,'2023-10-07 11:15:19'),(37,NULL,'Krishanu Das',NULL,'Asbd@gmail.com',NULL,NULL,'Guwahati',NULL,'2023-09-28 06:08:45'),(38,'123456','yurrrr',NULL,'wwwww@gggg',NULL,NULL,'',NULL,'2023-10-08 11:54:27'),(39,NULL,'yu',NULL,'byuvrani@gmail.com',NULL,NULL,'ghy',NULL,'2023-09-28 06:09:02'),(40,NULL,'Mehersa',NULL,'abc@gmail.com',NULL,NULL,'Kathmandu',NULL,'2023-09-28 06:09:15'),(41,NULL,'',NULL,'',NULL,NULL,'',NULL,'2023-09-28 06:13:17'),(42,NULL,'Shobhan Kar',NULL,'byuvrani@gmail.com',NULL,NULL,'ghy',NULL,'2023-09-28 06:13:27'),(47,NULL,'',NULL,'',NULL,NULL,'',NULL,'2023-09-28 06:14:21'),(48,NULL,'',NULL,'',NULL,NULL,'',NULL,'2023-09-28 06:19:30'),(49,NULL,'Mehersa',NULL,'abc@gmail.com',NULL,NULL,'Kathmandu',NULL,'2023-09-28 06:19:40'),(50,NULL,'',NULL,'',NULL,NULL,'',NULL,'2023-09-28 06:19:47'),(51,NULL,'Dev P',NULL,'gsdgv@gmail.com',NULL,NULL,'Pune',NULL,'2023-09-28 06:19:55'),(52,NULL,'Dev P',NULL,'gsdgv@gmail.com',NULL,NULL,'Punefbdsb',NULL,'2023-09-28 06:20:20'),(53,NULL,'',NULL,'hello@gmail.com',NULL,NULL,'ghy',NULL,'2023-09-28 06:29:58'),(54,NULL,'',NULL,'hello@gmail.com',NULL,NULL,'ghy',NULL,'2023-09-28 06:31:25'),(55,'123123','Anubhab Ghosh',NULL,'abcd.ppp@gmail.com',NULL,NULL,NULL,NULL,'2023-10-07 11:08:22'),(56,'233','ffgggg',NULL,'wwww@ddd',NULL,NULL,'www',NULL,'2023-10-08 12:14:32'),(57,'123','sssaaa',NULL,'ssss@fff',NULL,NULL,'',NULL,'2023-10-08 12:17:59');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student information`
--

DROP TABLE IF EXISTS `student information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student information` (
  `student name` varchar(50) NOT NULL,
  `registration number` int(9) NOT NULL,
  `branch` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student information`
--

LOCK TABLES `student information` WRITE;
/*!40000 ALTER TABLE `student information` DISABLE KEYS */;
/*!40000 ALTER TABLE `student information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_565`
--

DROP TABLE IF EXISTS `student_565`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_565` (
  `reg_no` varchar(20) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `mobile_no` varchar(100) NOT NULL,
  PRIMARY KEY (`reg_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_565`
--

LOCK TABLES `student_565` WRITE;
/*!40000 ALTER TABLE `student_565` DISABLE KEYS */;
INSERT INTO `student_565` VALUES ('202100550','Thushara','Shenoi','9483399667'),('202100565','Akhil','Menon','9372875356');
/*!40000 ALTER TABLE `student_565` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_college`
--

DROP TABLE IF EXISTS `student_college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_college` (
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_college`
--

LOCK TABLES `student_college` WRITE;
/*!40000 ALTER TABLE `student_college` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_college` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_information`
--

DROP TABLE IF EXISTS `student_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_information` (
  `Student Name` varchar(50) NOT NULL,
  `Reg No` int(10) NOT NULL,
  `Branch` varchar(10) NOT NULL,
  `Address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_information`
--

LOCK TABLES `student_information` WRITE;
/*!40000 ALTER TABLE `student_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_information` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-13  9:59:56
