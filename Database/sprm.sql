-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 30, 2023 at 03:36 PM
-- Server version: 8.0.31
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sprm`
--

-- --------------------------------------------------------

--
-- Table structure for table `co`
--

CREATE TABLE `co` (
  `coID` varchar(10) NOT NULL,
  `description` varchar(40) NOT NULL,
  `bloom_lvl` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseID` varchar(7) NOT NULL,
  `courseName` varchar(40) NOT NULL,
  `numberOfCredit` int NOT NULL,
  `prerequisiteID` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseID`, `courseName`, `numberOfCredit`, `prerequisiteID`) VALUES
('CSC101', 'Introduction to Computer Programming', 3, 'N/A'),
('CSC101L', 'Lab for CSC101', 1, 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `course_outline`
--

CREATE TABLE `course_outline` (
  `outlineID` varchar(27) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `lessonPlan` varchar(3000) NOT NULL,
  `roomNo` varchar(10) NOT NULL,
  `markDistrubution` varchar(350) NOT NULL,
  `grading` varchar(200) NOT NULL,
  `syllabus` varchar(200) NOT NULL,
  `book` varchar(300) NOT NULL,
  `courseID` varchar(7) NOT NULL,
  `sectionNo` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `course_outline`
--

INSERT INTO `course_outline` (`outlineID`, `lessonPlan`, `roomNo`, `markDistrubution`, `grading`, `syllabus`, `book`, `courseID`, `sectionNo`) VALUES
('CSC101_1_AUTUMN_2023', '', '5003', '', 'A,90-100##A-,85-89##B+,-80-84##B,75-79##B-,70-74,	C+,65-69##C,60-64##C-,55-59##D+,50-54##\r\nD,45-49##F,0-44\r\n', '', '', 'CSC101', '1');

-- --------------------------------------------------------

--
-- Table structure for table `co_completion`
--

CREATE TABLE `co_completion` (
  `studentID` varchar(7) NOT NULL,
  `courseID` varchar(7) NOT NULL,
  `coID` varchar(10) NOT NULL,
  `percentage` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `co_plo`
--

CREATE TABLE `co_plo` (
  `coID` varchar(10) NOT NULL,
  `ploID` varchar(6) NOT NULL,
  `percentage` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `departmentID` varchar(4) NOT NULL,
  `department_name` varchar(60) NOT NULL,
  `schoolID` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`departmentID`, `department_name`, `schoolID`) VALUES
('ACN', 'Accounting', 'SBE'),
('ANT', 'Anthropology', 'SLASS'),
('CMN', 'Media & Communication', 'SLASS'),
('CSC', 'Computer Science ', 'SETS'),
('CSE', 'Computer Science & Engineering', 'SETS'),
('DOP', 'Department of Pharmacy', 'SPPH'),
('DPH', 'Department of Public Health', 'SPPH'),
('ECN', 'Economics', 'SBE'),
('EEE', 'Electrical & Electronics Engineering', 'SETS'),
('ENG', 'English Literature', 'SLASS'),
('ESM', 'Environmental Science & Management', 'SELS'),
('FIN', 'Finance', 'SBE'),
('GMN', 'General Management', 'SBE'),
('HRM', 'Human Resource Management', 'SBE'),
('INB', 'International Business', 'SBE'),
('LLB', 'Law', 'SLASS'),
('LS', 'Life Sciences', 'SELS'),
('MIS', 'Management Information System', 'SBE'),
('MKT', 'Marketing', 'SBE'),
('PS', 'Physical Science', 'SETS');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employeeID` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `employeeName` varchar(25) NOT NULL,
  `address` varchar(40) NOT NULL,
  `mobile` varchar(14) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `doj` varchar(10) NOT NULL,
  `emp_type` varchar(14) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employeeID`, `employeeName`, `address`, `mobile`, `gender`, `dob`, `doj`, `emp_type`, `email`, `password`) VALUES
('42069', 'Mahady Hasan ', '8/A cholona bashundarai jai', '+8801758646426', 'Other', '23-05-1771', '24-07-2004', 'Heda', 'mahady@iub.edu.bd', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `enrollement`
--

CREATE TABLE `enrollement` (
  `studentID` varchar(7) NOT NULL,
  `courseID` varchar(7) NOT NULL,
  `grade` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `enrollement`
--

INSERT INTO `enrollement` (`studentID`, `courseID`, `grade`) VALUES
('2030069', 'CSC101', 'A'),
('2030069', 'CSC101L', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `examID` varchar(35) NOT NULL,
  `exam_Type` varchar(20) NOT NULL,
  `semester` varchar(7) NOT NULL,
  `year` varchar(4) NOT NULL,
  `courseID` varchar(7) NOT NULL,
  `sectionNo` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_questions`
--

CREATE TABLE `exam_questions` (
  `examID` varchar(35) NOT NULL,
  `questionID` varchar(35) NOT NULL,
  `percentage` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plo`
--

CREATE TABLE `plo` (
  `ploID` varchar(6) NOT NULL,
  `description` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `programID` varchar(4) NOT NULL,
  `programName` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `departmentID` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`programID`, `programName`, `departmentID`) VALUES
('BACN', 'BBA in Accounting', 'ACN'),
('BANT', 'BA in Anthropology', 'ANT'),
('BCMN', 'BA in Media & Communication', 'CMN'),
('BCSC', 'B.Sc. in Computer Science ', 'CSE'),
('BCSE', 'B.Sc. in Computer Science & Engineering', 'CSE'),
('BECN', 'BBA in Economics', 'ECN'),
('BEEE', 'Bachelor of Engineering in Electrical Engineering', 'EEE'),
('BENG', 'BA in English Literature', 'ENG'),
('BFIN', 'BBA in Finance', 'FIN'),
('BGMN', 'BBA in General Management', 'GMN'),
('BHRM', 'BBA in Human Resource Management', 'HRM'),
('BINB', 'BBA in International Business', 'INB'),
('BMIS', 'BBA in Management Information Systems', 'MIS'),
('BMKT', 'BBA in Marketing', 'MKT'),
('BPS', 'B.Sc. in Physical Science ', 'PS'),
('MANT', 'MA in Anthropology', 'ANT'),
('MENG', 'MA in English Literature', 'ENG');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `questionID` varchar(35) NOT NULL,
  `description` varchar(1500) NOT NULL,
  `marks` int NOT NULL,
  `courseID` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registered_course`
--

CREATE TABLE `registered_course` (
  `registrationID` int NOT NULL,
  `studentID` varchar(7) NOT NULL,
  `sectionNo` varchar(2) NOT NULL,
  `courseID` varchar(7) NOT NULL,
  `date` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `registrationID` int NOT NULL,
  `studentID` varchar(7) NOT NULL,
  `semester` varchar(7) NOT NULL,
  `year` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `schoolID` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`schoolID`, `name`) VALUES
('SBE', 'School of Business & Entrepreneurship'),
('SELS', 'School of Environment and Life Sciences'),
('SETS', 'School of Engineering, Technology & Sciences'),
('SLASS', 'School of Liberal Arts & Social Sciences'),
('SPPH', 'School of Pharmacy and Public Health');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `sectionNo` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `semester` varchar(7) NOT NULL,
  `year` varchar(4) NOT NULL,
  `courseID` varchar(7) NOT NULL,
  `outlineID` varchar(27) NOT NULL,
  `instructorID` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`sectionNo`, `semester`, `year`, `courseID`, `outlineID`, `instructorID`) VALUES
('1', 'AUTUMN', '2023', 'CSC101', 'CSC101_1_AUTUMN_2023', '42069');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentID` varchar(7) NOT NULL,
  `studentName` varchar(30) NOT NULL,
  `password` varchar(25) NOT NULL,
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` varchar(14) NOT NULL,
  `gender` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `dob` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `enrollDate` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `programID` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentID`, `studentName`, `password`, `address`, `email`, `phone`, `gender`, `dob`, `enrollDate`, `programID`) VALUES
('2020600', 'William Jefferson Mondal', '10willam', 'House No. 71, Mirzapur Road, Mirzapur, Tangail', '2020600@iub.edu.bd', '+8801700000264', 'Male', '2000-01-04', '2020-06-01', 'BCSC'),
('2020975', 'Fardin Afsan Shafi', '10shafi', 'House No. 69, Mohanpur Road, Mohanpur, Rajshahi', '2020975@iub.edu.bd', '+8801700000263', 'Male', '2000-01-03', '2020-06-01', 'BCSC'),
('2020977', 'Anannya Preeta', '10preeta', 'House No. 67, Chandgaon Road, Chandgaon, Dhaka', '2020977@iub.edu.bd', '+8801700000262', 'Female', '2000-01-02', '2020-06-01', 'BCSE'),
('2022001', 'Abir Datta', '100a0001', 'House No. 32, Shanti Bari Road, Kalibari, Khulna', '2022001@iub.edu.bd', '+8801700000001', 'Male', '2002-01-01', '2020-01-01', 'BCSE'),
('2022002', 'Aditya Bose', '100b0002', 'House No. 44, Jubilee Road, Mashima, Chittagong', '2022002@iub.edu.bd', '+8801700000002', 'Female', '2002-01-02', '2020-01-01', 'BCSE'),
('2022003', 'Agni Banerjee', '100a0002', 'House No. 20, College Road, Sylhet Bazar, Sylhet', '2022003@iub.edu.bd', '+8801700000003', 'Male', '2002-01-03', '2020-01-01', 'BCSE'),
('2022004', 'Akash Chakraborty', '100b0003', 'House No. 18, Police Line Road, New Market, Rangpur', '2022004@iub.edu.bd', '+8801700000004', 'Male', '2002-01-04', '2020-01-01', 'BCSE'),
('2022005', 'Alok Ghosh', '100a0003', 'House No. 12, Arambagh Road, Nai Bazar, Rajshahi', '2022005@iub.edu.bd', '+8801700000005', 'Female', '2002-01-05', '2020-01-01', 'BCSE'),
('2022006', 'Amit Dutta', '100b0004', 'House No. 8, Shantinagar Road, Nobabgonj, Dhaka', '2022006@iub.edu.bd', '+8801700000006', 'Male', '2002-01-06', '2020-01-01', 'BCSE'),
('2022007', 'Amrita Das', '100a0004', 'House No. 9, Jail Road, Sadar Bazar, Tangail', '2022007@iub.edu.bd', '+8801700000007', 'Male', '2002-01-07', '2020-01-01', 'BEEE'),
('2022008', 'Ananda Saha', '100b0005', 'House No. 6, Gafargaon Road, Mohakhali, Gazipur', '2022008@iub.edu.bd', '+8801700000008', 'Female', '2002-01-08', '2020-01-01', 'BEEE'),
('2022009', 'Anirban Sen', '100a0005', 'House No. 28, Jiban Bima Road, Mirpur-1, Dhaka', '2022009@iub.edu.bd', '+8801700000009', 'Male', '2002-01-09', '2020-01-01', 'BEEE'),
('2022010', 'Anjali Chatterjee', '100b0006', 'House No. 15, Sonadanga Road, Sonadanga, Khulna', '2022010@iub.edu.bd', '+8801700000010', 'Male', '2002-01-10', '2020-01-01', 'BEEE'),
('2022011', 'Anupam Bhattacharya', '100a0006', 'House No. 16, Kalurghat Road, Lalchand Nagar, Chittagong', '2022011@iub.edu.bd', '+8801700000011', 'Female', '2002-01-11', '2020-01-01', 'BEEE'),
('2022012', 'Arjun Mukherjee', '100b0007', 'House No. 22, Zindabazar Road, Zindabazar, Sylhet', '2022012@iub.edu.bd', '+8801700000012', 'Male', '2002-01-12', '2020-01-01', 'BPS'),
('2022013', 'Arnab Chakraborty', '100a0007', 'House No. 25, Dhap Road, Dhap, Rangpur', '2022013@iub.edu.bd', '+8801700000013', 'Male', '2002-01-13', '2020-01-01', 'BPS'),
('2022014', 'Arpita Roy', '100b0008', 'House No. 31, Uposhohor Road, Uposhohor, Rajshahi', '2022014@iub.edu.bd', '+8801700000014', 'Female', '2002-01-14', '2020-01-01', 'BACN'),
('2022015', 'Asha Dasgupta', '100a0008', 'House No. 7, Elephant Road, New Market, Dhaka', '2022015@iub.edu.bd', '+8801700000015', 'Male', '2002-01-15', '2020-01-01', 'BECN'),
('2022016', 'Ashim Biswas', '100b0009', 'House No. 14, Station Road, Sadar Bazar, Narayanganj', '2022016@iub.edu.bd', '+8801700000016', 'Male', '2002-01-16', '2020-01-01', 'BFIN'),
('2022017', 'Asit Das', '100a0009', 'House No. 19, Kabi Jasimuddin Road, Adabar, Dhaka', '2022017@iub.edu.bd', '+8801700000017', 'Female', '2002-01-17', '2020-01-01', 'BGMN'),
('2022018', 'Atanu Sengupta', '100b0010', 'House No. 33, Satmatha Road, Satmatha, Brahmanbaria', '2022018@iub.edu.bd', '+8801700000018', 'Male', '2002-01-18', '2020-01-01', 'BHRM'),
('2022019', 'Avik Ghosh', '100a0010', 'House No. 40, Purbani Road, Purbani, Comilla', '2022019@iub.edu.bd', '+8801700000019', 'Male', '2002-01-19', '2020-01-01', 'BINB'),
('2022020', 'Ayushman Banerjee', '100b0011', 'House No. 23, Nai Sarak Road, Nai Sarak, Mymensingh', '2022020@iub.edu.bd', '+8801700000020', 'Female', '2002-01-20', '2020-01-01', 'BMIS'),
('2022021', 'Baishali Dutta', '100a0011', 'House No. 30, Karwan Bazar Road, Karwan Bazar, Dhaka', '2022021@iub.edu.bd', '+8801700000021', 'Male', '2002-01-21', '2020-01-01', 'BMKT'),
('2022022', 'Bappi Das', '100b0012', 'House No. 17, Kalibari Road, Kalibari, Sylhet', '2022022@iub.edu.bd', '+8801700000022', 'Male', '2002-01-22', '2020-01-01', 'BANT'),
('2022023', 'Basab Chatterjee', '100a0012', 'House No. 21, Nayapaltan Road, Nayapaltan, Dhaka', '2022023@iub.edu.bd', '+8801700000023', 'Female', '2002-01-23', '2020-01-01', 'BENG'),
('2022024', 'Bhaskar Saha', '100b0013', 'House No. 29, Biswanath Road, Biswanath, Sylhet', '2022024@iub.edu.bd', '+8801700000024', 'Male', '2002-01-24', '2020-01-01', 'BANT'),
('2022025', 'Bimal Roy', '100a0013', 'House No. 27, Jhautala Road, Jhautala, Khulna', '2022025@iub.edu.bd', '+8801700000025', 'Male', '2002-01-25', '2020-01-01', 'BENG'),
('2022026', 'Biswajit Sarkar', '100b0014', 'House No. 11, BRTC Road, Basundhara, Rangpur', '2022026@iub.edu.bd', '+8801700000026', 'Female', '2002-01-26', '2020-01-01', 'BCMN'),
('2022027', 'Chaitali Chakraborty', '100a0014', 'House No. 10, South Jatrabari Road, South Jatrabari, Dhaka', '2022027@iub.edu.bd', '+8801700000027', 'Male', '2002-01-27', '2020-01-01', 'BCSE'),
('2022028', 'Chanchal Roy', '100b0015', 'House No. 34, Sonaimuri Road, Sonaimuri, Noakhali', '2022028@iub.edu.bd', '+8801700000028', 'Male', '2002-01-28', '2020-01-01', 'BCSE'),
('2022029', 'Chandana Sen', '100a0015', 'House No. 24, Moghbazar Road, Moghbazar, Dhaka', '2022029@iub.edu.bd', '+8801700000029', 'Female', '2002-01-29', '2020-01-01', 'BCSE'),
('2022030', 'Chandan Dutta', '100b0016', 'House No. 35, Chowdhury Para Road, Chowdhury Para, Sylhet', '2022030@iub.edu.bd', '+8801700000030', 'Male', '2002-01-30', '2020-01-01', 'BCSE'),
('2022031', 'Chandrajit Mukherjee', '100a0016', 'House No. 37, Feni Road, Feni, Comilla', '2022031@iub.edu.bd', '+8801700000031', 'Male', '2002-01-31', '2020-01-01', 'BCSE'),
('2022032', 'Debabrata Das', '100b0017', 'House No. 36, Kadamtoli Road, Kadamtoli, Chittagong', '2022032@iub.edu.bd', '+8801700000032', 'Female', '2002-02-01', '2020-01-01', 'BCSE'),
('2022033', 'Debanjan Sengupta', '100a0017', 'House No. 39, Narshingdi Road, Narshingdi, Dhaka', '2022033@iub.edu.bd', '+8801700000033', 'Male', '2002-02-02', '2020-01-01', 'BEEE'),
('2022034', 'Debapriya Sen', '100b0018', 'House No. 38, Kaptai Road, Kaptai, Rangamati', '2022034@iub.edu.bd', '+8801700000034', 'Male', '2002-02-03', '2020-01-01', 'BEEE'),
('2022035', 'Debjani Banerjee', '100a0018', 'House No. 42, Mawna Road, Mawna, Gazipur', '2022035@iub.edu.bd', '+8801700000035', 'Female', '2002-02-04', '2020-01-01', 'BEEE'),
('2022036', 'Deepak Ghosh', '100b0019', 'House No. 43, Amborkhana Road, Amborkhana, Sylhet', '2022036@iub.edu.bd', '+8801700000036', 'Male', '2002-02-05', '2020-01-01', 'BEEE'),
('2022037', 'Deepsikha Chatterjee', '100a0019', 'House No. 47, Momin Road, Momin Road, Chittagong', '2022037@iub.edu.bd', '+8801700000037', 'Male', '2002-02-06', '2020-01-01', 'BEEE'),
('2022038', 'Devarati Sen', '100b0020', 'House No. 46, Uttara Model Town Road, Uttara Model Town, Dhaka', '2022038@iub.edu.bd', '+8801700000038', 'Female', '2002-02-07', '2020-01-01', 'BPS'),
('2022039', 'Dipanjan Saha', '100a0020', 'House No. 51, Bagh Bari Road, Bagh Bari, Sylhet', '2022039@iub.edu.bd', '+8801700000039', 'Male', '2002-02-08', '2020-01-01', 'BPS'),
('2022040', 'Dipankar Mukherjee', '100b0021', 'House No. 50, Jubilee Road, Nasirabad, Chittagong', '2022040@iub.edu.bd', '+8801700000040', 'Male', '2002-02-09', '2020-01-01', 'BACN'),
('2022041', 'Dipika Roy', '100a0021', 'House No. 55, Zia Sarani Road, Zia Sarani, Dhaka', '2022041@iub.edu.bd', '+8801700000041', 'Female', '2002-02-10', '2020-01-01', 'BECN'),
('2022042', 'Dishari Das', '100b0022', 'House No. 58, Sonaimuri Road, Hathazari, Chittagong', '2022042@iub.edu.bd', '+8801700000042', 'Male', '2002-02-11', '2020-01-01', 'BFIN'),
('2022043', 'Gargi Chakraborty', '100a0022', 'House No. 61, Stadium Road, Khulna Stadium, Khulna', '2022043@iub.edu.bd', '+8801700000043', 'Male', '2002-02-12', '2020-01-01', 'BGMN'),
('2022044', 'Gautam Banerjee', '100b0023', 'House No. 63, Tilagarh Road, Tilagarh, Rangpur', '2022044@iub.edu.bd', '+8801700000044', 'Female', '2002-02-13', '2020-01-01', 'BHRM'),
('2022045', 'Gitanjali Das', '100a0023', 'House No. 65, GEC Road, GEC, Chittagong', '2022045@iub.edu.bd', '+8801700000045', 'Male', '2002-02-14', '2020-01-01', 'BINB'),
('2022046', 'Gopal Chakraborty', '100b0024', 'House No. 67, Chandgaon Road, Chandgaon, Dhaka', '2022046@iub.edu.bd', '+8801700000046', 'Male', '2002-02-15', '2020-01-01', 'BMIS'),
('2022047', 'Indira Sen', '100a0024', 'House No. 69, Mohanpur Road, Mohanpur, Rajshahi', '2022047@iub.edu.bd', '+8801700000047', 'Female', '2002-02-16', '2020-01-01', 'BMKT'),
('2022048', 'Ipsita Chatterjee', '100b0025', 'House No. 71, Mirzapur Road, Mirzapur, Tangail', '2022048@iub.edu.bd', '+8801700000048', 'Male', '2002-02-17', '2020-01-01', 'BANT'),
('2022049', 'Jharna Bose', '100a0025', 'House No. 72, Station Road, Syedpur, Nilphamari', '2022049@iub.edu.bd', '+8801700000049', 'Male', '2002-02-18', '2020-01-01', 'BENG'),
('2022050', 'Jishnu Dasgupta', '100b0026', 'House No. 76, Sujanagar Road, Sujanagar, Pabna', '2022050@iub.edu.bd', '+8801700000050', 'Female', '2002-02-19', '2020-01-01', 'BANT'),
('2022051', 'Joydeep Sengupta', '100a0026', 'House No. 78, Court Road, Court Road, Narsingdi', '2022051@iub.edu.bd', '+8801700000051', 'Male', '2002-02-20', '2020-01-01', 'BENG'),
('2022052', 'Juhi Chakraborty', '100b0027', 'House No. 80, Bholahat Road, Bholahat, Chapai Nawabganj', '2022052@iub.edu.bd', '+8801700000052', 'Male', '2002-02-21', '2020-01-01', 'BCMN'),
('2022053', 'Kalyan Mukherjee', '100a0027', 'House No. 82, Chandpur Road, Chandpur, Comilla', '2022053@iub.edu.bd', '+8801700000053', 'Female', '2002-02-22', '2020-01-01', 'BCSE'),
('2022054', 'Kamalika Ghosh', '100b0028', 'House No. 85, Bheramara Road, Bheramara, Kushtia', '2022054@iub.edu.bd', '+8801700000054', 'Male', '2002-02-23', '2020-01-01', 'BCSE'),
('2022055', 'Kanika Basu', '100a0028', 'House No. 87, Mirpur Road, Mirpur, Dhaka', '2022055@iub.edu.bd', '+8801700000055', 'Male', '2002-02-24', '2020-01-01', 'BCSE'),
('2022056', 'Kausik Das', '100b0029', 'House No. 89, Bir Uttam CR Dutta Road, Bir Uttam CR Dutta, Chittagong', '2022056@iub.edu.bd', '+8801700000056', 'Female', '2002-02-25', '2020-01-01', 'BCSE'),
('2022057', 'Keya Chatterjee', '100a0029', 'House No. 92, Muktarpur Road, Muktarpur, Munshiganj', '2022057@iub.edu.bd', '+8801700000057', 'Male', '2002-02-26', '2020-01-01', 'BCSE'),
('2022058', 'Krishnendu Roy', '100b0030', 'House No. 95, Pirojpur Road, Pirojpur, Barisal', '2022058@iub.edu.bd', '+8801700000058', 'Male', '2002-02-27', '2020-01-01', 'BCSE'),
('2022059', 'Madhumita Das', '100a0030', 'House No. 98, Bogra Road, Bogra, Rajshahi', '2022059@iub.edu.bd', '+8801700000059', 'Female', '2002-02-28', '2020-01-01', 'BEEE'),
('2022060', 'Mahua Chakraborty', '100b0031', 'House No. 100, Modina Market Road, Modina Market, Khulna', '2022060@iub.edu.bd', '+8801700000060', 'Male', '2002-03-01', '2020-05-01', 'BEEE'),
('2022061', 'Manashi Das', '100a0031', 'House No. 103, Manikgonj Road, Manikgonj, Dhaka', '2022061@iub.edu.bd', '+8801700000061', 'Male', '2002-03-02', '2020-05-01', 'BEEE'),
('2022062', 'Manik Chakraborty', '100b0032', 'House No. 105, Moheshkhali Road, Moheshkhali, Cox\'s Bazar', '2022062@iub.edu.bd', '+8801700000062', 'Female', '2002-03-03', '2020-05-01', 'BEEE'),
('2022063', 'Mihir Saha', '100a0032', 'House No. 108, Bonosree Road, Bonosree, Dhaka', '2022063@iub.edu.bd', '+8801700000063', 'Male', '2002-03-04', '2020-05-01', 'BEEE'),
('2022064', 'Mita Chatterjee', '100b0033', 'House No. 111, Shohid Shamsuddin Road, Shohid Shamsuddin, Barisal', '2022064@iub.edu.bd', '+8801700000064', 'Male', '2002-03-05', '2020-05-01', 'BPS'),
('2022065', 'Mitra Banerjee', '100a0033', 'House No. 114, Kalampur Road, Kalampur, Tangail', '2022065@iub.edu.bd', '+8801700000065', 'Female', '2002-03-06', '2020-05-01', 'BPS'),
('2022066', 'Mohua Sen', '100b0034', 'House No. 116, Kanaighat Road, Kanaighat, Sylhet', '2022066@iub.edu.bd', '+8801700000066', 'Male', '2002-03-07', '2020-05-01', 'BACN'),
('2022067', 'Moumita Das', '100a0034', 'House No. 119, Nabinagar Road, Nabinagar, Brahmanbaria', '2022067@iub.edu.bd', '+8801700000067', 'Male', '2002-03-08', '2020-05-01', 'BECN'),
('2022068', 'Mrinal Ghosh', '100b0035', 'House No. 122, Bhola Road, Bhola, Barisal', '2022068@iub.edu.bd', '+8801700000068', 'Female', '2002-03-09', '2020-05-01', 'BFIN'),
('2022069', 'Nabanita Saha', '100a0035', 'House No. 125, Shahjadpur Road, Shahjadpur, Sirajganj', '2022069@iub.edu.bd', '+8801700000069', 'Male', '2002-03-10', '2020-05-01', 'BGMN'),
('2022070', 'Nabendu Bose', '100b0036', 'House No. 127, Bagmara Road, Bagmara', '2022070@iub.edu.bd', '+8801700000070', 'Male', '2002-03-11', '2020-05-01', 'BHRM'),
('2022071', 'Nandini Das', '100a0036', 'House No. 32, Shanti Bari Road, Kalibari, Khulna', '2022071@iub.edu.bd', '+8801700000071', 'Female', '2002-03-12', '2020-05-01', 'BINB'),
('2022072', 'Nayan Chakraborty', '100b0037', 'House No. 44, Jubilee Road, Mashima, Chittagong', '2022072@iub.edu.bd', '+8801700000072', 'Male', '2002-03-13', '2020-05-01', 'BMIS'),
('2022073', 'Nilanjana Sen', '100a0037', 'House No. 20, College Road, Sylhet Bazar, Sylhet', '2022073@iub.edu.bd', '+8801700000073', 'Male', '2002-03-14', '2020-05-01', 'BMKT'),
('2022074', 'Nilima Chatterjee', '100b0038', 'House No. 18, Police Line Road, New Market, Rangpur', '2022074@iub.edu.bd', '+8801700000074', 'Female', '2002-03-15', '2020-05-01', 'BANT'),
('2022075', 'Nupur Basu', '100a0038', 'House No. 12, Arambagh Road, Nai Bazar, Rajshahi', '2022075@iub.edu.bd', '+8801700000075', 'Male', '2002-03-16', '2020-05-01', 'BENG'),
('2022076', 'Palash Chakraborty', '100b0039', 'House No. 8, Shantinagar Road, Nobabgonj, Dhaka', '2022076@iub.edu.bd', '+8801700000076', 'Male', '2002-03-17', '2020-05-01', 'BANT'),
('2022077', 'Pallabi Ghosh', '100a0039', 'House No. 9, Jail Road, Sadar Bazar, Tangail', '2022077@iub.edu.bd', '+8801700000077', 'Female', '2002-03-18', '2020-05-01', 'BENG'),
('2022078', 'Pankaj Das', '100b0040', 'House No. 6, Gafargaon Road, Mohakhali, Gazipur', '2022078@iub.edu.bd', '+8801700000078', 'Male', '2002-03-19', '2020-05-01', 'BCMN'),
('2022079', 'Partha Sen', '100a0040', 'House No. 28, Jiban Bima Road, Mirpur-1, Dhaka', '2022079@iub.edu.bd', '+8801700000079', 'Male', '2002-03-20', '2020-05-01', 'BCSE'),
('2022080', 'Pinaki Mukherjee', '100b0041', 'House No. 15, Sonadanga Road, Sonadanga, Khulna', '2022080@iub.edu.bd', '+8801700000080', 'Female', '2002-03-21', '2020-05-01', 'BCSE'),
('2022081', 'Pradip Roy', '100a0041', 'House No. 16, Kalurghat Road, Lalchand Nagar, Chittagong', '2022081@iub.edu.bd', '+8801700000081', 'Male', '2002-03-22', '2020-05-01', 'BCSE'),
('2022082', 'Pranab Saha', '100b0042', 'House No. 22, Zindabazar Road, Zindabazar, Sylhet', '2022082@iub.edu.bd', '+8801700000082', 'Male', '2002-03-23', '2020-05-01', 'BCSE'),
('2022083', 'Pratik Chakraborty', '100a0042', 'House No. 25, Dhap Road, Dhap, Rangpur', '2022083@iub.edu.bd', '+8801700000083', 'Female', '2002-03-24', '2020-05-01', 'BCSE'),
('2022084', 'Pritha Das', '100b0043', 'House No. 31, Uposhohor Road, Uposhohor, Rajshahi', '2022084@iub.edu.bd', '+8801700000084', 'Male', '2002-03-25', '2020-05-01', 'BCSE'),
('2022085', 'Priya Sen', '100a0043', 'House No. 7, Elephant Road, New Market, Dhaka', '2022085@iub.edu.bd', '+8801700000085', 'Male', '2002-03-26', '2020-05-01', 'BEEE'),
('2022086', 'Priti Ghosh', '100b0044', 'House No. 14, Station Road, Sadar Bazar, Narayanganj', '2022086@iub.edu.bd', '+8801700000086', 'Female', '2002-03-27', '2020-05-01', 'BEEE'),
('2022087', 'Prosenjit Banerjee', '100a0044', 'House No. 19, Kabi Jasimuddin Road, Adabar, Dhaka', '2022087@iub.edu.bd', '+8801700000087', 'Male', '2002-03-28', '2020-05-01', 'BEEE'),
('2022088', 'Pubali Chatterjee', '100b0045', 'House No. 33, Satmatha Road, Satmatha, Brahmanbaria', '2022088@iub.edu.bd', '+8801700000088', 'Male', '2002-03-29', '2020-05-01', 'BEEE'),
('2022089', 'Purba Das', '100a0045', 'House No. 40, Purbani Road, Purbani, Comilla', '2022089@iub.edu.bd', '+8801700000089', 'Female', '2002-03-30', '2020-05-01', 'BEEE'),
('2022090', 'Rabindra Sengupta', '100b0046', 'House No. 23, Nai Sarak Road, Nai Sarak, Mymensingh', '2022090@iub.edu.bd', '+8801700000090', 'Male', '2002-03-31', '2020-05-01', 'BPS'),
('2022091', 'Radhika Basu', '100a0046', 'House No. 30, Karwan Bazar Road, Karwan Bazar, Dhaka', '2022091@iub.edu.bd', '+8801700000091', 'Male', '2002-04-01', '2020-05-01', 'BPS'),
('2022092', 'Rajarshi Ghosh', '100b0047', 'House No. 17, Kalibari Road, Kalibari, Sylhet', '2022092@iub.edu.bd', '+8801700000092', 'Female', '2002-04-02', '2020-05-01', 'BACN'),
('2022093', 'Rajesh Chakraborty', '100a0047', 'House No. 21, Nayapaltan Road, Nayapaltan, Dhaka', '2022093@iub.edu.bd', '+8801700000093', 'Male', '2002-04-03', '2020-05-01', 'BECN'),
('2022094', 'Rakesh Sen', '100b0048', 'House No. 29, Biswanath Road, Biswanath, Sylhet', '2022094@iub.edu.bd', '+8801700000094', 'Male', '2002-04-04', '2020-05-01', 'BFIN'),
('2022095', 'Raktim Mukherjee', '100a0048', 'House No. 27, Jhautala Road, Jhautala, Khulna', '2022095@iub.edu.bd', '+8801700000095', 'Female', '2002-04-05', '2020-05-01', 'BGMN'),
('2022096', 'Rana Dasgupta', '100b0049', 'House No. 11, BRTC Road, Basundhara, Rangpur', '2022096@iub.edu.bd', '+8801700000096', 'Male', '2002-04-06', '2020-05-01', 'BHRM'),
('2022097', 'Abdullah Al Mamun', '100a0049', 'House No. 10, South Jatrabari Road, South Jatrabari, Dhaka', '2022097@iub.edu.bd', '+8801700000097', 'Male', '2002-04-07', '2020-05-01', 'BINB'),
('2022098', 'Abir Ahmed', '100b0050', 'House No. 34, Sonaimuri Road, Sonaimuri, Noakhali', '2022098@iub.edu.bd', '+8801700000098', 'Female', '2002-04-08', '2020-05-01', 'BMIS'),
('2022099', 'Afnan Khan', '100a0050', 'House No. 24, Moghbazar Road, Moghbazar, Dhaka', '2022099@iub.edu.bd', '+8801700000099', 'Male', '2002-04-09', '2020-05-01', 'BMKT'),
('2022100', 'Ahmed Hasan', '100b0051', 'House No. 35, Chowdhury Para Road, Chowdhury Para, Sylhet', '2022100@iub.edu.bd', '+8801700000100', 'Male', '2002-04-10', '2020-05-01', 'BANT'),
('2022101', 'Aisha Rahman', '100a0051', 'House No. 37, Feni Road, Feni, Comilla', '2022101@iub.edu.bd', '+8801700000101', 'Female', '2002-04-11', '2020-05-01', 'BENG'),
('2022102', 'Akash Chowdhury', '100b0052', 'House No. 36, Kadamtoli Road, Kadamtoli, Chittagong', '2022102@iub.edu.bd', '+8801700000102', 'Male', '2002-04-12', '2020-05-01', 'BANT'),
('2022103', 'Al-Amin Islam', '100a0052', 'House No. 39, Narshingdi Road, Narshingdi, Dhaka', '2022103@iub.edu.bd', '+8801700000103', 'Male', '2002-04-13', '2020-05-01', 'BENG'),
('2022104', 'Alif Hossain', '100b0053', 'House No. 38, Kaptai Road, Kaptai, Rangamati', '2022104@iub.edu.bd', '+8801700000104', 'Female', '2002-04-14', '2020-05-01', 'BCMN'),
('2022105', 'Aminul Haque', '100a0053', 'House No. 42, Mawna Road, Mawna, Gazipur', '2022105@iub.edu.bd', '+8801700000105', 'Male', '2002-04-15', '2020-05-01', 'BCSE'),
('2022106', 'Anik Islam', '100b0054', 'House No. 43, Amborkhana Road, Amborkhana, Sylhet', '2022106@iub.edu.bd', '+8801700000106', 'Male', '2002-04-16', '2020-05-01', 'BCSE'),
('2022107', 'Anika Rahman', '100a0054', 'House No. 47, Momin Road, Momin Road, Chittagong', '2022107@iub.edu.bd', '+8801700000107', 'Female', '2002-04-17', '2020-05-01', 'BCSE'),
('2022108', 'Anisul Haque', '100b0055', 'House No. 46, Uttara Model Town Road, Uttara Model Town, Dhaka', '2022108@iub.edu.bd', '+8801700000108', 'Male', '2002-04-18', '2020-05-01', 'BCSE'),
('2022109', 'Arif Hossain', '100a0055', 'House No. 51, Bagh Bari Road, Bagh Bari, Sylhet', '2022109@iub.edu.bd', '+8801700000109', 'Male', '2002-04-19', '2020-05-01', 'BCSE'),
('2022110', 'Arman Khan', '100b0056', 'House No. 50, Jubilee Road, Nasirabad, Chittagong', '2022110@iub.edu.bd', '+8801700000110', 'Female', '2002-04-20', '2020-05-01', 'BCSE'),
('2022111', 'Ashfaq Ahmed', '100a0056', 'House No. 55, Zia Sarani Road, Zia Sarani, Dhaka', '2022111@iub.edu.bd', '+8801700000111', 'Male', '2002-04-21', '2020-05-01', 'BEEE'),
('2022112', 'Ayesha Akter', '100b0057', 'House No. 58, Sonaimuri Road, Hathazari, Chittagong', '2022112@iub.edu.bd', '+8801700000112', 'Male', '2002-04-22', '2020-05-01', 'BEEE'),
('2022113', 'Azharul Islam', '100a0057', 'House No. 61, Stadium Road, Khulna Stadium, Khulna', '2022113@iub.edu.bd', '+8801700000113', 'Female', '2002-04-23', '2020-05-01', 'BEEE'),
('2022114', 'Baki Billah', '100b0058', 'House No. 63, Tilagarh Road, Tilagarh, Rangpur', '2022114@iub.edu.bd', '+8801700000114', 'Male', '2002-04-24', '2020-05-01', 'BEEE'),
('2022115', 'Bappy Rahman', '100a0058', 'House No. 65, GEC Road, GEC, Chittagong', '2022115@iub.edu.bd', '+8801700000115', 'Male', '2002-04-25', '2020-05-01', 'BEEE'),
('2022116', 'Chowdhury Rahman', '100b0059', 'House No. 67, Chandgaon Road, Chandgaon, Dhaka', '2022116@iub.edu.bd', '+8801700000116', 'Female', '2002-04-26', '2020-05-01', 'BPS'),
('2022117', 'Dipa Islam', '100a0059', 'House No. 69, Mohanpur Road, Mohanpur, Rajshahi', '2022117@iub.edu.bd', '+8801700000117', 'Male', '2002-04-27', '2020-05-01', 'BPS'),
('2022118', 'Fahad Hossain', '100b0060', 'House No. 71, Mirzapur Road, Mirzapur, Tangail', '2022118@iub.edu.bd', '+8801700000118', 'Male', '2002-04-28', '2020-05-01', 'BACN'),
('2022119', 'Farhan Ahmed', '100a0060', 'House No. 72, Station Road, Syedpur, Nilphamari', '2022119@iub.edu.bd', '+8801700000119', 'Female', '2002-04-29', '2020-05-01', 'BECN'),
('2022120', 'Faridul Islam', '100b0061', 'House No. 76, Sujanagar Road, Sujanagar, Pabna', '2022120@iub.edu.bd', '+8801700000120', 'Male', '2002-04-30', '2020-10-01', 'BFIN'),
('2022121', 'Farzana Begum', '100a0061', 'House No. 78, Court Road, Court Road, Narsingdi', '2022121@iub.edu.bd', '+8801700000121', 'Male', '2002-05-01', '2020-10-01', 'BGMN'),
('2022122', 'Firoz Ahmed', '100b0062', 'House No. 80, Bholahat Road, Bholahat, Chapai Nawabganj', '2022122@iub.edu.bd', '+8801700000122', 'Female', '2002-05-02', '2020-10-01', 'BHRM'),
('2022123', 'Gazi Islam', '100a0062', 'House No. 82, Chandpur Road, Chandpur, Comilla', '2022123@iub.edu.bd', '+8801700000123', 'Male', '2002-05-03', '2020-10-01', 'BINB'),
('2022124', 'Habibul Islam', '100b0063', 'House No. 85, Bheramara Road, Bheramara, Kushtia', '2022124@iub.edu.bd', '+8801700000124', 'Male', '2002-05-04', '2020-10-01', 'BMIS'),
('2022125', 'Hafiz Rahman', '100a0063', 'House No. 87, Mirpur Road, Mirpur, Dhaka', '2022125@iub.edu.bd', '+8801700000125', 'Female', '2002-05-05', '2020-10-01', 'BMKT'),
('2022126', 'Hasan Ali', '100b0064', 'House No. 89, Bir Uttam CR Dutta Road, Bir Uttam CR Dutta, Chittagong', '2022126@iub.edu.bd', '+8801700000126', 'Male', '2002-05-06', '2020-10-01', 'BANT'),
('2022127', 'Himu Akter', '100a0064', 'House No. 92, Muktarpur Road, Muktarpur, Munshiganj', '2022127@iub.edu.bd', '+8801700000127', 'Male', '2002-05-07', '2020-10-01', 'BENG'),
('2022128', 'Imran Hossain', '100b0065', 'House No. 95, Pirojpur Road, Pirojpur, Barisal', '2022128@iub.edu.bd', '+8801700000128', 'Female', '2002-05-08', '2020-10-01', 'BANT'),
('2022129', 'Iqbal Ahmed', '100a0065', 'House No. 98, Bogra Road, Bogra, Rajshahi', '2022129@iub.edu.bd', '+8801700000129', 'Male', '2002-05-09', '2020-10-01', 'BENG'),
('2022130', 'Ismail Khan', '100b0066', 'House No. 100, Modina Market Road, Modina Market, Khulna', '2022130@iub.edu.bd', '+8801700000130', 'Male', '2002-05-10', '2020-10-01', 'BCMN'),
('2022523', 'Fahim Shahriar Eram', '10eram', 'House No. 72, Station Road, Syedpur, Nilphamari', '2022523@iub.edu.bd', '+8801700000265', 'Male', '2000-01-05', '2020-06-01', 'BCSC'),
('2023001', 'Jabir Ahmed', '100a0066', 'House No. 103, Manikgonj Road, Manikgonj, Dhaka', '2023001@iub.edu.bd', '+8801700000131', 'Female', '2002-05-11', '2020-10-01', 'BCSE'),
('2023002', 'Jahangir Alam', '100b0067', 'House No. 105, Moheshkhali Road, Moheshkhali, Cox\'s Bazar', '2023002@iub.edu.bd', '+8801700000132', 'Male', '2002-05-12', '2020-10-01', 'BCSE'),
('2023003', 'Jannatul Ferdous', '100a0067', 'House No. 108, Bonosree Road, Bonosree, Dhaka', '2023003@iub.edu.bd', '+8801700000133', 'Male', '2002-05-13', '2020-10-01', 'BCSE'),
('2023004', 'Jawad Ahmed', '100b0068', 'House No. 111, Shohid Shamsuddin Road, Shohid Shamsuddin, Barisal', '2023004@iub.edu.bd', '+8801700000134', 'Female', '2002-05-14', '2020-10-01', 'BCSE'),
('2023005', 'Kazi Islam', '100a0068', 'House No. 114, Kalampur Road, Kalampur, Tangail', '2023005@iub.edu.bd', '+8801700000135', 'Male', '2002-05-15', '2020-10-01', 'BCSE'),
('2023006', 'Khairul Alam', '100b0069', 'House No. 116, Kanaighat Road, Kanaighat, Sylhet', '2023006@iub.edu.bd', '+8801700000136', 'Male', '2002-05-16', '2020-10-01', 'BCSE'),
('2023007', 'Khadija Akter', '100a0069', 'House No. 119, Nabinagar Road, Nabinagar, Brahmanbaria', '2023007@iub.edu.bd', '+8801700000137', 'Female', '2002-05-17', '2020-10-01', 'BEEE'),
('2023008', 'Khalid Hossain', '100b0070', 'House No. 122, Bhola Road, Bhola, Barisal', '2023008@iub.edu.bd', '+8801700000138', 'Male', '2002-05-18', '2020-10-01', 'BEEE'),
('2023009', 'Lutfur Rahman', '100a0070', 'House No. 125, Shahjadpur Road, Shahjadpur, Sirajganj', '2023009@iub.edu.bd', '+8801700000139', 'Male', '2002-05-19', '2020-10-01', 'BEEE'),
('2023010', 'Mahmudul Hasan', '100b0071', 'House No. 127, Bagmara Road, Bagmara', '2023010@iub.edu.bd', '+8801700000140', 'Female', '2002-05-20', '2020-10-01', 'BEEE'),
('2023011', 'Majedul Islam', '100a0071', 'House No. 32, Shanti Bari Road, Kalibari, Khulna', '2023011@iub.edu.bd', '+8801700000141', 'Male', '2002-05-21', '2020-10-01', 'BEEE'),
('2023012', 'Masudur Rahman', '100b0072', 'House No. 44, Jubilee Road, Mashima, Chittagong', '2023012@iub.edu.bd', '+8801700000142', 'Male', '2002-05-22', '2020-10-01', 'BPS'),
('2023013', 'Mehedi Hasan', '100a0072', 'House No. 20, College Road, Sylhet Bazar, Sylhet', '2023013@iub.edu.bd', '+8801700000143', 'Female', '2002-05-23', '2020-10-01', 'BPS'),
('2023014', 'Mirza Ahmed', '100b0073', 'House No. 18, Police Line Road, New Market, Rangpur', '2023014@iub.edu.bd', '+8801700000144', 'Male', '2002-05-24', '2020-10-01', 'BACN'),
('2023015', 'Mohammad Ali', '100a0073', 'House No. 12, Arambagh Road, Nai Bazar, Rajshahi', '2023015@iub.edu.bd', '+8801700000145', 'Male', '2002-05-25', '2020-10-01', 'BECN'),
('2023016', 'Mohammad Hossain', '100b0074', 'House No. 8, Shantinagar Road, Nobabgonj, Dhaka', '2023016@iub.edu.bd', '+8801700000146', 'Female', '2002-05-26', '2020-10-01', 'BFIN'),
('2023017', 'Mohammad Islam', '100a0074', 'House No. 9, Jail Road, Sadar Bazar, Tangail', '2023017@iub.edu.bd', '+8801700000147', 'Male', '2002-05-27', '2020-10-01', 'BGMN'),
('2023018', 'Mohammad Rahman', '100b0075', 'House No. 6, Gafargaon Road, Mohakhali, Gazipur', '2023018@iub.edu.bd', '+8801700000148', 'Male', '2002-05-28', '2020-10-01', 'BHRM'),
('2023019', 'Mohammad Yusuf', '100a0075', 'House No. 28, Jiban Bima Road, Mirpur-1, Dhaka', '2023019@iub.edu.bd', '+8801700000149', 'Female', '2002-05-29', '2020-10-01', 'BINB'),
('2023020', 'Mohsin Ahmed', '100b0076', 'House No. 15, Sonadanga Road, Sonadanga, Khulna', '2023020@iub.edu.bd', '+8801700000150', 'Male', '2002-05-30', '2020-10-01', 'BMIS'),
('2023021', 'Monirul Islam', '100a0076', 'House No. 16, Kalurghat Road, Lalchand Nagar, Chittagong', '2023021@iub.edu.bd', '+8801700000151', 'Male', '2002-05-31', '2020-10-01', 'BMKT'),
('2023022', 'Mosharaf Hossain', '100b0077', 'House No. 22, Zindabazar Road, Zindabazar, Sylhet', '2023022@iub.edu.bd', '+8801700000152', 'Female', '2002-06-01', '2020-10-01', 'BANT'),
('2023023', 'Munir Ahmed', '100a0077', 'House No. 25, Dhap Road, Dhap, Rangpur', '2023023@iub.edu.bd', '+8801700000153', 'Male', '2002-06-02', '2020-10-01', 'BENG'),
('2023024', 'Mustafizur Rahman', '100b0078', 'House No. 31, Uposhohor Road, Uposhohor, Rajshahi', '2023024@iub.edu.bd', '+8801700000154', 'Male', '2002-06-03', '2020-10-01', 'BANT'),
('2023025', 'Nadia Khan', '100a0078', 'House No. 7, Elephant Road, New Market, Dhaka', '2023025@iub.edu.bd', '+8801700000155', 'Female', '2002-06-04', '2020-10-01', 'BENG'),
('2023026', 'Nasir Uddin', '100b0079', 'House No. 14, Station Road, Sadar Bazar, Narayanganj', '2023026@iub.edu.bd', '+8801700000156', 'Male', '2002-06-05', '2020-10-01', 'BCMN'),
('2023027', 'Nazia Akter', '100a0079', 'House No. 19, Kabi Jasimuddin Road, Adabar, Dhaka', '2023027@iub.edu.bd', '+8801700000157', 'Male', '2002-06-06', '2020-10-01', 'BCSE'),
('2023028', 'Noman Hossain', '100b0080', 'House No. 33, Satmatha Road, Satmatha, Brahmanbaria', '2023028@iub.edu.bd', '+8801700000158', 'Female', '2002-06-07', '2020-10-01', 'BCSE'),
('2023029', 'Nurul Islam', '100a0080', 'House No. 40, Purbani Road, Purbani, Comilla', '2023029@iub.edu.bd', '+8801700000159', 'Male', '2002-06-08', '2020-10-01', 'BCSE'),
('2023030', 'Oli Rahman', '100b0081', 'House No. 23, Nai Sarak Road, Nai Sarak, Mymensingh', '2023030@iub.edu.bd', '+8801700000160', 'Male', '2002-06-09', '2020-10-01', 'BCSE'),
('2023031', 'Omar Faruk', '100a0081', 'House No. 30, Karwan Bazar Road, Karwan Bazar, Dhaka', '2023031@iub.edu.bd', '+8801700000161', 'Female', '2002-06-10', '2020-10-01', 'BCSE'),
('2023032', 'Osman Gani', '100b0082', 'House No. 17, Kalibari Road, Kalibari, Sylhet', '2023032@iub.edu.bd', '+8801700000162', 'Male', '2002-06-11', '2020-10-01', 'BCSE'),
('2023033', 'Palash Ahmed', '100a0082', 'House No. 21, Nayapaltan Road, Nayapaltan, Dhaka', '2023033@iub.edu.bd', '+8801700000163', 'Male', '2002-06-12', '2020-10-01', 'BEEE'),
('2023034', 'Parvez Islam', '100b0083', 'House No. 29, Biswanath Road, Biswanath, Sylhet', '2023034@iub.edu.bd', '+8801700000164', 'Female', '2002-06-13', '2020-10-01', 'BEEE'),
('2023035', 'Rabiul Islam', '100a0083', 'House No. 27, Jhautala Road, Jhautala, Khulna', '2023035@iub.edu.bd', '+8801700000165', 'Male', '2002-06-14', '2020-10-01', 'BEEE'),
('2023036', 'Rafiqul Islam', '100b0084', 'House No. 11, BRTC Road, Basundhara, Rangpur', '2023036@iub.edu.bd', '+8801700000166', 'Male', '2002-06-15', '2020-10-01', 'BEEE'),
('2023037', 'Raisa Begum', '100a0084', 'House No. 10, South Jatrabari Road, South Jatrabari, Dhaka', '2023037@iub.edu.bd', '+8801700000167', 'Female', '2002-06-16', '2020-10-01', 'BEEE'),
('2023038', 'Raju Ahmed', '100b0085', 'House No. 34, Sonaimuri Road, Sonaimuri, Noakhali', '2023038@iub.edu.bd', '+8801700000168', 'Male', '2002-06-17', '2020-10-01', 'BPS'),
('2023039', 'Rashedul Islam', '100a0085', 'House No. 24, Moghbazar Road, Moghbazar, Dhaka', '2023039@iub.edu.bd', '+8801700000169', 'Male', '2002-06-18', '2020-10-01', 'BPS'),
('2023040', 'Ridwan Ahmed', '100b0086', 'House No. 35, Chowdhury Para Road, Chowdhury Para, Sylhet', '2023040@iub.edu.bd', '+8801700000170', 'Female', '2002-06-19', '2020-10-01', 'BACN'),
('2023041', 'Rony Rahman', '100a0086', 'House No. 37, Feni Road, Feni, Comilla', '2023041@iub.edu.bd', '+8801700000171', 'Male', '2002-06-20', '2020-10-01', 'BECN'),
('2023042', 'Sabbir Ahmed', '100b0087', 'House No. 36, Kadamtoli Road, Kadamtoli, Chittagong', '2023042@iub.edu.bd', '+8801700000172', 'Male', '2002-06-21', '2020-10-01', 'BFIN'),
('2023043', 'Sadia Akter', '100a0087', 'House No. 39, Narshingdi Road, Narshingdi, Dhaka', '2023043@iub.edu.bd', '+8801700000173', 'Female', '2002-06-22', '2020-10-01', 'BGMN'),
('2023044', 'Safayet Hossain', '100b0088', 'House No. 38, Kaptai Road, Kaptai, Rangamati', '2023044@iub.edu.bd', '+8801700000174', 'Male', '2002-06-23', '2020-10-01', 'BHRM'),
('2023045', 'Sahidul Islam', '100a0088', 'House No. 42, Mawna Road, Mawna, Gazipur', '2023045@iub.edu.bd', '+8801700000175', 'Male', '2002-06-24', '2020-10-01', 'BINB'),
('2023046', 'Salah Uddin', '100b0089', 'House No. 43, Amborkhana Road, Amborkhana, Sylhet', '2023046@iub.edu.bd', '+8801700000176', 'Female', '2002-06-25', '2020-10-01', 'BMIS'),
('2023047', 'Salim Ahmed', '100a0089', 'House No. 47, Momin Road, Momin Road, Chittagong', '2023047@iub.edu.bd', '+8801700000177', 'Male', '2002-06-26', '2020-10-01', 'BMKT'),
('2023048', 'Samiul Islam', '100b0090', 'House No. 46, Uttara Model Town Road, Uttara Model Town, Dhaka', '2023048@iub.edu.bd', '+8801700000178', 'Male', '2002-06-27', '2020-10-01', 'BANT'),
('2023049', 'Sanjida Akter', '100a0090', 'House No. 51, Bagh Bari Road, Bagh Bari, Sylhet', '2023049@iub.edu.bd', '+8801700000179', 'Female', '2002-06-28', '2020-10-01', 'BENG'),
('2023050', 'Sarwar Hossain', '100b0091', 'House No. 50, Jubilee Road, Nasirabad, Chittagong', '2023050@iub.edu.bd', '+8801700000180', 'Male', '2002-06-29', '2020-10-01', 'BANT'),
('2023051', 'Shahin Ahmed', '100a0091', 'House No. 55, Zia Sarani Road, Zia Sarani, Dhaka', '2023051@iub.edu.bd', '+8801700000181', 'Male', '2002-06-30', '2020-10-01', 'BENG'),
('2023052', 'Shakil Ahmed', '100b0092', 'House No. 58, Sonaimuri Road, Hathazari, Chittagong', '2023052@iub.edu.bd', '+8801700000182', 'Female', '2002-07-01', '2020-10-01', 'BCMN'),
('2023053', 'Sharif Hasan', '100a0092', 'House No. 61, Stadium Road, Khulna Stadium, Khulna', '2023053@iub.edu.bd', '+8801700000183', 'Male', '2002-07-02', '2020-10-01', 'BCSE'),
('2023054', 'Sharmeen Akter', '100b0093', 'House No. 63, Tilagarh Road, Tilagarh, Rangpur', '2023054@iub.edu.bd', '+8801700000184', 'Male', '2002-07-03', '2020-01-15', 'BCSE'),
('2023055', 'Shawkat Islam', '100a0093', 'House No. 65, GEC Road, GEC, Chittagong', '2023055@iub.edu.bd', '+8801700000185', 'Female', '2002-07-04', '2020-01-15', 'BCSE'),
('2023056', 'Shohag Ahmed', '100b0094', 'House No. 67, Chandgaon Road, Chandgaon, Dhaka', '2023056@iub.edu.bd', '+8801700000186', 'Male', '2002-07-05', '2020-01-15', 'BCSE'),
('2023057', 'Shuvo Khan', '100a0094', 'House No. 69, Mohanpur Road, Mohanpur, Rajshahi', '2023057@iub.edu.bd', '+8801700000187', 'Male', '2002-07-06', '2020-01-15', 'BCSE'),
('2023058', 'Sobhan Ahmed', '100b0095', 'House No. 71, Mirzapur Road, Mirzapur, Tangail', '2023058@iub.edu.bd', '+8801700000188', 'Female', '2002-07-07', '2020-01-15', 'BCSE'),
('2023059', 'Sultana Akter', '100a0095', 'House No. 72, Station Road, Syedpur, Nilphamari', '2023059@iub.edu.bd', '+8801700000189', 'Male', '2002-07-08', '2020-01-15', 'BEEE'),
('2023060', 'Sumon Rahman', '100b0096', 'House No. 76, Sujanagar Road, Sujanagar, Pabna', '2023060@iub.edu.bd', '+8801700000190', 'Male', '2002-07-09', '2020-01-15', 'BEEE'),
('2023061', 'Sushmita Islam', '100a0096', 'House No. 78, Court Road, Court Road, Narsingdi', '2023061@iub.edu.bd', '+8801700000191', 'Female', '2002-07-10', '2020-01-15', 'BEEE'),
('2023062', 'Tahmina Begum', '100b0097', 'House No. 80, Bholahat Road, Bholahat, Chapai Nawabganj', '2023062@iub.edu.bd', '+8801700000192', 'Male', '2002-07-11', '2020-01-15', 'BEEE'),
('2023063', 'Tanvir Ahmed', '100a0097', 'House No. 82, Chandpur Road, Chandpur, Comilla', '2023063@iub.edu.bd', '+8801700000193', 'Male', '2002-07-12', '2020-01-15', 'BEEE'),
('2023064', 'Tasnim Akter', '100b0098', 'House No. 85, Bheramara Road, Bheramara, Kushtia', '2023064@iub.edu.bd', '+8801700000194', 'Female', '2002-07-13', '2020-01-15', 'BPS'),
('2023065', 'Tawhidul Islam', '100a0098', 'House No. 87, Mirpur Road, Mirpur, Dhaka', '2023065@iub.edu.bd', '+8801700000195', 'Male', '2002-07-14', '2020-01-15', 'BPS'),
('2023066', 'Zahidul Islam', '100b0099', 'House No. 89, Bir Uttam CR Dutta Road, Bir Uttam CR Dutta, Chittagong', '2023066@iub.edu.bd', '+8801700000196', 'Male', '2002-07-15', '2020-01-15', 'BACN'),
('2023067', 'Aarav Dutta', '100a0099', 'House No. 92, Muktarpur Road, Muktarpur, Munshiganj', '2023067@iub.edu.bd', '+8801700000197', 'Female', '2002-07-16', '2020-01-15', 'BECN'),
('2023068', 'Aayansh Chakraborty', '100b0100', 'House No. 95, Pirojpur Road, Pirojpur, Barisal', '2023068@iub.edu.bd', '+8801700000198', 'Male', '2002-07-17', '2020-01-15', 'BFIN'),
('2023069', 'Aditi Banerjee', '100a0100', 'House No. 98, Bogra Road, Bogra, Rajshahi', '2023069@iub.edu.bd', '+8801700000199', 'Male', '2002-07-18', '2020-01-15', 'BGMN'),
('2023070', 'Ahan Mukherjee', '100b0101', 'House No. 100, Modina Market Road, Modina Market, Khulna', '2023070@iub.edu.bd', '+8801700000200', 'Female', '2002-07-19', '2020-01-15', 'BHRM'),
('2023071', 'Aishani Das', '100a0101', 'House No. 103, Manikgonj Road, Manikgonj, Dhaka', '2023071@iub.edu.bd', '+8801700000201', 'Male', '2002-07-20', '2020-01-15', 'BINB'),
('2023072', 'Alisha Roy', '100b0102', 'House No. 105, Moheshkhali Road, Moheshkhali, Cox\'s Bazar', '2023072@iub.edu.bd', '+8801700000202', 'Male', '2002-07-21', '2020-01-15', 'BMIS'),
('2023073', 'Ananya Sen', '100a0102', 'House No. 108, Bonosree Road, Bonosree, Dhaka', '2023073@iub.edu.bd', '+8801700000203', 'Female', '2002-07-22', '2020-01-15', 'BMKT'),
('2023074', 'Aniket Chowdhury', '100b0103', 'House No. 111, Shohid Shamsuddin Road, Shohid Shamsuddin, Barisal', '2023074@iub.edu.bd', '+8801700000204', 'Male', '2002-07-23', '2020-01-15', 'BANT'),
('2023075', 'Anindita Ghosh', '100a0103', 'House No. 114, Kalampur Road, Kalampur, Tangail', '2023075@iub.edu.bd', '+8801700000205', 'Male', '2002-07-24', '2020-01-15', 'BENG'),
('2023076', 'Anirban Saha', '100b0104', 'House No. 116, Kanaighat Road, Kanaighat, Sylhet', '2023076@iub.edu.bd', '+8801700000206', 'Female', '2002-07-25', '2020-01-15', 'BANT'),
('2023077', 'Anisha Basu', '100a0104', 'House No. 119, Nabinagar Road, Nabinagar, Brahmanbaria', '2023077@iub.edu.bd', '+8801700000207', 'Male', '2002-07-26', '2020-01-15', 'BENG'),
('2023078', 'Ankita Kundu', '100b0105', 'House No. 122, Bhola Road, Bhola, Barisal', '2023078@iub.edu.bd', '+8801700000208', 'Male', '2002-07-27', '2020-01-15', 'BCMN'),
('2023079', 'Anmol Sarkar', '100a0105', 'House No. 125, Shahjadpur Road, Shahjadpur, Sirajganj', '2023079@iub.edu.bd', '+8801700000209', 'Female', '2002-07-28', '2020-01-15', 'BCSE'),
('2023080', 'Anshuman Dasgupta', '100b0106', 'House No. 127, Bagmara Road, Bagmara', '2023080@iub.edu.bd', '+8801700000210', 'Male', '2002-07-29', '2020-01-15', 'BCSE'),
('2023081', 'Antara Datta', '100a0106', 'House No. 32, Shanti Bari Road, Kalibari, Khulna', '2023081@iub.edu.bd', '+8801700000211', 'Male', '2002-07-30', '2020-01-15', 'BCSE'),
('2023082', 'Aradhya Ghoshal', '100b0107', 'House No. 44, Jubilee Road, Mashima, Chittagong', '2023082@iub.edu.bd', '+8801700000212', 'Female', '2002-07-31', '2020-01-15', 'BCSE'),
('2023083', 'Arinjit Kar', '100a0107', 'House No. 20, College Road, Sylhet Bazar, Sylhet', '2023083@iub.edu.bd', '+8801700000213', 'Male', '2002-08-01', '2020-01-15', 'BCSE'),
('2023084', 'Arjun Chatterjee', '100b0108', 'House No. 18, Police Line Road, New Market, Rangpur', '2023084@iub.edu.bd', '+8801700000214', 'Male', '2002-08-02', '2020-01-15', 'BCSE'),
('2023085', 'Arnab Guha', '100a0108', 'House No. 12, Arambagh Road, Nai Bazar, Rajshahi', '2023085@iub.edu.bd', '+8801700000215', 'Female', '2002-08-03', '2020-01-15', 'BEEE'),
('2023086', 'Arpan Ghosh', '100b0109', 'House No. 8, Shantinagar Road, Nobabgonj, Dhaka', '2023086@iub.edu.bd', '+8801700000216', 'Male', '2002-08-04', '2020-01-15', 'BEEE'),
('2023087', 'Arshad Ali', '100a0109', 'House No. 9, Jail Road, Sadar Bazar, Tangail', '2023087@iub.edu.bd', '+8801700000217', 'Male', '2002-08-05', '2020-01-15', 'BEEE'),
('2023088', 'Arya Dey', '100b0110', 'House No. 6, Gafargaon Road, Mohakhali, Gazipur', '2023088@iub.edu.bd', '+8801700000218', 'Female', '2002-08-06', '2020-01-15', 'BEEE'),
('2023089', 'Aryan Ray', '100a0110', 'House No. 28, Jiban Bima Road, Mirpur-1, Dhaka', '2023089@iub.edu.bd', '+8801700000219', 'Male', '2002-08-07', '2020-01-15', 'BEEE'),
('2023090', 'Asha Paul', '100b0111', 'House No. 15, Sonadanga Road, Sonadanga, Khulna', '2023090@iub.edu.bd', '+8801700000220', 'Male', '2002-08-08', '2020-01-15', 'BPS'),
('2023091', 'Ashmita Bhowmik', '100a0111', 'House No. 16, Kalurghat Road, Lalchand Nagar, Chittagong', '2023091@iub.edu.bd', '+8801700000221', 'Female', '2002-08-09', '2020-01-15', 'BPS'),
('2023092', 'Atif Ahmed', '100b0112', 'House No. 22, Zindabazar Road, Zindabazar, Sylhet', '2023092@iub.edu.bd', '+8801700000222', 'Male', '2002-08-10', '2020-01-15', 'BACN'),
('2023093', 'Avik Das', '100a0112', 'House No. 25, Dhap Road, Dhap, Rangpur', '2023093@iub.edu.bd', '+8801700000223', 'Male', '2002-08-11', '2020-01-15', 'BECN'),
('2023094', 'Avinash Dutta', '100b0113', 'House No. 31, Uposhohor Road, Uposhohor, Rajshahi', '2023094@iub.edu.bd', '+8801700000224', 'Female', '2002-08-12', '2020-01-15', 'BFIN'),
('2023095', 'Ayushi Sen Gupta', '100a0113', 'House No. 7, Elephant Road, New Market, Dhaka', '2023095@iub.edu.bd', '+8801700000225', 'Male', '2002-08-13', '2020-01-15', 'BGMN'),
('2023096', 'Bhuvaneshwar Roy', '100b0114', 'House No. 14, Station Road, Sadar Bazar, Narayanganj', '2023096@iub.edu.bd', '+8801700000226', 'Male', '2002-08-14', '2020-01-15', 'BHRM'),
('2023097', 'Debanjan Bose', '100a0114', 'House No. 19, Kabi Jasimuddin Road, Adabar, Dhaka', '2023097@iub.edu.bd', '+8801700000227', 'Female', '2002-08-15', '2020-01-15', 'BINB'),
('2023098', 'Debargha Chakraborty', '100b0115', 'House No. 33, Satmatha Road, Satmatha, Brahmanbaria', '2023098@iub.edu.bd', '+8801700000228', 'Male', '2002-08-16', '2020-01-15', 'BMIS'),
('2023099', 'Debashish Das', '100a0115', 'House No. 40, Purbani Road, Purbani, Comilla', '2023099@iub.edu.bd', '+8801700000229', 'Male', '2002-08-17', '2020-01-15', 'BMKT'),
('2023100', 'Debolina Sengupta', '100b0116', 'House No. 23, Nai Sarak Road, Nai Sarak, Mymensingh', '2023100@iub.edu.bd', '+8801700000230', 'Female', '2002-08-18', '2020-01-15', 'BANT'),
('2023101', 'Deepa Banik', '100a0116', 'House No. 30, Karwan Bazar Road, Karwan Bazar, Dhaka', '2023101@iub.edu.bd', '+8801700000231', 'Male', '2002-08-19', '2020-01-15', 'BENG'),
('2023102', 'Deepsikha Choudhury', '100b0117', 'House No. 17, Kalibari Road, Kalibari, Sylhet', '2023102@iub.edu.bd', '+8801700000232', 'Male', '2002-08-20', '2020-01-15', 'BANT'),
('2023103', 'Devarshi Roy', '100a0117', 'House No. 21, Nayapaltan Road, Nayapaltan, Dhaka', '2023103@iub.edu.bd', '+8801700000233', 'Female', '2002-08-21', '2020-01-15', 'BENG'),
('2023104', 'Devika Chatterjee', '100b0118', 'House No. 29, Biswanath Road, Biswanath, Sylhet', '2023104@iub.edu.bd', '+8801700000234', 'Male', '2002-08-22', '2020-01-15', 'BCMN'),
('2023105', 'Devjeet Mukherjee', '100a0118', 'House No. 27, Jhautala Road, Jhautala, Khulna', '2023105@iub.edu.bd', '+8801700000235', 'Male', '2002-08-23', '2020-01-15', 'BCSE'),
('2023106', 'Devraj Basak', '100b0119', 'House No. 11, BRTC Road, Basundhara, Rangpur', '2023106@iub.edu.bd', '+8801700000236', 'Female', '2002-08-24', '2020-01-15', 'BCSE'),
('2023107', 'Dhananjay Das', '100a0119', 'House No. 10, South Jatrabari Road, South Jatrabari, Dhaka', '2023107@iub.edu.bd', '+8801700000237', 'Male', '2002-08-25', '2020-01-15', 'BCSE'),
('2023108', 'Dhiman Banerjee', '100b0120', 'House No. 34, Sonaimuri Road, Sonaimuri, Noakhali', '2023108@iub.edu.bd', '+8801700000238', 'Male', '2002-08-26', '2020-01-15', 'BCSE'),
('2023109', 'Dibyendu Chakraborty', '100a0120', 'House No. 24, Moghbazar Road, Moghbazar, Dhaka', '2023109@iub.edu.bd', '+8801700000239', 'Female', '2002-08-27', '2020-01-15', 'BCSE'),
('2023110', 'Dipak Bhattacharya', '100b0121', 'House No. 35, Chowdhury Para Road, Chowdhury Para, Sylhet', '2023110@iub.edu.bd', '+8801700000240', 'Male', '2002-08-28', '2020-01-15', 'BCSE'),
('2023111', 'Dipanjan Roy', '100a0121', 'House No. 37, Feni Road, Feni, Comilla', '2023111@iub.edu.bd', '+8801700000241', 'Male', '2002-08-29', '2020-06-01', 'BEEE'),
('2023112', 'Divya Saha', '100b0122', 'House No. 36, Kadamtoli Road, Kadamtoli, Chittagong', '2023112@iub.edu.bd', '+8801700000242', 'Female', '2002-08-30', '2020-06-01', 'BEEE'),
('2023113', 'Divyansh Ghosh', '100a0122', 'House No. 39, Narshingdi Road, Narshingdi, Dhaka', '2023113@iub.edu.bd', '+8801700000243', 'Male', '2002-08-31', '2020-06-01', 'BEEE'),
('2023114', 'Drishti Ray', '100b0123', 'House No. 38, Kaptai Road, Kaptai, Rangamati', '2023114@iub.edu.bd', '+8801700000244', 'Male', '2002-09-01', '2020-06-01', 'BEEE'),
('2023115', 'Gaurav Pal', '100a0123', 'House No. 42, Mawna Road, Mawna, Gazipur', '2023115@iub.edu.bd', '+8801700000245', 'Female', '2002-09-02', '2020-06-01', 'BEEE'),
('2023116', 'Gautam Mukherjee', '100b0124', 'House No. 43, Amborkhana Road, Amborkhana, Sylhet', '2023116@iub.edu.bd', '+8801700000246', 'Male', '2002-09-03', '2020-06-01', 'BPS'),
('2023117', 'Gourav Banerjee', '100a0124', 'House No. 47, Momin Road, Momin Road, Chittagong', '2023117@iub.edu.bd', '+8801700000247', 'Male', '2002-09-04', '2020-06-01', 'BPS'),
('2023118', 'Ipsita Nandi', '100b0125', 'House No. 46, Uttara Model Town Road, Uttara Model Town, Dhaka', '2023118@iub.edu.bd', '+8801700000248', 'Female', '2002-09-05', '2020-06-01', 'BACN'),
('2023119', 'Ishita Chowdhury', '100a0125', 'House No. 51, Bagh Bari Road, Bagh Bari, Sylhet', '2023119@iub.edu.bd', '+8801700000249', 'Male', '2002-09-06', '2020-06-01', 'BECN'),
('2023120', 'Ishaan Gupta', '100b0126', 'House No. 50, Jubilee Road, Nasirabad, Chittagong', '2023120@iub.edu.bd', '+8801700000250', 'Male', '2002-09-07', '2020-06-01', 'BFIN'),
('2023121', 'Ishanvi Basu', '100a0126', 'House No. 55, Zia Sarani Road, Zia Sarani, Dhaka', '2023121@iub.edu.bd', '+8801700000251', 'Female', '2002-09-08', '2020-06-01', 'BGMN'),
('2023122', 'Ishika Sen', '100b0127', 'House No. 58, Sonaimuri Road, Hathazari, Chittagong', '2023122@iub.edu.bd', '+8801700000252', 'Male', '2002-09-09', '2020-06-01', 'BHRM'),
('2023123', 'Jahanvi Das', '100a0127', 'House No. 61, Stadium Road, Khulna Stadium, Khulna', '2023123@iub.edu.bd', '+8801700000253', 'Male', '2002-09-10', '2020-06-01', 'BINB'),
('2023124', 'Jayanta Chakraborty', '100b0128', 'House No. 63, Tilagarh Road, Tilagarh, Rangpur', '2023124@iub.edu.bd', '+8801700000254', 'Female', '2002-09-11', '2020-06-01', 'BCSE'),
('2023125', 'Jitendra Saha', '100a0128', 'House No. 65, GEC Road, GEC, Chittagong', '2023125@iub.edu.bd', '+8801700000255', 'Male', '2002-09-12', '2020-06-01', 'BCSE'),
('2023126', 'Koustav Das', '100b0129', 'House No. 67, Chandgaon Road, Chandgaon, Dhaka', '2023126@iub.edu.bd', '+8801700000256', 'Male', '2002-09-13', '2020-06-01', 'BCSC'),
('2023127', 'Krishna Ghosh', '100a0129', 'House No. 69, Mohanpur Road, Mohanpur, Rajshahi', '2023127@iub.edu.bd', '+8801700000257', 'Female', '2002-09-14', '2020-06-01', 'BCSC'),
('2023128', 'Kushal Bhattacharya', '100b0130', 'House No. 71, Mirzapur Road, Mirzapur, Tangail', '2023128@iub.edu.bd', '+8801700000258', 'Male', '2002-09-15', '2020-06-01', 'BCSC'),
('2023129', 'Laboni Sengupta', '100a0130', 'House No. 72, Station Road, Syedpur, Nilphamari', '2023129@iub.edu.bd', '+8801700000259', 'Male', '2002-09-16', '2020-06-01', 'BCSE'),
('2023130', 'Maitreya Dey', '100b0131', 'House No. 76, Sujanagar Road, Sujanagar, Pabna', '2023130@iub.edu.bd', '+8801700000260', 'Female', '2002-09-17', '2020-06-01', 'BCSE'),
('2030069', 'Mehedi Hasan Surem', '10surem', 'House No. 76, Sujanagar Road, Sujanagar, Pabna', '2030069@iub.edu.bd', '+8801700000266', 'Male', '2000-01-06', '2020-06-01', 'BCSE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `co`
--
ALTER TABLE `co`
  ADD PRIMARY KEY (`coID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseID`);

--
-- Indexes for table `course_outline`
--
ALTER TABLE `course_outline`
  ADD PRIMARY KEY (`outlineID`),
  ADD KEY `fk_course_outline_course` (`courseID`) USING BTREE,
  ADD KEY `fk_course_outline_section` (`sectionNo`);

--
-- Indexes for table `co_completion`
--
ALTER TABLE `co_completion`
  ADD PRIMARY KEY (`studentID`,`courseID`,`coID`),
  ADD KEY `fk_co_completion_co` (`coID`),
  ADD KEY `fk_co_completion_course` (`courseID`);

--
-- Indexes for table `co_plo`
--
ALTER TABLE `co_plo`
  ADD PRIMARY KEY (`coID`,`ploID`),
  ADD KEY `fk_co_plo_plo` (`ploID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`departmentID`),
  ADD KEY `fk_department_school` (`schoolID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeID`);

--
-- Indexes for table `enrollement`
--
ALTER TABLE `enrollement`
  ADD PRIMARY KEY (`studentID`,`courseID`),
  ADD KEY `fk_enrollement_course` (`courseID`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`examID`),
  ADD KEY `fk_exam_course` (`courseID`),
  ADD KEY `fk_exam_section` (`sectionNo`);

--
-- Indexes for table `exam_questions`
--
ALTER TABLE `exam_questions`
  ADD PRIMARY KEY (`examID`,`questionID`),
  ADD KEY `fk_exam_questions_questions` (`questionID`);

--
-- Indexes for table `plo`
--
ALTER TABLE `plo`
  ADD PRIMARY KEY (`ploID`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`programID`),
  ADD KEY `fk_program_department` (`departmentID`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`questionID`),
  ADD KEY `fk_questions_course` (`courseID`);

--
-- Indexes for table `registered_course`
--
ALTER TABLE `registered_course`
  ADD PRIMARY KEY (`registrationID`,`studentID`,`sectionNo`,`courseID`),
  ADD KEY `fk_registered_course_student` (`studentID`),
  ADD KEY `fk_registered_course_course` (`courseID`),
  ADD KEY `fk_registered_course_section` (`sectionNo`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`registrationID`),
  ADD KEY `fk_registration_student` (`studentID`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`schoolID`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`sectionNo`,`semester`,`year`,`courseID`),
  ADD KEY `fk_section_course` (`courseID`),
  ADD KEY `fk_section_course_outline` (`outlineID`),
  ADD KEY `fk_section_course_employee` (`instructorID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentID`),
  ADD KEY `fk_student_program` (`programID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_outline`
--
ALTER TABLE `course_outline`
  ADD CONSTRAINT `fk_course_outline_courseID` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`),
  ADD CONSTRAINT `fk_course_outline_section` FOREIGN KEY (`sectionNo`) REFERENCES `section` (`sectionNo`);

--
-- Constraints for table `co_completion`
--
ALTER TABLE `co_completion`
  ADD CONSTRAINT `fk_co_completion_co` FOREIGN KEY (`coID`) REFERENCES `co` (`coID`),
  ADD CONSTRAINT `fk_co_completion_course` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`),
  ADD CONSTRAINT `fk_co_completion_student` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`),
  ADD CONSTRAINT `fk_course_outline_course` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`);

--
-- Constraints for table `co_plo`
--
ALTER TABLE `co_plo`
  ADD CONSTRAINT `fk_co_plo_co` FOREIGN KEY (`coID`) REFERENCES `co` (`coID`),
  ADD CONSTRAINT `fk_course_outline_co` FOREIGN KEY (`coID`) REFERENCES `co` (`coID`),
  ADD CONSTRAINT `fk_course_outline_plo` FOREIGN KEY (`ploID`) REFERENCES `plo` (`ploID`);

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `fk_department_school` FOREIGN KEY (`schoolID`) REFERENCES `school` (`schoolID`);

--
-- Constraints for table `enrollement`
--
ALTER TABLE `enrollement`
  ADD CONSTRAINT `fk_enrollement_course` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`),
  ADD CONSTRAINT `fk_enrollement_student` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`);

--
-- Constraints for table `exam`
--
ALTER TABLE `exam`
  ADD CONSTRAINT `fk_exam_course` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`),
  ADD CONSTRAINT `fk_exam_section` FOREIGN KEY (`sectionNo`) REFERENCES `section` (`sectionNo`);

--
-- Constraints for table `exam_questions`
--
ALTER TABLE `exam_questions`
  ADD CONSTRAINT `fk_exam_questions_exam` FOREIGN KEY (`examID`) REFERENCES `exam` (`examID`),
  ADD CONSTRAINT `fk_exam_questions_questions` FOREIGN KEY (`questionID`) REFERENCES `questions` (`questionID`);

--
-- Constraints for table `program`
--
ALTER TABLE `program`
  ADD CONSTRAINT `fk_program_department` FOREIGN KEY (`departmentID`) REFERENCES `department` (`departmentID`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `fk_questions_course` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`);

--
-- Constraints for table `registered_course`
--
ALTER TABLE `registered_course`
  ADD CONSTRAINT `fk_registered_course_course` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`),
  ADD CONSTRAINT `fk_registered_course_registration` FOREIGN KEY (`registrationID`) REFERENCES `registration` (`registrationID`),
  ADD CONSTRAINT `fk_registered_course_section` FOREIGN KEY (`sectionNo`) REFERENCES `section` (`sectionNo`),
  ADD CONSTRAINT `fk_registered_course_student` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`);

--
-- Constraints for table `registration`
--
ALTER TABLE `registration`
  ADD CONSTRAINT `fk_registration_student` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`);

--
-- Constraints for table `section`
--
ALTER TABLE `section`
  ADD CONSTRAINT `fk_section_course` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`),
  ADD CONSTRAINT `fk_section_course_employee` FOREIGN KEY (`instructorID`) REFERENCES `employee` (`employeeID`),
  ADD CONSTRAINT `fk_section_course_outline` FOREIGN KEY (`outlineID`) REFERENCES `course_outline` (`outlineID`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `fk_programID` FOREIGN KEY (`programID`) REFERENCES `program` (`programID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
