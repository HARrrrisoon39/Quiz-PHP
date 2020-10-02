-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2020 at 10:10 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_quiz`
--

CREATE TABLE `admin_quiz` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_quiz`
--

INSERT INTO `admin_quiz` (`id`, `username`, `password`) VALUES
(1, 'muki', '1111');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(100) NOT NULL,
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `qid`, `ansid`) VALUES
(28, '5f61b615e7094', '5f61b615f03bd'),
(29, '5f61b61668af6', '5f61b61673e4a');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `username`, `subject`, `feedback`, `date`, `time`) VALUES
('5f61bf0ca571f', 'vgvghv', 'vghcvghcghc@jjkbjkj.com', ' vghcvggcg', 'cgcgcgcgh', '2020-09-16', '09:30:20am');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `timestamp` bigint(50) NOT NULL,
  `status` varchar(40) NOT NULL,
  `score_updated` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(100) NOT NULL,
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `qid`, `option`, `optionid`) VALUES
(109, '5f61b615e7094', 'a', '5f61b615f03bd'),
(110, '5f61b615e7094', '', '5f61b615f03dd'),
(111, '5f61b615e7094', '', '5f61b615f03ea'),
(112, '5f61b615e7094', '', '5f61b615f03f2'),
(113, '5f61b61668af6', '', '5f61b61673e4a'),
(114, '5f61b61668af6', '', '5f61b61673e7e'),
(115, '5f61b61668af6', '', '5f61b61673e84'),
(116, '5f61b61668af6', 'd', '5f61b61673e8a');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `eid`, `qid`, `qns`, `choice`, `sn`) VALUES
(28, '5f61b606a3cd5', '5f61b615e7094', 'a', 4, 1),
(29, '5f61b606a3cd5', '5f61b61668af6', 'a', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `eid`, `title`, `correct`, `wrong`, `total`, `time`, `date`, `status`) VALUES
(27, '5f61b606a3cd5', 'Hari Rajan', 2, 1, 2, 60, '2020-09-16 06:52:09', 'enabled');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `rollno` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `phno` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_answer`
--

CREATE TABLE `user_answer` (
  `id` int(100) NOT NULL,
  `qid` varchar(50) NOT NULL,
  `ans` varchar(50) NOT NULL,
  `correctans` varchar(50) NOT NULL,
  `eid` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_answer`
--

INSERT INTO `user_answer` (`id`, `qid`, `ans`, `correctans`, `eid`, `username`) VALUES
(1, '58027e82e62e3', '58027e82f2412', '58027e82f2412', '5802790f793b1', 'sonudoo'),
(2, '58027e833dd54', '58027e8347514', '58027e8347514', '5802790f793b1', 'sonudoo'),
(3, '58027e8371483', '58027e838f19a', '58027e838f19a', '5802790f793b1', 'sonudoo'),
(4, '5b85857d00f34', '5b85857d0af5f', '5b85857d0ab77', '5b85847bbe794', 'pravin'),
(5, '5b85857d333f0', '5b85857d389e2', '5b85857d391b2', '5b85847bbe794', 'pravin'),
(6, '5b85857d59559', '5b85857d69efd', '5b85857d69efd', '5b85847bbe794', 'pravin'),
(7, '5b85857d917d6', '5b85857d97980', '5b85857d97980', '5b85847bbe794', 'pravin'),
(8, '5b85857db810f', '5b85857dbdae9', '5b85857dbd701', '5b85847bbe794', 'pravin'),
(9, '5b85857d00f34', '5b85857d0ab77', '5b85857d0ab77', '5b85847bbe794', 'mugunth'),
(10, '5b85857d333f0', '5b85857d391b2', '5b85857d391b2', '5b85847bbe794', 'mugunth'),
(11, '5b85857d59559', '5b85857d69efd', '5b85857d69efd', '5b85847bbe794', 'mugunth'),
(12, '5b85857d917d6', '5b85857d97980', '5b85857d97980', '5b85847bbe794', 'mugunth'),
(13, '5b85857db810f', '5b85857dbded1', '5b85857dbd701', '5b85847bbe794', 'mugunth'),
(14, '5b85857d00f34', '5b85857d0ab77', '5b85857d0ab77', '5b85847bbe794', 'sam'),
(15, '5b85857d333f0', '5b85857d38dca', '5b85857d391b2', '5b85847bbe794', 'sam'),
(16, '5b85857d59559', '5b85857d69efd', '5b85857d69efd', '5b85847bbe794', 'sam'),
(17, '5b85857d917d6', '5b85857d97980', '5b85857d97980', '5b85847bbe794', 'sam'),
(18, '5b85857db810f', '5b85857dbded1', '5b85857dbd701', '5b85847bbe794', 'sam'),
(19, '5f59dcddd9031', '5f59dcdde929b', '5f59dcdde929b', '5f59dcc5abf89', 'sam'),
(20, '5f59dd5fdd7c4', '5f59dd60045cb', '5f59dd60045cb', '5f59dd5908341', 'sam'),
(21, '5f59dd5fdd7c4', '5f59dd60045cb', '5f59dd60045cb', '5f59dd5908341', 'Hari Rajan'),
(22, '5b85857d00f34', '5b85857d0ab77', '5b85857d0ab77', '5b85847bbe794', 'Hari Rajan'),
(23, '5f5a311323dc3', '5f5a31133809d', '5f5a31133809d', '5f5a310a3008f', 'Hari Rajan'),
(24, '5f5f063138832', '5f5f063145e0d', '5f5f063145e0d', '5f5f060eb2495', 'Hari Rajan'),
(25, '5f5f0631cda2c', '5f5f0631d5a9a', '5f5f0631d5a9a', '5f5f060eb2495', 'Hari Rajan'),
(26, '5f5f06b00f870', '5f5f06b017893', '5f5f06b017893', '5f5f069612847', 'Hari Rajan'),
(27, '5f5f06afaaa7a', '5f5f06afba53a', '5f5f06afba53a', '5f5f069612847', 'Hari Rajan'),
(28, '5f5f0a186bb00', '5f5f0a18824c6', '5f5f0a18824c6', '5f5f09f61d450', 'Hari Rajan'),
(29, '5f5f0a18d3a27', '5f5f0a190c2f5', '5f5f0a190c2f5', '5f5f09f61d450', 'Hari Rajan'),
(30, '5f5f0b07b00b9', '5f5f0b07bfdcd', '5f5f0b07bfdcd', '5f5f0aea0d1bb', 'Hari Rajan'),
(31, '5f5f0b0830339', '5f5f0b084f6b9', '5f5f0b084f6c1', '5f5f0aea0d1bb', 'Hari Rajan'),
(32, '5f5f0b07b00b9', '5f5f0b07bfdcd', '5f5f0b07bfdcd', '5f5f0aea0d1bb', 'Hari Rajvf'),
(33, '5f5f0b0830339', '5f5f0b084f6c1', '5f5f0b084f6c1', '5f5f0aea0d1bb', 'Hari Rajvf'),
(34, '5f5f0b07b00b9', '5f5f0b07bfdcd', '5f5f0b07bfdcd', '5f5f0aea0d1bb', 'xczss'),
(35, '5f5f0b07b00b9', '5f5f0b07bfdcd', '5f5f0b07bfdcd', '5f5f0aea0d1bb', 'jhnk'),
(36, '5f5f1930c25e2', '5f5f1930d03a5', '5f5f1930d03a5', '5f5f18c0455f4', 'Hari Rajanygyugy'),
(37, '5f5f19314b50c', '5f5f1931564b1', '5f5f1931564b1', '5f5f18c0455f4', 'Hari Rajanygyugy'),
(38, '5f5f1930c25e2', '5f5f1930d03a5', '5f5f1930d03a5', '5f5f18c0455f4', 'sdfdsfd'),
(39, '5f5f19314b50c', '5f5f1931564b1', '5f5f1931564b1', '5f5f18c0455f4', 'sdfdsfd'),
(40, '5f5f1930c25e2', '5f5f1930d03a5', '5f5f1930d03a5', '5f5f18c0455f4', 'dsfddsfds'),
(41, '5f6095778c745', '5f6095779f3b6', '5f6095779f3b6', '5f60955913e7b', 'Hari Rajan'),
(42, '5f6095778c745', '5f6095779f3b6', '5f6095779f3b6', '5f60955913e7b', '123456'),
(43, '5f60b1d8e55e4', '5f60b1d9056fb', '5f60b1d9056fb', '5f60b1c9b0452', 'Hari Rajan'),
(44, '5f60b1d8e55e4', '5f60b1d9056fb', '5f60b1d9056fb', '5f60b1c9b0452', 'adkmljjd'),
(45, '5f61ab4aa9782', '5f61ab4abd48b', '5f61ab4abd48b', '5f61ab3ac2813', 'harirajan'),
(46, '5f61b615e7094', '5f61b615f03bd', '5f61b615f03bd', '5f61b606a3cd5', 'HARI'),
(47, '5f61b615e7094', '5f61b615f03bd', '5f61b615f03bd', '5f61b606a3cd5', 'hey');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_quiz`
--
ALTER TABLE `admin_quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user_answer`
--
ALTER TABLE `user_answer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_quiz`
--
ALTER TABLE `admin_quiz`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `user_answer`
--
ALTER TABLE `user_answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
