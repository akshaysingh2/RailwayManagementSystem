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
-- Table structure for table `train`
--

DROP TABLE IF EXISTS `train`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `train` (
  `TrainID` int(11) NOT NULL,
  `RailwayID` int(11) DEFAULT NULL,
  `Arrival StationID` int(11) NOT NULL,
  `DepartureStationID` int(11) NOT NULL,
  `Duration` int(11) DEFAULT NULL,
  `TrainTypeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TrainID`),
  UNIQUE KEY `TrainID_UNIQUE` (`TrainID`),
  KEY `RailwayId_idx` (`RailwayID`),
  KEY `traintypeid_idx` (`TrainTypeID`),
  KEY `arrivalstationid_idx` (`Arrival StationID`),
  KEY `depraturestationid_idx` (`DepartureStationID`),
  CONSTRAINT `RailwayId` FOREIGN KEY (`RailwayID`) REFERENCES `railwaystation` (`RailStationId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `arrivalstationid` FOREIGN KEY (`Arrival StationID`) REFERENCES `railwaystation` (`RailStationId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `depraturestationid` FOREIGN KEY (`DepartureStationID`) REFERENCES `railwaystation` (`RailStationId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `traintypeid` FOREIGN KEY (`TrainTypeID`) REFERENCES `train classification` (`TrainTypeID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train`
--

LOCK TABLES `train` WRITE;
/*!40000 ALTER TABLE `train` DISABLE KEYS */;
INSERT INTO `train` VALUES (1,1,1,2,5,2),(2,2,3,4,2,2),(3,4,5,4,6,2),(4,6,7,6,150,1),(5,3,3,5,10,2);
/*!40000 ALTER TABLE `train` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-13  3:41:13
