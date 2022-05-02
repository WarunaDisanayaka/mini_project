-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2022 at 09:46 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rentcar`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2020-03-31 07:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `BrandName`) VALUES
(24, 'TOYOTA'),
(25, 'BMW'),
(26, 'SUZUKI'),
(27, 'AUDI'),
(28, 'VOLKSWAGEN'),
(29, 'NISSAN'),
(30, 'BENZ'),
(31, 'KIA'),
(32, 'HONDA'),
(33, 'MITSHUBISHI'),
(34, 'MICRO');

-- --------------------------------------------------------

--
-- Table structure for table `carbooking`
--

CREATE TABLE `carbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carbooking`
--

INSERT INTO `carbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(19, 'warunapradeep407@gmail.com', 6, '02/05/2022', '04/05/2022', 'I want this car for wedding ceremony', 1, '2022-05-01 19:11:21'),
(20, 'nimal@gmail.com', 8, '02/05/2022', '04/05/2022', 'I want this car for going to colombo', 1, '2022-05-02 06:42:11');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` float(10,2) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(5, 'SUZUKI SX4', 26, '', 1500.00, 'Petrol', 2007, 4, '278910964_3224043304497782_8397613463466423990_n.jpg', '279088554_3224042811164498_346513463336446308_n.jpg', '278826556_3224043424497770_5928201986304784192_n.jpg', '278910964_3224043304497782_8397613463466423990_n.jpg', '278826556_3224043424497770_5928201986304784192_n.jpg', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, '2022-05-01 06:21:38', NULL),
(6, 'Mercedes Benz', 30, '', 2500.00, 'Petrol', 2014, 4, '278927675_3224101294491983_3797306727368962445_n.jpg', '279052770_3224101427825303_3146162201904726933_n.jpg', '279240513_3224101401158639_8343879192087336009_n.jpg', '278982016_3224102487825197_1150650719030004852_n.jpg', '279141594_3224102417825204_6368368282985015204_n.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-05-01 06:25:26', NULL),
(8, 'KIA Rio', 31, '', 800.00, 'Petrol', 2003, 4, '277771293_3205554769679969_1039717252138174149_n.jpg', '277819369_3205554726346640_4860310608737590130_n.jpg', '277805183_3205554996346613_6579963564790891351_n.jpg', '277818428_3205555116346601_742227818146055708_n.jpg', '277818428_3205555116346601_742227818146055708_n.jpg', 1, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, '2022-05-01 06:40:52', NULL),
(9, 'HONDA Vezel', 32, '', 2400.00, 'Petrol', 2016, 4, '277366721_692145492133712_6631912772588338097_n.jpg', '277367465_692145462133715_4080578745619223615_n.jpg', '277369062_692145635467031_1578075345697291186_n.jpg', '277438269_692145455467049_7807909261789191608_n.jpg', '277437896_692145628800365_435287628806759343_n.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-05-01 06:57:58', NULL),
(10, 'TOYOTA KDH', 24, '', 2500.00, 'Diesel', 2013, 8, '138391929_3708187935913670_187784380444378682_n.jpg', '138314861_3708187952580335_7444719492491262136_n.jpg', '138684824_3708187942580336_3503429360934808712_n.jpg', '138616864_3708187945913669_6967299453846694856_n.jpg', '138314861_3708187952580335_7444719492491262136_n.jpg', 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, '2022-05-01 07:00:54', NULL),
(11, 'Audi A4', 27, 'Audi A4 TFSI', 2000.00, 'Petrol', 2012, 4, '278414730_3221077374794375_8335327903107873830_n.jpg', '278843242_3221077368127709_8414123965938319849_n.jpg', '278906155_3221078398127606_9133437233965865779_n.jpg', '278915525_3221078311460948_6294351506021092934_n.jpg', '279140780_3221078508127595_2455163416703369197_n.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-05-02 06:03:42', '2022-05-02 06:04:56'),
(12, 'BMW 520d', 25, '', 3000.00, 'Petrol', 2016, 4, '278413067_3218943081674471_2832759060211910203_n.jpg', '278541660_3218943215007791_2122001074244916968_n.jpg', '278558129_3218943195007793_6438523070209740889_n.jpg', '278912767_3218942205007892_506091675856269315_n.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-05-02 06:06:33', NULL),
(13, 'Lancer', 33, '', 1000.00, 'Petrol', 2004, 4, '270179781_1766696496853459_2772820132052597574_n.jpg', '270233611_1766696506853458_4941708313828508510_n.jpg', '270275076_1766696500186792_4569083767300994036_n.jpg', '270355771_1766696503520125_7008947458456366184_n.jpg', '', 0, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, '2022-05-02 06:20:05', NULL),
(14, 'MINI COOPER', 25, '', 2000.00, 'Petrol', 2017, 4, '247866566_1734952123361230_6312901686886105184_n.jpg', '247991298_1734952110027898_519161199740406006_n.jpg', '248566425_1734952116694564_5634194406767890040_n.jpg', '256330968_1734952120027897_1645076036646593428_n.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, '2022-05-02 06:21:57', NULL),
(15, 'MICRO Panda', 34, '', 1000.00, 'Petrol', 2012, 4, 'IMG_8299-1536x1024.jpg', 'IMG_8300-scaled.jpg', 'IMG_8301-scaled.jpg', '', '', 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, '2022-05-02 06:24:52', NULL),
(16, 'SUZUKI Celerio', 26, '', 1200.00, 'Petrol', 2013, 4, 'MG_7983-1536x1153.jpg', 'MG_7984-scaled.jpg', 'MG_7985-scaled.jpg', '', '', 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, '2022-05-02 06:27:11', NULL),
(17, 'WAGON R', 26, '', 1000.00, 'Petrol', 2016, 4, 'MG_8596-1536x1153.jpg', 'MG_8597-scaled.jpg', 'MG_8598-scaled.jpg', '', '', 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, '2022-05-02 06:29:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `phone`, `password`) VALUES
(38, 'warunapradeep407@gmail.com', 'warunapradeep407@gmail.com', 777852951, '202cb962ac59075b964b07152d234b70'),
(39, 'admin', 'warunahello@gmail.com', 777123456, '202cb962ac59075b964b07152d234b70'),
(40, 'nimal', 'nimal@gmail.com', 777356124, '3e1a2d1a3ec6b11f61dd2a387678ede6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carbooking`
--
ALTER TABLE `carbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `carbooking`
--
ALTER TABLE `carbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
