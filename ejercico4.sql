-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 192.168.1.160    Database: ejercicio10
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
-- Table structure for table `Cajeros`
--

DROP TABLE IF EXISTS `Cajeros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cajeros` (
  `Codigo` int NOT NULL,
  `NomApels` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`Codigo`),
  UNIQUE KEY `Codigo_UNIQUE` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cajeros`
--

LOCK TABLES `Cajeros` WRITE;
/*!40000 ALTER TABLE `Cajeros` DISABLE KEYS */;
INSERT INTO `Cajeros` VALUES (1,'Unai Bustos'),(2,'Lorena Mercado'),(3,'Joel Jimeno'),(4,'Juan Baeza'),(5,'Guadalupe Carrera'),(6,'Angela Soler'),(7,'Victoria del Campo'),(8,'Irene Arroyo'),(9,'Jose Valenzuela'),(10,'Joantan del Pozo');
/*!40000 ALTER TABLE `Cajeros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Maquinas_registradoras`
--

DROP TABLE IF EXISTS `Maquinas_registradoras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Maquinas_registradoras` (
  `Codigo` int NOT NULL,
  `Piso` int DEFAULT NULL,
  PRIMARY KEY (`Codigo`),
  UNIQUE KEY `Codigo_UNIQUE` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Maquinas_registradoras`
--

LOCK TABLES `Maquinas_registradoras` WRITE;
/*!40000 ALTER TABLE `Maquinas_registradoras` DISABLE KEYS */;
INSERT INTO `Maquinas_registradoras` VALUES (1,0),(2,1),(3,2),(4,3),(5,4),(6,5),(7,6),(8,7),(9,8),(10,9);
/*!40000 ALTER TABLE `Maquinas_registradoras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Productos`
--

DROP TABLE IF EXISTS `Productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Productos` (
  `Codigo` int NOT NULL,
  `Nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Precio` int DEFAULT NULL,
  PRIMARY KEY (`Codigo`),
  UNIQUE KEY `Codigo_UNIQUE` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Productos`
--

LOCK TABLES `Productos` WRITE;
/*!40000 ALTER TABLE `Productos` DISABLE KEYS */;
INSERT INTO `Productos` VALUES (1,'oreo',2),(2,'kitkat',2),(3,'lays',2),(4,'pringles',2),(5,'cocacola',1),(6,'nescafe',5),(7,'doritos',2),(8,'fanta',1),(9,'nesquik',2),(10,'dannon',2);
/*!40000 ALTER TABLE `Productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Venta`
--

DROP TABLE IF EXISTS `Venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Venta` (
  `Cajero` int NOT NULL,
  `Maquina` int NOT NULL,
  `Producto` int NOT NULL,
  PRIMARY KEY (`Cajero`,`Maquina`,`Producto`),
  KEY `Maquina1_idx` (`Maquina`),
  KEY `Producto1_idx` (`Producto`),
  CONSTRAINT `Cajero1` FOREIGN KEY (`Cajero`) REFERENCES `Cajeros` (`Codigo`),
  CONSTRAINT `Maquina1` FOREIGN KEY (`Maquina`) REFERENCES `Maquinas_registradoras` (`Codigo`),
  CONSTRAINT `Producto1` FOREIGN KEY (`Producto`) REFERENCES `Productos` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Venta`
--

LOCK TABLES `Venta` WRITE;
/*!40000 ALTER TABLE `Venta` DISABLE KEYS */;
INSERT INTO `Venta` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10);
/*!40000 ALTER TABLE `Venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-31 10:02:52
