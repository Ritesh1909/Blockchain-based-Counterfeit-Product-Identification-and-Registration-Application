/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - fakeproduct
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`fakeproduct` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `fakeproduct`;

/*Table structure for table `neg` */

DROP TABLE IF EXISTS `neg`;

CREATE TABLE `neg` (
  `negative` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `neg` */

insert  into `neg`(`negative`) values ('bad'),('selfish'),('foolish'),('stupied'),('guilty'),('Depression'),('lonely'),('not well'),('poor');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `sno` int(22) NOT NULL AUTO_INCREMENT,
  `pid` varchar(222) DEFAULT NULL,
  `pcat` varchar(222) DEFAULT NULL,
  `pbrand` varchar(222) DEFAULT NULL,
  `pname` varchar(222) DEFAULT NULL,
  `price` varchar(222) DEFAULT NULL,
  `spec` varchar(222) DEFAULT NULL,
  `image` varchar(222) DEFAULT NULL,
  `review` varchar(222) DEFAULT NULL,
  `rate` varchar(222) DEFAULT NULL,
  KEY `sno` (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `product` */

insert  into `product`(`sno`,`pid`,`pcat`,`pbrand`,`pname`,`price`,`spec`,`image`,`review`,`rate`) values (5,'PID9228','Electronics','Boat','Airpods','5000','Good sound qualtiy','bosk.jpg',NULL,NULL);

/*Table structure for table `product1` */

DROP TABLE IF EXISTS `product1`;

CREATE TABLE `product1` (
  `sno` int(22) NOT NULL AUTO_INCREMENT,
  `user` varchar(222) DEFAULT NULL,
  `pid` varchar(222) DEFAULT NULL,
  `pcat` varchar(222) DEFAULT NULL,
  `pname` varchar(222) DEFAULT NULL,
  `pbrand` varchar(222) DEFAULT NULL,
  `price` varchar(222) DEFAULT NULL,
  `review` varchar(222) DEFAULT NULL,
  `rate` varchar(222) DEFAULT NULL,
  `status` varchar(222) DEFAULT 'Wait',
  `status1` varchar(200) DEFAULT 'Original Product',
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

/*Data for the table `product1` */

insert  into `product1`(`sno`,`user`,`pid`,`pcat`,`pname`,`pbrand`,`price`,`review`,`rate`,`status`,`status1`) values (26,'mithun','PID9228','Electronics','Airpods','Boat','5000','good','3','Fake Product','Original Product'),(27,'mithun','PID9228','Electronics','Airpods','Boat','5000','bad quality','5','Fake Product','Original Product'),(28,'mithun','PID9228','Electronics','Airpods','Boat','5000','nice','Select Rating:','Fake Product','Original Product'),(29,'mithun','PID9228','Electronics','Airpods','Boat','5000','nice','Select Rating:','Fake Product','Original Product');

/*Table structure for table `pst` */

DROP TABLE IF EXISTS `pst`;

CREATE TABLE `pst` (
  `positive` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pst` */

insert  into `pst`(`positive`) values ('success'),('great'),('good'),('future'),('pleasant'),('wonderful'),('peace'),('health'),('wealth'),('happy'),('nice');

/*Table structure for table `ureg` */

DROP TABLE IF EXISTS `ureg`;

CREATE TABLE `ureg` (
  `sno` int(22) NOT NULL AUTO_INCREMENT,
  `user` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `cpass` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `contact` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  KEY `sno` (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `ureg` */

insert  into `ureg`(`sno`,`user`,`pass`,`cpass`,`email`,`dob`,`contact`,`location`,`image`) values (10,'mithun','123','123','sathya@gmail.com','12/09/1999','8256892436',NULL,'2509967-200.png');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
