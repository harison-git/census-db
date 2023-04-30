-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2023 at 04:13 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `censusdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `household_list`
--

CREATE TABLE `household_list` (
  `hh_id` int(10) NOT NULL,
  `hh_num` int(10) NOT NULL,
  `r_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `purok_list`
--

CREATE TABLE `purok_list` (
  `purok_id` int(10) NOT NULL,
  `purok_name` varchar(45) NOT NULL,
  `r_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `residents_info`
--

CREATE TABLE `residents_info` (
  `r_id` int(10) NOT NULL,
  `name` varchar(60) NOT NULL,
  `gender` char(1) NOT NULL,
  `birthday` date NOT NULL,
  `house_num` int(10) NOT NULL,
  `purok_list` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `household_list`
--
ALTER TABLE `household_list`
  ADD PRIMARY KEY (`hh_id`),
  ADD UNIQUE KEY `r_id` (`r_id`);

--
-- Indexes for table `purok_list`
--
ALTER TABLE `purok_list`
  ADD UNIQUE KEY `r_id` (`r_id`);

--
-- Indexes for table `residents_info`
--
ALTER TABLE `residents_info`
  ADD PRIMARY KEY (`r_id`),
  ADD UNIQUE KEY `UNIQUE` (`purok_list`),
  ADD UNIQUE KEY `house_num` (`house_num`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
