-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2023 at 06:48 AM
-- Server version: 5.5.60
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_reservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `guest_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `nic` varchar(13) NOT NULL,
  `address` varchar(100) NOT NULL,
  `address2` varchar(500) NOT NULL,
  `address3` varchar(500) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telephone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`guest_id`, `first_name`, `last_name`, `nic`, `address`, `address2`, `address3`, `gender`, `password`, `email`, `telephone`) VALUES
(1, 'bbb', 'bbbb', '12', 'sdbb', 'bbb', 'bbb', 'female', 'bb', 'sdds@bbb', 712457),
(4, 'yasith', 'vidusara', '123', 'qqq', 'qqqq', 'qqq', 'male', 'bbbb', 'bbbb', 1234),
(6, 'asd', 'asd', '123', 'qwe', 'qwe', 'qwe', 'female', 'qqq', 'qqq', 123),
(7, 'qqq', 'qqq', '123', 'sad', 'sad', 'sad', 'male', 'qq', 'qq', 123),
(9, 'thima', 'dewnethmi', '123', 'asd', 'asd', 'asd', 'female', '123', 'thima', 12321313);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(10) NOT NULL,
  `customerID` varchar(200) NOT NULL,
  `customerName` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `comment` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `customerID`, `customerName`, `subject`, `comment`) VALUES
(1, 'sdf', 'sdf', 'sdf', 'sdf'),
(2, 'dadsad', 'asdasdas', 'asdasdas', 'asdsadasdadsadadasdadadasdadaaaaa'),
(3, '1', 'qwe', 'qwewqe', 'asdasdadadad'),
(5, '3', 'aaa', 'aaa', 'asdsad');

-- --------------------------------------------------------

--
-- Table structure for table `hall_reservation`
--

CREATE TABLE `hall_reservation` (
  `reservation_id` int(10) NOT NULL,
  `hall_id` varchar(100) NOT NULL,
  `guestID` varchar(10) NOT NULL,
  `guest_count` varchar(200) NOT NULL,
  `event_date` date NOT NULL,
  `special_requests` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hall_reservation`
--

INSERT INTO `hall_reservation` (`reservation_id`, `hall_id`, `guestID`, `guest_count`, `event_date`, `special_requests`) VALUES
(1, '1', '', '234', '2023-10-19', 'df'),
(2, '1', '', '123', '2023-10-06', 'weqe'),
(8, '1', '3', '21', '2023-10-21', 'tesing tesing ');

-- --------------------------------------------------------

--
-- Table structure for table `hall_tbl`
--

CREATE TABLE `hall_tbl` (
  `hallID` int(11) NOT NULL,
  `hall_name` varchar(20) NOT NULL,
  `seating_capacity` int(11) NOT NULL,
  `dinning` varchar(6) NOT NULL,
  `air_condition` varchar(6) NOT NULL,
  `status` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall_tbl`
--

INSERT INTO `hall_tbl` (`hallID`, `hall_name`, `seating_capacity`, `dinning`, `air_condition`, `status`) VALUES
(1, 'harrisson ', 45, 'true', 'true', 'true'),
(2, 'kado', 34, 'true', 'true', 'true'),
(3, 'plaza', 43, 'true', 'true', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `room_reservation`
--

CREATE TABLE `room_reservation` (
  `reservation_id` int(10) NOT NULL,
  `roomID` varchar(11) NOT NULL,
  `guestID` varchar(5) NOT NULL,
  `check_in_date` date NOT NULL,
  `check_out_date` date NOT NULL,
  `number_of_adults` int(11) NOT NULL,
  `number_of_children` int(11) NOT NULL,
  `special_requests` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_reservation`
--

INSERT INTO `room_reservation` (`reservation_id`, `roomID`, `guestID`, `check_in_date`, `check_out_date`, `number_of_adults`, `number_of_children`, `special_requests`) VALUES
(2, '1', '', '2023-10-12', '2023-10-13', 3, 3, 'asdasd'),
(3, '1', '', '2023-10-19', '2023-10-20', 1, 1, 'sda'),
(11, '3', '5', '2023-10-20', '2023-10-20', 1, 1, 'werewr');

-- --------------------------------------------------------

--
-- Table structure for table `room_tbl`
--

CREATE TABLE `room_tbl` (
  `roomID` int(11) NOT NULL,
  `room_type` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `bed_type` varchar(20) NOT NULL,
  `air_condition` varchar(20) NOT NULL,
  `view` varchar(20) NOT NULL,
  `in_room_dining` varchar(20) NOT NULL,
  `room_status` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_tbl`
--

INSERT INTO `room_tbl` (`roomID`, `room_type`, `price`, `bed_type`, `air_condition`, `view`, `in_room_dining`, `room_status`) VALUES
(1, 'Luxury', 50000, 'double', 'true', 'sea view', 'true', 'true'),
(2, 'Luxury', 50000, 'master', 'true', 'sea view', 'true', 'true'),
(3, 'Semi Luxury', 5000, 'double', 'true', 'sea view', 'true', 'true'),
(4, 'Luxury', 8000, 'master', 'true', 'sea view', 'true', 'true');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`guest_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `hall_reservation`
--
ALTER TABLE `hall_reservation`
  ADD PRIMARY KEY (`reservation_id`);

--
-- Indexes for table `hall_tbl`
--
ALTER TABLE `hall_tbl`
  ADD PRIMARY KEY (`hallID`);

--
-- Indexes for table `room_reservation`
--
ALTER TABLE `room_reservation`
  ADD PRIMARY KEY (`reservation_id`);

--
-- Indexes for table `room_tbl`
--
ALTER TABLE `room_tbl`
  ADD PRIMARY KEY (`roomID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `guest_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `hall_reservation`
--
ALTER TABLE `hall_reservation`
  MODIFY `reservation_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `hall_tbl`
--
ALTER TABLE `hall_tbl`
  MODIFY `hallID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `room_reservation`
--
ALTER TABLE `room_reservation`
  MODIFY `reservation_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `room_tbl`
--
ALTER TABLE `room_tbl`
  MODIFY `roomID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
