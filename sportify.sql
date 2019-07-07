-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2019 at 11:34 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sportify`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `scid` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `area` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_bin NOT NULL,
  `MonthSub` int(11) NOT NULL,
  `hrcost` int(11) NOT NULL,
  `sport` varchar(50) COLLATE utf8_bin NOT NULL,
  `notes` text COLLATE utf8_bin NOT NULL,
  `longitude` float NOT NULL,
  `latitude` float NOT NULL,
  `phone` varchar(15) COLLATE utf8_bin NOT NULL,
  `opentime` time NOT NULL,
  `closetime` time NOT NULL,
  `email` text COLLATE utf8_bin NOT NULL,
  `city` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `scid`, `adminid`, `name`, `area`, `type`, `MonthSub`, `hrcost`, `sport`, `notes`, `longitude`, `latitude`, `phone`, `opentime`, `closetime`, `email`, `city`) VALUES
(43, 6, 1, 'Tripoli Club GYM', 200, '1', 40, 0, '', '', 35.5018, 33.8938, '', '00:00:00', '00:00:00', '', 'Tripoli'),
(44, 6, 1, 'Tripoli Club Football', 500, '2', 0, 20, 'Football', 'Sunday reservations are half the price, enjoy our natural grass and safe walls!', 35.88, 33.8554, '961712368', '08:00:00', '21:00:00', 'tripoliclub@gmail.com', 'Tripoli'),
(45, 9, 2, 'The Professionals Tripoli GYM', 100, '1', 40, 0, '', 'Enjoy the best modern, safe and reliable equipment with the best experienced coaches', 35.5973, 33.8101, '961374923', '10:00:00', '00:00:00', 'theprofessionals@gmail.com', 'Tripoli'),
(46, 9, 2, 'The Professionals Batroun GYM', 100, '1', 50, 0, '', '', 36.211, 34.0047, '', '00:00:00', '00:00:00', '', 'Batroun'),
(47, 14, 4, 'Brothers Academy North Pitch', 400, '2', 0, 50, 'Football', '', 35.8547, 34.4261, '961263637', '08:00:00', '23:00:00', '', 'Beirut'),
(48, 8, 3, 'Pro Fitness GYM', 100, '1', 30, 0, '', '', 36.0798, 34.544, '', '00:00:00', '00:00:00', '', 'Nabatieh'),
(49, 14, 4, 'Brothers Academy South Stadium', 600, '2', 0, 70, 'Football', 'Brothers academy stadiums is the only ones which has natural grass to play on and available for reservations, with an area of international FIFA standards!', 35.2033, 33.2721, '961872374', '08:00:00', '23:00:00', 'abi@jasfd.com', ''),
(50, 15, 5, 'Proz Academy Pitch #1', 200, '2', 0, 20, 'Football', '', 35.9019, 33.8463, '917236811', '08:00:00', '20:00:00', 'proz@gmail.com', ''),
(51, 10, 6, 'Tripoli Shmaysim GYM', 200, '1', 50, 0, '', '', 35.8308, 34.4381, '', '08:00:00', '00:00:00', '', ''),
(52, 10, 6, 'Tripoli Shmaysim Mini-Football', 100, '2', 0, 35, 'Football, Basket Ball', '', 35.8308, 34.4381, '', '10:00:00', '20:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) COLLATE utf8_bin NOT NULL,
  `lname` varchar(50) COLLATE utf8_bin NOT NULL,
  `phone` int(11) NOT NULL,
  `birthdate` date NOT NULL,
  `pw` varchar(50) COLLATE utf8_bin NOT NULL,
  `un` varchar(50) COLLATE utf8_bin NOT NULL,
  `email` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fname`, `lname`, `phone`, `birthdate`, `pw`, `un`, `email`) VALUES
(1, 'Mohammad', 'Said', 961263637, '1990-11-08', '0000', 'moe', 'moe@gmail.com'),
(2, 'Jack', 'Manley', 76067655, '1999-01-01', '0000', 'jack', 'jack@gmail.com'),
(3, 'John ', 'Smith', 76967655, '1995-06-23', '0000', 'john', 'john@gmail.com'),
(4, 'Khaled', 'Ahmed', 961263637, '1990-11-08', '0000', 'khaled', 'khaled@gmail.com'),
(5, 'Yasser', 'Ahmed', 961271728, '1992-06-02', '0000', 'yas', 'yasser@gmail.com'),
(6, 'Ghassan', 'Rifai', 961276323, '1980-01-01', '0000', 'ghassan', 'ghassan@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `adminsubmissions`
--

CREATE TABLE `adminsubmissions` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) COLLATE utf8_bin NOT NULL,
  `lname` varchar(50) COLLATE utf8_bin NOT NULL,
  `phone` int(11) NOT NULL,
  `birthdate` date NOT NULL,
  `pw` varchar(50) COLLATE utf8_bin NOT NULL,
  `un` varchar(50) COLLATE utf8_bin NOT NULL,
  `email` text COLLATE utf8_bin NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL,
  `clubname` varchar(50) COLLATE utf8_bin NOT NULL,
  `actname` varchar(50) COLLATE utf8_bin NOT NULL,
  `checked` int(11) NOT NULL DEFAULT '1',
  `date` date NOT NULL,
  `type` varchar(10) COLLATE utf8_bin NOT NULL,
  `city` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `adminsubmissions`
--

INSERT INTO `adminsubmissions` (`id`, `fname`, `lname`, `phone`, `birthdate`, `pw`, `un`, `email`, `longitude`, `latitude`, `clubname`, `actname`, `checked`, `date`, `type`, `city`) VALUES
(2, 'Hasan', 'Nabulsi', 2147483647, '1993-07-07', '0000', 'hasan', 'nab@gmail.com', 35.82917042647978, 34.4405904021193, 'Nabulsi Academy', 'Nabulsi Academy First Pitch', 1, '2019-06-06', '2', '');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) COLLATE utf8_bin NOT NULL,
  `lname` varchar(50) COLLATE utf8_bin NOT NULL,
  `phone` int(11) NOT NULL,
  `birthdate` date NOT NULL,
  `un` varchar(50) COLLATE utf8_bin NOT NULL,
  `pw` varchar(50) COLLATE utf8_bin NOT NULL,
  `fitlevel` varchar(50) COLLATE utf8_bin NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `fname`, `lname`, `phone`, `birthdate`, `un`, `pw`, `fitlevel`, `longitude`, `latitude`) VALUES
(1, 'Hamza', 'Al-Jundi', 0, '0000-00-00', 'hamza', '0000', '5', 36.0798, 34.544),
(2, 'Ghaleb', 'El-Sayed', 1982344, '1991-06-04', 'ghaleb', '0000', '3', 36.211, 34.0047),
(3, 'Mohammad', 'Al-Ghawi', 22222222, '2019-06-05', 'ghawi', '0000', '5', 35.5018, 33.8938),
(4, 'Mohammad', 'Ahmad', 0, '0000-00-00', 'moe', '0000', '', 35.4836, 33.3772),
(5, 'Maria', 'Ahmad', 22222222, '1990-01-02', 'maria', '0000', '5', 35.2033, 33.2721),
(6, 'Sarah', 'Ahmad', 99999999, '2019-06-03', 'sarah', '0000', '5', 35.8547456, 34.4260608),
(7, 'Aghiad', 'Ahmed', 961723782, '1992-06-02', 'aghiad', '0000', '3', 0, 0),
(8, 'Lara', 'Smith', 961276323, '1991-09-02', 'lara', '0000', '2', 0, 0),
(11, 'Hashem', 'Bulbol', 961738237, '2019-06-02', 'hashem', '0000', '4', 35.5017767, 33.893791300000004),
(12, 'Tammam', 'Abed', 961872344, '1990-06-18', 'tammam', '0000', '3', 0, 0),
(13, 'Said', 'Jrad', 961276323, '1996-06-02', 'said', '0000', '2', 0, 0),
(14, 'Abdulrahman', 'Saad', 962172367, '1994-02-04', 'abd', '0000', '4', 0, 0),
(15, 'Abdulraheem', 'Ahmad', 961287383, '1988-10-15', 'abdul', '0000', '3', 0, 0),
(16, 'John', 'Smith', 96138642, '1995-03-04', 'john', '0000', '4', 0, 0),
(17, 'Jaime', 'Lannister', 961378342, '1993-04-16', 'jaime', '0000', '3', 0, 0),
(18, 'Abraham', 'Abisaab', 961783423, '1992-06-02', 'abe', '0000', '3', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `deleterequests`
--

CREATE TABLE `deleterequests` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `date` date NOT NULL,
  `reason` text COLLATE utf8_bin NOT NULL,
  `actid` int(11) NOT NULL,
  `checked` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `id` int(11) NOT NULL,
  `actid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `reason` text COLLATE utf8_bin NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`id`, `actid`, `cid`, `reason`, `date`) VALUES
(3, 49, 4, 'Violation', '2019-06-06'),
(4, 48, 4, 'Violation', '2019-06-06'),
(5, 44, 11, 'Violation ', '2019-06-09');

-- --------------------------------------------------------

--
-- Table structure for table `newactssubmissions`
--

CREATE TABLE `newactssubmissions` (
  `id` int(11) NOT NULL,
  `actname` varchar(50) COLLATE utf8_bin NOT NULL,
  `date` date NOT NULL,
  `type` int(11) NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL,
  `adminid` int(11) NOT NULL,
  `checked` int(11) NOT NULL DEFAULT '1',
  `scid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `picture`
--

CREATE TABLE `picture` (
  `id` int(11) NOT NULL,
  `actid` int(11) NOT NULL,
  `date` date NOT NULL,
  `img` text COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `picture`
--

INSERT INTO `picture` (`id`, `actid`, `date`, `img`, `description`) VALUES
(1, 44, '2019-06-03', 'Nilphamari-7-january-4-1010x600.gif', ' Night view of the pitch'),
(2, 44, '0000-00-00', 'Soccerarena_Tannenheim_Fussballspieler3-960x561.jpg', ' We provide uniforms for the two teams');

-- --------------------------------------------------------

--
-- Table structure for table `reserve`
--

CREATE TABLE `reserve` (
  `id` int(11) NOT NULL,
  `slotid` int(11) NOT NULL,
  `actid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `date` date NOT NULL,
  `actionDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `reserve`
--

INSERT INTO `reserve` (`id`, `slotid`, `actid`, `cid`, `date`, `actionDate`) VALUES
(1, 4, 49, 1, '2019-06-08', '2019-06-06'),
(2, 3, 49, 2, '2019-06-06', '2019-06-06'),
(3, 2, 49, 2, '2019-05-15', '2019-05-15'),
(4, 1, 47, 3, '2019-06-09', '2019-06-07'),
(6, 5, 44, 11, '2019-06-12', '2019-06-08'),
(7, 2, 44, 7, '2019-06-11', '2019-06-08'),
(8, 5, 44, 6, '2019-06-11', '2019-06-08'),
(9, 1, 44, 11, '2019-06-11', '2019-06-08'),
(10, 6, 44, 13, '2019-06-11', '2019-06-08'),
(11, 3, 44, 13, '2019-04-09', '2019-06-08'),
(12, 7, 44, 15, '2018-12-12', '2019-06-08'),
(13, 5, 44, 16, '2018-12-12', '2019-06-10'),
(14, 4, 44, 16, '2019-04-09', '2019-06-12'),
(15, 6, 44, 1, '2018-12-12', '2019-06-08'),
(21, 7, 44, 8, '2019-06-12', '2019-06-08'),
(22, 4, 44, 15, '2019-06-14', '2019-06-08'),
(23, 2, 44, 14, '2019-06-16', '2019-06-05'),
(24, 8, 44, 17, '2019-06-15', '2019-06-08'),
(25, 8, 44, 12, '2019-06-08', '2019-06-08'),
(26, 12, 44, 7, '2019-06-08', '2019-06-08'),
(27, 10, 44, 14, '2019-06-09', '2019-06-12'),
(28, 13, 44, 2, '2019-06-09', '2019-06-08'),
(29, 12, 44, 11, '2019-06-09', '2019-06-08'),
(30, 6, 44, 6, '2019-06-10', '2019-06-10');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `text` text COLLATE utf8_bin NOT NULL,
  `date` date NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `text`, `date`, `rate`) VALUES
(1, 'Good but somewhat expensive', '2019-06-03', 8),
(2, 'Great to play', '2019-06-06', 10),
(3, 'Bad grass and bad staff', '2019-06-04', 6),
(4, 'Good staff', '2019-06-07', 7),
(5, 'Good staff', '2019-06-07', 7),
(6, 'Good staff', '2019-06-07', 9),
(7, 'Good but needs roof', '2019-03-05', 7),
(8, 'Bad place because of the noise of neighbors', '2019-06-02', 5),
(9, 'Great staff, great grass, everything is just great', '2019-06-11', 10),
(10, 'Bad equipment and the coaches are not helpful.', '2018-11-13', 5),
(11, 'Stinky smell in all the place!', '2018-01-15', 4),
(12, 'Good atmosphere ', '2018-10-08', 8),
(13, 'Best GYM ever', '2019-02-22', 10),
(14, 'Very Good', '2019-06-16', 9),
(15, 'Everything is bad', '2019-04-17', 3),
(16, 'No care of customers', '2019-02-08', 6),
(17, 'Great safety measures', '2019-06-27', 8),
(18, '', '2019-06-07', 8),
(19, 'Good', '2019-06-08', 8),
(20, 'Goood', '2019-06-10', 8),
(21, 'jj', '2019-06-10', 2);

-- --------------------------------------------------------

--
-- Table structure for table `revsub`
--

CREATE TABLE `revsub` (
  `id` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `actid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `revsub`
--

INSERT INTO `revsub` (`id`, `rid`, `cid`, `actid`) VALUES
(1, 1, 2, 47),
(2, 2, 1, 47),
(3, 3, 3, 44),
(6, 6, 3, 47),
(7, 7, 6, 49),
(8, 11, 7, 48),
(9, 8, 8, 45),
(10, 13, 5, 43),
(11, 9, 3, 46),
(12, 10, 4, 51),
(13, 4, 2, 50),
(14, 14, 5, 50),
(15, 15, 7, 51),
(16, 16, 1, 52),
(17, 18, 6, 52),
(18, 19, 11, 44),
(19, 20, 6, 44),
(20, 21, 6, 45);

-- --------------------------------------------------------

--
-- Table structure for table `sc`
--

CREATE TABLE `sc` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `sc`
--

INSERT INTO `sc` (`id`, `name`) VALUES
(6, 'Tripoli Club'),
(7, 'Master'),
(8, 'Pro Fitness'),
(9, 'The Professionals'),
(10, 'Shmaysim'),
(11, 'El-Classico'),
(12, 'FIFA '),
(13, 'Abi-Samraa Club'),
(14, 'Brothers Academy'),
(15, 'Proz Academy');

-- --------------------------------------------------------

--
-- Table structure for table `slot`
--

CREATE TABLE `slot` (
  `id` int(11) NOT NULL,
  `stime` time NOT NULL,
  `etime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `slot`
--

INSERT INTO `slot` (`id`, `stime`, `etime`) VALUES
(1, '08:00:00', '09:00:00'),
(2, '09:00:00', '10:00:00'),
(3, '10:00:00', '11:00:00'),
(4, '11:00:00', '12:00:00'),
(5, '12:00:00', '13:00:00'),
(6, '13:00:00', '14:00:00'),
(7, '14:00:00', '15:00:00'),
(8, '15:00:00', '16:00:00'),
(9, '16:00:00', '17:00:00'),
(10, '17:00:00', '18:00:00'),
(11, '18:00:00', '19:00:00'),
(12, '19:00:00', '20:00:00'),
(13, '20:00:00', '21:00:00'),
(14, '21:00:00', '22:00:00'),
(15, '22:00:00', '23:00:00'),
(16, '23:00:00', '00:00:00'),
(17, '00:00:00', '01:00:00'),
(18, '01:00:00', '02:00:00'),
(19, '02:00:00', '03:00:00'),
(20, '03:00:00', '04:00:00'),
(21, '04:00:00', '05:00:00'),
(22, '05:00:00', '06:00:00'),
(23, '06:00:00', '07:00:00'),
(24, '07:00:00', '08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sportifyadmin`
--

CREATE TABLE `sportifyadmin` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) COLLATE utf8_bin NOT NULL,
  `lname` varchar(50) COLLATE utf8_bin NOT NULL,
  `pw` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `sportifyadmin`
--

INSERT INTO `sportifyadmin` (`id`, `fname`, `lname`, `pw`) VALUES
(1, 'Hashem', 'Bulbol', '0000'),
(2, 'Mahmoud', 'Rifai', '0000'),
(3, 'Mahmoud', 'Rifai', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `sub`
--

CREATE TABLE `sub` (
  `id` int(11) NOT NULL,
  `actid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `sub`
--

INSERT INTO `sub` (`id`, `actid`, `cid`, `date`) VALUES
(2, 45, 11, '2019-06-08'),
(3, 43, 18, '2019-06-09'),
(4, 43, 13, '2019-05-17'),
(5, 43, 7, '2019-06-06'),
(6, 45, 6, '2019-06-10');

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

CREATE TABLE `trainer` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) COLLATE utf8_bin NOT NULL,
  `lname` varchar(50) COLLATE utf8_bin NOT NULL,
  `phone` varchar(50) COLLATE utf8_bin NOT NULL,
  `linkedin` text COLLATE utf8_bin NOT NULL,
  `ig` text COLLATE utf8_bin NOT NULL,
  `fb` text COLLATE utf8_bin NOT NULL,
  `votes` int(11) NOT NULL,
  `birthdate` date NOT NULL,
  `brief` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `trainer`
--

INSERT INTO `trainer` (`id`, `fname`, `lname`, `phone`, `linkedin`, `ig`, `fb`, `votes`, `birthdate`, `brief`) VALUES
(1, 'Adnan', 'Rifai', '917236811', 'https://www.linkedin.com/in/hashem-bulbol-231543149/', 'https://www.instagram.com/hashembulbol', 'https://www.facebook.com/hashembulbol', 5, '1990-06-18', 'I am a certified fitness trainer with more than 10 years of experience. Check my social media platforms and let\'s talk!'),
(2, 'Ahmed', 'Al-Jundi', '961276323', 'https://www.linkedin.com/in/hashem-bulbol-231543149/', 'https://www.instagram.com/hashembulbol', 'https://www.facebook.com/hashembulbol', 20, '1988-01-01', 'I worked for 3 years with the national team fitness supervision and I have a humbling reputation on the scale of Lebanon. Check my links for more!');

-- --------------------------------------------------------

--
-- Table structure for table `trainersubmissions`
--

CREATE TABLE `trainersubmissions` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) COLLATE utf8_bin NOT NULL,
  `lname` varchar(50) COLLATE utf8_bin NOT NULL,
  `phone` int(15) NOT NULL,
  `fb` text COLLATE utf8_bin NOT NULL,
  `linkedin` text COLLATE utf8_bin NOT NULL,
  `ig` text COLLATE utf8_bin NOT NULL,
  `dateSubmission` date NOT NULL,
  `specialties` text COLLATE utf8_bin NOT NULL,
  `birthdate` date NOT NULL,
  `checked` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `trainersubmissions`
--

INSERT INTO `trainersubmissions` (`id`, `fname`, `lname`, `phone`, `fb`, `linkedin`, `ig`, `dateSubmission`, `specialties`, `birthdate`, `checked`) VALUES
(11, 'Khaled', 'Rifai', 961263637, 'https://www.facebook.com/khaledRifai', 'https://www.linkedin.com/in/Khaled-Rifai-231543149/', 'https://www.linkedin.com/in/Khaled-Rifai-231543149/', '2019-06-03', 'I have a 10 years experience in personal training and fitness development, got my degree in physical therapy from Harvard university. Check my Social Media Links for more!', '1990-01-02', 1),
(12, 'This', 'IsNotRealSubmission', 121241244, 'https://www.facebook.com', 'https://www.linkedin.com/231543149/', 'https://www.instagram.', '2019-06-02', 'blablbalblablbalblllalblalbalbla', '2019-06-06', 1),
(13, 'Ahmad', 'Al-Ahmad', 76967655, 'https://www.facebook.com/Ahmadahmad', '', 'https://www.instagram.com/ahmadahmad', '2019-06-03', 'I am specialized in Physio Therapy with 3 years of experience and multiple certifications.', '1995-06-23', 1),
(14, 'Abraham', 'abisaab', 2342342, 'fb.com', 'www.linkedin.com', 'instagram.com', '2019-06-04', 'I was a professional player with the national team of gymnastics ', '1999-01-22', 1),
(15, 'Ammar', 'Mohammad', 961738237, 'https://www.facebook.com/hashembulbol', 'https://www.linkedin.com/in/hashem-bulbol-231543149/', 'https://www.instagram.com/hashembulbol/', '2019-06-07', 'I have studied sport in Harvard and worked with clients for over 10 years. ', '1990-05-02', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scid` (`scid`),
  ADD KEY `adminid` (`adminid`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminsubmissions`
--
ALTER TABLE `adminsubmissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deleterequests`
--
ALTER TABLE `deleterequests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminid` (`adminid`),
  ADD KEY `actid` (`actid`);

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `actid` (`actid`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `newactssubmissions`
--
ALTER TABLE `newactssubmissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminid` (`adminid`);

--
-- Indexes for table `picture`
--
ALTER TABLE `picture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `actid` (`actid`);

--
-- Indexes for table `reserve`
--
ALTER TABLE `reserve`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slotid` (`slotid`),
  ADD KEY `actid` (`actid`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revsub`
--
ALTER TABLE `revsub`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rid` (`rid`),
  ADD KEY `cid` (`cid`),
  ADD KEY `actid` (`actid`);

--
-- Indexes for table `sc`
--
ALTER TABLE `sc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slot`
--
ALTER TABLE `slot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sportifyadmin`
--
ALTER TABLE `sportifyadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub`
--
ALTER TABLE `sub`
  ADD PRIMARY KEY (`id`),
  ADD KEY `actid` (`actid`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainersubmissions`
--
ALTER TABLE `trainersubmissions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `adminsubmissions`
--
ALTER TABLE `adminsubmissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `deleterequests`
--
ALTER TABLE `deleterequests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `list`
--
ALTER TABLE `list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `newactssubmissions`
--
ALTER TABLE `newactssubmissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `picture`
--
ALTER TABLE `picture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reserve`
--
ALTER TABLE `reserve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `revsub`
--
ALTER TABLE `revsub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sc`
--
ALTER TABLE `sc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `slot`
--
ALTER TABLE `slot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sportifyadmin`
--
ALTER TABLE `sportifyadmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub`
--
ALTER TABLE `sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `trainer`
--
ALTER TABLE `trainer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `trainersubmissions`
--
ALTER TABLE `trainersubmissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity`
--
ALTER TABLE `activity`
  ADD CONSTRAINT `activity_ibfk_1` FOREIGN KEY (`scid`) REFERENCES `sc` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `activity_ibfk_2` FOREIGN KEY (`adminid`) REFERENCES `admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `list`
--
ALTER TABLE `list`
  ADD CONSTRAINT `list_ibfk_1` FOREIGN KEY (`actid`) REFERENCES `activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `list_ibfk_2` FOREIGN KEY (`cid`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `picture`
--
ALTER TABLE `picture`
  ADD CONSTRAINT `picture_ibfk_1` FOREIGN KEY (`actid`) REFERENCES `activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reserve`
--
ALTER TABLE `reserve`
  ADD CONSTRAINT `reserve_ibfk_1` FOREIGN KEY (`actid`) REFERENCES `activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reserve_ibfk_2` FOREIGN KEY (`cid`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reserve_ibfk_3` FOREIGN KEY (`slotid`) REFERENCES `slot` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `revsub`
--
ALTER TABLE `revsub`
  ADD CONSTRAINT `revsub_ibfk_1` FOREIGN KEY (`actid`) REFERENCES `activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `revsub_ibfk_2` FOREIGN KEY (`cid`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `revsub_ibfk_3` FOREIGN KEY (`rid`) REFERENCES `review` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub`
--
ALTER TABLE `sub`
  ADD CONSTRAINT `sub_ibfk_1` FOREIGN KEY (`actid`) REFERENCES `activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sub_ibfk_2` FOREIGN KEY (`cid`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
