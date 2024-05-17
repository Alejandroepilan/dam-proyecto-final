-- MariaDB dump 10.19  Distrib 10.6.16-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: dam_proyecto_navidad
-- ------------------------------------------------------
-- Server version	10.6.16-MariaDB-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ong`
--

DROP TABLE IF EXISTS `ong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ong` (
  `ong_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `logo_url` varchar(200) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`ong_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ong`
--

LOCK TABLES `ong` WRITE;
/*!40000 ALTER TABLE `ong` DISABLE KEYS */;
INSERT INTO `ong` VALUES (1,'Asociación Española Contra el Cáncer',1,14,'Lideramos el esfuerzo de la sociedad española para disminuir el impacto causado por el cáncer y mejorar la vida de las personas.','https://www.contraelcancer.es/themes/aecc_redesign/assets/images/logo-menu.svg','https://www.contraelcancer.es'),(2,'Fundación Solidaria Juegaterapia',1,14,'En Juegaterapia trabajamos por y para los niños enfermos de cáncer utilizando el juego como terapia; les entregamos consolas y videojuegos que la gente nos dona para que \"la quimio jugando se pase volando\" y humanizamos espacios en hospitales para que vivan en un entorno más amigable y acorde a su edad.','https://www.juegaterapia.org/wp-content/themes/split_juegaterapia/assets/img/icons/logotipo.svg','https://www.juegaterapia.org'),(4,'Médicos Sin Fronteras',1,7,'Somos una organización de acción médico-humanitaria: asistimos a personas amenazadas por conflictos armados, violencia, epidemias o enfermedades olvidadas, desastres naturales y exclusión de la atención médica.','https://www.msf.es/themes/custom/msfes/logo.svg','https://www.msf.es'),(5,'Unicef',2,1,'UNICEF trabaja en algunos de los lugares más difíciles para llegar a los niños y adolescentes más desfavorecidos y proteger los derechos de cada infancia en cualquier parte del mundo.','https://upload.wikimedia.org/wikipedia/commons/thumb/e/ed/Logo_of_UNICEF.svg/512px-Logo_of_UNICEF.svg.png','https://www.unicef.es'),(6,'Open Arms',2,14,'Somos una organización no gubernamental y sin ánimo de lucro con una misión principal: proteger en el mar a aquellas personas que intentan llegar a Europa huyendo de conflictos bélicos, persecución o pobreza; y también informar y formar en tierra para conseguir que las personas que migran puedan tomar sus decisiones con total libertad y conocimiento.','https://www.pro-activa.es/wp-content/uploads/2021/09/openarms.png','https://www.openarms.es'),(7,'Accem',2,14,'Somos una organización sin ánimo de lucro, apartidista y aconfesional que trabaja para mejorar las condiciones de vida de las personas en situación de vulnerabilidad. Defendemos la igualdad de derechos, deberes y oportunidades para todas las personas, con independencia de su origen, género, origen nacional o étnico, orientación e identidad sexual, religión, opinión o grupo social.','https://www.accem.es/wp-content/uploads/2017/10/Accem_Logo_home.jpg','https://www.accem.es'),(8,'WWF',3,30,'Somos una organización de la sociedad civil apolítica y basada en la ciencia que trabaja para conservar y restaurar la biodiversidad, la red que sustenta toda la vida en la Tierra; para reducir la huella ecológica de la humanidad; y para asegurar el uso sostenible de los recursos para apoyar a las generaciones actuales y futuras.','https://cdnassets.panda.org/_skins/capetown/img/logo.png','https://www.wwf.es'),(9,'Oceana',3,1,'Oceana, fundada en 2001, es la mayor organización internacional centrada exclusivamente en la conservación de los océanos, la protección de los ecosistemas marinos y las especies marinas amenazadas.','https://oceana.org/wp-content/uploads/sites/18/logo_en_full.png','https://oceana.org'),(10,'Greenpeace',3,5,'Somos una organización ecologista y pacifista internacional, económica y políticamente independiente, que no acepta donaciones ni presiones de gobiernos, partidos políticos o empresas.','https://es.greenpeace.org/es/wp-content/themes/gp/assets/images/greenpeace-logo.svg','https://es.greenpeace.org'),(11,'Asoka el Grande',4,14,'Fundada en el año 2000, Asoka el Grande es una asociación sin ánimo de lucro, legalmente constituida, cuyo objetivo principal es denunciar el abandono y maltrato animal, defender sus derechos y gestionar su adopción.','https://asokaelgrande.org/_mibambu/_asoka/imas/ask_logob.png','https://asokaelgrande.org'),(12,'SEO BirdLife',4,14,'SEO/BirdLife, la Sociedad Española de Ornitología, es la ONG ambiental decana en España. Fundada en 1954, nuestra misión sigue siendo la misma desde entonces: con las aves como bandera, queremos conservar la biodiversidad con la participación e implicación de la sociedad.','https://seo.org/wp-content/uploads/2021/11/logo.png','https://seo.org'),(13,'Asociación Defensa Derechos Animal',4,14,'Fundada en 1976, la Asociación Defensa Derechos Animal, fue la primera ONG española dedicada a la defensa y al bienestar de los animales en general.','https://www.addaong.org/workspace/images/logo.png','https://www.addaong.org'),(14,'Save the Children',5,8,'Somos parte de un movimiento que tiene la oportunidad única de evitar que los niños mueran por causas evitables, que no disfruten de una educación de calidad y que vivan expuestos a la pobreza, la violencia o las emergencias.','https://www.savethechildren.es/themes/custom/stc/logo.png','https://www.savethechildren.es'),(15,'Room to Read',5,1,'Room to Read está creando un mundo libre de analfabetismo y desigualdad de género. Estamos logrando este objetivo ayudando a los niños de comunidades históricamente de bajos ingresos a desarrollar habilidades de alfabetización y un hábito de lectura, y apoyando a las niñas a medida que desarrollan habilidades para tener éxito en la escuela y negociar decisiones clave en la vida.','https://www.roomtoread.org/media/d1ohgobj/rtrlogo.png','https://www.roomtoread.org'),(16,'World Education',5,1,'Somos expertos en desarrollo educativo y creemos que todos tienen derecho a una educación de alta calidad. Nuestro trabajo está impulsado por la creencia de que la educación es una herramienta poderosa para mejorar la calidad de vida y aumentar las oportunidades económicas para las personas en todo el mundo.','https://images.squarespace-cdn.com/content/v1/51b75bdae4b07b03edbde1c5/1441744969034-BO6JQT71HP50FJE4LUUO/worldeducation','https://worlded.org');
/*!40000 ALTER TABLE `ong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ong_country`
--

DROP TABLE IF EXISTS `ong_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ong_country` (
  `ong_country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(2) NOT NULL,
  PRIMARY KEY (`ong_country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ong_country`
--

LOCK TABLES `ong_country` WRITE;
/*!40000 ALTER TABLE `ong_country` DISABLE KEYS */;
INSERT INTO `ong_country` VALUES (1,'Estados Unidos','us'),(5,'Canadá','ca'),(7,'Francia','fr'),(8,'Reino Unido','gb'),(14,'España','es'),(30,'Suiza','ch');
/*!40000 ALTER TABLE `ong_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ong_type`
--

DROP TABLE IF EXISTS `ong_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ong_type` (
  `ong_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `icon` varchar(40) NOT NULL,
  `icon_color` varchar(40) NOT NULL,
  `link` varchar(40) NOT NULL,
  PRIMARY KEY (`ong_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ong_type`
--

LOCK TABLES `ong_type` WRITE;
/*!40000 ALTER TABLE `ong_type` DISABLE KEYS */;
INSERT INTO `ong_type` VALUES (1,'Salud','briefcase-medical','red-500','salud'),(2,'Migrantes','plane','blue-500','migrantes'),(3,'Ambientales','earth-americas','green-500','ambientales'),(4,'Bienestar animal','paw','amber-800','bienestaranimal'),(5,'Educación','graduation-cap','indigo-600','educacion');
/*!40000 ALTER TABLE `ong_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `ong_view`
--

DROP TABLE IF EXISTS `ong_view`;
/*!50001 DROP VIEW IF EXISTS `ong_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `ong_view` AS SELECT
 1 AS `ong_id`,
  1 AS `name`,
  1 AS `type_name`,
  1 AS `type_icon`,
  1 AS `type_link`,
  1 AS `country`,
  1 AS `country_code`,
  1 AS `description`,
  1 AS `logo_url`,
  1 AS `url` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ong_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `amount` int(10) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,3,7,1,55),(2,3,7,1,55),(3,3,7,1,55),(4,3,5,4,33),(5,3,5,3,22),(6,3,1,1,999),(7,3,12,2,25),(8,3,11,3,1),(9,3,8,2,55),(10,3,10,1,999),(11,3,1,1,99),(12,3,5,1,4),(13,3,11,2,5),(14,77,13,2,10),(15,77,17,3,85),(16,3,13,4,20);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_currency`
--

DROP TABLE IF EXISTS `transaction_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_currency` (
  `transaction_currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(5) NOT NULL,
  PRIMARY KEY (`transaction_currency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_currency`
--

LOCK TABLES `transaction_currency` WRITE;
/*!40000 ALTER TABLE `transaction_currency` DISABLE KEYS */;
INSERT INTO `transaction_currency` VALUES (1,'Dólar estadounidense','USD'),(2,'Euro','EUR'),(3,'Yen japonés','JPY'),(4,'Libra esterlina','GBP'),(5,'Franco suizo','CHF');
/*!40000 ALTER TABLE `transaction_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `transactions_view`
--

DROP TABLE IF EXISTS `transactions_view`;
/*!50001 DROP VIEW IF EXISTS `transactions_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `transactions_view` AS SELECT
 1 AS `transaction_id`,
  1 AS `user_id`,
  1 AS `idfiscal`,
  1 AS `ong_name`,
  1 AS `transaction_currency_name`,
  1 AS `amount` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `idfiscal` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (3,'Alejandro','Épila Navarro','alejandroepilan@gmail.com','49355129G','644280851','$2y$10$k/GJgY/DBwpAqMZrE8O8IeMPkpHTVfEZoIHOHQAtQKO2TzfcbHE7i',1),(5,'admin','admin','admin@epila.dev','12345678A','123456789','$2y$10$sBmNAOzjq8Fu.az4H82oZevidoPKVBFe8ow2ZK2zBSJ87wjvJXG8e',1),(77,'Carmen','Navarro Mercader','carmenmarnavarro@gmail.com','12345678A','123456789','$2y$10$YLQLsDyGidgY2RVyN2jNLeclPkNN7AGbxTM7iPOlCRHkO7zkpBHO2',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `ong_view`
--

/*!50001 DROP VIEW IF EXISTS `ong_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`alejandro`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `ong_view` AS select `ong`.`ong_id` AS `ong_id`,`ong`.`name` AS `name`,`ong_type`.`name` AS `type_name`,`ong_type`.`icon` AS `type_icon`,`ong_type`.`link` AS `type_link`,`ong_country`.`name` AS `country`,`ong_country`.`code` AS `country_code`,`ong`.`description` AS `description`,`ong`.`logo_url` AS `logo_url`,`ong`.`url` AS `url` from ((`ong` left join `ong_type` on(`ong`.`type_id` = `ong_type`.`ong_type_id`)) left join `ong_country` on(`ong`.`country_id` = `ong_country`.`ong_country_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `transactions_view`
--

/*!50001 DROP VIEW IF EXISTS `transactions_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`alejandro`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `transactions_view` AS select `transaction`.`transaction_id` AS `transaction_id`,`user`.`user_id` AS `user_id`,`user`.`idfiscal` AS `idfiscal`,`ong`.`name` AS `ong_name`,`transaction_currency`.`name` AS `transaction_currency_name`,`transaction`.`amount` AS `amount` from (((`transaction` left join `user` on(`transaction`.`user_id` = `user`.`user_id`)) left join `ong` on(`transaction`.`ong_id` = `ong`.`ong_id`)) left join `transaction_currency` on(`transaction`.`currency_id` = `transaction_currency`.`transaction_currency_id`)) */;
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

-- Dump completed on 2024-05-17 17:20:35
