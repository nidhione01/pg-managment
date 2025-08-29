-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2025 at 12:38 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pg`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'NIDHI', 'nidhione1@gmail.com', '1005', '2016-04-04 20:31:45', '2025-08-01');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` int(11) DEFAULT NULL,
  `sharing` int(11) DEFAULT NULL,
  `feespm` int(11) DEFAULT NULL,
  `foodstatus` int(11) DEFAULT NULL,
  `stayfrom` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `firstName` varchar(500) DEFAULT NULL,
  `middleName` varchar(500) DEFAULT NULL,
  `lastName` varchar(500) DEFAULT NULL,
  `gender` varchar(250) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `emailid` varchar(500) DEFAULT NULL,
  `egycontactno` bigint(11) DEFAULT NULL,
  `corresAddress` varchar(500) DEFAULT NULL,
  `corresCIty` varchar(500) DEFAULT NULL,
  `corresState` varchar(500) DEFAULT NULL,
  `corresPincode` int(11) DEFAULT NULL,
  `pmntAddress` varchar(500) DEFAULT NULL,
  `pmntCity` varchar(500) DEFAULT NULL,
  `pmnatetState` varchar(500) DEFAULT NULL,
  `pmntPincode` int(11) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `sharing`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(10, 101, 1, 6000, 0, '2025-07-31', 12, 'nidhi', 'b ', 'patel', 'female', 1234567890, 'nidhi1@gmail.com', 1235467890, '31 pratham  vatika aarohi ', 'Ahmedabad', 'Gujarat', 380058, '31 pratham  vatika aarohi ', 'Ahmedabad', 'Gujarat', 380058, '2025-07-30 21:10:34', NULL),
(11, 102, 2, 5000, 1, '2025-07-31', 10, 'om', 'b ', 'patel', 'male', 7894561230, 'om@gmail.com', 7894561230, '32 Pratham Vatika Aarohi Club Road, South Bopal, Ahmedabad', 'Ahmedabad', 'Gujarat', 380058, '32 Pratham Vatika Aarohi Club Road, South Bopal, Ahmedabad', 'Ahmedabad', 'Gujarat', 380058, '2025-07-30 21:11:47', NULL),
(12, 102, 2, 5500, 1, '2025-07-31', 12, 'om', 'b', 'patel', 'male', 7894561238, 'om@gmail.com', 1235467890, '31 pratham  vatika aarohi ', 'Ahmedabad', 'Gujarat', 380058, '31 pratham  vatika aarohi ', 'Ahmedabad', 'Gujarat', 380058, '2025-08-01 05:56:01', NULL),
(13, 104, 4, 3500, 1, '2025-08-01', 10, 'HILONI ', 'V', 'PATEL', 'female', 5289312300, 'hiloni5289312300@gmail.com', 5289312300, 'ranip', 'Ahmedabad', 'Gujarat', 382480, 'ranip', 'Ahmedabad', 'Gujarat', 382480, '2025-08-01 06:59:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `sharing` int(11) DEFAULT NULL,
  `room_no` int(11) DEFAULT NULL,
  `fees` int(11) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `sharing`, `room_no`, `fees`, `posting_date`) VALUES
(7, 2, 102, 5500, '2025-07-30 19:06:30'),
(8, 1, 101, 6000, '2025-07-30 19:06:53'),
(9, 3, 103, 4500, '2025-07-30 19:07:14'),
(10, 4, 104, 3500, '2025-08-01 06:54:36');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Andaman and Nicobar Island (UT)'),
(2, 'Andhra Pradesh'),
(3, 'Arunachal Pradesh'),
(4, 'Assam'),
(5, 'Bihar'),
(6, 'Chandigarh (UT)'),
(7, 'Chhattisgarh'),
(8, 'Dadra and Nagar Haveli (UT)'),
(9, 'Daman and Diu (UT)'),
(10, 'Delhi (NCT)'),
(11, 'Goa'),
(12, 'Gujarat'),
(13, 'Haryana'),
(14, 'Himachal Pradesh'),
(15, 'Jammu and Kashmir'),
(16, 'Jharkhand'),
(17, 'Karnataka'),
(18, 'Kerala'),
(19, 'Lakshadweep (UT)'),
(20, 'Madhya Pradesh'),
(21, 'Maharashtra'),
(22, 'Manipur'),
(23, 'Meghalaya'),
(24, 'Mizoram'),
(25, 'Nagaland'),
(26, 'Odisha'),
(27, 'Puducherry (UT)'),
(28, 'Punjab'),
(29, 'Rajastha'),
(30, 'Sikkim'),
(31, 'Tamil Nadu'),
(32, 'Telangana'),
(33, 'Tripura'),
(34, 'Uttarakhand'),
(35, 'Uttar Pradesh'),
(36, 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(11, 1, 'test@gmail.com', 0x3a3a31, '', '', '2025-07-27 14:21:53'),
(12, 1, 'test@gmail.com', 0x3a3a31, '', '', '2025-07-27 15:04:23'),
(13, 1, 'test@gmail.com', 0x3a3a31, '', '', '2025-07-30 05:54:46'),
(14, 1, 'test@gmail.com', 0x3a3a31, '', '', '2025-07-30 08:03:42'),
(15, 1, 'test@gmail.com', 0x3a3a31, '', '', '2025-07-30 08:04:03'),
(16, 21, 'abc@gmail.com', 0x3a3a31, '', '', '2025-07-30 08:10:27'),
(17, 21, 'abc@gmail.com', 0x3a3a31, '', '', '2025-07-30 10:36:27'),
(18, 21, 'abc@gmail.com', 0x3a3a31, '', '', '2025-07-30 10:43:50'),
(19, 1, 'test@gmail.com', 0x3a3a31, '', '', '2025-07-30 12:02:20'),
(20, 1, 'test@gmail.com', 0x3a3a31, '', '', '2025-07-30 12:19:35'),
(21, 22, 'bharat@gmail.com', 0x3a3a31, '', '', '2025-07-30 21:21:11'),
(22, 23, 'nidhi1@gmail.com', 0x3a3a31, '', '', '2025-07-30 21:23:46'),
(23, 24, 'om@gmail.com', 0x3a3a31, '', '', '2025-07-30 21:24:57'),
(24, 24, 'om@gmail.com', 0x3a3a31, '', '', '2025-07-31 04:23:09'),
(25, 24, 'om@gmail.com', 0x3a3a31, '', '', '2025-07-31 06:42:47'),
(26, 24, 'om@gmail.com', 0x3a3a31, '', '', '2025-07-31 06:42:48'),
(27, 24, 'om@gmail.com', 0x3a3a31, '', '', '2025-07-31 07:06:51'),
(28, 24, 'om@gmail.com', 0x3a3a31, '', '', '2025-07-31 07:08:56'),
(29, 24, 'om@gmail.com', 0x3a3a31, '', '', '2025-08-01 05:54:08'),
(30, 24, 'om@gmail.com', 0x3a3a31, '', '', '2025-08-01 05:54:29'),
(31, 25, 'hiloni5289312300@gmail.com', 0x3a3a31, '', '', '2025-08-01 07:04:04'),
(32, 24, 'om@gmail.com', 0x3a3a31, '', '', '2025-08-01 10:47:42'),
(33, 24, 'om@gmail.com', 0x3a3a31, '', '', '2025-08-01 21:13:59'),
(34, 23, 'nidhi1@gmail.com', 0x3a3a31, '', '', '2025-08-01 22:02:13'),
(35, 23, 'nidhi1@gmail.com', 0x3a3a31, '', '', '2025-08-02 12:24:36');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `contactNo` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) DEFAULT NULL,
  `passUdateDate` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(21, 'a', 'b', 'c', 'male', 1234567890, 'abc@gmail.com', 'abc@123', '2025-07-30 08:09:39', '30-07-2025 01:42:11', NULL),
(22, 'Bharat', 'A', 'Patel', 'male', 7894561238, 'bharat@gmail.com', '123456', '2025-07-30 21:19:33', NULL, NULL),
(23, 'nidhi', 'b', 'patel', 'female', 1234567890, 'nidhi1@gmail.com', '1807', '2025-07-30 21:23:23', NULL, NULL),
(24, 'om', 'b', 'patel', 'male', 7894561238, 'om@gmail.com', '2503', '2025-07-30 21:24:50', NULL, NULL),
(25, 'HILONI', 'V', 'PATEL', 'female', 5289312300, 'hiloni5289312300@gmail.com', '5289312300', '2025-08-01 07:03:21', NULL, '01-08-2025 12:36:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_no` (`room_no`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
