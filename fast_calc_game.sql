-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2021 at 10:42 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fast_calc_game`
--

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `record_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `record_date` date NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`record_id`, `user_name`, `country`, `record_date`, `score`) VALUES
(13, 'hh', 'BJ', '2021-03-24', 1),
(14, 'hisham', 'PS', '2021-03-24', 1),
(15, 'hisham', 'PS', '2021-03-24', 2),
(16, 'hisham', 'PS', '2021-03-24', 2),
(29, 'Hisham44', 'DM', '2021-03-24', 4),
(30, 'df', 'DZ', '2021-03-24', 0),
(31, 'ahmad', 'YE', '2021-03-24', 3),
(32, 'ali', 'TN', '2021-03-24', 3),
(34, 'john', 'FR', '2021-03-24', 0),
(35, 'fahd', 'JO', '2021-03-24', 2),
(36, 'sami', 'SY', '2021-03-24', 2),
(37, 'emmy', 'CM', '2021-03-24', 0),
(38, 'dc', 'BF', '2021-03-24', 0),
(39, 'fahd', 'DZ', '2021-03-24', 0),
(41, 'fahd', 'DZ', '2021-03-24', 0),
(44, 'orz', 'EG', '2021-03-24', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`record_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `records`
--
ALTER TABLE `records`
  MODIFY `record_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
