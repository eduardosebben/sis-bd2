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
-- Table structure for table `bibliotecas`
--

DROP TABLE IF EXISTS `bibliotecas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bibliotecas` (
  `Cod_Biblioteca` int NOT NULL AUTO_INCREMENT,
  `Des_Biblioteca` varchar(100) DEFAULT NULL,
  `Cod_Leitor` int DEFAULT NULL,
  `Cod_Editora` int DEFAULT NULL,
  `Cod_Livro` int DEFAULT NULL,
  `Cod_Autor` int DEFAULT NULL,
  PRIMARY KEY (`Cod_Biblioteca`),
  KEY `Cod_autor_idx` (`Cod_Autor`),
  KEY `Cod_editora_idx` (`Cod_Editora`),
  KEY `Cod_Livro_idx` (`Cod_Livro`),
  KEY `Cod_leitor_idx` (`Cod_Leitor`),
  CONSTRAINT `Bibli_Cod_autor` FOREIGN KEY (`Cod_Autor`) REFERENCES `autores` (`Cod_autor`),
  CONSTRAINT `Bibli_Cod_editora` FOREIGN KEY (`Cod_Editora`) REFERENCES `editora` (`Cod_editora`),
  CONSTRAINT `Bibli_Cod_leitor` FOREIGN KEY (`Cod_Leitor`) REFERENCES `leitores` (`Cod_leitor`),
  CONSTRAINT `Bibli_Cod_livro` FOREIGN KEY (`Cod_Livro`) REFERENCES `livros` (`Cod_Livro`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bibliotecas`
--

LOCK TABLES `bibliotecas` WRITE;
/*!40000 ALTER TABLE `bibliotecas` DISABLE KEYS */;
INSERT INTO `bibliotecas` VALUES (1,'Biblioteca de Harvard',1,1,1,1),(2,'Biblioteca Publica de SP',1,1,3,4),(3,'Biblioteca Publica de Farroupilha',2,3,2,2),(4,'Biblioteca Publica de Caxias',3,4,4,3),(5,'Biblioteca Santos dumont',5,5,5,4);
/*!40000 ALTER TABLE `bibliotecas` ENABLE KEYS */;
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
