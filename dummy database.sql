-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2023 at 09:27 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plastic reduction`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcampaign`
--

CREATE TABLE `tblcampaign` (
  `campaignID` int(10) NOT NULL COMMENT 'This is the primary key of this relation. It contains the campaign ID of the campaign.',
  `employeeID` int(10) NOT NULL COMMENT 'This is the foreign key of this relation. It contains the employee ID of the campaign.',
  `name` varchar(30) NOT NULL COMMENT 'This contains the name of the campaign.',
  `duration` date NOT NULL COMMENT 'This contains the duration of the social campaign.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcampaign`
--

INSERT INTO `tblcampaign` (`campaignID`, `employeeID`, `name`, `duration`) VALUES
(1, 101, 'Polypropylene Paradise', '0000-00-00'),
(2, 102, 'Sustainable Stocking Stuffers', '0000-00-00'),
(3, 103, 'Plastic-Free Pledge', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tblcampaignparticipation`
--

CREATE TABLE `tblcampaignparticipation` (
  `campaignID` int(10) NOT NULL COMMENT 'This is the foreign key of this relation. It contains the campaign ID of the campaign participation.',
  `userID` int(10) NOT NULL COMMENT 'This is the foreign key of this relation. It contains the user ID of the campaign participation.',
  `startDate` date NOT NULL COMMENT 'This contains the start date of the campaign participation.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcampaignparticipation`
--

INSERT INTO `tblcampaignparticipation` (`campaignID`, `userID`, `startDate`) VALUES
(1, 2144, '2023-11-08'),
(2, 3435, '2023-12-01'),
(3, 7761, '2023-12-29');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployee`
--

CREATE TABLE `tblemployee` (
  `employeeID` int(10) NOT NULL COMMENT 'This is the primary key of this relation. This contains the ID of the\r\nEmployee.\r\n',
  `employeeFirstName` text NOT NULL COMMENT 'This contains the first name of the employee.',
  `employeeLastName` text NOT NULL COMMENT 'This contains the last name of the employee.',
  `designation` text NOT NULL COMMENT 'This contains the designation of the employee.',
  `street` varchar(50) NOT NULL COMMENT 'This contains the street name of the employee.',
  `city` text NOT NULL COMMENT 'This contains the city name of the employee.',
  `state` text NOT NULL COMMENT 'This contains the state name of the employee.',
  `zipCode` int(10) NOT NULL COMMENT 'This contains the zip code number of the employee.',
  `dateOfBirth` date NOT NULL COMMENT 'This contains the date of birth of the employee.',
  `email` varchar(20) NOT NULL COMMENT 'This contains the email of the employee.',
  `salary` int(10) NOT NULL COMMENT 'This contains the salary of the employee.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblemployee`
--

INSERT INTO `tblemployee` (`employeeID`, `employeeFirstName`, `employeeLastName`, `designation`, `street`, `city`, `state`, `zipCode`, `dateOfBirth`, `email`, `salary`) VALUES
(1234, 'John', 'Smith', 'Software Engineer', '125 Main St. Apt. 3B', 'New York', 'NY', 10001, '2013-08-06', 'abcde@companyname.co', 52000),
(5678, 'Emily', 'Jones', 'Marketing Manager', '800 Sunset Blvd. #204', 'Los Angeles', 'CA', 90210, '2013-06-12', 'abcdef@companyname.c', 45000),
(9012, 'David', 'Lee', 'Senior Accountant', '214 Oak Park Ave.', 'Chicago', 'IL', 60611, '2013-11-12', 'abcde@companyname.co', 60000);

-- --------------------------------------------------------

--
-- Table structure for table `tblemployeecontact`
--

CREATE TABLE `tblemployeecontact` (
  `employeeIDContact` int(20) NOT NULL COMMENT 'This is the primary key of this relation. It contains the unique ID of the employee contact.',
  `phoneNumber` int(10) NOT NULL COMMENT 'This contains the phone number of the employee.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblemployeecontact`
--

INSERT INTO `tblemployeecontact` (`employeeIDContact`, `phoneNumber`) VALUES
(1234, 5551234),
(5678, 5555678),
(9012, 5559012);

-- --------------------------------------------------------

--
-- Table structure for table `tblmanager`
--

CREATE TABLE `tblmanager` (
  `employeeID` int(10) NOT NULL COMMENT 'This is the foreign key of this relation. It contains the employee ID of the manager.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblmanager`
--

INSERT INTO `tblmanager` (`employeeID`) VALUES
(101),
(102),
(103);

-- --------------------------------------------------------

--
-- Table structure for table `tblrecyclingagency`
--

CREATE TABLE `tblrecyclingagency` (
  `recyclingID` int(10) NOT NULL COMMENT 'This is the primary key of this relation. It contains the recycling ID of the recycling agency.',
  `name` text NOT NULL COMMENT 'This contains the name of the recycling agency.',
  `email` varchar(20) NOT NULL COMMENT 'This contains the email of the recycling agency.',
  `street` varchar(30) NOT NULL COMMENT 'This contains the street name of the recycling agency.',
  `city` text NOT NULL COMMENT 'This contains the city name of the recycling agency.',
  `state` text NOT NULL COMMENT 'This contains the state name of the recycling agency.',
  `zip` int(10) NOT NULL COMMENT 'This contains the zip number of the recycling agency.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblrecyclingagency`
--

INSERT INTO `tblrecyclingagency` (`recyclingID`, `name`, `email`, `street`, `city`, `state`, `zip`) VALUES
(1234, 'EcoCycle Solutions', 'ecocyclesolutions@gm', '123 Main St.', 'Anytown', 'CA', 22300),
(5678, 'TerraPlast Solutions', 'terraplastsolutions@', '456 Elm St.', 'Springfield', 'IL', 12367),
(91011, 'Purecycle Ventures', 'purecycleventures@gm', '789 Maple Ave.', 'Fairview', 'TX', 23567);

-- --------------------------------------------------------

--
-- Table structure for table `tblrecyclingagencycontact`
--

CREATE TABLE `tblrecyclingagencycontact` (
  `recyclingID` int(10) NOT NULL COMMENT 'This is the foreign key of this relation. It contains the recycling ID of the recycling agency.',
  `phoneNumber` int(20) NOT NULL COMMENT 'This contains the phone number of the recycling agency'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblrecyclingagencycontact`
--

INSERT INTO `tblrecyclingagencycontact` (`recyclingID`, `phoneNumber`) VALUES
(1234, 55512377),
(5678, 7855640),
(91011, 5601612);

-- --------------------------------------------------------

--
-- Table structure for table `tblreport`
--

CREATE TABLE `tblreport` (
  `writerID` int(10) NOT NULL COMMENT 'This is the foreign key of this relation. This contains the ID of the\r\nWriter.',
  `reportID` int(10) NOT NULL COMMENT 'This is the primary key of this relation. It contains the report ID of the report.',
  `publishingDate` date NOT NULL COMMENT 'This contains the date of publishing of the report.',
  `reportTitle` text NOT NULL COMMENT 'This contains the title of the report.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblreport`
--

INSERT INTO `tblreport` (`writerID`, `reportID`, `publishingDate`, `reportTitle`) VALUES
(1345678901, 987654321, '2018-06-07', 'Piloting a Reusable Packaging Program: Lessons Learned and Next Steps'),
(987654321, 1234567890, '2021-02-18', 'Life Cycle Analysis of Single-Use Plastic Products'),
(1234567890, 1876543210, '2015-08-12', 'Identifying Plastic Hotspots in Our Supply Chain');

-- --------------------------------------------------------

--
-- Table structure for table `tblreportcitation`
--

CREATE TABLE `tblreportcitation` (
  `reportID` varchar(10) NOT NULL COMMENT 'This is the foreign key of this relation. It contains the report ID of the report.',
  `paperID` varchar(10) NOT NULL COMMENT 'This is the foreign key of this relation. It contains the paper ID of the report.',
  `citationnumber` varchar(10) NOT NULL COMMENT 'This contains the citation number of the report.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblreportcitation`
--

INSERT INTO `tblreportcitation` (`reportID`, `paperID`, `citationnumber`) VALUES
('987654321', 'w4bG72jN', '[1]'),
('1234567890', 'Q12hY8vT', '[2, 3]'),
('1876543210', 'e5k69zcA', '[4]');

-- --------------------------------------------------------

--
-- Table structure for table `tblresearcher`
--

CREATE TABLE `tblresearcher` (
  `employeeID` int(10) NOT NULL COMMENT 'This is the foreign key of this relation. It contains the employee ID of the researcher.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblresearcher`
--

INSERT INTO `tblresearcher` (`employeeID`) VALUES
(111),
(112),
(113);

-- --------------------------------------------------------

--
-- Table structure for table `tblresearchpaper`
--

CREATE TABLE `tblresearchpaper` (
  `paperID` int(10) NOT NULL COMMENT 'This is the primary key of this relation. It contains the paper ID of the research paper.',
  `papertitle` text NOT NULL COMMENT 'This contains the paper title of the research paper.',
  `publisher` text NOT NULL COMMENT 'This contains the publisher of the research paper.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblresearchpaper`
--

INSERT INTO `tblresearchpaper` (`paperID`, `papertitle`, `publisher`) VALUES
(12345, 'Biodegradable Polymers for Sustainable Packaging Applications', 'Journal of Materials Science'),
(23456, 'Microplastic Pollution in the Marine Environment: A Review of Sources, Impacts, and Mitigation Strategies', 'Environmental Science & Technology'),
(67890, 'Enhancing the Mechanical Properties of Recycled Polyethylene Terephthalate', 'Polymer Engineering & Science');

-- --------------------------------------------------------

--
-- Table structure for table `tblsocialmedia`
--

CREATE TABLE `tblsocialmedia` (
  `userID` int(10) NOT NULL COMMENT 'This is the foreign key of this relation. It contains the user ID of the social media.',
  `socialMediaEmail` varchar(30) NOT NULL COMMENT 'This contains the social media email of the social media.',
  `password` varchar(20) NOT NULL COMMENT 'This contains the password of the social media.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblsocialmedia`
--

INSERT INTO `tblsocialmedia` (`userID`, `socialMediaEmail`, `password`) VALUES
(2144, 'jsmith@email.com', 'purplerain'),
(3435, 'jdoe@email.com', 'moonwalking'),
(7761, 'mjones@email.com', 'tacos&guac');

-- --------------------------------------------------------

--
-- Table structure for table `tblstore`
--

CREATE TABLE `tblstore` (
  `storeID` int(10) NOT NULL COMMENT 'This is the primary key of this relation. It contains the store ID of the store.',
  `storeName` text NOT NULL COMMENT 'This contains the store name of the store.',
  `street` varchar(20) NOT NULL COMMENT 'This contains the street name of the store.',
  `city` text NOT NULL COMMENT 'This contains the city name of the store.',
  `state` text NOT NULL COMMENT 'This contains the state name of the store.',
  `zip` int(10) NOT NULL COMMENT 'This contains the zip number of the store.',
  `hotline` int(20) NOT NULL COMMENT 'This contains the hotline number of the store.',
  `storeURL` varchar(50) NOT NULL COMMENT 'This contains the store URL of the store.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblstore`
--

INSERT INTO `tblstore` (`storeID`, `storeName`, `street`, `city`, `state`, `zip`, `hotline`, `storeURL`) VALUES
(1234, 'Green Recyclers', '123 Main St.', 'Anytown', 'CA', 90210, 555551234, 'https://www.greenrecyclers.com'),
(5678, 'Eco Waste Solutions', '456 Elm St.', 'Springfield', 'IL', 62704, 556855678, 'https://www.ecowastedisposal.com'),
(91011, 'Recycle Right', '789 Maple Ave.', 'Fairview', 'TX', 75024, 475559101, 'https://www.recycleright.org');

-- --------------------------------------------------------

--
-- Table structure for table `tblstoreitem`
--

CREATE TABLE `tblstoreitem` (
  `storeID` int(10) NOT NULL COMMENT 'This is the foreign key of this relation. It contains the store ID of the store.',
  `itemID` int(10) NOT NULL COMMENT 'This is the primary key of this relation. It contains the item ID.',
  `itemURL` varchar(50) NOT NULL COMMENT 'This contains the item URL.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblstoreitem`
--

INSERT INTO `tblstoreitem` (`storeID`, `itemID`, `itemURL`) VALUES
(987, 12, 'www.ecofriendlystraw.com'),
(4573, 113, 'www.paperbag.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `userID` int(10) NOT NULL COMMENT 'This is the primary key of this relation. It contains the user ID of the user.',
  `userFirstName` text NOT NULL COMMENT 'This contains the first name of the user.',
  `userLastName` text NOT NULL COMMENT 'This contains the last name of the user.',
  `email` varchar(30) NOT NULL COMMENT 'This contains the email name of the user.',
  `dob` date NOT NULL COMMENT 'This contains the date of birth of the user.',
  `street` varchar(50) NOT NULL COMMENT 'This contains the street name of the user.',
  `city` text NOT NULL COMMENT 'This contains the city name of the user.',
  `state` text NOT NULL COMMENT 'This contains the state name of the user.',
  `zipCode` int(10) NOT NULL COMMENT 'This contains the zip code number of the user.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`userID`, `userFirstName`, `userLastName`, `email`, `dob`, `street`, `city`, `state`, `zipCode`) VALUES
(2144, 'Jane', 'Smith', 'jsmith@email.com', '1985-02-02', '456 Elm St', 'Anytown', 'CA', 90211),
(3435, 'John', 'Doe', 'jdoe@email.com', '1980-01-01', '123 Main St', 'Anytown', 'CA', 90210),
(7761, 'Mike', 'Jones', 'mjones@email.com', '1990-03-03', '789 Oak St', 'Anytown', 'CA', 90212);

-- --------------------------------------------------------

--
-- Table structure for table `tblusercontact`
--

CREATE TABLE `tblusercontact` (
  `contactUserID` int(10) NOT NULL COMMENT 'This is the primary key of this relation. It contains the contact user ID of the user.',
  `phoneNumber` int(10) NOT NULL COMMENT 'This contains the contact number of the user.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblusercontact`
--

INSERT INTO `tblusercontact` (`contactUserID`, `phoneNumber`) VALUES
(2144, 55512377),
(3435, 7855678),
(7761, 5597612);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcampaign`
--
ALTER TABLE `tblcampaign`
  ADD PRIMARY KEY (`campaignID`);

--
-- Indexes for table `tblemployee`
--
ALTER TABLE `tblemployee`
  ADD PRIMARY KEY (`employeeID`);

--
-- Indexes for table `tblemployeecontact`
--
ALTER TABLE `tblemployeecontact`
  ADD PRIMARY KEY (`employeeIDContact`);

--
-- Indexes for table `tblrecyclingagency`
--
ALTER TABLE `tblrecyclingagency`
  ADD PRIMARY KEY (`recyclingID`);

--
-- Indexes for table `tblreport`
--
ALTER TABLE `tblreport`
  ADD PRIMARY KEY (`reportID`);

--
-- Indexes for table `tblresearchpaper`
--
ALTER TABLE `tblresearchpaper`
  ADD PRIMARY KEY (`paperID`);

--
-- Indexes for table `tblstore`
--
ALTER TABLE `tblstore`
  ADD PRIMARY KEY (`storeID`);

--
-- Indexes for table `tblstoreitem`
--
ALTER TABLE `tblstoreitem`
  ADD PRIMARY KEY (`itemID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `tblusercontact`
--
ALTER TABLE `tblusercontact`
  ADD PRIMARY KEY (`contactUserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
