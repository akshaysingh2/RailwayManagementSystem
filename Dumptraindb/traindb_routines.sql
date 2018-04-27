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
-- Temporary view structure for view `totalrevenuetickets`
--

DROP TABLE IF EXISTS `totalrevenuetickets`;
/*!50001 DROP VIEW IF EXISTS `totalrevenuetickets`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `totalrevenuetickets` AS SELECT 
 1 AS `sum(Price)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listofpassengerwithbookedstatus`
--

DROP TABLE IF EXISTS `listofpassengerwithbookedstatus`;
/*!50001 DROP VIEW IF EXISTS `listofpassengerwithbookedstatus`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `listofpassengerwithbookedstatus` AS SELECT 
 1 AS `PassengerID`,
 1 AS `Name`,
 1 AS `Age`,
 1 AS `EmailId`,
 1 AS `Phonenumber`,
 1 AS `PassengerLocID`,
 1 AS `berth`,
 1 AS `Reserved`,
 1 AS `PassTrainId`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listofavailableseats`
--

DROP TABLE IF EXISTS `listofavailableseats`;
/*!50001 DROP VIEW IF EXISTS `listofavailableseats`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `listofavailableseats` AS SELECT 
 1 AS `BerthId`,
 1 AS `TrainId`,
 1 AS `BerthTypeID`,
 1 AS `Price`,
 1 AS `confirmation`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `totalrevenuetickets`
--

/*!50001 DROP VIEW IF EXISTS `totalrevenuetickets`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `totalrevenuetickets` AS select sum(`berth`.`Price`) AS `sum(Price)` from `berth` where (`berth`.`confirmation` = 'booked') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listofpassengerwithbookedstatus`
--

/*!50001 DROP VIEW IF EXISTS `listofpassengerwithbookedstatus`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listofpassengerwithbookedstatus` AS select `passenger`.`PassengerID` AS `PassengerID`,`passenger`.`Name` AS `Name`,`passenger`.`Age` AS `Age`,`passenger`.`EmailId` AS `EmailId`,`passenger`.`Phonenumber` AS `Phonenumber`,`passenger`.`PassengerLocID` AS `PassengerLocID`,`passenger`.`berth` AS `berth`,`passenger`.`Reserved` AS `Reserved`,`passenger`.`PassTrainId` AS `PassTrainId` from `passenger` where (`passenger`.`Reserved` = 'Yes') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listofavailableseats`
--

/*!50001 DROP VIEW IF EXISTS `listofavailableseats`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listofavailableseats` AS select `berth`.`BerthId` AS `BerthId`,`berth`.`TrainId` AS `TrainId`,`berth`.`BerthTypeID` AS `BerthTypeID`,`berth`.`Price` AS `Price`,`berth`.`confirmation` AS `confirmation` from `berth` where (`berth`.`confirmation` = 'available') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'traindb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-13  3:41:14
