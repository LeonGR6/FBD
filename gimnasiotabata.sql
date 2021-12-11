CREATE DATABASE  IF NOT EXISTS `gym` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `gym`;
-- MariaDB dump 10.19  Distrib 10.4.20-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: gym
-- ------------------------------------------------------
-- Server version	10.4.20-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido1` varchar(45) NOT NULL,
  `apellido2` varchar(45) NOT NULL,
  `idmembresia` varchar(45) NOT NULL,
  PRIMARY KEY (`idcliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (501,'javier de jesus','acosta','ramirez','201'),(502,'isela estefania','rodriguez','estrada','202'),(503,'dulce maria','aleman','rangel','203'),(504,'juan carlos','serna','davila','204'),(505,'melani yoselin','barron','castañeda','205'),(506,'yazmin alejandra','contreras','lucio','206'),(507,'ximena','carreon','maldonado','207'),(508,'ruben','casillas','romo','208'),(509,'luis antonio','hernandez','ruvalcaba','209'),(510,'ariel','castor','lopez','210'),(511,'alonso','tiscareño','vega','211'),(512,'viridiana','castorena','vazquez','212'),(513,'kassandra','jaramillo','herrera','213'),(514,'valeria lizbeth','ambriz','torres','214'),(515,'veronica','ramirez','servin','215'),(516,'joaquin','martinez','muñoz','216'),(517,'jonatan','lucio','salazar','217'),(518,'nikol reyna','collazo','sanchez','218'),(519,'bruno','luevano','garcia','219'),(520,'alexa','marin','lara','220'),(521,'maria del carmen','medina','rojas','221'),(522,'arely','montañez','reyes','222'),(523,'jazmin','navarro','galvan','223'),(524,'daniel','perez','duron','224'),(525,'cesar','puga','suarez','225'),(526,'leonel','pulido','banda','226'),(527,'emilia','salas','arriaga','227'),(528,'noemi yamilet','ibarra','amaya','228'),(529,'angel emiliano','cruz','marquez','229'),(530,'elizabeth guadalupe','ferrel','escobar','230');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle`
--

DROP TABLE IF EXISTS `detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle` (
  `iddetalle` int(11) NOT NULL,
  `idventa` int(11) NOT NULL,
  `idmembresia` varchar(45) NOT NULL,
  `cantidad_de_membresia` varchar(45) NOT NULL,
  `idcliente` varchar(45) NOT NULL,
  PRIMARY KEY (`iddetalle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle`
--

LOCK TABLES `detalle` WRITE;
/*!40000 ALTER TABLE `detalle` DISABLE KEYS */;
INSERT INTO `detalle` VALUES (301,401,'201','1','501'),(302,402,'202','3','502'),(303,403,'203','3','503'),(304,404,'204','4','504'),(305,405,'205','5','505'),(306,406,'206','6','506'),(307,407,'207','1','507'),(308,408,'208','2','508'),(309,409,'209','3','509'),(310,410,'210','1','510'),(311,411,'211','1','511'),(312,412,'212','1','512'),(313,413,'213','1','513'),(314,414,'214','1','514'),(315,415,'215','1','515'),(316,416,'216','1','516'),(317,417,'217','2','517'),(318,418,'218','1','518'),(319,419,'219','2','519'),(320,420,'220','2','520'),(321,421,'221','2','521'),(322,422,'222','2','522'),(323,423,'223','3','523'),(324,424,'224','4','524'),(325,425,'225','1','525'),(326,426,'226','4','526'),(327,427,'227','1','527'),(328,428,'228','1','528'),(329,429,'229','1','529'),(330,430,'230','1','530');
/*!40000 ALTER TABLE `detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleado` (
  `idempleado` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `idtipo_de_empleado` varchar(45) NOT NULL,
  `apellido1` varchar(45) NOT NULL,
  `apellido2` varchar(45) NOT NULL,
  PRIMARY KEY (`idempleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'leon andrey ','101','muñoz','rangel'),(2,'edison raul','102','muñoz','rangel'),(3,'victor axel','103','de la riva','ibarra'),(4,'maria fernanda','104','lopez','dondiego'),(5,'carmen paulina','105','muñoz','rangel'),(6,'alma marcela','106','goza','de alegria'),(7,'godofredo','107','herrada','cornejo'),(8,'adriana ','108','herrada ','vega'),(9,'ricardo','109','alfaro','gonzalez'),(10,'juan','110','moro','silva'),(11,'joan','111','jimenez','cruz'),(12,'carlos','112','sandoval','martinez'),(13,'gabriel','113','aguilar','vazquez'),(14,'mariel','114','ramirez','chavez'),(15,'alan','115','flores','montes'),(16,'uriel','116','chavez','rodriguez'),(17,'karla','117','martinez','dondiego'),(18,'denisse','118','mauricio','cruz'),(19,'paola andrea','119','serna','cruz'),(20,'ricardo de jesus','120','torres','acosta'),(21,'yahir','121','garcia','meza'),(22,'brandon','122','alvarez','gonzalez'),(23,'hector ramon','123','guerra','nepomuseno'),(24,'rodrigo','124','gonzalez','flores'),(25,'eduardo','125','espinoza','mata'),(26,'alfredo izak','126','loera','de leon'),(27,'jorge','127','gutierrez','guzman'),(28,'luis','128','escobedo','trujillo'),(29,'ramiro','129','santana','ortiz'),(30,'ernesto','130','chavez','gutierrez');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membresia`
--

DROP TABLE IF EXISTS `membresia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membresia` (
  `idmembresia` int(11) NOT NULL,
  `tipo_de_membresia` varchar(45) NOT NULL,
  `precio` varchar(45) NOT NULL,
  PRIMARY KEY (`idmembresia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membresia`
--

LOCK TABLES `membresia` WRITE;
/*!40000 ALTER TABLE `membresia` DISABLE KEYS */;
INSERT INTO `membresia` VALUES (201,'golden','299'),(202,' diamond','539'),(203,' golden','299'),(204,' golden','299'),(205,'golden','299'),(206,'golden','299'),(207,' golden','299'),(208,' platinium','489'),(209,' platinium','489'),(210,' golden','299'),(211,'diamond','539'),(212,' golden','299'),(213,'platinium','489'),(214,' golden','299'),(215,'platinium','489'),(216,'platinium','489'),(217,' golden','299'),(218,'platinium','489'),(219,'platinium','489'),(220,' golden','299'),(221,'platinium','489'),(222,' golden','299'),(223,'platinium','489'),(224,' golden','299'),(225,'diamond','539'),(226,'platinium','489'),(227,'diamond','539'),(228,' golden','299'),(229,' golden','299'),(230,' golden','299');
/*!40000 ALTER TABLE `membresia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo de empleado`
--

DROP TABLE IF EXISTS `tipo de empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo de empleado` (
  `idtipo_de_empleado` int(11) NOT NULL,
  `puesto_de_empleado` varchar(45) NOT NULL,
  PRIMARY KEY (`idtipo_de_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo de empleado`
--

LOCK TABLES `tipo de empleado` WRITE;
/*!40000 ALTER TABLE `tipo de empleado` DISABLE KEYS */;
INSERT INTO `tipo de empleado` VALUES (101,'entrenador'),(102,'entrenador'),(103,'mantenimiento'),(104,'cajera'),(105,'cajera'),(106,'limpieza'),(107,'cajera'),(108,'cajera'),(109,'entrenador'),(110,'entrenador'),(111,'entrenador'),(112,'cajera'),(113,'cajera'),(114,'limpieza'),(115,'limpieza'),(116,'entrenador'),(117,'limpieza'),(118,'limpieza'),(119,'cajera'),(120,'entrenador'),(121,'limpieza'),(122,'entrenador'),(123,'limpieza'),(124,'limpieza'),(125,'entrenador'),(126,'limpieza'),(127,'cajera'),(128,'cajera'),(129,'cajera'),(130,'entrenador');
/*!40000 ALTER TABLE `tipo de empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venta` (
  `idventa` int(11) NOT NULL,
  `idempleado` varchar(45) NOT NULL,
  `fecha_venta` varchar(45) NOT NULL,
  `fecha_vence` varchar(45) NOT NULL,
  `total` varchar(45) NOT NULL,
  `idcliente` varchar(45) NOT NULL,
  PRIMARY KEY (`idventa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (401,'27','10/5/2021','10/6/2021','299','501'),(402,'19','3/4/2021','3/7/2021','1617','502'),(403,'13','1/3/2021','1/6/2021','897','503'),(404,'12','1/6/2021','1/10/2021','1196','504'),(405,'19','4/10/2021','4/3/2022','1495','505'),(406,'12','12/12/2021','12/6/2022','1794','506'),(407,'12','22/3/2021','22/4/2021','299','507'),(408,'28','11/11/2021','11/1/2022','978','508'),(409,'8','13/4/2021','13/7/2021','1467','509'),(410,'13','9/8/2021','9/9/2021','299','510'),(411,'19','2/9/2021','2/10/2021','539','511'),(412,'13','15/5/2021','15/6/2021','299','512'),(413,'8','27/2/2021','27/3/2021','489','513'),(414,'28','23/3/2021','23/4/2021','299','514'),(415,'8','12/8/2021','12/9/2021','489','515'),(416,'27','11/10/2021','11/11/2021','489','516'),(417,'13','12/11/2021','12/1/2021','598','517'),(418,'5','8/10/2021','8/11/2021','489','518'),(419,'28','9/2/2021','9/4/2021','978','519'),(420,'5','1/9/2021','1/11/2021','598','520'),(421,'27','25/4/2021','25/6/2021','978','521'),(422,'4','30/7/2021','30/9/2021','598','522'),(423,'27','15/6/2021','15/9/2021','1467','523'),(424,'4','19/12/2021','19/4/2022','1196','524'),(425,'4','20/5/2021','20/6/2021','539','525'),(426,'27','25/8/2021','25/12/2021','1956','526'),(427,'7','29/10/2021','29/11/2021','539','527'),(428,'19','5/4/2021','5/5/2021','299','528'),(429,'7','6/7/2021','6/8/2021','299','529'),(430,'19','3/2/2021','3/3/2021','299','530');
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-11 15:11:11
