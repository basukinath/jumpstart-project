-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: jumpstart
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admins` (
  `ADMIN_ID` int(100) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `MENTOR_ID` int(100) DEFAULT NULL,
  `ASSOCIATE_ID` int(100) DEFAULT NULL,
  PRIMARY KEY (`ADMIN_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'ADMIN','ADMIN@ADP.COM','ADMIN123!',1,1),(2,'ADMINT','ADMINT@ADP.COM','ADMIN321!',2,2);
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `associate`
--

DROP TABLE IF EXISTS `associate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `associate` (
  `ASSOCIATE_ID` int(100) NOT NULL AUTO_INCREMENT,
  `ASSOCIATE_NAME` varchar(100) NOT NULL,
  `EMAIL_ADDRESS` varchar(500) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  PRIMARY KEY (`ASSOCIATE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `associate`
--

LOCK TABLES `associate` WRITE;
/*!40000 ALTER TABLE `associate` DISABLE KEYS */;
INSERT INTO `associate` VALUES (1,'BASUKU','BSKNATH@GMAIL.COM','BASU@123'),(2,'SHESHO','SKNATH@GMAIL.COM','SHESHO@123'),(3,'MITU','MITU@GMAIL.COM','MITU@1234'),(4,'NISHU','NISHU@123.COM','NISHU@123');
/*!40000 ALTER TABLE `associate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentor`
--

DROP TABLE IF EXISTS `mentor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mentor` (
  `MENTOR_ID` int(100) NOT NULL AUTO_INCREMENT,
  `MENTOR_NAME` varchar(100) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `ORGANIZATION` varchar(100) DEFAULT NULL,
  `ROLE` varchar(50) NOT NULL,
  `AREA_OF_INTEREST` varchar(100) DEFAULT NULL,
  `EXPERTIES` varchar(100) DEFAULT NULL,
  `PHOTO` longblob,
  PRIMARY KEY (`MENTOR_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentor`
--

LOCK TABLES `mentor` WRITE;
/*!40000 ALTER TABLE `mentor` DISABLE KEYS */;
INSERT INTO `mentor` VALUES (1,'SATYAM','SAT345@22','SATYAM@DMAIL.COM','ADP','JAVA_TUTOR','BACKEND','JAVA8',NULL),(2,'PRAKHASH','PRAK123@1','PRAK@DMAIL.COM','ADP','ANGUALR','WEB DEV','ANGULAR',NULL);
/*!40000 ALTER TABLE `mentor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentor_associate_mapping`
--

DROP TABLE IF EXISTS `mentor_associate_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mentor_associate_mapping` (
  `mentor_id` int(11) DEFAULT NULL,
  `associate_id` int(11) DEFAULT NULL,
  KEY `mentor_id` (`mentor_id`) USING BTREE,
  KEY `associate_id` (`associate_id`) USING BTREE,
  CONSTRAINT `mentor_associate_mapping_ibfk_1` FOREIGN KEY (`mentor_id`) REFERENCES `mentorregistration` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `mentor_associate_mapping_ibfk_2` FOREIGN KEY (`associate_id`) REFERENCES `mentorregistration` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentor_associate_mapping`
--

LOCK TABLES `mentor_associate_mapping` WRITE;
/*!40000 ALTER TABLE `mentor_associate_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `mentor_associate_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentorregistration`
--

DROP TABLE IF EXISTS `mentorregistration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mentorregistration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `organization` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `area_of_interest` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `exp_mentor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentorregistration`
--

LOCK TABLES `mentorregistration` WRITE;
/*!40000 ALTER TABLE `mentorregistration` DISABLE KEYS */;
INSERT INTO `mentorregistration` VALUES (4,'Basukinath','ADMIN','bsknath@gmail.com','12345','ML','SDE','NO IMAGE',NULL,NULL),(5,'Shesho','MENTOR','sheshanath@gmail.com','12345','JAVA','SDE','NO IMAGE',NULL,NULL),(6,'Nandani','ASSOCIATE','sheshanath@gmail.com','12345','JAVA','SDE','NO IMAGE','ML','xyz'),(7,'PRATIBHA','ASSOCIATE','PRATIBHA@GMAIL.COM','12345',NULL,NULL,'NO IMAGE',NULL,NULL),(8,'Manish','ADMIN','Manish@gmail.com','12345','ML','SDE','NO IMAGE',NULL,NULL),(9,'Shesho','MENTOR','sheshanath@gmail.com','12345','JAVA','SDE','NO IMAGE',NULL,NULL),(10,'Nandani','ASSOCIATE','sheshanath@gmail.com','12345','JAVA','SDE','NO IMAGE','ML','xyz');
/*!40000 ALTER TABLE `mentorregistration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan`
--

DROP TABLE IF EXISTS `plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `plan` (
  `PLAN_ID` int(100) NOT NULL AUTO_INCREMENT,
  `TASK_NAME` varchar(100) NOT NULL,
  `ASSESMENT` varchar(1000) DEFAULT NULL,
  `USEFUL_LINK` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`PLAN_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan`
--

LOCK TABLES `plan` WRITE;
/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
INSERT INTO `plan` VALUES (1,'JAVA_TRAINING',NULL,'WWW.LEARNJAVA.COM'),(2,'ANGULAR TRAINING','ANGULAR ADDESMENT','WWW.ANGULAR.IO'),(3,'REACT','REAT-ASSET-12',''),(4,'JUNIT','JUNIT ASSM-1','WWW.LEARNJUNIT.COM');
/*!40000 ALTER TABLE `plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan_associate`
--

DROP TABLE IF EXISTS `plan_associate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `plan_associate` (
  `PLAN_ASSOCIATE_ID` int(100) NOT NULL AUTO_INCREMENT,
  `PLAN_ID` int(100) DEFAULT NULL,
  `ASSOCIATE_ID` int(100) DEFAULT NULL,
  `ASSIGN_DATE` date DEFAULT NULL,
  `UPDATED_DATE` date DEFAULT NULL,
  `PERCENT_COMPLETE` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`PLAN_ASSOCIATE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_associate`
--

LOCK TABLES `plan_associate` WRITE;
/*!40000 ALTER TABLE `plan_associate` DISABLE KEYS */;
INSERT INTO `plan_associate` VALUES (1,1,1,'2020-06-17','2020-10-12',90.00),(2,1,2,'2020-06-17','2020-07-12',100.00),(3,3,4,'2020-05-17','2020-10-20',20.00);
/*!40000 ALTER TABLE `plan_associate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `plan_associate_view`
--

DROP TABLE IF EXISTS `plan_associate_view`;
/*!50001 DROP VIEW IF EXISTS `plan_associate_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `plan_associate_view` AS SELECT 
 1 AS `PLAN_ASSOCIATE_ID`,
 1 AS `PLAN_ID`,
 1 AS `TASK_NAME`,
 1 AS `ASSESMENT`,
 1 AS `ASSOCIATE_NAME`,
 1 AS `EMAIL_ADDRESS`,
 1 AS `ASSIGN_DATE`,
 1 AS `UPDATED_DATE`,
 1 AS `PERCENT_COMPLETE`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `plan_mentor_associate`
--

DROP TABLE IF EXISTS `plan_mentor_associate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `plan_mentor_associate` (
  `PLAN_MENTOR_ASSOCIATE_ID` int(100) NOT NULL,
  `PLAN_ASSOCIATE_ID` int(100) DEFAULT NULL,
  `MENTOR_ID` int(100) DEFAULT NULL,
  PRIMARY KEY (`PLAN_MENTOR_ASSOCIATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_mentor_associate`
--

LOCK TABLES `plan_mentor_associate` WRITE;
/*!40000 ALTER TABLE `plan_mentor_associate` DISABLE KEYS */;
INSERT INTO `plan_mentor_associate` VALUES (1,1,1),(2,2,1),(3,3,2);
/*!40000 ALTER TABLE `plan_mentor_associate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `plan_mentor_associate_view`
--

DROP TABLE IF EXISTS `plan_mentor_associate_view`;
/*!50001 DROP VIEW IF EXISTS `plan_mentor_associate_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `plan_mentor_associate_view` AS SELECT 
 1 AS `PLAN_MENTOR_ASSOCIATE_ID`,
 1 AS `MENTOR_ID`,
 1 AS `MENTOR_NAME`,
 1 AS `EMAIL`,
 1 AS `ORGANIZATION`,
 1 AS `ROLE`,
 1 AS `AREA_OF_INTEREST`,
 1 AS `EXPERTIES`,
 1 AS `PHOTO`,
 1 AS `PLAN_ASSOCIATE_ID`,
 1 AS `PLAN_ID`,
 1 AS `TASK_NAME`,
 1 AS `ASSESMENT`,
 1 AS `ASSOCIATE_NAME`,
 1 AS `EMAIL_ADDRESS`,
 1 AS `ASSIGN_DATE`,
 1 AS `UPDATED_DATE`,
 1 AS `PERCENT_COMPLETE`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `plan_associate_view`
--

/*!50001 DROP VIEW IF EXISTS `plan_associate_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `plan_associate_view` AS select `pa`.`PLAN_ASSOCIATE_ID` AS `PLAN_ASSOCIATE_ID`,`pa`.`PLAN_ID` AS `PLAN_ID`,`p`.`TASK_NAME` AS `TASK_NAME`,`p`.`ASSESMENT` AS `ASSESMENT`,`a`.`ASSOCIATE_NAME` AS `ASSOCIATE_NAME`,`a`.`EMAIL_ADDRESS` AS `EMAIL_ADDRESS`,`pa`.`ASSIGN_DATE` AS `ASSIGN_DATE`,`pa`.`UPDATED_DATE` AS `UPDATED_DATE`,`pa`.`PERCENT_COMPLETE` AS `PERCENT_COMPLETE` from ((`plan_associate` `pa` join `associate` `a` on((`pa`.`ASSOCIATE_ID` = `a`.`ASSOCIATE_ID`))) join `plan` `p` on((`pa`.`PLAN_ID` = `p`.`PLAN_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `plan_mentor_associate_view`
--

/*!50001 DROP VIEW IF EXISTS `plan_mentor_associate_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `plan_mentor_associate_view` AS select `pma`.`PLAN_MENTOR_ASSOCIATE_ID` AS `PLAN_MENTOR_ASSOCIATE_ID`,`m`.`MENTOR_ID` AS `MENTOR_ID`,`m`.`MENTOR_NAME` AS `MENTOR_NAME`,`m`.`EMAIL` AS `EMAIL`,`m`.`ORGANIZATION` AS `ORGANIZATION`,`m`.`ROLE` AS `ROLE`,`m`.`AREA_OF_INTEREST` AS `AREA_OF_INTEREST`,`m`.`EXPERTIES` AS `EXPERTIES`,`m`.`PHOTO` AS `PHOTO`,`pa`.`PLAN_ASSOCIATE_ID` AS `PLAN_ASSOCIATE_ID`,`pa`.`PLAN_ID` AS `PLAN_ID`,`p`.`TASK_NAME` AS `TASK_NAME`,`p`.`ASSESMENT` AS `ASSESMENT`,`a`.`ASSOCIATE_NAME` AS `ASSOCIATE_NAME`,`a`.`EMAIL_ADDRESS` AS `EMAIL_ADDRESS`,`pa`.`ASSIGN_DATE` AS `ASSIGN_DATE`,`pa`.`UPDATED_DATE` AS `UPDATED_DATE`,`pa`.`PERCENT_COMPLETE` AS `PERCENT_COMPLETE` from ((((`plan_mentor_associate` `pma` join `mentor` `m` on((`pma`.`MENTOR_ID` = `m`.`MENTOR_ID`))) join `plan_associate` `pa` on((`pma`.`PLAN_ASSOCIATE_ID` = `pa`.`PLAN_ASSOCIATE_ID`))) join `associate` `a` on((`pa`.`ASSOCIATE_ID` = `a`.`ASSOCIATE_ID`))) join `plan` `p` on((`pa`.`PLAN_ID` = `p`.`PLAN_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-16 23:05:16
