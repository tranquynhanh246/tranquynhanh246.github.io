-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2023 at 12:02 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `ID` int(11) NOT NULL,
  `days` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `id_GV` int(11) DEFAULT NULL,
  `id_courseClass` int(11) DEFAULT NULL,
  `id_SV` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`ID`, `days`, `status`, `id_GV`, `id_courseClass`, `id_SV`) VALUES
(1, '2023-05-19', 'Đi học', 1, 1, 1),
(2, '2023-05-19', 'Đi học', 1, 1, 2),
(3, '2023-05-19', 'Vắng', 1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id_SV` int(11) DEFAULT NULL,
  `id_courseClass` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id_SV`, `id_courseClass`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `courseclass`
--

CREATE TABLE `courseclass` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `timeStart` date DEFAULT NULL,
  `timefinish` date DEFAULT NULL,
  `id_GV` int(11) DEFAULT NULL,
  `id_course` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courseclass`
--

INSERT INTO `courseclass` (`ID`, `name`, `timeStart`, `timefinish`, `id_GV`, `id_course`) VALUES
(1, 'Công nghệ Web-2-22', '2023-04-17', '2023-06-18', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `ID` int(11) NOT NULL,
  `courseID` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`ID`, `courseID`, `title`, `content`) VALUES
(1, 'CSE485', 'Công Nghệ Web', 'Môn học này cung cấp cho sinh viên các kiến thức cơ sở nhất trong việc xây dựng một website.'),
(2, 'CSE480', 'Phân tích và thiết kế hệ thống thông tin', 'Môn học này giúp sinh viên hiểu và áp dụng các phương pháp, kỹ thuật và công cụ để phân tích, thiết kế và triển khai các hệ thống thông tin.'),
(3, 'CSE281', 'Cấu trúc dữ liệu và giải thuật', 'Môn học Cấu trúc dữ liệu và giải thuật tập trung vào việc nắm vững các khái niệm, kỹ thuật và công cụ để hiểu, thiết kế và triển khai cấu trúc dữ liệu và giải thuật trong lập trình.\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `lecturers`
--

CREATE TABLE `lecturers` (
  `ID` int(11) NOT NULL,
  `fullName` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lecturers`
--

INSERT INTO `lecturers` (`ID`, `fullName`, `email`, `phoneNumber`, `address`, `level`) VALUES
(1, 'Kiều Tuấn Dũng', 'dungkt@gmail.com', '0985532328', 'Hà Nội', 'Tiến Sĩ'),
(2, 'Nguyễn Văn Nam', 'namvn@gmail.com', '0986652368', 'Thái Bình', 'Tiến Sĩ'),
(3, 'Dương Thị Thu Trang', 'trangttd@gmail.com', '0985235226', 'Thái Nguyên', 'Tiến Sĩ'),
(4, 'Phạm Thị Anh', 'anhtp@gmail.com', '0952258623', 'Hòa Bình', 'Tiến Sĩ'),
(5, 'Lý Thành Công', 'congtl@gmail.com', '0986236358', 'Nghệ An', 'Tiến Sĩ');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `create_at` date DEFAULT NULL,
  `update_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`ID`, `name`, `create_at`, `update_at`) VALUES
(1, 'Admin', '2023-05-18', '2023-05-18'),
(2, 'user', '2023-05-18', '2023-05-18');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `ID` int(11) NOT NULL,
  `semester` varchar(50) NOT NULL,
  `stage` varchar(50) NOT NULL,
  `schoolYear` varchar(50) DEFAULT NULL,
  `id_SV` int(11) DEFAULT NULL,
  `id_course` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`ID`, `semester`, `stage`, `schoolYear`, `id_SV`, `id_course`) VALUES
(1, 'Học kỳ II', 'Giai đoạn 2', '2022-2023', 1, 1),
(2, 'Học kỳ II', 'Giai đoạn 2', '2022-2023', 2, 1),
(3, 'Học kỳ II', 'Giai đoạn 2', '2022-2023', 3, 1),
(4, 'Học kỳ II', 'Giai đoạn 2', '2022-2023', 4, 1),
(5, 'Học kỳ II', 'Giai đoạn 2', '2022-2023', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `ID` int(11) NOT NULL,
  `fullName` varchar(50) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`ID`, `fullName`, `gender`, `birthday`, `email`, `phoneNumber`, `address`) VALUES
(1, 'Lê Văn Quân', 'Nam', '2002-05-02', 'quanlv@gmail.com', '0962358866', 'Hà Nội'),
(2, 'Nguyễn Văn Thành', 'Nam', '2002-07-06', 'thanhnv@gmail.com', '0961258966', 'Vĩnh Phúc'),
(3, 'Nguyễn Thị Oanh', 'Nữ', '2002-04-03', 'oanhtn@gmail.com', '09856625358', 'Hải Dương'),
(4, 'Lý Văn Trường ', 'Nam', '2002-03-16', 'truonglv@gmail.com', '0986258666', 'Quảng Ninh'),
(5, 'Lê Văn Thắng', 'Nam', '2002-08-08', 'thanglv@gmail.com', '0966259358', 'Cao Bằng');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `create_at` date DEFAULT NULL,
  `update_at` date DEFAULT NULL,
  `id_level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `name`, `email`, `password`, `phone`, `address`, `create_at`, `update_at`, `id_level`) VALUES
(1, 'dungkt', 'dungkt@gmail.com', '123456', '0985532356', 'Hà Nội', '2023-05-19', '2023-05-19', 1),
(2, 'quanlv', 'quanlv@gmail.com', '123456', '0985562258', 'Hà Nội', '2023-05-19', '2023-05-19', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_GV` (`id_GV`),
  ADD KEY `id_courseClass` (`id_courseClass`),
  ADD KEY `id_SV` (`id_SV`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD KEY `id_SV` (`id_SV`),
  ADD KEY `id_courseClass` (`id_courseClass`);

--
-- Indexes for table `courseclass`
--
ALTER TABLE `courseclass`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_GV` (`id_GV`),
  ADD KEY `id_course` (`id_course`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `lecturers`
--
ALTER TABLE `lecturers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_SV` (`id_SV`),
  ADD KEY `id_course` (`id_course`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_level` (`id_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `courseclass`
--
ALTER TABLE `courseclass`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lecturers`
--
ALTER TABLE `lecturers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`id_GV`) REFERENCES `lecturers` (`ID`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`id_courseClass`) REFERENCES `courseclass` (`ID`),
  ADD CONSTRAINT `attendance_ibfk_3` FOREIGN KEY (`id_SV`) REFERENCES `students` (`ID`);

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`id_SV`) REFERENCES `students` (`ID`),
  ADD CONSTRAINT `class_ibfk_2` FOREIGN KEY (`id_courseClass`) REFERENCES `courseclass` (`ID`);

--
-- Constraints for table `courseclass`
--
ALTER TABLE `courseclass`
  ADD CONSTRAINT `courseclass_ibfk_1` FOREIGN KEY (`id_GV`) REFERENCES `lecturers` (`ID`),
  ADD CONSTRAINT `courseclass_ibfk_2` FOREIGN KEY (`id_course`) REFERENCES `courses` (`ID`);

--
-- Constraints for table `register`
--
ALTER TABLE `register`
  ADD CONSTRAINT `register_ibfk_1` FOREIGN KEY (`id_SV`) REFERENCES `students` (`ID`),
  ADD CONSTRAINT `register_ibfk_2` FOREIGN KEY (`id_course`) REFERENCES `courses` (`ID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `level` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
