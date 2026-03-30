-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: student_db
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `student_id` int DEFAULT NULL,
  `attendance_percentage` int DEFAULT NULL,
  KEY `student_id` (`student_id`),
  CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,85),(2,60),(3,78),(4,90),(5,72),(6,88),(7,65),(8,92),(9,70),(10,80),(11,68),(12,95),(13,66),(14,89),(15,75),(16,82),(17,69),(18,91),(19,73),(20,87),(21,64),(22,93),(23,71),(24,85),(25,76),(26,90),(27,67),(28,88),(29,70),(30,92),(31,74),(32,86),(33,69),(34,91),(35,72),(36,88),(37,65),(38,90),(39,71),(40,87),(41,75),(42,92),(43,68),(44,85),(45,73),(46,89),(47,66),(48,91),(49,70),(50,93);
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `course_id` int NOT NULL,
  `course_name` varchar(50) DEFAULT NULL,
  `duration` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (101,'BCA','3 Years'),(102,'BBA','3 Years'),(103,'MCA','2 Years'),(104,'MBA','2 Years'),(105,'BTech','4 Years'),(106,'MTech','2 Years'),(107,'BCom','3 Years'),(108,'MCom','2 Years'),(109,'BA','3 Years'),(110,'MA','2 Years');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marks` (
  `student_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `marks` int DEFAULT NULL,
  KEY `student_id` (`student_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `marks_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  CONSTRAINT `marks_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marks`
--

LOCK TABLES `marks` WRITE;
/*!40000 ALTER TABLE `marks` DISABLE KEYS */;
INSERT INTO `marks` VALUES (1,101,88),(2,102,76),(3,103,69),(4,104,91),(5,105,72),(6,106,85),(7,107,66),(8,108,95),(9,109,70),(10,110,82),(11,101,74),(12,102,89),(13,103,67),(14,104,93),(15,105,71),(16,106,84),(17,107,68),(18,108,90),(19,109,73),(20,110,86),(21,101,65),(22,102,92),(23,103,69),(24,104,87),(25,105,75),(26,106,94),(27,107,72),(28,108,88),(29,109,66),(30,110,91),(31,101,74),(32,102,89),(33,103,70),(34,104,93),(35,105,71),(36,106,85),(37,107,67),(38,108,90),(39,109,69),(40,110,86),(41,101,75),(42,102,92),(43,103,68),(44,104,87),(45,105,73),(46,106,84),(47,107,72),(48,108,91),(49,109,66),(50,110,95);
/*!40000 ALTER TABLE `marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `student_performance`
--

DROP TABLE IF EXISTS `student_performance`;
/*!50001 DROP VIEW IF EXISTS `student_performance`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `student_performance` AS SELECT 
 1 AS `name`,
 1 AS `course_name`,
 1 AS `marks`,
 1 AS `attendance_percentage`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `student_id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `course` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Aksa',21,'BCA','Sangamner'),(2,'Pathan',22,'BCA','Maharashtra'),(3,'Muzam',20,'BBA','Mumbai'),(4,'Priya',21,'BCA','Nasik'),(5,'Karan',23,'BBA','Pune'),(6,'rekha',22,'BCA','manipur'),(7,'Rohit',21,'BBA','Delhi'),(8,'Anjali',20,'BCA','Jaipur'),(9,'Vikas',24,'BBA','Lucknow'),(10,'Neha',21,'BCA','Dehradun'),(11,'Arjun',22,'BBA','Delhi'),(12,'Pooja',23,'BCA','Noida'),(13,'Sahil',21,'BBA','Mumbai'),(14,'Kriti',20,'BCA','Pune'),(15,'Manish',24,'BBA','Delhi'),(16,'Sneha',22,'BCA','Jaipur'),(17,'Deepak',23,'BBA','Lucknow'),(18,'Riya',21,'BCA','Chandigarh'),(19,'Varun',22,'BBA','Delhi'),(20,'Meena',20,'BCA','Dehradun'),(21,'Ajay',23,'BBA','Mumbai'),(22,'Kajal',22,'BCA','Noida'),(23,'Nitin',24,'BBA','Pune'),(24,'Tina',21,'BCA','Delhi'),(25,'Yash',22,'BBA','Lucknow'),(26,'Komal',20,'BCA','Jaipur'),(27,'Rakesh',23,'BBA','Delhi'),(28,'Sonia',21,'BCA','Chandigarh'),(29,'Mohit',22,'BBA','Mumbai'),(30,'Payal',20,'BCA','Dehradun'),(31,'Tarun',23,'BBA','Delhi'),(32,'Isha',21,'BCA','Noida'),(33,'Gaurav',22,'BBA','Pune'),(34,'Shreya',20,'BCA','Jaipur'),(35,'Harsh',24,'BBA','Lucknow'),(36,'Divya',21,'BCA','Chandigarh'),(37,'Kunal',23,'BBA','Delhi'),(38,'Ritu',22,'BCA','Dehradun'),(39,'Abhishek',21,'BBA','Mumbai'),(40,'Naina',20,'BCA','Noida'),(41,'Lokesh',23,'BBA','Pune'),(42,'Preeti',21,'BCA','Jaipur'),(43,'Suresh',24,'BBA','Delhi'),(44,'Pallavi',22,'BCA','Chandigarh'),(45,'Ankit',23,'BBA','Lucknow'),(46,'Monika',21,'BCA','Dehradun'),(47,'Raj',22,'BBA','Delhi'),(48,'Seema',20,'BCA','Noida'),(49,'Vivek',23,'BBA','Mumbai'),(50,'Rashmi',21,'BCA','Pune');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `student_performance`
--

/*!50001 DROP VIEW IF EXISTS `student_performance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `student_performance` AS select `s`.`name` AS `name`,`c`.`course_name` AS `course_name`,`m`.`marks` AS `marks`,`a`.`attendance_percentage` AS `attendance_percentage` from (((`students` `s` join `marks` `m` on((`s`.`student_id` = `m`.`student_id`))) join `courses` `c` on((`m`.`course_id` = `c`.`course_id`))) join `attendance` `a` on((`s`.`student_id` = `a`.`student_id`))) */;
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

-- Dump completed on 2026-03-30 19:45:25
