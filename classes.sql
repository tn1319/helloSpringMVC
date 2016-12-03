-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: classes
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `sign_up_class`
--

DROP TABLE IF EXISTS `sign_up_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sign_up_class` (
  `class_id` varchar(20) NOT NULL,
  `year` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `class_name` varchar(50) NOT NULL,
  `division` varchar(10) NOT NULL,
  `credit` int(11) NOT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sign_up_class`
--

LOCK TABLES `sign_up_class` WRITE;
/*!40000 ALTER TABLE `sign_up_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `sign_up_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taked_class`
--

DROP TABLE IF EXISTS `taked_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taked_class` (
  `class_id` varchar(20) NOT NULL,
  `year` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `class_name` varchar(50) NOT NULL,
  `division` varchar(10) NOT NULL,
  `credit` int(11) NOT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taked_class`
--

LOCK TABLES `taked_class` WRITE;
/*!40000 ALTER TABLE `taked_class` DISABLE KEYS */;
INSERT INTO `taked_class` VALUES ('CAA0006',2014,2,'디자인과 색','핵교A',2),('CAE0001',2014,1,'일반물리I','핵교A',2),('CAE0009',2015,1,'대학수학Ⅰ','핵교A',2),('CAE0010',2014,2,'대학수학Ⅱ','핵교A',2),('CBE0003',2014,1,'일반생물','핵교B',2),('CBTR011',2016,1,'탁구의 이론과 실제','핵교B',2),('CSE0012',2016,1,'객체지향언어2','전선',3),('CSE0015',2016,1,'데이터통신','전선',3),('CSE0017',2016,1,'운영체제','전지',3),('CSE0019',2016,1,'데이터베이스','전지',3),('CSE0023',2016,1,'웹서버프로그래밍','전선',3),('GEN0035',2014,1,'패션CAD','일교',2),('GEN0036',2015,1,'컴퓨터그래픽과 디자인','일교',2),('GEN0080',2014,1,'예술과 생활','일교',2),('GEN0114',2015,2,'배드민턴의 이론과 실제(여)','일교',2),('GEN0200',2014,2,'컴퓨터와 인터넷개론','일교',2),('GEN0225',2015,2,'돈이 되는 광고','일교',2),('MME0001',2014,1,'확률 및 통계 ','전기',3),('MME0003',2014,1,'컴퓨터언어I','전기',3),('MME0004',2015,1,'이산수학 ','전선',3),('MME0005',2014,2,'컴퓨터언어Ⅱ','전기',3),('MME0006',2014,2,'논리회로','전선',3),('MME0007',2015,2,'디지털 영상제작','전선',3),('MME0017',2015,2,'객체지향언어','전지',3),('MME0036',2015,2,'선형대수','전선',3),('MME0037',2015,1,'자료구조','전지',3),('MME0038',2015,1,'그래픽활용','전선',3),('MME0040',2015,2,'알고리즘','전선',3),('MME0052',2015,1,'멀티미디어개론','전선',3),('MME0054',2015,2,'게임그래픽&애니메이션','전선',3),('MME0062',2015,1,'웹 프로그래밍','전선',3),('REQ0013',2014,1,'사고와 표현I','교필',2),('REQ0014',2014,2,'사고와 표현II','교필',2),('REQ0015',2014,2,'대학과 지성','교필',2),('REQ0113',2014,1,'영어커뮤니케이션 독해/작문A-III','교필',1),('REQ0123',2014,1,'영어커뮤니케이션 청취/회화A-III','교필',1),('REQ0213',2014,2,'영어커뮤니케이션 독해/작문B-III','교필',1),('REQ0223',2014,2,'영어커뮤니케이션 청취/회화B-III','교필',1);
/*!40000 ALTER TABLE `taked_class` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-02 23:45:49
