-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 25, 2019 at 12:55 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `username` varchar(20) NOT NULL,
  `password` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`username`, `password`) VALUES
('kushagra', '$2y$10$MjRjMjA1NDEzZTNhZWU2NejXrzwJMKFlVo4Fp7oXMwmZMNScSMAcG');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
CREATE TABLE IF NOT EXISTS `bookings` (
  `customer_id` int(10) NOT NULL,
  `room_num` int(3) NOT NULL,
  `nod_left` int(11) NOT NULL,
  `nod_booking` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`customer_id`, `room_num`, `nod_left`, `nod_booking`) VALUES
(1000000006, 802, 0, 14);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` bigint(10) NOT NULL,
  `f_name` varchar(20) NOT NULL,
  `m_name` char(1) DEFAULT NULL,
  `l_name` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `pincode` int(6) NOT NULL,
  `city` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `aadhaar_visa` bigint(16) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `phone` bigint(10) DEFAULT NULL,
  `payment` int(8) DEFAULT NULL,
  `check_in` varchar(10) DEFAULT NULL,
  `check_out` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `f_name`, `m_name`, `l_name`, `address`, `pincode`, `city`, `country`, `aadhaar_visa`, `email`, `phone`, `payment`, `check_in`, `check_out`) VALUES
(1000000004, 'hello', '', 'world', 'world', 0, 'hello city', 'usa', 4785478547854785, 'hello@world.com', 9424668709, 26000, '11,10,2017', '11,17,2017'),
(1000000005, 'hello', 'w', 'world', '', 471001, 'asd', 'asdasdsad', 1452145214521452, 'ASD@gmail.com', 7878787878, 63000, '10,24,2017', '11,1,2017');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
CREATE TABLE IF NOT EXISTS `rooms` (
  `room_type_id` int(4) DEFAULT NULL,
  `room_type_name` varchar(50) DEFAULT NULL,
  `room_num` int(3) DEFAULT NULL,
  `available` int(1) DEFAULT NULL,
  KEY `fk_room_type_id` (`room_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_type_id`, `room_type_name`, `room_num`, `available`) VALUES
(1001, 'single', 101, 1),
(1001, 'single', 102, 1),
(1001, 'single', 103, 1),
(1001, 'single', 104, 1),
(1001, 'single', 105, 1),
(1001, 'single', 106, 1),
(1001, 'single', 107, 1),
(1002, 'double', 201, 1),
(1004, 'family', 402, 1),
(1001, 'single', 108, 1),
(1002, 'double', 202, 1),
(1002, 'double', 203, 1),
(1002, 'double', 204, 1),
(1002, 'double', 205, 1),
(1002, 'double', 206, 1),
(1002, 'double', 207, 1),
(1004, 'family', 401, 1),
(1002, 'double', 208, 1),
(1004, 'family', 403, 1),
(1004, 'family', 404, 1),
(1004, 'family', 405, 1),
(1004, 'family', 406, 1),
(1004, 'family', 407, 1),
(1004, 'family', 408, 1),
(2001, 'queen', 501, 1),
(2001, 'queen', 502, 1),
(2001, 'queen', 503, 1),
(2001, 'queen', 504, 1),
(2002, 'king', 601, 1),
(2002, 'king', 602, 1),
(2002, 'king', 603, 1),
(2002, 'king', 604, 1),
(2004, 'twin', 701, 1),
(2004, 'twin', 702, 1),
(3001, 'master', 901, 1),
(3001, 'master', 902, 1),
(3002, 'mini', 801, 1),
(3002, 'mini', 802, 0),
(3002, 'mini', 803, 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

DROP TABLE IF EXISTS `room_type`;
CREATE TABLE IF NOT EXISTS `room_type` (
  `room_type_id` int(4) NOT NULL,
  `room_type_name` varchar(50) NOT NULL,
  `price` int(8) DEFAULT NULL,
  `available_count` int(3) DEFAULT NULL,
  PRIMARY KEY (`room_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`room_type_id`, `room_type_name`, `price`, `available_count`) VALUES
(1001, 'single bed', 5000, 8),
(1002, 'double bed', 8000, 8),
(1004, 'family', 10000, 8),
(2001, 'queen', 12000, 4),
(2002, 'king', 13000, 4),
(2004, 'twin', 20000, 2),
(3001, 'master suite', 30000, 2),
(3002, 'mini suite', 25000, 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
