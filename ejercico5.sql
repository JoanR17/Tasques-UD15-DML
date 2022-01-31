-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 149.34.4.85    Database: ud15_ejercicio5
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
-- Table structure for table `Equipos`
--

DROP TABLE IF EXISTS `Equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Equipos` (
  `NumSerie` varchar(4) NOT NULL,
  `Nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Facultad` int DEFAULT NULL,
  PRIMARY KEY (`NumSerie`),
  KEY `FacultadEq_idx` (`Facultad`),
  CONSTRAINT `FacultadEq` FOREIGN KEY (`Facultad`) REFERENCES `Facultad` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Equipos`
--

LOCK TABLES `Equipos` WRITE;
/*!40000 ALTER TABLE `Equipos` DISABLE KEYS */;
INSERT INTO `Equipos` VALUES ('AA22','Equipo 7',7),('AC12','Equipo 1',1),('AC13','Equipo 2',2),('AC14','Equipo 3',3),('BA12','Equipo 4',4),('BB35','Equipo 5',5),('CF84','Equipo 6',6),('SS66','Equipo 9',9),('SSXX','Equipo 8',8),('TR12','Equipo 10',10);
/*!40000 ALTER TABLE `Equipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Facultad`
--

DROP TABLE IF EXISTS `Facultad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Facultad` (
  `Codigo` int NOT NULL,
  `Nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Facultad`
--

LOCK TABLES `Facultad` WRITE;
/*!40000 ALTER TABLE `Facultad` DISABLE KEYS */;
INSERT INTO `Facultad` VALUES (1,'Medicina'),(2,'Fisica'),(3,'Matematicas'),(4,'Biologia'),(5,'Psicologia'),(6,'Electronica'),(7,'Informatica'),(8,'Quimica'),(9,'Derecho'),(10,'Astrologia');
/*!40000 ALTER TABLE `Facultad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Investigadores`
--

DROP TABLE IF EXISTS `Investigadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Investigadores` (
  `DNI` varchar(9) NOT NULL,
  `NomApels` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Facultad` int DEFAULT NULL,
  PRIMARY KEY (`DNI`),
  KEY `Facultad_idx` (`Facultad`),
  CONSTRAINT `Facultad` FOREIGN KEY (`Facultad`) REFERENCES `Facultad` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Investigadores`
--

LOCK TABLES `Investigadores` WRITE;
/*!40000 ALTER TABLE `Investigadores` DISABLE KEYS */;
INSERT INTO `Investigadores` VALUES ('05655542A','Jesica Meseguer',1),('12345678F','Jordi Ribellas Ramos',2),('25463020L','Maria Laura Moro',3),('36584485H','Rachid Valera',4),('49251605A','Brahim Castells',5),('68705651M','Julian Soriano',6),('79328612W','Vera Tortosa',7),('84763082D','Pedro Javier Rodriguez',8),('89884889S','Jose Rafael Hidalgo',9),('98450589D','Lúcia Tejero',10);
/*!40000 ALTER TABLE `Investigadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reserva`
--

DROP TABLE IF EXISTS `Reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reserva` (
  `DNI` varchar(9) NOT NULL,
  `NumSerie` varchar(4) NOT NULL,
  `Comienzo` datetime DEFAULT NULL,
  `Fin` datetime DEFAULT NULL,
  PRIMARY KEY (`DNI`,`NumSerie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reserva`
--

LOCK TABLES `Reserva` WRITE;
/*!40000 ALTER TABLE `Reserva` DISABLE KEYS */;
INSERT INTO `Reserva` VALUES ('05655542A','AA22','2022-01-10 00:00:00','2022-04-01 00:00:00'),('12345678F','AC12','2022-01-10 00:00:00','2022-04-01 00:00:00'),('25463020L','AC13','2022-01-10 00:00:00','2022-04-01 00:00:00'),('36584485H','AC14','2022-01-10 00:00:00','2022-04-01 00:00:00'),('49251605A','BA12','2022-01-10 00:00:00','2022-04-01 00:00:00'),('68705651M','BB35','2022-01-10 00:00:00','2022-04-01 00:00:00'),('79328612W','CF84','2022-01-10 00:00:00','2022-04-01 00:00:00'),('84763082D','SS66','2022-01-10 00:00:00','2022-04-01 00:00:00'),('89884889S','SSXX','2022-01-10 00:00:00','2022-04-01 00:00:00'),('98450589D','TR12','2022-01-10 00:00:00','2022-04-01 00:00:00');
/*!40000 ALTER TABLE `Reserva` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-31 10:11:34
