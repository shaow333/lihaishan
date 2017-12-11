-- MySQL dump 10.13  Distrib 5.6.36, for Win64 (x86_64)
--
-- Host: localhost    Database: lhs
-- ------------------------------------------------------
-- Server version	5.6.36-log

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
-- Table structure for table `cbt`
--

DROP TABLE IF EXISTS `cbt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cbt` (
  `username` varchar(100) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cbt`
--

LOCK TABLES `cbt` WRITE;
/*!40000 ALTER TABLE `cbt` DISABLE KEYS */;
/*!40000 ALTER TABLE `cbt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cbten`
--

DROP TABLE IF EXISTS `cbten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cbten` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `U` varchar(100) NOT NULL,
  `power` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cbten`
--

LOCK TABLES `cbten` WRITE;
/*!40000 ALTER TABLE `cbten` DISABLE KEYS */;
INSERT INTO `cbten` VALUES (35,'idc1','70','1U','20A'),(36,'idc2','71','1U','20A'),(37,'idc3','70','1U','20A');
/*!40000 ALTER TABLE `cbten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apply_name` varchar(255) DEFAULT NULL COMMENT '申请人',
  `handle_name` varchar(255) DEFAULT NULL COMMENT '处理人',
  `apply_type` int(255) DEFAULT NULL COMMENT '类型',
  `apply_desc` varchar(255) DEFAULT NULL COMMENT '申请人描述',
  `handle_desc` varchar(255) DEFAULT NULL COMMENT '处理人描述',
  `status` int(255) DEFAULT '0',
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (65,NULL,'cxf',0,'123','1',2,'2017-09-21 02:59:24','2017-09-22 08:36:14'),(66,'cxf','lhs',0,'123','1',2,'2017-09-21 03:23:07','2017-09-22 08:36:19'),(67,'cxf','lhs',0,'qeqwe','123123',2,'2017-09-21 03:23:19','2017-09-22 09:21:13'),(68,'cxf','cxf',0,'123123','123123',2,'2017-09-21 03:37:56','2017-09-26 03:06:54'),(69,'cxf','cxf',0,'123123','123',2,'2017-09-21 03:40:58','2017-09-26 03:36:10'),(70,'cxf','lhs',0,'123','123213',2,'2017-09-21 03:41:52','2017-11-08 06:16:57'),(71,'cxf','cxf',0,'123213','123123',2,'2017-09-21 03:42:13','2017-09-26 06:35:22'),(72,'cxf','cxf',0,'123','123',2,'2017-09-21 03:46:08','2017-09-26 06:36:04'),(73,'cxf','cxf',0,'123','12',2,'2017-09-21 03:47:43','2017-09-22 08:43:20'),(74,'cxf','cxf',0,'123','213',2,'2017-09-21 03:52:09','2017-11-08 06:17:02'),(75,'cxf','cxf',1,'1234','123',2,'2017-09-21 06:13:11','2017-11-08 06:17:08'),(76,'lhs','lhs',2,'123123',NULL,1,'2017-09-21 06:14:07','2017-11-08 06:54:24'),(77,'lhs','cxf',1,'123',NULL,1,'2017-09-21 06:16:07','2017-09-22 03:18:34'),(78,'lhs','cxf',2,'123123','',2,'2017-09-21 06:20:02','2017-09-26 06:04:08'),(79,'lhs','cxf',1,'123','1234123',2,'2017-09-21 06:29:50','2017-09-26 03:07:02'),(80,'cxf','cxf',1,'123123','123',2,'2017-09-22 03:44:56','2017-09-22 08:43:33'),(81,'cxf',NULL,0,'123123','123',2,'2017-09-22 06:36:50','2017-09-22 08:43:25'),(82,'cxf',NULL,2,'123','123',2,'2017-09-26 03:29:15','2017-09-26 03:30:14'),(83,'cxf','cxf',2,'1234123123','123',2,'2017-09-26 03:33:48','2017-09-26 03:36:16'),(84,'cxf','cxf',0,'123','通过',2,'2017-09-26 06:04:25','2017-11-08 06:56:15'),(85,'cxf','cxf',0,'1231231234123',NULL,1,'2017-09-26 07:18:40','2017-09-27 06:44:27'),(86,'cxf','lhs',2,'1234',NULL,1,'2017-09-26 07:22:37','2017-10-16 03:01:45'),(87,'lhs','lhs',2,'123123',NULL,1,'2017-10-16 03:16:24','2017-10-16 03:16:41'),(88,'lhs','lhs',2,'123123',NULL,1,'2017-10-16 03:38:30','2017-11-08 06:54:32'),(89,'lhs','lhs',0,'客户未收到回款','已回款',2,'2017-11-08 07:57:07','2017-11-08 08:00:36'),(90,'lhs','lhs',0,'太傻比勒\r\n','阿诗丹顿',2,'2017-11-15 07:04:05','2017-11-15 07:04:18');
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `joblist`
--

DROP TABLE IF EXISTS `joblist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joblist` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `apply_type` varchar(100) NOT NULL,
  `apply_time` varchar(100) NOT NULL,
  `apply_statue` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `joblist`
--

LOCK TABLES `joblist` WRITE;
/*!40000 ALTER TABLE `joblist` DISABLE KEYS */;
/*!40000 ALTER TABLE `joblist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list`
--

DROP TABLE IF EXISTS `list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `passwd` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `age` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list`
--

LOCK TABLES `list` WRITE;
/*!40000 ALTER TABLE `list` DISABLE KEYS */;
INSERT INTO `list` VALUES (1,'东皇太一','123','18511891703','haishan@sina.com',12),(2,'cxf','123','18511854547','email',12),(5,'兰陵王','123','14512584585','haishan0181@sina.com',12),(6,'NAKALL','123','1451236848','haishan0181@sina.com',12),(7,'李白','123','18511891703','haishan0181@sina.com',12),(8,'貂蝉','123','15624967405','zhangyu@qq.com',18);
/*!40000 ALTER TABLE `list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `ipaddress` varchar(255) DEFAULT NULL,
  `url` varchar(2000) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `counts` bigint(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES ('123.174.51.164','/public/js/weibo.js?20110824','200',116),('112.66.139.228','/data/uploads/2014/0720/22/small_53cbcee104d32.jpg','200',1),('218.86.97.101','/public/themes/adreambox/image/sousuoditu.jpg','200',1),('123.125.125.137','/data/uploads/avatar/2/middle.jpg','200',1),('49.118.204.235','/public/themes/adreambox/public.css?20110820','200',1),('218.203.175.179','/data/uploads/2014/0818/00/small_53f0db858fb02.jpg','200',2),('60.188.210.55','/public/js/jquery.isotope.min.js','200',1),('49.79.197.78','/public/js/scrolltopcontrol.js?20110824','200',1),('42.224.103.222','/public/themes/adreambox/kecheng.css','200',1),('42.92.217.130','/data/uploads/2014/0801/14/small_53db341eae5aa.jpg','200',1),('182.34.175.10','/data/uploads/avatar/3162/middle.jpg','200',1),('123.150.182.14','/data/uploads/2014/0729/22/small_53d7aadd1598f.jpg','200',1),('125.76.92.106','/public/themes/adreambox/images/expression/miniblog/titter.gif','200',1),('118.253.37.124','/public/themes/adreambox/images/regbtn.png','200',1),('183.39.211.249','/public/themes/adreambox/image/message.png','304',1),('27.227.163.200','/data/uploads/avatar/11937/middle.jpg','200',1),('118.181.80.196','/data/uploads/avatar/12108/middle.jpg','200',1),('111.85.34.165','/data/uploads/avatar/1062/middle.jpg','304',4),('180.153.198.194','/public/js/editor/editor/theme/cool/editor-pkg-sprite-min.css','200',1),('218.27.196.184','/public/js/tbox/images/close.gif','200',1),('175.184.130.83','/public/themes/adreambox/login_2.css','200',1),('66.249.64.5','/public/themes/adreambox/image/zhaopian_bj.png','200',1),('27.22.17.255','/data/uploads/2014/0801/20/small_53db849b597a9.jpg','200',1),('222.35.67.153','/favicon.ico','404',1),('61.129.190.152','/data/uploads/2014/0726/11/small_53d31ad587176.jpg','200',1),('219.146.67.213','/data/uploads/2014/0129/21/small_52e9071a52984.jpg','200',1),('175.23.224.136','/data/uploads/avatar/2/middle.jpg','304',1),('117.136.27.42','/data/uploads/2014/0801/11/small_53db0520523aa.jpg','200',1),('42.92.231.173','/data/uploads/2014/0819/16/middle_53f30a4e2b3fe.jpg?time=Sat%20Aug%2023%202014%2008:13:12%20GMT+0800%20(%E4%B8%AD%E5%9B%BD%E6%A0%87%E5%87%86%E6%97%B6%E9%97%B4)','200',1),('27.227.163.200','/data/uploads/2014/0820/21/small_53f49dc014946.jpg','200',1),('42.92.213.110','/data/uploads/2014/0723/23/small_53cfcf79b7589.jpg','200',1),('222.161.249.165','/data/uploads/2014/0622/09/small_53a62d8a151a2.jpg','200',1),('124.161.224.126','/data/uploads/2014/0130/15/small_52e9fcbd80404.jpg','200',1),('124.161.224.125','/apps/jijinhui/Tpl/default/Public/images/navbj.png','200',1),('123.172.183.192','/data/uploads/2014/0730/00/small_53d7cc061fd56.jpg','200',1),('27.24.190.122','/data/uploads/2014/0818/00/small_53f0db8929e4b.jpg','200',1),('42.92.212.6','/public/themes/adreambox/images/icon_waiting.gif','200',1),('118.181.80.196','/public/themes/adreambox/image/refresh_bg.png','200',1),('106.38.202.146','/public/js/jquery.autocomplete.js','200',1),('106.120.187.241','/data/uploads/2014/0821/11/small_53f56e804d254.jpg','304',1),('182.113.219.110','/public/themes/adreambox/image/heart.jpg','200',1),('124.161.224.126','/apps/adreamgroup/Appinfo/ico_app24.png','200',1),('111.85.34.165','/public/themes/adreambox/image/refresh_bg1.png','304',2),('111.206.51.200','/public/themes/adreambox/images/expression/miniblog/handshake.gif','200',2),('123.52.113.69','/public/themes/adreambox/form.css','200',1),('119.0.153.85','/data/uploads/2013/1014/10/525b5c418e1ab.png','200',2),('27.227.68.145','/data/uploads/2014/0728/21/small_53d656a59b82a.jpg','200',1),('1.48.219.30','/data/uploads/avatar/2163/big.jpg','200',1),('42.92.213.110','/public/themes/adreambox/image/zuo_a.png','200',1),('58.253.6.133','/data/uploads/2014/0723/09/small_53cf0cdf81c54.jpg','200',1),('119.146.75.58','/data/uploads/2014/0102/15/small_52c513e94378b.jpg','200',1),('111.85.34.165','/public/themes/adreambox/images/expression/miniblog/victory.gif','200',1),('27.24.190.122','/data/uploads/avatar/16973/middle.jpg','200',1),('123.174.82.62','/data/uploads/2014/0610/11/small_53968294cbe27.jpg','200',2),('123.172.183.192','/public/themes/adreambox/image/search_bg.png','200',1),('113.194.123.184','/data/uploads/2014/0729/22/small_53d7aadcddcae.jpg','200',1),('27.227.163.200','/data/uploads/avatar/5461/middle.jpg','200',1),('101.36.65.114','/data/uploads/2014/0729/22/small_53d7adb2b4c91.jpg','200',1),('124.68.3.6','/data/uploads/2014/0730/00/small_53d7cbfc76b82.jpg','200',1),('211.97.129.199','/data/uploads/2013/0305/14/small_513593c7ed23a.png','200',1),('27.24.190.122','/public/themes/adreambox/image/pic_jiehuan.jpg','200',1),('111.85.34.165','/data/uploads/avatar/4471/middle.jpg','200',1),('60.222.231.46','/public/js/weibo.js','200',2),('122.136.242.172','/public/themes/adreambox/image/biaoqian.jpg','304',1),('222.245.214.232','/apps/home/Tpl/default/Public/images/fzcg_dh[1].gif','404',1),('60.55.42.19','/public/js/json2select.js','200',1),('60.165.132.223','/data/uploads/avatar/942/middle.jpg','200',1),('106.41.100.49','/favicon.ico','404',1),('42.92.217.130','/data/uploads/2014/0728/21/small_53d6569cb9c29.jpg','200',1),('125.71.248.251','/data/uploads/avatar/85/middle.jpg','200',2),('1.48.219.30','/data/uploads/avatar/3541/middle.jpg','200',1),('113.46.130.105','/data/uploads/2014/0726/10/small_53d3195365cdf.jpg','304',1),('60.55.42.19','/data/uploads/avatar/21725/middle.jpg','200',1),('118.182.116.39','/data/uploads/avatar/4999/middle.jpg','200',1),('218.27.196.184','/public/themes/adreambox/images/close.gif','200',1),('180.170.128.106','/data/uploads/2014/0815/22/small_53ee1d9061b31.jpg','304',1),('171.94.245.24','/data/uploads/2014/0802/16/small_53dca2da013c9.jpg','200',1),('54.191.160.79','/public/themes/adreambox/images/ico.png','200',1),('221.12.76.53','/public/themes/adreambox/images/expression/miniblog/loveliness.gif','200',1),('118.182.116.39','/data/uploads/avatar/6251/middle.jpg','200',1),('222.78.36.210','/public/js/common.js?20110824','200',1),('60.27.136.206','/data/uploads/2013/0330/21/5156eb26d1d8e.jpg','200',1),('180.153.206.26','/public/js/weibo.js?20110824','200',1),('219.146.67.213','/data/uploads/2013/1221/18/small_52b56fb23047d.jpg','200',1),('60.55.42.150','/apps/home/Tpl/default/Public/js/register.js','200',1),('27.227.163.200','/data/uploads/avatar/7619/middle.jpg','200',1),('14.17.124.140','/public/themes/adreambox/form.css','304',3),('119.147.225.136','/public/themes/adreambox/images/tp_azzj2.gif','200',1),('112.66.139.228','/data/uploads/2014/0715/15/middle_53c4de9734001.jpg?time=Sat%20Aug%2023%202014%2001:39:57%20GMT+0800%20(%E4%B8%AD%E5%9B%BD%E6%A0%87%E5%87%86%E6%97%B6%E9%97%B4)','200',1),('10.35.1.82','/data/uploads/2013/0413/21/5169612d6375c.jpg','200',1),('1.48.219.30','/data/uploads/2014/0724/08/small_53d04f50f20b4.jpg','200',1),('59.35.175.217','/data/uploads/avatar/19005/middle.jpg','200',1),('58.253.6.133','/data/uploads/avatar/95/middle.jpg','200',1),('58.253.6.133','/public/themes/adreambox/image/search_bg.png','200',1),('60.165.132.241','/public/js/jquery.isotope.min.js','304',2),('118.112.143.148','/public/themes/adreambox/images/message.gif','200',1),('101.36.65.114','/data/uploads/2014/0728/21/small_53d656a23728d.jpg','200',1),('27.227.163.200','/public/themes/adreambox/image/main_bg.png','200',1),('113.124.152.211','/public/js/jquery.js','200',1),('112.66.149.169','/public/themes/adreambox/image/tx.png','304',1),('59.35.175.217','/public/themes/adreambox/image/shuzi.png','200',1),('60.165.132.223','/data/uploads/2014/0715/17/small_53c4f99c44a69.jpg','200',1),('60.165.132.241','/data/uploads/2014/0818/11/small_53f1766a8fe34.JPG','304',1),('123.151.23.203','/data/uploads/avatar/10426/middle.jpg','200',1),('171.127.62.33','/public/js/tbox/box.js?20110824','200',1),('119.114.183.123','/data/uploads/2014/0728/21/small_53d656a3a11f2.jpg','200',1),('1.48.219.30','/data/uploads/avatar/9014/middle.jpg','200',1),('1.207.62.111','/public/themes/adreambox/image/fabubotton.png','200',1),('27.227.68.145','/data/uploads/2014/0730/23/small_53d90bfe47b3b.jpg','200',1),('171.216.72.110','/data/uploads/2013/1218/22/small_52b1b53ac3977.jpg','200',1),('183.190.80.103','/public/themes/adreambox/images/sicon.gif','200',1),('182.147.146.40','/public/themes/adreambox/image/gengduo.jpg','200',1),('66.249.64.15','/data/uploads/2014/0102/15/52c513e94378b.jpg','200',1),('218.86.97.101','/data/uploads/2014/0802/16/small_53dca2da013c9.jpg','304',1),('111.85.41.230','/data/uploads/2014/0730/17/small_53d8bc89b2ecc.jpg','200',1),('113.194.123.184','/apps/group/Tpl/default/Public/Js/json2select.js','200',1),('101.36.65.118','/public/themes/adreambox/images/layer_arrow.png','200',1),('27.22.17.255','/apps/vote/Appinfo/ico_app.png','200',1),('182.132.82.161','/data/uploads/2014/0820/21/small_53f49d7ca94b7.jpg','200',1),('101.226.89.123','/public/js/jquery.js','200',1),('211.137.69.234','/public/js/jquery.js','200',1),('157.55.39.52','/public/themes/adreambox/images/tab_menu.gif','200',1),('180.153.201.217','/apps/photo/Tpl/default/Public/js/drag_sort.js','200',1),('60.55.42.19','/public/themes/adreambox/images/expression/miniblog/ok.gif','200',1),('182.135.106.136','/data/uploads/2014/0531/16/small_538996d65c2b5.jpg','200',1),('180.149.143.18','/public/themes/adreambox/images/expression/miniblog/ok.gif','200',1),('42.92.231.173','/data/uploads/2014/0819/16/small_53f30a4e4cb15.jpg','304',1),('111.206.36.143','/data/uploads/2013/1014/10/525b5c418e1ab.png','200',1),('14.20.111.97','/data/uploads/2014/0818/00/small_53f0db8929e4b.jpg','200',1),('124.161.38.114','/data/uploads/2014/0726/10/small_53d3195365cdf.jpg','200',1),('118.112.143.148','/public/themes/adreambox/image/topxian.png','200',1),('119.146.75.58','/public/themes/adreambox/image/tab_bg2.png','200',1),('1.194.11.124','/data/uploads/2014/0718/21/small_53c91bdfe9fca.jpg','200',1),('117.63.146.40','/public/js/jquery.js','200',3),('218.27.196.184','/data/uploads/2014/0729/22/small_53d7aadcddcae.jpg','200',1),('60.222.231.46','/public/themes/adreambox/images/btn_top.gif','200',4),('123.180.107.1','/public/themes/adreambox/favicon.ico','200',1),('218.203.175.179','/data/uploads/2014/0731/20/small_53da3ce3a8627.jpg','200',2),('182.135.106.136','/data/uploads/2014/0721/15/small_53ccbadfe91d6.jpg','200',1),('111.85.34.165','/public/themes/images/dot_li.png','404',2),('218.200.66.201','/data/uploads/2014/0624/09/small_53a8d989a08f6.jpg','304',6),('222.191.239.34','/addons/plugins/SpaceStyle/html/base.css','200',1),('111.85.168.235','/public/themes/adreambox/public.css?20110820','200',1),('183.131.9.12','/data/uploads/2014/0818/00/small_53f0db8ade519.jpg','200',1),('111.85.34.165','/public/themes/adreambox/image/atme.jpg','200',1),('60.165.132.223','/data/uploads/2013/0528/00/small_51a3857eb71c3.jpg','200',1),('113.194.123.184','/public/js/tbox/images/boxy-sw.png','200',1),('118.112.143.148','/data/uploads/2014/0718/11/small_53c88f4bebb15.jpg','200',1),('111.85.34.165','/data/uploads/2014/0731/20/small_53da3ce3a5b2c.jpg','200',1),('222.245.214.232','/public/js/jquery.form.js','200',1),('171.94.3.78','/public/themes/adreambox/images/expression/miniblog/hug.gif','200',1),('1.48.219.30','/data/uploads/avatar/1171/middle.jpg','200',1),('221.12.76.53','/public/themes/adreambox/image/tiaozhuan_bj.png','200',1),('27.22.17.255','/data/uploads/avatar/4087/middle.jpg','200',1),('123.151.185.36','/public/themes/adreambox/public.css?20110820','200',1),('1.48.219.30','/data/uploads/2014/0820/21/small_53f49d7ca94b7.jpg','200',1),('101.36.65.118','/apps/group/Tpl/default/Public/Js/common.js','200',1),('124.161.38.114','/data/uploads/2014/0725/20/small_53d24f2046e77.jpg','200',1),('58.253.6.133','/data/uploads/2014/0731/20/small_53da3ce3a5b2c.jpg','200',1),('124.161.224.125','/public/js/autocomplete/jquery.autocomplete.css','200',1),('119.147.225.136','/public/themes/adreambox/images/login_btn.gif','200',1),('27.227.187.32','/data/uploads/2014/0513/08/small_53716a97a247f.jpg','200',1),('14.105.75.90','/public/themes/adreambox/favicon.ico','200',1),('180.98.111.158','/data/uploads/2014/0802/16/small_53dca2da547d2.jpg','200',1),('60.222.231.46','/public/themes/adreambox/login.css','200',3),('101.226.166.204','/data/uploads/2013/0327/20/5152e0c504fe6.JPG','200',1),('27.227.163.200','/data/uploads/avatar/5927/middle.jpg','200',1),('119.146.75.13','/data/uploads/2014/0727/23/small_53d516f3b990e.jpg','200',1),('113.124.152.211','/public/themes/adreambox/stylexuanke.css','200',1),('1.48.219.30','/data/uploads/avatar/2403/middle.jpg','200',1),('222.245.214.232','/public/themes/adreambox/images/reg_process_on.gif','200',1),('66.249.64.15','/data/uploads/2014/0609/13/53953fb9163c2.jpg','200',1),('222.161.250.14','/data/uploads/2014/0726/10/small_53d31951e4ff1.jpg','304',1),('27.227.187.32','/data/uploads/2014/0724/21/small_53d10de833ec5.jpg','200',1),('27.22.17.255','/data/uploads/avatar/6066/middle.jpg','200',1),('60.189.227.80','/data/uploads/2014/0729/22/small_53d7aadd506fe.jpg','200',1),('119.50.145.137','/public/themes/adreambox/images/expression/miniblog/moon.gif','200',1),('118.112.143.148','/data/uploads/2014/0717/08/small_53c71f3e30807.jpg','200',1),('183.71.45.136','/data/uploads/2014/0706/23/small_53b969c25c852.jpg','200',1),('118.182.116.39','/data/uploads/avatar/1345/middle.jpg','200',1),('60.55.42.150','/data/uploads/2014/0818/00/small_53f0db858fb02.jpg','200',1),('1.48.219.30','/data/uploads/2014/0723/22/small_53cfc37b3433b.jpg','200',1),('36.99.64.71','/data/uploads/avatar/14907/middle.jpg','200',1),('171.216.72.110','/data/uploads/2014/0623/20/middle_53a81d9bb62d0.jpg?time=Sat%20Aug%2023%2016:57:56%20UTC+0800%202014','200',1),('1.48.219.30','/data/uploads/avatar/2320/middle.jpg','200',1),('60.222.231.46','/Pulbic/js/rcalendar.js','404',2),('175.23.224.136','/data/uploads/avatar/940/middle.jpg','304',1),('10.35.1.82','/data/uploads/2013/0424/17/51779f42c677a.JPG','200',1),('123.151.185.36','/data/uploads/avatar/14178/middle.jpg','200',1),('37.58.100.82','/data/uploads/2013/0408/09/51621d81b5428.JPG','200',1),('112.66.139.228','/data/uploads/2014/0704/18/small_53b67dbf28155.jpg','200',1),('14.18.29.244','/data/uploads/2014/0722/23/middle_53ce8828aa43f.jpg?time=Sat%20Aug%2023%202014%2016:35:02%20GMT+0800%20(xE4xB8xADxE5x9BxBDxE6xA0x87xE5x87x86xE6x97xB6xE9x97xB4)','200',1),('112.66.139.228','/data/uploads/2014/0722/23/small_53ce895645975.jpg','200',1),('123.172.183.192','/addons/plugins/FileUploads/html/images/zw_img.gif','200',1),('49.79.197.78','/public/themes/adreambox/image/foot_line.png','200',1),('183.30.200.178','/data/uploads/avatar/1100/middle.jpg','200',1),('101.36.65.118','/public/themes/adreambox/images/expression/miniblog/ok.gif','200',1),('60.165.132.241','/data/uploads/2014/0816/21/small_53ef62423f4d4.jpg','304',1),('14.17.124.140','/data/uploads/2014/0725/11/small_53d1ccc5bce22.jpg','200',1),('182.113.219.110','/data/uploads/2014/0731/20/small_53da3ce29324b.jpg','200',1),('119.0.153.85','/public/themes/adreambox/images/expression/miniblog/shy.gif','200',1),('111.85.34.165','/data/uploads/2014/0717/08/small_53c71f3e5a7ec.jpg','200',1),('183.54.30.40','/addons/plugins/SpaceStyle/html/base.css','200',1),('42.230.145.105','/public/themes/adreambox/images/regbtn.png','200',1),('113.141.151.109','/public/themes/adreambox/layout.css?20110820','200',1),('183.95.132.230','/public/themes/adreambox/image/tx.png','200',1),('42.92.201.201','/data/uploads/avatar/14890/middle.jpg','304',2),('60.165.132.241','/public/themes/adreambox/images/v_05.gif','304',1),('222.161.249.165','/public/themes/adreambox/images/expression/miniblog/ok.gif','200',1),('182.113.219.110','/apps/home/Tpl/default/Public/images/unfold.gif','200',1),('119.146.75.13','/data/uploads/2014/0724/21/small_53d10de833ec5.jpg','200',1),('175.31.131.249','/data/uploads/2014/0729/22/small_53d7aadc6a11f.jpg','304',1),('42.92.213.110','/public/themes/adreambox/kecheng.css','200',1),('175.184.130.83','/data/uploads/2014/0818/11/small_53f1721cc09b5.jpg','200',1),('1.48.195.160','/public/js/weibo.js','200',1),('218.29.111.117','/data/uploads/2014/0727/23/small_53d516f46362c.jpg','200',1),('1.48.219.30','/data/uploads/avatar/996/middle.jpg','200',1),('222.86.153.12','/data/uploads/2013/1215/21/small_52adb162f0f5a.jpg','200',1),('118.181.80.196','/public/themes/adreambox/image/ss_botton.jpg','200',1),('218.203.175.179','/public/themes/adreambox/image/biaoyu.png','200',1),('183.95.132.230','/data/uploads/avatar/8854/middle.jpg','200',1),('113.194.123.184','/data/uploads/2014/0722/23/small_53ce8a3b6e569.jpg','200',1),('111.85.34.165','/data/uploads/avatar/7801/middle.jpg','200',1),('123.174.51.164','/public/js/editor/editor/plugins/smiley/48x48/20.gif','200',1),('42.92.213.110','/public/themes/adreambox/images/expression/miniblog/loveliness.gif','200',1),('219.141.99.47','/public/themes/adreambox/images/expression/miniblog/victory.gif','200',1),('219.146.67.214','/data/uploads/2014/0421/13/small_5354add96253f.jpg','200',1),('124.161.38.114','/public/themes/adreambox/login.css','200',3),('221.12.76.53','/data/uploads/2014/0730/00/small_53d7cc061fd56.jpg','200',1),('153.0.7.250','/data/uploads/2013/0305/14/small_513593c7ed23a.png','200',1),('183.60.35.29','/public/js/common.js?20110824','200',1),('60.222.60.231','/data/uploads/2014/0718/21/middle_53c91bdfe9fca.jpg?time=Sat%20Aug%2023%202014%2012:13:46%20GMT+0800%20(%E4%B8%AD%E5%9B%BD%E6%A0%87%E5%87%86%E6%97%B6%E9%97%B4)','200',1),('60.222.231.46','/data/uploads/2014/0731/20/small_53da3ce3601eb.jpg','200',3),('124.68.3.12','/data/uploads/2013/0322/05/514b8020ba9a5.jpg','200',1),('125.71.248.251','/data/uploads/avatar/8850/middle.jpg','200',1),('180.149.143.143','/data/uploads/2013/1226/10/small_52bb938725af0.jpg','200',1),('220.181.132.198','/public/js/weibo.js?20110824','200',1),('61.158.152.205','/public/themes/adreambox/image/top_bj.jpg','200',1),('123.174.51.164','/data/uploads/2013/0731/15/51f8c29e23a06.jpg','200',1),('60.222.60.231','/public/js/tbox/box.js?20110824','200',1),('59.108.200.183','/addons/plugins/Login/html/image/btn_qq.gif','200',1),('119.50.145.137','/public/themes/adreambox/image/heart.jpg','200',1),('182.118.55.173','/public/js/jquery.js','200',1),('42.92.201.201','/data/uploads/avatar/558/middle.jpg','304',2),('123.125.68.22','/data/uploads/2013/0321/15/514abd8cc26b2.jpg','200',1),('14.17.124.140','/data/uploads/2014/0816/21/small_53ef637d26e38.jpg','200',1),('119.146.75.58','/public/themes/adreambox/images/regbtn.png','200',1),('119.50.145.137','/data/uploads/2014/0803/21/small_53de3a1e49194.jpg','200',1),('111.121.10.161','/public/themes/adreambox/login_2.css','304',1),('175.184.130.83','/public/themes/adreambox/image/zhong_b.png','200',1),('123.172.183.192','/public/themes/adreambox/images/layer_bg1.png','200',1),('219.141.99.47','/public/themes/adreambox/image/shezhi.png','200',1),('59.58.224.20','/data/uploads/2014/0129/21/small_52e9071a6fe3f.jpg','200',1),('183.30.200.178','/data/uploads/2013/1030/19/small_5270eddd35dc3.jpg','200',1),('1.48.156.237','/public/themes/adreambox/form.css','304',2),('218.29.111.117','/data/uploads/avatar/3868/middle.jpg','200',1),('101.226.168.233','/data/uploads/2013/0915/23/5235d5c2218ca.JPG','200',1),('1.48.219.30','/data/uploads/avatar/11063/middle.jpg','200',1),('36.99.64.71','/data/uploads/2014/0724/21/small_53d10de634a64.jpg','200',1),('14.18.29.244','/favicon.ico','404',2),('180.149.143.13','/public/themes/adreambox/images/v_01.gif','200',1),('222.161.250.14','/data/uploads/2014/0724/21/small_53d10de0b6c2c.jpg','304',1),('222.245.214.232','/apps/home/Tpl/default/Public/js/register.js','200',1),('111.85.7.250','/public/themes/adreambox/images/zw_img.gif','200',1),('1.48.219.30','/static/image/common/back.gif','404',10),('222.245.214.232','/data/uploads/2014/0623/15/small_53a7d3844c5b7.jpg','200',1),('101.226.33.205','/public/js/jquery.isotope.min.js','200',1),('119.114.183.123','/data/uploads/2014/0802/16/small_53dca2dae7f39.jpg','200',1),('171.94.245.24','/public/js/weibo.js?20110824','200',1),('123.180.107.1','/public/themes/adreambox/image/reyi.png','200',1),('27.227.187.32','/data/uploads/2014/0726/10/small_53d3195365cdf.jpg','200',1),('183.95.132.230','/public/themes/adreambox/images/v_05.gif','200',1),('60.164.248.142','/public/themes/adreambox/images/expression/miniblog/pig.gif','200',1),('171.8.200.100','/public/js/jquery.isotope.min.js','200',1),('171.106.90.131','/public/themes/adreambox/images/zw_img.gif','200',1),('61.158.152.205','/public/js/common.js?20110824','200',1),('27.227.163.200','/public/themes/adreambox/images/expression/miniblog/victory.gif','200',1),('183.131.9.12','/apps/home/Tpl/default/Public/js/slides.min.jquery.js','200',1),('10.35.1.82','/data/uploads/2014/0309/10/531bd7d261a07.jpg','200',2),('222.161.250.14','/data/uploads/2014/0803/21/small_53de3a1e0c8d1.jpg','200',1),('101.36.65.114','/data/uploads/2014/0729/22/small_53d7aadd32e52.jpg','200',1),('61.129.190.152','/data/uploads/2014/0822/00/middle_53f61837970fa.jpg?time=Sat%20Aug%2023%2020:30:51%20UTC+0800%202014','200',1),('153.0.7.250','/public/themes/adreambox/image/tab_bg2.png','200',1),('218.29.111.117','/data/uploads/avatar/3358/middle.jpg','200',1),('119.0.153.85','/public/js/editor/editor/theme/cool/editor-pkg-min-datauri.css','200',2),('123.174.51.164','/public/themes/adreambox/image/main_bg.png','200',22),('219.141.99.47','/data/uploads/2014/0818/00/small_53f0db8387231.jpg','304',1),('124.161.224.126','/public/js/jquery.jgrow.min.js','200',1),('218.29.111.117','/data/uploads/avatar/61/middle.jpg','200',1),('27.227.163.200','/public/themes/adreambox/image/tx_abg.png','200',1),('202.100.77.214','/apps/group/Tpl/default/Public/Js/common.js','200',1),('60.189.227.80','/data/uploads/avatar/21058/middle.jpg','200',1),('112.66.139.228','/data/uploads/2014/0716/00/small_53c552617e6b1.jpg','200',1),('36.99.64.71','/public/js/weibo.js?20110824','200',1),('175.23.224.136','/public/js/xheditor/xheditor-1.1.12-zh-cn.min.js','304',2),('101.36.65.118','/data/uploads/2014/0820/21/small_53f49dc014946.jpg','200',1),('111.206.36.141','/data/uploads/avatar/15420/middle.jpg','200',1),('27.227.68.145','/data/uploads/2014/0801/11/small_53db0525e3c0a.jpg','200',1),('183.39.211.249','/data/uploads/2014/0802/16/small_53dca2dabdb73.jpg','304',1),('180.98.111.158','/public/themes/adreambox/images/expression/miniblog/lol.gif','200',1),('124.161.38.114','/public/themes/adreambox/style.css','200',2),('220.162.151.145','/data/uploads/2014/0715/15/small_53c4de97825e6.jpg','200',1),('54.191.160.79','/public/themes/adreambox/images/ico_file.gif','200',1);
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lst`
--

DROP TABLE IF EXISTS `lst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lst` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `paawd` varchar(255) NOT NULL,
  `role` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lst`
--

LOCK TABLES `lst` WRITE;
/*!40000 ALTER TABLE `lst` DISABLE KEYS */;
/*!40000 ALTER TABLE `lst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machine`
--

DROP TABLE IF EXISTS `machine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `machine` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machine`
--

LOCK TABLES `machine` WRITE;
/*!40000 ALTER TABLE `machine` DISABLE KEYS */;
INSERT INTO `machine` VALUES (70,'pc1','钟鼓楼','1586451581'),(71,'pc2','前门','158653535152'),(72,'pc3','天安门','13255126535');
/*!40000 ALTER TABLE `machine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map`
--

DROP TABLE IF EXISTS `map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map`
--

LOCK TABLES `map` WRITE;
/*!40000 ALTER TABLE `map` DISABLE KEYS */;
INSERT INTO `map` VALUES (1,'广东','2000'),(2,'福建','8000'),(3,'河南','10000'),(7,'贵州','6934'),(8,'贵州','6934'),(9,'宁夏','2000'),(10,'广东','5670'),(11,'重庆','1706'),(12,'甘肃','10'),(13,'四川','6832'),(14,'河南','2870'),(15,'安徽','1800'),(16,'江苏','2345'),(17,'湖南','10000'),(18,'北京','1667'),(19,'新疆','393'),(20,'浙江','1319'),(21,'广西','32332'),(22,'青海','519'),(23,'陕西','2323'),(24,'山西','8671'),(25,'黑龙江','23'),(26,'西藏','255'),(27,'海南','1139'),(28,'天津','253'),(29,'辽宁','796'),(30,'江西','492'),(31,'内蒙古 ','16'),(32,'吉林','1955'),(33,'河北','571'),(34,'云南','1'),(35,'山东','940'),(36,'上海','32343'),(37,'湖北','23232');
/*!40000 ALTER TABLE `map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mem`
--

DROP TABLE IF EXISTS `mem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mem` (
  `memory` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mem`
--

LOCK TABLES `mem` WRITE;
/*!40000 ALTER TABLE `mem` DISABLE KEYS */;
INSERT INTO `mem` VALUES (3945,1510553155),(3940,1510553156),(3899,1510553157),(3906,1510553158),(3910,1510553159),(3908,1510553160),(3911,1510553161),(3909,1510553162),(3913,1510553163),(3915,1510553164),(3918,1510553165),(3921,1510553166),(3924,1510553167),(3924,1510553168),(3925,1510553169),(3923,1510553170),(3925,1510553171),(3922,1510553172),(3926,1510553173),(3928,1510553174),(3932,1510553175),(3930,1510553176),(3931,1510553178),(3932,1510553179),(3933,1510553180),(3935,1510553181),(3924,1510553182),(3979,1510553281),(3979,1510553282),(3978,1510553284),(3980,1510553285),(3980,1510553286),(3981,1510553287),(3959,1510553288),(3962,1510553289),(3964,1510553290),(3966,1510553291),(3968,1510553292),(3971,1510553293),(3971,1510553294),(3981,1510553295),(3983,1510553296),(3984,1510553297),(3990,1510553298),(3990,1510553299),(3991,1510553300),(3992,1510553301),(3993,1510553302),(3993,1510553303),(3994,1510553304),(3994,1510553305),(3993,1510553306),(3993,1510553307),(3994,1510553308),(3995,1510553309),(3995,1510553310),(3995,1510553311),(3995,1510553312),(3995,1510553313),(3995,1510553314),(3996,1510553315),(3999,1510553316),(3995,1510553318),(3990,1510553319),(3986,1510553320),(3984,1510553321),(3982,1510553322),(3981,1510553323),(3982,1510553324),(3982,1510553325),(3983,1510553326),(3982,1510553327);
/*!40000 ALTER TABLE `mem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memory`
--

DROP TABLE IF EXISTS `memory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memory` (
  `memory` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memory`
--

LOCK TABLES `memory` WRITE;
/*!40000 ALTER TABLE `memory` DISABLE KEYS */;
INSERT INTO `memory` VALUES (1837,1506498821),(1837,1506498831),(1837,1506498841);
/*!40000 ALTER TABLE `memory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `money`
--

DROP TABLE IF EXISTS `money`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `money` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `id_number` varchar(255) NOT NULL,
  `modol` varchar(255) DEFAULT NULL,
  `money` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `Loan_Date` varchar(255) NOT NULL,
  `End_date` varchar(255) NOT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `Account_number` varchar(255) NOT NULL,
  `branch_company` varchar(255) DEFAULT NULL,
  `Loan_number` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money`
--

LOCK TABLES `money` WRITE;
/*!40000 ALTER TABLE `money` DISABLE KEYS */;
INSERT INTO `money` VALUES (1,'李海山','110223198909306691','月月金','10万','13%','2','2017/11/15','2017/11/15','招商','62268239231234123','北京','2016584455-001'),(3,'张裕','110332323213412312','月月金','5万','13%','2','2017/11/15','2017/11/15','北京','12314123412','北京','123124124');
/*!40000 ALTER TABLE `money` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mylist`
--

DROP TABLE IF EXISTS `mylist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mylist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `passwd` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `age` int(4) NOT NULL,
  `sex` enum('男','女') NOT NULL,
  `role` int(1) DEFAULT NULL,
  `status` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mylist`
--

LOCK TABLES `mylist` WRITE;
/*!40000 ALTER TABLE `mylist` DISABLE KEYS */;
INSERT INTO `mylist` VALUES (8,'pc','123','11232131232','1111@reboot.com',123123,'男',0,NULL),(26,'pc123','123','11232131232','1111@reboot.com',1,'男',1,1),(48,'cxf','1234','18511891703','haishan0181@sina.com',1,'男',0,NULL),(53,'lhs','123','18511891703','haishan0181@sina.com',1,'男',0,NULL),(64,'pc1234','123','11232131232','1111@reboot.com',1,'男',0,NULL);
/*!40000 ALTER TABLE `mylist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newlist`
--

DROP TABLE IF EXISTS `newlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `age` varchar(100) NOT NULL,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newlist`
--

LOCK TABLES `newlist` WRITE;
/*!40000 ALTER TABLE `newlist` DISABLE KEYS */;
INSERT INTO `newlist` VALUES (1,'123','123','1','15624967405','haishan0181@sina.com','12','1'),(2,'123','123','1','15624967405','haishan0181@sina.com','12','1');
/*!40000 ALTER TABLE `newlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server`
--

DROP TABLE IF EXISTS `server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `mac` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `port` int(255) DEFAULT NULL,
  `idc` int(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `cpu` varchar(255) DEFAULT NULL,
  `memory` varchar(255) DEFAULT NULL,
  `disk` varchar(255) DEFAULT NULL,
  `system_type` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `cabinet` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hostname` (`hostname`),
  UNIQUE KEY `ip` (`ip`),
  UNIQUE KEY `number` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server`
--

LOCK TABLES `server` WRITE;
/*!40000 ALTER TABLE `server` DISABLE KEYS */;
INSERT INTO `server` VALUES (22,'133','1','1','root','',22,70,'1','1','1','1','1','1',35);
/*!40000 ALTER TABLE `server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
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

-- Dump completed on 2017-11-21 14:23:51
