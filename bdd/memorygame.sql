-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 27, 2019 at 09:42 AM
-- Server version: 5.7.21
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `memorygame`
--

-- --------------------------------------------------------

--
-- Table structure for table `kanadata`
--

DROP TABLE IF EXISTS `kanadata`;
CREATE TABLE IF NOT EXISTS `kanadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `source` varchar(255) NOT NULL,
  `pronounciation` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kanadata`
--

INSERT INTO `kanadata` (`id`, `type`, `source`, `pronounciation`) VALUES
(1, 'hiragana', '', 'A'),
(2, 'hiragana', '', 'I'),
(3, 'hiragana', '', 'U'),
(4, 'hiragana', '', 'E'),
(5, 'hiragana', '', 'O'),
(6, 'hiragana', '', 'KA'),
(7, 'hiragana', '', 'KI'),
(8, 'hiragana', '', 'KU'),
(9, 'hiragana', '', 'KE'),
(10, 'hiragana', '', 'KO');

-- --------------------------------------------------------

--
-- Table structure for table `kanagroup`
--

DROP TABLE IF EXISTS `kanagroup`;
CREATE TABLE IF NOT EXISTS `kanagroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kana1` int(11) NOT NULL,
  `kana2` int(11) NOT NULL,
  `kana3` int(11) NOT NULL,
  `kana4` int(11) NOT NULL,
  `kana5` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kanagroup`
--

INSERT INTO `kanagroup` (`id`, `kana1`, `kana2`, `kana3`, `kana4`, `kana5`) VALUES
(1, 1, 2, 3, 4, 5),
(2, 6, 7, 8, 9, 10);

-- --------------------------------------------------------

--
-- Table structure for table `leveldata`
--

DROP TABLE IF EXISTS `leveldata`;
CREATE TABLE IF NOT EXISTS `leveldata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `levelNumber` int(11) NOT NULL,
  `symbolNumber` int(11) NOT NULL,
  `cardNumber` int(11) NOT NULL,
  `kanaType` varchar(20) NOT NULL,
  `specialRule` varchar(50) NOT NULL,
  `kanaGroup1` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leveldata`
--

INSERT INTO `leveldata` (`id`, `levelNumber`, `symbolNumber`, `cardNumber`, `kanaType`, `specialRule`, `kanaGroup1`) VALUES
(1, 1, 2, 8, 'hiragana', 'none', '1'),
(2, 2, 3, 6, 'hiragana', 'none', '1'),
(3, 3, 4, 8, 'hiragana', 'none', '1'),
(4, 4, 5, 10, 'hiragana', 'none', '1');

-- --------------------------------------------------------

--
-- Table structure for table `userinformation`
--

DROP TABLE IF EXISTS `userinformation`;
CREATE TABLE IF NOT EXISTS `userinformation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `lastLevel` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
