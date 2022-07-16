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
-- Table structure for table `autores`
--

DROP TABLE IF EXISTS `autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autores` (
  `Cod_autor` int NOT NULL AUTO_INCREMENT,
  `Des_autor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Cod_autor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` VALUES (1,'eduardo sebben'),(2,'ezra miller'),(3,'j.k. Rowlling'),(4,'stephen king'),(5,'Bob Jenkins');
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `editora`
--

DROP TABLE IF EXISTS `editora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editora` (
  `Cod_editora` int NOT NULL AUTO_INCREMENT,
  `Des_editora` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Cod_editora`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editora`
--

LOCK TABLES `editora` WRITE;
/*!40000 ALTER TABLE `editora` DISABLE KEYS */;
INSERT INTO `editora` VALUES (1,'Pandorga'),(2,'Dark Side'),(3,'Tempo'),(4,'Suma'),(5,'Rocco');
/*!40000 ALTER TABLE `editora` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `MINHAS_EDITORAS` AFTER INSERT ON `editora` FOR EACH ROW BEGIN
   CALL editora(NEW.Cod_editora, NEW.Des_editora);
   CALL editora(NEW.Cod_editora, NEW.Des_editora);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `leitores`
--

DROP TABLE IF EXISTS `leitores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leitores` (
  `Cod_leitor` int NOT NULL AUTO_INCREMENT,
  `Des_leitor` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Cod_leitor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leitores`
--

LOCK TABLES `leitores` WRITE;
/*!40000 ALTER TABLE `leitores` DISABLE KEYS */;
INSERT INTO `leitores` VALUES (1,'Eduardo Sebben'),(2,'Pedro Pedreira'),(3,'Carla Cardoso'),(4,'Soraia da Silva'),(5,'Luan da Luz');
/*!40000 ALTER TABLE `leitores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leituras`
--

DROP TABLE IF EXISTS `leituras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leituras` (
  `Cod_Leitura` int NOT NULL AUTO_INCREMENT,
  `Cod_Livro` int NOT NULL,
  `Cod_Leitor` int NOT NULL,
  PRIMARY KEY (`Cod_Leitura`,`Cod_Livro`,`Cod_Leitor`),
  KEY `Leituras_Cod_Livro_idx` (`Cod_Livro`),
  KEY `Leituras_Cod_Leitor` (`Cod_Leitor`),
  CONSTRAINT `Leituras_Cod_Leitor` FOREIGN KEY (`Cod_Leitor`) REFERENCES `leitores` (`Cod_leitor`),
  CONSTRAINT `Leituras_Cod_Livro` FOREIGN KEY (`Cod_Livro`) REFERENCES `livros` (`Cod_Livro`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leituras`
--

LOCK TABLES `leituras` WRITE;
/*!40000 ALTER TABLE `leituras` DISABLE KEYS */;
INSERT INTO `leituras` VALUES (1,1,1),(2,2,2),(3,3,4),(5,3,3),(4,4,5);
/*!40000 ALTER TABLE `leituras` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Temporary view structure for view `quantid_amgs`
--

DROP TABLE IF EXISTS `quantid_amgs`;
/*!50001 DROP VIEW IF EXISTS `quantid_amgs`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `quantid_amgs` AS SELECT 
 1 AS `count(leitor_id1)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `quantidade_amg`
--

DROP TABLE IF EXISTS `quantidade_amg`;
/*!50001 DROP VIEW IF EXISTS `quantidade_amg`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `quantidade_amg` AS SELECT 
 1 AS `count(Cod_Leitor)`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'db_app_db2'
--

--
-- Dumping routines for database 'db_app_db2'
--
/*!50003 DROP FUNCTION IF EXISTS `Inclui_registro_Autor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Inclui_registro_Autor`( Cod_Autor INT, Des_Autor char(100) ) RETURNS char(100) CHARSET utf8mb4
BEGIN
   DECLARE variavel char(100);
   insert into autores values(Cod_Autor,Des_Autor);
   set variavel = 'Sucesso';
   RETURN variavel;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `SOMA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `SOMA`( NUM1 INT, NUM2 INT ) RETURNS int
BEGIN
   RETURN NUM1 + NUM2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `editora` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `editora`( editora INT, descricao CHAR(100))
BEGIN
   INSERT INTO logs( Cod_editora, Des_editora) VALUES( editora, descricao);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p_insere_leitor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p_insere_leitor`(IN Ileitor_id INT, IN Inome VARCHAR(100))
BEGIN
	INSERT INTO leitores (Cod_Leitor, Des_leitor)
    VALUES (Ileitor_id, Inome);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `quantid_amgs`
--

/*!50001 DROP VIEW IF EXISTS `quantid_amgs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `quantid_amgs` AS select 1 AS `count(leitor_id1)` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `quantidade_amg`
--

/*!50001 DROP VIEW IF EXISTS `quantidade_amg`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `quantidade_amg` AS select 1 AS `count(Cod_Leitor)` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-16 20:10:07
