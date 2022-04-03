-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 03, 2022 at 09:43 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `students_DB`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_with_image`
--

CREATE TABLE `data_with_image` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'UnNamed',
  `image` varchar(254) NOT NULL,
  `degree` varchar(55) NOT NULL DEFAULT 'Matriculation/O''Levels'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_with_image`
--

INSERT INTO `data_with_image` (`id`, `name`, `image`, `degree`) VALUES
(2, 'oking', 'upload/total-fees_step-2.png', ''),
(3, 'Ali bhai', 'upload/udvikleropgave.png', 'bullshit'),
(4, 'Ali bhai', 'upload/udvikleropgave.png', 'bullshit'),
(5, 'Ali bhai', 'upload/udvikleropgave.png', 'bullshit'),
(6, 'ali', 'upload/total-fees_step-2.png', 'bsfs');

-- --------------------------------------------------------

--
-- Table structure for table `dating`
--

CREATE TABLE `dating` (
  `d` date DEFAULT NULL,
  `t` time DEFAULT NULL,
  `dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dating`
--

INSERT INTO `dating` (`d`, `t`, `dt`) VALUES
('1999-08-14', '07:45:56', '1999-07-15 04:32:24'),
('2021-11-30', '20:34:26', '2021-11-30 20:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `nTable`
--

CREATE TABLE `nTable` (
  `naming` varchar(55) NOT NULL DEFAULT 'Ali',
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nTable`
--

INSERT INTO `nTable` (`naming`, `id`) VALUES
('Umair Ali', 1),
('Ali', 2),
('Bhai Jan', 3);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL DEFAULT 'UnNamed',
  `age` int(11) NOT NULL DEFAULT 15
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `age`) VALUES
(1, 'Umair Ali', 22),
(2, 'Nobita', 20),
(3, 'Doraemon', 17),
(4, 'Shozuka', 19),
(10, 'Tun Tun Mossi', 50),
(11, 'Jaggo Bandar', 19),
(13, 'Nobita', 26);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_with_image`
--
ALTER TABLE `data_with_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nTable`
--
ALTER TABLE `nTable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_with_image`
--
ALTER TABLE `data_with_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nTable`
--
ALTER TABLE `nTable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
