-- MySQL dump 10.10
--
-- Host: localhost    Database: cake_ordering_system
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt

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
-- Table structure for table `add_new_cake`
--

DROP TABLE IF EXISTS `add_new_cake`;
CREATE TABLE `add_new_cake` (
  `cake_id` int(10) NOT NULL auto_increment,
  `cake_name` varchar(50) default NULL,
  PRIMARY KEY  (`cake_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_new_cake`
--


/*!40000 ALTER TABLE `add_new_cake` DISABLE KEYS */;
LOCK TABLES `add_new_cake` WRITE;
INSERT INTO `add_new_cake` VALUES (8,'chocolate Cake'),(9,'mango cake'),(10,'orange cake');
UNLOCK TABLES;
/*!40000 ALTER TABLE `add_new_cake` ENABLE KEYS */;

--
-- Table structure for table `add_new_category`
--

DROP TABLE IF EXISTS `add_new_category`;
CREATE TABLE `add_new_category` (
  `category_id` int(10) NOT NULL auto_increment,
  `category` varchar(50) default NULL,
  PRIMARY KEY  (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_new_category`
--


/*!40000 ALTER TABLE `add_new_category` DISABLE KEYS */;
LOCK TABLES `add_new_category` WRITE;
INSERT INTO `add_new_category` VALUES (1,'Wedding'),(2,'Birthday'),(3,'Anniversary');
UNLOCK TABLES;
/*!40000 ALTER TABLE `add_new_category` ENABLE KEYS */;

--
-- Table structure for table `advance_order_info`
--

DROP TABLE IF EXISTS `advance_order_info`;
CREATE TABLE `advance_order_info` (
  `ad_id` int(30) NOT NULL,
  `c_name` varchar(50) default NULL,
  `mobile` varchar(12) default NULL,
  `cake_name` varchar(50) default NULL,
  `category` varchar(50) default NULL,
  `order_date` varchar(30) default NULL,
  `delivery_date` varchar(30) default NULL,
  `unit_price` varchar(20) default NULL,
  `quantity` varchar(20) default NULL,
  `total_price` varchar(20) default NULL,
  `advance_price` varchar(30) default NULL,
  `due_price` varchar(40) default NULL,
  `order_status` varchar(40) default NULL,
  `payment_mode` varchar(50) default NULL,
  PRIMARY KEY  (`ad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advance_order_info`
--


/*!40000 ALTER TABLE `advance_order_info` DISABLE KEYS */;
LOCK TABLES `advance_order_info` WRITE;
INSERT INTO `advance_order_info` VALUES (1,'harshit','2343','cake2','Anniversary','2020-01-25','2020-01-30','400.0','3.0','1200.0','600.0','0.0','delivered','cash'),(2,'mohit','5675456','cake1','Wedding','2020-01-25','2020-01-31','477.0','3.0','1431.0','100.0','0.0','delivered','debit'),(3,'rohit','6767','cake1','Birthday','2020-01-25','2020-01-28','200.0','2.0','400.0','100.0','0.0','delivered','credit'),(4,'sohan','1321','cake1','Birthday','2020-01-23','2020-01-30','344.0','2.0','688.0','100.0','0.0','delivered','cash'),(5,'ram','65756','cake4','Wedding','2020-01-22','2020-01-29','500.0','6.0','3000.0','1000.0','2000.0','pending','credit'),(6,'Prashant Mehra','7896857485','chocolate Cake','Birthday','2020-04-17','2020-04-20','800.0','2.0','1600.0','600.0','1000.0','pending','Cash');
UNLOCK TABLES;
/*!40000 ALTER TABLE `advance_order_info` ENABLE KEYS */;

--
-- Table structure for table `employee_info`
--

DROP TABLE IF EXISTS `employee_info`;
CREATE TABLE `employee_info` (
  `emp_id` int(20) NOT NULL auto_increment,
  `emp_name` varchar(100) default NULL,
  `emp_mobile` varchar(15) default NULL,
  `emp_address` varchar(120) default NULL,
  `emp_post` varchar(50) default NULL,
  `emp_status` varchar(50) default NULL,
  `emp_joining` varchar(50) default NULL,
  `emp_leaving` varchar(50) default NULL,
  PRIMARY KEY  (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_info`
--


/*!40000 ALTER TABLE `employee_info` DISABLE KEYS */;
LOCK TABLES `employee_info` WRITE;
INSERT INTO `employee_info` VALUES (1,'Sachin','8975486958','Sagore','Manager','unactive','2020-01-01','2020-01-30'),(2,'Amrita','8974856985','Indore','Manager','unactive','2020-01-14','2020-01-26'),(3,'Mohit Parmar','8975486900','Sagore','Waiter','unactive','2020-01-22','2020-04-17'),(4,'Naman','7845869253','Indore','Waiter','unactive','2020-01-28','2020-04-17'),(5,'shawan','2365985874','Indore','Manager','unactive','2020-04-16','2020-04-17'),(6,'Mohan Yadav','7845857452','Indore','Waiter','active','2020-04-17','');
UNLOCK TABLES;
/*!40000 ALTER TABLE `employee_info` ENABLE KEYS */;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `name` varchar(100) default NULL,
  `mail` varchar(100) default NULL,
  `message` varchar(500) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--


/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
LOCK TABLES `feedback` WRITE;
INSERT INTO `feedback` VALUES ('Mohit Parmar','mohit@gmail.com','this is  a nice website..'),('Shivam Yadav','shiv@gmail.com','Very Good Website\r\n'),('ram','ram@gmail.com','nice web'),('Vikas','vikas@gmail.com','Good Website for cake'),('shweta Tiwari','shweta123123@gmail.com','Nice cake and good web site'),('Mohit Yadav','mohit0909@gmail.com','this is message ');
UNLOCK TABLES;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id` int(20) default NULL,
  `username` varchar(100) default NULL,
  `password` varchar(20) default NULL,
  `name` varchar(50) default NULL,
  `mobile` varchar(50) default NULL,
  `address` varchar(50) default NULL,
  `email` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--


/*!40000 ALTER TABLE `login` DISABLE KEYS */;
LOCK TABLES `login` WRITE;
INSERT INTO `login` VALUES (1,'admin','123','Mohit Parmar','8998578458','Sagore','admin-mohit@gmail.com');
UNLOCK TABLES;
/*!40000 ALTER TABLE `login` ENABLE KEYS */;

--
-- Table structure for table `order_info`
--

DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info` (
  `order_id` int(10) NOT NULL,
  `customer_name` varchar(50) default NULL,
  `mobile` varchar(12) default NULL,
  `cake_name` varchar(50) default NULL,
  `unit_price` varchar(50) default NULL,
  `quantity` varchar(50) default NULL,
  `total_price` varchar(50) default NULL,
  `payment_mode` varchar(50) default NULL,
  `date` varchar(20) default NULL,
  PRIMARY KEY  (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_info`
--


/*!40000 ALTER TABLE `order_info` DISABLE KEYS */;
LOCK TABLES `order_info` WRITE;
INSERT INTO `order_info` VALUES (1,'mohit','3434','cake2','5445.0','3.0','16335.0','cash','2020-01-23'),(2,'ram','154265','cake4','500.0','2.0','1000.0','cash','2020-01-24'),(3,'sachin','32323','cake2','500.0','5.0','2500.0','credit','2020-01-24'),(4,'shiv','6757456789','cake5','600.0','1.0','600.0','cash','2020-01-25'),(5,'mohit','5656','mango cake','455.0','4.0','1820.0','Cash','2020-01-28'),(6,'Amit','9856748569','mango cake','400.0','2.0','800.0','Cash','2020-01-28'),(7,'shivi','8974569825','choclate cake','300.0','2.0','600.0','Cash','2020-04-16'),(8,'Ram ','8974569825','orange cake','400.0','4.0','1600.0','Cash','2020-04-16'),(9,'Suresh','9857485698','chocolate Cake','650.0','3.0','1950.0','Cash','2020-04-17'),(10,'Suresh Parmar','8798569858','chocolate Cake','750.0','3.0','2250.0','Cash','2020-04-17');
UNLOCK TABLES;
/*!40000 ALTER TABLE `order_info` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

