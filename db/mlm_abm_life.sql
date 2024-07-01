-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2024 at 08:02 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `camwel solution`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(250) NOT NULL,
  `session` char(32) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `last_login` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`, `email`, `session`, `ip`, `last_login`) VALUES
(1, 'Admin', 'admin', '$2y$10$P5VMT35fdDybgJot7DPC..jn67l/uTETMy42Z0lAI8cp/Ae1zXJrG', 'admin@g.com', '7918152ce32bc6be9af0c2e7cebaa04d', '::1', 1713854625),
(4, 'Manish', 'manish', '$2y$10$P5VMT35fdDybgJot7DPC..jn67l/uTETMy42Z0lAI8cp/Ae1zXJrG', 'manish@gmail.com', 'b5710ff22f86349cc4fd168509ab5123', '::1', 1597223337);

-- --------------------------------------------------------

--
-- Table structure for table `admin_expense`
--

CREATE TABLE `admin_expense` (
  `id` int(11) NOT NULL,
  `expense_name` varchar(200) NOT NULL,
  `amount` decimal(7,2) NOT NULL,
  `detail` varchar(200) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(11) NOT NULL,
  `ad_title` varchar(200) NOT NULL,
  `ad_html` text NOT NULL,
  `level_earning` varchar(500) DEFAULT NULL,
  `expiry_date` date NOT NULL,
  `type` enum('html','url') NOT NULL DEFAULT 'url'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ad_user`
--

CREATE TABLE `ad_user` (
  `id` int(11) NOT NULL,
  `ad_id` varchar(20) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `autopool1_table`
--

CREATE TABLE `autopool1_table` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sponsor` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `position` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `signup_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `epin` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `placement_leg` enum('A','B','C','D','E') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'A',
  `A` int(11) NOT NULL DEFAULT 0,
  `B` int(11) NOT NULL DEFAULT 0,
  `C` int(11) NOT NULL DEFAULT 0,
  `D` int(11) NOT NULL DEFAULT 0,
  `E` int(11) NOT NULL DEFAULT 0,
  `total_a` int(11) NOT NULL DEFAULT 0,
  `total_b` int(11) NOT NULL DEFAULT 0,
  `total_c` int(11) NOT NULL DEFAULT 0,
  `total_d` int(11) NOT NULL DEFAULT 0,
  `total_e` int(11) NOT NULL DEFAULT 0,
  `paid_a` int(11) NOT NULL DEFAULT 0,
  `paid_b` int(11) NOT NULL DEFAULT 0,
  `paid_c` int(11) NOT NULL DEFAULT 0,
  `paid_d` int(11) NOT NULL DEFAULT 0,
  `paid_e` int(11) NOT NULL DEFAULT 0,
  `rank` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Member',
  `registration_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` int(11) NOT NULL DEFAULT 0,
  `last_login_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'NA',
  `topup` decimal(11,2) NOT NULL DEFAULT 0.00,
  `mypv` int(11) NOT NULL DEFAULT 0,
  `total_a_pv` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_b_pv` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_c_pv` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_d_pv` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_e_pv` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `my_img` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT ' ',
  `status` enum('Block','Active','Suspend','') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Active',
  `total_a_matching_incm` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_b_matching_incm` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_c_matching_incm` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_d_matching_incm` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_e_matching_incm` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `my_business` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_a_investment` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_b_investment` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `paid_a_matching_incm` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `paid_b_matching_incm` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `gift_level` int(11) NOT NULL DEFAULT 0,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `autopool1_table`
--

INSERT INTO `autopool1_table` (`id`, `member_id`, `name`, `email`, `phone`, `password`, `sponsor`, `position`, `signup_package`, `epin`, `address`, `placement_leg`, `A`, `B`, `C`, `D`, `E`, `total_a`, `total_b`, `total_c`, `total_d`, `total_e`, `paid_a`, `paid_b`, `paid_c`, `paid_d`, `paid_e`, `rank`, `registration_ip`, `session`, `last_login`, `last_login_ip`, `topup`, `mypv`, `total_a_pv`, `total_b_pv`, `total_c_pv`, `total_d_pv`, `total_e_pv`, `my_img`, `status`, `total_a_matching_incm`, `total_b_matching_incm`, `total_c_matching_incm`, `total_d_matching_incm`, `total_e_matching_incm`, `my_business`, `total_a_investment`, `total_b_investment`, `paid_a_matching_incm`, `paid_b_matching_incm`, `gift_level`, `date`) VALUES
(1, 1001, '', '', '', '', '', '0', '2', NULL, '', 'A', 9107021, 7866889, 1267347, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'auto1', '', '', 0, 'NA', '88.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, '2023-12-26'),
(2, 9107021, '', '', '', '', '', '1001', '2', NULL, '', 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'auto1', '', '', 0, 'NA', '88.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, '2023-12-26'),
(3, 7866889, '', '', '', '', '', '1001', '2', NULL, '', 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'auto1', '', '', 0, 'NA', '88.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, '2023-12-26'),
(4, 1267347, '', '', '', '', '', '1001', '2', NULL, '', 'C', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'auto1', '', '', 0, 'NA', '88.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, '2023-12-26');

-- --------------------------------------------------------

--
-- Table structure for table `autopool2_table`
--

CREATE TABLE `autopool2_table` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sponsor` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `position` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `signup_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `epin` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `placement_leg` enum('A','B','C','D','E') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'A',
  `A` int(11) NOT NULL DEFAULT 0,
  `B` int(11) NOT NULL DEFAULT 0,
  `C` int(11) NOT NULL DEFAULT 0,
  `D` int(11) NOT NULL DEFAULT 0,
  `E` int(11) NOT NULL DEFAULT 0,
  `total_a` int(11) NOT NULL DEFAULT 0,
  `total_b` int(11) NOT NULL DEFAULT 0,
  `total_c` int(11) NOT NULL DEFAULT 0,
  `total_d` int(11) NOT NULL DEFAULT 0,
  `total_e` int(11) NOT NULL DEFAULT 0,
  `paid_a` int(11) NOT NULL DEFAULT 0,
  `paid_b` int(11) NOT NULL DEFAULT 0,
  `paid_c` int(11) NOT NULL DEFAULT 0,
  `paid_d` int(11) NOT NULL DEFAULT 0,
  `paid_e` int(11) NOT NULL DEFAULT 0,
  `rank` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Member',
  `registration_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` int(11) NOT NULL DEFAULT 0,
  `last_login_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'NA',
  `topup` decimal(11,2) NOT NULL DEFAULT 0.00,
  `mypv` int(11) NOT NULL DEFAULT 0,
  `total_a_pv` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_b_pv` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_c_pv` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_d_pv` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_e_pv` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `my_img` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT ' ',
  `status` enum('Block','Active','Suspend','') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Active',
  `total_a_matching_incm` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_b_matching_incm` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_c_matching_incm` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_d_matching_incm` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_e_matching_incm` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `my_business` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_a_investment` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_b_investment` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `paid_a_matching_incm` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `paid_b_matching_incm` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `gift_level` int(11) NOT NULL DEFAULT 0,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `autopool3_table`
--

CREATE TABLE `autopool3_table` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sponsor` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `position` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `signup_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `epin` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `placement_leg` enum('A','B','C','D','E') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'A',
  `A` int(11) NOT NULL DEFAULT 0,
  `B` int(11) NOT NULL DEFAULT 0,
  `C` int(11) NOT NULL DEFAULT 0,
  `D` int(11) NOT NULL DEFAULT 0,
  `E` int(11) NOT NULL DEFAULT 0,
  `total_a` int(11) NOT NULL DEFAULT 0,
  `total_b` int(11) NOT NULL DEFAULT 0,
  `total_c` int(11) NOT NULL DEFAULT 0,
  `total_d` int(11) NOT NULL DEFAULT 0,
  `total_e` int(11) NOT NULL DEFAULT 0,
  `paid_a` int(11) NOT NULL DEFAULT 0,
  `paid_b` int(11) NOT NULL DEFAULT 0,
  `paid_c` int(11) NOT NULL DEFAULT 0,
  `paid_d` int(11) NOT NULL DEFAULT 0,
  `paid_e` int(11) NOT NULL DEFAULT 0,
  `rank` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Member',
  `registration_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` int(11) NOT NULL DEFAULT 0,
  `last_login_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'NA',
  `topup` decimal(11,2) NOT NULL DEFAULT 0.00,
  `mypv` int(11) NOT NULL DEFAULT 0,
  `total_a_pv` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_b_pv` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_c_pv` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_d_pv` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_e_pv` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `my_img` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT ' ',
  `status` enum('Block','Active','Suspend','') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Active',
  `total_a_matching_incm` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_b_matching_incm` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_c_matching_incm` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_d_matching_incm` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_e_matching_incm` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `my_business` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_a_investment` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_b_investment` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `paid_a_matching_incm` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `paid_b_matching_incm` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `gift_level` int(11) NOT NULL DEFAULT 0,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `autopool4_table`
--

CREATE TABLE `autopool4_table` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sponsor` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `position` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `signup_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `epin` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `placement_leg` enum('A','B','C','D','E') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'A',
  `A` int(11) NOT NULL DEFAULT 0,
  `B` int(11) NOT NULL DEFAULT 0,
  `C` int(11) NOT NULL DEFAULT 0,
  `D` int(11) NOT NULL DEFAULT 0,
  `E` int(11) NOT NULL DEFAULT 0,
  `total_a` int(11) NOT NULL DEFAULT 0,
  `total_b` int(11) NOT NULL DEFAULT 0,
  `total_c` int(11) NOT NULL DEFAULT 0,
  `total_d` int(11) NOT NULL DEFAULT 0,
  `total_e` int(11) NOT NULL DEFAULT 0,
  `paid_a` int(11) NOT NULL DEFAULT 0,
  `paid_b` int(11) NOT NULL DEFAULT 0,
  `paid_c` int(11) NOT NULL DEFAULT 0,
  `paid_d` int(11) NOT NULL DEFAULT 0,
  `paid_e` int(11) NOT NULL DEFAULT 0,
  `rank` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Member',
  `registration_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` int(11) NOT NULL DEFAULT 0,
  `last_login_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'NA',
  `topup` decimal(11,2) NOT NULL DEFAULT 0.00,
  `mypv` int(11) NOT NULL DEFAULT 0,
  `total_a_pv` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_b_pv` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_c_pv` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_d_pv` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_e_pv` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `my_img` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT ' ',
  `status` enum('Block','Active','Suspend','') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Active',
  `total_a_matching_incm` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_b_matching_incm` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_c_matching_incm` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_d_matching_incm` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_e_matching_incm` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `my_business` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_a_investment` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `total_b_investment` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `paid_a_matching_incm` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `paid_b_matching_incm` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `gift_level` int(11) NOT NULL DEFAULT 0,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `autopool_topup_record`
--

CREATE TABLE `autopool_topup_record` (
  `id` int(11) NOT NULL,
  `user_id` varchar(22) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `epin` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `autopool_amount` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `topup_by` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `autopool_topup_record`
--

INSERT INTO `autopool_topup_record` (`id`, `user_id`, `epin`, `autopool_amount`, `topup_by`, `date`) VALUES
(1, '1001', 'Diect By Admin', '88', 'default', '2023-12-26'),
(2, '9107021', 'Diect By Admin', '88', 'default', '2023-12-26'),
(3, '7866889', 'Diect By Admin', '88', 'default', '2023-12-26'),
(4, '1267347', 'Diect By Admin', '88', 'default', '2023-12-26');

-- --------------------------------------------------------

--
-- Table structure for table `auto_level1`
--

CREATE TABLE `auto_level1` (
  `id` int(11) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `level1` int(11) NOT NULL DEFAULT 0,
  `level2` int(11) NOT NULL DEFAULT 0,
  `level3` int(11) NOT NULL DEFAULT 0,
  `level4` int(11) NOT NULL DEFAULT 0,
  `level5` int(11) NOT NULL DEFAULT 0,
  `level6` int(11) NOT NULL DEFAULT 0,
  `level7` int(11) NOT NULL DEFAULT 0,
  `level8` int(11) NOT NULL DEFAULT 0,
  `level9` int(11) NOT NULL DEFAULT 0,
  `level10` int(11) NOT NULL DEFAULT 0,
  `level11` int(11) NOT NULL DEFAULT 0,
  `level12` int(11) NOT NULL DEFAULT 0,
  `level13` int(11) NOT NULL DEFAULT 0,
  `level14` int(11) NOT NULL DEFAULT 0,
  `level15` int(11) NOT NULL DEFAULT 0,
  `level16` int(11) NOT NULL DEFAULT 0,
  `level17` int(11) NOT NULL DEFAULT 0,
  `level18` int(11) NOT NULL DEFAULT 0,
  `level19` int(11) NOT NULL DEFAULT 0,
  `level20` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auto_level1`
--

INSERT INTO `auto_level1` (`id`, `userid`, `level1`, `level2`, `level3`, `level4`, `level5`, `level6`, `level7`, `level8`, `level9`, `level10`, `level11`, `level12`, `level13`, `level14`, `level15`, `level16`, `level17`, `level18`, `level19`, `level20`) VALUES
(1, '1001', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '9107021', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '7866889', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, '1267347', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `auto_level2`
--

CREATE TABLE `auto_level2` (
  `id` int(11) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `level1` int(11) NOT NULL DEFAULT 0,
  `level2` int(11) NOT NULL DEFAULT 0,
  `level3` int(11) NOT NULL DEFAULT 0,
  `level4` int(11) NOT NULL DEFAULT 0,
  `level5` int(11) NOT NULL DEFAULT 0,
  `level6` int(11) NOT NULL DEFAULT 0,
  `level7` int(11) NOT NULL DEFAULT 0,
  `level8` int(11) NOT NULL DEFAULT 0,
  `level9` int(11) NOT NULL DEFAULT 0,
  `level10` int(11) NOT NULL DEFAULT 0,
  `level11` int(11) NOT NULL DEFAULT 0,
  `level12` int(11) NOT NULL DEFAULT 0,
  `level13` int(11) NOT NULL DEFAULT 0,
  `level14` int(11) NOT NULL DEFAULT 0,
  `level15` int(11) NOT NULL DEFAULT 0,
  `level16` int(11) NOT NULL DEFAULT 0,
  `level17` int(11) NOT NULL DEFAULT 0,
  `level18` int(11) NOT NULL DEFAULT 0,
  `level19` int(11) NOT NULL DEFAULT 0,
  `level20` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auto_level3`
--

CREATE TABLE `auto_level3` (
  `id` int(11) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `level1` int(11) NOT NULL DEFAULT 0,
  `level2` int(11) NOT NULL DEFAULT 0,
  `level3` int(11) NOT NULL DEFAULT 0,
  `level4` int(11) NOT NULL DEFAULT 0,
  `level5` int(11) NOT NULL DEFAULT 0,
  `level6` int(11) NOT NULL DEFAULT 0,
  `level7` int(11) NOT NULL DEFAULT 0,
  `level8` int(11) NOT NULL DEFAULT 0,
  `level9` int(11) NOT NULL DEFAULT 0,
  `level10` int(11) NOT NULL DEFAULT 0,
  `level11` int(11) NOT NULL DEFAULT 0,
  `level12` int(11) NOT NULL DEFAULT 0,
  `level13` int(11) NOT NULL DEFAULT 0,
  `level14` int(11) NOT NULL DEFAULT 0,
  `level15` int(11) NOT NULL DEFAULT 0,
  `level16` int(11) NOT NULL DEFAULT 0,
  `level17` int(11) NOT NULL DEFAULT 0,
  `level18` int(11) NOT NULL DEFAULT 0,
  `level19` int(11) NOT NULL DEFAULT 0,
  `level20` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auto_level4`
--

CREATE TABLE `auto_level4` (
  `id` int(11) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `level1` int(11) NOT NULL DEFAULT 0,
  `level2` int(11) NOT NULL DEFAULT 0,
  `level3` int(11) NOT NULL DEFAULT 0,
  `level4` int(11) NOT NULL DEFAULT 0,
  `level5` int(11) NOT NULL DEFAULT 0,
  `level6` int(11) NOT NULL DEFAULT 0,
  `level7` int(11) NOT NULL DEFAULT 0,
  `level8` int(11) NOT NULL DEFAULT 0,
  `level9` int(11) NOT NULL DEFAULT 0,
  `level10` int(11) NOT NULL DEFAULT 0,
  `level11` int(11) NOT NULL DEFAULT 0,
  `level12` int(11) NOT NULL DEFAULT 0,
  `level13` int(11) NOT NULL DEFAULT 0,
  `level14` int(11) NOT NULL DEFAULT 0,
  `level15` int(11) NOT NULL DEFAULT 0,
  `level16` int(11) NOT NULL DEFAULT 0,
  `level17` int(11) NOT NULL DEFAULT 0,
  `level18` int(11) NOT NULL DEFAULT 0,
  `level19` int(11) NOT NULL DEFAULT 0,
  `level20` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `id` int(11) NOT NULL,
  `coupon` varchar(20) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `coupon_cat` varchar(20) NOT NULL,
  `coupon_amt` decimal(11,2) NOT NULL DEFAULT 0.00,
  `status` enum('Used','Un-Used','Use Request') NOT NULL DEFAULT 'Un-Used'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_categories`
--

CREATE TABLE `coupon_categories` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(200) NOT NULL,
  `cat_description` varchar(1000) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` int(11) NOT NULL,
  `sender_id` varchar(20) NOT NULL,
  `donation_amount` varchar(30) NOT NULL,
  `receiver_id` varchar(20) NOT NULL,
  `time` int(11) NOT NULL,
  `trid` varchar(200) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tdate` date DEFAULT NULL,
  `status` enum('Sent','Accepted','Waiting') NOT NULL DEFAULT 'Sent',
  `donation_pack` int(11) NOT NULL,
  `expiry_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donation_package`
--

CREATE TABLE `donation_package` (
  `id` int(11) NOT NULL,
  `donation_level` int(11) NOT NULL,
  `plan_name` varchar(200) NOT NULL,
  `sponsor_income` varchar(30) DEFAULT NULL,
  `position_income` varchar(30) DEFAULT NULL,
  `donation_amount` varchar(30) DEFAULT '0',
  `donation_qty` int(11) NOT NULL,
  `expiry_duration` int(11) NOT NULL DEFAULT 2 COMMENT 'in days'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `earning`
--

CREATE TABLE `earning` (
  `id` int(11) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `type` varchar(50) NOT NULL,
  `ref_id` varchar(20) NOT NULL DEFAULT 'N/A',
  `date` date NOT NULL,
  `pair_match` int(11) NOT NULL DEFAULT 0,
  `secret` varchar(15) NOT NULL DEFAULT '0',
  `status` enum('Paid','Pending') NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `earning`
--

INSERT INTO `earning` (`id`, `userid`, `amount`, `type`, `ref_id`, `date`, `pair_match`, `secret`, `status`) VALUES
(1, '1001', '50.00', 'Level Income', '9107021', '2023-12-26', 0, '0', 'Paid'),
(2, '1001', '50.00', 'Level Income', '1267347', '2023-12-26', 0, '0', 'Paid'),
(3, '1001', '50.00', 'Level Income', '7866889', '2023-12-26', 0, '0', 'Paid'),
(4, '9107021', '50.00', 'Level Income', '4216683', '2023-12-26', 0, '0', 'Paid'),
(5, '1001', '25.00', 'Level Income', '4216683', '2023-12-26', 0, '0', 'Paid'),
(6, '9107021', '50.00', 'Level Income', '2851957', '2023-12-26', 0, '0', 'Paid'),
(7, '1001', '25.00', 'Level Income', '2851957', '2023-12-26', 0, '0', 'Paid'),
(8, '1267347', '50.00', 'Level Income', '1114626', '2023-12-26', 0, '0', 'Paid'),
(9, '1001', '25.00', 'Level Income', '1114626', '2023-12-26', 0, '0', 'Paid'),
(10, '1267347', '50.00', 'Level Income', '6905772', '2023-12-26', 0, '0', 'Paid'),
(11, '1001', '25.00', 'Level Income', '6905772', '2023-12-26', 0, '0', 'Paid'),
(12, '7866889', '50.00', 'Level Income', '8568852', '2023-12-26', 0, '0', 'Paid'),
(13, '1001', '25.00', 'Level Income', '8568852', '2023-12-26', 0, '0', 'Paid'),
(14, '7866889', '50.00', 'Level Income', '4608293', '2023-12-26', 0, '0', 'Paid'),
(15, '1001', '25.00', 'Level Income', '4608293', '2023-12-26', 0, '0', 'Paid'),
(16, '4216683', '50.00', 'Level Income', '6007870', '2023-12-26', 0, '0', 'Paid'),
(17, '9107021', '25.00', 'Level Income', '6007870', '2023-12-26', 0, '0', 'Paid'),
(18, '4216683', '50.00', 'Level Income', '3397858', '2023-12-26', 0, '0', 'Paid'),
(19, '9107021', '25.00', 'Level Income', '3397858', '2023-12-26', 0, '0', 'Paid'),
(20, '2851957', '50.00', 'Level Income', '6376083', '2023-12-26', 0, '0', 'Paid'),
(21, '9107021', '25.00', 'Level Income', '6376083', '2023-12-26', 0, '0', 'Paid'),
(22, '2851957', '50.00', 'Level Income', '3492494', '2023-12-26', 0, '0', 'Paid'),
(23, '9107021', '25.00', 'Level Income', '3492494', '2023-12-26', 0, '0', 'Paid'),
(24, '1001', '7.00', 'Auto Level Income', '9107021', '2023-12-26', 0, '0', 'Paid'),
(25, '8568852', '50.00', 'Level Income', '7032706', '2023-12-26', 0, '0', 'Paid'),
(26, '7866889', '25.00', 'Level Income', '7032706', '2023-12-26', 0, '0', 'Paid'),
(27, '8568852', '50.00', 'Level Income', '3715045', '2023-12-26', 0, '0', 'Paid'),
(28, '7866889', '25.00', 'Level Income', '3715045', '2023-12-26', 0, '0', 'Paid'),
(29, '4608293', '50.00', 'Level Income', '9153590', '2023-12-26', 0, '0', 'Paid'),
(30, '7866889', '25.00', 'Level Income', '9153590', '2023-12-26', 0, '0', 'Paid'),
(31, '4608293', '50.00', 'Level Income', '8994089', '2023-12-26', 0, '0', 'Paid'),
(32, '7866889', '25.00', 'Level Income', '8994089', '2023-12-26', 0, '0', 'Paid'),
(33, '1001', '7.00', 'Auto Level Income', '7866889', '2023-12-26', 0, '0', 'Paid'),
(34, '1114626', '50.00', 'Level Income', '3982657', '2023-12-26', 0, '0', 'Paid'),
(35, '1267347', '25.00', 'Level Income', '3982657', '2023-12-26', 0, '0', 'Paid'),
(36, '1114626', '50.00', 'Level Income', '4805729', '2023-12-26', 0, '0', 'Paid'),
(37, '1267347', '25.00', 'Level Income', '4805729', '2023-12-26', 0, '0', 'Paid'),
(38, '6905772', '50.00', 'Level Income', '9798720', '2023-12-26', 0, '0', 'Paid'),
(39, '1267347', '25.00', 'Level Income', '9798720', '2023-12-26', 0, '0', 'Paid'),
(40, '6905772', '50.00', 'Level Income', '4258342', '2023-12-26', 0, '0', 'Paid'),
(41, '1267347', '25.00', 'Level Income', '4258342', '2023-12-26', 0, '0', 'Paid'),
(42, '1001', '7.00', 'Auto Level Income', '1267347', '2023-12-26', 0, '0', 'Paid'),
(43, '1001', '50.00', 'Level Income', '2728013', '2023-12-27', 0, '0', 'Paid'),
(44, '1001', '50.00', 'Level Income', '6317709', '2023-12-27', 0, '0', 'Paid'),
(45, '6007870', '50.00', 'Level Income', '5043187', '2024-01-08', 0, '0', 'Pending'),
(46, '4216683', '25.00', 'Level Income', '5043187', '2024-01-08', 0, '0', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `epin`
--

CREATE TABLE `epin` (
  `id` int(11) NOT NULL,
  `epin` varchar(20) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `issue_to` varchar(20) NOT NULL,
  `generate_time` date NOT NULL,
  `generated_by` varchar(15) NOT NULL DEFAULT 'Admin',
  `transfer_by` varchar(20) DEFAULT NULL,
  `used_by` varchar(20) DEFAULT NULL,
  `transfer_time` date DEFAULT NULL,
  `used_time` date DEFAULT NULL,
  `status` enum('Used','Un-used') NOT NULL DEFAULT 'Un-used',
  `type` enum('Single Use','Multi Use') NOT NULL DEFAULT 'Single Use'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `epin_request`
--

CREATE TABLE `epin_request` (
  `id` int(11) NOT NULL,
  `requested_by` int(11) NOT NULL,
  `epin_qty` int(11) NOT NULL,
  `total_amount` varchar(20) NOT NULL,
  `screenshot_document` text NOT NULL,
  `epin` text DEFAULT NULL,
  `status` enum('1','2') NOT NULL DEFAULT '1' COMMENT '0 false receipt|1 epin not generated | 2 epin generated',
  `request_date` datetime NOT NULL,
  `epin_generate_date` datetime DEFAULT NULL,
  `Updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fix_income`
--

CREATE TABLE `fix_income` (
  `id` int(11) NOT NULL,
  `direct_income` varchar(100) DEFAULT NULL,
  `level_income` varchar(100) DEFAULT NULL,
  `binary_income` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flexible_income`
--

CREATE TABLE `flexible_income` (
  `id` int(11) NOT NULL,
  `income_name` varchar(200) NOT NULL,
  `income_duration` int(11) NOT NULL DEFAULT 0 COMMENT 'within how many days he should achieve this',
  `A` int(11) NOT NULL DEFAULT 0,
  `B` int(11) NOT NULL DEFAULT 0,
  `C` int(11) NOT NULL DEFAULT 0,
  `D` int(11) NOT NULL DEFAULT 0,
  `E` int(11) NOT NULL DEFAULT 0,
  `amount` decimal(11,2) NOT NULL,
  `based_on` enum('Member','PV') NOT NULL DEFAULT 'Member'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `franchisee`
--

CREATE TABLE `franchisee` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `business_name` varchar(200) DEFAULT NULL,
  `country` varchar(150) NOT NULL,
  `state` varchar(150) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(300) NOT NULL,
  `last_login` date NOT NULL,
  `last_login_ip` varchar(50) NOT NULL DEFAULT '0:0:0:0',
  `session` char(32) NOT NULL,
  `status` enum('Active','Inactive','Terminated') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `franchisee_stock`
--

CREATE TABLE `franchisee_stock` (
  `id` int(11) NOT NULL,
  `franchisee_id` varchar(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `available_qty` int(11) NOT NULL DEFAULT 0,
  `sold_qty` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `franchisee_stock_sale_bill`
--

CREATE TABLE `franchisee_stock_sale_bill` (
  `id` int(11) NOT NULL,
  `stock_data` varchar(500) NOT NULL,
  `stock_data_price` varchar(500) DEFAULT NULL,
  `fran_id` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `userid` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gap_commission_setting`
--

CREATE TABLE `gap_commission_setting` (
  `id` int(11) NOT NULL,
  `total_pv` int(11) NOT NULL DEFAULT 0,
  `amount` decimal(11,2) NOT NULL,
  `income_name` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `investments`
--

CREATE TABLE `investments` (
  `id` int(11) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `pack_id` varchar(20) NOT NULL,
  `amount` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `status` enum('Pending','Active','Expired') NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `investment_pack`
--

CREATE TABLE `investment_pack` (
  `id` int(11) NOT NULL,
  `pack_name` varchar(200) NOT NULL,
  `amount` varchar(40) DEFAULT NULL,
  `direct_income` varchar(20) NOT NULL DEFAULT '0',
  `level_income` varchar(100) NOT NULL DEFAULT '0',
  `matching_income` varchar(30) NOT NULL DEFAULT '0',
  `capping` varchar(30) NOT NULL DEFAULT '0',
  `roi` decimal(11,2) NOT NULL,
  `roi_frequency` int(11) NOT NULL DEFAULT 0,
  `roi_limit` int(11) NOT NULL DEFAULT 0,
  `based` enum('Percent','Fixed') NOT NULL DEFAULT 'Percent' COMMENT 'Calculation Based On'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `invoice_name` varchar(200) NOT NULL,
  `userid` varchar(20) NOT NULL DEFAULT 'N/A',
  `invoice_data` varchar(2000) NOT NULL COMMENT 'php array serialize, name=>amount=>tax',
  `invoice_data_tax` varchar(1000) NOT NULL,
  `invoice_data_qty` varchar(300) DEFAULT NULL,
  `company_address` varchar(300) NOT NULL,
  `bill_to_address` varchar(300) NOT NULL,
  `total_amt` decimal(11,2) NOT NULL DEFAULT 0.00,
  `paid_amt` decimal(11,2) NOT NULL DEFAULT 0.00,
  `date` date NOT NULL,
  `user_type` varchar(40) NOT NULL DEFAULT 'Other'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `level1` int(11) NOT NULL DEFAULT 0,
  `level2` int(11) NOT NULL DEFAULT 0,
  `level3` int(11) NOT NULL DEFAULT 0,
  `level4` int(11) NOT NULL DEFAULT 0,
  `level5` int(11) NOT NULL DEFAULT 0,
  `level6` int(11) NOT NULL DEFAULT 0,
  `level7` int(11) NOT NULL DEFAULT 0,
  `level8` int(11) NOT NULL DEFAULT 0,
  `level9` int(11) NOT NULL DEFAULT 0,
  `level10` int(11) NOT NULL DEFAULT 0,
  `level11` int(11) NOT NULL DEFAULT 0,
  `level12` int(11) NOT NULL DEFAULT 0,
  `level13` int(11) NOT NULL DEFAULT 0,
  `level14` int(11) NOT NULL DEFAULT 0,
  `level15` int(11) NOT NULL DEFAULT 0,
  `level16` int(11) NOT NULL DEFAULT 0,
  `level17` int(11) NOT NULL DEFAULT 0,
  `level18` int(11) NOT NULL DEFAULT 0,
  `level19` int(11) NOT NULL DEFAULT 0,
  `level20` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `userid`, `level1`, `level2`, `level3`, `level4`, `level5`, `level6`, `level7`, `level8`, `level9`, `level10`, `level11`, `level12`, `level13`, `level14`, `level15`, `level16`, `level17`, `level18`, `level19`, `level20`) VALUES
(1, '1001', 10, 6, 12, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '9107021', 2, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '1267347', 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, '7866889', 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, '4216683', 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, '2851957', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, '1114626', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, '6905772', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, '8568852', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, '4608293', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, '6007870', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, '3397858', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, '6376083', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, '3492494', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, '7032706', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, '3715045', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, '9153590', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, '8994089', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, '3982657', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, '4805729', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, '9798720', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, '4258342', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, '5597823', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, '6839665', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, '8533853', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, '7071850', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, '9439981', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28, '6317709', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, '2728013', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30, '1365100', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(31, '5043187', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `level_wise_income`
--

CREATE TABLE `level_wise_income` (
  `id` int(11) NOT NULL,
  `income_name` varchar(200) NOT NULL,
  `income_duration` int(11) NOT NULL DEFAULT 0 COMMENT 'within how many days he should achieve this',
  `level_no` int(11) NOT NULL DEFAULT 1,
  `total_member` int(11) NOT NULL DEFAULT 1,
  `amount` decimal(11,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `log` text NOT NULL,
  `type` enum('Admin','User','Franchisee','Other') NOT NULL DEFAULT 'Admin',
  `ip` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `show_password` varchar(255) DEFAULT NULL,
  `sponsor` varchar(20) NOT NULL,
  `position` varchar(20) NOT NULL,
  `signup_package` varchar(20) DEFAULT NULL,
  `epin` varchar(20) DEFAULT NULL,
  `address` varchar(400) NOT NULL,
  `join_time` date NOT NULL,
  `placement_leg` enum('A','B','C','D','E') NOT NULL DEFAULT 'A',
  `A` int(11) NOT NULL DEFAULT 0,
  `B` int(11) NOT NULL DEFAULT 0,
  `C` int(11) NOT NULL DEFAULT 0,
  `D` int(11) NOT NULL DEFAULT 0,
  `E` int(11) NOT NULL DEFAULT 0,
  `total_a` int(11) NOT NULL DEFAULT 0,
  `total_b` int(11) NOT NULL DEFAULT 0,
  `total_c` int(11) NOT NULL DEFAULT 0,
  `total_d` int(11) NOT NULL DEFAULT 0,
  `total_e` int(11) NOT NULL DEFAULT 0,
  `paid_a` int(11) NOT NULL DEFAULT 0,
  `paid_b` int(11) NOT NULL DEFAULT 0,
  `paid_c` int(11) NOT NULL DEFAULT 0,
  `paid_d` int(11) NOT NULL DEFAULT 0,
  `paid_e` int(11) NOT NULL DEFAULT 0,
  `rank` varchar(30) NOT NULL DEFAULT 'Member',
  `registration_ip` varchar(20) NOT NULL,
  `session` char(32) NOT NULL,
  `last_login` int(11) NOT NULL DEFAULT 0,
  `last_login_ip` varchar(20) NOT NULL DEFAULT 'NA',
  `topup` decimal(11,2) NOT NULL DEFAULT 0.00,
  `mypv` int(11) NOT NULL DEFAULT 0,
  `total_a_pv` varchar(5) NOT NULL DEFAULT '0',
  `total_b_pv` varchar(5) NOT NULL DEFAULT '0',
  `total_c_pv` varchar(10) NOT NULL DEFAULT '0',
  `total_d_pv` varchar(10) NOT NULL DEFAULT '0',
  `total_e_pv` varchar(10) NOT NULL DEFAULT '0',
  `my_img` varchar(30) DEFAULT '' COMMENT ' ',
  `status` enum('Block','Active','Suspend','') NOT NULL DEFAULT 'Active',
  `total_a_matching_incm` varchar(11) NOT NULL DEFAULT '0',
  `total_b_matching_incm` varchar(11) NOT NULL DEFAULT '0',
  `total_c_matching_incm` varchar(11) NOT NULL DEFAULT '0',
  `total_d_matching_incm` varchar(15) NOT NULL DEFAULT '0',
  `total_e_matching_incm` varchar(15) NOT NULL DEFAULT '0',
  `my_business` varchar(10) NOT NULL DEFAULT '0',
  `total_a_investment` varchar(20) NOT NULL DEFAULT '0',
  `total_b_investment` varchar(20) NOT NULL DEFAULT '0',
  `paid_a_matching_incm` varchar(10) NOT NULL DEFAULT '0',
  `paid_b_matching_incm` varchar(10) NOT NULL DEFAULT '0',
  `secret` int(11) NOT NULL,
  `gift_level` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `name`, `email`, `phone`, `username`, `password`, `show_password`, `sponsor`, `position`, `signup_package`, `epin`, `address`, `join_time`, `placement_leg`, `A`, `B`, `C`, `D`, `E`, `total_a`, `total_b`, `total_c`, `total_d`, `total_e`, `paid_a`, `paid_b`, `paid_c`, `paid_d`, `paid_e`, `rank`, `registration_ip`, `session`, `last_login`, `last_login_ip`, `topup`, `mypv`, `total_a_pv`, `total_b_pv`, `total_c_pv`, `total_d_pv`, `total_e_pv`, `my_img`, `status`, `total_a_matching_incm`, `total_b_matching_incm`, `total_c_matching_incm`, `total_d_matching_incm`, `total_e_matching_incm`, `my_business`, `total_a_investment`, `total_b_investment`, `paid_a_matching_incm`, `paid_b_matching_incm`, `secret`, `gift_level`) VALUES
(1001, 'Master User', 'abmlifeforever@gmail.com', '6201348383', '1001', '$2y$10$TPreRxDqL95EJ8c1iCH2fur8oxUqYJ5fSy3MbTb/VlwCobvgP8Sy2', '', '0', '', '2', NULL, 'Patna', '2023-11-01', 'A', 9107021, 2728013, 0, 0, 0, 11, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'auto1', '', '374a0b8332e5c78f3e938fb64503e6cf', 1713866380, '::1', '88.00', 0, '', '0', '', '', '', '', 'Active', '0', '0', '', '', '', '0', '', '0', '0', '0', 1, 1),
(1114626, 'aman', 'aman@gmail.com', '9846541312', '1703585703', '$2y$10$T/rEjtoV9QOZ0iWrmrnWV.K0JRF1x0LwaqdoY80R9Iu6eXpCrtXbe', '123456', '1267347', '1267347', '1', NULL, 'gdhds<br/>fhgfhf', '2023-12-26', 'A', 3982657, 4805729, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '192.168.1.202', '', 0, 'NA', '500.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2225, 0),
(1267347, 'karan', 'karan@gmail.com', '9874654654', '1703584665', '$2y$10$WeQ6293w3/xAoX0fxg3TL.u3ALHyPvElacFUtiONSMvkwpYKKVOb.', '123456', '1001', '1001', '2', NULL, 'rtghfgdhf<br/>dfghdfgh', '2023-12-26', 'B', 1114626, 6905772, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'auto1', '192.168.1.202', 'a0d91e30df87cc4994c8a727c40c6aef', 1703590228, '192.168.1.202', '88.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2221, 0),
(1365100, 'suhanu', 'tina@gmail.com', '84654113513', '1703672115', '$2y$10$z.BvM9t6.8DCAQaa4Zz2ru8l53Lq/M666VKwrdgs8EhRQLHhUwy6G', '123456', '6007870', '6007870', '0', NULL, 'fghgdfg<br/>fgfdg', '2023-12-27', 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '192.168.1.202', 'c567229950138c4f99d64cda83620bba', 1713856360, '::1', '0.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2248, 0),
(2728013, 'saloni', 'saloni@gmail.com', '97864554455', '1703671641', '$2y$10$yxWIm4BhIAuQtPVkFvqQP.BdwxCwdifEfOq9QjKDQjqYh6LN32.qu', '123456', '1001', '1001', '1', NULL, 'dfgsdfg<br/>dfgdfg', '2023-12-27', 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '192.168.1.202', '', 0, 'NA', '500.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2247, 0),
(2851957, 'dabi', 'fdgdsf@gmail.com', '9878465465', '1703585330', '$2y$10$SQAKBUyhNeg8tMQ14/X8nuaRYsXEUImvg8T7YvzfyZxEkz.dV32/W', '123456', '9107021', '9107021', '1', NULL, 'dfh<br/>fdghdf', '2023-12-26', 'B', 6376083, 3492494, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '192.168.1.202', '', 0, 'NA', '500.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2224, 0),
(3397858, 'nakul', 'nakul@gmail.com', '8967675456', '1703586679', '$2y$10$t6VLE86hGuSfA50TW2NPoeqdJJB1zwlNh4Jp/xql/nIQP/2nwCXJ.', '123456', '4216683', '4216683', '1', NULL, 'fghfd<br/>fghfd', '2023-12-26', 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '192.168.1.202', '', 0, 'NA', '500.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2230, 0),
(3492494, 'yudhisthir', 'yyy@gmail.com', '89087565677', '1703586839', '$2y$10$RJ9jleF.mWieRiGhMBpnE.Zodhs4HHmRgl53JgNyRfBhLE/nFn82m', '123456', '2851957', '2851957', '1', NULL, 'fghfdg<br/>fghjfg', '2023-12-26', 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '192.168.1.202', '', 0, 'NA', '500.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2232, 0),
(3715045, 'aadi', 'aadi@gmail.com', '979845465456', '1703589564', '$2y$10$dqmhkDXZAWCJd.BOXLGfq..mTqr9qMyPp4mgE/UGE9tKY16d4If9K', '123456', '8568852', '8568852', '1', NULL, 'hfghfg<br/>hfgfg', '2023-12-26', 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '192.168.1.202', '', 0, 'NA', '500.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2234, 0),
(3982657, 'titu', 'titu@gmail.com', '78956456545', '1703590777', '$2y$10$L4cMpFxVEUagMyuxMrayC.sgpchusiE2c9m/Asq0pdxguRQSUGH1O', '123456', '1114626', '1114626', '1', NULL, 'yjfghf<br/>gjhfghfg', '2023-12-26', 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '192.168.1.202', '', 0, 'NA', '500.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2237, 0),
(4216683, 'tina', 'tina@gmail.com', '987465132432`', '1703585282', '$2y$10$cQTfJswxUfhHu13CXVm5I.4SiWzPMlfuUj8iPZ5jORblgsswVtiiy', '123456', '9107021', '9107021', '1', NULL, 'gkhj,b<br/>hgfghvh', '2023-12-26', 'A', 6007870, 3397858, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '192.168.1.202', '', 0, 'NA', '500.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2223, 0),
(4258342, 'ganga', 'gannga@gmail.com', '789464564', '1703591108', '$2y$10$toUL1tpBHxNv2VqO5rH15OxxOhfHGxtWd6nljrlxgJn1ZmAMuPIiG', '123456', '6905772', '6905772', '1', NULL, 'fghfghgf<br/>gfhfgh', '2023-12-26', 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '192.168.1.202', '914fa5a56e49e0752e9ca9917a2b2e00', 1703654411, '::1', '500.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2240, 0),
(4608293, 'laxhman', 'laxhman@gmail.com', '98768546125', '1703586080', '$2y$10$HZStmLimjpX.QE65waTBi.9NlRAOaFb.vocvVhVZPB.5p7Lf4YIXq', '123456', '7866889', '7866889', '1', NULL, 'asdasdf<br/>sdfsda', '2023-12-26', 'B', 9153590, 8994089, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '192.168.1.202', 'be2f8a64664ea54a306ddd2779d75ca7', 1703586113, '192.168.1.202', '500.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2228, 0),
(4805729, 'sweety', 'sweety@gmail.com', '7894645645', '1703590898', '$2y$10$VUti1fimtUjN8o.dG1gIyujv/b3HJCm8vVbMerulIeuSwpFTZMnE6', '123456', '1114626', '1114626', '1', NULL, 'sweety<br/>sweety', '2023-12-26', 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '192.168.1.202', '', 0, 'NA', '500.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2238, 0),
(5043187, 'frutii', 'arjun@gmail.com', '7893456454', '1703673178', '$2y$10$uEA7uv8E/BzlfJtlAHyS.OsdlcYWI.F26cED/5Um1hQvAj8hQf...', '123456', '6007870', '6007870', '1', NULL, 'fdgfdgsd<br>dfgsd', '2023-12-27', 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '192.168.1.202', '1c11df639a3f4c227cfea9af50390f0e', 1704693449, '127.0.0.1', '500.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2249, 0),
(5597823, 'etwari babu', 'etwar@gmail.com', '78978645645', '1703591499', '$2y$10$AZOTcr3i/64dtF6zC5DDUeQUNSo6XCh49EYIQboFYSwlU.N03qZH2', '123456', '1001', '1001', '0', NULL, 'ghjfgh<br/>fdghg', '2023-12-26', 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '192.168.1.202', '', 0, 'NA', '0.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2241, 0),
(6007870, 'bhimm', 'bhim@gmail.com', '8967754654', '1703586586', '$2y$10$TIX9rPK.Tk5Uwk.1/cSzCunahMk/rqHMM5sNkZltkx3mUY5E2FxA6', '123456', '4216683', '4216683', '1', NULL, 'bhimghdf<br/>fghdfghfg', '2023-12-26', 'A', 1365100, 5043187, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '192.168.1.202', '', 0, 'NA', '500.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2229, 0),
(6317709, 'himani', 'himani@gmail.com', '9874564185', '1703671532', '$2y$10$MfSnDJwBPi5Uy.GZ48wNuuyFFAx63pf4QRwpDWrg4dL8VdG0e6I1m', '123456', '1001', '1001', '1', NULL, 'sdfgsdg<br/>dfghdfs', '2023-12-27', 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '192.168.1.202', '', 0, 'NA', '500.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2246, 0),
(6376083, 'sahdev', 'kara@gmail.com', '7896767546', '1703586751', '$2y$10$ubpsM6mwP7dpsWcmdHyPCOwATpDwBTj3QPKF7oLzXcwy5qjZfxKqW', '123456', '2851957', '2851957', '1', NULL, 'sdghsdfg<br/>dsfgdsgd', '2023-12-26', 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '192.168.1.202', '', 0, 'NA', '500.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2231, 0),
(6839665, 'gelu', 'gelu@gmail.com', '967754654njm', '1703591887', '$2y$10$zYrCUgPLgN3CquQFCBtkQuafZl/9sfInHR3fFq/LI4kbWqI4Qp3aW', '123456', '1001', '1001', '0', NULL, 'ghjfg<br/>fghfg', '2023-12-26', 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '192.168.1.202', '', 0, 'NA', '0.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2242, 0),
(6905772, 'dip', 'dip@gmail.com', '7856675465', '1703585805', '$2y$10$o6ftBN4Ik4UdvjJyIKT.NOcAZunuQPqQCsRVZId0xKQ8vF9BH0xaS', '123456', '1267347', '1267347', '1', NULL, 'fgjgjfghjk<br/>gjhfgjhfg', '2023-12-26', 'B', 9798720, 4258342, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '192.168.1.202', '', 0, 'NA', '500.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2226, 0),
(7032706, 'pushpa', 'pushpa@gmail.com', '9875466564', '1703587992', '$2y$10$mDuHAv0xtOmsSFvYcllDnuRLQC6v4.kH/pZmk6PglKZ5k6h6NhKQS', '123456', '8568852', '8568852', '1', NULL, 'fghf<br/>dfhfg', '2023-12-26', 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '192.168.1.202', '', 0, 'NA', '500.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2233, 0),
(7071850, 'rohan', 'nikhil@gmail.com', '9905174054', '1703664349', '$2y$10$x65D/hol6dTOVIao3Ftee.HNzMXF7KPOUYeGBT.0ax20f3.U0opvK', '123456', '1001', '1001', '0', NULL, 'sdfsdfsdaf<br/>dfgd', '2023-12-27', 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '::1', '', 0, 'NA', '0.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2244, 0),
(7866889, 'arjun', 'arjun@gmail.com', '8786456545', '1703584755', '$2y$10$n2fxIr.Y07paTHmz6rxGtuGiaHX45dg.7kaYaD3xxOlHheZDsoc36', '123456', '1001', '1001', '2', NULL, 'sdfasdfd<br/>fghfgf', '2023-12-26', 'B', 8568852, 4608293, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'auto1', '192.168.1.202', '939cb8e92c749b6c8d771edffe34e69e', 1703589969, '192.168.1.202', '88.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2222, 0),
(8533853, 'rohan', 'nikhil@gmail.com', '3564346565', '1703657521', '$2y$10$BW4Ow29LiSZj4q/8r8w5HOe8SquoCR6r7dIA4cWaZLIzHtVNb9Dcm', '123456', '1001', '1001', '0', NULL, 'sdafasdfasdf<br/>fsdfsdjfsdjkfsdjk', '2023-12-27', 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '::1', '', 0, 'NA', '0.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2243, 0),
(8568852, 'ram', 'ram@gmail.com', '9878646546', '1703586013', '$2y$10$8Sdwy5f72TasXD0s12x8oO7bJrbBslPTbx97fXgImx5JJj7vqZGAu', '123456', '7866889', '7866889', '1', NULL, 'dfdfs<br/>sdfgsd', '2023-12-26', 'A', 7032706, 3715045, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '192.168.1.202', '', 0, 'NA', '500.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2227, 0),
(8994089, 'tttt', 'karan@gmail.com', '7896754654', '1703589703', '$2y$10$CfJMXqwYop.sZ2bZ7fE5IeS1HVumSslEeRbyphCCUGPBKWcjPJYhW', '123456', '4608293', '4608293', '1', NULL, 'rtytfgdf<br/>fghdfhdf', '2023-12-26', 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '192.168.1.202', '', 0, 'NA', '500.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2236, 0),
(9107021, 'ajay kumar', 'ajay@gmail.com', '9875452465', '1703583982', '$2y$10$7ROt3fnT0d6tPnalvIdyfORPcRTM/vmLv6GUHyRO3BA9Xup3OHhve', '123456', '1001', '1001', '2', NULL, 'dsgsh<br/>fghdfsg', '2023-12-26', 'A', 4216683, 2851957, 0, 0, 0, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'auto1', '192.168.1.202', '86cd55bf43122537585110c14f984c5c', 1703672156, '192.168.1.202', '88.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2220, 0),
(9153590, 'ppppp', 'ppp@gmail.com', '89787878787', '1703589624', '$2y$10$5k/BiKi5BvxGsLnvuAdKBeOqZcPDex0UxZoLK5dB7OKkHAX6/h.O6', '123456', '4608293', '4608293', '1', NULL, 'rtyhfd<br/>fghfd', '2023-12-26', 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '192.168.1.202', '', 0, 'NA', '500.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2235, 0),
(9439981, 'rohan', 'sham@gmail.com', '9905174055', '1703664408', '$2y$10$ugXah/HXV4H4Y40JWNbHk.7FvcoYClPB4UreyP6X7Gw3ZcDZ45B3a', '123456', '1001', '1001', '0', NULL, 'sdafasdfasdf<br/>safsdfsdfsdf', '2023-12-27', 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '::1', '', 0, 'NA', '0.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2245, 0),
(9798720, 'sona', 'fgdf@gmail.com', '7897896786', '1703590937', '$2y$10$dwWoO5RDqPdWOqQ7ger9PuXrliAGfAS1CMm8WpDJXvOAGUqZ9Ml6u', '123456', '6905772', '6905772', '1', NULL, 'jhkghj<br/>ghjj', '2023-12-26', 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '192.168.1.202', '', 0, 'NA', '500.00', 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2239, 0);

-- --------------------------------------------------------

--
-- Table structure for table `member_profile`
--

CREATE TABLE `member_profile` (
  `id` int(11) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `tax_no` varchar(20) NOT NULL DEFAULT 'N/A',
  `aadhar_no` varchar(20) NOT NULL DEFAULT 'NA',
  `bank_ac_no` varchar(60) DEFAULT '',
  `bank_name` varchar(200) DEFAULT '',
  `bank_ifsc` varchar(30) DEFAULT '',
  `bank_branch` varchar(70) DEFAULT '',
  `btc_address` varchar(70) DEFAULT '',
  `tcc_address` varchar(70) DEFAULT '',
  `nominee_name` varchar(120) NOT NULL DEFAULT 'NA',
  `nominee_add` varchar(300) NOT NULL DEFAULT 'NA',
  `nominee_relation` varchar(100) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gstin` varchar(20) NOT NULL DEFAULT 'NA',
  `id_proof` varchar(200) DEFAULT NULL,
  `add_proof` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `member_profile`
--

INSERT INTO `member_profile` (`id`, `userid`, `tax_no`, `aadhar_no`, `bank_ac_no`, `bank_name`, `bank_ifsc`, `bank_branch`, `btc_address`, `tcc_address`, `nominee_name`, `nominee_add`, `nominee_relation`, `date_of_birth`, `gstin`, `id_proof`, `add_proof`) VALUES
(1, '9107021', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(2, '1267347', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(3, '7866889', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(4, '4216683', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(5, '2851957', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(6, '1114626', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(7, '6905772', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(8, '8568852', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(9, '4608293', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(10, '6007870', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(11, '3397858', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(12, '6376083', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(13, '3492494', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(14, '7032706', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(15, '3715045', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(16, '9153590', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(17, '8994089', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(18, '3982657', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(19, '4805729', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(20, '9798720', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(21, '4258342', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(22, '5597823', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(23, '6839665', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(24, '8533853', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(25, '7071850', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(26, '9439981', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(27, '6317709', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(28, '2728013', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(29, '1365100', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(30, '5043187', 'N/A', 'NA', '', '', '', '', '', '', '', 'NA', '', '2024-01-24', 'NA', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL,
  `update_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `description`, `status`, `update_date`) VALUES
(1, '<p>Welcome To amb life Game    gdfgfdgfdgd gdgdgdgdf</p>', 1, '2021-07-20');

-- --------------------------------------------------------

--
-- Table structure for table `other_wallet`
--

CREATE TABLE `other_wallet` (
  `id` int(11) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `balance` decimal(11,2) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'Default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `other_wallet`
--

INSERT INTO `other_wallet` (`id`, `userid`, `balance`, `type`) VALUES
(1, '9107021', '0.00', 'Default'),
(2, '1267347', '0.00', 'Default'),
(3, '7866889', '0.00', 'Default'),
(4, '4216683', '0.00', 'Default'),
(5, '2851957', '0.00', 'Default'),
(6, '1114626', '0.00', 'Default'),
(7, '6905772', '0.00', 'Default'),
(8, '8568852', '0.00', 'Default'),
(9, '4608293', '0.00', 'Default'),
(10, '6007870', '0.00', 'Default'),
(11, '3397858', '0.00', 'Default'),
(12, '6376083', '0.00', 'Default'),
(13, '3492494', '0.00', 'Default'),
(14, '7032706', '0.00', 'Default'),
(15, '3715045', '0.00', 'Default'),
(16, '9153590', '0.00', 'Default'),
(17, '8994089', '0.00', 'Default'),
(18, '3982657', '0.00', 'Default'),
(19, '4805729', '0.00', 'Default'),
(20, '9798720', '0.00', 'Default'),
(21, '4258342', '0.00', 'Default'),
(22, '5597823', '0.00', 'Default'),
(23, '6839665', '0.00', 'Default'),
(24, '8533853', '0.00', 'Default'),
(25, '7071850', '0.00', 'Default'),
(26, '9439981', '0.00', 'Default'),
(27, '6317709', '0.00', 'Default'),
(28, '2728013', '0.00', 'Default'),
(29, '1365100', '0.00', 'Default'),
(30, '5043187', '0.00', 'Default');

-- --------------------------------------------------------

--
-- Table structure for table `pending_wallet`
--

CREATE TABLE `pending_wallet` (
  `id` int(11) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `balance` varchar(20) NOT NULL,
  `status` enum('Paid','Pending') NOT NULL DEFAULT 'Pending',
  `txn_id` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `prod_name` varchar(200) NOT NULL,
  `category` varchar(20) NOT NULL,
  `prod_price` varchar(15) NOT NULL,
  `dealer_price` decimal(11,2) NOT NULL,
  `prod_desc` text NOT NULL,
  `pv` varchar(20) NOT NULL DEFAULT '0',
  `qty` int(11) NOT NULL DEFAULT -1,
  `gst` decimal(11,2) NOT NULL,
  `image` varchar(200) NOT NULL,
  `show_on_regform` enum('Yes','No') NOT NULL DEFAULT 'No',
  `direct_income` decimal(11,2) DEFAULT 0.00,
  `level_income` varchar(200) DEFAULT NULL,
  `matching_income` decimal(11,2) DEFAULT 0.00,
  `capping` decimal(11,2) DEFAULT 0.00,
  `roi` decimal(11,2) DEFAULT 0.00,
  `roi_frequency` int(11) DEFAULT NULL,
  `roi_limit` int(11) DEFAULT NULL,
  `sold_qty` int(11) NOT NULL DEFAULT 0,
  `status` enum('Selling','Not-Selling') NOT NULL DEFAULT 'Selling'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `prod_name`, `category`, `prod_price`, `dealer_price`, `prod_desc`, `pv`, `qty`, `gst`, `image`, `show_on_regform`, `direct_income`, `level_income`, `matching_income`, `capping`, `roi`, `roi_frequency`, `roi_limit`, `sold_qty`, `status`) VALUES
(1, 'Package 1', '1', '600', '0.00', '', '', -1, '0.00', 'default.jpg', 'Yes', NULL, '50,25', NULL, '20000.00', '0.00', 0, 0, 0, 'Selling'),
(4, 'autopool3', '1', '4075', '0.00', '', '', -1, '0.00', 'default.jpg', 'Yes', NULL, '500,1000,2775', NULL, NULL, '0.00', 0, 0, 0, 'Selling'),
(3, 'autopool2', '1', '609', '0.00', '', '', -1, '0.00', 'default.jpg', 'Yes', NULL, '100,150,359', NULL, NULL, '0.00', 0, 0, 0, 'Selling'),
(2, 'autopool1', '1', '88', '0.00', '', '', -1, '0.00', 'default.jpg', 'Yes', NULL, '7,11,70', NULL, NULL, '0.00', 0, 0, 0, 'Selling'),
(5, 'autopool4', '1', '32020', '0.00', '', '', -1, '0.00', 'default.jpg', 'Yes', NULL, '1020,3000,28000', NULL, NULL, '0.00', 0, 0, 0, 'Selling');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(200) NOT NULL,
  `parent_cat` varchar(20) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `cat_name`, `parent_cat`, `description`) VALUES
(1, 'Package', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_sale`
--

CREATE TABLE `product_sale` (
  `id` int(11) NOT NULL,
  `product_id` varchar(10) NOT NULL,
  `userid` varchar(10) NOT NULL COMMENT 'who purchased the product',
  `status` enum('Completed','Processing') NOT NULL DEFAULT 'Processing',
  `franchisee_id` varchar(15) NOT NULL DEFAULT 'Admin',
  `cost` decimal(11,2) NOT NULL,
  `date` date NOT NULL,
  `deliver_date` date DEFAULT NULL,
  `tid` varchar(250) NOT NULL DEFAULT 'N/A',
  `qty` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(20) NOT NULL,
  `purchased_data` text NOT NULL,
  `bill_copy` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `supplier` varchar(200) DEFAULT NULL,
  `bill_amt` decimal(11,2) NOT NULL,
  `paid_amt` decimal(11,2) NOT NULL DEFAULT 0.00
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rank_system`
--

CREATE TABLE `rank_system` (
  `id` int(11) NOT NULL,
  `rank_name` varchar(200) NOT NULL,
  `rank_duration` int(11) NOT NULL DEFAULT 0 COMMENT 'within how many days he should achieve this',
  `A` int(11) NOT NULL DEFAULT 0,
  `B` int(11) NOT NULL DEFAULT 0,
  `C` int(11) NOT NULL DEFAULT 0,
  `D` int(11) NOT NULL DEFAULT 0,
  `E` int(11) NOT NULL DEFAULT 0,
  `based_on` enum('Member','PV') NOT NULL DEFAULT 'Member'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rank_system`
--

INSERT INTO `rank_system` (`id`, `rank_name`, `rank_duration`, `A`, `B`, `C`, `D`, `E`, `based_on`) VALUES
(1, 'Silver Distributer', 0, 25, 25, 0, 0, 0, 'Member'),
(2, 'Gold Distributer', 0, 50, 50, 0, 0, 0, 'Member'),
(3, 'Ruby Distributor', 0, 125, 125, 0, 0, 0, 'Member'),
(4, 'Platinum Distributor', 0, 250, 250, 0, 0, 0, 'Member'),
(5, 'Pearl Distributor', 0, 500, 500, 0, 0, 0, 'Member'),
(6, 'Diamond Distributor', 0, 1250, 1250, 0, 0, 0, 'Member'),
(7, 'Dobule Diamond Distributor', 0, 2500, 2500, 0, 0, 0, 'Member'),
(8, 'Crown Distributor', 0, 5000, 5000, 0, 0, 0, 'Member'),
(9, 'Executive Crown Distributor', 0, 10000, 10000, 0, 0, 0, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `recharge_entry`
--

CREATE TABLE `recharge_entry` (
  `id` int(11) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `service_type` enum('Mobile','DTH','Data Card','Utility Bill') NOT NULL DEFAULT 'Mobile',
  `recharge_no` varchar(40) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `time` int(11) NOT NULL,
  `status` enum('Pending','Completed') NOT NULL DEFAULT 'Pending',
  `area` varchar(100) DEFAULT NULL,
  `operator` varchar(100) NOT NULL,
  `trnid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

CREATE TABLE `rewards` (
  `id` int(11) NOT NULL,
  `reward_id` varchar(150) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `status` enum('Delivered','Pending') NOT NULL DEFAULT 'Pending',
  `paid_date` date NOT NULL,
  `tid` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reward_setting`
--

CREATE TABLE `reward_setting` (
  `id` int(11) NOT NULL,
  `reward_name` varchar(200) NOT NULL,
  `reward_duration` int(11) NOT NULL DEFAULT 0 COMMENT 'within how many days he should achieve this',
  `achievers` int(11) NOT NULL DEFAULT 0,
  `A` int(11) NOT NULL DEFAULT 0,
  `B` int(11) NOT NULL DEFAULT 0,
  `C` int(11) NOT NULL DEFAULT 0,
  `D` int(11) NOT NULL DEFAULT 0,
  `E` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `reward_setting`
--

INSERT INTO `reward_setting` (`id`, `reward_name`, `reward_duration`, `achievers`, `A`, `B`, `C`, `D`, `E`) VALUES
(1, 'Tab / LED / Smart Phone / 10,000', 0, 0, 50, 50, 0, 0, 0),
(2, 'Laptop / Bike / 25,000', 0, 0, 100, 100, 0, 0, 0),
(3, '10gm Gold / 50\" LED LG TV / 50,000', 0, 0, 250, 250, 0, 0, 0),
(4, 'Car / 1,50,000', 0, 0, 500, 500, 0, 0, 0),
(5, 'Big Car /300000', 0, 0, 1000, 1000, 0, 0, 0),
(6, 'Fortuner Car / 600000', 0, 0, 2500, 2500, 0, 0, 0),
(7, 'Mercedes/ Audi / BMW / 12 LAKH', 0, 0, 5000, 5000, 0, 0, 0),
(8, 'Jaguar Car / 25 Lakh / Couple Foreign Trip', 0, 0, 10000, 10000, 0, 0, 0),
(9, 'Luxury Bunglow / Couple Foreign Trip / 50 Lakh', 0, 0, 20000, 20000, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `staff_id` varchar(20) NOT NULL,
  `salary` decimal(11,2) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL,
  `paydate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `designtion` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(300) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(15) NOT NULL,
  `bank_detail` varchar(300) DEFAULT NULL,
  `pan` varchar(20) DEFAULT NULL,
  `aadhar` varchar(20) DEFAULT NULL,
  `ip` varchar(100) NOT NULL DEFAULT '0:0:0:0',
  `last_login` date NOT NULL,
  `session` varchar(60) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_designation`
--

CREATE TABLE `staff_designation` (
  `id` int(11) NOT NULL,
  `des_title` varchar(200) NOT NULL,
  `des_permission` varchar(1000) NOT NULL,
  `payscale` decimal(11,2) NOT NULL DEFAULT 0.00
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey`
--

CREATE TABLE `survey` (
  `id` int(11) NOT NULL,
  `survey_name` varchar(200) NOT NULL,
  `question_answers` text NOT NULL,
  `level_earning` varchar(100) DEFAULT NULL,
  `expiry_date` date NOT NULL,
  `type` enum('Hosted Survey','Third Party') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_user`
--

CREATE TABLE `survey_user` (
  `id` int(11) NOT NULL,
  `survey_id` varchar(20) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `data` text DEFAULT NULL,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_report`
--

CREATE TABLE `tax_report` (
  `id` int(11) NOT NULL,
  `userid` varchar(10) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `payout_id` varchar(10) NOT NULL,
  `tax_amount` decimal(11,2) NOT NULL,
  `tax_percnt` varchar(10) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `ticket_title` varchar(300) NOT NULL,
  `ticket_detail` text NOT NULL,
  `userid` varchar(20) NOT NULL,
  `status` enum('Open','Waiting User Reply','Closed','Customer Reply') NOT NULL DEFAULT 'Open',
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_reply`
--

CREATE TABLE `ticket_reply` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `msg_from` varchar(20) NOT NULL DEFAULT 'Admin',
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `topup_record`
--

CREATE TABLE `topup_record` (
  `id` int(11) NOT NULL,
  `user_id` varchar(22) NOT NULL,
  `epin` varchar(100) NOT NULL,
  `topup_amount` varchar(50) NOT NULL,
  `topup_by` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `topup_record`
--

INSERT INTO `topup_record` (`id`, `user_id`, `epin`, `topup_amount`, `topup_by`, `date`) VALUES
(1, '1001', 'Diect By Admin', '500', 'Admin', '2023-12-26'),
(2, '9107021', 'Diect By Admin', '500', 'Admin', '2023-12-26'),
(3, '1267347', 'Diect By Admin', '500', 'Admin', '2023-12-26'),
(4, '7866889', 'Diect By Admin', '500', 'Admin', '2023-12-26'),
(5, '4216683', 'Diect By Admin', '500', 'Admin', '2023-12-26'),
(6, '2851957', 'Diect By Admin', '500', 'Admin', '2023-12-26'),
(7, '1114626', 'Diect By Admin', '500', 'Admin', '2023-12-26'),
(8, '6905772', 'Diect By Admin', '500', 'Admin', '2023-12-26'),
(9, '8568852', 'Diect By Admin', '500', 'Admin', '2023-12-26'),
(10, '4608293', 'Diect By Admin', '500', 'Admin', '2023-12-26'),
(11, '6007870', 'Diect By Admin', '500', 'Admin', '2023-12-26'),
(12, '3397858', 'Diect By Admin', '500', 'Admin', '2023-12-26'),
(13, '6376083', 'Diect By Admin', '500', 'Admin', '2023-12-26'),
(14, '3492494', 'Diect By Admin', '500', 'Admin', '2023-12-26'),
(15, '7032706', 'Diect By Admin', '500', 'Admin', '2023-12-26'),
(16, '3715045', 'Diect By Admin', '500', 'Admin', '2023-12-26'),
(17, '9153590', 'Diect By Admin', '500', 'Admin', '2023-12-26'),
(18, '8994089', 'Diect By Admin', '500', 'Admin', '2023-12-26'),
(19, '3982657', 'Diect By Admin', '500', 'Admin', '2023-12-26'),
(20, '4805729', 'Diect By Admin', '500', 'Admin', '2023-12-26'),
(21, '9798720', 'Diect By Admin', '500', 'Admin', '2023-12-26'),
(22, '4258342', 'Diect By Admin', '500', 'Admin', '2023-12-26'),
(23, '2728013', 'Diect By Admin', '500', 'Admin', '2023-12-27'),
(24, '6317709', 'Diect By Admin', '500', 'Admin', '2023-12-27'),
(25, '5043187', 'Diect By Admin', '500', 'Admin', '2024-01-08');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `capping_amt` decimal(11,2) NOT NULL,
  `gateway` varchar(20) NOT NULL,
  `time` int(11) NOT NULL,
  `transaction_id` varchar(150) NOT NULL DEFAULT 'NA',
  `status` enum('Completed','Processing','Failed') NOT NULL DEFAULT 'Completed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_balance_records`
--

CREATE TABLE `transfer_balance_records` (
  `id` int(11) NOT NULL,
  `transfer_from` varchar(10) NOT NULL,
  `transfer_to` varchar(10) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` int(11) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `balance` varchar(15) NOT NULL DEFAULT '0',
  `without_tax_bal` varchar(15) NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT 'Default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `userid`, `balance`, `without_tax_bal`, `type`) VALUES
(1, '1001', '336.8', '421', 'Default'),
(2, '9107021', '160', '200', 'Default'),
(3, '1267347', '160', '200', 'Default'),
(4, '7866889', '160', '200', 'Default'),
(5, '4216683', '80', '100', 'Default'),
(6, '2851957', '80', '100', 'Default'),
(7, '1114626', '80', '100', 'Default'),
(8, '6905772', '80', '100', 'Default'),
(9, '8568852', '80', '100', 'Default'),
(10, '4608293', '80', '100', 'Default'),
(11, '6007870', '0', '0', 'Default'),
(12, '3397858', '0', '0', 'Default'),
(13, '6376083', '0', '0', 'Default'),
(14, '3492494', '0', '0', 'Default'),
(15, '7032706', '0', '0', 'Default'),
(16, '3715045', '0', '0', 'Default'),
(17, '9153590', '0', '0', 'Default'),
(18, '8994089', '0', '0', 'Default'),
(19, '3982657', '0', '0', 'Default'),
(20, '4805729', '0', '0', 'Default'),
(21, '9798720', '0', '0', 'Default'),
(22, '4258342', '0', '0', 'Default'),
(23, '5597823', '0', '0', 'Default'),
(24, '6839665', '0', '0', 'Default'),
(25, '8533853', '0', '0', 'Default'),
(26, '7071850', '0', '0', 'Default'),
(27, '9439981', '0', '0', 'Default'),
(28, '6317709', '0', '0', 'Default'),
(29, '2728013', '0', '0', 'Default'),
(30, '1365100', '0', '0', 'Default'),
(31, '5043187', '0', '0', 'Default');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_request`
--

CREATE TABLE `withdraw_request` (
  `id` int(11) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `without_tax_amt` decimal(11,2) NOT NULL,
  `tax` decimal(11,2) NOT NULL DEFAULT 0.00,
  `date` date NOT NULL,
  `status` enum('Paid','Un-Paid','Hold') NOT NULL DEFAULT 'Un-Paid',
  `paid_date` date DEFAULT NULL,
  `tid` varchar(200) DEFAULT NULL COMMENT 'Transaction ID or detail'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `admin_expense`
--
ALTER TABLE `admin_expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_user`
--
ALTER TABLE `ad_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ad_id` (`ad_id`);

--
-- Indexes for table `autopool1_table`
--
ALTER TABLE `autopool1_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `autopool2_table`
--
ALTER TABLE `autopool2_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `autopool3_table`
--
ALTER TABLE `autopool3_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `autopool4_table`
--
ALTER TABLE `autopool4_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `autopool_topup_record`
--
ALTER TABLE `autopool_topup_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auto_level1`
--
ALTER TABLE `auto_level1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auto_level2`
--
ALTER TABLE `auto_level2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auto_level3`
--
ALTER TABLE `auto_level3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auto_level4`
--
ALTER TABLE `auto_level4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `coupon_categories`
--
ALTER TABLE `coupon_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donation_package`
--
ALTER TABLE `donation_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `earning`
--
ALTER TABLE `earning`
  ADD PRIMARY KEY (`id`),
  ADD KEY `useird` (`userid`);

--
-- Indexes for table `epin`
--
ALTER TABLE `epin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `epin` (`epin`),
  ADD KEY `issue_to` (`issue_to`);

--
-- Indexes for table `epin_request`
--
ALTER TABLE `epin_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fix_income`
--
ALTER TABLE `fix_income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flexible_income`
--
ALTER TABLE `flexible_income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `franchisee`
--
ALTER TABLE `franchisee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `franchisee_stock`
--
ALTER TABLE `franchisee_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `franchisee_id` (`franchisee_id`);

--
-- Indexes for table `franchisee_stock_sale_bill`
--
ALTER TABLE `franchisee_stock_sale_bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gap_commission_setting`
--
ALTER TABLE `gap_commission_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investments`
--
ALTER TABLE `investments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investment_pack`
--
ALTER TABLE `investment_pack`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userid` (`userid`);

--
-- Indexes for table `level_wise_income`
--
ALTER TABLE `level_wise_income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`) USING BTREE,
  ADD UNIQUE KEY `secret` (`secret`),
  ADD KEY `sponsor` (`sponsor`),
  ADD KEY `poisition` (`position`);

--
-- Indexes for table `member_profile`
--
ALTER TABLE `member_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_wallet`
--
ALTER TABLE `other_wallet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `pending_wallet`
--
ALTER TABLE `pending_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `prod_name` (`prod_name`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sale`
--
ALTER TABLE `product_sale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rank_system`
--
ALTER TABLE `rank_system`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recharge_entry`
--
ALTER TABLE `recharge_entry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reward_setting`
--
ALTER TABLE `reward_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `staff_designation`
--
ALTER TABLE `staff_designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey`
--
ALTER TABLE `survey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_user`
--
ALTER TABLE `survey_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ad_id` (`survey_id`);

--
-- Indexes for table `tax_report`
--
ALTER TABLE `tax_report`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payout_id` (`payout_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_reply`
--
ALTER TABLE `ticket_reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topup_record`
--
ALTER TABLE `topup_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_balance_records`
--
ALTER TABLE `transfer_balance_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`transfer_from`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userid` (`userid`);

--
-- Indexes for table `withdraw_request`
--
ALTER TABLE `withdraw_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_expense`
--
ALTER TABLE `admin_expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ad_user`
--
ALTER TABLE `ad_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `autopool1_table`
--
ALTER TABLE `autopool1_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `autopool2_table`
--
ALTER TABLE `autopool2_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `autopool3_table`
--
ALTER TABLE `autopool3_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `autopool4_table`
--
ALTER TABLE `autopool4_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `autopool_topup_record`
--
ALTER TABLE `autopool_topup_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auto_level1`
--
ALTER TABLE `auto_level1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auto_level2`
--
ALTER TABLE `auto_level2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auto_level3`
--
ALTER TABLE `auto_level3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auto_level4`
--
ALTER TABLE `auto_level4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_categories`
--
ALTER TABLE `coupon_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donation_package`
--
ALTER TABLE `donation_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `earning`
--
ALTER TABLE `earning`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `epin`
--
ALTER TABLE `epin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `epin_request`
--
ALTER TABLE `epin_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fix_income`
--
ALTER TABLE `fix_income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flexible_income`
--
ALTER TABLE `flexible_income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `franchisee`
--
ALTER TABLE `franchisee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `franchisee_stock`
--
ALTER TABLE `franchisee_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `franchisee_stock_sale_bill`
--
ALTER TABLE `franchisee_stock_sale_bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gap_commission_setting`
--
ALTER TABLE `gap_commission_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `investments`
--
ALTER TABLE `investments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `investment_pack`
--
ALTER TABLE `investment_pack`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `level_wise_income`
--
ALTER TABLE `level_wise_income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `secret` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2250;

--
-- AUTO_INCREMENT for table `member_profile`
--
ALTER TABLE `member_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `other_wallet`
--
ALTER TABLE `other_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `pending_wallet`
--
ALTER TABLE `pending_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_sale`
--
ALTER TABLE `product_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rank_system`
--
ALTER TABLE `rank_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `recharge_entry`
--
ALTER TABLE `recharge_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rewards`
--
ALTER TABLE `rewards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reward_setting`
--
ALTER TABLE `reward_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_designation`
--
ALTER TABLE `staff_designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `survey`
--
ALTER TABLE `survey`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `survey_user`
--
ALTER TABLE `survey_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_report`
--
ALTER TABLE `tax_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_reply`
--
ALTER TABLE `ticket_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `topup_record`
--
ALTER TABLE `topup_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `withdraw_request`
--
ALTER TABLE `withdraw_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=446;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
