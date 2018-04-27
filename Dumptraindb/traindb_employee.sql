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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `idEmployee` int(11) NOT NULL,
  `SSN` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `SEX` varchar(45) NOT NULL,
  `EmailId` varchar(45) NOT NULL,
  `DateOfJoining` varchar(45) DEFAULT NULL,
  `RailwaysID` int(11) DEFAULT NULL,
  `EmployeeTypeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`idEmployee`,`SSN`),
  KEY `RailwaysID_idx` (`RailwaysID`),
  KEY `employeeid_idx` (`EmployeeTypeID`),
  CONSTRAINT `RailwaysID` FOREIGN KEY (`RailwaysID`) REFERENCES `railwaystation` (`RailStationId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `employeeid` FOREIGN KEY (`EmployeeTypeID`) REFERENCES `employeetype` (`EmployeeTypeID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'1123','Akshay Singh','Male','xyz@gmail.com','12/05/2003',1,1),(2,'1124','Meera Singh','Female','abc@gmail.com','11/04/2001',2,2),(3,'1125','Anisha Singh','female','pqr@gmail.com','10/04/2001',3,3),(4,'5214','Ram Singh','Male','klm@gmail.com','04/04/2004',4,4),(5,'9689','Shyam Singh','Male','tya@gmail.com','09/11/2000',5,5),(6,'1147','Ajay Singh','Male','oqr@gmail.com','01/01/2001',1,2),(7,'1157','Arjun Singh','Male','omr@gmail.com','01/02/2001',1,4),(8,'1158','Akshay Singh','Male','xyz@gmail.com','02/05/2010',2,4);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger duplicateemployeefound1 before insert on employee
for each row
begin
declare speciality condition for sqlstate '45000';
if new.Name and new.EmailId in(select name,EmailId from employee 
where (new.Name=employee.Name and new.EmailID=employee.EmailId))
then signal speciality set message_text='employeeAlreadyExists';
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-13  3:41:14
