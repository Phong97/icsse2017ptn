CREATE DATABASE  IF NOT EXISTS `icsse` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `icsse`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: icsse
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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(50) NOT NULL,
  `password` char(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'hovanphong','15110277'),(2,'thaonhi','15110268'),(3,'trung2204','22041997'),(4,'haloi','33002211');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `content` varchar(4000) DEFAULT NULL,
  `date` char(50) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `username` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_icsse_idx` (`username`),
  CONSTRAINT `FK_icsse` FOREIGN KEY (`username`) REFERENCES `account` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (16,'Congratulations! 2017 International Conference on System Science and Engineering (ICSSE) is now published in IEEE Xplore','<div>\r\n<div>\r\n<div class=\"ct_tin_display\">\r\n<div class=\"articleContent\">Dear all authors,<br /><br />Congratulations! 2017 International Conference on System Science and Engineering (ICSSE) has been posted to the IEEE Xplore digital library effective 2017-09-11.&nbsp;<br /><br />The publication link is shown below:<br /><span style=\"color: #3366ff;\"><a style=\"color: #3366ff;\" href=\"http://ieeexplore.ieee.org/xpl/mostRecentIssue.jsp?punumber=8024255\" target=\"_blank\" rel=\"noopener\">http://ieeexplore.ieee.org/xpl/mostRecentIssue.jsp?punumber=8024255</a></span><br /><br />Thanks once again for everything that you had contributed at the conference.<br /><br />Best regards to you.</div>\r\n</div>\r\n</div>\r\n</div>','Mar 17, 2018 11:51:16 PM',NULL,3),(18,'SPECIAL SESSION 02 FOR ICSSE2017: FUZZY SYSTEMS AND ITS APPLICATIONS','<div>\r\n<div>\r\n<div class=\"ct_tin_display\">\r\n<div class=\"articleContent\"><strong>Introduction/Call for Papers</strong><br />This session aims at discussing the problems of fuzzy control system and its applications in practice. Nowadays, fuzzy control systems cover a wide range of fields in modern life such as controlling system, robotics, decision making and image processing &hellip;etc. Additionally, the trend of applying and studying fuzzy systems keep increasing in the future. Prospective authors from a variety of fields including fuzzy controller design, robotics, image processing &hellip;etc., are invited to submit original papers to the Special Session.<br /><br /><strong>&nbsp;Topics of interests include but not limited to:</strong><br />&nbsp;- Fuzzy systems or fuzzy theories<br />&nbsp;- Any application by fuzzy logic or fuzzy reasoning<br /><br />All accepted papers that will be part of the conference proceedings, are expected to be included in IEEE Xplore and will be indexed by EI.<br />\r\n<div>&nbsp;</div>\r\n<p><strong>Submission<br /></strong></p>\r\n<div>Submitted manuscripts should be within 2~6 pages in IEEE two-column format, including figures, tables, and references. Please use the templates at&nbsp;Manuscript Templates for IEEE Conference Proceedings&nbsp;from the conference website to prepare your paper. All submissions MUST be in PDF format.</div>\r\n<p><br />Complete manuscripts must be electronically submitted through Easychair system at:&nbsp;<strong><a href=\"https://easychair.org/conferences/?conf=icsse2017specialsess\" target=\"_blank\" rel=\"noopener\">https://easychair.org/conferences/?conf=icsse2017specialsess</a><br /></strong></p>\r\n<div><strong><br />NOTE</strong>: If you want to submit a paper for&nbsp;<strong>SPECIAL SESSION 02</strong>&nbsp;(FUZZY SYSTEMS AND ITS APPLICATIONS<strong>)</strong>, please add SS02- before title of your paper when you type the title on easy chair.<br />Example:&nbsp;SS02- Fuzzy Restricted Boltzmann Machine for the Enhancement of Deep Learning<br /><br />\r\n<div><img src=\"http://icsse2017.hcmute.edu.vn/Resources/Images/SubDomain/icsse2017/SS02.png\" alt=\"\" width=\"575\" height=\"263\" /></div>\r\n<br />Important Dates<br />March 15, 2017: Deadline for submission of 2-page extended abstract papers to special sessions.<br />March 30, 2017: Acceptance/Rejection Notification.<br />May 10, 2017: Final camera-ready papers due in electronic form.<br /><br />Special Session organizers<br /><strong>Prof. Wen-June Wang</strong><br />Department of Electrical Engineering<br />National Central University<br />JhongLi, 32001, Taiwan<br />E-mail:&nbsp;<a href=\"http://icsse2017.hcmute.edu.vn/ArticleId/3af2fa01-2645-4516-a65a-67bfec768e13/wjwang@ee.ncu.edu.tw\">wjwang@ee.ncu.edu.tw</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>','Mar 17, 2018 11:50:00 PM',NULL,2),(20,'ABSTRACT DEADLINE EXTENSION: MARCH 19, 2017','<table style=\"background-color: #42b9ae;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"3\" valign=\"top\">\r\n<p>&nbsp;Your requests for an extension have been granted!</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Dear all distinguished delegates,&nbsp;<br /><br />The abstracts are pouring in, but in order to honor the&nbsp;many requests asking for more time to write and submit an abstract for #ICSSE2017, the FINAL deadline has been extended to March 19,&nbsp;2017.&nbsp; Don\'t miss your precious opportunity to show your work and ideas among your peers!<br /><br />Click \"Submit an Abstract\" below for more information on suggested abstract topics and guidelines.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\">\r\n<p>&nbsp;</p>\r\n</td>\r\n<td valign=\"top\">\r\n<p><strong><a href=\"http://icsse2017.hcmute.edu.vn/ArticleId/945864b5-165f-45a3-8e75-a9ba5ac1f9ef/\" target=\"_blank\" rel=\"noopener\" data-saferedirecturl=\"https://www.google.com/url?hl=vi&amp;q=http://icsse2017.hcmute.edu.vn/ArticleId/945864b5-165f-45a3-8e75-a9ba5ac1f9ef/&amp;source=gmail&amp;ust=1488964221386000&amp;usg=AFQjCNE_xwiDIZk_wbcoxO_EA9ontqAH7A\">SUBMIT AN ABSTRACT</a></strong></p>\r\n</td>\r\n<td valign=\"top\">\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign=\"top\">&nbsp;</td>\r\n<td valign=\"top\">&nbsp;</td>\r\n<td valign=\"top\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\" valign=\"top\">To be able to meet rest of the deadlines we have started with abstract evaluation process. Results of this process you can follow up on EasyChair conference system.</td>\r\n</tr>\r\n</tbody>\r\n</table>','Mar 17, 2018 11:50:14 PM',NULL,1),(21,'trung','<p>thanh cong</p>','Mar 31, 2018 12:08:54 PM','https://drive.google.com/file/d/1ZiNolTbhafvBt5ejxuTPoxRl-f3kSxtY/view?usp=drivesdk',1),(22,'phong','<p>thanh cong</p>','Mar 31, 2018 10:35:21 AM',NULL,1),(23,'nhi','<p>sucess</p>','Mar 31, 2018 10:36:21 AM',NULL,1),(24,'giao','<p>ddd</p>','Mar 31, 2018 10:37:11 AM',NULL,1),(25,'ddd','<p>dddd</p>','Mar 31, 2018 10:43:00 AM',NULL,1),(26,'qq','<p>qqq</p>','Mar 31, 2018 11:31:19 AM',NULL,3),(27,'as','<p>aa</p>','Mar 31, 2018 11:38:18 AM',NULL,3),(28,'aa','<p>aaa</p>','Mar 31, 2018 11:39:38 AM','https://drive.google.com/file/d/1fhLAwhZyd3C-1qMu3k0tsdIu2gwmPrhd/view?usp=drivesdk',3),(29,'ádsa','<p>adsasdsa</p>','Mar 31, 2018 11:50:58 AM','https://drive.google.com/file/d/1G7aM2mtkHDjxdMkm-uVNMSaNgL-6PsOJ/view?usp=drivesdk',3),(30,'q','<p>ư</p>','Mar 31, 2018 11:59:16 AM','https://drive.google.com/file/d/1X8N72I0XOUR3T7c3GMm7fh1mhJS-q8bf/view?usp=drivesdk',3);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'icsse'
--

--
-- Dumping routines for database 'icsse'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-31 12:22:46
