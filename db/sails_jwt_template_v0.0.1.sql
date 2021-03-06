-- MySQL dump 10.13  Distrib 5.6.20, for osx10.7 (x86_64)
--
-- Host: localhost    Database: sails_jwt_template
-- ------------------------------------------------------
-- Server version	5.6.20-log

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
-- Table structure for table `attempt`
--

DROP TABLE IF EXISTS `attempt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attempt` (
  `user` int(11) DEFAULT NULL,
  `successful` tinyint(1) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `port` varchar(255) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attempt`
--

LOCK TABLES `attempt` WRITE;
/*!40000 ALTER TABLE `attempt` DISABLE KEYS */;
INSERT INTO `attempt` VALUES (1,1,'127.0.0.1','63402',1,'2014-11-14 23:56:36','2014-11-14 23:56:36'),(1,1,'127.0.0.1','54260',2,'2015-09-13 18:31:03','2015-09-13 18:31:03'),(1,1,'127.0.0.1','54262',3,'2015-09-13 18:31:05','2015-09-13 18:31:05'),(1,1,'127.0.0.1','54758',4,'2015-09-13 20:25:30','2015-09-13 20:25:30'),(1,1,'127.0.0.1','54776',5,'2015-09-13 20:27:42','2015-09-13 20:27:42'),(1,1,'127.0.0.1','54850',6,'2015-09-13 20:34:08','2015-09-13 20:34:08'),(1,1,'127.0.0.1','54864',7,'2015-09-13 20:35:52','2015-09-13 20:35:52'),(1,1,'127.0.0.1','54886',8,'2015-09-13 20:39:07','2015-09-13 20:39:07');
/*!40000 ALTER TABLE `attempt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth`
--

DROP TABLE IF EXISTS `auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth` (
  `user` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetToken` int(11) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth`
--

LOCK TABLES `auth` WRITE;
/*!40000 ALTER TABLE `auth` DISABLE KEYS */;
INSERT INTO `auth` VALUES (1,'abc5@gmail.com','$2a$10$akAixEni9CC7fN0Ml.lUOehfcAIFBmhMiiJLO3vzUaAdqR9Uoggj.',NULL,1,'2014-11-14 21:07:11','2014-11-14 21:07:11');
/*!40000 ALTER TABLE `auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jwt`
--

DROP TABLE IF EXISTS `jwt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jwt` (
  `token` varchar(1024) DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  `revoked` tinyint(1) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jwt`
--

LOCK TABLES `jwt` WRITE;
/*!40000 ALTER TABLE `jwt` DISABLE KEYS */;
INSERT INTO `jwt` VALUES ('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIxfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJhcHAgbmFtZSIsImV4cCI6MTQxNjYwNDA1NTE3OCwibmJmIjoxNDE1OTk5MjU1MTc5LCJpYXQiOjE0MTU5OTkyNTUxNzksImp0aSI6IjQxOTM5NWIwLTZjNDItMTFlNC05MmQ5LTZmNjYwOWZlNjJkYiJ9.lP2PoTCH7pWX-O7xlwxEG1NmHu7jNxEKrRXBgpT_s10',1,0,1,'2014-11-14 21:07:35','2014-11-14 21:07:35'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIxfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJhcHAgbmFtZSIsImV4cCI6MTQxNjYxNDIwODUzNSwibmJmIjoxNDE2MDA5NDA4NTM3LCJpYXQiOjE0MTYwMDk0MDg1MzcsImp0aSI6ImU1NzMxMDkwLTZjNTktMTFlNC04N2NjLWFkYjVmNDI5MmI4ZCJ9.aXv0_9VsqAfoCkFfyrRaPZPK-N_HTyrlX9FdwxW5UDI',1,0,2,'2014-11-14 23:56:48','2014-11-14 23:56:48'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIxfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJhcHAgbmFtZSIsImV4cCI6MTQ0Mjc3MDI2MzgwNiwibmJmIjoxNDQyMTY1NDYzODA4LCJpYXQiOjE0NDIxNjU0NjM4MDgsImp0aSI6IjM1NDdmMDAwLTVhM2QtMTFlNS05YWY2LWUzNTBmYjY3YmRkZSJ9.DHdGwKnz2zflAmpaaNJZe95aqYO65Z-27qVJgcEXeF0',1,0,3,'2015-09-13 18:31:03','2015-09-13 18:31:03'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIxfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJhcHAgbmFtZSIsImV4cCI6MTQ0Mjc3MDI2NTY1MCwibmJmIjoxNDQyMTY1NDY1NjUxLCJpYXQiOjE0NDIxNjU0NjU2NTEsImp0aSI6IjM2NjEyODMwLTVhM2QtMTFlNS05YWY2LWUzNTBmYjY3YmRkZSJ9.p9BEkd0nNLm_YeqLv9l8BrI2_j55tja8Gv2zjsd4VbE',1,0,4,'2015-09-13 18:31:05','2015-09-13 18:31:05'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIxfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJhcHAgbmFtZSIsImV4cCI6MTQ0Mjc3NzEzMDY4NCwibmJmIjoxNDQyMTcyMzMwNjg1LCJpYXQiOjE0NDIxNzIzMzA2ODUsImp0aSI6IjMyNDIzNmQwLTVhNGQtMTFlNS1hOGExLTMxZTRkNGQwYWFhMSJ9.AFAnEpFMUFx2KBlO1AXts0figHCDgemDvCfvRX3y07o',1,0,5,'2015-09-13 20:25:30','2015-09-13 20:25:30'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIxfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJhcHAgbmFtZSIsImV4cCI6MTQ0Mjc3NzE2MDAwNiwibmJmIjoxNDQyMTcyMzYwMDA3LCJpYXQiOjE0NDIxNzIzNjAwMDcsImp0aSI6IjQzYmM2NTcwLTVhNGQtMTFlNS1hOGExLTMxZTRkNGQwYWFhMSJ9.y8cWYEy1FfH5NM3mw0O-Ktry4ADQee6OIKP4pxS8Ru8',1,0,6,'2015-09-13 20:26:00','2015-09-13 20:26:00'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIxfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJhcHAgbmFtZSIsImV4cCI6MTQ0Mjc3NzI2MjMxNSwibmJmIjoxNDQyMTcyNDYyMzE2LCJpYXQiOjE0NDIxNzI0NjIzMTYsImp0aSI6IjgwYjc4MmMwLTVhNGQtMTFlNS04MDNkLThkZjE5YTg4MmQyZiJ9.sFcAQDihU6f43MjERzQqBjBy7Ki8X5qC63-sEcxGoIU',1,0,7,'2015-09-13 20:27:42','2015-09-13 20:27:42'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIxfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJhcHAgbmFtZSIsImV4cCI6MTQ0Mjc3NzM4NTY5NCwibmJmIjoxNDQyMTcyNTg1Njk0LCJpYXQiOjE0NDIxNzI1ODU2OTQsImp0aSI6ImNhNDE3ZmUwLTVhNGQtMTFlNS04MDNkLThkZjE5YTg4MmQyZiJ9.zbq0pexmTvfJrK8XID879mu7hVMUK1f6w3nKQpj_wAQ',1,0,8,'2015-09-13 20:29:45','2015-09-13 20:29:45'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIxfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJhcHAgbmFtZSIsImV4cCI6MTQ0Mjc3NzY0ODc1MywibmJmIjoxNDQyMTcyODQ4NzUzLCJpYXQiOjE0NDIxNzI4NDg3NTMsImp0aSI6IjY3MGQxZTEwLTVhNGUtMTFlNS04MDNkLThkZjE5YTg4MmQyZiJ9.hzptDBm5PuNihG6lJTiMUtkNQSp_5Zw2E3WCXPtO_Rw',1,0,9,'2015-09-13 20:34:08','2015-09-13 20:34:08'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIxfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJhcHAgbmFtZSIsImV4cCI6MTQ0Mjc3NzY2NTE1OCwibmJmIjoxNDQyMTcyODY1MTU4LCJpYXQiOjE0NDIxNzI4NjUxNTgsImp0aSI6IjcwZDQ1MjYwLTVhNGUtMTFlNS04MDNkLThkZjE5YTg4MmQyZiJ9.-GlRlnMM94KCAmPiW2PwDUqRxV5EeqQJJt2PYkLr2EE',1,0,10,'2015-09-13 20:34:25','2015-09-13 20:34:25'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIxfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJhcHAgbmFtZSIsImV4cCI6MTQ0Mjc3NzY4MTk2MSwibmJmIjoxNDQyMTcyODgxOTYxLCJpYXQiOjE0NDIxNzI4ODE5NjEsImp0aSI6IjdhZDg0MTkwLTVhNGUtMTFlNS04MDNkLThkZjE5YTg4MmQyZiJ9._ZVoMXYIwJDRadHrpX7o_ZS8zPAR-VX68s8c0uv4MBY',1,0,11,'2015-09-13 20:34:41','2015-09-13 20:34:41'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIxfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJhcHAgbmFtZSIsImV4cCI6MTQ0Mjc3Nzc1MjEzOCwibmJmIjoxNDQyMTcyOTUyMTM5LCJpYXQiOjE0NDIxNzI5NTIxMzksImp0aSI6ImE0YWM5MWIwLTVhNGUtMTFlNS1iOTM0LTg5ZmRhODdlN2U4MCJ9.0x9klzO7_AkWJB8Bgoenkc0HydldtNye5tL3kVaS7Ho',1,0,12,'2015-09-13 20:35:52','2015-09-13 20:35:52'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIxfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJhcHAgbmFtZSIsImV4cCI6MTQ0Mjc3Nzc1NTM4MSwibmJmIjoxNDQyMTcyOTU1MzgxLCJpYXQiOjE0NDIxNzI5NTUzODEsImp0aSI6ImE2OWI0MjUwLTVhNGUtMTFlNS1iOTM0LTg5ZmRhODdlN2U4MCJ9.DQJUvL_yYnBgEcC_0rITtcZ0SWZjRFkmKnMTwSj2kG0',1,0,13,'2015-09-13 20:35:55','2015-09-13 20:35:55'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIxfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJhcHAgbmFtZSIsImV4cCI6MTQ0Mjc3Nzk0NzY0NCwibmJmIjoxNDQyMTczMTQ3NjQ1LCJpYXQiOjE0NDIxNzMxNDc2NDUsImp0aSI6IjE5MzQ5MWUwLTVhNGYtMTFlNS04NGQ2LTM5YzgyZGM4YjFmNCJ9.kG0dfEVQ5BEa9dIFmNYRAXN1aNWOBWOmX-9rgCJ7E5M',1,0,14,'2015-09-13 20:39:07','2015-09-13 20:39:07'),('eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIxfHVuZGVmaW5lZCIsInN1YiI6InN1YmplY3QiLCJhdWQiOiJhcHAgbmFtZSIsImV4cCI6MTQ0Mjc3Nzk1MDI1NywibmJmIjoxNDQyMTczMTUwMjU3LCJpYXQiOjE0NDIxNzMxNTAyNTcsImp0aSI6IjFhYzJmYTEwLTVhNGYtMTFlNS04NGQ2LTM5YzgyZGM4YjFmNCJ9.lru474nMDiSI7WaneaZI1A3qNG_vuzSJ7bhCOmE6LJ4',1,0,15,'2015-09-13 20:39:10','2015-09-13 20:39:10');
/*!40000 ALTER TABLE `jwt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resettoken`
--

DROP TABLE IF EXISTS `resettoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resettoken` (
  `token` longtext,
  `owner` int(11) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resettoken`
--

LOCK TABLES `resettoken` WRITE;
/*!40000 ALTER TABLE `resettoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `resettoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rtest`
--

DROP TABLE IF EXISTS `rtest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rtest` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rtest`
--

LOCK TABLES `rtest` WRITE;
/*!40000 ALTER TABLE `rtest` DISABLE KEYS */;
/*!40000 ALTER TABLE `rtest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `use`
--

DROP TABLE IF EXISTS `use`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `use` (
  `remoteAddress` varchar(255) DEFAULT NULL,
  `jsonWebToken` int(11) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `use`
--

LOCK TABLES `use` WRITE;
/*!40000 ALTER TABLE `use` DISABLE KEYS */;
INSERT INTO `use` VALUES ('127.0.0.1',1,1,'2014-11-14 21:08:08','2014-11-14 21:08:08'),('127.0.0.1',1,2,'2014-11-14 21:10:41','2014-11-14 21:10:41'),('127.0.0.1',1,3,'2014-11-14 21:11:19','2014-11-14 21:11:19');
/*!40000 ALTER TABLE `use` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `auth` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'test5','yunjia','li','abc5@gmail.com',1,'normal',1,'2014-11-14 21:07:11','2014-11-14 21:07:11');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-21  9:17:34
