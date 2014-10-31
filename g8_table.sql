-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 14, 2014 at 07:14 PM
-- Server version: 5.5.38-0ubuntu0.14.04.1-log
-- PHP Version: 5.5.9-1ubuntu4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `g8_core`
--

-- --------------------------------------------------------

--
-- Table structure for table `g8_attd`
--

CREATE TABLE IF NOT EXISTS `g8_attd` (
  `g8_rec_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Index record',
  `g8_tag_id` varchar(50) NOT NULL,
  `g8_uname` varchar(100) NOT NULL,
  `g8_empid` varchar(100) NOT NULL,
  `g8_lo_id` int(10) NOT NULL,
  PRIMARY KEY (`g8_rec_id`),
  UNIQUE KEY `g8_tag_id` (`g8_tag_id`,`g8_empid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `g8_attd`
--

INSERT INTO `g8_attd` (`g8_rec_id`, `g8_tag_id`, `g8_uname`, `g8_empid`, `g8_lo_id`) VALUES
(1, '19961074', 'Punit Kumar', '9113081', 90000),
(2, '20607106', 'Upendra Kumar', '9113081', 90001),
(3, '15531298', 'Gurpal Singh', '9114052', 90002),
(4, '19943618', 'Mitash Gera', '9114051', 90003),
(5, '20618210', 'Hitendra Verma', '9114053', 90004),
(6, '19936338', 'Siddharth Rathore', '9114072', 90005),
(7, '20643906', 'Rahul satija', '9114071', 90006),
(8, '20629250', 'Aman Chawla', '', 90007),
(9, '20049346', 'Shailendra Kumar', '', 90008),
(10, '15531554', 'Himanshu Khazanchi', '', 90009),
(11, '20435890', 'Sachin K. Vashist', '', 90010);

-- --------------------------------------------------------

--
-- Table structure for table `g8_attd_log`
--

CREATE TABLE IF NOT EXISTS `g8_attd_log` (
  `g8_rec_id` int(20) NOT NULL AUTO_INCREMENT,
  `g8_tag_id` varchar(20) NOT NULL,
  `g8_tag_timestamp` varchar(200) NOT NULL,
  `g8_curr_timestamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`g8_rec_id`),
  KEY `g8_tag_id` (`g8_tag_id`,`g8_tag_timestamp`),
  KEY `g8_tag_id_2` (`g8_tag_id`,`g8_tag_timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
