-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: openemis
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Table structure for table `workflow_actions`
--

DROP TABLE IF EXISTS `workflow_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text,
  `action` int(1) DEFAULT NULL COMMENT '0 -> Approve, 1 -> Reject',
  `visible` int(1) NOT NULL DEFAULT '1',
  `comment_required` int(1) NOT NULL DEFAULT '0',
  `allow_by_assignee` int(1) NOT NULL DEFAULT '0',
  `event_key` text,
  `workflow_step_id` int(11) NOT NULL COMMENT 'links to workflow_steps.id',
  `next_workflow_step_id` int(11) NOT NULL,
  `modified_user_id` int(11) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `allow_by_assignee` (`allow_by_assignee`),
  KEY `next_workflow_step_id` (`next_workflow_step_id`),
  KEY `workflow_step_id` (`workflow_step_id`),
  KEY `modified_user_id` (`modified_user_id`),
  KEY `created_user_id` (`created_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow_actions`
--

LOCK TABLES `workflow_actions` WRITE;
/*!40000 ALTER TABLE `workflow_actions` DISABLE KEYS */;
INSERT INTO `workflow_actions` VALUES (1,'Submit For Approval',NULL,0,1,0,1,NULL,1,2,NULL,NULL,1,'2015-10-25 12:10:14'),(2,'Cancel',NULL,1,1,0,1,NULL,1,3,NULL,NULL,1,'2015-10-25 12:10:14'),(3,'Approve',NULL,0,1,0,0,NULL,2,3,NULL,NULL,1,'2015-10-25 12:10:14'),(4,'Reject',NULL,1,1,0,0,NULL,2,1,NULL,NULL,1,'2015-10-25 12:10:14'),(5,'Approve',NULL,0,0,0,0,NULL,3,0,NULL,NULL,1,'2015-10-25 12:10:14'),(6,'Reject',NULL,1,0,0,0,NULL,3,0,NULL,NULL,1,'2015-10-25 12:10:14'),(7,'Reopen',NULL,NULL,1,0,0,NULL,3,1,NULL,NULL,1,'2015-10-25 12:10:14'),(8,'Submit For Recommendation','',0,0,0,1,'',4,7,2,'2016-11-10 14:02:47',1,'2015-11-06 11:27:06'),(9,'Cancel','',1,1,1,1,'Workflow.onAssignBack',4,6,2,'2016-11-10 13:58:15',1,'2015-11-06 11:27:06'),(10,'Submit For Accreditation',NULL,0,1,0,0,'',5,8,NULL,NULL,1,'2015-11-06 11:27:06'),(11,'Reject',NULL,1,1,1,0,'',5,4,NULL,NULL,1,'2015-11-06 11:27:06'),(12,'Approve',NULL,0,0,0,0,'',6,0,NULL,NULL,1,'2015-11-06 11:27:06'),(13,'Reject',NULL,1,0,0,0,'',6,0,NULL,NULL,1,'2015-11-06 11:27:06'),(14,'Reopen',NULL,NULL,1,1,0,'',6,4,NULL,NULL,1,'2015-11-06 11:27:06'),(15,'Submit For Approval',NULL,0,1,0,0,'',7,5,NULL,NULL,1,'2015-11-06 11:27:06'),(16,'Reject',NULL,1,1,1,0,'',7,4,NULL,NULL,1,'2015-11-06 11:27:06'),(17,'Accredit',NULL,0,1,0,0,'',8,9,NULL,NULL,1,'2015-11-06 11:27:06'),(18,'Reject',NULL,1,1,1,0,'',8,4,NULL,NULL,1,'2015-11-06 11:27:06'),(19,'Approve',NULL,0,0,0,0,'',9,0,NULL,NULL,1,'2015-11-06 11:27:06'),(20,'Reject',NULL,1,0,0,0,'',9,0,NULL,NULL,1,'2015-11-06 11:27:06'),(21,'Inactive',NULL,NULL,1,1,0,'',9,6,NULL,NULL,1,'2015-11-06 11:27:06'),(22,'Submit For Recommendation','',0,0,0,1,'',10,13,2,'2016-11-10 14:20:28',1,'2015-11-06 11:27:06'),(23,'Cancel',NULL,1,1,1,1,NULL,10,12,NULL,NULL,1,'2015-11-06 11:27:06'),(24,'Submit For Registration',NULL,0,1,0,0,'',11,14,NULL,NULL,1,'2015-11-06 11:27:06'),(25,'Reject',NULL,1,1,1,0,'',11,10,NULL,NULL,1,'2015-11-06 11:27:06'),(26,'Approve',NULL,0,0,0,0,'',12,0,NULL,NULL,1,'2015-11-06 11:27:06'),(27,'Reject',NULL,1,0,0,0,'',12,0,NULL,NULL,1,'2015-11-06 11:27:06'),(28,'Reopen',NULL,NULL,1,1,0,'',12,10,NULL,NULL,1,'2015-11-06 11:27:06'),(29,'Submit For Approval',NULL,0,1,0,0,'',13,11,NULL,NULL,1,'2015-11-06 11:27:06'),(30,'Reject',NULL,1,1,1,0,'',13,10,NULL,NULL,1,'2015-11-06 11:27:06'),(31,'Register',NULL,0,1,0,0,'',14,15,NULL,NULL,1,'2015-11-06 11:27:06'),(32,'Reject',NULL,1,1,1,0,'',14,10,NULL,NULL,1,'2015-11-06 11:27:06'),(33,'Approve',NULL,0,0,0,0,'',15,0,NULL,NULL,1,'2015-11-06 11:27:06'),(34,'Reject',NULL,1,0,0,0,'',15,0,NULL,NULL,1,'2015-11-06 11:27:06'),(35,'Inactive',NULL,NULL,1,1,0,'',15,12,NULL,NULL,1,'2015-11-06 11:27:06'),(36,'Submit For Evaluation',NULL,0,1,0,1,'',16,19,NULL,NULL,1,'2015-11-06 11:27:06'),(37,'Cancel',NULL,1,1,1,1,NULL,16,18,NULL,NULL,1,'2015-11-06 11:27:06'),(38,'Submit For Posting',NULL,0,1,0,0,'',17,20,NULL,NULL,1,'2015-11-06 11:27:06'),(39,'Reject',NULL,1,1,1,0,'',17,16,NULL,NULL,1,'2015-11-06 11:27:06'),(40,'Approve',NULL,0,0,0,0,'',18,0,NULL,NULL,1,'2015-11-06 11:27:06'),(41,'Reject',NULL,1,0,0,0,'',18,0,NULL,NULL,1,'2015-11-06 11:27:06'),(42,'Reopen',NULL,NULL,1,1,0,'',18,16,NULL,NULL,1,'2015-11-06 11:27:06'),(43,'Submit For Approval',NULL,0,1,0,0,'',19,17,NULL,NULL,1,'2015-11-06 11:27:06'),(44,'Reject',NULL,1,1,1,0,'',19,16,NULL,NULL,1,'2015-11-06 11:27:06'),(45,'Post',NULL,0,1,0,0,'',20,21,NULL,NULL,1,'2015-11-06 11:27:06'),(46,'Reject',NULL,1,1,1,0,'',20,16,NULL,NULL,1,'2015-11-06 11:27:06'),(47,'Approve',NULL,0,0,0,0,'',21,0,NULL,NULL,1,'2015-11-06 11:27:06'),(48,'Reject',NULL,1,0,0,0,'',21,0,NULL,NULL,1,'2015-11-06 11:27:06'),(49,'Inactive',NULL,NULL,1,1,0,'',21,18,NULL,NULL,1,'2015-11-06 11:27:06'),(50,'Submit For Approval',NULL,0,1,0,1,'',22,23,NULL,NULL,1,'2015-12-15 15:41:56'),(51,'Cancel',NULL,1,1,1,1,NULL,22,24,NULL,NULL,1,'2015-12-15 15:41:56'),(52,'Approve',NULL,0,1,0,0,'',23,25,NULL,NULL,1,'2015-12-15 15:41:56'),(53,'Reject',NULL,1,1,1,0,'',23,22,NULL,NULL,1,'2015-12-15 15:41:56'),(54,'Approve',NULL,0,0,0,0,'',24,0,NULL,NULL,1,'2015-12-15 15:41:56'),(55,'Reject',NULL,1,0,0,0,'',24,0,NULL,NULL,1,'2015-12-15 15:41:56'),(56,'Reopen',NULL,NULL,1,1,0,'',24,22,NULL,NULL,1,'2015-12-15 15:41:56'),(57,'Approve',NULL,0,0,0,0,'',25,0,NULL,NULL,1,'2015-12-15 15:41:56'),(58,'Reject',NULL,1,0,0,0,'',25,0,NULL,NULL,1,'2015-12-15 15:41:56'),(59,'Inactive',NULL,NULL,1,1,0,'',25,24,NULL,NULL,1,'2015-12-15 15:41:56'),(60,'Submit For Approval',NULL,0,1,0,1,'',26,27,NULL,NULL,1,'2016-02-12 18:29:36'),(61,'Cancel',NULL,1,1,1,1,NULL,26,28,NULL,NULL,1,'2016-02-12 18:29:36'),(62,'Approve',NULL,0,1,0,0,'',27,29,NULL,NULL,1,'2016-02-12 18:29:36'),(63,'Reject',NULL,1,1,1,0,'',27,26,NULL,NULL,1,'2016-02-12 18:29:36'),(64,'Approve',NULL,0,0,0,0,'',28,0,NULL,NULL,1,'2016-02-12 18:29:36'),(65,'Reject',NULL,1,0,0,0,'',28,0,NULL,NULL,1,'2016-02-12 18:29:36'),(66,'Reopen',NULL,NULL,1,1,0,'',28,26,NULL,NULL,1,'2016-02-12 18:29:36'),(67,'Approve',NULL,0,0,0,0,'',29,0,NULL,NULL,1,'2016-02-12 18:29:36'),(68,'Reject',NULL,1,0,0,0,'',29,0,NULL,NULL,1,'2016-02-12 18:29:36'),(69,'Submit For Deactivation',NULL,NULL,1,1,0,'',29,30,NULL,NULL,1,'2016-02-12 18:29:36'),(70,'Approve',NULL,0,1,0,0,'',30,31,NULL,NULL,1,'2016-02-12 18:29:36'),(71,'Reject',NULL,1,1,1,0,'',30,29,NULL,NULL,1,'2016-02-12 18:29:36'),(72,'Approve',NULL,0,0,0,0,'',31,0,NULL,NULL,1,'2016-02-12 18:29:36'),(73,'Reject',NULL,1,0,0,0,'',31,0,NULL,NULL,1,'2016-02-12 18:29:36'),(74,'Reactivate',NULL,NULL,1,1,0,'',31,27,NULL,NULL,1,'2016-02-12 18:29:36'),(75,'Submit For Approval',NULL,0,1,0,1,'',32,33,NULL,NULL,1,'2016-04-15 10:45:45'),(76,'Cancel',NULL,1,1,1,1,NULL,32,34,NULL,NULL,1,'2016-04-15 10:45:45'),(77,'Approve',NULL,0,1,0,0,'Workflow.onApprove',33,35,NULL,NULL,1,'2016-04-15 10:45:45'),(78,'Reject','',1,1,1,0,'',33,34,2,'2017-09-20 16:44:43',1,'2016-04-15 10:45:45'),(79,'Approve',NULL,0,0,0,0,'',34,0,NULL,NULL,1,'2016-04-15 10:45:45'),(80,'Reject',NULL,1,0,0,0,'',34,0,NULL,NULL,1,'2016-04-15 10:45:45'),(81,'Reopen',NULL,NULL,1,1,0,'',34,32,NULL,NULL,1,'2016-04-15 10:45:45'),(82,'Approve',NULL,0,0,0,0,'',35,0,NULL,NULL,1,'2016-04-15 10:45:45'),(83,'Reject',NULL,1,0,0,0,'',35,0,NULL,NULL,1,'2016-04-15 10:45:45'),(84,'Submit For Approval',NULL,0,1,0,1,NULL,36,37,NULL,NULL,1,'2016-11-08 07:25:04'),(85,'Approve',NULL,0,1,0,0,NULL,37,38,NULL,NULL,1,'2016-11-08 07:25:04'),(86,'Reject',NULL,1,1,0,0,NULL,37,41,NULL,NULL,1,'2016-11-08 07:25:04'),(87,'Approve',NULL,0,1,0,0,'Workflow.onAssignTrainingSession',38,40,NULL,NULL,1,'2016-11-08 07:25:04'),(88,'Reject',NULL,1,1,0,0,NULL,38,41,NULL,NULL,1,'2016-11-08 07:25:04'),(89,'Withdraw From Training Session',NULL,NULL,1,0,1,'Workflow.onWithdrawTrainingSession',40,39,NULL,NULL,1,'2016-11-08 07:25:04'),(90,'Submit For Approval',NULL,0,1,0,1,NULL,42,43,NULL,NULL,1,'2016-11-08 07:25:05'),(91,'Cancel',NULL,1,1,0,1,NULL,42,44,NULL,NULL,1,'2016-11-08 07:25:05'),(92,'Approve',NULL,0,1,0,0,NULL,43,44,NULL,NULL,1,'2016-11-08 07:25:05'),(93,'Reject',NULL,1,1,0,0,NULL,43,42,NULL,NULL,1,'2016-11-08 07:25:05'),(94,'Approve',NULL,0,0,0,0,NULL,44,0,NULL,NULL,1,'2016-11-08 07:25:05'),(95,'Reject',NULL,1,0,0,0,NULL,44,0,NULL,NULL,1,'2016-11-08 07:25:05'),(96,'Reopen',NULL,NULL,1,0,0,NULL,44,42,NULL,NULL,1,'2016-11-08 07:25:05'),(99,'Submit For Accreditation','',NULL,1,0,1,'',4,8,NULL,NULL,2,'2016-11-10 14:05:32'),(101,'Submit for Registration','',NULL,1,0,1,'Workflow.onAssignBack',10,15,NULL,NULL,2,'2016-11-10 14:20:19'),(102,'Submit For Approval',NULL,0,1,0,1,NULL,45,46,NULL,NULL,2,'2016-11-16 16:12:09'),(103,'Cancel',NULL,1,1,0,1,NULL,45,47,NULL,NULL,2,'2016-11-16 16:12:09'),(104,'Approve','',0,1,0,0,'Workflow.onAssignBack',46,47,2,'2016-11-16 16:14:15',2,'2016-11-16 16:12:09'),(105,'Reject','',1,1,0,0,'Workflow.onAssignBack',46,45,2,'2016-11-16 16:13:26',2,'2016-11-16 16:12:09'),(106,'Approve',NULL,0,0,0,0,NULL,47,0,NULL,NULL,2,'2016-11-16 16:12:09'),(107,'Reject',NULL,1,0,0,0,NULL,47,0,NULL,NULL,2,'2016-11-16 16:12:09'),(108,'Reopen',NULL,NULL,1,0,0,NULL,47,45,NULL,NULL,2,'2016-11-16 16:12:09'),(109,'Submit For Approval',NULL,0,1,0,1,'Workflow.onAssignBack',48,51,NULL,NULL,1,'2017-03-10 07:14:53'),(110,'Cancel',NULL,1,1,0,1,NULL,48,50,NULL,NULL,1,'2017-03-10 07:14:53'),(111,'Approve',NULL,0,1,0,0,NULL,49,50,NULL,NULL,1,'2017-03-10 07:14:53'),(112,'Reject',NULL,1,1,0,0,NULL,49,48,NULL,NULL,1,'2017-03-10 07:14:53'),(113,'Approve',NULL,0,0,0,0,NULL,50,0,NULL,NULL,1,'2017-03-10 07:14:53'),(114,'Reject',NULL,1,0,0,0,NULL,50,0,NULL,NULL,1,'2017-03-10 07:14:53'),(115,'Reopen',NULL,NULL,1,0,0,NULL,50,48,NULL,NULL,1,'2017-03-10 07:14:53'),(116,'Approve',NULL,0,0,0,0,NULL,51,0,NULL,NULL,1,'2017-03-10 07:14:53'),(117,'Reject',NULL,1,0,0,0,NULL,51,0,NULL,NULL,1,'2017-03-10 07:14:53'),(118,'Reopen',NULL,NULL,1,0,0,NULL,51,48,NULL,NULL,1,'2017-03-10 07:14:53'),(119,'Submit For Verification & Authentication',NULL,0,1,0,1,NULL,52,55,NULL,NULL,1,'2017-03-10 07:14:54'),(120,'Cancel',NULL,1,1,0,1,NULL,52,57,NULL,NULL,1,'2017-03-10 07:14:54'),(121,'Submit For Recommendation',NULL,0,1,0,0,NULL,55,56,NULL,NULL,1,'2017-03-10 07:14:54'),(122,'Reject','',1,1,0,0,'Workflow.onAssignBack',55,58,2,'2017-03-16 15:39:07',1,'2017-03-10 07:14:54'),(123,'Submit For Approval',NULL,0,1,0,0,NULL,56,53,NULL,NULL,1,'2017-03-10 07:14:54'),(124,'Reject','',1,1,0,0,'Workflow.onAssignBack',56,59,2,'2017-03-16 15:40:03',1,'2017-03-10 07:14:54'),(125,'Approve','',0,1,0,0,'Workflow.onAssignBack',53,60,8,'2017-03-16 16:16:15',1,'2017-03-10 07:14:54'),(126,'Reject','',1,1,0,0,'Workflow.onAssignBack',53,61,2,'2017-03-16 15:40:27',1,'2017-03-10 07:14:54'),(127,'Approve',NULL,0,0,0,0,NULL,57,0,NULL,NULL,1,'2017-03-10 07:14:54'),(128,'Reject',NULL,1,0,0,0,NULL,57,0,NULL,NULL,1,'2017-03-10 07:14:54'),(129,'Reopen',NULL,NULL,1,0,0,NULL,57,52,NULL,NULL,1,'2017-03-10 07:14:54'),(130,'Approve',NULL,0,0,0,0,NULL,58,0,NULL,NULL,1,'2017-03-10 07:14:54'),(131,'Reject',NULL,1,0,0,0,NULL,58,0,NULL,NULL,1,'2017-03-10 07:14:54'),(132,'Reopen',NULL,NULL,1,0,0,NULL,58,52,NULL,NULL,1,'2017-03-10 07:14:54'),(133,'Approve',NULL,0,0,0,0,NULL,59,0,NULL,NULL,1,'2017-03-10 07:14:54'),(134,'Reject',NULL,1,0,0,0,NULL,59,0,NULL,NULL,1,'2017-03-10 07:14:54'),(135,'Reopen',NULL,NULL,1,0,0,NULL,59,52,NULL,NULL,1,'2017-03-10 07:14:54'),(136,'Approve',NULL,0,0,0,0,NULL,60,0,NULL,NULL,1,'2017-03-10 07:14:54'),(137,'Reject',NULL,1,0,0,0,NULL,60,0,NULL,NULL,1,'2017-03-10 07:14:54'),(138,'Reopen',NULL,NULL,1,0,0,NULL,60,52,NULL,NULL,1,'2017-03-10 07:14:54'),(139,'Approve',NULL,0,0,0,0,NULL,61,0,NULL,NULL,1,'2017-03-10 07:14:54'),(140,'Reject',NULL,1,0,0,0,NULL,61,0,NULL,NULL,1,'2017-03-10 07:14:54'),(141,'Reopen',NULL,NULL,1,0,0,NULL,61,52,NULL,NULL,1,'2017-03-10 07:14:54'),(142,'Submit For Approval',NULL,0,1,0,1,NULL,62,63,NULL,NULL,1,'2017-04-10 09:55:37'),(143,'Cancel',NULL,1,1,0,1,NULL,62,64,NULL,NULL,1,'2017-04-10 09:55:37'),(144,'Approve',NULL,0,1,0,0,NULL,63,64,NULL,NULL,1,'2017-04-10 09:55:37'),(145,'Reject',NULL,1,1,0,0,NULL,63,62,NULL,NULL,1,'2017-04-10 09:55:37'),(146,'Approve',NULL,0,0,0,0,NULL,64,0,NULL,NULL,1,'2017-04-10 09:55:37'),(147,'Reject',NULL,1,0,0,0,NULL,64,0,NULL,NULL,1,'2017-04-10 09:55:37'),(148,'Reopen',NULL,NULL,1,0,0,NULL,64,62,NULL,NULL,1,'2017-04-10 09:55:37'),(149,'Submit For Approval',NULL,0,1,0,1,NULL,65,66,NULL,NULL,2,'2017-10-13 14:44:48'),(150,'Cancel',NULL,1,1,0,1,NULL,65,67,NULL,NULL,2,'2017-10-13 14:44:48'),(151,'Approve',NULL,0,1,0,0,NULL,66,67,NULL,NULL,2,'2017-10-13 14:44:48'),(152,'Reject',NULL,1,1,0,0,NULL,66,65,NULL,NULL,2,'2017-10-13 14:44:48'),(153,'Approve',NULL,0,0,0,0,NULL,67,0,NULL,NULL,2,'2017-10-13 14:44:48'),(154,'Reject',NULL,1,0,0,0,NULL,67,0,NULL,NULL,2,'2017-10-13 14:44:48'),(156,'Submit For Approval',NULL,0,1,0,1,NULL,68,69,NULL,NULL,2,'2017-10-13 14:58:28'),(157,'Cancel',NULL,1,1,0,1,NULL,68,70,NULL,NULL,2,'2017-10-13 14:58:28'),(158,'Approve',NULL,0,1,0,0,NULL,69,70,NULL,NULL,2,'2017-10-13 14:58:28'),(159,'Reject',NULL,1,1,0,0,NULL,69,68,NULL,NULL,2,'2017-10-13 14:58:28'),(160,'Approve',NULL,0,0,0,0,NULL,70,0,NULL,NULL,2,'2017-10-13 14:58:28'),(161,'Reject',NULL,1,0,0,0,NULL,70,0,NULL,NULL,2,'2017-10-13 14:58:28'),(162,'Reopen',NULL,NULL,1,0,0,NULL,70,68,NULL,NULL,2,'2017-10-13 14:58:28'),(163,'Submit For Approval',NULL,0,1,0,1,NULL,71,72,NULL,NULL,2,'2017-10-13 14:59:03'),(164,'Cancel',NULL,1,1,0,1,NULL,71,73,NULL,NULL,2,'2017-10-13 14:59:03'),(165,'Approve',NULL,0,1,0,0,NULL,72,73,NULL,NULL,2,'2017-10-13 14:59:03'),(166,'Reject',NULL,1,1,0,0,NULL,72,71,NULL,NULL,2,'2017-10-13 14:59:03'),(167,'Approve',NULL,0,0,0,0,NULL,73,0,NULL,NULL,2,'2017-10-13 14:59:03'),(168,'Reject',NULL,1,0,0,0,NULL,73,0,NULL,NULL,2,'2017-10-13 14:59:03'),(169,'Reopen',NULL,NULL,1,0,0,NULL,73,71,NULL,NULL,2,'2017-10-13 14:59:03'),(170,'Submit For Approval',NULL,0,1,0,1,NULL,74,75,NULL,NULL,8,'2017-10-13 15:32:19'),(171,'Cancel',NULL,1,1,0,1,NULL,74,76,NULL,NULL,8,'2017-10-13 15:32:19'),(172,'Approve',NULL,0,1,0,0,NULL,75,76,NULL,NULL,8,'2017-10-13 15:32:19'),(173,'Reject',NULL,1,1,0,0,NULL,75,74,NULL,NULL,8,'2017-10-13 15:32:19'),(174,'Approve',NULL,0,0,0,0,NULL,76,0,NULL,NULL,8,'2017-10-13 15:32:19'),(175,'Reject',NULL,1,0,0,0,NULL,76,0,NULL,NULL,8,'2017-10-13 15:32:19'),(176,'Reopen',NULL,NULL,1,0,0,NULL,76,74,NULL,NULL,8,'2017-10-13 15:32:19'),(181,'Pending','',NULL,1,0,0,'',19,20,NULL,NULL,2,'2017-10-20 09:51:20'),(182,'Submit For Approval',NULL,0,1,0,1,NULL,79,80,NULL,NULL,1,'2017-11-15 14:51:18'),(183,'Approve',NULL,0,1,0,0,NULL,80,81,NULL,NULL,1,'2017-11-15 14:51:18'),(184,'Reject',NULL,1,1,1,0,NULL,80,84,NULL,NULL,1,'2017-11-15 14:51:18'),(185,'Approve',NULL,0,1,0,0,NULL,81,82,NULL,NULL,1,'2017-11-15 14:51:18'),(186,'Reject',NULL,1,1,1,0,NULL,81,84,NULL,NULL,1,'2017-11-15 14:51:18'),(187,'Assign',NULL,0,1,0,0,'Workflow.onTransferStaff',82,83,NULL,NULL,1,'2017-11-15 14:51:18'),(188,'Reject',NULL,1,1,1,0,NULL,82,84,NULL,NULL,1,'2017-11-15 14:51:18'),(189,'Submit For Approval',NULL,0,1,0,1,NULL,85,86,NULL,NULL,1,'2017-11-15 14:51:18'),(190,'Approve',NULL,0,1,0,0,NULL,86,87,NULL,NULL,1,'2017-11-15 14:51:18'),(191,'Reject',NULL,1,1,1,0,NULL,86,90,NULL,NULL,1,'2017-11-15 14:51:18'),(192,'Approve',NULL,0,1,0,0,NULL,87,88,NULL,NULL,1,'2017-11-15 14:51:18'),(193,'Reject',NULL,1,1,1,0,NULL,87,90,NULL,NULL,1,'2017-11-15 14:51:18'),(194,'Transfer',NULL,0,1,0,0,'Workflow.onTransferStaff',88,89,NULL,NULL,1,'2017-11-15 14:51:18'),(195,'Reject',NULL,1,1,1,0,NULL,88,90,NULL,NULL,1,'2017-11-15 14:51:18');
/*!40000 ALTER TABLE `workflow_actions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-23 12:35:24