-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: assignment
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `a_likes_c`
--

DROP TABLE IF EXISTS `a_likes_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_likes_c` (
  `account_name` varchar(30) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `dtime` datetime DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`account_name`,`comment_id`),
  KEY `cmt_id_like_idx` (`comment_id`),
  CONSTRAINT `a_acc_name_like` FOREIGN KEY (`account_name`) REFERENCES `account` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cmt_id_like` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`comment_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_likes_c`
--

LOCK TABLES `a_likes_c` WRITE;
/*!40000 ALTER TABLE `a_likes_c` DISABLE KEYS */;
INSERT INTO `a_likes_c` VALUES ('abc',36,'2018-05-08 22:09:46',-1),('abc',38,'2018-05-10 13:49:34',1),('abc',40,'2018-05-12 10:16:50',1),('abc',41,'2018-05-12 10:17:07',1),('minh',1,'2018-04-29 22:25:29',1),('minh',2,'2018-04-29 22:25:29',-1),('nhuy',1,'2018-04-29 22:25:29',1),('nhuy',2,'2018-04-29 22:25:29',1),('ntn',19,'2018-05-06 09:30:42',1),('ntn',35,'2018-05-08 10:31:18',-1),('ntn',38,'2018-05-10 13:49:20',1),('toto',20,'2018-05-13 16:26:41',1),('toto',28,'2018-05-13 16:26:48',-1),('toto',34,'2018-05-13 16:26:50',-1),('toto',35,'2018-05-12 19:37:00',1),('toto',37,'2018-05-12 17:58:27',-1),('toto',40,'2018-05-12 17:53:04',-1),('toto',41,'2018-05-13 18:54:17',-1),('xxx',1,'2018-04-29 23:38:34',1),('xxx',2,'2018-05-04 22:06:51',1);
/*!40000 ALTER TABLE `a_likes_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_likes_r`
--

DROP TABLE IF EXISTS `a_likes_r`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_likes_r` (
  `account_name` varchar(30) NOT NULL,
  `reply_id` int(11) NOT NULL,
  `dtime` datetime DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`account_name`,`reply_id`),
  KEY `a_cmt_id_like_r_idx` (`reply_id`),
  CONSTRAINT `a_acc_name_like_r` FOREIGN KEY (`account_name`) REFERENCES `account` (`username`),
  CONSTRAINT `a_cmt_id_like_r` FOREIGN KEY (`reply_id`) REFERENCES `reply` (`reply_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_likes_r`
--

LOCK TABLES `a_likes_r` WRITE;
/*!40000 ALTER TABLE `a_likes_r` DISABLE KEYS */;
INSERT INTO `a_likes_r` VALUES ('minh',1,'2018-04-29 18:11:19',-1),('nhuy',1,'2018-04-29 18:11:35',-1),('toto',15,'2018-05-13 16:26:45',1),('toto',16,'2018-05-12 17:42:32',-1),('xxx',1,'2018-04-29 18:11:05',1);
/*!40000 ALTER TABLE `a_likes_r` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_likes_v`
--

DROP TABLE IF EXISTS `a_likes_v`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_likes_v` (
  `account_name` varchar(30) NOT NULL,
  `video_id` int(11) NOT NULL,
  `dtime` datetime DEFAULT CURRENT_TIMESTAMP,
  `liked` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`account_name`,`video_id`),
  KEY `vid_id_like_idx` (`video_id`),
  CONSTRAINT `acc_name_like` FOREIGN KEY (`account_name`) REFERENCES `account` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vid_id_like` FOREIGN KEY (`video_id`) REFERENCES `video` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_likes_v`
--

LOCK TABLES `a_likes_v` WRITE;
/*!40000 ALTER TABLE `a_likes_v` DISABLE KEYS */;
INSERT INTO `a_likes_v` VALUES ('abc',3,'2018-05-10 01:33:07',1),('abc',4,'2018-05-10 13:54:09',1),('abc',5,'2018-05-10 20:39:25',-1),('ntn',2,'2018-05-05 18:18:42',-1),('ntn',5,'2018-05-07 22:07:31',-1),('toto',2,'2018-05-13 16:51:36',1),('toto',3,'2018-05-12 17:59:47',-1),('toto',4,'2018-05-13 18:54:14',-1),('toto',6,'2018-05-07 13:37:24',-1);
/*!40000 ALTER TABLE `a_likes_v` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_provides_t`
--

DROP TABLE IF EXISTS `a_provides_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_provides_t` (
  `provider` varchar(30) NOT NULL,
  `transcript_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  PRIMARY KEY (`provider`,`transcript_id`,`video_id`),
  KEY `trans_id_idx` (`transcript_id`),
  KEY `video_id_idx` (`video_id`),
  CONSTRAINT `provider` FOREIGN KEY (`provider`) REFERENCES `account` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `trans_id` FOREIGN KEY (`transcript_id`) REFERENCES `transcript` (`transcript_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `video_id` FOREIGN KEY (`video_id`) REFERENCES `video` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_provides_t`
--

LOCK TABLES `a_provides_t` WRITE;
/*!40000 ALTER TABLE `a_provides_t` DISABLE KEYS */;
/*!40000 ALTER TABLE `a_provides_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_saves_playlist`
--

DROP TABLE IF EXISTS `a_saves_playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_saves_playlist` (
  `username` varchar(30) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  PRIMARY KEY (`username`,`playlist_id`),
  KEY `playlist_id_idx` (`playlist_id`),
  CONSTRAINT `playlist_id_fk` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`playlist_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `username_fk` FOREIGN KEY (`username`) REFERENCES `account` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_saves_playlist`
--

LOCK TABLES `a_saves_playlist` WRITE;
/*!40000 ALTER TABLE `a_saves_playlist` DISABLE KEYS */;
INSERT INTO `a_saves_playlist` VALUES ('hcmut',4),('toto',4),('toto',6);
/*!40000 ALTER TABLE `a_saves_playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_views_v`
--

DROP TABLE IF EXISTS `a_views_v`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_views_v` (
  `account_name` varchar(30) NOT NULL,
  `video_id` int(11) NOT NULL,
  `dtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`account_name`,`video_id`,`dtime`),
  KEY `vid_id_idx` (`video_id`),
  CONSTRAINT `acc_name_view` FOREIGN KEY (`account_name`) REFERENCES `account` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vid_id` FOREIGN KEY (`video_id`) REFERENCES `video` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_views_v`
--

LOCK TABLES `a_views_v` WRITE;
/*!40000 ALTER TABLE `a_views_v` DISABLE KEYS */;
INSERT INTO `a_views_v` VALUES ('abc',1,'2018-05-10 01:12:18'),('abc',1,'2018-05-10 01:14:30'),('abc',1,'2018-05-10 13:49:30'),('abc',1,'2018-05-10 13:50:21'),('abc',1,'2018-05-10 13:50:31'),('abc',1,'2018-05-10 13:50:41'),('abc',1,'2018-05-12 11:41:37'),('abc',1,'2018-05-12 11:42:53'),('ntn',1,'2018-05-10 13:49:09'),('ntn',1,'2018-05-10 13:49:14'),('toto',1,'2018-05-13 18:56:04'),('toto',1,'2018-05-13 19:04:13'),('abc',2,'2018-05-09 15:13:09'),('abc',2,'2018-05-09 15:16:03'),('abc',2,'2018-05-09 15:36:22'),('abc',2,'2018-05-09 15:36:25'),('abc',2,'2018-05-09 15:55:43'),('abc',2,'2018-05-09 16:33:02'),('abc',2,'2018-05-10 00:53:23'),('abc',2,'2018-05-10 00:59:09'),('abc',2,'2018-05-10 00:59:56'),('abc',2,'2018-05-10 20:30:46'),('abc',2,'2018-05-12 09:16:53'),('abc',2,'2018-05-12 09:17:07'),('abc',2,'2018-05-12 09:17:34'),('abc',2,'2018-05-12 09:22:05'),('abc',2,'2018-05-12 09:22:27'),('abc',2,'2018-05-12 09:22:55'),('abc',2,'2018-05-12 09:23:09'),('abc',2,'2018-05-12 10:44:28'),('abc',2,'2018-05-12 10:44:40'),('abc',2,'2018-05-12 10:48:15'),('abc',2,'2018-05-12 10:48:20'),('toto',2,'2018-05-10 08:38:29'),('toto',2,'2018-05-12 15:14:43'),('toto',2,'2018-05-12 16:14:26'),('toto',2,'2018-05-12 16:17:57'),('toto',2,'2018-05-12 16:18:14'),('toto',2,'2018-05-12 16:19:16'),('toto',2,'2018-05-12 16:20:18'),('toto',2,'2018-05-12 16:20:21'),('toto',2,'2018-05-12 16:21:14'),('toto',2,'2018-05-12 16:21:29'),('toto',2,'2018-05-12 16:24:35'),('toto',2,'2018-05-12 16:37:28'),('toto',2,'2018-05-12 16:37:33'),('toto',2,'2018-05-12 16:38:54'),('toto',2,'2018-05-12 16:39:29'),('toto',2,'2018-05-12 16:42:00'),('toto',2,'2018-05-12 16:42:10'),('toto',2,'2018-05-12 16:45:12'),('toto',2,'2018-05-12 16:45:19'),('toto',2,'2018-05-12 16:45:23'),('toto',2,'2018-05-12 19:36:48'),('toto',2,'2018-05-13 16:29:40'),('toto',2,'2018-05-13 16:32:31'),('toto',2,'2018-05-13 16:43:37'),('toto',2,'2018-05-13 16:43:51'),('toto',2,'2018-05-13 16:44:52'),('toto',2,'2018-05-13 16:45:06'),('toto',2,'2018-05-13 16:45:13'),('toto',2,'2018-05-13 16:46:21'),('toto',2,'2018-05-13 16:46:58'),('toto',2,'2018-05-13 16:47:41'),('toto',2,'2018-05-13 16:47:47'),('toto',2,'2018-05-13 16:51:15'),('toto',2,'2018-05-13 18:42:20'),('abc',3,'2018-05-10 01:13:31'),('abc',3,'2018-05-10 01:16:28'),('abc',3,'2018-05-10 01:32:20'),('abc',3,'2018-05-10 01:33:01'),('abc',3,'2018-05-10 19:34:38'),('abc',3,'2018-05-10 22:15:20'),('abc',3,'2018-05-10 22:15:44'),('abc',3,'2018-05-10 22:16:21'),('abc',3,'2018-05-10 22:50:04'),('abc',3,'2018-05-10 22:51:54'),('abc',3,'2018-05-10 22:53:29'),('abc',3,'2018-05-10 22:54:31'),('abc',3,'2018-05-10 22:54:32'),('abc',3,'2018-05-10 22:56:35'),('abc',3,'2018-05-10 22:57:15'),('abc',3,'2018-05-10 22:57:16'),('abc',3,'2018-05-10 22:57:21'),('abc',3,'2018-05-10 22:57:32'),('abc',3,'2018-05-10 23:01:26'),('abc',3,'2018-05-10 23:03:11'),('abc',3,'2018-05-10 23:04:35'),('abc',3,'2018-05-10 23:05:18'),('abc',3,'2018-05-10 23:11:39'),('abc',3,'2018-05-10 23:12:39'),('abc',3,'2018-05-10 23:13:29'),('abc',3,'2018-05-10 23:13:39'),('abc',3,'2018-05-10 23:14:16'),('abc',3,'2018-05-10 23:14:23'),('abc',3,'2018-05-10 23:14:28'),('abc',3,'2018-05-10 23:14:33'),('abc',3,'2018-05-10 23:15:21'),('abc',3,'2018-05-10 23:16:20'),('abc',3,'2018-05-10 23:16:47'),('abc',3,'2018-05-10 23:18:50'),('abc',3,'2018-05-10 23:19:48'),('abc',3,'2018-05-10 23:20:02'),('abc',3,'2018-05-10 23:23:18'),('abc',3,'2018-05-10 23:25:06'),('abc',3,'2018-05-10 23:30:01'),('abc',3,'2018-05-10 23:32:50'),('abc',3,'2018-05-10 23:33:03'),('abc',3,'2018-05-10 23:33:25'),('abc',3,'2018-05-11 00:14:45'),('abc',3,'2018-05-11 16:19:23'),('abc',3,'2018-05-11 16:19:44'),('abc',3,'2018-05-11 16:35:56'),('abc',3,'2018-05-11 23:04:34'),('abc',3,'2018-05-11 23:09:44'),('abc',3,'2018-05-11 23:16:29'),('abc',3,'2018-05-12 10:08:45'),('abc',3,'2018-05-12 10:09:41'),('abc',3,'2018-05-12 10:13:10'),('abc',3,'2018-05-12 10:48:48'),('hcmut',3,'2018-05-12 18:09:17'),('hcmut',3,'2018-05-12 18:10:35'),('toto',3,'2018-05-10 01:43:42'),('toto',3,'2018-05-10 01:43:51'),('toto',3,'2018-05-10 01:59:58'),('toto',3,'2018-05-10 08:36:11'),('toto',3,'2018-05-12 11:40:30'),('toto',3,'2018-05-12 16:10:12'),('toto',3,'2018-05-12 16:11:50'),('toto',3,'2018-05-12 16:39:37'),('toto',3,'2018-05-12 16:39:47'),('toto',3,'2018-05-12 16:41:41'),('toto',3,'2018-05-12 16:45:43'),('toto',3,'2018-05-12 16:49:39'),('toto',3,'2018-05-12 16:50:02'),('toto',3,'2018-05-12 16:51:32'),('toto',3,'2018-05-12 17:00:15'),('toto',3,'2018-05-12 17:03:03'),('toto',3,'2018-05-12 17:03:08'),('toto',3,'2018-05-12 17:03:41'),('toto',3,'2018-05-12 17:04:54'),('toto',3,'2018-05-12 17:05:22'),('toto',3,'2018-05-12 17:06:17'),('toto',3,'2018-05-12 17:10:00'),('toto',3,'2018-05-12 17:13:01'),('toto',3,'2018-05-12 17:14:34'),('toto',3,'2018-05-12 17:48:37'),('toto',3,'2018-05-12 17:50:18'),('toto',3,'2018-05-12 17:50:26'),('toto',3,'2018-05-12 17:57:57'),('toto',3,'2018-05-12 17:59:29'),('toto',3,'2018-05-12 19:48:44'),('toto',3,'2018-05-12 19:49:15'),('toto',3,'2018-05-13 16:26:08'),('abc',4,'2018-05-10 01:12:28'),('abc',4,'2018-05-10 01:14:37'),('abc',4,'2018-05-10 01:34:44'),('abc',4,'2018-05-10 01:36:57'),('abc',4,'2018-05-10 01:37:43'),('abc',4,'2018-05-10 01:38:51'),('abc',4,'2018-05-10 01:39:14'),('abc',4,'2018-05-10 01:40:13'),('abc',4,'2018-05-10 01:42:39'),('abc',4,'2018-05-10 01:42:45'),('abc',4,'2018-05-10 13:53:47'),('abc',4,'2018-05-10 13:54:06'),('abc',4,'2018-05-10 22:32:59'),('abc',4,'2018-05-10 22:34:30'),('abc',4,'2018-05-10 22:38:37'),('abc',4,'2018-05-10 22:38:49'),('abc',4,'2018-05-10 22:40:03'),('abc',4,'2018-05-10 22:40:58'),('abc',4,'2018-05-10 22:43:05'),('abc',4,'2018-05-10 22:43:36'),('abc',4,'2018-05-10 22:43:45'),('abc',4,'2018-05-10 22:44:03'),('abc',4,'2018-05-10 22:44:20'),('abc',4,'2018-05-10 22:46:50'),('abc',4,'2018-05-10 22:47:51'),('abc',4,'2018-05-10 22:48:43'),('abc',4,'2018-05-10 22:50:09'),('abc',4,'2018-05-10 22:50:17'),('abc',4,'2018-05-10 22:51:33'),('abc',4,'2018-05-10 22:51:48'),('abc',4,'2018-05-11 21:37:19'),('abc',4,'2018-05-11 23:08:46'),('abc',4,'2018-05-11 23:16:46'),('abc',4,'2018-05-11 23:17:07'),('abc',4,'2018-05-11 23:46:13'),('abc',4,'2018-05-11 23:47:15'),('abc',4,'2018-05-12 10:13:52'),('abc',4,'2018-05-12 10:16:30'),('abc',4,'2018-05-12 10:16:41'),('abc',4,'2018-05-12 11:43:45'),('toto',4,'2018-05-12 08:25:48'),('toto',4,'2018-05-12 11:40:19'),('toto',4,'2018-05-12 11:44:03'),('toto',4,'2018-05-12 14:48:29'),('toto',4,'2018-05-12 15:09:31'),('toto',4,'2018-05-12 16:12:10'),('toto',4,'2018-05-12 16:14:01'),('toto',4,'2018-05-12 16:14:07'),('toto',4,'2018-05-12 16:14:12'),('toto',4,'2018-05-12 16:14:24'),('toto',4,'2018-05-12 16:41:49'),('toto',4,'2018-05-12 17:07:02'),('toto',4,'2018-05-12 17:39:57'),('toto',4,'2018-05-12 17:40:13'),('toto',4,'2018-05-12 17:40:19'),('toto',4,'2018-05-12 17:50:32'),('toto',4,'2018-05-12 17:52:55'),('toto',4,'2018-05-12 17:54:20'),('toto',4,'2018-05-12 18:00:41'),('toto',4,'2018-05-12 19:36:42'),('toto',4,'2018-05-13 16:21:11'),('toto',4,'2018-05-13 16:26:02'),('toto',4,'2018-05-13 16:26:19'),('toto',4,'2018-05-13 16:52:39'),('toto',4,'2018-05-13 18:52:22'),('abc',5,'2018-05-09 15:08:09'),('abc',5,'2018-05-09 15:36:17'),('abc',5,'2018-05-09 15:36:27'),('abc',5,'2018-05-09 15:44:58'),('abc',5,'2018-05-09 15:45:44'),('abc',5,'2018-05-09 15:45:48'),('abc',5,'2018-05-09 15:45:50'),('abc',5,'2018-05-09 15:46:25'),('abc',5,'2018-05-09 15:46:33'),('abc',5,'2018-05-09 16:31:34'),('abc',5,'2018-05-09 16:33:08'),('abc',5,'2018-05-10 00:07:55'),('abc',5,'2018-05-10 00:08:02'),('abc',5,'2018-05-10 00:12:56'),('abc',5,'2018-05-10 00:13:27'),('abc',5,'2018-05-10 00:14:49'),('abc',5,'2018-05-10 00:35:13'),('abc',5,'2018-05-10 00:40:08'),('abc',5,'2018-05-10 00:41:25'),('abc',5,'2018-05-10 00:46:37'),('abc',5,'2018-05-10 00:47:34'),('abc',5,'2018-05-10 00:47:49'),('abc',5,'2018-05-10 00:47:59'),('abc',5,'2018-05-10 00:48:21'),('abc',5,'2018-05-10 00:48:29'),('abc',5,'2018-05-10 00:49:31'),('abc',5,'2018-05-10 00:51:37'),('abc',5,'2018-05-10 00:51:38'),('abc',5,'2018-05-10 00:52:13'),('abc',5,'2018-05-10 00:52:14'),('abc',5,'2018-05-10 00:55:55'),('abc',5,'2018-05-10 00:58:23'),('abc',5,'2018-05-10 00:59:03'),('abc',5,'2018-05-10 13:53:23'),('abc',5,'2018-05-10 19:34:45'),('abc',5,'2018-05-10 19:35:53'),('abc',5,'2018-05-10 19:38:14'),('abc',5,'2018-05-10 19:44:31'),('abc',5,'2018-05-10 19:48:39'),('abc',5,'2018-05-10 19:49:34'),('abc',5,'2018-05-10 19:51:07'),('abc',5,'2018-05-10 19:56:53'),('abc',5,'2018-05-10 20:00:28'),('abc',5,'2018-05-10 20:01:16'),('abc',5,'2018-05-10 20:02:59'),('abc',5,'2018-05-10 20:08:38'),('abc',5,'2018-05-10 20:19:57'),('abc',5,'2018-05-10 20:20:56'),('abc',5,'2018-05-10 20:22:47'),('abc',5,'2018-05-10 20:24:01'),('abc',5,'2018-05-10 20:24:32'),('abc',5,'2018-05-10 20:26:32'),('abc',5,'2018-05-10 20:30:35'),('abc',5,'2018-05-10 20:31:04'),('abc',5,'2018-05-10 20:33:49'),('abc',5,'2018-05-10 20:42:29'),('abc',5,'2018-05-10 20:43:00'),('abc',5,'2018-05-10 20:43:45'),('abc',5,'2018-05-10 20:44:52'),('abc',5,'2018-05-10 20:45:01'),('abc',5,'2018-05-10 20:50:48'),('abc',5,'2018-05-10 20:53:15'),('abc',5,'2018-05-10 20:59:08'),('abc',5,'2018-05-10 21:05:25'),('abc',5,'2018-05-10 21:08:52'),('abc',5,'2018-05-10 21:09:21'),('abc',5,'2018-05-10 21:09:37'),('abc',5,'2018-05-10 21:11:06'),('abc',5,'2018-05-10 21:11:34'),('abc',5,'2018-05-10 21:13:07'),('abc',5,'2018-05-10 21:15:07'),('abc',5,'2018-05-10 21:15:27'),('abc',5,'2018-05-10 21:34:45'),('abc',5,'2018-05-10 23:01:30'),('abc',5,'2018-05-10 23:14:19'),('abc',5,'2018-05-10 23:14:26'),('abc',5,'2018-05-10 23:14:27'),('abc',5,'2018-05-10 23:15:26'),('abc',5,'2018-05-10 23:17:19'),('abc',5,'2018-05-10 23:18:51'),('abc',5,'2018-05-10 23:19:49'),('abc',5,'2018-05-10 23:19:58'),('abc',5,'2018-05-10 23:20:06'),('abc',5,'2018-05-10 23:23:17'),('abc',5,'2018-05-10 23:25:06'),('abc',5,'2018-05-10 23:30:01'),('abc',5,'2018-05-10 23:32:50'),('abc',5,'2018-05-10 23:33:52'),('abc',5,'2018-05-10 23:51:50'),('abc',5,'2018-05-10 23:53:42'),('abc',5,'2018-05-10 23:55:20'),('abc',5,'2018-05-10 23:55:51'),('abc',5,'2018-05-10 23:56:44'),('abc',5,'2018-05-11 00:07:59'),('abc',5,'2018-05-11 00:08:20'),('abc',5,'2018-05-11 00:11:48'),('abc',5,'2018-05-11 00:13:08'),('abc',5,'2018-05-11 00:14:33'),('abc',5,'2018-05-11 00:14:41'),('abc',5,'2018-05-11 00:14:54'),('abc',5,'2018-05-11 00:28:28'),('abc',5,'2018-05-11 15:54:13'),('abc',5,'2018-05-11 15:58:14'),('abc',5,'2018-05-11 15:59:25'),('abc',5,'2018-05-11 15:59:35'),('abc',5,'2018-05-11 16:00:35'),('abc',5,'2018-05-11 16:01:16'),('abc',5,'2018-05-11 16:01:25'),('abc',5,'2018-05-11 16:02:03'),('abc',5,'2018-05-11 16:05:37'),('abc',5,'2018-05-11 16:20:02'),('abc',5,'2018-05-11 16:24:14'),('abc',5,'2018-05-11 16:24:33'),('abc',5,'2018-05-11 16:24:48'),('abc',5,'2018-05-11 16:26:50'),('abc',5,'2018-05-11 16:28:30'),('abc',5,'2018-05-11 16:31:41'),('abc',5,'2018-05-11 16:32:19'),('abc',5,'2018-05-11 16:36:00'),('abc',5,'2018-05-11 16:41:52'),('abc',5,'2018-05-11 16:45:01'),('abc',5,'2018-05-11 16:45:42'),('abc',5,'2018-05-11 16:46:04'),('abc',5,'2018-05-11 16:47:16'),('abc',5,'2018-05-11 16:48:30'),('abc',5,'2018-05-11 16:49:34'),('abc',5,'2018-05-11 16:54:35'),('abc',5,'2018-05-11 17:02:31'),('abc',5,'2018-05-11 17:03:24'),('abc',5,'2018-05-11 17:04:24'),('abc',5,'2018-05-11 17:06:00'),('abc',5,'2018-05-11 17:10:24'),('abc',5,'2018-05-11 17:10:46'),('abc',5,'2018-05-11 17:10:59'),('abc',5,'2018-05-11 17:12:24'),('abc',5,'2018-05-11 17:15:06'),('abc',5,'2018-05-11 17:16:27'),('abc',5,'2018-05-11 17:17:19'),('abc',5,'2018-05-11 17:18:30'),('abc',5,'2018-05-11 17:19:37'),('abc',5,'2018-05-11 17:20:20'),('abc',5,'2018-05-11 17:22:46'),('abc',5,'2018-05-11 17:25:45'),('abc',5,'2018-05-11 17:26:01'),('abc',5,'2018-05-11 17:26:21'),('abc',5,'2018-05-11 17:30:59'),('abc',5,'2018-05-11 17:31:34'),('abc',5,'2018-05-11 17:33:10'),('abc',5,'2018-05-11 17:33:45'),('abc',5,'2018-05-11 17:35:31'),('abc',5,'2018-05-11 17:35:39'),('abc',5,'2018-05-11 17:37:22'),('abc',5,'2018-05-11 17:38:35'),('abc',5,'2018-05-11 17:39:09'),('abc',5,'2018-05-11 17:40:57'),('abc',5,'2018-05-11 17:41:40'),('abc',5,'2018-05-11 17:43:04'),('abc',5,'2018-05-11 17:54:36'),('abc',5,'2018-05-11 17:58:35'),('abc',5,'2018-05-11 18:05:27'),('abc',5,'2018-05-11 18:11:13'),('abc',5,'2018-05-11 18:13:21'),('abc',5,'2018-05-11 18:13:43'),('abc',5,'2018-05-11 18:14:42'),('abc',5,'2018-05-11 18:14:51'),('abc',5,'2018-05-11 18:14:56'),('abc',5,'2018-05-11 18:16:40'),('abc',5,'2018-05-11 18:19:18'),('abc',5,'2018-05-11 18:19:43'),('abc',5,'2018-05-11 18:20:13'),('abc',5,'2018-05-11 18:23:30'),('abc',5,'2018-05-11 18:23:50'),('abc',5,'2018-05-11 18:26:16'),('abc',5,'2018-05-11 18:28:12'),('abc',5,'2018-05-11 18:28:21'),('abc',5,'2018-05-11 18:29:31'),('abc',5,'2018-05-11 18:30:02'),('abc',5,'2018-05-11 18:31:54'),('abc',5,'2018-05-11 18:33:53'),('abc',5,'2018-05-11 18:45:09'),('abc',5,'2018-05-11 18:46:31'),('abc',5,'2018-05-11 19:13:50'),('abc',5,'2018-05-11 19:14:47'),('abc',5,'2018-05-11 19:15:10'),('abc',5,'2018-05-11 19:15:38'),('abc',5,'2018-05-11 19:20:11'),('abc',5,'2018-05-11 19:20:56'),('abc',5,'2018-05-11 19:22:10'),('abc',5,'2018-05-11 19:23:13'),('abc',5,'2018-05-11 19:23:27'),('abc',5,'2018-05-11 19:23:53'),('abc',5,'2018-05-11 19:24:02'),('abc',5,'2018-05-11 19:25:27'),('abc',5,'2018-05-11 19:25:51'),('abc',5,'2018-05-11 19:26:36'),('abc',5,'2018-05-11 19:27:32'),('abc',5,'2018-05-11 19:29:16'),('abc',5,'2018-05-11 19:29:40'),('abc',5,'2018-05-11 19:29:52'),('abc',5,'2018-05-11 19:30:36'),('abc',5,'2018-05-11 19:30:55'),('abc',5,'2018-05-11 19:31:41'),('abc',5,'2018-05-11 19:32:09'),('abc',5,'2018-05-11 20:28:44'),('abc',5,'2018-05-11 20:29:42'),('abc',5,'2018-05-11 20:30:01'),('abc',5,'2018-05-11 20:30:35'),('abc',5,'2018-05-11 20:30:51'),('abc',5,'2018-05-11 20:32:16'),('abc',5,'2018-05-11 20:37:29'),('abc',5,'2018-05-11 20:40:55'),('abc',5,'2018-05-11 20:41:30'),('abc',5,'2018-05-11 20:43:39'),('abc',5,'2018-05-11 20:45:07'),('abc',5,'2018-05-11 20:46:02'),('abc',5,'2018-05-11 20:54:25'),('abc',5,'2018-05-11 20:54:47'),('abc',5,'2018-05-11 20:55:18'),('abc',5,'2018-05-11 20:55:42'),('abc',5,'2018-05-11 20:56:07'),('abc',5,'2018-05-11 20:57:16'),('abc',5,'2018-05-11 21:04:01'),('abc',5,'2018-05-11 21:04:23'),('abc',5,'2018-05-11 21:05:09'),('abc',5,'2018-05-11 21:06:03'),('abc',5,'2018-05-11 21:07:00'),('abc',5,'2018-05-11 21:07:35'),('abc',5,'2018-05-11 21:09:13'),('abc',5,'2018-05-11 21:10:07'),('abc',5,'2018-05-11 21:14:08'),('abc',5,'2018-05-11 21:14:35'),('abc',5,'2018-05-11 21:27:44'),('abc',5,'2018-05-11 21:29:44'),('abc',5,'2018-05-11 21:44:57'),('abc',5,'2018-05-11 22:06:27'),('abc',5,'2018-05-11 22:07:59'),('abc',5,'2018-05-11 22:08:45'),('abc',5,'2018-05-11 22:09:39'),('abc',5,'2018-05-11 22:10:47'),('abc',5,'2018-05-11 22:12:35'),('abc',5,'2018-05-11 22:13:26'),('abc',5,'2018-05-11 22:16:41'),('abc',5,'2018-05-11 22:17:28'),('abc',5,'2018-05-11 22:17:33'),('abc',5,'2018-05-11 22:18:26'),('abc',5,'2018-05-11 22:19:50'),('abc',5,'2018-05-11 22:23:07'),('abc',5,'2018-05-11 22:23:47'),('abc',5,'2018-05-11 22:27:05'),('abc',5,'2018-05-11 22:30:51'),('abc',5,'2018-05-11 22:30:57'),('abc',5,'2018-05-11 22:31:12'),('abc',5,'2018-05-11 22:31:45'),('abc',5,'2018-05-11 22:31:56'),('abc',5,'2018-05-11 22:34:11'),('abc',5,'2018-05-11 22:56:12'),('abc',5,'2018-05-11 22:56:26'),('abc',5,'2018-05-11 23:12:19'),('abc',5,'2018-05-11 23:16:39'),('abc',5,'2018-05-12 00:15:02'),('abc',5,'2018-05-12 00:15:38'),('abc',5,'2018-05-12 00:15:46'),('abc',5,'2018-05-12 00:16:24'),('abc',5,'2018-05-12 10:13:49'),('abc',5,'2018-05-12 10:24:36'),('abc',5,'2018-05-12 10:49:24'),('abc',5,'2018-05-12 10:53:27'),('ntn',5,'2018-05-10 13:50:11'),('toto',5,'2018-05-10 01:43:59'),('toto',5,'2018-05-12 00:16:33'),('toto',5,'2018-05-12 00:17:06'),('toto',5,'2018-05-12 00:18:51'),('toto',5,'2018-05-12 00:20:08'),('toto',5,'2018-05-12 00:20:59'),('toto',5,'2018-05-12 00:22:17'),('toto',5,'2018-05-12 00:23:22'),('toto',5,'2018-05-12 00:23:38'),('toto',5,'2018-05-12 08:23:32'),('toto',5,'2018-05-12 08:23:41'),('toto',5,'2018-05-12 08:24:49'),('toto',5,'2018-05-12 08:25:15'),('toto',5,'2018-05-12 14:48:33'),('toto',5,'2018-05-12 15:46:54'),('toto',5,'2018-05-12 16:11:59'),('toto',5,'2018-05-12 16:13:39'),('toto',5,'2018-05-12 16:14:06'),('toto',5,'2018-05-12 16:14:08'),('toto',5,'2018-05-12 16:14:22'),('toto',5,'2018-05-12 16:41:53'),('toto',5,'2018-05-12 17:06:59'),('toto',5,'2018-05-12 17:09:11'),('toto',5,'2018-05-12 17:09:13'),('toto',5,'2018-05-12 17:39:54'),('toto',5,'2018-05-12 17:42:19'),('toto',5,'2018-05-12 17:54:27'),('toto',5,'2018-05-12 18:42:15'),('toto',5,'2018-05-12 19:36:45'),('toto',5,'2018-05-12 19:44:25'),('toto',5,'2018-05-12 19:45:00'),('toto',5,'2018-05-12 19:45:13'),('toto',5,'2018-05-12 19:46:34'),('toto',5,'2018-05-12 19:46:50'),('toto',5,'2018-05-12 19:47:02'),('toto',5,'2018-05-12 19:47:12'),('toto',5,'2018-05-12 19:47:29'),('toto',5,'2018-05-12 19:48:41'),('toto',5,'2018-05-13 16:26:24'),('toto',5,'2018-05-13 16:52:57'),('abc',6,'2018-05-10 23:01:40'),('abc',6,'2018-05-10 23:03:27'),('abc',6,'2018-05-10 23:04:34'),('abc',6,'2018-05-10 23:05:18'),('abc',6,'2018-05-10 23:09:11'),('abc',6,'2018-05-10 23:11:40'),('abc',6,'2018-05-10 23:12:38'),('abc',6,'2018-05-10 23:13:29'),('abc',6,'2018-05-10 23:13:38'),('abc',6,'2018-05-10 23:15:41'),('abc',6,'2018-05-10 23:16:19'),('abc',6,'2018-05-10 23:16:46'),('abc',6,'2018-05-10 23:19:56'),('abc',6,'2018-05-10 23:20:03'),('abc',6,'2018-05-11 16:19:58'),('abc',6,'2018-05-11 16:34:39'),('abc',6,'2018-05-11 16:35:50'),('abc',6,'2018-05-11 16:36:05'),('abc',6,'2018-05-11 16:36:54'),('abc',6,'2018-05-11 16:39:44'),('abc',6,'2018-05-11 16:41:47'),('abc',6,'2018-05-11 22:25:38'),('abc',6,'2018-05-11 22:26:57'),('abc',6,'2018-05-11 22:31:26'),('abc',6,'2018-05-11 22:31:35'),('abc',6,'2018-05-11 22:35:39'),('abc',6,'2018-05-11 23:16:44'),('abc',6,'2018-05-12 11:43:06'),('ntn',6,'2018-05-10 13:48:44'),('toto',6,'2018-05-12 11:09:27'),('toto',6,'2018-05-12 11:10:52'),('toto',6,'2018-05-12 11:40:25'),('toto',6,'2018-05-12 14:46:51'),('toto',7,'2018-05-12 14:38:12'),('abc',8,'2018-05-10 18:51:29'),('abc',8,'2018-05-10 18:51:43'),('abc',8,'2018-05-10 19:14:34');
/*!40000 ALTER TABLE `a_views_v` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_watch_later_v`
--

DROP TABLE IF EXISTS `a_watch_later_v`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_watch_later_v` (
  `account_name` varchar(30) NOT NULL,
  `video_id` int(11) NOT NULL,
  PRIMARY KEY (`account_name`,`video_id`),
  KEY `vid_id_watch_idx` (`video_id`),
  CONSTRAINT `acc_name_watch` FOREIGN KEY (`account_name`) REFERENCES `account` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vid_id_watch` FOREIGN KEY (`video_id`) REFERENCES `video` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_watch_later_v`
--

LOCK TABLES `a_watch_later_v` WRITE;
/*!40000 ALTER TABLE `a_watch_later_v` DISABLE KEYS */;
INSERT INTO `a_watch_later_v` VALUES ('abc',2),('ntn',2),('toto',2),('abc',4),('toto',4),('abc',5),('abc',6);
/*!40000 ALTER TABLE `a_watch_later_v` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `username` varchar(30) NOT NULL,
  `usertype` tinyint(1) DEFAULT '1',
  `password` char(60) NOT NULL,
  `profile_img` varchar(32) DEFAULT 'default.img',
  `description` text,
  `name` varchar(32) NOT NULL,
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `interaction` bigint(20) DEFAULT '0',
  PRIMARY KEY (`username`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  FULLTEXT KEY `idx_account_username_name_description` (`username`,`name`,`description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='THIS IS THE ACCOUNT TABLE';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('abc',1,'$2b$10$HmPMA0tBuM1h4R123qLKrOJhKyi9fTdReo7NVqhCBxNR79dyhOdYi','default.img',NULL,'abc','0000-00-00 00:00:00',0),('hcmut',1,'$2b$10$BbIi0Y.T4SHcFn3KcX1IT./RY1iIs6w5zwAgvDsXcSOOwgHQxPT5i','default.img',NULL,'hcmut','0000-00-00 00:00:00',0),('ntn',1,'$2b$10$3RejWUL6uQjcYRULpZQuqeYAAXiCM91dipCRJGouiRO/7kJFOO8Rq','default.img',NULL,'Nguyen','0000-00-00 00:00:00',12),('toto',1,'$2b$10$2mkH39X5gO0NvAA8t2gHUeFLczdE2wJkWy6uLSlZGweDAK.obF8ze','default.img',NULL,'toto','0000-00-00 00:00:00',1);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advertisement`
--

DROP TABLE IF EXISTS `advertisement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertisement` (
  `advertisement_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT 'adversietment',
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`advertisement_id`),
  UNIQUE KEY `advertisement_id_UNIQUE` (`advertisement_id`),
  KEY `advertisement_company_id_idx` (`company_id`),
  CONSTRAINT `advertisement_company_id` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertisement`
--

LOCK TABLES `advertisement` WRITE;
/*!40000 ALTER TABLE `advertisement` DISABLE KEYS */;
/*!40000 ALTER TABLE `advertisement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advertisement_video`
--

DROP TABLE IF EXISTS `advertisement_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertisement_video` (
  `advertisement_id` int(11) NOT NULL,
  `length` int(11) NOT NULL,
  `content` varchar(45) NOT NULL,
  `vip_name` varchar(30) NOT NULL,
  PRIMARY KEY (`advertisement_id`),
  KEY `advertisement_vip_name_idx` (`vip_name`),
  CONSTRAINT `advertisement_adv_id` FOREIGN KEY (`advertisement_id`) REFERENCES `advertisement` (`advertisement_id`),
  CONSTRAINT `advertisement_vip_name` FOREIGN KEY (`vip_name`) REFERENCES `vip` (`account_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertisement_video`
--

LOCK TABLES `advertisement_video` WRITE;
/*!40000 ALTER TABLE `advertisement_video` DISABLE KEYS */;
/*!40000 ALTER TABLE `advertisement_video` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `advertisement_video_length` BEFORE INSERT ON `advertisement_video` FOR EACH ROW set new.length = if(new.length < 0, 0, new.length) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL,
  `size` varchar(4) NOT NULL,
  `content` varchar(45) NOT NULL,
  `partner_name` varchar(30) NOT NULL,
  PRIMARY KEY (`banner_id`),
  KEY `banner_partner_name_idx` (`partner_name`),
  CONSTRAINT `banner_banner_id` FOREIGN KEY (`banner_id`) REFERENCES `advertisement` (`advertisement_id`),
  CONSTRAINT `banner_partner_name` FOREIGN KEY (`partner_name`) REFERENCES `partner` (`account_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `dtime` datetime DEFAULT CURRENT_TIMESTAMP,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'2018-04-29 18:02:26','hihi'),(2,'2018-04-29 18:12:42','abcxyz'),(3,'2018-05-04 15:55:39','onggia'),(19,'2018-05-06 00:11:09','asdfsda'),(20,'2018-05-07 13:39:28','xxx'),(24,'2018-05-06 12:21:09','a;lsdkjf'),(25,'2018-05-07 13:21:56','jlkasdjf'),(26,'2018-05-07 13:38:37','avc'),(27,'2018-05-07 13:39:28','assafd'),(28,'2018-05-07 13:39:28','abc'),(34,'2018-05-08 09:33:49','ntnxxx'),(35,'2018-05-08 10:31:15','ntn'),(36,'2018-05-08 22:09:42','asdf'),(37,'2018-05-10 02:00:07','jj'),(38,'2018-05-10 13:49:18','cmt'),(40,'2018-05-12 10:16:49','asdfsdaf'),(41,'2018-05-12 10:17:04','new cmt');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `account_name` varchar(30) NOT NULL,
  `video_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  PRIMARY KEY (`account_name`,`video_id`,`comment_id`),
  KEY `video_id_cmt_idx` (`video_id`),
  KEY `comment_id_idx` (`comment_id`),
  CONSTRAINT `acc_name_cmt` FOREIGN KEY (`account_name`) REFERENCES `account` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `video_id_cmt` FOREIGN KEY (`video_id`) REFERENCES `video` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES ('ntn',1,38),('ntn',2,35),('toto',3,37),('abc',4,40),('abc',4,41),('ntn',5,20),('ntn',5,28),('ntn',5,34),('toto',5,19),('toto',5,24),('toto',5,25),('abc',6,36),('ntn',6,26),('ntn',6,27),('nhuy',11,1),('minh',12,2),('xxx',14,3);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  PRIMARY KEY (`company_id`),
  UNIQUE KEY `company_id_UNIQUE` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `dtime` datetime DEFAULT NULL,
  `content` text,
  `title` varchar(45) DEFAULT NULL,
  `account_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`feedback_id`),
  KEY `acc_name_idx` (`account_name`),
  CONSTRAINT `acc_name` FOREIGN KEY (`account_name`) REFERENCES `account` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'2018-05-04 22:12:58','ai viết cái này thế nhỉ','hihi','nhuy'),(2,'2018-05-04 22:12:08',' đm','đm ','xxx');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'Chinese'),(2,'Taiwan'),(3,'Japanese'),(4,'English'),(5,'Korea'),(6,'French');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_contains_v`
--

DROP TABLE IF EXISTS `p_contains_v`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_contains_v` (
  `playlist_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  PRIMARY KEY (`playlist_id`,`video_id`),
  KEY `comment_id_idx` (`video_id`),
  CONSTRAINT `comment_id` FOREIGN KEY (`video_id`) REFERENCES `video` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `playlist_id` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`playlist_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_contains_v`
--

LOCK TABLES `p_contains_v` WRITE;
/*!40000 ALTER TABLE `p_contains_v` DISABLE KEYS */;
INSERT INTO `p_contains_v` VALUES (4,3),(4,4),(6,4),(4,5),(7,6),(8,7),(1,11),(2,11),(3,11),(2,12),(1,13),(3,13),(1,14),(2,14);
/*!40000 ALTER TABLE `p_contains_v` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partner`
--

DROP TABLE IF EXISTS `partner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partner` (
  `account_name` varchar(30) NOT NULL,
  `dtime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`account_name`),
  CONSTRAINT `partner_account_name` FOREIGN KEY (`account_name`) REFERENCES `account` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partner`
--

LOCK TABLES `partner` WRITE;
/*!40000 ALTER TABLE `partner` DISABLE KEYS */;
/*!40000 ALTER TABLE `partner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playlist` (
  `playlist_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `public` tinyint(1) DEFAULT NULL,
  `dtime` datetime DEFAULT CURRENT_TIMESTAMP,
  `owner` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`playlist_id`),
  KEY `owner_playlist` (`owner`),
  FULLTEXT KEY `idx_playlist_name_owner` (`name`,`owner`),
  CONSTRAINT `owner` FOREIGN KEY (`owner`) REFERENCES `account` (`username`),
  CONSTRAINT `owner_playlist` FOREIGN KEY (`owner`) REFERENCES `account` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
INSERT INTO `playlist` VALUES (1,'Ông Già và Biển Cả',1,'2018-04-29 23:00:58','minh'),(2,'Old man',1,'2018-04-29 23:00:58','minh'),(3,'Dirty',1,'2018-04-29 23:00:58','xxx'),(4,'This is my playlist',1,'2018-04-29 23:00:58','abc'),(5,'abc',1,'2018-05-11 21:33:47','abc'),(6,'abc',1,'2018-05-11 21:34:40','abc'),(7,'this is a new ',1,'2018-05-11 22:25:46','abc'),(8,'a new playlist',1,'2018-05-12 14:38:21','toto');
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replies`
--

DROP TABLE IF EXISTS `replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `replies` (
  `account_name` varchar(30) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `reply_id` int(11) NOT NULL,
  PRIMARY KEY (`account_name`,`comment_id`,`reply_id`),
  KEY `cmt_id_rep_idx` (`comment_id`),
  KEY `rep_id_rep_idx` (`reply_id`),
  CONSTRAINT `acc_name_rep` FOREIGN KEY (`account_name`) REFERENCES `account` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `rep_id_rep` FOREIGN KEY (`reply_id`) REFERENCES `reply` (`reply_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replies`
--

LOCK TABLES `replies` WRITE;
/*!40000 ALTER TABLE `replies` DISABLE KEYS */;
INSERT INTO `replies` VALUES ('minh',1,2),('nhuy',1,1),('nhuy',2,4),('xxx',2,3),('xxx',2,5),('ntn',19,17),('abc',20,15),('ntn',28,16);
/*!40000 ALTER TABLE `replies` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Replies_DeleteReply` BEFORE DELETE ON `replies` FOR EACH ROW BEGIN
	DELETE from reply where reply.reply_id = old.reply_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `reply`
--

DROP TABLE IF EXISTS `reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply` (
  `reply_id` int(11) NOT NULL AUTO_INCREMENT,
  `dtime` datetime DEFAULT CURRENT_TIMESTAMP,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`reply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
INSERT INTO `reply` VALUES (1,'2018-05-04 21:44:00','sfsdds'),(2,'2018-04-29 18:09:36','onggia'),(3,'2018-04-29 23:26:38','sfdshhsdf'),(4,'2018-04-29 23:26:38','hihi'),(5,'2018-04-29 23:27:06','skfhshfs'),(6,'2018-05-07 18:57:40','0'),(15,'2018-05-07 23:38:48','asdfsdf'),(16,'2018-05-08 00:09:47','a reply'),(17,'2018-05-08 00:14:47','sdfasd');
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report` (
  `video_id` int(11) NOT NULL,
  `account_name` varchar(30) NOT NULL,
  `dtime` datetime DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `content` longtext,
  `read` tinyint(4) NOT NULL,
  PRIMARY KEY (`video_id`,`account_name`),
  KEY `acc_name_idx` (`account_name`),
  CONSTRAINT `acc_name_report` FOREIGN KEY (`account_name`) REFERENCES `account` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `video_id_report` FOREIGN KEY (`video_id`) REFERENCES `video` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Video_id : ID of video had been reported\nAccount_name : username of reporter\nread : flag, turn on if admin had read this report';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (11,'nhuy','2018-05-04 22:37:04','Như Ý','ờ :)',0),(11,'onggia','2018-05-04 22:36:31','Ông Già','Mình báo cáo vì mình là ông già :)',0);
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribes`
--

DROP TABLE IF EXISTS `subscribes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscribes` (
  `channel_name` varchar(30) NOT NULL,
  `subscriber_name` varchar(30) NOT NULL,
  PRIMARY KEY (`channel_name`,`subscriber_name`),
  KEY `scb_name_subscribe_idx` (`subscriber_name`),
  CONSTRAINT `chl_name_subscribe` FOREIGN KEY (`channel_name`) REFERENCES `account` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `scb_name_subscribe` FOREIGN KEY (`subscriber_name`) REFERENCES `account` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribes`
--

LOCK TABLES `subscribes` WRITE;
/*!40000 ALTER TABLE `subscribes` DISABLE KEYS */;
INSERT INTO `subscribes` VALUES ('toto','abc'),('abc','toto'),('ntn','toto');
/*!40000 ALTER TABLE `subscribes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL,
  `wallet_id` int(11) NOT NULL,
  `amount` decimal(6,2) NOT NULL,
  `dtime` datetime DEFAULT CURRENT_TIMESTAMP,
  `remains` decimal(6,2) NOT NULL,
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `transaction_wallet_id` FOREIGN KEY (`transaction_id`) REFERENCES `wallet` (`wallet_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `transaction_amount` BEFORE INSERT ON `transaction` FOR EACH ROW set new.amount = if(new.amount < 0, 0, new.amount) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `transaction_create_date` BEFORE INSERT ON `transaction` FOR EACH ROW set new.dtime = now() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `transcript`
--

DROP TABLE IF EXISTS `transcript`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transcript` (
  `transcript_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `length` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `dtime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`transcript_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transcript`
--

LOCK TABLES `transcript` WRITE;
/*!40000 ALTER TABLE `transcript` DISABLE KEYS */;
/*!40000 ALTER TABLE `transcript` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_belongs_to_g`
--

DROP TABLE IF EXISTS `v_belongs_to_g`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_belongs_to_g` (
  `video_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  PRIMARY KEY (`video_id`,`genre_id`),
  KEY `gnr_id_idx` (`genre_id`),
  CONSTRAINT `gnr_id_belongs` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vid_id_belongs` FOREIGN KEY (`video_id`) REFERENCES `video` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_belongs_to_g`
--

LOCK TABLES `v_belongs_to_g` WRITE;
/*!40000 ALTER TABLE `v_belongs_to_g` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_belongs_to_g` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `description` text,
  `status` tinyint(4) DEFAULT '0',
  `license` varchar(45) DEFAULT NULL,
  `published_dtime` datetime DEFAULT CURRENT_TIMESTAMP,
  `upload_account` varchar(30) DEFAULT NULL,
  `dtime_upload` datetime DEFAULT CURRENT_TIMESTAMP,
  `tags` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `upload_account` (`upload_account`),
  FULLTEXT KEY `idx_video_name_description` (`name`,`description`),
  CONSTRAINT `video_ibfk_1` FOREIGN KEY (`upload_account`) REFERENCES `account` (`username`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='This is video table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (1,'My First video',2,NULL,0,NULL,'2018-05-05 15:37:26','ntn','2018-05-05 15:37:26',NULL),(2,'NTN - Upload file in C# Upload file in C#',2,'this is some desc',0,NULL,'2018-05-05 15:41:28','ntn','2018-05-05 15:41:28','upload c#'),(3,'C++',2,'abc',0,NULL,'2018-05-05 15:46:59','ntn','2018-05-05 15:46:59','123 abc'),(4,'Handle file upload Java',2,'abcdef',0,NULL,'2018-05-05 18:29:58','ntn','2018-05-05 18:29:58','c# form'),(5,'Upload file in C++ Upload file in C++',2,'dsc',0,NULL,'2018-05-05 20:01:46','toto','2018-05-05 20:01:46','video c#'),(6,'Learning React ',2,'lksajdfaklj',0,NULL,'2018-05-07 13:37:05','toto','2018-05-07 13:37:05','upload'),(7,'LMAO',2,NULL,0,NULL,'2018-05-08 16:21:42','abc','2018-05-08 16:21:42',NULL),(8,'NPM INSTALL',2,NULL,0,NULL,'2018-05-08 16:23:22','abc','2018-05-08 16:23:22',NULL);
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vip`
--

DROP TABLE IF EXISTS `vip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vip` (
  `account_name` varchar(30) NOT NULL,
  `dtime` datetime DEFAULT CURRENT_TIMESTAMP,
  `wallet_id` int(11) NOT NULL,
  PRIMARY KEY (`account_name`,`wallet_id`),
  KEY `frk_wallet_id_idx` (`wallet_id`),
  CONSTRAINT `frk_account_name` FOREIGN KEY (`account_name`) REFERENCES `account` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `frk_wallet_id` FOREIGN KEY (`wallet_id`) REFERENCES `wallet` (`wallet_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vip`
--

LOCK TABLES `vip` WRITE;
/*!40000 ALTER TABLE `vip` DISABLE KEYS */;
/*!40000 ALTER TABLE `vip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallet`
--

DROP TABLE IF EXISTS `wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wallet` (
  `wallet_id` int(11) NOT NULL AUTO_INCREMENT,
  `balance` decimal(6,2) NOT NULL DEFAULT '0.00',
  `total` decimal(6,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`wallet_id`),
  UNIQUE KEY `wallet_id_UNIQUE` (`wallet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallet`
--

LOCK TABLES `wallet` WRITE;
/*!40000 ALTER TABLE `wallet` DISABLE KEYS */;
/*!40000 ALTER TABLE `wallet` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `wallet_balance` BEFORE UPDATE ON `wallet` FOR EACH ROW set new.balance = if(new.balance < 0, balance, new.balance) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'assignment'
--

--
-- Dumping routines for database 'assignment'
--
/*!50003 DROP FUNCTION IF EXISTS `Account_CheckExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Account_CheckExist`(_username VARCHAR(30)) RETURNS int(11)
BEGIN
		DECLARE result VARCHAR(30);
		SET result = NULL;
		SELECT account.usertype FROM account WHERE account.username = _username INTO result;
		
		IF (result = NULL)
		THEN RETURN 0;
		ELSE RETURN result;
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Account_CountLogin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Account_CountLogin`(_time_in_hours INT) RETURNS int(11)
BEGIN
		DECLARE result INT;
		SET result = 0;
		SELECT COUNT(*) FROM account WHERE TIMESTAMPDIFF(HOUR, account.last_login, NOW()) < _time_in_hours INTO result;
		RETURN result;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Account_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Account_Delete`(_username VARCHAR(30), _admin_username VARCHAR(30), _admin_pass CHAR(32)) RETURNS int(11)
BEGIN
		SET @tmp = Account_Login(_admin_username, _admin_pass);
		IF (@tmp <= 1)
		THEN RETURN 0;
		ELSE 
		DELETE FROM account WHERE account.username = _username;
		RETURN 1;
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Account_Demote` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Account_Demote`(_username VARCHAR(30), _username_admin VARCHAR(30), _password CHAR(32)) RETURNS int(11)
BEGIN
		SET @var1 = Account_CheckExist(_username); -- var1 holds usertype of account being promote
		IF (@var1 = 0)
		THEN RETURN 0;
		END IF;
		
		SET @var2 = Account_Login(_username_admin, _password); -- var2 holds usertype of admin
		IF (@var2 < 0 OR @var2 < @var1) 
		THEN RETURN 0;
		ELSE 
		UPDATE account SET account.usertype = @var1 - 1 WHERE account.username = _username;
		RETURN 1;
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Account_Insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Account_Insert`(_username VARCHAR(30), _password CHAR(32)) RETURNS int(11)
BEGIN
		IF (NOT Account_CheckExist(_username) = 0) -- Account existed
		THEN RETURN 0;
		ELSE INSERT INTO account(account.username, account.password, account.name, account.last_login) VALUES (_username, _password, _username, NOW());
		RETURN 1;
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Account_Login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Account_Login`(_username VARCHAR(30), _password CHAR(32)) RETURNS int(11)
BEGIN
		DECLARE result tinyint(1);
		SET result = NULL;
	  
		IF ( Account_CheckExist(_username) = 0) -- Account not existed
		THEN RETURN -1;
		END IF;

		SELECT account.usertype FROM account WHERE account.username = _username AND account.password = _password INTO result;
		
		IF (result Is NULL)
			THEN RETURN -2 ;   -- password is wrong
		ELSE 
			UPDATE account SET account.last_login = NOW() WHERE account.username = _username;
			RETURN result;
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Account_ModifyDescription` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Account_ModifyDescription`(_username VARCHAR(30), _description TEXT) RETURNS int(11)
BEGIN
		IF (Account_CheckExist(_username) = 0)
		THEN RETURN 0;
		ELSE 
		UPDATE account SET account.description = _description WHERE account.username = _username;
		RETURN 1;
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Account_ModifyName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Account_ModifyName`(_username VARCHAR(30), _name VARCHAR(32)) RETURNS int(11)
BEGIN
		IF (Account_CheckExist(_username) = 0)
		THEN RETURN 0;
		ELSE 
		UPDATE account SET account.name = _name WHERE account.username = _username;
		RETURN 1;
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Account_ModifyPassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Account_ModifyPassword`(_username VARCHAR(30), _oldpass CHAR (32), _newpass CHAR(32)) RETURNS int(11)
BEGIN
		SET @tmp = Account_Login(_username, _oldpass);
		IF (@tmp < 0)
		THEN RETURN 0;
		ELSE 
		UPDATE account SET account.password = _newpass WHERE account.username = _username;
		RETURN 1;
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Account_ModifyProfileImage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Account_ModifyProfileImage`(_username VARCHAR(30), _profile_img VARCHAR(32)) RETURNS int(11)
BEGIN
		IF (Account_CheckExist(_username) = 0)
		THEN RETURN 0;
		ELSE 
		UPDATE account SET account.profile_img = _profile_img WHERE account.username = _username;
		RETURN 1;
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Account_Promote` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Account_Promote`(_username VARCHAR(30), _username_admin VARCHAR(30), _password CHAR(32)) RETURNS int(11)
BEGIN
		SET @var1 = Account_CheckExist(_username); -- var1 holds usertype of account being promote
		IF (@var1 = 0)
		THEN RETURN 0;
		END IF;
		
		SET @var2 = Login(_username_admin, _password); -- var2 holds usertype of admin
		IF (@var2 < 0 OR @var2 <= @var1) 
		THEN RETURN 0;
		ELSE 
		UPDATE account SET account.usertype = @var1 + 1 WHERE account.username = _username;
		RETURN 1;
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Account_SubscribersCount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Account_SubscribersCount`(_username varchar(30)) RETURNS int(11)
BEGIN
	DECLARE ret BIGINT;
    SELECT COUNT(*) 
    FROM subscribes 
    WHERE channel_name = _username
    INTO ret;
    return ret;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `CheckCommentLike` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CheckCommentLike`(_username varchar(30), _comment_id int(11)) RETURNS int(11)
BEGIN
	DECLARE ret bool;
	SET ret = NULL;
    
    SELECT type 
    FROM a_likes_c 
    WHERE account_name = _username AND comment_id = _comment_id INTO ret;
    if (ret IS NULL) then return 0;
    else return ret;
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `CheckExistAccount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CheckExistAccount`(_username VARCHAR(30)) RETURNS int(11)
BEGIN
	DECLARE result VARCHAR(30);
	SET result = NULL;
	SELECT account.usertype FROM account WHERE account.username = _username INTO result;
    
    IF (result = NULL)
    THEN RETURN 0;
    ELSE RETURN result;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `CheckLike` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CheckLike`(_username varchar(30), _video_id int(11)) RETURNS int(11)
BEGIN
	DECLARE ret bool;
	SET ret = NULL;
    
    SELECT liked 
    FROM a_likes_v 
    WHERE account_name = _username AND video_id=_video_id INTO ret;
    if (ret IS NULL) then return 0;
    else return ret;
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `CheckReplyLike` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CheckReplyLike`(_username varchar(30), _reply_id int(11)) RETURNS int(11)
BEGIN
	DECLARE ret bool;
	SET ret = NULL;
    
    SELECT type 
    FROM a_likes_r
    WHERE account_name = _username AND reply_id = _reply_id INTO ret;
    if (ret IS NULL) then return 0;
    else return ret;
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `CheckUserExists` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CheckUserExists`(username_param varchar(30)) RETURNS int(11)
BEGIN
	if ((select username from account where username = username_param)) then
		RETURN 1;
	else return 0;
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Comment_CheckExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Comment_CheckExist`(_cmtid int (11)) RETURNS int(11)
    DETERMINISTIC
begin 
    if (select comment_id  from comment where comment_id = _cmtid)
	then return 1;
	else return 0;
	end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Comment_CountLikes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Comment_CountLikes`(_cmtid int (11), _type int(11)) RETURNS text CHARSET utf8mb4
    DETERMINISTIC
begin 
		if (NOT Comment_CheckExist(_cmtid) )
		then
			return 0;
		else
			return (select count(*) from a_likes_c where comment_id = _cmtid and type = _type);
		end if;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Comment_CountReplies` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Comment_CountReplies`(_comment_id int(11)) RETURNS int(11)
BEGIN
	DECLARE sum BIGINT;
    SET sum = 0;
    SELECT COUNT(*) FROM replies WHERE comment_id = _comment_id into sum;
    RETURN sum;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Comment_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Comment_Delete`(_username varchar(30), _vidid int(11), _cmtid int(11)) RETURNS int(11)
begin
 		declare result text;
		if (NOT Comment_CheckExist(_cmtid) )
		then
			return 0;
		else
		begin
			select content
				from video as v, comment as c, comments as cs
				where 
							v.id = cs.video_id
						and c.comment_id = cs.comment_id						
						and c.comment_id = _cmtid
						and cs.video_id = _vidid
						and (cs.account_name = _username or v.upload_account = _username) 
				into result;
             if (result is not null)
            then
            begin
				delete from replies where
					comment_id = _cmtid;
				delete from comments where
					comment_id = _cmtid;	
				delete from comment where
					comment_id = _cmtid; 
				return 1;
			end;
            else	
				return 0;
            end if;
		end;
		end if;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Comment_Insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Comment_Insert`(_username varchar(30), _vidid int(11), _content varchar(255)) RETURNS int(11)
begin
		
		if (NOT Video_CheckExist(_vidid) )
		then
			return 0;
		else
		begin
			insert into comment(dtime, content) values (now(), _content);
			insert into comments values(_username, _vidid, (select max(comment_id) from comment));
			return 1;
		end;
		end if;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Comment_Like` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Comment_Like`(_username varchar(30), _cmtid int(11), _type bool) RETURNS int(11)
begin
		if (NOT  Comment_CheckExist(_cmtid) )
		then
			return 0;
		else
		begin
			if (_type = 1) then
				insert into a_likes_c values (_username, _cmtid, now(), 1);
			end if;
		
			if (_type = -1) then
				insert into a_likes_c values (_username, _cmtid, now(), -1);
			end if;
			return 1;
		end;
		end if;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Comment_UnLike` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Comment_UnLike`(_username varchar(30), _cmtid int(11)) RETURNS int(11)
begin
		if (NOT Comment_CheckExist(_cmtid) )
		then
			return 0;
		else
		begin
			delete from a_likes_c where
				account_name = _username and comment_id = _cmtid;
			return 1;
		end;
		end if;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Feedback_CheckExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Feedback_CheckExist`(_feedback_id int(11)) RETURNS int(11)
BEGIN
	DECLARE result int(11);
	SET result = 0;
	SELECT 
    feedback_id
FROM
    feedback
WHERE
    feedback_id = _feedback_id into result;
    
    IF (result = 0)
    THEN RETURN 0;
    ELSE RETURN 1;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Feedback_Insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Feedback_Insert`(_feedback_id int(11), _content text, _title varchar(45), _account_name varchar(30)) RETURNS int(11)
BEGIN
	DECLARE result INT(11);
	SET result = 0;
    
    SELECT `Feedback_CheckExist`(_feedback_id) INTO result;
    IF (result = 1)
    THEN RETURN 0;
    END IF;

 	INSERT INTO feedback
    VALUES (_feedback_id, NULL, _content, _title, _account_name);   
    


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetVideoViewCount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetVideoViewCount`(_video_id INT(11)) RETURNS int(11)
BEGIN
	DECLARE count BIGINT;
    SELECT COUNT(*) FROM a_views_v WHERE video_id = _video_id INTO count;
    RETURN count;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `InsertAccount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `InsertAccount`(_username VARCHAR(30), _password CHAR(32)) RETURNS int(11)
BEGIN
	IF (NOT CheckExistAccount(_username) = 0) -- Account existed
    THEN RETURN 0;
    ELSE INSERT INTO account(account.username, account.password, account.name) VALUES (_username, _password, _username);
    RETURN 1;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Languages_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Languages_Delete`(_name VARCHAR(25)) RETURNS int(11)
BEGIN
		IF((SELECT name FROM languages WHERE languages.name = _name) is null)
		THEN RETURN 0;
		ELSE 
		DELETE FROM languages WHERE languages.name = _name;
		RETURN 1;
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Languages_Insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Languages_Insert`(_name VARCHAR(25)) RETURNS int(11)
BEGIN
		IF((SELECT languages.name FROM languages WHERE languages.name = _name) IS NULL)
		THEN
		INSERT INTO languages(languages.name) VALUES (_name);
		RETURN 1;
		ELSE 
		RETURN 0;
		END IF;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Login`(_username VARCHAR(30), _password CHAR(32)) RETURNS int(11)
BEGIN
	DECLARE result TINYINT(1);
    SET result = NULL;
    
	IF (NOT CheckExistAccount(_username) = 0) -- Account existed
    THEN RETURN -1;
    END IF;

    SELECT account.usertype FROM account WHERE account.username = _usertype AND account.password = _password INTO result;
    
    IF (result = NULL)
    THEN RETURN -2;
    ELSE RETURN result;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `PlaylistV_CheckExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `PlaylistV_CheckExist`(_playlist_id int(11), _video_id int(11)) RETURNS int(11)
BEGIN
	DECLARE result INT(11);
	SET result = 0;
	SELECT 
    p_contains_v.playlist_id
FROM
    p_contains_v
WHERE
    playlist_id = _playlist_id
        AND video_id = _video_id INTO result;
    
    IF (result = 0)
    THEN RETURN 0;
    ELSE RETURN 1;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `PlaylistV_DeletePlaylist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `PlaylistV_DeletePlaylist`(_playlist_id int(11)) RETURNS int(11)
BEGIN
	DECLARE result INT(11);
	SET result = 0;
    
    SELECT `Playlist_CheckExist`(_playlist_id) INTO result;
    IF (result = 0)
    THEN RETURN 0;
    END IF;
    
	SET SQL_SAFE_UPDATES = 0;
	DELETE FROM p_contains_v 
    WHERE 	playlist_id = _playlist_id;
	SET SQL_SAFE_UPDATES = 1;
    
    RETURN 1;
RETURN 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `PlaylistV_DeleteVideo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `PlaylistV_DeleteVideo`(_playlist_id int(11), _video_id int(11)) RETURNS int(11)
BEGIN
	DECLARE result INT(11);
	SET result = 0;
    
    SELECT `PlaylistV_CheckExist`(_playlist_id, _video_id) INTO result;
    IF (result = 0)
    THEN RETURN 0;
    END IF;
    
	SET SQL_SAFE_UPDATES = 0;
	DELETE FROM p_contains_v 
    WHERE 	playlist_id = _playlist_id
		AND video_id = _video_id;
	SET SQL_SAFE_UPDATES = 1;
    
    RETURN 1;
RETURN 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `PlaylistV_InsertVideo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `PlaylistV_InsertVideo`(_playlist_id int(11), _video_id int(11)) RETURNS int(11)
BEGIN
	DECLARE result INT(11);
	SET result = 0;
    
    SELECT `PlaylistV_CheckExist`(_playlist_id, _video_id) INTO result;
    IF (result = 1)
    THEN RETURN 0;
    END IF;
    
	INSERT INTO p_contains_v
    VALUES (_playlist_id, _video_id);
    
RETURN 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Playlist_CheckExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Playlist_CheckExist`(_playlist_id VARCHAR(30)) RETURNS int(11)
BEGIN
	DECLARE result INT(11);
	SET result = 0;
	SELECT playlist.playlist_id FROM playlist WHERE playlist.playlist_id = _playlist_id INTO result;
    
    IF (result = 0)
    THEN RETURN 0;
    ELSE RETURN 1;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Playlist_CheckPlaylistExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Playlist_CheckPlaylistExist`(_pid int(11)) RETURNS int(11)
BEGIN
  if (select playlist_id from playlist where playlist_id = _pid)
	then return 1;
	else return 0;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Playlist_CheckVideoInPlaylist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Playlist_CheckVideoInPlaylist`(_pid int(11), _vid int(11)) RETURNS int(11)
BEGIN
	DECLARE ret int(11);
    SET ret = NULL;
    SELECT playlist_id from p_contains_v where playlist_id=_pid and video_id=_vid INTO ret;
    if (ret IS NULL) then return 0;
    else return 1;
    end if;
RETURN 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Playlist_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Playlist_Delete`(_playlist_id VARCHAR(30)) RETURNS int(11)
BEGIN
	DECLARE result INT(11);
	SET result = 0;
    
	CALL `PlaylistV_DeletePlaylist`(_playlist_id);
    
    SELECT `Playlist_CheckExist`(_playlist_id) INTO result;
    IF (result = 0)
    THEN RETURN 0;
    END IF;
    
	DELETE FROM playlist
    WHERE	playlist_id = _playlist_id;
    
    RETURN 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Playlist_ModifyDtime` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Playlist_ModifyDtime`(_playlist_id int(12), _dtime datetime) RETURNS int(11)
BEGIN
	DECLARE result INT(11);
	SET result = 0;
    
    SELECT `Playlist_CheckExist`(_playlist_id) INTO result;
    IF (result = 0)
    THEN RETURN 0;
    END IF;
    
	UPDATE playlist
		SET dtime = _dtime
		WHERE playlist_id = _playlist_id;
    RETURN 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Playlist_ModifyName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Playlist_ModifyName`(_playlist_id int(12), _name text) RETURNS int(11)
BEGIN
	DECLARE result INT(11);
	SET result = 0;
    
    SELECT `Playlist_CheckExist`(_playlist_id) INTO result;
    IF (result = 0)
    THEN RETURN 0;
    END IF;
    
	UPDATE playlist
		SET name = _name
		WHERE playlist_id = _playlist_id;
    
    RETURN 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Playlist_ModifyOwner` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Playlist_ModifyOwner`(_id int(12), _owner varchar(45)) RETURNS int(11)
BEGIN
	DECLARE result INT(11);
	SET result = 0;
    
    SELECT `Playlist_CheckExist`(_playlist_id) INTO result;
    IF (result = 0)
    THEN RETURN 0;
    END IF;
    
	UPDATE playlist
		SET owner = _owner
		WHERE playlist_id = _playlist_id;
    RETURN 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Playlist_ModifyPublic` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Playlist_ModifyPublic`(_playlist_id int(12), _public tinyint(1)) RETURNS int(11)
BEGIN
	DECLARE result INT(11);
	SET result = 0;
    
    SELECT `Playlist_CheckExist`(_playlist_id) INTO result;
    IF (result = 0)
    THEN RETURN 0;
    END IF;
    
	UPDATE playlist
		SET public = _public
		WHERE playlist_id = _playlist_id;
    RETURN 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Reply_CheckExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Reply_CheckExist`(_repid int (11)) RETURNS int(11)
    DETERMINISTIC
begin 
		if (select reply_id  from reply where reply_id = _repid)
		then return 1;
		else return 0;
		end if;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Reply_CountLikes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Reply_CountLikes`(_repid int (11), _type int(11)) RETURNS text CHARSET utf8mb4
    DETERMINISTIC
begin 
		if (NOT Reply_CheckExist(_repid) )
		then
			return 0;
		else
			return (select count(*) from a_likes_r where reply_id = _repid and type = _type);
		end if;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Reply_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Reply_Delete`(_repid int(11)) RETURNS int(11)
begin
		DELETE FROM reply where reply_id = _repid;
        return 1;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Reply_Insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Reply_Insert`(_username varchar(30), _cmtid int(11), _content varchar(255)) RETURNS int(11)
begin
		if (NOT Comment_CheckExist(_cmtid) )
		then
			return 0;
		else
		begin
			insert into reply(dtime, content) values (now(), _content);
			insert into replies values(_username, _cmtid, (select max(reply_id) from reply));
			return 1;
		end;
		end if;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Reply_Like` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Reply_Like`(_username varchar(30), _repid int(11), _type bool) RETURNS int(11)
begin
		if (NOT Reply_CheckExist(_repid) )
		then
			return 0;
		else
		begin
			if (_type = 1) then
				insert into a_likes_r values (_username, _repid, now(), 1);
			end if;
		
			if (_type = -1) then
				insert into a_likes_r values (_username, _repid, now(), -1);
			end if;
			return 1;
		end;
		end if;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Reply_UnLike` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Reply_UnLike`(_username varchar(30), _repid int(11)) RETURNS int(11)
begin
		if (NOT Reply_CheckExist(_repid) )
		then
			return 0;
		else
		begin
			delete from a_likes_r where
				account_name = _username and reply_id = _repid;
			return 1;
		end; 
		end if;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Report_Insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Report_Insert`(_video_id INT(11), _username VARCHAR(30), _title VARCHAR(45), _content LONGTEXT) RETURNS int(11)
BEGIN
		INSERT INTO report(report.video_id, report.account_name, report.dtime, report.title, report.content, report.read) VALUES (_video_id, _username, now(),  _title, _content, 0);
		RETURN 1;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Subscribes_CheckExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Subscribes_CheckExist`(_channel_name varchar(30), _subscriber_name varchar(30)) RETURNS int(11)
BEGIN
	DECLARE result varchar(30);
	SET result = '';
	SELECT 
    channel_name
FROM
    subscribes
WHERE
    channel_name = _channel_name
        AND subscriber_name = _subscriber_name INTO result;
    
    IF (result = '')
    THEN RETURN 0;
    ELSE RETURN 1;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Subscribes_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Subscribes_Delete`(_channel_name varchar(30), _subscriber_name varchar(30)) RETURNS int(11)
BEGIN
	DECLARE result INT(11);
	SET result = 0;
    
    SELECT `Subscribes_CheckExist`(_channel_name, _subscriber_name) INTO result;
    IF (result = 0)
    THEN RETURN 0;
    END IF;
    
	SET SQL_SAFE_UPDATES = 0;
	DELETE FROM subscribes
    WHERE 	channel_name = _channel_name
		AND subscriber_name = _subscriber_name;
	SET SQL_SAFE_UPDATES = 1;
    
RETURN 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Subscribes_Insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Subscribes_Insert`(_channel_name varchar(30), _subscriber_name varchar(30)) RETURNS int(11)
BEGIN
	DECLARE result INT(11);
	SET result = 0;
    
    SELECT `Subscribes_CheckExist`(_channel_name, _subscriber_name) INTO result;
    IF (result = 1)
    THEN RETURN 0;
    END IF;
    
	INSERT INTO subscribes
    VALUES (_channel_name, _subscriber_name);
    
RETURN 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Subscribes_InsertSubscription` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Subscribes_InsertSubscription`(_channel_name varchar(30), _subscriber_name varchar(30)) RETURNS int(11)
BEGIN
	DECLARE result INT(11);
	SET result = 0;
    
    SELECT `Subscribes_CheckExist`(_channel_name, _subscriber_name) INTO result;
    IF (result = 1)
    THEN RETURN 0;
    END IF;
    
	INSERT INTO subscribes
    VALUES (_channel_name, _subscriber_name);
    
RETURN 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Subscribes_InsertVideo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Subscribes_InsertVideo`(_channel_name varchar(30), _subscriber_name varchar(30)) RETURNS int(11)
BEGIN
	DECLARE result INT(11);
	SET result = 0;
    
    SELECT `Subscribes_CheckExist`(_channel_name, _subscriber_name) INTO result;
    IF (result = 1)
    THEN RETURN 0;
    END IF;
    
	INSERT INTO subscribers
    VALUES (_channel_name, _subscriber_name);
    
RETURN 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Transaction_TotalTransactionOfAccount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Transaction_TotalTransactionOfAccount`(_account_name varchar(30)) RETURNS decimal(6,2)
    DETERMINISTIC
begin 
	DECLARE result decimal(6, 2);
	SELECT	account_name, SUM(amount)
    FROM	vip 
		INNER JOIN 
			(SELECT transaction_id, wallet_id, amount, remains FROM transaction) AS trans
		ON vip.wallet_id = trans.wallet_id
    WHERE	account_name = _account_name
    GROUP BY account_name INTO result;
    
    RETURN result;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Transaction_TotalTransactionOfAccountP` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Transaction_TotalTransactionOfAccountP`(_fromdate datetime,_todate datetime, _account_name varchar(30)) RETURNS decimal(6,2)
    DETERMINISTIC
begin 
	DECLARE result decimal(6, 2);
	SELECT	account_name, SUM(amount)
    FROM	vip 
		INNER JOIN 
			(SELECT transaction_id, wallet_id, amount, remains FROM transaction) AS trans
		ON vip.wallet_id = trans.wallet_id
    WHERE	dtime >= _fromdate
		AND	dtime <= _todate
        AND account_name = _account_name
    GROUP BY account_name INTO result;
    
    RETURN result;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Video_CheckExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Video_CheckExist`(_vidid int (11)) RETURNS int(11)
    DETERMINISTIC
begin 
    if (select id  from video where id = _vidid)
	then return 1;
	else return 0;
	end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AccCmtsVid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AccCmtsVid`(username varchar(30), vidid int(11), content varchar(255))
begin
		insert into comment(dtime, content) values (now(), content);
		insert into comments values(username, vidid, (select max(comment_id) from comment));
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AccLikesVid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AccLikesVid`(username varchar(30), vidid int(11), type bool)
begin
		insert into a_likes_v(account_name, video_id, dtime, liked) values (username, vidid, now(), type);
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Account_ListChannelPlaylist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Account_ListChannelPlaylist`(_account_name varchar(30))
BEGIN
	SELECT	playlist.playlist_id, playlist.name, playlist.public, playlist.public, playlist.dtime, playlist.owner
    FROM	account, subscribes, playlist
    WHERE	subscribes.subscriber_name = _account_name
		AND	playlist.owner = subscribes.channel_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Account_ListChannelVideo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Account_ListChannelVideo`(_account_name varchar(30))
BEGIN
	SELECT	video.id, video.name, video.length, video.description, video.status, video.license, video.published_dtime, video.upload_account, video.dtime_upload
    FROM	account, subscribes, video
    WHERE	subscribes.subscriber_name = _account_name
		AND	video.upload_account = subscribes.channel_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Account_ListVideoWatchLater` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Account_ListVideoWatchLater`(_account_name varchar(30))
BEGIN
	SELECT	video.id, video.name, video.length, video.description, video.status, video.license, video.published_dtime, video.upload_account, video.dtime_upload
    FROM	video, a_watch_later_v
    WHERE	a_watch_later_v.account_name = _account_name
		AND	a_watch_later_v.video_id = video.id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Account_Search` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Account_Search`(IN keyword TEXT)
BEGIN
		SELECT *, MATCH(username, name, description) AGAINST (CONCAT(keyword, '*') IN BOOLEAN MODE) AS relevance
		FROM account WHERE MATCH(username, name, description) AGAINST (CONCAT(keyword, '*') IN BOOLEAN MODE) ORDER BY relevance DESC;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AccRepliesCmt` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AccRepliesCmt`(_username varchar(30), _cmt_id int(11), _content varchar(255))
BEGIN
	insert into reply(dtime, content) values (now(), _content);
    insert into replies(account_name, comment_id, reply_id) values (_username, _cmt_id, (select max(reply_id) from reply));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AccReportsVid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AccReportsVid`(username varchar(30), vidid int(11), title varchar(45), content longtext)
begin
		insert into a_watch_later_v values (vivid, username, now(), content, title);
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AccUnLikesVid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AccUnLikesVid`(username varchar(30), vidid int(11))
begin
		delete from a_likes_v where
			account_name = username and video_id = vidid;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AccViewsVid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AccViewsVid`(username varchar(30), vidid int(11))
begin
		insert into a_views_v(account_name, video_id, dtime) values(username, vidid, now());
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AccWatchsLaterVid` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AccWatchsLaterVid`(username varchar(30), vidid int(11))
begin
		insert into a_watch_later_v values(username, vidid);
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddVideoToPlaylist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddVideoToPlaylist`(playlist_id int(11), video_id int(11))
begin
		insert into p_contains_v values (playlist_id, video_id);
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Comment_List` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Comment_List`(_vidid int(11))
begin
		if ( Video_CheckExist(_vidid))
		then
		begin
			select comments.comment_id, comments.video_id, name , profile_img, dtime, content, 
            Comment_CountLikes(comments.comment_id, 1) as likeCount,
            Comment_CountReplies(comments.comment_id) as replyCount
			from (comment join comments on comment.comment_id = comments.comment_id) join account on username = account_name
			where video_id = _vidid;
		end;
		end if;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Feedback_Insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Feedback_Insert`(_content text, _title varchar(45), _account_name varchar(30))
BEGIN
		INSERT INTO feedback (dtime, content, title, account_name)
		VALUES (now(), _content, _title, _account_name);
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Genre_ListAllVideo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Genre_ListAllVideo`(_name varchar(255))
BEGIN
	SELECT	id, video.name, length, video.description, status, license, published_dtime, upload_account, dtime_upload
    FROM	(genre
		INNER JOIN
			v_belongs_to_g
		ON	genre.genre_id = v_belongs_to_g.genre_id)
        INNER JOIN
			video
		ON	video.id = video_id
        
    WHERE	genre.name = _name
	;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetHistory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetHistory`(_username varchar(30))
BEGIN
	select id,  name as title, upload_account as channelTitle, dtime_upload as publishedAt, GetVideoViewCount(id) as viewCount, description
	from video inner join 
	(select * from a_views_v group by account_name, video_id) as history 
	on history.video_id = video.id 
	where history.account_name = _username;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetLikedVideos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetLikedVideos`(_username varchar(30))
BEGIN
	select id,  name as title, upload_account as channelTitle, dtime_upload as publishedAt, GetVideoViewCount(id) as viewCount, description
	from video inner join a_likes_v on video.id = a_likes_v.video_id
    where liked = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTrending` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTrending`(_lowerBound BIGINT)
BEGIN
select id,  name as title, upload_account as channelTitle, dtime_upload as publishedAt, GetVideoViewCount(id) as viewCount, description
from video 
where GetVideoViewCount(id) > _lowerBound
order by viewCount desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetVideosForUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetVideosForUser`(_username varchar(30))
BEGIN
	SELECT * FROM `video` where upload_account = _username;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetVideosOfSubscribedChannels` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetVideosOfSubscribedChannels`(_username varchar(30))
BEGIN
	select id,  name as title, upload_account as channelTitle, dtime_upload as publishedAt, GetVideoViewCount(id) as viewCount, description
	from video inner join 
	(select channel_name from subscribes where subscriber_name = _username) as channel
	where video.upload_account = channel.channel_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetWatchedLaterVideos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetWatchedLaterVideos`(_username varchar(30))
BEGIN
	SELECT video.id as id, 
    upload_account as channelTitle, 
    name as title, description, 
    dtime_upload as publishedAt,
    GetVideoViewCount(id) as viewCount
    FROM video INNER JOIN a_watch_later_v ON video.id = video_id
    WHERE account_name = _username;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertVideo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertVideo`(_name varchar(45), _description text, _status tinyint(4), _license varchar(45), _upload_account varchar(30))
BEGIN
	insert into video(name, description, status, license, dtime_upload, upload_account) values (_name, _description, _status, _license, now(), _upload_account);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Languages_ViewLanguages` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Languages_ViewLanguages`()
BEGIN
		SELECT * FROM languages;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ModifyVideoDescription` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ModifyVideoDescription`(id int(12), description varchar(45))
begin
	UPDATE Video
		SET description = description
		WHERE id = id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ModifyVideoLicense` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ModifyVideoLicense`(id int(12), license varchar(45))
begin
	UPDATE Video
		SET license = license
		WHERE id = id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ModifyVideoLisense` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ModifyVideoLisense`(id int(12), license varchar(45))
begin
	UPDATE Video
		SET license = license
		WHERE id = id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ModifyVideoName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ModifyVideoName`(id int(12), name varchar(45))
begin
	UPDATE Video
		SET name = name
		WHERE id = id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ModifyVideoStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ModifyVideoStatus`(id int(12), status tinyint(4))
begin
	UPDATE Video
		SET status = status
		WHERE id = id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PlaylistV_DeletePlaylist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PlaylistV_DeletePlaylist`(_playlist_id int(11))
BEGIN
		SET SQL_SAFE_UPDATES = 0;
		DELETE FROM p_contains_v 
		WHERE 	playlist_id = _playlist_id;
		SET SQL_SAFE_UPDATES = 1;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PlaylistV_DeleteVideo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PlaylistV_DeleteVideo`(_playlist_id int(11), _video_id int(11))
BEGIN
		SET SQL_SAFE_UPDATES = 0;
		DELETE FROM p_contains_v 
		WHERE 	playlist_id = _playlist_id
			AND video_id = _video_id;
		SET SQL_SAFE_UPDATES = 1;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PlaylistV_InsertVideo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PlaylistV_InsertVideo`(_playlist_id int(11), _video_id int(11))
BEGIN
		INSERT INTO p_contains_v 
		VALUES (_playlist_id, _video_id);
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PlaylistV_ListVideo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PlaylistV_ListVideo`(_playlist_id int(11))
BEGIN
		SELECT	video_id
		FROM	p_contains_v
		WHERE 	playlist_id = _playlist_id;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Playlist_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Playlist_Delete`(_playlist_id int(11))
BEGIN
		CALL `test1`.`PlaylistV_DeletePlaylist`(_playlist_id);
		DELETE FROM playlist
		WHERE	playlist_id = _playlist_id;

	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Playlist_ListPlaylist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Playlist_ListPlaylist`(_username varchar(30))
BEGIN
		SELECT	*
		FROM	playlist WHERE owner = _username;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Playlist_ModifyDtime` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Playlist_ModifyDtime`(_id int(12), _dtime datetime)
BEGIN
	UPDATE playlist
		SET dtime = _dtime
		WHERE id = _id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Playlist_ModifyName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Playlist_ModifyName`(_id int(12), _name text)
begin
		UPDATE playlist
			SET name = _name
			WHERE id = _id;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Playlist_ModifyOwner` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Playlist_ModifyOwner`(_id int(12), _owner varchar(45))
BEGIN
	UPDATE playlist
		SET owner = _owner
		WHERE id = _id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Playlist_ModifyPublic` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Playlist_ModifyPublic`(_id int(12), _public tinyint(1))
BEGIN
		UPDATE playlist
			SET public = _public
			WHERE id = _id;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Playlist_Search` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Playlist_Search`(IN keyword TEXT)
BEGIN
		SELECT *, MATCH(name, owner) AGAINST (CONCAT(keyword, '*') IN BOOLEAN MODE) as relevance 
		FROM playlist WHERE MATCH(name, owner) AGAINST (CONCAT(keyword, '*') IN BOOLEAN MODE) ORDER BY relevance DESC;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Playstlist_GetVideos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Playstlist_GetVideos`(_playlist_id int(11))
BEGIN
	SELECT name as title, upload_account as owner, id
    FROM video INNER JOIN p_contains_v  ON video_id = id
    WHERE playlist_id = _playlist_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Reply_List` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Reply_List`(_cmtid int(11))
begin
		if ( Comment_CheckExist(_cmtid) )
		then
		begin
			select reply.reply_id, replies.comment_id,  name , profile_img, dtime, content, Reply_CountLikes(reply.reply_id, 1) as likeCount
			from (reply join replies on reply.reply_id = replies.reply_id) join account on username = account_name
			where comment_id = _cmtid;
		end;
		end if;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Report_Read` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Report_Read`(_video_id INT, _account_name VARCHAR(30))
BEGIN
		UPDATE report SET report.read = TRUE WHERE report.video_id = _video_id AND report.account_name = _account_name;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Report_ViewAll` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Report_ViewAll`()
BEGIN
		SELECT * FROM report;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Report_ViewUnreadReport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Report_ViewUnreadReport`()
BEGIN
		SELECT * FROM report WHERE report.read = FALSE;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Report_ViewVideoReports` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Report_ViewVideoReports`(_video_id INT)
BEGIN
		SELECT * FROM report WHERE report.video_id = _video_id;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `search` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `search`(IN _keyword TEXT)
BEGIN
		CALL Playlist_Search(_keyword);
		CALL Account_Search(_keyword);
		CALL Video_Search(_keyword);
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchAccount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchAccount`(IN keyword TEXT)
BEGIN
	SELECT *, MATCH(username, name, description) AGAINST (CONCAT(keyword, '*') IN BOOLEAN MODE) AS relevance
    FROM account WHERE MATCH(username, name, description) AGAINST (CONCAT(keyword, '*') IN BOOLEAN MODE) ORDER BY relevance DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchPlaylist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchPlaylist`(IN keyword TEXT)
BEGIN
	SELECT *, MATCH(name, owner) AGAINST (CONCAT(keyword, '*') IN BOOLEAN MODE) as relevance 
    FROM playlist WHERE MATCH(name, owner) AGAINST (CONCAT(keyword, '*') IN BOOLEAN MODE) ORDER BY relevance DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchVideo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchVideo`(IN keyword TEXT)
BEGIN
	SELECT *, MATCH(name, description) AGAINST (CONCAT(keyword, '%') IN BOOLEAN MODE) as relevance
    FROM video WHERE MATCH(name, description) AGAINST (CONCAT(keyword, '%') IN BOOLEAN MODE) ORDER BY relevance DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Subscribes_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Subscribes_Delete`(_channel_name varchar(30), _subscriber_name varchar(30))
BEGIN
		SET SQL_SAFE_UPDATES = 0;
		DELETE FROM subscribes
		WHERE 	channel_name = _channel_name
			AND subscriber_name = _subscriber_name;
		SET SQL_SAFE_UPDATES = 1;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Subscribes_Insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Subscribes_Insert`(_channel_name varchar(30), _subscriber_name varchar(30))
BEGIN
		INSERT INTO subscribes
		VALUES (_channel_name, _subscriber_name);
		
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Transaction_ListAllTransactionOfAccount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Transaction_ListAllTransactionOfAccount`(_account_name varchar(30))
BEGIN
	SELECT	*
    FROM	vip 
		INNER JOIN 
			(SELECT transaction_id, wallet_id, amount, remains from transaction) as trans
		ON vip.wallet_id = trans.wallet_id
    WHERE	account_name = _account_name
	;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Transaction_ListTransactionOfAccount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Transaction_ListTransactionOfAccount`(_fromdate datetime,_todate datetime, _account_name varchar(30))
BEGIN
	SELECT	*
    FROM	vip 
		INNER JOIN 
			(SELECT transaction_id, wallet_id, amount, remains from transaction) as trans 
		ON vip.wallet_id = trans.wallet_id
    WHERE	dtime >= _fromdate
		AND	dtime <= _todate
        AND account_name = _account_name
	;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Video_ListComment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Video_ListComment`(_video_id int(11))
BEGIN
	SELECT	account.username, account.name, account.profile_img, comment.dtime, comment.content
    FROM	account, comments, comment
    WHERE	comments.comment_id = comment.comment_id
		AND comments.account_name = account.username
		AND	comments.video_id = _video_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Video_ModifyDescription` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Video_ModifyDescription`(id int(12), description varchar(45))
begin
		UPDATE Video
			SET description = description
			WHERE id = id;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Video_ModifyLicense` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Video_ModifyLicense`(id int(12), license varchar(45))
begin
		UPDATE Video
			SET license = license
			WHERE id = id;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Video_ModifyName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Video_ModifyName`(id int(12), name varchar(45))
begin
		UPDATE Video
			SET name = name
			WHERE id = id;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Video_ModifyStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Video_ModifyStatus`(id int(12), status tinyint(4))
begin
		UPDATE Video
			SET status = status
			WHERE id = id;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Video_Search` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Video_Search`(IN keyword TEXT)
BEGIN
		SELECT *, MATCH(name, description) AGAINST (CONCAT(keyword, '*') IN BOOLEAN MODE) as relevance
		FROM video WHERE MATCH(name, description) AGAINST (CONCAT(keyword, '*') IN BOOLEAN MODE) ORDER BY relevance DESC;
	END ;;
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

-- Dump completed on 2018-05-13 19:46:26
