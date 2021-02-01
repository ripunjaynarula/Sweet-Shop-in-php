
-- Database: `sweet`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
CREATE TABLE IF NOT EXISTS `administrator` (
  `Uname` varchar(200) NOT NULL,
  `upass` varchar(200) NOT NULL,
  UNIQUE KEY `Uname` (`Uname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`Uname`, `upass`) VALUES
('SR', 'SR123'),
('SR2', 'SR123');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
CREATE TABLE IF NOT EXISTS `branches` (
  `branchid` int NOT NULL,
  `branchname` varchar(32) NOT NULL,
  `branch address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`branchid`, `branchname`, `branch address`) VALUES
(1, 'Meerut', 'A-23, BAY, Meerut'),
(2, 'New Delhi', 'B-46, C Block, New Delhi');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `CUSTOMER_ID` int NOT NULL AUTO_INCREMENT,
  `EMAIL_ID` varchar(25) DEFAULT NULL,
  `U_NAME` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `U_ADDRESS` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `PHONE_NO` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUSTOMER_ID`, `EMAIL_ID`, `U_NAME`, `U_ADDRESS`, `PHONE_NO`) VALUES
(43, 'abc@xyz', 'abc', 'efg', '7896543210'),
(44, 'abcd@abc', 'ripunjay', 'gzb', '6398371469'),
(45, 'samvit@swaminathan', 'samvit', 'hyd', '8976543210'),
(46, 'ripunjay@proj', 'Ripunjay', 'VIT', '6398371469'),
(47, 'ripunjay@proj', 'Ripunjay', 'f-1313', '6398371469'),
(48, 'ripunjay@proj', 'Ripunjay', 'f-1313', '6398371469'),
(49, 'ripunjay@proj', 'Ripunjay', 'f-1313', '6398371469'),
(50, 'ripunjay@proj', 'Ripunjay', 'f-1313', '6398371469'),
(52, 'samvit@proj', 'Samvit', 'hyderabad', '9876543120'),
(53, 'samvit@proj', 'Samvit', 'hyderabad', '9876543120'),
(54, 'ripunjay@proj', 'Ripunjay', 'f-1313', '9876543120'),
(55, 'ripunjay@proj', 'Ripunjay', 'f-1313', '6398371469'),
(57, 'ripunjay@proj', 'Ripunjay', 'f-1313', '9876543120'),
(58, 'ripunjay@proj', 'Ripunjay', 'f-1313', '9876543120'),
(59, 'ripunjay@proj', 'Ripunjay', 'f-1313', '9876543120'),
(60, 'ripunjay@proj', 'Ripunjay', 'f-1313', '9876543120'),
(61, 'ripunjay@proj', 'Ripunjay', 'f-1313', '9876543120'),
(62, 'ripunjay@proj', 'Ripunjay', 'f-1313', '9876543120'),
(63, 'ripunjay@proj', 'Ripunjay', 'f-1313', '9876543120'),
(64, 'ripunjay@proj', 'Ripunjay', 'f-1313', '9876543120'),
(65, 'ripunjay@proj', 'Ripunjay', 'f-1313', '9876543120'),
(66, 'ripunjay@proj', 'Ripunjay', 'f-1313', '9876543120');

-- --------------------------------------------------------

--
-- Table structure for table `dmen`
--

DROP TABLE IF EXISTS `dmen`;
CREATE TABLE IF NOT EXISTS `dmen` (
  `did` int NOT NULL,
  `name` varchar(30) NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dmen`
--

INSERT INTO `dmen` (`did`, `name`, `status`) VALUES
(1, 'Sanjay Mishra', 0),
(2, 'Munna Tripathi', 0),
(3, 'Vishwas Mehra', 0),
(4, 'Babu ram', 0),
(5, 'Satya Singh', 0);

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

DROP TABLE IF EXISTS `offer`;
CREATE TABLE IF NOT EXISTS `offer` (
  `PRODUCT_ID` int NOT NULL DEFAULT '0',
  `DISCOUNT` int DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offer`
--

INSERT INTO `offer` (`PRODUCT_ID`, `DISCOUNT`) VALUES
(3, 1),
(6, 3),
(8, 2),
(9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `cart` varchar(30) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`uid`, `cart`) VALUES
(43, '56'),
(44, '235'),
(45, '23'),
(46, '67'),
(47, '6'),
(48, '3'),
(49, '3'),
(50, '3'),
(52, '256'),
(53, '256'),
(54, '126'),
(55, '236'),
(57, '1'),
(58, '1'),
(59, '1'),
(60, '1'),
(61, '1'),
(62, '1'),
(63, '1'),
(64, '1'),
(65, '1'),
(66, '5');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `PAYMENT_ID` varchar(6) NOT NULL DEFAULT '',
  `AMOUNT` int DEFAULT NULL,
  `TYPE` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`PAYMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `PRODUCT_ID` varchar(6) NOT NULL DEFAULT '',
  `P_NAME` varchar(30) DEFAULT NULL,
  `PRICE` int DEFAULT NULL,
  `BRAND` varchar(10) DEFAULT NULL,
  `STOCK_NO` varchar(6) DEFAULT NULL,
  `discount` int NOT NULL,
  PRIMARY KEY (`PRODUCT_ID`),
  KEY `FK_PRODUCT` (`STOCK_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PRODUCT_ID`, `P_NAME`, `PRICE`, `BRAND`, `STOCK_NO`, `discount`) VALUES
('1', 'Gulab Jamun', 1, 'Inhouse', NULL, 0),
('2', 'Kaju Barfi', 2, 'Inhouse', NULL, 0),
('3', 'Besan Laddu', 3, 'Haldirams', NULL, 1),
('4', 'Dry Fruits Laddu', 4, 'Haldirams', NULL, 0),
('5', 'Kalakand', 5, 'Merwans', NULL, 0),
('6', 'Mysore Pak', 6, 'Merwans', NULL, 3),
('7', 'Rasgulla', 7, 'Inhouse', NULL, 0),
('8', 'Motichoor Laddu', 8, 'Inhouse', NULL, 2),
('9', 'Rasmalai', 9, 'Godrej', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `staffid` int NOT NULL AUTO_INCREMENT,
  `staffname` varchar(32) NOT NULL,
  `staffaddress` varchar(50) NOT NULL,
  `staffcontact` varchar(12) NOT NULL,
  PRIMARY KEY (`staffid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffid`, `staffname`, `staffaddress`, `staffcontact`) VALUES
(1, 'Dileep Mishra', 'B-32, Meerut, India', '8698643191'),
(2, 'Vishal Kumar', 'A-1, Old Hyderabad', '668268826'),
(3, 'Md. Ali', 'C-3, Civil Lines, Meerut', '7878978248');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

DROP TABLE IF EXISTS `stocks`;
CREATE TABLE IF NOT EXISTS `stocks` (
  `stockid` int NOT NULL AUTO_INCREMENT,
  `stock_number` int NOT NULL,
  PRIMARY KEY (`stockid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`stockid`, `stock_number`) VALUES
(1, 800),
(2, 600),
(3, 500),
(4, 500),
(5, 600),
(6, 500),
(7, 500),
(8, 500),
(9, 500);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
CREATE TABLE IF NOT EXISTS `supplier` (
  `SUPPLIER_ID` varchar(6) NOT NULL DEFAULT '',
  `S_NAME` varchar(15) DEFAULT NULL,
  `S_ADDRESS` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`SUPPLIER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SUPPLIER_ID`, `S_NAME`, `S_ADDRESS`) VALUES
('1', 'Inhouse', 'B-1, New Meerut, Uttar Pradesh'),
('2', 'Merwan\'s', 'Chandni Chowk, New Delhi, NCR'),
('3', 'Haldirams\'', '43,Old Plot, Khar, Mumbai, Maharashta');
COMMIT;

