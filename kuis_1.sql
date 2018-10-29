-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 29, 2018 at 12:33 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `rollno` varchar(20) DEFAULT NULL,
  `branch` varchar(20) DEFAULT NULL,
  `gender` varchar(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `phno` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `angket` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `rollno`, `branch`, `gender`, `username`, `phno`, `password`, `angket`) VALUES
(17, 'a', NULL, NULL, 'perem', 'a', 89809, '202cb962ac59075b964b07152d234b70', 'y'),
(18, 'b', NULL, NULL, 'p', 'b', 6868768, '202cb962ac59075b964b07152d234b70', 'y'),
(16, 'hadai', NULL, NULL, 'perem', 'hadai', 89812345623, '202cb962ac59075b964b07152d234b70', 't'),
(14, 'hasna', NULL, NULL, 'perem', 'hasna', 88898989, 'e807f1fcf82d132f9bb018ca6738a19f', 't'),
(15, 'hasnafl', NULL, NULL, 'perem', 'hasnafairus', 8999953272, '801dc3c9e3bcd2a3cf428f3b79b312b6', 't'),
(11, 'ikmafitri', NULL, NULL, 'p', 'ikffyy', 8321456876, '202cb962ac59075b964b07152d234b70', 't'),
(7, 'ikma', 'tes', 'tes', 'P', 'ikma1234', 856909090, '795136bc3a6e1e88b204ad5eb3735362', 't'),
(8, 'ikma', 'tes', 'tes', 'P', 'ikma12345678', 856909090, 'b40b3ca5fc4fc93f3abfef0fa608a71a', 't'),
(13, 'Indah Siti Sarah', NULL, NULL, 'perem', 'indahssarah', 85624782221, '202cb962ac59075b964b07152d234b70', 't'),
(9, 'indah', 'tes', 'tes', 'P', 'indahsthr', 877757572, '25f9e794323b453885f5181f1b624d0b', 't'),
(1, 'Sushant Kumar Gupta', 'BE/10001/15', 'CSE', 'M', 'sonudoo', 1234567890, 'e807f1fcf82d132f9bb018ca6738a19f', 't'),
(2, 'tes', '12345', '12345', 'p', 'tes1234', 8695144981, 'tes1234', 't'),
(19, 'way', NULL, NULL, 'L', 'way', 2390239, 'c83b72dd001482ce10f0b106c7a0ed0e', 'y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
