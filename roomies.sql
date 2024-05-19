-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: roomies
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `busqueda`
--

DROP TABLE IF EXISTS `busqueda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `busqueda` (
  `ID_busqueda` int NOT NULL AUTO_INCREMENT,
  `criterios` varchar(500) DEFAULT NULL,
  `id_busqueda_usuario` int NOT NULL,
  PRIMARY KEY (`ID_busqueda`),
  KEY `id_busqueda_usuario_idx` (`id_busqueda_usuario`),
  CONSTRAINT `id_busqueda_usuario` FOREIGN KEY (`id_busqueda_usuario`) REFERENCES `usuarios` (`ID_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentario` (
  `id_comentario` int NOT NULL,
  `contenido` varchar(255) NOT NULL,
  `calificacion` int NOT NULL,
  `id_usuario` int NOT NULL,
  `id_propiedades_comentario` int DEFAULT NULL,
  PRIMARY KEY (`id_comentario`),
  KEY `id_usuario_idx` (`id_usuario`),
  KEY `fk_id_propiedades` (`id_propiedades_comentario`),
  CONSTRAINT `fk_id_propiedades` FOREIGN KEY (`id_propiedades_comentario`) REFERENCES `propiedades` (`ID_propiedades`),
  CONSTRAINT `id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`ID_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `propiedades`
--

DROP TABLE IF EXISTS `propiedades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `propiedades` (
  `ID_propiedades` int NOT NULL AUTO_INCREMENT,
  `ubicacion` varchar(45) DEFAULT NULL,
  `precio` int DEFAULT NULL,
  `tipo_de_propiedad` char(45) DEFAULT NULL,
  `caracteristicas` varchar(100) DEFAULT NULL,
  `id_usuario_propiedades` int NOT NULL,
  `id_comentario_propiedades` int NOT NULL,
  `id_busqueda_propiedades` int NOT NULL,
  PRIMARY KEY (`ID_propiedades`),
  KEY `id_usuario_propiedades_idx` (`id_usuario_propiedades`),
  KEY `id_comentario_propiedades_idx` (`id_comentario_propiedades`),
  KEY `fk_id_busqueda_propiedades` (`id_busqueda_propiedades`),
  CONSTRAINT `fk_id_busqueda_propiedades` FOREIGN KEY (`id_busqueda_propiedades`) REFERENCES `busqueda` (`ID_busqueda`),
  CONSTRAINT `id_comentario_propiedades` FOREIGN KEY (`id_comentario_propiedades`) REFERENCES `comentario` (`id_comentario`),
  CONSTRAINT `id_usuario_propiedades` FOREIGN KEY (`id_usuario_propiedades`) REFERENCES `usuarios` (`ID_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reglas`
--

DROP TABLE IF EXISTS `reglas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reglas` (
  `ID_reglas` int NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(100) DEFAULT NULL,
  `id_propiedades_reglas` int NOT NULL,
  `id_busqueda_reglas` int NOT NULL,
  `id_usuario_reglas` int NOT NULL,
  PRIMARY KEY (`ID_reglas`),
  KEY `id_propiedades_reglas_idx` (`id_propiedades_reglas`),
  KEY `fk_id_busqueda_reglas` (`id_busqueda_reglas`),
  KEY `fk_usuario_reglas` (`id_usuario_reglas`),
  CONSTRAINT `fk_id_busqueda_reglas` FOREIGN KEY (`id_busqueda_reglas`) REFERENCES `busqueda` (`ID_busqueda`),
  CONSTRAINT `fk_usuario_reglas` FOREIGN KEY (`id_usuario_reglas`) REFERENCES `usuarios` (`ID_usuario`),
  CONSTRAINT `id_propiedades_reglas` FOREIGN KEY (`id_propiedades_reglas`) REFERENCES `propiedades` (`ID_propiedades`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `ID_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `edad` int NOT NULL,
  `ocupacion` varchar(45) NOT NULL,
  `contraseña` varchar(45) NOT NULL,
  `estilo_de_vida` varchar(300) NOT NULL,
  `tipo` int NOT NULL,
  `genero` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_usuario`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-05 16:06:08
