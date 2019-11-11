-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2019 at 05:05 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weather`
--

-- --------------------------------------------------------

--
-- Table structure for table `weather`
--

CREATE TABLE `weather` (
  `id` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `temperature` double NOT NULL,
  `humidity` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `weather`
--

INSERT INTO `weather` (`id`, `date_time`, `temperature`, `humidity`) VALUES
(1, '2019-11-09 14:08:00', 1, 59),
(2, '2019-11-10 13:00:00', 2, 56),
(3, '2019-11-10 14:08:00', 0, 58),
(4, '2019-11-10 14:30:00', 3, 58),
(5, '2019-11-10 15:00:00', 4, 57),
(6, '2019-11-10 15:30:00', 3, 58),
(7, '2019-11-10 16:00:00', 2, 59),
(8, '2019-11-10 16:30:00', 1, 56),
(9, '2019-11-10 17:00:00', 0, 58),
(10, '2019-11-10 17:30:00', -1, 57),
(11, '2019-11-10 18:00:00', -1, 58),
(12, '2019-11-10 18:30:00', -2, 56);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `weather`
--
ALTER TABLE `weather`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
