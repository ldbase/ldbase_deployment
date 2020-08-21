-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: matomodb
-- ------------------------------------------------------
-- Server version	5.7.31-0ubuntu0.18.04.1

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
-- Table structure for table `matomo_access`
--

DROP TABLE IF EXISTS `matomo_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_access` (
  `idaccess` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(100) NOT NULL,
  `idsite` int(10) unsigned NOT NULL,
  `access` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idaccess`),
  KEY `index_loginidsite` (`login`,`idsite`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_access`
--

LOCK TABLES `matomo_access` WRITE;
/*!40000 ALTER TABLE `matomo_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_blob_2020_07`
--

DROP TABLE IF EXISTS `matomo_archive_blob_2020_07`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_archive_blob_2020_07` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
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
-- Dumping data for table `matomo_archive_blob_2020_07`
--

LOCK TABLES `matomo_archive_blob_2020_07` WRITE;
/*!40000 ALTER TABLE `matomo_archive_blob_2020_07` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_archive_blob_2020_07` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_blob_2020_08`
--

DROP TABLE IF EXISTS `matomo_archive_blob_2020_08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_archive_blob_2020_08` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
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
-- Dumping data for table `matomo_archive_blob_2020_08`
--

LOCK TABLES `matomo_archive_blob_2020_08` WRITE;
/*!40000 ALTER TABLE `matomo_archive_blob_2020_08` DISABLE KEYS */;
INSERT INTO `matomo_archive_blob_2020_08` VALUES (3,'Actions_actions',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœ]Á\n\Ã †_¥ø\0\Ã$µtñº\Ãc¯PR­Ğ±B{\ë|÷©C<ü\â—\äÿ5\ÂÀû\Ä\Ú\nS¾@\ÇûÊ†\Õ,£›•]ZV\ÍõırÍ§¹]FY²cDa\n‡	\"mS@{\ê\Ñ\ÄQ‚˜\Â\n`İ¥ª\0\çbõ˜\à\Ô%Àtò˜\ÂÿÖ—\Õ\î>¶%.*\á\éEnØ¦mv\Ã\"\Û3-M¬ªƒ‹\ì\İzÿ3ER.'),(3,'Actions_actions_url',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœ]\n\Ã E\ï’L§´\ß;\ìn+´ \ë˜J\ï>µ\ë(\"y?ù\â`\Ì´0[\Ãs‚\Åp\í\"ùR\Ã\ã\Ş}\È\\\\J60ù²¹Œö\Õw>5bËª\á,0ˆ+\Èqj·»u\Ñ+H…\ßC®‚¬ «\Ç\î<\Ì\Ûßš½\êş°”q(™S\ÎK\ïW\'\ê§\é	¥\âx±Ó„6U\Æ_ü²|\áYMª'),(3,'Actions_downloads',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(3,'Actions_outlink',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(3,'Actions_sitesearch',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(3,'Contents_name_piece',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(3,'Contents_piece_name',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(3,'CustomVariables_valueByName',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(3,'DevicePlugins_plugin',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœ\Ò\Í\r\Â0\à]<A ”—\ØÁ´n1\r’B»“K%p{²œO–FaVd†Q.¡À\ì±YŞ‹%\ãQšqT\È(ŠP\ÈA9™—\"\í©4»¥ğªA­:i¦\Ñ}P\ÙwªˆR!w–ı!\í”)§v>í¬¢\Î\nt\ä;§™u”)A—¶Kï¹Š*[\Ğõ¦\Í0\éI\Òm¢Vø \ä„\í\ÅòSş8[\×\ÂC¯ö.\Îj˜\Ò\Ü6\Î ‡\Ûñ\áO\Òjrı¯7Ú•\İ}'),(3,'DevicesDetection_brands',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœ5ŒK€ D\ï\Â	Z\Ó;x‡\Z]°cI¸»…\Ô\Å\Ë|’£(\âoNô†ŒPõ~kBR°lD÷I¥\Ù\Ø2Wf$ZÍ˜Ií­yr\É\Ìj#`'),(3,'DevicesDetection_browserEngines',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2´ªÎ´2°N´2†1,­ª‹­L­”r“Rs”¬Ál§œÌ¼l%\ëL+# 6bc(\Û\Ä:L›±\0±9”64„j01\0‹Ô‚x‰VVÕµ Cü¬kkµ\Ö%U'),(3,'DevicesDetection_browsers',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœ5Ì»\r€0\Ğ]2óÄ¹¤¡b#(\"¥Kywœ(Ow¶d<Z± şeG«X\àŠ\Üoq\\\à\ÓqF0\Ş\Ä\Ù?#³Nd¶™\ŞÏƒDc£}šö\'«~8#\í'),(3,'DevicesDetection_browserVersions',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœ5\Ì1€ Ğ»ô\0¦ı]œ¼F6F\Â\İƒ\Ã\Ëÿm\ÒJk€ùË†’\á@)\\O\"\Íğ ı\Ğ\ÕNL\Z17Ò˜Ñ­\Ş_ºf¸ñ#EÆ\åoSûÀ(µ?9µ\Ö®6$÷'),(3,'DevicesDetection_models',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœ5\ÌQ\n€ Ğ«„\'pK‹f\ï\Ğ,%¤¨\ÈşÄ»gb™]\Ø5 D\É\İ_F\Ä\0\r±›\Ù\í‚¨‡\à\Õ\îöKc]Øó\ì\Ñf”uµ+¶%u\ÖW2j\Õ%\Ë&}“DLß“‰Szô)\É'),(3,'DevicesDetection_os',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2´ªÎ´2°N´2†1,­ª‹­L­”r“Rs”¬‹2J>~JÖ™VF@l\Ä\ÆP¶‰u\n˜6b3(6\0bs(mh\Õ`b\0©ñ­¬ªkA†øY\×\Ö\0>ó$F'),(3,'DevicesDetection_osVersions',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœ5\ÌÁ\r€ \Ğ]:A\Ôø;‰aŒH¸q$\İ\İBğğò›´	-ƒ%Áÿ\å@«XA%\İo!© \ëŒB’±gü\ìA‘«\Ù&6ûL\ç\æA\à±\Ñ>%0šö\'QT?_ı$‚'),(3,'DevicesDetection_types',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2´ªÎ´2°N´2†1,­ª‹­L­”r“Rs”¬A‚™VF@l\Ä\ÆP¶‰u\n˜6b3(©3‡Ò††P\r&`‘Z/\Ñ\ÊÀªºdˆŸum-\0|\"\"\Ø'),(3,'Events_action_category',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(3,'Events_action_name',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(3,'Events_category_action',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(3,'Events_category_name',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(3,'Events_name_action',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(3,'Events_name_category',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(3,'Goals_ItemsCategory',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(3,'Goals_ItemsCategory_Cart',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(3,'Goals_ItemsName',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(3,'Goals_ItemsName_Cart',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(3,'Goals_ItemsSku',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(3,'Goals_ItemsSku_Cart',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(3,'Goal_-1_days_until_conv',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(3,'Goal_-1_visits_until_conv',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(3,'Goal_0_days_until_conv',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(3,'Goal_0_visits_until_conv',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(3,'Goal_days_until_conv',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(3,'Goal_visits_until_conv',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(3,'Referrers_keywordByCampaign',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(3,'Referrers_keywordBySearchEngine',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(3,'Referrers_searchEngineByKeyword',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(3,'Referrers_type',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2´ªÎ´2°N´2†1,­ª‹­L­”r“Rs”¬3­\ØJC\Ù&\Ö)`\ÚˆÍ \Ø\0ˆÍ¡´¡!Tƒ‰X¤\ÄK´2°ª®\âg][\0|y\"\Ù'),(3,'Referrers_urlBySocialNetwork',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(3,'Referrers_urlByWebsite',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(3,'Resolution_configuration',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœ5Œ;\n€0D\ï’ìª‰d¶´Q\Ü!¢E ]\Z!\ä\î®‹\Ç|`&‚QH\"\Æ\ßx\Ô“\ãqe#¬aß‚,«°#º=‘‘„Aae\ì~’óS«¸)sW\æ>˜\èkÚ›\"µ½\'AZ{\0ş4\'R'),(3,'Resolution_resolution',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœ5\ÌK\nÀ Ğ»x‚¤~Z\'w\è,\íBp\ç¦ Ş½Q\ì\â1“@’Àh$	ö/­\ÂÃ”t=\ÅH\ÅÃ\èDF26\ÅÊ®\î\ä\éUXH\í+™×£¹\écJ ´>œ\Òû\Ô%@'),(3,'UserCountry_city',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœ5ŒK€ D\ï\Â	Z\Ó;x‡\Z]°cI¸»…\Ô\Å\Ë|’£(\âoNô†ŒPõ~kBR°lD÷I¥\Ù\Ø2Wf$ZÍ˜Ií­yr\É\Ìj#`'),(3,'UserCountry_country',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœ5\ÌK\nÀ Ğ»\ä‰Ÿ–N\î\Ğ;¤´Át%Ş½*vñ˜I 1j«Áÿ\å@-ˆ l×“I\è-¤	®“Î¯ô»m\án_)²\ÏM“Q\Ûxrjk4b$J'),(3,'UserCountry_region',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœ5ŒK€ D\ï\Â	Z\Ó;x‡\Z]°cI¸»…\Ô\Å\Ë|’£(\âoNô†ŒPõ~kBR°lD÷I¥\Ù\Ø2Wf$ZÍ˜Ií­yr\É\Ìj#`'),(3,'UserId_users',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(3,'UserLanguage_language',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2´ªÎ´2°N´2†1,­ª‹­L­”r“Rs”¬Á\ì\Ô<\İ\Òb%\ëL+# 6bc(\Û\Ä:L›±\0±9”64„j01\0‹Ô‚x‰VVÕµ Cü¬kk³7%M'),(3,'VisitorInterest_daysSinceLastVisit',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœ\Ó=1\àÿRp4M?\Îtsq»\ÑU*\ÜP8<Á\á¸ÿn´\éöÒ’‡\Ş\ÆÀke›\Ó¯6s¹M³\Écbs\îÓ£\Ì\×qz]\êRŸ‹É•\İç’5y«Œ2jy•Dy\Üş£$s`¿ü­8MA@ı-¤)œ®xM! ]	š\âÁ\ëJÔ”\0AW’¦Dˆº2hJ‚¤+Ç¦\â\Ù€‹Áv™%c\0²P»À’	!ö@\íGÙ²”\ØõH\í\Ë?E‡@±gM\í2Ë£(†ƒ;i\Òöõ­/„'),(3,'VisitorInterest_pageGap',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœ\Ñ1\n\Ã0Ğ»:\n,\ÙNRi\Ëz:²e¹{µ:ÿl_–üv3IvtK\Ş,_A\íØ­\Zm\íı\Ù\È÷è°wÓ¨\Ä(‘Ÿ\İ$f\ãv¤\ì¯\ë`¨(\ë\"ÿEJ\æŒw\ÉH)\\°RR¹b¥\"e\â+\ÓP)FK\Â\Ì<d\"Küõ§Y SYo\ìóD\ÊCW\äœ_ö@Å€'),(3,'VisitorInterest_timeGap',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœ\Ğ1\n\Ã0Ğ»:\n$\Ùqœ\ï-\èR\èÈ–1\ä\î\Õ\è\Ğ\ÆÚ¾Œô°´@\Ç\ni\ÒÇ´-¯÷FmG	«P[a^*H©+Ô›}\ÜSj\Ï\ë\á?\ãY•Ó·#¿\ë9I¹œt\ëPñ½,\0\å[hô\ÅL\Ør@\Zz’+œ#*=\É¿R@\Z{’+<E¤z+U+¬5BMİ“WÑ‡\Í=\éü\0‚aÊ™'),(3,'VisitorInterest_visitsByVisitCount',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœ\Ó;\n\Ã0\à»:\n$ù•\È[\Ğ;¸\Ğ!-c\Èİ«%Ğ¥’7ùÁ‡-ÿ\ÊY\ÏM©Mw!zZöñş\ì\Ğ[F†¾©Øˆúµ)\Û^\ÒÓª\Ô_÷„«J¬H¤$L±’\"%c•)K¬”H©Xc¥FJ\Ã+-R\\beq•¬°\"O´wu«¹ ü6˜ÿ\ÏÏ¯\ÕR±\ĞD‚ıW{pû	4#ù1nvb”)\ÊÏ²JˆòŒ¤\ëW\â'),(3,'VisitTime_localTime',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœµ\Ö;ƒ0„\á»p‚\Å\æ±\Ü!w J\n$º”ˆ»\Ç S2TS,6–\à\Í\'\æğ\Û6\Í\Ñ^›1¶_\äh\Öùı]›i	Œ\å\âÇ¦L[÷iúœk.\ÓÕ±2}]ú@²ód?\î\æ°\Øö\ã%¯\ë\à>kµdµjµjµjwU\ãU\ç+ª¶´\ê¢j¢\ÕVTÍ´šDÕV³¨\Ú\Ój\'ª´Ú‹ª#­¢*¸N£*\Ëu‚Š\'<ø¤\n\\(¨ˆ7\n*¤À•‚Š)p§ ‚\n\\*¨¨·\n*¬Àµ‚Š+\ç\\¹\Ê\r\ç^¹\Ê\r\ç^¹\Ê\rø£Ò¸±ÿ\Ù>\É'),(3,'VisitTime_serverTime',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœµ\Ö;ƒ0„\á»p‚\Å\æ±\Ü!w J\n$º”ˆ»\Ç S2TS,6–\à\Í\'\æğ\Û6\Í\Ñ^›1¶_\äh\Öùı]›i	Œ\å\âÇ¦L[÷iúœk.\ÓÕ±2}]ú@²ód?\î\æ°\Øö\ã%¯\ë\à>kµdµjµjµjwU\ãU\ç+ª¶´\ê¢j¢\ÕVTÍ´šDÕV³¨\Ú\Ój\'ª´Ú‹ª#­¢*¸N£*\Ëu‚Š\'<ø¤\n\\(¨ˆ7\n*¤À•‚Š)p§ ‚\n\\*¨¨·\n*¬Àµ‚Š+\ç\\¹\Ê\r\ç^¹\Ê\r\ç^¹\Ê\rø£Ò¸±ÿ\Ù>\É'),(29,'Actions_actions',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœ]Á\n\Ã †_¥ø\0\Ã$µtñº\Ãc¯PR­Ğ±B{\ë|÷©C<ü\â—\äÿ5\ÂÀû\Ä\Ú\nS¾@\ÇûÊ†\Õ,£›•]ZV\ÍõırÍ§¹]FY²cDa\n‡	\"mS@{\ê\Ñ\ÄQ‚˜\Â\n`İ¥ª\0\çbõ˜\à\Ô%Àtò˜\ÂÿÖ—\Õ\î>¶%.*\á\éEnØ¦mv\Ã\"\Û3-M¬ªƒ‹\ì\İzÿ3ER.'),(29,'Actions_actions_url',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœ]\n\Ã E\ï’L§´\ß;\ìn+´ \ë˜J\ï>µ\ë(\"y?ù\â`\Ì´0[\Ãs‚\Åp\í\"ùR\Ã\ã\Ş}\È\\\\J60ù²¹Œö\Õw>5bËª\á,0ˆ+\Èqj·»u\Ñ+H…\ßC®‚¬ «\Ç\î<\Ì\Ûßš½\êş°”q(™S\ÎK\ïW\'\ê§\é	¥\âx±Ó„6U\Æ_ü²|\áYMª'),(29,'Actions_downloads',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2°ª®\0Oş'),(29,'Actions_outlink',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2°ª®\0Oş'),(29,'Actions_sitesearch',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2°ª®\0Oş'),(29,'Contents_name_piece',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2°ª®\0Oş'),(29,'Contents_piece_name',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2°ª®\0Oş'),(29,'CustomVariables_valueByName',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2°ª®\0Oş'),(29,'DevicePlugins_plugin',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœ\Ò\Í\r\Â0\à]<A ”—\ØÁ´n1\r’B»“K%p{²œO–FaVd†Q.¡À\ì±YŞ‹%\ãQšqT\È(ŠP\ÈA9™—\"\í©4»¥ğªA­:i¦\Ñ}P\ÙwªˆR!w–ı!\í”)§v>í¬¢\Î\nt\ä;§™u”)A—¶Kï¹Š*[\Ğõ¦\Í0\éI\Òm¢Vø \ä„\í\ÅòSş8[\×\ÂC¯ö.\Îj˜\Ò\Ü6\Î ‡\Ûñ\áO\Òjrı¯7Ú•\İ}'),(29,'DevicesDetection_brands',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœ5ŒK€ D\ï\Â	Z\Ó;x‡\Z]°cI¸»…\Ô\Å\Ë|’£(\âoNô†ŒPõ~kBR°lD÷I¥\Ù\Ø2Wf$ZÍ˜Ií­yr\É\Ìj#`'),(29,'DevicesDetection_browserEngines',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2´ªÎ´2°N´2†1,­ª‹­L­”r“Rs”¬Ál§œÌ¼l%\ëL+# 6bc(\Û\Ä:L›±\0±9”64„j01\0‹Ô‚x‰VVÕµ Cü¬kkµ\Ö%U'),(29,'DevicesDetection_browsers',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœ5Ì»\r€0\Ğ]2óÄ¹¤¡b#(\"¥Kywœ(Ow¶d<Z± şeG«X\àŠ\Üoq\\\à\ÓqF0\Ş\Ä\Ù?#³Nd¶™\ŞÏƒDc£}šö\'«~8#\í'),(29,'DevicesDetection_browserVersions',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœ5\Ì1€ Ğ»ô\0¦ı]œ¼F6F\Â\İƒ\Ã\Ëÿm\ÒJk€ùË†’\á@)\\O\"\Íğ ı\Ğ\ÕNL\Z17Ò˜Ñ­\Ş_ºf¸ñ#EÆ\åoSûÀ(µ?9µ\Ö®6$÷'),(29,'DevicesDetection_models',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœ5\ÌQ\n€ Ğ«„\'pK‹f\ï\Ğ,%¤¨\ÈşÄ»gb™]\Ø5 D\É\İ_F\Ä\0\r±›\Ù\í‚¨‡\à\Õ\îöKc]Øó\ì\Ñf”uµ+¶%u\ÖW2j\Õ%\Ë&}“DLß“‰Szô)\É'),(29,'DevicesDetection_os',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2´ªÎ´2°N´2†1,­ª‹­L­”r“Rs”¬‹2J>~JÖ™VF@l\Ä\ÆP¶‰u\n˜6b3(6\0bs(mh\Õ`b\0©ñ­¬ªkA†øY\×\Ö\0>ó$F'),(29,'DevicesDetection_osVersions',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœ5\ÌÁ\r€ \Ğ]:A\Ôø;‰aŒH¸q$\İ\İBğğò›´	-ƒ%Áÿ\å@«XA%\İo!© \ëŒB’±gü\ìA‘«\Ù&6ûL\ç\æA\à±\Ñ>%0šö\'QT?_ı$‚'),(29,'DevicesDetection_types',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2´ªÎ´2°N´2†1,­ª‹­L­”r“Rs”¬A‚™VF@l\Ä\ÆP¶‰u\n˜6b3(©3‡Ò††P\r&`‘Z/\Ñ\ÊÀªºdˆŸum-\0|\"\"\Ø'),(29,'Events_action_category',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2°ª®\0Oş'),(29,'Events_action_name',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2°ª®\0Oş'),(29,'Events_category_action',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2°ª®\0Oş'),(29,'Events_category_name',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2°ª®\0Oş'),(29,'Events_name_action',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2°ª®\0Oş'),(29,'Events_name_category',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2°ª®\0Oş'),(29,'Goals_ItemsCategory',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2°ª®\0Oş'),(29,'Goals_ItemsCategory_Cart',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2°ª®\0Oş'),(29,'Goals_ItemsName',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2°ª®\0Oş'),(29,'Goals_ItemsName_Cart',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2°ª®\0Oş'),(29,'Goals_ItemsSku',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2°ª®\0Oş'),(29,'Goals_ItemsSku_Cart',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2°ª®\0Oş'),(29,'Goal_-1_days_until_conv',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2°ª®\0Oş'),(29,'Goal_-1_visits_until_conv',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2°ª®\0Oş'),(29,'Goal_0_days_until_conv',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2°ª®\0Oş'),(29,'Goal_0_visits_until_conv',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2°ª®\0Oş'),(29,'Goal_days_until_conv',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2°ª®\0Oş'),(29,'Goal_visits_until_conv',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2°ª®\0Oş'),(29,'Referrers_keywordByCampaign',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2°ª®\0Oş'),(29,'Referrers_keywordBySearchEngine',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2°ª®\0Oş'),(29,'Referrers_searchEngineByKeyword',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2°ª®\0Oş'),(29,'Referrers_type',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2´ªÎ´2°N´2†1,­ª‹­L­”r“Rs”¬3­\ØJC\Ù&\Ö)`\ÚˆÍ \Ø\0ˆÍ¡´¡!Tƒ‰X¤\ÄK´2°ª®\âg][\0|y\"\Ù'),(29,'Referrers_urlBySocialNetwork',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2°ª®\0Oş'),(29,'Referrers_urlByWebsite',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2°ª®\0Oş'),(29,'Resolution_configuration',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœ5Œ;\n€0D\ï’ìª‰d¶´Q\Ü!¢E ]\Z!\ä\î®‹\Ç|`&‚QH\"\Æ\ßx\Ô“\ãqe#¬aß‚,«°#º=‘‘„Aae\ì~’óS«¸)sW\æ>˜\èkÚ›\"µ½\'AZ{\0ş4\'R'),(29,'Resolution_resolution',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœ5\ÌK\nÀ Ğ»x‚¤~Z\'w\è,\íBp\ç¦ Ş½Q\ì\â1“@’Àh$	ö/­\ÂÃ”t=\ÅH\ÅÃ\èDF26\ÅÊ®\î\ä\éUXH\í+™×£¹\écJ ´>œ\Òû\Ô%@'),(29,'UserCountry_city',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœ5ŒK€ D\ï\Â	Z\Ó;x‡\Z]°cI¸»…\Ô\Å\Ë|’£(\âoNô†ŒPõ~kBR°lD÷I¥\Ù\Ø2Wf$ZÍ˜Ií­yr\É\Ìj#`'),(29,'UserCountry_country',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœ5\ÌK\nÀ Ğ»\ä‰Ÿ–N\î\Ğ;¤´Át%Ş½*vñ˜I 1j«Áÿ\å@-ˆ l×“I\è-¤	®“Î¯ô»m\án_)²\ÏM“Q\Ûxrjk4b$J'),(29,'UserCountry_region',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœ5ŒK€ D\ï\Â	Z\Ó;x‡\Z]°cI¸»…\Ô\Å\Ë|’£(\âoNô†ŒPõ~kBR°lD÷I¥\Ù\Ø2Wf$ZÍ˜Ií­yr\É\Ìj#`'),(29,'UserId_users',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2°ª®\0Oş'),(29,'UserLanguage_language',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœK´2´ªÎ´2°N´2†1,­ª‹­L­”r“Rs”¬Á\ì\Ô<\İ\Òb%\ëL+# 6bc(\Û\Ä:L›±\0±9”64„j01\0‹Ô‚x‰VVÕµ Cü¬kk³7%M'),(29,'VisitorInterest_daysSinceLastVisit',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœ\Ó=1\àÿRp4M?\Îtsq»\ÑU*\ÜP8<Á\á¸ÿn´\éöÒ’‡\Ş\ÆÀke›\Ó¯6s¹M³\Écbs\îÓ£\Ì\×qz]\êRŸ‹É•\İç’5y«Œ2jy•Dy\Üş£$s`¿ü­8MA@ı-¤)œ®xM! ]	š\âÁ\ëJÔ”\0AW’¦Dˆº2hJ‚¤+Ç¦\â\Ù€‹Áv™%c\0²P»À’	!ö@\íGÙ²”\ØõH\í\Ë?E‡@±gM\í2Ë£(†ƒ;i\Òöõ­/„'),(29,'VisitorInterest_pageGap',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœ\Ñ1\n\Ã0Ğ»:\n,\ÙNRi\Ëz:²e¹{µ:ÿl_–üv3IvtK\Ş,_A\íØ­\Zm\íı\Ù\È÷è°wÓ¨\Ä(‘Ÿ\İ$f\ãv¤\ì¯\ë`¨(\ë\"ÿEJ\æŒw\ÉH)\\°RR¹b¥\"e\â+\ÓP)FK\Â\Ì<d\"Küõ§Y SYo\ìóD\ÊCW\äœ_ö@Å€'),(29,'VisitorInterest_timeGap',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœ\Ğ1\n\Ã0Ğ»:\n$\Ùqœ\ï-\èR\èÈ–1\ä\î\Õ\è\Ğ\ÆÚ¾Œô°´@\Ç\ni\ÒÇ´-¯÷FmG	«P[a^*H©+Ô›}\ÜSj\Ï\ë\á?\ãY•Ó·#¿\ë9I¹œt\ëPñ½,\0\å[hô\ÅL\Ør@\Zz’+œ#*=\É¿R@\Z{’+<E¤z+U+¬5BMİ“WÑ‡\Í=\éü\0‚aÊ™'),(29,'VisitorInterest_visitsByVisitCount',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœ\Ó;\n\Ã0\à»:\n$ù•\È[\Ğ;¸\Ğ!-c\Èİ«%Ğ¥’7ùÁ‡-ÿ\ÊY\ÏM©Mw!zZöñş\ì\Ğ[F†¾©Øˆúµ)\Û^\ÒÓª\Ô_÷„«J¬H¤$L±’\"%c•)K¬”H©Xc¥FJ\Ã+-R\\beq•¬°\"O´wu«¹ ü6˜ÿ\ÏÏ¯\ÕR±\ĞD‚ıW{pû	4#ù1nvb”)\ÊÏ²JˆòŒ¤\ëW\â'),(29,'VisitTime_localTime',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœµ\Ö;ƒ0„\á»p‚\Å\æ±\Ü!w J\n$º”ˆ»\Ç S2TS,6–\à\Í\'\æğ\Û6\Í\Ñ^›1¶_\äh\Öùı]›i	Œ\å\âÇ¦L[÷iúœk.\ÓÕ±2}]ú@²ód?\î\æ°\Øö\ã%¯\ë\à>kµdµjµjµjwU\ãU\ç+ª¶´\ê¢j¢\ÕVTÍ´šDÕV³¨\Ú\Ój\'ª´Ú‹ª#­¢*¸N£*\Ëu‚Š\'<ø¤\n\\(¨ˆ7\n*¤À•‚Š)p§ ‚\n\\*¨¨·\n*¬Àµ‚Š+\ç\\¹\Ê\r\ç^¹\Ê\r\ç^¹\Ê\rø£Ò¸±ÿ\Ù>\É'),(29,'VisitTime_serverTime',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',_binary 'xœµ\Ö;ƒ0„\á»p‚\Å\æ±\Ü!w J\n$º”ˆ»\Ç S2TS,6–\à\Í\'\æğ\Û6\Í\Ñ^›1¶_\äh\Öùı]›i	Œ\å\âÇ¦L[÷iúœk.\ÓÕ±2}]ú@²ód?\î\æ°\Øö\ã%¯\ë\à>kµdµjµjµjwU\ãU\ç+ª¶´\ê¢j¢\ÕVTÍ´šDÕV³¨\Ú\Ój\'ª´Ú‹ª#­¢*¸N£*\Ëu‚Š\'<ø¤\n\\(¨ˆ7\n*¤À•‚Š)p§ ‚\n\\*¨¨·\n*¬Àµ‚Š+\ç\\¹\Ê\r\ç^¹\Ê\r\ç^¹\Ê\rø£Ò¸±ÿ\Ù>\É'),(35,'Actions_actions',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœ]A\Â E¯\Òp\0\ÃÌ”ª\ÃÖ…\ãšiB”c“²«½»@­!]\á}ø¾0ğ\ìY[a\Ú6\Ğñ<±adpAÙ‰¡e\Õ\\\ß/\×|š\Ûe\É)\ë\Ó@=¸‰”“†´-A\í\á„&[r\Z+(€ûS\Ú	p¬®Ã¹\Ô+`_jW\0W\Ğ\Å\Ó\Ö\æKş±\ä\îII/òp}ô1¸~”ø,‰Õ®rr‘½\Ûeù\rTQú'),(35,'Actions_actions_url',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœ]\n\Ã ÿ\âªwÆ´Yÿ\Ğ?\Ø6€4¥¦ù{Í¥)a\ÅY\İ\Ã\r \Ì=Œ°ûj\Ì	*†[•O¨¡tÿ|´“ò=8‹JñnÚ¼¹,k¼\ä«Ó…\İ\Z±”\r‚\">\ŞÚƒA\ç\â95°Ù€~Sk\ŞÀH¦*¸?,\ë\ÃZ9\åº\êó–v\ÌP\İ8¾ u\î!vC\Z\Ñ\ä¥%aı\Õ/\Ë¾°Mv'),(35,'Actions_downloads',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœK´2°ª®\0Oş'),(35,'Actions_outlink',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœK´2°ª®\0Oş'),(35,'Actions_sitesearch',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœK´2°ª®\0Oş'),(35,'CustomVariables_valueByName',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœK´2°ª®\0Oş'),(35,'DevicePlugins_plugin',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœ\Ò\Í\r\Â0\à]<A ”—\ØÁ´n1\r’B»“K%p{²œO–FaVd†Q.¡À\ì±YŞ‹%\ãQšqT\È(ŠP\ÈA9™—\"\í©4»¥ğªA­:i¦\Ñ}P\ÙwªˆR!w–ı!\í”)§v>í¬¢\Î\nt\ä;§™u”)A—¶Kï¹Š*[\Ğõ¦\Í0\éI\Òm¢Vø \ä„\í\ÅòSş8[\×\ÂC¯ö.\Îj˜\Ò\Ü6\Î ‡\Ûñ\áO\Òjrı¯7Ú•\İ}'),(35,'DevicesDetection_brands',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœ5ŒÁ\rÀ w\ÉPJ+œºCªöÄ\'\Ê\î%(}œlY:\"FE`AúKÁ\èÈ &÷Ûˆ;ˆ¸\":›gò\n›X±ó³†<9\ÛÏ•j–Ì³¡\æ^¬úª¾#7'),(35,'DevicesDetection_browserEngines',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœK´2´ªÎ´2°N´2†1,­ª‹­L­”r“Rs”¬Ál§œÌ¼l%\ëL+C(6‚\Ò\ÆP¶±¥5Hw¦•‰u\nXÀˆÍ $n¦kAº­¬ªkAzı¬kk’5%,'),(35,'DevicesDetection_browsers',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœ5‹;\n€0\ï²\'\È\Ç(y[\ÚXy‡-\éR†\Ü]7¬\Åğ#ğ\èñ?½!ª\\O%n ı .ğF°öcfM¾§H«¡~›;´8ô¡\í\Éc¼ñğ#\Ä'),(35,'DevicesDetection_browserVersions',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœ5‹1€ ÿ\Âˆˆ\ì•6Vş\áŒ$t”\äş®³˜\ìf’a8´KÿŸ„V`\n_O1Taöƒ¶e²†2œ2\ëzı>Q\ï3º‡«\Ò}+½bX4\é\íI\"/Šó$\Î'),(35,'DevicesDetection_models',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœ5ŒQ\n€ ¯ 3\r÷İ¡;XJHR‘ı‰w/\Å>†]v\r8’GO\â/\Z)B‚³¸À(‚+0\Ú\Ü\án¿v\Ö\Åı9/F¼1´­M\å\Éc$[…üPâ§š¹¬z¤\\¶3\åü\Ì) '),(35,'DevicesDetection_os',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœ5‹\Ë	À D{\Ù\n4æƒ³‚=lH‚7²½\Çsx\Ì0\Ãx´Ç‚ğ—ˆV±Š\Üo!®ı¡\ëL\Ä~²\Ì³‡\È\æf¬üŒa\ë\ìÛ‘j–À¡©¹‰U?a$'),(35,'DevicesDetection_osVersions',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœ5‹A\n€ E\ï2\'Ğ´\Â?\'\Â;L\ÔBp\çR\æ\î5b‹\Çÿ<x^\àXş“\ĞVP•\ë©\Ä\rt™‰üd™\æ‰-.ˆ|±~lóûXµJ\à\Ğ\Õ\ÚÌª/=/$Y'),(35,'DevicesDetection_types',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœK´2´ªÎ´2°N´2†1,­ª‹­L­”r“Rs”¬A‚™V†Pl¥¡lcK¨\ë°€)›A1H\ÜL×‚t%ZXU×‚ôúY\×\Ö\0Zş\"¯'),(35,'Goals_ItemsCategory',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœK´2°ª®\0Oş'),(35,'Goals_ItemsCategory_Cart',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœK´2°ª®\0Oş'),(35,'Goals_ItemsName',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœK´2°ª®\0Oş'),(35,'Goals_ItemsName_Cart',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœK´2°ª®\0Oş'),(35,'Goals_ItemsSku',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœK´2°ª®\0Oş'),(35,'Goals_ItemsSku_Cart',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœK´2°ª®\0Oş'),(35,'Goal_days_until_conv',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœK´2°ª®\0Oş'),(35,'Goal_visits_until_conv',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœK´2°ª®\0Oş'),(35,'Referrers_keywordByCampaign',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœK´2°ª®\0Oş'),(35,'Referrers_keywordBySearchEngine',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœK´2°ª®\0Oş'),(35,'Referrers_searchEngineByKeyword',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœK´2°ª®\0Oş'),(35,'Referrers_type',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœK´2´ªÎ´2°N´2†1,­ª‹­L­”r“Rs”¬3­‘°”6†²-­Aº2­L¬SÀ¦@l\Å qs0]Ò•he`U]\Ò\ëg][\0[T\"°'),(35,'Referrers_urlBySocialNetwork',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœK´2°ª®\0Oş'),(35,'Referrers_urlByWebsite',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœK´2°ª®\0Oş'),(35,'Resolution_configuration',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœ5ŒM\n€ „\ï\â	\Ş\Ë4œ·lS\ŞÁ¨…\à\ÎM \Ş=\r[|\Ì\Ì0JI€şC\É0P)œwR’Á-»—u¶D#RÁƒi¨^;\éG³\\_a\Zv\Ğû\å\Ó\ÚW„Rû\ÖK­/Ø–\')'),(35,'Resolution_resolution',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœ5ŒÁ\r€ {¡‚Ce¯{8£~|L½\ë‘ó1\Ù\Í$»^@,\É\è\r®\ÊyW\Ç\r;œODO&r\\\à\Å2X™õ `\åkŠø‘õ\ÛÌ¡+¡\İ<\Æ°‚%'),(35,'UserCountry_city',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœ5ŒÁ\rÀ w\ÉPJ+œºCªöÄ\'\Ê\î%(}œlY:\"FE`AúKÁ\èÈ &÷Ûˆ;ˆ¸\":›gò\n›X±ó³†<9\ÛÏ•j–Ì³¡\æ^¬úª¾#7'),(35,'UserCountry_country',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœ5‹\É	À0{Q>r\àU\éA!yü3yõ\È(a—DŒŠÀ‚üŸ‚Ñ±‚šœw#\îH §WD\'ùfÿ¹°¥_S¬›c~Ÿ«V	†Z{°\ê\Ì$!'),(35,'UserCountry_region',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœ5ŒÁ\rÀ w\ÉPJ+œºCªöÄ\'\Ê\î%(}œlY:\"FE`AúKÁ\èÈ &÷Ûˆ;ˆ¸\":›gò\n›X±ó³†<9\ÛÏ•j–Ì³¡\æ^¬úª¾#7'),(35,'UserId_users',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœK´2°ª®\0Oş'),(35,'UserLanguage_language',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœK´2´ªÎ´2°N´2†1,­ª‹­L­”r“Rs”¬Á\ì\Ô<\İ\Òb%\ëL+C(6‚\Ò\ÆP¶±¥5Hw¦•‰u\nXÀˆÍ $n¦kAº­¬ªkAzı¬kk%$'),(35,'VisitorInterest_daysSinceLastVisit',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœ\Ó=1\àÿRp4M?\Îtsq»\ÑU*\ÜP8<Á\á¸ÿn´\éöÒ’‡\Ş\ÆÀke›\Ó¯6s¹M³\Écbs\îÓ£\Ì\×qz]\êRŸ‹É•\İç’5y«Œ2jy•Dy\Üş£$s`¿ü­8MA@ı-¤)œ®xM! ]	š\âÁ\ëJÔ”\0AW’¦Dˆº2hJ‚¤+Ç¦\â\Ù€‹Áv™%c\0²P»À’	!ö@\íGÙ²”\ØõH\í\Ë?E‡@±gM\í2Ë£(†ƒ;i\Òöõ­/„'),(35,'VisitorInterest_pageGap',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœ\Ñ1\n\Ã0Ğ»:\n,\ÙNRi\Ëz:²e¹{µ:ÿl_–üv3IvtK\Ş,_A\íØ­\Zm\íı\Ù\È÷è°wÓ¨\Ä(‘Ÿ\İ$f\ãv¤\ì¯\ë`¨(\ë\"ÿEJ\æŒw\ÉH)\\°RR¹b¥\"e\â+\ÓP)FK\Â\Ì<d\"Küõ§Y SYo\ìóD\ÊCW\äœ_ö@Å€'),(35,'VisitorInterest_timeGap',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœ\Ğ1\n\Ã0Ğ»:\n$\Ùqœ\ï-\èR\èÈ–1\ä\î\Õ\è\Ğ\ÆÚ¾Œô°´@\Ç\ni\ÒÇ´-¯÷FmG	«P[a^*H©+Ô›}\ÜSj\Ï\ë\á?\ãY•Ó·#¿\ë9I¹œt\ëPñ½,\0\å[hô\ÅL\Ør@\Zz’+œ#*=\É¿R@\Z{’+<E¤z+U+¬5BMİ“WÑ‡\Í=\éü\0‚aÊ™'),(35,'VisitorInterest_visitsByVisitCount',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœ\Ó;\n\Ã0\à»:\n$ù•\È[\Ğ;¸\Ğ!-c\Èİ«%Ğ¥’7ùÁ‡-ÿ\ÊY\ÏM©Mw!zZöñş\ì\Ğ[F†¾©Øˆúµ)\Û^\ÒÓª\Ô_÷„«J¬H¤$L±’\"%c•)K¬”H©Xc¥FJ\Ã+-R\\beq•¬°\"O´wu«¹ ü6˜ÿ\ÏÏ¯\ÕR±\ĞD‚ıW{pû	4#ù1nvb”)\ÊÏ²JˆòŒ¤\ëW\â'),(35,'VisitTime_localTime',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœµ\Ö;ƒ0„\á»\ä;k^^\î;%]J\Äİƒ‘i\"eH3\Åb\Ë\ÈúEó‰)¼‰u§H\ç&\Çú6n\Ëôx-·q\äò¨\ãuMuŸ\ÊKÛ§Ÿ\ÇA»OW§œ÷Çº•[SX¬[¹{?~W­†¬†¬F\í;j5jEª&šh\Ô5Ñ†F“&\Ú\Òh£‰v4\Új¢=vš\è@£½&šit\ĞDÁMÊ¢*7	\"”p¡’ˆ%p— ‚	\\&ˆh·	\"œÀu‚ˆ\'pŸ \n\\(ˆˆ7\n\"¤œ#\å\".œ+\å\".œ+\å\".ü\â\ïI\Â\Åö²¸ñ'),(35,'VisitTime_serverTime',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœµ\Ö;ƒ0„\á»\ä;k^^\î;%]J\Äİƒ‘i\"eH3\Åb\Ë\ÈúEó‰)¼‰u§H\ç&\Çú6n\Ëôx-·q\äò¨\ãuMuŸ\ÊKÛ§Ÿ\ÇA»OW§œ÷Çº•[SX¬[¹{?~W­†¬†¬F\í;j5jEª&šh\Ô5Ñ†F“&\Ú\Òh£‰v4\Új¢=vš\è@£½&šit\ĞDÁMÊ¢*7	\"”p¡’ˆ%p— ‚	\\&ˆh·	\"œÀu‚ˆ\'pŸ \n\\(ˆˆ7\n\"¤œ#\å\".œ+\å\".œ+\å\".ü\â\ïI\Â\Åö²¸ñ'),(39,'Goals_ItemsCategory',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœK´2°ª®\0Oş'),(39,'Goals_ItemsCategory_Cart',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœK´2°ª®\0Oş'),(39,'Goals_ItemsName',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœK´2°ª®\0Oş'),(39,'Goals_ItemsName_Cart',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœK´2°ª®\0Oş'),(39,'Goals_ItemsSku',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœK´2°ª®\0Oş'),(39,'Goals_ItemsSku_Cart',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœK´2°ª®\0Oş'),(39,'Goal_days_until_conv',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœK´2°ª®\0Oş'),(39,'Goal_visits_until_conv',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',_binary 'xœK´2°ª®\0Oş'),(69,'Goals_ItemsCategory',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:09',_binary 'xœK´2°ª®\0Oş'),(69,'Goals_ItemsCategory_Cart',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:09',_binary 'xœK´2°ª®\0Oş'),(69,'Goals_ItemsName',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:09',_binary 'xœK´2°ª®\0Oş'),(69,'Goals_ItemsName_Cart',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:09',_binary 'xœK´2°ª®\0Oş'),(69,'Goals_ItemsSku',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:09',_binary 'xœK´2°ª®\0Oş'),(69,'Goals_ItemsSku_Cart',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:09',_binary 'xœK´2°ª®\0Oş'),(69,'Goal_-1_days_until_conv',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:09',_binary 'xœK´2°ª®\0Oş'),(69,'Goal_-1_visits_until_conv',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:09',_binary 'xœK´2°ª®\0Oş'),(69,'Goal_0_days_until_conv',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:09',_binary 'xœK´2°ª®\0Oş'),(69,'Goal_0_visits_until_conv',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:09',_binary 'xœK´2°ª®\0Oş'),(69,'Goal_days_until_conv',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:09',_binary 'xœK´2°ª®\0Oş'),(69,'Goal_visits_until_conv',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:09',_binary 'xœK´2°ª®\0Oş'),(115,'Goals_ItemsCategory',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(115,'Goals_ItemsCategory_Cart',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(115,'Goals_ItemsName',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(115,'Goals_ItemsName_Cart',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(115,'Goals_ItemsSku',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(115,'Goals_ItemsSku_Cart',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(115,'Goal_-1_days_until_conv',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(115,'Goal_-1_visits_until_conv',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(115,'Goal_0_days_until_conv',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(115,'Goal_0_visits_until_conv',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(115,'Goal_days_until_conv',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş'),(115,'Goal_visits_until_conv',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',_binary 'xœK´2°ª®\0Oş');
/*!40000 ALTER TABLE `matomo_archive_blob_2020_08` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2020_04`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2020_04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_archive_numeric_2020_04` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
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
INSERT INTO `matomo_archive_numeric_2020_04` VALUES (1,'done',1,'2020-04-02','2020-04-02',1,'2020-04-03 18:18:39',1);
/*!40000 ALTER TABLE `matomo_archive_numeric_2020_04` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2020_07`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2020_07`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_archive_numeric_2020_07` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
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
INSERT INTO `matomo_archive_numeric_2020_07` VALUES (1,'done',1,'2020-07-22','2020-07-22',1,'2020-08-21 23:04:03',1),(2,'done',1,'2020-07-23','2020-07-23',1,'2020-08-21 23:04:03',1),(3,'done',1,'2020-07-24','2020-07-24',1,'2020-08-21 23:04:03',1),(4,'done',1,'2020-07-25','2020-07-25',1,'2020-08-21 23:04:04',1),(5,'done',1,'2020-07-26','2020-07-26',1,'2020-08-21 23:04:04',1),(6,'done',1,'2020-07-27','2020-07-27',1,'2020-08-21 23:04:04',1),(7,'done',1,'2020-07-28','2020-07-28',1,'2020-08-21 23:04:04',1),(8,'done',1,'2020-07-29','2020-07-29',1,'2020-08-21 23:04:04',1),(9,'done',1,'2020-07-30','2020-07-30',1,'2020-08-21 23:04:04',1),(10,'done',1,'2020-07-31','2020-07-31',1,'2020-08-21 23:04:04',1),(11,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-07-22','2020-07-22',1,'2020-08-21 23:04:06',1),(12,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-07-23','2020-07-23',1,'2020-08-21 23:04:06',1),(13,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-07-24','2020-07-24',1,'2020-08-21 23:04:07',1),(14,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-07-25','2020-07-25',1,'2020-08-21 23:04:07',1),(15,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-07-26','2020-07-26',1,'2020-08-21 23:04:07',1),(16,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-07-27','2020-07-27',1,'2020-08-21 23:04:07',1),(17,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-07-28','2020-07-28',1,'2020-08-21 23:04:07',1),(18,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-07-29','2020-07-29',1,'2020-08-21 23:04:07',1),(19,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-07-30','2020-07-30',1,'2020-08-21 23:04:07',1),(20,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-07-31','2020-07-31',1,'2020-08-21 23:04:07',1),(21,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-07-22','2020-07-22',1,'2020-08-21 23:04:09',1),(22,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-07-23','2020-07-23',1,'2020-08-21 23:04:10',1),(23,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-07-24','2020-07-24',1,'2020-08-21 23:04:10',1),(24,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-07-25','2020-07-25',1,'2020-08-21 23:04:10',1),(25,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-07-26','2020-07-26',1,'2020-08-21 23:04:10',1),(26,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-07-27','2020-07-27',1,'2020-08-21 23:04:10',1),(27,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-07-28','2020-07-28',1,'2020-08-21 23:04:10',1),(28,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-07-29','2020-07-29',1,'2020-08-21 23:04:10',1),(29,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-07-30','2020-07-30',1,'2020-08-21 23:04:10',1),(30,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-07-31','2020-07-31',1,'2020-08-21 23:04:10',1),(31,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2020-07-22','2020-07-22',1,'2020-08-21 23:04:12',1),(32,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2020-07-23','2020-07-23',1,'2020-08-21 23:04:12',1),(33,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2020-07-24','2020-07-24',1,'2020-08-21 23:04:12',1),(34,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2020-07-25','2020-07-25',1,'2020-08-21 23:04:13',1),(35,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2020-07-26','2020-07-26',1,'2020-08-21 23:04:13',1),(36,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2020-07-27','2020-07-27',1,'2020-08-21 23:04:13',1),(37,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2020-07-28','2020-07-28',1,'2020-08-21 23:04:13',1),(38,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2020-07-29','2020-07-29',1,'2020-08-21 23:04:13',1),(39,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2020-07-30','2020-07-30',1,'2020-08-21 23:04:13',1),(40,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2020-07-31','2020-07-31',1,'2020-08-21 23:04:13',1),(41,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-07-22','2020-07-22',1,'2020-08-21 23:04:14',1),(42,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-07-23','2020-07-23',1,'2020-08-21 23:04:14',1),(43,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-07-24','2020-07-24',1,'2020-08-21 23:04:14',1),(44,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-07-25','2020-07-25',1,'2020-08-21 23:04:14',1),(45,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-07-26','2020-07-26',1,'2020-08-21 23:04:14',1),(46,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-07-27','2020-07-27',1,'2020-08-21 23:04:14',1),(47,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-07-28','2020-07-28',1,'2020-08-21 23:04:14',1),(48,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-07-29','2020-07-29',1,'2020-08-21 23:04:14',1),(49,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-07-30','2020-07-30',1,'2020-08-21 23:04:14',1),(50,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-07-31','2020-07-31',1,'2020-08-21 23:04:14',1);
/*!40000 ALTER TABLE `matomo_archive_numeric_2020_07` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_archive_numeric_2020_08`
--

DROP TABLE IF EXISTS `matomo_archive_numeric_2020_08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_archive_numeric_2020_08` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
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
INSERT INTO `matomo_archive_numeric_2020_08` VALUES (1,'done',1,'2020-08-20','2020-08-20',1,'2020-08-21 23:04:03',1),(2,'done',1,'2020-08-20','2020-08-20',1,'2020-08-21 23:04:03',1),(3,'Actions_nb_hits_with_time_generation',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',1),(3,'Actions_nb_pageviews',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',2),(3,'Actions_nb_uniq_pageviews',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',1),(3,'Actions_sum_time_generation',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',4.83),(3,'done',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',1),(3,'max_actions',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',2),(3,'nb_actions',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',2),(3,'nb_uniq_visitors',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',1),(3,'nb_visits',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',1),(3,'sum_visit_length',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',6),(3,'UserCountry_distinctCountries',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',1),(4,'done',1,'2020-08-01','2020-08-01',1,'2020-08-21 23:04:03',1),(5,'done',1,'2020-08-02','2020-08-02',1,'2020-08-21 23:04:03',1),(6,'done',1,'2020-08-03','2020-08-09',2,'2020-08-21 23:04:04',1),(7,'done',1,'2020-08-03','2020-08-03',1,'2020-08-21 23:04:04',1),(8,'done',1,'2020-08-04','2020-08-04',1,'2020-08-21 23:04:04',1),(9,'done',1,'2020-08-05','2020-08-05',1,'2020-08-21 23:04:04',1),(10,'done',1,'2020-08-06','2020-08-06',1,'2020-08-21 23:04:04',1),(11,'done',1,'2020-08-07','2020-08-07',1,'2020-08-21 23:04:04',1),(12,'done',1,'2020-08-08','2020-08-08',1,'2020-08-21 23:04:04',1),(13,'done',1,'2020-08-09','2020-08-09',1,'2020-08-21 23:04:04',1),(14,'done',1,'2020-08-10','2020-08-10',1,'2020-08-21 23:04:04',1),(15,'done',1,'2020-08-10','2020-08-16',2,'2020-08-21 23:04:05',1),(16,'done',1,'2020-08-11','2020-08-11',1,'2020-08-21 23:04:05',1),(17,'done',1,'2020-08-11','2020-08-11',1,'2020-08-21 23:04:05',1),(18,'done',1,'2020-08-12','2020-08-12',1,'2020-08-21 23:04:05',1),(19,'done',1,'2020-08-12','2020-08-12',1,'2020-08-21 23:04:05',1),(20,'done',1,'2020-08-13','2020-08-13',1,'2020-08-21 23:04:05',1),(21,'done',1,'2020-08-13','2020-08-13',1,'2020-08-21 23:04:05',1),(22,'done',1,'2020-08-14','2020-08-14',1,'2020-08-21 23:04:05',1),(23,'done',1,'2020-08-14','2020-08-14',1,'2020-08-21 23:04:05',1),(24,'done',1,'2020-08-15','2020-08-15',1,'2020-08-21 23:04:05',1),(25,'done',1,'2020-08-15','2020-08-15',1,'2020-08-21 23:04:05',1),(26,'done',1,'2020-08-16','2020-08-16',1,'2020-08-21 23:04:05',1),(27,'done',1,'2020-08-16','2020-08-16',1,'2020-08-21 23:04:05',1),(28,'done',1,'2020-08-17','2020-08-17',1,'2020-08-21 23:04:06',1),(29,'Actions_nb_hits_with_time_generation',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',1),(29,'Actions_nb_pageviews',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',2),(29,'Actions_nb_uniq_pageviews',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',1),(29,'Actions_sum_time_generation',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',4.83),(29,'done',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',1),(29,'max_actions',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',2),(29,'nb_actions',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',2),(29,'nb_uniq_visitors',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',1),(29,'nb_visits',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',1),(29,'sum_visit_length',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',6),(29,'UserCountry_distinctCountries',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:10',1),(30,'done',1,'2020-08-17','2020-08-17',1,'2020-08-21 23:04:06',1),(31,'done',1,'2020-08-18','2020-08-18',1,'2020-08-21 23:04:06',1),(32,'done',1,'2020-08-18','2020-08-18',1,'2020-08-21 23:04:06',1),(33,'done',1,'2020-08-19','2020-08-19',1,'2020-08-21 23:04:06',1),(34,'done',1,'2020-08-19','2020-08-19',1,'2020-08-21 23:04:06',1),(35,'Actions_nb_hits_with_time_generation',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',1),(35,'Actions_nb_pageviews',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',2),(35,'Actions_nb_uniq_pageviews',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',1),(35,'Actions_sum_time_generation',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',4.83),(35,'done',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',1),(35,'max_actions',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',2),(35,'nb_actions',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',2),(35,'nb_uniq_visitors',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',1),(35,'nb_visits',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',1),(35,'sum_visit_length',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',6),(35,'UserCountry_distinctCountries',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',1),(36,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:06',1),(37,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',1),(38,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',1),(38,'max_actions',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',2),(38,'nb_actions',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',2),(38,'nb_uniq_visitors',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',1),(38,'nb_visits',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',1),(38,'sum_visit_length',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',6),(39,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-08-21','2020-08-21',1,'2020-08-21 23:04:07',1),(40,'done',1,'2020-08-22','2020-08-22',1,'2020-08-21 23:04:07',1),(41,'done',1,'2020-08-23','2020-08-23',1,'2020-08-21 23:04:07',1),(42,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:08',1),(43,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-08-17','2020-08-17',1,'2020-08-21 23:04:07',1),(44,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-08-18','2020-08-18',1,'2020-08-21 23:04:07',1),(45,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-08-19','2020-08-19',1,'2020-08-21 23:04:08',1),(46,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-08-01','2020-08-01',1,'2020-08-21 23:04:08',1),(47,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-08-20','2020-08-20',1,'2020-08-21 23:04:08',1),(48,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-08-02','2020-08-02',1,'2020-08-21 23:04:08',1),(49,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-08-03','2020-08-03',1,'2020-08-21 23:04:08',1),(50,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-08-22','2020-08-22',1,'2020-08-21 23:04:08',1),(51,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-08-04','2020-08-04',1,'2020-08-21 23:04:08',1),(52,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-08-23','2020-08-23',1,'2020-08-21 23:04:08',1),(53,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-08-05','2020-08-05',1,'2020-08-21 23:04:08',1),(54,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:08',1),(55,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-08-06','2020-08-06',1,'2020-08-21 23:04:08',1),(56,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:09',1),(56,'max_actions',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:09',2),(56,'nb_actions',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:09',2),(56,'nb_uniq_visitors',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:09',1),(56,'nb_visits',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:09',1),(56,'sum_visit_length',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:09',6),(57,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-17','2020-08-17',1,'2020-08-21 23:04:08',1),(58,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-08-07','2020-08-07',1,'2020-08-21 23:04:08',1),(59,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-18','2020-08-18',1,'2020-08-21 23:04:08',1),(60,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-08-08','2020-08-08',1,'2020-08-21 23:04:08',1),(61,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-19','2020-08-19',1,'2020-08-21 23:04:08',1),(62,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-08-09','2020-08-09',1,'2020-08-21 23:04:09',1),(63,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-20','2020-08-20',1,'2020-08-21 23:04:09',1),(64,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-08-10','2020-08-10',1,'2020-08-21 23:04:09',1),(65,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-22','2020-08-22',1,'2020-08-21 23:04:09',1),(66,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-08-11','2020-08-11',1,'2020-08-21 23:04:09',1),(67,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-23','2020-08-23',1,'2020-08-21 23:04:09',1),(68,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-08-12','2020-08-12',1,'2020-08-21 23:04:09',1),(69,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-08-17','2020-08-23',2,'2020-08-21 23:04:09',1),(70,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-08-13','2020-08-13',1,'2020-08-21 23:04:09',1),(71,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-08-17','2020-08-17',1,'2020-08-21 23:04:09',1),(72,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-08-18','2020-08-18',1,'2020-08-21 23:04:09',1),(73,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-08-14','2020-08-14',1,'2020-08-21 23:04:09',1),(74,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-08-19','2020-08-19',1,'2020-08-21 23:04:09',1),(75,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-08-15','2020-08-15',1,'2020-08-21 23:04:09',1),(76,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-08-20','2020-08-20',1,'2020-08-21 23:04:09',1),(77,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-08-22','2020-08-22',1,'2020-08-21 23:04:09',1),(78,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-08-16','2020-08-16',1,'2020-08-21 23:04:09',1),(79,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-08-23','2020-08-23',1,'2020-08-21 23:04:09',1),(80,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:10',1),(81,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-08-03','2020-08-09',2,'2020-08-21 23:04:10',1),(82,'done90a5a511e1974bca37613b6daec137ba.VisitsSummary',1,'2020-08-10','2020-08-16',2,'2020-08-21 23:04:10',1),(83,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:10',1),(84,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:12',1),(84,'max_actions',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:12',2),(84,'nb_actions',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:12',2),(84,'nb_uniq_visitors',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:12',1),(84,'nb_visits',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:12',1),(84,'sum_visit_length',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:12',6),(85,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-01','2020-08-01',1,'2020-08-21 23:04:10',1),(86,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-02','2020-08-02',1,'2020-08-21 23:04:10',1),(87,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-03','2020-08-09',2,'2020-08-21 23:04:11',1),(88,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-03','2020-08-03',1,'2020-08-21 23:04:10',1),(89,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-04','2020-08-04',1,'2020-08-21 23:04:10',1),(90,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-05','2020-08-05',1,'2020-08-21 23:04:11',1),(91,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-05','2020-08-05',1,'2020-08-21 23:04:11',1),(92,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-06','2020-08-06',1,'2020-08-21 23:04:11',1),(93,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-06','2020-08-06',1,'2020-08-21 23:04:11',1),(94,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-07','2020-08-07',1,'2020-08-21 23:04:11',1),(95,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-07','2020-08-07',1,'2020-08-21 23:04:11',1),(96,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-08','2020-08-08',1,'2020-08-21 23:04:11',1),(97,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-08','2020-08-08',1,'2020-08-21 23:04:11',1),(98,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-09','2020-08-09',1,'2020-08-21 23:04:11',1),(99,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-09','2020-08-09',1,'2020-08-21 23:04:11',1),(100,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-10','2020-08-10',1,'2020-08-21 23:04:11',1),(101,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-10','2020-08-16',2,'2020-08-21 23:04:12',1),(102,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-10','2020-08-10',1,'2020-08-21 23:04:11',1),(103,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-11','2020-08-11',1,'2020-08-21 23:04:11',1),(104,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-11','2020-08-11',1,'2020-08-21 23:04:11',1),(105,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-12','2020-08-12',1,'2020-08-21 23:04:11',1),(106,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-12','2020-08-12',1,'2020-08-21 23:04:11',1),(107,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-13','2020-08-13',1,'2020-08-21 23:04:12',1),(108,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-13','2020-08-13',1,'2020-08-21 23:04:12',1),(109,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-14','2020-08-14',1,'2020-08-21 23:04:12',1),(110,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-14','2020-08-14',1,'2020-08-21 23:04:12',1),(111,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-15','2020-08-15',1,'2020-08-21 23:04:12',1),(112,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-15','2020-08-15',1,'2020-08-21 23:04:12',1),(113,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-16','2020-08-16',1,'2020-08-21 23:04:12',1),(114,'donefea44bece172bc9696ae57c26888bf8a.VisitsSummary',1,'2020-08-16','2020-08-16',1,'2020-08-21 23:04:12',1),(115,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-08-01','2020-08-31',3,'2020-08-21 23:04:13',1),(116,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-08-01','2020-08-01',1,'2020-08-21 23:04:12',1),(117,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-08-02','2020-08-02',1,'2020-08-21 23:04:12',1),(118,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-08-03','2020-08-09',2,'2020-08-21 23:04:12',1),(119,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-08-10','2020-08-16',2,'2020-08-21 23:04:12',1),(120,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2020-08-01','2020-08-01',1,'2020-08-21 23:04:13',1),(121,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2020-08-02','2020-08-02',1,'2020-08-21 23:04:13',1),(122,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2020-08-03','2020-08-03',1,'2020-08-21 23:04:13',1),(123,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2020-08-04','2020-08-04',1,'2020-08-21 23:04:13',1),(124,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2020-08-05','2020-08-05',1,'2020-08-21 23:04:13',1),(125,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2020-08-06','2020-08-06',1,'2020-08-21 23:04:13',1),(126,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2020-08-07','2020-08-07',1,'2020-08-21 23:04:13',1),(127,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2020-08-08','2020-08-08',1,'2020-08-21 23:04:13',1),(128,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2020-08-09','2020-08-09',1,'2020-08-21 23:04:14',1),(129,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2020-08-10','2020-08-10',1,'2020-08-21 23:04:14',1),(130,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2020-08-11','2020-08-11',1,'2020-08-21 23:04:14',1),(131,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2020-08-12','2020-08-12',1,'2020-08-21 23:04:14',1),(132,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2020-08-13','2020-08-13',1,'2020-08-21 23:04:14',1),(133,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2020-08-14','2020-08-14',1,'2020-08-21 23:04:14',1),(134,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2020-08-15','2020-08-15',1,'2020-08-21 23:04:14',1),(135,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2020-08-16','2020-08-16',1,'2020-08-21 23:04:14',1),(136,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2020-08-17','2020-08-17',1,'2020-08-21 23:04:14',1),(137,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2020-08-18','2020-08-18',1,'2020-08-21 23:04:14',1),(138,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2020-08-19','2020-08-19',1,'2020-08-21 23:04:14',1),(139,'done90a5a511e1974bca37613b6daec137ba.Goals',1,'2020-08-20','2020-08-20',1,'2020-08-21 23:04:14',1),(140,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-08-03','2020-08-03',1,'2020-08-21 23:04:15',1),(141,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-08-04','2020-08-04',1,'2020-08-21 23:04:15',1),(142,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-08-05','2020-08-05',1,'2020-08-21 23:04:15',1),(143,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-08-06','2020-08-06',1,'2020-08-21 23:04:15',1),(144,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-08-07','2020-08-07',1,'2020-08-21 23:04:15',1),(145,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-08-08','2020-08-08',1,'2020-08-21 23:04:15',1),(146,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-08-09','2020-08-09',1,'2020-08-21 23:04:15',1),(147,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-08-10','2020-08-10',1,'2020-08-21 23:04:15',1),(148,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-08-11','2020-08-11',1,'2020-08-21 23:04:15',1),(149,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-08-12','2020-08-12',1,'2020-08-21 23:04:15',1),(150,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-08-13','2020-08-13',1,'2020-08-21 23:04:15',1),(151,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-08-14','2020-08-14',1,'2020-08-21 23:04:15',1),(152,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-08-15','2020-08-15',1,'2020-08-21 23:04:15',1),(153,'donefea44bece172bc9696ae57c26888bf8a.Goals',1,'2020-08-16','2020-08-16',1,'2020-08-21 23:04:15',1);
/*!40000 ALTER TABLE `matomo_archive_numeric_2020_08` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_brute_force_log`
--

DROP TABLE IF EXISTS `matomo_brute_force_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_brute_force_log` (
  `id_brute_force_log` bigint(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(60) DEFAULT NULL,
  `attempted_at` datetime NOT NULL,
  PRIMARY KEY (`id_brute_force_log`),
  KEY `index_ip_address` (`ip_address`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_brute_force_log`
--

LOCK TABLES `matomo_brute_force_log` WRITE;
/*!40000 ALTER TABLE `matomo_brute_force_log` DISABLE KEYS */;
INSERT INTO `matomo_brute_force_log` VALUES (1,'10.0.2.2','2020-08-17 16:24:40');
/*!40000 ALTER TABLE `matomo_brute_force_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_goal`
--

DROP TABLE IF EXISTS `matomo_goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_log_action` (
  `idaction` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(4096) DEFAULT NULL,
  `hash` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `url_prefix` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`idaction`),
  KEY `index_type_hash` (`type`,`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_log_action`
--

LOCK TABLES `matomo_log_action` WRITE;
/*!40000 ALTER TABLE `matomo_log_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_log_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_log_conversion`
--

DROP TABLE IF EXISTS `matomo_log_conversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `url` varchar(4096) NOT NULL,
  `visitor_days_since_first` smallint(5) unsigned DEFAULT NULL,
  `visitor_days_since_order` smallint(5) unsigned DEFAULT NULL,
  `visitor_returning` tinyint(1) DEFAULT NULL,
  `visitor_count_visits` int(11) unsigned NOT NULL,
  `referer_keyword` varchar(255) DEFAULT NULL,
  `referer_name` varchar(70) DEFAULT NULL,
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
  `interaction_position` smallint(5) unsigned DEFAULT NULL,
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
  PRIMARY KEY (`idlink_va`),
  KEY `index_idvisit` (`idvisit`),
  KEY `index_idsite_servertime` (`idsite`,`server_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_log_link_visit_action`
--

LOCK TABLES `matomo_log_link_visit_action` WRITE;
/*!40000 ALTER TABLE `matomo_log_link_visit_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_log_link_visit_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_log_profiling`
--

DROP TABLE IF EXISTS `matomo_log_profiling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
  `visitor_days_since_first` smallint(5) unsigned DEFAULT NULL,
  `visitor_days_since_order` smallint(5) unsigned DEFAULT NULL,
  `visitor_returning` tinyint(1) DEFAULT NULL,
  `visitor_count_visits` int(11) unsigned NOT NULL,
  `visit_entry_idaction_name` int(10) unsigned DEFAULT NULL,
  `visit_entry_idaction_url` int(11) unsigned DEFAULT NULL,
  `visit_exit_idaction_name` int(10) unsigned DEFAULT NULL,
  `visit_exit_idaction_url` int(10) unsigned DEFAULT '0',
  `visit_total_actions` int(11) unsigned DEFAULT NULL,
  `visit_total_interactions` smallint(5) unsigned DEFAULT '0',
  `visit_total_searches` smallint(5) unsigned DEFAULT NULL,
  `referer_keyword` varchar(255) DEFAULT NULL,
  `referer_name` varchar(70) DEFAULT NULL,
  `referer_type` tinyint(1) unsigned DEFAULT NULL,
  `referer_url` text,
  `location_browser_lang` varchar(20) DEFAULT NULL,
  `config_browser_engine` varchar(10) DEFAULT NULL,
  `config_browser_name` varchar(10) DEFAULT NULL,
  `config_browser_version` varchar(20) DEFAULT NULL,
  `config_device_brand` varchar(100) DEFAULT NULL,
  `config_device_model` varchar(100) DEFAULT NULL,
  `config_device_type` tinyint(100) DEFAULT NULL,
  `config_os` char(3) DEFAULT NULL,
  `config_os_version` varchar(100) DEFAULT NULL,
  `visit_total_events` int(11) unsigned DEFAULT NULL,
  `visitor_localtime` time DEFAULT NULL,
  `visitor_days_since_last` smallint(5) unsigned DEFAULT NULL,
  `config_resolution` varchar(18) DEFAULT NULL,
  `config_cookie` tinyint(1) DEFAULT NULL,
  `config_director` tinyint(1) DEFAULT NULL,
  `config_flash` tinyint(1) DEFAULT NULL,
  `config_gears` tinyint(1) DEFAULT NULL,
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
  PRIMARY KEY (`idvisit`),
  KEY `index_idsite_config_datetime` (`idsite`,`config_id`,`visit_last_action_time`),
  KEY `index_idsite_datetime` (`idsite`,`visit_last_action_time`),
  KEY `index_idsite_idvisitor` (`idsite`,`idvisitor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_log_visit`
--

LOCK TABLES `matomo_log_visit` WRITE;
/*!40000 ALTER TABLE `matomo_log_visit` DISABLE KEYS */;
/*!40000 ALTER TABLE `matomo_log_visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_logger_message`
--

DROP TABLE IF EXISTS `matomo_logger_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_option` (
  `option_name` varchar(255) NOT NULL,
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
INSERT INTO `matomo_option` VALUES ('fingerprint_salt_1_2020-08-15','{\"value\":\"olsekxgvlayy3tglpm32118tyv8ifjsm\",\"time\":1597681524}',0),('fingerprint_salt_1_2020-08-16','{\"value\":\"h2zwmggw0sbyx7mk2zue1067e1txhjzl\",\"time\":1597681524}',0),('fingerprint_salt_1_2020-08-17','{\"value\":\"sbwkz4gwy2rj521t9spss6ni1prowe77\",\"time\":1597681524}',0),('fingerprint_salt_1_2020-08-18','{\"value\":\"y2x8t5a1239vziks65lyznh99i5zmge3\",\"time\":1597681523}',0),('install_version','3.13.4',0),('InvalidatedOldReports_DatesWebsiteIds','a:1:{i:0;s:7:\"2020_04\";}',0),('MobileMessaging_DelegatedManagement','false',0),('PrivacyManager.doNotTrackEnabled','1',0),('PrivacyManager.ipAnonymizerEnabled','1',0),('SitesManager_DefaultTimezone','America/New_York',0),('UpdateCheck_LastTimeChecked','1598051329',1),('UpdateCheck_LatestVersion','3.14.0',0),('useridsalt','57FHl6T1CJSj_UIlLoVlEE6UP8cikpJdpPAAcMM6',1),('UsersManager.lastSeen.matomo','1598051337',1),('version_Actions','3.14.0',1),('version_Annotations','3.14.0',1),('version_API','3.14.0',1),('version_BulkTracking','3.14.0',1),('version_Contents','3.14.0',1),('version_core','3.14.0',1),('version_CoreAdminHome','3.14.0',1),('version_CoreConsole','3.14.0',1),('version_CoreHome','3.14.0',1),('version_CorePluginsAdmin','3.14.0',1),('version_CoreUpdater','3.14.0',1),('version_CoreVisualizations','3.14.0',1),('version_CustomPiwikJs','3.14.0',1),('version_CustomVariables','3.14.0',1),('version_Dashboard','3.14.0',1),('version_DevicePlugins','3.14.0',1),('version_DevicesDetection','3.14.0',1),('version_Diagnostics','3.14.0',1),('version_Ecommerce','3.14.0',1),('version_Events','3.14.0',1),('version_Feedback','3.14.0',1),('version_GeoIp2','3.14.0',1),('version_Goals','3.14.0',1),('version_Heartbeat','3.14.0',1),('version_ImageGraph','3.14.0',1),('version_Insights','3.14.0',1),('version_Installation','3.14.0',1),('version_Intl','3.14.0',1),('version_IntranetMeasurable','3.14.0',1),('version_LanguagesManager','3.14.0',1),('version_Live','3.14.0',1),('version_Login','3.14.0',1),('version_log_conversion.revenue','float default NULL',1),('version_log_conversion.revenue_discount','float default NULL',1),('version_log_conversion.revenue_shipping','float default NULL',1),('version_log_conversion.revenue_subtotal','float default NULL',1),('version_log_conversion.revenue_tax','float default NULL',1),('version_log_link_visit_action.idaction_content_interaction','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idaction_content_name','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idaction_content_piece','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idaction_content_target','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idaction_event_action','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idaction_event_category','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idaction_name','INTEGER(10) UNSIGNED',1),('version_log_link_visit_action.idaction_url','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idpageview','CHAR(6) NULL DEFAULT NULL',1),('version_log_link_visit_action.interaction_position','SMALLINT UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.server_time','DATETIME NOT NULL',1),('version_log_link_visit_action.time_spent_ref_action','INTEGER(10) UNSIGNED NULL',1),('version_log_visit.config_browser_engine','VARCHAR(10) NULL',1),('version_log_visit.config_browser_name','VARCHAR(10) NULL',1),('version_log_visit.config_browser_version','VARCHAR(20) NULL',1),('version_log_visit.config_cookie','TINYINT(1) NULL',1),('version_log_visit.config_device_brand','VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL1',1),('version_log_visit.config_device_model','VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL1',1),('version_log_visit.config_device_type','TINYINT( 100 ) NULL DEFAULT NULL1',1),('version_log_visit.config_director','TINYINT(1) NULL',1),('version_log_visit.config_flash','TINYINT(1) NULL',1),('version_log_visit.config_gears','TINYINT(1) NULL',1),('version_log_visit.config_java','TINYINT(1) NULL',1),('version_log_visit.config_os','CHAR(3) NULL',1),('version_log_visit.config_os_version','VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL',1),('version_log_visit.config_pdf','TINYINT(1) NULL',1),('version_log_visit.config_quicktime','TINYINT(1) NULL',1),('version_log_visit.config_realplayer','TINYINT(1) NULL',1),('version_log_visit.config_resolution','VARCHAR(18) NULL',1),('version_log_visit.config_silverlight','TINYINT(1) NULL',1),('version_log_visit.config_windowsmedia','TINYINT(1) NULL',1),('version_log_visit.location_browser_lang','VARCHAR(20) NULL',1),('version_log_visit.location_city','varchar(255) DEFAULT NULL1',1),('version_log_visit.location_country','CHAR(3) NULL1',1),('version_log_visit.location_latitude','decimal(9, 6) DEFAULT NULL1',1),('version_log_visit.location_longitude','decimal(9, 6) DEFAULT NULL1',1),('version_log_visit.location_region','char(3) DEFAULT NULL1',1),('version_log_visit.referer_keyword','VARCHAR(255) NULL1',1),('version_log_visit.referer_name','VARCHAR(70) NULL1',1),('version_log_visit.referer_type','TINYINT(1) UNSIGNED NULL1',1),('version_log_visit.referer_url','TEXT NULL',1),('version_log_visit.user_id','VARCHAR(200) NULL',1),('version_log_visit.visitor_count_visits','INT(11) UNSIGNED NOT NULL1',1),('version_log_visit.visitor_days_since_first','SMALLINT(5) UNSIGNED NULL1',1),('version_log_visit.visitor_days_since_last','SMALLINT(5) UNSIGNED NULL',1),('version_log_visit.visitor_days_since_order','SMALLINT(5) UNSIGNED NULL1',1),('version_log_visit.visitor_localtime','TIME NULL',1),('version_log_visit.visitor_returning','TINYINT(1) NULL1',1),('version_log_visit.visit_entry_idaction_name','INTEGER(10) UNSIGNED NULL',1),('version_log_visit.visit_entry_idaction_url','INTEGER(11) UNSIGNED NULL  DEFAULT NULL',1),('version_log_visit.visit_exit_idaction_name','INTEGER(10) UNSIGNED NULL',1),('version_log_visit.visit_exit_idaction_url','INTEGER(10) UNSIGNED NULL DEFAULT 0',1),('version_log_visit.visit_first_action_time','DATETIME NOT NULL',1),('version_log_visit.visit_goal_buyer','TINYINT(1) NULL',1),('version_log_visit.visit_goal_converted','TINYINT(1) NULL',1),('version_log_visit.visit_total_actions','INT(11) UNSIGNED NULL',1),('version_log_visit.visit_total_events','INT(11) UNSIGNED NULL',1),('version_log_visit.visit_total_interactions','SMALLINT UNSIGNED DEFAULT 0',1),('version_log_visit.visit_total_searches','SMALLINT(5) UNSIGNED NULL',1),('version_log_visit.visit_total_time','INT(11) UNSIGNED NOT NULL',1),('version_Marketplace','3.14.0',1),('version_MobileMessaging','3.14.0',1),('version_Monolog','3.14.0',1),('version_Morpheus','3.14.0',1),('version_MultiSites','3.14.0',1),('version_Overlay','3.14.0',1),('version_PrivacyManager','3.14.0',1),('version_ProfessionalServices','3.14.0',1),('version_Proxy','3.14.0',1),('version_Referrers','3.14.0',1),('version_Resolution','3.14.0',1),('version_RssWidget','1.0',1),('version_ScheduledReports','3.14.0',1),('version_SegmentEditor','3.14.0',1),('version_SEO','3.14.0',1),('version_SitesManager','3.14.0',1),('version_Tour','3.14.0',1),('version_Transitions','3.14.0',1),('version_TwoFactorAuth','3.14.0',1),('version_UserCountry','3.14.0',1),('version_UserCountryMap','3.14.0',1),('version_UserId','3.14.0',1),('version_UserLanguage','3.14.0',1),('version_UsersManager','3.14.0',1),('version_VisitFrequency','3.14.0',1),('version_VisitorInterest','3.14.0',1),('version_VisitsSummary','3.14.0',1),('version_VisitTime','3.14.0',1),('version_WebsiteMeasurable','3.14.0',1),('version_Widgetize','3.14.0',1);
/*!40000 ALTER TABLE `matomo_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_plugin_setting`
--

DROP TABLE IF EXISTS `matomo_plugin_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_segment` (
  `idsegment` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `definition` text NOT NULL,
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
/*!40101 SET character_set_client = utf8 */;
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
INSERT INTO `matomo_sequence` VALUES ('matomo_archive_numeric_2020_04',1);
/*!40000 ALTER TABLE `matomo_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_session`
--

DROP TABLE IF EXISTS `matomo_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_session` (
  `id` varchar(255) NOT NULL,
  `modified` int(11) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_session`
--

LOCK TABLES `matomo_session` WRITE;
/*!40000 ALTER TABLE `matomo_session` DISABLE KEYS */;
INSERT INTO `matomo_session` VALUES ('1tpeer1dvq934t12fbh9mheana',1585937910,1209600,'a:1:{s:4:\"data\";s:412:\"YTo1OntzOjQ6Il9fWkYiO2E6MTp7czoxMToiTG9naW4ubG9naW4iO2E6MTp7czo0OiJFTlZUIjthOjE6e3M6NToibm9uY2UiO2k6MTU4NTkzODQ5MTt9fX1zOjk6InVzZXIubmFtZSI7czo2OiJtYXRvbW8iO3M6MjI6InR3b2ZhY3RvcmF1dGgudmVyaWZpZWQiO2k6MDtzOjEyOiJzZXNzaW9uLmluZm8iO2E6Mzp7czoyOiJ0cyI7aToxNTg1OTM3ODk1O3M6MTA6InJlbWVtYmVyZWQiO2I6MDtzOjEwOiJleHBpcmF0aW9uIjtpOjE1ODU5NDE1MTA7fXM6MTI6Im5vdGlmaWNhdGlvbiI7YToxOntzOjEzOiJub3RpZmljYXRpb25zIjthOjA6e319fQ==\";}'),('9h6scu109nueo6jbf350h63upj',1598051396,1209600,'a:1:{s:4:\"data\";s:412:\"YTo1OntzOjEyOiJub3RpZmljYXRpb24iO2E6MTp7czoxMzoibm90aWZpY2F0aW9ucyI7YTowOnt9fXM6NDoiX19aRiI7YToxOntzOjExOiJMb2dpbi5sb2dpbiI7YToxOntzOjQ6IkVOVlQiO2E6MTp7czo1OiJub25jZSI7aToxNTk4MDUxOTMzO319fXM6OToidXNlci5uYW1lIjtzOjY6Im1hdG9tbyI7czoyMjoidHdvZmFjdG9yYXV0aC52ZXJpZmllZCI7aTowO3M6MTI6InNlc3Npb24uaW5mbyI7YTozOntzOjI6InRzIjtpOjE1OTgwNTEzMzc7czoxMDoicmVtZW1iZXJlZCI7YjowO3M6MTA6ImV4cGlyYXRpb24iO2k6MTU5ODA1NDk5Njt9fQ==\";}'),('c5v1s6e7gsi3tsdi3fgvf4bs7b',1596813878,1209600,'a:1:{s:4:\"data\";s:8:\"YTowOnt9\";}'),('hnph8spcnhlerp4ksppn7jjbsc',1597681517,1209600,'a:1:{s:4:\"data\";s:652:\"YTo2OntzOjEyOiJub3RpZmljYXRpb24iO2E6MTp7czoxMzoibm90aWZpY2F0aW9ucyI7YTowOnt9fXM6NDoiX19aRiI7YToyOntzOjExOiJMb2dpbi5sb2dpbiI7YToxOntzOjQ6IkVOVlQiO2E6MTp7czo1OiJub25jZSI7aToxNTk3NjgyMDgwO319czoyOToiVHdvRmFjdG9yQXV0aC5kaXNhYmxlQXV0aENvZGUiO2E6MTp7czo0OiJFTlZUIjthOjE6e3M6NToibm9uY2UiO2k6MTU5NzY4MjExMjt9fX1zOjk6InVzZXIubmFtZSI7czo2OiJtYXRvbW8iO3M6MjI6InR3b2ZhY3RvcmF1dGgudmVyaWZpZWQiO2k6MDtzOjEyOiJzZXNzaW9uLmluZm8iO2E6Mzp7czoyOiJ0cyI7aToxNTk3NjgxNDg0O3M6MTA6InJlbWVtYmVyZWQiO2I6MDtzOjEwOiJleHBpcmF0aW9uIjtpOjE1OTc2ODUxMTY7fXM6Mjk6IlR3b0ZhY3RvckF1dGguZGlzYWJsZUF1dGhDb2RlIjthOjE6e3M6NToibm9uY2UiO3M6MzI6Ijc5ZDlmMDM0OGQxYTY4M2MwZDVjYzYwYWRmMjI4NjExIjt9fQ==\";}'),('mqe8qq64t91bu62pdj6leev2ah',1585937891,1209600,'a:1:{s:4:\"data\";s:192:\"YToyOntzOjQ6Il9fWkYiO2E6MTp7czoxMToiTG9naW4ubG9naW4iO2E6MTp7czo0OiJFTlZUIjthOjE6e3M6NToibm9uY2UiO2k6MTU4NTkzODQ4Mzt9fX1zOjEyOiJub3RpZmljYXRpb24iO2E6MTp7czoxMzoibm90aWZpY2F0aW9ucyI7YTowOnt9fX0=\";}');
/*!40000 ALTER TABLE `matomo_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_site`
--

DROP TABLE IF EXISTS `matomo_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
INSERT INTO `matomo_site` VALUES (1,'LDbase','http://localhost','2020-04-03 22:17:31',0,1,'','','America/New_York','USD',0,'','','','','website',0,'anonymous');
/*!40000 ALTER TABLE `matomo_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_site_setting`
--

DROP TABLE IF EXISTS `matomo_site_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_site_url` (
  `idsite` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matomo_user` (
  `login` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `alias` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `twofactor_secret` varchar(40) NOT NULL DEFAULT '',
  `token_auth` char(32) NOT NULL,
  `superuser_access` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `date_registered` timestamp NULL DEFAULT NULL,
  `ts_password_modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`login`),
  UNIQUE KEY `uniq_keytoken` (`token_auth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matomo_user`
--

LOCK TABLES `matomo_user` WRITE;
/*!40000 ALTER TABLE `matomo_user` DISABLE KEYS */;
INSERT INTO `matomo_user` VALUES ('anonymous','','anonymous','anonymous@example.org','','anonymous',0,'2020-04-03 22:16:08','2020-04-03 22:16:08'),('matomo','$2y$10$wg8i6nSCH9mNuLPcrjctr.BHUXzAKs72ND2xDnRsVSxRyda1ZwKlq','matomo','admin@admin.edu','','fc8893d91864445ecc5913ff41bddda7',1,'2020-04-03 22:16:35','2020-04-03 22:16:35');
/*!40000 ALTER TABLE `matomo_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matomo_user_dashboard`
--

DROP TABLE IF EXISTS `matomo_user_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-21 19:10:05
