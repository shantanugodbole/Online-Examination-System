-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2020 at 08:35 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `serial_number` int(11) NOT NULL,
  `name` varchar(5000) NOT NULL,
  `roll_number` bigint(20) NOT NULL,
  `email_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(1, 'admin@admin.com', 'admin');

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
('5ed661a8f1e1e', '5ed661a929e74'),
('5ed661a998962', '5ed661a9cca29'),
('5ed661aa9ef20', '5ed661aaab0be'),
('5ed661ab07bf7', '5ed661ab10008'),
('5ed661ab4710a', '5ed661ab4f43c'),
('5ed6657c7dfa9', '5ed6657c9b262'),
('5ed6657cb690b', '5ed6657cb956b'),
('5ed6657ce27f2', '5ed6657cead83'),
('5ed6657d09f09', '5ed6657d0cbf7'),
('5ed6705d18a8a', '5ed6705d700eb'),
('5ed6705d9d016', '5ed6705dabf82'),
('5ed6705de2fc9', '5ed6705dede96'),
('5ed6705e0795a', '5ed6705e0a599'),
('5ed6705e2892d', '5ed6705e2db15'),
('5ed6705e4449d', '5ed6705e47040'),
('5ed6969ecb33c', '5ed6969f362d3'),
('5ed6969f5188f', '5ed6969f54560'),
('5ed6969f6fded', '5ed6969f7acdd'),
('5ed6969fa7315', '5ed6969faf7f7'),
('5ed6969fbd57c', '5ed6969fc021e'),
('5ed6969fcdfea', '5ed6969fd0c55'),
('5ed697c66c2ef', '5ed697c678777'),
('5ed697c68be2c', '5ed697c69f181'),
('5ed697c6b567e', '5ed697c6b8407');

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
('anjali@gmail.com', '5ed66648e0b1a', 11, 5, 3, 2, '2020-06-02 17:37:26'),
('jdc@gmail.com', '5ed65fcd02cf4', -5, 5, 0, 5, '2020-06-02 17:40:38'),
('jdc@gmail.com', '5ed663ff15f35', 4, 4, 2, 2, '2020-06-02 17:41:13'),
('jdc@gmail.com', '5ed696c5255a3', 3, 3, 3, 0, '2020-06-02 18:20:00'),
('shantanu@gmail.com', '5ed696c5255a3', 3, 3, 3, 0, '2020-06-02 18:33:43'),
('shantanu@gmail.com', '5ed663ff15f35', 6, 4, 3, 1, '2020-06-02 18:34:04');

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
('5ed661a8f1e1e', 'Recurrence is T(n) = T(n-2) + O(n) and time complexity is O(n^2)', '5ed661a929e69'),
('5ed661a8f1e1e', 'Recurrence is T(n) = T(n-1) + O(n) and time complexity is O(n^2)', '5ed661a929e74'),
('5ed661a8f1e1e', 'Recurrence is T(n) = 2T(n/2) + O(n) and time complexity is O(nLogn)', '5ed661a929e77'),
('5ed661a8f1e1e', 'Recurrence is T(n) = T(n/10) + T(9n/10) + O(n) and time complexity is O(nLogn)', '5ed661a929e79'),
('5ed661a998962', 'The minimum possible time complexity of a comparison based sorting algorithm is O(nLogn) for a random input array', '5ed661a9cca1b'),
('5ed661a998962', 'Any comparison based sorting algorithm can be made stable by using position as a criteria when two elements are compared', '5ed661a9cca24'),
('5ed661a998962', 'Counting Sort is not a comparison based sorting algortihm', '5ed661a9cca27'),
('5ed661a998962', 'Heap Sort is not a comparison based sorting algorithm.', '5ed661a9cca29'),
('5ed661aa9ef20', 'T(n) = 2T(n – 2) + 2', '5ed661aaab0ae'),
('5ed661aa9ef20', 'T(n) = 2T(n – 1) + n', '5ed661aaab0b8'),
('5ed661aa9ef20', 'T(n) = 2T(n/2) + 1', '5ed661aaab0bb'),
('5ed661aa9ef20', 'T(n) = 2T(n – 1) + 1', '5ed661aaab0be'),
('5ed661ab07bf7', '(15^10) * n + 12099', '5ed661ab0fff9'),
('5ed661ab07bf7', 'n^1.98', '5ed661ab10005'),
('5ed661ab07bf7', 'n^3 / (sqrt(n))', '5ed661ab10008'),
('5ed661ab07bf7', '(2^20) * n', '5ed661ab1000a'),
('5ed661ab4710a', ' Top down', '5ed661ab4f431'),
('5ed661ab4710a', ' Bottom up', '5ed661ab4f43c'),
('5ed661ab4710a', 'Big bang', '5ed661ab4f43f'),
('5ed661ab4710a', 'Sandwich', '5ed661ab4f441'),
('5ed6657c7dfa9', 'Parsing and translation', '5ed6657c9b258'),
('5ed6657c7dfa9', 'Optimization', '5ed6657c9b25f'),
('5ed6657c7dfa9', 'Evaluation', '5ed6657c9b261'),
('5ed6657c7dfa9', ' All of the mentioned', '5ed6657c9b262'),
('5ed6657cb690b', 'Query evaluation algebra', '5ed6657cb9564'),
('5ed6657cb690b', ' Query evaluation plan', '5ed6657cb956b'),
('5ed6657cb690b', 'Query evaluation primitive', '5ed6657cb956d'),
('5ed6657cb690b', 'Query evaluation engine', '5ed6657cb956e'),
('5ed6657ce27f2', 'File scan', '5ed6657cead83'),
('5ed6657ce27f2', 'File manipulation', '5ed6657cead88'),
('5ed6657ce27f2', 'File handling', '5ed6657cead89'),
('5ed6657ce27f2', 'File organization', '5ed6657cead8a'),
('5ed6657d09f09', ' Conjunctive selection using one index', '5ed6657d0cbf0'),
('5ed6657d09f09', ' Conjunctive selection using composite index', '5ed6657d0cbf5'),
('5ed6657d09f09', ' Conjunctive selection by intersection of identifiers', '5ed6657d0cbf6'),
('5ed6657d09f09', 'All of the mentioned', '5ed6657d0cbf7'),
('5ed6705d18a8a', 'More than one key can have the same value', '5ed6705d700d4'),
('5ed6705d18a8a', 'The values of the dictionary can be accessed as dict[key]', '5ed6705d700e5'),
('5ed6705d18a8a', 'Values of a dictionary must be unique', '5ed6705d700eb'),
('5ed6705d18a8a', 'Values of a dictionary can be a mixture of letters and numbers', '5ed6705d700f3'),
('5ed6705d9d016', '1', '5ed6705dabf74'),
('5ed6705d9d016', '2', '5ed6705dabf80'),
('5ed6705d9d016', '4', '5ed6705dabf82'),
('5ed6705d9d016', 'Error, the keys can’t be a mixture of letters and numbers', '5ed6705dabf83'),
('5ed6705de2fc9', ' {1,2,3,4}', '5ed6705dede8a'),
('5ed6705de2fc9', 'Counter({4, 1, 3, 2})', '5ed6705dede94'),
('5ed6705de2fc9', 'Counter({4: 3, 1: 2, 3: 2, 2: 1})', '5ed6705dede96'),
('5ed6705de2fc9', '{4: 3, 1: 2, 3: 2, 2: 1}', '5ed6705dede98'),
('5ed6705e0795a', ' 1,112,223,334', '5ed6705e0a599'),
('5ed6705e0795a', '111,222,333,4', '5ed6705e0a5a7'),
('5ed6705e0795a', '1112223334', '5ed6705e0a5aa'),
('5ed6705e0795a', 'Error', '5ed6705e0a5ae'),
('5ed6705e2892d', 're.create(str)', '5ed6705e2db01'),
('5ed6705e2892d', 're.regex(str)', '5ed6705e2db0d'),
('5ed6705e2892d', 're.compile(str)', '5ed6705e2db15'),
('5ed6705e2892d', ' re.assemble(str)', '5ed6705e2db19'),
('5ed6705e4449d', '!', '5ed6705e4702d'),
('5ed6705e4449d', '~', '5ed6705e47040'),
('5ed6705e4449d', '^', '5ed6705e47043'),
('5ed6705e4449d', '–', '5ed6705e47046'),
('5ed6969ecb33c', '&nnnn;', '5ed6969f362ce'),
('5ed6969ecb33c', '&#nnnn;', '5ed6969f362d3'),
('5ed6969ecb33c', '#nnnn;', '5ed6969f362d4'),
('5ed6969ecb33c', ' $*nnnn;', '5ed6969f362d5'),
('5ed6969f5188f', 'character entity reference', '5ed6969f54554'),
('5ed6969f5188f', 'numeric character reference ', '5ed6969f5455d'),
('5ed6969f5188f', 'predefined entities ', '5ed6969f54560'),
('5ed6969f5188f', ' character and numeric entity reference', '5ed6969f54561'),
('5ed6969f6fded', '<head>', '5ed6969f7acd2'),
('5ed6969f6fded', '<h6>', '5ed6969f7acda'),
('5ed6969f6fded', '<heading>', '5ed6969f7acdc'),
('5ed6969f6fded', '<h1>', '5ed6969f7acdd'),
('5ed6969fa7315', 'Method', '5ed6969faf7f1'),
('5ed6969fa7315', 'Action', '5ed6969faf7f6'),
('5ed6969fa7315', 'Both (a)&(b)', '5ed6969faf7f7'),
('5ed6969fa7315', 'None of these', '5ed6969faf7f8'),
('5ed6969fbd57c', '<tdleft>', '5ed6969fc0218'),
('5ed6969fbd57c', '<td raligh = \"left\" >', '5ed6969fc021d'),
('5ed6969fbd57c', '<td align = \"left\">', '5ed6969fc021e'),
('5ed6969fbd57c', '<td leftalign>', '5ed6969fc021f'),
('5ed6969fcdfea', '< a href = \"url\" target = \"new\">', '5ed6969fd0c4a'),
('5ed6969fcdfea', '<a href = \"url\" target= \"_blank\">', '5ed6969fd0c55'),
('5ed6969fcdfea', '<a href = \"url\".new>', '5ed6969fd0c5a'),
('5ed6969fcdfea', '<a href = \"url\" target =\"open\">', '5ed6969fd0c5e'),
('5ed697c66c2ef', '#include “file.h”', '5ed697c678777'),
('5ed697c66c2ef', '#include <file.h>', '5ed697c678783'),
('5ed697c66c2ef', '#include <file>', '5ed697c678785'),
('5ed697c66c2ef', ' #include file.h', '5ed697c678788'),
('5ed697c68be2c', '0', '5ed697c69f181'),
('5ed697c68be2c', '1', '5ed697c69f189'),
('5ed697c68be2c', '2', '5ed697c69f18a'),
('5ed697c68be2c', 'None of these', '5ed697c69f18c'),
('5ed697c6b567e', ';', '5ed697c6b8400'),
('5ed697c6b567e', ':', '5ed697c6b8405'),
('5ed697c6b567e', '/*', '5ed697c6b8406'),
('5ed697c6b567e', '//', '5ed697c6b8407');

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
('5ed65fcd02cf4', '5ed661a8f1e1e', 'What is recurrence for worst case of QuickSort and what is the time complexity in Worst case?', 4, 1),
('5ed65fcd02cf4', '5ed661a998962', 'Which of the following is not true about comparison based sorting algorithms?', 4, 2),
('5ed65fcd02cf4', '5ed661aa9ef20', 'The recurrence relation capturing the optimal time of the Tower of Hanoi problem with n discs is. ', 4, 3),
('5ed65fcd02cf4', '5ed661ab07bf7', 'Which of the following is not O(n^2)?', 4, 4),
('5ed65fcd02cf4', '5ed661ab4710a', 'What procedure is being followed in Floyd Warshall Algorithm?', 4, 5),
('5ed663ff15f35', '5ed6657c7dfa9', 'Which of the following are steps in query processing?', 4, 1),
('5ed663ff15f35', '5ed6657cb690b', 'A sequence of primitive operations that can be used to evaluate a query are called as __________', 4, 2),
('5ed663ff15f35', '5ed6657ce27f2', 'The lowest level operator to access data in query processing is _______', 4, 3),
('5ed663ff15f35', '5ed6657d09f09', 'Which of the following can be implemented?', 4, 4),
('5ed66648e0b1a', '5ed6705d18a8a', 'Which of the statements about dictionary values if false?', 4, 1),
('5ed66648e0b1a', '5ed6705de2fc9', 'What will be the output of the following Python code snippet?\r\n\r\n>>>import collections\r\n>>> a=collections.Counter([1,1,2,3,3,4,4,4])\r\n>>> a', 4, 2),
('5ed66648e0b1a', '5ed6705e0795a', 'What will be the output of the following Python code snippet?', 4, 3),
('5ed66648e0b1a', '5ed6705e2892d', 'Which of the following creates a pattern object?', 4, 4),
('5ed66648e0b1a', '5ed6705e4449d', ' Which operator is overloaded by __invert__()?', 4, 5),
('5ed69018ce97e', '5ed6969ecb33c', 'What is the correct format of numeric character reference?', 4, 1),
('5ed69018ce97e', '5ed6969f5188f', 'For entity which term is used by XML?', 4, 2),
('5ed69018ce97e', '5ed6969f6fded', 'Correct HTML tag for the largest heading is', 4, 3),
('5ed69018ce97e', '5ed6969fa7315', 'The attribute of <form> tag', 4, 4),
('5ed69018ce97e', '5ed6969fbd57c', 'Correct HTML to left align the content inside a table cell is', 4, 5),
('5ed69018ce97e', '5ed6969fcdfea', 'How can you open a link in a new browser window?', 4, 6),
('5ed696c5255a3', '5ed697c66c2ef', 'A user defined header file is included by following statement in general.', 4, 1),
('5ed696c5255a3', '5ed697c68be2c', 'How many number of arguments can a destructor of a class receives?', 4, 2),
('5ed696c5255a3', '5ed697c6b567e', ' A single line comment in C++ language source code can begin with _____\r\n\r\n', 4, 3);

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
('5ed65fcd02cf4', 'Aoa', 4, 1, 5, 15, '', '', '2020-06-02 14:18:53'),
('5ed663ff15f35', 'Rdbms', 2, 0, 4, 10, '', '', '2020-06-02 14:36:47'),
('5ed66648e0b1a', 'Python', 5, 2, 5, 17, '', '', '2020-06-02 14:46:32'),
('5ed69018ce97e', 'Html', 3, 0, 6, 10, '', '', '2020-06-02 17:44:56'),
('5ed696c5255a3', 'C++', 1, 0, 3, 5, '', '', '2020-06-02 18:13:25');

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
('anjali@gmail.com', 11, '2020-06-02 17:37:26'),
('jdc@gmail.com', 2, '2020-06-02 18:20:00'),
('shantanu@gmail.com', 9, '2020-06-02 18:34:05');

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
('Anjali', 'F', 'Computer Scienc', 'anjali@gmail.com', 9004188789, '040b7cf4a55014e185813e0644502ea9'),
('Jugal', 'M', 'Mechanical', 'jdc@gmail.com', 5796435753, 'd8578edf8458ce06fbc5bb76a58c5ca4'),
('Shantanu', 'M', 'IT', 'shantanu@gmail.com', 93748162945, 'eb89f40da6a539dd1b1776e522459763');

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
