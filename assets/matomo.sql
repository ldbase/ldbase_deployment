-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: 10.0.2.15    Database: matomodb
-- ------------------------------------------------------
-- Server version	5.7.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `matomodb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `matomodb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `matomodb`;

--
-- Table structure for table `matomo_access`
--

DROP TABLE IF EXISTS `matomo_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_access` (
  `idaccess` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(100) NOT NULL,
  `idsite` int(10) unsigned NOT NULL,
  `access` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idaccess`),
  KEY `index_loginidsite` (`login`,`idsite`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_access`
--

LOCK TABLES `matomo_access` WRITE;
/*!40000 ALTER TABLE `matomo_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_blob_2000_01`
--

DROP TABLE IF EXISTS `matomo_archive_blob_2000_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_blob_2000_01` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` mediumblob,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_blob_2000_01`
--

LOCK TABLES `matomo_archive_blob_2000_01` WRITE;
/*!40000 ALTER TABLE `matomo_archive_blob_2000_01` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_blob_2000_01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_blob_2020_01`
--

DROP TABLE IF EXISTS `matomo_archive_blob_2020_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_blob_2020_01` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` mediumblob,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_blob_2020_01`
--

LOCK TABLES `matomo_archive_blob_2020_01` WRITE;
/*!40000 ALTER TABLE `matomo_archive_blob_2020_01` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_blob_2020_01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_blob_2020_04`
--

DROP TABLE IF EXISTS `matomo_archive_blob_2020_04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_blob_2020_04` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` mediumblob,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_blob_2020_04`
--

LOCK TABLES `matomo_archive_blob_2020_04` WRITE;
/*!40000 ALTER TABLE `matomo_archive_blob_2020_04` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_blob_2020_04` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_blob_2023_11`
--

DROP TABLE IF EXISTS `matomo_archive_blob_2023_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_blob_2023_11` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` mediumblob,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_blob_2023_11`
--

LOCK TABLES `matomo_archive_blob_2023_11` WRITE;
/*!40000 ALTER TABLE `matomo_archive_blob_2023_11` DISABLE KEYS */;
INSERT INTO `matomo_archive_blob_2023_11` VALUES (1,'Actions_actions',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�}��\n\� �_E|�Q#\�x\�\�q\�J\�d��\�N�\�>#z\�!\��1\�O�\�p\�B\�@\rx\�QzZ��& �(\�mw��\�I\\\�`W��(�\�q_(XiB.\�M\�\n�3ϼ8�\03q\�f)Z]��\�VeT�\�\�\�`l0H�\ny\Z\�F/;G��7�\�\�\�o�\�W\'�\���P�'),(1,'Actions_actions_url',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�=�Q\� D\�\�Z�q��Wh��i\"\r�_\rw�E\�ǲo\�\�d4�\r�u0\'\�B�ʻi\�\�2nP�9�Y\�\rTF\�\�)L\�۹D��\nd����\�\�f��yHT\r�\�\�C�\�\�8\�\�\�W�W\�\�\�O\�#\'��ԚҎ�\�\�\��\Z8u���\\�\�\�MDx'),(1,'Actions_actions_url_chunk_0_99',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x���[� E\�¿\� \�\�à4��j\�~\�^�\�_\�\\�y\\\�\�F�\\��fA6H\�w�H@\�\�_5ڿ\�L\�d]�g\�9&�\�(63\�<j�\�@\�\\?mф� �]R�9^@\�)_Һ���ɂ\��U) jZ\�`l�\n<�(\�\�\�@>g1��\�\���4\�3�u���\�\�ϸ�\��<\�d�\'\��}\\�'),(1,'Actions_downloads',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(1,'Actions_outlink',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(1,'Actions_sitesearch',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(1,'Actions_SiteSearchCategories',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(1,'Contents_name_piece',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(1,'Contents_piece_name',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(1,'DevicePlugins_plugin',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�}\�A�0л\��\"\�\��C�\"�\"H\�a���`�Y$\�\'�7I\',\�v)��(\�\�r9�\�F<9A�U\�\�oc,[�\��#[�\�z7\�O#U�t\�uª�\�e���\�\�|Iь\�z}��\�$4x}\�t)ץ%L~r�G�:\�T\n�\�Qvsl})\�\�\\�n'),(1,'DevicesDetection_brands',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�5�K� D\�\�P�\�;x�\Z]��cIzw�\�\�d>\��Q\�?�\�\rT\�~+IC\0�lC<=\'y�g\�v�|�\�\�\�@\nk�\�t�u��%f\�\�#]'),(1,'DevicesDetection_browserEngines',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2��δ2�N�2�1,����L��r�Rs���l��̼l%\�L+# 6bc(\�\�:L�B\�̬A�dZ�CiCC��H-��he`U]\�\�g][\0�1%R'),(1,'DevicesDetection_browsers',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�5�;�0C\�\�gda\�A0T\�ֱ\�\�i�0X϶d<Z�cA�͎V���\�o!��\�$\�]�+�O�L.֭<26�\�6Hn6:���\�\\���#\�'),(1,'DevicesDetection_browserVersions',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�5�1� C\�\�`�Q\�]��F6F\�\��C\�\�&�� �z�\�8\���~#i\�:Nq�\�URe�_\�鴣[��l�\"c�poJK�\\\�\�\�R>\�%$'),(1,'DevicesDetection_models',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�5�a\n� ����WZ�w�\�`)!EE\�O�{)\�c|\�`3 D\�\�oF\�\0\r��\�\���\�\�\�\�Kc]؞\�\�\�~�O]\��m��]\��\�c�$�%K�r2��)&N\�\�t)\�'),(1,'DevicesDetection_os',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�5L9� �/`5ξ��\�z�$t�d�.���̕�ex�_h+\\��-�ko\�u&\�Kuӑ�ɫe���ݘ\�\�\�D�x4�ĪB,$N'),(1,'DevicesDetection_osVersions',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�5�;� C\��\�꜠kg�v@bcD�{\��z�%;�\�2�$\�\�hT\����\0�\�(lH2�.\�\�;y&�ꂌ��}�y\r�����`\�t��~�\�$\�'),(1,'DevicesDetection_types',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2��δ2�N�2�1,����L��r�Rs��A��VF@l\�\�P��u\n�6���AՙCiCC��H-��he`U]\�\�g][\0{}\"\�'),(1,'Events_action_category',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(1,'Events_action_name',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(1,'Events_category_action',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(1,'Events_category_name',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(1,'Events_name_action',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(1,'Events_name_category',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(1,'Goals_ItemsCategory',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(1,'Goals_ItemsCategory_Cart',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(1,'Goals_ItemsName',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(1,'Goals_ItemsName_Cart',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(1,'Goals_ItemsSku',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(1,'Goals_ItemsSku_Cart',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(1,'Goal_-1_days_until_conv',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(1,'Goal_-1_visits_until_conv',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(1,'Goal_0_days_until_conv',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(1,'Goal_0_visits_until_conv',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(1,'Goal_days_until_conv',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(1,'Goal_visits_until_conv',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(1,'Referrers_keywordByCampaign',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(1,'Referrers_keywordBySearchEngine',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(1,'Referrers_searchEngineByKeyword',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(1,'Referrers_type',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2��δ2�N�2�1,����L��r�Rs��3��\�JC\�&\�)`\�*ff\rҜie�\r\r�\ZL�\"� ^���Uu-H��um-\0{\�\"\�'),(1,'Referrers_urlBySocialNetwork',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(1,'Referrers_urlByWebsite',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(1,'Resolution_configuration',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�5L9� �˾��\�8[\�hck�т��Ƅ\�w�`1g2\��\�J<\�o\���z\"I;й�n��Q/W\"	�*�Bo\�\�jG\�\�C�\���ޔ�<ri�CJ�\0#\�\'�'),(1,'Resolution_resolution',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�5��\r�0w\�	- �\�!��\��\�\�Uy8vN�\r���j8PVP�\�ɤ\���?�	�K\\a\�\�\�u�M�P\�>]d\"\��g`\�\���\�\�%r'),(1,'UserCountry_city',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�5�K� D\�\�P�\�;x�\Z]��cIzw�\�\�d>\��Q\�?�\�\rT\�~+IC\0�lC<=\'y�g\�v�|�\�\�\�@\nk�\�t�u��%f\�\�#]'),(1,'UserCountry_country',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�5�\�	�0Cw\�q>-�w\�)\�!�[\�)x\�&�=�\'	�F/p�~s�7$P\�\�SI\Z<\�m$~����(\�b�n��P��m\�jt���sp�\�3�$G'),(1,'UserCountry_region',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�5�K� D\�\�P�\�;x�\Z]��cIzw�\�\�d>\��Q\�?�\�\rT\�~+IC\0�lC<=\'y�g\�v�|�\�\�\�@\nk�\�t�u��%f\�\�#]'),(1,'UserId_users',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(1,'UserLanguage_language',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x�K�2��δ2�N�2�1,����L��r�Rs���\�\�<\�\�b%\�L+# 6bc(\�\�:L�B\�̬A�dZ�CiCC��H-��he`U]\�\�g][\0��%J'),(1,'VisitorInterest_daysSinceLastVisit',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x��\�=1\��Rp4M?4\�\\\�nt�\n\n��\'8\�ߍ\�m�-/Jx\���}mL{�.�\�\�\�\�gW\�\�\�\��\�\�\�\�\�ױ�\�\�\�\� \�\��\Z{^%Q�\���\�y\�\�\n�P\�]��@@��,!Bԅl		�.KȐu\�h	�.�T!�;\Z�@���1�B���	![�\�\�,�rK\��)ek-zI\�1�\�!�5e�\0\�\�$�'),(1,'VisitorInterest_pageGap',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x��\�1\�0л uD2\�$)l9@\�\�J,e\�\��\n�/�Ow��\�\�b]\��ש�p\�\�\�\0;��6�\�7r%�󗞪�f!y\n\�W\�L�X\�j&4l�\�2APbA2a�5�Ph\nR��5$<��gr�-59\�\�L\�#\��\�\�F'),(1,'VisitorInterest_timeGap',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x��\�1\n\�0л:\n$\�q�\�\�\\\�Ȗ1\�\�U�tj��\�#\�\�R�\n�\�:\�ǎ	�\�\�k��#��U��0\�\�O\�\�QO�=�\�³*��!?\r���\\#\r�*��H\"�/ce�8G)�\�_%P\�Hq��H�C��\\`���筢7���\�\r�\�\�_'),(1,'VisitorInterest_visitsByVisitCount',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x��\�=\n\�0\�:\n$�/���wp�C [Ɛ�W����\�aÇ\�4)vn\�cZ��\�yX��\�\�gO\�\�$$il�>d\\�i\Z\�\�)�׽\0%��+h$d\�XȑP�`�DB���\Z	�\ZZ$t\�X葰Ђ�\n\�\�J<\�\n	\�RI�\�\�K\�ڨr�\�j6�To7G\n�g\�����\�FY�D\�\�\�@c'),(1,'VisitTime_localTime',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x��\�;�0Dѽ�ϳ\�籇\��Ht){�L�L�)�ɺrs\�\�-��y��\�d\�\�\�ٻ}Y_{7o�x��L��Y\�\�\����\�|h#\��PwβZ<�q��{\�w6�Rh�P�ks[�^5~YQ5Ҫ���V���i5��=�fQu�\�^TiuU\'ZEUp�&U�\�O�\�\n(p��\"\n\�(��\0W\n*0����p��B\�*\�\�\�ZA\�q�L\�q�L\�q�L\��yQi7\��9�'),(1,'VisitTime_serverTime',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',_binary 'x��\�;�0Dѽ�ϳ\�籇\��Ht){�L�L�)�ɺrs\�\�-��y��\�d\�\�\�ٻ}Y_{7o�x��L��Y\�\�\����\�|h#\��PwβZ<�q��{\�w6�Rh�P�ks[�^5~YQ5Ҫ���V���i5��=�fQu�\�^TiuU\'ZEUp�&U�\�O�\�\n(p��\"\n\�(��\0W\n*0����p��B\�*\�\�\�ZA\�q�L\�q�L\�q�L\��yQi7\��9�'),(2,'Actions_actions',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�}��\n\� �_E|�Q#\�x\�\�q\�J\�d��\�N�\�>#z\�!\��1\�O�\�p\�B\�@\rx\�QzZ��& �(\�mw��\�I\\\�`W��(�\�q_(XiB.\�M\�\n�3ϼ8�\03q\�f)Z]��\�VeT�\�\�\�`l0H�\ny\Z\�F/;G��7�\�\�\�o�\�W\'�\���P�'),(2,'Actions_actions_url',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�=�Q\� D\�\�Z�q��Wh��i\"\r�_\rw�E\�ǲo\�\�d4�\r�u0\'\�B�ʻi\�\�2nP�9�Y\�\rTF\�\�)L\�۹D��\nd����\�\�f��yHT\r�\�\�C�\�\�8\�\�\�W�W\�\�\�O\�#\'��ԚҎ�\�\�\��\Z8u���\\�\�\�MDx'),(2,'Actions_actions_url_chunk_0_99',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x���[� E\�¿\� \�\�à4��j\�~\�^�\�_\�\\�y\\\�\�F�\\��fA6H\�w�H@\�\�_5ڿ\�L\�d]�g\�9&�\�(63\�<j�\�@\�\\?mф� �]R�9^@\�)_Һ���ɂ\��U) jZ\�`l�\n<�(\�\�\�@>g1��\�\���4\�3�u���\�\�ϸ�\��<\�d�\'\��}\\�'),(2,'Actions_downloads',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(2,'Actions_outlink',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(2,'Actions_sitesearch',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(2,'Actions_SiteSearchCategories',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(2,'Contents_name_piece',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(2,'Contents_piece_name',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(2,'DevicePlugins_plugin',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�}\�A�0л\��\"\�\��C�\"�\"H\�a���`�Y$\�\'�7I\',\�v)��(\�\�r9�\�F<9A�U\�\�oc,[�\��#[�\�z7\�O#U�t\�uª�\�e���\�\�|Iь\�z}��\�$4x}\�t)ץ%L~r�G�:\�T\n�\�Qvsl})\�\�\\�n'),(2,'DevicesDetection_brands',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�5�K� D\�\�P�\�;x�\Z]��cIzw�\�\�d>\��Q\�?�\�\rT\�~+IC\0�lC<=\'y�g\�v�|�\�\�\�@\nk�\�t�u��%f\�\�#]'),(2,'DevicesDetection_browserEngines',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2��δ2�N�2�1,����L��r�Rs���l��̼l%\�L+# 6bc(\�\�:L�B\�̬A�dZ�CiCC��H-��he`U]\�\�g][\0�1%R'),(2,'DevicesDetection_browsers',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�5�;�0C\�\�gda\�A0T\�ֱ\�\�i�0X϶d<Z�cA�͎V���\�o!��\�$\�]�+�O�L.֭<26�\�6Hn6:���\�\\���#\�'),(2,'DevicesDetection_browserVersions',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�5�1� C\�\�`�Q\�]��F6F\�\��C\�\�&�� �z�\�8\���~#i\�:Nq�\�URe�_\�鴣[��l�\"c�poJK�\\\�\�\�R>\�%$'),(2,'DevicesDetection_models',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�5�a\n� ����WZ�w�\�`)!EE\�O�{)\�c|\�`3 D\�\�oF\�\0\r��\�\���\�\�\�\�Kc]؞\�\�\�~�O]\��m��]\��\�c�$�%K�r2��)&N\�\�t)\�'),(2,'DevicesDetection_os',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�5L9� �/`5ξ��\�z�$t�d�.���̕�ex�_h+\\��-�ko\�u&\�Kuӑ�ɫe���ݘ\�\�\�D�x4�ĪB,$N'),(2,'DevicesDetection_osVersions',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�5�;� C\��\�꜠kg�v@bcD�{\��z�%;�\�2�$\�\�hT\����\0�\�(lH2�.\�\�;y&�ꂌ��}�y\r�����`\�t��~�\�$\�'),(2,'DevicesDetection_types',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2��δ2�N�2�1,����L��r�Rs��A��VF@l\�\�P��u\n�6���AՙCiCC��H-��he`U]\�\�g][\0{}\"\�'),(2,'Events_action_category',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(2,'Events_action_name',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(2,'Events_category_action',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(2,'Events_category_name',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(2,'Events_name_action',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(2,'Events_name_category',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(2,'Goals_ItemsCategory',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(2,'Goals_ItemsCategory_Cart',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(2,'Goals_ItemsName',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(2,'Goals_ItemsName_Cart',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(2,'Goals_ItemsSku',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(2,'Goals_ItemsSku_Cart',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(2,'Goal_-1_days_until_conv',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(2,'Goal_-1_visits_until_conv',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(2,'Goal_0_days_until_conv',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(2,'Goal_0_visits_until_conv',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(2,'Goal_days_until_conv',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(2,'Goal_visits_until_conv',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(2,'Referrers_keywordByCampaign',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(2,'Referrers_keywordBySearchEngine',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(2,'Referrers_searchEngineByKeyword',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(2,'Referrers_type',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2��δ2�N�2�1,����L��r�Rs��3��\�JC\�&\�)`\�*ff\rҜie�\r\r�\ZL�\"� ^���Uu-H��um-\0{\�\"\�'),(2,'Referrers_urlBySocialNetwork',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(2,'Referrers_urlByWebsite',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(2,'Resolution_configuration',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�5L9� �˾��\�8[\�hck�т��Ƅ\�w�`1g2\��\�J<\�o\���z\"I;й�n��Q/W\"	�*�Bo\�\�jG\�\�C�\���ޔ�<ri�CJ�\0#\�\'�'),(2,'Resolution_resolution',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�5��\r�0w\�	- �\�!��\��\�\�Uy8vN�\r���j8PVP�\�ɤ\���?�	�K\\a\�\�\�u�M�P\�>]d\"\��g`\�\���\�\�%r'),(2,'UserCountry_city',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�5�K� D\�\�P�\�;x�\Z]��cIzw�\�\�d>\��Q\�?�\�\rT\�~+IC\0�lC<=\'y�g\�v�|�\�\�\�@\nk�\�t�u��%f\�\�#]'),(2,'UserCountry_country',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�5�\�	�0Cw\�q>-�w\�)\�!�[\�)x\�&�=�\'	�F/p�~s�7$P\�\�SI\Z<\�m$~����(\�b�n��P��m\�jt���sp�\�3�$G'),(2,'UserCountry_region',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�5�K� D\�\�P�\�;x�\Z]��cIzw�\�\�d>\��Q\�?�\�\rT\�~+IC\0�lC<=\'y�g\�v�|�\�\�\�@\nk�\�t�u��%f\�\�#]'),(2,'UserId_users',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(2,'UserLanguage_language',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x�K�2��δ2�N�2�1,����L��r�Rs���\�\�<\�\�b%\�L+# 6bc(\�\�:L�B\�̬A�dZ�CiCC��H-��he`U]\�\�g][\0��%J'),(2,'VisitorInterest_daysSinceLastVisit',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x��\�=1\��Rp4M?4\�\\\�nt�\n\n��\'8\�ߍ\�m�-/Jx\���}mL{�.�\�\�\�\�gW\�\�\�\��\�\�\�\�\�ױ�\�\�\�\� \�\��\Z{^%Q�\���\�y\�\�\n�P\�]��@@��,!Bԅl		�.KȐu\�h	�.�T!�;\Z�@���1�B���	![�\�\�,�rK\��)ek-zI\�1�\�!�5e�\0\�\�$�'),(2,'VisitorInterest_pageGap',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x��\�1\�0л uD2\�$)l9@\�\�J,e\�\��\n�/�Ow��\�\�b]\��ש�p\�\�\�\0;��6�\�7r%�󗞪�f!y\n\�W\�L�X\�j&4l�\�2APbA2a�5�Ph\nR��5$<��gr�-59\�\�L\�#\��\�\�F'),(2,'VisitorInterest_timeGap',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x��\�1\n\�0л:\n$\�q�\�\�\\\�Ȗ1\�\�U�tj��\�#\�\�R�\n�\�:\�ǎ	�\�\�k��#��U��0\�\�O\�\�QO�=�\�³*��!?\r���\\#\r�*��H\"�/ce�8G)�\�_%P\�Hq��H�C��\\`���筢7���\�\r�\�\�_'),(2,'VisitorInterest_visitsByVisitCount',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x��\�=\n\�0\�:\n$�/���wp�C [Ɛ�W����\�aÇ\�4)vn\�cZ��\�yX��\�\�gO\�\�$$il�>d\\�i\Z\�\�)�׽\0%��+h$d\�XȑP�`�DB���\Z	�\ZZ$t\�X葰Ђ�\n\�\�J<\�\n	\�RI�\�\�K\�ڨr�\�j6�To7G\n�g\�����\�FY�D\�\�\�@c'),(2,'VisitTime_localTime',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x��\�;�0Dѽ�ϳ\�籇\��Ht){�L�L�)�ɺrs\�\�-��y��\�d\�\�\�ٻ}Y_{7o�x��L��Y\�\�\����\�|h#\��PwβZ<�q��{\�w6�Rh�P�ks[�^5~YQ5Ҫ���V���i5��=�fQu�\�^TiuU\'ZEUp�&U�\�O�\�\n(p��\"\n\�(��\0W\n*0����p��B\�*\�\�\�ZA\�q�L\�q�L\�q�L\��yQi7\��9�'),(2,'VisitTime_serverTime',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',_binary 'x��\�;�0Dѽ�ϳ\�籇\��Ht){�L�L�)�ɺrs\�\�-��y��\�d\�\�\�ٻ}Y_{7o�x��L��Y\�\�\����\�|h#\��PwβZ<�q��{\�w6�Rh�P�ks[�^5~YQ5Ҫ���V���i5��=�fQu�\�^TiuU\'ZEUp�&U�\�O�\�\n(p��\"\n\�(��\0W\n*0����p��B\�*\�\�\�ZA\�q�L\�q�L\�q�L\��yQi7\��9�'),(3,'Actions_actions',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x�}OA\� �\n\��ku9\�x4~�\�F�$�i\n=\��]�\�\�\�a�3f�!�-\nM�\n�\�+\�:\�\�(\�\�\�u�Գ\���ћ�&؇\�oyõE\�#��6��~\�@\�\�\"��ԏ�T^P�e}9[�Df��U&r\�b�~\�%)�ZF%v\Z\�e\�`�3\�@\�\�\�\����\�w\�\��TT'),(3,'Actions_actions_url',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x�=�Q\� D\�\�Z�q��Wh��i\"\r�_\rw�E\�ǲo\�\�d4�\r�u0\'\�B�ʻi\�\�2nP�9�Y\�\rTF\�\�)L\�۹D��\nd����\�\�f��yHT\r�\�\�C�\�\�8\�\�\�W�W\�\�\�O\�#\'��ԚҎ�\�\�\��\Z8u���\\�\�\�MDx'),(3,'Actions_actions_url_chunk_0_99',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x��O\�� �\�	f���CQM\�4➌�>@]|	\�]ӻ\�%nJQk���P_@\Z\�\"\�\�F\�ady4M�\�E\�\�\�P\�ʶ�{Po�\�!��s*��o_]M}\r�K�\�wHd�uZ�g.�i/ys\�\�\�\rQ��j]��Y\�\�\�?\�;%nʃ쳔d\� \�\�uF!Ʃ���\�MzbK�\�\�\�\�\�=߽\�	~,o`�'),(3,'Actions_downloads',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(3,'Actions_outlink',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(3,'Actions_sitesearch',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(3,'Actions_SiteSearchCategories',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(3,'DevicePlugins_plugin',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x��\�Q�0\�\�cC\�w\��T� C�!\�ݽ���\�۟��\�\�\���!��ڃ\�\�q\09s���G*��eK�!C!e�7F\�֐��\��Pȵ3��r\�oGF�t7�I3*\�(\�P\�\�\�r=_\\�w6�\�!je4Z\�g\�vLkE\\��\�lGǷfJs\�8\'A?�~\�8��\�\r.�6'),(3,'DevicesDetection_brands',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x�5��\r� w\�PJ+��C*�@\�\�e\�6(}X�β�!� ��`dP��\�\�D\�]�{\�\n۰a\�@\�\�p~.W[\�w6\�\�U_�O#4'),(3,'DevicesDetection_browserEngines',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x�K�2��δ2�N�2�1,����L��r�Rs���l��̼l%\�L+C(6�\�\�P���5Hw���u\nX�*i7ӵ ]�VVյ i?\�\�Z\0�\�%)'),(3,'DevicesDetection_browsers',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x�K�2��δ2�N�2�1,����L��r�Rs��������=��3��\�JC\�Ɩ\� ��V&\�)`S��T\�Lׂt%ZXUׂ���kk\�#�'),(3,'DevicesDetection_browserVersions',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x�5��� C��0��Jotq\�\�\�@\�\�H\�\�\r\��6�i��\�Y��\�*\"\\��-�+v�\�d�4y\�d�̓吸d,��\\�oõ�M{}�\��\�$�'),(3,'DevicesDetection_models',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x�5�a\n� ���@3\�\�\��$$�\���w\�\�cl|csP\��\�,r���n\�QP�\Z!h\��\�\�m>\�u\nP��]s֖\�S�@[�ˑ�Լԕ�D.����˕)�'),(3,'DevicesDetection_os',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x�K�2��δ2�N�2�1,����L��r�Rs����2J\�~J֙V�Pl���lcKk�\�L+\���)T\�*n�kA����kA\�~ֵ�\0\�$%'),(3,'DevicesDetection_osVersions',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x�5�1� ��@)T8/\�\�\�9U; �1�����\�Ox�\nǂ\�C\�舠&\�ۈ;\�:{G\\\�-�u0�\�b\�g\r\�d��X�\�%p:ua\�{\�$\�'),(3,'DevicesDetection_types',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x�K�2��δ2�N�2�1,����L��r�Rs��A��V�Pl���lcK�\���)T\�*n�kA����kA\�~ֵ�\0Z�\"�'),(3,'Goals_ItemsCategory',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(3,'Goals_ItemsCategory_Cart',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(3,'Goals_ItemsName',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(3,'Goals_ItemsName_Cart',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(3,'Goals_ItemsSku',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(3,'Goals_ItemsSku_Cart',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(3,'Referrers_keywordByCampaign',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(3,'Referrers_keywordBySearchEngine',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(3,'Referrers_searchEngineByKeyword',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(3,'Referrers_type',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x�K�2��δ2�N�2�1,����L��r�Rs��3����6���-�A�2�L�S��PI3��9��\�J�2���I�Y\�\�\0Z\�\"�'),(3,'Referrers_urlBySocialNetwork',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(3,'Referrers_urlByWebsite',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(3,'Resolution_configuration',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x�5L;� �\'\�	b\�]tau\�\�@\�\�bB��B�C?i\�Fj�\�\��Z0C\�x\�Yq9�c�nl�\�}�8���o<\��\�\�f)�\�\�\�\�W\Z�\�:pk/�\'f'),(3,'Resolution_resolution',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x�5��\r� w\�P�\�\�!U�@\�ǧ\�\��>[g9�^\�X��\��\�\�T\�6\0�\�\�\�!.\�\�<X�燂\�\�\�\�\���\\\�J\�\�u\�\'�~ύ%I'),(3,'UserCountry_city',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x�5��\r� w\�PJ+��C*�@\�\�e\�6(}X�β�!� ��`dP��\�\�D\�]�{\�\n۰a\�@\�\�p~.W[\�w6\�\�U_�O#4'),(3,'UserCountry_country',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x�5�\�	�0Cw\��4-�w\�.\�!�[\�)x\�\�\��zH1\�s���\\O\'H�w7DO\�\�ι�]6�\�P\\\��\�^����OV�\0]$'),(3,'UserCountry_region',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x�5��\r� w\�PJ+��C*�@\�\�e\�6(}X�β�!� ��`dP��\�\�D\�]�{\�\n۰a\�@\�\�p~.W[\�w6\�\�U_�O#4'),(3,'UserId_users',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x�K�2���\0O�'),(3,'UserLanguage_language',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x�K�2��δ2�N�2�1,����L��r�Rs���\�\�<\�\�b%\�L+C(6�\�\�P���5Hw���u\nX�*i7ӵ ]�VVյ i?\�\�Z\0�/%!'),(3,'VisitorInterest_daysSinceLastVisit',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x��\�=!\��\"t\�\�5n]�\�صXp��\�\��^;th�ۋ�	��\�\�ZX\�Ĵ\�ke\�jI���X�s�\�GZ�s~]J-Ϫba\�d�*n���j^[�8\��Qb�A)��b$e�$ŀ�+)$+NR,XY\�\��\�J�^V&I	d\�\�U,�	p`1\�/s\�\�����L~\�wط-���\�\�\�O\� �YS�\�\�Q\�\���$i{\�\�/�'),(3,'VisitorInterest_pageGap',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x��\�1\n\�0л:\n,\�NRi\�z:�e�{�:�l_��v3IvtK\�,_A\�ح\Zm\��\�\�\�萰�wӨ\�(��\�$f\�v�\�\�`�(\�\"�EJ\�w\�H)\\�R�R�b�\"e\�+\�P)FK\�\�<d\"K�\���Y�SYo\�\�D�\�CW\�_\�@ŀ'),(3,'VisitorInterest_timeGap',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x��\�1\n\�0л:\n$\�q�\�-\�R\�Ȗ1\�\�\�\�\�\�ھ�\���@\�\ni\�ǎ�-�\�FmG	�P[a^*H��+ԛ}\�Sj\�\�\�?\�Y�ӷ#�\�9I��t\�P\�,\0\�[h\�\�L\�r@\Zz�+�#*=\��R@\Z{�+<E�z+U�+�5BMݓWч\�=\��\0�aʙ'),(3,'VisitorInterest_visitsByVisitCount',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x��\�;\n\�0\�:\n$��\�[\�;�\���-�\�ݫ%СH\�~?��e�%�C�u�w`��d	G�\�N]	\�\�\�(�k\�^��)�\�=a*��\��=%B\��\�)	��$Oɐ}%{J�\�+\�S*T_����\�+��$	;\�Byw�\�Lx��d\��f.�q�[�\�\�O�\�n\�wC^�\�^\�C1҃��t}Z[�'),(3,'VisitTime_localTime',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x��\�;�0�\�\���yx�C\�@�Ht)w���&R�4S�-[\�\�\'\�nŷ\�\�4{>\'շ�w~[\�\�k�M�#�W<c�y�S;�x��\�B�}�Ǹ�S�\'\�\��}?~WS�R�R|7}GSD\�_Q㿪�f\Z5M�\�h\�D;\Z-�hO��&:\�h���4:h��FGMܤ*�r� B	*�Xw	\"��e�H	p� r\\\'��\0\�	\"+���JnD\\G\�D\\W\�D\\W\�D\\\�\�\�Ir�\�?d\�\�'),(3,'VisitTime_serverTime',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',_binary 'x��\�;�0�\�\���yx�C\�@�Ht)w���&R�4S�-[\�\�\'\�nŷ\�\�4{>\'շ�w~[\�\�k�M�#�W<c�y�S;�x��\�B�}�Ǹ�S�\'\�\��}?~WS�R�R|7}GSD\�_Q㿪�f\Z5M�\�h\�D;\Z-�hO��&:\�h���4:h��FGMܤ*�r� B	*�Xw	\"��e�H	p� r\\\'��\0\�	\"+���JnD\\G\�D\\W\�D\\W\�D\\\�\�\�Ir�\�?d\�\�');
/*!40000 ALTER TABLE `matomo_archive_blob_2023_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_invalidations`
--

DROP TABLE IF EXISTS `matomo_archive_invalidations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_invalidations` (
  `idinvalidation` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `idarchive` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `idsite` int(11) NOT NULL,
  `date1` date NOT NULL,
  `date2` date NOT NULL,
  `period` tinyint(3) unsigned NOT NULL,
  `ts_invalidated` datetime NOT NULL,
  `status` tinyint(1) unsigned DEFAULT '0',
  `report` varchar(255) DEFAULT NULL,
  `ts_started` datetime DEFAULT NULL,
  PRIMARY KEY (`idinvalidation`),
  KEY `index_idsite_dates_period_name` (`idsite`,`date1`,`period`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_invalidations`
--

LOCK TABLES `matomo_archive_invalidations` WRITE;
/*!40000 ALTER TABLE `matomo_archive_invalidations` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_invalidations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2000_01`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2000_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2000_01` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2000_01`
--

LOCK TABLES `matomo_archive_numeric_2000_01` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2000_01` DISABLE KEYS */;
INSERT INTO `matomo_archive_numeric_2000_01` VALUES (1,'done.VisitsSummary',1,'2000-01-01','2023-11-20',5,'2023-11-20 18:10:09',1),(2,'done.Actions',1,'2000-01-01','2023-11-20',5,'2023-11-20 18:10:09',1);
/*!40000 ALTER TABLE `matomo_archive_numeric_2000_01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2000_02`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2000_02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2000_02` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2000_02`
--

LOCK TABLES `matomo_archive_numeric_2000_02` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2000_02` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2000_02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2000_03`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2000_03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2000_03` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2000_03`
--

LOCK TABLES `matomo_archive_numeric_2000_03` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2000_03` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2000_03` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2000_04`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2000_04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2000_04` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2000_04`
--

LOCK TABLES `matomo_archive_numeric_2000_04` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2000_04` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2000_04` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2000_05`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2000_05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2000_05` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2000_05`
--

LOCK TABLES `matomo_archive_numeric_2000_05` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2000_05` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2000_05` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2000_06`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2000_06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2000_06` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2000_06`
--

LOCK TABLES `matomo_archive_numeric_2000_06` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2000_06` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2000_06` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2000_07`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2000_07`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2000_07` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2000_07`
--

LOCK TABLES `matomo_archive_numeric_2000_07` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2000_07` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2000_07` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2000_08`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2000_08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2000_08` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2000_08`
--

LOCK TABLES `matomo_archive_numeric_2000_08` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2000_08` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2000_08` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2000_09`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2000_09`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2000_09` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2000_09`
--

LOCK TABLES `matomo_archive_numeric_2000_09` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2000_09` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2000_09` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2000_10`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2000_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2000_10` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2000_10`
--

LOCK TABLES `matomo_archive_numeric_2000_10` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2000_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2000_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2000_11`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2000_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2000_11` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2000_11`
--

LOCK TABLES `matomo_archive_numeric_2000_11` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2000_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2000_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2000_12`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2000_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2000_12` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2000_12`
--

LOCK TABLES `matomo_archive_numeric_2000_12` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2000_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2000_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2001_01`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2001_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2001_01` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2001_01`
--

LOCK TABLES `matomo_archive_numeric_2001_01` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2001_01` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2001_01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2001_02`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2001_02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2001_02` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2001_02`
--

LOCK TABLES `matomo_archive_numeric_2001_02` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2001_02` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2001_02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2001_03`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2001_03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2001_03` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2001_03`
--

LOCK TABLES `matomo_archive_numeric_2001_03` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2001_03` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2001_03` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2001_04`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2001_04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2001_04` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2001_04`
--

LOCK TABLES `matomo_archive_numeric_2001_04` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2001_04` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2001_04` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2001_05`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2001_05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2001_05` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2001_05`
--

LOCK TABLES `matomo_archive_numeric_2001_05` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2001_05` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2001_05` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2001_06`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2001_06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2001_06` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2001_06`
--

LOCK TABLES `matomo_archive_numeric_2001_06` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2001_06` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2001_06` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2001_07`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2001_07`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2001_07` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2001_07`
--

LOCK TABLES `matomo_archive_numeric_2001_07` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2001_07` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2001_07` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2001_08`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2001_08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2001_08` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2001_08`
--

LOCK TABLES `matomo_archive_numeric_2001_08` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2001_08` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2001_08` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2001_09`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2001_09`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2001_09` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2001_09`
--

LOCK TABLES `matomo_archive_numeric_2001_09` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2001_09` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2001_09` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2001_10`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2001_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2001_10` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2001_10`
--

LOCK TABLES `matomo_archive_numeric_2001_10` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2001_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2001_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2001_11`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2001_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2001_11` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2001_11`
--

LOCK TABLES `matomo_archive_numeric_2001_11` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2001_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2001_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2001_12`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2001_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2001_12` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2001_12`
--

LOCK TABLES `matomo_archive_numeric_2001_12` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2001_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2001_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2002_01`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2002_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2002_01` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2002_01`
--

LOCK TABLES `matomo_archive_numeric_2002_01` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2002_01` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2002_01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2002_02`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2002_02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2002_02` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2002_02`
--

LOCK TABLES `matomo_archive_numeric_2002_02` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2002_02` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2002_02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2002_03`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2002_03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2002_03` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2002_03`
--

LOCK TABLES `matomo_archive_numeric_2002_03` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2002_03` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2002_03` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2002_04`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2002_04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2002_04` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2002_04`
--

LOCK TABLES `matomo_archive_numeric_2002_04` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2002_04` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2002_04` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2002_05`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2002_05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2002_05` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2002_05`
--

LOCK TABLES `matomo_archive_numeric_2002_05` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2002_05` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2002_05` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2002_06`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2002_06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2002_06` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2002_06`
--

LOCK TABLES `matomo_archive_numeric_2002_06` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2002_06` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2002_06` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2002_07`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2002_07`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2002_07` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2002_07`
--

LOCK TABLES `matomo_archive_numeric_2002_07` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2002_07` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2002_07` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2002_08`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2002_08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2002_08` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2002_08`
--

LOCK TABLES `matomo_archive_numeric_2002_08` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2002_08` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2002_08` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2002_09`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2002_09`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2002_09` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2002_09`
--

LOCK TABLES `matomo_archive_numeric_2002_09` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2002_09` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2002_09` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2002_10`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2002_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2002_10` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2002_10`
--

LOCK TABLES `matomo_archive_numeric_2002_10` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2002_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2002_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2002_11`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2002_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2002_11` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2002_11`
--

LOCK TABLES `matomo_archive_numeric_2002_11` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2002_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2002_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2002_12`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2002_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2002_12` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2002_12`
--

LOCK TABLES `matomo_archive_numeric_2002_12` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2002_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2002_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2003_01`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2003_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2003_01` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2003_01`
--

LOCK TABLES `matomo_archive_numeric_2003_01` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2003_01` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2003_01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2003_02`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2003_02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2003_02` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2003_02`
--

LOCK TABLES `matomo_archive_numeric_2003_02` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2003_02` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2003_02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2003_03`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2003_03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2003_03` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2003_03`
--

LOCK TABLES `matomo_archive_numeric_2003_03` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2003_03` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2003_03` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2003_04`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2003_04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2003_04` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2003_04`
--

LOCK TABLES `matomo_archive_numeric_2003_04` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2003_04` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2003_04` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2003_05`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2003_05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2003_05` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2003_05`
--

LOCK TABLES `matomo_archive_numeric_2003_05` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2003_05` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2003_05` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2003_06`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2003_06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2003_06` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2003_06`
--

LOCK TABLES `matomo_archive_numeric_2003_06` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2003_06` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2003_06` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2003_07`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2003_07`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2003_07` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2003_07`
--

LOCK TABLES `matomo_archive_numeric_2003_07` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2003_07` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2003_07` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2003_08`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2003_08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2003_08` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2003_08`
--

LOCK TABLES `matomo_archive_numeric_2003_08` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2003_08` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2003_08` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2003_09`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2003_09`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2003_09` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2003_09`
--

LOCK TABLES `matomo_archive_numeric_2003_09` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2003_09` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2003_09` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2003_10`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2003_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2003_10` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2003_10`
--

LOCK TABLES `matomo_archive_numeric_2003_10` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2003_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2003_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2003_11`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2003_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2003_11` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2003_11`
--

LOCK TABLES `matomo_archive_numeric_2003_11` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2003_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2003_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2003_12`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2003_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2003_12` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2003_12`
--

LOCK TABLES `matomo_archive_numeric_2003_12` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2003_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2003_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2004_01`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2004_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2004_01` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2004_01`
--

LOCK TABLES `matomo_archive_numeric_2004_01` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2004_01` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2004_01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2004_02`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2004_02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2004_02` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2004_02`
--

LOCK TABLES `matomo_archive_numeric_2004_02` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2004_02` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2004_02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2004_03`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2004_03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2004_03` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2004_03`
--

LOCK TABLES `matomo_archive_numeric_2004_03` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2004_03` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2004_03` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2004_04`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2004_04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2004_04` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2004_04`
--

LOCK TABLES `matomo_archive_numeric_2004_04` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2004_04` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2004_04` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2004_05`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2004_05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2004_05` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2004_05`
--

LOCK TABLES `matomo_archive_numeric_2004_05` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2004_05` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2004_05` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2004_06`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2004_06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2004_06` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2004_06`
--

LOCK TABLES `matomo_archive_numeric_2004_06` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2004_06` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2004_06` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2004_07`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2004_07`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2004_07` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2004_07`
--

LOCK TABLES `matomo_archive_numeric_2004_07` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2004_07` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2004_07` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2004_08`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2004_08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2004_08` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2004_08`
--

LOCK TABLES `matomo_archive_numeric_2004_08` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2004_08` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2004_08` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2004_09`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2004_09`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2004_09` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2004_09`
--

LOCK TABLES `matomo_archive_numeric_2004_09` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2004_09` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2004_09` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2004_10`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2004_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2004_10` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2004_10`
--

LOCK TABLES `matomo_archive_numeric_2004_10` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2004_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2004_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2004_11`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2004_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2004_11` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2004_11`
--

LOCK TABLES `matomo_archive_numeric_2004_11` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2004_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2004_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2004_12`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2004_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2004_12` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2004_12`
--

LOCK TABLES `matomo_archive_numeric_2004_12` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2004_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2004_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2005_01`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2005_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2005_01` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2005_01`
--

LOCK TABLES `matomo_archive_numeric_2005_01` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2005_01` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2005_01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2005_02`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2005_02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2005_02` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2005_02`
--

LOCK TABLES `matomo_archive_numeric_2005_02` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2005_02` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2005_02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2005_03`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2005_03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2005_03` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2005_03`
--

LOCK TABLES `matomo_archive_numeric_2005_03` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2005_03` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2005_03` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2005_04`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2005_04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2005_04` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2005_04`
--

LOCK TABLES `matomo_archive_numeric_2005_04` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2005_04` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2005_04` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2005_05`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2005_05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2005_05` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2005_05`
--

LOCK TABLES `matomo_archive_numeric_2005_05` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2005_05` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2005_05` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2005_06`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2005_06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2005_06` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2005_06`
--

LOCK TABLES `matomo_archive_numeric_2005_06` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2005_06` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2005_06` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2005_07`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2005_07`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2005_07` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2005_07`
--

LOCK TABLES `matomo_archive_numeric_2005_07` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2005_07` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2005_07` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2005_08`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2005_08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2005_08` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2005_08`
--

LOCK TABLES `matomo_archive_numeric_2005_08` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2005_08` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2005_08` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2005_09`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2005_09`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2005_09` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2005_09`
--

LOCK TABLES `matomo_archive_numeric_2005_09` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2005_09` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2005_09` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2005_10`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2005_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2005_10` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2005_10`
--

LOCK TABLES `matomo_archive_numeric_2005_10` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2005_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2005_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2005_11`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2005_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2005_11` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2005_11`
--

LOCK TABLES `matomo_archive_numeric_2005_11` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2005_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2005_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2005_12`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2005_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2005_12` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2005_12`
--

LOCK TABLES `matomo_archive_numeric_2005_12` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2005_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2005_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2006_01`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2006_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2006_01` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2006_01`
--

LOCK TABLES `matomo_archive_numeric_2006_01` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2006_01` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2006_01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2006_02`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2006_02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2006_02` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2006_02`
--

LOCK TABLES `matomo_archive_numeric_2006_02` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2006_02` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2006_02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2006_03`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2006_03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2006_03` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2006_03`
--

LOCK TABLES `matomo_archive_numeric_2006_03` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2006_03` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2006_03` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2006_04`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2006_04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2006_04` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2006_04`
--

LOCK TABLES `matomo_archive_numeric_2006_04` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2006_04` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2006_04` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2006_05`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2006_05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2006_05` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2006_05`
--

LOCK TABLES `matomo_archive_numeric_2006_05` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2006_05` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2006_05` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2006_06`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2006_06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2006_06` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2006_06`
--

LOCK TABLES `matomo_archive_numeric_2006_06` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2006_06` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2006_06` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2006_07`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2006_07`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2006_07` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2006_07`
--

LOCK TABLES `matomo_archive_numeric_2006_07` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2006_07` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2006_07` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2006_08`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2006_08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2006_08` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2006_08`
--

LOCK TABLES `matomo_archive_numeric_2006_08` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2006_08` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2006_08` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2006_09`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2006_09`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2006_09` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2006_09`
--

LOCK TABLES `matomo_archive_numeric_2006_09` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2006_09` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2006_09` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2006_10`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2006_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2006_10` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2006_10`
--

LOCK TABLES `matomo_archive_numeric_2006_10` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2006_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2006_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2006_11`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2006_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2006_11` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2006_11`
--

LOCK TABLES `matomo_archive_numeric_2006_11` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2006_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2006_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2006_12`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2006_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2006_12` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2006_12`
--

LOCK TABLES `matomo_archive_numeric_2006_12` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2006_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2006_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2007_01`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2007_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2007_01` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2007_01`
--

LOCK TABLES `matomo_archive_numeric_2007_01` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2007_01` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2007_01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2007_02`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2007_02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2007_02` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2007_02`
--

LOCK TABLES `matomo_archive_numeric_2007_02` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2007_02` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2007_02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2007_03`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2007_03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2007_03` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2007_03`
--

LOCK TABLES `matomo_archive_numeric_2007_03` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2007_03` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2007_03` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2007_04`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2007_04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2007_04` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2007_04`
--

LOCK TABLES `matomo_archive_numeric_2007_04` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2007_04` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2007_04` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2007_05`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2007_05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2007_05` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2007_05`
--

LOCK TABLES `matomo_archive_numeric_2007_05` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2007_05` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2007_05` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2007_06`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2007_06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2007_06` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2007_06`
--

LOCK TABLES `matomo_archive_numeric_2007_06` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2007_06` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2007_06` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2007_07`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2007_07`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2007_07` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2007_07`
--

LOCK TABLES `matomo_archive_numeric_2007_07` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2007_07` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2007_07` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2007_08`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2007_08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2007_08` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2007_08`
--

LOCK TABLES `matomo_archive_numeric_2007_08` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2007_08` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2007_08` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2007_09`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2007_09`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2007_09` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2007_09`
--

LOCK TABLES `matomo_archive_numeric_2007_09` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2007_09` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2007_09` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2007_10`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2007_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2007_10` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2007_10`
--

LOCK TABLES `matomo_archive_numeric_2007_10` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2007_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2007_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2007_11`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2007_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2007_11` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2007_11`
--

LOCK TABLES `matomo_archive_numeric_2007_11` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2007_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2007_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2007_12`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2007_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2007_12` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2007_12`
--

LOCK TABLES `matomo_archive_numeric_2007_12` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2007_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2007_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2008_01`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2008_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2008_01` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2008_01`
--

LOCK TABLES `matomo_archive_numeric_2008_01` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2008_01` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2008_01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2008_02`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2008_02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2008_02` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2008_02`
--

LOCK TABLES `matomo_archive_numeric_2008_02` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2008_02` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2008_02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2008_03`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2008_03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2008_03` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2008_03`
--

LOCK TABLES `matomo_archive_numeric_2008_03` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2008_03` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2008_03` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2008_04`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2008_04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2008_04` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2008_04`
--

LOCK TABLES `matomo_archive_numeric_2008_04` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2008_04` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2008_04` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2008_05`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2008_05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2008_05` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2008_05`
--

LOCK TABLES `matomo_archive_numeric_2008_05` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2008_05` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2008_05` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2008_06`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2008_06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2008_06` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2008_06`
--

LOCK TABLES `matomo_archive_numeric_2008_06` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2008_06` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2008_06` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2008_07`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2008_07`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2008_07` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2008_07`
--

LOCK TABLES `matomo_archive_numeric_2008_07` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2008_07` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2008_07` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2008_08`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2008_08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2008_08` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2008_08`
--

LOCK TABLES `matomo_archive_numeric_2008_08` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2008_08` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2008_08` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2008_09`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2008_09`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2008_09` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2008_09`
--

LOCK TABLES `matomo_archive_numeric_2008_09` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2008_09` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2008_09` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2008_10`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2008_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2008_10` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2008_10`
--

LOCK TABLES `matomo_archive_numeric_2008_10` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2008_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2008_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2008_11`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2008_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2008_11` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2008_11`
--

LOCK TABLES `matomo_archive_numeric_2008_11` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2008_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2008_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2008_12`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2008_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2008_12` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2008_12`
--

LOCK TABLES `matomo_archive_numeric_2008_12` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2008_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2008_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2009_01`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2009_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2009_01` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2009_01`
--

LOCK TABLES `matomo_archive_numeric_2009_01` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2009_01` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2009_01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2009_02`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2009_02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2009_02` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2009_02`
--

LOCK TABLES `matomo_archive_numeric_2009_02` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2009_02` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2009_02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2009_03`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2009_03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2009_03` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2009_03`
--

LOCK TABLES `matomo_archive_numeric_2009_03` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2009_03` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2009_03` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2009_04`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2009_04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2009_04` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2009_04`
--

LOCK TABLES `matomo_archive_numeric_2009_04` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2009_04` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2009_04` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2009_05`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2009_05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2009_05` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2009_05`
--

LOCK TABLES `matomo_archive_numeric_2009_05` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2009_05` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2009_05` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2009_06`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2009_06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2009_06` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2009_06`
--

LOCK TABLES `matomo_archive_numeric_2009_06` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2009_06` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2009_06` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2009_07`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2009_07`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2009_07` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2009_07`
--

LOCK TABLES `matomo_archive_numeric_2009_07` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2009_07` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2009_07` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2009_08`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2009_08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2009_08` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2009_08`
--

LOCK TABLES `matomo_archive_numeric_2009_08` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2009_08` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2009_08` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2009_09`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2009_09`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2009_09` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2009_09`
--

LOCK TABLES `matomo_archive_numeric_2009_09` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2009_09` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2009_09` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2009_10`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2009_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2009_10` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2009_10`
--

LOCK TABLES `matomo_archive_numeric_2009_10` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2009_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2009_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2009_11`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2009_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2009_11` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2009_11`
--

LOCK TABLES `matomo_archive_numeric_2009_11` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2009_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2009_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2009_12`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2009_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2009_12` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2009_12`
--

LOCK TABLES `matomo_archive_numeric_2009_12` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2009_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2009_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2010_01`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2010_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2010_01` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2010_01`
--

LOCK TABLES `matomo_archive_numeric_2010_01` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2010_01` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2010_01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2010_02`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2010_02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2010_02` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2010_02`
--

LOCK TABLES `matomo_archive_numeric_2010_02` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2010_02` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2010_02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2010_03`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2010_03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2010_03` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2010_03`
--

LOCK TABLES `matomo_archive_numeric_2010_03` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2010_03` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2010_03` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2010_04`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2010_04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2010_04` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2010_04`
--

LOCK TABLES `matomo_archive_numeric_2010_04` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2010_04` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2010_04` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2010_05`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2010_05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2010_05` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2010_05`
--

LOCK TABLES `matomo_archive_numeric_2010_05` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2010_05` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2010_05` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2010_06`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2010_06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2010_06` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2010_06`
--

LOCK TABLES `matomo_archive_numeric_2010_06` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2010_06` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2010_06` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2010_07`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2010_07`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2010_07` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2010_07`
--

LOCK TABLES `matomo_archive_numeric_2010_07` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2010_07` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2010_07` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2010_08`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2010_08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2010_08` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2010_08`
--

LOCK TABLES `matomo_archive_numeric_2010_08` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2010_08` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2010_08` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2010_09`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2010_09`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2010_09` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2010_09`
--

LOCK TABLES `matomo_archive_numeric_2010_09` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2010_09` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2010_09` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2010_10`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2010_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2010_10` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2010_10`
--

LOCK TABLES `matomo_archive_numeric_2010_10` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2010_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2010_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2010_11`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2010_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2010_11` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2010_11`
--

LOCK TABLES `matomo_archive_numeric_2010_11` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2010_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2010_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2010_12`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2010_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2010_12` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2010_12`
--

LOCK TABLES `matomo_archive_numeric_2010_12` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2010_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2010_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2011_01`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2011_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2011_01` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2011_01`
--

LOCK TABLES `matomo_archive_numeric_2011_01` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2011_01` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2011_01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2011_02`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2011_02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2011_02` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2011_02`
--

LOCK TABLES `matomo_archive_numeric_2011_02` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2011_02` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2011_02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2011_03`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2011_03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2011_03` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2011_03`
--

LOCK TABLES `matomo_archive_numeric_2011_03` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2011_03` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2011_03` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2011_04`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2011_04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2011_04` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2011_04`
--

LOCK TABLES `matomo_archive_numeric_2011_04` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2011_04` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2011_04` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2011_05`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2011_05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2011_05` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2011_05`
--

LOCK TABLES `matomo_archive_numeric_2011_05` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2011_05` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2011_05` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2011_06`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2011_06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2011_06` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2011_06`
--

LOCK TABLES `matomo_archive_numeric_2011_06` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2011_06` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2011_06` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2011_07`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2011_07`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2011_07` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2011_07`
--

LOCK TABLES `matomo_archive_numeric_2011_07` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2011_07` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2011_07` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2011_08`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2011_08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2011_08` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2011_08`
--

LOCK TABLES `matomo_archive_numeric_2011_08` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2011_08` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2011_08` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2011_09`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2011_09`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2011_09` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2011_09`
--

LOCK TABLES `matomo_archive_numeric_2011_09` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2011_09` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2011_09` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2011_10`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2011_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2011_10` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2011_10`
--

LOCK TABLES `matomo_archive_numeric_2011_10` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2011_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2011_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2011_11`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2011_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2011_11` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2011_11`
--

LOCK TABLES `matomo_archive_numeric_2011_11` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2011_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2011_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2011_12`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2011_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2011_12` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2011_12`
--

LOCK TABLES `matomo_archive_numeric_2011_12` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2011_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2011_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2012_01`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2012_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2012_01` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2012_01`
--

LOCK TABLES `matomo_archive_numeric_2012_01` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2012_01` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2012_01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2012_02`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2012_02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2012_02` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2012_02`
--

LOCK TABLES `matomo_archive_numeric_2012_02` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2012_02` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2012_02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2012_03`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2012_03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2012_03` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2012_03`
--

LOCK TABLES `matomo_archive_numeric_2012_03` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2012_03` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2012_03` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2012_04`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2012_04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2012_04` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2012_04`
--

LOCK TABLES `matomo_archive_numeric_2012_04` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2012_04` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2012_04` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2012_05`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2012_05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2012_05` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2012_05`
--

LOCK TABLES `matomo_archive_numeric_2012_05` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2012_05` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2012_05` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2012_06`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2012_06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2012_06` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2012_06`
--

LOCK TABLES `matomo_archive_numeric_2012_06` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2012_06` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2012_06` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2012_07`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2012_07`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2012_07` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2012_07`
--

LOCK TABLES `matomo_archive_numeric_2012_07` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2012_07` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2012_07` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2012_08`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2012_08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2012_08` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2012_08`
--

LOCK TABLES `matomo_archive_numeric_2012_08` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2012_08` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2012_08` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2012_09`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2012_09`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2012_09` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2012_09`
--

LOCK TABLES `matomo_archive_numeric_2012_09` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2012_09` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2012_09` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2012_10`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2012_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2012_10` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2012_10`
--

LOCK TABLES `matomo_archive_numeric_2012_10` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2012_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2012_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2012_11`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2012_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2012_11` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2012_11`
--

LOCK TABLES `matomo_archive_numeric_2012_11` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2012_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2012_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2012_12`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2012_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2012_12` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2012_12`
--

LOCK TABLES `matomo_archive_numeric_2012_12` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2012_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2012_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2013_01`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2013_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2013_01` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2013_01`
--

LOCK TABLES `matomo_archive_numeric_2013_01` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2013_01` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2013_01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2013_02`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2013_02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2013_02` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2013_02`
--

LOCK TABLES `matomo_archive_numeric_2013_02` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2013_02` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2013_02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2013_03`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2013_03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2013_03` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2013_03`
--

LOCK TABLES `matomo_archive_numeric_2013_03` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2013_03` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2013_03` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2013_04`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2013_04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2013_04` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2013_04`
--

LOCK TABLES `matomo_archive_numeric_2013_04` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2013_04` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2013_04` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2013_05`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2013_05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2013_05` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2013_05`
--

LOCK TABLES `matomo_archive_numeric_2013_05` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2013_05` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2013_05` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2013_06`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2013_06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2013_06` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2013_06`
--

LOCK TABLES `matomo_archive_numeric_2013_06` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2013_06` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2013_06` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2013_07`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2013_07`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2013_07` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2013_07`
--

LOCK TABLES `matomo_archive_numeric_2013_07` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2013_07` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2013_07` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2013_08`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2013_08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2013_08` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2013_08`
--

LOCK TABLES `matomo_archive_numeric_2013_08` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2013_08` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2013_08` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2013_09`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2013_09`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2013_09` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2013_09`
--

LOCK TABLES `matomo_archive_numeric_2013_09` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2013_09` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2013_09` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2013_10`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2013_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2013_10` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2013_10`
--

LOCK TABLES `matomo_archive_numeric_2013_10` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2013_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2013_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2013_11`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2013_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2013_11` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2013_11`
--

LOCK TABLES `matomo_archive_numeric_2013_11` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2013_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2013_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2013_12`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2013_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2013_12` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2013_12`
--

LOCK TABLES `matomo_archive_numeric_2013_12` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2013_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2013_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2014_01`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2014_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2014_01` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2014_01`
--

LOCK TABLES `matomo_archive_numeric_2014_01` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2014_01` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2014_01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2014_02`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2014_02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2014_02` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2014_02`
--

LOCK TABLES `matomo_archive_numeric_2014_02` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2014_02` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2014_02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2014_03`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2014_03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2014_03` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2014_03`
--

LOCK TABLES `matomo_archive_numeric_2014_03` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2014_03` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2014_03` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2014_04`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2014_04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2014_04` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2014_04`
--

LOCK TABLES `matomo_archive_numeric_2014_04` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2014_04` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2014_04` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2014_05`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2014_05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2014_05` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2014_05`
--

LOCK TABLES `matomo_archive_numeric_2014_05` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2014_05` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2014_05` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2014_06`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2014_06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2014_06` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2014_06`
--

LOCK TABLES `matomo_archive_numeric_2014_06` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2014_06` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2014_06` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2014_07`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2014_07`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2014_07` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2014_07`
--

LOCK TABLES `matomo_archive_numeric_2014_07` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2014_07` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2014_07` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2014_08`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2014_08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2014_08` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2014_08`
--

LOCK TABLES `matomo_archive_numeric_2014_08` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2014_08` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2014_08` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2014_09`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2014_09`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2014_09` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2014_09`
--

LOCK TABLES `matomo_archive_numeric_2014_09` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2014_09` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2014_09` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2014_10`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2014_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2014_10` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2014_10`
--

LOCK TABLES `matomo_archive_numeric_2014_10` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2014_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2014_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2014_11`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2014_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2014_11` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2014_11`
--

LOCK TABLES `matomo_archive_numeric_2014_11` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2014_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2014_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2014_12`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2014_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2014_12` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2014_12`
--

LOCK TABLES `matomo_archive_numeric_2014_12` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2014_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2014_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2015_01`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2015_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2015_01` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2015_01`
--

LOCK TABLES `matomo_archive_numeric_2015_01` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2015_01` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2015_01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2015_02`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2015_02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2015_02` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2015_02`
--

LOCK TABLES `matomo_archive_numeric_2015_02` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2015_02` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2015_02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2015_03`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2015_03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2015_03` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2015_03`
--

LOCK TABLES `matomo_archive_numeric_2015_03` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2015_03` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2015_03` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2015_04`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2015_04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2015_04` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2015_04`
--

LOCK TABLES `matomo_archive_numeric_2015_04` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2015_04` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2015_04` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2015_05`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2015_05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2015_05` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2015_05`
--

LOCK TABLES `matomo_archive_numeric_2015_05` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2015_05` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2015_05` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2015_06`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2015_06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2015_06` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2015_06`
--

LOCK TABLES `matomo_archive_numeric_2015_06` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2015_06` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2015_06` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2015_07`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2015_07`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2015_07` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2015_07`
--

LOCK TABLES `matomo_archive_numeric_2015_07` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2015_07` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2015_07` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2015_08`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2015_08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2015_08` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2015_08`
--

LOCK TABLES `matomo_archive_numeric_2015_08` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2015_08` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2015_08` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2015_09`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2015_09`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2015_09` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2015_09`
--

LOCK TABLES `matomo_archive_numeric_2015_09` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2015_09` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2015_09` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2015_10`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2015_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2015_10` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2015_10`
--

LOCK TABLES `matomo_archive_numeric_2015_10` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2015_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2015_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2015_11`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2015_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2015_11` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2015_11`
--

LOCK TABLES `matomo_archive_numeric_2015_11` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2015_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2015_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2015_12`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2015_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2015_12` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2015_12`
--

LOCK TABLES `matomo_archive_numeric_2015_12` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2015_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2015_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2016_01`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2016_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2016_01` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2016_01`
--

LOCK TABLES `matomo_archive_numeric_2016_01` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2016_01` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2016_01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2016_02`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2016_02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2016_02` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2016_02`
--

LOCK TABLES `matomo_archive_numeric_2016_02` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2016_02` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2016_02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2016_03`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2016_03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2016_03` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2016_03`
--

LOCK TABLES `matomo_archive_numeric_2016_03` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2016_03` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2016_03` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2016_04`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2016_04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2016_04` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2016_04`
--

LOCK TABLES `matomo_archive_numeric_2016_04` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2016_04` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2016_04` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2016_05`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2016_05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2016_05` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2016_05`
--

LOCK TABLES `matomo_archive_numeric_2016_05` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2016_05` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2016_05` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2016_06`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2016_06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2016_06` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2016_06`
--

LOCK TABLES `matomo_archive_numeric_2016_06` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2016_06` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2016_06` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2016_07`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2016_07`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2016_07` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2016_07`
--

LOCK TABLES `matomo_archive_numeric_2016_07` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2016_07` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2016_07` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2016_08`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2016_08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2016_08` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2016_08`
--

LOCK TABLES `matomo_archive_numeric_2016_08` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2016_08` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2016_08` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2016_09`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2016_09`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2016_09` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2016_09`
--

LOCK TABLES `matomo_archive_numeric_2016_09` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2016_09` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2016_09` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2016_10`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2016_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2016_10` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2016_10`
--

LOCK TABLES `matomo_archive_numeric_2016_10` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2016_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2016_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2016_11`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2016_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2016_11` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2016_11`
--

LOCK TABLES `matomo_archive_numeric_2016_11` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2016_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2016_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2016_12`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2016_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2016_12` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2016_12`
--

LOCK TABLES `matomo_archive_numeric_2016_12` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2016_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2016_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2017_01`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2017_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2017_01` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2017_01`
--

LOCK TABLES `matomo_archive_numeric_2017_01` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2017_01` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2017_01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2017_02`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2017_02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2017_02` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2017_02`
--

LOCK TABLES `matomo_archive_numeric_2017_02` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2017_02` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2017_02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2017_03`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2017_03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2017_03` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2017_03`
--

LOCK TABLES `matomo_archive_numeric_2017_03` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2017_03` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2017_03` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2017_04`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2017_04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2017_04` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2017_04`
--

LOCK TABLES `matomo_archive_numeric_2017_04` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2017_04` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2017_04` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2017_05`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2017_05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2017_05` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2017_05`
--

LOCK TABLES `matomo_archive_numeric_2017_05` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2017_05` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2017_05` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2017_06`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2017_06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2017_06` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2017_06`
--

LOCK TABLES `matomo_archive_numeric_2017_06` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2017_06` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2017_06` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2017_07`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2017_07`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2017_07` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2017_07`
--

LOCK TABLES `matomo_archive_numeric_2017_07` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2017_07` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2017_07` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2017_08`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2017_08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2017_08` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2017_08`
--

LOCK TABLES `matomo_archive_numeric_2017_08` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2017_08` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2017_08` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2017_09`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2017_09`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2017_09` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2017_09`
--

LOCK TABLES `matomo_archive_numeric_2017_09` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2017_09` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2017_09` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2017_10`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2017_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2017_10` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2017_10`
--

LOCK TABLES `matomo_archive_numeric_2017_10` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2017_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2017_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2017_11`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2017_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2017_11` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2017_11`
--

LOCK TABLES `matomo_archive_numeric_2017_11` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2017_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2017_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2017_12`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2017_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2017_12` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2017_12`
--

LOCK TABLES `matomo_archive_numeric_2017_12` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2017_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2017_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2018_01`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2018_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2018_01` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2018_01`
--

LOCK TABLES `matomo_archive_numeric_2018_01` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2018_01` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2018_01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2018_02`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2018_02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2018_02` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2018_02`
--

LOCK TABLES `matomo_archive_numeric_2018_02` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2018_02` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2018_02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2018_03`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2018_03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2018_03` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2018_03`
--

LOCK TABLES `matomo_archive_numeric_2018_03` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2018_03` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2018_03` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2018_04`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2018_04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2018_04` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2018_04`
--

LOCK TABLES `matomo_archive_numeric_2018_04` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2018_04` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2018_04` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2018_05`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2018_05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2018_05` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2018_05`
--

LOCK TABLES `matomo_archive_numeric_2018_05` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2018_05` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2018_05` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2018_06`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2018_06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2018_06` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2018_06`
--

LOCK TABLES `matomo_archive_numeric_2018_06` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2018_06` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2018_06` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2018_07`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2018_07`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2018_07` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2018_07`
--

LOCK TABLES `matomo_archive_numeric_2018_07` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2018_07` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2018_07` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2018_08`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2018_08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2018_08` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2018_08`
--

LOCK TABLES `matomo_archive_numeric_2018_08` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2018_08` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2018_08` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2018_09`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2018_09`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2018_09` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2018_09`
--

LOCK TABLES `matomo_archive_numeric_2018_09` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2018_09` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2018_09` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2018_10`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2018_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2018_10` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2018_10`
--

LOCK TABLES `matomo_archive_numeric_2018_10` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2018_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2018_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2018_11`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2018_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2018_11` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2018_11`
--

LOCK TABLES `matomo_archive_numeric_2018_11` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2018_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2018_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2018_12`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2018_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2018_12` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2018_12`
--

LOCK TABLES `matomo_archive_numeric_2018_12` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2018_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2018_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2019_01`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2019_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2019_01` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2019_01`
--

LOCK TABLES `matomo_archive_numeric_2019_01` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2019_01` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2019_01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2019_02`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2019_02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2019_02` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2019_02`
--

LOCK TABLES `matomo_archive_numeric_2019_02` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2019_02` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2019_02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2019_03`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2019_03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2019_03` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2019_03`
--

LOCK TABLES `matomo_archive_numeric_2019_03` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2019_03` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2019_03` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2019_04`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2019_04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2019_04` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2019_04`
--

LOCK TABLES `matomo_archive_numeric_2019_04` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2019_04` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2019_04` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2019_05`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2019_05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2019_05` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2019_05`
--

LOCK TABLES `matomo_archive_numeric_2019_05` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2019_05` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2019_05` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2019_06`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2019_06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2019_06` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2019_06`
--

LOCK TABLES `matomo_archive_numeric_2019_06` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2019_06` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2019_06` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2019_07`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2019_07`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2019_07` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2019_07`
--

LOCK TABLES `matomo_archive_numeric_2019_07` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2019_07` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2019_07` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2019_08`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2019_08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2019_08` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2019_08`
--

LOCK TABLES `matomo_archive_numeric_2019_08` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2019_08` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2019_08` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2019_09`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2019_09`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2019_09` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2019_09`
--

LOCK TABLES `matomo_archive_numeric_2019_09` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2019_09` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2019_09` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2019_10`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2019_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2019_10` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2019_10`
--

LOCK TABLES `matomo_archive_numeric_2019_10` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2019_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2019_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2019_11`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2019_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2019_11` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2019_11`
--

LOCK TABLES `matomo_archive_numeric_2019_11` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2019_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2019_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2019_12`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2019_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2019_12` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2019_12`
--

LOCK TABLES `matomo_archive_numeric_2019_12` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2019_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2019_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2020_01`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2020_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2020_01` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2020_01`
--

LOCK TABLES `matomo_archive_numeric_2020_01` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2020_01` DISABLE KEYS */;
INSERT INTO `matomo_archive_numeric_2020_01` VALUES (1,'done',1,'2020-01-01','2020-12-31',4,'2023-11-20 18:10:09',1);
/*!40000 ALTER TABLE `matomo_archive_numeric_2020_01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2020_02`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2020_02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2020_02` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2020_02`
--

LOCK TABLES `matomo_archive_numeric_2020_02` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2020_02` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2020_02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2020_03`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2020_03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2020_03` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2020_03`
--

LOCK TABLES `matomo_archive_numeric_2020_03` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2020_03` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2020_03` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2020_04`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2020_04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2020_04` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2020_04`
--

LOCK TABLES `matomo_archive_numeric_2020_04` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2020_04` DISABLE KEYS */;
INSERT INTO `matomo_archive_numeric_2020_04` VALUES (1,'done',1,'2020-04-02','2020-04-02',1,'2020-04-03 18:18:39',1),(2,'done',1,'2020-04-01','2020-04-30',3,'2023-11-20 18:10:08',1);
/*!40000 ALTER TABLE `matomo_archive_numeric_2020_04` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2020_05`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2020_05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2020_05` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2020_05`
--

LOCK TABLES `matomo_archive_numeric_2020_05` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2020_05` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2020_05` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2020_06`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2020_06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2020_06` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2020_06`
--

LOCK TABLES `matomo_archive_numeric_2020_06` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2020_06` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2020_06` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2020_07`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2020_07`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2020_07` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2020_07`
--

LOCK TABLES `matomo_archive_numeric_2020_07` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2020_07` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2020_07` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2020_08`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2020_08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2020_08` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2020_08`
--

LOCK TABLES `matomo_archive_numeric_2020_08` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2020_08` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2020_08` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2020_09`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2020_09`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2020_09` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2020_09`
--

LOCK TABLES `matomo_archive_numeric_2020_09` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2020_09` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2020_09` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2020_10`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2020_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2020_10` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2020_10`
--

LOCK TABLES `matomo_archive_numeric_2020_10` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2020_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2020_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2020_11`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2020_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2020_11` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2020_11`
--

LOCK TABLES `matomo_archive_numeric_2020_11` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2020_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2020_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2020_12`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2020_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2020_12` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2020_12`
--

LOCK TABLES `matomo_archive_numeric_2020_12` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2020_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2020_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2021_01`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2021_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2021_01` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2021_01`
--

LOCK TABLES `matomo_archive_numeric_2021_01` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2021_01` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2021_01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2021_02`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2021_02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2021_02` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2021_02`
--

LOCK TABLES `matomo_archive_numeric_2021_02` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2021_02` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2021_02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2021_03`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2021_03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2021_03` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2021_03`
--

LOCK TABLES `matomo_archive_numeric_2021_03` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2021_03` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2021_03` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2021_04`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2021_04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2021_04` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2021_04`
--

LOCK TABLES `matomo_archive_numeric_2021_04` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2021_04` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2021_04` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2021_05`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2021_05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2021_05` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2021_05`
--

LOCK TABLES `matomo_archive_numeric_2021_05` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2021_05` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2021_05` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2021_06`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2021_06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2021_06` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2021_06`
--

LOCK TABLES `matomo_archive_numeric_2021_06` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2021_06` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2021_06` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2021_07`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2021_07`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2021_07` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2021_07`
--

LOCK TABLES `matomo_archive_numeric_2021_07` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2021_07` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2021_07` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2021_08`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2021_08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2021_08` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2021_08`
--

LOCK TABLES `matomo_archive_numeric_2021_08` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2021_08` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2021_08` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2021_09`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2021_09`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2021_09` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2021_09`
--

LOCK TABLES `matomo_archive_numeric_2021_09` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2021_09` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2021_09` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2021_10`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2021_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2021_10` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2021_10`
--

LOCK TABLES `matomo_archive_numeric_2021_10` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2021_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2021_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2021_11`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2021_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2021_11` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2021_11`
--

LOCK TABLES `matomo_archive_numeric_2021_11` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2021_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2021_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2021_12`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2021_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2021_12` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2021_12`
--

LOCK TABLES `matomo_archive_numeric_2021_12` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2021_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2021_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2022_01`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2022_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2022_01` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2022_01`
--

LOCK TABLES `matomo_archive_numeric_2022_01` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2022_01` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2022_01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2022_02`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2022_02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2022_02` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2022_02`
--

LOCK TABLES `matomo_archive_numeric_2022_02` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2022_02` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2022_02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2022_03`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2022_03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2022_03` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2022_03`
--

LOCK TABLES `matomo_archive_numeric_2022_03` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2022_03` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2022_03` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2022_04`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2022_04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2022_04` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2022_04`
--

LOCK TABLES `matomo_archive_numeric_2022_04` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2022_04` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2022_04` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2022_05`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2022_05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2022_05` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2022_05`
--

LOCK TABLES `matomo_archive_numeric_2022_05` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2022_05` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2022_05` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2022_06`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2022_06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2022_06` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2022_06`
--

LOCK TABLES `matomo_archive_numeric_2022_06` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2022_06` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2022_06` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2022_07`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2022_07`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2022_07` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2022_07`
--

LOCK TABLES `matomo_archive_numeric_2022_07` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2022_07` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2022_07` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2022_08`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2022_08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2022_08` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2022_08`
--

LOCK TABLES `matomo_archive_numeric_2022_08` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2022_08` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2022_08` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2022_09`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2022_09`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2022_09` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2022_09`
--

LOCK TABLES `matomo_archive_numeric_2022_09` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2022_09` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2022_09` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2022_10`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2022_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2022_10` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2022_10`
--

LOCK TABLES `matomo_archive_numeric_2022_10` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2022_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2022_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2022_11`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2022_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2022_11` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2022_11`
--

LOCK TABLES `matomo_archive_numeric_2022_11` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2022_11` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2022_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2022_12`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2022_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2022_12` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2022_12`
--

LOCK TABLES `matomo_archive_numeric_2022_12` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2022_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2022_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2023_01`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2023_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2023_01` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2023_01`
--

LOCK TABLES `matomo_archive_numeric_2023_01` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2023_01` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2023_01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2023_02`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2023_02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2023_02` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2023_02`
--

LOCK TABLES `matomo_archive_numeric_2023_02` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2023_02` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2023_02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2023_03`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2023_03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2023_03` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2023_03`
--

LOCK TABLES `matomo_archive_numeric_2023_03` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2023_03` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2023_03` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2023_04`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2023_04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2023_04` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2023_04`
--

LOCK TABLES `matomo_archive_numeric_2023_04` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2023_04` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2023_04` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2023_05`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2023_05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2023_05` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2023_05`
--

LOCK TABLES `matomo_archive_numeric_2023_05` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2023_05` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2023_05` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2023_06`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2023_06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2023_06` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2023_06`
--

LOCK TABLES `matomo_archive_numeric_2023_06` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2023_06` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2023_06` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2023_07`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2023_07`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2023_07` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2023_07`
--

LOCK TABLES `matomo_archive_numeric_2023_07` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2023_07` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2023_07` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2023_08`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2023_08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2023_08` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2023_08`
--

LOCK TABLES `matomo_archive_numeric_2023_08` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2023_08` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2023_08` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2023_09`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2023_09`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2023_09` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2023_09`
--

LOCK TABLES `matomo_archive_numeric_2023_09` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2023_09` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2023_09` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2023_10`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2023_10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2023_10` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2023_10`
--

LOCK TABLES `matomo_archive_numeric_2023_10` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2023_10` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2023_10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2023_11`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2023_11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2023_11` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2023_11`
--

LOCK TABLES `matomo_archive_numeric_2023_11` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2023_11` DISABLE KEYS */;
INSERT INTO `matomo_archive_numeric_2023_11` VALUES (1,'Actions_nb_pageviews',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',2),(1,'Actions_nb_uniq_pageviews',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',1),(1,'done',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',1),(1,'max_actions',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',2),(1,'nb_actions',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',2),(1,'nb_uniq_visitors',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',1),(1,'nb_visits',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',1),(1,'sum_visit_length',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',3),(1,'UserCountry_distinctCountries',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',1),(2,'Actions_nb_pageviews',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',2),(2,'Actions_nb_uniq_pageviews',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',1),(2,'done',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',1),(2,'max_actions',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',2),(2,'nb_actions',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',2),(2,'nb_uniq_visitors',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',1),(2,'nb_visits',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',1),(2,'sum_visit_length',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',3),(2,'UserCountry_distinctCountries',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',1),(3,'Actions_nb_pageviews',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',2),(3,'Actions_nb_uniq_pageviews',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',1),(3,'done',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',1),(3,'max_actions',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',2),(3,'nb_actions',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',2),(3,'nb_uniq_visitors',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',1),(3,'nb_visits',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',1),(3,'sum_visit_length',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',3),(3,'UserCountry_distinctCountries',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',1),(4,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',1),(4,'max_actions',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',2),(4,'nb_actions',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',2),(4,'nb_uniq_visitors',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',1),(4,'nb_visits',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',1),(4,'sum_visit_length',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',3),(5,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2023-11-20','2023-11-20',1,'2023-11-20 18:11:01',1),(6,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',1),(6,'max_actions',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',2),(6,'nb_actions',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',2),(6,'nb_uniq_visitors',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',1),(6,'nb_visits',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',1),(6,'sum_visit_length',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',3),(7,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2023-11-20','2023-11-26',2,'2023-11-20 18:11:01',1),(8,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',1),(8,'max_actions',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',2),(8,'nb_actions',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',2),(8,'nb_uniq_visitors',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',1),(8,'nb_visits',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',1),(8,'sum_visit_length',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',3),(9,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2023-11-01','2023-11-30',3,'2023-11-20 18:11:01',1);
/*!40000 ALTER TABLE `matomo_archive_numeric_2023_11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2023_12`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2023_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_archive_numeric_2023_12` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(190) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_archive_numeric_2023_12`
--

LOCK TABLES `matomo_archive_numeric_2023_12` WRITE;
/*!40000 ALTER TABLE `matomo_archive_numeric_2023_12` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_numeric_2023_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_brute_force_log`
--

DROP TABLE IF EXISTS `matomo_brute_force_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_brute_force_log` (
  `id_brute_force_log` bigint(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(60) DEFAULT NULL,
  `attempted_at` datetime NOT NULL,
  `login` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_brute_force_log`),
  KEY `index_ip_address` (`ip_address`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_brute_force_log`
--

LOCK TABLES `matomo_brute_force_log` WRITE;
/*!40000 ALTER TABLE `matomo_brute_force_log` DISABLE KEYS */;
INSERT INTO `matomo_brute_force_log` VALUES (1,'10.0.2.2','2020-08-17 16:24:40',NULL);
/*!40000 ALTER TABLE `matomo_brute_force_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_changes`
--

DROP TABLE IF EXISTS `matomo_changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_changes` (
  `idchange` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime NOT NULL,
  `plugin_name` varchar(60) NOT NULL,
  `version` varchar(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `link_name` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idchange`),
  UNIQUE KEY `unique_plugin_version_title` (`plugin_name`,`version`,`title`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_changes`
--

LOCK TABLES `matomo_changes` WRITE;
/*!40000 ALTER TABLE `matomo_changes` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_changes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_custom_dimensions`
--

DROP TABLE IF EXISTS `matomo_custom_dimensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_custom_dimensions` (
  `idcustomdimension` bigint(20) unsigned NOT NULL,
  `idsite` bigint(20) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `scope` varchar(10) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `extractions` text NOT NULL,
  `case_sensitive` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`idcustomdimension`,`idsite`),
  UNIQUE KEY `uniq_hash` (`idsite`,`scope`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_custom_dimensions`
--

LOCK TABLES `matomo_custom_dimensions` WRITE;
/*!40000 ALTER TABLE `matomo_custom_dimensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_custom_dimensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_goal`
--

DROP TABLE IF EXISTS `matomo_goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_goal` (
  `idsite` int(11) NOT NULL,
  `idgoal` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `match_attribute` varchar(20) NOT NULL,
  `pattern` varchar(255) NOT NULL,
  `pattern_type` varchar(25) NOT NULL,
  `case_sensitive` tinyint(4) NOT NULL,
  `allow_multiple` tinyint(4) NOT NULL,
  `revenue` float NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `event_value_as_revenue` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idsite`,`idgoal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_goal`
--

LOCK TABLES `matomo_goal` WRITE;
/*!40000 ALTER TABLE `matomo_goal` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_goal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_locks`
--

DROP TABLE IF EXISTS `matomo_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_locks` (
  `key` varchar(70) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `expiry_time` bigint(20) unsigned DEFAULT '9999999999',
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_locks`
--

LOCK TABLES `matomo_locks` WRITE;
/*!40000 ALTER TABLE `matomo_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_log_action`
--

DROP TABLE IF EXISTS `matomo_log_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_log_action` (
  `idaction` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(4096) DEFAULT NULL,
  `hash` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `url_prefix` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`idaction`),
  KEY `index_type_hash` (`type`,`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_log_action`
--

LOCK TABLES `matomo_log_action` WRITE;
/*!40000 ALTER TABLE `matomo_log_action` DISABLE KEYS */;
INSERT INTO `matomo_log_action` VALUES (1,'Brian A. Arsenault | LDbase',189721291,4,NULL),(2,'localhost:9999/persons/4faad6b9-e5a0-47c7-b02d-960c0b0ea7a8',21779259,1,0),(3,'LDbase: A Learning &amp; Development Data Repository',2980156460,4,NULL),(4,'localhost:9999/',559876454,1,0);
/*!40000 ALTER TABLE `matomo_log_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_log_conversion`
--

DROP TABLE IF EXISTS `matomo_log_conversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_log_conversion` (
  `idvisit` bigint(10) unsigned NOT NULL,
  `idsite` int(10) unsigned NOT NULL,
  `idvisitor` binary(8) NOT NULL,
  `server_time` datetime NOT NULL,
  `idaction_url` int(10) unsigned DEFAULT NULL,
  `idlink_va` bigint(10) unsigned DEFAULT NULL,
  `idgoal` int(10) NOT NULL,
  `buster` int(10) unsigned NOT NULL,
  `idorder` varchar(100) DEFAULT NULL,
  `items` smallint(5) unsigned DEFAULT NULL,
  `url` varchar(4096) DEFAULT NULL,
  `visitor_returning` tinyint(1) DEFAULT NULL,
  `visitor_count_visits` int(11) unsigned NOT NULL DEFAULT '0',
  `referer_keyword` varchar(255) DEFAULT NULL,
  `referer_name` varchar(255) DEFAULT NULL,
  `referer_type` tinyint(1) unsigned DEFAULT NULL,
  `config_device_brand` varchar(100) DEFAULT NULL,
  `config_device_model` varchar(100) DEFAULT NULL,
  `config_device_type` tinyint(100) DEFAULT NULL,
  `location_city` varchar(255) DEFAULT NULL,
  `location_country` char(3) DEFAULT NULL,
  `location_latitude` decimal(9,6) DEFAULT NULL,
  `location_longitude` decimal(9,6) DEFAULT NULL,
  `location_region` char(3) DEFAULT NULL,
  `revenue` float DEFAULT NULL,
  `revenue_discount` float DEFAULT NULL,
  `revenue_shipping` float DEFAULT NULL,
  `revenue_subtotal` float DEFAULT NULL,
  `revenue_tax` float DEFAULT NULL,
  `custom_var_k1` varchar(200) DEFAULT NULL,
  `custom_var_v1` varchar(200) DEFAULT NULL,
  `custom_var_k2` varchar(200) DEFAULT NULL,
  `custom_var_v2` varchar(200) DEFAULT NULL,
  `custom_var_k3` varchar(200) DEFAULT NULL,
  `custom_var_v3` varchar(200) DEFAULT NULL,
  `custom_var_k4` varchar(200) DEFAULT NULL,
  `custom_var_v4` varchar(200) DEFAULT NULL,
  `custom_var_k5` varchar(200) DEFAULT NULL,
  `custom_var_v5` varchar(200) DEFAULT NULL,
  `visitor_seconds_since_first` int(11) unsigned DEFAULT NULL,
  `visitor_seconds_since_order` int(11) unsigned DEFAULT NULL,
  `custom_dimension_1` varchar(255) DEFAULT NULL,
  `custom_dimension_2` varchar(255) DEFAULT NULL,
  `custom_dimension_3` varchar(255) DEFAULT NULL,
  `custom_dimension_4` varchar(255) DEFAULT NULL,
  `custom_dimension_5` varchar(255) DEFAULT NULL,
  `config_browser_name` varchar(40) DEFAULT NULL,
  `config_client_type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idvisit`,`idgoal`,`buster`),
  UNIQUE KEY `unique_idsite_idorder` (`idsite`,`idorder`),
  KEY `index_idsite_datetime` (`idsite`,`server_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_log_conversion`
--

LOCK TABLES `matomo_log_conversion` WRITE;
/*!40000 ALTER TABLE `matomo_log_conversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_log_conversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_log_conversion_item`
--

DROP TABLE IF EXISTS `matomo_log_conversion_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_log_conversion_item` (
  `idsite` int(10) unsigned NOT NULL,
  `idvisitor` binary(8) NOT NULL,
  `server_time` datetime NOT NULL,
  `idvisit` bigint(10) unsigned NOT NULL,
  `idorder` varchar(100) NOT NULL,
  `idaction_sku` int(10) unsigned NOT NULL,
  `idaction_name` int(10) unsigned NOT NULL,
  `idaction_category` int(10) unsigned NOT NULL,
  `idaction_category2` int(10) unsigned NOT NULL,
  `idaction_category3` int(10) unsigned NOT NULL,
  `idaction_category4` int(10) unsigned NOT NULL,
  `idaction_category5` int(10) unsigned NOT NULL,
  `price` float NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`idvisit`,`idorder`,`idaction_sku`),
  KEY `index_idsite_servertime` (`idsite`,`server_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_log_conversion_item`
--

LOCK TABLES `matomo_log_conversion_item` WRITE;
/*!40000 ALTER TABLE `matomo_log_conversion_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_log_conversion_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_log_link_visit_action`
--

DROP TABLE IF EXISTS `matomo_log_link_visit_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_log_link_visit_action` (
  `idlink_va` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `idsite` int(10) unsigned NOT NULL,
  `idvisitor` binary(8) NOT NULL,
  `idvisit` bigint(10) unsigned NOT NULL,
  `idaction_url_ref` int(10) unsigned DEFAULT '0',
  `idaction_name_ref` int(10) unsigned DEFAULT NULL,
  `custom_float` float DEFAULT NULL,
  `server_time` datetime NOT NULL,
  `idpageview` char(6) DEFAULT NULL,
  `pageview_position` mediumint(8) unsigned DEFAULT NULL,
  `idaction_name` int(10) unsigned DEFAULT NULL,
  `idaction_url` int(10) unsigned DEFAULT NULL,
  `time_spent_ref_action` int(10) unsigned DEFAULT NULL,
  `idaction_event_action` int(10) unsigned DEFAULT NULL,
  `idaction_event_category` int(10) unsigned DEFAULT NULL,
  `idaction_content_interaction` int(10) unsigned DEFAULT NULL,
  `idaction_content_name` int(10) unsigned DEFAULT NULL,
  `idaction_content_piece` int(10) unsigned DEFAULT NULL,
  `idaction_content_target` int(10) unsigned DEFAULT NULL,
  `custom_var_k1` varchar(200) DEFAULT NULL,
  `custom_var_v1` varchar(200) DEFAULT NULL,
  `custom_var_k2` varchar(200) DEFAULT NULL,
  `custom_var_v2` varchar(200) DEFAULT NULL,
  `custom_var_k3` varchar(200) DEFAULT NULL,
  `custom_var_v3` varchar(200) DEFAULT NULL,
  `custom_var_k4` varchar(200) DEFAULT NULL,
  `custom_var_v4` varchar(200) DEFAULT NULL,
  `custom_var_k5` varchar(200) DEFAULT NULL,
  `custom_var_v5` varchar(200) DEFAULT NULL,
  `search_cat` varchar(200) DEFAULT NULL,
  `search_count` int(10) unsigned DEFAULT NULL,
  `time_dom_completion` mediumint(10) unsigned DEFAULT NULL,
  `time_dom_processing` mediumint(10) unsigned DEFAULT NULL,
  `time_network` mediumint(10) unsigned DEFAULT NULL,
  `time_on_load` mediumint(10) unsigned DEFAULT NULL,
  `time_server` mediumint(10) unsigned DEFAULT NULL,
  `time_transfer` mediumint(10) unsigned DEFAULT NULL,
  `time_spent` int(10) unsigned DEFAULT NULL,
  `custom_dimension_1` varchar(255) DEFAULT NULL,
  `custom_dimension_2` varchar(255) DEFAULT NULL,
  `custom_dimension_3` varchar(255) DEFAULT NULL,
  `custom_dimension_4` varchar(255) DEFAULT NULL,
  `custom_dimension_5` varchar(255) DEFAULT NULL,
  `idaction_product_cat` int(10) unsigned DEFAULT NULL,
  `idaction_product_cat2` int(10) unsigned DEFAULT NULL,
  `idaction_product_cat3` int(10) unsigned DEFAULT NULL,
  `idaction_product_cat4` int(10) unsigned DEFAULT NULL,
  `idaction_product_cat5` int(10) unsigned DEFAULT NULL,
  `idaction_product_name` int(10) unsigned DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  `idaction_product_sku` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idlink_va`),
  KEY `index_idvisit` (`idvisit`),
  KEY `index_idsite_servertime` (`idsite`,`server_time`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_log_link_visit_action`
--

LOCK TABLES `matomo_log_link_visit_action` WRITE;
/*!40000 ALTER TABLE `matomo_log_link_visit_action` DISABLE KEYS */;
INSERT INTO `matomo_log_link_visit_action` VALUES (1,1,_binary 'itdr\0\�+',1,0,0,NULL,'2023-11-20 18:10:55','zXXfLI',1,1,2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,1,_binary 'itdr\0\�+',1,2,1,NULL,'2023-11-20 18:10:57','7h9H8y',2,1,2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,1,_binary 'itdr\0\�+',1,2,1,NULL,'2023-11-20 18:18:48','iWX5uI',3,3,4,471,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,1,_binary 'itdr\0\�+',1,4,3,NULL,'2023-11-20 18:22:01','QNqYFQ',4,3,4,193,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `matomo_log_link_visit_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_log_profiling`
--

DROP TABLE IF EXISTS `matomo_log_profiling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_log_profiling` (
  `query` text NOT NULL,
  `count` int(10) unsigned DEFAULT NULL,
  `sum_time_ms` float DEFAULT NULL,
  `idprofiling` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idprofiling`),
  UNIQUE KEY `query` (`query`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_log_profiling`
--

LOCK TABLES `matomo_log_profiling` WRITE;
/*!40000 ALTER TABLE `matomo_log_profiling` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_log_profiling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_log_visit`
--

DROP TABLE IF EXISTS `matomo_log_visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_log_visit` (
  `idvisit` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `idsite` int(10) unsigned NOT NULL,
  `idvisitor` binary(8) NOT NULL,
  `visit_last_action_time` datetime NOT NULL,
  `config_id` binary(8) NOT NULL,
  `location_ip` varbinary(16) NOT NULL,
  `user_id` varchar(200) DEFAULT NULL,
  `visit_first_action_time` datetime NOT NULL,
  `visit_goal_buyer` tinyint(1) DEFAULT NULL,
  `visit_goal_converted` tinyint(1) DEFAULT NULL,
  `visitor_returning` tinyint(1) DEFAULT NULL,
  `visitor_count_visits` int(11) unsigned NOT NULL DEFAULT '0',
  `visit_entry_idaction_name` int(10) unsigned DEFAULT NULL,
  `visit_entry_idaction_url` int(11) unsigned DEFAULT NULL,
  `visit_exit_idaction_name` int(10) unsigned DEFAULT NULL,
  `visit_exit_idaction_url` int(10) unsigned DEFAULT '0',
  `visit_total_actions` int(11) unsigned DEFAULT NULL,
  `visit_total_interactions` mediumint(8) unsigned DEFAULT '0',
  `visit_total_searches` smallint(5) unsigned DEFAULT NULL,
  `referer_keyword` varchar(255) DEFAULT NULL,
  `referer_name` varchar(255) DEFAULT NULL,
  `referer_type` tinyint(1) unsigned DEFAULT NULL,
  `referer_url` varchar(1500) DEFAULT NULL,
  `location_browser_lang` varchar(20) DEFAULT NULL,
  `config_browser_engine` varchar(10) DEFAULT NULL,
  `config_browser_name` varchar(40) DEFAULT NULL,
  `config_browser_version` varchar(20) DEFAULT NULL,
  `config_device_brand` varchar(100) DEFAULT NULL,
  `config_device_model` varchar(100) DEFAULT NULL,
  `config_device_type` tinyint(100) DEFAULT NULL,
  `config_os` char(3) DEFAULT NULL,
  `config_os_version` varchar(100) DEFAULT NULL,
  `visit_total_events` int(11) unsigned DEFAULT NULL,
  `visitor_localtime` time DEFAULT NULL,
  `config_resolution` varchar(18) DEFAULT NULL,
  `config_cookie` tinyint(1) DEFAULT NULL,
  `config_flash` tinyint(1) DEFAULT NULL,
  `config_java` tinyint(1) DEFAULT NULL,
  `config_pdf` tinyint(1) DEFAULT NULL,
  `config_quicktime` tinyint(1) DEFAULT NULL,
  `config_realplayer` tinyint(1) DEFAULT NULL,
  `config_silverlight` tinyint(1) DEFAULT NULL,
  `config_windowsmedia` tinyint(1) DEFAULT NULL,
  `visit_total_time` int(11) unsigned NOT NULL,
  `location_city` varchar(255) DEFAULT NULL,
  `location_country` char(3) DEFAULT NULL,
  `location_latitude` decimal(9,6) DEFAULT NULL,
  `location_longitude` decimal(9,6) DEFAULT NULL,
  `location_region` char(3) DEFAULT NULL,
  `custom_var_k1` varchar(200) DEFAULT NULL,
  `custom_var_v1` varchar(200) DEFAULT NULL,
  `custom_var_k2` varchar(200) DEFAULT NULL,
  `custom_var_v2` varchar(200) DEFAULT NULL,
  `custom_var_k3` varchar(200) DEFAULT NULL,
  `custom_var_v3` varchar(200) DEFAULT NULL,
  `custom_var_k4` varchar(200) DEFAULT NULL,
  `custom_var_v4` varchar(200) DEFAULT NULL,
  `custom_var_k5` varchar(200) DEFAULT NULL,
  `custom_var_v5` varchar(200) DEFAULT NULL,
  `visitor_seconds_since_first` int(11) unsigned DEFAULT NULL,
  `visitor_seconds_since_order` int(11) unsigned DEFAULT NULL,
  `visitor_seconds_since_last` int(11) unsigned DEFAULT NULL,
  `profilable` tinyint(1) DEFAULT NULL,
  `last_idlink_va` bigint(20) unsigned DEFAULT NULL,
  `custom_dimension_1` varchar(255) DEFAULT NULL,
  `custom_dimension_2` varchar(255) DEFAULT NULL,
  `custom_dimension_3` varchar(255) DEFAULT NULL,
  `custom_dimension_4` varchar(255) DEFAULT NULL,
  `custom_dimension_5` varchar(255) DEFAULT NULL,
  `config_client_type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idvisit`),
  KEY `index_idsite_config_datetime` (`idsite`,`config_id`,`visit_last_action_time`),
  KEY `index_idsite_datetime` (`idsite`,`visit_last_action_time`),
  KEY `index_idsite_idvisitor` (`idsite`,`idvisitor`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_log_visit`
--

LOCK TABLES `matomo_log_visit` WRITE;
/*!40000 ALTER TABLE `matomo_log_visit` DISABLE KEYS */;
INSERT INTO `matomo_log_visit` VALUES (1,1,_binary 'itdr\0\�+','2023-11-20 18:22:01',_binary 'I��\�@�ts',_binary '\n\0\0\0',NULL,'2023-11-20 18:10:55',0,0,0,1,1,2,3,4,4,4,0,NULL,NULL,1,'http://localhost:9999/user/4','en-us','Blink','CH','119.0','','generic desktop',0,'WIN','10',0,'13:10:55','3440x1440',1,0,0,1,0,0,0,0,667,NULL,'us',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,1,NULL,NULL,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `matomo_log_visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_logger_message`
--

DROP TABLE IF EXISTS `matomo_logger_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_logger_message` (
  `idlogger_message` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  `level` varchar(16) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`idlogger_message`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_logger_message`
--

LOCK TABLES `matomo_logger_message` WRITE;
/*!40000 ALTER TABLE `matomo_logger_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_logger_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_option`
--

DROP TABLE IF EXISTS `matomo_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_option` (
  `option_name` varchar(191) NOT NULL,
  `option_value` longtext NOT NULL,
  `autoload` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_option`
--

LOCK TABLES `matomo_option` WRITE;
/*!40000 ALTER TABLE `matomo_option` DISABLE KEYS */;
INSERT INTO `matomo_option` VALUES ('Feedback.nextFeedbackReminder.matomo','2024-05-07',0),('fingerprint_salt_1_2020-08-15','{\"value\":\"olsekxgvlayy3tglpm32118tyv8ifjsm\",\"time\":1597681524}',0),('fingerprint_salt_1_2020-08-16','{\"value\":\"h2zwmggw0sbyx7mk2zue1067e1txhjzl\",\"time\":1597681524}',0),('fingerprint_salt_1_2020-08-17','{\"value\":\"sbwkz4gwy2rj521t9spss6ni1prowe77\",\"time\":1597681524}',0),('fingerprint_salt_1_2020-08-18','{\"value\":\"y2x8t5a1239vziks65lyznh99i5zmge3\",\"time\":1597681523}',0),('fingerprint_salt_1_2023-11-18','{\"value\":\"hgwfbsu2kak0py5pmhdez37rk3i0s6a1\",\"time\":1700503662}',0),('fingerprint_salt_1_2023-11-19','{\"value\":\"d6dtsbw0op0mfz1w60zbtmd9yb8ydom5\",\"time\":1700503662}',0),('fingerprint_salt_1_2023-11-20','{\"value\":\"0g517bkrrglnap9z4alnj6jhslpjh8cs\",\"time\":1700503662}',0),('fingerprint_salt_1_2023-11-21','{\"value\":\"zyr2cxb6chnbg6hoiubouijjygb03mtj\",\"time\":1700503662}',0),('install_version','3.13.4',0),('InvalidatedOldReports_DatesWebsiteIds','a:1:{i:0;s:7:\"2020_04\";}',0),('LastPluginActivation.CustomDimensions','1614482453',0),('LastPluginActivation.CustomJsTracker','1614482450',0),('LastPluginActivation.PagePerformance','1614482452',0),('LastPluginDeactivation.CustomPiwikJs','1614482450',0),('lastTrackerCronRun','1700503855',0),('MatomoUpdateHistory','4.2.0,3.14.0,',0),('MobileMessaging_DelegatedManagement','false',0),('PrivacyManager.doNotTrackEnabled','1',0),('PrivacyManager.ipAnonymizerEnabled','1',0),('SitesManagerHadTrafficInPast_1','1',0),('SitesManager_DefaultTimezone','America/New_York',0),('SocialDefinitions','YToxMzU6e3M6OToiYmFkb28uY29tIjtzOjU6IkJhZG9vIjtzOjg6ImJlYm8uY29tIjtzOjQ6IkJlYm8iO3M6MTU6ImJsYWNrcGxhbmV0LmNvbSI7czoxMToiQmxhY2tQbGFuZXQiO3M6MTE6ImJ1enpuZXQuY29tIjtzOjc6IkJ1enpuZXQiO3M6MTQ6ImNsYXNzbWF0ZXMuY29tIjtzOjE0OiJDbGFzc21hdGVzLmNvbSI7czoxODoiZ2xvYmFsLmN5d29ybGQuY29tIjtzOjc6IkN5d29ybGQiO3M6MTQ6ImdhaWFvbmxpbmUuY29tIjtzOjExOiJHYWlhIE9ubGluZSI7czo4OiJnZW5pLmNvbSI7czo4OiJHZW5pLmNvbSI7czoxMDoiZ2l0aHViLmNvbSI7czo2OiJHaXRIdWIiO3M6MTU6InBsdXMuZ29vZ2xlLmNvbSI7czo5OiJHb29nbGUlMkIiO3M6MTQ6InVybC5nb29nbGUuY29tIjtzOjk6Ikdvb2dsZSUyQiI7czoyODoiY29tLmdvb2dsZS5hbmRyb2lkLmFwcHMucGx1cyI7czo5OiJHb29nbGUlMkIiO3M6MTA6ImRvdWJhbi5jb20iO3M6NjoiRG91YmFuIjtzOjEyOiJkcmliYmJsZS5jb20iO3M6ODoiRHJpYmJibGUiO3M6MTI6ImZhY2Vib29rLmNvbSI7czo4OiJGYWNlYm9vayI7czo1OiJmYi5tZSI7czo4OiJGYWNlYm9vayI7czoxNDoibS5mYWNlYm9vay5jb20iO3M6ODoiRmFjZWJvb2siO3M6MTQ6ImwuZmFjZWJvb2suY29tIjtzOjg6IkZhY2Vib29rIjtzOjExOiJmZXRsaWZlLmNvbSI7czo3OiJGZXRsaWZlIjtzOjEwOiJmbGlja3IuY29tIjtzOjY6IkZsaWNrciI7czoxMjoiZmxpeHN0ZXIuY29tIjtzOjg6IkZsaXhzdGVyIjtzOjExOiJmb3RvbG9nLmNvbSI7czo3OiJGb3RvbG9nIjtzOjE0OiJmb3Vyc3F1YXJlLmNvbSI7czoxMDoiRm91cnNxdWFyZSI7czoxOToiZnJpZW5kc3JldW5pdGVkLmNvbSI7czoxNjoiRnJpZW5kcyBSZXVuaXRlZCI7czoxNDoiZnJpZW5kc3Rlci5jb20iO3M6MTA6IkZyaWVuZHN0ZXIiO3M6NzoiZ3JlZS5qcCI7czo0OiJncmVlIjtzOjk6ImhhYmJvLmNvbSI7czo1OiJIYWJvbyI7czoyMDoibmV3cy55Y29tYmluYXRvci5jb20iO3M6MTE6IkhhY2tlciBOZXdzIjtzOjc6ImhpNS5jb20iO3M6MzoiaGk1IjtzOjg6Imh5dmVzLm5sIjtzOjU6Ikh5dmVzIjtzOjk6ImlkZW50aS5jYSI7czo5OiJpZGVudGkuY2EiO3M6MTM6Imluc3RhZ3JhbS5jb20iO3M6OToiSW5zdGFncmFtIjtzOjE1OiJsLmluc3RhZ3JhbS5jb20iO3M6OToiSW5zdGFncmFtIjtzOjEwOiJsYW5nLTguY29tIjtzOjY6ImxhbmctOCI7czo3OiJsYXN0LmZtIjtzOjc6Ikxhc3QuZm0iO3M6OToibGFzdGZtLnJ1IjtzOjc6Ikxhc3QuZm0iO3M6OToibGFzdGZtLmRlIjtzOjc6Ikxhc3QuZm0iO3M6OToibGFzdGZtLmVzIjtzOjc6Ikxhc3QuZm0iO3M6OToibGFzdGZtLmZyIjtzOjc6Ikxhc3QuZm0iO3M6OToibGFzdGZtLml0IjtzOjc6Ikxhc3QuZm0iO3M6OToibGFzdGZtLmpwIjtzOjc6Ikxhc3QuZm0iO3M6OToibGFzdGZtLnBsIjtzOjc6Ikxhc3QuZm0iO3M6MTM6Imxhc3RmbS5jb20uYnIiO3M6NzoiTGFzdC5mbSI7czo5OiJsYXN0Zm0uc2UiO3M6NzoiTGFzdC5mbSI7czoxMzoibGFzdGZtLmNvbS50ciI7czo3OiJMYXN0LmZtIjtzOjEyOiJsaW5rZWRpbi5jb20iO3M6ODoiTGlua2VkSW4iO3M6NzoibG5rZC5pbiI7czo4OiJMaW5rZWRJbiI7czoxNjoibGlua2VkaW4uYW5kcm9pZCI7czo4OiJMaW5rZWRJbiI7czoxNDoibGl2ZWpvdXJuYWwucnUiO3M6MTE6IkxpdmVKb3VybmFsIjtzOjE1OiJsaXZlam91cm5hbC5jb20iO3M6MTE6IkxpdmVKb3VybmFsIjtzOjE1OiJtYXN0b2Rvbi5zb2NpYWwiO3M6ODoiTWFzdG9kb24iO3M6MTQ6Im1hc3RvZG9uLmNsb3VkIjtzOjg6Ik1hc3RvZG9uIjtzOjE5OiJtYXN0b2Rvbi50ZWNobm9sb2d5IjtzOjg6Ik1hc3RvZG9uIjtzOjEyOiJtYXN0b2Rvbi54eXoiO3M6ODoiTWFzdG9kb24iO3M6MTE6Im1hc3RvZG9uLmF0IjtzOjg6Ik1hc3RvZG9uIjtzOjEyOiJtYXN0b2Rvbi5hcnQiO3M6ODoiTWFzdG9kb24iO3M6ODoibWFtb3QuZnIiO3M6ODoiTWFzdG9kb24iO3M6OToicGF3b28ubmV0IjtzOjg6Ik1hc3RvZG9uIjtzOjg6Im1zdGRuLmlvIjtzOjg6Ik1hc3RvZG9uIjtzOjg6Im1zdGRuLmpwIjtzOjg6Ik1hc3RvZG9uIjtzOjEyOiJmcmllbmRzLm5pY28iO3M6ODoiTWFzdG9kb24iO3M6MTk6InJvLW1hc3RvZG9uLnB1eW8uanAiO3M6ODoiTWFzdG9kb24iO3M6ODoicXVleS5vcmciO3M6ODoiTWFzdG9kb24iO3M6MTI6ImJvdHNpbi5zcGFjZSI7czo4OiJNYXN0b2RvbiI7czoxNjoic29jaWFsLnRjaG5jcy5kZSI7czo4OiJNYXN0b2RvbiI7czo3OiJrbnprLm1lIjtzOjg6Ik1hc3RvZG9uIjtzOjEzOiJtYXN0b2RvbnQuY2F0IjtzOjg6Ik1hc3RvZG9uIjtzOjE4OiJiaXRjb2luaGFja2Vycy5vcmciO3M6ODoiTWFzdG9kb24iO3M6MTM6ImZvc3N0b2Rvbi5vcmciO3M6ODoiTWFzdG9kb24iO3M6MTI6ImNoYW9zLnNvY2lhbCI7czo4OiJNYXN0b2RvbiI7czoxMToiY3licmUuc3BhY2UiO3M6ODoiTWFzdG9kb24iO3M6MTA6InZpcy5zb2NpYWwiO3M6ODoiTWFzdG9kb24iO3M6MTA6Im1laW52ei5uZXQiO3M6NjoiTWVpblZaIjtzOjc6Im1peGkuanAiO3M6NDoiTWl4aSI7czoxMDoibW9pa3J1Zy5ydSI7czoxMDoiTW9pS3J1Zy5ydSI7czoxMjoibXVsdGlwbHkuY29tIjtzOjg6Ik11bHRpcGx5IjtzOjEwOiJteS5tYWlsLnJ1IjtzOjEwOiJteS5tYWlsLnJ1IjtzOjE0OiJteWhlcml0YWdlLmNvbSI7czoxMDoiTXlIZXJpdGFnZSI7czo5OiJteWxpZmUucnUiO3M6NjoiTXlMaWZlIjtzOjExOiJteXNwYWNlLmNvbSI7czo3OiJNeXNwYWNlIjtzOjE0OiJteXllYXJib29rLmNvbSI7czoxMDoibXlZZWFyYm9vayI7czo1OiJuay5wbCI7czoxNDoiTmFzemEta2xhc2EucGwiO3M6MTA6Im5ldGxvZy5jb20iO3M6NjoiTmV0bG9nIjtzOjE2OiJvZG5va2xhc3NuaWtpLnJ1IjtzOjEzOiJPZG5va2xhc3NuaWtpIjtzOjk6Im9ya3V0LmNvbSI7czo1OiJPcmt1dCI7czoxMjoicXpvbmUucXEuY29tIjtzOjU6Ik96b25lIjtzOjExOiJwZWVwZXRoLmNvbSI7czo3OiJQZWVwZXRoIjtzOjEzOiJwaW50ZXJlc3QuY29tIjtzOjk6IlBpbnRlcmVzdCI7czoxMjoicGludGVyZXN0LmNhIjtzOjk6IlBpbnRlcmVzdCI7czoxMjoicGludGVyZXN0LmNoIjtzOjk6IlBpbnRlcmVzdCI7czoxNToicGludGVyZXN0LmNvLnVrIjtzOjk6IlBpbnRlcmVzdCI7czoxMjoicGludGVyZXN0LmRlIjtzOjk6IlBpbnRlcmVzdCI7czoxMjoicGludGVyZXN0LmRrIjtzOjk6IlBpbnRlcmVzdCI7czoxMjoicGludGVyZXN0LmVzIjtzOjk6IlBpbnRlcmVzdCI7czoxMjoicGludGVyZXN0LmZyIjtzOjk6IlBpbnRlcmVzdCI7czoxMjoicGludGVyZXN0LmllIjtzOjk6IlBpbnRlcmVzdCI7czoxMjoicGludGVyZXN0LmpwIjtzOjk6IlBpbnRlcmVzdCI7czoxMjoicGludGVyZXN0Lm56IjtzOjk6IlBpbnRlcmVzdCI7czoxMjoicGludGVyZXN0LnB0IjtzOjk6IlBpbnRlcmVzdCI7czoxMjoicGludGVyZXN0LnNlIjtzOjk6IlBpbnRlcmVzdCI7czo5OiJwbGF4by5jb20iO3M6NToiUGxheG8iO3M6MTA6InJlZGRpdC5jb20iO3M6NjoicmVkZGl0IjtzOjEzOiJucC5yZWRkaXQuY29tIjtzOjY6InJlZGRpdCI7czoxNDoicGF5LnJlZGRpdC5jb20iO3M6NjoicmVkZGl0IjtzOjEwOiJyZW5yZW4uY29tIjtzOjY6IlJlbnJlbiI7czoxMToic2t5cm9jay5jb20iO3M6NzoiU2t5cm9jayI7czoxMDoic29uaWNvLmNvbSI7czoxMDoiU29uaWNvLmNvbSI7czoxNzoic3RhY2tvdmVyZmxvdy5jb20iO3M6MTM6IlN0YWNrT3ZlcmZsb3ciO3M6MTE6InN0dWRpdnoubmV0IjtzOjc6IlN0dWRpVloiO3M6MTY6ImxvZ2luLnRhZ2dlZC5jb20iO3M6NjoiVGFnZ2VkIjtzOjExOiJ0YXJpbmdhLm5ldCI7czo4OiJUYXJpbmdhISI7czoxNjoid2ViLnRlbGVncmFtLm9yZyI7czo4OiJUZWxlZ3JhbSI7czoyMjoib3JnLnRlbGVncmFtLm1lc3NlbmdlciI7czo4OiJUZWxlZ3JhbSI7czoxMDoidHVlbnRpLmNvbSI7czo2OiJUdWVudGkiO3M6MTA6InR1bWJsci5jb20iO3M6NjoidHVtYmxyIjtzOjExOiJ0LnVtYmxyLmNvbSI7czo2OiJ0dW1ibHIiO3M6MTE6InR3aXR0ZXIuY29tIjtzOjc6IlR3aXR0ZXIiO3M6NDoidC5jbyI7czo3OiJUd2l0dGVyIjtzOjE1OiJzb3VyY2Vmb3JnZS5uZXQiO3M6MTE6IlNvdXJjZWZvcmdlIjtzOjE1OiJzdHVtYmxldXBvbi5jb20iO3M6MTE6IlN0dW1ibGVVcG9uIjtzOjY6InZrLmNvbSI7czo5OiJWa29udGFrdGUiO3M6MTI6InZrb250YWt0ZS5ydSI7czo5OiJWa29udGFrdGUiO3M6MTE6InlvdXR1YmUuY29tIjtzOjc6IllvdVR1YmUiO3M6ODoieW91dHUuYmUiO3M6NzoiWW91VHViZSI7czo4OiJ2MmV4LmNvbSI7czo0OiJWMkVYIjtzOjEwOiJ2aWFkZW8uY29tIjtzOjY6IlZpYWRlbyI7czo5OiJ2aW1lby5jb20iO3M6NToiVmltZW8iO3M6MTU6InZrcnVndWRydXplaS5ydSI7czoxNToidmtydWd1ZHJ1emVpLnJ1IjtzOjg6IndheW4uY29tIjtzOjQ6IldBWU4iO3M6OToid2VpYm8uY29tIjtzOjU6IldlaWJvIjtzOjQ6InQuY24iO3M6NToiV2VpYm8iO3M6MTI6IndlZXdvcmxkLmNvbSI7czo4OiJXZWVXb3JsZCI7czoxNDoibG9naW4ubGl2ZS5jb20iO3M6MTk6IldpbmRvd3MgTGl2ZSBTcGFjZXMiO3M6OToieGFuZ2EuY29tIjtzOjU6IlhhbmdhIjtzOjg6InhpbmcuY29tIjtzOjQ6IlhJTkciO30=',0),('TaskScheduler.timetable','a:25:{s:60:\"Piwik\\Plugins\\CoreAdminHome\\Tasks.invalidateOutdatedArchives\";i:1700524855;s:59:\"Piwik\\Plugins\\CoreAdminHome\\Tasks.deleteOldFingerprintSalts\";i:1700524855;s:55:\"Piwik\\Plugins\\CoreAdminHome\\Tasks.purgeOutdatedArchives\";i:1700524855;s:55:\"Piwik\\Plugins\\CoreAdminHome\\Tasks.purgeOrphanedArchives\";i:1701043255;s:51:\"Piwik\\Plugins\\CoreAdminHome\\Tasks.updateSpammerList\";i:1701043255;s:49:\"Piwik\\Plugins\\Referrers\\Tasks.updateSearchEngines\";i:1701043255;s:43:\"Piwik\\Plugins\\Referrers\\Tasks.updateSocials\";i:1701043255;s:47:\"Piwik\\Plugins\\Login\\Tasks.cleanupBruteForceLogs\";i:1700524855;s:63:\"Piwik\\Plugins\\TwoFactorAuth\\Tasks.cleanupTwoFaCodesUsedRecently\";i:1700524855;s:53:\"Piwik\\Plugins\\UsersManager\\Tasks.cleanupExpiredTokens\";i:1700524855;s:63:\"Piwik\\Plugins\\UsersManager\\Tasks.setUserDefaultReportPreference\";i:1700524855;s:54:\"Piwik\\Plugins\\UsersManager\\Tasks.cleanUpExpiredInvites\";i:1700524855;s:58:\"Piwik\\Plugins\\CoreAdminHome\\Tasks.purgeInvalidatedArchives\";i:1700524855;s:67:\"Piwik\\Plugins\\CoreAdminHome\\Tasks.purgeInvalidationsForDeletedSites\";i:1700524855;s:51:\"Piwik\\Plugins\\PrivacyManager\\Tasks.deleteReportData\";i:1700524855;s:48:\"Piwik\\Plugins\\PrivacyManager\\Tasks.deleteLogData\";i:1700506855;s:52:\"Piwik\\Plugins\\PrivacyManager\\Tasks.anonymizePastData\";i:1700506855;s:63:\"Piwik\\Plugins\\PrivacyManager\\Tasks.deleteLogDataForDeletedSites\";i:1701043255;s:54:\"Piwik\\Plugins\\CoreAdminHome\\Tasks.optimizeArchiveTable\";i:1701388855;s:57:\"Piwik\\Plugins\\CoreAdminHome\\Tasks.cleanupTrackingFailures\";i:1700524855;s:56:\"Piwik\\Plugins\\CoreAdminHome\\Tasks.notifyTrackingFailures\";i:1701043255;s:45:\"Piwik\\Plugins\\GeoIp2\\GeoIP2AutoUpdater.update\";i:1701820855;s:65:\"Piwik\\Plugins\\CoreUpdater\\Tasks.sendNotificationIfUpdateAvailable\";i:1700524855;s:52:\"Piwik\\Plugins\\Marketplace\\Tasks.clearAllCacheEntries\";i:1700524855;s:66:\"Piwik\\Plugins\\Marketplace\\Tasks.sendNotificationIfUpdatesAvailable\";i:1700524855;}',0),('TransactionLevel.testOption','1',0),('UpdateCheck_LastTimeChecked','1700503596',1),('UpdateCheck_LatestVersion','4.15.1',0),('useridsalt','57FHl6T1CJSj_UIlLoVlEE6UP8cikpJdpPAAcMM6',1),('UsersManager.lastSeen.matomo','1700503650',1),('version_Actions','4.15.1',1),('version_Annotations','4.15.1',1),('version_API','4.15.1',1),('version_BulkTracking','4.15.1',1),('version_Contents','4.15.1',1),('version_core','4.15.1',1),('version_CoreAdminHome','4.15.1',1),('version_CoreConsole','4.15.1',1),('version_CoreHome','4.15.1',1),('version_CorePluginsAdmin','4.15.1',1),('version_CoreUpdater','4.15.1',1),('version_CoreVisualizations','4.15.1',1),('version_CoreVue','4.15.1',1),('version_CustomDimensions','4.2.0',1),('version_CustomJsTracker','4.2.0',1),('version_Dashboard','4.15.1',1),('version_DevicePlugins','4.15.1',1),('version_DevicesDetection','4.15.1',1),('version_Diagnostics','4.15.1',1),('version_Ecommerce','4.15.1',1),('version_Events','4.15.1',1),('version_Feedback','4.15.1',1),('version_GeoIp2','4.15.1',1),('version_Goals','4.15.1',1),('version_Heartbeat','4.15.1',1),('version_ImageGraph','4.15.1',1),('version_Insights','4.15.1',1),('version_Installation','4.15.1',1),('version_Intl','4.15.1',1),('version_IntranetMeasurable','4.15.1',1),('version_LanguagesManager','4.15.1',1),('version_Live','4.15.1',1),('version_Login','4.15.1',1),('version_log_conversion.revenue','float default NULL',1),('version_log_conversion.revenue_discount','float default NULL',1),('version_log_conversion.revenue_shipping','float default NULL',1),('version_log_conversion.revenue_subtotal','float default NULL',1),('version_log_conversion.revenue_tax','float default NULL',1),('version_log_conversion.visitor_seconds_since_first','INT(11) UNSIGNED NULL',1),('version_log_conversion.visitor_seconds_since_order','INT(11) UNSIGNED NULL',1),('version_log_link_visit_action.idaction_content_interaction','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idaction_content_name','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idaction_content_piece','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idaction_content_target','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idaction_event_action','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idaction_event_category','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idaction_name','INTEGER(10) UNSIGNED',1),('version_log_link_visit_action.idaction_product_cat','INT(10) UNSIGNED NULL',1),('version_log_link_visit_action.idaction_product_cat2','INT(10) UNSIGNED NULL',1),('version_log_link_visit_action.idaction_product_cat3','INT(10) UNSIGNED NULL',1),('version_log_link_visit_action.idaction_product_cat4','INT(10) UNSIGNED NULL',1),('version_log_link_visit_action.idaction_product_cat5','INT(10) UNSIGNED NULL',1),('version_log_link_visit_action.idaction_product_name','INT(10) UNSIGNED NULL',1),('version_log_link_visit_action.idaction_product_sku','INT(10) UNSIGNED NULL',1),('version_log_link_visit_action.idaction_url','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idpageview','CHAR(6) NULL DEFAULT NULL',1),('version_log_link_visit_action.interaction_position','SMALLINT UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.product_price','DOUBLE NULL',1),('version_log_link_visit_action.search_cat','VARCHAR(200) NULL',1),('version_log_link_visit_action.search_count','INTEGER(10) UNSIGNED NULL',1),('version_log_link_visit_action.server_time','DATETIME NOT NULL',1),('version_log_link_visit_action.time_dom_completion','MEDIUMINT(10) UNSIGNED NULL',1),('version_log_link_visit_action.time_dom_processing','MEDIUMINT(10) UNSIGNED NULL',1),('version_log_link_visit_action.time_network','MEDIUMINT(10) UNSIGNED NULL',1),('version_log_link_visit_action.time_on_load','MEDIUMINT(10) UNSIGNED NULL',1),('version_log_link_visit_action.time_server','MEDIUMINT(10) UNSIGNED NULL',1),('version_log_link_visit_action.time_spent_ref_action','INTEGER(10) UNSIGNED NULL',1),('version_log_link_visit_action.time_transfer','MEDIUMINT(10) UNSIGNED NULL',1),('version_log_visit.config_browser_engine','VARCHAR(10) NULL',1),('version_log_visit.config_browser_name','VARCHAR(40) NULL1',1),('version_log_visit.config_browser_version','VARCHAR(20) NULL',1),('version_log_visit.config_client_type','TINYINT( 1 ) NULL DEFAULT NULL1',1),('version_log_visit.config_cookie','TINYINT(1) NULL',1),('version_log_visit.config_device_brand','VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL1',1),('version_log_visit.config_device_model','VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL1',1),('version_log_visit.config_device_type','TINYINT( 100 ) NULL DEFAULT NULL1',1),('version_log_visit.config_director','TINYINT(1) NULL',1),('version_log_visit.config_flash','TINYINT(1) NULL',1),('version_log_visit.config_gears','TINYINT(1) NULL',1),('version_log_visit.config_java','TINYINT(1) NULL',1),('version_log_visit.config_os','CHAR(3) NULL',1),('version_log_visit.config_os_version','VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL',1),('version_log_visit.config_pdf','TINYINT(1) NULL',1),('version_log_visit.config_quicktime','TINYINT(1) NULL',1),('version_log_visit.config_realplayer','TINYINT(1) NULL',1),('version_log_visit.config_resolution','VARCHAR(18) NULL',1),('version_log_visit.config_silverlight','TINYINT(1) NULL',1),('version_log_visit.config_windowsmedia','TINYINT(1) NULL',1),('version_log_visit.location_browser_lang','VARCHAR(20) NULL',1),('version_log_visit.location_city','varchar(255) DEFAULT NULL1',1),('version_log_visit.location_country','CHAR(3) NULL1',1),('version_log_visit.location_latitude','decimal(9, 6) DEFAULT NULL1',1),('version_log_visit.location_longitude','decimal(9, 6) DEFAULT NULL1',1),('version_log_visit.location_region','char(3) DEFAULT NULL1',1),('version_log_visit.profilable','TINYINT(1) NULL',1),('version_log_visit.referer_keyword','VARCHAR(255) NULL1',1),('version_log_visit.referer_name','VARCHAR(255) NULL1',1),('version_log_visit.referer_type','TINYINT(1) UNSIGNED NULL1',1),('version_log_visit.referer_url','VARCHAR(1500) NULL',1),('version_log_visit.user_id','VARCHAR(200) NULL',1),('version_log_visit.visitor_count_visits','INT(11) UNSIGNED NOT NULL DEFAULT 01',1),('version_log_visit.visitor_days_since_first','SMALLINT(5) UNSIGNED NULL1',1),('version_log_visit.visitor_days_since_last','SMALLINT(5) UNSIGNED NULL',1),('version_log_visit.visitor_days_since_order','SMALLINT(5) UNSIGNED NULL1',1),('version_log_visit.visitor_localtime','TIME NULL',1),('version_log_visit.visitor_returning','TINYINT(1) NULL1',1),('version_log_visit.visitor_seconds_since_first','INT(11) UNSIGNED NULL1',1),('version_log_visit.visitor_seconds_since_last','INT(11) UNSIGNED NULL',1),('version_log_visit.visitor_seconds_since_order','INT(11) UNSIGNED NULL1',1),('version_log_visit.visit_entry_idaction_name','INTEGER(10) UNSIGNED NULL',1),('version_log_visit.visit_entry_idaction_url','INTEGER(11) UNSIGNED NULL  DEFAULT NULL',1),('version_log_visit.visit_exit_idaction_name','INTEGER(10) UNSIGNED NULL',1),('version_log_visit.visit_exit_idaction_url','INTEGER(10) UNSIGNED NULL DEFAULT 0',1),('version_log_visit.visit_first_action_time','DATETIME NOT NULL',1),('version_log_visit.visit_goal_buyer','TINYINT(1) NULL',1),('version_log_visit.visit_goal_converted','TINYINT(1) NULL',1),('version_log_visit.visit_total_actions','INT(11) UNSIGNED NULL',1),('version_log_visit.visit_total_events','INT(11) UNSIGNED NULL',1),('version_log_visit.visit_total_interactions','MEDIUMINT UNSIGNED DEFAULT 0',1),('version_log_visit.visit_total_searches','SMALLINT(5) UNSIGNED NULL',1),('version_log_visit.visit_total_time','INT(11) UNSIGNED NOT NULL',1),('version_Marketplace','4.15.1',1),('version_MobileMessaging','4.15.1',1),('version_Monolog','4.15.1',1),('version_Morpheus','4.15.1',1),('version_MultiSites','4.15.1',1),('version_Overlay','4.15.1',1),('version_PagePerformance','4.2.0',1),('version_PrivacyManager','4.15.1',1),('version_ProfessionalServices','4.15.1',1),('version_Proxy','4.15.1',1),('version_Referrers','4.15.1',1),('version_Resolution','4.15.1',1),('version_RssWidget','1.0',1),('version_ScheduledReports','4.15.1',1),('version_SegmentEditor','4.15.1',1),('version_SEO','4.15.1',1),('version_SitesManager','4.15.1',1),('version_Tour','4.15.1',1),('version_Transitions','4.15.1',1),('version_TwoFactorAuth','4.15.1',1),('version_UserCountry','4.15.1',1),('version_UserCountryMap','4.15.1',1),('version_UserId','4.15.1',1),('version_UserLanguage','4.15.1',1),('version_UsersManager','4.15.1',1),('version_VisitFrequency','4.15.1',1),('version_VisitorInterest','4.15.1',1),('version_VisitsSummary','4.15.1',1),('version_VisitTime','4.15.1',1),('version_WebsiteMeasurable','4.15.1',1),('version_Widgetize','4.15.1',1);
/*!40000 ALTER TABLE `matomo_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_plugin_setting`
--

DROP TABLE IF EXISTS `matomo_plugin_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_plugin_setting` (
  `plugin_name` varchar(60) NOT NULL,
  `setting_name` varchar(255) NOT NULL,
  `setting_value` longtext NOT NULL,
  `json_encoded` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_login` varchar(100) NOT NULL DEFAULT '',
  `idplugin_setting` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idplugin_setting`),
  KEY `plugin_name` (`plugin_name`,`user_login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_plugin_setting`
--

LOCK TABLES `matomo_plugin_setting` WRITE;
/*!40000 ALTER TABLE `matomo_plugin_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_plugin_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_privacy_logdata_anonymizations`
--

DROP TABLE IF EXISTS `matomo_privacy_logdata_anonymizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_privacy_logdata_anonymizations` (
  `idlogdata_anonymization` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `idsites` text,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `anonymize_ip` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `anonymize_location` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `anonymize_userid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `unset_visit_columns` text NOT NULL,
  `unset_link_visit_action_columns` text NOT NULL,
  `output` mediumtext,
  `scheduled_date` datetime DEFAULT NULL,
  `job_start_date` datetime DEFAULT NULL,
  `job_finish_date` datetime DEFAULT NULL,
  `requester` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`idlogdata_anonymization`),
  KEY `job_start_date` (`job_start_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_privacy_logdata_anonymizations`
--

LOCK TABLES `matomo_privacy_logdata_anonymizations` WRITE;
/*!40000 ALTER TABLE `matomo_privacy_logdata_anonymizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_privacy_logdata_anonymizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_report`
--

DROP TABLE IF EXISTS `matomo_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_report` (
  `idreport` int(11) NOT NULL AUTO_INCREMENT,
  `idsite` int(11) NOT NULL,
  `login` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `idsegment` int(11) DEFAULT NULL,
  `period` varchar(10) NOT NULL,
  `hour` tinyint(4) NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL,
  `format` varchar(10) NOT NULL,
  `reports` text NOT NULL,
  `parameters` text,
  `ts_created` timestamp NULL DEFAULT NULL,
  `ts_last_sent` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `evolution_graph_within_period` tinyint(4) NOT NULL DEFAULT '0',
  `evolution_graph_period_n` int(11) NOT NULL,
  `period_param` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idreport`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_report`
--

LOCK TABLES `matomo_report` WRITE;
/*!40000 ALTER TABLE `matomo_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_report_subscriptions`
--

DROP TABLE IF EXISTS `matomo_report_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_report_subscriptions` (
  `idreport` int(11) NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `ts_subscribed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ts_unsubscribed` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idreport`,`email`),
  UNIQUE KEY `unique_token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_report_subscriptions`
--

LOCK TABLES `matomo_report_subscriptions` WRITE;
/*!40000 ALTER TABLE `matomo_report_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_report_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_segment`
--

DROP TABLE IF EXISTS `matomo_segment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_segment` (
  `idsegment` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `definition` text NOT NULL,
  `hash` char(32) DEFAULT NULL,
  `login` varchar(100) NOT NULL,
  `enable_all_users` tinyint(4) NOT NULL DEFAULT '0',
  `enable_only_idsite` int(11) DEFAULT NULL,
  `auto_archive` tinyint(4) NOT NULL DEFAULT '0',
  `ts_created` timestamp NULL DEFAULT NULL,
  `ts_last_edit` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idsegment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_segment`
--

LOCK TABLES `matomo_segment` WRITE;
/*!40000 ALTER TABLE `matomo_segment` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_segment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_sequence`
--

DROP TABLE IF EXISTS `matomo_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_sequence` (
  `name` varchar(120) NOT NULL,
  `value` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_sequence`
--

LOCK TABLES `matomo_sequence` WRITE;
/*!40000 ALTER TABLE `matomo_sequence` DISABLE KEYS */;
INSERT INTO `matomo_sequence` VALUES ('matomo_archive_numeric_2000_01',2),('matomo_archive_numeric_2000_02',0),('matomo_archive_numeric_2000_03',0),('matomo_archive_numeric_2000_04',0),('matomo_archive_numeric_2000_05',0),('matomo_archive_numeric_2000_06',0),('matomo_archive_numeric_2000_07',0),('matomo_archive_numeric_2000_08',0),('matomo_archive_numeric_2000_09',0),('matomo_archive_numeric_2000_10',0),('matomo_archive_numeric_2000_11',0),('matomo_archive_numeric_2000_12',0),('matomo_archive_numeric_2001_01',0),('matomo_archive_numeric_2001_02',0),('matomo_archive_numeric_2001_03',0),('matomo_archive_numeric_2001_04',0),('matomo_archive_numeric_2001_05',0),('matomo_archive_numeric_2001_06',0),('matomo_archive_numeric_2001_07',0),('matomo_archive_numeric_2001_08',0),('matomo_archive_numeric_2001_09',0),('matomo_archive_numeric_2001_10',0),('matomo_archive_numeric_2001_11',0),('matomo_archive_numeric_2001_12',0),('matomo_archive_numeric_2002_01',0),('matomo_archive_numeric_2002_02',0),('matomo_archive_numeric_2002_03',0),('matomo_archive_numeric_2002_04',0),('matomo_archive_numeric_2002_05',0),('matomo_archive_numeric_2002_06',0),('matomo_archive_numeric_2002_07',0),('matomo_archive_numeric_2002_08',0),('matomo_archive_numeric_2002_09',0),('matomo_archive_numeric_2002_10',0),('matomo_archive_numeric_2002_11',0),('matomo_archive_numeric_2002_12',0),('matomo_archive_numeric_2003_01',0),('matomo_archive_numeric_2003_02',0),('matomo_archive_numeric_2003_03',0),('matomo_archive_numeric_2003_04',0),('matomo_archive_numeric_2003_05',0),('matomo_archive_numeric_2003_06',0),('matomo_archive_numeric_2003_07',0),('matomo_archive_numeric_2003_08',0),('matomo_archive_numeric_2003_09',0),('matomo_archive_numeric_2003_10',0),('matomo_archive_numeric_2003_11',0),('matomo_archive_numeric_2003_12',0),('matomo_archive_numeric_2004_01',0),('matomo_archive_numeric_2004_02',0),('matomo_archive_numeric_2004_03',0),('matomo_archive_numeric_2004_04',0),('matomo_archive_numeric_2004_05',0),('matomo_archive_numeric_2004_06',0),('matomo_archive_numeric_2004_07',0),('matomo_archive_numeric_2004_08',0),('matomo_archive_numeric_2004_09',0),('matomo_archive_numeric_2004_10',0),('matomo_archive_numeric_2004_11',0),('matomo_archive_numeric_2004_12',0),('matomo_archive_numeric_2005_01',0),('matomo_archive_numeric_2005_02',0),('matomo_archive_numeric_2005_03',0),('matomo_archive_numeric_2005_04',0),('matomo_archive_numeric_2005_05',0),('matomo_archive_numeric_2005_06',0),('matomo_archive_numeric_2005_07',0),('matomo_archive_numeric_2005_08',0),('matomo_archive_numeric_2005_09',0),('matomo_archive_numeric_2005_10',0),('matomo_archive_numeric_2005_11',0),('matomo_archive_numeric_2005_12',0),('matomo_archive_numeric_2006_01',0),('matomo_archive_numeric_2006_02',0),('matomo_archive_numeric_2006_03',0),('matomo_archive_numeric_2006_04',0),('matomo_archive_numeric_2006_05',0),('matomo_archive_numeric_2006_06',0),('matomo_archive_numeric_2006_07',0),('matomo_archive_numeric_2006_08',0),('matomo_archive_numeric_2006_09',0),('matomo_archive_numeric_2006_10',0),('matomo_archive_numeric_2006_11',0),('matomo_archive_numeric_2006_12',0),('matomo_archive_numeric_2007_01',0),('matomo_archive_numeric_2007_02',0),('matomo_archive_numeric_2007_03',0),('matomo_archive_numeric_2007_04',0),('matomo_archive_numeric_2007_05',0),('matomo_archive_numeric_2007_06',0),('matomo_archive_numeric_2007_07',0),('matomo_archive_numeric_2007_08',0),('matomo_archive_numeric_2007_09',0),('matomo_archive_numeric_2007_10',0),('matomo_archive_numeric_2007_11',0),('matomo_archive_numeric_2007_12',0),('matomo_archive_numeric_2008_01',0),('matomo_archive_numeric_2008_02',0),('matomo_archive_numeric_2008_03',0),('matomo_archive_numeric_2008_04',0),('matomo_archive_numeric_2008_05',0),('matomo_archive_numeric_2008_06',0),('matomo_archive_numeric_2008_07',0),('matomo_archive_numeric_2008_08',0),('matomo_archive_numeric_2008_09',0),('matomo_archive_numeric_2008_10',0),('matomo_archive_numeric_2008_11',0),('matomo_archive_numeric_2008_12',0),('matomo_archive_numeric_2009_01',0),('matomo_archive_numeric_2009_02',0),('matomo_archive_numeric_2009_03',0),('matomo_archive_numeric_2009_04',0),('matomo_archive_numeric_2009_05',0),('matomo_archive_numeric_2009_06',0),('matomo_archive_numeric_2009_07',0),('matomo_archive_numeric_2009_08',0),('matomo_archive_numeric_2009_09',0),('matomo_archive_numeric_2009_10',0),('matomo_archive_numeric_2009_11',0),('matomo_archive_numeric_2009_12',0),('matomo_archive_numeric_2010_01',0),('matomo_archive_numeric_2010_02',0),('matomo_archive_numeric_2010_03',0),('matomo_archive_numeric_2010_04',0),('matomo_archive_numeric_2010_05',0),('matomo_archive_numeric_2010_06',0),('matomo_archive_numeric_2010_07',0),('matomo_archive_numeric_2010_08',0),('matomo_archive_numeric_2010_09',0),('matomo_archive_numeric_2010_10',0),('matomo_archive_numeric_2010_11',0),('matomo_archive_numeric_2010_12',0),('matomo_archive_numeric_2011_01',0),('matomo_archive_numeric_2011_02',0),('matomo_archive_numeric_2011_03',0),('matomo_archive_numeric_2011_04',0),('matomo_archive_numeric_2011_05',0),('matomo_archive_numeric_2011_06',0),('matomo_archive_numeric_2011_07',0),('matomo_archive_numeric_2011_08',0),('matomo_archive_numeric_2011_09',0),('matomo_archive_numeric_2011_10',0),('matomo_archive_numeric_2011_11',0),('matomo_archive_numeric_2011_12',0),('matomo_archive_numeric_2012_01',0),('matomo_archive_numeric_2012_02',0),('matomo_archive_numeric_2012_03',0),('matomo_archive_numeric_2012_04',0),('matomo_archive_numeric_2012_05',0),('matomo_archive_numeric_2012_06',0),('matomo_archive_numeric_2012_07',0),('matomo_archive_numeric_2012_08',0),('matomo_archive_numeric_2012_09',0),('matomo_archive_numeric_2012_10',0),('matomo_archive_numeric_2012_11',0),('matomo_archive_numeric_2012_12',0),('matomo_archive_numeric_2013_01',0),('matomo_archive_numeric_2013_02',0),('matomo_archive_numeric_2013_03',0),('matomo_archive_numeric_2013_04',0),('matomo_archive_numeric_2013_05',0),('matomo_archive_numeric_2013_06',0),('matomo_archive_numeric_2013_07',0),('matomo_archive_numeric_2013_08',0),('matomo_archive_numeric_2013_09',0),('matomo_archive_numeric_2013_10',0),('matomo_archive_numeric_2013_11',0),('matomo_archive_numeric_2013_12',0),('matomo_archive_numeric_2014_01',0),('matomo_archive_numeric_2014_02',0),('matomo_archive_numeric_2014_03',0),('matomo_archive_numeric_2014_04',0),('matomo_archive_numeric_2014_05',0),('matomo_archive_numeric_2014_06',0),('matomo_archive_numeric_2014_07',0),('matomo_archive_numeric_2014_08',0),('matomo_archive_numeric_2014_09',0),('matomo_archive_numeric_2014_10',0),('matomo_archive_numeric_2014_11',0),('matomo_archive_numeric_2014_12',0),('matomo_archive_numeric_2015_01',0),('matomo_archive_numeric_2015_02',0),('matomo_archive_numeric_2015_03',0),('matomo_archive_numeric_2015_04',0),('matomo_archive_numeric_2015_05',0),('matomo_archive_numeric_2015_06',0),('matomo_archive_numeric_2015_07',0),('matomo_archive_numeric_2015_08',0),('matomo_archive_numeric_2015_09',0),('matomo_archive_numeric_2015_10',0),('matomo_archive_numeric_2015_11',0),('matomo_archive_numeric_2015_12',0),('matomo_archive_numeric_2016_01',0),('matomo_archive_numeric_2016_02',0),('matomo_archive_numeric_2016_03',0),('matomo_archive_numeric_2016_04',0),('matomo_archive_numeric_2016_05',0),('matomo_archive_numeric_2016_06',0),('matomo_archive_numeric_2016_07',0),('matomo_archive_numeric_2016_08',0),('matomo_archive_numeric_2016_09',0),('matomo_archive_numeric_2016_10',0),('matomo_archive_numeric_2016_11',0),('matomo_archive_numeric_2016_12',0),('matomo_archive_numeric_2017_01',0),('matomo_archive_numeric_2017_02',0),('matomo_archive_numeric_2017_03',0),('matomo_archive_numeric_2017_04',0),('matomo_archive_numeric_2017_05',0),('matomo_archive_numeric_2017_06',0),('matomo_archive_numeric_2017_07',0),('matomo_archive_numeric_2017_08',0),('matomo_archive_numeric_2017_09',0),('matomo_archive_numeric_2017_10',0),('matomo_archive_numeric_2017_11',0),('matomo_archive_numeric_2017_12',0),('matomo_archive_numeric_2018_01',0),('matomo_archive_numeric_2018_02',0),('matomo_archive_numeric_2018_03',0),('matomo_archive_numeric_2018_04',0),('matomo_archive_numeric_2018_05',0),('matomo_archive_numeric_2018_06',0),('matomo_archive_numeric_2018_07',0),('matomo_archive_numeric_2018_08',0),('matomo_archive_numeric_2018_09',0),('matomo_archive_numeric_2018_10',0),('matomo_archive_numeric_2018_11',0),('matomo_archive_numeric_2018_12',0),('matomo_archive_numeric_2019_01',0),('matomo_archive_numeric_2019_02',0),('matomo_archive_numeric_2019_03',0),('matomo_archive_numeric_2019_04',0),('matomo_archive_numeric_2019_05',0),('matomo_archive_numeric_2019_06',0),('matomo_archive_numeric_2019_07',0),('matomo_archive_numeric_2019_08',0),('matomo_archive_numeric_2019_09',0),('matomo_archive_numeric_2019_10',0),('matomo_archive_numeric_2019_11',0),('matomo_archive_numeric_2019_12',0),('matomo_archive_numeric_2020_01',1),('matomo_archive_numeric_2020_02',0),('matomo_archive_numeric_2020_03',0),('matomo_archive_numeric_2020_04',2),('matomo_archive_numeric_2020_05',0),('matomo_archive_numeric_2020_06',0),('matomo_archive_numeric_2020_07',0),('matomo_archive_numeric_2020_08',0),('matomo_archive_numeric_2020_09',0),('matomo_archive_numeric_2020_10',0),('matomo_archive_numeric_2020_11',0),('matomo_archive_numeric_2020_12',0),('matomo_archive_numeric_2021_01',0),('matomo_archive_numeric_2021_02',0),('matomo_archive_numeric_2021_03',0),('matomo_archive_numeric_2021_04',0),('matomo_archive_numeric_2021_05',0),('matomo_archive_numeric_2021_06',0),('matomo_archive_numeric_2021_07',0),('matomo_archive_numeric_2021_08',0),('matomo_archive_numeric_2021_09',0),('matomo_archive_numeric_2021_10',0),('matomo_archive_numeric_2021_11',0),('matomo_archive_numeric_2021_12',0),('matomo_archive_numeric_2022_01',0),('matomo_archive_numeric_2022_02',0),('matomo_archive_numeric_2022_03',0),('matomo_archive_numeric_2022_04',0),('matomo_archive_numeric_2022_05',0),('matomo_archive_numeric_2022_06',0),('matomo_archive_numeric_2022_07',0),('matomo_archive_numeric_2022_08',0),('matomo_archive_numeric_2022_09',0),('matomo_archive_numeric_2022_10',0),('matomo_archive_numeric_2022_11',0),('matomo_archive_numeric_2022_12',0),('matomo_archive_numeric_2023_01',0),('matomo_archive_numeric_2023_02',0),('matomo_archive_numeric_2023_03',0),('matomo_archive_numeric_2023_04',0),('matomo_archive_numeric_2023_05',0),('matomo_archive_numeric_2023_06',0),('matomo_archive_numeric_2023_07',0),('matomo_archive_numeric_2023_08',0),('matomo_archive_numeric_2023_09',0),('matomo_archive_numeric_2023_10',0),('matomo_archive_numeric_2023_11',9),('matomo_archive_numeric_2023_12',0);
/*!40000 ALTER TABLE `matomo_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_session`
--

DROP TABLE IF EXISTS `matomo_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_session` (
  `id` varchar(191) NOT NULL,
  `modified` int(11) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `data` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_session`
--

LOCK TABLES `matomo_session` WRITE;
/*!40000 ALTER TABLE `matomo_session` DISABLE KEYS */;
INSERT INTO `matomo_session` VALUES ('3fc845081012ff849bfc458ad359da17933fc2ff55a2e185d70b883a319cee810686365b4e9c2e961da0e6e5aaa033f18adc85ea4f76c9bcb033fbdbb42864a1',1700503868,1209600,'a:1:{s:4:\"data\";s:2764:\"YToxMzp7czoyNjoiTGFuZ3VhZ2VzTWFuYWdlci5zZWxlY3Rpb24iO2E6MTp7czo1OiJub25jZSI7czozMjoiYTNhZjg3ZWZlZDhlZDEzNmNkZDg2M2RhMjBkNDMxZTciO31zOjQ6Il9fWkYiO2E6MTA6e3M6MjY6Ikxhbmd1YWdlc01hbmFnZXIuc2VsZWN0aW9uIjthOjE6e3M6NDoiRU5WVCI7YToxOntzOjU6Im5vbmNlIjtpOjE3MDA1MDQxOTc7fX1zOjExOiJMb2dpbi5sb2dpbiI7YToxOntzOjQ6IkVOVlQiO2E6MTp7czo1OiJub25jZSI7aToxNzAwNTA0MjQ2O319czozMzoiQ29yZVBsdWdpbnNBZG1pbi5kZWFjdGl2YXRlUGx1Z2luIjthOjE6e3M6NDoiRU5WVCI7YToxOntzOjU6Im5vbmNlIjtpOjE3MDA1MDQyNTg7fX1zOjMyOiJDb3JlUGx1Z2luc0FkbWluLnVuaW5zdGFsbFBsdWdpbiI7YToxOntzOjQ6IkVOVlQiO2E6MTp7czo1OiJub25jZSI7aToxNzAwNTA0MjU4O319czo1OiJMb2dpbiI7YToxOntzOjQ6IkVOVlQiO2E6Mjp7czoxNDoicmVkaXJlY3RQYXJhbXMiO2k6MTcwMDUwNTQ1ODtzOjE2OiJsYXN0UGFzc3dvcmRBdXRoIjtpOjE3MDA1MDU0NTg7fX1zOjE1OiJjb25maXJtUGFzc3dvcmQiO2E6MTp7czo0OiJFTlZUIjthOjE6e3M6NToibm9uY2UiO2k6MTcwMDUwNDI1Mzt9fXM6MTk6ImNoYW5nZVBhc3N3b3JkTm9uY2UiO2E6MTp7czo0OiJFTlZUIjthOjE6e3M6NToibm9uY2UiO2k6MTcwMDUwNDI3NDt9fXM6MjA6ImRlbGV0ZUF1dGhUb2tlbk5vbmNlIjthOjE6e3M6NDoiRU5WVCI7YToxOntzOjU6Im5vbmNlIjtpOjE3MDA1MDQyNzQ7fX1zOjI5OiJUd29GYWN0b3JBdXRoLmRpc2FibGVBdXRoQ29kZSI7YToxOntzOjQ6IkVOVlQiO2E6MTp7czo1OiJub25jZSI7aToxNzAwNTA0Mjc0O319czoxNzoiYWRkQXV0aFRva2VuTm9uY2UiO2E6MTp7czo0OiJFTlZUIjthOjE6e3M6NToibm9uY2UiO2k6MTcwMDUwNDI3Njt9fX1zOjk6InVzZXIubmFtZSI7czo2OiJtYXRvbW8iO3M6MjI6InR3b2ZhY3RvcmF1dGgudmVyaWZpZWQiO2k6MDtzOjIwOiJ1c2VyLnRva2VuX2F1dGhfdGVtcCI7czozMjoiZDA0MTZlZWVmNDA2M2YxZWVkNDM3Nzc1OTg1NGQ2ZjQiO3M6MTI6InNlc3Npb24uaW5mbyI7YTozOntzOjI6InRzIjtpOjE3MDA1MDM2NTA7czoxMDoicmVtZW1iZXJlZCI7YjowO3M6MTA6ImV4cGlyYXRpb24iO2k6MTcwMDUwNzQ2ODt9czozMzoiQ29yZVBsdWdpbnNBZG1pbi5kZWFjdGl2YXRlUGx1Z2luIjthOjE6e3M6NToibm9uY2UiO3M6MzI6IjIyM2Y4N2I1ZmViNmYxODYzZGZlMDMzOTJmNDU4OTcxIjt9czo1OiJMb2dpbiI7YToyOntzOjE0OiJyZWRpcmVjdFBhcmFtcyI7YTo1OntzOjY6Im1vZHVsZSI7czoxNjoiQ29yZVBsdWdpbnNBZG1pbiI7czo2OiJhY3Rpb24iO3M6OToidW5pbnN0YWxsIjtzOjEwOiJwbHVnaW5OYW1lIjtzOjEzOiJDdXN0b21QaXdpa0pzIjtzOjU6Im5vbmNlIjtzOjMyOiJkNTE1ODIwMTY3YWM4MWY5MGVjZmJmNmU4M2U4NTQzYyI7czo4OiJyZWZlcnJlciI7czoxMzQ6Imh0dHAlM0ElMkYlMkZsb2NhbGhvc3QlM0E5OTk5JTJGbWF0b21vJTJGaW5kZXgucGhwJTNGbW9kdWxlJTNEQ29yZUhvbWUlMjZhY3Rpb24lM0RpbmRleCUyNmlkU2l0ZSUzRDElMjZwZXJpb2QlM0RkYXklMjZkYXRlJTNEeWVzdGVyZGF5Ijt9czoxNjoibGFzdFBhc3N3b3JkQXV0aCI7czoxOToiMjAyMy0xMS0yMCAxODowNzozOCI7fXM6MTU6ImNvbmZpcm1QYXNzd29yZCI7YToxOntzOjU6Im5vbmNlIjtzOjMyOiIzZTI3NDQ3Zjg0ZDI1OTg4YzQyODYyNTAxZmNiZGU0ZSI7fXM6MTI6Im5vdGlmaWNhdGlvbiI7YToxOntzOjEzOiJub3RpZmljYXRpb25zIjthOjA6e319czoxOToiY2hhbmdlUGFzc3dvcmROb25jZSI7YToxOntzOjU6Im5vbmNlIjtzOjMyOiJiYTk1NTY3Mzg3MWQxNGI1OTQ0MjU4NTMwMzc2NzcxYyI7fXM6MjA6ImRlbGV0ZUF1dGhUb2tlbk5vbmNlIjthOjE6e3M6NToibm9uY2UiO3M6MzI6IjRiM2E5NjJjOWNmNjdmMjc1MTQ4YTg5MmYxOGY0YTYxIjt9czoyOToiVHdvRmFjdG9yQXV0aC5kaXNhYmxlQXV0aENvZGUiO2E6MTp7czo1OiJub25jZSI7czozMjoiNzEzYzU1YjFmZGE2YzQ3MDhhZDYxZTRlMzNiNTZmYWUiO319\";}');
/*!40000 ALTER TABLE `matomo_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_site`
--

DROP TABLE IF EXISTS `matomo_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_site` (
  `idsite` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `main_url` varchar(255) NOT NULL,
  `ts_created` timestamp NULL DEFAULT NULL,
  `ecommerce` tinyint(4) DEFAULT '0',
  `sitesearch` tinyint(4) DEFAULT '1',
  `sitesearch_keyword_parameters` text NOT NULL,
  `sitesearch_category_parameters` text NOT NULL,
  `timezone` varchar(50) NOT NULL,
  `currency` char(3) NOT NULL,
  `exclude_unknown_urls` tinyint(1) DEFAULT '0',
  `excluded_ips` text NOT NULL,
  `excluded_parameters` text NOT NULL,
  `excluded_user_agents` text NOT NULL,
  `excluded_referrers` text NOT NULL,
  `group` varchar(250) NOT NULL,
  `type` varchar(255) NOT NULL,
  `keep_url_fragment` tinyint(4) NOT NULL DEFAULT '0',
  `creator_login` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idsite`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_site`
--

LOCK TABLES `matomo_site` WRITE;
/*!40000 ALTER TABLE `matomo_site` DISABLE KEYS */;
INSERT INTO `matomo_site` VALUES (1,'LDbase','http://localhost','2020-04-03 22:17:31',0,1,'','','America/New_York','USD',0,'','','','','','website',0,'anonymous');
/*!40000 ALTER TABLE `matomo_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_site_setting`
--

DROP TABLE IF EXISTS `matomo_site_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_site_setting` (
  `idsite` int(10) unsigned NOT NULL,
  `plugin_name` varchar(60) NOT NULL,
  `setting_name` varchar(255) NOT NULL,
  `setting_value` longtext NOT NULL,
  `json_encoded` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `idsite_setting` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idsite_setting`),
  KEY `idsite` (`idsite`,`plugin_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_site_setting`
--

LOCK TABLES `matomo_site_setting` WRITE;
/*!40000 ALTER TABLE `matomo_site_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_site_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_site_url`
--

DROP TABLE IF EXISTS `matomo_site_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_site_url` (
  `idsite` int(10) unsigned NOT NULL,
  `url` varchar(190) NOT NULL,
  PRIMARY KEY (`idsite`,`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_site_url`
--

LOCK TABLES `matomo_site_url` WRITE;
/*!40000 ALTER TABLE `matomo_site_url` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_site_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_tracking_failure`
--

DROP TABLE IF EXISTS `matomo_tracking_failure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_tracking_failure` (
  `idsite` bigint(20) unsigned NOT NULL,
  `idfailure` smallint(5) unsigned NOT NULL,
  `date_first_occurred` datetime NOT NULL,
  `request_url` mediumtext NOT NULL,
  PRIMARY KEY (`idsite`,`idfailure`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_tracking_failure`
--

LOCK TABLES `matomo_tracking_failure` WRITE;
/*!40000 ALTER TABLE `matomo_tracking_failure` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_tracking_failure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_twofactor_recovery_code`
--

DROP TABLE IF EXISTS `matomo_twofactor_recovery_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_twofactor_recovery_code` (
  `idrecoverycode` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(100) NOT NULL,
  `recovery_code` varchar(40) NOT NULL,
  PRIMARY KEY (`idrecoverycode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_twofactor_recovery_code`
--

LOCK TABLES `matomo_twofactor_recovery_code` WRITE;
/*!40000 ALTER TABLE `matomo_twofactor_recovery_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_twofactor_recovery_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_user`
--

DROP TABLE IF EXISTS `matomo_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_user` (
  `login` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `twofactor_secret` varchar(40) NOT NULL DEFAULT '',
  `superuser_access` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `date_registered` timestamp NULL DEFAULT NULL,
  `ts_password_modified` timestamp NULL DEFAULT NULL,
  `idchange_last_viewed` int(10) unsigned DEFAULT NULL,
  `invite_token` varchar(191) DEFAULT NULL,
  `invited_by` varchar(100) DEFAULT NULL,
  `invite_expired_at` timestamp NULL DEFAULT NULL,
  `invite_accept_at` timestamp NULL DEFAULT NULL,
  `invite_link_token` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`login`),
  UNIQUE KEY `uniq_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_user`
--

LOCK TABLES `matomo_user` WRITE;
/*!40000 ALTER TABLE `matomo_user` DISABLE KEYS */;
INSERT INTO `matomo_user` VALUES ('anonymous','','anonymous@example.org','',0,'2020-04-03 22:16:08','2020-04-03 22:16:08',NULL,NULL,NULL,NULL,NULL,NULL),('matomo','$2y$10$wg8i6nSCH9mNuLPcrjctr.BHUXzAKs72ND2xDnRsVSxRyda1ZwKlq','admin@admin.edu','',1,'2020-04-03 22:16:35','2020-04-03 22:16:35',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `matomo_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_user_dashboard`
--

DROP TABLE IF EXISTS `matomo_user_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_user_dashboard` (
  `login` varchar(100) NOT NULL,
  `iddashboard` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `layout` text NOT NULL,
  PRIMARY KEY (`login`,`iddashboard`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_user_dashboard`
--

LOCK TABLES `matomo_user_dashboard` WRITE;
/*!40000 ALTER TABLE `matomo_user_dashboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_user_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_user_language`
--

DROP TABLE IF EXISTS `matomo_user_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_user_language` (
  `login` varchar(100) NOT NULL,
  `language` varchar(10) NOT NULL,
  `use_12_hour_clock` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_user_language`
--

LOCK TABLES `matomo_user_language` WRITE;
/*!40000 ALTER TABLE `matomo_user_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_user_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_user_token_auth`
--

DROP TABLE IF EXISTS `matomo_user_token_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matomo_user_token_auth` (
  `idusertokenauth` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `password` varchar(191) NOT NULL,
  `system_token` tinyint(1) NOT NULL DEFAULT '0',
  `hash_algo` varchar(30) NOT NULL,
  `last_used` datetime DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_expired` datetime DEFAULT NULL,
  PRIMARY KEY (`idusertokenauth`),
  UNIQUE KEY `uniq_password` (`password`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_user_token_auth`
--

LOCK TABLES `matomo_user_token_auth` WRITE;
/*!40000 ALTER TABLE `matomo_user_token_auth` DISABLE KEYS */;
INSERT INTO `matomo_user_token_auth` VALUES (1,'anonymous','Created by Matomo 4 migration','90f162e92adac1c7b4b17183060ed62169cff37ec13abf407cfcfb8e552d195cc0a3436b29c2fffc9726358c4e0d7c52283eb318fa231367daaf29b6cbe83904',0,'sha512','2023-11-20 18:06:36','2021-02-28 03:20:48',NULL),(2,'matomo','Created by Matomo 4 migration','a52d148fdc83c485f9b039b7499802645ad6d41976be430002eff1e85f33fd851681e766a4d7b30b0be797df1ddf470d4dbbcc88eec91adc4622654270a652dc',0,'sha512',NULL,'2021-02-28 03:20:48',NULL),(3,'matomo','Drupal Matomo Token','79a8f20720c7abde2572eb9cc10f88937491ffdbf48aee9dfc83d7ffdf0d097654ad09388bb91d786901c738696dc480a2637bc95bf15dd753ad1693d7732b64',0,'sha512','2023-11-20 18:10:06','2023-11-20 18:08:03',NULL);
/*!40000 ALTER TABLE `matomo_user_token_auth` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-20 13:39:53
