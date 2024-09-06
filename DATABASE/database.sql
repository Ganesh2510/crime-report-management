/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.0.67-community-nt : Database - crimerecord
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`crimerecord` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `crimerecord`;

/*Table structure for table `complaint` */

DROP TABLE IF EXISTS `complaint`;

CREATE TABLE `complaint` (
  `cid` int(11) NOT NULL auto_increment,
  `vemail` varchar(1000) default NULL,
  `mobile` varchar(1000) default NULL,
  `location` varchar(1000) default NULL,
  `cname` varchar(1000) default NULL,
  `cstation` varchar(1000) default NULL,
  `desc` varchar(1000) default NULL,
  `image` longblob,
  `cdate` varchar(1000) default NULL,
  `status` varchar(1000) default NULL,
  `status1` varchar(1000) default NULL,
  `caction` varchar(1000) default NULL,
  `responsedate` varchar(1000) default NULL,
  `firid` varchar(1000) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `complaint` */

/*Table structure for table `police` */

DROP TABLE IF EXISTS `police`;

CREATE TABLE `police` (
  `pid` int(11) NOT NULL auto_increment,
  `pname` varchar(1000) default NULL,
  `email` varchar(1000) default NULL,
  `pmobile` varchar(1000) default NULL,
  `paddress` varchar(1000) default NULL,
  `pdob` varchar(1000) default NULL,
  `pstation` varchar(1000) default NULL,
  `password` varchar(1000) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `police` */

/*Table structure for table `reg` */

DROP TABLE IF EXISTS `reg`;

CREATE TABLE `reg` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(1000) default NULL,
  `lname` varchar(1000) default NULL,
  `email` varchar(1000) default NULL,
  `mobile` varchar(1000) default NULL,
  `location` varchar(1000) default NULL,
  `uname` varchar(1000) default NULL,
  `pwd` varchar(1000) default NULL,
  `aadhar` varchar(1000) default NULL,
  `otp` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `reg` */

/*Table structure for table `station` */

DROP TABLE IF EXISTS `station`;

CREATE TABLE `station` (
  `psid` int(100) NOT NULL auto_increment,
  `station` varchar(1000) default NULL,
  `date` varchar(1000) default NULL,
  PRIMARY KEY  (`psid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `station` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
