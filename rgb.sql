-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2022 at 07:06 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rgb`
--

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

CREATE TABLE `equipments` (
  `equip_id` int(20) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `equipments`
--

INSERT INTO `equipments` (`equip_id`, `brand`, `type`, `price`, `status`, `description`) VALUES
(200, 'MANFROTTO ', 'TRIPOD PRO', '50', 'Available', ''),
(400, 'NIKON', 'CAMERA', '180', 'Available', ''),
(401, 'CANON', 'CAMERA', '180', 'Not Available', ''),
(402, 'SONY', 'CAMERA', '150', 'Coming soon', ''),
(500, 'DJI MAVIC AIR', 'DRONE', '250', 'Available', ''),
(504, 'DJI MAVICPRO', 'DRONE', '200', 'Not Available', ''),
(555, 'DJI MAVIC MINI', 'DRONE', '200', 'Available', ''),
(600, 'XIOMI YI', 'ACTION CAMERA', '50', 'Available', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `passwd` varchar(40) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `lastlogin` timestamp(6) NULL DEFAULT current_timestamp(6),
  `authority` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `email`, `name`, `passwd`, `phone`, `lastlogin`, `authority`) VALUES
(1, 'lady@test.com', 'Lady ', 'D78A2E3291198B6B75625C059A414B52C3BBB8D1', '0194904957', '2021-12-04 11:14:49.539656', 1),
(18, 'eizza@foto.com', 'Eizza', 'abc123', '0124568751', '2021-12-05 13:30:15.926813', 0),
(19, 'lady@bites.com', 'lady', '32474648EA230F0192BC0046E3A0B2A0825476D1', '0123456789', '2022-01-19 14:45:04.871314', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`equip_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
