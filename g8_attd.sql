-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: g8_attd
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.14.04.1-log

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
-- Table structure for table `g8_alert_prop`
--

DROP TABLE IF EXISTS `g8_alert_prop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `g8_alert_prop` (
  `g8_alert_grp` int(10) NOT NULL COMMENT 'The group number',
  `g8_alert_members` varchar(500) NOT NULL COMMENT 'list of alert lo ids that belong to this group',
  `g8_alert_grp_name` varchar(200) NOT NULL COMMENT 'Name of this group',
  `g8_alert_active` int(2) NOT NULL COMMENT 'Is this group active 0,1',
  `g8_alert_acl` int(10) NOT NULL COMMENT 'Access control list this group belongs to',
  UNIQUE KEY `g8_alert_grp` (`g8_alert_grp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Properties of Alert devices';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `g8_alert_prop`
--

LOCK TABLES `g8_alert_prop` WRITE;
/*!40000 ALTER TABLE `g8_alert_prop` DISABLE KEYS */;
INSERT INTO `g8_alert_prop` VALUES (20,'10158,10159','Alok All phones',1,1),(21,'10158','Only one phone - Alok ATT',1,1),(22,'10160','JJ\'s phone',1,1),(23,'10165','gpsgw',1,1),(24,'10159','Only one phone - Alok Phone',1,1),(25,'10166','gergy',1,1);
/*!40000 ALTER TABLE `g8_alert_prop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `g8_andy_track`
--

DROP TABLE IF EXISTS `g8_andy_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `g8_andy_track` (
  `xtn_id` int(5) NOT NULL AUTO_INCREMENT,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `g8_ar_id` varchar(25) NOT NULL,
  `g8_ar_key` varchar(200) NOT NULL,
  `g8_id` varchar(50) NOT NULL,
  `g8_var1` varchar(200) NOT NULL,
  `g8_var2` varchar(200) NOT NULL,
  `g8_var3` varchar(200) NOT NULL,
  `g8_var4` varchar(200) NOT NULL,
  `g8_var5` varchar(200) NOT NULL,
  `g8_lan_ip` varchar(20) NOT NULL,
  `g8_pub_ip` varchar(20) NOT NULL,
  PRIMARY KEY (`xtn_id`),
  UNIQUE KEY `xtn_id` (`xtn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table contains the responses received by android phones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `g8_andy_track`
--

LOCK TABLES `g8_andy_track` WRITE;
/*!40000 ALTER TABLE `g8_andy_track` DISABLE KEYS */;
/*!40000 ALTER TABLE `g8_andy_track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `g8_attd`
--

DROP TABLE IF EXISTS `g8_attd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `g8_attd` (
  `g8_rec_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Index record',
  `g8_tag_id` varchar(50) NOT NULL,
  `g8_uname` varchar(100) NOT NULL,
  `g8_empid` varchar(100) NOT NULL,
  `g8_lo_id` int(10) NOT NULL,
  PRIMARY KEY (`g8_rec_id`),
  UNIQUE KEY `g8_tag_id` (`g8_tag_id`,`g8_empid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `g8_attd`
--

LOCK TABLES `g8_attd` WRITE;
/*!40000 ALTER TABLE `g8_attd` DISABLE KEYS */;
INSERT INTO `g8_attd` VALUES (1,'20352178','Punit Kumar','9113081',90000),(2,'20607106','Upendra Kumar','9113081',90001),(3,'15531298','Gurpal Singh','9114052',90002),(4,'19943618','Mitash Gera','9114051',90003),(5,'20618210','Hitendra Verma','9114053',90004),(6,'19936338','Siddharth Rathore','9114072',90005),(7,'20643906','Rahul satija','9114071',90006),(8,'20629250','Aman Chawla','',90007),(9,'20049346','Shailendra Kumar','',90008),(10,'15531554','Himanshu Khazanchi','',90009),(11,'20435890','Sachin K. Vashist','',90010);
/*!40000 ALTER TABLE `g8_attd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `g8_attd_log`
--

DROP TABLE IF EXISTS `g8_attd_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `g8_attd_log` (
  `g8_rec_id` int(20) NOT NULL AUTO_INCREMENT,
  `g8_tag_id` varchar(20) NOT NULL,
  `g8_tag_timestamp` varchar(200) NOT NULL,
  `g8_curr_timestamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`g8_rec_id`),
  KEY `g8_tag_id` (`g8_tag_id`,`g8_tag_timestamp`),
  KEY `g8_tag_id_2` (`g8_tag_id`,`g8_tag_timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `g8_attd_log`
--

LOCK TABLES `g8_attd_log` WRITE;
/*!40000 ALTER TABLE `g8_attd_log` DISABLE KEYS */;
INSERT INTO `g8_attd_log` VALUES (1,'20629250','2014-10-13 13:42:40\n','2014-10-13 08:12:40'),(2,'19936338','2014-10-13 13:43:05\n','2014-10-13 08:13:05'),(3,'20049346','2014-10-13 13:43:08\n','2014-10-13 08:13:08'),(4,'15531554','2014-10-13 13:43:31\n','2014-10-13 08:13:31'),(5,'20618210','2014-10-13 13:43:36\n','2014-10-13 08:13:36'),(6,'20618210','2014-10-13 13:43:40\n','2014-10-13 08:13:40'),(7,'20643906','2014-10-13 13:44:19\n','2014-10-13 08:14:19'),(8,'19943618','2014-10-13 13:45:28\n','2014-10-13 08:15:28'),(9,'19961074','2014-10-13 13:45:36\n','2014-10-13 08:15:36'),(10,'15531298','2014-10-13 13:46:11\n','2014-10-13 08:16:11'),(11,'20629250','2014-10-13 19:11:13','2014-10-13 13:41:13'),(12,'20643906','2014-10-14 09:34:51','2014-10-14 04:04:51'),(13,'20049346','2014-10-14 09:35:10','2014-10-14 04:05:10'),(14,'20629250','2014-10-14 09:39:52','2014-10-14 04:09:52'),(15,'20618210','2014-10-14 10:00:25','2014-10-14 04:30:25'),(16,'19936338','2014-10-14 10:01:28','2014-10-14 04:31:28'),(17,'15531298','2014-10-14 10:01:40','2014-10-14 04:31:40'),(18,'15531554','2014-10-14 10:34:17','2014-10-14 05:04:17'),(19,'19943618','2014-10-14 10:38:45','2014-10-14 05:08:45'),(20,'20435890','2014-10-14 10:38:51','2014-10-14 05:08:51'),(21,'20352178','2014-10-14 11:57:41','2014-10-14 06:27:41');
/*!40000 ALTER TABLE `g8_attd_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `g8_category_prop`
--

DROP TABLE IF EXISTS `g8_category_prop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `g8_category_prop` (
  `g8_cat_id` int(10) NOT NULL,
  `g8_cat_name` varchar(100) NOT NULL,
  `g8_cat_long` varchar(20) NOT NULL COMMENT 'Category name - Long version',
  `g8_cat_desc` varchar(200) NOT NULL COMMENT 'Category description',
  `g8_cat_sub` int(10) NOT NULL,
  `g8_cat_parent_id` int(10) NOT NULL,
  UNIQUE KEY `g8_cat_id` (`g8_cat_id`),
  UNIQUE KEY `g8_cat_name` (`g8_cat_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Description of the categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `g8_category_prop`
--

LOCK TABLES `g8_category_prop` WRITE;
/*!40000 ALTER TABLE `g8_category_prop` DISABLE KEYS */;
INSERT INTO `g8_category_prop` VALUES (1,'GW','Gateway','This device is the gateway to other device',0,0),(2,'LIGHT','Lights','All bulbs will come here',0,0),(3,'DIMMER','Dimmers','Dimmers - 0-255',0,0),(4,'HUE','Color Controlled Dev','Color controlled device',0,0),(5,'BULB','','',0,0),(6,'SWITCH','Appliance Switch','',0,0),(7,'METER','Meter reading','',0,0),(8,'SMETER','Switch Meter','',0,0),(9,'ANDY','Phone-Andy','',0,0),(10,'GWANDYPHONE','Phone-Andy-GW','',0,0),(11,'GWPHONE','Phone gateway','Phone used as a gateway for making receiving calls',0,0),(12,'GWSMS','SMS gateway','Device used as an sms gateway for sending/receiving SMS',0,0),(13,'TEMP','Temperature','Device to check the temperature',0,0),(14,'HUMIDTY','Humidity sensor','',0,0),(15,'LUX','Light sensor','',0,0),(16,'DLOCK','Door Lock','',0,0),(17,'MOTION','Motion sensor','',0,0),(19,'ARMD','Arm / Disarm','',0,0),(20,'CAMPIC','Camera-pic','',0,0),(21,'CAMALL','Camera-video','',0,0),(22,'ALERT','Alert provider','',0,0),(23,'FEED','Feed input','',0,0),(24,'TV','Television','',0,0),(25,'STB','Set Top Box','',0,0),(26,'MPLAYER','Media Player','DVR, Audio, DVD',0,0),(27,'WEIGHT','Body Weight','',0,0),(28,'ACTIVITY','Activity','',0,0),(29,'PULSE','','',0,0),(31,'SLEEP','','',0,0),(32,'BODY','','',0,0),(33,'OBD','Car OBD','OBD device for car',0,0),(34,'GPS','GPS Tracker','GPS device for car',0,0),(35,'PING','DevicePing','Ping for IP network',0,0),(98,'WEATHER','Online weather','',0,0),(100,'ONLINE','Online Virtual','',0,0);
/*!40000 ALTER TABLE `g8_category_prop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `g8_cfg`
--

DROP TABLE IF EXISTS `g8_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `g8_cfg` (
  `rec_id` int(11) NOT NULL AUTO_INCREMENT,
  `g8_modplusname` varchar(100) DEFAULT NULL,
  `g8_module` varchar(50) NOT NULL DEFAULT 'g8_core',
  `g8_var_name` varchar(50) NOT NULL,
  `g8_value` varchar(100) NOT NULL,
  `g8_cfg_description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`rec_id`),
  UNIQUE KEY `g8_modplusname` (`g8_modplusname`),
  KEY `g8_var_name` (`g8_var_name`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=latin1 COMMENT='Configuration table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `g8_cfg`
--

LOCK TABLES `g8_cfg` WRITE;
/*!40000 ALTER TABLE `g8_cfg` DISABLE KEYS */;
INSERT INTO `g8_cfg` VALUES (7,'g8_coreg8_debug','g8_core','g8_debug','0','1 = Debug is ON\n0 = Debug is OFF<br>2 = var dumps...'),(8,'g8_coreg8_host','g8_core','g8_host','192.168.5.206','IP address of G8 LifeON server'),(9,'g8_coreg8_port','g8_core','g8_port','80','Port of LifeON Webserver'),(10,'g8_coreg8_engl','g8_core','g8_lang','engl','Language to be used for LifeON'),(11,NULL,'g8_core','g8_wan_ip','g8usa.dyndns.org','Public IP address of Lifeon server, when contacted from public network. You can also use FQDN.'),(12,NULL,'g8_core','g8_wan_port','80','Port of LifeON server, when contacted from public IP'),(13,NULL,'g8_core','g8_zwv_rtr_num','1','Number of zwave routers'),(14,NULL,'g8_core','g8_www','/var/www','Path of the webserver.. usually - /var/www'),(15,NULL,'g8_xtnb','g8_xtn_path','/lo/g8_xtn','This must be relative to the webpath...if webpath is /var/www\nand xtnbwebpath is /var/www/g8_xtn the'),(16,NULL,'g8_xtnb','g8_xtn_1_host','192.168.2.105','IP address of the first XTNBoard'),(18,NULL,'g8_xtnb','g8_xtn_1_port','8899','Port of the 1st xtnb device on the network - usually 8899'),(19,NULL,'g8_xtnb','g8_img_width','30','Width of the images to be displayed'),(20,NULL,'g8_xtnb','g8_img_height','30','height of the images to be displayed'),(21,NULL,'g8_xtnb','g8_img_dir','/img','Directory where images of the icons are stored, relative to xtnb path, usually /img'),(22,NULL,'g8_core','g8_sysid','US0100','Unique system ID (2 dig countrycode)+4digit systemcode'),(23,NULL,'g8_core','g8_sysname','LifeON Host','Human readable name for the device'),(24,NULL,'g8_core','g8_sysowner','Alok Sinha','Primary Owners name of the system'),(25,NULL,'g8_core','g8_sysowneremail','asinha@g8.net','Primary Owners email'),(26,NULL,'g8_core','g8_sysemail','lifeon@g8.net','System CMD email, to act on commands by email'),(27,NULL,'g8_core','g8_lo_path','/lo','Path of life on, relative to www path'),(28,NULL,'g8_zwav','g8_zwv_host','192.168.2.110','IP address Zwave controller '),(29,NULL,'g8_zwav','g8_zwv_port','3480','Port number for Zwave controller '),(30,NULL,'g8_zwav','g8_zwv_id','asinha','ID for Zwave controller'),(32,NULL,'g8_zwav','g8_zwv_fwd1','fwd1.mioshost.com','Zwave controller cloud '),(33,NULL,'g8_zwav','g8_zwv_fwd2','fwd2.mioshost.com','Zwave controller cloud '),(122,NULL,'g8_wthr','g8_wthr_param','weather,temp_c,temp_f,feelslike_c,feelslike_f,dewpoint_c,dewpoint_f,forecast,relative_humidity,visib',NULL),(123,NULL,'g8_wthr','g8_wthr_dump','SEARCH GET DUMP PARAM',NULL),(124,NULL,'g8_png','g8_png_cmd','ADD GET SET DEVICES PARAM DUMP DELETE',NULL),(125,NULL,'g8_png','g8_min_dev_name','3',NULL),(126,NULL,'g8_png','g8_max_dev_name','80',NULL),(127,NULL,'g8_png','g8_min_count','1',NULL),(128,NULL,'g8_png','g8_max_count','80',NULL),(129,NULL,'g8_png','g8_dev_addr','US0100',NULL),(130,NULL,'g8_png','g8_dev_type','IP',NULL),(131,NULL,'g8_png','g8_dev_plugin','g8_png',NULL),(132,NULL,'g8_png','g8_png_param','status,ipaddr,name,pingcount,timeout,g8_png',NULL),(133,NULL,'g8_png','g8_png_poll_param','status',NULL),(134,NULL,'g8_png','g8_png_dev_desc','G8 ping device auto added',NULL),(135,NULL,'g8_png','g8_png_dev_mfr','Globus Eight',NULL),(136,NULL,'g8_png','g8_png_dev_model','G8 Ping Switch',NULL),(137,NULL,'g8_png','g8_png_dev_version','1.0',NULL),(138,NULL,'g8_png','g8_png_dev_cat','99',NULL),(139,NULL,'g8_png','g8_png_dev_subcat','0',NULL),(140,NULL,'g8_png','g8_png_dev_poll','1',NULL),(141,NULL,'g8_png','g8_png_dev_active','1',NULL),(142,NULL,'g8_png','g8_png_dev_img','/lo/png/img/ping.png',NULL),(143,NULL,'g8_png','g8_png_dev_img_on','/lo/png/img/pingon.png',NULL),(144,NULL,'g8_png','g8_png_dev_img_off','/lo/png/img/pingoff.png',NULL),(145,NULL,'g8_png','g8_png_dev_room','99',NULL),(146,NULL,'g8_wthr','g8_apiKey','236c802712d951a0','API key from weather undeground'),(147,'g8_curr','g8_curr','g8_curr_url','http://rate-exchange.appspot.com/currency','URL from where the currency information is pulled');
/*!40000 ALTER TABLE `g8_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `g8_dev_comm`
--

DROP TABLE IF EXISTS `g8_dev_comm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `g8_dev_comm` (
  `g8_dev_id` int(10) NOT NULL,
  `g8_get_status` varchar(3) NOT NULL,
  `g8_get_status_name` varchar(40) NOT NULL,
  `g8_set_status` varchar(4) NOT NULL,
  `g8_set_toggle` varchar(4) NOT NULL,
  `g8_set_initstatus` varchar(4) NOT NULL,
  `g8_get_level` varchar(6) NOT NULL,
  `g8_get_level_name` varchar(40) NOT NULL,
  `g8_get_level_delta` varchar(6) NOT NULL,
  `g8_set_level` varchar(6) NOT NULL,
  `g8_get_trip` varchar(4) NOT NULL,
  `g8_set_trip` varchar(4) NOT NULL,
  `g8_get_alarm` varchar(4) NOT NULL,
  `g8_set_alarm` varchar(4) NOT NULL,
  `g8_get_temp` varchar(4) NOT NULL,
  `g8_set_temp` varchar(4) NOT NULL,
  `g8_get_var_name` varchar(40) NOT NULL,
  `g8_get_var` varchar(4) NOT NULL,
  `g8_set_var_name` varchar(40) NOT NULL,
  `g8_set_var` varchar(4) NOT NULL,
  PRIMARY KEY (`g8_dev_id`),
  UNIQUE KEY `g8_dev_id` (`g8_dev_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Command ability of the device';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `g8_dev_comm`
--

LOCK TABLES `g8_dev_comm` WRITE;
/*!40000 ALTER TABLE `g8_dev_comm` DISABLE KEYS */;
/*!40000 ALTER TABLE `g8_dev_comm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `g8_dev_poll_log`
--

DROP TABLE IF EXISTS `g8_dev_poll_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `g8_dev_poll_log` (
  `g8_rec_id` int(10) NOT NULL AUTO_INCREMENT,
  `g8_lo_id` int(10) NOT NULL COMMENT 'Device ID as per g8_dev_prop',
  `g8_dev_param` varchar(100) NOT NULL COMMENT 'The parameter that was polled',
  `g8_dev_param_name` varchar(100) NOT NULL COMMENT 'Name to be displayed, if blank then dev_conf table description will be used - if not blank, this value is used.',
  `g8_param_unit` varchar(200) NOT NULL COMMENT 'Parameter unit and value pair set',
  `g8_poll_interval` int(20) NOT NULL COMMENT 'Interval in seconds, before which poll should not be initiated',
  `g8_dev_value` varchar(100) NOT NULL COMMENT 'Value polled',
  `g8_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  `g8_url` varchar(100) NOT NULL,
  `g8_set_url` varchar(400) NOT NULL COMMENT 'URL that is required for action on this recid',
  `g8_dev_description` varchar(100) NOT NULL COMMENT 'Description of device',
  `g8_tracking` int(2) NOT NULL COMMENT 'To track this variable over a period of time. (1=yes, 0=no)',
  `g8_rep1` int(1) NOT NULL COMMENT 'Show on Rep1',
  `g8_rep2` int(1) NOT NULL COMMENT 'Show on Rep2',
  `g8_rep3` int(1) NOT NULL COMMENT 'Show on Rep3',
  PRIMARY KEY (`g8_rec_id`),
  UNIQUE KEY `g8_rec_id` (`g8_rec_id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1 COMMENT='Poll value log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `g8_dev_poll_log`
--

LOCK TABLES `g8_dev_poll_log` WRITE;
/*!40000 ALTER TABLE `g8_dev_poll_log` DISABLE KEYS */;
INSERT INTO `g8_dev_poll_log` VALUES (1,10001,'Status','','1=On,0=Off',5,'0','2014-07-03 06:53:03','http://192.168.5.206:80/lo/g8_api.php?g8_lo_id=10001&g8_cmd=GET&g8_param=Status','http://192.168.5.206:80/lo//_api.php?g8_lo_id=10001&g8_cmd=GET&g8_param=Status','XTN1 - SW1:Router 3',1,0,1,0),(2,10002,'Status','','1=On,0=Off',10,'0','2014-07-03 06:53:03','http://192.168.5.206:80/lo/g8_api.php?g8_lo_id=10002&g8_cmd=GET&g8_param=Status','http://192.168.5.206:80/lo//_api.php?g8_lo_id=10002&g8_cmd=GET&g8_param=Status','XTN1 - SW2:WDNAS',1,0,2,0),(4,10054,'status','','1=Up,0=Down',25,'1','2014-07-03 06:53:05','http://192.168.5.206:80/lo/g8_png/g8_png_api.php?g8_lo_id=10054&g8_cmd=GET&g8_param=status','http://192.168.5.206:80/lo/g8_png/g8_png_api.php?g8_lo_id=10054&g8_cmd=GET&g8_param=status','G8 IP XtnBrd:',1,0,31,0),(5,10055,'status','','1=Up,0=Down',25,'1','2014-07-03 06:53:07','http://192.168.5.206:80/lo/g8_png/g8_png_api.php?g8_lo_id=10055&g8_cmd=GET&g8_param=status','http://192.168.5.206:80/lo/g8_png/g8_png_api.php?g8_lo_id=10055&g8_cmd=GET&g8_param=status','G8 IP Cam:',1,0,20,0),(6,10056,'status','','1=Up,0=Down',25,'1','2014-07-03 06:53:09','http://192.168.5.206:80/lo/g8_png/g8_png_api.php?g8_lo_id=10056&g8_cmd=GET&g8_param=status','http://192.168.5.206:80/lo/g8_png/g8_png_api.php?g8_lo_id=10056&g8_cmd=GET&g8_param=status','G8_store:',1,0,21,0),(78,10003,'Status','','1=On,0=Off',10,'0','2014-07-03 06:53:10','http://192.168.5.206:80/lo/g8_api.php?g8_lo_id=10003&g8_cmd=GET&g8_param=Status','http://192.168.5.206:80/lo//_api.php?g8_lo_id=10003&g8_cmd=GET&g8_param=Status','XTN1 - SW3:WDNAS',1,0,2,0);
/*!40000 ALTER TABLE `g8_dev_poll_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `g8_dev_poll_track`
--

DROP TABLE IF EXISTS `g8_dev_poll_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `g8_dev_poll_track` (
  `g8_txn_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Sno ID for this table',
  `g8_rec_id` int(10) NOT NULL,
  `g8_lo_id` int(10) NOT NULL COMMENT 'Device ID as per g8_dev_prop',
  `g8_dev_param` varchar(100) NOT NULL COMMENT 'The parameter that was polled',
  `g8_dev_param_name` varchar(100) NOT NULL COMMENT 'Name to be displayed, if blank then dev_conf table description will be used - if not blank, this value is used.',
  `g8_param_unit` varchar(200) NOT NULL COMMENT 'Parameter unit and value pair set',
  `g8_dev_value` varchar(100) NOT NULL COMMENT 'Value polled',
  `g8_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp',
  PRIMARY KEY (`g8_txn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Poll value log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `g8_dev_poll_track`
--

LOCK TABLES `g8_dev_poll_track` WRITE;
/*!40000 ALTER TABLE `g8_dev_poll_track` DISABLE KEYS */;
/*!40000 ALTER TABLE `g8_dev_poll_track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `g8_dev_prop`
--

DROP TABLE IF EXISTS `g8_dev_prop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `g8_dev_prop` (
  `DEV_ID` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Unique Device ID on this system',
  `DEV_PARENT_ID` int(10) NOT NULL COMMENT 'ID of the parent device, same as dev id, if this is the master device',
  `DEV_ADDR` varchar(30) NOT NULL COMMENT 'LifeON server ID',
  `DEV_TYPE` varchar(10) NOT NULL COMMENT 'Type of device IP, ZWV, GSM',
  `DEV_IP` varchar(200) NOT NULL COMMENT 'If devicetype =IP, then IP address of device, else if zwave, then IP addr of zwv router, if GSM then mobile number',
  `DEV_PORT` int(6) NOT NULL COMMENT 'Port number of the device',
  `DEV_NUM` varchar(30) NOT NULL COMMENT 'Within the given IP, sometimes there are multiple devices, in zwave the device_num',
  `DEV_PLUGIN` varchar(20) NOT NULL COMMENT 'LifeON plugin that controls this device',
  `DEV_NAME` varchar(50) NOT NULL,
  `DEV_SERVICE_ID` varchar(350) NOT NULL COMMENT 'Service ID for zwv devices',
  `DEV_PARAMS` varchar(1000) NOT NULL COMMENT 'Comma seperated parameters supported',
  `G8_DEV_POLL_PARAMS` varchar(200) DEFAULT NULL COMMENT 'Paramters that need to be polled',
  `G8_DEV_SET_PARAM` varchar(1000) NOT NULL COMMENT 'Parameters/Value pair that are available to set',
  `DEV_DESCRIPTION` varchar(100) NOT NULL,
  `DEV_LOAD` int(30) NOT NULL COMMENT 'Wattage for the device, 0 for variable',
  `DEV_MFR` varchar(100) NOT NULL,
  `DEV_MODEL` varchar(100) NOT NULL,
  `DEV_VERSION` varchar(100) NOT NULL,
  `DEV_CAT` varchar(50) NOT NULL COMMENT 'Comma separated device categories to which this device belongs',
  `DEV_SUBCAT` varchar(20) NOT NULL COMMENT 'We use it for storing which alert group this belongs to',
  `DEV_POLL` tinyint(1) NOT NULL COMMENT 'Does this device have to be polled',
  `DEV_ACTIVE` tinyint(1) NOT NULL,
  `DEV_IMG` varchar(100) NOT NULL,
  `DEV_IMG_ON` varchar(100) NOT NULL,
  `DEV_IMG_OFF` varchar(100) NOT NULL,
  `DEV_ROOM` int(5) NOT NULL,
  PRIMARY KEY (`DEV_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10168 DEFAULT CHARSET=latin1 COMMENT='Properties of the device';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `g8_dev_prop`
--

LOCK TABLES `g8_dev_prop` WRITE;
/*!40000 ALTER TABLE `g8_dev_prop` DISABLE KEYS */;
INSERT INTO `g8_dev_prop` VALUES (10016,10016,'US0105','IP','g8ggn4.g8.net',8899,'0','g8_xtsn','G8_Demo_SW1','','Status,DevName,DevPoll,DevDesc,DevRoom,DevImg,DevImgOn,DevImgOff,DevCat,DevSubCat,DevActive,DevNum','Status','Status:Status_value,DevName:DevName,DevPoll:DevPoll,DevDesc:DevDesc,DevRoom:DevRoom,DevImg:DevImg,DevImgOn:DevImgOn,DevImgOff:DevImgOff,DevCat:DevCat,DevSubCat:DevSubCat,DevActive:DevActive,DevNum:DevNum','Blank Circuit',0,'USR','USR-WP3','3','6','0',1,1,'Switch_On.png','Switch_On.png','Switch_Off.png',25),(10017,10016,'US0105','IP','g8ggn4.g8.net',8899,'1','g8_xtsn','G8_Demo_SW2','','Status,DevName,DevPoll,DevDesc,DevRoom,DevImg,DevImgOn,DevImgOff,DevCat,DevSubCat,DevActive,DevNum','Status','Status:Status_value,DevName:DevName,DevPoll:DevPoll,DevDesc:DevDesc,DevRoom:DevRoom,DevImg:DevImg,DevImgOn:DevImgOn,DevImgOff:DevImgOff,DevCat:DevCat,DevSubCat:DevSubCat,DevActive:DevActive,DevNum:DevNum','Blank Circuit',0,'USR','USR-WP3','3','6','0',1,1,'Switch_On.png','Switch_On.png','Switch_Off.png',25),(10018,10016,'US0105','IP','g8ggn4.g8.net',8899,'2','g8_xtsn','G8_Demo_SW3','','Status,DevName,DevPoll,DevDesc,DevRoom,DevImg,DevImgOn,DevImgOff,DevCat,DevSubCat,DevActive,DevNum','Status','Status:Status_value,DevName:DevName,DevPoll:DevPoll,DevDesc:DevDesc,DevRoom:DevRoom,DevImg:DevImg,DevImgOn:DevImgOn,DevImgOff:DevImgOff,DevCat:DevCat,DevSubCat:DevSubCat,DevActive:DevActive,DevNum:DevNum','Blank Circuit',0,'USR','USR-WP3','3','6','0',1,1,'Switch_On.png','Switch_On.png','Switch_Off.png',25),(10030,10030,'US0105','ANDY','192.168.5.120',0,'0','g8_andy','MK818b','APA91bF_ErHN_h34ne9IefoK0YkqwYJKZcJVJLsQwHDEfcBfANhYqWCYlxp2CphXupAiguAkeZ50Z9exKh8aPuu9ariEPwmiULiG9IJnWG9RjOaRu2DmPOEzeCRWAfB4tg6mNaV40EMYprg9V66lOv-MwJEeSg2hYDko8qOXMT2Ik6eI9qRH2xA','DEVINFO,G8LOAVER,SYSTIME,LOCN,LOC,GCLIP,WIFI,POWERSTATUS,ISROOT,CPUGOV,CPUFREQ,PLANESTATUS,BATTERY','BATTERY','CALL,CALLSPKR,SENDSMS,SCLIP,MAPLATLONG,MAPADDR,KILLMAP,SETALARM,PREVIOUS,NEXT,TOGGLE,PLAY,STOP,PAUSE,VOLUP,VOLDN,MEDIAVOL,REBOOT,BOOTRECOVERY,URL,END,GOBACK,HOME,FLASH,SAY,G8NOTITitle,SETALARM','http://goo.gl/pIysje',-2,'Globus Eight','G8 Andy Switch','1.0','9','0',1,1,'Router.png','Ping_On.png','Ping_Off.png',99),(10079,10079,'US0105','WTHR','192.168.1.112',0,'0','g8_wthr','NewDelhi_India','00000.1.42182','raw,temp_c,temp_f,observation_time,observation_time_rfc822,observation_time_ecpoch,local_time_rfc822,local_tz_long,local_tz_offset,weather,temperature_string,relative_humidity,wind_string,wind_degrees,wind_mph,wind_kph,pressure_mb,pressure_in,dewpoint_string,dewpoint_f,dewpoint_c,heat_index_string,heat_index_f,heat_index_c,windchill_string,windchill_f,windchill_c,feelslike_string,feelslike_f,feelslike_c,visibility_mi,visibility_km,UV,solarradiation,precip_today_string,precip_today_in,precip_today_metric,precip_1hr_string,precip_1hr_in,precip_1hr_metric,icon,icon_url,forecast1,forecast2,forecast3,forecast4,forecast5,forecast6,forecast7,forecast8,DevDesc,DevRoom,DevImg,DevCat,DevSubCat,DevActive,DevPoll','status','','New Delhi, IN',-2,'Globus Eight','G8 Weather','1.0','98','0',1,1,'Router.png','Ping_On.png','Ping_Off.png',99),(10080,10079,'US0105','WTHR','192.168.1.112',0,'0','g8_wthr','Boston_USA','02101.1.99999','raw,temp_c,temp_f,observation_time,observation_time_rfc822,observation_time_ecpoch,local_time_rfc822,local_tz_long,local_tz_offset,weather,temperature_string,relative_humidity,wind_string,wind_degrees,wind_mph,wind_kph,pressure_mb,pressure_in,dewpoint_string,dewpoint_f,dewpoint_c,heat_index_string,heat_index_f,heat_index_c,windchill_string,windchill_f,windchill_c,feelslike_string,feelslike_f,feelslike_c,visibility_mi,visibility_km,UV,solarradiation,precip_today_string,precip_today_in,precip_today_metric,precip_1hr_string,precip_1hr_in,precip_1hr_metric,icon,icon_url,forecast1,forecast2,forecast3,forecast4,forecast5,forecast6,forecast7,forecast8,DevDesc,DevRoom,DevImg,DevCat,DevSubCat,DevActive,DevPoll','status','','Boston, US',-2,'Globus Eight','G8 Weather','1.0','98','0',1,1,'Router.png','Ping_On.png','Ping_Off.png',99),(10081,10079,'US0105','WTHR','192.168.1.112',0,'0','g8_wthr','Huntington_ NewYork','11743.1.99999','raw,temp_c,temp_f,observation_time,observation_time_rfc822,observation_time_ecpoch,local_time_rfc822,local_tz_long,local_tz_offset,weather,temperature_string,relative_humidity,wind_string,wind_degrees,wind_mph,wind_kph,pressure_mb,pressure_in,dewpoint_string,dewpoint_f,dewpoint_c,heat_index_string,heat_index_f,heat_index_c,windchill_string,windchill_f,windchill_c,feelslike_string,feelslike_f,feelslike_c,visibility_mi,visibility_km,UV,solarradiation,precip_today_string,precip_today_in,precip_today_metric,precip_1hr_string,precip_1hr_in,precip_1hr_metric,icon,icon_url,forecast1,forecast2,forecast3,forecast4,forecast5,forecast6,forecast7,forecast8,DevDesc,DevRoom,DevImg,DevCat,DevSubCat,DevActive,DevPoll','status','','Huntington, US',-2,'Globus Eight','G8 Weather','1.0','98','0',1,1,'Router.png','Ping_On.png','Ping_Off.png',99),(10082,10079,'US0105','WTHR','192.168.1.112',0,'0','g8_wthr','Mumbai_India','00000.1.43003','raw,temp_c,temp_f,observation_time,observation_time_rfc822,observation_time_ecpoch,local_time_rfc822,local_tz_long,local_tz_offset,weather,temperature_string,relative_humidity,wind_string,wind_degrees,wind_mph,wind_kph,pressure_mb,pressure_in,dewpoint_string,dewpoint_f,dewpoint_c,heat_index_string,heat_index_f,heat_index_c,windchill_string,windchill_f,windchill_c,feelslike_string,feelslike_f,feelslike_c,visibility_mi,visibility_km,UV,solarradiation,precip_today_string,precip_today_in,precip_today_metric,precip_1hr_string,precip_1hr_in,precip_1hr_metric,icon,icon_url,forecast1,forecast2,forecast3,forecast4,forecast5,forecast6,forecast7,forecast8,DevDesc,DevRoom,DevImg,DevCat,DevSubCat,DevActive,DevPoll','status','','Mumbai, IN',-2,'Globus Eight','G8 Weather','1.0','98','0',1,1,'Router.png','Ping_On.png','Ping_Off.png',99),(10083,10079,'US0105','WTHR','192.168.1.112',0,'0','g8_wthr','Singapore_SG','00000.1.48698','raw,temp_c,temp_f,observation_time,observation_time_rfc822,observation_time_ecpoch,local_time_rfc822,local_tz_long,local_tz_offset,weather,temperature_string,relative_humidity,wind_string,wind_degrees,wind_mph,wind_kph,pressure_mb,pressure_in,dewpoint_string,dewpoint_f,dewpoint_c,heat_index_string,heat_index_f,heat_index_c,windchill_string,windchill_f,windchill_c,feelslike_string,feelslike_f,feelslike_c,visibility_mi,visibility_km,UV,solarradiation,precip_today_string,precip_today_in,precip_today_metric,precip_1hr_string,precip_1hr_in,precip_1hr_metric,icon,icon_url,forecast1,forecast2,forecast3,forecast4,forecast5,forecast6,forecast7,forecast8,DevDesc,DevRoom,DevImg,DevCat,DevSubCat,DevActive,DevPoll','status','','Singapore, SG',-2,'Globus Eight','G8 Weather','1.0','98','0',1,1,'Router.png','Ping_On.png','Ping_Off.png',99),(10130,10079,'US0105','SMTY','SMTY_WB',0,'0','g8_smty','TV_Room_Hue_1','9c7fdb4d-23b9-45a1-9cd6-b49f67f59249:16dc849d-33b4-4fe7-b341-d769119147ad','Status,ID,Description,Time,Type,DevDesc,DevRoom,DevImg,DevCat,DevSubCat,DevActive,DevPoll','Status,ID,Description,Time,Type','On,Off,Toggle','TV Room Hue 1',8,'1c6415c2-ba5f-4f08-97b4-2816ece0fbb4','G8 Weather Switch','1.0','2','0',1,1,'Router.png','Ping_On.png','Ping_Off.png',23),(10131,10079,'US0105','SMTY','SMTY_WB',0,'0','g8_smty','TV_Room_Hue_2','3aacc507-3a58-4665-b678-af5b83cfbabb:16dc849d-33b4-4fe7-b341-d769119147ad','Status,ID,Description,Time,Type,DevDesc,DevRoom,DevImg,DevCat,DevSubCat,DevActive,DevPoll','Status,ID,Description,Time,Type','On,Off,Toggle','TV Room Hue 2',8,'1c6415c2-ba5f-4f08-97b4-2816ece0fbb4','G8 Smartthings Swich','1.0','2','0',1,1,'Router.png','Ping_On.png','Ping_Off.png',23),(10132,10079,'US0105','SMTY','SMTY_WB',0,'0','g8_smty','TV_Room','2605afe8-3868-44e2-8d0e-a2b42d77ef47:16dc849d-33b4-4fe7-b341-d769119147ad','Status,ID,Description,Time,Type,DevDesc,DevRoom,DevImg,DevCat,DevSubCat,DevActive,DevPoll','Status,ID,Description,Time,Type','On,Off,Toggle','TV Room',8,'1c6415c2-ba5f-4f08-97b4-2816ece0fbb4','G8 Smartthings Switch','1.0','2','0',1,1,'Router.png','Ping_On.png','Ping_Off.png',23),(10133,10079,'US0105','SMTY','SMTY_WB',0,'0','g8_smty','Kids_Room','203641d5-1b3f-43b3-b997-839c67596bb2:16dc849d-33b4-4fe7-b341-d769119147ad','Status,ID,Description,Time,Type,DevDesc,DevRoom,DevImg,DevCat,DevSubCat,DevActive,DevPoll','Status,ID,Description,Time,Type','On,Off,Toggle','Kids room',8,'1c6415c2-ba5f-4f08-97b4-2816ece0fbb4','G8 Smartthings Swich','1.0','2','0',1,1,'Router.png','Ping_On.png','Ping_Off.png',24),(10134,10079,'US0105','SMTY','SMTY_WB',0,'0','g8_smty','Aeon_Switch','4ead7f5a-6bd7-4b9d-900f-6292173a3402:16dc849d-33b4-4fe7-b341-d769119147ad','Status,ID,Description,Time,Type,DevDesc,DevRoom,DevImg,DevCat,DevSubCat,DevActive,DevPoll','Status,ID,Description,Time,Type','On,Off,Toggle','Aeon Switch',0,'1c6415c2-ba5f-4f08-97b4-2816ece0fbb4','G8 Smartthings Swich','1.0','2,7','0',1,1,'Router.png','Ping_On.png','Ping_Off.png',24),(10135,10079,'US0105','SMTY','SMTY_WB',0,'0','g8_smty','TZ 04','588f9338-0bdf-4b29-8bb3-dbd17b1a0c76:16dc849d-33b4-4fe7-b341-d769119147ad','Status,ID,Description,Time,Type,DevDesc,DevRoom,DevImg,DevCat,DevSubCat,DevActive,DevPoll','Status,ID,Description,Time,Type','On,Off,Toggle','TZ04 switch',0,'1c6415c2-ba5f-4f08-97b4-2816ece0fbb4','G8 Smartthings Swich','1.0','2,7','0',1,1,'Router.png','Ping_On.png','Ping_Off.png',24),(10136,10079,'US0105','SMTY','SMTY_WB',0,'0','g8_smty','Lobby','c61a8326-48c6-4f3a-b229-5ad6ddb18ef6:16dc849d-33b4-4fe7-b341-d769119147ad','Status,ID,Description,Time,Type,DevDesc,DevRoom,DevImg,DevCat,DevSubCat,DevActive,DevPoll','Status,ID,Description,Time,Type','On,Off,Toggle','Lobby',0,'1c6415c2-ba5f-4f08-97b4-2816ece0fbb4','G8 Smartthings Swich','1.0','2','0',1,1,'Router.png','Ping_On.png','Ping_Off.png',24),(10137,10079,'US0105','SMTY','SMTY_WB',0,'0','g8_smty','Drawing_Room','ece0aee9-1bb0-4b5d-8e5a-548a4d224e7d:16dc849d-33b4-4fe7-b341-d769119147ad','Status,ID,Description,Time,Type,DevDesc,DevRoom,DevImg,DevCat,DevSubCat,DevActive,DevPoll','Status,ID,Description,Time,Type','On,Off,Toggle','Drawing Room',0,'1c6415c2-ba5f-4f08-97b4-2816ece0fbb4','G8 Smartthings Swich','1.0','2','0',1,1,'Router.png','Ping_On.png','Ping_Off.png',24),(10138,10079,'US0105','SMTY','SMTY_WB',0,'0','g8_smty','Bed_Room','ea2a1801-4f30-4eb4-a485-f7f1931aa695:16dc849d-33b4-4fe7-b341-d769119147ad','Status,ID,Description,Time,Type,DevDesc,DevRoom,DevImg,DevCat,DevSubCat,DevActive,DevPoll','Status,ID,Description,Time,Type','On,Off,Toggle','Bed Room',0,'1c6415c2-ba5f-4f08-97b4-2816ece0fbb4','G8 Smartthings Swich','1.0','2','0',1,1,'Router.png','Ping_On.png','Ping_Off.png',24),(10139,10089,'US0105','PHUE','g8usa.g8.net',8100,'3','g8_phue','G8 USA Strip 1','newdeveloper','Status,Brightness,Hue,Saturation,xy,Alert,Effect,Mode,Reachable,Type,Name,DevDesc,DevRoom,DevImg,DevCat,DevSubCat,DevActive,DevPoll,DevImgOn,DevImgOff','','SetStatus,SetBri,SetHue,SetSat,Setxy,SetAlert,SetEffect,SetMode,Reachable,Type,SetName','LED Strip',4,'Globus Eight','G8 Philips Hue','3','2,3,4','0',1,1,'Switch_On.png','Switch_On.png','Switch_Off.png',20),(10140,10089,'US0105','PHUE','g8usa.g8.net',8100,'1','g8_phue','G8 USA - Lux 1','newdeveloper','Status,Brightness,Alert,Effect,Mode,Reachable,Type,Name,DevDesc,DevRoom,DevImg,DevCat,DevSubCat,DevActive,DevPoll,DevImgOn,DevImgOff','','SetStatus,SetBri,SetAlert,SetEffect,SetMode,Reachable,Type,SetName','Lux 1',8,'Globus Eight','G8 Philips Hue','3','2,3','0',1,1,'Switch_On.png','Switch_On.png','Switch_Off.png',20),(10141,10089,'US0105','PHUE','g8usa.g8.net',8100,'2','g8_phue','G8 USA - Lux 2','newdeveloper','Status,Brightness,Alert,Effect,Mode,Reachable,Type,Name,DevDesc,DevRoom,DevImg,DevCat,DevSubCat,DevActive,DevPoll,DevImgOn,DevImgOff','','SetStatus,SetBri,SetAlert,SetEffect,SetMode,Reachable,Type,SetName','Lux 2',8,'Globus Eight','G8 Philips Hue','3','2,3','0',1,1,'Switch_On.png','Switch_On.png','Switch_Off.png',20),(10142,10089,'US0105','PHUE','nslu2.dnsget.org',9000,'3','g8_phue','JJ TV Room Hue 2','newdeveloper','Status,Brightness,Hue,Saturation,xy,Alert,Effect,Mode,Reachable,Type,Name,DevDesc,DevRoom,DevImg,DevCat,DevSubCat,DevActive,DevPoll,DevImgOn,DevImgOff','','SetStatus,SetBri,SetHue,SetSat,Setxy,SetAlert,SetEffect,SetMode,Reachable,Type,SetName','Hue1',8,'Globus Eight','G8 Philips Hue','3','2,3,4','0',1,1,'Switch_On.png','Switch_On.png','Switch_Off.png',23),(10143,10089,'US0105','PHUE','nslu2.dnsget.org',9000,'2','g8_phue','JJ TV Room Hue 1','newdeveloper','Status,Brightness,Hue,Saturation,xy,Alert,Effect,Mode,Reachable,Type,Name,DevDesc,DevRoom,DevImg,DevCat,DevSubCat,DevActive,DevPoll,DevImgOn,DevImgOff','','SetStatus,SetBri,SetHue,SetSat,Setxy,SetAlert,SetEffect,SetMode,Reachable,Type,SetName','Hue2',8,'Globus Eight','G8 Philips Hue','3','2,3,4','0',1,1,'Switch_On.png','Switch_On.png','Switch_Off.png',23),(10144,10089,'US0105','PHUE','nslu2.dnsget.org',9000,'1','g8_phue','JJ Bedroom Hue','newdeveloper','Status,Brightness,Hue,Saturation,xy,Alert,Effect,Mode,Reachable,Type,Name,DevDesc,DevRoom,DevImg,DevCat,DevSubCat,DevActive,DevPoll,DevImgOn,DevImgOff','','SetStatus,SetBri,SetHue,SetSat,Setxy,SetAlert,SetEffect,SetMode,Reachable,Type,SetName','Hue3',8,'Globus Eight','G8 Philips Hue','3','2,3,4','0',1,1,'Switch_On.png','Switch_On.png','Switch_Off.png',23),(10145,10089,'US0105','PHUE','home.g8.net',9100,'2','g8_phue','Alok Home Hue 1','newdeveloper','Status,Brightness,Hue,Saturation,xy,Alert,Effect,Mode,Reachable,Type,Name,DevDesc,DevRoom,DevImg,DevCat,DevSubCat,DevActive,DevPoll,DevImgOn,DevImgOff','','SetStatus,SetBri,SetHue,SetSat,Setxy,SetAlert,SetEffect,SetMode,Reachable,Type,SetName','Alok Home Hue 1',8,'Globus Eight','G8 Philips Hue','3','2,3,4','0',1,1,'Switch_On.png','Switch_On.png','Switch_Off.png',21),(10146,10089,'US0105','PHUE','home.g8.net',9100,'3','g8_phue','Alok Home Hue 2','newdeveloper','Status,Brightness,Hue,Saturation,xy,Alert,Effect,Mode,Reachable,Type,Name,DevDesc,DevRoom,DevImg,DevCat,DevSubCat,DevActive,DevPoll,DevImgOn,DevImgOff','','SetStatus,SetBri,SetHue,SetSat,Setxy,SetAlert,SetEffect,SetMode,Reachable,Type,SetName','Alok Home Hue 2',8,'Globus Eight','G8 Philips Hue','3','2,3,4','0',1,1,'Switch_On.png','Switch_On.png','Switch_Off.png',21),(10147,10089,'US0105','PHUE','home.g8.net',9100,'4','g8_phue','Alok Home Hue 3','newdeveloper','Status,Brightness,Hue,Saturation,xy,Alert,Effect,Mode,Reachable,Type,Name,DevDesc,DevRoom,DevImg,DevCat,DevSubCat,DevActive,DevPoll,DevImgOn,DevImgOff','','SetStatus,SetBri,SetHue,SetSat,Setxy,SetAlert,SetEffect,SetMode,Reachable,Type,SetName','Alok Home Hue 3',8,'Globus Eight','G8 Philips Hue','3','2,3,4','0',1,1,'Switch_On.png','Switch_On.png','Switch_Off.png',21),(10148,10089,'US0105','PHUE','home.g8.net',9100,'5','g8_phue','Alok Home Hue 4','newdeveloper','Status,Brightness,Hue,Saturation,xy,Alert,Effect,Mode,Reachable,Type,Name,DevDesc,DevRoom,DevImg,DevCat,DevSubCat,DevActive,DevPoll,DevImgOn,DevImgOff','','SetStatus,SetBri,SetHue,SetSat,Setxy,SetAlert,SetEffect,SetMode,Reachable,Type,SetName','Alok Home Hue 4',8,'Globus Eight','G8 Philips Hue','3','2,3,4','0',1,1,'Switch_On.png','Switch_On.png','Switch_Off.png',21),(10149,10089,'US0105','PHUG','home.g8.net',9100,'1','g8_phug','Alok Home Group 1','newdeveloper','DevRaw,Status,Brightness,Hue,Saturation,xy,Alert,Effect,Lights,Mode,Name,DevDesc,DevRoom,DevImg,DevCat,DevSubCat,DevActive,DevPoll,DevImgOn,DevImgOff','','SetStatus,SetBri,SetHue,SetSat,Setxy,SetAlert,SetEffect,SetMode,Reachable,Type,SetName','Alok Home Group 1',-2,'Globus Eight','G8 Philips Hue','3','2,3','0',1,1,'Switch_On.png','Switch_On.png','Switch_Off.png',21),(10150,10089,'US0105','PHUG','g8usa.g8.net',8100,'1','g8_phug','Alok USA Group 1','newdeveloper','DevRaw,Status,Brightness,Hue,Saturation,xy,Alert,Effect,Lights,Mode,Name,DevDesc,DevRoom,DevImg,DevCat,DevSubCat,DevActive,DevPoll,DevImgOn,DevImgOff','','SetStatus,SetBri,SetHue,SetSat,Setxy,SetAlert,SetEffect,SetMode,Reachable,Type,SetName','Alok USA Group 1',-2,'Globus Eight','G8 Philips Hue','3','2,3','0',1,1,'Switch_On.png','Switch_On.png','Switch_Off.png',20),(10151,10033,'US0105','GIRB','g8usa.g8.net',4998,'2','g8_girb','Remote_InsigniaTV','','DevName,DevDesc,DevRoom,DevCat,DevSubCat,DevPoll,DevActive,DevImg','','Multi,DevName,DevDesc,DevRoom,DevCat,DevSubCat,DevPoll,DevActive,DevImg,VolUp,VolDn,Power,Mute,Source,Menu,Exit,Info,Aspect,Enter,0,1,2,3,4,5,6,7,8,9,ChanUp,ChanDn,Audio,Picture,Sleep,Home,Btn_Up,Btn_Dn,Btn_Rt,Btn_Lt','G8 USA Main TV',2,'Globus Eight','G8 IRB Switch','1.0','24','0',1,1,'Remote.png','Remote.png','Remote.png',20),(10157,10165,'US0105','GPSG','10165',0,'862106028945006','g8_gpsg','Nissan_WNU_9800','+19177174793:123456','DevRoom,DevDesc,DevCat,DevSubCat,DevPoll,DevActive,DevImg,DevImgOn,DevImgOff,Power,GeoFence_alert,Movement_alert,Sensor_alert,Speeding_alert,Ignition_alert,Incident.Location_alert,Location_alert.Locn,Location_alert.Speed,Location_alert.Dir,Gps_lost,Fix,Armed,Password,Admin,IMEI,CarID,ObdSetting,ObdInterface.AdminCancel,OdoSetting,TankSetting,Service,TrackerMode,SMSMode,APNSetting,TimeZoneSetting,GpsSignalAlarmSetting,PowerAlarmSetting,ExtPowerAlarm,OverSpeedingAlarmSetting,DistanceAlarmSetting,GeoFenceAlarmSetting,SuppressDriftSetting,ScheduleSetting,LowBatteryAlarmSetting,MonitorModeSetting,DirectionSetting,ServerIpSetting,OBDResults','isroot','ObdStatus,Check,Call,CallSpkr,ObdConfigure,CarID,AdminAddPhone,AdminDelPhone,ChangePass,SetODO,SetTank,SetMaintenance,SetFixTracking,SetOpenTracking,SetDegree,SuppressDrift,CancelTracking,SetSmartTracking,GetStreetAddr,SetMode,SaveFixData,SaveAllData,ClearAllData,LoadAllData,LoadDateData,SetBatteryAlarm,SetExtPowerAarm,SetMovementOn,SetShockLevel,Arm,Disarm,Forward,Balance,IMEI,Reset,TimeZone,TCPUDP,SetSpeed,SetMovementOff,SetGPSBlind,SetMultiArea,SetGeoFenceRect,SetGeoFenceRound,DelGeoFenceRound,Sleep,AwakeSched,SetAPN,SetGPRSlogin,SetGPRSServer,SetLessGPRS,SetSmsGprs','G8 GPSG Nissan Sentra WNU 9800',-2,'Globus Eight','G8 GPSG','1.0','33,34','21,22',1,1,'Router.png','Ping_On.png','Ping_Off.png',20),(10167,10079,'US0105','SMTY','SMTY_WB',0,'0','g8_smty','HEM_Meter','588f9338-0bdf-4b29-8bb3-dbd17b1a0c76:16dc849d-33b4-4fe7-b341-d769119147ad','Status,ID,Description,Time,Type,DevDesc,DevRoom,DevImg,DevCat,DevSubCat,DevActive,DevPoll','Status,ID,Description,Time,Type','On,Off,Toggle','JJs Home Meter',0,'1c6415c2-ba5f-4f08-97b4-2816ece0fbb4','G8 Smartthings Swich','1.0','2,7','25',1,1,'Router.png','Ping_On.png','Ping_Off.png',24);
/*!40000 ALTER TABLE `g8_dev_prop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `g8_ergy_track`
--

DROP TABLE IF EXISTS `g8_ergy_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `g8_ergy_track` (
  `g8_rec_id` int(10) NOT NULL AUTO_INCREMENT,
  `g8_lo_id` int(10) NOT NULL,
  `g8_param` varchar(500) NOT NULL,
  `g8_value` int(50) NOT NULL,
  `g8_cost` varchar(20) NOT NULL COMMENT 'Cost of electricity at this sample point',
  `g8_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `g8_dev_name` varchar(100) NOT NULL,
  PRIMARY KEY (`g8_rec_id`),
  UNIQUE KEY `g8_rec_id` (`g8_rec_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Keeps a track of the energy information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `g8_ergy_track`
--

LOCK TABLES `g8_ergy_track` WRITE;
/*!40000 ALTER TABLE `g8_ergy_track` DISABLE KEYS */;
/*!40000 ALTER TABLE `g8_ergy_track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `g8_gpsg_track`
--

DROP TABLE IF EXISTS `g8_gpsg_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `g8_gpsg_track` (
  `g8_rec_id` int(30) NOT NULL AUTO_INCREMENT,
  `g8_lo_id` varchar(10) NOT NULL,
  `g8_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `g8_lat` varchar(20) NOT NULL,
  `g8_long` varchar(20) NOT NULL,
  `g8_speed` varchar(9) NOT NULL,
  `g8_dirn` varchar(9) NOT NULL,
  `g8_dev_timestamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`g8_rec_id`),
  UNIQUE KEY `g8_rec_id` (`g8_rec_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='A track of location';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `g8_gpsg_track`
--

LOCK TABLES `g8_gpsg_track` WRITE;
/*!40000 ALTER TABLE `g8_gpsg_track` DISABLE KEYS */;
/*!40000 ALTER TABLE `g8_gpsg_track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `g8_html`
--

DROP TABLE IF EXISTS `g8_html`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `g8_html` (
  `rec_id` int(11) NOT NULL AUTO_INCREMENT,
  `g8_modplusname` varchar(100) DEFAULT NULL,
  `g8_module` varchar(50) NOT NULL DEFAULT 'g8_core',
  `g8_var_name` varchar(50) NOT NULL,
  `g8_value` varchar(100) NOT NULL,
  `g8_cfg_description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`rec_id`),
  UNIQUE KEY `g8_modplusname` (`g8_modplusname`),
  KEY `g8_var_name` (`g8_var_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Configuration table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `g8_html`
--

LOCK TABLES `g8_html` WRITE;
/*!40000 ALTER TABLE `g8_html` DISABLE KEYS */;
/*!40000 ALTER TABLE `g8_html` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `g8_icons`
--

DROP TABLE IF EXISTS `g8_icons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `g8_icons` (
  `rec_id` int(11) NOT NULL AUTO_INCREMENT,
  `g8_modplusname` varchar(100) DEFAULT NULL,
  `g8_module` varchar(50) NOT NULL DEFAULT 'g8_core',
  `g8_var_name` varchar(50) NOT NULL,
  `g8_value` varchar(100) NOT NULL,
  `g8_cfg_description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`rec_id`),
  UNIQUE KEY `g8_modplusname` (`g8_modplusname`),
  KEY `g8_var_name` (`g8_var_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Configuration table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `g8_icons`
--

LOCK TABLES `g8_icons` WRITE;
/*!40000 ALTER TABLE `g8_icons` DISABLE KEYS */;
/*!40000 ALTER TABLE `g8_icons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `g8_lang_english`
--

DROP TABLE IF EXISTS `g8_lang_english`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `g8_lang_english` (
  `rec_id` int(11) NOT NULL AUTO_INCREMENT,
  `g8_modplusname` varchar(100) DEFAULT NULL,
  `g8_module` varchar(50) NOT NULL DEFAULT 'g8_core',
  `g8_var_name` varchar(50) NOT NULL,
  `g8_value` varchar(100) NOT NULL,
  `g8_cfg_description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`rec_id`),
  UNIQUE KEY `g8_modplusname` (`g8_modplusname`),
  KEY `g8_var_name` (`g8_var_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Configuration table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `g8_lang_english`
--

LOCK TABLES `g8_lang_english` WRITE;
/*!40000 ALTER TABLE `g8_lang_english` DISABLE KEYS */;
/*!40000 ALTER TABLE `g8_lang_english` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `g8_lang_hindi`
--

DROP TABLE IF EXISTS `g8_lang_hindi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `g8_lang_hindi` (
  `rec_id` int(11) NOT NULL AUTO_INCREMENT,
  `g8_modplusname` varchar(100) DEFAULT NULL,
  `g8_module` varchar(50) NOT NULL DEFAULT 'g8_core',
  `g8_var_name` varchar(50) NOT NULL,
  `g8_value` varchar(100) NOT NULL,
  `g8_cfg_description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`rec_id`),
  UNIQUE KEY `g8_modplusname` (`g8_modplusname`),
  KEY `g8_var_name` (`g8_var_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Configuration table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `g8_lang_hindi`
--

LOCK TABLES `g8_lang_hindi` WRITE;
/*!40000 ALTER TABLE `g8_lang_hindi` DISABLE KEYS */;
/*!40000 ALTER TABLE `g8_lang_hindi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `g8_lo_servers`
--

DROP TABLE IF EXISTS `g8_lo_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `g8_lo_servers` (
  `g8_rec_id` int(3) NOT NULL AUTO_INCREMENT COMMENT 'Txn ID',
  `g8_dev_addr` varchar(30) NOT NULL COMMENT 'LO Id of this server',
  `g8_module` varchar(10) NOT NULL COMMENT 'Life On Module',
  `g8_serial` int(10) NOT NULL COMMENT 'Serial number of your device',
  `g8_lo_ip_addr` varchar(19) NOT NULL COMMENT 'IP address on local subnet',
  `g8_rem_port` int(10) NOT NULL COMMENT 'Port of the remote server',
  `g8_url` varchar(200) NOT NULL COMMENT 'url for location - usually fwd1.mios.com',
  `g8_login` varchar(30) NOT NULL COMMENT 'Login id on cp.mios.com',
  `g8_pass` varchar(20) NOT NULL COMMENT 'Pwd of mios for this server',
  PRIMARY KEY (`g8_rec_id`),
  UNIQUE KEY `g8_rec_id` (`g8_rec_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='This table keeps data of the zwave servers - used for remote login';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `g8_lo_servers`
--

LOCK TABLES `g8_lo_servers` WRITE;
/*!40000 ALTER TABLE `g8_lo_servers` DISABLE KEYS */;
INSERT INTO `g8_lo_servers` VALUES (1,'US0100','g8_zwv',30007931,'192.168.2.110',80,'fwd1.mios.com','asinha','zxasqw12'),(2,'US0105','g8_xtn',35109153,'192.168.5.206',80,'fwd7.mios.com','asinha','zxasqw12');
/*!40000 ALTER TABLE `g8_lo_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `g8_module_prop`
--

DROP TABLE IF EXISTS `g8_module_prop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `g8_module_prop` (
  `g8_rec_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Record ID',
  `g8_color` varchar(20) NOT NULL COMMENT 'BG Color to be used',
  `g8_module_name` varchar(40) NOT NULL COMMENT 'module_name',
  `g8_module_path` varchar(150) NOT NULL,
  `g8_example_vars` varchar(150) NOT NULL,
  `g8_developer` varchar(50) NOT NULL,
  `g8_description` varchar(200) NOT NULL,
  PRIMARY KEY (`g8_rec_id`),
  UNIQUE KEY `g8_module_name` (`g8_module_name`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `g8_module_prop`
--

LOCK TABLES `g8_module_prop` WRITE;
/*!40000 ALTER TABLE `g8_module_prop` DISABLE KEYS */;
INSERT INTO `g8_module_prop` VALUES (2,'#F2F2FF','g8_zwav','/lo/g8_zwav','?g8_cmd=GET&g8_mode=CurrentTemperature','asinha@g8.net','G8 Zwave controller.'),(3,'#FFFFEE','g8_ping','/lo/g8_ping','','asinha@g8.net','G8 Ping controller.'),(4,'#DDFFEE','g8_xtsn','/lo/g8_xtsn','','asinha@g8.net','G8 Extension Board'),(5,'#F2FFF2','g8_wthr','/lo/g8_wthr','','asinha@g8.net','G8 Weather data'),(6,'#DDFFEE','g8_smty','/lo/g8_smty','','asinha@g8.net','G8 Smartthings'),(7,'#DDFFEE','g8_andy','/lo/g8_andy','','asinha@g8.net','G8 Android'),(8,'#DDFFEE','g8_phue','/lo/g8_phue','','asinha@g8.net','G8 Hue controller'),(9,'#DDFFEE','g8_phug','/lo/g8_phug','','asinha@g8.net','G8 Hue groups'),(10,'#DDFFEE','g8_eqak','/lo/g8_eqak','','asinha@g8.net','G8 Earthquake Plugin'),(12,'#DDFFEE','g8_curr','/lo/g8_curr','','asinha@g8.net','G8 Currency Plugin'),(13,'#DDFFEE','g8_girb','/lo/g8_girb','','asinha@g8.net','G8 IR Blaster'),(14,'#DDFFEE','g8_fbit','/lo/g8_fbit','','asinha@g8.net','G8 FitBit integration'),(15,'#DDFFEE','g8_gpsg','/lo/g8_gpsg','','asinha@g8.net','G8 Gps/OBD Plugin'),(16,'#DDFFEE','g8_alrt','/lo/g8_alrt','','asinha@g8.net','G8 Alert component');
/*!40000 ALTER TABLE `g8_module_prop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `g8_param_log`
--

DROP TABLE IF EXISTS `g8_param_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `g8_param_log` (
  `g8_rec_id` int(30) NOT NULL AUTO_INCREMENT,
  `g8_lo_id` int(10) NOT NULL,
  `g8_param` varchar(200) NOT NULL,
  `g8_value` varchar(200) NOT NULL,
  `g8_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `g8_dev_timestamp` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `g8_rec_id` (`g8_rec_id`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `g8_param_log`
--

LOCK TABLES `g8_param_log` WRITE;
/*!40000 ALTER TABLE `g8_param_log` DISABLE KEYS */;
INSERT INTO `g8_param_log` VALUES (64,10157,'Power','ON','2014-09-12 01:13:29','0000-00-00 00:00:00'),(65,10157,'Battery_Level','100%','2014-09-12 01:13:29','0000-00-00 00:00:00'),(66,10157,'Gps','','2014-09-12 01:13:29','0000-00-00 00:00:00'),(67,10157,'Gprs','','2014-09-12 01:13:29','0000-00-00 00:00:00'),(68,10157,'Gsm_Signal','','2014-09-12 01:13:29','0000-00-00 00:00:00'),(69,10157,'Service','','2014-09-12 01:13:29','0000-00-00 00:00:00'),(70,10157,'Oil_level','','2014-09-12 01:13:29','0000-00-00 00:00:00'),(72,10157,'Location_alert.Locn','40.863593,-73.433057','2014-09-12 03:03:09','0000-00-00 00:00:00'),(73,10157,'Location_alert.Speed','0.00','2014-09-12 03:03:09','0000-00-00 00:00:00'),(74,10157,'Location_alert.Dir','52.','2014-09-12 03:03:09','0000-00-00 00:00:00'),(75,10157,'Incident.Location_alert','Location_alert','2014-09-12 03:07:28','0000-00-00 00:00:00'),(76,10157,'Incident.Sensor_alert','Sensor_alert','2014-09-12 03:43:40','0000-00-00 00:00:00'),(77,10157,'Sensor_alert.Locn','40.863447,-73.433008','2014-09-12 03:43:40','0000-00-00 00:00:00'),(78,10157,'Sensor_alert.Speed','0.00','2014-09-12 03:43:40','0000-00-00 00:00:00'),(79,10157,'Sensor_alert.Dir','259','2014-09-12 03:43:40','0000-00-00 00:00:00'),(84,10157,'TrackerMode','1','2014-09-12 04:55:06','2014-09-12 04:38:00'),(85,10157,'ScheduleSetting','1','2014-09-12 05:58:42','0000-00-00 00:00:00'),(86,10157,'Armed','1','2014-09-12 08:32:32','2014-09-12 08:33:00'),(87,10157,'CarID','1','2014-09-12 11:22:29','2014-09-12 11:23:00'),(88,10157,'ObdInterface','0','2014-09-12 12:08:09','2014-09-12 12:08:00'),(89,10162,'uuid','9b888db8-6540-496b-b89f-979829c7578e','2014-09-12 21:40:16','2014-09-13 07:46:55'),(90,10163,'uuid','5d04e069-f84e-443a-905d-72857d444656','2014-09-12 21:40:21','2014-09-15 10:21:47'),(91,10163,'Temperature','23.731866836548','2014-09-12 21:41:22','2014-09-15 10:21:48'),(92,10163,'raw','Not found','2014-09-12 21:49:51','2014-09-13 07:19:51'),(93,10163,'__type','MyTagList.Tag','2014-09-12 22:06:58','2014-09-15 10:21:47'),(94,10163,'notificationJS','No data','2014-09-12 22:06:58','2014-09-15 10:21:47'),(95,10163,'name','10163','2014-09-12 22:06:58','2014-09-15 10:21:47'),(96,10163,'comment','No data','2014-09-12 22:06:58','2014-09-15 10:21:47'),(97,10163,'slaveId','2','2014-09-12 22:06:58','2014-09-15 10:21:47'),(98,10163,'tagType','13','2014-09-12 22:06:58','2014-09-15 10:21:47'),(99,10163,'lastComm','1.3055250088577E+17','2014-09-12 22:06:58','2014-09-15 10:21:47'),(100,10163,'alive','1','2014-09-12 22:06:58','2014-09-15 10:21:47'),(101,10163,'signaldBm','-69','2014-09-12 22:06:58','2014-09-15 10:21:47'),(102,10163,'batteryVolt','2.969343898013','2014-09-12 22:06:58','2014-09-15 10:21:47'),(103,10163,'beeping','No data','2014-09-12 22:06:58','2014-09-15 10:21:47'),(104,10163,'lit','No data','2014-09-12 22:06:58','2014-09-15 10:21:47'),(105,10163,'migrationPending','No data','2014-09-12 22:06:58','2014-09-15 10:21:47'),(106,10163,'beepDurationDefault','1000','2014-09-12 22:06:58','2014-09-15 10:21:47'),(107,10163,'eventState','1','2014-09-12 22:06:58','2014-09-15 10:21:47'),(108,10163,'pendingEventState','1','2014-09-12 22:06:58','2014-09-15 10:21:47'),(109,10163,'tempEventState','1','2014-09-12 22:06:58','2014-09-15 10:21:48'),(110,10163,'OutOfRange','No data','2014-09-12 22:06:58','2014-09-15 10:21:48'),(111,10163,'solarVolt','No data','2014-09-12 22:06:58','2014-09-15 10:21:48'),(112,10163,'tempCalOffset','No data','2014-09-12 22:06:58','2014-09-15 10:21:48'),(113,10163,'capCalOffset','No data','2014-09-12 22:06:58','2014-09-15 10:21:48'),(114,10163,'image_md5','No data','2014-09-12 22:06:58','2014-09-15 10:21:48'),(115,10163,'cap','45.536560058594','2014-09-12 22:06:58','2014-09-15 10:21:48'),(116,10163,'capRaw','No data','2014-09-12 22:06:58','2014-09-15 10:21:48'),(117,10163,'az2','No data','2014-09-12 22:06:58','2014-09-15 10:21:48'),(118,10163,'capEventState','2','2014-09-12 22:06:58','2014-09-15 10:21:48'),(119,10163,'shorted','No data','2014-09-12 22:06:58','2014-09-15 10:21:48'),(120,10163,'thermostat','No data','2014-09-12 22:06:58','2014-09-15 10:21:48'),(121,10163,'ampData','No data','2014-09-12 22:06:58','2014-09-15 10:21:48'),(122,10163,'postBackInterval','600','2014-09-12 22:06:58','2014-09-15 10:21:48'),(123,10163,'rev','14','2014-09-12 22:06:58','2014-09-15 10:21:48'),(124,10163,'version1','2','2014-09-12 22:06:58','2014-09-15 10:21:48'),(125,10163,'freqOffset','-472','2014-09-12 22:06:59','2014-09-15 10:21:48'),(126,10163,'freqCalApplied','3200','2014-09-12 22:06:59','2014-09-15 10:21:48'),(127,10163,'reviveEvery','4','2014-09-12 22:06:59','2014-09-15 10:21:48'),(128,10163,'LBTh','2.5','2014-09-12 22:06:59','2014-09-15 10:21:48'),(129,10163,'enLBN','1','2014-09-12 22:06:59','2014-09-15 10:21:48'),(130,10163,'txpwr','16','2014-09-12 22:06:59','2014-09-15 10:21:48'),(131,10163,'rssiMode','No data','2014-09-12 22:06:59','2014-09-15 10:21:48'),(132,10163,'ds18','No data','2014-09-12 22:06:59','2014-09-15 10:21:48'),(133,10163,'batteryRemaining','0.93','2014-09-12 22:06:59','2014-09-15 10:21:48'),(134,10162,'__type','MyTagList.Tag','2014-09-12 22:09:36','2014-09-13 07:46:55'),(135,10162,'notificationJS','No data','2014-09-12 22:09:36','2014-09-13 07:46:55'),(136,10162,'name','Main Door','2014-09-12 22:09:36','2014-09-13 07:46:55'),(137,10162,'comment','No data','2014-09-12 22:09:36','2014-09-13 07:46:55'),(138,10162,'slaveId','1','2014-09-12 22:09:36','2014-09-13 07:46:55'),(139,10162,'tagType','13','2014-09-12 22:09:36','2014-09-13 07:46:55'),(140,10162,'lastComm','130550338476438297','2014-09-12 22:09:36','2014-09-13 07:46:55'),(141,10162,'alive','1','2014-09-12 22:09:36','2014-09-13 07:46:55'),(142,10162,'signaldBm','-47','2014-09-12 22:09:36','2014-09-13 07:46:55'),(143,10162,'batteryVolt','2.9687032795075','2014-09-12 22:09:36','2014-09-13 07:46:55'),(144,10162,'beeping','No data','2014-09-12 22:09:36','2014-09-13 07:46:55'),(145,10162,'lit','No data','2014-09-12 22:09:36','2014-09-13 07:46:55'),(146,10162,'migrationPending','No data','2014-09-12 22:09:36','2014-09-13 07:46:55'),(147,10162,'beepDurationDefault','4','2014-09-12 22:09:36','2014-09-13 07:46:55'),(148,10162,'eventState','1','2014-09-12 22:09:36','2014-09-13 07:46:55'),(149,10162,'pendingEventState','1','2014-09-12 22:09:36','2014-09-13 07:46:55'),(150,10162,'tempEventState','No data','2014-09-12 22:09:36','2014-09-13 07:46:55'),(151,10162,'OutOfRange','No data','2014-09-12 22:09:36','2014-09-13 07:46:55'),(152,10162,'solarVolt','No data','2014-09-12 22:09:36','2014-09-13 07:46:55'),(153,10162,'temperature','25.190481185913','2014-09-12 22:09:36','2014-09-13 07:46:55'),(154,10162,'tempCalOffset','No data','2014-09-12 22:09:36','2014-09-13 07:46:55'),(155,10162,'capCalOffset','No data','2014-09-12 22:09:36','2014-09-13 07:46:55'),(156,10162,'image_md5','No data','2014-09-12 22:09:36','2014-09-13 07:46:55'),(157,10162,'cap','58.888000488281','2014-09-12 22:09:36','2014-09-13 07:46:55'),(158,10162,'capRaw','No data','2014-09-12 22:09:36','2014-09-13 07:46:55'),(159,10162,'az2','No data','2014-09-12 22:09:36','2014-09-13 07:46:55'),(160,10162,'capEventState','2','2014-09-12 22:09:36','2014-09-13 07:46:55'),(161,10162,'shorted','No data','2014-09-12 22:09:36','2014-09-13 07:46:55'),(162,10162,'thermostat','No data','2014-09-12 22:09:36','2014-09-13 07:46:55'),(163,10162,'ampData','No data','2014-09-12 22:09:36','2014-09-13 07:46:55'),(164,10162,'postBackInterval','600','2014-09-12 22:09:36','2014-09-13 07:46:55'),(165,10162,'rev','14','2014-09-12 22:09:36','2014-09-13 07:46:55'),(166,10162,'version1','2','2014-09-12 22:09:36','2014-09-13 07:46:55'),(167,10162,'freqOffset','-4','2014-09-12 22:09:36','2014-09-13 07:46:55'),(168,10162,'freqCalApplied','5220','2014-09-12 22:09:36','2014-09-13 07:46:55'),(169,10162,'reviveEvery','4','2014-09-12 22:09:36','2014-09-13 07:46:55'),(170,10162,'LBTh','2.5','2014-09-12 22:09:36','2014-09-13 07:46:55'),(171,10162,'enLBN','1','2014-09-12 22:09:36','2014-09-13 07:46:55'),(172,10162,'txpwr','16','2014-09-12 22:09:36','2014-09-13 07:46:55'),(173,10162,'rssiMode','No data','2014-09-12 22:09:36','2014-09-13 07:46:55'),(174,10162,'ds18','No data','2014-09-12 22:09:36','2014-09-13 07:46:55'),(175,10162,'batteryRemaining','0.93','2014-09-12 22:09:36','2014-09-13 07:46:55'),(176,10164,'__type','MyTagList.Tag','2014-09-12 22:16:57','2014-09-14 21:28:14'),(177,10164,'notificationJS','No data','2014-09-12 22:16:57','2014-09-14 21:28:14'),(178,10164,'name','10164','2014-09-12 22:16:57','2014-09-14 21:28:14'),(179,10164,'uuid','da8be456-e433-4c89-a4a2-11253069c5fa','2014-09-12 22:16:57','2014-09-14 21:28:14'),(180,10164,'comment','No data','2014-09-12 22:16:57','2014-09-14 21:28:14'),(181,10164,'slaveId','No data','2014-09-12 22:16:57','2014-09-14 21:28:14'),(182,10164,'tagType','13','2014-09-12 22:16:57','2014-09-14 21:28:14'),(183,10164,'lastComm','130551695285753892','2014-09-12 22:16:57','2014-09-14 21:28:14'),(184,10164,'alive','1','2014-09-12 22:16:57','2014-09-14 21:28:14'),(185,10164,'signaldBm','-69','2014-09-12 22:16:57','2014-09-14 21:28:14'),(186,10164,'batteryVolt','2.9852671844877','2014-09-12 22:16:57','2014-09-14 21:28:14'),(187,10164,'beeping','No data','2014-09-12 22:16:57','2014-09-14 21:28:14'),(188,10164,'lit','No data','2014-09-12 22:16:57','2014-09-14 21:28:14'),(189,10164,'migrationPending','No data','2014-09-12 22:16:57','2014-09-14 21:28:14'),(190,10164,'beepDurationDefault','5','2014-09-12 22:16:57','2014-09-14 21:28:14'),(191,10164,'eventState','1','2014-09-12 22:16:57','2014-09-14 21:28:14'),(192,10164,'pendingEventState','1','2014-09-12 22:16:57','2014-09-14 21:28:14'),(193,10164,'tempEventState','1','2014-09-12 22:16:57','2014-09-14 21:28:14'),(194,10164,'OutOfRange','No data','2014-09-12 22:16:57','2014-09-14 21:28:14'),(195,10164,'solarVolt','No data','2014-09-12 22:16:57','2014-09-14 21:28:14'),(196,10164,'temperature','25.662385940552','2014-09-12 22:16:57','2014-09-14 21:28:14'),(197,10164,'tempCalOffset','No data','2014-09-12 22:16:57','2014-09-14 21:28:14'),(198,10164,'capCalOffset','0.3936767578125','2014-09-12 22:16:57','2014-09-14 21:28:14'),(199,10164,'image_md5','QxIPL3CmrfDPkSfqRHAnpw==','2014-09-12 22:16:57','2014-09-14 21:28:14'),(200,10164,'cap','45.220703125','2014-09-12 22:16:57','2014-09-14 21:28:14'),(201,10164,'capRaw','No data','2014-09-12 22:16:57','2014-09-14 21:28:14'),(202,10164,'az2','No data','2014-09-12 22:16:57','2014-09-14 21:28:14'),(203,10164,'capEventState','2','2014-09-12 22:16:57','2014-09-14 21:28:14'),(204,10164,'shorted','No data','2014-09-12 22:16:57','2014-09-14 21:28:14'),(205,10164,'thermostat','No data','2014-09-12 22:16:57','2014-09-14 21:28:14'),(206,10164,'ampData','No data','2014-09-12 22:16:57','2014-09-14 21:28:14'),(207,10164,'postBackInterval','600','2014-09-12 22:16:57','2014-09-14 21:28:14'),(208,10164,'rev','14','2014-09-12 22:16:57','2014-09-14 21:28:14'),(209,10164,'version1','2','2014-09-12 22:16:57','2014-09-14 21:28:14'),(210,10164,'freqOffset','-81','2014-09-12 22:16:57','2014-09-14 21:28:14'),(211,10164,'freqCalApplied','3761','2014-09-12 22:16:57','2014-09-14 21:28:14'),(212,10164,'reviveEvery','4','2014-09-12 22:16:57','2014-09-14 21:28:14'),(213,10164,'LBTh','2.5','2014-09-12 22:16:57','2014-09-14 21:28:14'),(214,10164,'enLBN','1','2014-09-12 22:16:57','2014-09-14 21:28:14'),(215,10164,'txpwr','16','2014-09-12 22:16:57','2014-09-14 21:28:14'),(216,10164,'rssiMode','No data','2014-09-12 22:16:57','2014-09-14 21:28:14'),(217,10164,'ds18','No data','2014-09-12 22:16:57','2014-09-14 21:28:14'),(218,10164,'batteryRemaining','0.94','2014-09-12 22:16:57','2014-09-14 21:28:14'),(219,10157,'Incident.GeoFence_alert','GeoFence_alert','2014-09-13 02:47:09','0000-00-00 00:00:00'),(220,10157,'GeoFence_alert.Locn','40.828467,-73.427135','2014-09-13 02:47:09','0000-00-00 00:00:00'),(221,10157,'GeoFence_alert.Speed','0.00','2014-09-13 02:47:09','0000-00-00 00:00:00'),(222,10157,'GeoFence_alert.Dir','81.','2014-09-13 02:47:09','0000-00-00 00:00:00'),(223,10157,'Admin','1','2014-09-13 11:02:19','2014-09-13 23:28:00'),(228,10157,'Incident.Ignition_alert','Ignition_alert','2014-09-14 10:35:41','0000-00-00 00:00:00'),(229,10157,'Ignition_alert.Locn','40.863285,-73.433017','2014-09-14 10:35:41','0000-00-00 00:00:00'),(230,10157,'Ignition_alert.Speed','0.00','2014-09-14 10:35:41','0000-00-00 00:00:00'),(231,10157,'Ignition_alert.Dir','242','2014-09-14 10:35:41','0000-00-00 00:00:00'),(232,10162,'LowBatteryAlarmSetting','1','2014-09-14 11:18:14','0000-00-00 00:00:00'),(233,10162,'MotionDetected','-726,139,-847','2014-09-14 11:20:27','2014-09-18 04:50:27'),(234,10164,'MotionDetected','348,-417,-241','2014-09-14 13:28:17','2014-09-18 04:32:36'),(235,10163,'MotionDetected','783,0,249','2014-09-14 13:28:49','2014-09-17 15:00:17'),(236,10163,'LinkLost','2,17 minutes,','2014-09-14 14:22:00','2014-09-14 23:52:03'),(237,10163,'LinkEstablished','2,0 seconds,','2014-09-14 14:22:05','2014-09-14 23:52:09'),(238,10162,'LowTemp','1,54.1,12.3','2014-09-14 14:57:19','2014-09-15 00:27:23'),(239,10164,'LowRh','0,10.0110473632813,','2014-09-14 15:48:46','2014-09-18 03:07:56'),(240,10164,'NormalRh','0,10.033935546875,','2014-09-14 15:54:56','2014-09-18 03:34:37'),(241,10164,'LowTemp','0,39.0,3.9','2014-09-14 16:01:14','2014-09-18 03:10:39'),(242,10164,'NormalTemp','0,39.0,3.9','2014-09-14 16:30:06','2014-09-18 03:32:30'),(243,10164,'HighRh','0,16.7249145507813,','2014-09-15 16:40:40','2014-09-18 04:20:14'),(244,10157,'Incident.Speeding_alert','Speeding_alert','2014-09-15 21:23:14','0000-00-00 00:00:00'),(245,10157,'Speeding_alert.Locn','40.780530,-73.567013','2014-09-15 21:23:14','0000-00-00 00:00:00'),(246,10157,'Speeding_alert.Speed','106.5','2014-09-15 21:23:14','0000-00-00 00:00:00'),(247,10157,'Speeding_alert.Dir','255','2014-09-15 21:23:14','0000-00-00 00:00:00'),(248,10157,'Incident.Gps_lost','Gps_lost','2014-09-16 21:59:45','0000-00-00 00:00:00'),(249,10157,'Gps_lost.Locn','40.872670,-73.421017','2014-09-16 21:59:45','0000-00-00 00:00:00'),(250,10157,'Gps_lost.Speed','0.00','2014-09-16 21:59:45','0000-00-00 00:00:00'),(251,10157,'Gps_lost.Dir','68.','2014-09-16 21:59:45','0000-00-00 00:00:00'),(252,10157,'OBDResults','1','2014-09-17 08:18:09','0000-00-00 00:00:00'),(253,10164,'HighTemp','0,45.4,7.4','2014-09-17 19:02:40','2014-09-18 04:32:41');
/*!40000 ALTER TABLE `g8_param_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `g8_param_prop`
--

DROP TABLE IF EXISTS `g8_param_prop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `g8_param_prop` (
  `g8_param_id` int(20) NOT NULL AUTO_INCREMENT,
  `g8_lo_id` int(7) NOT NULL,
  `g8_param_name` varchar(50) NOT NULL,
  `g8_param_desc` varchar(200) NOT NULL,
  `g8_pattern` varchar(1000) NOT NULL,
  PRIMARY KEY (`g8_param_id`),
  UNIQUE KEY `g8_param_id` (`g8_param_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1 COMMENT='Parameter properties';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `g8_param_prop`
--

LOCK TABLES `g8_param_prop` WRITE;
/*!40000 ALTER TABLE `g8_param_prop` DISABLE KEYS */;
INSERT INTO `g8_param_prop` VALUES (1,10151,'VolUp','Volume Up','37764,1,1,342,170,21,21,21,64,21,64,21,21,21,21,21,21,21,21,21,64,21,64,21,21,21,64,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,64,21,64,21,21,21,21,21,21,21,21,21,64,21,64,21,21,21,21,21,64,21,64,21,64,21,64,21,1647,342,85,21,3641,342,3700'),(2,10151,'VolDn','Volume Down','37878,1,1,342,170,21,22,21,64,21,64,21,22,21,22,21,22,21,22,21,64,21,64,21,22,21,64,21,22,21,22,21,22,21,22,21,22,21,64,21,22,21,64,21,64,21,22,21,22,21,22,21,22,21,22,21,64,21,22,21,22,21,64,21,64,21,64,21,64,21,1652,342,85,21,3641,342,3700'),(5,10151,'Source','Source','37878,1,1,342,170,21,22,21,64,21,64,21,22,21,22,21,22,21,22,21,64,21,64,21,22,21,64,21,22,21,22,21,22,21,22,21,22,21,64,21,22,21,64,21,64,21,64,21,22,21,22,21,22,21,22,21,64,21,22,21,22,21,22,21,64,21,64,21,64,21,1651,342,85,21,3651,342,3700'),(7,10151,'Menu','Menu','37878,1,1,342,170,21,22,21,64,21,64,21,22,21,22,21,22,21,22,21,64,21,64,21,22,21,64,21,22,21,22,21,22,21,22,21,22,21,22,21,22,21,64,21,22,21,64,21,22,21,22,21,22,21,64,21,64,21,22,21,64,21,22,21,64,21,64,21,64,21,1651,342,85,21,3650,342,3700'),(8,10151,'Exit','Exit','37878,1,1,342,170,21,22,21,64,21,64,21,22,21,22,21,22,21,22,21,64,21,64,21,22,21,64,21,22,21,22,21,22,21,22,21,22,21,64,21,64,21,22,21,64,21,64,21,22,21,22,21,22,21,22,21,22,21,64,21,22,21,22,21,64,21,64,21,64,21,3700'),(9,10151,'Info','Info','37878,1,1,342,170,21,22,21,64,21,64,21,22,21,22,21,22,21,22,21,64,21,64,21,22,21,64,21,22,21,22,21,22,21,22,21,22,21,64,21,64,21,64,21,22,21,64,21,22,21,22,21,22,21,22,21,22,21,22,21,64,21,22,21,64,21,64,21,64,21,1651,342,85,21,3651,342,3700'),(11,10151,'Power','Power','37878,1,1,342,170,21,22,21,64,21,64,21,22,21,22,21,22,21,22,21,64,21,64,21,22,21,64,21,22,21,22,21,22,21,22,21,22,21,64,21,64,21,64,21,64,21,22,21,22,21,22,21,22,21,22,21,22,21,22,21,22,21,64,21,64,21,64,21,64,21,3700'),(12,10151,'Mute','Mute','37764,1,1,342,170,21,21,21,64,21,64,21,21,21,21,21,21,21,21,21,64,21,64,21,21,21,64,21,21,21,21,21,21,21,21,21,21,21,21,21,64,21,64,21,64,21,21,21,21,21,21,21,21,21,64,21,21,21,21,21,21,21,64,21,64,21,64,21,64,21,1646'),(13,10151,'Aspect','Aspect','37878,1,1,342,170,21,22,21,64,21,64,21,22,21,22,21,22,21,22,21,64,21,64,21,22,21,64,21,22,21,22,21,22,21,22,21,22,21,22,21,22,21,64,21,22,21,22,21,22,21,64,21,22,21,64,21,64,21,22,21,64,21,64,21,64,21,22,21,64,21,1651,342,85,21,3650,60,3700'),(14,10151,'Btn_Up','UP Button','37878,1,1,342,170,21,22,21,64,21,64,21,22,21,22,21,22,21,22,21,64,21,64,21,22,21,64,21,22,21,22,21,22,21,22,21,22,21,22,21,64,21,22,21,22,21,22,21,22,21,64,21,22,21,64,21,22,21,64,21,64,21,64,21,64,21,22,21,64,21,1651,342,85,21,3650,342,3700'),(15,10151,'Btn_Dn','Down Button','37878,1,1,342,170,21,22,21,64,21,64,21,22,21,22,21,22,21,22,21,64,21,64,21,22,21,64,21,22,21,22,21,22,21,22,21,22,21,64,21,64,21,22,21,22,21,22,21,22,21,64,21,22,21,22,21,22,21,64,21,64,21,64,21,64,21,22,21,64,21,1651,342,85,21,3650,342,3700'),(16,10151,'Btn_Rt','Right Arrow','37764,1,1,342,170,21,21,21,64,21,64,21,21,21,21,21,21,21,21,21,64,21,64,21,21,21,64,21,21,21,21,21,21,21,21,21,21,21,64,21,21,21,64,21,21,21,64,21,21,21,21,21,21,21,21,21,64,21,21,21,64,21,21,21,64,21,64,21,64,21,1646,342,85,21,3639,342,85,21,3776'),(17,10151,'Btn_Lt','Left Arrow','37993,1,1,342,171,21,22,21,64,21,64,21,22,21,22,21,22,21,22,21,64,21,64,21,22,21,64,21,22,21,22,21,22,21,22,21,22,21,22,21,64,21,64,21,22,21,64,21,22,21,22,21,22,21,64,21,22,21,22,21,64,21,22,21,64,21,64,21,64,21,1656,342,85,21,3661,342,85,21,3799'),(18,10151,'Enter','Enter','37764,1,1,342,170,21,21,21,64,21,64,21,21,21,21,21,21,21,21,21,64,21,64,21,21,21,64,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,21,64,21,64,21,21,21,21,21,21,21,64,21,64,21,64,21,21,21,21,21,64,21,64,21,64,21,1646,342,85,21,3639,342,85,21,3640,342,85,21,3639,342,85,21,3700'),(19,10151,'1','Number 1','37878,1,1,342,170,21,22,21,64,21,64,21,22,21,22,21,22,21,22,21,64,21,64,21,22,21,64,21,22,21,22,21,22,21,22,21,22,21,22,21,22,21,22,21,22,21,22,21,22,21,22,21,22,21,64,21,64,21,64,21,64,21,64,21,64,21,64,21,64,21,1652,342,85,21,3653,342,85,21,3652,342,85,21,3700'),(20,10151,'2','Number 2','37878,1,1,342,170,21,22,21,64,21,64,21,22,21,22,21,22,21,22,21,64,21,64,21,22,21,64,21,22,21,22,21,22,21,22,21,22,21,64,21,22,21,22,21,22,21,22,21,22,21,22,21,22,21,22,21,64,21,64,21,64,21,64,21,64,21,64,21,64,21,1652,342,85,21,3653,342,3700'),(21,10151,'6','Number 6','37764,1,1,342,170,21,21,21,64,21,64,21,21,21,21,21,21,21,21,21,64,21,64,21,21,21,64,21,21,21,21,21,21,21,21,21,21,21,64,21,21,21,64,21,21,21,21,21,21,21,21,21,21,21,21,21,64,21,21,21,64,21,64,21,64,21,64,21,64,21,1647,342,85,21,3641,342,3700'),(22,10151,'5','Number 5','37878,1,1,342,170,21,22,21,64,21,64,21,22,21,22,21,22,21,22,21,64,21,64,21,22,21,64,21,22,21,22,21,22,21,22,21,22,21,22,21,22,21,64,21,22,21,22,21,22,21,22,21,22,21,64,21,64,21,22,21,64,21,64,21,64,21,64,21,64,21,1652,342,85,21,3652,342,3700'),(23,10151,'4','Number 4','37878,1,1,342,170,21,22,21,64,21,64,21,22,21,22,21,22,21,22,21,64,21,64,21,22,21,64,21,22,21,22,21,22,21,22,21,22,21,64,21,64,21,22,21,22,21,22,21,22,21,22,21,22,21,22,21,22,21,64,21,64,21,64,21,64,21,64,21,64,21,1652,342,85,21,3653,342,85,21,3652,342,85,21,3700'),(24,10151,'3','Number 3','37878,1,1,342,170,21,22,21,64,21,64,21,22,21,22,21,22,21,22,21,64,21,64,21,22,21,64,21,22,21,22,21,22,21,22,21,22,21,22,21,64,21,22,21,22,21,22,21,22,21,22,21,22,21,64,21,22,21,64,21,64,21,64,21,64,21,64,21,64,21,1652,342,85,21,3652,342,3700'),(25,10151,'7','Number 7','37764,1,1,342,170,21,21,21,64,21,64,21,21,21,21,21,21,21,21,21,64,21,64,21,21,21,64,21,21,21,21,21,21,21,21,21,21,21,21,21,64,21,64,21,21,21,21,21,21,21,21,21,21,21,64,21,21,21,21,21,64,21,64,21,64,21,64,21,64,21,1647,342,85,21,3642,342,3700'),(26,10151,'8','Number 8','37878,1,1,342,170,21,22,21,64,21,64,21,22,21,22,21,22,21,22,21,64,21,64,21,22,21,64,21,22,21,22,21,22,21,22,21,22,21,64,21,64,21,64,21,22,21,22,21,22,21,22,21,22,21,22,21,22,21,22,21,64,21,64,21,64,21,64,21,64,21,1652,342,85,21,3652,342,85,21,3653,342,85,21,3652,342,85,21,3700'),(27,10151,'9','Number 9','37878,1,1,342,170,21,22,21,64,21,64,21,22,21,22,21,22,21,22,21,64,21,64,21,22,21,64,21,22,21,22,21,22,21,22,21,22,21,22,21,22,21,22,21,64,21,22,21,22,21,22,21,22,21,64,21,64,21,64,21,22,21,64,21,64,21,64,21,64,21,1652,342,85,21,3652,342,3700'),(28,10151,'0','Number 0','37878,1,1,342,170,21,22,21,64,21,64,21,22,21,22,21,22,21,22,21,64,21,64,21,22,21,64,21,22,21,22,21,22,21,22,21,22,21,64,21,22,21,22,21,64,21,22,21,22,21,22,21,22,21,22,21,64,21,64,21,22,21,64,21,64,21,64,21,64,21,1652,342,85,21,3652,342,85,21,3700'),(29,10151,'ChanUp','Channel Up','37878,1,1,342,170,21,22,21,64,21,64,21,22,21,22,21,22,21,22,21,64,21,64,21,22,21,64,21,22,21,22,21,22,21,22,21,22,21,22,21,64,21,22,21,64,21,22,21,22,21,22,21,22,21,64,21,22,21,64,21,22,21,64,21,64,21,64,21,64,21,1652,342,85,21,3652,342,85,21,3653,342,85,21,3652,342,85,21,3700'),(30,10151,'ChanDn','Channel Down','37878,1,1,342,170,21,22,21,64,21,64,21,22,21,22,21,22,21,21,21,64,21,64,21,22,21,64,21,22,21,22,21,22,21,22,21,22,21,64,21,64,4,2520,342,85,21,3652,342,85,21,3700'),(31,10151,'Audio','Audio','37878,1,1,342,170,21,22,21,64,21,64,21,22,21,22,21,22,21,22,21,64,21,64,21,22,21,64,21,22,21,22,21,22,21,22,21,22,21,22,21,22,21,22,21,64,21,22,21,22,21,64,21,22,21,64,21,64,21,64,21,22,21,64,21,64,21,22,21,64,21,2080,21,3653,342,85,21,3700'),(32,10151,'Picture','Picture','37878,1,1,342,170,21,22,21,64,21,64,21,22,21,22,21,22,21,22,21,64,21,64,21,22,21,64,21,22,21,22,21,22,21,22,21,22,21,64,21,22,21,22,21,64,21,22,21,22,21,64,21,22,21,22,21,64,21,64,21,22,21,64,21,64,21,22,21,64,21,1652,342,85,21,3652,342,3700'),(33,10151,'Sleep','Sleep','37764,1,1,342,170,21,21,21,64,21,64,21,21,21,21,21,21,21,21,21,64,21,64,21,21,21,64,21,21,21,21,21,21,21,21,21,21,21,64,21,64,21,21,21,21,21,64,21,21,21,21,21,21,21,21,21,21,21,64,21,64,21,21,21,64,21,64,21,64,21,1647,342,85,21,3642,342,3700'),(34,10151,'Home','Home','37764,1,1,342,170,21,21,21,64,21,64,21,21,21,21,21,21,21,21,21,64,21,64,21,21,21,64,21,21,21,21,21,21,21,21,21,21,21,64,21,21,21,21,21,64,21,64,21,64,21,21,21,64,21,21,21,64,21,64,21,21,21,21,21,21,21,64,21,21,21,1647,342,85,21,3642,342,3700');
/*!40000 ALTER TABLE `g8_param_prop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `g8_room_prop`
--

DROP TABLE IF EXISTS `g8_room_prop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `g8_room_prop` (
  `g8_room_no` int(10) NOT NULL COMMENT 'Room number',
  `g8_room_name` varchar(20) NOT NULL COMMENT 'Rooms name',
  `g8_locn_id` varchar(50) NOT NULL COMMENT 'Location ID, typically this is the name of the physical location',
  `g8_owner_id` int(30) NOT NULL COMMENT 'Home Owners ID',
  `g8_locn_str_addr` varchar(400) NOT NULL COMMENT 'Room location as complete street address',
  `g8_locn_latlong` varchar(60) NOT NULL COMMENT 'Room location as Lat,Long',
  `g8_room_desc` varchar(400) NOT NULL COMMENT 'Room description',
  `g8_service_id` varchar(400) NOT NULL COMMENT 'Service ID for the room',
  `g8_server_id` varchar(40) NOT NULL COMMENT 'Server ID for this room',
  `g8_room_pic_uri` varchar(500) NOT NULL COMMENT 'URL/path for Image of the room',
  `g8_room_icon_uri` varchar(500) NOT NULL COMMENT 'URL/path for icon of the room',
  `g8_power` varchar(20) NOT NULL COMMENT 'Currently unused',
  UNIQUE KEY `g8_room_no` (`g8_room_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Description of the rooms';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `g8_room_prop`
--

LOCK TABLES `g8_room_prop` WRITE;
/*!40000 ALTER TABLE `g8_room_prop` DISABLE KEYS */;
INSERT INTO `g8_room_prop` VALUES (20,'ALOKOFFICE','G8NYOFFICE',20000,'6 Beech Place, Huntington, NY, 11743','40.863566,-73.432970','G8\'s New York Office','','US105','','',''),(21,'G8OFFICE','G8HOME',20000,'C 163, Belvedere Park, DLF Phase III, Gurgaon, India, 122002','28.490280,77.091166','G8\'s Office Gurgaon','','US105','','',''),(22,'ALOKOFFICE','G8OFFICE',20000,'1/7 Lantana Street, Vatika City, Sector 49, Gurgaon, India, 122002','28.404256,77.049215','G8\'s Office Gurgaon','','US105','','',''),(23,'JJTV','JJHOME',20001,'301, Pocket E, Mayur Vihar Phase 2, New Delhi, India','28.616669,77.293322','Jayant\'s Office','','US105','','','0.21'),(24,'JJKID','JJHOME',20001,'301, Pocket E, Mayur Vihar Phase 2, New Delhi, India','28.616669,77.293322','Jayant kids room','','US105','','','0.21'),(25,'TEAM1','G8OFFICE',20000,'1/7 Lantana Street, Vatika City, Sector 49, Gurgaon, India, 122002','28.404256,77.049215','G8\'s Office Team Room 1','','US105','','',''),(99,'VIRTUAL','VIRTUAL',20002,'None','None','These devices are movable and hence do not have an address','','US105','','','');
/*!40000 ALTER TABLE `g8_room_prop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `g8_scratch_pad`
--

DROP TABLE IF EXISTS `g8_scratch_pad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `g8_scratch_pad` (
  `rec_id` int(11) NOT NULL AUTO_INCREMENT,
  `g8_del_lo_id` int(11) NOT NULL,
  `g8_first_delete_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rec_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `g8_scratch_pad`
--

LOCK TABLES `g8_scratch_pad` WRITE;
/*!40000 ALTER TABLE `g8_scratch_pad` DISABLE KEYS */;
/*!40000 ALTER TABLE `g8_scratch_pad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_bookmark`
--

DROP TABLE IF EXISTS `pma_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_bookmark`
--

LOCK TABLES `pma_bookmark` WRITE;
/*!40000 ALTER TABLE `pma_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_column_info`
--

DROP TABLE IF EXISTS `pma_column_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_column_info`
--

LOCK TABLES `pma_column_info` WRITE;
/*!40000 ALTER TABLE `pma_column_info` DISABLE KEYS */;
INSERT INTO `pma_column_info` VALUES (5,'g8_core','g8_attd_log','g8_curr_timestamp','','','_',''),(4,'g8_core','g8_attd_log','g8_tag_timestamp','','','_','');
/*!40000 ALTER TABLE `pma_column_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_designer_coords`
--

DROP TABLE IF EXISTS `pma_designer_coords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_designer_coords`
--

LOCK TABLES `pma_designer_coords` WRITE;
/*!40000 ALTER TABLE `pma_designer_coords` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_designer_coords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_history`
--

DROP TABLE IF EXISTS `pma_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_history`
--

LOCK TABLES `pma_history` WRITE;
/*!40000 ALTER TABLE `pma_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_pdf_pages`
--

DROP TABLE IF EXISTS `pma_pdf_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_pdf_pages`
--

LOCK TABLES `pma_pdf_pages` WRITE;
/*!40000 ALTER TABLE `pma_pdf_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_pdf_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_recent`
--

DROP TABLE IF EXISTS `pma_recent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_recent`
--

LOCK TABLES `pma_recent` WRITE;
/*!40000 ALTER TABLE `pma_recent` DISABLE KEYS */;
INSERT INTO `pma_recent` VALUES ('root','[{\"db\":\"g8_core\",\"table\":\"g8_attd_log\"},{\"db\":\"g8_core\",\"table\":\"g8_attd\"},{\"db\":\"g8_attandence\",\"table\":\"g8_attend\"},{\"db\":\"g8_core\",\"table\":\"g8_dev_prop\"},{\"db\":\"g8_core\",\"table\":\"g8_andy_track\"},{\"db\":\"g8_core\",\"table\":\"g8_gpsg_track\"}]');
/*!40000 ALTER TABLE `pma_recent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_relation`
--

DROP TABLE IF EXISTS `pma_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_relation`
--

LOCK TABLES `pma_relation` WRITE;
/*!40000 ALTER TABLE `pma_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_table_coords`
--

DROP TABLE IF EXISTS `pma_table_coords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_table_coords`
--

LOCK TABLES `pma_table_coords` WRITE;
/*!40000 ALTER TABLE `pma_table_coords` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_table_coords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_table_info`
--

DROP TABLE IF EXISTS `pma_table_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_table_info`
--

LOCK TABLES `pma_table_info` WRITE;
/*!40000 ALTER TABLE `pma_table_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_table_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_table_uiprefs`
--

DROP TABLE IF EXISTS `pma_table_uiprefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_table_uiprefs`
--

LOCK TABLES `pma_table_uiprefs` WRITE;
/*!40000 ALTER TABLE `pma_table_uiprefs` DISABLE KEYS */;
INSERT INTO `pma_table_uiprefs` VALUES ('root','g8_core','g8_dev_prop','{\"sorted_col\":\"`g8_dev_prop`.`DEV_TYPE` ASC\"}','2014-09-18 12:33:47');
/*!40000 ALTER TABLE `pma_table_uiprefs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_tracking`
--

DROP TABLE IF EXISTS `pma_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_tracking`
--

LOCK TABLES `pma_tracking` WRITE;
/*!40000 ALTER TABLE `pma_tracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma_userconfig`
--

DROP TABLE IF EXISTS `pma_userconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma_userconfig`
--

LOCK TABLES `pma_userconfig` WRITE;
/*!40000 ALTER TABLE `pma_userconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma_userconfig` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-10-15 17:29:44
