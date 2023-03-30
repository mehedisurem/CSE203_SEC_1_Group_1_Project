-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 30, 2023 at 11:00 AM
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
CREATE DATABASE `sprm`;
-- --------------------------------------------------------
--
-- Table structure for table `co`
--

CREATE TABLE `co` (
  `coID` varchar(10) NOT NULL,
  `description` varchar(40) NOT NULL,
  `bloom_lvl` int NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
-- --------------------------------------------------------
--
-- Table structure for table `course`
--

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
--
-- Dumping data for table `course_outline`
--

INSERT INTO `course_outline` (
    `outlineID`,
    `lessonPlan`,
    `roomNo`,
    `markDistrubution`,
    `grading`,
    `syllabus`,
    `book`,
    `courseID`,
    `sectionNo`
  )
VALUES (
    'CSC101_1_AUTUMN_2023',
    '',
    '5003',
    '',
    'A,90-100##A-,85-89##B+,-80-84##B,75-79##B-,70-74,	C+,65-69##C,60-64##C-,55-59##D+,50-54##\r\nD,45-49##F,0-44\r\n',
    '',
    '',
    'CSC101',
    '1'
  );
-- --------------------------------------------------------
--
-- Table structure for table `co_completion`
--

CREATE TABLE `co_completion` (
  `studentID` varchar(7) NOT NULL,
  `courseID` varchar(7) NOT NULL,
  `coID` varchar(10) NOT NULL,
  `percentage` int NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
-- --------------------------------------------------------
--
-- Table structure for table `co_plo`
--

CREATE TABLE `co_plo` (
  `coID` varchar(10) NOT NULL,
  `ploID` varchar(6) NOT NULL,
  `percentage` int NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (
    `employeeID`,
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
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `examID` varchar(35) NOT NULL,
  `exam_Type` varchar(20) NOT NULL,
  `semester` varchar(7) NOT NULL,
  `year` varchar(4) NOT NULL,
  `courseID` varchar(7) NOT NULL,
  `sectionNo` varchar(2) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
-- --------------------------------------------------------
--
-- Table structure for table `exam_questions`
--

CREATE TABLE `exam_questions` (
  `examID` varchar(35) NOT NULL,
  `questionID` varchar(35) NOT NULL,
  `percentage` int NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
-- --------------------------------------------------------
--
-- Table structure for table `plo`
--

CREATE TABLE `plo` (
  `ploID` varchar(6) NOT NULL,
  `description` varchar(40) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
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
VALUES ('BCSC', 'B.Sc. in Computer Science ', 'CSE'),
  (
    'BCSE',
    'B.Sc. in Computer Science & Engineering',
    'CSE'
  );
-- --------------------------------------------------------
--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `questionID` varchar(35) NOT NULL,
  `description` varchar(1500) NOT NULL,
  `marks` int NOT NULL,
  `courseID` varchar(7) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
-- --------------------------------------------------------
--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `registrationID` int NOT NULL,
  `studentID` varchar(7) NOT NULL,
  `semester` varchar(7) NOT NULL,
  `year` varchar(4) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
-- --------------------------------------------------------
--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `schoolID` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
--
-- Dumping data for table `school`
--

INSERT INTO `school` (`schoolID`, `name`)
VALUES (
    'SETS',
    'School of Engineering, Technology & Sciences'
  );
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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
--
-- Dumping data for table `section`
--

INSERT INTO `section` (
    `sectionNo`,
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
  `programID` varchar(4) NOT NULL
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
    'BCSE'
  );
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
ADD PRIMARY KEY (`studentID`, `courseID`, `coID`),
  ADD KEY `fk_co_completion_co` (`coID`),
  ADD KEY `fk_co_completion_course` (`courseID`);
--
-- Indexes for table `co_plo`
--
ALTER TABLE `co_plo`
ADD PRIMARY KEY (`coID`, `ploID`),
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
ADD PRIMARY KEY (`studentID`, `courseID`),
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
ADD PRIMARY KEY (`examID`, `questionID`),
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
ADD PRIMARY KEY (
    `registrationID`,
    `studentID`,
    `sectionNo`,
    `courseID`
  ),
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
ADD PRIMARY KEY (`sectionNo`, `semester`, `year`, `courseID`),
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
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;