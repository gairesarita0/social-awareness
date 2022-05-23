CREATE DATABASE  IF NOT EXISTS `socialdb` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `socialdb`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: socialdb
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
-- Table structure for table `ad`
--

DROP TABLE IF EXISTS `ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad` (
  `adid` int unsigned NOT NULL AUTO_INCREMENT,
  `addescription` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0',
  `date` date NOT NULL DEFAULT '0000-00-00',
  `title` varchar(50) NOT NULL DEFAULT '0',
  `adimage` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`adid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad`
--

LOCK TABLES `ad` WRITE;
/*!40000 ALTER TABLE `ad` DISABLE KEYS */;
INSERT INTO `ad` VALUES (1,'Adv','0000-00-00','test','adv1653307722686sweetu.jpg');
/*!40000 ALTER TABLE `ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign`
--

DROP TABLE IF EXISTS `campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign` (
  `cmid` int unsigned NOT NULL AUTO_INCREMENT,
  `cname` varchar(50) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `image` varchar(450) DEFAULT NULL,
  `uid` int DEFAULT NULL,
  `approve` int DEFAULT '0',
  PRIMARY KEY (`cmid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign`
--

LOCK TABLES `campaign` WRITE;
/*!40000 ALTER TABLE `campaign` DISABLE KEYS */;
INSERT INTO `campaign` VALUES (1,'testing','Test','The sandwich he had eaten.','canberra','2022-05-16','Screenshot (48).png',1,1),(2,'real','what','hellow','is','2022-05-14','Screenshot (3).png',1,0),(3,'real','what','hellow','is','2022-05-14','Screenshot (3).png',1,0),(4,'real','what','hellow','is','2022-05-14','Screenshot (3).png',1,0),(5,'testing  ','Test','crystal pices and any thing else','canberra','2022-05-03','Screenshot (5).png',1,0),(6,'water','watering','','canberra','2022-05-04','Screenshot (4).png',1,2),(12,'handwashing','Test  ','skgjdokng','sasdsd','2022-04-27','sweetu.jpg',5,0),(13,'The','dance','The is the best event in town','canberra center','2022-05-27','20210702_163817.jpg',4,0),(14,'kkk','aaa','hjhghjghjghj','444','2022-05-04','eventss.jpg',4,0),(15,'testing','test','hing hing','canberra','2022-05-10','events1653299334033Sarita Gaire.png',4,0);
/*!40000 ALTER TABLE `campaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `cid` int unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(50) DEFAULT NULL,
  `time` timestamp NULL DEFAULT NULL,
  `uid` int DEFAULT NULL,
  `cmid` int DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile` (
  `name` varchar(50) DEFAULT NULL,
  `profileid` int NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `mobileno` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `uid` int DEFAULT NULL,
  PRIMARY KEY (`profileid`),
  UNIQUE KEY `profileid_UNIQUE` (`profileid`),
  UNIQUE KEY `uid_UNIQUE` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(500) NOT NULL,
  `accesslevel` int DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `Email_UNIQUE` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Admin','admin@admin.com','$2b$10$9MNsRQwAIeZ8nqwKUdum5eH1iOmFBO6L9zCmS2m1hU6pZgZY8KLTy',3),(2,'sarita gaire','gairesarita0@gmail.com','$2b$10$VcaBrXGgiq9rsOZWPoqv9.ah5nx9JamV7m1vKSnBbK23r4grrRcJW',1),(4,'sarita','sarita@sarita.com','$2b$10$K3qyJqgm.E3sWkG2YvwR5emKlRkpzZFflyK.cH9EB1yNpkEEJclPe',3),(5,'sans','sans@123.com','$2b$10$.I0j0/HBQlrBEo186PzyTu8kQ/RYDJm.Hze4RJT0qbmCy8ZL.twE2',3),(6,'nipuni','nipuni@123.com','$2b$10$Kau/dzNC49Z2hfnTid8b9.f6AsVYaFJuV6yKlkrIxEz0KZjSkd/wy',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-23 23:15:58
