-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2026 at 09:53 AM
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
-- Database: `abdus-salam-ums`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(17) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'abdus salam', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `attn`
--

CREATE TABLE `attn` (
  `id` int(11) NOT NULL,
  `st_id` int(17) NOT NULL,
  `atten` varchar(50) NOT NULL,
  `at_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `attn`
--

INSERT INTO `attn` (`id`, `st_id`, `atten`, `at_date`) VALUES
(225, 9, 'present', '2025-12-09'),
(226, 22, 'present', '2025-12-09'),
(227, 25, 'present', '2025-12-09'),
(228, 30, 'present', '2025-12-09'),
(229, 33, 'present', '2025-12-09'),
(230, 35, 'present', '2025-12-09'),
(231, 37, 'present', '2025-12-09'),
(232, 9, 'present', '2025-12-08'),
(233, 22, 'present', '2025-12-08'),
(234, 25, 'present', '2025-12-08'),
(235, 30, 'present', '2025-12-08'),
(236, 33, 'absent', '2025-12-08'),
(237, 35, 'absent', '2025-12-08'),
(238, 37, 'absent', '2025-12-08'),
(239, 9, 'present', '2025-12-10'),
(240, 22, 'present', '2025-12-10'),
(241, 25, 'present', '2025-12-10'),
(242, 30, 'present', '2025-12-10'),
(243, 31, 'present', '2025-12-10'),
(244, 33, 'absent', '2025-12-10'),
(245, 35, 'absent', '2025-12-10'),
(246, 40, 'absent', '2025-12-10');

-- --------------------------------------------------------

--
-- Table structure for table `at_student`
--

CREATE TABLE `at_student` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `st_id` int(11) NOT NULL,
  `Program` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `at_student`
--

INSERT INTO `at_student` (`id`, `name`, `st_id`, `Program`) VALUES
(9, 'Md. Abdus Salam', 9, 'CSE'),
(22, 'Nawshin Rahman', 22, 'CSE'),
(25, 'Md. Hasan Sarder', 25, 'CSE'),
(30, 'Raju', 30, 'CSE'),
(31, 'Sakib', 31, 'CSE'),
(33, 'Salman', 33, 'EEE'),
(35, 'Maaz', 35, 'EEE'),
(40, 'Tahsin', 40, 'Civil');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `education` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `username`, `password`, `name`, `email`, `birthday`, `gender`, `education`, `contact`, `address`) VALUES
(1, 'sadman', 'f4942d0d2b3d1d53e7850ef12ce30caa', 'Sadman Sakib Mahi', 'sadmansakibmahi@gmail.com', '1994-01-11', 'Male', 'BSc in CSE from KU', '01756238461', 'Dhaka'),
(2, 'safi', '82a5a90a32c0fb07e8d3d54d40923f03', 'Musfiq Shahriar Shafi', 'safi@gmail.com', '1993-01-10', 'Male', 'BSc in CSE from KU', '01789455614', 'Jessore');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(17) NOT NULL,
  `st_id` int(17) NOT NULL,
  `marks` int(5) NOT NULL,
  `sub` varchar(50) NOT NULL,
  `semester` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `st_id`, `marks`, `sub`, `semester`) VALUES
(28, 9, 95, 'DBMS', '1st'),
(29, 9, 92, 'DBMS Lab', '1st'),
(30, 9, 90, 'Mathematics', '1st'),
(31, 9, 80, 'Programming', '1st'),
(32, 9, 90, 'Programming Lab', '1st'),
(35, 9, 95, 'Physics', '2nd'),
(36, 9, 96, 'Mathematics', '2nd'),
(37, 9, 85, 'Chemistry', '2nd'),
(38, 9, 78, 'Psychology', '2nd'),
(39, 25, 96, 'DBMS', '1st'),
(40, 25, 98, 'DBMS Lab', '1st'),
(41, 25, 65, 'Mathematics', '1st'),
(42, 25, 90, 'Programming', '1st'),
(43, 25, 92, 'Programming Lab', '1st'),
(44, 25, 95, 'English', '2nd'),
(45, 25, 50, 'Physics', '2nd'),
(46, 25, 68, 'Chemistry', '2nd'),
(47, 25, 92, 'Psychology', '2nd'),
(48, 22, 89, 'DBMS', '1st'),
(49, 22, 90, 'DBMS Lab', '1st'),
(50, 22, 80, 'Mathematics', '1st'),
(51, 22, 95, 'English', '1st'),
(52, 30, 85, 'DBMS', '1st'),
(53, 30, 75, 'DBMS Lab', '1st'),
(54, 30, 100, 'Mathematics', '1st'),
(55, 15103053, 85, 'Programming', '1st'),
(56, 15103053, 90, 'Programming Lab', '1st'),
(57, 15103053, 87, 'English', '1st'),
(58, 15103053, 60, 'Physics', '1st'),
(59, 15103053, 65, 'Chemistry', '1st'),
(60, 15103053, 69, 'Psychology', '1st'),
(61, 17699619, 71, 'DBMS', '1st'),
(62, 17699619, 82, 'DBMS Lab', '1st'),
(63, 17699619, 65, 'Mathematics', '1st'),
(64, 17699619, 85, 'Programming', '1st'),
(65, 17699619, 86, 'Programming Lab', '1st'),
(66, 17699619, 87, 'English', '1st'),
(67, 17699619, 70, 'Physics', '1st'),
(68, 17699619, 75, 'Chemistry', '1st'),
(69, 17699619, 70, 'Psychology', '1st'),
(70, 9, 85, 'Programming Lab', '2nd'),
(71, 9, 90, 'DBMS Lab', '2nd'),
(72, 9, 85, 'DBMS', '3rd');

-- --------------------------------------------------------

--
-- Table structure for table `st_info`
--

CREATE TABLE `st_info` (
  `st_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(50) NOT NULL,
  `bday` date NOT NULL,
  `program` varchar(15) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `st_info`
--

INSERT INTO `st_info` (`st_id`, `name`, `password`, `email`, `bday`, `program`, `contact`, `gender`, `address`, `img`) VALUES
(9, 'Md. Abdus Salam', 'de6838252f95d3b9e803b28df33b4baa', 'h.m.a.salam.r@gmail.com', '2000-11-16', 'B.Sc in CSE', '01755868797', 'Male', 'Khulna', 'B5EB6239-1034-42E4-90CF-6E44468F5CEA.jpeg'),
(22, 'Nawshin Rahman', '24a8e9073b92498f4e2202c06cd08c68', 'nawshinrahman66@gmail.com', '2000-01-10', 'B.Sc in CSE', '01725698745', 'Female', 'Khulna', NULL),
(25, 'Md. Hasan Sarder', 'fc3f318fba8b3c1502bece62a27712df', 'mdhasansarder63@gmail.com', '2002-01-10', 'B.Sc in CSE', '01934223907', 'Male', 'Khulna', 'D38BD465-40AF-05D2-356F-75B2D9535170.jpg'),
(31, 'Sakib', '28e9ae3ae3f544edf077eae414725fa2', 'sakib@gmail.com', '2000-01-15', 'B.Sc in CSE', '01832654123', 'Male', 'Meherpur', NULL),
(33, 'Salman', '03346657feea0490a4d4f677faa0583d', 'salman66@gmail.com', '2000-01-16', 'B.Sc in CSE', '01713913875', 'Male', 'Jessore', ''),
(35, 'Maaz', '6f80813d4eaac939c7b1f1523a0e82c1', 'maaz@gmail.com', '2000-01-10', 'B.Sc in CSE', '01832654167', 'Male', 'Jessore', ''),
(36, 'Nuralam', '9a215b9596b99c1241b251e00e946929', 'nuralam@gmail.com', '2000-11-22', 'B.Sc in CSE', '01956426403', 'Male', 'Satkhira', NULL),
(37, 'Shawon', 'eb54c0d10f987429551feea863502171', 'shawon@gmail.com', '2000-01-22', 'B.Sc in CSE', '01765321498', 'Male', 'Bagerhat', NULL),
(40, 'Tahsin', '86b0aaef2b969ea4bc380e378fb2b952', 'tahsin@gmail.com', '2001-01-15', 'B.Sc in CSE', '01635987521', 'Male', 'Bagerhat', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attn`
--
ALTER TABLE `attn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `at_student`
--
ALTER TABLE `at_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `st_info`
--
ALTER TABLE `st_info`
  ADD PRIMARY KEY (`st_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attn`
--
ALTER TABLE `attn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `at_student`
--
ALTER TABLE `at_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3112;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(17) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
