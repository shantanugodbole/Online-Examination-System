-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2020 at 08:27 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(2, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5ea709799b0b2', '5ea709799b310'),
('5ea8f987e2b9c', '5ea8f987e3cd3'),
('5eaa58fce89c8', '5eaa58fcecddb'),
('5eaa5d94012da', '5eaa5d94022aa');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `rightans` int(11) DEFAULT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `rightans`, `wrong`, `date`) VALUES
('test@somaiya.edu', '5ea8f966ebb07', 0, 1, 0, 1, '2020-04-29 05:16:36'),
('test@somaiya.edu', '5eaa58edf3686', 1, 1, 1, 0, '2020-04-30 04:50:28'),
('test@somaiya.edu', '5eaa5d7a66350', 0, 1, 1, 0, '2020-04-30 05:21:18');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5ea7091f0ba63', 'New Rules', '5ea7091f0bd27'),
('5ea7091f0ba63', 'Physical', '5ea7091f0bd2e'),
('5ea709799b0b2', '1', '5ea709799b310'),
('5ea709799b0b2', '2', '5ea709799b31a'),
('5ea709799b0b2', '3', '5ea709799b31b'),
('5ea709799b0b2', '4', '5ea709799b31c'),
('5ea8f987e2b9c', '1', '5ea8f987e3cca'),
('5ea8f987e2b9c', '2', '5ea8f987e3cd3'),
('5ea8f987e2b9c', '3', '5ea8f987e3cd5'),
('5ea8f987e2b9c', '4', '5ea8f987e3cd8'),
('5eaa58fce89c8', 'a', '5eaa58fcecdd2'),
('5eaa58fce89c8', 'b', '5eaa58fcecdda'),
('5eaa58fce89c8', 'c', '5eaa58fcecddb'),
('5eaa58fce89c8', 'd', '5eaa58fcecddd'),
('5eaa5d94012da', 'option a', '5eaa5d94022a0'),
('5eaa5d94012da', 'option b', '5eaa5d94022aa'),
('5eaa5d94012da', 'option c', '5eaa5d94022ad'),
('5eaa5d94012da', 'option d', '5eaa5d94022b0');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5ea8f966ebb07', '5ea8f987e2b9c', 'abcdefghijklmnopqrstuvwxyz', 4, 1),
('5eaa58edf3686', '5eaa58fce89c8', 'test', 4, 1),
('5eaa5d7a66350', '5eaa5d94012da', 'test question', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `questions` int(11) DEFAULT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `questions`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('5ea8f966ebb07', 'Timertest', 3, 0, 1, 10, '', '', '2020-04-29 03:49:58'),
('5eaa58edf3686', 'Test', 1, 1, 1, 5, '', '', '2020-04-30 04:49:49'),
('5eaa5d7a66350', 'Quiz1', 2, 0, 1, 1, '', '', '2020-04-30 05:09:14');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('test@somaiya.edu', -29, '2020-04-30 05:21:18');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `branch` varchar(15) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `branch`, `email`, `mob`, `password`) VALUES
('Test', 'M', 'Mechanical', 'test@somaiya.edu', 1234567891, '179ad45c6ce2cb97cf1029e212046e81');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
