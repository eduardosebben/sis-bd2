-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: db_app_db2
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `livros`
--

DROP TABLE IF EXISTS `livros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livros` (
  `Cod_Livro` int NOT NULL AUTO_INCREMENT,
  `Des_Titulo` varchar(50) DEFAULT NULL,
  `Cod_Classificacao` varchar(50) DEFAULT NULL,
  `Dta_Criacao` datetime(6) DEFAULT NULL,
  `Cod_Autor` int DEFAULT NULL,
  `Cod_Editora` int DEFAULT NULL,
  PRIMARY KEY (`Cod_Livro`),
  KEY `Livros_Cod_Autor_idx` (`Cod_Autor`),
  KEY `Livros_Cod_Editora_idx` (`Cod_Editora`),
  CONSTRAINT `Livros_Cod_Autor` FOREIGN KEY (`Cod_Autor`) REFERENCES `autores` (`Cod_autor`),
  CONSTRAINT `Livros_Cod_Editora` FOREIGN KEY (`Cod_Editora`) REFERENCES `editora` (`Cod_editora`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livros`
--

LOCK TABLES `livros` WRITE;
/*!40000 ALTER TABLE `livros` DISABLE KEYS */;
INSERT INTO `livros` VALUES (1,'Contos de PI','Aventura','1995-01-01 00:00:00.000000',1,1),(2,'Harry Potter','Aventura','1997-07-01 00:00:00.000000',3,4),(3,'It a Coisa','Terror','1986-01-01 00:00:00.000000',4,5),(4,'A hora do lobisomen','Terror','1983-01-01 00:00:00.000000',4,5),(5,'A sutil arte de ligar o Foda-se','Motivacional','2017-01-01 00:00:00.000000',5,2);
/*!40000 ALTER TABLE `livros` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-11 16:06:10
