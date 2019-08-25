-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2019 at 02:06 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admininfo`
--

CREATE TABLE `admininfo` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admininfo`
--

INSERT INTO `admininfo` (`username`, `password`, `email`, `fname`, `phone`, `type`) VALUES
('1', 'rupesh', 'rupesh@gmail.com', 'Rupesh Dewang', '988766363', 'teacher'),
('2', 'parth', 'parthsir@gmail.com', 'Parth Sir', '9198213767', 'teacher'),
('2017CA02', 'tushar', 'tushar@gmail.com', 'Tushar Garg', '9711919938', 'student'),
('2017CA03', 'shivam', 'shivam@gmail.com', 'Shivam Singh', '9559893542', 'student'),
('2017CA24', 'pravesh', 'rawatpravesh0016@gmail.com', 'Pravesh Rawat', '0992642003', 'student'),
('2017CA61', 'nitish', 'nitish@gmail.com', 'Nitish Sihmar', '7838145866', 'student'),
('2017CA74', 'gaurav', 'gauravmishra@gmail.com', 'Gaurav Mishra', '0992642003', 'student'),
('admin', 'admin', 'admin@gmail.com', 'admin', '2147483647', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `stat_id` varchar(20) NOT NULL,
  `course` varchar(20) NOT NULL,
  `st_status` varchar(10) NOT NULL,
  `stat_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`stat_id`, `course`, `st_status`, `stat_date`) VALUES
('2017CA02', 'algo', 'Present', '2018-11-22'),
('2017CA03', 'algo', 'Present', '2018-11-22'),
('2017CA24', 'algo', 'Present', '2018-11-22'),
('2017CA61', 'algo', 'Absent', '2018-11-22'),
('2017CA74', 'algo', 'Present', '2018-11-22'),
('2017CA02', 'dbms', 'Absent', '2018-11-22'),
('2017CA03', 'dbms', 'Present', '2018-11-22'),
('2017CA24', 'dbms', 'Present', '2018-11-22'),
('2017CA61', 'dbms', 'Present', '2018-11-22'),
('2017CA74', 'dbms', 'Present', '2018-11-22'),
('2017CA02', 'algo', 'Present', '2018-11-30'),
('2017CA03', 'algo', 'Present', '2018-11-30'),
('2017CA24', 'algo', 'Present', '2018-11-30'),
('2017CA61', 'algo', 'Present', '2018-11-30'),
('2017CA74', 'algo', 'Present', '2018-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `st_id` varchar(20) NOT NULL,
  `st_name` varchar(20) NOT NULL,
  `st_dept` varchar(20) NOT NULL,
  `st_batch` int(4) NOT NULL,
  `st_sem` int(11) NOT NULL,
  `st_email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`st_id`, `st_name`, `st_dept`, `st_batch`, `st_sem`, `st_email`) VALUES
('2017CA02', 'Tushar Garg', 'CSE', 2020, 3, 'tushar@gmail.com'),
('2017CA03', 'Shivam Singh', 'CSE', 2020, 3, 'shivam@gmail.com'),
('2017CA24', 'Pravesh', 'CSE', 2020, 3, 'pravesh@gmail.com'),
('2017CA61', 'Nitish ', 'CSE', 2020, 3, 'nitish@gmail.com'),
('2017CA74', 'Gaurav Mishra', 'CSE', 2020, 3, 'gauravmishra@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `tc_id` varchar(20) NOT NULL,
  `tc_name` varchar(20) NOT NULL,
  `tc_dept` varchar(20) NOT NULL,
  `tc_email` varchar(30) NOT NULL,
  `tc_course` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`tc_id`, `tc_name`, `tc_dept`, `tc_email`, `tc_course`) VALUES
('1', 'Rupesh Dewang', 'cse', 'sumit@gmail.com', 'Algo'),
('2', 'Parth', 'CSE', 'parthsir@gmail.com', 'DBMS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admininfo`
--
ALTER TABLE `admininfo`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD KEY `stat_id` (`stat_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`tc_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`stat_id`) REFERENCES `students` (`st_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
