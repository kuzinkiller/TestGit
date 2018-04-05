-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: portal
-- ------------------------------------------------------
-- Server version	5.7.20

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

-- Dumping database structure for portal
CREATE DATABASE IF NOT EXISTS `portal` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `portal`;

--
-- Table structure for table `access`
--

DROP TABLE IF EXISTS `access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access` (
  `id_cms_position` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  PRIMARY KEY (`id_cms_position`,`id_role`),
  KEY `FK_6` (`id_role`),
  CONSTRAINT `FK_5` FOREIGN KEY (`id_cms_position`) REFERENCES `cms_position` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_6` FOREIGN KEY (`id_role`) REFERENCES `role` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Dumping data for table portal.access: ~53 rows (approximately)
/*!40000 ALTER TABLE `access` DISABLE KEYS */;
INSERT INTO `access` (`id_cms_position`, `id_role`) VALUES
	(4, 1),
	(4, 2),
	(4, 3),
	(4, 4),
	(4, 5),
	(4, 6),
	(4, 7),
	(4, 8),
	(4, 9),
	(4, 10),
	(4, 11),
	(4, 12),
	(4, 13),
	(4, 14),
	(4, 15),
	(4, 16),
	(4, 17),
	(4, 18),
	(4, 19),
	(4, 20),
	(4, 21),
	(4, 22),
	(4, 23),
	(4, 24),
	(4, 25),
	(4, 26),
	(4, 27),
	(4, 28),
	(4, 29),
	(4, 30),
	(4, 31),
	(4, 32),
	(4, 33),
	(4, 34),
	(4, 35),
	(4, 36),
	(4, 37),
	(4, 38),
	(4, 39),
	(4, 40),
	(4, 41),
	(4, 42),
	(4, 43),
	(4, 44),
	(4, 45),
	(4, 46),
	(4, 47),
	(4, 48),
	(4, 49),
	(4, 50),
	(4, 51),
	(4, 52),
	(4, 53),
	(4, 54),
	(4, 55),
	(4, 56),
	(4, 57),
	(4, 58),
	(4, 59),
	(4, 60),
	(4, 61),
	(4, 62),
	(4, 63),
	(4, 64),
	(4, 65),
	(4, 66),
	(4, 67),
	(4, 68),
	(4, 69);
/*!40000 ALTER TABLE `access` ENABLE KEYS */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_google` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `change_email_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flg_status` int(11) DEFAULT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK_1` (`id_user`),
  CONSTRAINT `FK_1` FOREIGN KEY (`id_user`) REFERENCES `portal_user` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;



--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `address_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Hà Nội','Ha Noi'),(2,'Thành phố Hồ Chí Minh','Ho Chi Minh'),(3,'An Giang','An Giang'),(4,'Bà Rịa - Vũng Tàu','Ba Ria -Vung Tau'),(5,'Bắc Cạn','Bac Can'),(6,'Bắc Giang','Bac Giang'),(7,'Bạc Liêu','Bac Lieu'),(8,'Bắc Ninh','Bac Ninh'),(9,'Bến Tre','Ben Tre'),(10,'Bình Định','Binh Dinh'),(11,'Bình Dương','Binh Duong'),(12,'Bình Phước','Binh Phuoc'),(13,'Bình Thuận','Binh Thuan'),(14,'Cà Mau','Ca Mau'),(15,'Cần Thơ','Can Tho'),(16,'Cao Bằng','Cao Bang'),(17,'Đà Nẵng','Da Nang'),(18,'Đắk Lắk','Dak Lak'),(19,'Đắk Nông','Dak Nong'),(20,'Điện Biên','Dien Bien'),(21,'Đồng Nai','Dong Nai'),(22,'Đồng Tháp','Dong Thap'),(23,'Gia Lai','Gia Lai'),(24,'Hà Giang','Ha Giang'),(25,'Hà Nam','Ha Nam'),(26,'Hà Tĩnh','Ha Tinh'),(27,'Hải Dương','Hai Duong'),(28,'Hải Phòng','Hai Phong'),(29,'Hậu Giang','Hau Giang'),(30,'Hòa Bình','Hoa Binh'),(31,'Hưng Yên','Hung Yen'),(32,'Khánh Hòa','Khanh Hoa'),(33,'Kiên Giang','Kien Giang'),(34,'Kon Tum','Kon Tum'),(35,'Lai Châu','Lai Chau'),(36,'Lâm Đồng','Lam Dong'),(37,'Lạng Sơn','Lang Son'),(38,'Lào Cai','Lao Cai'),(39,'Long An','Long An'),(40,'Nam Định','Nam Dinh'),(41,'Nghệ An','Nghe An'),(42,'Ninh Bình','Ninh Binh'),(43,'Ninh Thuận','Ninh Thuan'),(44,'Phú Thọ','Phu Tho'),(45,'Phú Yên','Phu Yen'),(46,'Quảng Bình','Quang Binh'),(47,'Quảng Nam','Quang Nam'),(48,'Quảng Ngãi','Quang Ngai'),(49,'Quảng Ninh','Quang Ninh'),(50,'Quảng Trị','Quang Tri'),(51,'Sóc Trăng','Soc Trang'),(52,'Sơn La','Son La'),(53,'Tây Ninh','Tay Ninh'),(54,'Thái Bình','Thai Binh'),(55,'Thái Nguyên','Thai Nguyen'),(56,'Thanh Hoá','Thanh Hoa'),(57,'Thừa Thiên - Huế','Thua Thien - Hue'),(58,'Tiền Giang','Tien Giang'),(59,'Trà Vinh','Tra Vinh'),(60,'Tuyên Quang','Tuyen Quang'),(61,'Vĩnh Long','Vinh Long'),(62,'Vĩnh Phúc','Vinh Phuc'),(63,'Yên Bái','Yen Bai'),(64,'Nước ngoài','International');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_status`
--

DROP TABLE IF EXISTS `candidate_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidate_status` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_job` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `id_cms_user` int(11) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK_candidate_status_1` (`id_user`),
  KEY `FK_candidate_status_2` (`id_job`),
  KEY `FK_candidate_status_3` (`id_cms_user`),
  CONSTRAINT `FK_candidate_status_1` FOREIGN KEY (`id_user`) REFERENCES `portal_user` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_candidate_status_2` FOREIGN KEY (`id_job`) REFERENCES `job_post` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_candidate_status_3` FOREIGN KEY (`id_cms_user`) REFERENCES `cms_user` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_status`
--

LOCK TABLES `candidate_status` WRITE;
/*!40000 ALTER TABLE `candidate_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidate_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `career_level`
--

DROP TABLE IF EXISTS `career_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `career_level` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `careerLevel_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `careerLevel_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `careerLevel_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `note` text COLLATE utf8_unicode_ci,
  `id_careerStream` int(11) DEFAULT NULL,
  `flg_status` int(11) NOT NULL,
  `id_creater` int(11) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK_career_level_1` (`id_careerStream`),
  KEY `FK_career_stream_2` (`id_creater`),
  CONSTRAINT `FK_career_level_1` FOREIGN KEY (`id_careerStream`) REFERENCES `career_stream` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_career_level_2` FOREIGN KEY (`id_creater`) REFERENCES `cms_user` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `career_level_history`
--

DROP TABLE IF EXISTS `career_level_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `career_level_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `id_career_level` int(11) DEFAULT NULL,
  `object` text COLLATE utf8_unicode_ci,
  `id_creater` int(11) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `id_career_level` (`id_career_level`),
  KEY `Column 4` (`id_creater`),
  CONSTRAINT `FK_career_level_history_1` FOREIGN KEY (`id_career_level`) REFERENCES `career_level` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_career_level_history_2` FOREIGN KEY (`id_creater`) REFERENCES `cms_user` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `career_level_history`
--

LOCK TABLES `career_level_history` WRITE;
/*!40000 ALTER TABLE `career_level_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `career_level_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `career_stream`
--

DROP TABLE IF EXISTS `career_stream`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `career_stream` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `careerStream_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `careerStream_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `careerStream_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `note` text COLLATE utf8_unicode_ci,
  `flg_status` int(11) NOT NULL,
  `id_creater` int(11) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK_career_stream_1` (`id_creater`),
  CONSTRAINT `FK_career_stream_1` FOREIGN KEY (`id_creater`) REFERENCES `cms_user` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `career_stream_history`
--

DROP TABLE IF EXISTS `career_stream_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `career_stream_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `id_career_stream` int(11) DEFAULT NULL,
  `objects` text COLLATE utf8_unicode_ci,
  `id_creater` int(11) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `id_career_stream` (`id_career_stream`),
  KEY `id_creater` (`id_creater`),
  CONSTRAINT `FK_career_stream_history_1` FOREIGN KEY (`id_career_stream`) REFERENCES `career_stream` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_career_stream_history_2` FOREIGN KEY (`id_creater`) REFERENCES `cms_user` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `career_stream_history`
--

LOCK TABLES `career_stream_history` WRITE;
/*!40000 ALTER TABLE `career_stream_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `career_stream_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificate_rank`
--

DROP TABLE IF EXISTS `certificate_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `certificate_rank` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `rank_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rank_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificate_rank`
--

LOCK TABLES `certificate_rank` WRITE;
/*!40000 ALTER TABLE `certificate_rank` DISABLE KEYS */;
INSERT INTO `certificate_rank` VALUES (1,'Xuất sắc','Excellent'),(2,'Giỏi','Great'),(3,'Khá','Rather'),(4,'Trung Bình','Medium'),(5,'N/A','N/A');
/*!40000 ALTER TABLE `certificate_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmc_job_code`
--

DROP TABLE IF EXISTS `cmc_job_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmc_job_code` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `id_jobSubFamily` int(11) DEFAULT NULL,
  `id_careerLevel` int(11) DEFAULT NULL,
  `id_job_code` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `remark` text COLLATE utf8_unicode_ci,
  `note` text COLLATE utf8_unicode_ci,
  `flgStatus` int(11) DEFAULT NULL,
  `id_creater` int(11) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK_cmc_job_code_1` (`id_jobSubFamily`),
  KEY `FK_cmc_job_code_2` (`id_careerLevel`),
  KEY `FK_cmc_job_code_3` (`id_job_code`),
  KEY `FK_cmc_job_code_4` (`id_creater`),
  CONSTRAINT `FK_cmc_job_code_1` FOREIGN KEY (`id_jobSubFamily`) REFERENCES `job_sub_family` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_cmc_job_code_2` FOREIGN KEY (`id_careerLevel`) REFERENCES `career_level` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_cmc_job_code_3` FOREIGN KEY (`id_job_code`) REFERENCES `job_code` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_cmc_job_code_4` FOREIGN KEY (`id_creater`) REFERENCES `cms_user` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `cmc_job_code_history`
--

DROP TABLE IF EXISTS `cmc_job_code_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmc_job_code_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `id_cmc_job_code` int(11) DEFAULT NULL,
  `objects` text COLLATE utf8_unicode_ci,
  `id_creater` int(11) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `id_cmc_job_code` (`id_cmc_job_code`),
  KEY `id_creater` (`id_creater`),
  CONSTRAINT `FK_cmc_job_code_history_1` FOREIGN KEY (`id_creater`) REFERENCES `cms_user` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_cmc_job_code_history_2` FOREIGN KEY (`id_cmc_job_code`) REFERENCES `cmc_job_code` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `cms_action`
--

DROP TABLE IF EXISTS `cms_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_action` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `action_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_action`
--

LOCK TABLES `cms_action` WRITE;
/*!40000 ALTER TABLE `cms_action` DISABLE KEYS */;
INSERT INTO `cms_action` VALUES (1,'Create draft'),(2,'Submit'),(3,'Assign'),(4,'Publish'),(5,'Reject'),(6,'Close'),(7,'Pin'),(8,'Delete');
/*!40000 ALTER TABLE `cms_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_job_history`
--

DROP TABLE IF EXISTS `cms_job_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_job_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `id_job` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_cms_action` int(11) NOT NULL,
  `id_assign` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK_18` (`id_job`),
  KEY `FK_19` (`id_user`),
  KEY `FK_20` (`id_assign`),
  KEY `FK_21` (`id_cms_action`),
  CONSTRAINT `FK_18` FOREIGN KEY (`id_job`) REFERENCES `job_post` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_19` FOREIGN KEY (`id_user`) REFERENCES `cms_user` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_20` FOREIGN KEY (`id_assign`) REFERENCES `cms_user` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_21` FOREIGN KEY (`id_cms_action`) REFERENCES `cms_action` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `cms_news_history`
--

DROP TABLE IF EXISTS `cms_news_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_news_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `id_news` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_cms_action` int(11) NOT NULL,
  `id_assign` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK_22` (`id_news`),
  KEY `FK_23` (`id_user`),
  KEY `FK_24` (`id_assign`),
  KEY `FK_25` (`id_cms_action`),
  CONSTRAINT `FK_22` FOREIGN KEY (`id_news`) REFERENCES `news_post` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_23` FOREIGN KEY (`id_user`) REFERENCES `cms_user` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_24` FOREIGN KEY (`id_assign`) REFERENCES `cms_user` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_25` FOREIGN KEY (`id_cms_action`) REFERENCES `cms_action` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_news_history`
--

LOCK TABLES `cms_news_history` WRITE;
/*!40000 ALTER TABLE `cms_news_history` DISABLE KEYS */;
INSERT INTO `cms_news_history` VALUES (52,14,4,1,NULL,'Lalalalala : tạo bài','2018-02-02 11:23:39'),(53,14,4,2,NULL,NULL,'2018-02-02 11:23:42'),(54,14,4,4,NULL,NULL,'2018-02-02 11:23:50'),(55,14,4,7,NULL,NULL,'2018-02-02 11:23:58'),(56,14,4,6,NULL,NULL,'2018-02-02 11:38:55'),(57,15,4,1,NULL,'Lalalalala : tạo bài','2018-02-02 11:39:26'),(58,15,4,2,NULL,NULL,'2018-02-02 11:39:30'),(59,15,4,4,NULL,NULL,'2018-02-02 11:39:36'),(60,15,4,7,NULL,NULL,'2018-02-02 11:39:50'),(61,16,4,1,NULL,'Lalalalala : tạo bài','2018-02-02 11:41:24'),(62,16,4,2,NULL,NULL,'2018-02-02 11:41:32'),(63,16,4,4,NULL,NULL,'2018-02-02 11:41:39'),(64,17,4,1,NULL,'Lalalalala : tạo bài','2018-02-02 11:42:52'),(65,17,4,2,NULL,NULL,'2018-02-02 11:42:55'),(66,17,4,4,NULL,NULL,'2018-02-02 11:43:01'),(67,18,4,1,NULL,'Lalalalala : tạo bài','2018-02-02 11:43:39'),(68,18,4,2,NULL,NULL,'2018-02-02 11:43:42'),(69,18,4,4,NULL,NULL,'2018-02-02 11:43:49'),(70,19,4,1,NULL,'Lalalalala : tạo bài','2018-02-02 11:45:01'),(71,19,4,2,NULL,NULL,'2018-02-02 11:45:05'),(72,20,4,1,NULL,'Lalalalala : tạo bài','2018-02-02 11:46:18'),(73,20,4,2,NULL,NULL,'2018-02-02 11:46:24'),(74,19,4,4,NULL,NULL,'2018-02-02 11:46:28'),(75,20,4,4,NULL,NULL,'2018-02-02 11:46:33'),(76,21,4,1,NULL,'Lalalalala : tạo bài','2018-02-02 11:53:25'),(77,21,4,2,NULL,NULL,'2018-02-02 11:53:28'),(78,21,4,4,NULL,NULL,'2018-02-02 11:53:35'),(79,22,4,1,NULL,'Lalalalala : tạo bài','2018-02-02 11:55:40'),(80,22,4,2,NULL,NULL,'2018-02-02 11:55:44'),(81,22,4,4,NULL,NULL,'2018-02-02 11:55:50'),(82,23,4,1,NULL,'Lalalalala : tạo bài','2018-02-02 11:57:54'),(83,23,4,2,NULL,NULL,'2018-02-02 11:57:57'),(84,23,4,4,NULL,NULL,'2018-02-02 11:58:01'),(85,24,4,1,NULL,'Lalalalala : tạo bài','2018-02-02 12:01:34'),(86,24,4,2,NULL,NULL,'2018-02-02 12:01:37'),(87,24,4,4,NULL,NULL,'2018-02-02 12:01:43'),(88,25,4,1,NULL,'Lalalalala : tạo bài','2018-02-02 12:04:31'),(89,25,4,2,NULL,NULL,'2018-02-02 12:04:35'),(90,25,4,4,NULL,NULL,'2018-02-02 12:04:41'),(91,26,4,1,NULL,'Lalalalala : tạo bài','2018-02-02 12:06:53'),(92,26,4,2,NULL,NULL,'2018-02-02 12:06:56'),(93,26,4,4,NULL,NULL,'2018-02-02 12:07:02');
/*!40000 ALTER TABLE `cms_news_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_position`
--

DROP TABLE IF EXISTS `cms_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_position` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `cms_position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `flg_status` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_position`
--

LOCK TABLES `cms_position` WRITE;
/*!40000 ALTER TABLE `cms_position` DISABLE KEYS */;
INSERT INTO `cms_position` VALUES (1,'Admin','Administrator','Quản trị Hệ thống CMC Recruitment CMS',1,'2018-03-22 10:06:09'),(2,'HR Leader','Human Resource Leader','Quản lý Bộ phận Nhân sự - Tuyển dụng',1,'2018-01-24 22:11:18'),(3,'HR Member','Human Resource Member','Nhân viên Bộ phận Nhân sự - Tuyển dụng',1,'2018-01-29 20:19:32'),(4,'Corp Manager','Corporation Manager','Quản lý Bộ phận Nhân sự - Tuyển dụng của Tập đoàn CMC',1,'2018-03-22 06:25:08');
/*!40000 ALTER TABLE `cms_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_status`
--

DROP TABLE IF EXISTS `cms_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_status` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_status`
--

LOCK TABLES `cms_status` WRITE;
/*!40000 ALTER TABLE `cms_status` DISABLE KEYS */;
INSERT INTO `cms_status` VALUES (1,'Nháp'),(2,'Mới'),(3,'Đã giao'),(4,'Đã xuất bản'),(5,'Đã từ chối'),(6,'Đã đóng'),(7,'Đã ghim');
/*!40000 ALTER TABLE `cms_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_user`
--

DROP TABLE IF EXISTS `cms_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cms_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flg_status` int(11) NOT NULL,
  `id_company` int(11) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK_30` (`id_company`),
  CONSTRAINT `FK_30` FOREIGN KEY (`id_company`) REFERENCES `company` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_user`
--

LOCK TABLES `cms_user` WRITE;
/*!40000 ALTER TABLE `cms_user` DISABLE KEYS */;
INSERT INTO `cms_user` VALUES (1,'1-avatar','Admin','td.test.admin1@cmc.com.vn','','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',1,3,'2018-01-23 01:02:11'),(2,'avatar-2.png','HRLeader','hrleader@cmc.com.vn','0123456789','8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92',0,1,'2018-01-23 01:02:11'),(3,'avatar-3.png','HRMember','hrmember@cmc.com.vn','0123456789','8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92',0,1,'2018-01-23 01:02:11'),(4,'4-avatar.jpg','HRCorp','hrcorp@cmc.com.vn','','8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92',1,3,'2018-01-23 01:02:11'),(5,'avatar-2.png','HRLeader12','hrleader12@cmc.com.vn','0123456789','8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92',0,2,'2018-01-23 01:02:11'),(6,'avatar-3.png','HRMember12','hrmember12@cmc.com.vn','0123456789','8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92',0,2,'2018-01-23 01:02:11'),(7,'avatar-default.png','Phí Thị Phương','ptphuong2@cmc.com.vn','','8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92',1,5,'2018-01-24 21:46:27'),(8,'8-avatar','Nguyễn Phương Thảo','npthao@cmc.com.vn','01698098468','8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92',1,5,'2018-01-24 21:47:07'),(9,'avatar-default.png','Phạm Thị Thiều Hoa','ptthoa@cmc.com.vn','','8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92',1,5,'2018-01-24 21:49:00'),(10,'avatar-default.png','Trần Thị Thu Trang','tttrang@sg.cmc.com.vn','','8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92',1,6,'2018-01-24 21:49:42'),(11,'avatar-default.png','Huỳnh Thị Huyền','hthuyen@sg.cmc.com.vn','','8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92',1,6,'2018-01-24 21:50:08'),(12,'avatar-default.png','Hoàng Yến','hyen@cmc.com.vn','','8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92',1,7,'2018-01-24 21:50:41'),(13,'13-avatar.jpg','Đinh Thùy Linh','dtlinh2@cmc.com.vn','0903254566','8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92',1,7,'2018-01-24 21:51:03'),(14,'avatar-default.png','Hoàng Vạn Tuế','hvtue@cmc.com.vn','','8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92',1,2,'2018-01-24 21:51:30'),(15,'avatar-default.png','Trần Thị Thủy','ttthuy@cmc.com.vn','','8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92',1,2,'2018-01-24 21:51:52'),(16,'16-avatar','Phạm Thị Nhung','ptnhung@cmc.com.vn','','8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92',1,2,'2018-01-24 21:52:22'),(17,'avatar-default.png','Trần Thị Hoài Phương','phuong.tth@cmctelecom.vn','','8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92',1,8,'2018-01-24 21:52:47'),(18,'18-avatar.jpg','Nguyễn Văn Ngọc','ngoc.nv@cmctelecom.vn','0902224547','c18279907420a3fdcaf1fb8f4ce00b54e7130041e6fb7b224eb61bc2c5bcebe4',1,8,'2018-01-24 21:53:14'),(19,'avatar-default.png','Nguyễn Thanh Nhàn','ntnhan@cmc.com.vn','','8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92',1,1,'2018-01-24 21:53:33'),(20,'avatar-default.png','Thiều Thị Phương Thảo','ttpthao2@cmc.com.vn','','8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92',1,1,'2018-01-24 21:53:54'),(21,'avatar-default.png','Nguyễn Thị Thúy','thuynt1@cmcinfosec.com','','8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92',1,9,'2018-01-24 21:54:20'),(22,'avatar-default.png','Chử Kim Yến','yenck@ciber.vn','','8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92',1,NULL,'2018-01-24 21:55:02'),(23,'avatar-default.png','Nguyễn Hồng Sơn','Nhson@cmc.com.vn','','8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92',1,4,'2018-01-24 21:55:31'),(24,'avatar-default.png','Nguyễn Diệu Anh','ndanh1@cmc.com.vn','','8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92',1,4,'2018-01-24 21:56:05'),(25,'avatar-default.png','hay lam','haylam@cmc.com.vn','1234567867','8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92',0,1,'2018-01-28 20:41:14'),(26,'avatar-default.png','Nguyễn Thế Dũng','ntpthao2@cmc.com.vn','','8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92',0,1,'2018-01-29 20:02:46'),(27,'avatar-default.png','Ngọc','thngoc@cmc.com.vn','0123456798','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',1,1,'2018-02-01 09:14:09'),(28,'avatar-default.png','Nguyễn Thế Dũng','ntdung2@cmc.com.vnnn','','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',0,1,'2018-02-02 09:52:37'),(29,'avatar-default.png','Nguyễn Thế Dũng','minhhthuy106@gmail.com','','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',0,1,'2018-02-02 09:54:15'),(30,'avatar-default.png','Nguyễn Minh Thúy','ntdung2@cmc.commmm.vn','','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92',0,1,'2018-02-02 09:58:40'),(31,'avatar-default.png','ahihi','a@gmail.com','1234567890','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',1,1,'2018-02-06 03:30:36'),(32,'32-avatar.png','HR Corp.Tam','nntam@cmc.com.vn','','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',1,1,'2018-03-21 09:35:39'),(33,'avatar-default.png','HR Corp.Hieu','cvhieu@cmc.com.vn','','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',1,1,'2018-03-21 10:07:27'),(34,'34-avatar.jpg','HR_TEST','pthuong@cmc.com.vn','','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',1,1,'2018-03-22 01:21:19'),(35,'avatar-default.png','Hrcorp.Thoa','btthoa@cmc.com.vn','','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',1,1,'2018-03-22 02:47:16'),(36,'avatar-default.png','Lê Doãn Kiên','ldkien@cmc.com.vn','','sdfgdffddf',1,1,'2018-03-22 03:06:48'),(37,'avatar-default.png','HR','pt.huong1996@gmail.com','','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',1,1,'2018-03-22 04:08:23'),(38,'avatar-default.png','Trần Hà Thu','ththu@cmc.com.vn','','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',1,4,'2018-03-22 04:38:41'),(39,'avatar-default.png','Nguyen Thi Hoan','nthoan@cmc.com.vn','','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',1,1,'2018-03-22 06:57:25'),(40,'avatar-default.png','CMC Global Test01.HRCorp','global.test01@cmc.com.vn','','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',1,1,'2018-03-22 08:08:42'),(41,'avatar-default.png','Dương Hoàng Giang','dhgiang1@cmc.com.vn','','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',1,1,'2018-03-23 02:41:23'),(42,'avatar-default.png','Bùi Văn Quyết','bvquyet@cmc.com.vn','','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',1,1,'2018-03-23 07:28:43');
/*!40000 ALTER TABLE `cms_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `company_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `note` text COLLATE utf8_unicode_ci,
  `flg_status` int(11) NOT NULL,
  `id_creater` int(11) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK_company_1` (`id_creater`),
  CONSTRAINT `FK_company_1` FOREIGN KEY (`id_creater`) REFERENCES `cms_user` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'10','CMC Global','Công ty TNHH CMC Global','banner-job.png','logo_job.png','logo_job.png','Công ty TNHH CMC Global – đơn vị chiến lược của Tập đoàn công nghệ CMC được thành lập ngày 31/03/2017\r\n\r\nMục đích thành lập\r\nCMC Global ra đời từ kinh nghiệm 25 năm trong lĩnh vực ICT và hơn 10 năm kinh nghiệm trong lĩnh vực Outsourcing của Tập đoàn công nghệ CMC, với sứ mệnh trở thành đơn vị cung cấp nhân lực kỹ sư phần mềm chất lượng cao, cung cấp các giải pháp, dịch vụ CNTT cho thị trường quốc tế. Hiện CMC Global đang sở hữu đến 300++ nhân viên, cùng một công ty thành viên tại Nhật Bản.\r\n\r\nGiá trị cốt lõi\r\nTập đoàn công nghệ CMC cùng CMC Global tự hào là một trong những doanh nghiệp hàng đầu Việt Nam trong lĩnh vực phát triển, cung cấp các giải pháp và dịch vụ phần mềm. Chia sẻ chung những tiêu chí tiên quyết cho sự phát triển của Tập đoàn CMC: Sáng tạo, Chuyên nghiệp, Đồng đội, CMC Global luôn nỗ lực không ngừng để xây dựng một tập thể vững mạnh, tiên phong trong nền công nghệ Việt Nam và ngày một vươn xa ra thế giới.\r\n\r\nMục tiêu trong tương lai\r\nVới mục tiêu đưa các sản phẩm và dịch vụ công nghệ cao của CMC ra thế giới, CMC Global đang xây dựng những nền móng đầu tiên với tham vọng: có ít nhất 1.000 người làm việc ở nước ngoài vào năm 2020; doanh thu phần mềm và dịch vụ từ thị trường xuất khẩu lớn hơn thị trường trong nước; có nhiều sản phẩm và dịch vụ đạt tiêu chuẩn hàng đầu thế giới. Trong tương lai, ngoài công ty thành viên CMC Japan tại Nhật Bản, CMC Global sẽ mở thêm các chi nhánh tại các nước châu Á như Singapore, Malaysia,….\r\n\r\nChiến lược phát triển\r\nChiến lược đầu tư của CMC Global được định vị có phần khác biệt so với các công ty outsourcing cũng ngành ở thị trường Việt Nam. CMC Global sẽ chú trọng vào việc phát triển nguồn lực, chuẩn hóa qui trình cung cấp dịch vụ và phát triển phần mềm, đào tạo nhân sự chất lượng cao, cùng lúc thu hút số lượng lớn các nhân tài trong lĩnh vực công nghệ thông tin. Đồng thời, CMC Global cũng sẽ là đại diện, cầu nối cho các công ty thành viên của CMC trong việc cung cấp các giải pháp và dịch vụ tích hợp trọn gói ra thế giới.',NULL,1,1,'2018-01-16 23:31:29'),(2,'05','CMC Soft','Công ty TNHH Giải pháp Phần mềm CMC','banner-job.png','CC05-logo.jpg','logo_job.png','CMC Soft là đơn vị chiến lược của Tập đoàn CMC trong nghiên cứu, phát triển và cung cấp các sản phẩm, giải pháp, dịch vụ phần mềm. CMC Soft là nhà cung cấp phần mềm uy tín với thế mạnh là những sản phẩm, giải pháp và dịch vụ cho các lĩnh vực Tài chính, Ngân hàng, Bảo hiểm, Viễn thông, Chính phủ, Giáo dục, Thông tin thư viện và Quản lý Doanh nghiệp.\r\n\r\nVị thế trên thị trường \r\nLà một trong những mảng hoạt động CMC đặt trọng tâm phát triển trong các năm tới.\r\nTop 2 công ty phần mềm hàng đầu Việt Nam;\r\nCông ty phần mềm có tốc độ tăng trưởng nhanh nhất Việt Nam;\r\nDẫn đầu thị trường phần mềm đóng gói trong lĩnh vực giáo dục, quản lý thông tin doanh nghiệp;\r\nMột trong số ít doanh nghiệp Việt Nam có các sản phẩm tự nghiên cứu và phát triển mạnh về công nghệ và ứng dụng đang được rộng rãi khách hàng tin dùng.\r\n\r\nNăng lực và thế mạnh\r\nHệ thống các sản phẩm, giải pháp phần mềm mạnh về công nghệ và ứng dụng; \r\nĐội ngũ nhân viên ổn định, tâm huyết, sáng tạo, am hiểu nghiệp vụ chuyên ngành;\r\nLà đối tác công nghệ của Microsoft, IBM, Oracle, SAP…\r\nĐáp ứng tiêu chuẩn CMMI3, ISO 27001, ISO 9001:2000…\r\nHàng trăm chứng chỉ quốc tế của Microsoft (MCP, MCAD), IBM (websphere, infosphere, filenet, rational, domino), PCLP, CLS’s, Oracle, SAP, SCJP;\r\nCông nghệ mới nhất trong phát triển phần mềm như Rational Unified Process, Agile development, OOAD…\r\n\r\nSản phẩm và dịch vụ tiêu biểu\r\nSản phẩm phần mềm: eDocman Plus, C-office iLib, IU, E-learning  … trong đó phần mềm eDocman Plus, iLib, IU liên tiếp đạt các giải thưởng Sao Khuê do VINASA bình chọn và Top 5 phần mềm Việt Nam doanh số cao do HCA bình chọn.\r\nGiải pháp phần mềm: \r\nGiải pháp phần mềm dành cho Ngân hàng: G-office, Giải pháp Quản trị  nội dung ECM, Enterprise Portal 2.0.\r\nGiải pháp phần mềm dành cho các Bộ ban ngành và doanh nghiệp: Hỗ trợ kê khai thuế, Digital Library, Kết nối Ngân hàng – Hải Quan, Quản lý và hỗ trợ phê duyệt hồ sơ tín dụng.\r\nGiải pháp phần mềm theo yêu cầu: Bảo hiểm CPC, Healthcare & Bankasurance, Business Intelligence.\r\nGói giải pháp: Phần mềm Kế toán Doanh nghiệp CeAC, Phần mềm Quản trị Nguồn nhân lực CeHR, Giải pháp Phần mềm Doanh nghiệp Bảo hiểm - CeIN.\r\n​Dịch vụ thuê ngoài ITO và BPO, dịch vụ phát triển ứng dụng trên thiết bị di động, dịch vụ phát triển Web… cho thị trường Nhật Bản, Châu Âu, Châu Úc và Châu Mỹ.\r\n\r\nKhách hàng tiêu biểu\r\nTổng cục thuế, Kho bạc nhà nước, Kiểm toán Nhà nước, Bảo hiểm Bảo Việt, Techcombank, VIBBank, Vietinbank, TCT Điện lực, TCT Dầu khí, TCT Xăng dầu, VMS-Mobifone, Thư viện Quốc gia Việt nam và các thư viện công cộng, và rất nhiều các trường đại học trên cả nước…',NULL,1,1,'2018-01-16 23:31:29'),(3,'01','CMC Group','Tập đoàn Công nghệ CMC','banner-job.png','logo_job.png','logo_job.png','Công ty hướng đến mục tiêu toàn cầu',NULL,1,1,'2018-01-16 23:31:29'),(4,'02','CMC Corp','Công ty CP Tập đoàn Công nghệ CMC','banner-job.png','CC02-logo.png','logo_job.png','CMC là một trong những Tập đoàn Công nghệ hàng đầu Việt Nam với 23 năm xây dựng và phát triển. Được tổ chức theo mô hình công ty mẹ - con với 10 công ty thành viên, liên doanh và viện nghiên cứu hoạt động tại Việt Nam và nhiều nước trên thế giới, CMC đã và đang khẳng định vị thế trên thị trường nội địa và hướng tới thị trường khu vực, quốc tế thông qua những hoạt động kinh doanh chủ lực như: Tích hợp Hệ thống, Dịch vụ Phần mềm, Viễn thông – Internet và Sản xuất - Phân phối các sản phẩm ICT.\r\n\r\nTại Việt Nam, Tập đoàn Công nghệ CMC được biết đến như là một đối tác tin cậy và uy tín trong các dự án CNTT cấp trung và lớn trong các lĩnh vực: chính phủ, giáo dục, thuế, kho bạc, hải quan, bảo hiểm, điện lực, ngân hàng, tài chính…',NULL,1,1,'2018-01-16 23:31:29'),(5,'03','CMC SI Hà Nội','Công ty TNHH Tích hợp Hệ thống CMC ','banner-job.png','CC03-logo.jpg','logo_job.png','Công ty Tích hợp Hệ Thống CMC (CMC SI) được thành lập từ năm 1995 và hoạt động trong lĩnh vực Tích hợp hệ thống. Trên cơ sở định hướng chiến lược dài hạn về công nghệ, sản phẩm, dịch vụ và nhân lực, CMC SI đã nhanh chóng trở thành nhà cung cấp giải pháp và tích hợp hệ thống hàng đầu tại Việt Nam.\r\n\r\nVị thế trên thị trường\r\nLà hoạt động chiến lược và đầu tàu của Tập đoàn CMC\r\nNhà cung cấp giải pháp và dịch vụ tích hợp hệ thống hàng đầu Việt Nam (theo HCA, 2015)\r\nHuy chương vàng đơn vị cung cấp dịch vụ tích hợp hệ thống CNTT Việt Nam (theo HCA, 2015)\r\nTop 500 Doanh nghiệp Tư nhân lớn nhất Việt Nam (theo VNR, 2013)\r\nSố 1 Việt Nam về giải pháp CNTT cho các cơ quan Chính phủ, ngành Tài chính – Ngân hàng, Giáo dục và Đào tạo\r\n\r\nThế mạnh\r\nGIẢI PHÁP TỔNG THỂ: Tư vấn, thiết kế, cung cấp thiết bị, triển khai, vận hành và bảo trì.\r\nĐI ĐẦU XU HƯỚNG: Các xu hướng công nghệ và có khả năng mở rộng theo từng giai đoạn.\r\nKINH NGHIỆM TRIỂN KHAI & QUẢN TRỊ DỰ ÁN: các dự án lớn và phạm vi triển khai toàn quốc.\r\nTIÊU CHUẨN ISO 9001-2008: Hệ thống quản trị và quy trình chuyên nghiệp\r\nTIÊU CHUẨN ISO 27001-2013: Hệ thống quản lý an toàn thông tin\r\n\r\nSản phẩm và dịch vụ tiêu biểu\r\nSản phẩm:\r\nIT thông dụng: Sản phẩm IT thông dụng (PC, Laptop, Printers…), Thiết bị ngành: ATM, POS…\r\nTích hợp hệ thống thông tin hạ tầng IT cao cấp: Máy chủ Unix, Hệ thống lưu trữ, Mạng, Bảo mật…\r\nGiải pháp: Hạ tầng truyền thông và trung tâm dữ liệu, Lưu trữ, sao lưu và phục hồi dữ liệu, Bảo mật hệ thống, Ảo hóa và điện toán đám mây\r\nDịch vụ: Tư vấn, thiết kế và triển khai giải pháp; Quản trị vận hành, bảo trì hệ thống; Bảo hành ủy quyền của các hãng CNTT\r\n\r\nĐối tác\r\nCMC SI là đối tác cao cấp của các hãng công nghệ hàng đầu như Microsoft, IBM, Cisco, HP, EMC , DELL, Symantec, VMware, Oracle, APC, McAfee…',NULL,1,1,'2018-01-16 23:31:29'),(6,'04','CMC SI Sài Gòn','Công ty TNHH Tích hợp Hệ thống CMC Sài Gòn','banner-job.png','CC04-logo.jpg','logo_job.png','Công ty TNHH Tích hợp Hệ thống CMC Sài Gòn (CMC SI Saigon) là đơn vị hàng đầu tại Việt Nam chuyên về lĩnh vực Tích hợp Hệ thống và có sự đầu tư sâu cho các Giải pháp - Dịch vụ có hàm lượng giá trị gia tăng cao. Với gần 20 năm kinh nghiệm trong nhiều dự án trọng yếu của Việt Nam, CMCSI Saigon luôn là đơn vị tiên phong trong việc cung cấp các giải pháp tích hợp hệ thống dựa trên nền tảng CNTT tiên tiến và đang dần khẳng định là một nhà cung cấp giải pháp - dịch vụ tích hợp hệ thống hàng đầu Việt Nam.\r\n\r\nĐối với CMC SI Saigon tìm được đối tác thích hợp, có cùng tầm nhìn và sứ mệnh là điều kiện tiên quyết để đem đến sự thành công của các bên tham gia cũng như mang đến lợi ích cho khách hàng. Với tiềm năng sẵn có là mối quan hệ đối tác chiến lược trong ngành CNTT với các tập đoàn công nghệ hàng đầu thế giới như: HP, IBM, Dell, Cisco, Oracle, Microsoft, Vmware … CMC SI Saigon luôn mang đến sự thõa mãn cao nhất về giải pháp công nghệ và chất lượng cho khách hàng.\r\n\r\nVị thế trên thị trường\r\nLà hoạt động chiến lược và đầu tàu của CMC trong những năm tới\r\nNhà cung cấp giải pháp và dịch vụ tích hợp hệ thống hàng đầu Việt Nam (theo HCA, 2015)\r\nHuy chương vàng đơn vị cung cấp dịch vụ tích hợp hệ thống CNTT Việt Nam (theo HCA, 2015)\r\nThương hiệu Sao Vàng Đất Việt 2015 (theo YBA, 2015)\r\nTop 500 Doanh nghiệp Tư nhân lớn nhất Việt Nam (theo VNR, 2013)\r\nSố 1 Việt Nam về giải pháp CNTT cho các cơ quan Chính phủ, ngành Tài chính – Ngân hàng, Giáo dục và Đào tạo\r\n\r\nNăng lực và thế mạnh\r\nKinh nghiệm gần 20 năm trong nhiều dự án trọng yếu của Việt Nam\r\nĐầu tư lớn cho nghiên cứu nhu cầu và nghiệp vụ khách hàng, R&D, phòng thí nghiệm các công nghệ ứng dụng;\r\nPhạm vi cung cấp giải pháp, dịch vụ trên 63 tỉnh/thành.\r\nĐội ngũ hơn 160 chuyên viên\r\nHàng trăm chứng chỉ của các đối tác công nghệ hàng đầu: Microsoft, Cisco, IBM, HP, Oracle;\r\nTrở thành đối tác Collaboration Architecture Specialization cấp độ Advanced - tại Việt Nam hiện nay - cũng là công ty thứ 4 đạt chứng chỉ này ở khu vực Châu Á Thái Bình Dương (2013)\r\nĐối tác có năng lực kỹ thuật phần mềm tốt nhất của IBM (2014)\r\nOutstanding Investment in Software Solutions Partner Award của IBM (2013)\r\nĐối tác tăng trưởng tốt nhất của VMWare (2013)\r\nĐối tác Vàng của Microsoft, Symantec, APC – MGE; đối tác Bạc của Cisco, đối tác cao cấp nhất của IBM, HP, Eaton, đối tác của SAP, Oracle, IMB trong tư vấn và triển khai các giải pháp phần mềm ứng dụng.',NULL,1,1,'2018-01-16 23:31:29'),(7,'06','CMC P&T','Công ty TNHH Sản xuất và Thương mại CMC','banner-job.png','CC06-logo.jpg','logo_job.png','CMC P&T là đơn vị thành viên của Tập đoàn Công nghệ CMC, được thành lập vào tháng 10 năm 2007. CMC P&T có 10 năm kinh nghiệm trong lĩnh vực cung cấp các sản phẩm và dịch vụ CNTT, mang lại những giá trị thiết thực cho khách hàng. Tầm nhìn hướng đến 2020, CMC P&T phấn đấu trở thành nhà cung cấp dịch vụ IT uy tín, chuyên nghiệp hàng đầu tại Việt Nam.\r\n\r\nCMC P&T sở hữu đội ngũ kỹ thuật viên là những kỹ sư CNTT chuyên ngành, dày dạn kinh nghiệm, có trình độ kỹ thuật cao, thường xuyên được đào tạo về chuyên môn và kỹ năng chăm sóc khách hàng, tác phong cung cấp dịch vụ chuyên nghiệp, luôn tận tâm, sáng tạo, nỗ lực hết mình vì khách hàng.\r\n\r\nCMC P&T cùng các công ty thành viên trong Tập đoàn CMC đã phối hợp triển khai thành công các dịch vụ IT cho khách hàng doanh nghiệp trên nhiều lĩnh vực. Ngoài ra, CMC P&T cũng là đại diện bảo hành ủy quyền của các hãng công nghệ nổi tiếng: Asus, Foxconn…',NULL,1,1,'2018-01-16 23:31:29'),(8,'07','CMC Telecom','Công ty CP Hạ tầng Viễn thông CMC','banner-job.png','CC07-logo.png','logo_job.png','CMC Telecom là một trong 8 công ty thành viên thuộc Tập đoàn Công nghệ CMC. Với thế mạnh là một công ty Viễn thông trẻ, CMC Telecom luôn chọn cho mình cách đi khác biệt, sáng tạo, tập trung vào thị trường và dịch vụ có lợi thế, tận dung sức mạnh Tập đoàn công nghệ CMC với 23 năm kinh nghiệm.\r\n\r\nVị thế trên thị trường \r\nLà công ty duy nhất cung cấp hạ tầng viễn thông với 100% cáp quang;\r\nLà công ty tiên phong ứng dụng mô hình kinh doanh tiên tiến và hiệu quả để cung cấp tới khách hàng những dịch vụ viễn thông và CNTT tối ưu;\r\nCMC Telecom hiện nay đã có toàn bộ các giấy phép cần thiết cho hoạt động của mình trên thị trường viễn thông.\r\n\r\nNăng lực và thế mạnh\r\nỨng dụng công nghệ viễn thông thế hệ mới FTTx/GPON;\r\nNăng lực tổng thể trong ngành CNTT và Viễn thông;\r\nChất lượng dịch vụ vượt trội so với các doanh nghiệp khác trên thị trường;\r\nĐối tác của VNPT, Viettel, Singtel, Hutchison, PCCW, KDDI…',NULL,1,1,'2018-01-16 23:31:29'),(9,'08','CMC InfoSec','Công ty CP An ninh An toàn Thông tin CMC','banner-job.png','CC08-logo.jpg','logo_job.png','CMC InfoSec được xây dựng từ một đội ngũ cán bộ ưu tú dày dặn kinh nghiệm và có trình độ chuyên gia hàng đầu về an ninh an toàn thông tin tại Việt Nam nhằm nghiên cứu sản xuất ra các sản phẩm dịch vụ an ninh an toàn thông tin thích hợp với người dùng Việt Nam, giải quyết được những vấn đề mấu chốt về an ninh an toàn thông tin với giá cả hợp lý…\r\n\r\nVị thế trên thị trường \r\n• CMC Infosec được thành lập vào tháng 5 năm 2008, chuyên nghiên cứu và phát triển các giải pháp bảo mật, an ninh, an toàn thông tin\r\n• CMC InfoSec mong muốn mang đến cho khách hàng là cá nhân, doanh nghiệp và các tổ chức trong mọi lĩnh vực những giải pháp bảo mật thực sự hiệu quả với giá cả hợp lý nhất, bảo vệ an toàn cho người dùng trước \r\n• Chúng tôi phấn đấu trở thành công ty hàng đầu tại Việt Nam trong lĩnh vực An toàn thông tin. Đưa tới tay người dùng những dòng sản phẩm tiện ích và thân thiện.\r\n• Hiện nay, CMC InfoSec đã và đang mở rộng thị trường trên toàn lãnh thổ Việt Nam. Với quyết tâm phát triển vững mạnh làm động lực vươn ra thế giới, phương châm “Người Việt dùng phần mềm Việt” song hành cùng CMC InfoSec trên con đường phát triển. \r\n\r\nNăng lực và thế mạnh\r\n• CMC InfoSec được sự bảo trợ của Tập đoàn CMC – Tập đoàn Công nghệ hàng đầu tại Việt Nam.\r\n• Sản phẩm đã khẳng định được vị thế trên thị trường cũng như sự tạo lập sự tin cậy từ phía khách hàng và người dùng.\r\n• Quy trình chặt chẽ cho việc sẵn sàng phản ứng nhanh với virus mát tính và các sự kiện an ninh an toàn thông tin tại Việt Nam.\r\n• Là thành viên chính thức của Liên minh máy tính quốc tế ICSA, sản phẩm được kiếm định nghiêm ngặt với tiêu chuẩn thế giới.\r\n• Dịch vụ chăm sóc khách hàng liên tục cải thiện. Hiểu nhu cầu khách hàng, luôn luôn lắng nghe những điều khách hàng muốn nói để dần hoàn thiện mình và sản phẩm\r\n• Đội ngũ cán bộ ưu tú dày dặn kinh nghiệm và có trình độ chuyên gia hàng đầu về an ninh an toàn thông tin tại Việt Nam…\r\n• Ban lãnh đạo giàu kinh nghiệm và am hiểu ngành.',NULL,1,1,'2018-01-16 23:31:29'),(11,'11','CMC CORP','CMC','11-banner.jpg','11-logo.jpg',NULL,'',NULL,1,NULL,'2018-03-22 08:27:44'),(18,'  ','    ','    ','  -banner.jpg','  -logo.png',NULL,'    ',NULL,2,NULL,'2018-03-23 02:04:43');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_history`
--

DROP TABLE IF EXISTS `company_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `id_company` int(11) DEFAULT NULL,
  `objects` text COLLATE utf8_unicode_ci,
  `id_creater` int(11) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `id_company` (`id_company`),
  KEY `id_creater` (`id_creater`),
  CONSTRAINT `FK_company_history_1` FOREIGN KEY (`id_creater`) REFERENCES `cms_user` (`ID`)ON DELETE CASCADE,
  CONSTRAINT `FK_company_history_2` FOREIGN KEY (`id_company`) REFERENCES `company` (`ID`)ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_history`
--

LOCK TABLES `company_history` WRITE;
/*!40000 ALTER TABLE `company_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `education_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `education_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
INSERT INTO `education` VALUES (1,'Trung học phổ thông','Upper Secondary'),(2,'Trung cấp kỹ thuật & Dạy nghề','Secondary Technical & Vocational'),(3,'Chứng chỉ','Certificate/Diploma'),(4,'Cao đẳng','College Degree'),(5,'Đại học','Bachelor\'s Degree'),(6,'Thạc sỹ','Master\'s Degree'),(7,'Tiến sỹ','Internship');
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_rank`
--

DROP TABLE IF EXISTS `education_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education_rank` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `rank_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rank_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_rank`
--

LOCK TABLES `education_rank` WRITE;
/*!40000 ALTER TABLE `education_rank` DISABLE KEYS */;
INSERT INTO `education_rank` VALUES (1,'Xuất sắc','Excellent'),(2,'Giỏi','Great'),(3,'Khá','Rather'),(4,'Trung Bình','Medium');
/*!40000 ALTER TABLE `education_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_tag`
--

DROP TABLE IF EXISTS `group_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_tag` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `grouptag_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_tag`
--

LOCK TABLES `group_tag` WRITE;
/*!40000 ALTER TABLE `group_tag` DISABLE KEYS */;
INSERT INTO `group_tag` VALUES (1,'Kỹ năng 1','2018-03-23 06:47:51'),(2,'kỹ năng 2','2018-03-23 06:38:10'),(3,'kỹ năng 3','2018-03-23 06:47:16'),(4,'kỹ năng 4','2018-03-23 06:47:40'),(5,'kỹ năng 5','2018-03-23 07:06:32');
/*!40000 ALTER TABLE `group_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interact_job`
--

DROP TABLE IF EXISTS `interact_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interact_job` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_job` int(11) NOT NULL,
  `action` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK_16` (`id_user`),
  KEY `FK_17` (`id_job`),
  CONSTRAINT `FK_16` FOREIGN KEY (`id_user`) REFERENCES `portal_user` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_17` FOREIGN KEY (`id_job`) REFERENCES `job_post` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interact_job`
--

LOCK TABLES `interact_job` WRITE;
/*!40000 ALTER TABLE `interact_job` DISABLE KEYS */;
INSERT INTO `interact_job` VALUES (1,7,1,3,'2018-03-23 07:21:43'),(2,8,9,3,'2018-03-23 07:24:17');
/*!40000 ALTER TABLE `interact_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interact_news`
--

DROP TABLE IF EXISTS `interact_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interact_news` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_news` int(11) NOT NULL,
  `action` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK_27` (`id_user`),
  KEY `FK_28` (`id_news`),
  CONSTRAINT `FK_27` FOREIGN KEY (`id_user`) REFERENCES `portal_user` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_28` FOREIGN KEY (`id_news`) REFERENCES `news_post` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interact_news`
--

LOCK TABLES `interact_news` WRITE;
/*!40000 ALTER TABLE `interact_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `interact_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_code`
--

DROP TABLE IF EXISTS `job_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_code` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `job_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `job_code_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_code_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `note` text COLLATE utf8_unicode_ci,
  `flg_status` int(11) NOT NULL,
  `id_creater` int(11) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK_job_code_1` (`id_creater`),
  CONSTRAINT `FK_job_code_1` FOREIGN KEY (`id_creater`) REFERENCES `cms_user` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `job_code_history`
--

DROP TABLE IF EXISTS `job_code_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_code_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `id_job_code` int(11) DEFAULT NULL,
  `objects` text COLLATE utf8_unicode_ci,
  `id_creater` int(11) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `id_job_code` (`id_job_code`),
  KEY `id_creater` (`id_creater`),
  CONSTRAINT `FK_job_code_history_1` FOREIGN KEY (`id_creater`) REFERENCES `cms_user` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_job_code_history_2` FOREIGN KEY (`id_job_code`) REFERENCES `job_code` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;



--
-- Table structure for table `job_experience`
--

DROP TABLE IF EXISTS `job_experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_experience` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `experience_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `experience_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_experience`
--

LOCK TABLES `job_experience` WRITE;
/*!40000 ALTER TABLE `job_experience` DISABLE KEYS */;
INSERT INTO `job_experience` VALUES (1,'Chưa có kinh nghiệm','Non-experience'),(2,'< 1 năm','< 1 year'),(3,'1-3 năm','1-3 years'),(4,'3-5 năm ','3-5 years'),(5,'> 5 năm','> 5 years');
/*!40000 ALTER TABLE `job_experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_family`
--

DROP TABLE IF EXISTS `job_family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_family` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `jobFamily_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jobFamily_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jobFamily_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `note` text COLLATE utf8_unicode_ci,
  `flg_status` int(11) NOT NULL,
  `id_creater` int(11) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK_job_family_1` (`id_creater`),
  CONSTRAINT `FK_job_family_1` FOREIGN KEY (`id_creater`) REFERENCES `cms_user` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;



--
-- Table structure for table `job_family_history`
--

DROP TABLE IF EXISTS `job_family_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_family_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `id_job_family` int(11) DEFAULT NULL,
  `objects` text COLLATE utf8_unicode_ci,
  `id_creater` int(11) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK__job_family_1` (`id_job_family`),
  KEY `FK__job_family_2` (`id_creater`),
  CONSTRAINT `FK_job_family_history_1` FOREIGN KEY (`id_job_family`) REFERENCES `job_family` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_job_family_history_2` FOREIGN KEY (`id_creater`) REFERENCES `cms_user` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_family_history`
--

LOCK TABLES `job_family_history` WRITE;
/*!40000 ALTER TABLE `job_family_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_family_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_post`
--

DROP TABLE IF EXISTS `job_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_post` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title_vi` text COLLATE utf8_unicode_ci,
  `title_en` text COLLATE utf8_unicode_ci,
  `id_company` int(11) DEFAULT NULL,
  `id_cmc_job_code` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `apply_deadline` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deadline` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_address` int(11) DEFAULT NULL,
  `id_salary` int(11) DEFAULT NULL,
  `id_experience` int(11) DEFAULT NULL,
  `id_worktype` int(11) DEFAULT NULL,
  `id_education` int(11) DEFAULT NULL,
  `description_vi` text COLLATE utf8_unicode_ci,
  `description_en` text COLLATE utf8_unicode_ci,
  `require_vi` text COLLATE utf8_unicode_ci,
  `require_en` text COLLATE utf8_unicode_ci,
  `benefit_vi` text COLLATE utf8_unicode_ci,
  `benefit_en` text COLLATE utf8_unicode_ci,
  `contact_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_job_post_1` (`id_company`),
  KEY `FK_job_post_2` (`id_cmc_job_code`),
  KEY `FK_job_post_5` (`id_status`),
  KEY `FK_job_post_6` (`id_address`),
  KEY `FK_job_post_7` (`id_salary`),
  KEY `FK_job_post_8` (`id_experience`),
  KEY `FK_job_post_9` (`id_worktype`),
  KEY `FK_job_post_10` (`id_education`),
  CONSTRAINT `FK_job_post_1` FOREIGN KEY (`id_company`) REFERENCES `company` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_job_post_10` FOREIGN KEY (`id_education`) REFERENCES `education` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_job_post_2` FOREIGN KEY (`id_cmc_job_code`) REFERENCES `cmc_job_code` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_job_post_5` FOREIGN KEY (`id_status`) REFERENCES `cms_status` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_job_post_6` FOREIGN KEY (`id_address`) REFERENCES `address` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_job_post_7` FOREIGN KEY (`id_salary`) REFERENCES `salary` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_job_post_8` FOREIGN KEY (`id_experience`) REFERENCES `job_experience` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_job_post_9` FOREIGN KEY (`id_worktype`) REFERENCES `work_type` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;




--
-- Table structure for table `job_sub_family`
--

DROP TABLE IF EXISTS `job_sub_family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_sub_family` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `jobSubFamily_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jobSubFamily_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jobSubFamily_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `note` text COLLATE utf8_unicode_ci,
  `id_jobFamily` int(11) DEFAULT NULL,
  `flg_status` int(11) NOT NULL,
  `id_creater` int(11) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK_job_sub_family_1` (`id_jobFamily`),
  KEY `FK_job_sub_family_2` (`id_creater`),
  CONSTRAINT `FK_job_sub_family_1` FOREIGN KEY (`id_jobFamily`) REFERENCES `job_family` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_job_sub_family_2` FOREIGN KEY (`id_creater`) REFERENCES `cms_user` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;



--
-- Table structure for table `job_sub_family_history`
--

DROP TABLE IF EXISTS `job_sub_family_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_sub_family_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `id_job_sub_family` int(11) DEFAULT NULL,
  `objects` text COLLATE utf8_unicode_ci,
  `id_creater` int(11) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `id_job_sub_family` (`id_job_sub_family`),
  KEY `id_creater` (`id_creater`),
  CONSTRAINT `FK_job_sub_family_history_1` FOREIGN KEY (`id_job_sub_family`) REFERENCES `job_sub_family` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_job_sub_family_history_2` FOREIGN KEY (`id_creater`) REFERENCES `cms_user` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_sub_family_history`
--

LOCK TABLES `job_sub_family_history` WRITE;
/*!40000 ALTER TABLE `job_sub_family_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_sub_family_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_tag`
--

DROP TABLE IF EXISTS `job_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_tag` (
  `id_job_post` int(11) NOT NULL,
  `id_tag` int(11) NOT NULL,
  PRIMARY KEY (`id_job_post`,`id_tag`),
  KEY `FK_43` (`id_tag`),
  CONSTRAINT `FK_42` FOREIGN KEY (`id_job_post`) REFERENCES `job_post` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_43` FOREIGN KEY (`id_tag`) REFERENCES `tag` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_tag`
--

LOCK TABLES `job_tag` WRITE;
/*!40000 ALTER TABLE `job_tag` DISABLE KEYS */;
INSERT INTO `job_tag` VALUES (1,1),(2,1),(8,1),(10,1),(3,4),(9,4),(3,5),(9,5),(3,6),(9,6),(1,7),(5,7),(10,7),(1,8),(5,8),(10,8);
/*!40000 ALTER TABLE `job_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_post`
--

DROP TABLE IF EXISTS `news_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_post` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title_vi` text COLLATE utf8_unicode_ci,
  `title_en` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abstract_vi` text COLLATE utf8_unicode_ci,
  `abstract_en` text COLLATE utf8_unicode_ci,
  `content_vi` text COLLATE utf8_unicode_ci,
  `content_en` text COLLATE utf8_unicode_ci,
  `id_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_7` (`id_status`),
  CONSTRAINT `FK_7` FOREIGN KEY (`id_status`) REFERENCES `cms_status` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_post`
--

LOCK TABLES `news_post` WRITE;
/*!40000 ALTER TABLE `news_post` DISABLE KEYS */;
INSERT INTO `news_post` VALUES (14,'Bảy phương pháp tuyển dụng lợi hại','','1517570619573.png','Mục đích của việc tuyển dụng thành công chính là việc tuyển đúng người. Khi tuyển dụng nhân sự cho phòng ban của mình, đã bao giờ Anh Chị phải loay hoay tìm phương pháp tuyển dụng hiệu quả và tạo trải nghiệm tốt cho ứng viên? Bảy phương pháp dưới đây sẽ giúp Anh Chị giải quyết những vấn đề đau đầu trên một cách thật dễ dàng…','','<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">1. Đợi chờ kh&ocirc;ng c&ograve;n l&agrave; hạnh ph&uacute;c</span></span></span></b></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Trước đ&acirc;y, một số nh&agrave; tuyển dụng thường khiến ứng vi&ecirc;n phải chờ đợi trong buổi phỏng vấn để &ldquo;tăng sự quan trọng&rdquo;. Nhưng tuyển dụng hiện đại ng&agrave;y nay l&agrave; một sự tương t&aacute;c hai chiều.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Khi ứng vi&ecirc;n đến dự phỏng vấn theo đ&uacute;ng giờ hẹn, nếu Anh Chị đang bận giải quyết một c&ocirc;ng việc n&agrave;o đ&oacute; v&agrave; việc chậm trễ l&agrave; bất khả kh&aacute;ng, h&atilde;y b&aacute;o lại th&ocirc;ng tin với người phụ tr&aacute;ch Nh&acirc;n sự/Tuyển dụng để họ trao đổi với ứng vi&ecirc;n, thu xếp nước uống, c&agrave; ph&ecirc;, wifi v&agrave; v&agrave;i quyển tạp ch&iacute;/brochures về c&ocirc;ng ty trong l&uacute;c ứng vi&ecirc;n chờ đợi. Bởi việc để ứng vi&ecirc;n chờ đợi m&ograve;n mỏi v&agrave; cảm thấy bồn chồn l&agrave; điều kh&ocirc;ng hay cũng như để lại dấu ấn trải nghiệm kh&ocirc;ng tốt với ứng vi&ecirc;n. </span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">2. &ldquo;Y&ecirc;u khi thấy gh&eacute;t, gh&eacute;t khi thấy y&ecirc;u&rdquo;</span></span></span></b></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Đ&ocirc;i khi ch&uacute;ng ta v&ocirc; thức th&iacute;ch hoặc kh&ocirc;ng th&iacute;ch một ai đ&oacute; ngay khi mới gặp. Đ&oacute; gọi l&agrave; bản năng tự nhi&ecirc;n của con người. Ấn tượng của ch&uacute;ng ta về người kh&aacute;c ảnh hưởng đến th&aacute;i độ của ch&uacute;ng ta với họ. </span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Nếu th&iacute;ch ai đ&oacute;, ch&uacute;ng ta c&oacute; khuynh hướng dễ chịu với họ. V&agrave; tr&aacute;i lại, nếu kh&ocirc;ng ưa ai đ&oacute;, ch&uacute;ng ta c&oacute; khuynh hướng kh&oacute; chịu với họ. </span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Ch&uacute;ng ta c&oacute; thể rơi v&agrave;o loại bẫy t&acirc;m l&yacute; n&agrave;y khi tuyển dụng. Nếu th&iacute;ch ứng vi&ecirc;n, ch&uacute;ng ta dễ chịu với họ v&agrave; nhanh ch&oacute;ng tiếp nhận th&ocirc;ng tin, cảm thấy ấn tượng với sự chia sẻ của họ. V&agrave; nếu kh&ocirc;ng th&iacute;ch ứng vi&ecirc;n, rất c&oacute; thể ch&uacute;ng ta sẽ nhanh ch&oacute;ng kết th&uacute;c buổi phỏng vấn chỉ sau một v&agrave;i c&acirc;u hỏi m&agrave; chưa khai th&aacute;c được đầy đủ th&ocirc;ng tin. V&igrave; vậy, ch&uacute;ng ta c&oacute; thể sai lầm loại đi ứng vi&ecirc;n tiềm năng, hoặc ngược lại chấp nhận ứng vi&ecirc;n chưa thực sự ph&ugrave; hợp với vị tr&iacute; tuyển dụng.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Đ&acirc;y l&agrave; c&aacute;ch để xử l&yacute; vấn đề n&agrave;y:</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">1. Ghi lại ấn tượng của Anh Chị sau v&agrave;i ph&uacute;t n&oacute;i chuyện với ứng vi&ecirc;n, ấn tượng đ&oacute; tốt hay kh&ocirc;ng?</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">2. Thay đổi c&aacute;ch ứng xử để kiểm chứng quan điểm, y&ecirc;u khi thấy gh&eacute;t, gh&eacute;t khi thấy y&ecirc;u v&agrave; xem điều g&igrave; sẽ xảy ra.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">3. Nếu Anh Chị c&oacute; ấn tượng tốt về ứng vi&ecirc;n, h&atilde;y cứng rắn với họ, thật cứng rắn. Chất vấn họ, đặt những c&acirc;u hỏi kh&oacute;. V&agrave;o cuối buổi phỏng vấn, kiểm tra lại ấn tượng của Anh Chị về ứng vi&ecirc;n, liệu Anh Chị vẫn thấy th&iacute;ch họ. Nếu vẫn th&iacute;ch, c&oacute; lẽ thiện cảm của Anh Chị về ứng vi&ecirc;n l&agrave; đ&uacute;ng.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">4. Nếu Anh Chị kh&ocirc;ng th&iacute;ch ứng vi&ecirc;n, h&atilde;y mềm mỏng với họ. H&atilde;y th&acirc;n thiện, rộng lượng, thoải m&aacute;i v&agrave; đặt ra nhiều c&acirc;u hỏi/t&igrave;nh huống. V&agrave;o cuối buổi phỏng vấn, kiểm tra lại ấn tượng của Anh Chị về ứng vi&ecirc;n, liệu Anh Chị vẫn kh&ocirc;ng th&iacute;ch họ. Nếu vẫn kh&ocirc;ng th&iacute;ch, c&oacute; lẽ đ&oacute; chưa phải l&agrave; ứng vi&ecirc;n ph&ugrave; hợp với mong muốn của Anh Chị đối với vị tr&iacute; tuyển dụng n&agrave;y.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">(Thủ thuật n&agrave;y hữu &iacute;ch thậm ch&iacute; với cả những t&igrave;nh huống kh&ocirc;ng thuộc lĩnh vực tuyển dụng trong cuộc sống v&agrave; c&ocirc;ng việc h&agrave;ng ng&agrave;y để hạn chế những suy nghĩ chủ quan về người kh&aacute;c).</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">3. Tự xoay sở</span></span></span></b></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Anh Chị h&atilde;y tạo một t&igrave;nh huống m&ocirc; phỏng cho mỗi nhiệm vụ m&agrave; ứng vi&ecirc;n sẽ l&agrave;m trong thực tế nếu họ được tuyển (một b&agrave;i kiểm tra khả năng đa dạng) để đ&aacute;nh gi&aacute; Kiến thức, Kỹ năng v&agrave; Th&aacute;i độ cần c&oacute; cho vị tr&iacute; tuyển dụng. <i>(Kiến thức, Kỹ năng v&agrave; Th&aacute;i độ - KKT)</i></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">V&iacute; dụ, nếu Anh Chị đang tuyển Nh&acirc;n vi&ecirc;n Quản l&yacute; Truyền th&ocirc;ng x&atilde; hội, h&atilde;y để họ viết blog v&agrave; đăng b&agrave;i tr&ecirc;n mỗi k&ecirc;nh truyền th&ocirc;ng x&atilde; hội m&agrave; họ sử dụng, y&ecirc;u cầu chuẩn bị b&agrave;i thuyết tr&igrave;nh, th&ocirc;ng tin minh hoạ; hoặc đưa ra một b&agrave;i kiểm tra về kiến thức chuy&ecirc;n m&ocirc;n, c&aacute;c quy tắc, ch&iacute;nh s&aacute;ch, thủ thuật v&agrave; những phương ph&aacute;p hay cho từng nền tảng của c&aacute;c k&ecirc;nh truyền th&ocirc;ng x&atilde; hội.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">4. Cơ hội sắm vai James Bond</span></span></span></b></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">C&oacute; ai m&agrave; kh&ocirc;ng từng mơ mộng được trở th&agrave;nh th&aacute;m tử khi đọc Hercule Poirot, Perry Mason, Sherlock Holmes,... thời đi học?</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Để tiếp cận KKT của ứng vi&ecirc;n m&agrave; kh&ocirc;ng cần qua c&aacute;c t&igrave;nh huống m&ocirc; phỏng, Anh Chị sử dụng kỹ thuật phỏng vấn dựa tr&ecirc;n năng lực bằng c&aacute;ch lập danh s&aacute;ch c&aacute;c năng lực cần c&oacute; cho vị tr&iacute; tuyển dụng v&agrave; hỏi những c&acirc;u chuyện từ kinh nghiệm thực tế của ứng vi&ecirc;n để hiểu r&otilde; hơn.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">V&iacute; dụ, nếu Anh Chị đang tuyển một quản l&yacute; nh&oacute;m, Anh Chị c&oacute; thể t&igrave;m kiếm ứng vi&ecirc;n c&oacute; năng lực như quản trị chức năng, kiến thức chuy&ecirc;n m&ocirc;n s&acirc;u, huấn luyện, giao tiếp, lập kế hoạch, giao quyền, giải quyết vấn đề, .... H&atilde;y đ&agrave;o s&acirc;u thật s&acirc;u về từng c&acirc;u chuyện trong kinh nghiệm.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Mấu chốt ở đ&acirc;y l&agrave; đừng dừng lại chỉ với một c&acirc;u hỏi v&agrave; một c&acirc;u trả lời với từng c&acirc;u chuyện. Đ&agrave;o s&acirc;u hơn để tiếp cận kh&ocirc;ng chỉ kĩ năng m&agrave; c&ograve;n l&agrave; t&iacute;nh trung thực của c&acirc;u chuyện đ&oacute;. H&atilde;y để &yacute; đến giọng điệu v&agrave; phải thể hiện như Anh Chị đang h&agrave;o hứng muốn biết th&ecirc;m nữa chứ kh&ocirc;ng phải bạn đang cố tạo &aacute;p lực cho ứng vi&ecirc;n (h&atilde;y nhớ Anh Chị đang l&agrave; một mật vụ!).</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Anh Chị c&oacute; thể sử dụng c&aacute;c c&acirc;u sau:</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Kể t&ocirc;i nghe về một kinh nghiệm m&agrave; một số th&agrave;nh vi&ecirc;n trong nh&oacute;m của bạn l&agrave;m việc kh&ocirc;ng hiệu quả; &Agrave; h&aacute;! Rồi bạn đ&atilde; giải quyết t&igrave;nh h&igrave;nh như thế n&agrave;o?; Hừm, vậy sao? Rồi khi bạn thực hiện những thay đổi, đ&atilde; c&oacute; những t&aacute;c động n&agrave;o?; Được rồi, vậy bạn phản ứng thế n&agrave;o với điều đ&oacute;?; Ch&agrave;, chuyện g&igrave; xảy ra sau đ&oacute;?.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">5. Đ&ocirc;i khi, chỉ một th&aacute;m tử kh&ocirc;ng thể giải đ&aacute;p được b&iacute; ẩn</span></span></span></b></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Nếu người Anh Chị tuyển thường xuy&ecirc;n l&agrave;m việc hay phối hợp với nhiều nh&agrave; quản l&yacute;, h&atilde;y mời c&aacute;c nh&agrave; quản l&yacute; đ&oacute; phỏng vấn ứng vi&ecirc;n c&ugrave;ng Anh Chị. Việc để c&aacute;c nh&agrave; quản l&yacute; kh&aacute;c c&oacute; cơ hội đ&aacute;nh gi&aacute; được liệu ứng vi&ecirc;n c&oacute; đạt KKT cần thiết cho vị tr&iacute; hay kh&ocirc;ng l&agrave; rất quan trọng. H&atilde;y c&acirc;n nhắc &yacute; kiến của họ khi Anh Chị đưa ra quyết định tuyển dụng.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">6. &Ocirc;i kh&ocirc;ng, đừng như thế nữa chứ</span></span></span></b></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Những c&acirc;u hỏi rập khu&ocirc;n sẽ nhận được những phản hồi rập khu&ocirc;n. Đừng mất thời gian với những c&acirc;u hỏi đại loại như điểm yếu của bạn l&agrave; g&igrave;, trong năm năm tới bạn thấy m&igrave;nh l&agrave; người thế n&agrave;o, l&agrave;m thế n&agrave;o bạn biết về c&ocirc;ng ty n&agrave;y, tại sao bạn lại muốn l&agrave;m việc với ch&uacute;ng t&ocirc;i&hellip;Ứng vi&ecirc;n nắm r&otilde; những c&acirc;u hỏi n&agrave;y v&agrave; ch&uacute;ng ta cũng biết kịch bản trả lời của họ.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">7. Lời cảm ơn rất rất lợi hại</span></span></span></b></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Ứng vi&ecirc;n đầu tư thời gian v&agrave; tiền bạc để gặp nh&agrave; tuyển dụng. V&igrave; thế, ch&acirc;n th&agrave;nh cảm ơn ứng vi&ecirc;n trước khi họ ra về l&agrave; h&agrave;nh động lịch sự tối thiểu. T&ugrave;y thuộc v&agrave;o một số quy định của c&ocirc;ng ty, nếu ứng vi&ecirc;n c&oacute; thể điền v&agrave;o phiếu phản hồi trước khi ra về, ch&uacute;ng ta sẽ c&oacute; th&ecirc;m dữ liệu để đ&aacute;nh gi&aacute; v&agrave; cải thiện.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Mục ti&ecirc;u của c&aacute;c phương ph&aacute;p tuyển dụng n&agrave;y, dĩ nhi&ecirc;n l&agrave; tuyển được đ&uacute;ng người. </span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Th&ecirc;m nữa, mỗi ứng vi&ecirc;n lại l&agrave; một cơ hội để thế giới b&ecirc;n ngo&agrave;i biết về văn h&oacute;a c&ocirc;ng ty. Vậy d&ugrave; Anh Chị c&oacute; tuyển dụng họ hay kh&ocirc;ng, h&atilde;y để họ cảm thấy: Thần linh ơi!! T&ocirc;i thật sự muốn l&agrave;m việc ở đ&acirc;y.</span></span></span></p>\r\n','',6),(15,'Bảy phương pháp tuyển dụng lợi hại','','1517571566330.png','Mục đích của việc tuyển dụng thành công chính là việc tuyển đúng người. Khi tuyển dụng nhân sự cho phòng ban của mình, đã bao giờ Anh Chị phải loay hoay tìm phương pháp tuyển dụng hiệu quả và tạo trải nghiệm tốt cho ứng viên? Bảy phương pháp dưới đây sẽ giúp Anh Chị giải quyết những vấn đề đau đầu trên một cách thật dễ dàng…','','<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">1. Đợi chờ kh&ocirc;ng c&ograve;n l&agrave; hạnh ph&uacute;c</span></span></span></b></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Trước đ&acirc;y, một số nh&agrave; tuyển dụng thường khiến ứng vi&ecirc;n phải chờ đợi trong buổi phỏng vấn để &ldquo;tăng sự quan trọng&rdquo;. Nhưng tuyển dụng hiện đại ng&agrave;y nay l&agrave; một sự tương t&aacute;c hai chiều.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Khi ứng vi&ecirc;n đến dự phỏng vấn theo đ&uacute;ng giờ hẹn, nếu Anh Chị đang bận giải quyết một c&ocirc;ng việc n&agrave;o đ&oacute; v&agrave; việc chậm trễ l&agrave; bất khả kh&aacute;ng, h&atilde;y b&aacute;o lại th&ocirc;ng tin với người phụ tr&aacute;ch Nh&acirc;n sự/Tuyển dụng để họ trao đổi với ứng vi&ecirc;n, thu xếp nước uống, c&agrave; ph&ecirc;, wifi v&agrave; v&agrave;i quyển tạp ch&iacute;/brochures về c&ocirc;ng ty trong l&uacute;c ứng vi&ecirc;n chờ đợi. Bởi việc để ứng vi&ecirc;n chờ đợi m&ograve;n mỏi v&agrave; cảm thấy bồn chồn l&agrave; điều kh&ocirc;ng hay cũng như để lại dấu ấn trải nghiệm kh&ocirc;ng tốt với ứng vi&ecirc;n. </span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">2. &ldquo;Y&ecirc;u khi thấy gh&eacute;t, gh&eacute;t khi thấy y&ecirc;u&rdquo;</span></span></span></b></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Đ&ocirc;i khi ch&uacute;ng ta v&ocirc; thức th&iacute;ch hoặc kh&ocirc;ng th&iacute;ch một ai đ&oacute; ngay khi mới gặp. Đ&oacute; gọi l&agrave; bản năng tự nhi&ecirc;n của con người. Ấn tượng của ch&uacute;ng ta về người kh&aacute;c ảnh hưởng đến th&aacute;i độ của ch&uacute;ng ta với họ. </span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Nếu th&iacute;ch ai đ&oacute;, ch&uacute;ng ta c&oacute; khuynh hướng dễ chịu với họ. V&agrave; tr&aacute;i lại, nếu kh&ocirc;ng ưa ai đ&oacute;, ch&uacute;ng ta c&oacute; khuynh hướng kh&oacute; chịu với họ. </span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Ch&uacute;ng ta c&oacute; thể rơi v&agrave;o loại bẫy t&acirc;m l&yacute; n&agrave;y khi tuyển dụng. Nếu th&iacute;ch ứng vi&ecirc;n, ch&uacute;ng ta dễ chịu với họ v&agrave; nhanh ch&oacute;ng tiếp nhận th&ocirc;ng tin, cảm thấy ấn tượng với sự chia sẻ của họ. V&agrave; nếu kh&ocirc;ng th&iacute;ch ứng vi&ecirc;n, rất c&oacute; thể ch&uacute;ng ta sẽ nhanh ch&oacute;ng kết th&uacute;c buổi phỏng vấn chỉ sau một v&agrave;i c&acirc;u hỏi m&agrave; chưa khai th&aacute;c được đầy đủ th&ocirc;ng tin. V&igrave; vậy, ch&uacute;ng ta c&oacute; thể sai lầm loại đi ứng vi&ecirc;n tiềm năng, hoặc ngược lại chấp nhận ứng vi&ecirc;n chưa thực sự ph&ugrave; hợp với vị tr&iacute; tuyển dụng.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Đ&acirc;y l&agrave; c&aacute;ch để xử l&yacute; vấn đề n&agrave;y:</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">1. Ghi lại ấn tượng của Anh Chị sau v&agrave;i ph&uacute;t n&oacute;i chuyện với ứng vi&ecirc;n, ấn tượng đ&oacute; tốt hay kh&ocirc;ng?</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">2. Thay đổi c&aacute;ch ứng xử để kiểm chứng quan điểm, y&ecirc;u khi thấy gh&eacute;t, gh&eacute;t khi thấy y&ecirc;u v&agrave; xem điều g&igrave; sẽ xảy ra.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">3. Nếu Anh Chị c&oacute; ấn tượng tốt về ứng vi&ecirc;n, h&atilde;y cứng rắn với họ, thật cứng rắn. Chất vấn họ, đặt những c&acirc;u hỏi kh&oacute;. V&agrave;o cuối buổi phỏng vấn, kiểm tra lại ấn tượng của Anh Chị về ứng vi&ecirc;n, liệu Anh Chị vẫn thấy th&iacute;ch họ. Nếu vẫn th&iacute;ch, c&oacute; lẽ thiện cảm của Anh Chị về ứng vi&ecirc;n l&agrave; đ&uacute;ng.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">4. Nếu Anh Chị kh&ocirc;ng th&iacute;ch ứng vi&ecirc;n, h&atilde;y mềm mỏng với họ. H&atilde;y th&acirc;n thiện, rộng lượng, thoải m&aacute;i v&agrave; đặt ra nhiều c&acirc;u hỏi/t&igrave;nh huống. V&agrave;o cuối buổi phỏng vấn, kiểm tra lại ấn tượng của Anh Chị về ứng vi&ecirc;n, liệu Anh Chị vẫn kh&ocirc;ng th&iacute;ch họ. Nếu vẫn kh&ocirc;ng th&iacute;ch, c&oacute; lẽ đ&oacute; chưa phải l&agrave; ứng vi&ecirc;n ph&ugrave; hợp với mong muốn của Anh Chị đối với vị tr&iacute; tuyển dụng n&agrave;y.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">(Thủ thuật n&agrave;y hữu &iacute;ch thậm ch&iacute; với cả những t&igrave;nh huống kh&ocirc;ng thuộc lĩnh vực tuyển dụng trong cuộc sống v&agrave; c&ocirc;ng việc h&agrave;ng ng&agrave;y để hạn chế những suy nghĩ chủ quan về người kh&aacute;c).</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">3. Tự xoay sở</span></span></span></b></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Anh Chị h&atilde;y tạo một t&igrave;nh huống m&ocirc; phỏng cho mỗi nhiệm vụ m&agrave; ứng vi&ecirc;n sẽ l&agrave;m trong thực tế nếu họ được tuyển (một b&agrave;i kiểm tra khả năng đa dạng) để đ&aacute;nh gi&aacute; Kiến thức, Kỹ năng v&agrave; Th&aacute;i độ cần c&oacute; cho vị tr&iacute; tuyển dụng. <i>(Kiến thức, Kỹ năng v&agrave; Th&aacute;i độ - KKT)</i></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">V&iacute; dụ, nếu Anh Chị đang tuyển Nh&acirc;n vi&ecirc;n Quản l&yacute; Truyền th&ocirc;ng x&atilde; hội, h&atilde;y để họ viết blog v&agrave; đăng b&agrave;i tr&ecirc;n mỗi k&ecirc;nh truyền th&ocirc;ng x&atilde; hội m&agrave; họ sử dụng, y&ecirc;u cầu chuẩn bị b&agrave;i thuyết tr&igrave;nh, th&ocirc;ng tin minh hoạ; hoặc đưa ra một b&agrave;i kiểm tra về kiến thức chuy&ecirc;n m&ocirc;n, c&aacute;c quy tắc, ch&iacute;nh s&aacute;ch, thủ thuật v&agrave; những phương ph&aacute;p hay cho từng nền tảng của c&aacute;c k&ecirc;nh truyền th&ocirc;ng x&atilde; hội.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">4. Cơ hội sắm vai James Bond</span></span></span></b></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">C&oacute; ai m&agrave; kh&ocirc;ng từng mơ mộng được trở th&agrave;nh th&aacute;m tử khi đọc Hercule Poirot, Perry Mason, Sherlock Holmes,... thời đi học?</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Để tiếp cận KKT của ứng vi&ecirc;n m&agrave; kh&ocirc;ng cần qua c&aacute;c t&igrave;nh huống m&ocirc; phỏng, Anh Chị sử dụng kỹ thuật phỏng vấn dựa tr&ecirc;n năng lực bằng c&aacute;ch lập danh s&aacute;ch c&aacute;c năng lực cần c&oacute; cho vị tr&iacute; tuyển dụng v&agrave; hỏi những c&acirc;u chuyện từ kinh nghiệm thực tế của ứng vi&ecirc;n để hiểu r&otilde; hơn.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">V&iacute; dụ, nếu Anh Chị đang tuyển một quản l&yacute; nh&oacute;m, Anh Chị c&oacute; thể t&igrave;m kiếm ứng vi&ecirc;n c&oacute; năng lực như quản trị chức năng, kiến thức chuy&ecirc;n m&ocirc;n s&acirc;u, huấn luyện, giao tiếp, lập kế hoạch, giao quyền, giải quyết vấn đề, .... H&atilde;y đ&agrave;o s&acirc;u thật s&acirc;u về từng c&acirc;u chuyện trong kinh nghiệm.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Mấu chốt ở đ&acirc;y l&agrave; đừng dừng lại chỉ với một c&acirc;u hỏi v&agrave; một c&acirc;u trả lời với từng c&acirc;u chuyện. Đ&agrave;o s&acirc;u hơn để tiếp cận kh&ocirc;ng chỉ kĩ năng m&agrave; c&ograve;n l&agrave; t&iacute;nh trung thực của c&acirc;u chuyện đ&oacute;. H&atilde;y để &yacute; đến giọng điệu v&agrave; phải thể hiện như Anh Chị đang h&agrave;o hứng muốn biết th&ecirc;m nữa chứ kh&ocirc;ng phải bạn đang cố tạo &aacute;p lực cho ứng vi&ecirc;n (h&atilde;y nhớ Anh Chị đang l&agrave; một mật vụ!).</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Anh Chị c&oacute; thể sử dụng c&aacute;c c&acirc;u sau:</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Kể t&ocirc;i nghe về một kinh nghiệm m&agrave; một số th&agrave;nh vi&ecirc;n trong nh&oacute;m của bạn l&agrave;m việc kh&ocirc;ng hiệu quả; &Agrave; h&aacute;! Rồi bạn đ&atilde; giải quyết t&igrave;nh h&igrave;nh như thế n&agrave;o?; Hừm, vậy sao? Rồi khi bạn thực hiện những thay đổi, đ&atilde; c&oacute; những t&aacute;c động n&agrave;o?; Được rồi, vậy bạn phản ứng thế n&agrave;o với điều đ&oacute;?; Ch&agrave;, chuyện g&igrave; xảy ra sau đ&oacute;?.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">5. Đ&ocirc;i khi, chỉ một th&aacute;m tử kh&ocirc;ng thể giải đ&aacute;p được b&iacute; ẩn</span></span></span></b></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Nếu người Anh Chị tuyển thường xuy&ecirc;n l&agrave;m việc hay phối hợp với nhiều nh&agrave; quản l&yacute;, h&atilde;y mời c&aacute;c nh&agrave; quản l&yacute; đ&oacute; phỏng vấn ứng vi&ecirc;n c&ugrave;ng Anh Chị. Việc để c&aacute;c nh&agrave; quản l&yacute; kh&aacute;c c&oacute; cơ hội đ&aacute;nh gi&aacute; được liệu ứng vi&ecirc;n c&oacute; đạt KKT cần thiết cho vị tr&iacute; hay kh&ocirc;ng l&agrave; rất quan trọng. H&atilde;y c&acirc;n nhắc &yacute; kiến của họ khi Anh Chị đưa ra quyết định tuyển dụng.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">6. &Ocirc;i kh&ocirc;ng, đừng như thế nữa chứ</span></span></span></b></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Những c&acirc;u hỏi rập khu&ocirc;n sẽ nhận được những phản hồi rập khu&ocirc;n. Đừng mất thời gian với những c&acirc;u hỏi đại loại như điểm yếu của bạn l&agrave; g&igrave;, trong năm năm tới bạn thấy m&igrave;nh l&agrave; người thế n&agrave;o, l&agrave;m thế n&agrave;o bạn biết về c&ocirc;ng ty n&agrave;y, tại sao bạn lại muốn l&agrave;m việc với ch&uacute;ng t&ocirc;i&hellip;Ứng vi&ecirc;n nắm r&otilde; những c&acirc;u hỏi n&agrave;y v&agrave; ch&uacute;ng ta cũng biết kịch bản trả lời của họ.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">7. Lời cảm ơn rất rất lợi hại</span></span></span></b></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Ứng vi&ecirc;n đầu tư thời gian v&agrave; tiền bạc để gặp nh&agrave; tuyển dụng. V&igrave; thế, ch&acirc;n th&agrave;nh cảm ơn ứng vi&ecirc;n trước khi họ ra về l&agrave; h&agrave;nh động lịch sự tối thiểu. T&ugrave;y thuộc v&agrave;o một số quy định của c&ocirc;ng ty, nếu ứng vi&ecirc;n c&oacute; thể điền v&agrave;o phiếu phản hồi trước khi ra về, ch&uacute;ng ta sẽ c&oacute; th&ecirc;m dữ liệu để đ&aacute;nh gi&aacute; v&agrave; cải thiện.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Mục ti&ecirc;u của c&aacute;c phương ph&aacute;p tuyển dụng n&agrave;y, dĩ nhi&ecirc;n l&agrave; tuyển được đ&uacute;ng người. </span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Th&ecirc;m nữa, mỗi ứng vi&ecirc;n lại l&agrave; một cơ hội để thế giới b&ecirc;n ngo&agrave;i biết về văn h&oacute;a c&ocirc;ng ty. Vậy d&ugrave; Anh Chị c&oacute; tuyển dụng họ hay kh&ocirc;ng, h&atilde;y để họ cảm thấy: Thần linh ơi!! T&ocirc;i thật sự muốn l&agrave;m việc ở đ&acirc;y.</span></span></span></p>\r\n','',7),(16,'Chào đón tân binh thế nào để họ yêu công ty hơn','','1517571684109.png','Nghi lễ tạo nên sự khác biệt của một nền văn hóa và cũng chính “nghi lễ” tạo nên sự đặc biệt của mỗi một công ty. Giống như tình yêu, ấn tượng lớn nhất thường đến từ cái nhìn đầu tiên. Tiếp đón tân binh trong ngày đầu tiên làm việc là một “nghi lễ” quan trọng của tổ chức, nó khiến nhân viên yêu công ty nhiều hơn…','','<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\">Để được lựa chọn v&agrave;o c&ocirc;ng ty, c&aacute;c t&acirc;n binh phải vượt qua những v&ograve;ng phỏng vấn cam go, những b&agrave;i thi tuyển kh&oacute; nhằn v&agrave; hơn hết, họ đ&atilde; k&igrave; vọng v&agrave; nỗ lực rất nhiều để c&oacute; được vị tr&iacute; c&ocirc;ng việc mơ ước.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\">Ng&agrave;y đầu ti&ecirc;n l&agrave;m việc lu&ocirc;n l&agrave; một mốc thời gian c&oacute; &yacute; nghĩa đặc biệt với họ. H&agrave;nh trang nhập m&ocirc;n của c&aacute;c t&acirc;n binh kh&ocirc;ng chỉ c&oacute; sự hi vọng, niềm hạnh ph&uacute;c về một bước tiến trong sự nghiệp m&agrave; c&ograve;n c&oacute; những nỗi lo &acirc;u, hồi hộp về một sự khởi đầu mới.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\">Ch&iacute;nh tại thời điểm đ&oacute;, ấn tượng của c&aacute;c t&acirc;n binh về c&ocirc;ng ty rất mạnh mẽ. </span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\">Ấn tượng tốt trong ng&agrave;y đầu ti&ecirc;n l&agrave;m việc sẽ l&agrave; một trong những yếu tố giữ ch&acirc;n người t&agrave;i ở lại với c&ocirc;ng ty d&ugrave; &aacute;p lực c&ocirc;ng việc đ&ocirc;i khi l&agrave;m họ nản ch&iacute;. Việc được c&ocirc;ng ty đ&oacute;n tiếp chu đ&aacute;o sẽ khiến họ cảm k&iacute;ch v&agrave; th&ocirc;i th&uacute;c họ cố gắng hết m&igrave;nh để bắt nhịp với t&iacute;nh chuy&ecirc;n nghiệp của một m&ocirc;i trường mới.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\">Ngược lại, sự đ&oacute;n tiếp qua loa sẽ khiến c&aacute;c t&acirc;n binh hụt hẫng v&agrave; như vậy c&ocirc;ng ty cũng v&ocirc; t&igrave;nh l&agrave;m giảm động lực l&agrave;m việc một th&agrave;nh vi&ecirc;n mới đang tr&agrave;n đầy nhiệt huyết, g&acirc;y mất điểm của ch&iacute;nh m&igrave;nh trong h&agrave;nh tr&igrave;nh x&acirc;y dựng thương hiệu nh&agrave; tuyển dụng hấp dẫn.</span></span></span></p>\r\n\r\n<p style=\"margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\">Bạn c&oacute; t&ograve; m&ograve; về c&aacute;ch thức m&agrave; c&aacute;c &ldquo;đại gia c&ocirc;ng nghệ&rdquo; đ&oacute;n tiếp t&acirc;n binh trong ng&agrave;y đầu ti&ecirc;n ch&acirc;n ướt ch&acirc;n r&aacute;o gia nhập c&ocirc;ng ty?</span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b>Intel</b> ch&agrave;o đ&oacute;n nh&acirc;n vi&ecirc;n mới bằng c&aacute;ch trải thảm đỏ hằng qu&yacute;, theo đ&uacute;ng nghĩa đen. Trong ng&agrave;y đầu ti&ecirc;n đi l&agrave;m, họ sẽ bước v&agrave;o c&ocirc;ng ty tr&ecirc;n tấm thảm đỏ với hai b&ecirc;n l&agrave; đ&ocirc;ng đảo thợ ảnh v&agrave; nh&agrave; quay phim của Intel Studio. Sau đ&oacute;, nh&acirc;n vi&ecirc;n mới được giới thiệu l&ecirc;n s&acirc;n khấu v&agrave; nhận qu&agrave; ch&agrave;o mừng, k&egrave;m một tr&agrave;ng vỗ tay từ c&aacute;c đồng nghiệp đứng xung quanh.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b>Microsoft</b> nổi tiếng với truyền thống tặng rất nhiều kẹo ngọt cho t&acirc;n binh, đặc biệt l&agrave; những sản phẩm kẹo M&amp;M.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\">Như một truyền thống của <b>Google</b>, trong buổi họp to&agrave;n thể nh&acirc;n vi&ecirc;n diễn ra v&agrave;o thứ S&aacute;u, &ldquo;l&iacute;nh mới&rdquo; được y&ecirc;u cầu đội một chiếc mũ đặc biệt, c&oacute; gắn c&aacute;nh quạt ở ch&oacute;p, mang t&ecirc;n &ldquo;Nooglers&rdquo; thay cho lời ch&agrave;o.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\">Theo cuốn s&aacute;ch &ldquo;Inside <b>Apple</b>&rdquo;, mỗi nh&acirc;n vi&ecirc;n mới đến l&agrave;m việc cho &ldquo;t&aacute;o cắn dở&rdquo; đều được h&atilde;ng h&agrave;o ph&oacute;ng tặng miễn ph&iacute; một chiếc iMac. Vấn đề nằm ở chỗ, chiếc iMac n&agrave;y sẽ trống trơn, nh&acirc;n vi&ecirc;n cần tự m&igrave;nh c&agrave;i đặt n&oacute; từ A đến Z để c&oacute; thể sử dụng. B&ecirc;n cạnh đ&oacute;, nh&acirc;n vi&ecirc;n mới cũng sẽ được tham gia một buổi đ&agrave;o tạo định hướng. Tại đ&acirc;y, họ sẽ được tặng những chiếc &aacute;o T-Shirt với năm gia nhập <b>Apple </b>được in tr&ecirc;n đ&oacute;.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\">Mỗi nh&acirc;n vi&ecirc;n khi mới đến l&agrave;m việc tại <b>Amazon </b>đều nhận được phần qu&agrave; l&agrave; một chiếc b&agrave;n với mặt b&agrave;n được chế lại từ... một c&aacute;nh cửa. Trước đ&acirc;y, Amazon thậm ch&iacute; c&ograve;n bắt nh&acirc;n vi&ecirc;n của m&igrave;nh phải tự lắp gh&eacute;p ch&uacute;ng.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b>Dropbox</b> c&oacute; một c&aacute;ch đ&atilde;i ngộ nh&acirc;n vi&ecirc;n mới rất &quot;c&acirc;y nh&agrave; l&aacute; vườn&quot; khi cấp cho mỗi người một t&agrave;i khoản Dropbox với dung lượng lưu trữ kh&ocirc;ng giới hạn, gi&aacute; trị của t&agrave;i khoản n&agrave;y kh&ocirc;ng hề nhỏ.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\">Tại <b>Facebook</b>, khi Mark Zurkerberg muốn tuyển dụng một nh&acirc;n vi&ecirc;n mới về l&agrave;m việc cho Facebook, đ&iacute;ch th&acirc;n anh sẽ dẫn người n&agrave;y đi &ldquo;phượt&rdquo; trong rừng một chuyến v&agrave; Zuckerberg sẽ trao đổi với ứng vi&ecirc;n tiềm năng về tầm nh&igrave;n ph&aacute;t triển của anh đối với Facebook.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b>Linkedln</b> tặng mỗi t&acirc;n binh một t&uacute;i qu&agrave; gồm rất nhiều m&oacute;n đồ th&uacute; vị như chai đựng nước, sổ tay v&agrave; một ấn bản của cuốn s&aacute;ch &ldquo;The Startup of You&rdquo; do ch&iacute;nh người s&aacute;ng lập mạng x&atilde; hội n&agrave;y viết, thậm ch&iacute; phần qu&agrave; n&agrave;y c&ograve;n được điều chỉnh cho ph&ugrave; hợp với sở th&iacute;ch của mỗi c&aacute; nh&acirc;n.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\">Đối với những t&acirc;n binh ng&agrave;y đầu ti&ecirc;n đến l&agrave;m việc tại <b>Twitter</b>, tất cả sẽ được nhận một chiếc &aacute;o T-shirt c&ugrave;ng một chai rượu. Một số người c&ograve;n được d&ugrave;ng bữa s&aacute;ng c&ugrave;ng chủ tịch tập đo&agrave;n Dick Costolo.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\">Vậy <b>CMC</b> đ&atilde; ghi điểm với t&acirc;n binh như thế n&agrave;o trong ng&agrave;y đầu ti&ecirc;n l&agrave;m việc?</span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b>CMC</b> coi trọng nguồn lực con người. Tại đ&acirc;y, mỗi vị tr&iacute; tuyển dụng kh&ocirc;ng chỉ đơn giản l&agrave; một cơ hội việc l&agrave;m m&agrave; c&ograve;n l&agrave; sự hi vọng, niềm tự h&agrave;o về một nh&acirc;n tố t&agrave;i năng đối với sự ph&aacute;t triển tại c&ocirc;ng ty. Ch&iacute;nh v&igrave; thế, CMC lu&ocirc;n d&agrave;nh sự ưu &aacute;i đặc biệt cho những t&acirc;n binh mới.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\">C&aacute;c t&acirc;n binh tại CMC cảm thấy rất bất ngờ v&agrave; th&iacute;ch th&uacute; trong ng&agrave;y đầu ti&ecirc;n l&agrave;m việc. Anh Bạch Tuấn Vũ (Giảng vi&ecirc;n Kỹ năng mềm), một t&acirc;n binh mới thuộc Trung t&acirc;m Ph&aacute;t triển nguồn lực, CMC Corp hớn hở checkin g&oacute;c l&agrave;m việc mới tại CMC tr&ecirc;n trang Facebook c&aacute; nh&acirc;n trong ng&agrave;y on-board.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><i>&nbsp;</i>B&agrave;n l&agrave;m việc của t&acirc;n binh CMC được Ban Nh&acirc;n sự v&agrave; bộ phận H&agrave;nh ch&iacute;nh, Văn ph&ograve;ng Tập đo&agrave;n chuẩn bị sẵn s&agrave;ng laptop, điện thoại, thẻ nh&acirc;n vi&ecirc;n, sổ tay, lịch, &aacute;o đồng phục, văn ph&ograve;ng phẩm v&agrave; lu&ocirc;n k&egrave;m theo một lọ hoa tươi, một tấm thiệp ch&agrave;o mừng &hellip;</span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\">Kh&ocirc;ng những thế, bao nhi&ecirc;u lạ lẫm v&acirc;y quanh tại một nơi l&agrave;m việc mới sẽ được xua tan bởi cuộc tr&ograve; chuyện l&agrave;m quen giữa t&acirc;n binh v&agrave; c&aacute;c th&agrave;nh vi&ecirc;n cũ trong gia đ&igrave;nh, đ&ocirc;i khi người CMC ch&agrave;o đ&oacute;n nh&acirc;n sự mới với một bữa tiệc ngọt, một m&agrave;n &ldquo;hỏi xo&aacute;y đ&aacute;p xoay&rdquo; đầy tếu t&aacute;o,&hellip;</span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\">&ldquo;Ch&eacute;m gi&oacute;&rdquo; với CEO c&oacute; thể l&agrave; điều c&aacute;c t&acirc;n binh kh&ocirc;ng thể tin v&agrave;o mắt m&igrave;nh trước ng&agrave;y đầu ti&ecirc;n l&agrave;m việc. Nhưng tại CMC, điều đ&oacute; c&oacute; thật. Anh Nguyễn Trung Ch&iacute;nh &ndash; Chủ tịch HĐQT/TGĐ CMC thường d&agrave;nh &iacute;t nhất 30 ph&uacute;t để tr&ograve; chuyện với c&aacute;c nh&acirc;n sự mới trong kh&oacute;a đ&agrave;o tạo nhập m&ocirc;n Orientation. Sau kh&oacute;a học n&agrave;y, c&aacute;c t&acirc;n binh được săn s&oacute;c đặc biệt với phần cơm trưa miễn ph&iacute; tại nh&agrave; h&agrave;ng CMC Innovation Center.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\">Người CMC y&ecirc;u CMC ngay từ lần gặp gỡ đầu ti&ecirc;n, c&oacute; lẽ v&igrave; lẽ đ&oacute;&hellip;</span></span></span></p>\r\n','',4),(17,'Những vấn đề \"nhức nhối\" mà nhà tuyển dụng  gặp phải mỗi đợt \"chiêu binh\"','','1517571772199.png','Người ngoài nhìn vào luôn lầm tưởng rằng ứng viên là người duy nhất phải đối mặt với áp lực và rắc rối khi tham gia tuyển dụng còn nhà tuyển dụng thì thoải mái “ngồi mát ăn bát vàng”, ung dung chọn được ứng viên xuất sắc. Nhưng chỉ có người trong cuộc mới thấu hiểu sự thật là nhà tuyển dụng cũng “đau đầu” không kém ở mỗi đợt “chiêu quân”.','','<ol>\r\n	<li style=\"text-align:justify; margin:0cm 0cm 8pt; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:130%\"><span style=\"tab-stops:list 18.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><span style=\"font-size:10.0pt\"><span style=\"line-height:130%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Ứng vi&ecirc;n tốt th&igrave; lu&ocirc;n &ldquo;đắt như t&ocirc;m tươi&rdquo;.</span></span></span></span></b></span></span></span></span></span></li>\r\n</ol>\r\n\r\n<p style=\"margin-bottom:7.5pt; text-align:justify; margin:0cm 0cm 8pt; margin-right:0cm; margin-left:0cm\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:130%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:130%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Những ứng vi&ecirc;n đ&aacute;p ứng đầy đủ c&aacute;c y&ecirc;u cầu tuyển dụng, s&aacute;ng gi&aacute; v&agrave; tiềm năng thường theo đuổi nhiều cơ hội. Họ &yacute; thức m&igrave;nh l&agrave; ai v&agrave; hiểu r&otilde; ch&acirc;n l&yacute; &ldquo;kh&ocirc;ng đặt tất cả trứng v&agrave; một rổ&rdquo;. V&igrave; vậy, doanh nghiệp, theo một c&aacute;ch hiểu n&agrave;o đ&oacute;, nghiễm nhi&ecirc;n trở th&agrave;nh &ldquo;ứng vi&ecirc;n&rdquo; v&agrave; bị đưa l&ecirc;n b&agrave;n để c&acirc;n đo đong đếm. Vậy doanh nghiệp n&ecirc;n l&agrave;m g&igrave; để &ldquo;được tuyển&rdquo;?</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-bottom:7.5pt; text-align:justify; margin:0cm 0cm 8pt; margin-right:0cm; margin-left:0cm\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:130%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:130%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">C&acirc;u trả lời l&agrave; h&atilde;y biến buổi phỏng vấn trở th&agrave;nh một trải nghiệm tuyệt vời. Khi ứng vi&ecirc;n đứng trước nhiều lựa chọn, yếu tố then chốt để họ đưa ra quyết định đến từ buổi phỏng vấn. Nhiều nghi&ecirc;n cứu đ&atilde; chỉ ra v&agrave;i điểm quan trọng m&agrave; &ldquo;cuộc phỏng vấn điểm 10&rdquo; n&ecirc;n đ&aacute;p ứng:</span></span></span></span></span></span></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"color:black\"><span style=\"line-height:130%\"><span style=\"tab-stops:list 36.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:130%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Gi&uacute;p ứng vi&ecirc;n giải đ&aacute;p thỏa đ&aacute;ng những vấn đề li&ecirc;n quan đến hoạt động kinh doanh v&agrave; định hướng ph&aacute;t triển của c&ocirc;ng ty.</span></span></span></span></span></span></span></span></span></li>\r\n	<li style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"color:black\"><span style=\"line-height:130%\"><span style=\"tab-stops:list 36.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:130%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Đừng l&agrave;m cuộc phỏng vấn trở th&agrave;nh buổi &ldquo;thẩm vấn&rdquo;. H&atilde;y để buổi phỏng vấn trở th&agrave;nh cuộc trao đổi hai chiều &ndash; nơi đ&ocirc;i b&ecirc;n được n&oacute;i v&agrave; được lắng nghe.</span></span></span></span></span></span></span></span></span></li>\r\n	<li style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"color:black\"><span style=\"line-height:130%\"><span style=\"tab-stops:list 36.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:130%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Sự xuất hiện của quản l&yacute; cấp cao sẽ l&agrave;m cuộc phỏng vấn &ldquo;đẳng cấp&rdquo; hơn. Ngay cả khi vị l&atilde;nh đạo đ&oacute; chỉ xuất hiện để mở đầu hoặc kết th&uacute;c buổi phỏng vấn th&igrave; điều n&agrave;y cũng l&agrave;m cho ứng vi&ecirc;n h&agrave;i l&ograve;ng hơn rất nhiều.</span></span></span></span></span></span></span></span></span></li>\r\n</ul>\r\n\r\n<ol start=\"2\">\r\n	<li style=\"margin:0cm 0cm 8pt; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:130%\"><span style=\"tab-stops:list 18.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><span style=\"font-size:10.0pt\"><span style=\"line-height:130%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Thị trường lao động ng&agrave;y nay qu&aacute; x&ocirc; bồ.</span></span></span></span></b></span></span></span></span></span></li>\r\n</ol>\r\n\r\n<p style=\"margin-bottom:7.5pt; text-align:justify; margin:0cm 0cm 8pt; margin-right:0cm; margin-left:0cm\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:130%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:130%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Th&aacute;ch thức lớn nhất của c&aacute;c nh&agrave; tuyển dụng hiện nay l&agrave; tiếp cận được với ứng vi&ecirc;n tiềm năng trong điều kiện thị trường lu&ocirc;n c&oacute; khoảng hơn 2000 doanh nghiệp c&ugrave;ng ng&agrave;nh đăng th&ocirc;ng c&aacute;o tuyển dụng tương tự.</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-right:-4.5pt; text-align:justify; margin:0cm 0cm 8pt; margin-left:0cm\"><span style=\"font-size:11pt\"><span style=\"line-height:130%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"background:white\"><span style=\"line-height:130%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">T&iacute;nh ri&ecirc;ng ng&agrave;nh IT, một ng&agrave;nh đang ở giai đoạn &ldquo;kh&aacute;t&rdquo; nh&acirc;n sự đỉnh điểm. Nhu cầu ng&agrave;nh n&agrave;y hiện đang ở mức cao nhất trong lịch sử v&agrave; sẽ tiếp tục tăng cao hơn trong những năm tới. Trước cuối năm 2018, thị trường sẽ cần tới 400 000 nh&acirc;n lực ng&agrave;nh IT, nhưng cho tới thời điểm hi&ecirc;n tại, chỉ c&oacute; khoảng 250 000 kỹ sư đang l&agrave;m việc trong ng&agrave;nh. Vậy, bằng c&aacute;ch n&agrave;o ch&uacute;ng ta chi&ecirc;u m&ocirc; được 150 000 nh&acirc;n t&agrave;i khi 2000 đối thủ kh&aacute;c cũng đang săn l&ugrave;ng họ?</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-bottom:7.5pt; text-align:justify; margin:0cm 0cm 8pt; margin-right:0cm; margin-left:0cm\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:130%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:130%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Để giải quyết vấn đề n&agrave;y, doanh nghiệp cần x&acirc;y dựng thương hiệu vững mạnh v&agrave; uy t&iacute;n. Ch&uacute;ng ta kh&ocirc;ng thể buộc c&aacute;c doanh nghiệp kh&aacute;c ngừng đăng tin nhưng c&oacute; thể l&agrave;m c&ocirc;ng ty m&igrave;nh nổi bật nhất trong cả ng&agrave;n th&ocirc;ng b&aacute;o tuyển dụng tr&ecirc;n thị trường. Khi thương hiệu c&ocirc;ng ty đủ mạnh, c&aacute;c anh t&agrave;i bậc nhất sẽ tự t&igrave;m về với ch&uacute;ng ta v&agrave; chấm dứt những ng&agrave;y th&aacute;ng ch&uacute;ng ta phải chạy khắp nơi v&agrave; &ldquo;đỏ mắt&rdquo; t&igrave;m nh&acirc;n t&agrave;i.</span></span></span></span></span></span></span></span></p>\r\n\r\n<ol start=\"3\">\r\n	<li style=\"text-align:justify; margin:0cm 0cm 8pt; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:130%\"><span style=\"tab-stops:list 18.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><span style=\"font-size:10.0pt\"><span style=\"line-height:130%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Bắc thang l&ecirc;n hỏi &ocirc;ng trời &ldquo;T&igrave;m người t&agrave;i &ndash; đức biết ở nơi nao?&rdquo;</span></span></span></span></b></span></span></span></span></span></li>\r\n</ol>\r\n\r\n<p style=\"margin-bottom:7.5pt; text-align:justify; margin:0cm 0cm 8pt; margin-right:0cm; margin-left:0cm\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:130%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:130%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Lao động tr&ecirc;n thị trường như &ldquo;l&aacute; rụng m&ugrave;a thu&rdquo; nhưng ứng vi&ecirc;n tiềm năng lại như &ldquo;l&aacute; m&ugrave;a thu&rdquo;. C&ocirc;ng cuộc t&igrave;m kiếm người sở hữu đủ c&aacute;c kỹ năng, kinh nghiệm để đ&aacute;p ứng y&ecirc;u cầu tuyển dụng của doanh nghiệp thật gian nan v&ocirc; c&ugrave;ng. Thậm ch&iacute;, gần đ&acirc;y dư luận x&ocirc;n xao về một th&ocirc;ng b&aacute;o tuyển dụng với mức lương $5000 cho vị tr&iacute; quản l&yacute; cấp trung tại thị trường Việt Nam nhưng cũng chỉ nhận về sự trắng tay.</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin:0cm; margin-bottom:.0001pt; text-align:justify; margin-right:0cm; margin-left:0cm\"><span style=\"font-size:12pt\"><span style=\"line-height:130%\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:130%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Nhiều ứng vi&ecirc;n tuy&ecirc;n bố, họ kh&ocirc;ng bao giờ đi &quot;xin việc&quot;. Đ&uacute;ng, c&oacute; lẽ ch&uacute;ng ta n&ecirc;n thay thế n&oacute; bằng&nbsp;&ldquo;ứng tuyển&rdquo;. Tại sao lại phải xin việc, bởi v&igrave; thật sự l&agrave; kh&ocirc;ng ai xin hay cho ai thứ g&igrave; cả.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin:0cm; margin-bottom:.0001pt; text-align:justify; margin-right:0cm; margin-left:0cm\"><span style=\"font-size:12pt\"><span style=\"line-height:130%\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:130%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Người ứng tuyển nếu được tuyển dụng sẽ b&aacute;n sức lao động cho nh&agrave; tuyển dụng, mối quan hệ giữa người l&agrave;m việc v&agrave; người giao việc thực ra l&agrave; mua b&aacute;n sức lao động v&agrave; quy đổi sức lao động ra tiền.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin:0cm; margin-bottom:.0001pt; text-align:justify; margin-right:0cm; margin-left:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin:0cm; margin-bottom:.0001pt; text-align:justify; margin-right:0cm; margin-left:0cm\"><span style=\"font-size:12pt\"><span style=\"line-height:130%\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:130%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Qu&aacute; tr&igrave;nh tuyển dụng hiện nay l&agrave; sự t&igrave;m kiếm từ hai ph&iacute;a, doanh nghiệp t&igrave;m kiếm nh&acirc;n t&agrave;i, ứng vi&ecirc;n t&igrave;m kiếm những cơ hội. Ứng vi&ecirc;n t&igrave;m kiếm th&ocirc;ng tin tuyển dụng tại c&aacute;c website, b&aacute;o ch&iacute;, hội chợ việc l&agrave;m v&agrave; rất nhiều k&ecirc;nh truyền th&ocirc;ng kh&aacute;c. Như đ&atilde; n&oacute;i ở tr&ecirc;n, họ c&oacute; qu&aacute; nhiều sự lựa chọn. Ngược lại, nh&agrave; tuyển dụng th&igrave; lu&ocirc;n đau đầu để t&igrave;m kiếm c&acirc;u trả lời &ldquo;T&igrave;m người t&agrave;i &ndash; đức biết ở nơi nao?&rdquo;</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Vấn đề n&agrave;y c&oacute; thể được giải quyết bằng c&aacute;ch sử dụng những kho dữ liệu uy t&iacute;n để t&igrave;m kiếm th&ocirc;ng tin về ứng vi&ecirc;n; sau đ&oacute; nh&agrave; tuyển dụng chủ động li&ecirc;n lạc v&agrave; &ldquo;k&iacute;ch cầu&rdquo; đối với c&aacute;c ứng vi&ecirc;n tiềm năng. Ngo&agrave;i ra, doanh nghiệp cũng c&oacute; thể sử dụng dịch vụ của c&aacute;c c&ocirc;ng ty &ldquo;săn đầu người&rdquo;, t&igrave;m kiếm ứng vi&ecirc;n nội bộ, &aacute;p dụng ch&iacute;nh s&aacute;ch thưởng giới thiệu ứng vi&ecirc;n d&agrave;nh cho CBNV,&hellip; Quan trọng nhất, nh&agrave; tuyển dụng cần c&oacute; c&aacute;ch thức lưu trữ th&ocirc;ng tin, vận h&agrave;nh database talent pool v&agrave; chăm s&oacute;c c&aacute;c ứng vi&ecirc;n cũ, bởi đ&oacute; ch&iacute;nh l&agrave; một loại t&agrave;i sản v&ocirc; c&ugrave;ng gi&aacute; trị của doanh nghiệp.</span></span></span></span></p>\r\n','',4),(18,'Hội chứng Zombie công sở','','1517571819255.png','Tại Việt Nam, trong số hơn 26.000 cán bộ nhân viên hiện đang làm việc trong các tổ chức, chỉ có 13,8% rất gắn kết với công ty, 46,9% tương đối gắn kết, còn lại 39% không gắn kết. Những nhân viên không gắn kết, không nỗ lực, nhưng cũng không chịu nghỉ việc gây ảnh hưởng trầm trọng đến năng suất lao động và văn hóa của doanh nghiệp, dẫn đến tình trạng doanh nghiệp hoạt động kém hiệu quả. Dấu hiệu bệnh lý nghiêm trọng ở các đối tượng này được hình tượng hóa với hình ảnh “Zombie công sở”.','','<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">7 dạng &ldquo;Zombie c&ocirc;ng sở&rdquo;</span></span></span></b></span></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify; margin:0cm 0cm 0.0001pt 36pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Look like busy: Lu&ocirc;n tỏ vẻ bận rộn, nhưng to&agrave;n l&agrave;m những việc &iacute;t quan trọng.</span></span></span></span></span></span></li>\r\n	<li style=\"text-align:justify; margin:0cm 0cm 0.0001pt 36pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Mr Right: L&uacute;c n&agrave;o cũng &ldquo;đ&uacute;ng&rdquo; v&igrave; lu&ocirc;n c&oacute; l&yacute; do (ngo&agrave;i bản th&acirc;n) để biện hộ/đổ lỗi cho kết quả chưa như &yacute;.</span></span></span></span></span></span></li>\r\n	<li style=\"text-align:justify; margin:0cm 0cm 0.0001pt 36pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Mrs Know it all: Kh&ocirc;ng chịu lắng nghe v&agrave; học hỏi v&igrave; cho rằng, m&igrave;nh &ldquo;biết tuốt&rdquo; v&agrave; &ldquo;đ&atilde; qu&aacute; giỏi cho c&ocirc;ng việc&rdquo;.</span></span></span></span></span></span></li>\r\n	<li style=\"text-align:justify; margin:0cm 0cm 0.0001pt 36pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Yes Employee: Lu&ocirc;n n&oacute;i &ldquo;c&oacute;&rdquo; với c&aacute;c y&ecirc;u cầu từ sếp m&agrave; thực chất kh&ocirc;ng hiểu, kh&ocirc;ng quan t&acirc;m, kh&ocirc;ng cần hỏi &quot;tại sao, để l&agrave;m g&igrave;?&quot;.</span></span></span></span></span></span></li>\r\n	<li style=\"text-align:justify; margin:0cm 0cm 0.0001pt 36pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">No boss: &Acirc;m thầm &ldquo;kh&ocirc;ng&rdquo; ph&aacute;t triển v&agrave; &ldquo;kh&ocirc;ng&rdquo; sẵn s&agrave;ng chia sẻ th&ocirc;ng tin, cơ hội để gi&uacute;p người kh&aacute;c th&agrave;nh c&ocirc;ng.</span></span></span></span></span></span></li>\r\n	<li style=\"text-align:justify; margin:0cm 0cm 0.0001pt 36pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Silent resistor: Trong ngo&agrave;i bất nhất. Ngo&agrave;i mặt th&igrave; ủng hộ, nhưng trong l&ograve;ng th&igrave; kh&aacute;ng cự.</span></span></span></span></span></span></li>\r\n	<li style=\"text-align:justify; margin:0cm 0cm 8pt 36pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Lip service: N&oacute;i hay hơn l&agrave;m, chọn KPI đại kh&aacute;i v&agrave; thường đem lại kết quả kh&ocirc;ng r&otilde; r&agrave;ng.</span></span></span></span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">&ldquo;Zombie c&ocirc;ng sở&rdquo; thật hay ảo?</span></span></span></b></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Anphabe, nh&agrave; tư vấn thương hiệu tuyển dụng v&agrave; m&ocirc;i trường l&agrave;m việc h&agrave;ng đầu tại Việt Nam, vừa c&ocirc;ng bố kết quả khảo s&aacute;t về t&igrave;nh trạng &ldquo;zombie c&ocirc;ng sở&rdquo;. Theo đ&oacute;, trong số hơn 26.000 c&aacute;n bộ nh&acirc;n vi&ecirc;n hiện đang l&agrave;m việc trong c&aacute;c tổ chức tại Việt Nam, chỉ c&oacute; 13,8% rất gắn kết với c&ocirc;ng ty, 46,9% gắn kết, c&ograve;n lại 39% kh&ocirc;ng gắn kết, 36,8% thờ ơ v&agrave; 2,5% rất kh&ocirc;ng gắn kết. Đ&aacute;ng ch&uacute; &yacute;, trong số 39% nh&acirc;n sự thờ ơ c&oacute; tới 67% cho biết sẽ b&aacute;m trụ lại c&ocirc;ng ty. Họ l&agrave; những người đi l&agrave;m nhưng kh&ocirc;ng nỗ lực l&agrave;m việc, kh&ocirc;ng c&oacute; &yacute; định thay đổi c&ocirc;ng việc, ch&iacute;nh điều n&agrave;y sẽ &ldquo;hạ gục&rdquo; những nh&acirc;n vi&ecirc;n kh&aacute;c bằng th&aacute;i độ v&agrave; h&agrave;nh vi ti&ecirc;u cực.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Trung b&igrave;nh cứ bốn nh&acirc;n vi&ecirc;n trong DN th&igrave; c&oacute; một &ldquo;zombie c&ocirc;ng sở&rdquo;. Hội chứng n&agrave;y phổ biến tr&ecirc;n thế giới với mức trung b&igrave;nh 25%. Đ&aacute;ng b&aacute;o động hơn, nh&oacute;m đối tượng mắc hội chứng Zombie chủ yếu l&agrave; c&aacute;c bạn trẻ nằm trong độ tuổi từ 19 đến 31.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Hội chứng Zombie c&ocirc;ng sở lu&ocirc;n tồn tại trong mỗi người, do &ldquo;khuẩn Z&rdquo; g&acirc;y n&ecirc;n. Trong cơ thể ch&uacute;ng ta đều c&oacute; sự hiện diện của &ldquo;khuẩn Z&rdquo;. Ở điều kiện b&igrave;nh thường, n&oacute; kh&aacute; im l&igrave;m, yếu ớt. Tuy nhi&ecirc;n, nếu gặp m&ocirc;i trường thuận lợi, &ldquo;khuẩn Z&rdquo; sẽ sinh s&ocirc;i nhanh ch&oacute;ng. Tới một mức độ nhất định, nh&acirc;n vi&ecirc;n sẽ c&oacute; dấu hiệu r&otilde; r&agrave;ng của hội chứng Zombie.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">M&ocirc;i trường thuận lợi được đề cập trong trường hợp n&agrave;y đến từ cả hai ph&iacute;a, nh&acirc;n sự do kh&ocirc;ng đủ sức khỏe, cả sức khỏe thể chất hoặc tinh thần v&agrave; m&ocirc;i trường l&agrave;m việc khi họ cảm thấy kh&ocirc;ng h&agrave;i l&ograve;ng hoặc kh&ocirc;ng được hỗ trợ đầy đủ về c&aacute;c phương diện của m&ocirc;i trường l&agrave;m việc hạnh ph&uacute;c.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Từ tr&aacute;i tim đến tr&aacute;i tim- b&agrave;i thuốc điều trị &ldquo;Zombie c&ocirc;ng sở&rdquo;</span></span></span></b></span></span></span></p>\r\n\r\n<p style=\"margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">T&aacute;i gắn kết Zombie, tối đa khả năng thực sự của nh&acirc;n vi&ecirc;n v&agrave; giảm thiểu thất tho&aacute;t đ&aacute;ng tiếc l&agrave; mục ti&ecirc;u của c&aacute;c l&atilde;nh đạo doanh nghiệp, đặc biệt l&agrave; người phụ tr&aacute;ch nh&acirc;n sự.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">&Ocirc;ng L&ecirc; Qu&yacute; Đ&ocirc;n, Gi&aacute;m đốc nh&acirc;n sự cấp cao, C&ocirc;ng ty TNHH Nh&agrave; m&aacute;y bia Heineken Việt Nam chia sẻ, KPI (hệ thống đo lường v&agrave; đ&aacute;nh gi&aacute; hiệu quả c&ocirc;ng việc) c&oacute; thể đ&aacute;nh gi&aacute; mức độ ho&agrave;n th&agrave;nh của nh&acirc;n vi&ecirc;n, nhưng họ chỉ thực sự c&oacute; tr&aacute;ch nhiệm khi xem c&ocirc;ng ty như một gia đ&igrave;nh.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">&ldquo;Nếu đi đến được tr&aacute;i tim của nh&acirc;n vi&ecirc;n, th&igrave; họ sẽ l&agrave;m việc bằng cả tr&aacute;i tim, chứ kh&ocirc;ng chỉ từ khối &oacute;c. Để chạm đến được tr&aacute;i tim người kh&aacute;c th&igrave; mọi h&agrave;nh động phải xuất ph&aacute;t từ tr&aacute;i tim của m&igrave;nh. Ch&uacute;ng t&ocirc;i x&aacute;c định, khi nh&acirc;n vi&ecirc;n b&agrave;y tỏ nhu cầu, th&igrave; lắng nghe, c&acirc;n nhắc đ&aacute;p ứng y&ecirc;u cầu dựa tr&ecirc;n thực tế. Trong những hoạt động tập thể, gia đ&igrave;nh của nh&acirc;n vi&ecirc;n được tham gia để tăng gắn kết&rdquo;, &ocirc;ng Đ&ocirc;n chia sẻ.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Kết quả khảo s&aacute;t năm 2016 của Heineken cho thấy, chỉ số gắn kết người lao động tại Heineken Việt Nam đạt 87% (cao hơn mức 9% ti&ecirc;u chuẩn của Tập đo&agrave;n v&agrave; cao hơn chỉ số c&aacute;c c&ocirc;ng ty kh&aacute;c, 16%); chỉ số hiệu suất đạt 86%, trong khi Heineken to&agrave;n cầu chỉ đạt 78%.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">C&ograve;n tại Suntory Pepsico Việt Nam, b&agrave; Văn Thị Anh Thư, Ph&oacute; chủ tịch nh&acirc;n sự cấp cao cho biết, họ c&oacute; những buổi trao đổi trực tiếp giữa l&atilde;nh đạo cấp cao với nh&acirc;n vi&ecirc;n thay v&igrave; th&ocirc;ng qua ban gi&aacute;m đốc, quản l&yacute; cấp trung. Theo đại diện n&agrave;y, nh&acirc;n sự lu&ocirc;n muốn nh&igrave;n thấy c&ocirc;ng sức mỗi ng&agrave;y của m&igrave;nh đ&oacute;ng g&oacute;p&nbsp; cho tổ chức. Nếu nhu cầu n&agrave;y kh&ocirc;ng được đ&aacute;p ứng, sự gắn kết sẽ kh&oacute; tồn tại.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">&ldquo;Một nh&acirc;n vi&ecirc;n l&agrave;m nhiệm vụ đ&oacute;ng g&oacute;i c&oacute; thể thấy nh&agrave;m ch&aacute;n, nhưng khi họ hiểu, điều n&agrave;y quan trọng với chất lượng sản phẩm của C&ocirc;ng ty th&igrave; &ldquo;vi khuẩn Z&rdquo; kh&ocirc;ng c&oacute; cơ hội ph&aacute;t triển. Việc tiếp x&uacute;c, trao đổi với nh&acirc;n vi&ecirc;n gi&uacute;p l&atilde;nh đạo nhận ra &ldquo;vi khuẩn Z&rdquo; tồn tại trong nh&acirc;n vi&ecirc;n đ&oacute; hay kh&ocirc;ng, cũng như giữ vững niềm tin cho nh&acirc;n vi&ecirc;n&rdquo;, b&agrave; Anh Thư n&oacute;i.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">&ldquo;Zombie c&ocirc;ng sở&rdquo; - Điều trị m&agrave; kh&ocirc;ng được th&igrave; chia tay</span></span></span></b></span></span></span></p>\r\n\r\n<p style=\"margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Nếu b&agrave;i thuốc &ldquo;Từ tr&aacute;i tim đến tr&aacute;i tim&rdquo; kh&ocirc;ng mang lại hiệu quả, h&atilde;y &ldquo;Thay đổi chiến tuyến&rdquo;. Tức l&agrave; chuyển nh&acirc;n vi&ecirc;n Zombie sang một chiến tuyến mới, vị tr&iacute; thử th&aacute;ch hơn, kh&oacute; khăn hơn nhưng kh&ocirc;ng thay đổi thu nhập. Khi th&ecirc;m việc m&agrave; kh&ocirc;ng th&ecirc;m lương, khả năng cao nh&acirc;n vi&ecirc;n Zombie sẽ tự quyết định nghỉ việc. Trong trường hợp t&iacute;ch cực hơn, biện ph&aacute;p mạnh n&agrave;y c&oacute; thể lại l&agrave; giải ph&aacute;p để nh&acirc;n vi&ecirc;n c&oacute; động lực l&agrave;m việc tốt trở lại.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Sau hai c&aacute;ch tr&ecirc;n, trường hợp &ldquo;Zombie c&ocirc;ng sở&rdquo; vẫn tiếp tục ho&agrave;nh h&agrave;nh th&igrave; buộc l&ograve;ng c&ocirc;ng ty phải n&oacute;i lời chia tay (sa thải). Người quản l&yacute; trực tiếp v&agrave; bộ phận Nh&acirc;n sự sẽ trao đổi thẳng thắn với nh&acirc;n vi&ecirc;n về quyết định chia tay, hỗ trợ họ t&igrave;m được một c&ocirc;ng việc ph&ugrave; hợp hơn hoặc v&agrave; đề xuất khoản phụ cấp th&ocirc;i việc theo quy định của ph&aacute;p luật lao động.</span></span></span></p>\r\n','',4),(19,'Quản trị nhân tài đa thế hệ','','1517571901105.png','Sự khác biệt thế hệ có thể tạo nên những căng thẳng không mong muốn trong môi trường làm việc. Các nhân viên kỳ cựu nhìn “những anh chàng/cô nàng trẻ tuổi mới đến” như kẻ dễ dàng được đặc quyền, đặc lợi và thiếu kiên nhẫn. Còn thế hệ trẻ thì thấy đồng nghiệp lớn tuổi hơn đang cản trở đường đi của họ, e ngại những thay đổi mà họ đang mang lại cho doanh nghiệp.\r\nTuy nhiên, mỗi thế hệ đều có những điểm mạnh, điểm yếu khác nhau. Nhận diện đúng, thấu hiểu những đặc điểm này việc quản lý nhân tài đa th','','<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Hiện nay, phần lớn c&aacute;c c&ocirc;ng ty đang c&oacute; 3 thế hệ l&agrave;m việc song song: baby boomer (BB, sinh ra trong giai đoạn 1945-1964), thế hệ X (1965 - 1979), thế hệ Y (1980 - 1994) v&agrave; chuẩn bị đ&oacute;n thế hệ Z (từ 1995 trở đi). Với qu&aacute; tr&igrave;nh trưởng th&agrave;nh kh&aacute;c biệt, thế hệ Y c&oacute; nhiều điểm kh&aacute;c về c&aacute;ch nghĩ, c&aacute;ch l&agrave;m so với c&aacute;c thế hệ đi trước, c&oacute; tới 85% doanh nghiệp thừa nhận rằng c&ocirc;ng ty của họ đang diễn ra &ldquo;cuộc chiến ngầm&rdquo; giữa c&aacute;c thế hệ, đặc biệt khi thế hệ Z (2001 trở đi) sắp gia nhập nguồn nh&acirc;n lực.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><i><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Kh&aacute;c biệt như sao Hỏa, sao Kim&hellip;</span></span></span></i></b></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Gi&aacute;m đốc Điều h&agrave;nh (Gen X) của một Tập đo&agrave;n đa quốc gia t&acirc;m sự, anh thực sự cảm thấy rất kh&oacute; chịu khi mỗi s&aacute;ng bước v&agrave;o c&ocirc;ng ty, anh lu&ocirc;n l&agrave; người &ldquo;say hello&rdquo; trước với nh&acirc;n vi&ecirc;n. Kh&ocirc;ng những vậy, khi anh viết email gửi cho nh&acirc;n vi&ecirc;n của m&igrave;nh thuộc thế hệ Gen Y rất chỉn chu, trang trọng th&igrave; họ lại phản hồi anh chỉ với một từ &ldquo;OK&rdquo;. </span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Sếp lớn một tập đo&agrave;n kh&aacute;c c&ograve;n đau đầu hơn khi trong mỗi cuộc họp b&agrave;n dự &aacute;n mới, 2 thế hệ Gen X v&agrave; Gen Y lu&ocirc;n tranh luận nảy lửa. Trong khi Gen X lu&ocirc;n thận trọng với phương ch&acirc;m nếu kh&ocirc;ng thắng cũng đừng để thua th&igrave; Gen Y lu&ocirc;n đưa ra những kế hoạch đầy mạo hiểm &ldquo;một thắng hai thua&rdquo; hoặc &ldquo;được ăn cả ng&atilde; về kh&ocirc;ng&rdquo;. Tai hại hơn, Gen Y &ldquo;hồn nhi&ecirc;n&rdquo; cho rằng, nếu kế hoạch c&oacute; thất bại th&igrave; mọi hậu quả đ&atilde; c&oacute;&hellip; c&ocirc;ng ty giải quyết.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Theo khảo s&aacute;t của Anphabe, giữa 2 thế hệ X v&agrave; Y c&oacute; sự kh&aacute;c biệt cả về kiến thức v&agrave; kỹ năng. Nếu Gen Y c&oacute; kiến thức rộng v&igrave; được song h&agrave;nh trong thời đại b&ugrave;ng nổ c&ocirc;ng nghệ số th&igrave; Gen X c&oacute; kiến thức s&acirc;u nhờ thu thập từ nhiều trải nghiệm đa dạng v&agrave; phong ph&uacute;. </span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Trong khi thế hệ X lu&ocirc;n suy nghĩ &ldquo;an to&agrave;n&rdquo;, những &yacute; tưởng được đưa ra dựa tr&ecirc;n kinh nghiệm thực tế v&agrave; b&aacute;m s&aacute;t t&igrave;nh h&igrave;nh kinh doanh của c&ocirc;ng ty th&igrave; Y lại c&oacute; sức s&aacute;ng tạo tuyệt vời, kh&ocirc;ng thiếu những &yacute; tưởng đột ph&aacute;, d&ugrave; đ&ocirc;i khi &ldquo;tr&ecirc;n m&acirc;y tr&ecirc;n gi&oacute;&rdquo;.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Th&aacute;i độ v&agrave; c&aacute;ch thức l&agrave;m việc giữa 2 thế hệ cũng c&oacute; nhiều điểm kh&aacute;c nhau. Gen X kh&aacute; thận trọng trong c&aacute;c quyết định. V&iacute; dụ họ sẽ kh&ocirc;ng nhảy việc khi chưa t&igrave;m được c&ocirc;ng việc mới. Điều n&agrave;y ho&agrave;n to&agrave;n ngược lại với c&aacute;c bạn trẻ Gen Y họ sẵn s&agrave;ng nhảy việc nếu thấy hết vui, hết hứng th&uacute;&hellip; Đ&acirc;y cũng l&agrave; nh&oacute;m lu&ocirc;n trong trạng th&aacute;i &ldquo;x&ecirc; dịch&rdquo;. </span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Kỳ vọng l&agrave;m việc v&agrave; h&agrave;nh vi của 2 thế hệ cũng c&oacute; nhiều điểm kh&aacute;c biệt. Đối với thế hệ X, c&ocirc;ng việc rất quan trọng, cho n&ecirc;n d&ugrave; vui hay kh&ocirc;ng vẫn phải cố gắng tới c&ugrave;ng. Họ cũng lu&ocirc;n đặt mục ti&ecirc;u d&agrave;i hạn như 5 năm tới sẽ mua nh&agrave;, mua xe; 3 năm tới sẽ được thăng chức&hellip; Nhưng với thế hệ Y, họ đi l&agrave;m với mục đ&iacute;ch gia tăng trải nghiệm; thỏa m&atilde;n niềm đam m&ecirc;/y&ecirc;u th&iacute;ch. Họ thường c&oacute; xu hướng hưởng thụ cuộc sống c&aacute; nh&acirc;n, thậm ch&iacute; lương chưa về đ&atilde; nghĩ c&aacute;ch ti&ecirc;u, h&aacute;o hức với những thử th&aacute;ch mới.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Trong qu&aacute; tr&igrave;nh l&agrave;m việc, Gen X trao cho Gen Y cơ hội l&agrave;m những c&ocirc;ng việc c&oacute; t&iacute;nh thử th&aacute;ch để ph&aacute;t triển v&agrave; hỗ trợ Gen Y, nhưng c&aacute;c bạn Gen Y kh&ocirc;ng qu&aacute; tr&acirc;n trọng v&agrave; xem đ&oacute; như việc nghiễm nhi&ecirc;n, khiến Gen X cảm thấy kh&ocirc;ng thoải m&aacute;i. Ngược lại, Gen Y vẫn thấy kh&ocirc;ng được c&ocirc;ng ty coi trọng v&agrave; kh&ocirc;ng được c&ocirc;ng ty tạo điều kiện thăng tiến n&ecirc;n ra đi trong hậm hực. C&aacute;c bạn dễ d&agrave;ng nghỉ việc, tỷ lệ n&agrave;y cao đến một mức nhất định sẽ g&acirc;y ra sự x&aacute;o trộn trong tổ chức, ảnh hưởng đến động lực l&agrave;m việc của người ở lại v&agrave; c&oacute; thể khiến những quản l&yacute; Gen X ch&aacute;n nản.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Sự kh&aacute;c biệt giữa 2 thế hệ đ&atilde; lu&ocirc;n ngầm chứa những xung đột chờ sẵn. Nh&oacute;m quản l&yacute; cấp trung (thường l&agrave; Gen X) hay ph&agrave;n n&agrave;n Gen Y kh&oacute; hiểu, kh&oacute; chiều, kh&oacute; quản l&yacute;, trong khi c&aacute;c bạn Gen Y cũng hay than thở rằng, sếp họ kh&oacute; t&iacute;nh, kh&oacute; chịu, kh&oacute; gần. Đặc biệt, khi gen Y kh&ocirc;ng h&agrave;i l&ograve;ng, c&aacute;c bạn cũng hay thể hiện th&aacute;i độ bất b&igrave;nh qua mạng x&atilde; hội, điều n&agrave;y ngo&agrave;i việc l&agrave;m ảnh hưởng đến h&igrave;nh ảnh của c&ocirc;ng ty c&ograve;n v&ocirc; h&igrave;nh trung tạo ra văn h&oacute;a &ldquo;chia rẽ, kết b&egrave; k&eacute;o c&aacute;nh&rdquo; trong tổ chức.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><i><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">&ldquo;C&ocirc;ng thức&rdquo; n&agrave;o để dung h&ograve;a?</span></span></span></i></b></span></span></span></p>\r\n\r\n<ol>\r\n	<li style=\"text-align:justify; margin:0cm 0cm 8pt 36pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><i><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Nguy&ecirc;n tắc &ldquo;ABC&rdquo;</span></span></span></i></b></span></span></span></li>\r\n</ol>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Nguy&ecirc;n tắc ABC, b&iacute; quyết quan trọng để c&aacute;c thế hệ tiền bối c&oacute; thể dễ d&agrave;ng hơn trong hợp t&aacute;c, l&agrave;m việc với thế hệ Y.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">A &ndash; AWARENESS: Bước đầu ti&ecirc;n để thu h&uacute;t, tạo động lực v&agrave; giữ ch&acirc;n nh&acirc;n t&agrave;i Gen Y l&agrave; phải hiểu họ: t&ocirc;n trọng sự kh&aacute;c biệt, thấu hiểu nguy&ecirc;n nh&acirc;n tạo ra sự kh&aacute;c biệt để từ đ&oacute; biết c&aacute;ch biến những khuyết điểm th&agrave;nh ưu điểm. </span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Gen Y kh&ocirc;ng th&iacute;ch &yacute; tưởng &ldquo;l&agrave;m việc cho&rdquo; (work for), m&agrave; th&iacute;ch phong c&aacute;ch &ldquo;l&agrave;m việc c&ugrave;ng&rdquo; (work with). V&igrave; thế, sau chữ A-Awareness, nguy&ecirc;n tắc v&agrave;ng thứ hai khi l&agrave;m việc với Gen Y l&agrave; B - BEING THEIR FRIEND. </span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Khi đ&atilde; hiểu họ, A- Awareness v&agrave; l&agrave;m bạn được với họ B &ndash; Be Their Friend th&igrave; sẽ tối đa h&oacute;a được hiệu suất v&agrave; l&ograve;ng trung th&agrave;nh của Gen Y với 3 chữ C - COACHING, COMMUNICATION v&agrave; CUSTOMIZATION.</span></span></span></span></span></span></p>\r\n\r\n<ol start=\"2\">\r\n	<li style=\"text-align:justify; margin:0cm 0cm 8pt 36pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><i><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">H&igrave;nh th&agrave;nh c&aacute;c nh&oacute;m nh&acirc;n sự &ldquo;xuy&ecirc;n thế hệ&rdquo;</span></span></span></i></b></span></span></span></li>\r\n</ol>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Triển khai hệ thống hỗ trợ, cố vấn ph&aacute;t triển sự nghiệp (mentoring) trong doanh nghiệp c&oacute; thể mang lại lợi &iacute;ch lớn. D&agrave;nh những khoảng thời gian ngắn trong ng&agrave;y l&agrave;m việc để c&aacute;c nh&acirc;n vi&ecirc;n lớn tuổi v&agrave; nh&acirc;n vi&ecirc;n trẻ c&oacute; thể giao tiếp trực tiếp, điều n&agrave;y kh&ocirc;ng chỉ c&aacute;c t&acirc;n binh được lợi từ sự hiểu biết của c&aacute;c đồng nghiệp c&oacute; th&acirc;m ni&ecirc;n m&agrave; ch&iacute;nh họ cũng c&oacute; thể chia sẻ kiến thức về c&ocirc;ng nghệ hiện đại hay bối cảnh đang thay đổi của thế giới c&ocirc;ng sở với những người lớn tuổi hơn.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Ngo&agrave;i ra, tạo điều kiện để những nh&acirc;n vi&ecirc;n c&oacute; &ldquo;bộ kỹ năng&rdquo; kh&aacute;c nhau l&agrave;m việc c&ugrave;ng nhau v&igrave; một mục ti&ecirc;u chung rất c&oacute; lợi cho doanh nghiệp. Đ&acirc;y l&agrave; c&aacute;ch để nh&acirc;n vi&ecirc;n ở tất cả độ tuổi tương t&aacute;c với nhau v&agrave; gắn kết một c&aacute;ch t&iacute;ch cực. Những nh&oacute;m như thế cũng đưa c&aacute;c c&aacute; nh&acirc;n c&oacute; quan điểm kh&aacute;c nhau đến gần nhau. Điều n&agrave;y gi&uacute;p cho nh&acirc;n vi&ecirc;n hiểu r&otilde; hơn về tư duy v&agrave; quan điểm của đồng nghiệp đối với những t&igrave;nh huống, dự &aacute;n v&agrave; nhiệm vụ kh&aacute;c nhau.</span></span></span></span></span></span></p>\r\n\r\n<ol start=\"3\">\r\n	<li style=\"text-align:justify; margin:0cm 0cm 8pt 36pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><i><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Đ&oacute;n nhận một văn h&oacute;a ph&ugrave; hợp với mọi người</span></span></span></i></b></span></span></span></li>\r\n</ol>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Ng&agrave;y nay, c&aacute;c c&ocirc;ng ty h&agrave;ng đầu đang &ldquo;ph&aacute; vỡ những bức tường&rdquo;, n&oacute;i theo nghĩa đen, tạo nhiều kh&ocirc;ng gian mở hơn để khuyến kh&iacute;ch giao tiếp trong lực lượng lao động của họ. Khi đề cập đến chủ đề văn h&oacute;a c&ocirc;ng ty, c&aacute;c CEO tự hỏi &ldquo;Văn h&oacute;a của t&ocirc;i đ&atilde; bao gồm mọi nh&acirc;n vi&ecirc;n trong văn ph&ograve;ng chưa?&rdquo;.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Tổ chức c&aacute;c chuyến đi chơi c&ugrave;ng nhau, ăn trưa tại văn ph&ograve;ng v&agrave; mừng sinh nhật l&agrave; những c&aacute;ch đơn giản để tạo m&ocirc;i trường thư gi&atilde;n, th&acirc;n thiện cho nh&acirc;n vi&ecirc;n. Kh&ocirc;ng chỉ thế, nh&acirc;n vi&ecirc;n cũng sẽ đ&aacute;nh gi&aacute; cao sếp của họ v&igrave; nỗ lực tạo sự gắn kết trong c&ocirc;ng sở.</span></span></span></p>\r\n','',4),(20,'Những con số biết nói của thị trường tuyển dụng nhân sự tại Việt Nam đầu năm 2018','','1517571978644.png','Là một quốc gia đang phát triển với nhiều nguồn đầu tư nước ngoài đổ vào ồ ạt, Việt Nam đang ngày càng tạo ra nhiều việc làm hơn trong những năm gần đây. Cụ thể chỉ trong vòng 3 năm (từ 2013 đến 2016), số lượng việc làm đã tăng hơn gấp đôi và riêng trong năm 2016, con số này đã tăng đến 25%. 40% các nhà tuyển dụng nói rằng họ đã phải rất chật vật để tìm ra những ứng cử viên tài năng trong năm vừa qua.','','<p style=\"margin-right:-4.5pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Năm 2016 cũng đ&atilde; ghi nhận sự bức ph&aacute; trong nhu cầu nh&acirc;n lực của ng&agrave;nh IT, một ng&agrave;nh đang ở giai đoạn &ldquo;kh&aacute;t&rdquo; nh&acirc;n sự đỉnh điểm. Nhu cầu ng&agrave;nh n&agrave;y hiện đang ở mức cao nhất trong lịch sử v&agrave; sẽ tiếp tục tăng cao hơn trong những năm tới.</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Trong khoảng 3 năm trở lại đ&acirc;y, số lượng việc l&agrave;m được đăng tải tr&ecirc; c&aacute;c website tuyển dụng đ&atilde; gia tăng gấp đ&ocirc;i. Theo đ&oacute;, thị trường sẽ cần tới 400 000 nh&acirc;n lực ng&agrave;nh IT trước cuối năm 2018, nhưng cho tới thời điểm hi&ecirc;n tại, chỉ c&oacute; khoảng 250 000 kỹ sư đang l&agrave;m việc trong ng&agrave;nh.</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">B&ecirc;n cạnh IT, Dịch vụ kh&aacute;ch h&agrave;ng, Kinh doanh, Quảng c&aacute;o/Truyền th&ocirc;ng/Đối ngoại cũng l&agrave; những ng&agrave;nh nghề tăng trưởng mạnh nhất về nhu cầu tuyển dụng trong năm 2016. Nếu kh&ocirc;ng c&oacute; nhiều biến chuyển mạnh tr&ecirc;n thị trường lao động, những ng&agrave;nh nghề n&agrave;y sẽ tiếp tục ph&aacute;t triển v&agrave; tạo ra nhiều cơ hội việc l&agrave;m hơn nữa trong năm 2017.</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Đến nay, trong B&aacute;o c&aacute;o Thị trường tuyển dụng qu&yacute; I/2017&nbsp;tại Việt Nam, Navigos Group đ&atilde; đưa ra những con số biết n&oacute;i như dưới đ&acirc;y:</span></span></span></span></span></span></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify; margin:0cm 0cm 0.0001pt 36pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">23%&nbsp;l&agrave; lượng tăng về nhu cầu tuyển dụng của c&aacute;c doanh nghiệp trong 3 th&aacute;ng đầu năm so với c&ugrave;ng kỳ năm ngo&aacute;i</span></span></span></span></span></span></li>\r\n	<li style=\"text-align:justify; margin:0cm 0cm 0.0001pt 36pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">38%&nbsp;l&agrave; lượng tăng về nguồn cung nh&acirc;n lực của số hồ sơ ứng tuyển c&ugrave;ng kỳ năm ngo&aacute;i</span></span></span></span></span></span></li>\r\n	<li style=\"text-align:justify; margin:0cm 0cm 0.0001pt 36pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">2&nbsp;th&agrave;nh phố H&agrave; Nội v&agrave; Hồ Ch&iacute; Minh tiếp tục dẫn đầu lượng nhu cầu tuyển dụng của cả nước</span></span></span></span></span></span></li>\r\n	<li style=\"text-align:justify; margin:0cm 0cm 0.0001pt 36pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Nhu cầu tuyển dụng c&aacute;c c&ocirc;ng việc Cấp quản l&yacute;, Điều h&agrave;nh tăng&nbsp;104%&nbsp;về mức tăng trưởng so với c&ugrave;ng kỳ năm ngo&aacute;i, dẫn đầu mức tăng trưởng trong tất cả c&aacute;c ng&agrave;nh.</span></span></span></span></span></span></li>\r\n	<li style=\"text-align:justify; margin:0cm 0cm 8pt 36pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">46&nbsp;l&agrave; số đối thủ cạnh tranh trung b&igrave;nh trong c&ugrave;ng một c&ocirc;ng việc tại H&agrave; Nội v&agrave; TP HCM. Trong đ&oacute; c&ocirc;ng việc kế to&aacute;n c&oacute; mức chọi cao nhất với tỷ lệ&nbsp;1/89.</span></span></span></span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Tại&nbsp;</span></span></span></span></span><a href=\"https://www.facebook.com/cmccorporation/\"><span style=\"font-size:10.0pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\"><span style=\"text-decoration:none\"><span style=\"text-underline:none\">CMC</span></span></span></span></span></span></span></a><span style=\"font-size:10.0pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">, 2017 l&agrave; một năm đặc biệt bởi đ&acirc;y l&agrave; thời điểm bắt đầu một chặng đường mới với những sự thay đổi trong chiến lược ph&aacute;t triển của Tập đo&agrave;n: Chiến lược con người. CMC tập trung mọi nguồn lực để ph&aacute;t triển con người như t&agrave;i sản cốt l&otilde;i tr&ecirc;n h&agrave;nh tr&igrave;nh khẳng định vị thế một tập đo&agrave;n CNTT h&agrave;ng đầu Việt Nam. </span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Qu&yacute; I/2017, CMC dự kiến tuyển dụng mới hơn 300 nh&acirc;n sự to&agrave;n tập đo&agrave;n, trong đ&oacute; CMC Telecom v&agrave; CMC Soft l&agrave; hai đơn vị c&oacute; nhu cầu tuyển dụng cao nhất. </span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Hiện tại, hơn 60 vị tr&iacute; thuộc 8 đơn vị được đăng tuyển tại chuy&ecirc;n mục tuyển dụng website cmc.com.vn. Phần lớn c&aacute;c vị tr&iacute; tuyển dụng thuộc khối C&ocirc;ng nghệ - Kỹ thuật (chiếm 80% c&aacute;c vị tr&iacute; tuyển dụng).</span></span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Với th&ocirc;ng điệp, mỗi vị tr&iacute; tuyển dụng kh&ocirc;ng chỉ đơn giản l&agrave; một cơ hội việc l&agrave;m m&agrave; đ&oacute; c&oacute; thể l&agrave; niềm hạnh ph&uacute;c về một bước tiến trong sự nghiệp của ứng vi&ecirc;n, đồng thời l&agrave; sự hi vọng về một nh&acirc;n tố t&agrave;i năng đối với sự ph&aacute;t triển tại c&ocirc;ng ty. CMC lu&ocirc;n đẩy mạnh việc t&igrave;m kiếm nh&acirc;n t&agrave;i v&agrave; ch&agrave;o đ&oacute;n c&aacute;c th&agrave;nh vi&ecirc;n mới gia nhập tổ chức để c&ugrave;ng chung sức hướng tới th&agrave;nh c&ocirc;ng!</span></span></span></span></span></span></span></span></p>\r\n\r\n<p><i><span style=\"font-size:10.0pt\"><span style=\"background:white\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">(Số liệu trong b&agrave;i viết tham khảo từ B&aacute;o c&aacute;o Thị trường tuyển dụng qu&yacute; I/2017, Navigos Group).</span></span></span></span></span></i></p>\r\n','',4),(21,'Vì sao lương thưởng không phải là yếu tố khiến nhân viên hạnh phúc?','','1517572405226.png','Hiệp hội các Nhà Tuyển dụng (AGR) chỉ ra rằng, có hơn 90% doanh nghiệp gặp tình trạng “chảy máu chất xám” chỉ vì công ty đối thủ đề nghị mức lương cao hơn để câu kéo nhân sự. Millennial Trends (Bộ phận thăm dò của Deloitte, hãng kiểm toán lớn và danh tiếng trên toàn cầu) cũng ủng hộ kết luận của AGR và coi tiền lương là động lực chính để thu hút nhân tài.','','<p style=\"margin-bottom:7.5pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><i><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Nếu mức lương cạnh tranh được coi l&agrave; động lực ch&iacute;nh để thu h&uacute;t nguồn nh&acirc;n lực chất lượng cao th&igrave; việc tăng cường c&aacute;c ph&uacute;c lợi vật chất (tăng lương, tăng thưởng, tặng c&aacute;c chuy&ecirc;n du lịch, g&oacute;i bảo hiểm sức khỏe,&hellip;) được cho l&agrave; c&aacute;ch tốt nhất để tạo động lực l&agrave;m việc cho nh&acirc;n vi&ecirc;n, duy tr&igrave; l&ograve;ng trung th&agrave;nh của nh&acirc;n vi&ecirc;n với c&ocirc;ng ty &ndash; Một quan điểm quản l&yacute; phổ biến hiện nay.</span></span></span></i></span></span></span></span></p>\r\n\r\n<p style=\"margin-bottom:7.5pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Tuy nhi&ecirc;n, qua c&aacute;c nghi&ecirc;n cứu về h&agrave;nh vi con người, quan điểm n&agrave;y đ&atilde; kh&ocirc;ng c&ograve;n hiệu quả. C&oacute; rất nhiều c&aacute;c yếu tố ngo&agrave;i lương, thưởng c&oacute; thể trở th&agrave;nh &ldquo;điểm s&aacute;ng&rdquo; trong mắt c&aacute;c nh&acirc;n t&agrave;i tương lai.</span></span></span></b></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Nếu bạn đ&atilde; v&agrave; đang sống trong m&ocirc;i trường doanh nghiệp, hẳn đ&atilde; &iacute;t nhất một lần bạn được nghe đến thuật ngữ &quot;c&acirc;y gậy v&agrave; củ c&agrave; rốt&quot;. N&oacute;i một c&aacute;ch đơn giản, &quot;c&acirc;y gậy v&agrave; củ c&agrave; rốt&quot; l&agrave; thuật ngữ d&ugrave;ng để chỉ những ch&iacute;nh s&aacute;ch thưởng (củ c&agrave; rốt) v&agrave; phạt (c&acirc;y gậy) m&agrave; nh&agrave; quản l&yacute; thường &aacute;p dụng để tạo động lực, gi&uacute;p nh&acirc;n vi&ecirc;n ho&agrave;n th&agrave;nh c&ocirc;ng việc được giao. </span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Thực tế, c&aacute;c phần thưởng chỉ đem lại động lực tạm thời: h&agrave;nh vi của nh&acirc;n vi&ecirc;n c&oacute; thể thay đổi trong một qu&atilde;ng thời gian ngắn, nhưng sẽ nhanh ch&oacute;ng quay trở lại mức b&igrave;nh thường. Khi c&aacute;c ph&uacute;c lợi vật chất thấp v&agrave; kh&ocirc;ng đ&aacute;p ứng đủ nhu cầu, nh&acirc;n vi&ecirc;n sẽ bị mất động lực. Nhưng điều n&agrave;y kh&ocirc;ng đồng nghĩa với việc tăng gấp đ&ocirc;i, gấp ba c&aacute;c ph&uacute;c lợi đ&oacute; sẽ đem lại động lực l&acirc;u d&agrave;i cho họ.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Những nh&acirc;n vi&ecirc;n được trả lương cao nhất kh&ocirc;ng phải l&agrave; người c&oacute; động lực l&agrave;m việc tốt nhất, m&agrave; l&agrave; những nh&acirc;n vi&ecirc;n cảm thấy tiến triển li&ecirc;n tục trong c&aacute;c c&ocirc;ng việc c&oacute; &yacute; nghĩa với họ.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><i><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Cảm gi&aacute;c tiến triển trong c&ocirc;ng việc </span></span></span></i></b><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">đ&oacute;ng vai tr&ograve; v&ocirc; c&ugrave;ng quan trọng để giữ động lực của nh&acirc;n vi&ecirc;n. Gi&aacute;o sư Teresa Amabile của đại học Harvard đ&atilde; tiến h&agrave;nh nghi&ecirc;n cứu 238 nh&acirc;n vi&ecirc;n ở 7 c&ocirc;ng ty kh&aacute;c nhau để giữ nhật k&yacute; h&agrave;ng ng&agrave;y trong ng&agrave;y l&agrave;m việc của họ. Mục ti&ecirc;u n&agrave;y nhằm t&igrave;m ra những yếu tố t&aacute;c động t&iacute;ch cực l&ecirc;n tinh thần v&agrave; động lực l&agrave;m việc của nh&acirc;n vi&ecirc;n.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Kết quả sau khi ph&acirc;n t&iacute;ch gần 12.000 mục nhật k&yacute; c&ugrave;ng với xếp hạng h&agrave;ng ng&agrave;y của c&aacute;c nh&acirc;n vi&ecirc;n về động lực v&agrave; cảm x&uacute;c của họ, cho thấy rằng cảm gi&aacute;c tiến triển trong c&ocirc;ng việc thường gắn liền với những cảm x&uacute;c t&iacute;ch cực v&agrave; động lực cao hơn bất kỳ sự kiện n&agrave;o kh&aacute;c trong ng&agrave;y l&agrave;m việc. Một giải ph&aacute;p để xử l&yacute; lỗi code trong dự &aacute;n, một s&aacute;ng kiến cho vấn đề chi ph&iacute; quảng c&aacute;o, một &yacute; tưởng mới cho chiến dịch Marketing,... Những bước tiến d&ugrave; nhỏ hoặc lớn trong c&ocirc;ng việc đều đem lại động lực rất lớn cho nh&acirc;n vi&ecirc;n.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Ch&iacute;nh v&igrave; thế, thay v&igrave; đem phần thưởng l&agrave;m động lực cho nh&acirc;n vi&ecirc;n, ch&uacute;ng ta n&ecirc;n tạo ra m&ocirc;i trường th&uacute;c đẩy sự tiến triển li&ecirc;n tục. Hai yếu tố h&agrave;ng đầu để hỗ trợ sự tiến triển li&ecirc;n tục đ&oacute; l&agrave; chất x&uacute;c t&aacute;c v&agrave; yếu tố nu&ocirc;i dưỡng tinh thần.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Chất x&uacute;c t&aacute;c bao gồm c&aacute;c h&agrave;nh động trực tiếp tạo điều kiện th&uacute;c đẩy ph&aacute;t triển c&ocirc;ng việc, như cung cấp c&aacute;c mục ti&ecirc;u r&otilde; r&agrave;ng cho c&ocirc;ng việc, cung cấp c&aacute;c nguồn lực đầy đủ để ho&agrave;n th&agrave;nh c&aacute;c mục ti&ecirc;u đ&oacute;, tạo ra một m&ocirc;i trường cởi mở cho ph&eacute;p thoải m&aacute;i trao đổi &yacute; tưởng v&agrave; học hỏi từ những sai lầm.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Yếu tố nu&ocirc;i dưỡng tinh thần hỗ trợ đời sống nội t&acirc;m của nh&acirc;n vi&ecirc;n, bao gồm c&aacute;c h&agrave;nh động như thể hiện sự t&ocirc;n trọng v&agrave; c&ocirc;ng nhận, quan t&acirc;m tới cảm x&uacute;c của nh&acirc;n vi&ecirc;n v&agrave; tạo ra c&aacute;c cơ hội để kết nối nh&acirc;n vi&ecirc;n với c&ocirc;ng ty.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">C&ugrave;ng nhau, chất x&uacute;c t&aacute;c v&agrave; yếu tố nu&ocirc;i dưỡng tinh thần gi&uacute;p h&igrave;nh th&agrave;nh một cảm gi&aacute;c tiến triển li&ecirc;n tục. Điều đ&oacute; dẫn đến động lực, c&ocirc;ng việc c&oacute; &yacute; nghĩa cho c&aacute;c c&aacute; nh&acirc;n - l&agrave;m cho nh&acirc;n vi&ecirc;n hạnh ph&uacute;c v&agrave; gi&uacute;p c&aacute;c c&ocirc;ng ty tăng hiệu quả, đạt được mục ti&ecirc;u của m&igrave;nh.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><i><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Tạo ra sự tiến triển li&ecirc;n tục trong c&ocirc;ng việc</span></span></span></i></b><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\"> l&agrave; một phương ph&aacute;p để tạo động lực bền vững v&agrave; l&acirc;u d&agrave;i cho nh&acirc;n vi&ecirc;n. Tuy vậy, n&oacute; chỉ đạt hiệu quả tốt nhất khi nh&acirc;n vi&ecirc;n nhận ra &yacute; nghĩa của c&ocirc;ng việc m&agrave; họ đang đảm nhận. Nếu c&ocirc;ng ty giao cho nh&acirc;n vi&ecirc;n một c&ocirc;ng việc lặp đi lặp lại, nh&agrave;m ch&aacute;n, kh&ocirc;ng hướng tới một mục ti&ecirc;u &yacute; nghĩa th&igrave; sự tiến triển mỗi ng&agrave;y kh&ocirc;ng đem lại bất kỳ động lực t&iacute;ch cực n&agrave;o cho nh&acirc;n vi&ecirc;n.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">C&aacute;c nh&agrave; quản l&yacute; c&oacute; thể gi&uacute;p nh&acirc;n vi&ecirc;n nhận ra &yacute; nghĩa trong c&ocirc;ng việc bằng c&aacute;ch t&igrave;m hiểu t&acirc;m tư nguyện vọng của họ v&agrave; giao việc ph&ugrave; hợp, đảm bảo họ hiểu r&otilde; c&aacute;c mục ti&ecirc;u thiết thực, c&oacute; &yacute; nghĩa của c&ocirc;ng ty, gi&uacute;p họ nhận ra c&ocirc;ng việc của m&igrave;nh sẽ đ&oacute;ng g&oacute;p như thế n&agrave;o v&agrave;o những mục ti&ecirc;u đ&oacute;,...</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Ngo&agrave;i việc<b><i> tạo ra sự tiến triển li&ecirc;n tục trong c&ocirc;ng việc, </i></b>c&aacute;c c&aacute;ch thức sau đ&acirc;y cũng sẽ gi&uacute;p nh&acirc;n vi&ecirc;n hạnh ph&uacute;c v&agrave; gắn b&oacute; hơn với c&ocirc;ng ty:</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><i><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Chương tr&igrave;nh thực tập sinh t&agrave;i năng.</span></span></span></i></b></span></span></span></span></p>\r\n\r\n<p style=\"margin-top:6.0pt; margin-right:0cm; margin-bottom:.0001pt; margin-left:0cm; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Nếu nh&acirc;n vi&ecirc;n bắt đầu l&agrave;m việc cho c&ocirc;ng ty ngay từ giai đoạn thực tập th&igrave; họ c&oacute; xu hướng gắn b&oacute; hơn với tổ chức. Mặc d&ugrave; ở phần lớn doanh nghiệp, thực tập sinh kh&ocirc;ng hề được giao l&agrave;m những c&ocirc;ng việc quan trọng nhưng họ vẫn nhận được những lời khuy&ecirc;n, sự chỉ dẫn của &ldquo;bậc anh chị&rdquo; c&ugrave;ng l&agrave;m. Số đ&ocirc;ng sinh vi&ecirc;n tốt nghiệp sẽ ưu ti&ecirc;n doanh nghiệp thực tập của họ để nộp đơn ứng tuyển đầu ti&ecirc;n bởi họ đ&atilde; phần n&agrave;o quen thuộc với m&ocirc;i trường ở đ&oacute;. V&agrave; doanh nghiệp chắc chắn sẽ c&oacute; ưu thế tuyệt đối nếu đ&atilde; đem đến cho những thực tập sinh của họ những kinh nghiệm thực tế qu&yacute; gi&aacute; v&agrave; c&oacute; &ldquo;văn h&oacute;a&rdquo; ph&ugrave; hợp.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-top:6.0pt; margin-right:0cm; margin-bottom:.0001pt; margin-left:0cm; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><i><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Hỗ trợ đ&agrave;o tạo về sử dụng v&agrave; quản l&yacute; nh&acirc;n sự.</span></span></span></i></b></span></span></span></span></p>\r\n\r\n<p style=\"margin-top:6.0pt; margin-right:0cm; margin-bottom:12.0pt; margin-left:0cm; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Kh&ocirc;ng nhiều c&ocirc;ng ty thực sự ch&uacute; trọng vấn đề trang bị cho những nh&acirc;n vi&ecirc;n bậc trung - cao kiến thức b&agrave;i bản để sử dụng hiệu quả nguồn nh&acirc;n lực vốn c&oacute;. Thực tế chứng minh, nh&agrave; quản l&yacute; phải được trang bị kiến thức, kinh nghiệm v&agrave; kỹ năng để thiết lập v&agrave; đ&aacute;p ứng những kỳ vọng của nh&acirc;n vi&ecirc;n để họ kh&ocirc;ng thường xuy&ecirc;n rơi v&agrave;o trạng th&aacute;i ch&aacute;n nản v&agrave; buộc phải rời bỏ c&ocirc;ng ty.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-top:6.0pt; margin-right:0cm; margin-bottom:.0001pt; margin-left:0cm; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><i><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Thấu hiểu những nguồn động lực l&agrave;m việc của nh&acirc;n vi&ecirc;n.</span></span></span></i></b></span></span></span></span></p>\r\n\r\n<p style=\"margin-top:6.0pt; margin-right:0cm; margin-bottom:.0001pt; margin-left:0cm; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Mỗi nh&acirc;n vi&ecirc;n c&oacute; những động lực l&agrave;m việc kh&aacute;c nhau. Nhưng cuộc khảo s&aacute;t của &ldquo;&ocirc;ng lớn&rdquo; Deloitte đ&atilde; gi&uacute;p những nh&agrave; quản l&yacute; liệt k&ecirc; một v&agrave;i ti&ecirc;u ch&iacute; phổ biến. Đ&oacute; l&agrave; giờ l&agrave;m việc linh hoạt, con đường ph&aacute;t triển sự nghiệp r&otilde; r&agrave;ng, được l&agrave;m việc dưới trướng sếp giỏi - coi trọng đại cục hơn lợi &iacute;ch nhỏ trước mắt. Văn h&oacute;a doanh nghiệp minh bạch v&agrave; đề cao sự cải tiến cũng l&agrave; yếu tố quan trọng để giữ ch&acirc;n nh&acirc;n t&agrave;i.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-top:12.0pt; margin-right:0cm; margin-bottom:.0001pt; margin-left:0cm; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><i><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Nếu nh&acirc;n vi&ecirc;n muốn rời đi, h&atilde;y l&agrave;m r&otilde; l&yacute; do.</span></span></span></i></b></span></span></span></span></p>\r\n\r\n<p style=\"margin-top:6.0pt; margin-right:0cm; margin-bottom:.0001pt; margin-left:0cm; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">C&oacute; thể l&uacute;c nh&acirc;n vi&ecirc;n nộp đơn nghỉ việc, đ&atilde; l&agrave; qu&aacute; trễ để giữ ch&acirc;n họ. Nhưng chỉ với c&aacute;ch t&igrave;m hiểu l&yacute; do tại sao c&oacute; sự ra đi n&agrave;y, bạn mới c&oacute; thể c&acirc;n nhắc v&agrave; điều chỉnh hệ thống l&agrave;m việc của m&igrave;nh để tối thiểu t&igrave;nh trạng &ldquo;chảy m&aacute;u chất x&aacute;m trong tương lai&rdquo;. Ngo&agrave;i ra, việc bạn thể hiện sự quan t&acirc;m đến nh&acirc;n vi&ecirc;n ngay cả khi họ kh&ocirc;ng c&ograve;n gắn b&oacute; d&agrave;i l&acirc;u với c&ocirc;ng ty cũng l&agrave;m họ cảm thấy &ldquo;xứng đ&aacute;ng&rdquo; khi đ&atilde; c&oacute; khoảng thời gian cống hiến tại doanh nghiệp.</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-top:6.0pt; margin-right:0cm; margin-bottom:.0001pt; margin-left:0cm; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Tại <b>CMC Coporation</b>, nh&acirc;n tố con người lu&ocirc;n lu&ocirc;n được coi trọng. B&ecirc;n cạnh mức lương tương xứng với năng lực, hệ thống cấu tr&uacute;c thu nhập chuẩn quốc tế (lương chuy&ecirc;n vi&ecirc;n, chuy&ecirc;n gia thậm ch&iacute; cao hơn lương quản l&yacute;) chế độ thưởng &amp; ph&uacute;c lợi cạnh tranh; người CMC c&ograve;n tham gia v&agrave;o một m&ocirc;i trường l&agrave;m việc đặc biệt s&aacute;ng tạo v&agrave; chuy&ecirc;n nghiệp: </span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-top:6.0pt; margin-right:0cm; margin-bottom:.0001pt; margin-left:0cm; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><i><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">▪ Kh&ocirc;ng chỉ l&agrave; việc l&agrave;m, đ&oacute; l&agrave; một sự nghiệp</span></span></span></i></span></span></span></span></p>\r\n\r\n<p style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><i><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">▪ Kh&ocirc;ng tường r&agrave;o, cơ hội m&atilde;i rộng mở</span></span></span></i></span></span></span></span></p>\r\n\r\n<p style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><i><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">▪ Kh&ocirc;ng giai cấp, tất cả l&agrave; đồng đội</span></span></span></i></span></span></span></span></p>\r\n\r\n<p style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><i><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">▪ Kh&ocirc;ng office, văn ph&ograve;ng cũng l&agrave; nh&agrave;.</span></span></span></i></span></span></span></span></p>\r\n\r\n<p style=\"margin-top:6.0pt; margin-right:0cm; margin-bottom:.0001pt; margin-left:0cm; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Đồng thời, người CMC lu&ocirc;n được:</span></span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-top:6.0pt; margin-right:0cm; margin-bottom:.0001pt; margin-left:0cm; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><i><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">▪ Được một &quot;Gia đ&igrave;nh&quot; lớn</span></span></span></i></span></span></span></span></p>\r\n\r\n<p style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><i><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">▪ Được C&ocirc;ng ty &quot;bao&quot;</span></span></span></i></span></span></span></span></p>\r\n\r\n<p style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><i><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">▪ Được ph&aacute;t triển, chuy&ecirc;n nghiệp hơn</span></span></span></i></span></span></span></span></p>\r\n\r\n<p style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"background:white\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><i><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">▪ Được s&aacute;ng tạo v&agrave; thay đổi Thế giới</span></span></span></i></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:black\">Cuối năm 2016 vừa qua, gần 200 CBNV của CMC đ&atilde; tham gia chương tr&igrave;nh khảo s&aacute;t <b>Nguồn nh&acirc;n lực hạnh ph&uacute;c</b> (Anphabe) v&agrave; thực hiện 1 bảng c&acirc;u hỏi để x&aacute;c định mức độ h&agrave;i l&ograve;ng/kh&ocirc;ng h&agrave;i l&ograve;ng c&aacute;c yếu tố tại nơi m&igrave;nh đang l&agrave;m việc. Kết quả khảo s&aacute;t thu được, người CMC thực sự tự h&agrave;o về những g&igrave; m&igrave;nh được l&agrave;m v&agrave; đ&oacute;ng g&oacute;p tại c&ocirc;ng ty, họ tr&acirc;n trọng v&agrave; tận hưởng những lợi &iacute;ch m&agrave; c&ocirc;ng ty mang đến, đồng thời sẵn s&agrave;ng &ldquo;l&agrave;m việc nhiều hơn tr&aacute;ch nhiệm&rdquo; v&igrave; c&ocirc;ng ty. Đ&acirc;y ch&iacute;nh l&agrave; 3 yếu tố v&ocirc; c&ugrave;ng quan trọng m&agrave; chỉ số nguồn nh&acirc;n lực hạnh ph&uacute;c (HAW) của người CMC đều cao hơn rất nhiều chỉ số trung b&igrave;nh của thị trường Việt Nam.</span></span></span></span></p>\r\n','',4),(22,'Tuyển dụng là bán hàng? Tuyệt chiêu nào để thành công?','','1517572540936.png','Xây dựng thương hiệu nhà tuyển dụng là một hoạt động marketing nhưng về bản chất, tuyển dụng chính là bán hàng. \r\n\r\nMột người tuyển dụng nhân viên bán hàng nhất thiết phải là nhân viên bán hàng - là người “bán” những cơ hội nghề nghiệp, “bán” danh tiếng công ty thay vì bán một sản phẩm hoặc dịch vụ nào đó của công ty.','','<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Quy tr&igrave;nh tuyển dụng tương ứng với nhiều giai đoạn ch&iacute;nh của một chu kỳ b&aacute;n h&agrave;ng phức tạp. Nh&agrave; tuyển dụng cũng như nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng phải theo d&otilde;i những cơ hội (jobs), ph&acirc;n t&iacute;ch được gi&aacute; trị của ch&uacute;ng, sau đ&oacute; l&ecirc;n kế hoạch t&igrave;m kiếm v&agrave; tiếp cận ứng vi&ecirc;n, đ&aacute;nh gi&aacute; v&agrave; lựa chọn những người tiềm năng nhất, ph&ugrave; hợp nhất để &ldquo;b&aacute;n&rdquo; cơ hội với chi ph&iacute; tối ưu. </span></span></span></span></span></span></p>\r\n\r\n<table class=\"MsoTableGrid\" style=\"width:476.75pt; border-collapse:collapse; border:solid windowtext 1.0pt\" width=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border:solid windowtext 1.0pt; width:233.75pt; padding:0cm 5.4pt 0cm 5.4pt\" valign=\"top\" width=\"312\">\r\n			<p align=\"center\" style=\"margin-bottom:.0001pt; text-align:center; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">B&aacute;n h&agrave;ng</span></span></b></span></span></span></p>\r\n			</td>\r\n			<td style=\"border:solid windowtext 1.0pt; width:243.0pt; border-left:none; padding:0cm 5.4pt 0cm 5.4pt\" valign=\"top\" width=\"324\">\r\n			<p align=\"center\" style=\"margin-bottom:.0001pt; text-align:center; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Tuyển dụng</span></span></b></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr style=\"height:98.5pt\">\r\n			<td style=\"border:solid windowtext 1.0pt; width:233.75pt; border-top:none; padding:0cm 5.4pt 0cm 5.4pt; height:98.5pt\" valign=\"top\" width=\"312\">\r\n			<ul style=\"list-style-type:square\">\r\n				<li style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"tab-stops:list 36.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Ph&aacute;t triển k&ecirc;nh b&aacute;n h&agrave;ng</span></span></span></span></span></span></li>\r\n				<li style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"tab-stops:list 36.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">T&igrave;m kiếm kh&aacute;ch h&agrave;ng tiềm năng</span></span></span></span></span></span></li>\r\n				<li style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"tab-stops:list 36.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Marketing về c&ocirc;ng ty &amp; sản phẩm</span></span></span></span></span></span></li>\r\n				<li style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"tab-stops:list 36.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">B&aacute;n sản phẩm, dịch vụ</span></span></span></span></span></span></li>\r\n				<li style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"tab-stops:list 36.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Đ&agrave;m ph&aacute;n gi&aacute; cả, dịch vụ,&hellip;</span></span></span></span></span></span></li>\r\n				<li style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"tab-stops:list 36.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Thực hiện giao dịch, hợp đồng mua b&aacute;n&hellip;</span></span></span></span></span></span></li>\r\n				<li style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"tab-stops:list 36.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Chăm s&oacute;c kh&aacute;ch h&agrave;ng hậu m&atilde;i (bảo h&agrave;nh, bảo tr&igrave; sản phẩm, dịch vụ&hellip;)</span></span></span></span></span></span></li>\r\n			</ul>\r\n\r\n			<p style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"border-bottom:solid windowtext 1.0pt; width:243.0pt; border-top:none; border-left:none; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt; height:98.5pt\" valign=\"top\" width=\"324\">\r\n			<ul style=\"list-style-type:square\">\r\n				<li style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"tab-stops:list 36.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Ph&aacute;t triển k&ecirc;nh tuyển dụng</span></span></span></span></span></span></li>\r\n				<li style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"tab-stops:list 36.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">T&igrave;m kiếm ứng vi&ecirc;n tiềm năng</span></span></span></span></span></span></li>\r\n				<li style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"tab-stops:list 36.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Marketing về c&ocirc;ng ty &amp; cơ hội việc l&agrave;m</span></span></span></span></span></span></li>\r\n				<li style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"tab-stops:list 36.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">B&aacute;n job, b&aacute;n cơ hội việc l&agrave;m</span></span></span></span></span></span></li>\r\n				<li style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"tab-stops:list 36.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Đ&agrave;m ph&aacute;n lương, chế độ&hellip;</span></span></span></span></span></span></li>\r\n				<li style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"tab-stops:list 36.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Thực hiện k&yacute; kết Hợp đồng lao động</span></span></span></span></span></span></li>\r\n				<li style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"tab-stops:list 36.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Theo d&otilde;i, chăm s&oacute;c ứng vi&ecirc;n đ&atilde; gia nhập tổ chức&hellip;</span></span></span></span></span></span></li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\">&nbsp;</p>\r\n\r\n<table class=\"MsoTableGrid\" style=\"width:476.75pt; border-collapse:collapse; border:solid windowtext 1.0pt\" width=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border:solid windowtext 1.0pt; width:233.75pt; padding:0cm 5.4pt 0cm 5.4pt\" valign=\"top\" width=\"312\">\r\n			<p align=\"center\" style=\"margin-bottom:.0001pt; text-align:center; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">B&aacute;n h&agrave;ng</span></span></b></span></span></span></p>\r\n			</td>\r\n			<td style=\"border:solid windowtext 1.0pt; width:243.0pt; border-left:none; padding:0cm 5.4pt 0cm 5.4pt\" valign=\"top\" width=\"324\">\r\n			<p align=\"center\" style=\"margin-bottom:.0001pt; text-align:center; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Tuyển dụng</span></span></b></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr style=\"height:73.75pt\">\r\n			<td style=\"border:solid windowtext 1.0pt; width:233.75pt; border-top:none; padding:0cm 5.4pt 0cm 5.4pt; height:73.75pt\" valign=\"top\" width=\"312\">\r\n			<ul style=\"list-style-type:square\">\r\n				<li style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"tab-stops:list 36.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Kh&aacute;ch h&agrave;ng</span></span></span></span></span></span></li>\r\n				<li style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"tab-stops:list 36.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">K&ecirc;nh b&aacute;n h&agrave;ng/Nguồn kh&aacute;ch h&agrave;ng</span></span></span></span></span></span></li>\r\n				<li style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"tab-stops:list 36.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Thương hiệu c&ocirc;ng ty/sản phẩm</span></span></span></span></span></span></li>\r\n				<li style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"tab-stops:list 36.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Nhận diện kh&aacute;ch h&agrave;ng mục ti&ecirc;u</span></span></span></span></span></span></li>\r\n				<li style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"tab-stops:list 36.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Demo sản phẩm</span></span></span></span></span></span></li>\r\n				<li style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"tab-stops:list 36.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Hợp đồng thương mại/mua b&aacute;n</span></span></span></span></span></span></li>\r\n				<li style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"tab-stops:list 36.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">C&aacute;c ch&iacute;nh s&aacute;ch hậu m&atilde;i, bảo h&agrave;nh/bảo tr&igrave;</span></span></span></span></span></span></li>\r\n				<li style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"tab-stops:list 36.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">C&aacute;c chương tr&igrave;nh ưu đ&atilde;i, tri &acirc;n nhằm giữ ch&acirc;n kh&aacute;ch h&agrave;ng</span></span></span></span></span></span></li>\r\n			</ul>\r\n			</td>\r\n			<td style=\"border-bottom:solid windowtext 1.0pt; width:243.0pt; border-top:none; border-left:none; border-right:solid windowtext 1.0pt; padding:0cm 5.4pt 0cm 5.4pt; height:73.75pt\" valign=\"top\" width=\"324\">\r\n			<ul style=\"list-style-type:square\">\r\n				<li style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"tab-stops:list 36.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Ứng vi&ecirc;n</span></span></span></span></span></span></li>\r\n				<li style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"tab-stops:list 36.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">K&ecirc;nh tuyển dụng/Nguồn ứng vi&ecirc;n</span></span></span></span></span></span></li>\r\n				<li style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"tab-stops:list 36.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Thương hi&ecirc;u nh&agrave; tuyển dụng</span></span></span></span></span></span></li>\r\n				<li style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"tab-stops:list 36.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Phỏng vấn</span></span></span></span></span></span></li>\r\n				<li style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"tab-stops:list 36.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Offer Letter</span></span></span></span></span></span></li>\r\n				<li style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"tab-stops:list 36.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">C&aacute;c ch&iacute;nh s&aacute;ch đ&atilde;i ngộ, ph&uacute;c lợi d&agrave;nh cho NLĐ</span></span></span></span></span></span></li>\r\n				<li style=\"margin-bottom:.0001pt; text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:normal\"><span style=\"tab-stops:list 36.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">C&aacute;c chương tr&igrave;nh đ&agrave;o tạo, ph&aacute;t triển v&agrave; giữ ch&acirc;n nh&acirc;n t&agrave;i</span></span></span></span></span></span></li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Ng&agrave;y nay, nh&agrave; tuyển dụng kh&ocirc;ng thể ngồi đợi cho đến khi c&aacute;c hồ sơ xin việc xuất hiện trong email của họ m&agrave; lu&ocirc;n phải chủ động t&igrave;m kiếm v&agrave; tiếp cận ứng vi&ecirc;n. Bởi những ứng vi&ecirc;n xuất sắc, những đối tượng thường được c&aacute;c c&ocirc;ng ty săn đ&oacute;n v&agrave; trọng dụng, họ kh&ocirc;ng &ldquo;xin việc&rdquo;, cũng kh&ocirc;ng &ldquo;t&igrave;m việc&rdquo;, xung quanh họ lu&ocirc;n c&oacute; rất nhiều lời mời hấp dẫn.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Giống như c&aacute;c nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng cao cấp lu&ocirc;n muốn gi&agrave;nh được c&aacute;c hợp đồng lớn, chốt được c&aacute;c kh&aacute;ch h&agrave;ng bự th&igrave; người tuyển dụng giỏi muốn chi&ecirc;u mộ được những nh&acirc;n sự xuất sắc nhất cho c&ocirc;ng ty. C&ugrave;ng xem những tuyệt chi&ecirc;u m&agrave; họ, những nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng cao cấp &amp; những người tuyển dụng giỏi thường &aacute;p dụng:</span></span></span></span></span></span></p>\r\n\r\n<ol>\r\n	<li style=\"text-align:justify; margin:0cm 0cm 8pt 36pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">L&agrave;m cho kh&aacute;ch h&agrave;ng trở th&agrave;nh anh h&ugrave;ng - Make the customer the hero</span></span></span></b></span></span></span></li>\r\n</ol>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Người b&aacute;n h&agrave;ng th&agrave;nh c&ocirc;ng kh&ocirc;ng b&aacute;n sản phẩm hay dịch vụ cho kh&aacute;ch h&agrave;ng; họ kể những c&acirc;u chuyện m&agrave; trong đ&oacute; c&aacute;c kh&aacute;ch h&agrave;ng đều giống như những người h&ugrave;ng. V&agrave; những g&igrave; người b&aacute;n h&agrave;ng đưa ra sẽ l&agrave;m cho kh&aacute;ch h&agrave;ng th&agrave;nh c&ocirc;ng hơn nữa. </span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Tương tự như vậy, thay v&igrave; đưa ra bản m&ocirc; tả c&ocirc;ng việc nh&agrave;m ch&aacute;n với một danh s&aacute;ch liệt k&ecirc; d&agrave;i d&ograve;ng c&aacute;c y&ecirc;u cầu kỹ năng, nhiệm vụ; nh&agrave; tuyển dụng h&atilde;y giới thiệu về những cơ hội, giải th&iacute;ch mức độ th&agrave;nh c&ocirc;ng của ứng vi&ecirc;n nếu họ ở vị tr&iacute; mới.</span></span></span></span></span></span></p>\r\n\r\n<ol start=\"2\">\r\n	<li style=\"text-align:justify; margin:0cm 0cm 8pt 36pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Những &ldquo;thương vụ&rdquo; lớn &ndash; Go big</span></span></span></b></span></span></span></li>\r\n</ol>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Người b&aacute;n h&agrave;ng c&oacute; kinh nghiệm hiểu rằng họ phải mất nhiều nỗ lực hơn để b&aacute;n một 1 hợp đồng 10 đ&ocirc; la thay v&igrave; 10 hợp đồng tổng trị gi&aacute; 10 đ&ocirc; la. Tuy nhi&ecirc;n, chiến lược b&aacute;n 1 hợp đồng lớn sẽ mang lại lợi &iacute;ch nhanh ch&oacute;ng v&agrave; tiết kiệm nguồn lực hơn rất nhiều chiến lược b&aacute;n 10 hợp đồng nhỏ c&oacute; gi&aacute; trị tương đương.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Trong tuyển dụng, c&aacute;c headhunters lu&ocirc;n nắm r&otilde;, việc tiếp cận v&agrave; theo đuổi một ứng vi&ecirc;n mục ti&ecirc;u, người m&agrave; họ đ&atilde; nhận diện v&agrave; đ&aacute;nh gi&aacute; ph&ugrave; hợp với vị tr&iacute; cần lấp đầy kh&oacute; khăn hơn rất nhiều so với việc sắp xếp phỏng vấn những ứng vi&ecirc;n gửi đơn ứng tuyển để lựa chọn người s&aacute;ng gi&aacute; nhất trong số đ&oacute;. Nhưng c&aacute;ch l&agrave;m thứ nhất thường mang lại hiệu quả cao, nh&agrave; tuyển dụng ho&agrave;n to&agrave;n chủ động trong suốt qu&aacute; tr&igrave;nh chi&ecirc;u mộ nh&acirc;n t&agrave;i.</span></span></span></span></span></span></p>\r\n\r\n<ol start=\"3\">\r\n	<li style=\"text-align:justify; margin:0cm 0cm 8pt 36pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Tạo l&ograve;ng trung th&agrave;nh - Generate loyalty</span></span></span></b></span></span></span></li>\r\n</ol>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Thay v&igrave; chỉ tập trung v&agrave;o việc c&oacute; được chữ k&yacute; của kh&aacute;ch h&agrave;ng trong bản hợp đồng giao dịch, những nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng h&agrave;ng đầu cố gắng x&acirc;y dựng một mối quan hệ chặt chẽ v&agrave; l&acirc;u bền với c&aacute;c kh&aacute;ch h&agrave;ng. Cũng giống như vậy, c&aacute;c nh&agrave; tuyển dụng thường muốn giữ li&ecirc;n lạc với tất cả ứng vi&ecirc;n ngay cả khi họ c&oacute; kết quả phỏng vấn rất tệ. Bởi lẽ, rất c&oacute; thể đ&oacute; chưa phải l&agrave; một vị tr&iacute; tuyển dụng ph&ugrave; hợp với họ. Trong một cơ hội kh&aacute;c, biết đ&acirc;u họ l&agrave; ứng cử vi&ecirc;n s&aacute;ng gi&aacute; nhất. </span></span></span></span></span></span></p>\r\n\r\n<ol start=\"4\">\r\n	<li style=\"text-align:justify; margin:0cm 0cm 8pt 36pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">X&acirc;y dựng một mối li&ecirc;n kết bền vững - Build a deep pipeline</span></span></span></b></span></span></span></li>\r\n</ol>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Người b&aacute;n h&agrave;ng kh&ocirc;ng ngừng b&aacute;n ngay cả khi họ đang sở hữu một danh s&aacute;ch d&agrave;i những kh&aacute;ch h&agrave;ng tiềm năng, những hợp đồng thương vụ chờ xử l&yacute; giao dịch. </span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Tương tự, c&aacute;c nh&agrave; tuyển dụng vẫn tiếp tục t&igrave;m kiếm v&agrave; ph&aacute;t triển mối quan hệ với những ứng vi&ecirc;n tốt cho d&ugrave; họ đang kh&ocirc;ng tuyển dụng vị tr&iacute; m&agrave; ứng vi&ecirc;n đ&oacute; ph&ugrave; hợp. L&agrave;m như vậy để khi c&aacute;c hiring manager đưa ra đơn đặt h&agrave;ng, nh&agrave; tuyển dụng c&oacute; thể ngay lập tức kết nối nhu cầu của cả hai b&ecirc;n.</span></span></span></span></span></span></p>\r\n\r\n<ol start=\"5\">\r\n	<li style=\"text-align:justify; margin:0cm 0cm 8pt 36pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><b><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Nhận giới thiệu, kh&ocirc;ng dừng lại ở b&aacute;n h&agrave;ng - Get referrals, not contacts</span></span></span></b></span></span></span></li>\r\n</ol>\r\n\r\n<p style=\"text-align:justify; margin:0cm 0cm 8pt\"><span style=\"font-size:11pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Người b&aacute;n h&agrave;ng giỏi sẽ ki&ecirc;n nhẫn đợi đến khi kh&aacute;ch h&agrave;ng ho&agrave;n to&agrave;n h&agrave;i l&ograve;ng về sản phẩm/dịch vụ trước khi nhờ họ giới thiệu tới những người th&acirc;n, bạn b&egrave;, đ&ocirc;ng nghiệp. </span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:10.0pt\"><span style=\"line-height:107%\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">Sau khi tuyển dụng th&agrave;nh c&ocirc;ng, để c&aacute;c nh&acirc;n sự vui vẻ giới thiệu th&ecirc;m ứng cử vi&ecirc;n s&aacute;ng gi&aacute; cho những vị tr&iacute; c&ograve;n thiếu trong tổ chức, nh&agrave; tuyển dụng cần ph&aacute;t triển một m&ocirc;i trường l&agrave;m việc m&agrave; ở đ&oacute; c&aacute;c nh&acirc;n vi&ecirc;n lu&ocirc;n cảm thấy hạnh ph&uacute;c v&agrave; mong muốn gắn b&oacute;. Bằng nhiều c&aacute;ch thức kh&aacute;c nhau nhưng cho đến khi điều n&agrave;y được ho&agrave;n th&agrave;nh, c&ocirc;ng ty sẽ c&oacute; một đội ngũ nh&acirc;n sự trung th&agrave;nh v&agrave; sẵn s&agrave;ng cống hiến hết m&igrave;nh.</span></span></span></p>\r\n','',4),(23,'5 “truyền thuyết” sai lầm về thu nhập','','1517572674390.png','Thoả thuận lương có thể là một trong những phần khó khăn, gây tâm lý căng thẳng nhất khi bạn tìm kiếm công việc mới. Nhưng nếu chỉ chăm chăm nhìn vào phiếu lương trong quá trình đàm phán thì dường như bạn đang phạm sai lầm rất lớn cho “độ dày của ví” trong tương lai.','','<p style=\"text-align: justify;\">Muốn cố gắng triệt để ngay h&ocirc;m nay để ng&agrave;y mai th&agrave;nh c&ocirc;ng hơn? H&atilde;y bắt đầu bằng c&aacute;ch vứt bỏ ngay niềm tin ng&acirc;y thơ v&agrave;o 5 truyền thuyết g&acirc;y tranh c&atilde;i sau đ&acirc;y:</p>\r\n\r\n<p style=\"text-align: justify;\"><strong>1. GIỮ B&Iacute; MẬT TH&Ocirc;NG TIN VỀ LƯƠNG BỔNG</strong></p>\r\n\r\n<p style=\"text-align: justify;\">T&ocirc;n gi&aacute;o, ch&iacute;nh trị v&agrave; tiền bạc từng được xem l&agrave; 3 chủ đề cấm kỵ h&agrave;ng đầu kh&ocirc;ng n&ecirc;n b&agrave;n t&aacute;n, thế nhưng c&oacute; vẻ n&oacute; kh&ocirc;ng c&ograve;n đ&uacute;ng với thế hệ trẻ nữa. Cara Silletto, nh&agrave; s&aacute;ng lập của c&ocirc;ng ty nh&acirc;n sự Crescendo Strategies đ&atilde; n&oacute;i: &ldquo;Mọi người thường được khuy&ecirc;n rằng kh&ocirc;ng n&ecirc;n n&oacute;i về tiền bạc, nhưng c&oacute; một sự thay đổi rất lớn trong t&iacute;nh c&aacute;ch thế hệ dẫn đến xu hướng mở&nbsp;về lương bổng&rdquo;.</p>\r\n\r\n<p style=\"text-align: justify;\">Sự b&ugrave;ng nổ của c&aacute;c phương tiện truyền th&ocirc;ng x&atilde; hội v&agrave; c&aacute;c website nổi tiếng về lương như Indeed.com v&agrave; Glassdoor.com cũng đ&oacute;ng vai tr&ograve; quan trọng, khiến chủ đề lương bổng được đề cập phổ biến hơn hẳn 10 năm trước. &quot;Những phụ nữ trẻ n&oacute;i ri&ecirc;ng đ&atilde; chấp nhận sự ph&aacute;t triển minh bạch n&agrave;y như l&agrave; c&aacute;ch trao quyền cho m&igrave;nh v&agrave; ủng hộ xu hướng trả lương c&ocirc;ng bằng.&quot; Biết được người đồng nghiệp b&agrave;n b&ecirc;n cạnh đang sở hữu <a href=\"https://careerbuilder.vn/vi/talentcommunity/khi-biet-luong-dong-nghiep-cao-hon-luong-ban.35A513C8.html\" target=\"_blank\">mức lương cao hơn</a>&nbsp;25% sẽ c&oacute; thể thổi b&ugrave;ng l&ecirc;n trong bạn mong muốn được đề nghị tăng lương hoặc nhảy việc nhằm t&igrave;m them cơ hội mới. H&atilde;y chớp lấy cơ hội!</p>\r\n\r\n<p style=\"text-align: justify;\"><strong>2. ĐỀ NGHỊ MỨC LƯƠNG THẤP HƠN MONG MUỐN ĐỂ C&Oacute; TH&Ecirc;M CƠ HỘI NHẬN VIỆC</strong></p>\r\n\r\n<p style=\"text-align: justify;\">Ch&uacute;ng ta đều biết điều n&agrave;y: C&aacute;c mẫu đăng k&yacute; dự tuyển thường y&ecirc;u cầu ứng vi&ecirc;n điền v&agrave;o đ&oacute; mức lương mong muốn, v&agrave; n&oacute; khiến bạn do dự. Bạn tự hỏi nếu ghi ra mức lương thấp nhất m&igrave;nh c&oacute; thể chấp nhận sẽ khiến bạn c&oacute; khả năng được xem x&eacute;t nhiều hơn. Ryan Kahn, người s&aacute;ng lập The Hired Group v&agrave; t&aacute;c giả How to get Hired, đ&atilde; n&oacute;i: &ldquo;Tuyệt đối kh&ocirc;ng được hạ thấp con số&rdquo;. Chắc chắn việc đưa ra một mức lương si&ecirc;u rẻ c&oacute; thể khiến bạn nhanh ch&oacute;ng nhận được lời mời phỏng vấn, nhưng sau đ&oacute; c&ocirc;ng ty sẽ dựa v&agrave;o đ&oacute; l&agrave;m cơ sở cho mọi đ&agrave;m ph&aacute;n lương ch&iacute;nh thức về sau. N&oacute;i c&aacute;ch kh&aacute;c, bạn h&atilde;y chuẩn bị tinh thần để đuợc trả thấp hơn gi&aacute; trị. &ldquo;Thay v&igrave; vậy, h&atilde;y đưa ra một mức lương&nbsp;kỳ vọng trong khoảng m&agrave; bạn cảm thấy thoải m&aacute;i nhất!&rdquo;</p>\r\n\r\n<p style=\"text-align: justify;\"><strong>3. MỖI LẦN THAY ĐỔI C&Ocirc;NG VIỆC PHẢI TH&Ecirc;M 10% TĂNG THU NHẬP</strong></p>\r\n\r\n<p style=\"text-align: justify;\">Đ&ocirc;i khi, việc nhẫn nại để tối đa hết mọi tiềm năng l&acirc;u d&agrave;i về thu nhập c&oacute; thể l&agrave; một bước l&ugrave;i để tạo n&ecirc;n &ldquo;bước tiến vĩ đại&rdquo;. Lấy v&iacute; dụ, thay đổi lĩnh vực thường đ&ograve;i hỏi người lao động bắt đầu từ vị tr&iacute; thấp m&agrave; lương nhận lại&nbsp;chỉ bằng một phần những g&igrave; bạn đang kiếm được. Nhưng nếu như c&aacute;c cấp bậc cao hơn trong ng&agrave;nh nghề mới n&agrave;y sẽ c&oacute; mức chi trả tốt hơn lĩnh vực bạn đang l&agrave;m nhiều, cũng đ&aacute;ng để bạn chịu đựng một sự cắt giảm nhỏ trong thời gian n&agrave;y.</p>\r\n\r\n<p style=\"text-align: justify;\"><strong>4. SỰ TRẢ C&Ocirc;NG V&Agrave; LƯƠNG L&Agrave; MỘT</strong></p>\r\n\r\n<p style=\"text-align: justify;\">Quả thực số tiền hiển thị tr&ecirc;n phiếu lương bạn nhận mỗi th&aacute;ng l&agrave; rất quan trọng. &ldquo;Nhưng lương kh&ocirc;ng phải đ&atilde; l&agrave; tất cả, đ&atilde; bao gồm đủ những g&igrave; hai b&ecirc;n đề cập khi thoả thuận nhận việc&rdquo;, Kahn n&oacute;i. H&atilde;y t&igrave;m hiểu xem bạn c&oacute; thể nhận được cổ phiếu ưu đ&atilde;i hay khả năng trở th&agrave;nh cổ đ&ocirc;ng của c&ocirc;ng ty hay kh&ocirc;ng. C&ocirc;ng ty c&oacute; chi trả để bạn tham gia c&aacute;c kho&aacute; học bồi dưỡng chuy&ecirc;n m&ocirc;n hoặc đ&oacute;ng bảo hiểm cao nhằm chuẩn bị cho khoản tiết kiệm l&uacute;c về hưu? Nếu chỉ mải tập trung đ&agrave;m ph&aacute;n số tiền lương ch&iacute;nh thức, c&oacute; khả năng bạn sẽ qu&ecirc;n mất đi những <a href=\"https://careerbuilder.vn/vi/talentcommunity/6-khoan-ngoai-luong-ma-ung-vien-can-chu-y.35A51281.html\" target=\"_blank\">quyền lợi</a>&nbsp;quan trọng trong việc đầu tư cho tương lai gi&agrave;u c&oacute; của m&igrave;nh.</p>\r\n\r\n<p style=\"text-align: justify;\"><strong>5. N&Ecirc;N BỎ QUA C&Aacute;C CƠ HỘI VIỆC L&Agrave;M TRẢ LƯƠNG THẤP HƠN MONG ĐỢI NGAY TỪ ĐẦU</strong></p>\r\n\r\n<p style=\"text-align: justify;\">C&oacute; thể l&agrave; chuy&ecirc;n vi&ecirc;n tuyển dụng t&igrave;m được bạn th&ocirc;ng qua LinkedIn hoặc l&agrave; bạn ứng tuyển trực tuyến, nhưng rồi sau đ&oacute; trong l&uacute;c dự phỏng vấn bạn mới kh&aacute;m ph&aacute; được rằng mức lương cho vị tr&iacute; n&agrave;y thấp hơn mong đợi. Kahn n&oacute;i rằng &ldquo;Đừng th&aacute;o chạy! Rất nhiều người đ&atilde; c&oacute; phản ứng tức thời l&agrave; từ chối phỏng vấn, nhưng lu&ocirc;n c&oacute; một khả năng l&agrave; bạn sẽ chinh phục được nh&agrave; tuyển dụng v&agrave; họ sẽ c&acirc;n nhắc sắp xếp cho bạn một vị tr&iacute; ngo&agrave;i nhu cầu tuyển dụng.&rdquo;</p>\r\n\r\n<p style=\"text-align: justify;\">H&atilde;y khiến nh&agrave; tuyển dụng ấn tượng với chuy&ecirc;n m&ocirc;n v&agrave; kinh nghiệm của bạn, rồi biết đ&acirc;u họ sẽ linh động ng&acirc;n s&aacute;ch từ ph&ograve;ng ban kh&aacute;c sang để đảm bảo mức lương v&agrave; mở ra một vị tr&iacute; cấp cao hơn nhằm giữ cho bằng được bạn với c&ocirc;ng ty. Chiến lược n&agrave;y đ&ocirc;i khi kh&oacute; c&oacute; thể xảy ra, nhưng thực tế l&agrave; c&aacute;c c&ocirc;ng ty kh&ocirc;ng thể biết hết gi&aacute; trị của bạn cho đến khi bạn thể hiện ra.&rdquo;</p>\r\n\r\n<p style=\"text-align: justify;\"><em>(Nguồn ảnh: Internet)</em></p>\r\n','',4),(24,'Năm mới chạm tay vào sự nghiệp mơ ước','','1517572894572.png','Khi bắt đầu tìm kiếm công việc mơ ước, không cần phải áp dụng tất cả các quy tắc cũ. Mặc dù nỗ lực tìm kiếm các buổi phỏng vấn, viết một bản resume hay và chuẩn bị trang phục chuyên nghiệp vẫn là điều quan trọng, những người tìm việc ngày nay còn được gợi ý về danh sách các việc quan trọng khác cần phải làm mới.','','<p style=\"text-align: justify;\">Julia Horiuchi, Tư vấn cấp cao về Sales &amp; Marketing tại Robert Walters, thường xuy&ecirc;n tr&ograve; chuyện với c&aacute;c ứng vi&ecirc;n giỏi v&agrave; c&ocirc;ng ty săn đầu người mỗi ng&agrave;y. Từng tiếp x&uacute;c với một loạt vai tr&ograve; kh&aacute;c nhau từ cấp ph&oacute; chủ tịch cho đến người mới t&igrave;m c&ocirc;ng việc đầu ti&ecirc;n trong đời, c&ocirc; đ&atilde; ph&aacute;t triển được một khả năng nhận thức sắc b&eacute;n rằng đ&acirc;u l&agrave; những điều tốt nhất n&ecirc;n l&agrave;m để c&oacute; thể th&agrave;nh c&ocirc;ng trong mục ti&ecirc;u t&igrave;m việc.</p>\r\n\r\n<p style=\"text-align: justify;\">C&ugrave;ng <strong>CMC HRD</strong> t&igrave;m hiểu về 10 bước quan trọng m&agrave; c&aacute;c ứng vi&ecirc;n cần l&agrave;m để gi&agrave;nh được c&ocirc;ng việc mơ ước m&agrave; Julia đ&atilde; chia sẻ nh&eacute;!</p>\r\n\r\n<p style=\"text-align: justify;\"><strong>1</strong>. <strong>Cập nhật resume</strong>. Việc n&agrave;y c&oacute; vẻ dễ d&agrave;ng, nhưng ta thường sẽ bất ngờ về việc ứng vi&ecirc;n thường hay bất cẩn, sai s&oacute;t thế n&agrave;o khi chuẩn bị resume. Hồ sơ xin việc của bạn c&oacute; thể vẫn chưa ho&agrave;n hảo. H&atilde;y c&oacute; từ 3-5 người bạn chứng minh th&ocirc;ng tin cho bạn, v&agrave; chắc chắn rằng m&igrave;nh tr&igrave;nh b&agrave;y mọi thứ thật ngắn gọn, th&uacute; vị. Sau đ&oacute;, nếu bạn c&oacute; sử dụng Linked In, c&ocirc;ng cụ n&agrave;y sẽ l&agrave; kh&ocirc;ng gian gi&uacute;p bạn giới thiệu r&otilde; th&ecirc;m về c&aacute;c kỹ năng v&agrave; kinh nghiệm.</p>\r\n\r\n<p style=\"text-align: justify;\"><strong>2</strong>. Cũng trong d&ograve;ng suy nghĩ n&agrave;y, nếu bạn đề cập đến một đường link <strong>website</strong>, cần sử dụng đ&uacute;ng c&aacute;ch. Tạo ra c&aacute;c trang web để khẳng định thương hiệu c&aacute; nh&acirc;n l&agrave; một cơ hội dễ dẫn đến những sai lầm. V&igrave; thế, một lần nữa, h&atilde;y đảm bảo rằng bạn đ&atilde; c&oacute; v&agrave;i người bạn sẵn s&agrave;ng chứng minh v&agrave; c&oacute; thể gửi cho m&igrave;nh những phản hồi ch&acirc;n thật.</p>\r\n\r\n<p style=\"text-align: justify;\"><strong>3</strong>. <strong>Chữ k&yacute; email</strong> của bạn n&ecirc;n c&oacute; đủ th&ocirc;ng tin cần thiết như: họ t&ecirc;n, địa chỉ email, số điện thoại. Cũng c&oacute; thể th&ecirc;m v&agrave;o đ&oacute; một hoặc hai đường link về website chứa nội dung hỗ trợ tốt cho mục ti&ecirc;u t&igrave;m việc, như hồ sơ tr&ecirc;n LinkedIn hoặc t&agrave;i khoản Twitter chuy&ecirc;n nghiệp. Chữ k&yacute; n&agrave;y kh&ocirc;ng cần phải c&oacute; c&aacute;c c&acirc;u tr&iacute;ch dẫn h&agrave;i hước hoặc truyền cảm hứng cũng như kh&ocirc;ng n&ecirc;n ch&egrave;n th&ecirc;m ảnh động hoặc c&aacute;c đ&iacute;nh k&egrave;m kh&aacute;c. C&aacute; t&iacute;nh sẽ được thể hiện th&ocirc;ng qua phong c&aacute;ch viết, cần duy tr&igrave; cho chữ k&yacute; của m&igrave;nh vẻ &ldquo;sạch sẽ&rdquo; v&agrave; chuy&ecirc;n nghiệp!</p>\r\n\r\n<p style=\"text-align: justify;\"><strong>4</strong>. Một buổi phỏng vấn th&agrave;nh c&ocirc;ng lu&ocirc;n được bắt đầu bằng c&aacute;ch l&agrave;m đ&uacute;ng ngay từ những bước đầu ti&ecirc;n trong một cuộc gặp gỡ th&iacute;ch hợp. C&oacute; thể bạn để mắt đến Apple hoặc th&iacute;ch &yacute; tưởng l&agrave;m việc c&ugrave;ng Google, nhưng muốn th&agrave;nh c&ocirc;ng th&igrave; điều quan trọng l&agrave; phải c&oacute; <strong>sự nhất qu&aacute;n giữa c&aacute; nh&acirc;n</strong> <strong>với gi&aacute; trị v&agrave; văn ho&aacute; c&ocirc;ng ty</strong><span style=\"color: rgb(0, 0, 255);\"><strong>&nbsp;</strong></span><strong>bạn dự tuyển</strong>. H&atilde;y nghi&ecirc;n cứu sản phẩm c&ocirc;ng ty, rồi sau đ&oacute; đi th&ecirc;m những bước xa hơn. Bạn c&oacute; thể t&igrave;m thấy điều g&igrave; trong phong c&aacute;ch l&agrave;m việc của c&ocirc;ng ty mơ ước? C&aacute;c th&ocirc;ng tin n&agrave;y c&oacute; thể t&igrave;m kiếm tr&ecirc;n internet, nhưng n&oacute; thường được chia sẻ nhiều hơn khi bạn chủ động với c&aacute;c mối li&ecirc;n hệ. H&atilde;y xem chi tiết ở bước 5!</p>\r\n\r\n<p style=\"text-align: justify;\">5. <strong>N</strong><strong>e</strong><strong>tworking</strong> l&agrave;&nbsp;c&aacute;ch tốt nhất để thu thập th&ocirc;ng tin về một c&ocirc;ng ty m&agrave; bạn muốn l&agrave;m việc cũng như bắt lấy tiềm năng đặt &ldquo;một bước ch&acirc;n&rdquo; v&agrave;o cửa c&ocirc;ng ty. D&ugrave; rằng ng&agrave;y nay bạn c&oacute; trong tầm tay nhiều h&igrave;nh thức giao tiếp v&agrave; thu thập th&ocirc;ng tin kh&aacute;c nhau như email, mạng x&atilde; hội, nhưng kh&ocirc;ng g&igrave; c&oacute; thể thay thế được phương thức kết nối truyền thống &ldquo;mặt đối mặt&rdquo;. H&atilde;y t&igrave;m kiếm c&aacute;c sự kiện, cơ hội gặp gỡ trong ng&agrave;nh m&igrave;nh l&agrave;m việc để ho&agrave; nhập v&agrave;o với những chuy&ecirc;n gia d&agrave;y dạn kinh nghiệm, những nh&oacute;m người chuy&ecirc;n nghiệp m&agrave; bạn muốn tiếp cận. Sau đ&oacute; ch&iacute;nh l&agrave; l&uacute;c bạn kho&aacute;c l&ecirc;n người trang phục dự tiệc&hellip;</p>\r\n\r\n<p style=\"text-align: justify;\"><strong>6</strong>. Việc chăm ch&uacute;t cho vẻ ngo&agrave;i n&agrave;y kh&ocirc;ng phải d&agrave;nh để đi phỏng vấn, m&agrave; cho những buổi networking nghề nghiệp. Trong khi đ&oacute;, điều cần nhớ l&agrave; với những buổi phỏng vấn c&aacute; nh&acirc;n kh&ocirc;ng phải l&uacute;c n&agrave;o <strong>trang phục</strong><span style=\"color:#ee82ee;\"><strong>&nbsp;</strong></span>trịnh trọng cũng sẽ tốt. Lời khuy&ecirc;n của Julia l&agrave; h&atilde;y t&igrave;m hiểu về phong c&aacute;ch v&agrave; th&oacute;i quen ăn mặc của c&ocirc;ng ty đ&oacute;, sau đ&oacute; n&acirc;ng l&ecirc;n một mức khi &aacute;p dụng v&agrave;o m&igrave;nh. Nhớ l&agrave; chỉ &ldquo;một mức&rdquo; th&ocirc;i nh&eacute;! V&iacute; dụ nếu c&aacute;c đồng nghiệp tương lai c&oacute; xu hướng mặc quần jean v&agrave; &aacute;o thun đi l&agrave;m, h&atilde;y c&oacute; mặt tại buổi phỏng vấn với một chiếc quần jean đẹp v&agrave; &aacute;o sơ mi c&agrave;i n&uacute;t chỉnh tề. Mặc một bộ vest đến gặp người phỏng vấn mang xăng đan hay d&eacute;p l&ecirc; sẽ khiến bạn trở n&ecirc;n lạc l&otilde;ng v&agrave; lỗi thời. C&ograve;n ngược lại th&igrave; tệ hơn gấp bội. Ăn mặc l&agrave; phần quan trọng cần lưu &yacute;!</p>\r\n\r\n<p style=\"text-align: justify;\"><strong>7</strong>. Sự thật l&agrave; người phỏng vấn sẽ <strong>Google về bạn</strong>. H&atilde;y &ldquo;l&agrave;m sạch&rdquo; th&ocirc;ng tin c&aacute; nh&acirc;n m&agrave; bạn c&ocirc;ng khai v&agrave; thực hiện những bước đi chủ động để mọi kết quả t&igrave;m kiếm đều c&oacute; thể phản &aacute;nh h&igrave;nh ảnh t&iacute;ch cực nhất về thương hiệu c&aacute; nh&acirc;n bạn. Điều n&agrave;y bao gồm tất cả nền tảng mạng x&atilde; hội m&agrave; mọi người c&oacute; thể xem được như LinkedIn, Twitter, Blogspot... Bởi hoạt động tr&ecirc;n đ&oacute; sẽ chỉ ra tu&yacute;p người của bạn khi l&agrave;m việc. Bạn c&oacute; thường xuy&ecirc;n Instagram bất cứ mọi việc diễn ra mỗi tiếng một lần, thậm ch&iacute; cả ly tr&agrave; sữa vừa uống? Đ&acirc;y kh&ocirc;ng phải l&agrave; ấn tượng tốt m&agrave; sếp tương lai muốn nh&igrave;n thấy đ&acirc;u. H&atilde;y khiến cho mọi thứ gọn g&agrave;ng v&agrave; chuy&ecirc;n nghiệp! V&agrave; nếu bạn phải c&oacute; một nơi để tr&uacute;t những t&acirc;m tư c&aacute; nh&acirc;n, sử dụng Facebook v&agrave; chỉnh n&oacute; về chế độ ri&ecirc;ng tư.</p>\r\n\r\n<p style=\"text-align: justify;\"><strong>8</strong>. Bạn cũng n&ecirc;n Google để c&oacute; <strong>hiểu biết về người phỏng vấn</strong> m&igrave;nh. Biết ch&iacute;nh x&aacute;c người m&igrave;nh sắp n&oacute;i chuyện c&ugrave;ng l&agrave; ai. Nền tảng kinh nghiệm của anh ấy l&agrave; g&igrave;? C&ocirc; ấy đ&atilde; từng l&agrave;m việc ở đ&acirc;u kh&aacute;c nữa kh&ocirc;ng? Nếu đ&atilde; từng đảm nhiệm vị tr&iacute; tại c&ocirc;ng ty c&oacute; t&ecirc;n trong danh s&aacute;ch doanh nghiệp h&agrave;ng đầu, họ c&oacute; thể sẽ tiến h&agrave;nh buổi gặp mặt ch&iacute;nh thức theo c&aacute;ch kh&aacute; b&agrave;i bản v&agrave; nguy&ecirc;n tắc. Nhưng nếutừng trải qua thời gian l&agrave;m việc trong &ldquo;thế giới khởi nghiệp&rdquo; th&igrave; nhiều khả năng cuộc tr&ograve; chuy&ecirc;n của bạn sẽ kh&aacute; chiết trung v&agrave; giản dị. H&atilde;y c&oacute; sự chuẩn bị ph&ugrave; hợp!</p>\r\n\r\n<p style=\"text-align: justify;\"><strong>9</strong>. Nếu buổi <strong>phỏng vấn</strong> đầu ti&ecirc;n l&agrave; <strong>qua điện thoại hay Skype</strong>, đ&ocirc;i l&uacute;c bạn kh&oacute; cưỡng lại &yacute; muốn nhận ngay cuộc gọi khi đang đi ngo&agrave;i đường. H&atilde;y cẩn thận! G&acirc;y nhiễu cho sếp tương lai với những tiếng ồn &agrave;o, &acirc;m thanh n&aacute;o động của m&ocirc;i trường xung quanh bởi v&igrave; bạn đang tr&ecirc;n xe bus hay một nơi c&ocirc;ng cộng n&agrave;o kh&aacute;c l&agrave; c&aacute;ch chắc chắn nhất khiến bạn gạt m&igrave;nh ra khỏi danh s&aacute;ch được tuyển dụng. N&ecirc;n chuẩn bị cho c&uacute; điện thoại hoặc cuộc thoại video của m&igrave;nh như thể bạn đang gặp mặt trực tiếp. Sắp đặt mọi thứ thật chuy&ecirc;n nghiệp để cuộc tr&ograve; chuyện diễn ra m&agrave; kh&ocirc;ng c&oacute; bất cứ phiền nhiễu n&agrave;o nh&eacute;!</p>\r\n\r\n<p style=\"text-align: justify;\"><strong>10</strong>. Đừng chỉ theo d&otilde;i th&ocirc;ng tin v&agrave; lao đến buổi phỏng vấn chỉ bằng c&acirc;u n&oacute;i &ldquo;Rất vui được gặp mặt&rdquo;. H&atilde;y mang t&acirc;m l&yacute; &ldquo;<strong>Ready to Go</strong>&rdquo;, sẵn s&agrave;ng những mẩu chuyện hoặc v&iacute; dụ thực tế nhằm chốt hạ cho c&aacute;c thương lượng của m&igrave;nh. Nếu bạn phỏng vấn cho vị tr&iacute; Marketing, h&atilde;y viết ra sẵn những v&iacute; dụ về những th&agrave;nh c&ocirc;ng gặt h&aacute;i trong qu&aacute; khứ. C&ograve;n ứng tuyển c&ocirc;ng việc về kinh doanh, h&atilde;y chuẩn bị v&agrave;i số liệu thống k&ecirc; c&aacute;c kết quả tốt nhất m&agrave; m&igrave;nh từng đạt được. Dự kiến về bất cứ điều g&igrave; m&agrave; nh&agrave; tuyển dụng c&oacute; thể hỏi, v&agrave; sẵn s&agrave;ng khiến họ ngạc nhi&ecirc;n về khả năng của bạn nh&eacute;!</p>\r\n\r\n<p style=\"text-align: justify;\">B&iacute; quyết 10 bước c&oacute; trong tay, đừng chần chờ g&igrave; nữa m&agrave; kh&ocirc;ng bắt tay v&agrave;o việc chạm đến sự nghiệp mơ ước ngay h&ocirc;m nay!</p>\r\n\r\n<p style=\"text-align: justify;\"><em>(Nguồn ảnh: Internet)</em></p>\r\n','',4),(25,'Chọn lương cao hay vị trí cao cho bước đệm sự nghiệp?','','1517573071748.png','Ở một giai đoạn nào đó trong sự nghiệp, người lao động sẽ bắt đầu quan tâm cân nhắc đến các yếu tố ưu tiên trong việc lựa chọn môi trường làm việc để có được những bước thăng tiến và phát triển tốt hơn cho tương lai. Khi đó mức lương cao hay vị trí cao sẽ trở thành câu hỏi mà bạn buộc phải đưa ra quyết định.','','<p>Đ&acirc;u mới l&agrave; lựa chọn đ&uacute;ng, l&agrave; bước đệm tốt cho sự nghiệp tương lai của bạn, h&atilde;y c&ugrave;ng t&igrave;m hiểu ngay b&acirc;y giờ với <strong>CMC HRD</strong> nh&eacute;!</p>\r\n\r\n<p style=\"text-align: justify;\"><strong>H&atilde;y ưu ti&ecirc;n cho mục ti&ecirc;u v&agrave; định hướng nghề nghiệp</strong></p>\r\n\r\n<p style=\"text-align: justify;\">C&aacute; nh&acirc;n mỗi người đi l&agrave;m sẽ c&oacute; một mục ti&ecirc;u nghề nghiệp kh&aacute;c nhau, tuỳ thuộc v&agrave;o t&iacute;nh c&aacute;ch, mối quan t&acirc;m v&agrave; những yếu tố bạn xem l&agrave; quan trọng trong cuộc sống của m&igrave;nh. Theo đ&oacute; mục ti&ecirc;u n&agrave;y sẽ ảnh hưởng đến định hướng nghề nghiệp cũng như n&oacute; t&aacute;c động v&agrave;o c&aacute;ch bạn đo lường v&agrave; nh&igrave;n nhận sự th&agrave;nh c&ocirc;ng trong sự nghiệp của bản th&acirc;n. V&igrave; thế, khi nhắc đến những lựa chọn l&agrave;m bước đệm cho sự nghiệp, h&atilde;y ưu ti&ecirc;n xem x&eacute;t mục ti&ecirc;u nghề nghiệp trước ti&ecirc;n.</p>\r\n\r\n<p style=\"text-align: justify;\">Khi đề ra những mục ti&ecirc;u nghề nghiệp cụ thể, bạn sẽ x&aacute;c định được đ&acirc;u l&agrave; lựa chọn đ&uacute;ng đắn ph&ugrave; hợp với định hướng của bản th&acirc;n. Nếu đề cao một sự nghiệp l&acirc;u d&agrave;i với tiếng tăm, địa vị v&agrave; những sự nh&igrave;n nhận về vị thế x&atilde; hội, phần đ&ocirc;ng người đi l&agrave;m sẽ c&oacute; khuynh hướng chọn vị tr&iacute; cao.</p>\r\n\r\n<p style=\"text-align: justify;\">Ở c&aacute;c c&ocirc;ng ty thường c&oacute; một lộ tr&igrave;nh ph&aacute;t triển nhất định cho từng vị tr&iacute;, ph&ograve;ng ban. Nếu nhận thấy lộ tr&igrave;nh thăng tiến đ&oacute; ph&ugrave; hợp với định hướng nghề nghiệp tương lai của m&igrave;nh th&igrave; việc <span style=\"color:#0000ff;\">phấn đấu v&agrave; gi&agrave;nh lấy vị tr&iacute; tốt</span>&nbsp;l&agrave;m bước đệm sự nghiệp l&agrave; quyết định n&ecirc;n xem x&eacute;t. V&iacute; dụ như chuyển đổi c&ocirc;ng việc sang m&ocirc;i trường quốc tế hoặc điều chỉnh phạm vi tr&aacute;ch nhiệm theo hướng quản l&yacute; chuy&ecirc;n s&acirc;u&hellip; Ngược lại, nếu mục ti&ecirc;u của bạn nghi&ecirc;ng về thu nhập v&agrave; bạn ưa chuộng sự trả c&ocirc;ng tương xứng th&igrave; bạn theo đuổi c&aacute;c hướng ph&aacute;t triển cho tiền lương v&agrave; ph&uacute;c lợi.</p>\r\n\r\n<p style=\"text-align: justify;\"><strong>C&acirc;n nhắc yếu tố tuổi t&aacute;c trước khi quyết định</strong></p>\r\n\r\n<p style=\"text-align: justify;\">Nghe c&oacute; vẻ thực dụng nhưng thật sự <span style=\"color:#0000ff;\">tuổi t&aacute;c</span>&nbsp;l&agrave; vấn đề cực kỳ quan trọng. Bạn n&ecirc;n đặt ra những ưu ti&ecirc;n nhất định cho việc ph&aacute;t triển sự nghiệp theo từng độ tuổi. Khi c&ograve;n trẻ, bạn c&oacute; thể c&oacute; nhiều thời gian để lựa chọn sai v&agrave; l&agrave;m lại, miễn sao thoả m&atilde;n đam m&ecirc; v&agrave; sở th&iacute;ch bản th&acirc;n l&agrave; được. Nhưng khi bắt đầu bước v&agrave;o độ tuổi ch&iacute;n chắn phải l&atilde;nh nhận nhiều tr&aacute;ch nhiệm gia đ&igrave;nh hơn, phải lo toan nh&agrave; cửa, con c&aacute;i đồng thời g&aacute;nh v&aacute;c th&ecirc;m những bổn phận x&atilde; hội nữa th&igrave; việc c&oacute; một thu nhập ổn định tương xứng sẽ khiến bạn cảm thấy y&ecirc;n t&acirc;m để gắn b&oacute; với c&ocirc;ng việc hơn rất nhiều.</p>\r\n\r\n<p style=\"text-align: justify;\"><strong>N&ecirc;n lựa chọn theo sở th&iacute;ch về mức lương cứng v&agrave; tổng thu nhập</strong></p>\r\n\r\n<p style=\"text-align: justify;\">Kh&ocirc;ng hẳn vị tr&iacute; c&agrave;ng cao th&igrave; mức lương sẽ tăng vọt theo thị trường nhưng b&ugrave; lại ở vị tr&iacute; cao th&igrave; bạn sẽ được hưởng những chế độ v&agrave; ph&uacute;c lợi đặc biệt. C&oacute; người sẽ muốn mức lương cao v&igrave; quan t&acirc;m đến thu nhập thật sự h&agrave;ng th&aacute;ng, rồi d&ugrave;ng ch&iacute;nh thu nhập đ&oacute; chi trả cho những nhu cầu kh&aacute;c của bản th&acirc;n. Nhưng c&oacute; người lại muốn được hưởng một chế độ ph&uacute;c lợi tốt v&agrave; l&acirc;u d&agrave;i. V&igrave; vậy, h&atilde;y chọn lấy <span style=\"color:#0000ff;\">phương &aacute;n</span>&nbsp;n&agrave;o bản th&acirc;n bạn cảm thấy thoải m&aacute;i nhất v&agrave; sẽ khiến bạn cảm thấy c&oacute; thể cống hiến tốt nhất.</p>\r\n\r\n<p style=\"text-align: justify;\">Một lưu &yacute; cuối c&ugrave;ng, d&ugrave; lựa chọn yếu tố n&agrave;o l&agrave; quan trọng nhất cho bước đệm c&ocirc;ng việc, bạn vẫn cần phải lu&ocirc;n ghi nhớ về y&ecirc;u cầu tự xem x&eacute;t gi&aacute; trị c&ocirc;ng việc để đưa ra những quyết định s&aacute;ng suốt. H&atilde;y tham khảo c&aacute;c cổng th&ocirc;ng tin v&agrave; b&aacute;o c&aacute;o chuy&ecirc;n nghiệp về lương như <span style=\"color:#0000ff;\">VietnamSalary.vn</span>&nbsp;để định kỳ cập nhật thang lương b&igrave;nh qu&acirc;n của thị trường đồng thời đo lường vị tr&iacute; thực sự của bản th&acirc;n tr&ecirc;n bản đồ nguồn nh&acirc;n lực thực tế.</p>\r\n\r\n<p style=\"text-align: justify;\"><em>(Nguồn ảnh: Internet)</em></p>\r\n','',4),(26,'Minh bạch lương liệu sẽ là động lực cho người đi làm?','','1517573213412.png','Một nghiên cứu gần đây cho thấy các công ty có chính sách mở và phổ biến rộng rãi thông tin về lương sẽ khiến nhân viên vui vẻ và nhiều động lực làm việc hơn.','','<p>C&aacute;c quy tắc ngầm hiểu v&agrave; quan niệm xưa nay vẫn thường bảo ch&uacute;ng ta rằng lịch sự nhất l&agrave; kh&ocirc;ng n&ecirc;n d&ograve; hỏi v&agrave; t&igrave;m hiểu về thu nhập của người kh&aacute;c. Điều n&agrave;y tất nhi&ecirc;n c&oacute; l&yacute; do hết sức ch&iacute;nh đ&aacute;ng của n&oacute;, nhưng c&oacute; nhất thiết phải d&aacute;n nh&atilde;n &ldquo;Top secret&rdquo; l&ecirc;n mọi th&ocirc;ng tin về lương&nbsp;hay kh&ocirc;ng lại l&agrave; chuyện kh&aacute;c. H&atilde;y c&ugrave;ng CareerBuilder.vn đi t&igrave;m nhận định cho ri&ecirc;ng m&igrave;nh.</p>\r\n\r\n<p style=\"text-align: justify;\"><strong>V&igrave; sao th&ocirc;ng tin lương thưởng thường kh&ocirc;ng được c&ocirc;ng khai?</strong></p>\r\n\r\n<p style=\"text-align: justify;\">T&acirc;m l&yacute; giữ b&iacute; mật về lương thưởng được ủng hộ v&agrave; tồn tại hầu hết xuất ph&aacute;t từ g&oacute;c độ quản l&yacute; v&agrave; thuộc về trải nghiệm của người l&agrave;m nh&acirc;n sự hơn l&agrave; quan điểm c&aacute; nh&acirc;n:</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\">L&yacute; do lớn nhất ch&iacute;nh l&agrave; để ngăn ngừa t&igrave;nh huống nh&acirc;n vi&ecirc;n nảy sinh <strong>h&agrave;nh động so đo &iacute;t nhiều</strong> với đồng nghiệp c&oacute; thu nhập cao hơn, cũng như <strong>th&aacute;i độ bất m&atilde;n</strong> với c&ocirc;ng ty v&agrave; <strong>cảm x&uacute;c ti&ecirc;u cực</strong> trong c&ocirc;ng việc, khi ph&aacute;t hiện ra sự ch&ecirc;nh lệch mức lương giữa c&aacute;c nh&acirc;n vi&ecirc;n đồng cấp hoặc c&ugrave;ng vị tr&iacute; trong c&ocirc;ng ty.</li>\r\n	<li style=\"text-align: justify;\">Thứ hai, một số nh&agrave; quản l&yacute; e ngại nếu c&ocirc;ng bố cụ thể mức lương khi tuyển dụng đồng thời chia sẻ rộng r&atilde;i cơ cấu lương c&ocirc;ng ty th&igrave; sẽ c&oacute; <strong>nguy cơ bị đối thủ cướp mất nh&acirc;n t&agrave;i </strong>m&agrave; họ đ&atilde; d&agrave;y c&ocirc;ng săn l&ugrave;ng được. Điều n&agrave;y dễ hiểu với bối cảnh thị trường lao động cạnh tranh khốc liệt, một trong những &ldquo;vũ kh&iacute;&rdquo; gi&uacute;p gi&agrave;nh thắng lợi trong cuộc chiến nh&acirc;n t&agrave;i ch&iacute;nh l&agrave; lương hậu hĩnh v&agrave; ph&uacute;c lợi cao. Thế n&ecirc;n, khi nh&agrave; tuyển dụng &ldquo;phơi hết ruột gan&rdquo; m&igrave;nh ra để thu h&uacute;t ứng vi&ecirc;n tiềm năng cũng ch&iacute;nh l&agrave; l&uacute;c họ phải vất vả hơn để cạnh tranh với những c&ocirc;ng ty kh&aacute;c.</li>\r\n	<li style=\"text-align: justify;\">B&ecirc;n cạnh nỗi lo bị đối thủ gi&agrave;nh mất nh&acirc;n t&agrave;i, nh&acirc;n vi&ecirc;n cũng dễ mang t&acirc;m l&yacute; đi t&igrave;m &ldquo;đồng cỏ xanh hơn&rdquo; khi c&oacute; &yacute; nghĩ rằng c&ocirc;ng ty trả lương chưa xứng đ&aacute;ng khi thang lương c&ocirc;ng bố kh&ocirc;ng bằng c&ocirc;ng ty đối thủ (mặc d&ugrave; th&ocirc;ng tin c&oacute; thể chỉ l&agrave; nghe phong phanh chứ chưa x&aacute;c thực). Trong trường hợp n&agrave;y, nhiều người c&oacute; xu hướng t&igrave;m kiếm c&ocirc;ng việc mới hơn đề nghị tăng lương. Khảo s&aacute;t của Robert Half năm 2015 chỉ ra rằng trong khi 89% đ&aacute;p vi&ecirc;n nghĩ rằng họ xứng đ&aacute;ng được tăng lương, th&igrave; chỉ 54% người tham gia c&oacute; &yacute; định l&ecirc;n tiếng.</li>\r\n</ul>\r\n\r\n<p style=\"text-align: justify;\"><strong>Minh bạch lương mang lại t&aacute;c dụng g&igrave;?</strong></p>\r\n\r\n<p style=\"text-align: justify;\">Hiểu những t&aacute;c động kh&ocirc;ng tốt l&agrave; thế, nhưng thực tế gần đ&acirc;y nhiều c&ocirc;ng ty đ&atilde; theo đuổi ch&iacute;nh s&aacute;ch minh bạch lương cho nh&acirc;n vi&ecirc;n bởi tin tưởng v&agrave;o những lợi &iacute;ch v&agrave; gi&aacute; trị m&agrave; n&oacute; mang lại.</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\">T&acirc;m l&yacute; cởi mở sẽ th&uacute;c đẩy&nbsp;<strong>động lực l&agrave;m việc</strong>. Một nghi&ecirc;n cứu phối hợp giữa Cornell University&rsquo;s School of Industrial, Labour Relations v&agrave; Đại học Tel Aviv đ&atilde; kết luận rằng c&aacute;c nh&acirc;n vi&ecirc;n l&agrave;m việc c&ugrave;ng nhau hiệu quả hơn khi biết r&otilde; từng người nhận được bao nhi&ecirc;u. Elena Gitter, Trợ l&yacute; gi&aacute;o sư tại Cornell, nhận định, &ldquo;<em>Ở g&oacute;c độ c&aacute; nh&acirc;n, việc b&iacute; mật chi lương c&oacute; thể ảnh hưởng xấu đến động cơ, hiệu suất l&agrave;m việc v&agrave; khả năng duy tr&igrave; nhiệm vụ</em>&rdquo;. Những nh&agrave; nghi&ecirc;n cứu cũng ghi nhận kết quả l&agrave;, với th&ocirc;ng tin về lương sẵn c&oacute;, c&aacute;c đối tượng sẽ đ&aacute;nh gi&aacute; được năng lực từng đồng đội v&agrave; chọn ra người c&oacute; tr&igrave;nh độ cao nhất để li&ecirc;n hệ khi cần sự trợ gi&uacute;p.</li>\r\n	<li style=\"text-align: justify;\"><strong>Động cơ phấn đấu v&agrave; ph&aacute;t triển bản th&acirc;n</strong>. Nghi&ecirc;n cứu của Emiliano Huet-Vaughn từ Middlebury College cũng đ&atilde; cho thấy những ai x&aacute;c định được mức lương của m&igrave;nh trong mối tương quan với người kh&aacute;c sẽ l&agrave;m việc chăm chỉ hơn v&agrave; n&acirc;ng hiệu suất c&ocirc;ng việc l&ecirc;n cao hơn. Một khi đ&atilde; biết người kh&aacute;c c&oacute; thể nhận được lương bao nhi&ecirc;u, bạn sẵn s&agrave;ng nỗ lực hơn để đạt được thu nhập cao hơn.</li>\r\n	<li style=\"text-align: justify;\"><strong>Hiểu r&otilde; lộ tr&igrave;nh nghề nghiệp</strong>. Nắm bắt ch&iacute;nh s&aacute;ch lương to&agrave;n c&ocirc;ng ty, người lao động sẽ biết được vị tr&iacute; của m&igrave;nh trong lộ tr&igrave;nh ph&aacute;t triển tại đ&oacute;. Những tập đo&agrave;n lớn với quy tr&igrave;nh nh&acirc;n sự chuy&ecirc;n nghiệp thường x&acirc;y dựng lộ tr&igrave;nh v&agrave; vạch ra kế hoạch ph&aacute;t triển nguồn nh&acirc;n lực rất b&agrave;i bản. Trong đ&oacute;, x&aacute;c định r&otilde; cơ cấu tổ chức sẽ gồm tất cả bao nhi&ecirc;u cấp bậc từ nh&acirc;n vi&ecirc;n tập sự cho đến ban l&atilde;nh đạo. Tương ứng với từng cấp bậc l&agrave; y&ecirc;u cầu về năng lực, phạm vi quyền hạn v&agrave; tr&aacute;ch nhiệm, mức lương cơ sở c&ugrave;ng những quyền lợi v&agrave; ưu đ&atilde;i ri&ecirc;ng. C&aacute;ch l&agrave;m n&agrave;y gi&uacute;p nh&acirc;n vi&ecirc;n nhận thức rằng mọi đ&aacute;nh gi&aacute; đều được quy về chuẩn chung, kh&ocirc;ng c&oacute; sự cảm t&iacute;nh hay may mắn, bạn nỗ lực nhiều v&agrave; c&oacute; t&agrave;i năng th&igrave; thăng tiến nghề nghiệp v&agrave; thu nhập theo đ&oacute; sẽ tỷ lệ thuận.</li>\r\n</ul>\r\n\r\n<p style=\"text-align: justify;\"><strong>C&oacute; hay kh&ocirc;ng sự lựa chọn c&acirc;n bằng giữa &ldquo;giữ b&iacute; mật&rdquo; v&agrave; &ldquo;minh bạch lương&rdquo;?</strong></p>\r\n\r\n<p style=\"text-align: justify;\">Cho đến hiện tại, &ldquo;b&iacute; mật lương&rdquo; hay &ldquo;minh bạch lương&rdquo; vẫn đang c&ograve;n l&agrave; chủ đề b&agrave;n luận s&ocirc;i nổi của rất nhiều người l&agrave;m c&ocirc;ng t&aacute;c nh&acirc;n sự, đồng thuận hay phản đối vẫn c&ograve;n chưa ng&atilde; ngũ. Bởi x&eacute;t cho c&ugrave;ng, lựa chọn n&agrave;o ph&ugrave; hợp vẫn phải dựa tr&ecirc;n ho&agrave;n cảnh thực tế, mục ti&ecirc;u l&acirc;u d&agrave;i, khả năng đ&aacute;p ứng của từng doanh nghiệp. Tuy nhi&ecirc;n, đến thời điểm hiện tại, những quan điểm &ldquo;cố thủ&rdquo; truyền thống đ&atilde; dần chuyển động sang hướng cởi mở hơn nhiều, khi nh&agrave; tuyển dụng đặt nhu cầu v&agrave; lợi &iacute;ch của người lao động l&ecirc;n vị tr&iacute; cao hơn trong h&agrave;nh tr&igrave;nh thu phục nh&acirc;n t&agrave;i.</p>\r\n\r\n<p style=\"text-align: justify;\">B&ecirc;n cạnh những nỗ lực từ doanh nghiệp, người đi l&agrave;m đ&atilde; biết t&igrave;m đến những k&ecirc;nh th&ocirc;ng tin đ&aacute;ng tin cậy về lương để l&agrave;m cơ sở đo lường v&agrave; tham khảo cho c&aacute;c quyết định của m&igrave;nh, b&ecirc;n cạnh những b&aacute;o c&aacute;o lương hằng năm được thực hiện bởi c&aacute;c c&ocirc;ng ty khảo s&aacute;t uy t&iacute;n tr&ecirc;n thị trường. &nbsp;Việc tự t&igrave;m hiểu v&agrave; đ&aacute;nh gi&aacute; thu nhập mong muốn th&ocirc;ng qua k&ecirc;nh đo lường trực tuyến về mức lương c&oacute; thể xem như phần n&agrave;o c&acirc;n bằng giữa việc &ldquo;giữ b&iacute; mật&rdquo; về thu nhập hiện tại nhưng vẫn c&oacute; thể đ&aacute;p ứng nhu cầu được &ldquo;minh bạch lương&rdquo; để đưa ra nhận định ri&ecirc;ng liệu họ c&oacute; đang được trả mức lương xứng đ&aacute;ng.</p>\r\n\r\n<p style=\"text-align: justify;\">Sau tất cả, minh bạch lu&ocirc;n l&agrave; gi&aacute; trị văn ho&aacute; đ&aacute;ng khuyến kh&iacute;ch trong c&aacute;c doanh nghiệp v&agrave; đối với lương c&oacute; lẽ kh&ocirc;ng ngoại lệ khi n&oacute; sẽ g&oacute;p phần tạo ra động lực phấn đấu trong nghề nghiệp cho người đi l&agrave;m. Nhưng c&ocirc;ng ty cần x&aacute;c định được mức độ &ldquo;minh bạch&rdquo; n&agrave;o ph&ugrave; hợp với tổ chức của m&igrave;nh nhất v&agrave; người lao động cũng n&ecirc;n biết tận dụng c&aacute;c th&ocirc;ng tin được c&ocirc;ng bố với t&acirc;m l&yacute; cầu tiến, t&iacute;ch cực.</p>\r\n','',4);
/*!40000 ALTER TABLE `news_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_tag`
--

DROP TABLE IF EXISTS `news_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_tag` (
  `id_news_post` int(11) NOT NULL,
  `id_tag` int(11) NOT NULL,
  PRIMARY KEY (`id_news_post`,`id_tag`),
  KEY `FK_41` (`id_tag`),
  CONSTRAINT `FK_40` FOREIGN KEY (`id_news_post`) REFERENCES `news_post` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_41` FOREIGN KEY (`id_tag`) REFERENCES `tag` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_tag`
--

LOCK TABLES `news_tag` WRITE;
/*!40000 ALTER TABLE `news_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `news_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_candidate`
--

DROP TABLE IF EXISTS `permission_candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_candidate` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `id_cms_user` int(11) NOT NULL,
  `action_user` int(11) NOT NULL,
  `id_portal_user` int(11) DEFAULT NULL,
  `id_creater` int(11) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK_permission_candidate_1` (`id_cms_user`),
  KEY `FK_permission_candidate_2` (`id_portal_user`),
  KEY `FK_permission_candidate_3` (`id_creater`),
  CONSTRAINT `FK_permission_candidate_1` FOREIGN KEY (`id_cms_user`) REFERENCES `cms_user` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_permission_candidate_2` FOREIGN KEY (`id_portal_user`) REFERENCES `portal_user` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_permission_candidate_3` FOREIGN KEY (`id_creater`) REFERENCES `cms_user` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_candidate`
--

LOCK TABLES `permission_candidate` WRITE;
/*!40000 ALTER TABLE `permission_candidate` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal_about`
--

DROP TABLE IF EXISTS `portal_about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal_about` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `content_vi` text COLLATE utf8_unicode_ci,
  `content_en` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_about`
--

LOCK TABLES `portal_about` WRITE;
/*!40000 ALTER TABLE `portal_about` DISABLE KEYS */;
INSERT INTO `portal_about` VALUES (1,'Trang about tieng viet','Content');
/*!40000 ALTER TABLE `portal_about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal_banner`
--

DROP TABLE IF EXISTS `portal_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal_banner` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_vi` text COLLATE utf8_unicode_ci,
  `description_en` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flg_status` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_banner`
--

LOCK TABLES `portal_banner` WRITE;
/*!40000 ALTER TABLE `portal_banner` DISABLE KEYS */;
INSERT INTO `portal_banner` VALUES (1,'Sự nghiệp mơ ước, nâng bước thành công','Empowering you through career pathing','CMC ghi nhận và trân trọng sự nỗ lực cùng với các giá trị lao động của tất cả các thành viên trong hành trình lớn mạnh và trong từng thành công của CMC.','We hope CMC is  a place where you build your career. Therefore, we open up to you more promotion opportunities in CMC, and designed program to help you succeed  in every single career path. ','banner01.jpg',1,'2018-01-23 01:02:11'),(2,'CMC và chiến lược con người','Focus on peole strategy','Chiến lược nhân sự tốt nhất là tuyển dụng, đào tạo và trả lương cho con người sao cho họ có thể sáng tạo ra những chiến lược tương lai tốt nhất.','With the motto \"People are core elements make up the success of the enterprise\", we look forward to a modern working environment and professional, which truly honor the talent and human values.','banner02.jpg',1,'2018-01-23 01:02:11'),(3,'CMC nơi làm việc hạnh phúc','CMC - The best place to work in vietnam','Tự hào vì có hơn 2.000 cộng sự tài năng, nhiệt huyết và đầy khát vọng, chúng tôi mong muốn sự hạnh phúc và công bằng luôn được hiện hữu trong môi trường làm việc của CMC.','We fully agree philosophy: \"Best HR strategy is to recruit, train and pay salaries to people so that they can create the best future strategy.\"','banner03.jpg',1,'2018-01-23 01:02:11');
/*!40000 ALTER TABLE `portal_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal_comment_job`
--

DROP TABLE IF EXISTS `portal_comment_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal_comment_job` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `id_job` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `id_parent` int(11) DEFAULT NULL,
  `comment_level` int(11) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK_33` (`id_job`),
  KEY `FK_34` (`id_user`),
  KEY `FK_35` (`id_parent`),
  CONSTRAINT `FK_33` FOREIGN KEY (`id_job`) REFERENCES `job_post` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_34` FOREIGN KEY (`id_user`) REFERENCES `portal_user` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_35` FOREIGN KEY (`id_parent`) REFERENCES `portal_comment_job` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_comment_job`
--

LOCK TABLES `portal_comment_job` WRITE;
/*!40000 ALTER TABLE `portal_comment_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `portal_comment_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal_comment_news`
--

DROP TABLE IF EXISTS `portal_comment_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal_comment_news` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `id_news` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `id_parent` int(11) DEFAULT NULL,
  `comment_level` int(11) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK_36` (`id_news`),
  KEY `FK_37` (`id_user`),
  KEY `FK_38` (`id_parent`),
  CONSTRAINT `FK_36` FOREIGN KEY (`id_news`) REFERENCES `news_post` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_37` FOREIGN KEY (`id_user`) REFERENCES `portal_user` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_38` FOREIGN KEY (`id_parent`) REFERENCES `portal_comment_news` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_comment_news`
--

LOCK TABLES `portal_comment_news` WRITE;
/*!40000 ALTER TABLE `portal_comment_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `portal_comment_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal_contact_section`
--

DROP TABLE IF EXISTS `portal_contact_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal_contact_section` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flg_status` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_contact_section`
--

LOCK TABLES `portal_contact_section` WRITE;
/*!40000 ALTER TABLE `portal_contact_section` DISABLE KEYS */;
INSERT INTO `portal_contact_section` VALUES (1,'image',1,'2018-01-23 01:02:11');
/*!40000 ALTER TABLE `portal_contact_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal_environment_detail`
--

DROP TABLE IF EXISTS `portal_environment_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal_environment_detail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_environment_section` int(11) DEFAULT NULL,
  `flg_status` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK_44` (`id_environment_section`),
  CONSTRAINT `FK_44` FOREIGN KEY (`id_environment_section`) REFERENCES `portal_environment_section` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_environment_detail`
--

LOCK TABLES `portal_environment_detail` WRITE;
/*!40000 ALTER TABLE `portal_environment_detail` DISABLE KEYS */;
INSERT INTO `portal_environment_detail` VALUES (1,'Không chỉ là nghề nghiệp','Not only a job',1,1,'2018-01-23 01:02:11'),(2,'Không “tường rào”','No barries',1,1,'2018-01-23 01:02:11'),(3,'Không “giai cấp”','No rank',1,1,'2018-01-23 01:02:11'),(4,'Không “Office”','No \"office\"',1,1,'2018-01-23 01:02:11'),(5,'Được một “gia đình” lớn','Being a big family',1,1,'2018-01-23 01:02:11'),(7,'Được phát triển chuyên nghiệp','Be developed professionally',1,1,'2018-02-06 02:20:47'),(8,'Được sáng tạo, thay đổi thế giới','Be creative and changing the world',1,1,'2018-02-06 02:20:47');
/*!40000 ALTER TABLE `portal_environment_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal_environment_section`
--

DROP TABLE IF EXISTS `portal_environment_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal_environment_section` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `href` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flg_status` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_environment_section`
--

LOCK TABLES `portal_environment_section` WRITE;
/*!40000 ALTER TABLE `portal_environment_section` DISABLE KEYS */;
INSERT INTO `portal_environment_section` VALUES (1,'Tại sao chọn CMC','Why CMC','mov_bbb.mp4','href 1',1,'2018-01-23 01:02:11');
/*!40000 ALTER TABLE `portal_environment_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal_footer`
--

DROP TABLE IF EXISTS `portal_footer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal_footer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_vi` text COLLATE utf8_unicode_ci,
  `content_en` text COLLATE utf8_unicode_ci,
  `flg_status` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_footer`
--

LOCK TABLES `portal_footer` WRITE;
/*!40000 ALTER TABLE `portal_footer` DISABLE KEYS */;
INSERT INTO `portal_footer` VALUES (1,'image','title_vi','title_en','content_vi','conten_en',1,'2018-01-23 01:02:11'),(2,'image','title_vi','title_en','content_vi','conten_en',1,'2018-01-23 01:02:11'),(3,'image','title_vi','title_en','content_vi','conten_en',1,'2018-01-23 01:02:11'),(4,'image','title_vi','title_en','content_vi','conten_en',1,'2018-01-23 01:02:11'),(5,'image','title_vi','title_en','content_vi','conten_en',1,'2018-01-23 01:02:11'),(6,'image','title_vi','title_en','content_vi','conten_en',1,'2018-01-23 01:02:11'),(7,'image','title_vi','title_en','content_vi','conten_en',1,'2018-01-23 01:02:11');
/*!40000 ALTER TABLE `portal_footer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal_income_section`
--

DROP TABLE IF EXISTS `portal_income_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal_income_section` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_vi` text COLLATE utf8_unicode_ci,
  `description_en` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `href` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flg_status` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_income_section`
--

LOCK TABLES `portal_income_section` WRITE;
/*!40000 ALTER TABLE `portal_income_section` DISABLE KEYS */;
INSERT INTO `portal_income_section` VALUES (1,'“Thu nhập không giới hạn nếu bạn có khả năng”','“Unlimited income if you have the ability”','Tại CMC, mỗi vị trí tuyển dụng không chỉ đơn giản là một cơ hội việc làm, mà đó có thể là niềm hạnh phúc về một bước tiến trong sự nghiệp của bạn đồng thời là sự hi vọng về một nhân tố tài năng đối với sự phát triển của công ty. Chúng tôi luôn mong muốn CMC sẽ là nơi bạn xây dựng sự nghiệp. Dù bạn lựa chọn theo đuổi công việc quản lý hay tập trung phát triển chuyên môn, CMC đều ghi nhận và đánh giá cao tài năng của bạn.','We hope CMC is  a place where you build your career. Whether you want to pursue to be a manager or focus on professional development, we acknowledge and appreciate your talents. Therefore, we open up to you more promotion opportunities in CMC, and designed program to help you succeed  in every single career path','inf-1.png','href 1',1,'2018-01-23 01:02:11');
/*!40000 ALTER TABLE `portal_income_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal_language`
--

DROP TABLE IF EXISTS `portal_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal_language` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `language_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_language`
--

LOCK TABLES `portal_language` WRITE;
/*!40000 ALTER TABLE `portal_language` DISABLE KEYS */;
INSERT INTO `portal_language` VALUES (1,'Tiếng Anh','English'),(2,'Tiếng Nhật','Japanese'),(3,'Tiếng Hàn','Korean'),(4,'Khác','Others');
/*!40000 ALTER TABLE `portal_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal_menu`
--

DROP TABLE IF EXISTS `portal_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal_menu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flg_status` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_menu`
--

LOCK TABLES `portal_menu` WRITE;
/*!40000 ALTER TABLE `portal_menu` DISABLE KEYS */;
INSERT INTO `portal_menu` VALUES (1,'Trang chủ','Home','/',1,'2018-01-23 01:02:11'),(2,'Công việc','Jobs','/tat-ca-viec-lam',1,'2018-01-23 01:02:11'),(3,'Tin tức','News','/tin-tuc',1,'2018-01-23 01:02:11'),(4,'Về CMC','About CMC','https://www.cmc.com.vn/vi',1,'2018-01-23 01:02:11');
/*!40000 ALTER TABLE `portal_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal_people_section`
--

DROP TABLE IF EXISTS `portal_people_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal_people_section` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_vi` text COLLATE utf8_unicode_ci,
  `description_en` text COLLATE utf8_unicode_ci,
  `flg_status` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_people_section`
--

LOCK TABLES `portal_people_section` WRITE;
/*!40000 ALTER TABLE `portal_people_section` DISABLE KEYS */;
INSERT INTO `portal_people_section` VALUES (1,'Đỗ Thị Thoa','Do Thi Thoa','image1','Trung tâm Phát triển Nguồn lực CMC, CMC Corp','Resource Development Center, CMC Corp','avatar-1.jpg','CMC như gia đình thứ hai của tôi. Tại đây, tôi có các đồng đội luôn kề vai sát cánh, chia sẻ và hỗ trợ nhau cùng phát triển.','CMC is like my second family, here I have a dream team that always willing to share, solve every problem together.',1,'2018-01-23 08:02:11'),(2,'Phí Thị Phương','Phi Thi Phuong','image1','Phòng Nhân sự và Quản lý chất lượng, CMC SI','HR Dept, CMC SI','avatar-2.jpg','Tôi cảm thấy rất tự hào khi được có cơ hội phát triển bản thân tại công ty có bề dày lịch sử như CMC. Tôi mong muốn được đồng hành cùng CMC trong suốt sự nghiệp của mình.','I feel very proud to have the opportunity to improve myself in a big company as CMC. I look forward to working with CMC throughout my career path.',1,'2018-01-23 08:02:11'),(3,'Bùi Duy Tuấn','Bui Duy Tuan','image1','Oracle DBA, CMC SI','Oracle DBA, CMC SI','avatar-3.jpg','Ngay từ những ngày đầu gia nhập CMC, tôi đã cảm nhận được sự “Sáng tạo – Chuyên nghiệp – Đồng đội” qua từng con người CMC. Đây chính là nơi làm việc mà tôi mong ước.',' The first day of joining CMC, I have felt the\" Creativity - Professional - Teamwork \" through CMC people. This is the place where I wish to work.',1,'2018-01-23 08:02:11');
/*!40000 ALTER TABLE `portal_people_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal_sub_menu`
--

DROP TABLE IF EXISTS `portal_sub_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal_sub_menu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_menu` int(11) DEFAULT NULL,
  `flg_status` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK_29` (`id_menu`),
  CONSTRAINT `FK_29` FOREIGN KEY (`id_menu`) REFERENCES `portal_menu` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_sub_menu`
--

LOCK TABLES `portal_sub_menu` WRITE;
/*!40000 ALTER TABLE `portal_sub_menu` DISABLE KEYS */;
INSERT INTO `portal_sub_menu` VALUES (1,'Trên 3 năm kinh nghiệm','Expert','/tat-ca-viec-lam?lang=vi&search=3-5 năm','/job_posts?lang=en&search=3-5 years',2,1,'2018-01-23 01:02:11'),(2,'Dưới 3 năm kinh nghiệm','Fresher','/tat-ca-viec-lam?lang=vi&search=1-3 năm','/job_posts?lang=en&search=1-3 years',2,1,'2018-01-23 01:02:11'),(3,'Thực tập sinh','Internship','/tat-ca-viec-lam?lang=vi&search=Chưa có kinh nghiệm','/job_posts?lang=en&search=Non-experience',2,1,'2018-01-23 01:02:11'),(4,'Thông điệp tuyển dụng','Mission and culture','/thong-diep-tuyen-dung','',4,1,'2018-01-23 01:02:11'),(5,'Vì sao chọn CMC','Benefits and perks ','/vi-sao-chon-cmc','',4,1,'2018-02-26 01:48:40');
/*!40000 ALTER TABLE `portal_sub_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal_user`
--

DROP TABLE IF EXISTS `portal_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `identification` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hometown` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marital` int(11) DEFAULT NULL,
  `id_salary` int(11) DEFAULT NULL,
  `id_job_experience` int(11) DEFAULT NULL,
  `skill_others` text COLLATE utf8_unicode_ci,
  `prize` text COLLATE utf8_unicode_ci,
  `introduce_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `introduce_position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `introduce_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `introduce_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `introduce_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cv_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notification` int(11) DEFAULT NULL,
  `flg_status` int(11) NOT NULL,
  `updateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK_portal_user_1` (`id_salary`),
  KEY `FK_portal_user_2` (`id_job_experience`),
  CONSTRAINT `FK_portal_user_1` FOREIGN KEY (`id_salary`) REFERENCES `salary` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_portal_user_2` FOREIGN KEY (`id_job_experience`) REFERENCES `job_experience` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_user`
--

LOCK TABLES `portal_user` WRITE;
/*!40000 ALTER TABLE `portal_user` DISABLE KEYS */;
INSERT INTO `portal_user` VALUES (1,NULL,'Bui Thoa',NULL,NULL,'btthoa@cmc.com.vn',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2018-03-21 11:24:05'),(2,NULL,'HG','168580789','1996-07-01','pt.huong1996@gmail.com','0123456789','Hà Nam','Hà Nội',0,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1521681245404.pdf',NULL,1,'2018-03-22 01:11:45'),(3,'portal-3-avatar.jpg','Hg','168580789','1996-07-01','pphamthihuongg@gmail.com','1686894532','Hà Nam','Lý Nhân',1,11,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1521773815-portal-cv-HUONG-3.pdf',NULL,1,'2018-03-22 01:16:27'),(4,NULL,'a',NULL,NULL,'tomy@carbtc.net',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2018-03-22 01:28:05'),(5,NULL,'hg',NULL,NULL,'huongpt0107@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2018-03-22 01:33:49'),(6,'https://graph.facebook.com/10213464928152438/picture?width=200&height=200','Tam Nguyen','012283019','1995-01-11','popeye_dangyeu@yahoo.com','0931223336','Hà Nội','Cầu Giấy, Hà Nội',1,NULL,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2018-03-23 01:29:45'),(7,NULL,'Nguyễn Thị Hoan',NULL,NULL,'kienmit9595@gmail.com','1635558342',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1521789703238-Angular.docx',NULL,0,'2018-03-23 07:21:43'),(8,NULL,'Nguyễn Thị Hoan',NULL,NULL,'vuachom94@gmail.com','1635558342',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1521789857962-Angular.docx',NULL,0,'2018-03-23 07:24:17');
/*!40000 ALTER TABLE `portal_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal_user_history`
--

DROP TABLE IF EXISTS `portal_user_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal_user_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `id_portal_user` int(11) DEFAULT NULL,
  `objects` text COLLATE utf8_unicode_ci,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `id_portal_user` (`id_portal_user`),
  CONSTRAINT `FK_portal_user_history_1` FOREIGN KEY (`id_portal_user`) REFERENCES `portal_user` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_user_history`
--

LOCK TABLES `portal_user_history` WRITE;
/*!40000 ALTER TABLE `portal_user_history` DISABLE KEYS */;
INSERT INTO `portal_user_history` VALUES (1,2,'{\'fieldName\':\'cv\',\'value\':\'1521681245404.pdf\'}','2018-03-22 01:14:05'),(2,2,'{\'fieldName\':\'birthday\',\'value\':\'1996-07-01\'}','2018-03-22 01:15:17'),(3,2,'{\'fieldName\':\'identification\',\'value\':\'168580789\'}','2018-03-22 01:15:17'),(4,2,'{\'fieldName\':\'hometown\',\'value\':\'Hà Nam\'}','2018-03-22 01:15:17'),(5,2,'{\'fieldName\':\'currentAddress\',\'value\':\'Hà Nội\'}','2018-03-22 01:15:17'),(6,2,'{\'fieldName\':\'jobExperience\',\'value\':\'1\'}','2018-03-22 01:15:17'),(7,2,'{\'fieldName\':\'jobFamilies\',\'value\':[\"2\"]}','2018-03-22 01:15:26'),(8,2,'{\'fieldName\':\'addresses\',\'value\':[\"2\"]}','2018-03-22 01:15:26'),(9,2,'{\'fieldName\':\'salary\',\'value\':\'1\'}','2018-03-22 01:15:26'),(10,2,'{\'fieldName\':\'jobExperience\',\'value\':\'2\'}','2018-03-22 04:00:54'),(11,2,'{\'fieldName\':\'jobExperience\',\'value\':\'5\'}','2018-03-22 04:01:06'),(12,2,'{\'fieldName\':\'jobExperience\',\'value\':\'1\'}','2018-03-22 04:01:13'),(13,6,'{\'fieldName\':\'birthday\',\'value\':\'1995-01-11\'}','2018-03-23 01:30:41'),(14,6,'{\'fieldName\':\'identification\',\'value\':\'012283019\'}','2018-03-23 01:30:41'),(15,6,'{\'fieldName\':\'hometown\',\'value\':\'Hà Nội\'}','2018-03-23 01:30:41'),(16,6,'{\'fieldName\':\'currentAddress\',\'value\':\'Cầu Giấy, Hà Nội\'}','2018-03-23 01:30:41'),(17,6,'{\'fieldName\':\'jobExperience\',\'value\':\'5\'}','2018-03-23 01:30:41'),(18,3,'{\'fieldName\':\'cv\',\'value\':\'1521773815-portal-cv-HUONG-3.pdf\'}','2018-03-23 02:56:55'),(19,3,'{\'fieldName\':\'birthday\',\'value\':\'1996-07-01\'}','2018-03-23 03:03:12'),(20,3,'{\'fieldName\':\'fullName\',\'value\':\'Hg\'}','2018-03-23 03:03:12'),(21,3,'{\'fieldName\':\'identification\',\'value\':\'168580789\'}','2018-03-23 03:03:12'),(22,3,'{\'fieldName\':\'hometown\',\'value\':\'Hà Nam\'}','2018-03-23 03:03:12'),(23,3,'{\'fieldName\':\'currentAddress\',\'value\':\'Lý Nhân\'}','2018-03-23 03:03:12'),(24,3,'{\'fieldName\':\'jobExperience\',\'value\':\'1\'}','2018-03-23 03:03:12'),(25,3,'{\'fieldName\':\'jobFamilies\',\'value\':[\"3\",\"4\",\"11\",\"12\",\"17\"]}','2018-03-23 03:04:41'),(26,3,'{\'fieldName\':\'addresses\',\'value\':[\"1\",\"2\"]}','2018-03-23 03:04:41'),(27,3,'{\'fieldName\':\'salary\',\'value\':\'2\'}','2018-03-23 03:04:41'),(28,3,'{\'fieldName\':\'userCertificates\',\'value\':{\'certificateRank\':\'3\',\'name\':\'Toeic\',\'trainingUnit\':\'IIG\',\'startDate\':\'2014-12-12\',\'endDate\':\'2018-01-31\'}}','2018-03-23 03:07:12'),(29,3,'{\'fieldName\':\'userExperiences\',\'value\':{\'position\':\'tester\',\'salary\':\'4.000.000\',\'company\':\'Softdreams\',\'description\':\'																\r\n															\',\'startDate\':\'2017-08-01\',\'endDate\':\'2017-12-31\'}}','2018-03-23 03:09:14'),(30,3,'{\'fieldName\':\'userEducations\',\'value\':{\'education\':\'5\',\'educationRank\':\'3\',\'major\':\'Hệ thống thông tin kinh tế\',\'university\':\'DH Thương mại\',\'startDate\':\'2014-08-14\',\'endDate\':\'2018-06-06\'}}','2018-03-23 03:10:33'),(31,3,'{\'fieldName\':\'addresses\',\'value\':[\"3\"]}','2018-03-23 03:16:50'),(32,3,'{\'fieldName\':\'jobFamilies\',\'value\':[\"10\"]}','2018-03-23 03:23:23'),(33,3,'{\'fieldName\':\'addresses\',\'value\':[\"4\"]}','2018-03-23 03:23:23'),(34,3,'{\'fieldName\':\'salary\',\'value\':\'4\'}','2018-03-23 03:30:19'),(35,3,'{\'fieldName\':\'skills\',\'value\':[\"2\"]}','2018-03-23 03:57:16'),(36,3,'{\'fieldName\':\'jobExperience\',\'value\':\'3\'}','2018-03-23 04:03:56'),(37,3,'{\'fieldName\':\'jobFamilies\',\'value\':[\"6\"]}','2018-03-23 04:04:13'),(38,3,'{\'fieldName\':\'salary\',\'value\':\'7\'}','2018-03-23 04:04:13'),(39,3,'{\'fieldName\':\'skills\',\'value\':[\"1\"]}','2018-03-23 04:04:29'),(40,3,'{\'fieldName\':\'jobExperience\',\'value\':\'5\'}','2018-03-23 04:04:51'),(41,3,'{\'fieldName\':\'salary\',\'value\':\'9\'}','2018-03-23 04:09:11'),(42,3,'{\'fieldName\':\'skills\',\'value\':[\"3\"]}','2018-03-23 07:03:27'),(43,3,'{\'fieldName\':\'skills\',\'value\':[\"9\"]}','2018-03-23 07:07:41'),(44,3,'{\'fieldName\':\'jobFamilies\',\'value\':[\"1\"]}','2018-03-23 07:08:25'),(45,3,'{\'fieldName\':\'jobExperience\',\'value\':\'3\'}','2018-03-23 07:11:53'),(46,3,'{\'fieldName\':\'jobFamilies\',\'value\':[\"3\"]}','2018-03-23 07:12:12'),(47,3,'{\'fieldName\':\'addresses\',\'value\':[\"13\"]}','2018-03-23 07:12:12'),(48,3,'{\'fieldName\':\'jobExperience\',\'value\':\'1\'}','2018-03-23 07:25:40'),(49,3,'{\'fieldName\':\'jobFamilies\',\'value\':[\"9\"]}','2018-03-23 07:29:16'),(50,3,'{\'fieldName\':\'addresses\',\'value\':[\"8\"]}','2018-03-23 07:29:41'),(51,3,'{\'fieldName\':\'addresses\',\'value\':[\"38\"]}','2018-03-23 07:50:00'),(52,3,'{\'fieldName\':\'salary\',\'value\':\'11\'}','2018-03-23 07:50:00');
/*!40000 ALTER TABLE `portal_user_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal_weight`
--

DROP TABLE IF EXISTS `portal_weight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal_weight` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_weight`
--

LOCK TABLES `portal_weight` WRITE;
/*!40000 ALTER TABLE `portal_weight` DISABLE KEYS */;
INSERT INTO `portal_weight` VALUES (1,'Địa chỉ',20),(2,'Ngành nghề',30),(3,'Kinh nghiệm',30),(4,'Mức lương',10),(5,'Kỹ năng',10);
/*!40000 ALTER TABLE `portal_weight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal_weight_cv`
--

DROP TABLE IF EXISTS `portal_weight_cv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal_weight_cv` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_weight_cv`
--

LOCK TABLES `portal_weight_cv` WRITE;
/*!40000 ALTER TABLE `portal_weight_cv` DISABLE KEYS */;
INSERT INTO `portal_weight_cv` VALUES (1,'CV',10),(2,'Avatar',10),(3,'Thông tin cá nhân',15),(4,'Công việc mong muốn',10),(5,'Chứng chỉ',10),(6,'Kinh nghiệm làm việc',15),(7,'Học vấn',10),(8,'Chứng chỉ ngoại ngữ',10),(9,'Kỹ năng',10),(10,'Người giới thiệu',0);
/*!40000 ALTER TABLE `portal_weight_cv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_security` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_role` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Xem tin tức','news_posts',1),(2,'Thêm tin tức','news_posts/add',1),(3,'Chỉnh sửa tin tức','news_posts/update',1),(4,'Phê duyệt tin tức','news_posts/pending',1),(5,'Ghim tin tức','news_posts/pin',1),(6,'Đóng tin tức','news_posts/close',1),(7,'Xem tin tuyển dụng','job_posts',2),(8,'Thêm tin tuyển dụng','job_posts/add',2),(9,'Chỉnh sửa tin tuyển dụng','job_posts/update',2),(10,'Phê duyệt tin tuyển dụng','job_posts/pending',2),(11,'Ghim tin tuyển dụng','job_posts/pin',2),(12,'Đóng tin tuyển dụng','job_posts/close',2),(13,'Xem thông tin CMS User','users',3),(14,'Thêm CMS User','users/add',3),(15,'Chỉnh sửa CMS User','users/update',3),(16,'Xem Mã Job code','job_codes',4),(17,'Thêm Mã Job code','job_codes/add',4),(18,'Chỉnh sửa Mã Job code','job_codes/update',4),(19,'Ghi chú Mã Job code','job_codes/update',4),(20,'Xem thông tin Mã Công ty','companies',5),(21,'Thêm Mã công ty','companies/add',5),(22,'Chỉnh sửa Mã Công ty','companies/update',5),(23,'Chỉnh sửa thông tin chung của công ty','companies/update',5),(24,'Xem thông tin Mã Ngành nghề','job_family',6),(25,'Thêm Mã Ngành nghề','job_family/add',6),(26,'Chỉnh sửa Mã Ngành nghề','job_family/update',6),(27,'Xem thông tin Mã Chuyên môn','job_sub_family',7),(28,'Thêm Mã Chuyên môn','job_sub_family/add',7),(29,'Chỉnh sửa Mã chuyên môn','job_sub_family/update',7),(30,'Xem Mã Ngạch nghề nghiệp','careerstreams',8),(31,'Thêm Mã Ngạch nghề nghiệp','careerstreams/add',8),(32,'Chỉnh sửa Mã Ngạch nghề nghiệp','careerstreams/update',8),(33,'Xem thông tin Mã Cấp bậc nghề nghiệp','careerlevels',9),(34,'Thêm Mã Cấp bậc nghề nghiệp','careerlevels/add',9),(35,'Chỉnh sửa Mã Cấp bậc nghề nghiệp','careerlevels/update',9),(36,'Xem thông tin Mã Công việc','jobCode',10),(37,'Thêm Mã Công việc','jobCode/add',10),(38,'Chỉnh sửa Mã Công việc','jobCode/update',10),(39,'Xem thông tin tất cả ứng viên','candidates',11),(41,'Xem thông tin hồ sơ ứng viên','candidates-profile',12),(42,'Thêm mới thông tin hồ sơ ứng viên','candidates-profile',12),(43,'Chỉnh sửa thông tin hồ sơ ứng viên','candidates-profile',12),(44,'Ghi chú thông tin hồ sơ ứng viên','candidates-profile',12),(45,'Xem thông tin Chức vụ','positions',13),(46,'Thêm Chức vụ','positions/add',13),(47,'Chỉnh sửa Chức vụ','positions/update',13),(48,'Xem thông tin group_tag','groupTags',14),(49,'Thêm group_tag','groupTags/add',14),(50,'Chỉnh sửa group_tag','groupTags/update',14),(51,'Xem thông tin tag','tags',15),(52,'Thêm tag','tags/add',15),(53,'Chỉnh sửa tag','tags/update',15),(54,'Xem thông tin trọng số','',16),(55,'Chỉnh sửa thông tin trọng số','',16),(56,'Xóa tin tức','news_posts/delete',1),(57,'Xóa tin tuyển dụng','job_posts/delete',2),(58,'Xóa người dùng','users/delete',3),(59,'Xóa Mã Job code','job_codes/delete',4),(60,'Xóa Mã Công ty','companies/delete',5),(61,'Xóa Mã Ngành nghề','job_family/delete',6),(62,'Xóa Mã Chuyên môn','job_sub_family/delete',7),(63,'Xóa Mã Ngạch nghề nghiệp','careerstreams/delete',8),(64,'Xóa Mã Cấp bậc nghề nghiệp','careerlevels/delete',9),(65,'Xóa Mã Công việc','jobCode/delete',10),(66,'Xóa Chức vụ','positions/delete',13),(67,'Xóa Group Tag','groupTags/delete',14),(68,'Xóa Tag','tags/delete',15),(69,'Xem thông tin ứng viên phù hợp','candidates',11),(70,'Phân quyền ứng viên ','permission_candidate',11);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salary` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `salary_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salary_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` VALUES (1,'< 5 triệu','< 100$'),(2,'5 - 7 triệu','100 - 350$'),(3,'7 - 10 triệu','350 - 500$'),(4,'10 - 15 triệu','500 - 750$'),(5,'15 - 20 triệu','750 - 1000$'),(6,'20 - 25 triệu','1000 - 1500$'),(7,'25 - 30 triệu','1500 - 2000$'),(8,'30 - 40 triệu','> 2000$'),(9,'40 - 50 triệu','> 2000$'),(10,'> 50 triệu','> 2000$'),(11,'Không lương','No paid');
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_group_tag` int(11) NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK_tag_1` (`id_group_tag`),
  CONSTRAINT `FK_tag_1` FOREIGN KEY (`id_group_tag`) REFERENCES `group_tag` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'giao tiếp tốt',1,'2018-03-23 03:55:36'),(2,'java',1,'2018-03-23 03:55:36'),(3,'c+',1,'2018-03-23 03:55:36'),(4,'java',2,'2018-03-23 06:48:40'),(5,'c++',2,'2018-03-23 06:48:40'),(6,'csdl',2,'2018-03-23 06:48:40'),(7,'làm việc nhóm',3,'2018-03-23 06:50:11'),(8,'làm việc độc lập',3,'2018-03-23 06:50:11'),(9,'not',5,'2018-03-23 07:06:50');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_address`
--

DROP TABLE IF EXISTS `user_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_address` (
  `id_user` int(11) NOT NULL,
  `id_address` int(11) NOT NULL,
  PRIMARY KEY (`id_user`,`id_address`),
  KEY `FK_user_address_1` (`id_user`),
  KEY `FK_user_address_2` (`id_address`),
  CONSTRAINT `FK_user_address_1` FOREIGN KEY (`id_user`) REFERENCES `portal_user` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_user_address_2` FOREIGN KEY (`id_address`) REFERENCES `address` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_address`
--

LOCK TABLES `user_address` WRITE;
/*!40000 ALTER TABLE `user_address` DISABLE KEYS */;
INSERT INTO `user_address` VALUES (2,2),(3,38);
/*!40000 ALTER TABLE `user_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_certificate`
--

DROP TABLE IF EXISTS `user_certificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_certificate` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `training_unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_rank` int(11) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `user_certificate_1` (`id_user`),
  KEY `user_certificate_2` (`id_rank`),
  CONSTRAINT `user_certificate_1` FOREIGN KEY (`id_user`) REFERENCES `portal_user` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `user_certificate_2` FOREIGN KEY (`id_rank`) REFERENCES `certificate_rank` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_certificate`
--

LOCK TABLES `user_certificate` WRITE;
/*!40000 ALTER TABLE `user_certificate` DISABLE KEYS */;
INSERT INTO `user_certificate` VALUES (1,3,'Toeic','IIG',3,'2014-12-12','2018-01-31');
/*!40000 ALTER TABLE `user_certificate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_education`
--

DROP TABLE IF EXISTS `user_education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_education` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `major` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `university` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_education` int(11) DEFAULT NULL,
  `id_rank` int(11) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_user_education_1` (`id_user`),
  KEY `FK_user_education_2` (`id_education`),
  KEY `FK_user_education_3` (`id_rank`),
  CONSTRAINT `FK_user_education_1` FOREIGN KEY (`id_user`) REFERENCES `portal_user` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_user_education_2` FOREIGN KEY (`id_education`) REFERENCES `education` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_user_education_3` FOREIGN KEY (`id_rank`) REFERENCES `education_rank` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_education`
--

LOCK TABLES `user_education` WRITE;
/*!40000 ALTER TABLE `user_education` DISABLE KEYS */;
INSERT INTO `user_education` VALUES (1,3,'Hệ thống thông tin kinh tế','DH Thương mại',5,3,'2014-08-14','2018-06-06');
/*!40000 ALTER TABLE `user_education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_experience`
--

DROP TABLE IF EXISTS `user_experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_experience` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salary` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_user_experience` (`id_user`),
  CONSTRAINT `FK_user_experience` FOREIGN KEY (`id_user`) REFERENCES `portal_user` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_experience`
--

LOCK TABLES `user_experience` WRITE;
/*!40000 ALTER TABLE `user_experience` DISABLE KEYS */;
INSERT INTO `user_experience` VALUES (1,3,'tester','4.000.000','Softdreams','																\r\n															','2017-08-01','2017-12-31');
/*!40000 ALTER TABLE `user_experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_jobfamily`
--

DROP TABLE IF EXISTS `user_jobfamily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_jobfamily` (
  `id_user` int(11) NOT NULL,
  `id_jobFamily` int(11) NOT NULL,
  PRIMARY KEY (`id_user`,`id_jobFamily`),
  KEY `FK_user_jobFamily_1` (`id_user`),
  KEY `FK_user_jobFamily_2` (`id_jobFamily`),
  CONSTRAINT `FK_user_jobFamily_1` FOREIGN KEY (`id_user`) REFERENCES `portal_user` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_user_jobFamily_2` FOREIGN KEY (`id_jobFamily`) REFERENCES `job_family` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_jobfamily`
--

LOCK TABLES `user_jobfamily` WRITE;
/*!40000 ALTER TABLE `user_jobfamily` DISABLE KEYS */;
INSERT INTO `user_jobfamily` VALUES (2,2),(3,9);
/*!40000 ALTER TABLE `user_jobfamily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_language`
--

DROP TABLE IF EXISTS `user_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_language` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_language` int(11) DEFAULT NULL,
  `certificate_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `training_unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_user_language_1` (`id_user`),
  KEY `FK_user_language_2` (`id_language`),
  CONSTRAINT `FK_user_language_1` FOREIGN KEY (`id_user`) REFERENCES `portal_user` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_user_language_2` FOREIGN KEY (`id_language`) REFERENCES `portal_language` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_language`
--

LOCK TABLES `user_language` WRITE;
/*!40000 ALTER TABLE `user_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_position`
--

DROP TABLE IF EXISTS `user_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_position` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_cms_position` int(11) DEFAULT NULL,
  `id_company` int(11) DEFAULT NULL,
  `flg_status` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK_2` (`id_user`),
  KEY `FK_4` (`id_company`),
  KEY `FK_31` (`id_cms_position`),
  CONSTRAINT `FK_2` FOREIGN KEY (`id_user`) REFERENCES `cms_user` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_31` FOREIGN KEY (`id_cms_position`) REFERENCES `cms_position` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_4` FOREIGN KEY (`id_company`) REFERENCES `company` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=527 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_position`
--

LOCK TABLES `user_position` WRITE;
/*!40000 ALTER TABLE `user_position` DISABLE KEYS */;
INSERT INTO `user_position` VALUES (11,2,2,1,1,'2018-01-23 01:02:11'),(12,3,3,1,1,'2018-01-23 01:02:11'),(23,5,2,1,1,'2018-01-23 01:02:11'),(24,6,3,1,1,'2018-01-23 01:02:11'),(25,5,2,2,1,'2018-01-23 01:02:11'),(26,6,3,2,1,'2018-01-23 01:02:11'),(27,7,3,5,1,'2018-01-24 21:46:27'),(28,8,3,5,1,'2018-01-24 21:47:07'),(31,11,3,6,1,'2018-01-24 21:50:08'),(33,13,3,7,1,'2018-01-24 21:51:03'),(35,15,3,2,1,'2018-01-24 21:51:52'),(39,18,3,8,1,'2018-01-24 21:53:14'),(54,24,1,1,1,'2018-01-24 21:56:05'),(55,24,2,1,1,'2018-01-24 21:56:05'),(56,24,3,1,1,'2018-01-24 21:56:05'),(57,24,4,1,1,'2018-01-24 21:56:05'),(58,24,1,2,1,'2018-01-24 21:56:05'),(59,24,2,2,1,'2018-01-24 21:56:05'),(60,24,3,2,1,'2018-01-24 21:56:05'),(61,24,4,2,1,'2018-01-24 21:56:05'),(62,24,1,3,1,'2018-01-24 21:56:05'),(63,24,2,3,1,'2018-01-24 21:56:05'),(64,24,3,3,1,'2018-01-24 21:56:05'),(65,24,4,3,1,'2018-01-24 21:56:05'),(66,24,1,4,1,'2018-01-24 21:56:05'),(67,24,2,4,1,'2018-01-24 21:56:05'),(68,24,3,4,1,'2018-01-24 21:56:05'),(69,24,4,4,1,'2018-01-24 21:56:05'),(70,24,1,5,1,'2018-01-24 21:56:05'),(71,24,2,5,1,'2018-01-24 21:56:05'),(72,24,3,5,1,'2018-01-24 21:56:05'),(73,24,4,5,1,'2018-01-24 21:56:05'),(74,24,1,6,1,'2018-01-24 21:56:05'),(75,24,2,6,1,'2018-01-24 21:56:05'),(76,24,3,6,1,'2018-01-24 21:56:05'),(77,24,4,6,1,'2018-01-24 21:56:05'),(78,24,1,7,1,'2018-01-24 21:56:05'),(79,24,2,7,1,'2018-01-24 21:56:05'),(80,24,3,7,1,'2018-01-24 21:56:05'),(81,24,4,7,1,'2018-01-24 21:56:05'),(82,24,1,8,1,'2018-01-24 21:56:05'),(83,24,2,8,1,'2018-01-24 21:56:05'),(84,24,3,8,1,'2018-01-24 21:56:05'),(85,24,4,8,1,'2018-01-24 21:56:05'),(86,24,1,9,1,'2018-01-24 21:56:05'),(87,24,2,9,1,'2018-01-24 21:56:05'),(88,24,3,9,1,'2018-01-24 21:56:05'),(89,24,4,9,1,'2018-01-24 21:56:05'),(94,9,2,5,1,'2018-01-24 21:56:41'),(95,9,3,5,1,'2018-01-24 21:56:41'),(96,10,2,6,1,'2018-01-24 21:56:48'),(97,10,3,6,1,'2018-01-24 21:56:48'),(98,12,2,7,1,'2018-01-24 21:56:57'),(99,12,3,7,1,'2018-01-24 21:56:57'),(100,14,2,2,1,'2018-01-24 21:57:09'),(101,14,3,2,1,'2018-01-24 21:57:09'),(102,17,2,8,1,'2018-01-24 21:57:21'),(103,17,3,8,1,'2018-01-24 21:57:21'),(104,19,2,1,1,'2018-01-24 21:57:33'),(105,19,3,1,1,'2018-01-24 21:57:33'),(106,21,2,9,1,'2018-01-24 21:57:43'),(107,21,3,9,1,'2018-01-24 21:57:43'),(110,23,2,1,1,'2018-01-24 21:58:03'),(111,23,3,1,1,'2018-01-24 21:58:03'),(112,23,4,1,1,'2018-01-24 21:58:03'),(113,23,2,2,1,'2018-01-24 21:58:03'),(114,23,3,2,1,'2018-01-24 21:58:03'),(115,23,4,2,1,'2018-01-24 21:58:03'),(116,23,2,3,1,'2018-01-24 21:58:03'),(117,23,3,3,1,'2018-01-24 21:58:03'),(118,23,4,3,1,'2018-01-24 21:58:03'),(119,23,2,4,1,'2018-01-24 21:58:03'),(120,23,3,4,1,'2018-01-24 21:58:03'),(121,23,4,4,1,'2018-01-24 21:58:03'),(122,23,2,5,1,'2018-01-24 21:58:03'),(123,23,3,5,1,'2018-01-24 21:58:03'),(124,23,4,5,1,'2018-01-24 21:58:03'),(125,23,2,6,1,'2018-01-24 21:58:03'),(126,23,3,6,1,'2018-01-24 21:58:03'),(127,23,4,6,1,'2018-01-24 21:58:03'),(128,23,2,7,1,'2018-01-24 21:58:03'),(129,23,3,7,1,'2018-01-24 21:58:03'),(130,23,4,7,1,'2018-01-24 21:58:03'),(131,23,2,8,1,'2018-01-24 21:58:03'),(132,23,3,8,1,'2018-01-24 21:58:03'),(133,23,4,8,1,'2018-01-24 21:58:03'),(134,23,2,9,1,'2018-01-24 21:58:03'),(135,23,3,9,1,'2018-01-24 21:58:03'),(136,23,4,9,1,'2018-01-24 21:58:03'),(170,4,1,1,1,'2018-01-24 22:12:15'),(171,4,2,1,1,'2018-01-24 22:12:15'),(172,4,3,1,1,'2018-01-24 22:12:15'),(173,4,4,1,1,'2018-01-24 22:12:15'),(174,4,1,2,1,'2018-01-24 22:12:15'),(175,4,2,2,1,'2018-01-24 22:12:15'),(176,4,3,2,1,'2018-01-24 22:12:15'),(177,4,4,2,1,'2018-01-24 22:12:15'),(178,4,1,3,1,'2018-01-24 22:12:15'),(179,4,2,3,1,'2018-01-24 22:12:15'),(180,4,3,3,1,'2018-01-24 22:12:15'),(181,4,4,3,1,'2018-01-24 22:12:15'),(182,4,1,4,1,'2018-01-24 22:12:15'),(183,4,2,4,1,'2018-01-24 22:12:15'),(184,4,3,4,1,'2018-01-24 22:12:15'),(185,4,4,4,1,'2018-01-24 22:12:15'),(186,4,1,5,1,'2018-01-24 22:12:15'),(187,4,2,5,1,'2018-01-24 22:12:15'),(188,4,3,5,1,'2018-01-24 22:12:15'),(189,4,4,5,1,'2018-01-24 22:12:15'),(190,4,1,6,1,'2018-01-24 22:12:15'),(191,4,2,6,1,'2018-01-24 22:12:15'),(192,4,3,6,1,'2018-01-24 22:12:15'),(193,4,4,6,1,'2018-01-24 22:12:15'),(194,4,1,7,1,'2018-01-24 22:12:15'),(195,4,2,7,1,'2018-01-24 22:12:15'),(196,4,3,7,1,'2018-01-24 22:12:15'),(197,4,4,7,1,'2018-01-24 22:12:15'),(198,4,1,8,1,'2018-01-24 22:12:15'),(199,4,2,8,1,'2018-01-24 22:12:15'),(200,4,3,8,1,'2018-01-24 22:12:15'),(201,4,4,8,1,'2018-01-24 22:12:15'),(202,4,1,9,1,'2018-01-24 22:12:15'),(203,4,2,9,1,'2018-01-24 22:12:15'),(204,4,3,9,1,'2018-01-24 22:12:15'),(205,4,4,9,1,'2018-01-24 22:12:15'),(210,4,1,1,1,'2018-01-24 22:12:17'),(211,4,2,1,1,'2018-01-24 22:12:17'),(212,4,3,1,1,'2018-01-24 22:12:17'),(213,4,4,1,1,'2018-01-24 22:12:17'),(214,4,1,2,1,'2018-01-24 22:12:17'),(215,4,2,2,1,'2018-01-24 22:12:17'),(216,4,3,2,1,'2018-01-24 22:12:17'),(217,4,4,2,1,'2018-01-24 22:12:17'),(218,4,1,3,1,'2018-01-24 22:12:17'),(219,4,2,3,1,'2018-01-24 22:12:17'),(220,4,3,3,1,'2018-01-24 22:12:17'),(221,4,4,3,1,'2018-01-24 22:12:17'),(222,4,1,4,1,'2018-01-24 22:12:17'),(223,4,2,4,1,'2018-01-24 22:12:17'),(224,4,3,4,1,'2018-01-24 22:12:17'),(225,4,4,4,1,'2018-01-24 22:12:17'),(226,4,1,5,1,'2018-01-24 22:12:17'),(227,4,2,5,1,'2018-01-24 22:12:17'),(228,4,3,5,1,'2018-01-24 22:12:17'),(229,4,4,5,1,'2018-01-24 22:12:17'),(230,4,1,6,1,'2018-01-24 22:12:17'),(231,4,2,6,1,'2018-01-24 22:12:17'),(232,4,3,6,1,'2018-01-24 22:12:17'),(233,4,4,6,1,'2018-01-24 22:12:17'),(234,4,1,7,1,'2018-01-24 22:12:17'),(235,4,2,7,1,'2018-01-24 22:12:17'),(236,4,3,7,1,'2018-01-24 22:12:17'),(237,4,4,7,1,'2018-01-24 22:12:17'),(238,4,1,8,1,'2018-01-24 22:12:17'),(239,4,2,8,1,'2018-01-24 22:12:17'),(240,4,3,8,1,'2018-01-24 22:12:17'),(241,4,4,8,1,'2018-01-24 22:12:17'),(242,4,1,9,1,'2018-01-24 22:12:17'),(243,4,2,9,1,'2018-01-24 22:12:17'),(244,4,3,9,1,'2018-01-24 22:12:17'),(245,4,4,9,1,'2018-01-24 22:12:17'),(250,25,2,1,1,'2018-01-28 20:41:14'),(251,25,2,2,1,'2018-01-28 20:41:14'),(252,25,2,3,1,'2018-01-28 20:41:14'),(253,25,2,4,1,'2018-01-28 20:41:14'),(254,25,2,5,1,'2018-01-28 20:41:14'),(255,25,2,6,1,'2018-01-28 20:41:14'),(256,25,2,7,1,'2018-01-28 20:41:14'),(257,25,2,8,1,'2018-01-28 20:41:14'),(258,25,2,9,1,'2018-01-28 20:41:14'),(260,26,3,1,1,'2018-01-29 20:02:46'),(261,16,2,2,1,'2018-01-29 20:17:28'),(262,16,3,2,1,'2018-01-29 20:17:28'),(263,20,3,1,1,'2018-02-01 03:55:09'),(264,20,4,1,1,'2018-02-01 03:55:09'),(283,27,2,1,1,'2018-02-01 10:06:45'),(284,27,3,1,1,'2018-02-01 10:06:46'),(285,27,4,1,1,'2018-02-01 10:06:46'),(296,1,1,1,1,'2018-02-02 09:31:33'),(297,1,1,2,1,'2018-02-02 09:31:33'),(298,1,1,3,1,'2018-02-02 09:31:33'),(299,1,1,4,1,'2018-02-02 09:31:33'),(300,1,1,5,1,'2018-02-02 09:31:33'),(301,1,1,6,1,'2018-02-02 09:31:33'),(302,1,1,7,1,'2018-02-02 09:31:33'),(303,1,1,8,1,'2018-02-02 09:31:33'),(304,1,1,9,1,'2018-02-02 09:31:33'),(306,28,4,1,1,'2018-02-02 09:52:37'),(307,29,4,1,1,'2018-02-02 09:54:15'),(308,30,4,1,1,'2018-02-02 09:58:40'),(309,31,2,1,1,'2018-02-06 03:30:37'),(310,31,2,2,1,'2018-02-06 03:30:37'),(311,31,2,3,1,'2018-02-06 03:30:37'),(312,31,2,4,1,'2018-02-06 03:30:37'),(313,31,2,5,1,'2018-02-06 03:30:37'),(314,31,2,6,1,'2018-02-06 03:30:37'),(315,31,2,7,1,'2018-02-06 03:30:37'),(316,31,2,8,1,'2018-02-06 03:30:37'),(317,31,2,9,1,'2018-02-06 03:30:37'),(319,31,2,11,1,'2018-02-06 03:30:37'),(320,32,4,1,1,'2018-03-21 09:35:39'),(321,32,4,2,1,'2018-03-21 09:35:39'),(322,32,4,3,1,'2018-03-21 09:35:39'),(323,32,4,4,1,'2018-03-21 09:35:39'),(324,32,4,5,1,'2018-03-21 09:35:39'),(325,32,4,6,1,'2018-03-21 09:35:39'),(326,32,4,7,1,'2018-03-21 09:35:39'),(327,32,4,8,1,'2018-03-21 09:35:39'),(328,32,4,9,1,'2018-03-21 09:35:39'),(330,33,4,1,1,'2018-03-21 10:07:27'),(331,33,4,2,1,'2018-03-21 10:07:27'),(332,33,4,3,1,'2018-03-21 10:07:27'),(333,33,4,4,1,'2018-03-21 10:07:27'),(334,33,4,5,1,'2018-03-21 10:07:27'),(335,33,4,6,1,'2018-03-21 10:07:27'),(336,33,4,7,1,'2018-03-21 10:07:27'),(337,33,4,8,1,'2018-03-21 10:07:27'),(338,33,4,9,1,'2018-03-21 10:07:27'),(380,35,1,1,1,'2018-03-22 03:53:07'),(381,35,2,1,1,'2018-03-22 03:53:07'),(382,35,3,1,1,'2018-03-22 03:53:07'),(383,35,4,1,1,'2018-03-22 03:53:07'),(384,35,1,2,1,'2018-03-22 03:53:07'),(385,35,2,2,1,'2018-03-22 03:53:07'),(386,35,3,2,1,'2018-03-22 03:53:07'),(387,35,4,2,1,'2018-03-22 03:53:07'),(388,35,1,3,1,'2018-03-22 03:53:07'),(389,35,2,3,1,'2018-03-22 03:53:07'),(390,35,3,3,1,'2018-03-22 03:53:07'),(391,35,4,3,1,'2018-03-22 03:53:07'),(392,35,1,4,1,'2018-03-22 03:53:07'),(393,35,2,4,1,'2018-03-22 03:53:07'),(394,35,3,4,1,'2018-03-22 03:53:07'),(395,35,4,4,1,'2018-03-22 03:53:07'),(396,35,1,5,1,'2018-03-22 03:53:07'),(397,35,2,5,1,'2018-03-22 03:53:07'),(398,35,3,5,1,'2018-03-22 03:53:07'),(399,35,4,5,1,'2018-03-22 03:53:07'),(400,35,1,6,1,'2018-03-22 03:53:07'),(401,35,2,6,1,'2018-03-22 03:53:07'),(402,35,3,6,1,'2018-03-22 03:53:07'),(403,35,4,6,1,'2018-03-22 03:53:07'),(404,35,1,7,1,'2018-03-22 03:53:07'),(405,35,2,7,1,'2018-03-22 03:53:07'),(406,35,3,7,1,'2018-03-22 03:53:07'),(407,35,4,7,1,'2018-03-22 03:53:07'),(408,35,1,8,1,'2018-03-22 03:53:07'),(409,35,2,8,1,'2018-03-22 03:53:07'),(410,35,3,8,1,'2018-03-22 03:53:07'),(411,35,4,8,1,'2018-03-22 03:53:07'),(412,35,1,9,1,'2018-03-22 03:53:07'),(413,35,2,9,1,'2018-03-22 03:53:07'),(414,35,3,9,1,'2018-03-22 03:53:07'),(415,35,4,9,1,'2018-03-22 03:53:07'),(420,35,1,1,1,'2018-03-22 03:53:09'),(421,35,2,1,1,'2018-03-22 03:53:09'),(422,35,3,1,1,'2018-03-22 03:53:09'),(423,35,4,1,1,'2018-03-22 03:53:09'),(424,35,1,2,1,'2018-03-22 03:53:09'),(425,35,2,2,1,'2018-03-22 03:53:09'),(426,35,3,2,1,'2018-03-22 03:53:09'),(427,35,4,2,1,'2018-03-22 03:53:09'),(428,35,1,3,1,'2018-03-22 03:53:09'),(429,35,2,3,1,'2018-03-22 03:53:09'),(430,35,3,3,1,'2018-03-22 03:53:09'),(431,35,4,3,1,'2018-03-22 03:53:09'),(432,35,1,4,1,'2018-03-22 03:53:09'),(433,35,2,4,1,'2018-03-22 03:53:09'),(434,35,3,4,1,'2018-03-22 03:53:09'),(435,35,4,4,1,'2018-03-22 03:53:09'),(436,35,1,5,1,'2018-03-22 03:53:09'),(437,35,2,5,1,'2018-03-22 03:53:09'),(438,35,3,5,1,'2018-03-22 03:53:09'),(439,35,4,5,1,'2018-03-22 03:53:09'),(440,35,1,6,1,'2018-03-22 03:53:09'),(441,35,2,6,1,'2018-03-22 03:53:09'),(442,35,3,6,1,'2018-03-22 03:53:09'),(443,35,4,6,1,'2018-03-22 03:53:09'),(444,35,1,7,1,'2018-03-22 03:53:09'),(445,35,2,7,1,'2018-03-22 03:53:09'),(446,35,3,7,1,'2018-03-22 03:53:09'),(447,35,4,7,1,'2018-03-22 03:53:09'),(448,35,1,8,1,'2018-03-22 03:53:09'),(449,35,2,8,1,'2018-03-22 03:53:09'),(450,35,3,8,1,'2018-03-22 03:53:09'),(451,35,4,8,1,'2018-03-22 03:53:09'),(452,35,1,9,1,'2018-03-22 03:53:09'),(453,35,2,9,1,'2018-03-22 03:53:09'),(454,35,3,9,1,'2018-03-22 03:53:09'),(455,35,4,9,1,'2018-03-22 03:53:09'),(461,38,4,1,1,'2018-03-22 04:38:41'),(462,38,4,2,1,'2018-03-22 04:38:41'),(463,38,4,3,1,'2018-03-22 04:38:41'),(464,38,4,4,1,'2018-03-22 04:38:41'),(465,38,4,5,1,'2018-03-22 04:38:41'),(466,38,4,6,1,'2018-03-22 04:38:41'),(467,38,4,7,1,'2018-03-22 04:38:41'),(468,38,4,8,1,'2018-03-22 04:38:41'),(469,38,4,9,1,'2018-03-22 04:38:41'),(471,36,4,1,1,'2018-03-22 06:21:50'),(472,36,4,2,1,'2018-03-22 06:21:50'),(473,36,4,3,1,'2018-03-22 06:21:50'),(474,36,4,4,1,'2018-03-22 06:21:50'),(475,36,4,5,1,'2018-03-22 06:21:50'),(476,36,4,6,1,'2018-03-22 06:21:50'),(477,36,4,7,1,'2018-03-22 06:21:50'),(478,36,4,8,1,'2018-03-22 06:21:50'),(479,36,4,9,1,'2018-03-22 06:21:50'),(481,39,4,1,1,'2018-03-22 06:57:25'),(482,39,4,2,1,'2018-03-22 06:57:25'),(483,39,4,3,1,'2018-03-22 06:57:25'),(484,39,4,4,1,'2018-03-22 06:57:25'),(485,39,4,5,1,'2018-03-22 06:57:25'),(486,39,4,6,1,'2018-03-22 06:57:25'),(487,39,4,7,1,'2018-03-22 06:57:25'),(488,39,4,8,1,'2018-03-22 06:57:25'),(489,39,4,9,1,'2018-03-22 06:57:25'),(491,40,4,1,1,'2018-03-22 08:08:42'),(492,40,4,2,1,'2018-03-22 08:08:42'),(493,40,4,3,1,'2018-03-22 08:08:42'),(494,40,4,4,1,'2018-03-22 08:08:42'),(495,40,4,5,1,'2018-03-22 08:08:42'),(496,40,4,6,1,'2018-03-22 08:08:42'),(497,40,4,7,1,'2018-03-22 08:08:42'),(498,40,4,8,1,'2018-03-22 08:08:42'),(499,40,4,9,1,'2018-03-22 08:08:42'),(501,41,4,1,1,'2018-03-23 02:41:23'),(502,41,4,2,1,'2018-03-23 02:41:23'),(503,41,4,3,1,'2018-03-23 02:41:23'),(504,41,4,4,1,'2018-03-23 02:41:23'),(505,41,4,5,1,'2018-03-23 02:41:23'),(506,41,4,6,1,'2018-03-23 02:41:23'),(507,41,4,7,1,'2018-03-23 02:41:23'),(508,41,4,8,1,'2018-03-23 02:41:23'),(509,41,4,9,1,'2018-03-23 02:41:23'),(510,41,4,11,1,'2018-03-23 02:41:23'),(511,34,4,1,1,'2018-03-23 07:24:17'),(512,34,4,2,1,'2018-03-23 07:24:17'),(513,34,4,3,1,'2018-03-23 07:24:17'),(514,34,4,4,1,'2018-03-23 07:24:17'),(515,34,4,5,1,'2018-03-23 07:24:17'),(516,34,4,6,1,'2018-03-23 07:24:17'),(517,34,4,7,1,'2018-03-23 07:24:17'),(518,34,4,8,1,'2018-03-23 07:24:17'),(519,34,4,9,1,'2018-03-23 07:24:17'),(520,34,4,11,1,'2018-03-23 07:24:17'),(521,42,4,1,1,'2018-03-23 07:28:43'),(522,42,4,2,1,'2018-03-23 07:28:43'),(523,42,4,3,1,'2018-03-23 07:28:43'),(524,42,4,4,1,'2018-03-23 07:28:43'),(525,42,4,5,1,'2018-03-23 07:28:43'),(526,42,4,11,1,'2018-03-23 07:28:43');
/*!40000 ALTER TABLE `user_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_skill`
--

DROP TABLE IF EXISTS `user_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_skill` (
  `id_user` int(11) NOT NULL,
  `id_tag` int(11) NOT NULL,
  PRIMARY KEY (`id_user`,`id_tag`),
  KEY `FK_user_skill_1` (`id_user`),
  KEY `FK_user_skill_2` (`id_tag`),
  CONSTRAINT `FK_user_skill_1` FOREIGN KEY (`id_user`) REFERENCES `portal_user` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `FK_user_skill_2` FOREIGN KEY (`id_tag`) REFERENCES `tag` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_skill`
--

LOCK TABLES `user_skill` WRITE;
/*!40000 ALTER TABLE `user_skill` DISABLE KEYS */;
INSERT INTO `user_skill` VALUES (3,9);
/*!40000 ALTER TABLE `user_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weight_active`
--

DROP TABLE IF EXISTS `weight_active`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weight_active` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weight_active`
--

LOCK TABLES `weight_active` WRITE;
/*!40000 ALTER TABLE `weight_active` DISABLE KEYS */;
INSERT INTO `weight_active` VALUES (1,'Thời gian active khi kích hoạt tài khoản',20),(2,'Thời gian active khi đổi mail',30);
/*!40000 ALTER TABLE `weight_active` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_type`
--

DROP TABLE IF EXISTS `work_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_type` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `work_type_vi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `work_type_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_type`
--

LOCK TABLES `work_type` WRITE;
/*!40000 ALTER TABLE `work_type` DISABLE KEYS */;
INSERT INTO `work_type` VALUES (1,'Nhân sự chính thức','Full-Time'),(2,'Nhân sự bán thời gian','Part-Time'),(3,'Nhân sự thời vụ','Temporary'),(4,'Cộng tác viên/Thực tập','Internship');
/*!40000 ALTER TABLE `work_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-23 15:39:14
