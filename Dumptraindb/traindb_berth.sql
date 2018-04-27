-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: traindb
-- ------------------------------------------------------
-- Server version	5.6.37

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
-- Table structure for table `berth`
--

DROP TABLE IF EXISTS `berth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `berth` (
  `BerthId` int(11) NOT NULL,
  `TrainId` int(11) DEFAULT NULL,
  `BerthTypeID` int(11) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `confirmation` varchar(45) NOT NULL,
  PRIMARY KEY (`BerthId`),
  KEY `TrainId_idx` (`TrainId`),
  KEY `berthtype_idx` (`BerthTypeID`),
  KEY `berth_type_price` (`Price`),
  CONSTRAINT `TrainId` FOREIGN KEY (`TrainId`) REFERENCES `train` (`TrainID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `berthtype` FOREIGN KEY (`BerthTypeID`) REFERENCES `berthtype` (`BerthTypeID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `price` FOREIGN KEY (`Price`) REFERENCES `berthtype` (`BerthTypeID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berth`
--

LOCK TABLES `berth` WRITE;
/*!40000 ALTER TABLE `berth` DISABLE KEYS */;
INSERT INTO `berth` VALUES (1,1,1,100,'booked'),(2,2,2,50,'booked'),(3,3,3,30,'available'),(4,4,4,15,'available'),(5,2,1,100,'available'),(6,3,4,15,'available');
/*!40000 ALTER TABLE `berth` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-13  3:41:14
