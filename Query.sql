-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: quiniela
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `competicion`
--

DROP TABLE IF EXISTS `competicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `competicion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  `multimedia` varchar(256) DEFAULT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competicion`
--

LOCK TABLES `competicion` WRITE;
/*!40000 ALTER TABLE `competicion` DISABLE KEYS */;
INSERT INTO `competicion` VALUES (1,'QATAR 2022','assets/images/qatar.png','Activo');
/*!40000 ALTER TABLE `competicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuracionfase`
--

DROP TABLE IF EXISTS `configuracionfase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuracionfase` (
  `id` int NOT NULL AUTO_INCREMENT,
  `aciertoResultado` int NOT NULL,
  `aciertoGanador` int NOT NULL,
  `aciertoPreguntas` int NOT NULL,
  `fechaMaxRespuesta` varchar(64) DEFAULT NULL,
  `idQuiniela` int NOT NULL,
  `idFase` int NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idFase` (`idFase`),
  CONSTRAINT `configuracionfase_ibfk_1` FOREIGN KEY (`idFase`) REFERENCES `fases` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuracionfase`
--

LOCK TABLES `configuracionfase` WRITE;
/*!40000 ALTER TABLE `configuracionfase` DISABLE KEYS */;
INSERT INTO `configuracionfase` VALUES (1,15,5,0,'2022-11-19T23:59',1,1,'Activo'),(2,15,5,0,'2022-11-19T23:59',1,2,'Activo'),(3,15,5,0,'2022-11-19T23:59',1,3,'Activo'),(4,15,5,0,'2022-11-19T23:59',1,4,'Activo'),(5,15,5,0,'2022-11-19T23:59',1,5,'Activo'),(6,15,5,0,'2022-11-19T23:59',1,6,'Activo'),(7,15,5,0,'2022-11-19T23:59',1,7,'Activo'),(8,15,5,0,'2022-11-19T23:59',1,8,'Activo');
/*!40000 ALTER TABLE `configuracionfase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipos`
--

DROP TABLE IF EXISTS `equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `equipo` varchar(256) NOT NULL,
  `logo` varchar(256) DEFAULT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipos`
--

LOCK TABLES `equipos` WRITE;
/*!40000 ALTER TABLE `equipos` DISABLE KEYS */;
INSERT INTO `equipos` VALUES (1,'CATAR','https://www.countries-ofthe-world.com/flags-normal/flag-of-Qatar.png','Activo'),(2,'ECUADOR','https://www.countries-ofthe-world.com/flags-normal/flag-of-Ecuador.png','Activo'),(3,'SENEGAL','https://www.countries-ofthe-world.com/flags-normal/flag-of-Senegal.png','Activo'),(4,'PAISES BAJOS','https://www.countries-ofthe-world.com/flags-normal/flag-of-Netherlands.png','Activo'),(5,'INGLATERRA','https://cdn-icons-png.flaticon.com/128/4060/4060233.png','Activo'),(6,'IRÁN','https://www.countries-ofthe-world.com/flags-normal/flag-of-Iran.png','Activo'),(7,'ESTADOS UNIDOS','https://www.countries-ofthe-world.com/flags-normal/flag-of-United-States-of-America.png','Activo'),(8,'GALES','https://cdn-icons-png.flaticon.com/128/330/330671.png','Activo'),(9,'ARGENTINA','https://www.countries-ofthe-world.com/flags-normal/flag-of-Argentina.png','Activo'),(10,'ARABIA SAUDITA','https://www.countries-ofthe-world.com/flags-normal/flag-of-Saudi-Arabia.png','Activo'),(11,'MÉXICO','https://www.countries-ofthe-world.com/flags-normal/flag-of-Mexico.png','Activo'),(12,'POLONIA','https://www.countries-ofthe-world.com/flags-normal/flag-of-Poland.png','Activo'),(13,'FRANCIA','https://www.countries-ofthe-world.com/flags-normal/flag-of-France.png','Activo'),(14,'AUSTRALIA','https://www.countries-ofthe-world.com/flags-normal/flag-of-Australia.png','Activo'),(15,'DINAMARCA','https://www.countries-ofthe-world.com/flags-normal/flag-of-Denmark.png','Activo'),(16,'TÚNEZ','https://www.countries-ofthe-world.com/flags-normal/flag-of-Tunisia.png','Activo'),(17,'ESPAÑA','https://www.countries-ofthe-world.com/flags-normal/flag-of-Spain.png','Activo'),(18,'COSTA RICA','https://www.countries-ofthe-world.com/flags-normal/flag-of-Costa-Rica.png','Activo'),(19,'ALEMANIA','https://www.countries-ofthe-world.com/flags-normal/flag-of-Germany.png','Activo'),(20,'JAPÓN','https://www.countries-ofthe-world.com/flags-normal/flag-of-Japan.png','Activo'),(21,'BÉLGICA','https://www.countries-ofthe-world.com/flags-normal/flag-of-Belgium.png','Activo'),(22,'CANADÁ','https://www.countries-ofthe-world.com/flags-normal/flag-of-Canada.png','Activo'),(23,'MARRUECOS','https://www.countries-ofthe-world.com/flags-normal/flag-of-Morocco.png','Activo'),(24,'CROACIA','https://www.countries-ofthe-world.com/flags-normal/flag-of-Croatia.png','Activo'),(25,'BRASIL','https://www.countries-ofthe-world.com/flags-normal/flag-of-Brazil.png','Activo'),(26,'SERBIA','https://www.countries-ofthe-world.com/flags-normal/flag-of-Serbia.png','Activo'),(27,'SUIZA','https://www.countries-ofthe-world.com/flags-normal/flag-of-Switzerland.png','Activo'),(28,'CAMERÚN','https://www.countries-ofthe-world.com/flags-normal/flag-of-Cameroon.png','Activo'),(29,'PORTUGAL','https://www.countries-ofthe-world.com/flags-normal/flag-of-Portugal.png','Activo'),(30,'GHANA','https://www.countries-ofthe-world.com/flags-normal/flag-of-Ghana.png','Activo'),(31,'URUGUAY','https://www.countries-ofthe-world.com/flags-normal/flag-of-Uruguay.png','Activo'),(32,'COREA DEL SUR','https://www.countries-ofthe-world.com/flags-normal/flag-of-Korea-South.png','Activo');
/*!40000 ALTER TABLE `equipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fases`
--

DROP TABLE IF EXISTS `fases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fases` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  `modoGrupo` tinyint(1) NOT NULL,
  `idCompeticion` int NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idCompeticion` (`idCompeticion`),
  CONSTRAINT `fases_ibfk_1` FOREIGN KEY (`idCompeticion`) REFERENCES `competicion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fases`
--

LOCK TABLES `fases` WRITE;
/*!40000 ALTER TABLE `fases` DISABLE KEYS */;
INSERT INTO `fases` VALUES (1,'GRUPO A',1,1,'Activo'),(2,'GRUPO B',1,1,'Activo'),(3,'GRUPO C',1,1,'Activo'),(4,'GRUPO D',1,1,'Activo'),(5,'GRUPO E',1,1,'Activo'),(6,'GRUPO F',1,1,'Activo'),(7,'GRUPO G',1,1,'Activo'),(8,'GRUPO H',1,1,'Activo');
/*!40000 ALTER TABLE `fases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participantes`
--

DROP TABLE IF EXISTS `participantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participantes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  `multimedia` varchar(256) DEFAULT NULL,
  `correo` varchar(256) DEFAULT NULL,
  `codigo` varchar(256) NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participantes`
--

LOCK TABLES `participantes` WRITE;
/*!40000 ALTER TABLE `participantes` DISABLE KEYS */;
INSERT INTO `participantes` VALUES (1,'LUIS GUZMAN',NULL,'luis.guzman@datumredsoft.com','LU0001','Activo'),(2,'DANIEL RODRIGUEZ',NULL,'daniel.rodriguez@datumredsoft.com','DA0002','Premium');
/*!40000 ALTER TABLE `participantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partidos`
--

DROP TABLE IF EXISTS `partidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partidos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idFase` int NOT NULL,
  `fechaHora` varchar(256) DEFAULT NULL,
  `idEquipoLocal` int NOT NULL,
  `marcadorLocal` int DEFAULT NULL,
  `idEquipoVisitante` int NOT NULL,
  `marcadorVisitante` int DEFAULT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idFase` (`idFase`),
  KEY `idEquipoLocal` (`idEquipoLocal`),
  KEY `idEquipoVisitante` (`idEquipoVisitante`),
  CONSTRAINT `partidos_ibfk_1` FOREIGN KEY (`idFase`) REFERENCES `fases` (`id`),
  CONSTRAINT `partidos_ibfk_2` FOREIGN KEY (`idEquipoLocal`) REFERENCES `equipos` (`id`),
  CONSTRAINT `partidos_ibfk_3` FOREIGN KEY (`idEquipoVisitante`) REFERENCES `equipos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partidos`
--

LOCK TABLES `partidos` WRITE;
/*!40000 ALTER TABLE `partidos` DISABLE KEYS */;
INSERT INTO `partidos` VALUES (1,1,NULL,1,NULL,2,NULL,'Activo'),(2,1,NULL,3,NULL,4,NULL,'Activo'),(3,1,NULL,1,NULL,3,NULL,'Activo'),(4,1,NULL,4,NULL,2,NULL,'Activo'),(5,1,NULL,4,NULL,1,NULL,'Activo'),(6,1,NULL,2,NULL,3,NULL,'Activo'),(7,2,NULL,5,NULL,6,NULL,'Activo'),(8,2,NULL,7,NULL,8,NULL,'Activo'),(9,2,NULL,8,NULL,6,NULL,'Activo'),(10,2,NULL,5,NULL,7,NULL,'Activo'),(11,2,NULL,8,NULL,5,NULL,'Activo'),(12,2,NULL,6,NULL,7,NULL,'Activo'),(13,3,NULL,9,NULL,10,NULL,'Activo'),(14,3,NULL,11,NULL,12,NULL,'Activo'),(15,3,NULL,12,NULL,10,NULL,'Activo'),(16,3,NULL,9,NULL,11,NULL,'Activo'),(17,3,NULL,12,NULL,9,NULL,'Activo'),(18,3,NULL,10,NULL,11,NULL,'Activo'),(20,4,NULL,15,NULL,16,NULL,'Activo'),(21,4,NULL,13,NULL,14,NULL,'Activo'),(22,4,NULL,16,NULL,14,NULL,'Activo'),(23,4,NULL,13,NULL,15,NULL,'Activo'),(24,4,NULL,16,NULL,13,NULL,'Activo'),(25,4,NULL,14,NULL,15,NULL,'Activo'),(26,5,NULL,19,NULL,20,NULL,'Activo'),(27,5,NULL,17,NULL,18,NULL,'Activo'),(28,5,NULL,20,NULL,18,NULL,'Activo'),(29,5,NULL,17,NULL,19,NULL,'Activo'),(30,5,NULL,20,NULL,17,NULL,'Activo'),(31,5,NULL,18,NULL,19,NULL,'Activo'),(32,6,NULL,23,NULL,24,NULL,'Activo'),(33,6,NULL,21,NULL,22,NULL,'Activo'),(34,6,NULL,21,NULL,23,NULL,'Activo'),(35,6,NULL,24,NULL,22,NULL,'Activo'),(36,6,NULL,24,NULL,21,NULL,'Activo'),(37,6,NULL,22,NULL,23,NULL,'Activo'),(38,7,NULL,27,NULL,28,NULL,'Activo'),(39,7,NULL,25,NULL,26,NULL,'Activo'),(40,7,NULL,28,NULL,26,NULL,'Activo'),(41,7,NULL,25,NULL,27,NULL,'Activo'),(42,7,NULL,28,NULL,25,NULL,'Activo'),(43,7,NULL,26,NULL,27,NULL,'Activo'),(44,8,NULL,31,NULL,32,NULL,'Activo'),(45,8,NULL,29,NULL,30,NULL,'Activo'),(46,8,NULL,32,NULL,30,NULL,'Activo'),(47,8,NULL,29,NULL,31,NULL,'Activo'),(48,8,NULL,32,NULL,29,NULL,'Activo'),(49,8,NULL,30,NULL,31,NULL,'Activo');
/*!40000 ALTER TABLE `partidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preguntas`
--

DROP TABLE IF EXISTS `preguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preguntas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idConfiguracionFase` int NOT NULL,
  `pregunta` varchar(256) NOT NULL,
  `puntos` int NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idConfiguracionFase` (`idConfiguracionFase`),
  CONSTRAINT `preguntas_ibfk_1` FOREIGN KEY (`idConfiguracionFase`) REFERENCES `configuracionfase` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preguntas`
--

LOCK TABLES `preguntas` WRITE;
/*!40000 ALTER TABLE `preguntas` DISABLE KEYS */;
/*!40000 ALTER TABLE `preguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `premios`
--

DROP TABLE IF EXISTS `premios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idQuiniela` int NOT NULL,
  `titulo` varchar(256) NOT NULL,
  `descripcion` varchar(256) DEFAULT NULL,
  `multimedia` varchar(256) DEFAULT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idQuiniela` (`idQuiniela`),
  CONSTRAINT `premios_ibfk_1` FOREIGN KEY (`idQuiniela`) REFERENCES `quinielas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `premios`
--

LOCK TABLES `premios` WRITE;
/*!40000 ALTER TABLE `premios` DISABLE KEYS */;
/*!40000 ALTER TABLE `premios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quinielaparticipante`
--

DROP TABLE IF EXISTS `quinielaparticipante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quinielaparticipante` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idQuiniela` int NOT NULL,
  `idParticipante` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idQuiniela` (`idQuiniela`),
  KEY `idParticipante` (`idParticipante`),
  CONSTRAINT `quinielaparticipante_ibfk_1` FOREIGN KEY (`idQuiniela`) REFERENCES `quinielas` (`id`),
  CONSTRAINT `quinielaparticipante_ibfk_2` FOREIGN KEY (`idParticipante`) REFERENCES `participantes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quinielaparticipante`
--

LOCK TABLES `quinielaparticipante` WRITE;
/*!40000 ALTER TABLE `quinielaparticipante` DISABLE KEYS */;
INSERT INTO `quinielaparticipante` VALUES (1,1,1);
/*!40000 ALTER TABLE `quinielaparticipante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quinielas`
--

DROP TABLE IF EXISTS `quinielas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quinielas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(256) NOT NULL,
  `codigo` varchar(256) NOT NULL,
  `idCompeticion` int NOT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idCompeticion` (`idCompeticion`),
  CONSTRAINT `quinielas_ibfk_1` FOREIGN KEY (`idCompeticion`) REFERENCES `competicion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quinielas`
--

LOCK TABLES `quinielas` WRITE;
/*!40000 ALTER TABLE `quinielas` DISABLE KEYS */;
INSERT INTO `quinielas` VALUES (1,'QATAR 2022','QUI0000',1,'Activo');
/*!40000 ALTER TABLE `quinielas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respuestas`
--

DROP TABLE IF EXISTS `respuestas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `respuestas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idPregunta` int NOT NULL,
  `respuesta` varchar(256) NOT NULL,
  `correcta` tinyint(1) DEFAULT NULL,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idPregunta` (`idPregunta`),
  CONSTRAINT `respuestas_ibfk_1` FOREIGN KEY (`idPregunta`) REFERENCES `preguntas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respuestas`
--

LOCK TABLES `respuestas` WRITE;
/*!40000 ALTER TABLE `respuestas` DISABLE KEYS */;
/*!40000 ALTER TABLE `respuestas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resultadopreguntas`
--

DROP TABLE IF EXISTS `resultadopreguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resultadopreguntas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idRespuesta` int NOT NULL,
  `idQuinielaParticipante` int NOT NULL,
  `estado` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idRespuesta` (`idRespuesta`),
  KEY `idQuinielaParticipante` (`idQuinielaParticipante`),
  CONSTRAINT `resultadopreguntas_ibfk_1` FOREIGN KEY (`idRespuesta`) REFERENCES `respuestas` (`id`),
  CONSTRAINT `resultadopreguntas_ibfk_2` FOREIGN KEY (`idQuinielaParticipante`) REFERENCES `quinielaparticipante` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultadopreguntas`
--

LOCK TABLES `resultadopreguntas` WRITE;
/*!40000 ALTER TABLE `resultadopreguntas` DISABLE KEYS */;
/*!40000 ALTER TABLE `resultadopreguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resultadospartidos`
--

DROP TABLE IF EXISTS `resultadospartidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resultadospartidos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idPartido` int NOT NULL,
  `idQuinielaParticipante` int NOT NULL,
  `marcadorCasa` int DEFAULT NULL,
  `marcadorVisitante` int DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idPartido` (`idPartido`),
  KEY `idQuinielaParticipante` (`idQuinielaParticipante`),
  CONSTRAINT `resultadospartidos_ibfk_1` FOREIGN KEY (`idPartido`) REFERENCES `partidos` (`id`),
  CONSTRAINT `resultadospartidos_ibfk_2` FOREIGN KEY (`idQuinielaParticipante`) REFERENCES `quinielaparticipante` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultadospartidos`
--

LOCK TABLES `resultadospartidos` WRITE;
/*!40000 ALTER TABLE `resultadospartidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `resultadospartidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-16 23:05:14
