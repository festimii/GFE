-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 29, 2018 at 06:51 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dgshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblklienti`
--

DROP TABLE IF EXISTS `tblklienti`;
CREATE TABLE IF NOT EXISTS `tblklienti` (
  `k_ID` int(11) NOT NULL AUTO_INCREMENT,
  `emri` varchar(50) NOT NULL,
  `mbiemri` varchar(30) NOT NULL,
  `shteti` varchar(20) NOT NULL,
  `qyteti` varchar(20) NOT NULL,
  `adresa` varchar(100) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  PRIMARY KEY (`k_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblklienti`
--

INSERT INTO `tblklienti` (`k_ID`, `emri`, `mbiemri`, `shteti`, `qyteti`, `adresa`, `tel`, `email`) VALUES
(1, 'albert', 'halilaqi', 'kina', 'hon kong', 'wasselstrase', '0333222', 'a.ramusholli@live.com'),
(2, 'shperblim', 'veliu', 'australi', 'zaskok', 'ismetpeja123', '04245544', 'sh.veliu@asf.com'),
(3, 'dardan', 'sperrqi', 'pojate', 'lupq i poshtem', 'rruga sabri fejzullahu', '0456414', 'dardan.ha@asd.com'),
(4, 'rron', 'asfj', 'asgasdg', 'sagag', 'asgagfadg', 'adgadg', 'adgadg.com');

-- --------------------------------------------------------

--
-- Table structure for table `tblproduktet`
--

DROP TABLE IF EXISTS `tblproduktet`;
CREATE TABLE IF NOT EXISTS `tblproduktet` (
  `artID` int(11) NOT NULL AUTO_INCREMENT,
  `emri` varchar(30) NOT NULL,
  `modeli` varchar(20) DEFAULT NULL,
  `ngjyra` varchar(10) DEFAULT NULL,
  `madhsia` varchar(5) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `qmimi` int(11) DEFAULT NULL,
  PRIMARY KEY (`artID`)
) ENGINE=MyISAM AUTO_INCREMENT=236 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduktet`
--

INSERT INTO `tblproduktet` (`artID`, `emri`, `modeli`, `ngjyra`, `madhsia`, `foto`, `qmimi`) VALUES
(1, 'Vans', 'VKRTE4KL', 'BLACK', '8.UK', 'Img/1.png', 100),
(2, 'Gucci', 'GTREJK4LJ', 'green', '8.UK', 'Img/2.png', 50),
(4, 'Nike', 'OFP', 'Green', 'L', 'Img/4.png', 120),
(3, 'Adidas2', 'MOFF', 'PINKK', 'XLL', 'Img/3.png', 500);

-- --------------------------------------------------------

--
-- Table structure for table `tblshitja`
--

DROP TABLE IF EXISTS `tblshitja`;
CREATE TABLE IF NOT EXISTS `tblshitja` (
  `s_ID` int(11) NOT NULL AUTO_INCREMENT,
  `artID` int(11) NOT NULL,
  `sasia` int(11) NOT NULL,
  `qmimi` int(11) NOT NULL,
  `dataTime` timestamp NULL DEFAULT NULL,
  `k_ID` int(11) NOT NULL,
  PRIMARY KEY (`s_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblshitja`
--

INSERT INTO `tblshitja` (`s_ID`, `artID`, `sasia`, `qmimi`, `dataTime`, `k_ID`) VALUES
(1, 2, 3, 40, NULL, 2),
(2, 1, 10, 2000, NULL, 1),
(3, 3, 4, 10000, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tblshporta`
--

DROP TABLE IF EXISTS `tblshporta`;
CREATE TABLE IF NOT EXISTS `tblshporta` (
  `sasia` int(11) NOT NULL,
  `qmimi` decimal(10,2) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user` int(11) NOT NULL DEFAULT '1',
  `idshporta` int(11) NOT NULL AUTO_INCREMENT,
  `artID` int(11) NOT NULL,
  `auporosit` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`idshporta`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
CREATE TABLE IF NOT EXISTS `tbluser` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `aktiv` tinyint(1) NOT NULL,
  `expiredate` date DEFAULT NULL,
  `expirepass` date DEFAULT NULL,
  `lastlogin` date DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`u_id`, `username`, `password`, `aktiv`, `expiredate`, `expirepass`, `lastlogin`) VALUES
(1, 'ismet', 'asd', 1, NULL, NULL, NULL),
(2, 'asfasg', 'sdgasg', 1, NULL, NULL, NULL),
(3, 'asdasd', '12', 1, NULL, NULL, NULL),
(4, 'asdasd', '12', 1, NULL, NULL, NULL),
(5, 'asdf', '12', 1, NULL, NULL, NULL),
(6, 'asd1', 'asd1', 1, NULL, NULL, NULL),
(7, 'dardan', 'dardan1', 1, NULL, NULL, NULL),
(8, 'asd', 'asd1', 1, NULL, NULL, NULL),
(9, 'albert', 'albert1', 1, NULL, NULL, NULL),
(10, 'dardan', 'hamiti', 1, NULL, NULL, NULL),
(11, 'dardan', 'hamiti', 1, NULL, NULL, NULL),
(12, 'huweifhysduildfhuisd', 'dfkogjkdfj', 1, NULL, NULL, NULL),
(13, 'huweifhysduildfhuisd', 'dfkogjkdfj', 1, NULL, NULL, NULL),
(27, '', '', 1, NULL, NULL, NULL),
(28, '', '', 1, NULL, NULL, NULL),
(29, '', '', 1, NULL, NULL, NULL),
(30, '', '', 1, NULL, NULL, NULL),
(31, '', '', 1, NULL, NULL, NULL),
(32, '', '', 1, NULL, NULL, NULL),
(33, '', '', 1, NULL, NULL, NULL),
(34, '', '', 1, NULL, NULL, NULL),
(35, '', '', 1, NULL, NULL, NULL),
(36, '', '', 1, NULL, NULL, NULL),
(37, '', '', 1, NULL, NULL, NULL),
(38, '', '', 1, NULL, NULL, NULL),
(39, '', '', 1, NULL, NULL, NULL),
(40, '', '', 1, NULL, NULL, NULL),
(41, '', '', 1, NULL, NULL, NULL),
(42, '', '', 1, NULL, NULL, NULL),
(43, '', '', 1, NULL, NULL, NULL),
(44, '', '', 1, NULL, NULL, NULL),
(45, '', '', 1, NULL, NULL, NULL),
(46, '', '', 1, NULL, NULL, NULL),
(47, '', '', 1, NULL, NULL, NULL),
(48, '', '', 1, NULL, NULL, NULL),
(49, '', '', 1, NULL, NULL, NULL),
(50, 'albert', '123', 1, NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
