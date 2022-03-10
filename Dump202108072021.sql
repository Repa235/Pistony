-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.7.32-log

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
-- Table structure for table `accountcliente`
--

DROP TABLE IF EXISTS `accountcliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accountcliente` (
  `idcliente` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idcliente`),
  CONSTRAINT `FKr4eymqhjyya87wfthiy3xt0d5` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountcliente`
--

LOCK TABLES `accountcliente` WRITE;
/*!40000 ALTER TABLE `accountcliente` DISABLE KEYS */;
INSERT INTO `accountcliente` VALUES (1,'user','user'),(2,'MarioRossi@gmail.com','Radar45!'),(3,'GiuseppeNeri@gmail.com','Bocale2!');
/*!40000 ALTER TABLE `accountcliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounttitolare`
--

DROP TABLE IF EXISTS `accounttitolare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounttitolare` (
  `idtitolare` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idtitolare`),
  CONSTRAINT `FKsw2621an6il0ffhnu2sigx2ab` FOREIGN KEY (`idtitolare`) REFERENCES `titolare` (`idtitolare`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounttitolare`
--

LOCK TABLES `accounttitolare` WRITE;
/*!40000 ALTER TABLE `accounttitolare` DISABLE KEYS */;
INSERT INTO `accounttitolare` VALUES (1,'admin','admin');
/*!40000 ALTER TABLE `accounttitolare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acquisto`
--

DROP TABLE IF EXISTS `acquisto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acquisto` (
  `idacquisto` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `idcomponente` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `quantAcquistata` int(11) DEFAULT NULL,
  PRIMARY KEY (`idacquisto`,`idcliente`,`idcomponente`),
  KEY `FK74uh310059q44rvr67kdxnxia` (`idcomponente`),
  CONSTRAINT `FK74uh310059q44rvr67kdxnxia` FOREIGN KEY (`idcomponente`) REFERENCES `componente` (`idcomponente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acquisto`
--

LOCK TABLES `acquisto` WRITE;
/*!40000 ALTER TABLE `acquisto` DISABLE KEYS */;
INSERT INTO `acquisto` VALUES (1,1,4,'2021-06-29',2),(2,1,3,'2021-07-07',1);
/*!40000 ALTER TABLE `acquisto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `nome` varchar(20) DEFAULT NULL,
  `cognome` varchar(20) DEFAULT NULL,
  `cfPiva` varchar(16) DEFAULT NULL,
  `telefono` varchar(16) DEFAULT NULL,
  `indirizzo_via` varchar(255) DEFAULT NULL,
  `indirizzo_civico` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idcliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Felice','Nontanto','FLCNTT58A09G562R','3333333333','Via Daqui','77'),(2,'Mario','Rossi','MRRRSS56A06B515H','3333333333','Via delle Camelie','56'),(3,'Giuseppe','Neri','GPPNRR86B05H224G','6666666667','Piazza Pulita','59');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `componente`
--

DROP TABLE IF EXISTS `componente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `componente` (
  `idcomponente` int(11) NOT NULL,
  `categoria` int(11) DEFAULT NULL,
  `marca` varchar(45) DEFAULT NULL,
  `quantDisponibile` int(11) DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `prezzo` double DEFAULT NULL,
  PRIMARY KEY (`idcomponente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `componente`
--

LOCK TABLES `componente` WRITE;
/*!40000 ALTER TABLE `componente` DISABLE KEYS */;
INSERT INTO `componente` VALUES (3,1,'Castrol',84,'Edge (5 W-30, 5 l)',51.18),(4,2,'Pirelli',88,'P 7 (205/55/R16)',56.23),(5,3,'Brembo',100,'Pinza Freno',49.36),(6,4,'NGK',97,'Candela accensione',8.41),(7,5,'K&N',99,'Filtro aria',70.77),(8,6,'IPSA',10,'Albero motore/A gomito',368.36);
/*!40000 ALTER TABLE `componente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intervento`
--

DROP TABLE IF EXISTS `intervento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intervento` (
  `idintervento` int(11) NOT NULL,
  `idprenotazione` int(11) DEFAULT NULL,
  `prezzo` double DEFAULT NULL,
  `data_intervento` date DEFAULT NULL,
  PRIMARY KEY (`idintervento`),
  KEY `FK7am4q0txpr0v7dol7r9xfc31x` (`idprenotazione`),
  CONSTRAINT `FK7am4q0txpr0v7dol7r9xfc31x` FOREIGN KEY (`idprenotazione`) REFERENCES `prenota` (`idprenota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intervento`
--

LOCK TABLES `intervento` WRITE;
/*!40000 ALTER TABLE `intervento` DISABLE KEYS */;
INSERT INTO `intervento` VALUES (3,1,200,'2021-06-11'),(4,1,23,'2021-06-12'),(5,1,200,'2021-06-07');
/*!40000 ALTER TABLE `intervento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meccanico`
--

DROP TABLE IF EXISTS `meccanico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meccanico` (
  `idmeccanico` int(11) NOT NULL,
  `nome` varchar(20) DEFAULT NULL,
  `cognome` varchar(20) DEFAULT NULL,
  `indirizzo` varchar(30) DEFAULT NULL,
  `settore` varchar(15) DEFAULT NULL,
  `dataAssunzione` date DEFAULT NULL,
  `tipoContratto` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idmeccanico`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meccanico`
--

LOCK TABLES `meccanico` WRITE;
/*!40000 ALTER TABLE `meccanico` DISABLE KEYS */;
INSERT INTO `meccanico` VALUES (1,'Nunzio','Ciri','Via Dolomiti n. 5','Elettrauto','2021-06-03','FullTime'),(2,'Eros','Tanco','Via Lambruschi n. 6','Gommista','2021-06-03','FullTime'),(3,'Luca','Stagno','Via Mele n.12','Meccanico','2021-06-03','FullTime'),(4,'Guido','Lacar','Via Dalli n.13','Carrozziere','2021-06-03','FullTime'),(5,'Lino','Baratto','Via Pomodori n. 67','Meccanico','2021-06-11','PartTime'),(6,'Ugo','Losone','Via del Dolce n. 18','Meccanico','2021-06-11','FullTime');
/*!40000 ALTER TABLE `meccanico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meccanico_intervento`
--

DROP TABLE IF EXISTS `meccanico_intervento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meccanico_intervento` (
  `idintervento` int(11) NOT NULL,
  `idmeccanico` int(11) NOT NULL,
  PRIMARY KEY (`idintervento`,`idmeccanico`),
  KEY `FKfbmkeiruhi3blacqvmf9palsd` (`idmeccanico`),
  CONSTRAINT `FKfbmkeiruhi3blacqvmf9palsd` FOREIGN KEY (`idmeccanico`) REFERENCES `meccanico` (`idmeccanico`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meccanico_intervento`
--

LOCK TABLES `meccanico_intervento` WRITE;
/*!40000 ALTER TABLE `meccanico_intervento` DISABLE KEYS */;
INSERT INTO `meccanico_intervento` VALUES (3,1),(4,1),(5,1),(8,1),(5,2),(8,2),(3,3),(4,4);
/*!40000 ALTER TABLE `meccanico_intervento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modifica`
--

DROP TABLE IF EXISTS `modifica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modifica` (
  `idintervento` int(11) NOT NULL,
  `idprenotazione` int(11) DEFAULT NULL,
  `prezzo` double DEFAULT NULL,
  `data_intervento` date DEFAULT NULL,
  `tipo_di_modifica` varchar(255) DEFAULT NULL,
  `omologazione` bit(1) DEFAULT NULL,
  PRIMARY KEY (`idintervento`),
  KEY `FK_cav4tjd2vy160ntnmn214xtng` (`idprenotazione`),
  CONSTRAINT `FK_cav4tjd2vy160ntnmn214xtng` FOREIGN KEY (`idprenotazione`) REFERENCES `prenota` (`idprenota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modifica`
--

LOCK TABLES `modifica` WRITE;
/*!40000 ALTER TABLE `modifica` DISABLE KEYS */;
INSERT INTO `modifica` VALUES (3,1,200,'2021-06-11','Modifica filtro',_binary '');
/*!40000 ALTER TABLE `modifica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prenota`
--

DROP TABLE IF EXISTS `prenota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prenota` (
  `idprenota` int(11) NOT NULL,
  `idcliente` int(11) DEFAULT NULL,
  `descrizione` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`idprenota`),
  KEY `FKn51fab2yya19g8flnyg73cmhl` (`idcliente`),
  CONSTRAINT `FKn51fab2yya19g8flnyg73cmhl` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prenota`
--

LOCK TABLES `prenota` WRITE;
/*!40000 ALTER TABLE `prenota` DISABLE KEYS */;
INSERT INTO `prenota` VALUES (1,1,'Gentile Signore,\r\nVorrei richiedere un preventivo per riparare la mia Chevrolet Matiz, il problema che si verifica ? l\'accensione della spia dell\'olio. \r\nSpero di avere una risposta al pi? presto, cordiali saluti.\r\nNontanto Felice');
/*!40000 ALTER TABLE `prenota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `riparazione`
--

DROP TABLE IF EXISTS `riparazione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `riparazione` (
  `idintervento` int(11) NOT NULL,
  `idprenotazione` int(11) DEFAULT NULL,
  `prezzo` double DEFAULT NULL,
  `data_intervento` date DEFAULT NULL,
  `tipo_di_riparazione` varchar(255) DEFAULT NULL,
  `tagliando` bit(1) DEFAULT NULL,
  PRIMARY KEY (`idintervento`),
  KEY `FK_63ugy46dqyj10jhvrfbq06h7e` (`idprenotazione`),
  CONSTRAINT `FK_63ugy46dqyj10jhvrfbq06h7e` FOREIGN KEY (`idprenotazione`) REFERENCES `prenota` (`idprenota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `riparazione`
--

LOCK TABLES `riparazione` WRITE;
/*!40000 ALTER TABLE `riparazione` DISABLE KEYS */;
INSERT INTO `riparazione` VALUES (2,1,100,'2021-10-09','Riparazione filtro olio',_binary '');
/*!40000 ALTER TABLE `riparazione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `titolare`
--

DROP TABLE IF EXISTS `titolare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `titolare` (
  `idtitolare` int(11) NOT NULL,
  `nome` varchar(20) DEFAULT NULL,
  `cognome` varchar(20) DEFAULT NULL,
  `indirizzo_via` varchar(255) DEFAULT NULL,
  `indirizzo_civico` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idtitolare`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titolare`
--

LOCK TABLES `titolare` WRITE;
/*!40000 ALTER TABLE `titolare` DISABLE KEYS */;
INSERT INTO `titolare` VALUES (1,'Dante','Divina','Selva Oscura','89');
/*!40000 ALTER TABLE `titolare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'test'
--

--
-- Dumping routines for database 'test'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-08  6:25:46
