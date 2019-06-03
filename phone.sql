-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2019 at 05:53 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wdc`
--

-- --------------------------------------------------------

--
-- Table structure for table `phone`
--

CREATE TABLE `phone` (
  `id` int(10) NOT NULL,
  `name` text NOT NULL,
  `brand` text NOT NULL,
  `price` int(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phone`
--

INSERT INTO `phone` (`id`, `name`, `brand`, `price`, `description`) VALUES
(1, 'iph6', 'apple', 1000, 'iphone 6 plus'),
(2, 'iPhone X', 'apple', 1000, 'iPhone X'),
(3, 'Samsung Galaxy A30', 'samsung', 200, 'Samsung Galaxy A30'),
(4, 'Samsung J7', 'samsung', 100, 'Samsung J7'),
(5, 'Samsung Galaxy A50', 'samsung', 100, 'Samsung Galaxy A50'),
(6, 'Nokia 1280', 'nokia', 8, 'Nokia 1280'),
(7, 'iPhone 7 plus', 'apple', 500, 'iPhone 7 plus'),
(8, 'iPhone 7 plus', 'apple', 500, 'iPhone 7 plus'),
(9, 'iPhone 5 gold', 'apple', 50, 'iPhone 5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phone`
--
ALTER TABLE `phone`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
