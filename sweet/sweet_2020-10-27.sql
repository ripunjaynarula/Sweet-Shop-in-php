# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.26)
# Database: sweet
# Generation Time: 2020-10-26 21:41:20 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table administrator
# ------------------------------------------------------------

DROP TABLE IF EXISTS `administrator`;

CREATE TABLE `administrator` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Uname` varchar(200) NOT NULL,
  `upass` varchar(200) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;

INSERT INTO `administrator` (`Id`, `Uname`, `upass`)
VALUES
	(1,'SR','SR123');

/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table branches
# ------------------------------------------------------------

DROP TABLE IF EXISTS `branches`;

CREATE TABLE `branches` (
  `branchid` int(4) NOT NULL,
  `branchname` varchar(32) NOT NULL,
  `branch address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `branches` WRITE;
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;

INSERT INTO `branches` (`branchid`, `branchname`, `branch address`)
VALUES
	(1,'Meerut','A-23, BAY, Meerut'),
	(2,'New Delhi','B-46, C Block, New Delhi');

/*!40000 ALTER TABLE `branches` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table customer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `CUSTOMER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(8) DEFAULT NULL,
  `EMAIL_ID` varchar(25) DEFAULT NULL,
  `PASSWORD` varchar(8) DEFAULT NULL,
  `NAME` varchar(30) DEFAULT NULL,
  `ADDRESS` varchar(50) DEFAULT NULL,
  `PHONE_NO` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;

INSERT INTO `customer` (`CUSTOMER_ID`, `USERNAME`, `EMAIL_ID`, `PASSWORD`, `NAME`, `ADDRESS`, `PHONE_NO`)
VALUES
	(9,'','abc@gmail.com','','abc','wordno:-28','7978015243'),
	(11,'','abc@gmail.com','','abc','wordno:-28','7978015243');

/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table dmen
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dmen`;

CREATE TABLE `dmen` (
  `did` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `dmen` WRITE;
/*!40000 ALTER TABLE `dmen` DISABLE KEYS */;

INSERT INTO `dmen` (`did`, `name`, `status`)
VALUES
	(1,'Sanjay Mishra',1),
	(2,'Munna Tripathi',1),
	(3,'Vishwas Mehra',1),
	(4,'Babu ram',0),
	(5,'Satya Singh',0);

/*!40000 ALTER TABLE `dmen` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table offer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `offer`;

CREATE TABLE `offer` (
  `PRODUCT_ID` int(4) NOT NULL DEFAULT '0',
  `DISCOUNT` int(11) DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `offer` WRITE;
/*!40000 ALTER TABLE `offer` DISABLE KEYS */;

INSERT INTO `offer` (`PRODUCT_ID`, `DISCOUNT`)
VALUES
	(3,1),
	(6,3),
	(8,2),
	(9,2);

/*!40000 ALTER TABLE `offer` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `uname` varchar(30) NOT NULL,
  `uid` int(4) NOT NULL AUTO_INCREMENT,
  `uemail` varchar(30) NOT NULL,
  `uaddress` varchar(50) NOT NULL,
  `cart` varchar(30) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;

INSERT INTO `orders` (`uname`, `uid`, `uemail`, `uaddress`, `cart`)
VALUES
	('Samvit',24,'xyz@abc','B-23, Hyderabad','459'),
	('Ripunjay Narula',34,'dfv@sxe','BAY, Allahabad','1239'),
	('af',35,'fad@df','dfa','1'),
	('Samvit',38,'ammm@xty','Hyderabad','1239'),
	('Samvit',39,'bnbm@nb','Hyderabad','1269'),
	('',40,'','','');

/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table payment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `PAYMENT_ID` varchar(6) NOT NULL DEFAULT '',
  `AMOUNT` int(11) DEFAULT NULL,
  `TYPE` varchar(10) DEFAULT NULL,
  `COUPON_NO` int(11) DEFAULT NULL,
  PRIMARY KEY (`PAYMENT_ID`),
  KEY `FK_PAYMENT` (`COUPON_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table product
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `PRODUCT_ID` varchar(6) NOT NULL DEFAULT '',
  `P_NAME` varchar(30) DEFAULT NULL,
  `PRICE` int(11) DEFAULT NULL,
  `BRAND` varchar(10) DEFAULT NULL,
  `STOCK_NO` varchar(6) DEFAULT NULL,
  `discount` int(11) NOT NULL,
  PRIMARY KEY (`PRODUCT_ID`),
  KEY `FK_PRODUCT` (`STOCK_NO`),
  CONSTRAINT `FK_PRODUCT` FOREIGN KEY (`STOCK_NO`) REFERENCES `stock` (`STOCK_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;

INSERT INTO `product` (`PRODUCT_ID`, `P_NAME`, `PRICE`, `BRAND`, `STOCK_NO`, `discount`)
VALUES
	('1','Gulab Jamun',1,'Inhouse',NULL,0),
	('2','Kaju Barfi',2,'Inhouse',NULL,0),
	('3','Besan Laddu',3,'Haldirams',NULL,1),
	('4','Dry Fruits Laddu',4,'Haldirams',NULL,0),
	('5','Kalakand',5,'Merwans',NULL,0),
	('6','Mysore Pak',6,'Merwans',NULL,3),
	('7','Rasgulla',7,'Inhouse',NULL,0),
	('8','Motichoor Laddu',8,'Inhouse',NULL,2),
	('9','Rasmalai',9,'Godrej',NULL,2);

/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table staff
# ------------------------------------------------------------

DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `staffid` int(4) NOT NULL AUTO_INCREMENT,
  `staffname` varchar(32) NOT NULL,
  `staffaddress` varchar(50) NOT NULL,
  `staffcontact` varchar(12) NOT NULL,
  PRIMARY KEY (`staffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;

INSERT INTO `staff` (`staffid`, `staffname`, `staffaddress`, `staffcontact`)
VALUES
	(1,'Dileep Mishra','B-32, Meerut, India','8698643191'),
	(2,'Vishal Kumar','A-1, Old Meerut','668268826'),
	(3,'Md. Ali','C-3, Civil Lines, Meerut','7878978248');

/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table stocks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `stocks`;

CREATE TABLE `stocks` (
  `stockid` int(4) NOT NULL AUTO_INCREMENT,
  `stock number` int(4) NOT NULL,
  PRIMARY KEY (`stockid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `stocks` WRITE;
/*!40000 ALTER TABLE `stocks` DISABLE KEYS */;

INSERT INTO `stocks` (`stockid`, `stock number`)
VALUES
	(1,10),
	(2,29),
	(3,423),
	(4,65),
	(5,32),
	(6,12),
	(7,98),
	(8,62),
	(9,73);

/*!40000 ALTER TABLE `stocks` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table supplier
# ------------------------------------------------------------

DROP TABLE IF EXISTS `supplier`;

CREATE TABLE `supplier` (
  `SUPPLIER_ID` varchar(6) NOT NULL DEFAULT '',
  `S_NAME` varchar(15) DEFAULT NULL,
  `S_ADDRESS` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`SUPPLIER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;

INSERT INTO `supplier` (`SUPPLIER_ID`, `S_NAME`, `S_ADDRESS`)
VALUES
	('1','Inhouse','B-1, New Meerut, Uttar Pradesh'),
	('2','Merwan\'s','Chandni Chowk, New Delhi, NCR'),
	('3','Haldirams\'','43,Old Plot, Khar, Mumbai, Maharashta');

/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
