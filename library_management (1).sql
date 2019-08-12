-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2017 at 09:48 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `lib_book_category`
--

CREATE TABLE IF NOT EXISTS `lib_book_category` (
  `book_category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lib_book_category`
--

INSERT INTO `lib_book_category` (`book_category`) VALUES
('Database'),
('Programming'),
('Web');

-- --------------------------------------------------------

--
-- Table structure for table `lib_book_master`
--

CREATE TABLE IF NOT EXISTS `lib_book_master` (
  `book_id` int(10) NOT NULL,
  `book_title` varchar(30) NOT NULL,
  `book_author` varchar(30) NOT NULL,
  `book_publisher` varchar(30) NOT NULL,
  `book_publish_year` varchar(6) NOT NULL,
  `book_keyword` varchar(10) NOT NULL,
  `book_category` varchar(20) NOT NULL,
  `book_status` varchar(10) NOT NULL DEFAULT 'Available'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lib_book_master`
--

INSERT INTO `lib_book_master` (`book_id`, `book_title`, `book_author`, `book_publisher`, `book_publish_year`, `book_keyword`, `book_category`, `book_status`) VALUES
(1, 'Database System', 'Henry F.Korth', 'McGRAW-HILL INTERNATIONAL', '1994', 'database', 'Database', 'Issued'),
(8, 'Programming with Java', 'E Balagurusamy', 'Mc Grow Hill', '1996', 'java', 'Programming', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `lib_member_master`
--

CREATE TABLE IF NOT EXISTS `lib_member_master` (
  `mem_id` int(11) NOT NULL,
  `mem_name` varchar(100) DEFAULT NULL,
  `mem_address` varchar(250) DEFAULT NULL,
  `mem_email_id` varchar(100) DEFAULT NULL,
  `mem_mobile_no` varchar(20) DEFAULT NULL,
  `mem_registered_date` date DEFAULT NULL,
  `mem_active` varchar(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lib_member_master`
--

INSERT INTO `lib_member_master` (`mem_id`, `mem_name`, `mem_address`, `mem_email_id`, `mem_mobile_no`, `mem_registered_date`, `mem_active`) VALUES
(17, 'Noman Majumdar', 'Comilla', 'nomanpc13@gmail.com', '01521449808', NULL, 'Y'),
(18, 'Al Imran', 'Comilla', 'imran@gmail.com', '01849644182', NULL, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `lib_transaction`
--

CREATE TABLE IF NOT EXISTS `lib_transaction` (
  `trn_id` int(10) unsigned NOT NULL,
  `trn_mem_id` int(10) unsigned NOT NULL,
  `trn_book_id` int(10) unsigned NOT NULL,
  `trn_issue_dt` datetime NOT NULL,
  `trn_receive_dt` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lib_transaction`
--

INSERT INTO `lib_transaction` (`trn_id`, `trn_mem_id`, `trn_book_id`, `trn_issue_dt`, `trn_receive_dt`) VALUES
(12, 17, 8, '2017-04-19 12:49:36', '2017-04-19 12:53:19'),
(13, 18, 1, '2017-04-19 12:55:58', '2017-04-19 21:22:27'),
(14, 18, 1, '2017-04-19 21:23:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lib_user`
--

CREATE TABLE IF NOT EXISTS `lib_user` (
  `user_name` varchar(20) NOT NULL,
  `user_password` varchar(10) NOT NULL,
  `user_type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lib_user`
--

INSERT INTO `lib_user` (`user_name`, `user_password`, `user_type`) VALUES
('cse1', '456', 'User'),
('cse2', 'abc', 'Administrator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lib_book_category`
--
ALTER TABLE `lib_book_category`
  ADD PRIMARY KEY (`book_category`);

--
-- Indexes for table `lib_book_master`
--
ALTER TABLE `lib_book_master`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `lib_member_master`
--
ALTER TABLE `lib_member_master`
  ADD PRIMARY KEY (`mem_id`);

--
-- Indexes for table `lib_transaction`
--
ALTER TABLE `lib_transaction`
  ADD PRIMARY KEY (`trn_id`);

--
-- Indexes for table `lib_user`
--
ALTER TABLE `lib_user`
  ADD PRIMARY KEY (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lib_book_master`
--
ALTER TABLE `lib_book_master`
  MODIFY `book_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `lib_member_master`
--
ALTER TABLE `lib_member_master`
  MODIFY `mem_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `lib_transaction`
--
ALTER TABLE `lib_transaction`
  MODIFY `trn_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
