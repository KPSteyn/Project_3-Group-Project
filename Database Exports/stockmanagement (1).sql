-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2020 at 05:03 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stockmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brandID` int(11) NOT NULL,
  `brandName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brandID`, `brandName`) VALUES
(1, 'Avalanche'),
(2, 'BlackBurn'),
(8, 'Test'),
(10, 'Hughy');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `catID` int(11) NOT NULL,
  `catName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`catID`, `catName`) VALUES
(1, 'Bicyles'),
(2, 'Clothing'),
(6, 'Accessories'),
(8, 'Stickers');

-- --------------------------------------------------------

--
-- Table structure for table `stockitem`
--

CREATE TABLE `stockitem` (
  `stockID` int(12) NOT NULL,
  `stockName` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `costPrice` double(15,2) NOT NULL,
  `sellPrice` double(15,2) NOT NULL,
  `stockCount` int(6) DEFAULT NULL,
  `category` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stockitem`
--

INSERT INTO `stockitem` (`stockID`, `stockName`, `description`, `brand`, `costPrice`, `sellPrice`, `stockCount`, `category`) VALUES
(2, 'Local 20 Rear Light', 'Super-bright rear light.\r\n\r\nTool free silicone seatpost mount.\r\n\r\nClips to clothing and bags.\r\n\r\n20 Lumens\r\n\r\n40hrs high; 70hrs steady/flash mode; \r\n\r\n86hrs strobe mode\r\n\r\nLifetime warranty', 'BlackBurn', 100.00, 200.00, 15, 'Accessories'),
(3, 'GT Bib Short', 'Train, race, and simply ride in total comfort with the MILLE GT Bib Shorts’ custom fabric blend and celebrated insert design. They’ve been treated with our proven Type.429 Titanio material, which is a durable, lightly compressive textile with high elasticity, ensuring a comfortable and consistent hold on your legs while pedaling. This workhorse textile, mated with a regularFit that leans more in the direction of comfort versus race, is what defines MILLE as the go-to ASSOS shorts so many cyclist', 'Assos Mille', 1578.99, 2999.99, 10, 'Clothing'),
(4, 'Baggy Shorts', 'Baggy shorts for increased efficiency in windy conditions', 'Avalanche', 555.99, 849.99, 12, 'Clothing');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brandID`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`catID`);

--
-- Indexes for table `stockitem`
--
ALTER TABLE `stockitem`
  ADD PRIMARY KEY (`stockID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brandID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `catID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `stockitem`
--
ALTER TABLE `stockitem`
  MODIFY `stockID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
