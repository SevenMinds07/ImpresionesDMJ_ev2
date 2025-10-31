-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: impresionesdmj
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.25-MariaDB

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
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(255) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `estado` enum('ACTIVO','INACTIVO') NOT NULL DEFAULT 'ACTIVO',
  `fecha_creacion` datetime(6) DEFAULT NULL,
  `imagen_url` varchar(255) DEFAULT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` decimal(38,2) NOT NULL,
  `stock` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_productos_categoria` (`categoria`),
  KEY `idx_productos_estado` (`estado`),
  KEY `idx_productos_stock` (`stock`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Papelería','Papel fotográfico brillo, 200g.','ACTIVO','2025-10-31 02:39:05.000000','/uploads/papel_foto.jpg','Papel Fotográfico Premium',5.40,140),(2,'Tinta','Cartucho de tinta negra HP 662.','ACTIVO','2025-10-31 02:39:05.000000','/uploads/hp662_black.jpg','Tinta Negra HP 662',12.99,39),(3,'Servicios','Impresión a color en tamaño A4.','ACTIVO','2025-10-31 02:39:05.000000','/uploads/impresion_a4_color.jpg','Servicio Impresión A4 Color',0.30,9999),(4,'Toner','Toner compatible con Samsung MLT-D111S.','ACTIVO','2025-10-31 02:39:05.000000','/uploads/toner_samsung_d111s.jpg','Cartucho Toner Samsung MLT-D111S',34.90,25),(5,'Servicios','Escaneo de documentos con entrega en PDF.','ACTIVO','2025-10-31 02:39:05.000000','/uploads/escaneo_pdf.jpg','Servicio Escaneo Documentos',0.20,9999),(6,'Papelería','Carpeta tamaño oficio plastificada.','ACTIVO','2025-10-31 02:39:05.000000','/uploads/carpeta_oficio.jpg','Carpeta Oficio Plastificada',1.20,80),(7,'Impresión 3D','Servicio de impresión 3D en PLA por gramo.','ACTIVO','2025-10-31 02:39:05.000000','/uploads/impresion_3d_pla.jpg','Impresión 3D PLA por gramo',0.15,9999),(8,'Papelería','Libreta rayada tamaño A5, 80 hojas.','ACTIVO','2025-10-31 02:39:05.000000','/uploads/libreta_80.jpg','Libreta Rayada 80 hojas',2.40,120),(9,'Tinta','prueba ','ACTIVO','2025-10-31 07:14:35.000000','/uploads/prod_9_1761894875496_2bb29e99c68fbd4d17487ba48fbc5095.jpg','ola',12.99,10);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `estado` enum('ACTIVO','INACTIVO') NOT NULL,
  `fecha_creacion` datetime(6) DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `rol` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKkfsp0s1tflm1cwlj8idhqsad0` (`email`),
  UNIQUE KEY `uq_usuarios_email` (`email`),
  KEY `idx_usuarios_estado` (`estado`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'admin@demo.com','ACTIVO',NULL,'Admin','$2a$10$.d51bXf.5zmOcQ.cMxm7O.PUPYhtHWCT6eooA18qgometz8wtw.fW','ADMINISTRADOR'),(2,'ventas@demo.com','ACTIVO',NULL,'Vendedor','$2a$10$fQaI7ipbv7DGxAhhqcPcwe.tdW/L3E6VERc3Fm5ELBp7XIIe7Jr0G','VENDEDOR'),(3,'cliente@demo.com','ACTIVO',NULL,'Cliente1','$2a$10$zoj35UNyVuKT6h12REXoI.DrJ0dH.1Bj0G.WU.HBm5xvPv.tNV.FO','CLIENTE'),(4,'cachupin@gmail.com','ACTIVO','2025-10-31 06:49:52.000000','CACHUPINN','$2a$10$lu4KODnWQYJjDLfIqPmT4emJlaDr/FV2tW.cbiDNgY1p0wVzITd76','CLIENTE');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-31 12:44:59
