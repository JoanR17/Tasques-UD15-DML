-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 149.34.4.85    Database: ud12_act13
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
-- Table structure for table `Almacen`
--

DROP TABLE IF EXISTS `Almacen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Almacen` (
  `numero` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `codigoLetras` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`numero`),
  KEY `CodLetra_idx` (`codigoLetras`),
  CONSTRAINT `CodLetra` FOREIGN KEY (`codigoLetras`) REFERENCES `Estante` (`CodigoLetras`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Almacen`
--

LOCK TABLES `Almacen` WRITE;
/*!40000 ALTER TABLE `Almacen` DISABLE KEYS */;
INSERT INTO `Almacen` VALUES (1,'Nevera1','Es una nevera','AAA1'),(2,'Congelador1','Es un congelador','AAB1'),(3,'Armario1','Es un armario','AAC1'),(4,'Armario2','Es como armario1 pero 2','AAC2'),(5,'Nevera2','Es como nevera1 pero 2','AAA2'),(6,'Congelador2','Es como congelador1 pero 2','AAB2'),(7,'Estante1','Es un estante','AAD1'),(8,'Congelador3','Es como congelador1 y congelador2 pero 3','AAB3'),(9,'Armario3','Es como armario1 y armario2 pero 3','AAC3'),(10,'Estante2','Es como estante1 pero 2','AAD2');
/*!40000 ALTER TABLE `Almacen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cocinero`
--

DROP TABLE IF EXISTS `Cocinero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cocinero` (
  `DNI` varchar(9) NOT NULL,
  `AnosServico` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DNI`),
  CONSTRAINT `trabajoCocinero` FOREIGN KEY (`DNI`) REFERENCES `Empleado` (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cocinero`
--

LOCK TABLES `Cocinero` WRITE;
/*!40000 ALTER TABLE `Cocinero` DISABLE KEYS */;
INSERT INTO `Cocinero` VALUES ('05655542A','25'),('12345678F','10');
/*!40000 ALTER TABLE `Cocinero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Empleado`
--

DROP TABLE IF EXISTS `Empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Empleado` (
  `DNI` varchar(9) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `Apellidos` varchar(100) DEFAULT NULL,
  `NumeroSS` int DEFAULT NULL,
  `TelFijo` varchar(15) DEFAULT NULL,
  `Movil` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empleado`
--

LOCK TABLES `Empleado` WRITE;
/*!40000 ALTER TABLE `Empleado` DISABLE KEYS */;
INSERT INTO `Empleado` VALUES ('05655542A','Jesica','Meseguer',577709367,'123456789','652 14 19 48'),('12345678F','Jordi',' Ribellas Ramos',2367568,'123456789','676 28 63 99'),('25463020L','Maria Laura','Moro',525426381,'123456789','617 24 01 56'),('36584485H','Rachid','Valera',577846898,'123456789','640 06 88 08'),('49251605A','Brahim','Castells',261386950,'123456789','752 43 65 70'),('68705651M','Julian','Soriano',501217218,'123456789','737 15 40 02'),('79328612W','Vera','Tortosa',303137385,'123456789','666 09 83 67'),('84763082D','Pedro Javier','Rodriguez',387036266,'123456789','631 87 96 69'),('89884889S','Jose Rafael','Hidalgo',520981398,'123456789','616 96 21 21'),('98450589D','Lúcia','Tejero',531989958,'123456789','612 05 23 34');
/*!40000 ALTER TABLE `Empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Entrante`
--

DROP TABLE IF EXISTS `Entrante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Entrante` (
  `IDPlato` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Precio` double DEFAULT NULL,
  PRIMARY KEY (`IDPlato`),
  CONSTRAINT `Plato0` FOREIGN KEY (`IDPlato`) REFERENCES `Plato` (`idPlato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Entrante`
--

LOCK TABLES `Entrante` WRITE;
/*!40000 ALTER TABLE `Entrante` DISABLE KEYS */;
INSERT INTO `Entrante` VALUES (1,'Ensalada',2),(2,'Gazpacho',2.5),(3,'Zumo',1);
/*!40000 ALTER TABLE `Entrante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Estante`
--

DROP TABLE IF EXISTS `Estante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Estante` (
  `CodigoLetras` varchar(5) NOT NULL,
  `Tamano` double DEFAULT NULL,
  PRIMARY KEY (`CodigoLetras`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Estante`
--

LOCK TABLES `Estante` WRITE;
/*!40000 ALTER TABLE `Estante` DISABLE KEYS */;
INSERT INTO `Estante` VALUES ('AAA1',10.5),('AAA2',7),('AAB1',2.5),('AAB2',10),('AAB3',6.4),('AAC1',3.5),('AAC2',6),('AAC3',20.5),('AAD1',5.2),('AAD2',30);
/*!40000 ALTER TABLE `Estante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ingredientes`
--

DROP TABLE IF EXISTS `Ingredientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ingredientes` (
  `idIngredientes` int NOT NULL,
  `Cantidad` int DEFAULT NULL,
  PRIMARY KEY (`idIngredientes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ingredientes`
--

LOCK TABLES `Ingredientes` WRITE;
/*!40000 ALTER TABLE `Ingredientes` DISABLE KEYS */;
INSERT INTO `Ingredientes` VALUES (1,15),(2,10),(3,12),(4,60),(5,30),(6,10),(7,4),(8,6),(9,9),(10,20);
/*!40000 ALTER TABLE `Ingredientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pinche`
--

DROP TABLE IF EXISTS `Pinche`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pinche` (
  `DNI` varchar(9) NOT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `cocinero` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`DNI`),
  KEY `cocinero_idx` (`cocinero`),
  CONSTRAINT `Jefe` FOREIGN KEY (`cocinero`) REFERENCES `Cocinero` (`DNI`),
  CONSTRAINT `trabajoPinche` FOREIGN KEY (`DNI`) REFERENCES `Empleado` (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pinche`
--

LOCK TABLES `Pinche` WRITE;
/*!40000 ALTER TABLE `Pinche` DISABLE KEYS */;
INSERT INTO `Pinche` VALUES ('25463020L','2000-10-10','05655542A'),('36584485H','1997-05-20','05655542A');
/*!40000 ALTER TABLE `Pinche` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Plato`
--

DROP TABLE IF EXISTS `Plato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Plato` (
  `idPlato` int NOT NULL,
  PRIMARY KEY (`idPlato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Plato`
--

LOCK TABLES `Plato` WRITE;
/*!40000 ALTER TABLE `Plato` DISABLE KEYS */;
INSERT INTO `Plato` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10);
/*!40000 ALTER TABLE `Plato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Postre`
--

DROP TABLE IF EXISTS `Postre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Postre` (
  `IDPlato` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Precio` double DEFAULT NULL,
  PRIMARY KEY (`IDPlato`),
  CONSTRAINT `Plato3` FOREIGN KEY (`IDPlato`) REFERENCES `Plato` (`idPlato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Postre`
--

LOCK TABLES `Postre` WRITE;
/*!40000 ALTER TABLE `Postre` DISABLE KEYS */;
INSERT INTO `Postre` VALUES (9,'Flan',1.5),(10,'Helado',1.5);
/*!40000 ALTER TABLE `Postre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PrimerPlato`
--

DROP TABLE IF EXISTS `PrimerPlato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PrimerPlato` (
  `IDPlato` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Precio` double DEFAULT NULL,
  PRIMARY KEY (`IDPlato`),
  CONSTRAINT `Plato1` FOREIGN KEY (`IDPlato`) REFERENCES `Plato` (`idPlato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PrimerPlato`
--

LOCK TABLES `PrimerPlato` WRITE;
/*!40000 ALTER TABLE `PrimerPlato` DISABLE KEYS */;
INSERT INTO `PrimerPlato` VALUES (4,'Macarrones',3.65),(5,'Fideua',5.82),(6,'Espaguetis a la carbonara',4);
/*!40000 ALTER TABLE `PrimerPlato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PuedePreparar`
--

DROP TABLE IF EXISTS `PuedePreparar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PuedePreparar` (
  `DNI` varchar(9) NOT NULL,
  `IDPlato` int NOT NULL,
  PRIMARY KEY (`DNI`,`IDPlato`),
  KEY `cocinero_idx` (`DNI`),
  KEY `plato_idx` (`IDPlato`),
  CONSTRAINT `cocinero` FOREIGN KEY (`DNI`) REFERENCES `Cocinero` (`DNI`),
  CONSTRAINT `plato` FOREIGN KEY (`IDPlato`) REFERENCES `Plato` (`idPlato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PuedePreparar`
--

LOCK TABLES `PuedePreparar` WRITE;
/*!40000 ALTER TABLE `PuedePreparar` DISABLE KEYS */;
INSERT INTO `PuedePreparar` VALUES ('05655542A',1),('05655542A',2),('05655542A',3),('05655542A',4),('05655542A',5),('12345678F',6),('12345678F',7),('12345678F',8),('12345678F',9),('12345678F',10);
/*!40000 ALTER TABLE `PuedePreparar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SeAlmacena`
--

DROP TABLE IF EXISTS `SeAlmacena`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SeAlmacena` (
  `Almacen` int NOT NULL,
  `CodLetras` varchar(5) NOT NULL,
  `IDIngrediente` int NOT NULL,
  PRIMARY KEY (`Almacen`,`CodLetras`,`IDIngrediente`),
  KEY `almacen_idx` (`Almacen`),
  KEY `estante_idx` (`CodLetras`),
  KEY `ingredientes_idx` (`IDIngrediente`),
  CONSTRAINT `almacen` FOREIGN KEY (`Almacen`) REFERENCES `Almacen` (`numero`),
  CONSTRAINT `estante` FOREIGN KEY (`CodLetras`) REFERENCES `Estante` (`CodigoLetras`),
  CONSTRAINT `ingredientes` FOREIGN KEY (`IDIngrediente`) REFERENCES `Ingredientes` (`idIngredientes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SeAlmacena`
--

LOCK TABLES `SeAlmacena` WRITE;
/*!40000 ALTER TABLE `SeAlmacena` DISABLE KEYS */;
INSERT INTO `SeAlmacena` VALUES (1,'AAA1',1),(2,'AAA2',2),(3,'AAB1',3),(4,'AAB2',4),(5,'AAB3',5),(6,'AAC1',6),(7,'AAC2',7),(8,'AAC3',8),(9,'AAD1',9),(10,'AAD2',10);
/*!40000 ALTER TABLE `SeAlmacena` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SegundoPlato`
--

DROP TABLE IF EXISTS `SegundoPlato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SegundoPlato` (
  `IDPlato` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Precio` double DEFAULT NULL,
  PRIMARY KEY (`IDPlato`),
  CONSTRAINT `Plato2` FOREIGN KEY (`IDPlato`) REFERENCES `Plato` (`idPlato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SegundoPlato`
--

LOCK TABLES `SegundoPlato` WRITE;
/*!40000 ALTER TABLE `SegundoPlato` DISABLE KEYS */;
INSERT INTO `SegundoPlato` VALUES (7,'Rabo de toro',15),(8,'Solomillo',10);
/*!40000 ALTER TABLE `SegundoPlato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tiene`
--

DROP TABLE IF EXISTS `Tiene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tiene` (
  `IDPlato` int NOT NULL,
  `IDIngrediente` int NOT NULL,
  PRIMARY KEY (`IDPlato`,`IDIngrediente`),
  KEY `IDPlato_idx` (`IDPlato`),
  KEY `Ingrediente_idx` (`IDIngrediente`),
  CONSTRAINT `IDPlato` FOREIGN KEY (`IDPlato`) REFERENCES `Plato` (`idPlato`),
  CONSTRAINT `Ingrediente` FOREIGN KEY (`IDIngrediente`) REFERENCES `Ingredientes` (`idIngredientes`)
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-31 11:47:58
