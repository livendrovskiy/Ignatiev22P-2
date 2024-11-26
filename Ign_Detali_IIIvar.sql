-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: detali
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `number_delivery` int NOT NULL,
  `number_provider` varchar(6) DEFAULT NULL,
  `number_detali` varchar(6) DEFAULT NULL,
  `number_product` varchar(6) DEFAULT NULL,
  `count` int DEFAULT NULL,
  PRIMARY KEY (`number_delivery`),
  KEY `number_provider_idx` (`number_provider`),
  KEY `number_detali_idx` (`number_detali`),
  KEY `number_product_idx` (`number_product`),
  CONSTRAINT `number_detali` FOREIGN KEY (`number_detali`) REFERENCES `detalies` (`number_detali`),
  CONSTRAINT `number_product` FOREIGN KEY (`number_product`) REFERENCES `product` (`number_product`),
  CONSTRAINT `number_provider` FOREIGN KEY (`number_provider`) REFERENCES `providers` (`number_provider`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (1,'S1','P1','J1',200),(2,'S1','P1','J4',700),(3,'S2','P3','J1',400),(4,'S2','P3','J2',200),(5,'S2','P3','J3',200),(6,'S2','P3','J4',500),(7,'S2','P3','J5',600),(8,'S2','P3','J6',400),(9,'S2','P3','J7',800),(10,'S2','P5','J2',100),(11,'S3','P3','J1',200),(12,'S3','P4','J2',500),(13,'S4','P6','J3',300),(14,'S4','P6','J7',300),(15,'S5','P2','J2',200),(16,'S5','P2','J4',100),(17,'S5','P5','J5',500),(18,'S5','P5','J7',100),(19,'S5','P6','J2',200),(20,'S5','P1','J4',100),(21,'S5','P3','J4',200),(22,'S5','P4','J4',800),(23,'S5','P5','J4',400),(24,'S5','P6','J4',500),(25,'S6','P6','J4',550),(26,'S6','P6','J5',350);
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalies`
--

DROP TABLE IF EXISTS `detalies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalies` (
  `number_detali` varchar(6) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `weight` int DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`number_detali`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalies`
--

LOCK TABLES `detalies` WRITE;
/*!40000 ALTER TABLE `detalies` DISABLE KEYS */;
INSERT INTO `detalies` VALUES ('P1','Гайка','Красный',12,'Лондон'),('P2','Болт','Зеленый',17,'Париж'),('P3','Винт','Голубой',17,'Рим'),('P4','Винт','Красный',14,'Лондон'),('P5','Кулачок','Голубой',12,'Париж'),('P6','Блюм','Красный',19,'Лондон');
/*!40000 ALTER TABLE `detalies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `number_product` varchar(6) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`number_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('J1','Жесткий диск','Париж'),('J2','Перфоратор','Рим'),('J3','Считыватель','Афины'),('J4','Принтер','Афины'),('J5','Флоппи-диск','Лондон'),('J6','Терминал','Осло'),('J7','Лента','Лондон');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `providers`
--

DROP TABLE IF EXISTS `providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `providers` (
  `number_provider` varchar(6) NOT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`number_provider`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `providers`
--

LOCK TABLES `providers` WRITE;
/*!40000 ALTER TABLE `providers` DISABLE KEYS */;
INSERT INTO `providers` VALUES ('S1','Смит',20,'Лондон'),('S2','Джонс',10,'Париж'),('S3','Блейк',30,'Париж'),('S4','Кларк',20,'Лондон'),('S5','Адамс',30,'Афины'),('S6','Дан',15,'Париж');
/*!40000 ALTER TABLE `providers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-26 22:55:33
