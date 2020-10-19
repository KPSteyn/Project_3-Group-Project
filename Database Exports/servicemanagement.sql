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
-- Database: `servicemanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `bicycle`
--

CREATE TABLE `bicycle` (
  `bicycleID` int(12) NOT NULL,
  `clientID` int(12) NOT NULL,
  `component` varchar(120) DEFAULT NULL,
  `make` varchar(120) DEFAULT NULL,
  `model` varchar(120) DEFAULT NULL,
  `comments` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bicycle`
--

INSERT INTO `bicycle` (`bicycleID`, `clientID`, `component`, `make`, `model`, `comments`) VALUES
(1, 1, NULL, NULL, NULL, NULL),
(2, 2, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brakes`
--

CREATE TABLE `brakes` (
  `brakesID` int(12) NOT NULL,
  `bicycleID` int(12) NOT NULL,
  `caliperMake` varchar(60) DEFAULT NULL,
  `frontRotorSize` double(8,2) DEFAULT NULL,
  `rearRotorSize` double(8,2) DEFAULT NULL,
  `caliperComments` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `clientID` int(12) NOT NULL,
  `clientFullname` varchar(120) NOT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  `emailAddress` varchar(80) DEFAULT NULL,
  `clientWeight` double(8,2) DEFAULT NULL,
  `event` varchar(200) DEFAULT NULL,
  `raceNumber` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`clientID`, `clientFullname`, `phoneNumber`, `emailAddress`, `clientWeight`, `event`, `raceNumber`) VALUES
(1, 'Default Client', '012 3456789', 'default@client.com', 100.00, 'Default Event', 'Default Race Number'),
(2, 'Herbie Hancock', '012 9449523', 'hhancock@gmail.com', 109.20, 'Nissan Trailseeker #2 Buffelsdrift 6 September 2020', '12 d'),
(3, 'John Coltrane', '012 9632229', 'jcoltrane@gmail.com', 93.70, 'Nissan Trailseeker #2 Buffelsdrift 6 September 2020', '12 e'),
(4, 'Miles Davis', '012 9211129', 'mdavis@gmail.com', 90.50, 'Rand Water Race for Victory Virtual Ride 7 September 2020', '12 d'),
(5, 'Hugh-Martin Roux', '0610035449', 'hughymartin21@gmail.com', 0.00, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `drivetrain`
--

CREATE TABLE `drivetrain` (
  `driveTrainID` int(12) NOT NULL,
  `bicycleID` int(12) NOT NULL,
  `cassetteMake` varchar(60) DEFAULT NULL,
  `cassetteSpd` int(3) DEFAULT NULL,
  `cassetteComments` varchar(120) DEFAULT NULL,
  `chainMake` varchar(60) DEFAULT NULL,
  `chainSpd` int(3) DEFAULT NULL,
  `chainComments` varchar(120) DEFAULT NULL,
  `crankSetMakeAndLength` varchar(150) DEFAULT NULL,
  `crankSetModel` varchar(60) DEFAULT NULL,
  `crankSetComments` varchar(120) DEFAULT NULL,
  `shiftersMake` varchar(150) DEFAULT NULL,
  `shiftersModel` varchar(60) DEFAULT NULL,
  `shiftersComments` varchar(120) DEFAULT NULL,
  `frontDerailleurMake` varchar(150) DEFAULT NULL,
  `frontDerailleurModel` varchar(60) DEFAULT NULL,
  `frontDerailleurComments` varchar(120) DEFAULT NULL,
  `rearDerailleurMake` varchar(150) DEFAULT NULL,
  `rearDerailleurModel` varchar(60) DEFAULT NULL,
  `rearDerailleurComments` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `forumpost`
--

CREATE TABLE `forumpost` (
  `postID` int(12) NOT NULL,
  `postedBy` int(12) NOT NULL,
  `postedTo` int(12) NOT NULL,
  `postContent` varchar(10000) NOT NULL,
  `postedOn` date NOT NULL,
  `postedAt` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `frame`
--

CREATE TABLE `frame` (
  `frameID` int(12) NOT NULL,
  `bicycleID` int(12) NOT NULL,
  `hardtailOrDualSus` varchar(20) DEFAULT NULL,
  `frameMake` varchar(60) DEFAULT NULL,
  `frameModel` varchar(60) DEFAULT NULL,
  `frameComments` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobcard`
--

CREATE TABLE `jobcard` (
  `cardID` int(12) NOT NULL,
  `quoteID` int(12) DEFAULT NULL,
  `jobNumber` int(12) DEFAULT NULL,
  `invoiceNumber` int(12) DEFAULT NULL,
  `mechanicAssigned` int(12) DEFAULT NULL,
  `bikeID` int(12) DEFAULT NULL,
  `bookedBy` varchar(120) DEFAULT NULL,
  `briefBikeDescription` varchar(120) DEFAULT NULL,
  `completed` tinyint(1) DEFAULT 0,
  `admin` varchar(120) DEFAULT NULL,
  `dateCreated` date NOT NULL,
  `timeCreated` time NOT NULL,
  `totalPrice` double(15,2) DEFAULT 0.00,
  `totalMechanicCompensation` double(15,2) DEFAULT 0.00,
  `updatesForMechanic` tinyint(1) DEFAULT 0,
  `updatesForManic` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobcard`
--

INSERT INTO `jobcard` (`cardID`, `quoteID`, `jobNumber`, `invoiceNumber`, `mechanicAssigned`, `bikeID`, `bookedBy`, `briefBikeDescription`, `completed`, `admin`, `dateCreated`, `timeCreated`, `totalPrice`, `totalMechanicCompensation`, `updatesForMechanic`, `updatesForManic`) VALUES
(1, 3, 101, 102, 1, 1, 'Michael Macho', '26ER Small Schwinn MTB - Lockout Fork - Hydraulic disk brakes - punctured front tire', 0, 'Admin Adam ', '2020-09-07', '18:00:00', 0.00, 0.00, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `miscellaneous`
--

CREATE TABLE `miscellaneous` (
  `miscelaniousID` int(12) NOT NULL,
  `bicycleID` int(12) NOT NULL,
  `handleBarMake` varchar(60) DEFAULT NULL,
  `handleBarModel` varchar(60) DEFAULT NULL,
  `handleBarComments` varchar(120) DEFAULT NULL,
  `stemMake` varchar(60) DEFAULT NULL,
  `stemLentgh` double(8,2) DEFAULT NULL,
  `stemComments` varchar(120) DEFAULT NULL,
  `saddleMake` varchar(60) DEFAULT NULL,
  `saddleModel` varchar(60) DEFAULT NULL,
  `saddleComments` varchar(120) DEFAULT NULL,
  `seatPostMake` varchar(60) DEFAULT NULL,
  `seatPostDiameter` double(8,2) DEFAULT NULL,
  `seatPostComments` varchar(120) DEFAULT NULL,
  `preferedLubeMake` varchar(60) DEFAULT NULL,
  `preferedLubeModel` varchar(60) DEFAULT NULL,
  `preferedLubeComments` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quote`
--

CREATE TABLE `quote` (
  `quoteID` int(12) NOT NULL,
  `producedOn` date NOT NULL,
  `producedAt` time NOT NULL,
  `clientID` int(12) DEFAULT NULL,
  `totalEstimatedPrice` double(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quote`
--

INSERT INTO `quote` (`quoteID`, `producedOn`, `producedAt`, `clientID`, `totalEstimatedPrice`) VALUES
(1, '2020-09-02', '14:11:00', 1, 9452.12),
(2, '2020-09-01', '13:11:00', 1, 2452.00),
(3, '2020-09-06', '13:11:00', 1, 2452.00);

-- --------------------------------------------------------

--
-- Table structure for table `quoteservices`
--

CREATE TABLE `quoteservices` (
  `quoteServiceID` int(15) NOT NULL,
  `serviceDescription` varchar(300) NOT NULL,
  `estimatedPrice` double(15,2) DEFAULT NULL,
  `quoteID` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `suspension`
--

CREATE TABLE `suspension` (
  `suspensionID` int(12) NOT NULL,
  `bicycleID` int(12) NOT NULL,
  `frontForkMake` varchar(60) DEFAULT NULL,
  `frontForkModel` varchar(60) DEFAULT NULL,
  `frontForkComments` varchar(120) DEFAULT NULL,
  `rearShockMake` varchar(60) DEFAULT NULL,
  `rearShockModel` varchar(60) DEFAULT NULL,
  `rearShockComments` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `taskID` int(15) NOT NULL,
  `cardID` int(12) NOT NULL,
  `stockUsedAndLabourCharge` varchar(500) DEFAULT NULL,
  `quantity` int(3) DEFAULT NULL,
  `costToCustomer` double(15,2) DEFAULT NULL,
  `quantitativeTotalCostToCustomer` double(15,2) DEFAULT 0.00,
  `mechanicCompensation` double(15,2) DEFAULT NULL,
  `quantitativeTotalMechanicCompensation` double(15,2) DEFAULT 0.00,
  `code` varchar(9) DEFAULT NULL,
  `completed` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`taskID`, `cardID`, `stockUsedAndLabourCharge`, `quantity`, `costToCustomer`, `quantitativeTotalCostToCustomer`, `mechanicCompensation`, `quantitativeTotalMechanicCompensation`, `code`, `completed`) VALUES
(1, 1, 'Bike Inspection', 1, 50.00, 0.00, 30.00, 0.00, '015', 0),
(2, 1, 'Schwalbe Rocket Ron Evo 29 x 2.25 Tyre  replacement', 1, 1000.00, 0.00, 100.00, 0.00, '158', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(12) NOT NULL,
  `emailAddress` varchar(80) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `secondName` varchar(100) NOT NULL,
  `userType` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `emailAddress`, `username`, `password`, `firstName`, `secondName`, `userType`) VALUES
(1, 'default@mechanic.com', 'defaultMechanic', 'password', 'Default', 'Mechanic', 'mechanic'),
(2, 'machomechanic2@yahoo.com', 'mechmike', 'passwordM12', 'Michael', 'Macho', 'mechanic'),
(4, 'owen@gmail.com', 'admin', 'password', 'Owen', 'Ownerman', 'administrator'),
(5, 'bobby21@gmail.com', 'BobMurray', 'admin', 'BoB', 'Murray', 'manager');

-- --------------------------------------------------------

--
-- Table structure for table `wheelset`
--

CREATE TABLE `wheelset` (
  `wheelSetID` int(12) NOT NULL,
  `bicycleID` int(12) NOT NULL,
  `frontHubMake` varchar(60) DEFAULT NULL,
  `frontHubModel` varchar(60) DEFAULT NULL,
  `frontHubComments` varchar(120) DEFAULT NULL,
  `rearHubMake` varchar(60) DEFAULT NULL,
  `rearHubModel` varchar(60) DEFAULT NULL,
  `rearHubComments` varchar(120) DEFAULT NULL,
  `rimsMake` varchar(60) DEFAULT NULL,
  `rimsModel` varchar(60) DEFAULT NULL,
  `rimsComments` varchar(120) DEFAULT NULL,
  `rimsNumberOfSpokes` int(6) DEFAULT NULL,
  `frontTyreMake` varchar(60) DEFAULT NULL,
  `frontTyreTubeless` tinyint(1) DEFAULT NULL,
  `frontTyrePressure` double(10,2) DEFAULT NULL,
  `rearTyreMake` varchar(60) DEFAULT NULL,
  `rearTyreTubeless` tinyint(1) DEFAULT NULL,
  `rearTyrePressure` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bicycle`
--
ALTER TABLE `bicycle`
  ADD PRIMARY KEY (`bicycleID`),
  ADD KEY `clientID` (`clientID`);

--
-- Indexes for table `brakes`
--
ALTER TABLE `brakes`
  ADD PRIMARY KEY (`brakesID`),
  ADD KEY `bicycleID` (`bicycleID`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`clientID`);

--
-- Indexes for table `drivetrain`
--
ALTER TABLE `drivetrain`
  ADD PRIMARY KEY (`driveTrainID`),
  ADD KEY `bicycleID` (`bicycleID`);

--
-- Indexes for table `forumpost`
--
ALTER TABLE `forumpost`
  ADD PRIMARY KEY (`postID`),
  ADD KEY `postedBy` (`postedBy`),
  ADD KEY `postedTo` (`postedTo`);

--
-- Indexes for table `frame`
--
ALTER TABLE `frame`
  ADD PRIMARY KEY (`frameID`),
  ADD KEY `bicycleID` (`bicycleID`);

--
-- Indexes for table `jobcard`
--
ALTER TABLE `jobcard`
  ADD PRIMARY KEY (`cardID`),
  ADD KEY `quoteID` (`quoteID`),
  ADD KEY `mechanicAssigned` (`mechanicAssigned`),
  ADD KEY `bikeID` (`bikeID`);

--
-- Indexes for table `miscellaneous`
--
ALTER TABLE `miscellaneous`
  ADD PRIMARY KEY (`miscelaniousID`),
  ADD KEY `bicycleID` (`bicycleID`);

--
-- Indexes for table `quote`
--
ALTER TABLE `quote`
  ADD PRIMARY KEY (`quoteID`),
  ADD KEY `clientID` (`clientID`);

--
-- Indexes for table `quoteservices`
--
ALTER TABLE `quoteservices`
  ADD PRIMARY KEY (`quoteServiceID`),
  ADD KEY `quoteID` (`quoteID`);

--
-- Indexes for table `suspension`
--
ALTER TABLE `suspension`
  ADD PRIMARY KEY (`suspensionID`),
  ADD KEY `bicycleID` (`bicycleID`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`taskID`),
  ADD KEY `cardID` (`cardID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `wheelset`
--
ALTER TABLE `wheelset`
  ADD PRIMARY KEY (`wheelSetID`),
  ADD KEY `bicycleID` (`bicycleID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bicycle`
--
ALTER TABLE `bicycle`
  MODIFY `bicycleID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brakes`
--
ALTER TABLE `brakes`
  MODIFY `brakesID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `clientID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `drivetrain`
--
ALTER TABLE `drivetrain`
  MODIFY `driveTrainID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forumpost`
--
ALTER TABLE `forumpost`
  MODIFY `postID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frame`
--
ALTER TABLE `frame`
  MODIFY `frameID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobcard`
--
ALTER TABLE `jobcard`
  MODIFY `cardID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `miscellaneous`
--
ALTER TABLE `miscellaneous`
  MODIFY `miscelaniousID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quote`
--
ALTER TABLE `quote`
  MODIFY `quoteID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quoteservices`
--
ALTER TABLE `quoteservices`
  MODIFY `quoteServiceID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suspension`
--
ALTER TABLE `suspension`
  MODIFY `suspensionID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `taskID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wheelset`
--
ALTER TABLE `wheelset`
  MODIFY `wheelSetID` int(12) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bicycle`
--
ALTER TABLE `bicycle`
  ADD CONSTRAINT `bicycle_ibfk_1` FOREIGN KEY (`clientID`) REFERENCES `client` (`clientID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `brakes`
--
ALTER TABLE `brakes`
  ADD CONSTRAINT `brakes_ibfk_1` FOREIGN KEY (`bicycleID`) REFERENCES `bicycle` (`bicycleID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `drivetrain`
--
ALTER TABLE `drivetrain`
  ADD CONSTRAINT `drivetrain_ibfk_1` FOREIGN KEY (`bicycleID`) REFERENCES `bicycle` (`bicycleID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `forumpost`
--
ALTER TABLE `forumpost`
  ADD CONSTRAINT `forumpost_ibfk_1` FOREIGN KEY (`postedBy`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `forumpost_ibfk_2` FOREIGN KEY (`postedTo`) REFERENCES `jobcard` (`cardID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `frame`
--
ALTER TABLE `frame`
  ADD CONSTRAINT `frame_ibfk_1` FOREIGN KEY (`bicycleID`) REFERENCES `bicycle` (`bicycleID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jobcard`
--
ALTER TABLE `jobcard`
  ADD CONSTRAINT `jobcard_ibfk_1` FOREIGN KEY (`quoteID`) REFERENCES `quote` (`quoteID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `jobcard_ibfk_2` FOREIGN KEY (`mechanicAssigned`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jobcard_ibfk_3` FOREIGN KEY (`bikeID`) REFERENCES `bicycle` (`bicycleID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `miscellaneous`
--
ALTER TABLE `miscellaneous`
  ADD CONSTRAINT `miscellaneous_ibfk_1` FOREIGN KEY (`bicycleID`) REFERENCES `bicycle` (`bicycleID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quote`
--
ALTER TABLE `quote`
  ADD CONSTRAINT `quote_ibfk_1` FOREIGN KEY (`clientID`) REFERENCES `client` (`clientID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quoteservices`
--
ALTER TABLE `quoteservices`
  ADD CONSTRAINT `quoteservices_ibfk_1` FOREIGN KEY (`quoteID`) REFERENCES `quote` (`quoteID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `suspension`
--
ALTER TABLE `suspension`
  ADD CONSTRAINT `suspension_ibfk_1` FOREIGN KEY (`bicycleID`) REFERENCES `bicycle` (`bicycleID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `task_ibfk_1` FOREIGN KEY (`cardID`) REFERENCES `jobcard` (`cardID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wheelset`
--
ALTER TABLE `wheelset`
  ADD CONSTRAINT `wheelset_ibfk_1` FOREIGN KEY (`bicycleID`) REFERENCES `bicycle` (`bicycleID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
