-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2018 at 03:49 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehicle_rental_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrators`
--

CREATE TABLE `administrators` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrators`
--

INSERT INTO `administrators` (`id`, `name`, `username`, `email`, `password`) VALUES
(1, 'Kavishka Lelwala', 'lella', 'lella@hotmail.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `from_date` varchar(50) NOT NULL,
  `to_date` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact_number` varchar(10) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `brand` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `no_of_seats` varchar(10) NOT NULL,
  `insurance_coverage` varchar(20) NOT NULL,
  `rate` varchar(10) NOT NULL,
  `booked_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `from_date`, `to_date`, `name`, `contact_number`, `type`, `brand`, `model`, `color`, `no_of_seats`, `insurance_coverage`, `rate`, `booked_date`) VALUES
(1, '2018-05-21', '2018-05-22', 'Kavishka', '7777777777', 'van', 'Toyota', 'Hiace', 'White', '8', 'full', '8000', 'Mon May 21 12:15:17 IST 2018'),
(2, '2018-05-23', '2018-05-25', 'Chanura', '4444444444', 'van', 'Toyota', 'Hiace', 'White', '8', 'full', '8000', 'Mon May 21 12:26:18 IST 2018'),
(3, '2018-05-21', '2018-05-24', 'ishan maduranga', '0770887584', 'car', 'Benz', 's60', 'Gray', '5', 'full', '12400', 'Mon May 21 17:27:00 IST 2018'),
(4, '2018-05-23', '2018-05-26', 'Chanura', '0768989456', 'van', 'Toyota', 'Hiace', 'Silver', '12', 'full', '10000', 'Mon May 21 18:44:05 IST 2018');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `bday` varchar(20) NOT NULL,
  `telephone` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `address`, `sex`, `bday`, `telephone`, `username`, `password`) VALUES
(1, 'Lella', 'lella@gmail.com', 'Colombo', 'male', '2018-05-15', '1234560000', '0', '111111'),
(2, 'aguilar', 'aguilar@ubisoft.com', 'New Orleans', 'male', '2018-05-24', '1111111111', '0', 'qwerty'),
(3, 'Kasun', 'kasun@hotmail.com', 'Kandy', 'male', '1996-08-21', '000000000', 'aguilar', 'qwerty'),
(4, 'Ishan Maduranga', 'ishanmaduranga@gmail.com', 'c14/athumalpitiya,polonnaruwa', 'female', '1996-07-15', '0772306180', 'ishanm', 'ishan123'),
(5, 'Tom', 'cat@tomcat.com', 'USA', 'male', '1990-02-28', '1111111111', 'toma', '123456'),
(6, 'saasf', 'sdf@sdf.com', 'colombo', 'male', '2018-05-16', '1111111111', 'asdasd', '123456'),
(7, 'saasf', 'sdf@sdf.com', 'colombo', 'male', '2018-05-16', '1111111111', 'asdasd', '123456'),
(8, 'saasf', 'sdf@sdf.com', 'colombo', 'male', '2018-05-16', '1111111111', 'asdasd', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `brand` varchar(50) NOT NULL,
  `model` varchar(100) NOT NULL,
  `year` varchar(5) NOT NULL,
  `reg_no` varchar(20) NOT NULL,
  `color` varchar(30) NOT NULL,
  `no_of_seats` varchar(10) NOT NULL,
  `chassis_no` varchar(100) NOT NULL,
  `engine_no` varchar(100) NOT NULL,
  `mileage` varchar(150) NOT NULL,
  `insuarance_coverage` varchar(200) NOT NULL,
  `rate` varchar(50) NOT NULL,
  `image_path` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `type`, `brand`, `model`, `year`, `reg_no`, `color`, `no_of_seats`, `chassis_no`, `engine_no`, `mileage`, `insuarance_coverage`, `rate`, `image_path`) VALUES
(1, 'car', 'Benz', 's60', '2017', 'CZZ-2018', 'Gray', '5', 'adad224', 'f21123', '12600', 'full', '12400', NULL),
(4, 'van', 'Toyota', 'Hiace', '2016', 'PH-6651', 'Silver', '12', 'f2342342', 'e21321334', '20000', 'full', '10000', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrators`
--
ALTER TABLE `administrators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrators`
--
ALTER TABLE `administrators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
