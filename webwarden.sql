-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 19, 2019 at 02:21 PM
-- Server version: 5.5.16
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
-- Database: `webwarden`
--

-- --------------------------------------------------------

--
-- Table structure for table `class0`
--

DROP TABLE IF EXISTS `class0`;
CREATE TABLE IF NOT EXISTS `class0` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `subject` varchar(10) DEFAULT NULL,
  `r_no` int(11) DEFAULT NULL,
  `attendance` varchar(10) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class1`
--

DROP TABLE IF EXISTS `class1`;
CREATE TABLE IF NOT EXISTS `class1` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `subject` varchar(10) DEFAULT NULL,
  `r_no` int(11) DEFAULT NULL,
  `attendance` varchar(10) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class1`
--

INSERT INTO `class1` (`s_id`, `date`, `subject`, `r_no`, `attendance`, `value`) VALUES
(1, '2019-10-14', 'ip', 1, 'present', 1),
(2, '2019-10-14', 'ip', 5, 'present', 1),
(3, '2019-10-14', 'ip', 7, 'present', 1),
(4, '2019-10-14', 'ip', 9, 'absent', 0),
(5, '2019-10-14', 'ip', 10, 'present', 1),
(6, '2019-10-15', 'ip', 1, 'present', 1),
(7, '2019-10-15', 'ip', 5, 'absent', 0),
(8, '2019-10-15', 'ip', 7, 'present', 1),
(9, '2019-10-15', 'ip', 9, 'absent', 0),
(10, '2019-10-15', 'ip', 10, 'present', 1),
(11, '2019-10-16', 'ip', 1, 'absent', 0),
(12, '2019-10-16', 'ip', 5, 'absent', 0),
(13, '2019-10-16', 'ip', 7, 'present', 1),
(14, '2019-10-16', 'ip', 9, 'present', 1),
(15, '2019-10-16', 'ip', 10, 'absent', 0),
(16, '2019-10-17', 'ip', 1, 'present', 1),
(17, '2019-10-17', 'ip', 5, 'absent', 0),
(18, '2019-10-17', 'ip', 7, 'present', 1),
(19, '2019-10-17', 'ip', 9, 'present', 1),
(20, '2019-10-17', 'ip', 10, 'absent', 0),
(21, '2019-10-18', 'ip', 1, 'absent', 0),
(22, '2019-10-18', 'ip', 5, 'present', 1),
(23, '2019-10-18', 'ip', 7, 'present', 1),
(24, '2019-10-18', 'ip', 9, 'present', 1),
(25, '2019-10-18', 'ip', 10, 'absent', 0),
(26, '2019-10-18', 'cns', 1, 'present', 1),
(27, '2019-10-18', 'cns', 5, 'present', 1),
(28, '2019-10-18', 'cns', 7, 'present', 1),
(29, '2019-10-18', 'cns', 9, 'present', 1),
(30, '2019-10-18', 'cns', 10, 'absent', 0),
(31, '2019-10-16', 'mep', 1, 'present', 1),
(32, '2019-10-16', 'mep', 5, 'present', 1),
(33, '2019-10-16', 'mep', 7, 'present', 1),
(34, '2019-10-16', 'mep', 9, 'absent', 0),
(35, '2019-10-16', 'mep', 10, 'absent', 0);

-- --------------------------------------------------------

--
-- Table structure for table `defaulter`
--

DROP TABLE IF EXISTS `defaulter`;
CREATE TABLE IF NOT EXISTS `defaulter` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_no` int(11) NOT NULL,
  `value` varchar(10) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `defaulter`
--

INSERT INTO `defaulter` (`s_id`, `r_no`, `value`) VALUES
(1, 1, '0.7143'),
(2, 5, '0.5714'),
(3, 7, '1.0000'),
(4, 9, '0.5714'),
(5, 10, '0.2857');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `m_no` bigint(10) NOT NULL,
  `e_mail` varchar(50) NOT NULL,
  `college` varchar(50) DEFAULT NULL,
  `gender` enum('m','f') DEFAULT NULL,
  `prof` enum('student','teacher') DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `r_no` varchar(10) DEFAULT NULL,
  `branch` varchar(10) DEFAULT NULL,
  `class` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `username`, `m_no`, `e_mail`, `college`, `gender`, `prof`, `password`, `r_no`, `branch`, `class`) VALUES
(20, 'Hitanshu', 'Shah', 'Hitanshu', 9167953214, 'hitanshushah10.8@gmail.com', 'Atharva', 'm', 'student', 'hitanshu', '10', 'inft', 'class2'),
(21, 'Admin', '', 'admin', 1234567890, 'admin@gmail.com', 'Atharva', 'm', 'teacher', 'admin', '', 'none', 'none'),
(22, 'shreya', 'sakpal', 'sss', 1234567898, 'sss@gmail.com', 'Atharva', 'f', 'student', 'shreya', '07', 'inft', 'class2'),
(23, 'pravin', 'anilkumar', 'pravin', 1234567890, 'p@gmail.com', 'Atharva', 'm', 'student', 'pravin', '05', 'inft', 'class2'),
(24, 'Shravani', 'Maliye', 'shravani', 9823434324, 'shravanimaliye@gmail.com', 'Atharva', 'f', 'student', 'shravani', '01', 'inft', 'class2'),
(25, 'Jayom', 'Oza', 'jayom', 9876543290, 'jayomoza5@gmail.com', 'Atharva', 'm', 'student', 'jayom', '09', 'inft', 'class2'),
(26, 'yash', 'Shah', 'yash', 1234567890, 'yash@gmail.com', 'Atharva', 'm', 'student', 'yash', '07', 'inft', 'class1'),
(27, 'Atul', 'Shah', 'atul', 1234567890, 'atul@gmail.com', 'Atharva', 'm', 'teacher', 'atul', 'none', '', 'none');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
