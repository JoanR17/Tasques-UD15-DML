-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 149.34.4.85    Database: ud12_act7
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
-- Table structure for table `CategoriaProfesional`
--

DROP TABLE IF EXISTS `CategoriaProfesional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CategoriaProfesional` (
  `idCategoria` int NOT NULL,
  `idContrato` int NOT NULL,
  `CodTrabajador` int NOT NULL,
  `idNomina` int NOT NULL,
  PRIMARY KEY (`idCategoria`),
  KEY `Contrato_idx` (`idContrato`),
  KEY `Trabajadores_idx` (`CodTrabajador`),
  KEY `Nomina_idx` (`idNomina`),
  CONSTRAINT `Contrato` FOREIGN KEY (`idContrato`) REFERENCES `Contratos` (`idContratos`),
  CONSTRAINT `Nomina` FOREIGN KEY (`idNomina`) REFERENCES `Nominas` (`idNominas`),
  CONSTRAINT `Trabajadores` FOREIGN KEY (`CodTrabajador`) REFERENCES `Trabajadores` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoriaProfesional`
--

LOCK TABLES `CategoriaProfesional` WRITE;
/*!40000 ALTER TABLE `CategoriaProfesional` DISABLE KEYS */;
INSERT INTO `CategoriaProfesional` VALUES (1,1,1,1),(2,2,2,2),(3,3,3,3),(4,4,4,4),(5,5,5,5),(6,6,6,6),(7,7,7,7),(8,8,8,8),(9,9,9,9),(10,10,10,10);
/*!40000 ALTER TABLE `CategoriaProfesional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Contratos`
--

DROP TABLE IF EXISTS `Contratos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Contratos` (
  `idContratos` int NOT NULL,
  `FechaInicio` date DEFAULT NULL,
  `FechaFin` date DEFAULT NULL,
  PRIMARY KEY (`idContratos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contratos`
--

LOCK TABLES `Contratos` WRITE;
/*!40000 ALTER TABLE `Contratos` DISABLE KEYS */;
INSERT INTO `Contratos` VALUES (1,'2022-01-10','2022-04-01'),(2,'2022-04-01','2023-04-01'),(3,'2020-10-10','2021-12-17'),(4,'2017-02-17','2017-06-25'),(5,'2022-01-10','2022-04-01'),(6,'2022-01-10','2022-04-01'),(7,'2022-01-10','2022-04-01'),(8,'2022-01-10','2022-04-01'),(9,'2022-01-10','2022-04-01'),(10,'2022-01-10','2022-04-01');
/*!40000 ALTER TABLE `Contratos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Departamentos`
--

DROP TABLE IF EXISTS `Departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Departamentos` (
  `Codigo` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Trabajador` int DEFAULT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `Trabajador_idx` (`Trabajador`),
  CONSTRAINT `Trabajador` FOREIGN KEY (`Trabajador`) REFERENCES `Trabajadores` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Departamentos`
--

LOCK TABLES `Departamentos` WRITE;
/*!40000 ALTER TABLE `Departamentos` DISABLE KEYS */;
INSERT INTO `Departamentos` VALUES (1,'Medicina',6),(2,'Fisica',3),(3,'Matematicas',5),(4,'Biologia',1),(5,'Psicologia',2),(6,'Electronica',7),(7,'Informatica',9),(8,'Quimica',10),(9,'Derecho',4),(10,'Astrologia',8);
/*!40000 ALTER TABLE `Departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Nominas`
--

DROP TABLE IF EXISTS `Nominas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Nominas` (
  `idNominas` int NOT NULL,
  `Fecha` date DEFAULT NULL,
  `Salario` double DEFAULT NULL,
  PRIMARY KEY (`idNominas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Nominas`
--

LOCK TABLES `Nominas` WRITE;
/*!40000 ALTER TABLE `Nominas` DISABLE KEYS */;
INSERT INTO `Nominas` VALUES (1,'2022-01-10',1600),(2,'2022-02-10',1400),(3,'2022-03-10',1400),(4,'2021-12-10',1350),(5,'2021-11-10',1300),(6,'2021-10-10',1300),(7,'2021-09-10',1250),(8,'2021-08-10',1200),(9,'2021-07-10',1100),(10,'2021-06-10',900);
/*!40000 ALTER TABLE `Nominas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Trabajadores`
--

DROP TABLE IF EXISTS `Trabajadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Trabajadores` (
  `Codigo` int NOT NULL,
  `DNI` varchar(9) DEFAULT NULL,
  `NumSS` int DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellidos` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  `Jefe` int DEFAULT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `Jefe_idx` (`Jefe`),
  CONSTRAINT `Jefe` FOREIGN KEY (`Jefe`) REFERENCES `Trabajadores` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Trabajadores`
--

LOCK TABLES `Trabajadores` WRITE;
/*!40000 ALTER TABLE `Trabajadores` DISABLE KEYS */;
INSERT INTO `Trabajadores` VALUES (1,'05655542A',577709367,'Jesica ','Meseguer','C/ Test nº 1','123456789',NULL),(2,'12345678F',2367568,'Jordi',' Ribellas Ramos','C/ Test nº 2','123456789',1),(3,'25463020L',525426381,'Maria Laura ','Moro','C/ Test nº 3','123456789',NULL),(4,'36584485H',577846898,'Rachid ','Valera','C/ Test nº 4','123456789',2),(5,'49251605A',261386950,'Brahim ','Castells','C/ Test nº 5','123456789',2),(6,'68705651M',501217218,'Julian ','Soriano','C/ Test nº 6','123456789',3),(7,'79328612W',303137385,'Vera ','Tortosa','C/ Test nº 7','123456789',3),(8,'84763082D',387036266,'Pedro Javier ','Rodriguez','C/ Test nº 8','123456789',3),(9,'89884889S',520981398,'Jose Rafael ','Hidalgo','C/ Test nº 9','123456789',4),(10,'98450589D',531989958,'Lúcia ','Tejero','C/ Test nº 10','123456789',NULL);
/*!40000 ALTER TABLE `Trabajadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Trabajan`
--

DROP TABLE IF EXISTS `Trabajan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Trabajan` (
  `Trabajador` int NOT NULL,
  `Departamento` int NOT NULL,
  PRIMARY KEY (`Trabajador`,`Departamento`),
  KEY `Trabajador_idx` (`Trabajador`),
  KEY `Departamento_idx` (`Departamento`),
  CONSTRAINT `CodDepartamento` FOREIGN KEY (`Departamento`) REFERENCES `Departamentos` (`Codigo`),
  CONSTRAINT `CodTrabajador` FOREIGN KEY (`Trabajador`) REFERENCES `Trabajadores` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Trabajan`
--

LOCK TABLES `Trabajan` WRITE;
/*!40000 ALTER TABLE `Trabajan` DISABLE KEYS */;
INSERT INTO `Trabajan` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `Trabajan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-31 10:32:11
