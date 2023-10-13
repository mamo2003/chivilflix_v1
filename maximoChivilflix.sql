-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: trailerflix
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actor` (
  `idactor` int NOT NULL AUTO_INCREMENT,
  `actor` varchar(100) NOT NULL,
  `genero` varchar(20) NOT NULL DEFAULT 'actor',
  PRIMARY KEY (`idactor`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `idcategoria` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(100) NOT NULL,
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `filmogenero`
--

DROP TABLE IF EXISTS `filmogenero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filmogenero` (
  `idfilmogenero` int NOT NULL,
  `genero` varchar(45) NOT NULL,
  PRIMARY KEY (`idfilmogenero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `filmoreparto`
--

DROP TABLE IF EXISTS `filmoreparto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filmoreparto` (
  `idfilmoreparto` int NOT NULL,
  `reparto` varchar(600) NOT NULL,
  PRIMARY KEY (`idfilmoreparto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `filmoteca`
--

DROP TABLE IF EXISTS `filmoteca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filmoteca` (
  `idfilms` int NOT NULL AUTO_INCREMENT,
  `poster` varchar(100) NOT NULL,
  `titulo` varchar(120) NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `genero` varchar(45) NOT NULL,
  `resumen` varchar(1200) NOT NULL,
  `temporada` int DEFAULT NULL,
  `reparto` varchar(500) NOT NULL,
  `trailers` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idfilms`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `filmotecaview`
--

DROP TABLE IF EXISTS `filmotecaview`;
/*!50001 DROP VIEW IF EXISTS `filmotecaview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `filmotecaview` AS SELECT 
 1 AS `idfilms`,
 1 AS `poster`,
 1 AS `titulo`,
 1 AS `categoria`,
 1 AS `genero`,
 1 AS `resumen`,
 1 AS `temporada`,
 1 AS `reparto`,
 1 AS `trailers`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `films`
--

DROP TABLE IF EXISTS `films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `films` (
  `idfilms` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `poster` varchar(150) NOT NULL,
  PRIMARY KEY (`idfilms`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `filmsactricessview`
--

DROP TABLE IF EXISTS `filmsactricessview`;
/*!50001 DROP VIEW IF EXISTS `filmsactricessview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `filmsactricessview` AS SELECT 
 1 AS `idfilms`,
 1 AS `titulo`,
 1 AS `idreparto`,
 1 AS `actrices`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `generalfilms`
--

DROP TABLE IF EXISTS `generalfilms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generalfilms` (
  `idfilms` int NOT NULL AUTO_INCREMENT,
  `idcategoria` int NOT NULL,
  `idfilmogenero` int NOT NULL,
  `idresumen` int NOT NULL,
  `idtemporada` int NOT NULL,
  `idfilmoreparto` int NOT NULL,
  `idtrailers` int NOT NULL,
  `idreparto` int NOT NULL,
  PRIMARY KEY (`idfilms`),
  KEY `idcategoria_idx` (`idcategoria`),
  KEY `idgenero_idx` (`idfilmogenero`),
  KEY `idresumen_idx` (`idresumen`),
  KEY `idtemporada_idx` (`idtemporada`),
  KEY `idreparto_idx` (`idfilmoreparto`),
  KEY `idtrailers_idx` (`idtrailers`,`idfilmoreparto`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `generofilms`
--

DROP TABLE IF EXISTS `generofilms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generofilms` (
  `idgenerofilms` int NOT NULL AUTO_INCREMENT,
  `idgeneros` int NOT NULL,
  `idgenero` int DEFAULT NULL,
  PRIMARY KEY (`idgenerofilms`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `generos`
--

DROP TABLE IF EXISTS `generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generos` (
  `idgenero` int NOT NULL AUTO_INCREMENT,
  `genero` varchar(45) NOT NULL,
  PRIMARY KEY (`idgenero`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reparto`
--

DROP TABLE IF EXISTS `reparto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reparto` (
  `idrepartoactoral` int NOT NULL,
  `idreparto` int NOT NULL,
  `idactor` int NOT NULL,
  PRIMARY KEY (`idrepartoactoral`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `resumenes`
--

DROP TABLE IF EXISTS `resumenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resumenes` (
  `Idresumen` int NOT NULL AUTO_INCREMENT,
  `resumen` varchar(1200) NOT NULL,
  PRIMARY KEY (`Idresumen`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `temporada`
--

DROP TABLE IF EXISTS `temporada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temporada` (
  `idtemporada` int NOT NULL,
  `temporada` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idtemporada`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `trailers`
--

DROP TABLE IF EXISTS `trailers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trailers` (
  `idtrailers` int NOT NULL DEFAULT '0',
  `trailers` varchar(100) NOT NULL,
  PRIMARY KEY (`idtrailers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `trailersgeneroviews`
--

DROP TABLE IF EXISTS `trailersgeneroviews`;
/*!50001 DROP VIEW IF EXISTS `trailersgeneroviews`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `trailersgeneroviews` AS SELECT 
 1 AS `idfilms`,
 1 AS `titulo`,
 1 AS `poster`,
 1 AS `genero`,
 1 AS `trailers`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `filmotecaview`
--

/*!50001 DROP VIEW IF EXISTS `filmotecaview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `filmotecaview` AS select `g`.`idfilms` AS `idfilms`,`f`.`poster` AS `poster`,`f`.`titulo` AS `titulo`,`c`.`categoria` AS `categoria`,`e`.`genero` AS `genero`,`r`.`resumen` AS `resumen`,`t`.`temporada` AS `temporada`,`a`.`reparto` AS `reparto`,`s`.`trailers` AS `trailers` from (((((((`generalfilms` `g` join `films` `f` on((`g`.`idfilms` = `f`.`idfilms`))) join `categorias` `c` on((`g`.`idcategoria` = `c`.`idcategoria`))) join `filmogenero` `e` on((`g`.`idfilmogenero` = `e`.`idfilmogenero`))) join `resumenes` `r` on((`g`.`idresumen` = `r`.`Idresumen`))) join `temporada` `t` on((`g`.`idtemporada` = `t`.`idtemporada`))) join `filmoreparto` `a` on((`g`.`idfilmoreparto` = `a`.`idfilmoreparto`))) join `trailers` `s` on((`g`.`idtrailers` = `s`.`idtrailers`))) order by `g`.`idfilms` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `filmsactricessview`
--

/*!50001 DROP VIEW IF EXISTS `filmsactricessview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `filmsactricessview` AS select `g`.`idfilms` AS `idfilms`,`f`.`titulo` AS `titulo`,`r`.`idreparto` AS `idreparto`,group_concat(`a`.`actor` separator ',') AS `actrices` from (((`generalfilms` `g` join `films` `f` on((`g`.`idfilms` = `f`.`idfilms`))) join `reparto` `r` on((`g`.`idreparto` = `r`.`idreparto`))) join `actor` `a` on((`r`.`idactor` = `a`.`idactor`))) where (`a`.`genero` = 'actriz') group by `g`.`idfilms` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `trailersgeneroviews`
--

/*!50001 DROP VIEW IF EXISTS `trailersgeneroviews`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `trailersgeneroviews` AS select `g`.`idfilms` AS `idfilms`,`f`.`titulo` AS `titulo`,`f`.`poster` AS `poster`,`e`.`genero` AS `genero`,`t`.`trailers` AS `trailers` from (((`generalfilms` `g` join `films` `f` on((`g`.`idfilms` = `f`.`idfilms`))) join `filmogenero` `e` on((`g`.`idfilmogenero` = `e`.`idfilmogenero`))) join `trailers` `t` on((`t`.`idtrailers` = `g`.`idtrailers`))) where (`g`.`idtrailers` > 0) */;
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

-- Dump completed on 2023-10-13 16:24:31
