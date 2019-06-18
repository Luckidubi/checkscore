-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2019 at 01:42 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `result`
--

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `StudentsId` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Gender` varchar(11) NOT NULL,
  `Student_Class` varchar(100) NOT NULL,
  `Subject` varchar(50) NOT NULL,
  `ORE` varchar(50) DEFAULT NULL,
  `Assignment` varchar(50) DEFAULT NULL,
  `C_A` varchar(50) NOT NULL,
  `Note` varchar(50) NOT NULL,
  `Project` varchar(50) NOT NULL,
  `MidtermTest` varchar(50) DEFAULT NULL,
  `Attendance` varchar(50) DEFAULT NULL,
  `Exam` varchar(50) DEFAULT NULL,
  `Total` varchar(100) NOT NULL,
  `Grade` varchar(50) DEFAULT NULL,
  `Avatar` varchar(100) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`StudentsId`, `Name`, `Gender`, `Student_Class`, `Subject`, `ORE`, `Assignment`, `C_A`, `Note`, `Project`, `MidtermTest`, `Attendance`, `Exam`, `Total`, `Grade`, `Avatar`, `Status`) VALUES
(1, 'Mbanugo Godwin', 'Male', 'jss2 a', 'Computer Science', '6.5', '', '', '', '', '5', '', '', '11.5', 'F', 'uploads/', 0),
(2, 'Onyekwunife Chinonso', 'Male', 'jss2 a', 'Computer Science', '6', '8', '', '', '', '', '', '', '14', 'F', 'uploads/', 0),
(3, 'Mmaduakonam Chisom', 'Female', 'jss2 a', 'Computer Science', '5.5', '10', '', '', '', '6', '', '', '21.5', 'F', 'uploads/00778_HD.jpg', 1),
(5, 'Chinweze Michael', 'Male', 'jss2 a', 'Computer Science', '7', '', '', '', '', '5', '', '', '12', 'F', 'uploads/00912_HD.jpg', 1),
(7, 'Obiano Uchenna', 'Male', 'jss2 a', 'Computer Science', '7', '8', '', '', '6', '2', '', '', '23', 'F', 'uploads/', 0),
(8, 'Okafor Paul Chinedu', 'Male', 'jss2 a', 'Computer Science', '9', '10', '', '', '5', '2', '', '', '26', 'F', 'uploads/', 0),
(9, 'Okafor Jude ', 'Male', 'jss2 a', 'Computer Science', '7.5', '8', '', '', '5', '3', '', '', '23.5', 'F', 'uploads/', 0),
(10, 'Ekigwe Perpetual', 'Female', 'jss3 a', 'Computer Science', '3', '5', '9', '', '', '3', '', '', '20', 'F', 'uploads/', 0),
(11, 'Mmaduoneke Shedrack Chukwuebuka', 'Male', 'jss3 b', 'Computer Science', '2', '8.5', '', '', '6', '5', '', '', '21.5', 'F', 'uploads/', 0),
(12, 'Ikpozu Ifesinachi', 'Male', 'jss2 a', 'Computer Science', '3.5', '8', '', '', '5', '2', '', '', '18.5', 'F', 'uploads/', 0),
(13, 'Nwafor Akachukwu', 'Male', 'jss2 a', 'Computer Science', '4', '6', '', '', '5', '4', '', '', '19', 'F', 'uploads/', 0),
(14, 'Nwoye Chioma', 'Female', 'jss2 a', 'Computer Science', '7.5', '', '', '', '', '4', '', '', '11.5', 'F', 'uploads/', 0),
(15, 'Nwankwo Chukwuemeka', 'Male', 'jss2 a', 'Computer Science', '4', '', '', '', '', '4', '', '', '8', 'F', 'uploads/', 0),
(16, 'Alabi Bashit Adisa', 'Male', 'jss2 a', 'Computer Science', '9.5', '10', '', '', '10', '7', '', '', '36.5', 'F', 'uploads/IMG_20150611_140640.JPG', 1),
(17, 'Okeke Ebube', 'Male', 'jss2 a', 'Computer Science', '3', '', '', '', '6', '5', '', '', '14', 'F', 'uploads/', 0),
(18, 'Onyeka Innocent', 'Male', 'jss2 a', 'Computer Science', '6', '', '', '', '', '4', '', '', '10', 'F', 'uploads/', 0),
(19, 'Nweke Oluebube', 'Male', 'jss2 a', 'Computer Science', '2', '', '', '', '', '', '', '', '2', 'F', 'uploads/', 0),
(20, 'Ilodi Chigozie Stella', 'Female', 'jss2 a', 'Computer Science', '2', '10', '', '', '6', '', '', '', '18', 'F', 'uploads/', 0),
(21, 'Egwu Ukamaka', 'Female', 'jss2 a', 'Computer Science', '7.5', '8', '', '', '', '2', '', '', '17.5', 'F', 'uploads/', 0),
(22, 'Nwoye Esther', 'Female', 'jss2 a', 'Computer Science', '5.5', '', '', '4', '', '4', '', '', '13.5', 'F', 'uploads/', 0),
(23, 'Nwilo Mmasichukwu', 'Female', 'jss2 b', 'Computer Science', '8.5', '10', '8', '', '', '7', '', '', '33.5', 'F', 'uploads/', 0),
(24, 'Ezechukwu Miracle', 'Male', 'jss2 b', 'Computer Science', '5', '10', '10', '', '', '8', '', '', '33', 'F', 'uploads/', 0),
(25, 'Chinonso Nzebunanwa Bartholomew', 'Male', 'jss2 b', 'Computer Science', '8', '10', '10', '', '', '9', '', '', '37', 'F', 'uploads/00545_HD.jpg', 1),
(26, 'Anyalu Ndubuisi', 'Male', 'jss2 b', 'Computer Science', '9', '10', '10', '', '5', '10', '', '', '44', 'F', 'uploads/00639_HD.jpg', 1),
(27, 'Nwankwo Felix', 'Male', 'jss2 a', 'Computer Science', '8.5', '8.5', '10', '', '', '10', '', '', '37', 'F', 'uploads/', 0),
(28, 'Chibueze Anosike', 'Male', 'jss2 b', 'Computer Science', '2', '6', '', '', '', '1', '', '', '9', 'F', 'uploads/00529_HD.jpg', 1),
(29, 'Chinwude Ukamaka ', 'Female', 'jss2 b', 'Computer Science', '2', '7', '10', '', '5', '5', '', '', '29', 'F', 'uploads/aae.jpg', 1),
(30, 'Okolo Chiemelie', 'Male', 'jss2 b', 'Computer Science', '2', '10', '6', '', '', '2', '', '', '20', 'F', 'uploads/', 0),
(31, 'Ofunne Divine', 'Female', 'jss3 a', 'Computer Science', '4', '5', '5', '', '6', '8', '', '', '28', 'F', 'uploads/', 0),
(32, 'Bello Afeez', 'Male', 'jss2 a', 'Computer Science', '2', '', '', '', '', '3', '', '', '5', 'F', 'uploads/cars1.jpg', 1),
(33, 'Nnaemena Gift', 'Female', 'jss3 a', 'Computer Science', '2', '4', '4', '', '6', '3', '', '', '19', 'F', 'uploads/', 0),
(34, 'Chukwuneke Cyril', 'Male', 'jss3 a', 'Computer Science', '2', '10', '3.5', '', '7', '8', '', '', '30.5', 'F', 'uploads/chukwuneke_cyril.jpg', 1),
(35, 'Okafor Mary Cynthia Chisom', 'Female', 'jss3 a', 'Computer Science', '2', '5', '9', '', '6', '3.5', '', '', '25.5', 'F', 'uploads/', 0),
(36, 'Onuekwusi Ebele', 'Male', 'jss3 a', 'Computer Science', '2', '5', '10', '', '6', '4.5', '', '', '27.5', 'F', 'uploads/onuekwusi_ebele.jpg', 1),
(37, 'Chidi Ndubuisi', 'Male', 'jss3 b', 'Computer Science', '2', '5', '9.5', '', '5', '5', '', '', '26.5', 'F', 'uploads/chidi_ndubuisi.jpg', 1),
(38, 'Chukwuemeka Abraham', 'Male', 'jss3 a', 'Computer Science', '1', '', '', '', '', '3', '', '', '4', 'F', 'uploads/', 0),
(39, 'Nnaemena Somto', 'Male', 'jss3 a', 'Computer Science', '1', '4', '9.5', '', '5', '3', '', '', '22.5', 'F', 'uploads/', 0),
(40, 'Nzebunanwa Daniel', 'Male', 'jss3 b', 'Computer Science', '1', '', '', '', '', '3', '', '', '4', 'F', 'uploads/', 0),
(41, 'Ozioma Makachi', 'Female', 'jss3 b', 'Computer Science', '1', '', '', '', '', '2', '', '', '3', 'F', 'uploads/', 0),
(42, 'Obi Chibuike', 'Male', 'jss3 b', 'Computer Science', '4', '8.5', '10', '', '6', '8', '', '', '36.5', 'F', 'uploads/', 0),
(43, 'Onyeanu Chioma', 'Female', 'jss3 b', 'Computer Science', '1', '7.5', '', '', '', '4', '', '', '12.5', 'F', 'uploads/', 0),
(44, 'Ibeh Ifeanyi', 'Male', 'jss3 a', 'Computer Science', '0', '', '', '', '', '3', '', '', '3', 'F', 'uploads/', 0),
(45, 'Nwankwo Casmir', 'Male', 'jss3 a', 'Computer Science', '1', '', '', '', '', '3', '', '', '4', 'F', 'uploads/', 0),
(46, 'Okereke Chinecherem', 'Female', 'jss3 b', 'Computer Science', '1', '6.5', '', '', '6', '5', '', '', '18.5', 'F', 'uploads/', 0),
(47, 'Uyanwa Chiemelie', 'Male', 'jss3 b', 'Computer Science', '1', '2', '', '', '', '1', '', '', '4', 'F', 'uploads/', 0),
(48, 'Okafor Chidimma', 'Female', 'jss3 b', 'Computer Science', '0', '3.5', '', '', '', '2', '', '', '5.5', 'F', 'uploads/', 0),
(49, 'Obaba Nneamaka', 'Male', 'jss3 b', 'Computer Science', '1', '7', '', '', '', '4', '', '', '12', 'F', 'uploads/', 0),
(50, 'Nwankwo Esther Ukamaka', 'Female', 'jss3 b', 'Computer Science', '3', '9', '', '', '', '4', '', '', '16', 'F', 'uploads/', 0),
(51, 'Udezu Emmanuel', 'Male', 'jss1 b', 'Computer Science', '', '6', '14', '', '', '4.5', '', '', '24.5', 'F', 'uploads/', 0),
(52, 'Okafor Chidubem', 'Male', 'jss1 b', 'Computer Science', '', '7', '12.5', '', '', '1', '', '', '20.5', 'F', 'uploads/', 0),
(53, 'Okafor Mmesoma', 'Male', 'jss1 b', 'Computer Science', '', '6', '12', '', '', '2', '', '', '20', 'F', 'uploads/', 0),
(54, 'Nwankwo Chimobi', 'Male', 'jss1 b', 'Computer Science', '', '4', '12', '', '', '3', '', '', '19', 'F', 'uploads/', 0),
(55, 'Onuora Kosiso', 'Male', 'jss1 b', 'Computer Science', '', '5.5', '11.5', '', '', '5.5', '', '', '22.5', 'F', 'uploads/', 0),
(56, 'Chidimma Nnaemeka', 'Female', 'jss1 b', 'Computer Science', '', '9', '13', '', '', '2', '', '', '24', 'F', 'uploads/', 0),
(57, 'Ogbonna Ifeanyi', 'Male', 'jss1 b', 'Computer Science', '', '7', '12', '', '', '1', '', '', '20', 'F', 'uploads/', 0),
(58, 'Okafor Chiedozie', 'Male', 'jss1 b', 'Computer Science', '', '5', '11', '', '', '5', '', '', '21', 'F', 'uploads/', 0),
(59, 'Oyinloye Ayomiposi', 'Male', 'jss1 b', 'Computer Science', '', '', '3', '', '', '2', '', '', '5', 'F', 'uploads/', 0),
(60, 'Ifemena Chikasom', 'Female', 'jss1 b', 'Computer Science', '', '', '3', '', '', '', '', '', '3', 'F', 'uploads/', 0),
(61, 'Anaefoo Mmadu', 'Male', 'jss3 b', 'Computer Science', '', '2', '', '', '', '3', '', '', '5', 'F', 'uploads/', 0),
(62, 'Ifemena Ijeoma Rejoice', 'Female', 'jss3 b', 'Computer Science', '', '4', '', '', '', '', '', '', '4', 'F', 'uploads/', 0),
(63, 'Nweke Angela', 'Female', 'jss3 b', 'Computer Science', '', '7.5', '', '', '', '4', '', '', '11.5', 'F', 'uploads/', 0),
(64, 'Samuel Ifeoma', 'Female', 'jss3 b', 'Computer Science', '', '4', '', '', '', '2', '', '', '6', 'F', 'uploads/', 0),
(65, 'Adubasim Victor', 'Male', 'jss3 b', 'Computer Science', '', '6', '', '', '', '6', '', '', '12', 'F', 'uploads/', 0),
(66, 'Onuora Mmesoma', 'Female', 'jss3 b', 'Computer Science', '', '6.5', '', '', '', '6', '', '', '12.5', 'F', 'uploads/', 0),
(67, 'Okolo Agozie', 'Male', 'jss2 b', 'Computer Science', '', '10', '', '', '', '', '', '', '10', 'F', 'uploads/', 0),
(68, 'Okoye Onyinye Racheal', 'Female', 'jss2 b', 'Computer Science', '', '6', '8', '', '5', '5', '', '', '24', 'F', 'uploads/', 0),
(69, 'Ede Adaobi Favour', 'Female', 'jss2 b', 'Computer Science', '', '10', '10', '', '', '4', '', '', '24', 'F', 'uploads/', 0),
(70, 'Okwuegbunam Jude', 'Male', 'jss2 b', 'Computer Science', '', '8', '', '', '', '2', '', '', '10', 'F', 'uploads/', 0),
(71, 'Chikamso Nwoye', 'Female', 'jss2 b', 'Computer Science', '', '1', '', '', '', '2', '', '', '3', 'F', 'uploads/', 0),
(72, 'Nwadinigwe Chidera', 'Male', 'jss2 b', 'Computer Science', '', '6', '', '', '', '4', '', '', '10', 'F', 'uploads/', 0),
(73, 'Nworah Success', 'Female', 'jss2 b', 'Computer Science', '', '10', '', '', '', '5', '', '', '15', 'F', 'uploads/', 0),
(74, 'Ebenyi Chidera', 'Male', 'jss2 b', 'Computer Science', '', '8', '', '', '', '6', '', '', '14', 'F', 'uploads/', 0),
(75, 'Okoye Nduka', 'Male', 'jss2 b', 'Computer Science', '', '10', '', '', '', '5', '', '', '15', 'F', 'uploads/', 0),
(76, 'Mmaduka Ijeoma', 'Female', 'jss2 b', 'Computer Science', '', '6', '8', '', '', '6', '', '', '20', 'F', 'uploads/', 0),
(77, 'Emmanuel Chidimma', 'Female', 'jss2 b', 'Computer Science', '', '3', '6', '', '', '2', '', '', '11', 'F', 'uploads/', 0),
(78, 'Odoh Chibueze', 'Male', 'jss2 b', 'Computer Science', '', '10', '', '', '', '6', '', '', '16', 'F', 'uploads/', 0),
(79, 'Emelife Osondu', 'Male', 'jss2 b', 'Computer Science', '', '5', '', '', '', '2', '', '', '7', 'F', 'uploads/', 0),
(80, 'Okafor Chiemelie', 'Male', 'jss2 b', 'Computer Science', '', '7', '', '', '', '', '', '', '7', 'F', 'uploads/', 0),
(81, 'Ogugua David', 'Male', 'jss2 b', 'Computer Science', '', '7', '', '', '', '6', '', '', '13', 'F', 'uploads/', 0),
(82, 'Ijeoma Uzoigwe Rosemary', 'Female', 'jss1 a', 'Computer Science', '', '8.5', '14', '', '', '2', '', '', '24.5', 'F', 'uploads/uzodigwe_ijeoma_jss1a.jpg', 1),
(83, 'Okoye Chinaza', 'Female', 'jss1 a', 'Computer Science', '', '7.5', '', '', '', '4', '', '', '11.5', 'F', 'uploads/okoye_marryann_js1a.jpg', 1),
(84, 'Nweke Ifunanya', 'Female', 'jss1 a', 'Computer Science', '', '10', '10', '', '', '9', '', '', '29', 'F', 'uploads/', 0),
(85, 'Solomon Onyeka', 'Male', 'jss1 a', 'Computer Science', '', '10', '', '', '', '7', '', '', '17', 'F', 'uploads/', 0),
(86, 'Christian Mmesoma Lucky', 'female', 'jss1 a', 'Computer Science', '', '4', '', '', '', '2', '', '', '6', 'F', 'uploads/', 0),
(87, 'Igbelina Perpetual', 'Female', 'jss1 a', 'Computer Science', '', '10', '9.5', '', '', '4', '', '', '23.5', 'F', 'uploads/', 0),
(88, 'Chukwuneke Grace', 'Female', 'jss1 a', 'Computer Science', '', '8', '', '', '', '5.5', '', '', '13.5', 'F', 'uploads/', 0),
(89, 'Ikpozu Ujunwa', 'Female', 'jss1 a', 'Computer Science', '', '9', '', '', '', '6', '', '', '15', 'F', 'uploads/ikpozu_marycynthia_js1a.jpg', 1),
(90, 'Mmasi Nnenu', 'Female', 'jss1 a', 'Computer Science', '', '7', '', '', '', '3.5', '', '', '10.5', 'F', 'uploads/nnenu_immaculeta_jss1a.jpg', 1),
(91, 'Nnonyelum Michael', 'Male', 'jss1 a', 'Computer Science', '', '8', '', '', '', '4.5', '', '', '12.5', 'F', 'uploads/', 0),
(92, 'Igwe Charles', 'Male', 'jss1 a', 'Computer Science', '', '4', '', '', '', '7', '', '', '11', 'F', 'uploads/', 0),
(93, 'Nnaemeka  Paul', 'Male', 'jss1 a', 'Computer Science', '', '8', '', '', '', '5', '', '', '13', 'F', 'uploads/', 0),
(94, 'Okafor Favour', 'Female', 'jss1 a', 'Computer Science', '', '3', '', '', '', '2.5', '', '', '5.5', 'F', 'uploads/', 0),
(95, 'Ola', 'Male', 'jss1 a', 'Computer Science', '', '7', '', '', '', '5.5', '', '', '12.5', 'F', 'uploads/', 0),
(96, 'Goodluck Chidi', 'Male', 'jss1 a', 'Computer Science', '', '7', '', '', '', '6.5', '', '', '13.5', 'F', 'uploads/', 0),
(97, 'Nnatu Abraham', 'Male', 'jss1 a', 'Computer Science', '', '6', '', '', '', '2', '', '', '8', 'F', 'uploads/', 0),
(98, 'Nwafor Chukwualuka', 'Male', 'jss1 a', 'Computer Science', '', '9', '17', '', '', '7.5', '', '', '33.5', 'F', 'uploads/', 0),
(99, 'Ogeh Marvelous Chika', 'Female', 'jss1 a', 'Computer Science', '', '8', '', '', '', '9.5', '', '', '17.5', 'F', 'uploads/oge_martha_chika_js1a.jpg', 1),
(100, 'Chidimma Obiora', 'Female', 'jss1 a', 'Computer Science', '', '9', '17', '', '', '9.5', '', '', '35.5', 'F', 'uploads/', 0),
(101, 'Kosi Igwealor', 'Male', 'jss1 a', 'Computer Science', '', '9', '', '', '', '2', '', '', '11', 'F', 'uploads/', 0),
(102, 'Nweke Chibuike', 'Male', 'jss1 a', 'Computer Science', '', '4', '', '', '', '6', '', '', '10', 'F', 'uploads/', 0),
(103, 'Onuorah Chibuzor', 'Male', 'jss1 a', 'Computer Science', '', '10', '17', '', '', '9', '', '', '36', 'F', 'uploads/', 0),
(104, 'Ifeanyi Ofunne', 'Male', 'jss1 a', 'Computer Science', '', '7', '', '', '', '3', '', '', '10', 'F', 'uploads/', 0),
(105, 'Confidence Usulw', 'Female', 'jss1 a', 'Computer Science', '', '10', '', '', '', '5', '', '', '15', 'F', 'uploads/', 0),
(106, 'Okoye Ifeoma', 'Female', 'jss1 a', 'Computer Science', '', '8', '7', '', '', '6', '', '', '21', 'F', 'uploads/', 0),
(107, 'Mmesoma Nnagbogu', 'Female', 'jss1 a', 'Computer Science', '', '', '', '', '', '7', '', '', '7', 'F', 'uploads/', 0),
(108, 'Ujunwa onwe', 'Female', 'jss1 a', 'Computer Science', '', '', '', '', '', '1', '', '', '1', 'F', 'uploads/', 0),
(109, 'Adubasim Divine', 'Female', 'jss1 a', 'Computer Science', '', '2', '', '', '', '3', '', '', '5', 'F', 'uploads/', 0),
(110, 'Abara Emeka Peter', 'Male', 'jss1 a', 'Computer Science', '', '', '', '', '', '4', '', '', '4', 'F', 'uploads/', 0),
(111, 'Solomon Nnamdi', 'Male', 'jss1 a', 'Computer Science', '', '', '', '', '', '2', '', '', '2', 'F', 'uploads/', 0),
(112, 'Ede Adaeze', 'Female', 'jss1 a', 'Computer Science', '', '', '', '', '', '2', '', '', '2', 'F', 'uploads/', 0),
(113, 'Nweke Anthony', 'Male', 'jss1 a', 'Computer Science', '', '', '', '', '', '1', '', '', '1', 'F', 'uploads/', 0),
(114, 'Onwurah Doris', 'Female', 'jss1 a', 'Computer Science', '', '9', '', '', '', '6.5', '', '', '15.5', 'F', 'uploads/', 0),
(115, 'Benjamin Ofunne', 'Male', 'jss1 a', 'Computer Science', '', '', '', '', '', '2.5', '', '', '2.5', 'F', 'uploads/', 0),
(116, 'Akum Chiamaka Chinwe', 'Male', 'jss1 a', 'Computer Science', '', '', '', '', '', '2', '', '', '2', 'F', 'uploads/', 0),
(117, 'Uchechukwu Okafor', 'Male', 'jss1 a', 'Computer Science', '', '', '', '', '', '2', '', '', '2', 'F', 'uploads/', 0),
(118, 'Ali Ejike', 'Male', 'jss1 a', 'Computer Science', '', '', '', '', '', '6', '', '', '6', 'F', 'uploads/', 0),
(119, 'Nzube Chinemelem', 'Male', 'jss1 a', 'Computer Science', '', '9', '10', '', '', '9', '', '', '28', 'F', 'uploads/', 0),
(120, 'Ifeka Chekwube', 'Female', 'jss2 a', 'Computer Science', '', '', '', '', '', '1', '', '', '1', 'F', 'uploads/', 0),
(121, 'Oguguo Chioma', 'Female', 'jss2 b', 'Computer Science', '', '', '', '', '', '10', '', '', '10', 'F', 'uploads/', 0),
(122, 'Nwode Precious', 'Female', 'jss2 b', 'Computer Science', '', '', '', '', '', '8', '', '', '8', 'F', 'uploads/', 0),
(123, 'Ilorah Chekwube', 'Male', 'jss2 b', 'Computer Science', '', '', '', '', '', '2', '', '', '2', 'F', 'uploads/', 0),
(124, 'Nwoye Onwukwe', 'Female', 'jss2 b', 'Computer Science', '', '', '', '', '', '1', '', '', '1', 'F', 'uploads/', 0),
(125, 'Emelife Ifechukwu', 'Male', 'jss2 b', 'Computer Science', '', '', '', '', '', '2', '', '', '2', 'F', 'uploads/', 0),
(126, 'Okonkwo Kosiso', 'Female', 'jss2 b', 'Computer Science', '', '10', '10', '', '6', '5', '', '', '31', 'F', 'uploads/', 0),
(127, 'Chukwuemeka Favour', 'Male', 'jss2 b', 'Computer Science', '', '', '', '', '6', '8', '', '', '14', 'F', 'uploads/', 0),
(128, 'Okoye Onyinye', 'Female', 'jss2 b', 'Computer Science', '', '', '', '', '', '5', '', '', '5', 'F', 'uploads/', 0),
(129, 'Ori Precious', 'Female', 'jss1 a', 'Computer Science', '', '', '', '', '', '3', '', '', '3', 'F', 'uploads/', 0),
(130, 'Okeke Kosiso', 'Male', 'jss2 b', 'Computer Science', '', '2', '', '', '6', '5', '', '', '13', 'F', 'uploads/', 0),
(131, 'Nweze Chinecherem', 'Female', 'jss2 b', 'Computer Science', '', '', '', '', '', '3', '', '', '3', 'F', 'uploads/', 0),
(132, 'Anieke Chidubem', 'Male', 'jss2 b', 'Computer Science', '', '10', '', '', '5', '3', '', '', '18', 'F', 'uploads/', 0),
(133, 'Okoye Chikamso', 'Female', 'jss2 b', 'Computer Science', '', '', '', '', '', '6', '', '', '6', 'F', 'uploads/', 0),
(134, 'Kamuche Chibuike', 'Male', 'jss2 a', 'Computer Science', '', '', '', '', '', '1', '', '', '1', 'F', 'uploads/', 0),
(135, 'Onuekwusi Nnonye', 'Female', 'jss2 a', 'Computer Science', '', '5', '', '', '', '2', '', '', '7', 'F', 'uploads/', 0),
(136, 'Onyekwunife Johnpaul Chinonso', 'Male', 'jss2 a', 'Computer Science', '', '', '', '', '', '4', '', '', '4', 'F', 'uploads/', 0),
(137, 'Agbata Mary Chinasa', 'Female', 'jss2 a', 'Computer Science', '', '8', '', '', '', '2', '', '', '10', 'F', 'uploads/', 0),
(138, 'Nwankwo Juliana', 'Male', 'jss2 a', 'Computer Science', '', '10', '', '', '7', '2', '', '', '19', 'F', 'uploads/', 0),
(139, 'Ewesiobi Chigozie Stella', 'Female', 'jss2 a', 'Computer Science', '', '', '', '', '', '6', '', '', '6', 'F', 'uploads/', 0),
(140, 'Ogugua Isaiah', 'Male', 'jss2 a', 'Computer Science', '', '', '', '', '', '1', '', '', '1', 'F', 'uploads/', 0),
(141, 'Nwogbo Goodluck', 'Male', 'jss2 a', 'Computer Science', '', '', '', '', '', '6', '', '', '6', 'F', 'uploads/', 0),
(142, 'Chinweuba Nnenu', 'Female', 'jss2 a', 'Computer Science', '', '', '', '', '', '2', '', '', '2', 'F', 'uploads/', 0),
(143, 'Anazodo Chinweokwu Helen', 'Female', 'jss2 a', 'Computer Science', '', '8', '', '', '', '2', '', '', '10', 'F', 'uploads/', 0),
(144, 'Okoye ebuka', 'Male', 'jss2 a', 'Computer Science', '', '6', '', '', '', '2', '', '', '8', 'F', 'uploads/', 0),
(145, 'Mozie Onyinye', 'Female', 'jss2 a', 'Computer Science', '', '', '', '', '', '2', '', '', '2', 'F', 'uploads/', 0),
(146, 'Okoye Emmanuel Chidera', 'Male', 'jss2 a', 'Computer Science', '', '', '', '', '', '5', '', '', '5', 'F', 'uploads/', 0),
(147, 'Solomon c.', 'Male', 'jss2 a', 'Computer Science', '', '8', '', '', '', '7', '', '', '15', 'F', 'uploads/', 0),
(148, 'Onyeamu Odinaka Juliana', 'Female', 'jss2 a', 'Computer Science', '', '', '', '', '5', '2', '', '', '7', 'F', 'uploads/', 0),
(149, 'Christopher Chinaza', 'Female', 'jss2 a', 'Computer Science', '', '10', '', '', '6', '5', '', '', '21', 'F', 'uploads/', 0),
(150, 'Mozie gift', 'Female', 'jss2 a', 'Computer Science', '', '10', '', '', '', '1', '', '', '11', 'F', 'uploads/', 0),
(151, 'Onwuemezie Ebele', 'Female', 'jss2 a', 'Computer Science', '', '', '', '', '', '1', '', '', '1', 'F', 'uploads/', 0),
(152, 'Kamuche Chekwube', 'Female', 'jss2 a', 'Computer Science', '', '', '', '', '', '5', '', '', '5', 'F', 'uploads/', 0),
(153, 'Mboka Chinecherem', 'Female', 'jss2 a', 'Computer Science', '', '', '', '', '', '5', '', '', '5', 'F', 'uploads/', 0),
(154, 'Nweke Ebube', 'Female', 'jss2 a', 'Computer Science', '', '', '', '', '', '5', '', '', '5', 'F', 'uploads/', 0),
(155, 'Mobi Peace Ngozi ', 'Female', 'jss2 a', 'Computer Science', '', '10', '', '', '5', '5', '', '', '20', 'F', 'uploads/', 0),
(156, 'Dorcas Ukamaka', 'Female', 'jss2 a', 'Computer Science', '', '10', '', '', '', '2', '', '', '12', 'F', 'uploads/', 0),
(157, 'Celestine Iwuno', 'Female', 'jss2 a', 'Computer Science', '', '', '', '', '6', '4', '', '', '10', 'F', 'uploads/', 0),
(158, 'Chukwuneke Francis', 'Male', 'jss2 a', 'Computer Science', '', '10', '', '', '6', '3', '', '', '19', 'F', 'uploads/', 0),
(159, 'Nwankwo Chukwuebuka', 'Male', 'jss2 a', 'Computer Science', '', '', '', '', '', '2', '', '', '2', 'F', 'uploads/', 0),
(160, 'Mmaduagwuna Chibuzor', 'Male', 'jss2 a', 'Computer Science', '', '', '', '', '', '4', '', '', '4', 'F', 'uploads/', 0),
(161, 'Onwe Chekwube', 'Female', 'jss1 b', 'Computer Science', '', '', '', '', '', '2.5', '', '', '2.5', 'F', 'uploads/', 0),
(162, 'Anizoba Chibuike', 'Male', 'jss1 b', 'Computer Science', '', '5', '', '', '', '2.5', '', '', '7.5', 'F', 'uploads/', 0),
(163, 'Okorie Ebuka', 'Male', 'jss1 b', 'Computer Science', '', '5', '', '', '', '3', '', '', '8', 'F', 'uploads/', 0),
(164, 'Ikezue Chimuanya Emmanuel', 'Male', 'jss1 b', 'Computer Science', '', '7', '', '', '', '7', '', '', '14', 'F', 'uploads/', 0),
(165, 'Dipeolu Ibiam', 'Male', 'jss1 b', 'Computer Science', '', '', '', '', '', '4.5', '', '', '4.5', 'F', 'uploads/', 0),
(166, 'Agom Ifeoma', 'Female', 'jss1 b', 'Computer Science', '', '7', '10', '', '', '2', '', '', '19', 'F', 'uploads/', 0),
(167, 'Ibekendu Chiemelie', 'Male', 'jss1 b', 'Computer Science', '', '6', '8', '', '', '1', '', '', '15', 'F', 'uploads/', 0),
(168, 'Nwueke Ofobuike', 'Male', 'jss1 b', 'Computer Science', '', '', '', '', '', '2', '', '', '2', 'F', 'uploads/', 0),
(169, 'Nwafor Mmesoma', 'Male', 'jss1 b', 'Computer Science', '', '', '', '', '', '2', '', '', '2', 'F', 'uploads/', 0),
(170, 'Okoye Nchekwube', 'Female', 'jss1 b', 'Computer Science', '', '4', '7', '', '', '1', '', '', '12', 'F', 'uploads/', 0),
(171, 'Okeke Chinecherem', 'Female', 'jss3 a', 'Computer Science', '', '4', '5', '', '6', '3', '', '', '18', 'F', 'uploads/', 0),
(172, 'Akaeze Anastasia Nwanyeuwa', 'Female', 'jss3 a', 'Computer Science', '', '4.5', '4', '', '6', '3', '', '', '17.5', 'F', 'uploads/', 0),
(173, 'Okoye Philomena', 'Female', 'jss3 a', 'Computer Science', '', '', '', '', '', '2', '', '', '2', 'F', 'uploads/', 0),
(174, 'Nwogbo favour', 'Female', 'jss3 a', 'Computer Science', '', '', '', '', '', '1', '', '', '1', 'F', 'uploads/', 0),
(175, 'Okafor Favour Chinenye', 'Female', 'jss3 a', 'Computer Science', '', '5', '8', '', '', '7.5', '', '', '20.5', 'F', 'uploads/', 0),
(176, 'Chinwude Christopher', 'Male', 'jss3 a', 'Computer Science', '', '', '', '', '', '3', '', '', '3', 'F', 'uploads/', 0),
(177, 'Oraekeh Chinenye', 'Female', 'jss3 a', 'Computer Science', '', '', '', '', '', '4', '', '', '4', 'F', 'uploads/', 0),
(178, 'Obidimma Oluebube', 'Female', 'jss3 a', 'Computer Science', '', '6', '', '', '5', '3', '', '', '14', 'F', 'uploads/', 0),
(179, 'Angus Grace', 'Female', 'jss3 a', 'Computer Science', '', '', '', '', '', '3', '', '', '3', 'F', 'uploads/', 0),
(180, 'Chinedu Michael', 'Male', 'jss3 a', 'Computer Science', '', '', '', '', '', '4', '', '', '4', 'F', 'uploads/', 0),
(181, 'Udeozor michael', 'Male', 'jss3 a', 'Computer Science', '', '', '', '', '', '5', '', '', '5', 'F', 'uploads/', 0),
(182, 'Nwoye Matthew', 'Male', 'jss3 a', 'Computer Science', '', '', '', '', '5', '2', '', '', '7', 'F', 'uploads/', 0),
(183, 'Nwaeze mmesoma Mary', 'Female', 'jss3 a', 'Computer Science', '', '', '', '', '', '2', '', '', '2', 'F', 'uploads/', 0),
(184, 'Chidozie', 'Female', 'jss3 a', 'Computer Science', '', '', '', '', '', '3', '', '', '3', 'F', 'uploads/', 0),
(185, 'Nweke Samuel', 'Male', 'jss3 b', 'Computer Science', '', '', '', '', '', '5', '', '', '5', 'F', 'uploads/', 0),
(186, 'Awosika John', 'Male', 'jss1 a', 'Computer Science', '', '', '', '', '', '2', '', '', '2', 'F', 'uploads/', 0),
(187, 'Nwanekwe Somto', 'Female', 'jss3 b', 'Computer Science', '', '', '', '', '', '3.5', '', '', '3.5', 'F', 'uploads/', 0),
(188, 'Okonkwo Chiamaka', 'Female', 'jss3 b', 'Computer Science', '', '', '', '', '', '1', '', '', '1', 'F', 'uploads/', 0),
(189, 'Okolo Chizoba', 'Female', 'jss3 b', 'Computer Science', '', '', '', '', '', '1', '', '', '1', 'F', 'uploads/', 0),
(190, 'Nwafor kenneth', 'Male', 'jss3 b', 'Computer Science', '', '', '', '', '', '4', '', '', '4', 'F', 'uploads/', 0),
(191, 'Solomon Chisom Esther', 'Female', 'jss3 b', 'Computer Science', '', '', '', '', '', '4', '', '', '4', 'F', 'uploads/', 0),
(192, 'Nebeani Chidera', 'Male', 'jss3 b', 'Computer Science', '', '', '', '', '', '3', '', '', '3', 'F', 'uploads/', 0),
(193, 'Oniodo Mary Makuo', 'Female', 'jss3 b', 'Computer Science', '', '', '', '', '', '1', '', '', '1', 'F', 'uploads/', 0),
(194, 'Menuba Chiemelie', 'Male', 'jss3 b', 'Computer Science', '', '', '', '', '', '1', '', '', '1', 'F', 'uploads/', 0),
(195, 'Mbam Chidiebere', 'Male', 'jss3 b', 'Computer Science', '', '', '', '', '', '3', '', '', '3', 'F', 'uploads/', 0),
(196, 'Anwusi Mmesoma', 'Male', 'jss3 b', 'Computer Science', '', '', '', '', '', '1', '', '', '1', 'F', 'uploads/', 0),
(197, 'Frank Jennifer', 'Female', 'jss3 a', 'Computer Science', '', '3', '5', '', '6', '', '', '', '14', 'F', 'uploads/', 0),
(198, 'Ayiofu Chinemelem', 'Male', 'jss1 a', 'Computer Science', '', '', '', '', '', '9', '', '', '9', 'F', 'uploads/', 0),
(199, 'Onwe Ukamaka', 'Female', 'jss1 b', 'Computer Science', '', '10', '', '', '', '', '', '', '10', 'F', 'uploads/', 0),
(200, 'Nwoye Chinweikem', 'Female', 'jss1 b', 'Computer Science', '', '6', '5', '', '', '', '', '', '11', 'F', 'uploads/', 0),
(201, 'Udenkwele Michael', 'Male', 'jss3 a', 'Computer Science', '', '', '', '', '5', '', '', '', '5', 'F', 'uploads/', 0),
(202, 'Okoye Chukwuebuka Andrew', 'Male', 'jss2 a', 'Computer Science', '', '', '', '', '5', '', '', '', '5', 'F', 'uploads/', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`StudentsId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `StudentsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
