-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2024 at 06:34 AM
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
-- Database: `sms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(127) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(127) NOT NULL,
  `lname` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `fname`, `lname`) VALUES
(1, 'admin', '$2y$10$H7obJEdmLzqqcPy7wQWhsOLUvrgzC8f1Y1or2Gxaza5z1PT0tvLy6', 'admin', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `grade` int(11) NOT NULL,
  `section` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `grade`, `section`) VALUES
(1, 7, 2),
(2, 1, 1),
(3, 3, 3),
(4, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `grade_id` int(11) NOT NULL,
  `grade` varchar(31) NOT NULL,
  `grade_code` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`grade_id`, `grade`, `grade_code`) VALUES
(1, '1', 'G'),
(2, '2', 'G'),
(3, '3', 'G'),
(4, '4', 'G'),
(7, '5', 'G');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `sender_full_name` varchar(100) NOT NULL,
  `sender_email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `sender_full_name`, `sender_email`, `message`, `date_time`) VALUES
(1, 'Kasun Perera', 'kasun@gmail.com', 'Hello, world', '2023-02-17 23:39:15'),
(2, 'kalhara fernando', 'es@gmail.com', 'Hi', '2023-02-17 23:49:19'),
(3, 'Saman edirimuni', 'es@gmail.com', 'Hey, ', '2023-02-17 23:49:36'),
(4, 'Kalindu Himasara', 'kalinduhimasara1@gmail.com', 'Hello World', '2024-08-03 19:28:11'),
(5, 'sdgsdgd', 'laurag33@gmail.com', 'sdgdsdg', '2024-08-07 23:10:58'),
(6, 'xxcs', 'rfaelsilva7@gmail.com', 'scsas', '2024-08-08 09:55:31');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `section_id` int(11) NOT NULL,
  `section` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `section`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(6, 'D');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `current_year` int(11) NOT NULL,
  `current_semester` varchar(11) NOT NULL,
  `school_name` varchar(100) NOT NULL,
  `slogan` varchar(300) NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `current_year`, `current_semester`, `school_name`, `slogan`, `about`) VALUES
(1, 2024, 'II', 'Emerald Valley International School', 'Cultivating Bright Minds, Nurturing Future Leaders', 'At Emerald Valley International School, we believe in cultivating bright minds and nurturing future leaders. Located in the heart of a lush, green valley, our school offers a serene and inspiring environment where students can grow academically, socially, and personally.');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `username` varchar(127) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(127) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `grade` int(11) NOT NULL,
  `section` int(11) NOT NULL,
  `address` varchar(31) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `date_of_joined` timestamp NULL DEFAULT current_timestamp(),
  `parent_fname` varchar(127) NOT NULL,
  `parent_lname` varchar(127) NOT NULL,
  `parent_phone_number` varchar(31) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `username`, `password`, `fname`, `lname`, `grade`, `section`, `address`, `gender`, `email_address`, `date_of_birth`, `date_of_joined`, `parent_fname`, `parent_lname`, `parent_phone_number`) VALUES
(1, 'Amara', '$2y$10$xmtROY8efWeORYiuQDE3SO.eZwscao20QNuLky1Qlr88zDzNNq4gm', 'Amara', 'Silva', 1, 1, '12/5 Temple Road, Colombo 07', 'Male', 'amara.silva@example.com', '2012-09-12', '2019-12-11 14:16:44', 'Tharindu ', 'Wickramasinghe', '0712345678'),
(3, 'Nuwan', '$2y$10$KLFheMWgpLfoiqMuW2LQxOPficlBiSIJ9.wE2qr5yJUbAQ.5VURoO', 'Nuwan ', 'Perera', 2, 1, '34/2 Lake Road, Kandy', 'Male', 'nuwan.perera@example.com', '2002-12-03', '2021-12-01 14:16:51', 'Anuradha ', 'Senanayake', '0716789012'),
(4, 'Chamali', '$2y$10$bKDOt9PrnY1ILMHSADVhHOH/f.BD4z/icf4JjVhleqUZ2q7hDfolC', 'Chamali', 'Fernando', 1, 1, '56/9 Beach Road, Galle', 'Female', 'chamali.fernando@example.com', '2013-06-13', '2022-09-10 13:48:49', 'Kamal ', 'De Silva', '0743456789'),
(5, 'Ruwan', '$2y$10$FMmFQRM558Dn/u6eYgSMzeXgXz.JtnVt0Q9JwXH.MRzUuCtTZIM3i', 'Ruwan', 'Jayasinghe', 3, 1, '21/8 Hill Street, Nuwara Eliya', 'Male', 'ruwan.jayasinghe@example.com', '1990-02-15', '2023-02-12 18:11:26', 'Menaka ', 'Rathnayake', '070-5678901'),
(6, 'Asela', '$2y$10$unsaHxA1aS4uwIUrQqi9.uf/HWvPmX.9qZThui3/XTZfLXfJ.Fqry', 'Asela ', 'Wijeratne', 7, 2, '67/9 Main Street, Trincomalee', 'Male', 'asela.wijeratne@example.com', '2011-02-24', '2024-08-03 14:30:43', 'Lakshan ', 'Ekanayake', '0783456789'),
(7, 'KanchanaJ', '$2y$10$bPpZ50Ku29Tq.VMuI7KKFudJ8OPBNudncH.2PCZVpof7RX.L.1LOu', 'Kanchana ', 'Jayawardena', 3, 2, '88 River Road, Batticaloa, Sri ', 'Male', 'kanchana.jayawardena@example.com', '2004-07-05', '2024-08-05 13:31:08', 'Harsha', 'De Silva', '+94 76 234 5678'),
(8, 'DilrukshiR', '$2y$10$z/YBDvdf.lwj3u4qgPc6aO/iDerQA13/gCAg9t5KSiW2nCO5mtN8O', 'Dilrukshi ', 'Rajapaksha', 7, 2, '67 Seaside Road, Hikkaduwa, Sri', 'Male', 'dilrukshi.rajapaksha@example.com', '2011-07-07', '2024-08-07 04:21:07', 'Lasith ', 'Mendis', ' 94 72 678 9012'),
(9, 'SameeraG', '$2y$10$j/DeY9JXaTf69z8BExqA0OItbigjWG4WM03dMQZriMwxGQ5W7Rpui', 'Sameera', 'Gunasekara', 2, 2, '78 Garden Lane, Polonnaruwa, Sr', 'Male', 'sameera.gunasekara@example.com', '2024-06-13', '2024-08-07 17:37:47', 'Ishara ', 'Jayawardene', '0716789012');

-- --------------------------------------------------------

--
-- Table structure for table `student_score`
--

CREATE TABLE `student_score` (
  `id` int(11) NOT NULL,
  `semester` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `results` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_score`
--

INSERT INTO `student_score` (`id`, `semester`, `year`, `student_id`, `teacher_id`, `subject_id`, `results`) VALUES
(1, 'II', 2021, 1, 1, 1, '10 15,15 20,10 10,10 20,30 35'),
(2, 'II', 2023, 1, 1, 4, '15 20,4 5'),
(3, 'I', 2022, 1, 1, 5, '10 20,50 50'),
(4, 'II', 2023, 1, 1, 5, '70 100'),
(5, 'II', 2024, 6, 1, 6, '85 100'),
(6, 'II', 2024, 4, 8, 2, '85 100'),
(7, 'II', 2024, 8, 1, 7, '90 100'),
(8, 'II', 2024, 6, 14, 7, '75 100'),
(9, 'II', 2024, 6, 15, 7, '85 100');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `subject` varchar(31) NOT NULL,
  `subject_code` varchar(31) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_id`, `subject`, `subject_code`, `grade`) VALUES
(1, 'English', 'En', 1),
(2, 'Sinhala Language', 'Sin', 1),
(3, 'Environmental Studies', 'ENS', 1),
(4, 'Maths', 'Math-01', 1),
(5, 'Religion', 'Rel-2', 2),
(6, 'Aesthetics', 'Aes-5', 7),
(7, 'Health and Physical Education', 'Hel-5', 7),
(8, 'History', 'His-3', 3),
(9, 'ICT', 'ICT-4', 4),
(10, 'Physics', 'Phy', 7),
(11, 'Maths', 'Math-3', 3);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `teacher_id` int(11) NOT NULL,
  `username` varchar(127) NOT NULL,
  `password` varchar(255) NOT NULL,
  `class` varchar(31) NOT NULL,
  `fname` varchar(127) NOT NULL,
  `lname` varchar(127) NOT NULL,
  `subjects` varchar(31) NOT NULL,
  `address` varchar(31) NOT NULL,
  `employee_number` int(11) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `phone_number` varchar(31) NOT NULL,
  `qualification` varchar(127) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `date_of_joined` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`teacher_id`, `username`, `password`, `class`, `fname`, `lname`, `subjects`, `address`, `employee_number`, `date_of_birth`, `phone_number`, `qualification`, `gender`, `email_address`, `date_of_joined`) VALUES
(1, 'KasunP', '$2y$10$JruTW/rNZ6CVO4nxYWCrn.GJpiIKMACEPYrK00S7Dk/fkbJIdYau2', '1234', 'Kasun', 'Perera', '1234567', 'Passara Road,Badulla', 6546, '2024-08-02', '0771234567', 'BSc', 'Male', 'kasun@gmail.com', '2024-08-03 05:23:45'),
(8, 'Anusha', '$2y$10$JPtZeeu7OnaEXOfadcVXLeMdlwCV/IasbUU9.GuqMXV29oyoBp6B2', '1234', 'Anusha', 'Herath', '123456789', '12/7 Forest Drive, Polonnaruwa', 1122, '2024-08-23', '0727890123', 'Bsc', 'Male', 'anusha.herath@example.com', '2024-08-03 20:25:05'),
(11, 'DilaniS', '$2y$10$BDBWtb.mlHEYD0KUHlG41.uyEKaeAnr2kRKPBT/ebn0KAh6VhTJYW', '122122', 'Dilani', 'Samarasinghe', '1239', '52 High Street, Badulla, Sri La', 1314, '1999-02-06', ' 94 72 012 3456', 'Bsc', 'Male', 'dilani.samarasinghe@example.com', '2024-08-06 09:21:58'),
(13, 'SarathK', '$2y$10$ZNQgRfgSadecEFDGqZ2xGOLW6SUNHfbspsgjNV8FqWN07Ii.1ghtq', '123', 'Sarath ', 'Kumara', '167', '23 Mountain View, Ella, Sri Lan', 1023, '1999-06-25', '+94 71 345 6789', 'Bsc', 'Male', 'sarath.kumara@example.com', '2024-08-07 09:48:23'),
(14, 'IsharaJ', '$2y$10$n0eL2IuadzfmpzQ2hcIO6.PdaNiDMHEWkEuSfg7gMfmk/W4MPVAuy', '12', 'Ishara ', 'Jayawardene', '12467', '56 Palm Grove, Chilaw, Sri Lank', 1555, '2019-07-17', '+94 75 789 0123', 'Bsc', 'Male', 'ishara.jayawardene@example.com', '2024-08-07 23:05:40'),
(15, 'KusalR', '$2y$10$LMkP6kRGo3qfouV6MizT4.I5tkZiRmisms5RCdPU.QfwXYhGjNjAO', '1234', 'Kusal ', 'Rathnayake', '124678', '12 Beach Road, Puttalam, Sri La', 1666, '2022-03-23', '+94 71 901 2345', 'Bsc', 'Male', 'kusal.rathnayake@example.com', '2024-08-08 09:51:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `student_score`
--
ALTER TABLE `student_score`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacher_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `student_score`
--
ALTER TABLE `student_score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
