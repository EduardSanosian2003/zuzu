-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2022 at 04:39 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zuzu`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `order_id` int(11) NOT NULL,
  `dop` datetime NOT NULL DEFAULT current_timestamp(),
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`order_id`, `dop`, `name`, `email`, `address`, `zipcode`, `city`) VALUES
(180, '2022-03-24 15:53:13', 'J', 'J@J.J', 'a', 'J', 'J'),
(181, '2022-03-24 15:54:37', 'J', 'J@J.J', 'J', 'J', 'J'),
(182, '2022-03-24 15:54:39', 'J', 'J@J.J', 'J', 'J', 'J'),
(183, '2022-03-24 15:54:42', 'J', 'J@J.J', 'J', 'J', 'J'),
(184, '2022-03-24 15:54:50', 'J', 'J@J.J', 'J', 'J', 'J'),
(185, '2022-03-24 16:00:39', 'b', 'b@b.b', 'b', 'b', 'b'),
(186, '2022-03-24 16:03:51', 'b', 'b@b.b', 'b', 'b', 'b'),
(187, '2022-03-24 16:03:52', 'b', 'b@b.b', 'b', 'b', 'b'),
(188, '2022-03-24 16:25:01', 'c', 'c@c.c', 'c', 'c', 'c'),
(189, '2022-03-24 16:25:41', 'c', 'c@c.c', 'c', 'c', 'c'),
(190, '2022-03-24 16:26:56', 'c', 'c@c.c', 'c', 'c', 'c'),
(191, '2022-03-24 16:28:41', 'c', 'c@c.c', 'c', 'c', 'c'),
(192, '2022-03-24 16:28:55', 'd', 'd@d.d', 'd', 'd', 'd'),
(193, '2022-03-24 16:29:04', 'd', 'd@d.d', 'd', 'd', 'd'),
(194, '2022-03-24 16:29:12', 'd', 'd@d.d', 'd', 'd', 'd'),
(195, '2022-03-24 16:29:17', 'd', 'd@d.d', 'd', 'd', 'd'),
(196, '2022-03-24 16:29:56', 'e', 'e@e.e', 'e', 'e', 'e'),
(197, '2022-03-24 16:30:47', 'Jer', 'j@e.r', 'e', 'm', 'y'),
(198, '2022-03-24 16:32:33', 'Jer', 'j@e.r', 'e', 'm', 'y'),
(199, '2022-03-24 16:32:50', 'f', 'f@f.f', 'f', 'f', 'f'),
(200, '2022-03-24 16:33:13', 'f', 'f@f.f', 'f', 'f', 'f'),
(201, '2022-03-24 16:33:17', 'f', 'f@f.f', 'f', 'f', 'f'),
(202, '2022-03-24 16:33:17', 'f', 'f@f.f', 'f', 'f', 'f'),
(203, '2022-03-24 16:33:18', 'f', 'f@f.f', 'f', 'f', 'f'),
(204, '2022-03-24 16:33:18', 'f', 'f@f.f', 'f', 'f', 'f'),
(205, '2022-03-24 16:33:30', 'f', 'f@f.f', 'f', 'f', 'f'),
(206, '2022-03-24 16:34:08', 'f', 'f@f.f', 'f', 'f', 'f'),
(207, '2022-03-24 16:34:12', 'f', 'f@f.f', 'f', 'f', 'f'),
(208, '2022-03-24 16:34:18', 'f', 'f@f.f', 'f', 'f', 'f'),
(209, '2022-03-24 16:34:57', 'f', 'f@f.f', 'f', 'f', 'f'),
(210, '2022-03-24 16:35:01', 'f', 'f@f.f', 'f', 'f', 'f'),
(211, '2022-03-24 16:35:05', 'f', 'f@f.f', 'f', 'f', 'f'),
(212, '2022-03-24 16:35:31', 'g', 'g@g.g', 'g', 'g', 'g'),
(213, '2022-03-24 16:36:48', 'g', 'g@g.g', 'g', 'g', 'g');

-- --------------------------------------------------------

--
-- Table structure for table `sushi`
--

CREATE TABLE `sushi` (
  `id` int(255) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` int(255) NOT NULL,
  `amount` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sushi`
--

INSERT INTO `sushi` (`id`, `name`, `price`, `amount`) VALUES
(1, 'Maki', 3, 155),
(2, 'Nigiri', 4, 179),
(3, 'Oshi', 5, 157);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `dop` (`dop`);

--
-- Indexes for table `sushi`
--
ALTER TABLE `sushi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `sushi`
--
ALTER TABLE `sushi`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
