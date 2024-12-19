-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: taskmanager
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Table structure for table `acesstokens`
--

DROP TABLE IF EXISTS `acesstokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acesstokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tokenid` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `devicename` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tokenid` (`tokenid`),
  UNIQUE KEY `tokenid_2` (`tokenid`),
  UNIQUE KEY `tokenid_3` (`tokenid`),
  UNIQUE KEY `tokenid_4` (`tokenid`),
  UNIQUE KEY `tokenid_5` (`tokenid`),
  UNIQUE KEY `tokenid_6` (`tokenid`),
  UNIQUE KEY `tokenid_7` (`tokenid`),
  KEY `userid` (`userid`),
  CONSTRAINT `acesstokens_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acesstokens`
--

LOCK TABLES `acesstokens` WRITE;
/*!40000 ALTER TABLE `acesstokens` DISABLE KEYS */;
INSERT INTO `acesstokens` VALUES (1,'1efb09a2-8156-6e40-953f-bd3aa053a8e7',1,NULL,'2024-12-02 10:42:41','2024-12-02 10:42:41'),(2,'1efb0a10-11ae-6de0-99b0-98bd4eb21f44',1,NULL,'2024-12-02 11:31:42','2024-12-02 11:31:42'),(3,'1efb0c91-16c7-63d0-8c11-6cd1ba25ccbf',1,NULL,'2024-12-02 16:18:29','2024-12-02 16:18:29'),(4,'1efb0c97-6970-6ae0-9628-033a6e9eac3d',1,NULL,'2024-12-02 16:21:19','2024-12-02 16:21:19'),(5,'1efb0ca3-dda3-6e10-89d7-b5fc212fbfe7',1,NULL,'2024-12-02 16:26:53','2024-12-02 16:26:53'),(6,'1efb1146-ea39-6010-bbd5-a4916795f5d7',1,NULL,'2024-12-03 01:17:58','2024-12-03 01:17:58'),(8,'1efb1374-4333-6920-8e7d-3cc317bb2854',1,NULL,'2024-12-03 05:27:19','2024-12-03 05:27:19'),(9,'1efb1375-6a70-6a00-8e4f-1d2258c4ff71',3,NULL,'2024-12-03 05:27:50','2024-12-03 05:27:50'),(10,'1efb15a1-8b98-6880-8e5c-f64131370559',1,NULL,'2024-12-03 09:36:39','2024-12-03 09:36:39'),(12,'1efb16d8-097a-6c30-988c-645ca41046da',1,NULL,'2024-12-03 11:55:33','2024-12-03 11:55:33'),(13,'1efb17ac-a190-6ae0-b6c1-0f829a0d5b71',1,NULL,'2024-12-03 13:30:40','2024-12-03 13:30:40'),(14,'1efb1977-7830-6cf0-8ea0-0474c51a203a',1,NULL,'2024-12-03 16:55:57','2024-12-03 16:55:57'),(15,'1efb1dc7-8dd3-6860-b21e-99262a52e427',1,NULL,'2024-12-04 01:09:55','2024-12-04 01:09:55'),(16,'1efb1fed-3e9a-6910-80c3-58e542b92019',1,NULL,'2024-12-04 05:15:50','2024-12-04 05:15:50'),(17,'1efb2227-1580-6200-badd-7c4f4b6d2f8a',1,NULL,'2024-12-04 09:30:47','2024-12-04 09:30:47'),(18,'1efb2390-1445-6470-b7f8-128aa1fb06f1',1,NULL,'2024-12-04 12:12:17','2024-12-04 12:12:17'),(19,'1efb2595-f64c-6dd0-bc38-0c3ea5800bd8',1,NULL,'2024-12-04 16:03:59','2024-12-04 16:03:59'),(20,'1efb2597-40a2-64b0-aba6-59e8cb829281',1,NULL,'2024-12-04 16:04:34','2024-12-04 16:04:34'),(21,'1efb266f-bd73-6c90-90be-1c5617624508',1,NULL,'2024-12-04 17:41:25','2024-12-04 17:41:25'),(22,'1efb269f-cd0f-6e80-8cf7-5725174e1768',1,NULL,'2024-12-04 18:02:55','2024-12-04 18:02:55'),(23,'1efb2a5a-d471-6700-9aa8-d62252e6bfab',1,NULL,'2024-12-05 01:10:11','2024-12-05 01:10:11'),(24,'1efb2c4f-3d71-6cf0-a9e7-8bcc02d7eb68',1,NULL,'2024-12-05 04:54:04','2024-12-05 04:54:04'),(25,'1efb2c7f-f1be-6930-aa59-8f192bf5fb43',1,NULL,'2024-12-05 05:15:52','2024-12-05 05:15:52'),(26,'1efb2eb8-9327-69e0-9454-1b7835197d14',1,NULL,'2024-12-05 09:30:16','2024-12-05 09:30:16'),(27,'1efb2eba-623d-66c0-b2c8-7b26eafe01b0',1,NULL,'2024-12-05 09:31:04','2024-12-05 09:31:04'),(28,'1efb3998-7ce5-67f0-bd09-4b9ab69e8eec',1,NULL,'2024-12-06 06:15:46','2024-12-06 06:15:46'),(29,'1efb39a5-5218-63d0-abe7-ab5d46337f4c',1,NULL,'2024-12-06 06:21:30','2024-12-06 06:21:30'),(30,'1efb39f4-6665-6be0-9cb7-f704eb511a83',1,NULL,'2024-12-06 06:56:53','2024-12-06 06:56:53'),(31,'1efb39f7-bb05-63a0-a511-4fb700912508',1,NULL,'2024-12-06 06:58:22','2024-12-06 06:58:22'),(32,'1efb39fd-22d2-6280-a371-5c6b12a1bab8',1,NULL,'2024-12-06 07:00:47','2024-12-06 07:00:47'),(33,'1efb39fd-375f-6630-a6fa-b212e8e7d8ae',1,NULL,'2024-12-06 07:00:50','2024-12-06 07:00:50'),(34,'1efb39fd-4e23-6060-b504-c79ccd44aabd',1,NULL,'2024-12-06 07:00:52','2024-12-06 07:00:52'),(35,'1efb39fe-a717-6210-9353-93ce7473abdd',1,NULL,'2024-12-06 07:01:28','2024-12-06 07:01:28'),(36,'1efb39fe-af8f-6190-bbac-728b02463670',1,NULL,'2024-12-06 07:01:29','2024-12-06 07:01:29'),(37,'1efb3a01-9361-6a10-ab98-5f36914aec1d',1,NULL,'2024-12-06 07:02:47','2024-12-06 07:02:47'),(38,'1efb3a04-0b77-6980-8f83-0f2c32e808d7',1,NULL,'2024-12-06 07:03:53','2024-12-06 07:03:53'),(39,'1efb3a04-0b7c-67a0-8785-038c9a483dc2',1,NULL,'2024-12-06 07:03:53','2024-12-06 07:03:53'),(40,'1efb3a2b-317a-65c0-b048-9cf436a8af5f',1,NULL,'2024-12-06 07:21:24','2024-12-06 07:21:24'),(41,'1efb3a30-9cb8-6a30-900f-42776106774e',1,NULL,'2024-12-06 07:23:49','2024-12-06 07:23:49'),(42,'1efb3a38-e9e6-60c0-98cc-69a2e22d80ef',1,NULL,'2024-12-06 07:27:32','2024-12-06 07:27:32'),(43,'1efb3a3b-2b34-6930-8fbf-32592b98b9f7',1,NULL,'2024-12-06 07:28:33','2024-12-06 07:28:33'),(44,'1efb3a4a-5302-68e0-ae28-d27a5cbc3262',1,NULL,'2024-12-06 07:35:19','2024-12-06 07:35:19'),(45,'1efb3a4e-d5bc-6e80-8bcf-a4aaf117b562',1,NULL,'2024-12-06 07:37:21','2024-12-06 07:37:21'),(46,'1efb3a50-fd4e-6140-897c-ae27ff8dffee',1,NULL,'2024-12-06 07:38:18','2024-12-06 07:38:18'),(47,'1efb3aa9-b148-6440-b3aa-07050d6a83c4',1,NULL,'2024-12-06 08:17:59','2024-12-06 08:17:59'),(48,'1efb3adf-3c4c-6d90-a8cc-9ef9994b53a0',1,NULL,'2024-12-06 08:41:57','2024-12-06 08:41:57'),(49,'1efb3ae0-a74c-6180-93b2-fa81e54087ff',1,NULL,'2024-12-06 08:42:35','2024-12-06 08:42:35'),(50,'1efb3b4b-41a1-6c70-bafe-35403bf0fbe0',1,NULL,'2024-12-06 09:30:16','2024-12-06 09:30:16'),(51,'1efb3b57-986e-61f0-84a9-d92807dbb951',1,NULL,'2024-12-06 09:35:48','2024-12-06 09:35:48'),(52,'1efb3b5d-2f81-61a0-ba0c-5c006895fbab',1,NULL,'2024-12-06 09:38:18','2024-12-06 09:38:18'),(53,'1efb3b79-a569-6f90-8f2b-853fa5be6814',1,NULL,'2024-12-06 09:51:02','2024-12-06 09:51:02'),(54,'1efb3b7e-7811-6c00-974f-5476f9f04e7b',1,NULL,'2024-12-06 09:53:11','2024-12-06 09:53:11'),(55,'1efb3b82-3935-6ff0-a5e1-a453c3536314',1,NULL,'2024-12-06 09:54:52','2024-12-06 09:54:52'),(56,'1efb3b8a-b6a2-67b0-b195-a49dcf8feb54',1,NULL,'2024-12-06 09:58:40','2024-12-06 09:58:40'),(57,'1efb3bbd-f870-69c0-82c4-5fed7a2932a0',1,NULL,'2024-12-06 10:21:36','2024-12-06 10:21:36'),(58,'1efb3bc1-9d7e-6ea0-a593-5e359898d1b0',3,NULL,'2024-12-06 10:23:14','2024-12-06 10:23:14'),(59,'1efb3c1a-239e-6d20-8e63-d3378613e31a',1,NULL,'2024-12-06 11:02:50','2024-12-06 11:02:50'),(60,'1efb3c4b-68ca-6fd0-9360-daee75ecc4f4',1,NULL,'2024-12-06 11:24:52','2024-12-06 11:24:52'),(61,'1efb3c4f-6141-6d50-a6d3-a6bc65b9b227',1,NULL,'2024-12-06 11:26:39','2024-12-06 11:26:39'),(62,'1efb3c55-e2cd-63a0-a9a8-0c2e088464cc',1,NULL,'2024-12-06 11:29:34','2024-12-06 11:29:34'),(63,'1efb3c5b-4bcb-6550-a80b-6d9e657fbe46',1,NULL,'2024-12-06 11:31:59','2024-12-06 11:31:59'),(64,'1efb3c5e-8e05-6580-90e0-c75a39ccefd2',1,NULL,'2024-12-06 11:33:26','2024-12-06 11:33:26'),(65,'1efb3c6c-b196-63b0-bc0f-3238ebcfbe78',1,NULL,'2024-12-06 11:39:46','2024-12-06 11:39:46'),(66,'1efb3c79-19ee-6c30-a371-912a1acb58e8',1,NULL,'2024-12-06 11:45:19','2024-12-06 11:45:19'),(67,'1efb3c7f-7c45-6e00-a4f4-60382cc5c396',1,NULL,'2024-12-06 11:48:10','2024-12-06 11:48:10'),(68,'1efb3c8d-423e-6cd0-82e9-212ac82252ea',1,NULL,'2024-12-06 11:54:20','2024-12-06 11:54:20'),(69,'1efb3d34-141f-6e10-b6eb-84d548820eb0',1,NULL,'2024-12-06 13:08:58','2024-12-06 13:08:58'),(70,'1efb3d39-6348-6370-8cec-047874cc0e2f',1,NULL,'2024-12-06 13:11:21','2024-12-06 13:11:21'),(71,'1efb3d52-7227-63f0-a2fe-1c2b97f9626a',1,NULL,'2024-12-06 13:22:33','2024-12-06 13:22:33'),(72,'1efb5f33-760d-6cf0-a560-91f43640ec87',1,NULL,'2024-12-09 06:02:48','2024-12-09 06:02:48'),(73,'1efb5f58-b286-64f0-8aba-3971df8897b4',1,NULL,'2024-12-09 06:19:27','2024-12-09 06:19:27'),(74,'1efb5f91-1bed-6d20-8daf-f61df4967e2c',1,NULL,'2024-12-09 06:44:42','2024-12-09 06:44:42'),(75,'1efb5f93-351d-65a0-8244-ee758f51c0fd',1,NULL,'2024-12-09 06:45:38','2024-12-09 06:45:38'),(76,'1efb61ac-d80a-65e0-844f-f84d2ff07721',1,NULL,'2024-12-09 10:46:10','2024-12-09 10:46:10'),(77,'1efb6202-1628-6c50-9c59-dde9ffc1750c',1,NULL,'2024-12-09 11:24:18','2024-12-09 11:24:18'),(78,'1efb6317-fbc1-64e0-8029-29a0c294e0a9',1,NULL,'2024-12-09 13:28:38','2024-12-09 13:28:38'),(79,'1efb6b16-d607-67c0-ab04-9e9fb3cda304',1,NULL,'2024-12-10 04:44:23','2024-12-10 04:44:23'),(80,'1efb6d18-a364-6fd0-b1e3-657a1133c3b3',1,NULL,'2024-12-10 08:34:15','2024-12-10 08:34:15'),(81,'1efb6e18-f04f-6ba0-b1d4-a04d46807620',1,NULL,'2024-12-10 10:28:55','2024-12-10 10:28:55'),(82,'1efb6e2e-c172-6a60-bb4f-73a3370ffa68',1,NULL,'2024-12-10 10:38:41','2024-12-10 10:38:41'),(83,'1efb6e2e-d7c3-68a0-87eb-4873f507c0ea',1,NULL,'2024-12-10 10:38:43','2024-12-10 10:38:43'),(84,'1efb6e2e-e09d-62a0-956e-2f8d7aba53fc',1,NULL,'2024-12-10 10:38:44','2024-12-10 10:38:44'),(85,'1efb6e2e-ea6a-6ee0-8fb8-0588d4b4d74a',1,NULL,'2024-12-10 10:38:45','2024-12-10 10:38:45'),(86,'1efb6e2f-126a-6300-b828-4e068b9a9365',1,NULL,'2024-12-10 10:38:49','2024-12-10 10:38:49'),(87,'1efb6e2f-1803-64b0-81a2-67d0630b040c',1,NULL,'2024-12-10 10:38:50','2024-12-10 10:38:50'),(88,'1efb6e2f-1c3f-6470-ac51-85b2b5f54f2e',1,NULL,'2024-12-10 10:38:50','2024-12-10 10:38:50'),(89,'1efb6e30-419b-6600-9efe-e6f6f70af22a',1,NULL,'2024-12-10 10:39:21','2024-12-10 10:39:21'),(90,'1efb6e49-da80-6e10-886e-51a013527ffd',1,NULL,'2024-12-10 10:50:48','2024-12-10 10:50:48'),(91,'1efb6e49-f890-6310-975b-cabc5feeda44',1,NULL,'2024-12-10 10:50:51','2024-12-10 10:50:51'),(92,'1efb6e4a-0153-6d80-b36a-0ce810c55a8f',1,NULL,'2024-12-10 10:50:52','2024-12-10 10:50:52'),(93,'1efb6e4a-0544-6250-ad3a-7991b365575a',1,NULL,'2024-12-10 10:50:53','2024-12-10 10:50:53'),(94,'1efb6e4a-0789-6330-9952-ef297be2523c',1,NULL,'2024-12-10 10:50:53','2024-12-10 10:50:53'),(95,'1efb6e4a-0b7b-6f10-9bba-d7f40245e808',1,NULL,'2024-12-10 10:50:53','2024-12-10 10:50:53'),(96,'1efb6e4a-0d3a-6b80-bf73-be359233b8ea',1,NULL,'2024-12-10 10:50:53','2024-12-10 10:50:53'),(97,'1efb6e4a-0e5a-6ce0-bba3-74f8d3635c74',1,NULL,'2024-12-10 10:50:54','2024-12-10 10:50:54'),(98,'1efb6e4a-100a-6ef0-8904-8e993c7a84f5',1,NULL,'2024-12-10 10:50:54','2024-12-10 10:50:54'),(99,'1efb6e4a-11d1-6090-b5fa-a484026a30cc',1,NULL,'2024-12-10 10:50:54','2024-12-10 10:50:54'),(100,'1efb6e68-feb4-6ab0-8ce8-40a94b6a5d8f',1,NULL,'2024-12-10 11:04:44','2024-12-10 11:04:44'),(101,'1efb6e84-3eba-67c0-8071-632c2755afd2',1,NULL,'2024-12-10 11:16:55','2024-12-10 11:16:55'),(102,'1efb6e96-368e-6a30-84ee-fd3b209173c2',1,NULL,'2024-12-10 11:24:58','2024-12-10 11:24:58'),(103,'1efb6ea2-7443-6a40-949d-9482d0d32c07',1,NULL,'2024-12-10 11:30:26','2024-12-10 11:30:26'),(104,'1efb6ebe-9736-6b80-831a-fb66752ea464',1,NULL,'2024-12-10 11:43:02','2024-12-10 11:43:02'),(105,'1efb6ec4-8a90-6bf0-be8c-06ce4d567d88',1,NULL,'2024-12-10 11:45:41','2024-12-10 11:45:41'),(106,'1efb6f1b-f123-65f0-8572-3b193c6e0aa9',1,NULL,'2024-12-10 12:24:48','2024-12-10 12:24:48'),(107,'1efb7014-5302-6c50-9673-f64d24bd274c',1,NULL,'2024-12-10 14:15:55','2024-12-10 14:15:55'),(108,'1efb77b0-582b-6fd0-adb9-41be5f807716',1,NULL,'2024-12-11 04:47:27','2024-12-11 04:47:27'),(109,'1efb783e-96b3-6210-a9e0-17833883abec',1,NULL,'2024-12-11 05:51:05','2024-12-11 05:51:05'),(110,'1efb788a-d07a-6790-8613-efd648e0adb9',1,NULL,'2024-12-11 06:25:11','2024-12-11 06:25:11'),(111,'1efb7b4c-37d7-64b0-a4a9-e93ec748de67',1,NULL,'2024-12-11 11:40:47','2024-12-11 11:40:47'),(112,'1efb8464-8fee-62e0-a4c0-f3b31b3e2ff3',1,NULL,'2024-12-12 05:02:28','2024-12-12 05:02:28'),(113,'1efb8b62-b542-6c30-830f-a5fe509e5f26',1,NULL,'2024-12-12 18:23:22','2024-12-12 18:23:22'),(114,'1efbb6da-7d70-6250-ae8e-4ae8f19678ac',1,NULL,'2024-12-16 05:21:51','2024-12-16 05:21:51'),(115,'1efbc35e-a412-6080-8ec8-bde53935a935',1,NULL,'2024-12-17 05:15:22','2024-12-17 05:15:22');
/*!40000 ALTER TABLE `acesstokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminlogs`
--

DROP TABLE IF EXISTS `adminlogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminlogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminid` int(11) DEFAULT NULL,
  `actiontype` text DEFAULT NULL,
  `affectedentity` text DEFAULT NULL,
  `entityid` int(11) DEFAULT NULL,
  `oldvalue` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`oldvalue`)),
  `newvalue` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`newvalue`)),
  `success` tinyint(1) DEFAULT NULL,
  `actiondetails` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminlogs`
--

LOCK TABLES `adminlogs` WRITE;
/*!40000 ALTER TABLE `adminlogs` DISABLE KEYS */;
INSERT INTO `adminlogs` VALUES (1,NULL,'Add user','User',1,NULL,'{\"name\":\"admin\",\"email\":\"admin@gmail.com\"}',1,'Adds new user','2024-12-02 10:42:01','2024-12-02 10:42:01'),(2,NULL,'Add user','User',2,NULL,'{\"name\":\"hetifo\",\"email\":\"zude@mailinator.com\"}',1,'Adds new user','2024-12-02 10:43:09','2024-12-02 10:43:09'),(3,NULL,'Add user','User',3,NULL,'{\"name\":\"user\",\"email\":\"user@gmail.com\"}',1,'Adds new user','2024-12-02 10:43:29','2024-12-02 10:43:29'),(4,1,'Add task','Task',1,NULL,'{\"task name\":\"Provident in facili\",\"content\":\"Voluptate quo velit\",\"assign user\":[1,2,3]}',1,'adding new task','2024-12-03 06:11:05','2024-12-03 06:11:05'),(5,1,'update user','User',2,'{\"name\":\"hetifo\",\"email\":\"zude@mailinator.com\",\"accountStatus\":\"unblocked\"}','{\"name\":\"pahuxepi\",\"email\":\"mifukyturu@mailinator.com\",\"accountStatus\":\"blocked\"}',1,NULL,'2024-12-03 10:24:29','2024-12-03 10:24:29'),(6,1,'Add task','Task',2,NULL,'{\"task name\":\"Quis dolore praesent\",\"content\":\"Ex explicabo Harum \",\"assign user\":[]}',1,'adding new task','2024-12-04 18:25:57','2024-12-04 18:25:57'),(7,1,'Add task','Task',3,NULL,'{\"task name\":\"In quia magna deleni\",\"content\":\"Et commodo sit dolo\",\"assign user\":[1,2,3]}',1,'adding new task','2024-12-04 18:26:17','2024-12-04 18:26:17'),(8,1,'Delete task','task',1,'{\"title\":\"Provident in facili\",\"content\":\"Voluptate quo velit\"}',NULL,1,'delete a task','2024-12-05 01:42:20','2024-12-05 01:42:20'),(9,1,'delete user','User',2,'{\"userName\":\"pahuxepi\",\"email\":\"mifukyturu@mailinator.com\"}',NULL,1,'deleting user','2024-12-06 08:43:39','2024-12-06 08:43:39'),(10,1,'Delete task','task',2,'{\"title\":\"Quis dolore praesent\",\"content\":\"Ex explicabo Harum \"}',NULL,1,'delete a task','2024-12-06 09:36:24','2024-12-06 09:36:24'),(11,1,'Add task','Task',4,NULL,'{\"task name\":\"Ipsum enim harum mo\",\"content\":\"Voluptate illum est\",\"assign user\":[1,3]}',1,'adding new task','2024-12-06 10:01:41','2024-12-06 10:01:41'),(12,1,'update','Task',4,NULL,'{\"title\":\"Ipsum enim harum mo\",\"description\":\"Sed et consequatur \",\"content\":\"Voluptate illum est\",\"taskId\":4,\"expirydate\":\"1976-07-01\"}',1,'upating a task ','2024-12-06 10:18:36','2024-12-06 10:18:36'),(13,1,'Delete task','task',4,'{\"title\":\"Ipsum enim harum mo\",\"content\":\"Voluptate illum est\"}',NULL,1,'delete a task','2024-12-06 10:19:47','2024-12-06 10:19:47'),(14,1,'update','Task',3,NULL,'{\"title\":\"In quia magna deleni\",\"description\":\"Ipsum maxime et eos\",\"content\":\"Et commodo sit dolo\",\"taskId\":3,\"expirydate\":\"2003-07-06\",\"assignedUserId\":[1,3]}',1,'upating a task ','2024-12-06 10:33:47','2024-12-06 10:33:47'),(15,1,'update','Task',3,NULL,'{\"title\":\"In quia magna deleni\",\"description\":\"Ipsum maxime et eos\",\"content\":\"Et commodo sit dolo\",\"taskId\":3,\"expirydate\":\"2003-07-06\",\"assignedUserId\":[3,1]}',1,'upating a task ','2024-12-06 10:35:02','2024-12-06 10:35:02'),(16,1,'Add task','Task',5,NULL,'{\"task name\":\"Esse placeat cupidi\",\"content\":\"Cupidatat et veniam\",\"assign user\":[]}',1,'adding new task','2024-12-06 10:39:19','2024-12-06 10:39:19'),(17,1,'update','Task',5,NULL,'{\"title\":\"Esse placeat cupidi\",\"description\":\"Asperiores modi qui \",\"content\":\"Cupidatat et veniam\",\"taskId\":5,\"expirydate\":\"2001-01-17\",\"assignedUserId\":[1,3]}',1,'upating a task ','2024-12-06 10:39:40','2024-12-06 10:39:40'),(18,1,'update','Task',5,NULL,'{\"title\":\"Esse placeat cupidi\",\"description\":\"Asperiores modi qui \",\"content\":\"Cupidatat et veniam\",\"taskId\":5,\"expirydate\":\"2001-01-17\"}',1,'upating a task ','2024-12-06 10:52:47','2024-12-06 10:52:47'),(19,1,'update','Task',5,NULL,'{\"title\":\"Esse placeat cupidi\",\"description\":\"Asperiores modi qui \",\"content\":\"Cupidatat et veniam\",\"taskId\":5,\"expirydate\":\"2001-01-17\",\"assignedUserId\":[3]}',1,'upating a task ','2024-12-06 10:53:00','2024-12-06 10:53:00'),(20,1,'Add user','User',4,NULL,'{\"name\":\"wujoboso\",\"email\":\"zodyvid@mailinator.com\"}',1,'Adds new user','2024-12-06 12:07:27','2024-12-06 12:07:27'),(21,1,'update user','User',4,'{\"name\":\"wujoboso\",\"email\":\"zodyvid@mailinator.com\",\"accountStatus\":\"unblocked\"}','{\"name\":\"wujoboso\",\"email\":\"zodyvid@mailinator.com\",\"accountStatus\":\"blocked\"}',1,NULL,'2024-12-06 12:30:07','2024-12-06 12:30:07'),(22,1,'update user','User',4,'{\"name\":\"wujoboso\",\"email\":\"zodyvid@mailinator.com\",\"accountStatus\":\"blocked\"}','{\"name\":\"wujoboso\",\"email\":\"zodyvid@mailinator.com\",\"accountStatus\":\"blocked\"}',1,NULL,'2024-12-06 12:58:19','2024-12-06 12:58:19'),(23,1,'update user','User',4,'{\"name\":\"wujoboso\",\"email\":\"zodyvid@mailinator.com\",\"accountStatus\":\"blocked\"}','{\"name\":\"wujoboso\",\"email\":\"zodyvid@mailinator.com\",\"accountStatus\":\"blocked\"}',1,NULL,'2024-12-06 13:00:17','2024-12-06 13:00:17'),(24,1,'Add user','User',5,NULL,'{\"name\":\"cixesivo\",\"email\":\"fucigiryw@mailinator.com\"}',1,'Adds new user','2024-12-06 13:11:48','2024-12-06 13:11:48'),(25,1,'Add user','User',6,NULL,'{\"name\":\"xywawaqe\",\"email\":\"jihemuvi@mailinator.com\"}',1,'Adds new user','2024-12-06 13:14:22','2024-12-06 13:14:22'),(26,1,'Add user','User',7,NULL,'{\"name\":\"pusosuxy\",\"email\":\"benupaxaj@mailinator.com\"}',1,'Adds new user','2024-12-06 13:18:50','2024-12-06 13:18:50'),(27,1,'Add user','User',8,NULL,'{\"name\":\"qojeqequs\",\"email\":\"sipired@mailinator.com\"}',1,'Adds new user','2024-12-06 13:24:12','2024-12-06 13:24:12'),(28,1,'Add user','User',9,NULL,'{\"name\":\"xipik\",\"email\":\"jemu@mailinator.com\"}',1,'Adds new user','2024-12-06 13:28:19','2024-12-06 13:28:19'),(29,1,'Add user','User',10,NULL,'{\"name\":\"nulituseko\",\"email\":\"fudar@mailinator.com\"}',1,'Adds new user','2024-12-06 13:30:51','2024-12-06 13:30:51'),(30,1,'Add user','User',11,NULL,'{\"name\":\"xekarox\",\"email\":\"dozu@mailinator.com\"}',1,'Adds new user','2024-12-06 13:33:07','2024-12-06 13:33:07'),(31,1,'Add user','User',12,NULL,'{\"name\":\"tamuzomow\",\"email\":\"zykobemepe@mailinator.com\"}',1,'Adds new user','2024-12-06 13:35:55','2024-12-06 13:35:55'),(32,1,'delete user','User',12,NULL,NULL,1,'deleting user','2024-12-06 13:35:58','2024-12-06 13:35:58'),(33,1,'Add user','User',13,NULL,'{\"name\":\"xequsem\",\"email\":\"bohigedap@mailinator.com\"}',1,'Adds new user','2024-12-06 13:36:11','2024-12-06 13:36:11'),(34,1,'delete user','User',13,NULL,NULL,1,'deleting user','2024-12-06 13:36:28','2024-12-06 13:36:28'),(35,1,'Add user','User',14,NULL,'{\"name\":\"dedix\",\"email\":\"hubenifowe@mailinator.com\"}',1,'Adds new user','2024-12-06 13:39:05','2024-12-06 13:39:05'),(36,1,'Delete task','task',5,'{\"title\":\"Esse placeat cupidi\",\"content\":\"Cupidatat et veniam\"}',NULL,1,'delete a task','2024-12-06 13:40:17','2024-12-06 13:40:17'),(37,1,'Delete task','task',3,'{\"title\":\"In quia magna deleni\",\"content\":\"Et commodo sit dolo\"}',NULL,1,'delete a task','2024-12-06 13:45:40','2024-12-06 13:45:40'),(38,1,'Add task','Task',6,NULL,'{\"task name\":\"Velit voluptatem ex \",\"content\":\"Voluptatem et tempor\",\"assign user\":[]}',1,'adding new task','2024-12-09 06:05:44','2024-12-09 06:05:44'),(39,1,'Add task','Task',7,NULL,'{\"task name\":\"Ipsa magnam volupta\",\"content\":\"Aliquid quia illum \",\"assign user\":[1,3,14]}',1,'adding new task','2024-12-09 06:06:06','2024-12-09 06:06:06'),(40,1,'Add task','Task',8,NULL,'{\"task name\":\"Beatae dolor exceptu\",\"content\":\"Voluptas obcaecati a\",\"assign user\":[]}',1,'adding new task','2024-12-09 06:09:02','2024-12-09 06:09:02'),(41,1,'Delete task','task',8,'{\"title\":\"Beatae dolor exceptu\",\"content\":\"Voluptas obcaecati a\"}',NULL,1,'delete a task','2024-12-09 06:09:22','2024-12-09 06:09:22'),(42,1,'Delete task','task',7,'{\"title\":\"Ipsa magnam volupta\",\"content\":\"Aliquid quia illum \"}',NULL,1,'delete a task','2024-12-09 06:09:51','2024-12-09 06:09:51'),(43,1,'Add task','Task',9,NULL,'{\"task name\":\"Incidunt irure occa\",\"content\":\"Nihil distinctio Ma\",\"assign user\":[]}',1,'adding new task','2024-12-09 06:12:53','2024-12-09 06:12:53'),(44,1,'Delete task','task',9,'{\"title\":\"Incidunt irure occa\",\"content\":\"Nihil distinctio Ma\"}',NULL,1,'delete a task','2024-12-09 06:13:17','2024-12-09 06:13:17'),(45,1,'Delete task','task',6,'{\"title\":\"Velit voluptatem ex \",\"content\":\"Voluptatem et tempor\"}',NULL,1,'delete a task','2024-12-09 06:14:46','2024-12-09 06:14:46'),(46,1,'Add task','Task',10,NULL,'{\"task name\":\"Deleniti iure ea eve\",\"content\":\"Ut dolore facere min\",\"assign user\":[]}',1,'adding new task','2024-12-09 06:16:07','2024-12-09 06:16:07'),(47,1,'Delete task','task',10,'{\"title\":\"Deleniti iure ea eve\",\"content\":\"Ut dolore facere min\"}',NULL,1,'delete a task','2024-12-09 06:20:04','2024-12-09 06:20:04'),(48,1,'Add task','Task',11,NULL,'{\"task name\":\"Aute ut nulla qui su\",\"content\":\"Lorem nihil officiis\",\"assign user\":[]}',1,'adding new task','2024-12-09 06:23:38','2024-12-09 06:23:38'),(49,1,'Add task','Task',12,NULL,'{\"task name\":\"Quis autem ut incidi\",\"content\":\"Necessitatibus cillu\",\"assign user\":[]}',1,'adding new task','2024-12-09 06:23:48','2024-12-09 06:23:48'),(50,1,'Add task','Task',13,NULL,'{\"task name\":\"Nisi cupiditate iure\",\"content\":\"Facere aliquam lauda\",\"assign user\":[]}',1,'adding new task','2024-12-09 06:23:59','2024-12-09 06:23:59'),(51,1,'Delete task','task',13,'{\"title\":\"Nisi cupiditate iure\",\"content\":\"Facere aliquam lauda\"}',NULL,1,'delete a task','2024-12-09 06:28:32','2024-12-09 06:28:32'),(52,1,'Delete task','task',12,'{\"title\":\"Quis autem ut incidi\",\"content\":\"Necessitatibus cillu\"}',NULL,1,'delete a task','2024-12-09 06:29:41','2024-12-09 06:29:41'),(53,1,'Delete task','task',11,'{\"title\":\"Aute ut nulla qui su\",\"content\":\"Lorem nihil officiis\"}',NULL,1,'delete a task','2024-12-09 06:32:04','2024-12-09 06:32:04'),(54,1,'Add task','Task',14,NULL,'{\"task name\":\"Deserunt in exercita\",\"content\":\"In quia exercitation\",\"assign user\":[]}',1,'adding new task','2024-12-09 06:33:04','2024-12-09 06:33:04'),(55,1,'Add task','Task',15,NULL,'{\"task name\":\"Est quod velit dolor\",\"content\":\"Aut aute voluptatem\",\"assign user\":[]}',1,'adding new task','2024-12-09 06:33:28','2024-12-09 06:33:28'),(56,1,'Delete task','task',14,'{\"title\":\"Deserunt in exercita\",\"content\":\"In quia exercitation\"}',NULL,1,'delete a task','2024-12-09 06:33:40','2024-12-09 06:33:40'),(57,1,'Add task','Task',16,NULL,'{\"task name\":\"Laboriosam dolorem \",\"content\":\"Autem nisi sed minim\",\"assign user\":[]}',1,'adding new task','2024-12-09 07:26:37','2024-12-09 07:26:37'),(58,1,'Add task','Task',17,NULL,'{\"task name\":\"Reprehenderit labore\",\"content\":\"Voluptas nostrud ull\",\"assign user\":[]}',1,'adding new task','2024-12-09 07:26:55','2024-12-09 07:26:55'),(59,1,'Add user','User',15,NULL,'{\"name\":\"mydihuquxy\",\"email\":\"jogot@mailinator.com\"}',1,'Adds new user','2024-12-09 12:58:02','2024-12-09 12:58:02'),(60,1,'Add user','User',16,NULL,'{\"name\":\"tumury\",\"email\":\"golo@mailinator.com\"}',1,'Adds new user','2024-12-09 12:58:15','2024-12-09 12:58:15'),(61,1,'Add user','User',17,NULL,'{\"name\":\"zupesylufo\",\"email\":\"tozi@mailinator.com\"}',1,'Adds new user','2024-12-09 12:58:30','2024-12-09 12:58:30'),(62,1,'Add user','User',18,NULL,'{\"name\":\"rosyki\",\"email\":\"pywel@mailinator.com\"}',1,'Adds new user','2024-12-09 12:58:50','2024-12-09 12:58:50'),(63,1,'Add user','User',19,NULL,'{\"name\":\"hotoqyhes\",\"email\":\"bovyta@mailinator.com\"}',1,'Adds new user','2024-12-09 12:59:02','2024-12-09 12:59:02'),(64,1,'Add user','User',20,NULL,'{\"name\":\"qukiwix\",\"email\":\"kubomaq@mailinator.com\"}',1,'Adds new user','2024-12-09 12:59:14','2024-12-09 12:59:14'),(65,1,'Add user','User',21,NULL,'{\"name\":\"bozuz\",\"email\":\"kyfun@mailinator.com\"}',1,'Adds new user','2024-12-09 12:59:28','2024-12-09 12:59:28'),(66,1,'Add user','User',22,NULL,'{\"name\":\"vixufa\",\"email\":\"volytit@mailinator.com\"}',1,'Adds new user','2024-12-09 12:59:38','2024-12-09 12:59:38'),(67,1,'Add task','Task',18,NULL,'{\"task name\":\"Illum cupiditate is\",\"content\":\"At reprehenderit iu\",\"assign user\":[]}',1,'adding new task','2024-12-10 05:08:50','2024-12-10 05:08:50'),(68,1,'Add task','Task',19,NULL,'{\"task name\":\"Praesentium sed lore\",\"content\":\"Sit laboriosam et \",\"assign user\":[]}',1,'adding new task','2024-12-10 05:09:03','2024-12-10 05:09:03'),(69,1,'update user','User',22,'{\"name\":\"vixufa\",\"email\":\"volytit@mailinator.com\",\"accountStatus\":\"unblocked\"}','{\"name\":\"vixufa\",\"email\":\"volytit@mailinator.com\",\"accountStatus\":\"blocked\"}',1,NULL,'2024-12-10 06:04:23','2024-12-10 06:04:23'),(70,1,'update user','User',22,'{\"name\":\"vixufa\",\"email\":\"volytit@mailinator.com\",\"accountStatus\":\"blocked\"}','{\"name\":\"vixufa\",\"email\":\"volytit@mailinator.com\",\"accountStatus\":\"unblocked\"}',1,NULL,'2024-12-10 06:04:42','2024-12-10 06:04:42'),(71,1,'delete user','User',22,NULL,NULL,1,'deleting user','2024-12-10 06:29:39','2024-12-10 06:29:39'),(72,1,'update','Task',19,NULL,'{\"title\":\"Praesentium sed lore\",\"description\":\"Laborum non culpa vo\",\"content\":\"Sit laboriosam et \",\"taskId\":19,\"expirydate\":\"1996-04-09\",\"assignedUserId\":[1,3,14,15,16,17]}',1,'upating a task ','2024-12-11 08:25:49','2024-12-11 08:25:49'),(73,1,'Add user','User',23,NULL,'{\"name\":\"random user\",\"email\":\"alt.vk-5ogx592@yopmail.com\"}',1,'Adds new user','2024-12-11 11:41:24','2024-12-11 11:41:24'),(74,1,'update','Task',15,NULL,'{\"title\":\"Est quod velit dolor\",\"description\":\"Qui a excepturi beat\",\"content\":\"Aut aute voluptatem\",\"taskId\":15,\"expirydate\":\"2005-11-19\",\"assignedUserId\":[23]}',1,'upating a task ','2024-12-11 11:41:49','2024-12-11 11:41:49'),(75,1,'Add user','User',24,NULL,'{\"name\":\"random user 2\",\"email\":\"quopruppoittugi-2234@yopmail.com\"}',1,'Adds new user','2024-12-11 11:57:54','2024-12-11 11:57:54'),(76,1,'update','Task',16,NULL,'{\"title\":\"Laboriosam dolorem \",\"description\":\"Ea voluptate qui ut \",\"content\":\"Autem nisi sed minim\",\"taskId\":16,\"expirydate\":\"1992-12-19\",\"assignedUserId\":[24]}',1,'upating a task ','2024-12-11 11:58:19','2024-12-11 11:58:19'),(77,1,'update','Task',18,NULL,'{\"title\":\"Illum cupiditate is\",\"description\":\"Pariatur Est molest\",\"content\":\"At reprehenderit iu\",\"taskId\":18,\"expirydate\":\"2020-04-25\",\"assignedUserId\":[23,24]}',1,'upating a task ','2024-12-11 12:14:33','2024-12-11 12:14:33');
/*!40000 ALTER TABLE `adminlogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginhistorys`
--

DROP TABLE IF EXISTS `loginhistorys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loginhistorys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `loginstatus` tinyint(1) NOT NULL,
  `ipaddress` varchar(255) DEFAULT NULL,
  `browsername` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `logintime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginhistorys`
--

LOCK TABLES `loginhistorys` WRITE;
/*!40000 ALTER TABLE `loginhistorys` DISABLE KEYS */;
INSERT INTO `loginhistorys` VALUES (1,'admin@gmail.com',1,'::1','Mozilla',NULL,'Windows NT','2024-12-02 17:01:42'),(2,'admin@gmail.com',1,'::1','Mozilla',NULL,'Windows NT','2024-12-02 21:51:19'),(3,'admin@gmail.com',1,'::1','Mozilla',NULL,'Windows NT','2024-12-02 21:56:53'),(4,'petwalg6@gmail.com',0,'::1','Mozilla',NULL,'Windows NT','2024-12-03 06:47:39'),(5,'admin@gmail.com',1,'::1','Mozilla',NULL,'Windows NT','2024-12-03 06:47:58'),(6,'admin@gmail.com',1,'::1','Mozilla',NULL,'Windows NT','2024-12-03 10:49:40'),(7,'user@gmail.com',1,'::1','Mozilla',NULL,'Windows NT','2024-12-03 10:57:50'),(8,'admin@gmail.com',1,'::1','Mozilla',NULL,'Windows NT','2024-12-03 15:21:06'),(9,'admin@gmail.com',1,'::1','Mozilla',NULL,'Windows NT','2024-12-03 19:00:40'),(10,'admin@gmail.com',1,'::1','Mozilla',NULL,'Windows NT','2024-12-04 17:42:17'),(11,'admin@gmail.com',1,'::1','Mozilla',NULL,'Windows NT','2024-12-05 10:24:04'),(12,'admin@gmail.com',1,'::1','Mozilla',NULL,'Windows NT','2024-12-05 15:00:15'),(13,'admin@gmail.com',1,'::1','Mozilla',NULL,'Windows NT','2024-12-06 15:51:36'),(14,'user@gmail.com',1,'::1','Mozilla',NULL,'Windows NT','2024-12-06 15:53:13');
/*!40000 ALTER TABLE `loginhistorys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) NOT NULL,
  `taskid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'fgdfgdf',3,1,'2024-12-05 05:25:05','2024-12-05 05:25:05'),(2,'fgdfgdfdfgd',3,1,'2024-12-05 05:25:05','2024-12-05 05:25:05'),(3,'fgdfgdfdfgdgd',3,1,'2024-12-05 05:25:06','2024-12-05 05:25:06'),(4,'fgdfgdfdfgdgdfgdf',3,1,'2024-12-05 05:25:06','2024-12-05 05:25:06'),(5,'fgdfgdfdfgdgdfgdfgdfg',3,1,'2024-12-05 05:25:07','2024-12-05 05:25:07'),(6,'fgdfgdfdfgdgdfgdfgdfgdfg',3,1,'2024-12-05 05:25:07','2024-12-05 05:25:07'),(7,'fgdfgdfdfgdgdfgdfgdfgdfgdfg',3,1,'2024-12-05 05:25:07','2024-12-05 05:25:07'),(8,'fgdfgdfdfgdgdfgdfgdfgdfgdfgdfgdf',3,1,'2024-12-05 05:25:08','2024-12-05 05:25:08'),(9,'fgdfgdfdfgdgdfgdfgdfgdfgdfgdfgdfgsdfg',3,1,'2024-12-05 05:25:08','2024-12-05 05:25:08'),(10,'eertrt',3,1,'2024-12-05 11:16:48','2024-12-05 11:16:48'),(11,'eertrtgdfgdf',3,1,'2024-12-05 11:16:49','2024-12-05 11:16:49'),(12,'eertrtgdfgdfgdf',3,1,'2024-12-05 11:16:50','2024-12-05 11:16:50'),(13,'eertrtgdfgdfgdfg',3,1,'2024-12-05 11:16:50','2024-12-05 11:16:50'),(14,'eertrtgdfgdfgdfgdfg',3,1,'2024-12-05 11:16:50','2024-12-05 11:16:50'),(15,'eertrtgdfgdfgdfgdfgdf',3,1,'2024-12-05 11:16:50','2024-12-05 11:16:50'),(16,'eertrtgdfgdfgdfgdfgdfg',3,1,'2024-12-05 11:16:51','2024-12-05 11:16:51'),(17,'eertrtgdfgdfgdfgdfgdfgfgf',3,1,'2024-12-05 11:16:52','2024-12-05 11:16:52'),(18,'eertrtgdfgdfgdfgdfgdfgfgfg',3,1,'2024-12-05 11:16:53','2024-12-05 11:16:53'),(19,'sdfsdf',3,3,'2024-12-06 10:23:31','2024-12-06 10:23:31'),(20,'sdfsdfdfsd',3,3,'2024-12-06 10:23:32','2024-12-06 10:23:32');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supportmessages`
--

DROP TABLE IF EXISTS `supportmessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supportmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticketid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `sendertype` enum('user','admin') NOT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ticketid` (`ticketid`),
  CONSTRAINT `supportmessages_ibfk_1` FOREIGN KEY (`ticketid`) REFERENCES `supporttickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `supportmessages_ibfk_2` FOREIGN KEY (`ticketid`) REFERENCES `supporttickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `supportmessages_ibfk_3` FOREIGN KEY (`ticketid`) REFERENCES `supporttickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `supportmessages_ibfk_4` FOREIGN KEY (`ticketid`) REFERENCES `supporttickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `supportmessages_ibfk_5` FOREIGN KEY (`ticketid`) REFERENCES `supporttickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `supportmessages_ibfk_6` FOREIGN KEY (`ticketid`) REFERENCES `supporttickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `supportmessages_ibfk_7` FOREIGN KEY (`ticketid`) REFERENCES `supporttickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=373 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supportmessages`
--

LOCK TABLES `supportmessages` WRITE;
/*!40000 ALTER TABLE `supportmessages` DISABLE KEYS */;
INSERT INTO `supportmessages` VALUES (112,27,3,'','2024-12-04 12:56:40','2024-12-04 12:56:40','admin',NULL),(113,23,1,'','2024-12-04 16:06:06','2024-12-04 16:06:06','admin','/uploads/1733328366238.png'),(114,30,1,'sdfsdfs','2024-12-05 03:47:29','2024-12-05 03:47:29','admin',NULL),(115,30,1,' sdfsd','2024-12-05 03:47:32','2024-12-05 03:47:32','admin',NULL),(116,30,1,' dfs','2024-12-05 03:47:32','2024-12-05 03:47:32','admin',NULL),(117,30,1,' dfsd','2024-12-05 03:47:33','2024-12-05 03:47:33','admin',NULL),(118,30,1,' dfsd','2024-12-05 03:47:34','2024-12-05 03:47:34','admin',NULL),(119,30,1,' dfs','2024-12-05 03:47:34','2024-12-05 03:47:34','admin',NULL),(120,30,1,' dfsd','2024-12-05 03:47:35','2024-12-05 03:47:35','admin',NULL),(121,30,1,' dfs','2024-12-05 03:47:36','2024-12-05 03:47:36','admin',NULL),(122,27,3,'fdgd','2024-12-05 04:34:19','2024-12-05 04:34:19','admin',NULL),(123,27,3,' fgd','2024-12-05 04:34:20','2024-12-05 04:34:20','admin',NULL),(124,27,3,' fgd','2024-12-05 04:34:20','2024-12-05 04:34:20','admin',NULL),(125,27,3,'sdfsdfsdf','2024-12-05 04:34:55','2024-12-05 04:34:55','admin',NULL),(126,27,3,' dfs','2024-12-05 04:34:55','2024-12-05 04:34:55','admin',NULL),(127,27,3,' fsdf','2024-12-05 04:34:55','2024-12-05 04:34:55','admin',NULL),(128,27,3,' sdfs','2024-12-05 04:34:56','2024-12-05 04:34:56','admin',NULL),(129,27,3,' dfsd','2024-12-05 04:34:56','2024-12-05 04:34:56','admin',NULL),(130,27,3,' fs','2024-12-05 04:34:56','2024-12-05 04:34:56','admin',NULL),(131,27,3,' fs','2024-12-05 04:34:57','2024-12-05 04:34:57','admin',NULL),(132,27,3,' df','2024-12-05 04:34:57','2024-12-05 04:34:57','admin',NULL),(133,27,3,' df','2024-12-05 04:34:57','2024-12-05 04:34:57','admin',NULL),(134,22,1,'sdfsdfdfsdfsksjfdssdfs','2024-12-05 04:43:45','2024-12-05 04:43:45','admin',NULL),(135,22,1,' dfs','2024-12-05 04:43:48','2024-12-05 04:43:48','admin',NULL),(136,22,1,' dfsdsdfsdffsfdfsd','2024-12-05 04:44:48','2024-12-05 04:44:48','admin',NULL),(137,22,1,' dfsd','2024-12-05 04:45:33','2024-12-05 04:45:33','admin',NULL),(138,22,1,' sdfsd','2024-12-05 04:45:34','2024-12-05 04:45:34','admin',NULL),(139,22,1,' sdfsd','2024-12-05 04:45:34','2024-12-05 04:45:34','admin',NULL),(140,22,1,' sd','2024-12-05 04:45:35','2024-12-05 04:45:35','admin',NULL),(141,22,1,' s','2024-12-05 04:45:35','2024-12-05 04:45:35','admin',NULL),(142,22,1,' dfsd','2024-12-05 04:45:35','2024-12-05 04:45:35','admin',NULL),(143,22,1,' f','2024-12-05 04:45:35','2024-12-05 04:45:35','admin',NULL),(144,22,1,' df','2024-12-05 04:45:36','2024-12-05 04:45:36','admin',NULL),(145,22,1,' sdfs','2024-12-05 04:45:36','2024-12-05 04:45:36','admin',NULL),(146,22,1,' df','2024-12-05 04:45:36','2024-12-05 04:45:36','admin',NULL),(147,22,1,' s','2024-12-05 04:45:36','2024-12-05 04:45:36','admin',NULL),(148,22,1,' fsf','2024-12-05 04:45:37','2024-12-05 04:45:37','admin',NULL),(149,22,1,' sd','2024-12-05 04:45:37','2024-12-05 04:45:37','admin',NULL),(150,17,1,'','2024-12-05 05:04:32','2024-12-05 05:04:32','admin','/uploads/1733375072192.png'),(151,17,1,' ksdfjsdkfsdkfsdkffff;lasdkffflsdkkdkd','2024-12-05 05:05:44','2024-12-05 05:05:44','admin',NULL),(152,22,1,'sdfsfd','2024-12-05 05:09:50','2024-12-05 05:09:50','admin',NULL),(153,22,1,' dfsdf','2024-12-05 05:09:52','2024-12-05 05:09:52','admin',NULL),(154,22,1,' fsdf','2024-12-05 05:09:53','2024-12-05 05:09:53','admin',NULL),(155,22,1,' dfsd','2024-12-05 05:09:53','2024-12-05 05:09:53','admin',NULL),(156,22,1,'dfgdf','2024-12-05 05:16:03','2024-12-05 05:16:03','admin',NULL),(157,22,1,' fgd','2024-12-05 05:16:03','2024-12-05 05:16:03','admin',NULL),(158,22,1,' df','2024-12-05 05:16:04','2024-12-05 05:16:04','admin',NULL),(159,22,1,'last message]','2024-12-05 05:16:12','2024-12-05 05:16:12','admin',NULL),(160,22,1,'sdfs','2024-12-05 05:16:28','2024-12-05 05:16:28','admin',NULL),(161,17,1,' sdfsfj','2024-12-05 05:17:24','2024-12-05 05:17:24','user',NULL),(162,17,1,' asdfsd','2024-12-05 05:18:06','2024-12-05 05:18:06','user',NULL),(163,17,1,' sdfs','2024-12-05 05:18:06','2024-12-05 05:18:06','user',NULL),(164,17,1,' sdfs','2024-12-05 05:18:07','2024-12-05 05:18:07','user',NULL),(165,17,1,'sfsdfdfsdfsd','2024-12-05 05:37:40','2024-12-05 05:37:40','user',NULL),(166,17,1,' d','2024-12-05 05:37:40','2024-12-05 05:37:40','user',NULL),(167,17,1,'sdfsdfsss','2024-12-05 06:00:43','2024-12-05 06:00:43','user',NULL),(168,17,1,' ss','2024-12-05 06:00:44','2024-12-05 06:00:44','user',NULL),(169,17,1,' s','2024-12-05 06:00:45','2024-12-05 06:00:45','user',NULL),(170,17,1,' s','2024-12-05 06:00:45','2024-12-05 06:00:45','user',NULL),(171,17,1,' s','2024-12-05 06:00:46','2024-12-05 06:00:46','user',NULL),(172,17,1,' s','2024-12-05 06:00:46','2024-12-05 06:00:46','user',NULL),(173,17,1,' s','2024-12-05 06:00:47','2024-12-05 06:00:47','user',NULL),(174,17,1,' sdfas','2024-12-05 06:04:15','2024-12-05 06:04:15','user',NULL),(175,17,1,' sdfsdfsdfasdf','2024-12-05 06:04:20','2024-12-05 06:04:20','user',NULL),(176,17,1,' sfdsd','2024-12-05 06:05:29','2024-12-05 06:05:29','user',NULL),(177,17,1,' sdfs','2024-12-05 06:05:31','2024-12-05 06:05:31','user',NULL),(178,23,1,'dfsdf','2024-12-05 06:48:25','2024-12-05 06:48:25','admin',NULL),(179,23,1,' sdfsdfdfsdfsdfsdfsd','2024-12-05 06:48:33','2024-12-05 06:48:33','admin',NULL),(180,23,1,' fdfdfsdfsdsdfsdfsdfsdfasdfsd','2024-12-05 06:48:56','2024-12-05 06:48:56','admin',NULL),(181,23,1,' sdfsd','2024-12-05 06:48:57','2024-12-05 06:48:57','admin',NULL),(182,23,1,' dfsdf','2024-12-05 06:48:58','2024-12-05 06:48:58','admin',NULL),(183,23,1,' dfsdf','2024-12-05 06:48:58','2024-12-05 06:48:58','admin',NULL),(184,23,1,' sdfsfs','2024-12-05 06:48:59','2024-12-05 06:48:59','admin',NULL),(185,23,1,' df','2024-12-05 06:48:59','2024-12-05 06:48:59','admin',NULL),(186,23,1,' d','2024-12-05 06:48:59','2024-12-05 06:48:59','admin',NULL),(187,23,1,' sdfsd','2024-12-05 06:49:00','2024-12-05 06:49:00','admin',NULL),(188,23,1,' sdfsdfasdfd','2024-12-05 06:49:35','2024-12-05 06:49:35','admin',NULL),(189,23,1,' sdfs','2024-12-05 06:49:36','2024-12-05 06:49:36','admin',NULL),(190,23,1,' sdfs','2024-12-05 06:49:36','2024-12-05 06:49:36','admin',NULL),(191,23,1,' fs','2024-12-05 06:49:36','2024-12-05 06:49:36','admin',NULL),(192,23,1,' fsdf','2024-12-05 06:49:37','2024-12-05 06:49:37','admin',NULL),(193,17,1,' fsdf','2024-12-05 06:51:16','2024-12-05 06:51:16','user',NULL),(194,17,1,' sdfsdf','2024-12-05 06:51:19','2024-12-05 06:51:19','user',NULL),(195,17,1,' sdfsdfs','2024-12-05 06:51:27','2024-12-05 06:51:27','user',NULL),(196,17,1,' sfsdf','2024-12-05 06:51:28','2024-12-05 06:51:28','user',NULL),(197,17,1,' sdsdfs','2024-12-05 06:51:30','2024-12-05 06:51:30','user',NULL),(198,17,1,' fsdf','2024-12-05 06:51:31','2024-12-05 06:51:31','user',NULL),(199,17,1,' sdfsd','2024-12-05 06:51:31','2024-12-05 06:51:31','user',NULL),(200,17,1,' sdfsd','2024-12-05 06:51:32','2024-12-05 06:51:32','user',NULL),(201,17,1,' sdfsd','2024-12-05 06:51:33','2024-12-05 06:51:33','user',NULL),(202,17,1,' sdfs','2024-12-05 06:51:34','2024-12-05 06:51:34','user',NULL),(203,17,1,' fs','2024-12-05 06:51:34','2024-12-05 06:51:34','user',NULL),(204,17,1,' fsdf','2024-12-05 06:51:34','2024-12-05 06:51:34','user',NULL),(205,17,1,' sdsdfsd','2024-12-05 06:51:48','2024-12-05 06:51:48','user',NULL),(206,17,1,' sfsdfsdsdf','2024-12-05 06:51:50','2024-12-05 06:51:50','user',NULL),(207,17,1,' fsdfsdfsdsdfsf','2024-12-05 06:58:39','2024-12-05 06:58:39','user',NULL),(208,21,1,'sdfs','2024-12-05 07:02:59','2024-12-05 07:02:59','admin',NULL),(209,17,1,'sdfsd','2024-12-05 07:03:40','2024-12-05 07:03:40','admin',NULL),(210,17,1,' sdfsd','2024-12-05 07:03:43','2024-12-05 07:03:43','user',NULL),(211,17,1,' dfsd','2024-12-05 07:03:46','2024-12-05 07:03:46','admin',NULL),(212,17,1,' ddfd','2024-12-05 07:03:48','2024-12-05 07:03:48','user',NULL),(213,17,1,'fsdf','2024-12-05 07:05:02','2024-12-05 07:05:02','user',NULL),(214,17,1,' sdfsdf','2024-12-05 07:05:14','2024-12-05 07:05:14','user',NULL),(215,17,1,'fsdfs','2024-12-05 07:05:59','2024-12-05 07:05:59','admin',NULL),(216,17,1,' sdfsdf','2024-12-05 07:06:35','2024-12-05 07:06:35','user',NULL),(217,17,1,' sdfsd','2024-12-05 07:06:40','2024-12-05 07:06:40','user',NULL),(218,17,1,' dfsdf','2024-12-05 07:06:43','2024-12-05 07:06:43','user',NULL),(219,17,1,' sdfsdf','2024-12-05 07:08:10','2024-12-05 07:08:10','user',NULL),(220,17,1,' dfsdf','2024-12-05 07:08:12','2024-12-05 07:08:12','user',NULL),(221,17,1,' ddf','2024-12-05 07:08:14','2024-12-05 07:08:14','user',NULL),(222,17,1,' sdfsdf','2024-12-05 07:09:02','2024-12-05 07:09:02','user',NULL),(223,17,1,' dfsd','2024-12-05 07:09:05','2024-12-05 07:09:05','user',NULL),(224,17,1,' sfsdf','2024-12-05 07:09:06','2024-12-05 07:09:06','user',NULL),(225,17,1,' sdfsfsdfsfs','2024-12-05 07:12:16','2024-12-05 07:12:16','user',NULL),(226,17,1,' fsfsd','2024-12-05 07:12:28','2024-12-05 07:12:28','user',NULL),(227,17,1,' fadf','2024-12-05 07:12:52','2024-12-05 07:12:52','user',NULL),(228,17,1,' dfsd','2024-12-05 07:12:53','2024-12-05 07:12:53','user',NULL),(229,17,1,' dfsdf','2024-12-05 07:12:54','2024-12-05 07:12:54','user',NULL),(230,17,1,' dfsdf','2024-12-05 07:12:55','2024-12-05 07:12:55','user',NULL),(231,17,1,' sdfs','2024-12-05 07:12:55','2024-12-05 07:12:55','user',NULL),(232,17,1,' f','2024-12-05 07:12:55','2024-12-05 07:12:55','user',NULL),(233,17,1,' df','2024-12-05 07:12:56','2024-12-05 07:12:56','user',NULL),(234,17,1,' s','2024-12-05 07:12:56','2024-12-05 07:12:56','user',NULL),(235,17,1,' ffsdfsdf','2024-12-05 07:17:36','2024-12-05 07:17:36','user',NULL),(236,17,1,' ','2024-12-05 07:18:11','2024-12-05 07:18:11','user','/uploads/1733383091501.png'),(237,17,1,' fsdfsdf','2024-12-05 07:19:35','2024-12-05 07:19:35','user',NULL),(238,17,1,'sfsdfsdf','2024-12-05 07:20:42','2024-12-05 07:20:42','user',NULL),(239,17,1,' sdf','2024-12-05 07:20:44','2024-12-05 07:20:44','user',NULL),(240,17,1,' dfsdf','2024-12-05 07:20:45','2024-12-05 07:20:45','user',NULL),(241,17,1,' ','2024-12-05 07:20:55','2024-12-05 07:20:55','user','/uploads/1733383255375.png'),(242,17,1,' sdfsdf','2024-12-05 07:21:24','2024-12-05 07:21:24','user',NULL),(243,17,1,' dfsdf','2024-12-05 07:21:28','2024-12-05 07:21:28','user',NULL),(244,17,1,' fsdfsdf','2024-12-05 07:21:30','2024-12-05 07:21:30','user',NULL),(245,17,1,'jkgl','2024-12-05 07:27:19','2024-12-05 07:27:19','admin',NULL),(246,17,1,' sdkfjs;d','2024-12-05 07:27:20','2024-12-05 07:27:20','admin',NULL),(247,17,1,' sdflskdfa','2024-12-05 07:27:21','2024-12-05 07:27:21','admin',NULL),(248,17,1,' dsfaksldf','2024-12-05 07:27:21','2024-12-05 07:27:21','admin',NULL),(249,17,1,' skdfas','2024-12-05 07:27:22','2024-12-05 07:27:22','admin',NULL),(250,17,1,' faslfa','2024-12-05 07:27:22','2024-12-05 07:27:22','admin',NULL),(251,17,1,' fdgd','2024-12-05 07:28:11','2024-12-05 07:28:11','user',NULL),(252,17,1,' sdfsf','2024-12-05 07:28:14','2024-12-05 07:28:14','user',NULL),(253,17,1,' ','2024-12-05 07:28:36','2024-12-05 07:28:36','user','/uploads/1733383716708.png'),(254,17,1,' sfsfs','2024-12-05 07:37:16','2024-12-05 07:37:16','user',NULL),(255,17,1,' sfsfs','2024-12-05 07:37:17','2024-12-05 07:37:17','user',NULL),(256,17,1,' sfsfs','2024-12-05 07:37:17','2024-12-05 07:37:17','user',NULL),(257,17,1,' sfsfs','2024-12-05 07:37:17','2024-12-05 07:37:17','user',NULL),(258,17,1,' sfsfs','2024-12-05 07:37:18','2024-12-05 07:37:18','user',NULL),(259,17,1,' sfsfs','2024-12-05 07:37:18','2024-12-05 07:37:18','user',NULL),(260,17,1,' sfsfs','2024-12-05 07:37:18','2024-12-05 07:37:18','user',NULL),(261,17,1,' sfsfs','2024-12-05 07:37:18','2024-12-05 07:37:18','user',NULL),(262,17,1,' sfsfs','2024-12-05 07:37:22','2024-12-05 07:37:22','user',NULL),(263,17,1,'sdfsdf','2024-12-05 08:10:04','2024-12-05 08:10:04','admin',NULL),(264,17,1,'sdfsdf','2024-12-05 08:10:04','2024-12-05 08:10:04','admin',NULL),(265,17,1,'sdfsdf','2024-12-05 08:10:04','2024-12-05 08:10:04','admin',NULL),(266,17,1,'dfgdf ssdfsdffsfs','2024-12-05 08:24:15','2024-12-05 08:24:15','user',NULL),(267,17,1,' sdfsd','2024-12-05 08:24:19','2024-12-05 08:24:19','user',NULL),(268,17,1,'sddsdffsdfsdfsdfsdfsdfsd','2024-12-05 08:24:44','2024-12-05 08:24:44','admin',NULL),(269,17,1,' dfsdf','2024-12-05 08:24:47','2024-12-05 08:24:47','user',NULL),(270,17,1,' sdfsdf','2024-12-05 08:24:50','2024-12-05 08:24:50','admin',NULL),(271,17,1,'sdfs','2024-12-05 08:25:39','2024-12-05 08:25:39','admin',NULL),(272,17,1,'dfsd','2024-12-05 08:25:50','2024-12-05 08:25:50','user',NULL),(273,17,1,' sfsdf','2024-12-05 08:25:55','2024-12-05 08:25:55','admin',NULL),(274,17,1,' sfsdfsdfsfs','2024-12-05 08:27:45','2024-12-05 08:27:45','user',NULL),(275,17,1,' sdfsdf','2024-12-05 08:31:15','2024-12-05 08:31:15','user',NULL),(276,17,1,' dsfsd','2024-12-05 08:31:16','2024-12-05 08:31:16','user',NULL),(277,17,1,' sdfsdf','2024-12-05 08:44:34','2024-12-05 08:44:34','user',NULL),(278,17,1,'gsdfg','2024-12-05 09:30:41','2024-12-05 09:30:41','user',NULL),(279,17,1,' sdfsd','2024-12-05 09:31:25','2024-12-05 09:31:25','user',NULL),(280,17,1,' dfsdf','2024-12-05 09:31:27','2024-12-05 09:31:27','user',NULL),(281,17,1,'sdfsdf','2024-12-05 09:31:30','2024-12-05 09:31:30','admin',NULL),(282,17,1,' dfsdf','2024-12-05 09:31:38','2024-12-05 09:31:38','admin',NULL),(283,17,1,' wwefds','2024-12-05 09:31:42','2024-12-05 09:31:42','user',NULL),(284,17,1,' sdfsd','2024-12-05 09:31:46','2024-12-05 09:31:46','user',NULL),(285,17,1,'','2024-12-05 09:32:07','2024-12-05 09:32:07','user','/uploads/1733391127283.png'),(286,17,1,' dfgdfg','2024-12-05 09:32:23','2024-12-05 09:32:23','admin',NULL),(287,17,1,' sfg','2024-12-05 09:32:25','2024-12-05 09:32:25','admin',NULL),(288,17,1,' dsfs','2024-12-05 09:42:18','2024-12-05 09:42:18','admin',NULL),(289,17,1,' sdfsfs','2024-12-05 09:42:25','2024-12-05 09:42:25','admin',NULL),(290,17,1,'fsdfsdf','2024-12-05 09:42:39','2024-12-05 09:42:39','user',NULL),(291,17,1,' sdfsd','2024-12-05 09:42:42','2024-12-05 09:42:42','admin',NULL),(292,17,1,' sdfsdf','2024-12-05 09:42:45','2024-12-05 09:42:45','admin',NULL),(293,17,1,' fsdf','2024-12-05 09:42:46','2024-12-05 09:42:46','admin',NULL),(294,17,1,' sdf','2024-12-05 09:42:47','2024-12-05 09:42:47','admin',NULL),(295,17,1,' sdfsdfs','2024-12-05 09:42:47','2024-12-05 09:42:47','admin',NULL),(296,17,1,' sdf','2024-12-05 09:42:48','2024-12-05 09:42:48','admin',NULL),(297,17,1,' sdfsf','2024-12-05 09:42:55','2024-12-05 09:42:55','user',NULL),(298,17,1,' dfsdf','2024-12-05 09:42:57','2024-12-05 09:42:57','admin',NULL),(299,17,1,' ','2024-12-05 09:43:44','2024-12-05 09:43:44','admin','/uploads/1733391824411.png'),(300,17,1,' ','2024-12-05 09:44:00','2024-12-05 09:44:00','admin','/uploads/1733391840115.png'),(301,17,1,'sfdfsdfsdf','2024-12-05 10:19:37','2024-12-05 10:19:37','admin',NULL),(302,17,1,' sdfsdf','2024-12-05 10:19:38','2024-12-05 10:19:38','admin',NULL),(303,17,1,' sdf','2024-12-05 10:19:38','2024-12-05 10:19:38','admin',NULL),(304,17,1,' sdfsdfsdf','2024-12-05 10:20:07','2024-12-05 10:20:07','user',NULL),(305,17,1,' fsdfsdf','2024-12-05 10:20:08','2024-12-05 10:20:08','user',NULL),(306,17,1,' sdfsd','2024-12-05 10:20:11','2024-12-05 10:20:11','user',NULL),(307,17,1,' dsfsdfsdf','2024-12-05 10:20:15','2024-12-05 10:20:15','user',NULL),(308,17,1,'sdfs','2024-12-05 10:55:04','2024-12-05 10:55:04','user',NULL),(309,17,1,' sdfs','2024-12-05 10:55:05','2024-12-05 10:55:05','user',NULL),(310,17,1,' sdf','2024-12-05 10:55:05','2024-12-05 10:55:05','user',NULL),(311,17,1,'jkgs','2024-12-05 11:15:34','2024-12-05 11:15:34','user',NULL),(312,17,1,' fdlgjsd','2024-12-05 11:15:35','2024-12-05 11:15:35','user',NULL),(313,17,1,' gdfgdgdf','2024-12-05 11:15:39','2024-12-05 11:15:39','user',NULL),(314,17,1,' dfg','2024-12-05 11:15:40','2024-12-05 11:15:40','user',NULL),(315,17,1,' fg','2024-12-05 11:15:40','2024-12-05 11:15:40','user',NULL),(316,17,1,' dfg','2024-12-05 11:15:40','2024-12-05 11:15:40','user',NULL),(317,17,1,' dfg','2024-12-05 11:15:41','2024-12-05 11:15:41','user',NULL),(318,17,1,' fgd','2024-12-05 11:15:41','2024-12-05 11:15:41','user',NULL),(319,17,1,' fgd','2024-12-05 11:15:42','2024-12-05 11:15:42','user',NULL),(320,17,1,' gd','2024-12-05 11:15:42','2024-12-05 11:15:42','user',NULL),(321,17,1,' gd','2024-12-05 11:15:42','2024-12-05 11:15:42','user',NULL),(322,17,1,' g','2024-12-05 11:15:43','2024-12-05 11:15:43','user',NULL),(323,17,1,' gdfg','2024-12-05 11:15:44','2024-12-05 11:15:44','user',NULL),(324,17,1,' gf','2024-12-05 11:15:44','2024-12-05 11:15:44','user',NULL),(325,17,1,'dgdfgdfg','2024-12-05 11:22:17','2024-12-05 11:22:17','user',NULL),(326,17,1,' fgdfg','2024-12-05 11:22:18','2024-12-05 11:22:18','user',NULL),(327,17,1,' fgd','2024-12-05 11:22:18','2024-12-05 11:22:18','user',NULL),(328,17,1,' fgdf','2024-12-05 11:22:18','2024-12-05 11:22:18','user',NULL),(329,17,1,' gdf','2024-12-05 11:22:19','2024-12-05 11:22:19','user',NULL),(330,17,1,' dfg','2024-12-05 11:22:19','2024-12-05 11:22:19','user',NULL),(331,17,1,' dfgd','2024-12-05 11:22:20','2024-12-05 11:22:20','user',NULL),(332,17,1,' fgd','2024-12-05 11:22:20','2024-12-05 11:22:20','user',NULL),(333,17,1,'sdfsdf','2024-12-05 11:32:42','2024-12-05 11:32:42','user',NULL),(334,17,1,' sdfs','2024-12-05 11:32:45','2024-12-05 11:32:45','user',NULL),(335,17,1,' sdfsdf','2024-12-05 11:32:47','2024-12-05 11:32:47','user',NULL),(336,17,1,' sdfsd','2024-12-05 11:32:48','2024-12-05 11:32:48','user',NULL),(337,17,1,' df','2024-12-05 11:32:48','2024-12-05 11:32:48','user',NULL),(338,17,1,' sfdfsd','2024-12-05 11:32:53','2024-12-05 11:32:53','user',NULL),(339,17,1,' fsdfs','2024-12-05 11:32:54','2024-12-05 11:32:54','user',NULL),(340,17,1,' ne message','2024-12-05 11:32:59','2024-12-05 11:32:59','user',NULL),(341,17,1,' new message','2024-12-05 11:33:03','2024-12-05 11:33:03','user',NULL),(342,17,1,' esend sdfjslkdf','2024-12-05 11:33:07','2024-12-05 11:33:07','user',NULL),(343,17,1,'asdasd','2024-12-05 11:43:11','2024-12-05 11:43:11','admin',NULL),(344,17,1,' fsdf','2024-12-05 11:43:14','2024-12-05 11:43:14','admin',NULL),(345,17,1,' fsd','2024-12-05 11:43:14','2024-12-05 11:43:14','admin',NULL),(346,17,1,' df','2024-12-05 11:43:15','2024-12-05 11:43:15','admin',NULL),(347,17,1,' sdfsdfsdf','2024-12-05 11:43:53','2024-12-05 11:43:53','admin',NULL),(348,17,1,'sfs','2024-12-05 11:44:07','2024-12-05 11:44:07','user',NULL),(349,17,1,' dfsdf','2024-12-05 11:44:08','2024-12-05 11:44:08','user',NULL),(350,17,1,' sdfsdf','2024-12-05 11:44:09','2024-12-05 11:44:09','user',NULL),(351,17,1,' sdf','2024-12-05 11:44:09','2024-12-05 11:44:09','user',NULL),(352,17,1,' df','2024-12-05 11:44:09','2024-12-05 11:44:09','user',NULL),(353,17,1,' sfsd','2024-12-05 11:44:09','2024-12-05 11:44:09','user',NULL),(354,17,1,' fs','2024-12-05 11:44:10','2024-12-05 11:44:10','user',NULL),(355,17,1,' f','2024-12-05 11:44:10','2024-12-05 11:44:10','user',NULL),(356,17,1,'kjkl','2024-12-05 11:58:25','2024-12-05 11:58:25','user',NULL),(357,17,1,' j','2024-12-05 11:58:26','2024-12-05 11:58:26','user',NULL),(358,17,1,' kj','2024-12-05 11:58:27','2024-12-05 11:58:27','user',NULL),(359,17,1,' kj','2024-12-05 11:58:27','2024-12-05 11:58:27','user',NULL),(360,17,1,' kj','2024-12-05 11:58:28','2024-12-05 11:58:28','user',NULL),(361,17,1,' lj','2024-12-05 11:58:29','2024-12-05 11:58:29','user',NULL),(362,17,1,' jklj','2024-12-05 11:58:47','2024-12-05 11:58:47','user',NULL),(363,17,1,'dfdffsdfsdfsf','2024-12-05 12:37:59','2024-12-05 12:37:59','admin',NULL),(364,17,1,' dwssds','2024-12-05 12:38:51','2024-12-05 12:38:51','admin',NULL),(365,25,3,'jfas','2024-12-06 06:20:05','2024-12-06 06:20:05','admin',NULL),(366,25,3,' fskdfas','2024-12-06 06:20:06','2024-12-06 06:20:06','admin',NULL),(367,25,3,' dfdfksdjf','2024-12-06 06:20:07','2024-12-06 06:20:07','admin',NULL),(368,25,3,' dkfsd','2024-12-06 06:20:07','2024-12-06 06:20:07','admin',NULL),(369,25,3,' sdkfjsdf','2024-12-06 06:20:08','2024-12-06 06:20:08','admin',NULL),(370,25,3,' sdfsdkfj','2024-12-06 06:20:09','2024-12-06 06:20:09','admin',NULL),(371,25,3,' sdfksdf','2024-12-06 06:20:09','2024-12-06 06:20:09','admin',NULL),(372,25,3,' sdfkldf','2024-12-06 06:20:10','2024-12-06 06:20:10','admin',NULL);
/*!40000 ALTER TABLE `supportmessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supporttickets`
--

DROP TABLE IF EXISTS `supporttickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supporttickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `useremail` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userid` int(11) NOT NULL,
  `issue` varchar(255) DEFAULT NULL,
  `status` enum('Pending','In Progress','Resolved') DEFAULT 'Pending',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `message` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  CONSTRAINT `supporttickets_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supporttickets`
--

LOCK TABLES `supporttickets` WRITE;
/*!40000 ALTER TABLE `supporttickets` DISABLE KEYS */;
INSERT INTO `supporttickets` VALUES (17,'admin@gmail.com','admin',1,'Can\'t enable the 2fa','Resolved','2024-12-02 18:23:15','2024-12-06 10:20:11','sdfs'),(20,'admin@gmail.com','admin',1,'Can\'t disable the 2fa','Resolved','2024-12-03 01:54:47','2024-12-03 01:54:47','sdfs'),(21,'admin@gmail.com','admin',1,'Can\'t disable the 2fa','Resolved','2024-12-03 03:18:10','2024-12-03 03:18:10','df'),(22,'admin@gmail.com','admin',1,'Can\'t change the password','Resolved','2024-12-03 03:46:11','2024-12-03 11:19:07','sd'),(23,'admin@gmail.com','admin',1,'Can\'t see the full details of the task','Resolved','2024-12-03 05:21:00','2024-12-03 11:18:37','cna not see the full detaisl sove this'),(24,'user@gmail.com','user',3,'Can\'t see the full details of the task','In Progress','2024-12-03 05:37:24','2024-12-03 05:37:24','sdfs'),(25,'user@gmail.com','user',3,'Can\'t change the password','Resolved','2024-12-03 05:51:40','2024-12-06 06:19:51','sdfs'),(26,'user@gmail.com','user',3,'Can\'t see the full details of the task','Pending','2024-12-03 07:12:15','2024-12-03 07:12:15','sdfsdf'),(27,'user@gmail.com','user',3,'Can\'t see the full details of the task','Resolved','2024-12-03 07:12:22','2024-12-04 04:33:32','dfsdf'),(28,'user@gmail.com','user',3,'Can\'t change the password','Pending','2024-12-03 07:14:45','2024-12-03 07:14:45','sdfsdf'),(29,'user@gmail.com','user',3,'Can\'t see the full details of the task','Pending','2024-12-03 07:19:52','2024-12-03 07:19:52','sdfsdf'),(30,'admin@gmail.com','admin',1,'others','Resolved','2024-12-03 09:52:49','2024-12-03 11:57:57','sdfsdfsdf'),(31,'admin@gmail.com','admin',1,'Can\'t change the password','Pending','2024-12-03 09:58:37','2024-12-03 09:58:37','facing isuuse wehen changein passoweirjslkdfjas;ldk fsadfsadf'),(32,'admin@gmail.com','admin',1,'Can\'t enable the 2fa','Pending','2024-12-05 04:54:21','2024-12-05 04:54:21','fsfsdf');
/*!40000 ALTER TABLE `supporttickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taskdetails`
--

DROP TABLE IF EXISTS `taskdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taskdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `status` enum('complete','pending') DEFAULT 'pending',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `taskId` (`taskId`),
  KEY `userId` (`userId`),
  CONSTRAINT `taskdetails_ibfk_13` FOREIGN KEY (`taskId`) REFERENCES `tasks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `taskdetails_ibfk_14` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taskdetails`
--

LOCK TABLES `taskdetails` WRITE;
/*!40000 ALTER TABLE `taskdetails` DISABLE KEYS */;
INSERT INTO `taskdetails` VALUES (15,19,1,'pending','2024-12-11 08:25:49','2024-12-11 08:25:49'),(16,19,3,'pending','2024-12-11 08:25:49','2024-12-11 08:25:49'),(17,19,14,'pending','2024-12-11 08:25:49','2024-12-11 08:25:49'),(18,19,15,'pending','2024-12-11 08:25:49','2024-12-11 08:25:49'),(19,19,16,'pending','2024-12-11 08:25:49','2024-12-11 08:25:49'),(20,19,17,'pending','2024-12-11 08:25:49','2024-12-11 08:25:49'),(21,15,23,'pending','2024-12-11 11:41:49','2024-12-11 11:41:49'),(22,16,24,'pending','2024-12-11 11:58:19','2024-12-11 11:58:19'),(23,18,23,'pending','2024-12-11 12:14:33','2024-12-11 12:14:33'),(24,18,24,'pending','2024-12-11 12:14:33','2024-12-11 12:14:33');
/*!40000 ALTER TABLE `taskdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` varchar(300) NOT NULL,
  `expirydate` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `description` (`description`),
  UNIQUE KEY `content` (`content`),
  UNIQUE KEY `title_2` (`title`),
  UNIQUE KEY `description_2` (`description`),
  UNIQUE KEY `content_2` (`content`),
  UNIQUE KEY `title_3` (`title`),
  UNIQUE KEY `description_3` (`description`),
  UNIQUE KEY `content_3` (`content`),
  UNIQUE KEY `title_4` (`title`),
  UNIQUE KEY `description_4` (`description`),
  UNIQUE KEY `content_4` (`content`),
  UNIQUE KEY `title_5` (`title`),
  UNIQUE KEY `description_5` (`description`),
  UNIQUE KEY `content_5` (`content`),
  UNIQUE KEY `title_6` (`title`),
  UNIQUE KEY `description_6` (`description`),
  UNIQUE KEY `content_6` (`content`),
  UNIQUE KEY `title_7` (`title`),
  UNIQUE KEY `description_7` (`description`),
  UNIQUE KEY `content_7` (`content`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (15,'Est quod velit dolor','Qui a excepturi beat','Aut aute voluptatem','2005-11-19 00:00:00','2024-12-09 06:33:28','2024-12-11 11:41:49'),(16,'Laboriosam dolorem ','Ea voluptate qui ut ','Autem nisi sed minim','1992-12-19 00:00:00','2024-12-09 07:26:37','2024-12-11 11:58:19'),(17,'Reprehenderit labore','Necessitatibus iure ','Voluptas nostrud ull','1979-06-26 00:00:00','2024-12-09 07:26:55','2024-12-09 07:26:55'),(18,'Illum cupiditate is','Pariatur Est molest','At reprehenderit iu','2020-04-25 00:00:00','2024-12-10 05:08:50','2024-12-11 12:14:33'),(19,'Praesentium sed lore','Laborum non culpa vo','Sit laboriosam et ','1996-04-09 00:00:00','2024-12-10 05:09:03','2024-12-11 08:25:49');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templates`
--

DROP TABLE IF EXISTS `templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templates` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `templateContent` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templates`
--

LOCK TABLES `templates` WRITE;
/*!40000 ALTER TABLE `templates` DISABLE KEYS */;
INSERT INTO `templates` VALUES (1,'Pending Task Template',' <!DOCTYPE html>\n<html lang=\"en\">\n<head>\n    <meta charset=\"UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n    <title>Task Pending Notification</title>\n    <style>\n        body {\n            font-family: Arial, sans-serif;\n            background-color: #f4f7fc;\n            margin: 0;\n            padding: 0;\n        }\n        .email-container {\n            width: 100%;\n            background-color: #ffffff;\n            margin: 0 auto;\n            padding: 30px;\n            border-radius: 8px;\n            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);\n            max-width: 600px;\n        }\n        .email-header {\n            text-align: center;\n            background-color: #007bff;\n            color: #ffffff;\n            padding: 20px;\n            border-radius: 8px 8px 0 0;\n        }\n        .email-header h1 {\n            margin: 0;\n            font-size: 24px;\n        }\n        .email-content {\n            margin-top: 20px;\n            font-size: 16px;\n            line-height: 1.6;\n            color: #333333;\n        }\n        .email-content p {\n            margin: 10px 0;\n        }\n        \n    </style>\n</head>\n<body>\n    <div class=\"email-container\">\n        <div class=\"email-header\">\n            <h1>Task Pending Notification</h1>\n        </div>\n        <div class=\"email-content\">\n            <p>Hello <strong>{{name}}</strong>,</p>\n            <p>This is a friendly reminder that the task <strong>{{taskname}}</strong> is currently marked as <strong>Pending</strong>.</p>\n            <p>As the deadline is approaching, we kindly ask you to review the task and take any necessary actions to ensure it is completed on time.</p>\n            <p>If you need any assistance or have questions, feel free to reach out to me.</p>\n            <p>Thank you for your attention and cooperation.</p>\n            <p>Best regards,</p>\n        </div>\n       \n    </div>\n</body>\n</html>\n','2024-12-11 16:26:44','2024-12-11 16:26:44');
/*!40000 ALTER TABLE `templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` char(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `role` enum('user','admin') DEFAULT 'user',
  `accountStatus` enum('blocked','unblocked') DEFAULT 'unblocked',
  `twoFactor` tinyint(1) DEFAULT 0,
  `twoFactorKey` varchar(255) DEFAULT NULL,
  `isTwoFactorSetup` tinyint(1) DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `email_2` (`email`),
  UNIQUE KEY `email_3` (`email`),
  UNIQUE KEY `email_4` (`email`),
  UNIQUE KEY `email_5` (`email`),
  UNIQUE KEY `email_6` (`email`),
  UNIQUE KEY `email_7` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin@gmail.com','$2b$10$5mg8P0WC2WOzD8F913ogWeU5s9JPStrUO/d/s9Rjm8Q7uAbsaEx9a','admin','unblocked',0,'GVUG6USUGFUDWMSRFIYEO4SRGNIDQQSDH5RT6LSJMR6VQKLGJVDA',0,'2024-12-02 10:42:01','2024-12-03 13:32:18'),(3,'user','user@gmail.com','$2b$10$gQ8vZB1HcAovI2Kz7194aOusLdizmkPELYv5ZsmIL8YzgWo15.6su','user','unblocked',0,NULL,0,'2024-12-02 10:43:29','2024-12-02 10:43:29'),(14,'dedix','hubenifowe@mailinator.com','$2b$10$l4xU2sbuCxYq77fqT6JfguojEm5ByFBdfh.TlBAAfYPsHDM7.y926','user','unblocked',0,NULL,0,'2024-12-06 13:39:05','2024-12-06 13:39:05'),(15,'mydihuquxy','jogot@mailinator.com','$2b$10$HgJos/53jgR9gcto5ogqgOupK.WIvluK6ZY32//dituo7osjACw6.','user','unblocked',0,NULL,0,'2024-12-09 12:58:02','2024-12-09 12:58:02'),(16,'tumury','golo@mailinator.com','$2b$10$ixUJEkq6v23VvdM5XjYFeuMtjCLk9Iqpse9gymcvEB74X9n4h92.O','user','unblocked',0,NULL,0,'2024-12-09 12:58:15','2024-12-09 12:58:15'),(17,'zupesylufo','tozi@mailinator.com','$2b$10$C0jzxbdWSehntc5CVEh.g.2A27h1Jiw3XHT3OjjB/Af9zOgTUQQ1G','user','unblocked',0,NULL,0,'2024-12-09 12:58:30','2024-12-09 12:58:30'),(18,'rosyki','pywel@mailinator.com','$2b$10$1I7zZoSaLYjOaUJx86SdfuSmErqKj7dU/9LcMYrCMOvNZHcgctKsq','user','unblocked',0,NULL,0,'2024-12-09 12:58:50','2024-12-09 12:58:50'),(19,'hotoqyhes','bovyta@mailinator.com','$2b$10$mqS/ngEx/zVoARcbDICqjORHl0npSjsQBw1rxbTIfonchqGDPuAvq','user','unblocked',0,NULL,0,'2024-12-09 12:59:02','2024-12-09 12:59:02'),(20,'qukiwix','kubomaq@mailinator.com','$2b$10$V8uWkkIbulEbTlpbFkJRUO9N0o2.xqw.xWAevWv8Sp9fE8VIoGmGG','user','unblocked',0,NULL,0,'2024-12-09 12:59:14','2024-12-09 12:59:14'),(21,'bozuz','kyfun@mailinator.com','$2b$10$uvz9fQycdgFopi2Y6BAaY.tu1KKbbpzv2077w6Ze2cdgW.7e3QLqm','user','unblocked',0,NULL,0,'2024-12-09 12:59:28','2024-12-09 12:59:28'),(23,'random user','alt.vk-5ogx592@yopmail.com','$2b$10$UdwQ3rHMT3K/n/8qy5kqrOXrIuY9uFCDDOCUj706T5Br4mxc92LbW','user','unblocked',0,NULL,0,'2024-12-11 11:41:24','2024-12-11 11:41:24'),(24,'random user 2','quopruppoittugi-2234@yopmail.com','$2b$10$6hg6QZ8SykhFWqLRpZM0tOJZvznP0NKpSv62jjEJ0XlleV/A8AXDq','user','unblocked',0,NULL,0,'2024-12-11 11:57:54','2024-12-11 11:57:54');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-17 15:52:46
