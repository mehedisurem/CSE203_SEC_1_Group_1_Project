-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 28, 2023 at 01:19 AM
-- Server version: 8.0.31
-- PHP Version: 8.1.4
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8mb4 */
;
--
-- Database: `sprm`
--
/* Database Create */
-- --------------------------------------------------------
--
-- Table structure for table `course`
--

/* Database Create */
CREATE DATABASE `sprm`;
CREATE TABLE `course` (
  `courseID` varchar(7) NOT NULL,
  `courseName` varchar(40) NOT NULL,
  `numberOfCredit` int NOT NULL,
  `prerequisiteID` varchar(7) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
--
-- Dumping data for table `course`
--

INSERT INTO `course` (
    `courseID`,
    `courseName`,
    `numberOfCredit`,
    `prerequisiteID`
  )
VALUES (
    'CSC101',
    'Introduction to Computer Programming',
    3,
    'N/A'
  ),
  ('CSC101L', 'Lab for CSC101', 1, 'N/A');
-- --------------------------------------------------------
--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `departmentID` varchar(4) NOT NULL,
  `department_name` varchar(60) NOT NULL,
  `schoolID` varchar(6) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
--
-- Dumping data for table `department`
--

INSERT INTO `department` (`departmentID`, `department_name`, `schoolID`)
VALUES ('CSE', 'Computer Science & Engineering', 'SETS');
-- --------------------------------------------------------
--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employeeId` varchar(7) NOT NULL,
  `employeeName` varchar(25) NOT NULL,
  `address` varchar(40) NOT NULL,
  `mobile` varchar(14) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `doj` varchar(10) NOT NULL,
  `emp_type` varchar(14) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(24) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (
    `employeeId`,
    `employeeName`,
    `address`,
    `mobile`,
    `gender`,
    `dob`,
    `doj`,
    `emp_type`,
    `email`,
    `password`
  )
VALUES (
    '42069',
    'Mahady Hasan ',
    '8/A cholona bashundarai jai',
    '+8801758646426',
    'Other',
    '23-05-1771',
    '24-07-2004',
    'Heda',
    'mahady@iub.edu.bd',
    '123456'
  );
-- --------------------------------------------------------
--
-- Table structure for table `enrollement`
--

CREATE TABLE `enrollement` (
  `studentID` varchar(7) NOT NULL,
  `courseID` varchar(7) NOT NULL,
  `grade` varchar(2) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
--
-- Dumping data for table `enrollement`
--

INSERT INTO `enrollement` (`studentID`, `courseID`, `grade`)
VALUES ('2030069', 'CSC101', 'A'),
  ('2030069', 'CSC101L', 'A');
-- --------------------------------------------------------
--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `programID` varchar(4) NOT NULL,
  `programName` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `departmentID` varchar(5) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
--
-- Dumping data for table `program`
--

INSERT INTO `program` (`programID`, `programName`, `departmentID`)
VALUES (
    'BCSE',
    'B.Sc. in Computer Science & Engineering',
    'CSE'
  );
-- --------------------------------------------------------
--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `sectionID` varchar(23) NOT NULL,
  `semester` varchar(7) NOT NULL,
  `year` varchar(4) NOT NULL,
  `courseID` varchar(7) NOT NULL,
  `outlineID` varchar(27) NOT NULL,
  `instructorID` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
--
-- Dumping data for table `section`
--

INSERT INTO `section` (
    `sectionID`,
    `semester`,
    `year`,
    `courseID`,
    `outlineID`,
    `instructorID`
  )
VALUES (
    '1',
    'AUTUMN',
    '2023',
    'CSC101',
    'CSC101_1_AUTUMN_2023',
    '42069'
  );
-- --------------------------------------------------------
--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentID` varchar(7) NOT NULL,
  `studentName` varchar(30) NOT NULL,
  `password` varchar(25) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `enrollDate` varchar(10) NOT NULL,
  `earnedCredit` int NOT NULL,
  `cgpa` float NOT NULL,
  `programID` int NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
--
-- Dumping data for table `student`
--

INSERT INTO `student` (
    `studentID`,
    `studentName`,
    `password`,
    `address`,
    `email`,
    `phone`,
    `gender`,
    `dob`,
    `enrollDate`,
    `earnedCredit`,
    `cgpa`,
    `programID`
  )
VALUES (
    '2030069',
    'Mehedi Hasan Surem',
    '12345678',
    '62/d,ffsm,bashundara ',
    '2030069@iub.edu.bd',
    '+8809995565469',
    'Male',
    '01-01-2000',
    '18-03-2020',
    110,
    3.69,
    0
  );
COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;