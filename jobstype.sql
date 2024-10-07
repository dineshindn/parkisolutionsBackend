-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2024 at 05:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobstype`
--

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `job` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `fee` varchar(100) NOT NULL,
  `c_date` date NOT NULL,
  `d_date` varchar(100) NOT NULL,
  `fee_c_d` date NOT NULL,
  `fee_c` varchar(100) NOT NULL,
  `payment_terms` varchar(100) NOT NULL,
  `expenses` varchar(100) NOT NULL,
  `expenses_terms` varchar(100) NOT NULL,
  `subcontroller` varchar(100) NOT NULL,
  `subcontroller_fee` varchar(100) NOT NULL,
  `modum_fee` varchar(100) NOT NULL,
  `net_fee` varchar(100) NOT NULL,
  `internal_review` varchar(100) NOT NULL,
  `marketing` varchar(100) NOT NULL,
  `marketing_per` varchar(100) NOT NULL,
  `marketing_doller` varchar(100) NOT NULL,
  `corporate` varchar(100) NOT NULL,
  `corporate_per` varchar(100) NOT NULL,
  `production_per` varchar(100) NOT NULL,
  `production_doller` varchar(100) NOT NULL,
  `appraiser1` varchar(100) NOT NULL,
  `appraiser1_per` varchar(100) NOT NULL,
  `appraiser2` varchar(100) NOT NULL,
  `appraiser2_per` varchar(100) NOT NULL,
  `appraiser3` varchar(100) NOT NULL,
  `appraiser3_per` varchar(100) NOT NULL,
  `appraiser3_doller` varchar(100) NOT NULL,
  `ir` int(11) NOT NULL,
  `ir_doller` int(11) NOT NULL,
  `total` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `job`, `address`, `fee`, `c_date`, `d_date`, `fee_c_d`, `fee_c`, `payment_terms`, `expenses`, `expenses_terms`, `subcontroller`, `subcontroller_fee`, `modum_fee`, `net_fee`, `internal_review`, `marketing`, `marketing_per`, `marketing_doller`, `corporate`, `corporate_per`, `production_per`, `production_doller`, `appraiser1`, `appraiser1_per`, `appraiser2`, `appraiser2_per`, `appraiser3`, `appraiser3_per`, `appraiser3_doller`, `ir`, `ir_doller`, `total`) VALUES
(1, 'test', 'test', '33', '2024-10-12', '2024-10-12', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(2, 'test', 'test', '33', '2024-10-12', '2024-10-12', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(3, 'fsdf', 'sdfsd', 'fsdf', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(4, 'fsdf', 'sdfsd', 'fsdf', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(5, 'fsdf', 'sdfsd', 'fsdf', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(6, 'fsdf', 'sdfsd', 'fsdf', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(7, 'fsdf', 'sdfsd', 'fsdf', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(8, 'resr', 'resr', '435', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(9, 'resr', 'resr', '435', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(10, 'resr', 'resr', '435', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(11, 'resr', 'resr', '435', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(12, 'resr', 'resr', '435', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(13, 'resrfds', 'resrfdsf', '435', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(14, 'dsc', 'csdc', '453', '0000-00-00', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
