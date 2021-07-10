-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2021 at 09:11 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myshopdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_carts`
--

CREATE TABLE `tbl_carts` (
  `email` varchar(50) NOT NULL,
  `prid` varchar(10) NOT NULL,
  `qty` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_carts`
--

INSERT INTO `tbl_carts` (`email`, `prid`, `qty`) VALUES
('slumberjer@gmail.com', '50', 3),
('slumberjer@gmail.com', '49', 4),
('slumberjer@gmail.com', '45', 1),
('slumberjer@gmail.com', '46', 2),
('slumberjer@gmail.com', '43', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `prid` int(11) NOT NULL,
  `prname` varchar(30) NOT NULL,
  `prtype` varchar(30) NOT NULL,
  `prprice` double NOT NULL,
  `prqty` int(11) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `picture` varchar(30) NOT NULL,
  `created_timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`prid`, `prname`, `prtype`, `prprice`, `prqty`, `datecreated`, `picture`, `created_timestamp`) VALUES
(56, 'Ice cream Asam Boi', 'Dessert', 1, 3, '2021-06-09 20:58:51', '60c0bb0b29614.png', '2021-06-09 12:58:51'),
(57, 'Roti Jala 1 kg + Gulai Ayam', 'KuihMuih', 50, 1, '2021-06-09 21:07:06', '60c0bcfa8088c.png', '2021-06-09 13:07:06'),
(58, 'Roti CanaI ', 'FrozenFood', 5, 3, '2021-06-09 21:32:43', '60c0c2fb238c6.png', '2021-06-09 13:32:43'),
(59, 'ketupat', 'KuihMuih', 3, 10, '2021-06-10 11:23:51', '60c185c772e2d.png', '2021-06-10 03:23:51'),
(60, 'karipap daging', 'FrozenFood', 5, 3, '2021-06-10 11:48:00', '60c18b70acb02.png', '2021-06-10 03:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchased`
--

CREATE TABLE `tbl_purchased` (
  `orderid` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `paid` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `name` varchar(500) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `otp` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`name`, `email`, `phone`, `password`, `otp`) VALUES
('', '', 0, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 2152),
('farhan', 'farhan@gmail.com', 135264866, '0b940b825790d34c0a5fcf3b42a1cb4cb5d1650c', 2113),
('farhan izzuddin', 'paan97@gmail.com', 2147483647, '0b940b825790d34c0a5fcf3b42a1cb4cb5d1650c', 3501),
('Muhammad Farhan Izzuddin', 'paan@gmail.com', 135298195, '0b940b825790d34c0a5fcf3b42a1cb4cb5d1650c', 9175);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`prid`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `prid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
