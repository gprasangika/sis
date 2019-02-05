-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: openemis
-- ------------------------------------------------------
-- Server version	5.7.25

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
-- Table structure for table `institution_class_subjects`
--

DROP TABLE IF EXISTS `institution_class_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institution_class_subjects` (
  `id` char(36) NOT NULL,
  `status` int(1) NOT NULL,
  `institution_class_id` int(11) NOT NULL COMMENT 'links to institution_classes.id',
  `institution_subject_id` int(11) NOT NULL COMMENT 'links to institution_subjects.id',
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `institution_class_id` (`institution_class_id`),
  KEY `institution_subject_id` (`institution_subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_class_subjects`
--

LOCK TABLES `institution_class_subjects` WRITE;
/*!40000 ALTER TABLE `institution_class_subjects` DISABLE KEYS */;
INSERT INTO `institution_class_subjects` VALUES ('24953c58-a392-4ac3-9417-d4f6ec1bbc69',1,1,1,NULL,NULL,1,'2019-01-26 14:22:06'),('5cd934d0-f81b-4f97-b5c5-9bc40cc3c8f9',1,6,4,NULL,NULL,1,'2019-01-29 07:09:46'),('60cfd52c-74d0-4d02-be1b-b853bb5501b1',1,4,2,NULL,NULL,1,'2019-01-26 14:45:22'),('90ca4e8d-d97c-4cb1-ab03-47261b2c04ac',1,7,5,NULL,NULL,1,'2019-01-29 07:57:19');
/*!40000 ALTER TABLE `institution_class_subjects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-29 13:58:16