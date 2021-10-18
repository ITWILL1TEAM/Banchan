-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: bc_db
-- ------------------------------------------------------
-- Server version	5.7.33-log

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_id` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basket`
--

DROP TABLE IF EXISTS `basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basket` (
  `customer_id` varchar(45) COLLATE utf8_bin NOT NULL,
  `basket_count` int(11) NOT NULL,
  `product_num` int(11) NOT NULL,
  PRIMARY KEY (`basket_count`),
  KEY `bask_id_fk` (`customer_id`),
  KEY `bask_pdnum_fk` (`product_num`),
  CONSTRAINT `bask_id_fk` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `bask_pdnum_fk` FOREIGN KEY (`product_num`) REFERENCES `product` (`product_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basket`
--

LOCK TABLES `basket` WRITE;
/*!40000 ALTER TABLE `basket` DISABLE KEYS */;
/*!40000 ALTER TABLE `basket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` varchar(15) COLLATE utf8_bin NOT NULL,
  `phone` varchar(45) COLLATE utf8_bin NOT NULL,
  `eamil` varchar(45) COLLATE utf8_bin NOT NULL,
  `recommend_id` int(11) NOT NULL DEFAULT '0',
  `personal_data` int(11) NOT NULL,
  UNIQUE KEY `eamil_UNIQUE` (`eamil`),
  KEY `costomer_id` (`customer_id`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` varchar(15) COLLATE utf8_bin NOT NULL,
  `password` varchar(20) COLLATE utf8_bin NOT NULL,
  `name` varchar(8) COLLATE utf8_bin NOT NULL,
  `grade` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_num` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(45) COLLATE utf8_bin NOT NULL,
  `Sname` varchar(20) COLLATE utf8_bin NOT NULL,
  `product_category` varchar(45) COLLATE utf8_bin NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_weight` int(11) NOT NULL,
  `product_discount` int(11) NOT NULL DEFAULT '0',
  `product_count` int(11) NOT NULL DEFAULT '0',
  `product_date` date NOT NULL,
  `product_stock` int(11) NOT NULL,
  `product_location` varchar(255) COLLATE utf8_bin NOT NULL,
  `product_expiration_date` varchar(45) COLLATE utf8_bin NOT NULL,
  `product_handling` varchar(45) COLLATE utf8_bin NOT NULL,
  `product_material` varchar(1000) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`product_num`),
  KEY `pd_pnum_fk` (`Sname`),
  CONSTRAINT `pd_pnum_fk` FOREIGN KEY (`Sname`) REFERENCES `seller` (`Sname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_img`
--

DROP TABLE IF EXISTS `product_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_img` (
  `product_num` int(11) DEFAULT NULL,
  `product_original_img` varchar(45) COLLATE utf8_bin NOT NULL,
  `product_img` varchar(45) COLLATE utf8_bin NOT NULL,
  `product_img_location` int(11) DEFAULT NULL,
  KEY `pdi_pnum_fk` (`product_num`),
  CONSTRAINT `pdi_pnum_fk` FOREIGN KEY (`product_num`) REFERENCES `product` (`product_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_img`
--

LOCK TABLES `product_img` WRITE;
/*!40000 ALTER TABLE `product_img` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `review_idx` int(11) NOT NULL AUTO_INCREMENT,
  `product_num` int(11) NOT NULL,
  `review_id` varchar(45) COLLATE utf8_bin NOT NULL,
  `review_subject` varchar(45) COLLATE utf8_bin NOT NULL,
  `review_content` varchar(255) COLLATE utf8_bin NOT NULL,
  `review_img` varchar(45) COLLATE utf8_bin NOT NULL,
  `review_score` float NOT NULL,
  `review_date` date NOT NULL,
  PRIMARY KEY (`review_idx`),
  KEY `rv_pdnum_fk` (`product_num`),
  CONSTRAINT `rv_pdnum_fk` FOREIGN KEY (`product_num`) REFERENCES `product` (`product_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller` (
  `seller_id` varchar(15) COLLATE utf8_bin NOT NULL,
  `SNO` int(10) unsigned NOT NULL,
  `Sname` varchar(20) COLLATE utf8_bin NOT NULL,
  `adress` varchar(45) COLLATE utf8_bin NOT NULL,
  `phone` varchar(45) COLLATE utf8_bin NOT NULL,
  `email` varchar(45) COLLATE utf8_bin NOT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`Sname`),
  KEY `seller_id` (`seller_id`),
  CONSTRAINT `seller_ibfk_1` FOREIGN KEY (`seller_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-15 12:21:03
