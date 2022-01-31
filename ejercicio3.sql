-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 149.34.4.85    Database: ud15_ejercicio3
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
-- Table structure for table `Asignado_A`
--

DROP TABLE IF EXISTS `Asignado_A`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Asignado_A` (
  `Cientifico` varchar(9) NOT NULL,
  `Proyecto` varchar(4) NOT NULL,
  PRIMARY KEY (`Cientifico`,`Proyecto`),
  KEY `Proyecto_idx` (`Proyecto`),
  CONSTRAINT `Cientifico` FOREIGN KEY (`Cientifico`) REFERENCES `Cientificos` (`DNI`),
  CONSTRAINT `Proyecto` FOREIGN KEY (`Proyecto`) REFERENCES `Proyecto` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Asignado_A`
--

LOCK TABLES `Asignado_A` WRITE;
/*!40000 ALTER TABLE `Asignado_A` DISABLE KEYS */;
INSERT INTO `Asignado_A` VALUES ('05655542A','1'),('98450589D','10'),('12345678F','2'),('25463020L','3'),('36584485H','4'),('49251605A','5'),('68705651M','6'),('79328612W','7'),('84763082D','8'),('89884889S','9');
/*!40000 ALTER TABLE `Asignado_A` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cientificos`
--

DROP TABLE IF EXISTS `Cientificos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cientificos` (
  `DNI` varchar(9) NOT NULL,
  `NomApels` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cientificos`
--

LOCK TABLES `Cientificos` WRITE;
/*!40000 ALTER TABLE `Cientificos` DISABLE KEYS */;
INSERT INTO `Cientificos` VALUES ('05655542A','Jesica Meseguer'),('12345678F','Jordi Ribellas Ramos'),('25463020L','Maria Laura Moro'),('36584485H','Rachid Valera'),('49251605A','Brahim Castells'),('68705651M','Julian Soriano'),('79328612W','Vera Tortosa'),('84763082D','Pedro Javier Rodriguez'),('89884889S','Jose Rafael Hidalgo'),('98450589D','Lúcia Tejero');
/*!40000 ALTER TABLE `Cientificos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Proyecto`
--

DROP TABLE IF EXISTS `Proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Proyecto` (
  `ID` varchar(4) NOT NULL,
  `Nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Horas` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Proyecto`
--

LOCK TABLES `Proyecto` WRITE;
/*!40000 ALTER TABLE `Proyecto` DISABLE KEYS */;
INSERT INTO `Proyecto` VALUES ('1','Samuel',200),('10','Sofia',154),('2','Fausto',100),('3','Alfredo',150),('4','Joaquín',175),('5','Celestina',160),('6','Gaspar',90),('7','Alejandra',50),('8','Fernando',180),('9','Angela',177);
/*!40000 ALTER TABLE `Proyecto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-31 10:03:56
