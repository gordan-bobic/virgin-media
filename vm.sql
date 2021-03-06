-- MySQL dump 10.17  Distrib 10.3.11-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: grafana
-- ------------------------------------------------------
-- Server version	10.3.11-MariaDB-log

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
-- Table structure for table `APC`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `APC` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `time` datetime DEFAULT NULL,
  `APC` varchar(12) DEFAULT NULL,
  `DATE` datetime DEFAULT NULL,
  `HOSTNAME` varchar(255) DEFAULT NULL,
  `VERSION` varchar(255) DEFAULT NULL,
  `UPSNAME` varchar(255) DEFAULT NULL,
  `CABLE` varchar(255) DEFAULT NULL,
  `DRIVER` varchar(255) DEFAULT NULL,
  `UPSMODE` varchar(255) DEFAULT NULL,
  `STARTTIME` datetime DEFAULT NULL,
  `MODEL` varchar(255) DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `LINEV` float DEFAULT NULL,
  `LOADPCT` float DEFAULT NULL,
  `BCHARGE` float DEFAULT NULL,
  `TIMELEFT` float DEFAULT NULL,
  `MBATTCHG` float DEFAULT NULL,
  `MINTIMEL` int(11) DEFAULT NULL,
  `MAXTIME` int(11) DEFAULT NULL,
  `MAXLINEV` float DEFAULT NULL,
  `MINLINEV` float DEFAULT NULL,
  `OUTPUTV` float DEFAULT NULL,
  `SENSE` varchar(8) DEFAULT NULL,
  `DWAKE` int(11) DEFAULT NULL,
  `DSHUTD` int(11) DEFAULT NULL,
  `DLOWBATT` int(11) DEFAULT NULL,
  `LOTRANS` float DEFAULT NULL,
  `HITRANS` float DEFAULT NULL,
  `RETPCT` float DEFAULT NULL,
  `ITEMP` float DEFAULT NULL,
  `ALARMDEL` varchar(16) DEFAULT NULL,
  `BATTV` float DEFAULT NULL,
  `LINEFREQ` float DEFAULT NULL,
  `LASTXFER` varchar(255) DEFAULT NULL,
  `NUMXFERS` int(11) DEFAULT NULL,
  `TONBATT` int(11) DEFAULT NULL,
  `CUMONBATT` int(11) DEFAULT NULL,
  `XOFFBATT` varchar(255) DEFAULT NULL,
  `SELFTEST` varchar(255) DEFAULT NULL,
  `STESTI` varchar(255) DEFAULT NULL,
  `STATFLAG` varchar(16) DEFAULT NULL,
  `DIPSW` varchar(4) DEFAULT NULL,
  `REG1` varchar(4) DEFAULT NULL,
  `REG2` varchar(4) DEFAULT NULL,
  `REG3` varchar(4) DEFAULT NULL,
  `MANDATE` date DEFAULT NULL,
  `SERIALNO` varchar(12) DEFAULT NULL,
  `BATTDATE` date DEFAULT NULL,
  `NOMOUTV` float DEFAULT NULL,
  `NOMBATTV` float DEFAULT NULL,
  `EXTBATTS` int(11) DEFAULT NULL,
  `FIRMWARE` varchar(10) DEFAULT NULL,
  `END_APC` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx1` (`time`)
) ENGINE=InnoDB AUTO_INCREMENT=1104 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BandwidthDown`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BandwidthDown` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `DeviceName` varchar(255) NOT NULL,
  `Downloaded` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx1` (`DeviceName`,`time`)
) ENGINE=InnoDB AUTO_INCREMENT=14296 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BandwidthUp`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BandwidthUp` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `DeviceName` varchar(255) NOT NULL,
  `Uploaded` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx1` (`DeviceName`,`time`)
) ENGINE=InnoDB AUTO_INCREMENT=16880 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DownstreamPowerLevel`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DownstreamPowerLevel` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `DeviceName` varchar(255) NOT NULL,
  `PowerLevel1` float DEFAULT NULL,
  `PowerLevel2` float DEFAULT NULL,
  `PowerLevel3` float DEFAULT NULL,
  `PowerLevel4` float DEFAULT NULL,
  `PowerLevel5` float DEFAULT NULL,
  `PowerLevel6` float DEFAULT NULL,
  `PowerLevel7` float DEFAULT NULL,
  `PowerLevel8` float DEFAULT NULL,
  `PowerLevel9` float DEFAULT NULL,
  `PowerLevel10` float DEFAULT NULL,
  `PowerLevel11` float DEFAULT NULL,
  `PowerLevel12` float DEFAULT NULL,
  `PowerLevel13` float DEFAULT NULL,
  `PowerLevel14` float DEFAULT NULL,
  `PowerLevel15` float DEFAULT NULL,
  `PowerLevel16` float DEFAULT NULL,
  `PowerLevel17` float DEFAULT NULL,
  `PowerLevel18` float DEFAULT NULL,
  `PowerLevel19` float DEFAULT NULL,
  `PowerLevel20` float DEFAULT NULL,
  `PowerLevel21` float DEFAULT NULL,
  `PowerLevel22` float DEFAULT NULL,
  `PowerLevel23` float DEFAULT NULL,
  `PowerLevel24` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx1` (`DeviceName`,`time`)
) ENGINE=InnoDB AUTO_INCREMENT=348329 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Latencies`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Latencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `DeviceName` varchar(255) DEFAULT NULL,
  `Protocol` varchar(4) NOT NULL,
  `TTL` tinyint(3) unsigned NOT NULL,
  `Min` float DEFAULT NULL,
  `Avg` float DEFAULT NULL,
  `Max` float DEFAULT NULL,
  `Loss` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx1` (`DeviceName`,`Protocol`,`TTL`,`time`)
) ENGINE=InnoDB AUTO_INCREMENT=44752 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PostRSErrors`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PostRSErrors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `DeviceName` varchar(255) NOT NULL,
  `PostRSErrors1` int(11) DEFAULT NULL,
  `PostRSErrors2` int(11) DEFAULT NULL,
  `PostRSErrors3` int(11) DEFAULT NULL,
  `PostRSErrors4` int(11) DEFAULT NULL,
  `PostRSErrors5` int(11) DEFAULT NULL,
  `PostRSErrors6` int(11) DEFAULT NULL,
  `PostRSErrors7` int(11) DEFAULT NULL,
  `PostRSErrors8` int(11) DEFAULT NULL,
  `PostRSErrors9` int(11) DEFAULT NULL,
  `PostRSErrors10` int(11) DEFAULT NULL,
  `PostRSErrors11` int(11) DEFAULT NULL,
  `PostRSErrors12` int(11) DEFAULT NULL,
  `PostRSErrors13` int(11) DEFAULT NULL,
  `PostRSErrors14` int(11) DEFAULT NULL,
  `PostRSErrors15` int(11) DEFAULT NULL,
  `PostRSErrors16` int(11) DEFAULT NULL,
  `PostRSErrors17` int(11) DEFAULT NULL,
  `PostRSErrors18` int(11) DEFAULT NULL,
  `PostRSErrors19` int(11) DEFAULT NULL,
  `PostRSErrors20` int(11) DEFAULT NULL,
  `PostRSErrors21` int(11) DEFAULT NULL,
  `PostRSErrors22` int(11) DEFAULT NULL,
  `PostRSErrors23` int(11) DEFAULT NULL,
  `PostRSErrors24` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx1` (`DeviceName`,`time`)
) ENGINE=InnoDB AUTO_INCREMENT=18138 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PreRSErrors`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PreRSErrors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `DeviceName` varchar(255) NOT NULL,
  `PreRSErrors1` int(11) DEFAULT NULL,
  `PreRSErrors2` int(11) DEFAULT NULL,
  `PreRSErrors3` int(11) DEFAULT NULL,
  `PreRSErrors4` int(11) DEFAULT NULL,
  `PreRSErrors5` int(11) DEFAULT NULL,
  `PreRSErrors6` int(11) DEFAULT NULL,
  `PreRSErrors7` int(11) DEFAULT NULL,
  `PreRSErrors8` int(11) DEFAULT NULL,
  `PreRSErrors9` int(11) DEFAULT NULL,
  `PreRSErrors10` int(11) DEFAULT NULL,
  `PreRSErrors11` int(11) DEFAULT NULL,
  `PreRSErrors12` int(11) DEFAULT NULL,
  `PreRSErrors13` int(11) DEFAULT NULL,
  `PreRSErrors14` int(11) DEFAULT NULL,
  `PreRSErrors15` int(11) DEFAULT NULL,
  `PreRSErrors16` int(11) DEFAULT NULL,
  `PreRSErrors17` int(11) DEFAULT NULL,
  `PreRSErrors18` int(11) DEFAULT NULL,
  `PreRSErrors19` int(11) DEFAULT NULL,
  `PreRSErrors20` int(11) DEFAULT NULL,
  `PreRSErrors21` int(11) DEFAULT NULL,
  `PreRSErrors22` int(11) DEFAULT NULL,
  `PreRSErrors23` int(11) DEFAULT NULL,
  `PreRSErrors24` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx1` (`DeviceName`,`time`)
) ENGINE=InnoDB AUTO_INCREMENT=18137 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RxMER`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RxMER` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `DeviceName` varchar(255) NOT NULL,
  `RxMER1` float DEFAULT NULL,
  `RxMER2` float DEFAULT NULL,
  `RxMER3` float DEFAULT NULL,
  `RxMER4` float DEFAULT NULL,
  `RxMER5` float DEFAULT NULL,
  `RxMER6` float DEFAULT NULL,
  `RxMER7` float DEFAULT NULL,
  `RxMER8` float DEFAULT NULL,
  `RxMER9` float DEFAULT NULL,
  `RxMER10` float DEFAULT NULL,
  `RxMER11` float DEFAULT NULL,
  `RxMER12` float DEFAULT NULL,
  `RxMER13` float DEFAULT NULL,
  `RxMER14` float DEFAULT NULL,
  `RxMER15` float DEFAULT NULL,
  `RxMER16` float DEFAULT NULL,
  `RxMER17` float DEFAULT NULL,
  `RxMER18` float DEFAULT NULL,
  `RxMER19` float DEFAULT NULL,
  `RxMER20` float DEFAULT NULL,
  `RxMER21` float DEFAULT NULL,
  `RxMER22` float DEFAULT NULL,
  `RxMER23` float DEFAULT NULL,
  `RxMER24` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx1` (`DeviceName`,`time`)
) ENGINE=InnoDB AUTO_INCREMENT=332679 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `UpstreamPowerLevel`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UpstreamPowerLevel` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `DeviceName` varchar(255) NOT NULL,
  `PowerLevel1` float DEFAULT NULL,
  `PowerLevel2` float DEFAULT NULL,
  `PowerLevel3` float DEFAULT NULL,
  `PowerLevel4` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx1` (`DeviceName`,`time`)
) ENGINE=InnoDB AUTO_INCREMENT=316855 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-21 15:18:38
