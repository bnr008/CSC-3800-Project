-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2019 at 08:17 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csc3800`
--

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `ActorID` int(254) NOT NULL,
  `ActorName` int(254) NOT NULL,
  `ActorGender` text NOT NULL COMMENT 'M or F',
  `ActorDOB` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `actsin`
--

CREATE TABLE `actsin` (
  `ActorID` varchar(254) NOT NULL DEFAULT 'Actor',
  `MovieID` varchar(254) NOT NULL DEFAULT 'Movie'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `director`
--

CREATE TABLE `director` (
  `DirectorID` varchar(254) NOT NULL,
  `DirectorName` int(254) NOT NULL,
  `DirectorGender` varchar(254) NOT NULL COMMENT 'M or F',
  `DirectorDOB` int(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `directs`
--

CREATE TABLE `directs` (
  `DirectorID` varchar(254) NOT NULL COMMENT 'Director',
  `MovieID` varchar(254) NOT NULL COMMENT 'Movie'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `MovieID` int(254) NOT NULL,
  `MovieName` int(254) NOT NULL,
  `MovieDescription` varchar(254) NOT NULL,
  `MovieRating` varchar(5) NOT NULL,
  `MovieReleaseDate` date NOT NULL,
  `MovieLength` int(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `playinginscreen`
--

CREATE TABLE `playinginscreen` (
  `ScreenID` varchar(254) NOT NULL,
  `TheaterID` varchar(254) NOT NULL,
  `MovieID` varchar(254) NOT NULL,
  `StartTime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `PositionID` varchar(254) NOT NULL,
  `PositionName` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `screen`
--

CREATE TABLE `screen` (
  `ScreenID` varchar(254) NOT NULL,
  `TheaterID` varchar(254) NOT NULL,
  `ScreenName` varchar(254) NOT NULL,
  `ScreenSeatingCapacity` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `StaffID` varchar(254) NOT NULL,
  `StaffName` varchar(254) NOT NULL,
  `StaffStreetAddress` varchar(254) NOT NULL,
  `StaffCity` varchar(254) NOT NULL,
  `StaffState` varchar(254) NOT NULL,
  `StaffZipCode` varchar(254) NOT NULL,
  `StaffPhoneNumber` varchar(254) NOT NULL,
  `StaffEmail` varchar(254) NOT NULL,
  `Gender` varchar(254) NOT NULL,
  `SSN` varchar(254) NOT NULL,
  `DOB` int(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staffposition`
--

CREATE TABLE `staffposition` (
  `StaffID` varchar(254) NOT NULL COMMENT 'Staff',
  `PositionID` varchar(254) NOT NULL COMMENT 'Position',
  `TheaterID` varchar(254) NOT NULL COMMENT 'Theater',
  `StartingDate` date NOT NULL,
  `EndingDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staffsalary`
--

CREATE TABLE `staffsalary` (
  `StaffID` varchar(254) NOT NULL,
  `PositionID` varchar(254) NOT NULL,
  `Salary` int(254) NOT NULL,
  `EffectiveDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `theater`
--

CREATE TABLE `theater` (
  `TheaterID` varchar(254) NOT NULL,
  `TheaterName` varchar(254) NOT NULL,
  `StreetAddress` varchar(254) NOT NULL,
  `City` varchar(254) NOT NULL,
  `State` varchar(254) NOT NULL,
  `ZipCode` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `TicketID` varchar(254) NOT NULL,
  `TheaterID` varchar(254) NOT NULL,
  `ScreenID` varchar(254) NOT NULL,
  `StartTime` varchar(254) NOT NULL,
  `Price` int(254) NOT NULL,
  `StaffID` varchar(254) NOT NULL,
  `SellingTimestamp` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`ActorID`);

--
-- Indexes for table `actsin`
--
ALTER TABLE `actsin`
  ADD PRIMARY KEY (`ActorID`);

--
-- Indexes for table `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`DirectorID`);

--
-- Indexes for table `directs`
--
ALTER TABLE `directs`
  ADD PRIMARY KEY (`DirectorID`,`MovieID`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`MovieID`);

--
-- Indexes for table `playinginscreen`
--
ALTER TABLE `playinginscreen`
  ADD PRIMARY KEY (`ScreenID`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`PositionID`);

--
-- Indexes for table `screen`
--
ALTER TABLE `screen`
  ADD PRIMARY KEY (`ScreenID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`StaffID`);

--
-- Indexes for table `staffposition`
--
ALTER TABLE `staffposition`
  ADD PRIMARY KEY (`StaffID`,`PositionID`,`TheaterID`,`StartingDate`);

--
-- Indexes for table `theater`
--
ALTER TABLE `theater`
  ADD PRIMARY KEY (`TheaterID`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`TicketID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
