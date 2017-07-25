-- MySQL dump 10.13  Distrib 5.5.55, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: sepidehdatabase
-- ------------------------------------------------------
-- Server version	5.5.55-0ubuntu0.14.04.1

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
-- Table structure for table `tblSurveyQuestions`
--

DROP TABLE IF EXISTS `tblSurveyQuestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblSurveyQuestions` (
  `IDENTIFIER` varchar(255) NOT NULL DEFAULT '',
  `RIGHT_NOW` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `GHUSERNAME` varchar(255) DEFAULT NULL,
  `book` varchar(255) DEFAULT NULL,
  `food` varchar(255) DEFAULT NULL,
  `animal` varchar(255) DEFAULT NULL,
  `movie` varchar(255) DEFAULT NULL,
  `hobby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IDENTIFIER`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblSurveyQuestions`
--

LOCK TABLES `tblSurveyQuestions` WRITE;
/*!40000 ALTER TABLE `tblSurveyQuestions` DISABLE KEYS */;
INSERT INTO `tblSurveyQuestions` VALUES ('0x6ffaeb5058741cf89eb3cc0bd03b62c3b7af1642','0000-00-00 00:00:00','jdmar3','Foundation','Cold sesame noodles','Shiba Inu','Rear Window','Read poetry'),('0x74740a511379691ec96003f70b391768d312f0e5','0000-00-00 00:00:00','Sepideharc','Kelidar','Chelo kabab','Cheetah','Nafas','Watching movies'),('0xbc2d5ae2ce004614d95c2f5a924cc56a352e355b','0000-00-00 00:00:00','Sepideharc','Kelidar','Chelo kaba','cheetah','nafas','watching movie'),('0xfadef9572d8a1b6b02ec17d2f339e2f265051dc8','0000-00-00 00:00:00','Sepideharc','War and Peace','Ghormeh sabzi','Cheetah','A separation','playing games');
/*!40000 ALTER TABLE `tblSurveyQuestions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-25 13:43:32
