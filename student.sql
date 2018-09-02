-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2018 at 10:02 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `coursedetails`
--

CREATE TABLE `coursedetails` (
  `courseId` varchar(111) DEFAULT NULL,
  `courseName` varchar(111) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coursedetails`
--

INSERT INTO `coursedetails` (`courseId`, `courseName`) VALUES
('11', 'phy-1'),
('33', 'che-1'),
('22', 'phy-2'),
('44', 'che-2'),
('55', 'bio-1'),
('66', 'bio-2');

-- --------------------------------------------------------

--
-- Table structure for table `coursestudent`
--

CREATE TABLE `coursestudent` (
  `courseName` varchar(111) NOT NULL,
  `section` varchar(111) NOT NULL,
  `id` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coursestudent`
--

INSERT INTO `coursestudent` (`courseName`, `section`, `id`) VALUES
('phy-1', 'A', '1'),
('che-1', 'A', '4'),
('phy-2', 'B', '4'),
('che-2', 'B', '1'),
('bio-1', 'B', '4'),
('bio-2', 'A', '1');

-- --------------------------------------------------------

--
-- Table structure for table `courseteacher`
--

CREATE TABLE `courseteacher` (
  `courseName` varchar(111) NOT NULL,
  `section` varchar(111) NOT NULL,
  `teacherId` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logintable`
--

CREATE TABLE `logintable` (
  `id` varchar(111) NOT NULL,
  `password` varchar(111) NOT NULL,
  `type` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logintable`
--

INSERT INTO `logintable` (`id`, `password`, `type`) VALUES
('', '', ''),
('', '', ''),
('3', '33', '3'),
('1', '11', '1'),
('2', '222', '2'),
('4', '44', '1'),
('6', '66', '2'),
('4', '444', '2');

-- --------------------------------------------------------

--
-- Table structure for table `routin`
--

CREATE TABLE `routin` (
  `courseName` varchar(111) NOT NULL,
  `section` varchar(111) NOT NULL,
  `day` varchar(111) NOT NULL,
  `time` time(2) NOT NULL,
  `teacherid` varchar(111) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `routin`
--

INSERT INTO `routin` (`courseName`, `section`, `day`, `time`, `teacherid`) VALUES
('phy-1', 'A', 'sun', '16:00:00.00', '2'),
('che-1', 'A', 'mon', '16:00:00.00', '4'),
('che-2', 'B', 'wed', '16:00:00.00', '4'),
('phy-2', 'B', 'tue', '16:00:00.00', '2'),
('bio-1', 'B', 'thu', '15:00:00.00', '6'),
('bio-2', 'A', 'sat', '15:00:00.00', '6');

-- --------------------------------------------------------

--
-- Table structure for table `studentinfo`
--

CREATE TABLE `studentinfo` (
  `id` varchar(111) NOT NULL,
  `name` varchar(111) NOT NULL,
  `phone` varchar(111) NOT NULL,
  `email` varchar(111) NOT NULL,
  `address` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentinfo`
--

INSERT INTO `studentinfo` (`id`, `name`, `phone`, `email`, `address`) VALUES
('1', 'nafi', '01726640650', 'nafi@gmail.com', '34 dhanmonddi'),
('4', 'rafi', '01726660650', 'rafi@gmail.com', '4 dhanmonddi');

-- --------------------------------------------------------

--
-- Table structure for table `teacherinfo`
--

CREATE TABLE `teacherinfo` (
  `id` varchar(111) NOT NULL,
  `name` varchar(111) NOT NULL,
  `phone` varchar(111) NOT NULL,
  `email` varchar(111) NOT NULL,
  `address` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacherinfo`
--

INSERT INTO `teacherinfo` (`id`, `name`, `phone`, `email`, `address`) VALUES
('2', 'saad', '123', 's@gmail.com', '12,asaaa'),
('6', 'qais', '3344', 'q@gmail.com', '12,dsfjj'),
('4', 'dada', '4312312', 'd@ymail.com', '55,iuthth');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
