-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 08, 2017 at 12:53 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `crime_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `area_info`
--

CREATE TABLE IF NOT EXISTS `area_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE ucs2_unicode_ci NOT NULL,
  `district` varchar(20) COLLATE ucs2_unicode_ci NOT NULL,
  `investigator` varchar(20) COLLATE ucs2_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=ucs2 COLLATE=ucs2_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `area_info`
--

INSERT INTO `area_info` (`id`, `name`, `district`, `investigator`) VALUES
(1, 'chandroganj', 'lakshmipur', 'piash'),
(3, 'Jakshin', 'lakshmipur', 'rahikka'),
(4, 'Samserabad', 'lakshmipur', 'piash'),
(6, 'Banani', 'dhaka', 'piash'),
(7, 'gulshan', 'dhaka', 'imran12'),
(8, 'aaa', 'lakshmipur', 'piash'),
(9, 'sonarga', 'narayanganj', 'rahikka'),
(10, 'sonarga', 'narayanganj', 'rahikka'),
(11, 'sonarga', 'narayanganj', 'rahikka'),
(12, 'sonarga', 'narayanganj', 'rahikka'),
(13, 'sonarga', 'narayanganj', 'rahikka'),
(14, 'new town', 'narayanganj', 'sabbir'),
(15, 'new town', 'narayanganj', 'sabbir');

-- --------------------------------------------------------

--
-- Table structure for table `crime_info`
--

CREATE TABLE IF NOT EXISTS `crime_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `crime_type` varchar(50) COLLATE ucs2_unicode_ci NOT NULL,
  `area` varchar(50) COLLATE ucs2_unicode_ci NOT NULL,
  `reporter` varchar(50) COLLATE ucs2_unicode_ci NOT NULL,
  `date` int(10) NOT NULL,
  `month` varchar(20) COLLATE ucs2_unicode_ci NOT NULL,
  `year` int(20) NOT NULL,
  `status` int(10) NOT NULL,
  `description` text COLLATE ucs2_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=ucs2 COLLATE=ucs2_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `crime_info`
--

INSERT INTO `crime_info` (`id`, `crime_type`, `area`, `reporter`, `date`, `month`, `year`, `status`, `description`) VALUES
(1, 'CyberCrime', 'chandroganj', 'Meraj', 28, 'Apr', 2017, 2, 'asggsga ysgas'),
(2, 'Hijack', 'Samserabad', 'piash12', 28, 'Apr', 2017, 2, 'Something is happenedquick'),
(3, 'Fraud', 'Samserabad', 'piash12', 28, 'Apr', 2017, 0, 'kanada'),
(4, 'CyberCrime', 'Banani', 'imran12', 29, 'Apr', 2017, 1, 'Something happened'),
(5, 'CyberCrime', 'Samserabad', 'Anonymous', 29, 'Apr', 2017, 0, 'my fb has been hacked'),
(6, 'Robbery', '', 'Anonymous', 30, 'Apr', 2017, 0, 'My mobile has been stolen'),
(7, 'Fraud', 'Jakshin', 'Anonymous', 30, 'Apr', 2017, 0, 'hello'),
(8, 'CyberCrime', 'Banani', 'test1', 30, 'Apr', 2017, 1, 'Some one hacked my fb'),
(9, 'CyberCrime', 'sonarga', 'nayem', 1, 'May', 2017, 1, 'rahikkare kise pon marse'),
(10, 'CyberCrime', 'gulshan', 'Anonymous', 2, 'May', 2017, 3, 'Someone has stolen my phone');

-- --------------------------------------------------------

--
-- Table structure for table `district_info`
--

CREATE TABLE IF NOT EXISTS `district_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE ucs2_unicode_ci NOT NULL,
  `division` varchar(20) COLLATE ucs2_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=ucs2 COLLATE=ucs2_unicode_ci AUTO_INCREMENT=31 ;

--
-- Dumping data for table `district_info`
--

INSERT INTO `district_info` (`id`, `name`, `division`) VALUES
(1, 'lakshmipur', 'chittagong'),
(2, 'noakhali', 'chittagong'),
(3, 'chittagong', 'chittagong'),
(4, 'feni', 'chittagong'),
(5, 'chadpur', 'chittagong'),
(6, 'rangamati', 'chittagong'),
(7, 'comilla', 'chittagong'),
(8, 'khagrachari', 'chittagong'),
(9, 'bandarban', 'chittagong'),
(10, 'coxbazar', 'chittagong'),
(11, 'dhaka', 'dhaka'),
(12, 'gazipur', 'dhaka'),
(13, 'Kishoreganj', 'dhaka'),
(14, 'manikganj', 'dhaka'),
(15, 'munsiganj', 'dhaka'),
(16, 'narayanganj', 'dhaka'),
(17, 'narshingdi', 'dhaka'),
(18, 'tangail', 'dhaka'),
(19, 'faridpur', 'dhaka'),
(20, 'gopalganj', 'dhaka'),
(21, 'rajbari', 'dhaka'),
(22, 'madaripur', 'dhaka'),
(23, 'shariatpur', 'dhaka'),
(24, 'brahmanbaria', 'chittagong'),
(25, 'barisal', 'barisal'),
(26, 'khulna', 'khulna'),
(27, 'mymensingh', 'mymensingh'),
(28, 'rajshahi', 'rajshahi'),
(29, 'rangpur', 'rangpur'),
(30, 'sylhet', 'sylhet');

-- --------------------------------------------------------

--
-- Table structure for table `login_info`
--

CREATE TABLE IF NOT EXISTS `login_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `login_info`
--

INSERT INTO `login_info` (`id`, `username`, `password`, `type`) VALUES
(1, 'piash', 'abcde', 3),
(13, 'yasir1', '12', 2),
(14, 'meraj', 'abcd12', 5),
(15, 'sabbir', 'mnopq', 3),
(16, 'rahikka', 'ab', 3),
(17, 'sumon', '12345', 0),
(18, 'nayem', '12345', 1),
(19, 'aaaaaaaaa', '12', 0),
(20, 'imran12', '123', 3),
(21, 'test1', '123456', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `age` int(10) NOT NULL,
  `institute` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `first_name`, `last_name`, `username`, `email`, `age`, `institute`, `mobile`, `gender`) VALUES
(3, 'piash', 'ashik', 'piash', 'piash@gmail.com', 22, 'aiub', '01742349541', 'male'),
(13, 'yasir', 'Arafat', 'yasir1', 'asfafs', 23, 'hub', '0011', 'male'),
(14, 'asasg', 'sgsgsg', 'meraj', 'sgsfsg', 22, 'Hub', '0123', 'male'),
(15, 'saghasg', 'hjasjahs', 'sabbir', 'ssags', 22, 'ashhs', '0251', 'male'),
(16, 'abcde', 'asgsgsgg', 'rahikka', 'rahikka@gmail.com', 22, 'HUB', '01742349541', 'male'),
(17, 'asjgsgsg', 'sgassas', 'piash12', 'piash3', 23, 'aiub', '01742349541', 'male'),
(18, 'aaaaaaaaaa', 'aaaaaaaa', 'aaaaaaaaa', 'aaaaaaaaaa', 22, 'asassa', '0222', 'male'),
(19, 'nayem', 'alImran', 'imran12', 'dgsdsajg', 22, 'aiub', '01742349541', 'male'),
(20, 'abcde', 'abcde', 'test1', 'test@gmail.com', 22, '', '01742349541', 'male');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
