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

insert  into `neg`(`negative`) values ('bad'),('selfish'),('foolish'),('stupied'),('guilty'),('Depression'),('lonely'),('not well');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `product` */

insert  into `product`(`sno`,`pid`,`pcat`,`pbrand`,`pname`,`price`,`spec`,`image`,`review`,`rate`) values (1,'PID164','Electronics','esgr','asdrf','asfadf','sdfsf','amoxicillin.jpeg',NULL,NULL),(2,'PID5842','Electronics','Sony','Camera','20000','Best for all shoot','digital.jpg',NULL,NULL),(3,'PID8030','Women','Avasa','Kurthi','300','Long and Soft Cloth','Western wear.webp',NULL,NULL),(4,'PID2814','Women','gfyttgvbjno','dfgdsg','343','gfdfgt','bag1.jpg',NULL,NULL);

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
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Data for the table `product1` */

insert  into `product1`(`sno`,`user`,`pid`,`pcat`,`pname`,`pbrand`,`price`,`review`,`rate`,`status`) values (15,'Lakshmi','PID8030','Women','Kurthi','Avasa','300','Good','4','1'),(16,'Lakshmi','PID8030','Women','Kurthi','Avasa','300','Good','5','1'),(17,'Lakshmi','PID8030','Women','Kurthi','Avasa','300','Good','3','1'),(18,'Lakshmi','PID5842','Electronics','Camera','Sony','20000','bad','2','Negative'),(19,'Lakshmi','PID5842','Electronics','Camera','Sony','20000','bad','4','Negative'),(21,'Lakshmi','PID2814','Women','dfgdsg','gfyttgvbjno','343','Good','5','Fake Product'),(22,'Lakshmi','PID2814','Women','dfgdsg','gfyttgvbjno','343','Good','3','Fake Product'),(23,'Lakshmi','PID2814','Women','dfgdsg','gfyttgvbjno','343','Good','5','Fake Product'),(24,'Lakshmi','PID2814','Women','dfgdsg','gfyttgvbjno','343','Good','5','Fake Product');

/*Table structure for table `pst` */

DROP TABLE IF EXISTS `pst`;

CREATE TABLE `pst` (
  `positive` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pst` */

insert  into `pst`(`positive`) values ('success'),('great'),('good'),('future'),('pleasant'),('wonderful'),('peace'),('health'),('wealth'),('happy');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `ureg` */

insert  into `ureg`(`sno`,`user`,`pass`,`cpass`,`email`,`dob`,`contact`,`location`,`image`) values (3,'lakshmi','lakshmi','lakshmi','lakshmi@gmail.com','2022','09',NULL,'admin.png'),(4,'PID5458','Electronics','esgr','asdrf','asfadf','sdfsf',NULL,'admin.png');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
