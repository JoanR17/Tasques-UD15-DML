-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 192.168.1.160    Database: UD12/Act12
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
-- Table structure for table `Empresa`
--

DROP TABLE IF EXISTS `Empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Empresa` (
  `CIF` varchar(9) NOT NULL,
  `Nombre` varchar(60) DEFAULT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Teléfono` int DEFAULT NULL,
  `Codigo_interno` int DEFAULT NULL,
  PRIMARY KEY (`CIF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empresa`
--

LOCK TABLES `Empresa` WRITE;
/*!40000 ALTER TABLE `Empresa` DISABLE KEYS */;
INSERT INTO `Empresa` VALUES ('B39932330','ebulous','Plaça Arias, 5, Bajos',686797283,1),('C99470767','lovears','Plaza Óscar, 9, 74º A',629444166,4),('D48433635','omon','Travesía Nayara, 116, 27º D',733877498,9),('F34962910','pinbel','Travesía Héctor, 775, 4º 8º',738097973,5),('J73476418','kwisy','Paseo Cabello, 95, 1º D',712438105,2),('P4047947I','blumery','Praza Nerea, 0, 05º F',620639512,8),('S0067818E','neskil','Praza Alicia, 4, Ático 6º',621875641,3),('S4085210E','voxalys','Ronda Iker, 5, 21º A',666814550,6),('W5179080F','nerion','Camiño Villalpando, 63, 54º B',698148989,10),('W7617731J','frindz','Plaça Miranda, 9, 16º B',740215542,7);
/*!40000 ALTER TABLE `Empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hacer`
--

DROP TABLE IF EXISTS `Hacer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hacer` (
  `CIF` varchar(9) NOT NULL,
  `IdProyecto` int NOT NULL,
  PRIMARY KEY (`CIF`,`IdProyecto`),
  KEY `IdProyecto1_idx` (`IdProyecto`),
  CONSTRAINT `CIF1` FOREIGN KEY (`CIF`) REFERENCES `Empresa` (`CIF`),
  CONSTRAINT `IdProyecto1` FOREIGN KEY (`IdProyecto`) REFERENCES `Proyecto` (`idProyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hacer`
--

LOCK TABLES `Hacer` WRITE;
/*!40000 ALTER TABLE `Hacer` DISABLE KEYS */;
INSERT INTO `Hacer` VALUES ('B39932330',1),('C99470767',2),('D48433635',3),('F34962910',4),('J73476418',5),('P4047947I',6),('S0067818E',7),('S4085210E',8),('W5179080F',9),('W7617731J',10);
/*!40000 ALTER TABLE `Hacer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Profesion`
--

DROP TABLE IF EXISTS `Profesion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Profesion` (
  `CodigoProfesion` int NOT NULL,
  PRIMARY KEY (`CodigoProfesion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Profesion`
--

LOCK TABLES `Profesion` WRITE;
/*!40000 ALTER TABLE `Profesion` DISABLE KEYS */;
INSERT INTO `Profesion` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10);
/*!40000 ALTER TABLE `Profesion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Proyecto`
--

DROP TABLE IF EXISTS `Proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Proyecto` (
  `idProyecto` int NOT NULL,
  `FechaInicio` date DEFAULT NULL,
  `FechaFin` date DEFAULT NULL,
  `FechaPrevista` date DEFAULT NULL,
  PRIMARY KEY (`idProyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Proyecto`
--

LOCK TABLES `Proyecto` WRITE;
/*!40000 ALTER TABLE `Proyecto` DISABLE KEYS */;
INSERT INTO `Proyecto` VALUES (1,'2020-01-01','2023-01-01','2022-01-01'),(2,'2020-02-01','2023-02-01','2022-02-01'),(3,'2020-03-01','2023-03-01','2022-03-01'),(4,'2020-04-01','2023-04-01','2022-04-01'),(5,'2020-05-01','2023-05-01','2022-05-01'),(6,'2020-06-01','2023-06-01','2022-06-01'),(7,'2020-07-01','2023-07-01','2022-07-01'),(8,'2020-08-01','2023-08-01','2022-08-01'),(9,'2020-09-01','2023-09-01','2022-09-01'),(10,'2020-10-01','2023-10-01','2022-10-01');
/*!40000 ALTER TABLE `Proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tiene`
--

DROP TABLE IF EXISTS `Tiene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tiene` (
  `CodigoTrabajador` int NOT NULL,
  `CodigoProfesion` int NOT NULL,
  PRIMARY KEY (`CodigoTrabajador`,`CodigoProfesion`),
  KEY `CodigoP_idx` (`CodigoProfesion`),
  CONSTRAINT `CodigoP` FOREIGN KEY (`CodigoProfesion`) REFERENCES `Profesion` (`CodigoProfesion`),
  CONSTRAINT `CodT` FOREIGN KEY (`CodigoTrabajador`) REFERENCES `Trabajador` (`CodigoTrabajador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tiene`
--

LOCK TABLES `Tiene` WRITE;
/*!40000 ALTER TABLE `Tiene` DISABLE KEYS */;
INSERT INTO `Tiene` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `Tiene` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Trabaja`
--

DROP TABLE IF EXISTS `Trabaja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Trabaja` (
  `CodigoTrabajador` int NOT NULL,
  `IdProyecto` int NOT NULL,
  PRIMARY KEY (`CodigoTrabajador`,`IdProyecto`),
  KEY `IdP_idx` (`IdProyecto`),
  CONSTRAINT `CodigoT` FOREIGN KEY (`CodigoTrabajador`) REFERENCES `Trabajador` (`CodigoTrabajador`),
  CONSTRAINT `IdP` FOREIGN KEY (`IdProyecto`) REFERENCES `Proyecto` (`idProyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Trabaja`
--

LOCK TABLES `Trabaja` WRITE;
/*!40000 ALTER TABLE `Trabaja` DISABLE KEYS */;
INSERT INTO `Trabaja` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `Trabaja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Trabajador`
--

DROP TABLE IF EXISTS `Trabajador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Trabajador` (
  `CodigoTrabajador` int NOT NULL,
  `DNI` varchar(9) DEFAULT NULL,
  `Nombre` varchar(60) DEFAULT NULL,
  `Apellidos` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CodigoTrabajador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Trabajador`
--

LOCK TABLES `Trabajador` WRITE;
/*!40000 ALTER TABLE `Trabajador` DISABLE KEYS */;
INSERT INTO `Trabajador` VALUES (1,'10174980X','Andrei','Puig'),(2,'50582532N','Berta','Mosquera'),(3,'79070620R','Baltasar','Paniagua'),(4,'82473105G','Gabriela','Souto'),(5,'60888851P','Thiago','Grande'),(6,'24185575V','Gemma','Santana'),(7,'59826893Y','Jorge','Coronado'),(8,'48887570N','Carolina','Sanchez'),(9,'25310300L','Belen','Cruz'),(10,'95879232Y','Roxana','Martinez');
/*!40000 ALTER TABLE `Trabajador` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-31 10:37:31
