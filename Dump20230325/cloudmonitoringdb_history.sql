-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: cloudmonitoringdb
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `history` (
  `name` varchar(150) DEFAULT NULL,
  `URL` varchar(250) DEFAULT NULL,
  `helth` bit(1) DEFAULT NULL,
  `latency` int DEFAULT NULL,
  `code` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES ('stack','https://stackoverflow.com/',_binary '',627,200),('geecks','https://www.geeksforgeeks.org/',_binary '',251,200),('google','https://www.google.co.il/',_binary '',824,200),('ynet','https://www.ynet.co.il/',_binary '',359,200),('stack','https://stackoverflow.com/',_binary '',6846,200),('geecks','https://www.geeksforgeeks.org/',_binary '',2168,200),('google','https://www.google.co.il/',_binary '',3916,200),('ynet','https://www.ynet.co.il/',_binary '',1178,200),('maayan','https://localhost:7071',_binary '\0',8,300),('walla','https://www.walla.co.il/',_binary '',39600,200),('local','https://www.lkjsdfklj.il/',_binary '\0',46,300),('stack','https://stackoverflow.com/',_binary '',6926,200),('geecks','https://www.geeksforgeeks.org/',_binary '',404,200),('google','https://www.google.co.il/',_binary '',2197,200),('ynet','https://www.ynet.co.il/',_binary '',3510,200),('stack','https://stackoverflow.com/',_binary '',624,200),('geecks','https://www.geeksforgeeks.org/',_binary '',293,200),('stack','https://stackoverflow.com/',_binary '',1585,200),('geecks','https://www.geeksforgeeks.org/',_binary '',210,200),('stack','https://stackoverflow.com/',_binary '',611,200),('geecks','https://www.geeksforgeeks.org/',_binary '',235,200),('google','https://www.google.co.il/',_binary '',1288,200),('ynet','https://www.ynet.co.il/',_binary '',323,200),('walla','https://www.walla.co.il/',_binary '',302,200),('local','https://www.lkjsdfklj.il/',_binary '\0',60,300),('stack','https://stackoverflow.com/',_binary '',403,200),('geecks','https://www.geeksforgeeks.org/',_binary '',145,200),('google','https://www.google.co.il/',_binary '',1097,200),('ynet','https://www.ynet.co.il/',_binary '',247,200),('walla','https://www.walla.co.il/',_binary '',123,200),('local','https://www.lkjsdfklj.il/',_binary '\0',40,300),('stack','https://stackoverflow.com/',_binary '',581,200),('geecks','https://www.geeksforgeeks.org/',_binary '',175,200),('google','https://www.google.co.il/',_binary '',645,200),('ynet','https://www.ynet.co.il/',_binary '',311,200),('walla','https://www.walla.co.il/',_binary '',1174,200),('local','https://www.lkjsdfklj.il/',_binary '\0',42,300),('stack','https://stackoverflow.com/',_binary '',367,200),('geecks','https://www.geeksforgeeks.org/',_binary '',160,200),('google','https://www.google.co.il/',_binary '',728,200),('ynet','https://www.ynet.co.il/',_binary '',248,200),('walla','https://www.walla.co.il/',_binary '',136,200),('local','https://www.lkjsdfklj.il/',_binary '\0',45,300),('stack','https://stackoverflow.com/',_binary '',658,200),('geecks','https://www.geeksforgeeks.org/',_binary '',293,200),('stack','https://stackoverflow.com/',_binary '',1438,200),('geecks','https://www.geeksforgeeks.org/',_binary '',1211,200),('stack','https://stackoverflow.com/',_binary '',1210,200),('geecks','https://www.geeksforgeeks.org/',_binary '',758,200),('stack','https://stackoverflow.com/',_binary '',1041,200),('geecks','https://www.geeksforgeeks.org/',_binary '',1296,200),('stack','https://stackoverflow.com/',_binary '',2120,200),('geecks','https://www.geeksforgeeks.org/',_binary '',2897,200),('stack','https://stackoverflow.com/',_binary '',607,200),('geecks','https://www.geeksforgeeks.org/',_binary '',431,200),('yotam','https://localhost:7071',_binary '\0',1,300),('google','https://www.google.co.il/',_binary '',841,200),('ynet','https://www.ynet.co.il/',_binary '',283,200),('maayan','https://localhost:7072',_binary '\0',1,300),('walla','https://www.walla.co.il/',_binary '',289,200),('local','https://www.lkjsdfklj.il/',_binary '\0',80,300),('stack','https://stackoverflow.com/',_binary '',404,200),('geecks','https://www.geeksforgeeks.org/',_binary '',127,200),('yotam','https://localhost:7071',_binary '\0',0,300),('google','https://www.google.co.il/',_binary '',787,200),('ynet','https://www.ynet.co.il/',_binary '',270,200),('maayan','https://localhost:7072',_binary '\0',1,300),('walla','https://www.walla.co.il/',_binary '',257,200),('local','https://www.lkjsdfklj.il/',_binary '\0',68,300),('stack','https://stackoverflow.com/',_binary '',392,200),('geecks','https://www.geeksforgeeks.org/',_binary '',198,200),('yotam','https://localhost:7071',_binary '\0',1,300),('google','https://www.google.co.il/',_binary '',774,200),('ynet','https://www.ynet.co.il/',_binary '',310,200),('maayan','https://localhost:7072',_binary '\0',0,300),('walla','https://www.walla.co.il/',_binary '',353,200),('local','https://www.lkjsdfklj.il/',_binary '\0',45,300),('stack','https://stackoverflow.com/',_binary '',512,200),('geecks','https://www.geeksforgeeks.org/',_binary '',161,200),('yotam','https://localhost:7071',_binary '\0',1,300),('google','https://www.google.co.il/',_binary '',728,200),('ynet','https://www.ynet.co.il/',_binary '',347,200),('maayan','https://localhost:7072',_binary '\0',1,300),('walla','https://www.walla.co.il/',_binary '',161,200),('local','https://www.lkjsdfklj.il/',_binary '\0',69,300),('stack','https://stackoverflow.com/',_binary '',378,200),('geecks','https://www.geeksforgeeks.org/',_binary '',189,200),('yotam','https://localhost:7071',_binary '\0',1,300),('google','https://www.google.co.il/',_binary '',714,200),('ynet','https://www.ynet.co.il/',_binary '',312,200),('maayan','https://localhost:7072',_binary '\0',1,300),('walla','https://www.walla.co.il/',_binary '',335,200),('local','https://www.lkjsdfklj.il/',_binary '\0',28,300),('stack','https://stackoverflow.com/',_binary '',406,200),('geecks','https://www.geeksforgeeks.org/',_binary '',148,200),('yotam','https://localhost:7071',_binary '\0',1,300),('google','https://www.google.co.il/',_binary '',740,200),('ynet','https://www.ynet.co.il/',_binary '',334,200),('maayan','https://localhost:7072',_binary '\0',1,300),('walla','https://www.walla.co.il/',_binary '',157,200),('local','https://www.lkjsdfklj.il/',_binary '\0',45,300),('stack','https://stackoverflow.com/',_binary '',725,200),('geecks','https://www.geeksforgeeks.org/',_binary '',190,200),('yotam','https://localhost:7071',_binary '\0',1,300),('google','https://www.google.co.il/',_binary '',641,200),('ynet','https://www.ynet.co.il/',_binary '',342,200),('maayan','https://localhost:7072',_binary '\0',1,300),('walla','https://www.walla.co.il/',_binary '',417,200),('local','https://www.lkjsdfklj.il/',_binary '\0',68,300),('stack','https://stackoverflow.com/',_binary '',391,200),('geecks','https://www.geeksforgeeks.org/',_binary '',137,200),('yotam','https://localhost:7071',_binary '\0',1,300),('google','https://www.google.co.il/',_binary '',1153,200),('ynet','https://www.ynet.co.il/',_binary '',239,200),('maayan','https://localhost:7072',_binary '\0',1,300),('walla','https://www.walla.co.il/',_binary '',140,200),('local','https://www.lkjsdfklj.il/',_binary '\0',110,300),('stack','https://stackoverflow.com/',_binary '',390,200),('geecks','https://www.geeksforgeeks.org/',_binary '',207,200),('yotam','https://localhost:7071',_binary '\0',0,300),('stack','https://stackoverflow.com/',_binary '',608,200),('geecks','https://www.geeksforgeeks.org/',_binary '',170,200),('google','https://www.google.co.il/',_binary '',891,200),('ynet','https://www.ynet.co.il/',_binary '',262,200),('walla','https://www.walla.co.il/',_binary '',426,200),('local','https://www.lkjsdfklj.il/',_binary '\0',55,300),('stack','https://stackoverflow.com/',_binary '',424,200),('geecks','https://www.geeksforgeeks.org/',_binary '',167,200),('stack','https://stackoverflow.com/',_binary '',699,200),('geecks','https://www.geeksforgeeks.org/',_binary '',350,200),('google','https://www.google.co.il/',_binary '',2603,200),('ynet','https://www.ynet.co.il/',_binary '',263,200),('walla','https://www.walla.co.il/',_binary '',1219,200),('local','https://www.lkjsdfklj.il/',_binary '\0',34,300),('stack','https://stackoverflow.com/',_binary '',406,200),('geecks','https://www.geeksforgeeks.org/',_binary '',147,200),('google','https://www.google.co.il/',_binary '',715,200),('ynet','https://www.ynet.co.il/',_binary '',486,200),('walla','https://www.walla.co.il/',_binary '',145,200),('local','https://www.lkjsdfklj.il/',_binary '\0',45,300),('stack','https://stackoverflow.com/',_binary '',405,200),('geecks','https://www.geeksforgeeks.org/',_binary '',187,200),('google','https://www.google.co.il/',_binary '',810,200),('ynet','https://www.ynet.co.il/',_binary '',344,200),('walla','https://www.walla.co.il/',_binary '',241,200),('local','https://www.lkjsdfklj.il/',_binary '\0',57,300),('stack','https://stackoverflow.com/',_binary '',607,200),('geecks','https://www.geeksforgeeks.org/',_binary '',489,200),('google','https://www.google.co.il/',_binary '',815,200),('ynet','https://www.ynet.co.il/',_binary '',288,200),('walla','https://www.walla.co.il/',_binary '',352,200),('local','https://www.lkjsdfklj.il/',_binary '\0',91,300),('stack','https://stackoverflow.com/',_binary '',380,200),('geecks','https://www.geeksforgeeks.org/',_binary '',161,200),('google','https://www.google.co.il/',_binary '',719,200),('ynet','https://www.ynet.co.il/',_binary '',280,200),('walla','https://www.walla.co.il/',_binary '',249,200),('local','https://www.lkjsdfklj.il/',_binary '\0',67,300),('stack','https://stackoverflow.com/',_binary '',411,200),('geecks','https://www.geeksforgeeks.org/',_binary '',300,200),('stack','https://stackoverflow.com/',_binary '',575,200),('geecks','https://www.geeksforgeeks.org/',_binary '',474,200),('google','https://www.google.co.il/',_binary '',803,200),('walla','https://www.walla.co.il/',_binary '',271,200),('local','https://www.lkjsdfklj.il/',_binary '\0',70,300),('stack','https://stackoverflow.com/',_binary '',391,200),('geecks','https://www.geeksforgeeks.org/',_binary '',151,200),('google','https://www.google.co.il/',_binary '',1559,200),('walla','https://www.walla.co.il/',_binary '',116,200),('local','https://www.lkjsdfklj.il/',_binary '\0',92,300),('stack','https://stackoverflow.com/',_binary '',378,200),('geecks','https://www.geeksforgeeks.org/',_binary '',326,200),('google','https://www.google.co.il/',_binary '',703,200),('walla','https://www.walla.co.il/',_binary '',305,200),('local','https://www.lkjsdfklj.il/',_binary '\0',96,300),('stack','https://stackoverflow.com/',_binary '',366,200),('geecks','https://www.geeksforgeeks.org/',_binary '',158,200),('google','https://www.google.co.il/',_binary '',703,200),('walla','https://www.walla.co.il/',_binary '',111,200),('local','https://www.lkjsdfklj.il/',_binary '\0',59,300),('stack','https://stackoverflow.com/',_binary '',550,200),('geecks','https://www.geeksforgeeks.org/',_binary '',206,200),('google','https://www.google.co.il/',_binary '',722,200),('walla','https://www.walla.co.il/',_binary '',271,200),('local','https://www.lkjsdfklj.il/',_binary '\0',36,300),('stack','https://stackoverflow.com/',_binary '',400,200),('geecks','https://www.geeksforgeeks.org/',_binary '',269,200),('google','https://www.google.co.il/',_binary '',658,200),('walla','https://www.walla.co.il/',_binary '',1359,200),('local','https://www.lkjsdfklj.il/',_binary '\0',29,300),('stack','https://stackoverflow.com/',_binary '',408,200),('stack','https://stackoverflow.com/',_binary '',1105,200),('geecks','https://www.geeksforgeeks.org/',_binary '',957,200),('google','https://www.google.co.il/',_binary '',524,200),('walla','https://www.walla.co.il/',_binary '',232,200),('local','https://www.lkjsdfklj.il/',_binary '\0',64,300),('stack','https://stackoverflow.com/',_binary '',942,200),('geecks','https://www.geeksforgeeks.org/',_binary '',573,200),('google','https://www.google.co.il/',_binary '',436,200),('walla','https://www.walla.co.il/',_binary '',109,200),('local','https://www.lkjsdfklj.il/',_binary '\0',39,300),('stack','https://stackoverflow.com/',_binary '',587,200),('geecks','https://www.geeksforgeeks.org/',_binary '',319,200),('google','https://www.google.co.il/',_binary '',398,200),('walla','https://www.walla.co.il/',_binary '',638,200),('local','https://www.lkjsdfklj.il/',_binary '\0',57,300),('stack','https://stackoverflow.com/',_binary '',730,200),('geecks','https://www.geeksforgeeks.org/',_binary '',780,200),('google','https://www.google.co.il/',_binary '',574,200),('walla','https://www.walla.co.il/',_binary '',285,200),('local','https://www.lkjsdfklj.il/',_binary '\0',42,300),('stack','https://stackoverflow.com/',_binary '',2091,200),('geecks','https://www.geeksforgeeks.org/',_binary '',225,200),('google','https://www.google.co.il/',_binary '',439,200),('walla','https://www.walla.co.il/',_binary '',160,200),('local','https://www.lkjsdfklj.il/',_binary '\0',189,300),('stack','https://stackoverflow.com/',_binary '',413,200),('geecks','https://www.geeksforgeeks.org/',_binary '',233,200),('google','https://www.google.co.il/',_binary '',445,200),('walla','https://www.walla.co.il/',_binary '',263,200),('local','https://www.lkjsdfklj.il/',_binary '\0',104,300),('stack','https://stackoverflow.com/',_binary '',880,200),('geecks','https://www.geeksforgeeks.org/',_binary '',190,200),('google','https://www.google.co.il/',_binary '',400,200),('walla','https://www.walla.co.il/',_binary '',149,200),('local','https://www.lkjsdfklj.il/',_binary '\0',121,300),('stack','https://stackoverflow.com/',_binary '',442,200),('geecks','https://www.geeksforgeeks.org/',_binary '',369,200),('google','https://www.google.co.il/',_binary '',431,200),('walla','https://www.walla.co.il/',_binary '',338,200),('local','https://www.lkjsdfklj.il/',_binary '\0',70,300),('stack','https://stackoverflow.com/',_binary '',406,200),('geecks','https://www.geeksforgeeks.org/',_binary '',166,200),('google','https://www.google.co.il/',_binary '',450,200),('walla','https://www.walla.co.il/',_binary '',116,200),('local','https://www.lkjsdfklj.il/',_binary '\0',70,300),('stack','https://stackoverflow.com/',_binary '',392,200),('geecks','https://www.geeksforgeeks.org/',_binary '',279,200),('google','https://www.google.co.il/',_binary '',399,200),('walla','https://www.walla.co.il/',_binary '',409,200),('local','https://www.lkjsdfklj.il/',_binary '\0',79,300),('stack','https://stackoverflow.com/',_binary '',382,200),('geecks','https://www.geeksforgeeks.org/',_binary '',198,200),('google','https://www.google.co.il/',_binary '',421,200),('walla','https://www.walla.co.il/',_binary '',162,200),('local','https://www.lkjsdfklj.il/',_binary '\0',71,300),('stack','https://stackoverflow.com/',_binary '',396,200),('geecks','https://www.geeksforgeeks.org/',_binary '',260,200),('google','https://www.google.co.il/',_binary '',423,200),('walla','https://www.walla.co.il/',_binary '',252,200),('local','https://www.lkjsdfklj.il/',_binary '\0',175,300),('stack','https://stackoverflow.com/',_binary '',425,200),('geecks','https://www.geeksforgeeks.org/',_binary '',196,200),('google','https://www.google.co.il/',_binary '',413,200),('walla','https://www.walla.co.il/',_binary '',154,200),('local','https://www.lkjsdfklj.il/',_binary '\0',74,300),('stack','https://stackoverflow.com/',_binary '',448,200),('geecks','https://www.geeksforgeeks.org/',_binary '',229,200),('google','https://www.google.co.il/',_binary '',423,200),('walla','https://www.walla.co.il/',_binary '',378,200),('local','https://www.lkjsdfklj.il/',_binary '\0',79,300),('stack','https://stackoverflow.com/',_binary '',664,200),('geecks','https://www.geeksforgeeks.org/',_binary '',193,200),('google','https://www.google.co.il/',_binary '',451,200),('walla','https://www.walla.co.il/',_binary '',157,200),('local','https://www.lkjsdfklj.il/',_binary '\0',105,300),('stack','https://stackoverflow.com/',_binary '',1138,200),('geecks','https://www.geeksforgeeks.org/',_binary '',1215,200),('google','https://www.google.co.il/',_binary '',1018,200),('walla','https://www.walla.co.il/',_binary '',807,200),('local','https://www.lkjsdfklj.il/',_binary '\0',224,300),('stack','https://stackoverflow.com/',_binary '',776,200),('geecks','https://www.geeksforgeeks.org/',_binary '',608,200),('google','https://www.google.co.il/',_binary '',812,200),('walla','https://www.walla.co.il/',_binary '',506,200),('local','https://www.lkjsdfklj.il/',_binary '\0',243,300),('stack','https://stackoverflow.com/',_binary '',851,200),('geecks','https://www.geeksforgeeks.org/',_binary '',886,200),('google','https://www.google.co.il/',_binary '',812,200),('walla','https://www.walla.co.il/',_binary '',767,200),('local','https://www.lkjsdfklj.il/',_binary '\0',225,300),('stack','https://stackoverflow.com/',_binary '',881,200),('geecks','https://www.geeksforgeeks.org/',_binary '',531,200),('testFlask','http://localhost:4567/hellow',_binary '',2,200),('google','https://www.google.co.il/',_binary '',831,200),('walla','https://www.walla.co.il/',_binary '',604,200),('local','https://www.lkjsdfklj.il/',_binary '\0',316,300),('stack','https://stackoverflow.com/',_binary '',832,200),('geecks','https://www.geeksforgeeks.org/',_binary '',927,200),('testFlask','http://localhost:4567/hellow',_binary '',2,200),('google','https://www.google.co.il/',_binary '',651,200),('walla','https://www.walla.co.il/',_binary '',579,200),('local','https://www.lkjsdfklj.il/',_binary '\0',251,300),('stack','https://stackoverflow.com/',_binary '',702,200),('geecks','https://www.geeksforgeeks.org/',_binary '',531,200),('testFlask','http://localhost:4567/hellow',_binary '',2,200),('google','https://www.google.co.il/',_binary '',851,200),('walla','https://www.walla.co.il/',_binary '',589,200),('local','https://www.lkjsdfklj.il/',_binary '\0',276,300),('stack','https://stackoverflow.com/',_binary '',658,200),('geecks','https://www.geeksforgeeks.org/',_binary '',2082,200),('testFlask','http://localhost:4567/hellow',_binary '',2,200),('google','https://www.google.co.il/',_binary '',756,200),('walla','https://www.walla.co.il/',_binary '',723,200),('local','https://www.lkjsdfklj.il/',_binary '\0',236,300),('stack','https://stackoverflow.com/',_binary '',394,200),('geecks','https://www.geeksforgeeks.org/',_binary '',153,200),('testFlask','http://localhost:4567/hellow',_binary '',2,200),('google','https://www.google.co.il/',_binary '',1358,200),('walla','https://www.walla.co.il/',_binary '',136,200),('local','https://www.lkjsdfklj.il/',_binary '\0',45,300),('stack','https://stackoverflow.com/',_binary '',389,200),('geecks','https://www.geeksforgeeks.org/',_binary '',218,200),('testFlask','http://localhost:4567/hellow',_binary '',2,200),('google','https://www.google.co.il/',_binary '',1388,200),('walla','https://www.walla.co.il/',_binary '',288,200),('local','https://www.lkjsdfklj.il/',_binary '\0',48,300),('stack','https://stackoverflow.com/',_binary '',400,200),('geecks','https://www.geeksforgeeks.org/',_binary '',154,200),('testFlask','http://localhost:4567/hellow',_binary '',2,200),('google','https://www.google.co.il/',_binary '',654,200),('walla','https://www.walla.co.il/',_binary '',260,200),('local','https://www.lkjsdfklj.il/',_binary '\0',48,300),('stack','https://stackoverflow.com/',_binary '',359,200),('geecks','https://www.geeksforgeeks.org/',_binary '',217,200),('testFlask','http://localhost:4567/hellow',_binary '',1,200),('google','https://www.google.co.il/',_binary '',1368,200),('stack','https://stackoverflow.com/',_binary '',729,200),('geecks','https://www.geeksforgeeks.org/',_binary '',573,200),('testFlask','http://localhost:4567/hellow',_binary '\0',2,300),('google','https://www.google.co.il/',_binary '',582,200),('walla','https://www.walla.co.il/',_binary '',3859,200),('local','https://www.lkjsdfklj.il/',_binary '\0',95,300),('stack','https://stackoverflow.com/',_binary '',431,200),('geecks','https://www.geeksforgeeks.org/',_binary '',154,200),('testFlask','http://localhost:4567/hellow',_binary '\0',71,404),('google','https://www.google.co.il/',_binary '',427,200),('walla','https://www.walla.co.il/',_binary '',123,200),('local','https://www.lkjsdfklj.il/',_binary '\0',117,300),('stack','https://stackoverflow.com/',_binary '',429,200),('geecks','https://www.geeksforgeeks.org/',_binary '',297,200),('testFlask','http://localhost:4567/hellow',_binary '\0',2,404),('google','https://www.google.co.il/',_binary '',503,200),('walla','https://www.walla.co.il/',_binary '',269,200),('local','https://www.lkjsdfklj.il/',_binary '\0',85,300),('stack','https://stackoverflow.com/',_binary '',1408,200),('geecks','https://www.geeksforgeeks.org/',_binary '',158,200),('testFlask','http://localhost:4567/hellow',_binary '\0',2,404),('google','https://www.google.co.il/',_binary '',433,200),('walla','https://www.walla.co.il/',_binary '',107,200),('local','https://www.lkjsdfklj.il/',_binary '\0',83,300),('stack','https://stackoverflow.com/',_binary '',634,200),('geecks','https://www.geeksforgeeks.org/',_binary '',295,200),('testFlask','http://localhost:4567/hellow',_binary '\0',3,404),('google','https://www.google.co.il/',_binary '',488,200),('walla','https://www.walla.co.il/',_binary '',293,200),('local','https://www.lkjsdfklj.il/',_binary '\0',63,300),('stack','https://stackoverflow.com/',_binary '',386,200),('geecks','https://www.geeksforgeeks.org/',_binary '',135,200),('testFlask','http://localhost:4567/hellow',_binary '\0',2,404),('google','https://www.google.co.il/',_binary '',462,200),('walla','https://www.walla.co.il/',_binary '',137,200),('local','https://www.lkjsdfklj.il/',_binary '\0',100,300),('stack','https://stackoverflow.com/',_binary '',366,200),('geecks','https://www.geeksforgeeks.org/',_binary '',189,200),('testFlask','http://localhost:4567/hellow',_binary '\0',2,404),('google','https://www.google.co.il/',_binary '',770,200),('walla','https://www.walla.co.il/',_binary '',401,200),('local','https://www.lkjsdfklj.il/',_binary '\0',43,300),('stack','https://stackoverflow.com/',_binary '',690,200),('geecks','https://www.geeksforgeeks.org/',_binary '',1294,200),('testFlask','http://localhost:4567/hellow',_binary '\0',2,404),('google','https://www.google.co.il/',_binary '',746,200),('walla','https://www.walla.co.il/',_binary '',554,200),('local','https://www.lkjsdfklj.il/',_binary '\0',121,300),('stack','https://stackoverflow.com/',_binary '',550,200),('geecks','https://www.geeksforgeeks.org/',_binary '',274,200),('testFlask','http://localhost:4567/hellow',_binary '\0',1,300),('google','https://www.google.co.il/',_binary '',852,200),('walla','https://www.walla.co.il/',_binary '',269,200),('homePage','https://www.google.com',_binary '',555,200),('local','https://www.lkjsdfklj.il/',_binary '\0',50,300),('ynet','https://www.google.com',_binary '',638,200),('ynet','https://www.google.com',_binary '',430,200),('google','https://www.google.com',_binary '',574,200),('ynet','https://www.google.com',_binary '',433,200),('google','https://www.google.com',_binary '',434,200),('ynet','https://www.google.com',_binary '',626,200),('facebook','https://www.facebook.com/',_binary '',476,200),('google','https://www.google.com',_binary '',436,200),('ynet','https://www.google.com',_binary '',436,200),('facebook','https://www.facebook.com/',_binary '',438,200),('google','https://www.google.com',_binary '',420,200),('ynet','https://www.google.com',_binary '',448,200),('facebook','https://www.facebook.com/',_binary '',848,200),('google','https://www.google.com',_binary '',428,200),('ynet','https://www.google.com',_binary '',446,200),('facebook','https://www.facebook.com/',_binary '',429,200),('google','https://www.google.com',_binary '',463,200),('ynet','https://www.google.com',_binary '',418,200),('facebook','https://www.facebook.com/',_binary '',446,200),('facebook','https://www.facebook.com/',_binary '',561,200),('google','https://www.google.com',_binary '',1009,200),('ynet','https://www.google.com',_binary '',436,200),('facebook','https://www.facebook.com/',_binary '',370,200),('google','https://www.google.com',_binary '',417,200),('ynet','https://www.google.com',_binary '',440,200),('facebook','https://www.facebook.com/',_binary '',489,200),('google','https://www.google.com',_binary '',445,200),('ynet','https://www.google.com',_binary '',442,200),('article in ynet','https://www.ynet.co.il/home/',_binary '',695,200),('facebook','https://www.facebook.com/',_binary '',548,200),('google','https://www.google.com',_binary '',489,200),('ynet','https://www.google.com',_binary '',436,200),('article in ynet','https://www.ynet.co.il/home/',_binary '',351,200),('facebook','https://www.facebook.com/',_binary '',433,200),('google','https://www.google.com',_binary '',457,200),('ynet','https://www.google.com',_binary '',434,200),('article in ynet','https://www.ynet.co.il/home/',_binary '',415,200),('facebook','https://www.facebook.com/',_binary '',538,200),('google','https://www.google.com',_binary '',420,200),('ynet','https://www.google.com',_binary '',444,200),('article in ynet','https://www.ynet.co.il/home/',_binary '',608,200),('facebook','https://www.facebook.com/',_binary '',432,200),('google','https://www.google.com',_binary '',684,200),('ynet','https://www.google.com',_binary '',464,200),('article in ynet','https://www.ynet.co.il/home/',_binary '',576,200),('facebook','https://www.facebook.com/',_binary '',413,200),('google','https://www.google.com',_binary '',484,200),('ynet','https://www.google.com',_binary '',445,200),('article in ynet','https://www.ynet.co.il/home/',_binary '',382,200),('facebook','https://www.facebook.com/',_binary '',375,200),('google','https://www.google.com',_binary '',414,200),('ynet','https://www.google.com',_binary '',411,200),('article in ynet','https://www.ynet.co.il/home/',_binary '',414,200),('facebook','https://www.facebook.com/',_binary '',511,200),('google','https://www.google.com',_binary '',454,200),('ynet','https://www.google.com',_binary '',422,200),('article in ynet','https://www.ynet.co.il/home/',_binary '',418,200),('facebook','https://www.facebook.com/',_binary '',415,200),('google','https://www.google.com',_binary '',455,200),('ynet','https://www.google.com',_binary '',464,200),('article in ynet','https://www.ynet.co.il/home/',_binary '',537,200),('facebook','https://www.facebook.com/',_binary '',404,200),('google','https://www.google.com',_binary '',925,200),('ynet','https://www.google.com',_binary '',423,200),('article in ynet','https://www.ynet.co.il/home/',_binary '',382,200),('facebook','https://www.facebook.com/',_binary '',398,200),('google','https://www.google.com',_binary '',434,200),('ynet','https://www.google.com',_binary '',750,200),('article in ynet','https://www.ynet.co.il/home/',_binary '',671,200),('facebook','https://www.facebook.com/',_binary '',538,200),('ynet','https://www.google.com',_binary '',701,200),('article in ynet','https://www.ynet.co.il/home/',_binary '',405,200),('facebook','https://www.facebook.com/',_binary '',446,200),('ynet','https://www.google.com',_binary '',461,200),('article in ynet','https://www.ynet.co.il/home/',_binary '',408,200),('facebook','https://www.facebook.com/',_binary '',408,200),('ynet','https://www.google.com',_binary '',419,200);
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-25 17:15:54