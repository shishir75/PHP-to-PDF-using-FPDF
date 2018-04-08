-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2018 at 11:02 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydata`
--

-- --------------------------------------------------------

--
-- Table structure for table `tablepaginate`
--

CREATE TABLE `tablepaginate` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Position` varchar(50) NOT NULL,
  `Office` varchar(255) NOT NULL,
  `Age` int(11) NOT NULL,
  `StartDate` date NOT NULL,
  `Salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tablepaginate`
--

INSERT INTO `tablepaginate` (`ID`, `Name`, `Position`, `Office`, `Age`, `StartDate`, `Salary`) VALUES
(1, 'Shishir Sarder', 'Web Developer', 'Dhaka', 23, '2018-04-03', 40000),
(2, 'Jarin Ritu', 'Programmer', 'Dhaka', 21, '2018-04-10', 50000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tablepaginate`
--
ALTER TABLE `tablepaginate`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tablepaginate`
--
ALTER TABLE `tablepaginate`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
