-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2017 at 04:11 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lr`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `message`) VALUES
(1, 'bibek', 'bibek@gmail.com', 'nice'),
(2, 'hari', 'hari@gmail.com', 'good'),
(6, 'Sangita', 'sangitayadav2015@gmail.com', '	good job!!!				    '),
(7, 'Bibek', 'bibek011@live.com', '	owsm!				    '),
(15, 'Ahmad', 'armirazai@gmail.com', '		This is a very good website.			    '),
(16, 'bibek', 'bibek011@live.com', 'nice one!!!					    '),
(17, 'niru', 'sdfsf', ' \r\n	nice				    '),
(18, 'aaa', 'arrayvoid10@gmail.com', ' \r\n		aaaaaaaaaaaaaaa		    '),
(19, 'prem', 'prem@gmail.com', ' \r\n					    Deepak raj it is good '),
(20, 'deepak', 'deepakgmail.com', ' \r\n					good p    '),
(21, 'hiujh', 'jnljjnbjk@gmail.com', ' \r\n	klnklnlkn				    '),
(22, 'deepak', 'deepak@gmail.com', 'your airlies is awesome but ou need to change something \r\n					    '),
(23, 'deeepsom', 'deepson@gmail.com', 'nice bro keep it up \r\n					    '),
(24, 'ashish', 'ashish@gmail.com', 'nice airlinses \r\n					    ');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `flight_id` int(11) NOT NULL,
  `flight_name` varchar(32) NOT NULL,
  `leaving_from` varchar(32) NOT NULL,
  `going_to` varchar(32) NOT NULL,
  `depart_date` text NOT NULL,
  `time` text NOT NULL,
  `arrival_date` text NOT NULL,
  `dest_time` time NOT NULL,
  `fare` int(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`flight_id`, `flight_name`, `leaving_from`, `going_to`, `depart_date`, `time`, `arrival_date`, `dest_time`, `fare`) VALUES
(1, 'an-001', 'Delhi', 'Bangalore', '2015-10-21', '20:00:00', '2015-10-21', '22:00:00', 6000),
(2, 'an-002', 'Bangalore', 'Delhi', '2015-10-25', '10:00:00', '2015-09-25', '12:25:00', 6500),
(3, 'an-003', 'Delhi', 'Bangalore', '2015-10-21', '14:45:00', '2015-10-21', '17:30:00', 7500),
(4, 'an-004', 'Bangalore', 'Delhi', '2015-10-25', '20:30:00', '2015-10-21', '23:00:00', 8000),
(7, 'an-007', 'Delhi', 'Paris', '2016-01-01', '15:00:00', '2016-01-01', '23:00:00', 50000),
(8, 'an-008', 'Mumbai', 'New York', '2015-10-25', '10:00:00', '2015-10-25', '21:10:00', 45000),
(9, 'an-009', 'Bangalore', 'Agra', '2015-10-21', '20:00:00', '2015-10-20', '23:30:00', 4500),
(10, 'an-0010', 'kabul', 'kathmandu', '2015-10-26', '09:00:00', '2015-10-26', '18:00:00', 35000),
(16, 'an-0016', 'Delhi', 'Bangalore', '2015:10:25', '12:30:00', '2015:10:25', '15:15:00', 7000),
(17, 'deepak airlines', 'pakistan', 'bhairahawa', '2017-04-13', '22:11', '', '13:25:00', 5),
(18, 'deepak airlines', 'america', 'lahore', '2017-03-07', '05:05', '', '17:56:00', 50000),
(19, 'deepak airlines', 'pakistan', 'america', '2017-03-03', '22:10', '', '02:20:00', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

CREATE TABLE IF NOT EXISTS `passengers` (
  `passenger_id` int(11) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `passport` varchar(15) NOT NULL,
  `visa` varchar(15) NOT NULL,
  `country` varchar(15) NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `email` varchar(32) NOT NULL,
  `contact` int(14) NOT NULL,
  `pin` varchar(25) NOT NULL,
  `leaving_from` varchar(32) NOT NULL,
  `going_to` varchar(32) NOT NULL,
  `depart_date` text NOT NULL,
  `depart_time` text NOT NULL,
  `arrival_time` text NOT NULL,
  `grand_fare` int(10) NOT NULL,
  `returning_from` varchar(32) NOT NULL DEFAULT '0',
  `returning_to` varchar(32) NOT NULL DEFAULT '0',
  `returning_date` text,
  `returning_time` text NOT NULL,
  `reaching_time` text NOT NULL,
  `fare` int(32) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passengers`
--

INSERT INTO `passengers` (`passenger_id`, `first_name`, `last_name`, `passport`, `visa`, `country`, `address1`, `address2`, `email`, `contact`, `pin`, `leaving_from`, `going_to`, `depart_date`, `depart_time`, `arrival_time`, `grand_fare`, `returning_from`, `returning_to`, `returning_date`, `returning_time`, `reaching_time`, `fare`) VALUES
(68, 'bibe', 'bibek', '', '', '', 'saptagiri', 'sa', 'bibek@gmail.com', 2147483647, '', 'Delhi', 'Bangalore', '2015-10-21', '14:45:00', '17:30:00', 7500, '', '', '', '', '', 0),
(70, 'deepak', 'pandey', '', '', '', 'nepal', 'sa', 'deepak12345@gmail.com', 123456789, '', 'Delhi', 'Bangalore', '2015-10-21', '14:45:00', '17:30:00', 7500, '', '', '', '', '', 0),
(71, 'deepak', 'pandey', '', '', '', 'ktm', 'kt ', 'deeapakgmail.com', 2147483647, '78945', 'pakistan', 'bhairahawa', '2017-04-13', '22:11', '13:25:00', 5, '', '', '', '', '', 0),
(72, 'deepak', 'pandey', '', '', '', 'acharya', 'acharya', 'deepak@gmail.com', 2147483647, '789456', 'pakistan', 'america', '2017-03-03', '22:10', '02:20:00', 50000, '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `email` varchar(1024) NOT NULL,
  `email_code` varchar(32) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `type` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `first_name`, `last_name`, `email`, `email_code`, `active`, `type`) VALUES
(56, 'admin', '7488e331b8b64e5794da3fa4eb10ad5d', 'admin', 'admin', 'admin@gmail.com', 'fcc3793d1035cfc8970e45b975699068', 1, 1),
(57, 'deepak', '569c9ecfc2c47ebf1bd8a0a48eb04b4d', 'deepak', 'pandey', 'deepak@gmail.com', '9dee8bb17b3eb0311df68b02ed427908', 1, 1),
(58, 'dikshya', '389a66655ed3030f64327c2d589d6061', 'dishya', 'dishya', 'arrayvoid10@gmail.com', '0c601e9d5858765f7bdd32a02a286d73', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`flight_id`);

--
-- Indexes for table `passengers`
--
ALTER TABLE `passengers`
  ADD PRIMARY KEY (`passenger_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `flight_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `passengers`
--
ALTER TABLE `passengers`
  MODIFY `passenger_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
                                                                                                                                   _INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
