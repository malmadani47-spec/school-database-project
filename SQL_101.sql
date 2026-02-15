-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: al_tamayoz_secondary_education
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `instructors`
--

DROP TABLE IF EXISTS `instructors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructors` (
  `Teacher_id` int NOT NULL,
  `Teacher_name` varchar(225) DEFAULT NULL,
  `Birth_date` date DEFAULT NULL,
  `Gender` enum('M','F') DEFAULT NULL,
  `Office_number` varchar(225) DEFAULT NULL,
  `Email` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`Teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructors`
--

LOCK TABLES `instructors` WRITE;
/*!40000 ALTER TABLE `instructors` DISABLE KEYS */;
INSERT INTO `instructors` VALUES (32,'Ali Hassan','1987-03-12','M','100','ali32@school.com'),(33,'Sara Ahmed','1990-11-25','F','82','sara33@school.com'),(34,'Omar Saleh','1989-07-09','M','68','omar34@school.com'),(35,'Lina Khalid','1991-02-14','F','90','lina35@school.com'),(36,'Yousef Nabil','1988-09-30','M','73','yousef36@school.com'),(37,'Mariam Tarek','1992-05-18','F','88','mariam37@school.com'),(38,'Hassan Adel','1987-12-22','M','79','hassan38@school.com'),(39,'Nour Ibrahim','1990-08-05','F','84','nour39@school.com'),(40,'Khaled Samir','1989-01-27','M','71','khaled40@school.com'),(41,'Aya Mahmoud','1991-06-11','F','93','aya41@school.com');
/*!40000 ALTER TABLE `instructors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `Student_id` int NOT NULL AUTO_INCREMENT,
  `Student_name` varchar(225) DEFAULT NULL,
  `Birth_date` date DEFAULT NULL,
  `Gendar` enum('M','F') DEFAULT NULL,
  `Enrollment_date` date DEFAULT NULL,
  `Email` varchar(225) DEFAULT NULL,
  `Student_level` int DEFAULT NULL,
  `Student_truck` enum('Scientific','Humanities') DEFAULT NULL,
  `Student_GPA` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`Student_id`),
  CONSTRAINT `students_chk_1` CHECK ((`Student_level` between 1 and 6)),
  CONSTRAINT `students_chk_2` CHECK ((`Student_GPA` between 0 and 100))
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Ahmad Ali','2008-07-17','M','2023-07-13','ahmad12@shcool.com',4,'Scientific',88.30),(2,'Sara Hassan','2007-05-22','F','2023-07-13','sara2@school.com',5,'Humanities',91.45),(3,'Omar Khalid','2008-01-10','M','2023-07-13','omar3@school.com',4,'Scientific',76.80),(4,'Lina Mahmoud','2007-11-03','F','2023-07-13','lina4@school.com',5,'Humanities',85.20),(5,'Yousef Ibrahim','2008-03-14','M','2023-07-13','yousef5@school.com',4,'Scientific',92.10),(6,'Mariam Ali','2007-09-18','F','2023-07-13','mariam6@school.com',5,'Humanities',89.75),(7,'Hassan Saleh','2008-12-01','M','2023-07-13','hassan7@school.com',4,'Scientific',73.50),(8,'Nour Ahmed','2007-04-27','F','2023-07-13','nour8@school.com',5,'Humanities',95.60),(9,'Khaled Omar','2008-06-09','M','2023-07-13','khaled9@school.com',4,'Scientific',81.40),(10,'Aya Samir','2007-02-15','F','2023-07-13','aya10@school.com',5,'Humanities',87.90),(11,'Ziad Fares','2008-08-25','M','2023-07-13','ziad11@school.com',4,'Scientific',90.00),(12,'Huda Karim','2007-10-30','F','2023-07-13','huda12@school.com',5,'Humanities',84.35),(13,'Tariq Nabil','2008-01-19','M','2023-07-13','tariq13@school.com',4,'Scientific',79.25),(14,'Rana Adel','2007-07-07','F','2023-07-13','rana14@school.com',5,'Humanities',93.15),(15,'Bilal Saeed','2008-05-11','M','2023-07-13','bilal15@school.com',4,'Scientific',86.70),(16,'Dina Mostafa','2007-03-29','F','2023-07-13','dina16@school.com',5,'Humanities',88.90),(17,'Mustafa Yassin','2008-09-02','M','2023-07-13','mustafa17@school.com',4,'Scientific',74.60),(18,'Salma Tarek','2007-12-12','F','2023-07-13','salma18@school.com',5,'Humanities',90.80),(19,'Ibrahim Hani','2008-04-05','M','2023-07-13','ibrahim19@school.com',4,'Scientific',82.55),(20,'Farah Sameh','2007-06-21','F','2023-07-13','farah20@school.com',5,'Humanities',94.25),(21,'Adel Raouf','2008-02-28','M','2023-07-13','adel21@school.com',4,'Scientific',77.30),(22,'Reem Fathi','2007-08-16','F','2023-07-13','reem22@school.com',5,'Humanities',89.10),(23,'Mahmoud Essam','2008-11-09','M','2023-07-13','mahmoud23@school.com',4,'Scientific',83.45),(24,'Yara Nader','2007-01-25','F','2023-07-13','yara24@school.com',5,'Humanities',92.75),(25,'Amr Galal','2008-07-03','M','2023-07-13','amr25@school.com',4,'Scientific',80.20),(26,'Nada Wael','2007-05-30','F','2023-07-13','nada26@school.com',5,'Humanities',87.55),(27,'Karim Ashraf','2008-10-14','M','2023-07-13','karim27@school.com',4,'Scientific',91.85),(28,'Malak Hossam','2007-09-09','F','2023-07-13','malak28@school.com',5,'Humanities',85.95),(29,'Fady Nasser','2008-03-22','M','2023-07-13','fady29@school.com',4,'Scientific',78.40),(30,'Hana Adel','2007-12-05','F','2023-07-13','hana30@school.com',5,'Humanities',93.60),(31,'Rami Zaki','2008-06-18','M','2023-07-13','rami31@school.com',4,'Scientific',89.35),(32,'Sara Hassan','2007-05-22','F','2023-07-13','sara2@school.com',5,'Humanities',91.45),(33,'Omar Khalid','2008-01-10','M','2023-07-13','omar3@school.com',4,'Scientific',76.80),(34,'Lina Mahmoud','2007-11-03','F','2023-07-13','lina4@school.com',5,'Humanities',85.20),(35,'Yousef Ibrahim','2008-03-14','M','2023-07-13','yousef5@school.com',4,'Scientific',92.10),(36,'Mariam Ali','2007-09-18','F','2023-07-13','mariam6@school.com',5,'Humanities',89.75),(37,'Hassan Saleh','2008-12-01','M','2023-07-13','hassan7@school.com',4,'Scientific',73.50),(38,'Nour Ahmed','2007-04-27','F','2023-07-13','nour8@school.com',5,'Humanities',95.60),(39,'Khaled Omar','2008-06-09','M','2023-07-13','khaled9@school.com',4,'Scientific',81.40),(40,'Aya Samir','2007-02-15','F','2023-07-13','aya10@school.com',5,'Humanities',87.90),(41,'Ziad Fares','2008-08-25','M','2023-07-13','ziad11@school.com',4,'Scientific',90.00),(42,'Huda Karim','2007-10-30','F','2023-07-13','huda12@school.com',5,'Humanities',84.35),(43,'Tariq Nabil','2008-01-19','M','2023-07-13','tariq13@school.com',4,'Scientific',79.25),(44,'Rana Adel','2007-07-07','F','2023-07-13','rana14@school.com',5,'Humanities',93.15),(45,'Bilal Saeed','2008-05-11','M','2023-07-13','bilal15@school.com',4,'Scientific',86.70),(46,'Dina Mostafa','2007-03-29','F','2023-07-13','dina16@school.com',5,'Humanities',88.90),(47,'Mustafa Yassin','2008-09-02','M','2023-07-13','mustafa17@school.com',4,'Scientific',74.60),(48,'Salma Tarek','2007-12-12','F','2023-07-13','salma18@school.com',5,'Humanities',90.80),(49,'Ibrahim Hani','2008-04-05','M','2023-07-13','ibrahim19@school.com',4,'Scientific',82.55),(50,'Farah Sameh','2007-06-21','F','2023-07-13','farah20@school.com',5,'Humanities',94.25),(51,'Adel Raouf','2008-02-28','M','2023-07-13','adel21@school.com',4,'Scientific',77.30),(52,'Reem Fathi','2007-08-16','F','2023-07-13','reem22@school.com',5,'Humanities',89.10),(53,'Mahmoud Essam','2008-11-09','M','2023-07-13','mahmoud23@school.com',4,'Scientific',83.45),(54,'Yara Nader','2007-01-25','F','2023-07-13','yara24@school.com',5,'Humanities',92.75),(55,'Amr Galal','2008-07-03','M','2023-07-13','amr25@school.com',4,'Scientific',80.20),(56,'Nada Wael','2007-05-30','F','2023-07-13','nada26@school.com',5,'Humanities',87.55),(57,'Karim Ashraf','2008-10-14','M','2023-07-13','karim27@school.com',4,'Scientific',91.85),(58,'Malak Hossam','2007-09-09','F','2023-07-13','malak28@school.com',5,'Humanities',85.95),(59,'Fady Nasser','2008-03-22','M','2023-07-13','fady29@school.com',4,'Scientific',78.40),(60,'Hana Adel','2007-12-05','F','2023-07-13','hana30@school.com',5,'Humanities',93.60);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `Subject_id` int NOT NULL,
  `Subject_name` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`Subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'Mathematics'),(2,'Physics'),(3,'Chemistry'),(4,'Biology'),(5,'English'),(6,'History');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-16  1:49:20
