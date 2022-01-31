-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 149.34.4.85    Database: ud15_ejercicio1
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
-- Table structure for table `Despachos`
--

DROP TABLE IF EXISTS `Despachos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Despachos` (
  `Numero` int NOT NULL,
  `Capacidad` int DEFAULT NULL,
  PRIMARY KEY (`Numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Despachos`
--

LOCK TABLES `Despachos` WRITE;
/*!40000 ALTER TABLE `Despachos` DISABLE KEYS */;
INSERT INTO `Despachos` VALUES (1,15),(2,10),(3,16),(4,15),(5,20),(6,12),(7,27),(8,18),(9,15),(10,5);
/*!40000 ALTER TABLE `Despachos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Directores`
--

DROP TABLE IF EXISTS `Directores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Directores` (
  `DNI` varchar(9) NOT NULL,
  `NomApels` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Jefe` varchar(9) DEFAULT NULL,
  `Despacho` int NOT NULL,
  PRIMARY KEY (`DNI`),
  UNIQUE KEY `DNI_UNIQUE` (`DNI`),
  KEY `Jefe_idx` (`Jefe`),
  KEY `Despacho_idx` (`Despacho`),
  CONSTRAINT `Despacho` FOREIGN KEY (`Despacho`) REFERENCES `Despachos` (`Numero`),
  CONSTRAINT `Jefe` FOREIGN KEY (`Jefe`) REFERENCES `Directores` (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Directores`
--

LOCK TABLES `Directores` WRITE;
/*!40000 ALTER TABLE `Directores` DISABLE KEYS */;
INSERT INTO `Directores` VALUES ('06854633N','Nagore Rosa',NULL,5),('12084534N','Lucas Avila','69467991X',8),('13002449C','Zoe Coca',NULL,1),('47516042C','Teofilo Rial','06854633N',5),('69467991X','Emma Montiel',NULL,8),('73469582S','Guillem Bermejo','13002449C',1),('74497382Z','Eulogio Fernández','12084534N',8),('77917985B','Juan Luis Carrera','13002449C',1),('81633922E','Jeronima Sierra','47516042C',2),('97927483S','Júlia Macias','12084534N',8);
/*!40000 ALTER TABLE `Directores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-31  9:41:25
