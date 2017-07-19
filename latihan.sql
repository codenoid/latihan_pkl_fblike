-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 19, 2017 at 02:50 PM
-- Server version: 5.7.18-0ubuntu0.16.04.1-log
-- PHP Version: 7.0.18-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `latihan`
--

-- --------------------------------------------------------

--
-- Table structure for table `main_posts`
--

CREATE TABLE `main_posts` (
  `id` int(25) NOT NULL,
  `wdyw` int(2) NOT NULL,
  `identity` varchar(25) NOT NULL,
  `identity1` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_posts`
--

INSERT INTO `main_posts` (`id`, `wdyw`, `identity`, `identity1`, `content`, `date`) VALUES
(2, 1, 'fulan', '', '{\"hobi\":\"coding\",\"full_name\":\"Fulannnnnn\",\"github\":\"fulan\"}', '2017-07-19 06:58:38'),
(3, 2, '2', '', '{\"content\":\"lorem ipsum\",\"feel\":\"senang\"}', '2017-07-19 07:00:15'),
(4, 1, 'arief', '', '{\"hobi\":\"coding\",\"full_name\":\"Rubi Jihantoro\",\"github\":\"codenoid\"}', '2017-07-19 07:00:15'),
(5, 3, '2', '4', '', '2017-07-19 07:00:36'),
(6, 2, '4', '', '{\"content\":\"lorem ipsum\"}', '2017-07-19 07:00:15'),
(7, 2, '2', '', '{\"content\":\"lorem ipsum\",\"feel\":\"Senang\"}', '2017-07-19 07:00:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `main_posts`
--
ALTER TABLE `main_posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `main_posts`
--
ALTER TABLE `main_posts`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
