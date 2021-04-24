-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2021 at 01:26 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smarthighway`
--

-- --------------------------------------------------------

--
-- Table structure for table `entry`
--

CREATE TABLE `entry` (
  `vehicle_no` text NOT NULL,
  `owner_name` text NOT NULL,
  `entrygate` char(1) NOT NULL,
  `exitgate` char(1) NOT NULL,
  `rfid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `entry`
--

INSERT INTO `entry` (`vehicle_no`, `owner_name`, `entrygate`, `exitgate`, `rfid`) VALUES
('PB67AS2345', 'Ankita', 'A', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `exit`
--

CREATE TABLE `exit` (
  `vehicle_no` text NOT NULL,
  `exitgate` char(1) NOT NULL,
  `rfid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exit`
--

INSERT INTO `exit` (`vehicle_no`, `exitgate`, `rfid`) VALUES
('PB67AS2345', 'B', '12345667');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('Ankita Singhal', 'uytrrsarsdf');

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `vehicle_no` text NOT NULL,
  `owner_name` text NOT NULL,
  `mobile_no` text NOT NULL,
  `rfid` text NOT NULL,
  `balance` bigint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`vehicle_no`, `owner_name`, `mobile_no`, `rfid`, `balance`) VALUES
('DL36RT5678', 'Harish Pratap Rana', '8193920875', 'ABC1703231073DEF', 985),
('HR23TK7832', 'Muskan Mittal', '8630180075', 'ABC1703231099DEF', 965),
('MH76KI3456', 'Ekansh Agarwal', '8368121403', 'ABC1703231071DEF', 950),
('PB65RD3241', 'Nandini Tandon', '7452826814', 'ABC1703231102DEF', 999),
('UP14TH6784', 'Ankita Singhal', '7452090335', 'ABC1703231034DEF', 900);

-- --------------------------------------------------------

--
-- Table structure for table `vehicleregistration`
--

CREATE TABLE `vehicleregistration` (
  `vehicle_no` text NOT NULL,
  `vehicle_name` text NOT NULL,
  `owner_name` text NOT NULL,
  `owner_contact` text NOT NULL,
  `owner_address` text NOT NULL,
  `rfid` text NOT NULL,
  `current_datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicleregistration`
--

INSERT INTO `vehicleregistration` (`vehicle_no`, `vehicle_name`, `owner_name`, `owner_contact`, `owner_address`, `rfid`, `current_datetime`) VALUES
('PB67AS2345', 'Creta', 'Ankita', '8521478965', 'uytedsjhja', '12345667', '2021-04-23 17:27:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `entry`
--
ALTER TABLE `entry`
  ADD PRIMARY KEY (`vehicle_no`(25));

--
-- Indexes for table `exit`
--
ALTER TABLE `exit`
  ADD PRIMARY KEY (`vehicle_no`(25));

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`vehicle_no`(25));

--
-- Indexes for table `vehicleregistration`
--
ALTER TABLE `vehicleregistration`
  ADD PRIMARY KEY (`vehicle_no`(255));
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
