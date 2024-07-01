-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 06, 2023 at 12:28 PM
-- Server version: 8.0.35
-- PHP Version: 8.1.25

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
  `id` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(250) NOT NULL,
  `session` char(32) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `last_login` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`, `email`, `session`, `ip`, `last_login`) VALUES
(1, 'Admin', 'admin', '$2y$10$P5VMT35fdDybgJot7DPC..jn67l/uTETMy42Z0lAI8cp/Ae1zXJrG', 'admin@g.com', '82768ce3c71f8d85cff4dc2f6e9d0fc9', '103.104.183.2', 1701864812),
(4, 'Manish', 'manish', '$2y$10$P5VMT35fdDybgJot7DPC..jn67l/uTETMy42Z0lAI8cp/Ae1zXJrG', 'manish@gmail.com', 'b5710ff22f86349cc4fd168509ab5123', '::1', 1597223337);

-- --------------------------------------------------------

--
-- Table structure for table `admin_expense`
--

CREATE TABLE `admin_expense` (
  `id` int NOT NULL,
  `expense_name` varchar(200) NOT NULL,
  `amount` decimal(7,2) NOT NULL,
  `detail` varchar(200) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int NOT NULL,
  `ad_title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ad_html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `level_earning` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `expiry_date` date NOT NULL,
  `type` enum('html','url') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'url'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ad_user`
--

CREATE TABLE `ad_user` (
  `id` int NOT NULL,
  `ad_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `userid` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `autopool1_table`
--

CREATE TABLE `autopool1_table` (
  `id` int NOT NULL,
  `member_id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `sponsor` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `position` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `signup_package` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `epin` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `address` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `placement_leg` enum('A','B','C','D','E') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'A',
  `A` int NOT NULL DEFAULT '0',
  `B` int NOT NULL DEFAULT '0',
  `C` int NOT NULL DEFAULT '0',
  `D` int NOT NULL DEFAULT '0',
  `E` int NOT NULL DEFAULT '0',
  `total_a` int NOT NULL DEFAULT '0',
  `total_b` int NOT NULL DEFAULT '0',
  `total_c` int NOT NULL DEFAULT '0',
  `total_d` int NOT NULL DEFAULT '0',
  `total_e` int NOT NULL DEFAULT '0',
  `paid_a` int NOT NULL DEFAULT '0',
  `paid_b` int NOT NULL DEFAULT '0',
  `paid_c` int NOT NULL DEFAULT '0',
  `paid_d` int NOT NULL DEFAULT '0',
  `paid_e` int NOT NULL DEFAULT '0',
  `rank` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'Member',
  `registration_ip` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `session` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `last_login` int NOT NULL DEFAULT '0',
  `last_login_ip` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'NA',
  `topup` decimal(11,2) NOT NULL DEFAULT '0.00',
  `mypv` int NOT NULL DEFAULT '0',
  `total_a_pv` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_b_pv` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_c_pv` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_d_pv` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_e_pv` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `my_img` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT ' ',
  `status` enum('Block','Active','Suspend','') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'Active',
  `total_a_matching_incm` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_b_matching_incm` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_c_matching_incm` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_d_matching_incm` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_e_matching_incm` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `my_business` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_a_investment` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_b_investment` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `paid_a_matching_incm` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `paid_b_matching_incm` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `gift_level` int NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `autopool1_table`
--

INSERT INTO `autopool1_table` (`id`, `member_id`, `name`, `email`, `phone`, `password`, `sponsor`, `position`, `signup_package`, `epin`, `address`, `placement_leg`, `A`, `B`, `C`, `D`, `E`, `total_a`, `total_b`, `total_c`, `total_d`, `total_e`, `paid_a`, `paid_b`, `paid_c`, `paid_d`, `paid_e`, `rank`, `registration_ip`, `session`, `last_login`, `last_login_ip`, `topup`, `mypv`, `total_a_pv`, `total_b_pv`, `total_c_pv`, `total_d_pv`, `total_e_pv`, `my_img`, `status`, `total_a_matching_incm`, `total_b_matching_incm`, `total_c_matching_incm`, `total_d_matching_incm`, `total_e_matching_incm`, `my_business`, `total_a_investment`, `total_b_investment`, `paid_a_matching_incm`, `paid_b_matching_incm`, `gift_level`, `date`) VALUES
(1, 1783471, '', '', '', '', '', '0', '2', NULL, '', 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'auto1', '', '', 0, 'NA', 88.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, '2023-12-03');

-- --------------------------------------------------------

--
-- Table structure for table `autopool2_table`
--

CREATE TABLE `autopool2_table` (
  `id` int NOT NULL,
  `member_id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `sponsor` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `position` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `signup_package` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `epin` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `address` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `placement_leg` enum('A','B','C','D','E') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'A',
  `A` int NOT NULL DEFAULT '0',
  `B` int NOT NULL DEFAULT '0',
  `C` int NOT NULL DEFAULT '0',
  `D` int NOT NULL DEFAULT '0',
  `E` int NOT NULL DEFAULT '0',
  `total_a` int NOT NULL DEFAULT '0',
  `total_b` int NOT NULL DEFAULT '0',
  `total_c` int NOT NULL DEFAULT '0',
  `total_d` int NOT NULL DEFAULT '0',
  `total_e` int NOT NULL DEFAULT '0',
  `paid_a` int NOT NULL DEFAULT '0',
  `paid_b` int NOT NULL DEFAULT '0',
  `paid_c` int NOT NULL DEFAULT '0',
  `paid_d` int NOT NULL DEFAULT '0',
  `paid_e` int NOT NULL DEFAULT '0',
  `rank` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'Member',
  `registration_ip` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `session` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `last_login` int NOT NULL DEFAULT '0',
  `last_login_ip` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'NA',
  `topup` decimal(11,2) NOT NULL DEFAULT '0.00',
  `mypv` int NOT NULL DEFAULT '0',
  `total_a_pv` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_b_pv` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_c_pv` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_d_pv` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_e_pv` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `my_img` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT ' ',
  `status` enum('Block','Active','Suspend','') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'Active',
  `total_a_matching_incm` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_b_matching_incm` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_c_matching_incm` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_d_matching_incm` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_e_matching_incm` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `my_business` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_a_investment` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_b_investment` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `paid_a_matching_incm` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `paid_b_matching_incm` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `gift_level` int NOT NULL DEFAULT '0',
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `autopool3_table`
--

CREATE TABLE `autopool3_table` (
  `id` int NOT NULL,
  `member_id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `sponsor` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `position` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `signup_package` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `epin` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `address` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `placement_leg` enum('A','B','C','D','E') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'A',
  `A` int NOT NULL DEFAULT '0',
  `B` int NOT NULL DEFAULT '0',
  `C` int NOT NULL DEFAULT '0',
  `D` int NOT NULL DEFAULT '0',
  `E` int NOT NULL DEFAULT '0',
  `total_a` int NOT NULL DEFAULT '0',
  `total_b` int NOT NULL DEFAULT '0',
  `total_c` int NOT NULL DEFAULT '0',
  `total_d` int NOT NULL DEFAULT '0',
  `total_e` int NOT NULL DEFAULT '0',
  `paid_a` int NOT NULL DEFAULT '0',
  `paid_b` int NOT NULL DEFAULT '0',
  `paid_c` int NOT NULL DEFAULT '0',
  `paid_d` int NOT NULL DEFAULT '0',
  `paid_e` int NOT NULL DEFAULT '0',
  `rank` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'Member',
  `registration_ip` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `session` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `last_login` int NOT NULL DEFAULT '0',
  `last_login_ip` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'NA',
  `topup` decimal(11,2) NOT NULL DEFAULT '0.00',
  `mypv` int NOT NULL DEFAULT '0',
  `total_a_pv` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_b_pv` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_c_pv` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_d_pv` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_e_pv` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `my_img` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT ' ',
  `status` enum('Block','Active','Suspend','') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'Active',
  `total_a_matching_incm` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_b_matching_incm` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_c_matching_incm` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_d_matching_incm` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_e_matching_incm` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `my_business` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_a_investment` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_b_investment` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `paid_a_matching_incm` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `paid_b_matching_incm` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `gift_level` int NOT NULL DEFAULT '0',
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `autopool4_table`
--

CREATE TABLE `autopool4_table` (
  `id` int NOT NULL,
  `member_id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `sponsor` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `position` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `signup_package` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `epin` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `address` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `placement_leg` enum('A','B','C','D','E') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'A',
  `A` int NOT NULL DEFAULT '0',
  `B` int NOT NULL DEFAULT '0',
  `C` int NOT NULL DEFAULT '0',
  `D` int NOT NULL DEFAULT '0',
  `E` int NOT NULL DEFAULT '0',
  `total_a` int NOT NULL DEFAULT '0',
  `total_b` int NOT NULL DEFAULT '0',
  `total_c` int NOT NULL DEFAULT '0',
  `total_d` int NOT NULL DEFAULT '0',
  `total_e` int NOT NULL DEFAULT '0',
  `paid_a` int NOT NULL DEFAULT '0',
  `paid_b` int NOT NULL DEFAULT '0',
  `paid_c` int NOT NULL DEFAULT '0',
  `paid_d` int NOT NULL DEFAULT '0',
  `paid_e` int NOT NULL DEFAULT '0',
  `rank` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'Member',
  `registration_ip` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `session` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `last_login` int NOT NULL DEFAULT '0',
  `last_login_ip` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'NA',
  `topup` decimal(11,2) NOT NULL DEFAULT '0.00',
  `mypv` int NOT NULL DEFAULT '0',
  `total_a_pv` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_b_pv` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_c_pv` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_d_pv` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_e_pv` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `my_img` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT ' ',
  `status` enum('Block','Active','Suspend','') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'Active',
  `total_a_matching_incm` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_b_matching_incm` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_c_matching_incm` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_d_matching_incm` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_e_matching_incm` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `my_business` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_a_investment` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `total_b_investment` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `paid_a_matching_incm` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `paid_b_matching_incm` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `gift_level` int NOT NULL DEFAULT '0',
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `autopool_topup_record`
--

CREATE TABLE `autopool_topup_record` (
  `id` int NOT NULL,
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
(1, '1783471', 'Diect By Admin', '88', 'default', '2023-12-03');

-- --------------------------------------------------------

--
-- Table structure for table `auto_level1`
--

CREATE TABLE `auto_level1` (
  `id` int NOT NULL,
  `userid` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `level1` int NOT NULL DEFAULT '0',
  `level2` int NOT NULL DEFAULT '0',
  `level3` int NOT NULL DEFAULT '0',
  `level4` int NOT NULL DEFAULT '0',
  `level5` int NOT NULL DEFAULT '0',
  `level6` int NOT NULL DEFAULT '0',
  `level7` int NOT NULL DEFAULT '0',
  `level8` int NOT NULL DEFAULT '0',
  `level9` int NOT NULL DEFAULT '0',
  `level10` int NOT NULL DEFAULT '0',
  `level11` int NOT NULL DEFAULT '0',
  `level12` int NOT NULL DEFAULT '0',
  `level13` int NOT NULL DEFAULT '0',
  `level14` int NOT NULL DEFAULT '0',
  `level15` int NOT NULL DEFAULT '0',
  `level16` int NOT NULL DEFAULT '0',
  `level17` int NOT NULL DEFAULT '0',
  `level18` int NOT NULL DEFAULT '0',
  `level19` int NOT NULL DEFAULT '0',
  `level20` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auto_level1`
--

INSERT INTO `auto_level1` (`id`, `userid`, `level1`, `level2`, `level3`, `level4`, `level5`, `level6`, `level7`, `level8`, `level9`, `level10`, `level11`, `level12`, `level13`, `level14`, `level15`, `level16`, `level17`, `level18`, `level19`, `level20`) VALUES
(1, '1783471', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `auto_level2`
--

CREATE TABLE `auto_level2` (
  `id` int NOT NULL,
  `userid` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `level1` int NOT NULL DEFAULT '0',
  `level2` int NOT NULL DEFAULT '0',
  `level3` int NOT NULL DEFAULT '0',
  `level4` int NOT NULL DEFAULT '0',
  `level5` int NOT NULL DEFAULT '0',
  `level6` int NOT NULL DEFAULT '0',
  `level7` int NOT NULL DEFAULT '0',
  `level8` int NOT NULL DEFAULT '0',
  `level9` int NOT NULL DEFAULT '0',
  `level10` int NOT NULL DEFAULT '0',
  `level11` int NOT NULL DEFAULT '0',
  `level12` int NOT NULL DEFAULT '0',
  `level13` int NOT NULL DEFAULT '0',
  `level14` int NOT NULL DEFAULT '0',
  `level15` int NOT NULL DEFAULT '0',
  `level16` int NOT NULL DEFAULT '0',
  `level17` int NOT NULL DEFAULT '0',
  `level18` int NOT NULL DEFAULT '0',
  `level19` int NOT NULL DEFAULT '0',
  `level20` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auto_level3`
--

CREATE TABLE `auto_level3` (
  `id` int NOT NULL,
  `userid` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `level1` int NOT NULL DEFAULT '0',
  `level2` int NOT NULL DEFAULT '0',
  `level3` int NOT NULL DEFAULT '0',
  `level4` int NOT NULL DEFAULT '0',
  `level5` int NOT NULL DEFAULT '0',
  `level6` int NOT NULL DEFAULT '0',
  `level7` int NOT NULL DEFAULT '0',
  `level8` int NOT NULL DEFAULT '0',
  `level9` int NOT NULL DEFAULT '0',
  `level10` int NOT NULL DEFAULT '0',
  `level11` int NOT NULL DEFAULT '0',
  `level12` int NOT NULL DEFAULT '0',
  `level13` int NOT NULL DEFAULT '0',
  `level14` int NOT NULL DEFAULT '0',
  `level15` int NOT NULL DEFAULT '0',
  `level16` int NOT NULL DEFAULT '0',
  `level17` int NOT NULL DEFAULT '0',
  `level18` int NOT NULL DEFAULT '0',
  `level19` int NOT NULL DEFAULT '0',
  `level20` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auto_level4`
--

CREATE TABLE `auto_level4` (
  `id` int NOT NULL,
  `userid` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `level1` int NOT NULL DEFAULT '0',
  `level2` int NOT NULL DEFAULT '0',
  `level3` int NOT NULL DEFAULT '0',
  `level4` int NOT NULL DEFAULT '0',
  `level5` int NOT NULL DEFAULT '0',
  `level6` int NOT NULL DEFAULT '0',
  `level7` int NOT NULL DEFAULT '0',
  `level8` int NOT NULL DEFAULT '0',
  `level9` int NOT NULL DEFAULT '0',
  `level10` int NOT NULL DEFAULT '0',
  `level11` int NOT NULL DEFAULT '0',
  `level12` int NOT NULL DEFAULT '0',
  `level13` int NOT NULL DEFAULT '0',
  `level14` int NOT NULL DEFAULT '0',
  `level15` int NOT NULL DEFAULT '0',
  `level16` int NOT NULL DEFAULT '0',
  `level17` int NOT NULL DEFAULT '0',
  `level18` int NOT NULL DEFAULT '0',
  `level19` int NOT NULL DEFAULT '0',
  `level20` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `id` int NOT NULL,
  `coupon` varchar(20) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `coupon_cat` varchar(20) NOT NULL,
  `coupon_amt` decimal(11,2) NOT NULL DEFAULT '0.00',
  `status` enum('Used','Un-Used','Use Request') NOT NULL DEFAULT 'Un-Used'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_categories`
--

CREATE TABLE `coupon_categories` (
  `id` int NOT NULL,
  `cat_name` varchar(200) NOT NULL,
  `cat_description` varchar(1000) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` int NOT NULL,
  `sender_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `donation_amount` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `receiver_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `time` int NOT NULL,
  `trid` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tdate` date DEFAULT NULL,
  `status` enum('Sent','Accepted','Waiting') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Sent',
  `donation_pack` int NOT NULL,
  `expiry_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donation_package`
--

CREATE TABLE `donation_package` (
  `id` int NOT NULL,
  `donation_level` int NOT NULL,
  `plan_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sponsor_income` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `position_income` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `donation_amount` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0',
  `donation_qty` int NOT NULL,
  `expiry_duration` int NOT NULL DEFAULT '2' COMMENT 'in days'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `earning`
--

CREATE TABLE `earning` (
  `id` int NOT NULL,
  `userid` varchar(20) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `type` varchar(50) NOT NULL,
  `ref_id` varchar(20) NOT NULL DEFAULT 'N/A',
  `date` date NOT NULL,
  `pair_match` int NOT NULL DEFAULT '0',
  `secret` varchar(15) NOT NULL DEFAULT '0',
  `status` enum('Paid','Pending') NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `earning`
--

INSERT INTO `earning` (`id`, `userid`, `amount`, `type`, `ref_id`, `date`, `pair_match`, `secret`, `status`) VALUES
(1, '9964705', 50.00, 'Level Income', '1223075', '2023-12-03', 0, '0', 'Paid'),
(2, '6230422', 25.00, 'Level Income', '1223075', '2023-12-03', 0, '0', 'Paid'),
(3, '7598766', 50.00, 'Level Income', '1736009', '2023-12-03', 0, '0', 'Paid'),
(4, '1783471', 25.00, 'Level Income', '1736009', '2023-12-03', 0, '0', 'Paid'),
(5, '6230422', 50.00, 'Level Income', '1783471', '2023-12-03', 0, '0', 'Paid'),
(6, '1001', 25.00, 'Level Income', '1783471', '2023-12-03', 0, '0', 'Paid'),
(7, '9320002', 50.00, 'Level Income', '2063024', '2023-12-03', 0, '0', 'Paid'),
(8, '1223075', 25.00, 'Level Income', '2063024', '2023-12-03', 0, '0', 'Paid'),
(9, '1223075', 50.00, 'Level Income', '2354107', '2023-12-03', 0, '0', 'Paid'),
(10, '9964705', 25.00, 'Level Income', '2354107', '2023-12-03', 0, '0', 'Paid'),
(11, '3526091', 50.00, 'Level Income', '2366244', '2023-12-03', 0, '0', 'Pending'),
(12, '1001', 25.00, 'Level Income', '2366244', '2023-12-03', 0, '0', 'Paid'),
(13, '1783471', 50.00, 'Level Income', '2537791', '2023-12-03', 0, '0', 'Paid'),
(14, '6230422', 25.00, 'Level Income', '2537791', '2023-12-03', 0, '0', 'Paid'),
(15, '1001', 50.00, 'Level Income', '3526091', '2023-12-03', 0, '0', 'Paid'),
(16, '9320002', 50.00, 'Level Income', '4047909', '2023-12-03', 0, '0', 'Paid'),
(17, '1223075', 25.00, 'Level Income', '4047909', '2023-12-03', 0, '0', 'Paid'),
(18, '1736009', 50.00, 'Level Income', '4553299', '2023-12-03', 0, '0', 'Paid'),
(19, '7598766', 25.00, 'Level Income', '4553299', '2023-12-03', 0, '0', 'Paid'),
(20, '9827775', 50.00, 'Level Income', '5057654', '2023-12-03', 0, '0', 'Paid'),
(21, '2537791', 25.00, 'Level Income', '5057654', '2023-12-03', 0, '0', 'Paid'),
(22, '2354107', 50.00, 'Level Income', '5391041', '2023-12-03', 0, '0', 'Paid'),
(23, '1223075', 25.00, 'Level Income', '5391041', '2023-12-03', 0, '0', 'Paid'),
(24, '7840168', 50.00, 'Level Income', '5475453', '2023-12-03', 0, '0', 'Paid'),
(25, '2537791', 25.00, 'Level Income', '5475453', '2023-12-03', 0, '0', 'Paid'),
(26, '7526061', 50.00, 'Level Income', '5633750', '2023-12-03', 0, '0', 'Paid'),
(27, '7050769', 25.00, 'Level Income', '5633750', '2023-12-03', 0, '0', 'Paid'),
(28, '9982572', 50.00, 'Level Income', '5724198', '2023-12-03', 0, '0', 'Paid'),
(29, '7598766', 25.00, 'Level Income', '5724198', '2023-12-03', 0, '0', 'Paid'),
(30, '7526061', 50.00, 'Level Income', '6852917', '2023-12-03', 0, '0', 'Paid'),
(31, '7050769', 25.00, 'Level Income', '6852917', '2023-12-03', 0, '0', 'Paid'),
(32, '9964705', 50.00, 'Level Income', '7050769', '2023-12-03', 0, '0', 'Paid'),
(33, '6230422', 25.00, 'Level Income', '7050769', '2023-12-03', 0, '0', 'Paid'),
(34, '1736009', 50.00, 'Level Income', '7105992', '2023-12-03', 0, '0', 'Paid'),
(35, '7598766', 25.00, 'Level Income', '7105992', '2023-12-03', 0, '0', 'Paid'),
(36, '7050769', 50.00, 'Level Income', '7526061', '2023-12-03', 0, '0', 'Paid'),
(37, '9964705', 25.00, 'Level Income', '7526061', '2023-12-03', 0, '0', 'Paid'),
(38, '1783471', 50.00, 'Level Income', '7598766', '2023-12-03', 0, '0', 'Paid'),
(39, '6230422', 25.00, 'Level Income', '7598766', '2023-12-03', 0, '0', 'Paid'),
(40, '2354107', 50.00, 'Level Income', '7604109', '2023-12-03', 0, '0', 'Paid'),
(41, '1223075', 25.00, 'Level Income', '7604109', '2023-12-03', 0, '0', 'Paid'),
(42, '2537791', 50.00, 'Level Income', '7840168', '2023-12-03', 0, '0', 'Paid'),
(43, '1783471', 25.00, 'Level Income', '7840168', '2023-12-03', 0, '0', 'Paid'),
(44, '9827775', 50.00, 'Level Income', '7976688', '2023-12-03', 0, '0', 'Paid'),
(45, '2537791', 25.00, 'Level Income', '7976688', '2023-12-03', 0, '0', 'Paid'),
(46, '8859466', 50.00, 'Level Income', '8132633', '2023-12-03', 0, '0', 'Paid'),
(47, '7050769', 25.00, 'Level Income', '8132633', '2023-12-03', 0, '0', 'Paid'),
(48, '7050769', 50.00, 'Level Income', '8859466', '2023-12-03', 0, '0', 'Paid'),
(49, '9964705', 25.00, 'Level Income', '8859466', '2023-12-03', 0, '0', 'Paid'),
(50, '8859466', 50.00, 'Level Income', '9017942', '2023-12-03', 0, '0', 'Paid'),
(51, '7050769', 25.00, 'Level Income', '9017942', '2023-12-03', 0, '0', 'Paid'),
(52, '7840168', 50.00, 'Level Income', '9108305', '2023-12-03', 0, '0', 'Paid'),
(53, '2537791', 25.00, 'Level Income', '9108305', '2023-12-03', 0, '0', 'Paid'),
(54, '1223075', 50.00, 'Level Income', '9320002', '2023-12-03', 0, '0', 'Paid'),
(55, '9964705', 25.00, 'Level Income', '9320002', '2023-12-03', 0, '0', 'Paid'),
(56, '2537791', 50.00, 'Level Income', '9827775', '2023-12-03', 0, '0', 'Paid'),
(57, '1783471', 25.00, 'Level Income', '9827775', '2023-12-03', 0, '0', 'Paid'),
(58, '6230422', 50.00, 'Level Income', '9964705', '2023-12-03', 0, '0', 'Paid'),
(59, '1001', 25.00, 'Level Income', '9964705', '2023-12-03', 0, '0', 'Paid'),
(60, '9982572', 50.00, 'Level Income', '9964895', '2023-12-03', 0, '0', 'Paid'),
(61, '7598766', 25.00, 'Level Income', '9964895', '2023-12-03', 0, '0', 'Paid'),
(62, '7598766', 50.00, 'Level Income', '9982572', '2023-12-03', 0, '0', 'Paid'),
(63, '1783471', 25.00, 'Level Income', '9982572', '2023-12-03', 0, '0', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `epin`
--

CREATE TABLE `epin` (
  `id` int NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `epin`
--

INSERT INTO `epin` (`id`, `epin`, `amount`, `issue_to`, `generate_time`, `generated_by`, `transfer_by`, `used_by`, `transfer_time`, `used_time`, `status`, `type`) VALUES
(1, '28261380', 500.00, '6230422', '2023-11-24', 'Admin', NULL, '6230422', NULL, '2023-11-24', 'Used', 'Single Use');

-- --------------------------------------------------------

--
-- Table structure for table `epin_request`
--

CREATE TABLE `epin_request` (
  `id` int NOT NULL,
  `requested_by` int NOT NULL,
  `epin_qty` int NOT NULL,
  `total_amount` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `screenshot_document` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `epin` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `status` enum('1','2') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1' COMMENT '0 false receipt|1 epin not generated | 2 epin generated',
  `request_date` datetime NOT NULL,
  `epin_generate_date` datetime DEFAULT NULL,
  `Updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `epin_request`
--

INSERT INTO `epin_request` (`id`, `requested_by`, `epin_qty`, `total_amount`, `screenshot_document`, `epin`, `status`, `request_date`, `epin_generate_date`, `Updated_at`) VALUES
(1, 1001, 1, '500', 'uploads/payment_bill/389451328_1743963849387658_4140117490409253433_n.jpg', NULL, '1', '2023-11-23 18:20:57', NULL, '2023-11-23 12:50:57'),
(2, 6230422, 1, '500', 'uploads/payment_bill/Screenshot_2023-11-23-13-35-16-94_944a2809ea1b4cda6ef12d1db9048ed3.jpg', '28261380', '2', '2023-11-24 19:56:28', '2023-11-24 14:30:08', '2023-11-24 14:30:08');

-- --------------------------------------------------------

--
-- Table structure for table `fix_income`
--

CREATE TABLE `fix_income` (
  `id` int NOT NULL,
  `direct_income` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `level_income` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `binary_income` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flexible_income`
--

CREATE TABLE `flexible_income` (
  `id` int NOT NULL,
  `income_name` varchar(200) NOT NULL,
  `income_duration` int NOT NULL DEFAULT '0' COMMENT 'within how many days he should achieve this',
  `A` int NOT NULL DEFAULT '0',
  `B` int NOT NULL DEFAULT '0',
  `C` int NOT NULL DEFAULT '0',
  `D` int NOT NULL DEFAULT '0',
  `E` int NOT NULL DEFAULT '0',
  `amount` decimal(11,2) NOT NULL,
  `based_on` enum('Member','PV') NOT NULL DEFAULT 'Member'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `franchisee`
--

CREATE TABLE `franchisee` (
  `id` int NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `franchisee_stock`
--

CREATE TABLE `franchisee_stock` (
  `id` int NOT NULL,
  `franchisee_id` varchar(20) NOT NULL,
  `product_id` int NOT NULL,
  `available_qty` int NOT NULL DEFAULT '0',
  `sold_qty` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `franchisee_stock_sale_bill`
--

CREATE TABLE `franchisee_stock_sale_bill` (
  `id` int NOT NULL,
  `stock_data` varchar(500) NOT NULL,
  `stock_data_price` varchar(500) DEFAULT NULL,
  `fran_id` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `userid` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `gap_commission_setting`
--

CREATE TABLE `gap_commission_setting` (
  `id` int NOT NULL,
  `total_pv` int NOT NULL DEFAULT '0',
  `amount` decimal(11,2) NOT NULL,
  `income_name` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `investments`
--

CREATE TABLE `investments` (
  `id` int NOT NULL,
  `userid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pack_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `amount` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` date NOT NULL,
  `status` enum('Pending','Active','Expired') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `investment_pack`
--

CREATE TABLE `investment_pack` (
  `id` int NOT NULL,
  `pack_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `amount` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `direct_income` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `level_income` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `matching_income` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `capping` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `roi` decimal(11,2) NOT NULL,
  `roi_frequency` int NOT NULL DEFAULT '0',
  `roi_limit` int NOT NULL DEFAULT '0',
  `based` enum('Percent','Fixed') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Percent' COMMENT 'Calculation Based On'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int NOT NULL,
  `invoice_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `userid` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'N/A',
  `invoice_data` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'php array serialize, name=>amount=>tax',
  `invoice_data_tax` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `invoice_data_qty` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `company_address` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bill_to_address` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `total_amt` decimal(11,2) NOT NULL DEFAULT '0.00',
  `paid_amt` decimal(11,2) NOT NULL DEFAULT '0.00',
  `date` date NOT NULL,
  `user_type` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Other'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int NOT NULL,
  `userid` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `level1` int NOT NULL DEFAULT '0',
  `level2` int NOT NULL DEFAULT '0',
  `level3` int NOT NULL DEFAULT '0',
  `level4` int NOT NULL DEFAULT '0',
  `level5` int NOT NULL DEFAULT '0',
  `level6` int NOT NULL DEFAULT '0',
  `level7` int NOT NULL DEFAULT '0',
  `level8` int NOT NULL DEFAULT '0',
  `level9` int NOT NULL DEFAULT '0',
  `level10` int NOT NULL DEFAULT '0',
  `level11` int NOT NULL DEFAULT '0',
  `level12` int NOT NULL DEFAULT '0',
  `level13` int NOT NULL DEFAULT '0',
  `level14` int NOT NULL DEFAULT '0',
  `level15` int NOT NULL DEFAULT '0',
  `level16` int NOT NULL DEFAULT '0',
  `level17` int NOT NULL DEFAULT '0',
  `level18` int NOT NULL DEFAULT '0',
  `level19` int NOT NULL DEFAULT '0',
  `level20` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `userid`, `level1`, `level2`, `level3`, `level4`, `level5`, `level6`, `level7`, `level8`, `level9`, `level10`, `level11`, `level12`, `level13`, `level14`, `level15`, `level16`, `level17`, `level18`, `level19`, `level20`) VALUES
(1, '1001', 2, 3, 4, 8, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '6230422', 2, 4, 9, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '3526091', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, '1783471', 2, 5, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, '9964705', 2, 4, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, '2537791', 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, '2366244', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, '7598766', 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, '1223075', 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, '7050769', 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, '7840168', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, '9827775', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, '9982572', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, '1736009', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, '2354107', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, '9320002', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, '8859466', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, '7526061', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, '9108305', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, '5475453', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, '5057654', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, '7976688', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, '9964895', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, '5724198', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, '7105992', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, '4553299', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, '7604109', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28, '5391041', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, '2063024', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30, '4047909', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(31, '9017942', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, '8132633', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33, '6852917', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(34, '5633750', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `level_wise_income`
--

CREATE TABLE `level_wise_income` (
  `id` int NOT NULL,
  `income_name` varchar(200) NOT NULL,
  `income_duration` int NOT NULL DEFAULT '0' COMMENT 'within how many days he should achieve this',
  `level_no` int NOT NULL DEFAULT '1',
  `total_member` int NOT NULL DEFAULT '1',
  `amount` decimal(11,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int NOT NULL,
  `userid` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `log` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` enum('Admin','User','Franchisee','Other') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Admin',
  `ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int NOT NULL,
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
  `A` int NOT NULL DEFAULT '0',
  `B` int NOT NULL DEFAULT '0',
  `C` int NOT NULL DEFAULT '0',
  `D` int NOT NULL DEFAULT '0',
  `E` int NOT NULL DEFAULT '0',
  `total_a` int NOT NULL DEFAULT '0',
  `total_b` int NOT NULL DEFAULT '0',
  `total_c` int NOT NULL DEFAULT '0',
  `total_d` int NOT NULL DEFAULT '0',
  `total_e` int NOT NULL DEFAULT '0',
  `paid_a` int NOT NULL DEFAULT '0',
  `paid_b` int NOT NULL DEFAULT '0',
  `paid_c` int NOT NULL DEFAULT '0',
  `paid_d` int NOT NULL DEFAULT '0',
  `paid_e` int NOT NULL DEFAULT '0',
  `rank` varchar(30) NOT NULL DEFAULT 'Member',
  `registration_ip` varchar(20) NOT NULL,
  `session` char(32) NOT NULL,
  `last_login` int NOT NULL DEFAULT '0',
  `last_login_ip` varchar(20) NOT NULL DEFAULT 'NA',
  `topup` decimal(11,2) NOT NULL DEFAULT '0.00',
  `mypv` int NOT NULL DEFAULT '0',
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
  `secret` int NOT NULL,
  `gift_level` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `name`, `email`, `phone`, `username`, `password`, `show_password`, `sponsor`, `position`, `signup_package`, `epin`, `address`, `join_time`, `placement_leg`, `A`, `B`, `C`, `D`, `E`, `total_a`, `total_b`, `total_c`, `total_d`, `total_e`, `paid_a`, `paid_b`, `paid_c`, `paid_d`, `paid_e`, `rank`, `registration_ip`, `session`, `last_login`, `last_login_ip`, `topup`, `mypv`, `total_a_pv`, `total_b_pv`, `total_c_pv`, `total_d_pv`, `total_e_pv`, `my_img`, `status`, `total_a_matching_incm`, `total_b_matching_incm`, `total_c_matching_incm`, `total_d_matching_incm`, `total_e_matching_incm`, `my_business`, `total_a_investment`, `total_b_investment`, `paid_a_matching_incm`, `paid_b_matching_incm`, `secret`, `gift_level`) VALUES
(1001, 'Master User', 'abmlifeforever@gmail.com', '6201348383', '1001', '$2y$10$TPreRxDqL95EJ8c1iCH2fur8oxUqYJ5fSy3MbTb/VlwCobvgP8Sy2', '', '', '', '1', NULL, 'Patna', '2023-11-01', 'A', 6230422, 3526091, 0, 0, 0, 17, 16, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '', 'cfd492ede525e2e2558f86f44cbbd5de', 1701864864, '103.104.183.2', 500.00, 0, '', '0', '', '', '', '', 'Active', '0', '0', '', '', '', '0', '', '0', '0', '0', 1, 1),
(1223075, 'Deepak Kumar', '', '9955204600', '1701358341', '$2y$10$d/isjWkHFJ.DPT3uIkzvmO2DzbCp4IO6SbmIqbwwzzXcspgtgc39q', '123456789@', '9964705', '9964705', '1', NULL, 'Begusarai<br/>', '2023-11-30', 'A', 2354107, 9320002, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '182.68.218.234', '0329bf84385dcb816b7cf0aa01f43067', 1701577870, '122.172.160.138', 500.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2175, 0),
(1736009, 'Sachin Kumar', '', '9955204600', '1701358819', '$2y$10$oAshhEassxzYWUIgjQOx/.4/ilvHNAVBlNKIlKbkNwddGGeAx1Sma', '123456789@', '7598766', '7598766', '1', NULL, 'Begusarai<br/>', '2023-11-30', 'B', 7105992, 4553299, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '182.68.218.234', '6ec3737e1f1cb9ce4f319b437196fac7', 1701577879, '122.172.160.138', 500.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2180, 0),
(1783471, 'Rekha devi', '', '9955204600', '1700975350', '$2y$10$8TQcy7iG2MuttNoB/4Cs.eje.J1055TYD8iuKkHFhfk1qTEe.2l76', '123456789@', '6230422', '6230422', '2', NULL, 'Chawki<br/>Begusarai ', '2023-11-26', 'A', 2537791, 7598766, 0, 0, 0, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'auto1', '157.35.64.83', 'd7836455a2c2480189d6dc39662306cf', 1701865215, '103.104.183.2', 88.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2170, 0),
(2063024, 'Boby kumari', '', '9955204600', '1701359926', '$2y$10$iCziA.tXvBktMsT/R4YeOOMHuxyvh36lMnlhmLI.cucqW0izhtCFy', '123456789@', '9320002', '9320002', '1', NULL, 'Begusarai<br/>', '2023-11-30', 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '182.68.218.234', '', 0, 'NA', 500.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2195, 0),
(2354107, 'Samridhi Kumari', '', '9955204600', '1701358909', '$2y$10$3Enl1jWMndb6Vb7i5euw5.Ii3ZVw5Q0JXtaqIL6yBZIsXKUwGuKfa', '123456789@', '1223075', '1223075', '1', NULL, 'Begusarai<br/>Begusarai ', '2023-11-30', 'A', 7604109, 5391041, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '182.68.218.234', '', 0, 'NA', 500.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2181, 0),
(2366244, 'Rubi kumari', '', '9955204600', '1700975616', '$2y$10$mXq4Q3jwWIxEbJVYJv167uA3EcIRZn9q0Ou6C1zdnpqtzqGnAuM8.', '123456789@', '6230422', '3526091', '1', NULL, 'Begusarai<br/>', '2023-11-26', 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '157.35.68.131', '', 0, 'NA', 500.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2173, 0),
(2537791, 'Baby Kumari', '', '9955204600', '1700975537', '$2y$10$IAPgDAo70lQ/RpZzib9lie5hQlx/0ge1orbDl9tPQKbX9o7vF0AdK', '123456789@', '6230422', '1783471', '1', NULL, 'Begusarai<br/>', '2023-11-26', 'A', 7840168, 9827775, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '157.35.69.19', '', 0, 'NA', 500.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2172, 0),
(3526091, 'Priyanshu Dixit', '', '7004259812', '1700837392', '$2y$10$dvdIbCs7VciAywE1CkNXBuwTsJRUsXPFaqIG93deUOg1o6Gn434DS', '12345678P', '1001', '1001', '1', NULL, 'Samastipur<br/>Kashiur', '2023-11-24', 'A', 2366244, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '157.35.27.124', '7c0d75f47e387164f62c97380837ffe6', 1700889101, '182.68.218.234', 500.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2169, 0),
(4047909, 'Manju kumari', '', '9955204600', '1701359967', '$2y$10$Wkmhf.1g.GL7seiWvaKAiu.gqXkywl.sq9fX4vgpxLLpdBuJ/YhOu', '123456789@', '9320002', '9320002', '1', NULL, 'Begusarai<br/>', '2023-11-30', 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '182.68.218.234', '', 0, 'NA', 500.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2196, 0),
(4553299, 'Sangita Kumari', '', '9709485912', '1701359711', '$2y$10$uqFWzcVQU8ANLhSwG/P7NexlxyoGnBKEwE5v44kkwiJNhkaqUNf1y', '123456789@', '1736009', '1736009', '1', NULL, 'Samastipur<br/>', '2023-11-30', 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '182.68.218.234', '', 0, 'NA', 500.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2192, 0),
(5057654, 'Shubham Kumar', '', '9955204600', '1701359409', '$2y$10$3gTtniG8klnoj3y2f83rDutrbHsGNedMh3KcG3j/v02/GMFbNiZCy', '123456789@', '9827775', '9827775', '1', NULL, 'Begusarai<br/>', '2023-11-30', 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '182.68.218.234', '50e61580bd07d0f3a57e63bf283cdd24', 1701681935, '122.172.160.138', 500.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2187, 0),
(5391041, 'Suraj Kumar', '', '9955204600', '1701359844', '$2y$10$75iAj7dolaOV5ugbfuss8OFjClFmpVbxcqEukLoxFCyYxRwQnLyIK', '123456789@', '2354107', '2354107', '1', NULL, 'Rosera<br/>', '2023-11-30', 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '182.68.218.234', '', 0, 'NA', 500.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2194, 0),
(5475453, 'Aditya kumar', '', '9955204600', '1701359339', '$2y$10$yjXRZclqZsw/wMflAUB1buqfoHV7qJGCNATZ6pOiHJNmST2xEPFtG', '123456789@', '7840168', '7840168', '1', NULL, 'Begusarai<br/>', '2023-11-30', 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '182.68.218.234', '', 0, 'NA', 500.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2186, 0),
(5633750, 'AA', '', '9955204600', '1701360198', '$2y$10$BDygvdk5UXvhrYkP6jnuCOK0ISNxDPdq5AmkOXdqUU.4LIt5MmyMe', '123456789@', '7526061', '7526061', '1', NULL, 'Samastipur<br/>', '2023-11-30', 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '182.68.218.234', '', 0, 'NA', 500.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2200, 0),
(5724198, 'Binod das', '', '9955204600', '1701359579', '$2y$10$9Lq9P4NTJSjEwlCnWs2KC.xMHS9w2I2Zi3AdU/8/npBYr2nmxbeQC', '123456789@', '9982572', '9982572', '1', NULL, 'Begusarai<br/>', '2023-11-30', 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '182.68.218.234', '', 0, 'NA', 500.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2190, 0),
(6230422, 'Prince Raj', 'raazprince00@gmail.com', '7004259812', '1700835772', '$2y$10$nf0TKMKjZeZ.TRzSWQO/5OJnkNiOkU9UfsyhP4bYihfk8XgywZnEu', '12345678P', '1001', '1001', '1', NULL, 'Samastipur<br/>Kashiur', '2023-11-24', 'A', 1783471, 9964705, 0, 0, 0, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '157.35.27.124', 'bca3adfe02b7ba36ea1b484dfc7f27be', 1701864898, '103.104.183.2', 500.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2168, 0),
(6852917, 'A', '', '9955204600', '1701360161', '$2y$10$ntsHhnstDOHHIje.nt7ZUO0bBTH2V6M.KVd9uLLA89vpDbB/l99/6', '123456789@', '7526061', '7526061', '1', NULL, 'Samastipur<br/>', '2023-11-30', 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '182.68.218.234', '', 0, 'NA', 500.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2199, 0),
(7050769, 'Dhiraj Kumar', '', '9955204600', '1701358391', '$2y$10$eeL3379Sy4wCzwmn7KwoM.y0xd7yNu7HQd.q2NSX9gO61r3q/16rK', '123456789@', '9964705', '9964705', '1', NULL, 'Begusarai<br/>', '2023-11-30', 'B', 8859466, 7526061, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '182.68.218.234', '', 0, 'NA', 500.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2176, 0),
(7105992, 'Santosh Kumar', '', '9955204600', '1701359655', '$2y$10$Pf8kVYYxKxPwmDz1GNrNSupMfUZ5Lg4VU2FV2vEU0dhdmzfl5k5.m', '123456789@', '1736009', '1736009', '1', NULL, 'Begusarai<br/>', '2023-11-30', 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '182.68.218.234', '377c02bfc91b3d33a5c0add3c2c9d15d', 1701579270, '122.172.160.138', 500.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2191, 0),
(7526061, 'Rina Kumari', '', '9955204600', '1701359156', '$2y$10$.JwDazdPwJ8Hv7aOlgofu.ec899pyaKwQ5GX8AF5HaR0bSPVS7AXS', '123456789@', '7050769', '7050769', '1', NULL, 'Begusarai<br/>', '2023-11-30', 'B', 6852917, 5633750, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '182.68.218.234', 'a917ce3707c884c55fbd16d95f3b73bd', 1701672094, '103.104.183.2', 500.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2184, 0),
(7598766, 'Sanjeev Kumar', '', '9955204600', '1701358236', '$2y$10$saIEhXaeLghxy6mwL7DgwuAdi9ZOJ9GMQ94YHlAZNBCH9N56Uiahm', '123456789@', '1783471', '1783471', '1', NULL, 'Begusarai<br/>', '2023-11-30', 'B', 9982572, 1736009, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '182.68.218.234', 'cb2002f80d23a77c004033659ec0493c', 1701579322, '122.172.160.138', 500.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2174, 0),
(7604109, 'Sachin saurav', '', '9955204600', '1701359795', '$2y$10$a4gw1owDEWSLuf8fEoByZukGrBBmNdObCDRGnGRLJ/5zbtYeK3Awe', '123456789@', '2354107', '2354107', '1', NULL, 'Rosera<br/>', '2023-11-30', 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '182.68.218.234', '', 0, 'NA', 500.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2193, 0),
(7840168, 'Chandani Kumari', '', '9955204699', '1701358636', '$2y$10$K86.sy/t7vC7LPhcgg0LpOK8Yf0L8ewtyPtbb3pvdIO/M/Gp04v0K', '123456789@', '2537791', '2537791', '1', NULL, 'Begusarai<br/>', '2023-11-30', 'A', 9108305, 5475453, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '182.68.218.234', '', 0, 'NA', 500.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2177, 0),
(7976688, 'Murari kumar', '', '9955204600', '1701359457', '$2y$10$ay6zNtGhcKh8G3Pr1RqjhuKtbB7PCbaEU.lxd6RZ3JzNSlZVwn0N6', '123456789@', '9827775', '9827775', '1', NULL, 'Begusarai<br/>', '2023-11-30', 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '182.68.218.234', '', 0, 'NA', 500.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2188, 0),
(8132633, 'Durgesh Kumar', '', '9966204600', '1701360096', '$2y$10$M77uhnPpPTTx8D.z/odpRO43OreEavYGKvU/VYxgHZZSEMtwsauku', '123456789@', '8859466', '8859466', '1', NULL, 'Samastipur<br/>', '2023-11-30', 'B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '182.68.218.234', '', 0, 'NA', 500.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2198, 0),
(8859466, 'Sabitri Kumari', '', '9955204600', '1701359102', '$2y$10$B4srORcSO4EH9XERpvObDu4enezGBjLLUIor2WJIStmmYOxAMHgmW', '123456789@', '7050769', '7050769', '1', NULL, 'Begusarai<br/>', '2023-11-30', 'A', 9017942, 8132633, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '182.68.218.234', 'bffc6d20ac0b69919b9fe857aefeabbe', 1701579328, '122.172.160.138', 500.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2183, 0),
(9017942, 'Nunu Das', '', '9955204600', '1701360038', '$2y$10$.Lzl6Y6lTnktT2AVeR4FcuRQQvYP9vVqG.C1ZIDAeoQnsY3duSL7i', '123456789@', '8859466', '8859466', '1', NULL, 'Rosera<br/>', '2023-11-30', 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '182.68.218.234', '', 0, 'NA', 500.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2197, 0),
(9108305, 'Anju Kumari', '', '9955204600', '1701359285', '$2y$10$PNQHy9/elB88Ta.w6mAwcecOOVMpIpX7V63kDFGTY6fQajoI4KPym', '123456789@', '7840168', '7840168', '1', NULL, 'Begusarai<br/>', '2023-11-30', 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '182.68.218.234', '', 0, 'NA', 500.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2185, 0),
(9320002, 'Savita Kumari', '', '9955204600', '1701358980', '$2y$10$adtOmFkjq/kHTY8ApCe8J.gni8wh74yIFoxVNczCWfQwNg/gDSRE2', '123456789@', '1223075', '1223075', '1', NULL, 'Begusarai<br/>', '2023-11-30', 'B', 2063024, 4047909, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '182.68.218.234', '', 0, 'NA', 500.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2182, 0),
(9827775, 'Saurabh Kumar', '', '9955204600', '1701358687', '$2y$10$N32F8nNKclfyDxjgG9auZeYnOb9DerV/eYY21VZiXwAhLuO3c3V1K', '123456789@', '2537791', '2537791', '1', NULL, 'Begusarai<br/>', '2023-11-30', 'B', 5057654, 7976688, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '182.68.218.234', '', 0, 'NA', 500.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2178, 0),
(9964705, 'Saroj Kumar', '', '9955204600', '1700975407', '$2y$10$koX8oDhVSfjEMhVDf/QMvOtnPFLFgLM/af36NXm5jLhtoHfATP9QG', '123456789@', '6230422', '6230422', '1', NULL, 'Begusarai<br/>', '2023-11-26', 'B', 1223075, 7050769, 0, 0, 0, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '157.35.70.76', 'f1a02f54048ce6019ba1dd9cd7a5a48f', 1701682690, '122.172.160.138', 500.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2171, 0),
(9964895, 'Mithilesh Kumar', '', '9955204600', '1701359536', '$2y$10$muqmhtrzyg2O/WwENy29AO4evure/rZeR2M629khjbf7jpX5GrDyK', '123456789@', '9982572', '9982572', '1', NULL, 'Begusarai<br/>', '2023-11-30', 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '182.68.218.234', '', 0, 'NA', 500.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2189, 0),
(9982572, 'Suman Kumar', '', '9955204600', '1701358771', '$2y$10$ByGWrBjT.CrM8SW0wdnf0eQzN9SdyedcD3sNKNv60HCaF1EzD6qmi', '12e456789@', '7598766', '7598766', '1', NULL, 'Begusarai<br/>', '2023-11-30', 'A', 9964895, 5724198, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '182.68.218.234', '', 0, 'NA', 500.00, 0, '0', '0', '0', '0', '0', '', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 2179, 0);

-- --------------------------------------------------------

--
-- Table structure for table `member_profile`
--

CREATE TABLE `member_profile` (
  `id` int NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `member_profile`
--

INSERT INTO `member_profile` (`id`, `userid`, `tax_no`, `aadhar_no`, `bank_ac_no`, `bank_name`, `bank_ifsc`, `bank_branch`, `btc_address`, `tcc_address`, `nominee_name`, `nominee_add`, `nominee_relation`, `date_of_birth`, `gstin`, `id_proof`, `add_proof`) VALUES
(1, '1001', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(2, '6230422', 'N/A', 'NA', '1234567890', 'SBI ', 'Abcd', 'Samastipur ', '', '', 'NA', 'NA', '', '2023-11-10', 'NA', '3c53f305eb96b058d8620fe204ca7884.jpg', 'a2db75c78d40635592a6f8b93ed24ed0.jpeg'),
(3, '3526091', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(4, '1783471', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(5, '9964705', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(6, '2537791', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(7, '2366244', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(8, '7598766', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(9, '1223075', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(10, '7050769', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(11, '7840168', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(12, '9827775', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(13, '9982572', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(14, '1736009', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(15, '2354107', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(16, '9320002', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(17, '8859466', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(18, '7526061', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(19, '9108305', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(20, '5475453', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(21, '5057654', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(22, '7976688', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(23, '9964895', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(24, '5724198', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(25, '7105992', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(26, '4553299', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(27, '7604109', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(28, '5391041', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(29, '2063024', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(30, '4047909', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(31, '9017942', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(32, '8132633', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(33, '6852917', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(34, '5633750', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `description` text NOT NULL,
  `status` int NOT NULL,
  `update_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `id` int NOT NULL,
  `userid` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `balance` decimal(11,2) NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `other_wallet`
--

INSERT INTO `other_wallet` (`id`, `userid`, `balance`, `type`) VALUES
(1, '6230422', 0.00, 'Default'),
(2, '3526091', 0.00, 'Default'),
(3, '1783471', 0.00, 'Default'),
(4, '9964705', 0.00, 'Default'),
(5, '2537791', 0.00, 'Default'),
(6, '2366244', 0.00, 'Default'),
(7, '7598766', 0.00, 'Default'),
(8, '1223075', 0.00, 'Default'),
(9, '7050769', 0.00, 'Default'),
(10, '7840168', 0.00, 'Default'),
(11, '9827775', 0.00, 'Default'),
(12, '9982572', 0.00, 'Default'),
(13, '1736009', 0.00, 'Default'),
(14, '2354107', 0.00, 'Default'),
(15, '9320002', 0.00, 'Default'),
(16, '8859466', 0.00, 'Default'),
(17, '7526061', 0.00, 'Default'),
(18, '9108305', 0.00, 'Default'),
(19, '5475453', 0.00, 'Default'),
(20, '5057654', 0.00, 'Default'),
(21, '7976688', 0.00, 'Default'),
(22, '9964895', 0.00, 'Default'),
(23, '5724198', 0.00, 'Default'),
(24, '7105992', 0.00, 'Default'),
(25, '4553299', 0.00, 'Default'),
(26, '7604109', 0.00, 'Default'),
(27, '5391041', 0.00, 'Default'),
(28, '2063024', 0.00, 'Default'),
(29, '4047909', 0.00, 'Default'),
(30, '9017942', 0.00, 'Default'),
(31, '8132633', 0.00, 'Default'),
(32, '6852917', 0.00, 'Default'),
(33, '5633750', 0.00, 'Default');

-- --------------------------------------------------------

--
-- Table structure for table `pending_wallet`
--

CREATE TABLE `pending_wallet` (
  `id` int NOT NULL,
  `userid` varchar(100) NOT NULL,
  `balance` varchar(20) NOT NULL,
  `status` enum('Paid','Pending') NOT NULL DEFAULT 'Pending',
  `txn_id` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `prod_name` varchar(200) NOT NULL,
  `category` varchar(20) NOT NULL,
  `prod_price` varchar(15) NOT NULL,
  `dealer_price` decimal(11,2) NOT NULL,
  `prod_desc` text NOT NULL,
  `pv` varchar(20) NOT NULL DEFAULT '0',
  `qty` int NOT NULL DEFAULT '-1',
  `gst` decimal(11,2) NOT NULL,
  `image` varchar(200) NOT NULL,
  `show_on_regform` enum('Yes','No') NOT NULL DEFAULT 'No',
  `direct_income` decimal(11,2) DEFAULT '0.00',
  `level_income` varchar(200) DEFAULT NULL,
  `matching_income` decimal(11,2) DEFAULT '0.00',
  `capping` decimal(11,2) DEFAULT '0.00',
  `roi` decimal(11,2) DEFAULT '0.00',
  `roi_frequency` int DEFAULT NULL,
  `roi_limit` int DEFAULT NULL,
  `sold_qty` int NOT NULL DEFAULT '0',
  `status` enum('Selling','Not-Selling') NOT NULL DEFAULT 'Selling'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `prod_name`, `category`, `prod_price`, `dealer_price`, `prod_desc`, `pv`, `qty`, `gst`, `image`, `show_on_regform`, `direct_income`, `level_income`, `matching_income`, `capping`, `roi`, `roi_frequency`, `roi_limit`, `sold_qty`, `status`) VALUES
(1, 'Package 1', '1', '500', 0.00, '', '', -1, 0.00, 'default.jpg', 'Yes', NULL, '50,25', NULL, 20000.00, 0.00, 0, 0, 0, 'Selling'),
(4, 'autopool3', '1', '4075', 0.00, '', '', -1, 0.00, 'default.jpg', 'Yes', NULL, '500,1000,2775', NULL, NULL, 0.00, 0, 0, 0, 'Selling'),
(3, 'autopool2', '1', '609', 0.00, '', '', -1, 0.00, 'default.jpg', 'Yes', NULL, '100,150,359', NULL, NULL, 0.00, 0, 0, 0, 'Selling'),
(2, 'autopool1', '1', '88', 0.00, '', '', -1, 0.00, 'default.jpg', 'Yes', NULL, '7,11,70', NULL, NULL, 0.00, 0, 0, 0, 'Selling'),
(5, 'autopool4', '1', '32020', 0.00, '', '', -1, 0.00, 'default.jpg', 'Yes', NULL, '1020,3000,28000', NULL, NULL, 0.00, 0, 0, 0, 'Selling');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int NOT NULL,
  `cat_name` varchar(200) NOT NULL,
  `parent_cat` varchar(20) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

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
  `id` int NOT NULL,
  `product_id` varchar(10) NOT NULL,
  `userid` varchar(10) NOT NULL COMMENT 'who purchased the product',
  `status` enum('Completed','Processing') NOT NULL DEFAULT 'Processing',
  `franchisee_id` varchar(15) NOT NULL DEFAULT 'Admin',
  `cost` decimal(11,2) NOT NULL,
  `date` date NOT NULL,
  `deliver_date` date DEFAULT NULL,
  `tid` varchar(250) NOT NULL DEFAULT 'N/A',
  `qty` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int NOT NULL,
  `bill_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `purchased_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bill_copy` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` date NOT NULL,
  `supplier` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bill_amt` decimal(11,2) NOT NULL,
  `paid_amt` decimal(11,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rank_system`
--

CREATE TABLE `rank_system` (
  `id` int NOT NULL,
  `rank_name` varchar(200) NOT NULL,
  `rank_duration` int NOT NULL DEFAULT '0' COMMENT 'within how many days he should achieve this',
  `A` int NOT NULL DEFAULT '0',
  `B` int NOT NULL DEFAULT '0',
  `C` int NOT NULL DEFAULT '0',
  `D` int NOT NULL DEFAULT '0',
  `E` int NOT NULL DEFAULT '0',
  `based_on` enum('Member','PV') NOT NULL DEFAULT 'Member'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

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
  `id` int NOT NULL,
  `userid` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `service_type` enum('Mobile','DTH','Data Card','Utility Bill') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Mobile',
  `recharge_no` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `time` int NOT NULL,
  `status` enum('Pending','Completed') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Pending',
  `area` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `operator` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trnid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

CREATE TABLE `rewards` (
  `id` int NOT NULL,
  `reward_id` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `userid` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` date NOT NULL,
  `status` enum('Delivered','Pending') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Pending',
  `paid_date` date NOT NULL,
  `tid` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reward_setting`
--

CREATE TABLE `reward_setting` (
  `id` int NOT NULL,
  `reward_name` varchar(200) NOT NULL,
  `reward_duration` int NOT NULL DEFAULT '0' COMMENT 'within how many days he should achieve this',
  `achievers` int NOT NULL DEFAULT '0',
  `A` int NOT NULL DEFAULT '0',
  `B` int NOT NULL DEFAULT '0',
  `C` int NOT NULL DEFAULT '0',
  `D` int NOT NULL DEFAULT '0',
  `E` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

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
  `id` int NOT NULL,
  `staff_id` varchar(20) NOT NULL,
  `salary` decimal(11,2) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL,
  `paydate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `id` int NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `staff_designation`
--

CREATE TABLE `staff_designation` (
  `id` int NOT NULL,
  `des_title` varchar(200) NOT NULL,
  `des_permission` varchar(1000) NOT NULL,
  `payscale` decimal(11,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `survey`
--

CREATE TABLE `survey` (
  `id` int NOT NULL,
  `survey_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `question_answers` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `level_earning` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `expiry_date` date NOT NULL,
  `type` enum('Hosted Survey','Third Party') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_user`
--

CREATE TABLE `survey_user` (
  `id` int NOT NULL,
  `survey_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `userid` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `date` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_report`
--

CREATE TABLE `tax_report` (
  `id` int NOT NULL,
  `userid` varchar(10) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `payout_id` varchar(10) NOT NULL,
  `tax_amount` decimal(11,2) NOT NULL,
  `tax_percnt` varchar(10) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int NOT NULL,
  `ticket_title` varchar(300) NOT NULL,
  `ticket_detail` text NOT NULL,
  `userid` varchar(20) NOT NULL,
  `status` enum('Open','Waiting User Reply','Closed','Customer Reply') NOT NULL DEFAULT 'Open',
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `ticket_title`, `ticket_detail`, `userid`, `status`, `date`) VALUES
(1, 'hello this is abm life', '<p>plz support</p>', '6230422', 'Closed', '2023-12-01');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_reply`
--

CREATE TABLE `ticket_reply` (
  `id` int NOT NULL,
  `ticket_id` int NOT NULL,
  `msg_from` varchar(20) NOT NULL DEFAULT 'Admin',
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `ticket_reply`
--

INSERT INTO `ticket_reply` (`id`, `ticket_id`, `msg_from`, `msg`) VALUES
(1, 1, '6230422', '<p>fdfgdfgdfgdf</p>'),
(2, 1, '6230422', '<p>dfgdfgdfgd</p>');

-- --------------------------------------------------------

--
-- Table structure for table `topup_record`
--

CREATE TABLE `topup_record` (
  `id` int NOT NULL,
  `user_id` varchar(22) NOT NULL,
  `epin` varchar(100) NOT NULL,
  `topup_amount` varchar(50) NOT NULL,
  `topup_by` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topup_record`
--

INSERT INTO `topup_record` (`id`, `user_id`, `epin`, `topup_amount`, `topup_by`, `date`) VALUES
(1, '6230422', '28261380', '500.00', '6230422', '2023-11-24'),
(2, '1223075', 'Diect By Admin', '500', 'Admin', '2023-12-03'),
(3, '1736009', 'Diect By Admin', '500', 'Admin', '2023-12-03'),
(4, '1001', 'Diect By Admin', '500', 'Admin', '2023-12-03'),
(5, '1783471', 'Diect By Admin', '500', 'Admin', '2023-12-03'),
(6, '2063024', 'Diect By Admin', '500', 'Admin', '2023-12-03'),
(7, '2354107', 'Diect By Admin', '500', 'Admin', '2023-12-03'),
(8, '2366244', 'Diect By Admin', '500', 'Admin', '2023-12-03'),
(9, '2537791', 'Diect By Admin', '500', 'Admin', '2023-12-03'),
(10, '3526091', 'Diect By Admin', '500', 'Admin', '2023-12-03'),
(11, '4047909', 'Diect By Admin', '500', 'Admin', '2023-12-03'),
(12, '4553299', 'Diect By Admin', '500', 'Admin', '2023-12-03'),
(13, '5057654', 'Diect By Admin', '500', 'Admin', '2023-12-03'),
(14, '5391041', 'Diect By Admin', '500', 'Admin', '2023-12-03'),
(15, '5475453', 'Diect By Admin', '500', 'Admin', '2023-12-03'),
(16, '5633750', 'Diect By Admin', '500', 'Admin', '2023-12-03'),
(17, '5724198', 'Diect By Admin', '500', 'Admin', '2023-12-03'),
(18, '6852917', 'Diect By Admin', '500', 'Admin', '2023-12-03'),
(19, '7050769', 'Diect By Admin', '500', 'Admin', '2023-12-03'),
(20, '7105992', 'Diect By Admin', '500', 'Admin', '2023-12-03'),
(21, '7526061', 'Diect By Admin', '500', 'Admin', '2023-12-03'),
(22, '7598766', 'Diect By Admin', '500', 'Admin', '2023-12-03'),
(23, '7604109', 'Diect By Admin', '500', 'Admin', '2023-12-03'),
(24, '7840168', 'Diect By Admin', '500', 'Admin', '2023-12-03'),
(25, '7976688', 'Diect By Admin', '500', 'Admin', '2023-12-03'),
(26, '8132633', 'Diect By Admin', '500', 'Admin', '2023-12-03'),
(27, '8859466', 'Diect By Admin', '500', 'Admin', '2023-12-03'),
(28, '9017942', 'Diect By Admin', '500', 'Admin', '2023-12-03'),
(29, '9108305', 'Diect By Admin', '500', 'Admin', '2023-12-03'),
(30, '9320002', 'Diect By Admin', '500', 'Admin', '2023-12-03'),
(31, '9827775', 'Diect By Admin', '500', 'Admin', '2023-12-03'),
(32, '9964705', 'Diect By Admin', '500', 'Admin', '2023-12-03'),
(33, '9964895', 'Diect By Admin', '500', 'Admin', '2023-12-03'),
(34, '9982572', 'Diect By Admin', '500', 'Admin', '2023-12-03');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int NOT NULL,
  `userid` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `amount` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `capping_amt` decimal(11,2) NOT NULL,
  `gateway` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `time` int NOT NULL,
  `transaction_id` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'NA',
  `status` enum('Completed','Processing','Failed') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Completed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_balance_records`
--

CREATE TABLE `transfer_balance_records` (
  `id` int NOT NULL,
  `transfer_from` varchar(10) NOT NULL,
  `transfer_to` varchar(10) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` int NOT NULL,
  `userid` varchar(20) NOT NULL,
  `balance` varchar(15) NOT NULL DEFAULT '0',
  `without_tax_bal` varchar(15) NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT 'Default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `userid`, `balance`, `without_tax_bal`, `type`) VALUES
(1, '1001', '100', '125', 'Default'),
(2, '6230422', '160', '200', 'Default'),
(3, '3526091', '0', '0', 'Default'),
(4, '1783471', '160', '200', 'Default'),
(5, '9964705', '160', '200', 'Default'),
(6, '2537791', '160', '200', 'Default'),
(7, '2366244', '0', '0', 'Default'),
(8, '7598766', '160', '200', 'Default'),
(9, '1223075', '160', '200', 'Default'),
(10, '7050769', '160', '200', 'Default'),
(11, '7840168', '80', '100', 'Default'),
(12, '9827775', '80', '100', 'Default'),
(13, '9982572', '80', '100', 'Default'),
(14, '1736009', '80', '100', 'Default'),
(15, '2354107', '80', '100', 'Default'),
(16, '9320002', '80', '100', 'Default'),
(17, '8859466', '80', '100', 'Default'),
(18, '7526061', '80', '100', 'Default'),
(19, '9108305', '0', '0', 'Default'),
(20, '5475453', '0', '0', 'Default'),
(21, '5057654', '0', '0', 'Default'),
(22, '7976688', '0', '0', 'Default'),
(23, '9964895', '0', '0', 'Default'),
(24, '5724198', '0', '0', 'Default'),
(25, '7105992', '0', '0', 'Default'),
(26, '4553299', '0', '0', 'Default'),
(27, '7604109', '0', '0', 'Default'),
(28, '5391041', '0', '0', 'Default'),
(29, '2063024', '0', '0', 'Default'),
(30, '4047909', '0', '0', 'Default'),
(31, '9017942', '0', '0', 'Default'),
(32, '8132633', '0', '0', 'Default'),
(33, '6852917', '0', '0', 'Default'),
(34, '5633750', '0', '0', 'Default');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_request`
--

CREATE TABLE `withdraw_request` (
  `id` int NOT NULL,
  `userid` varchar(20) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `without_tax_amt` decimal(11,2) NOT NULL,
  `tax` decimal(11,2) NOT NULL DEFAULT '0.00',
  `date` date NOT NULL,
  `status` enum('Paid','Un-Paid','Hold') NOT NULL DEFAULT 'Un-Paid',
  `paid_date` date DEFAULT NULL,
  `tid` varchar(200) DEFAULT NULL COMMENT 'Transaction ID or detail'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_expense`
--
ALTER TABLE `admin_expense`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ad_user`
--
ALTER TABLE `ad_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `autopool1_table`
--
ALTER TABLE `autopool1_table`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `autopool2_table`
--
ALTER TABLE `autopool2_table`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `autopool3_table`
--
ALTER TABLE `autopool3_table`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `autopool4_table`
--
ALTER TABLE `autopool4_table`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `autopool_topup_record`
--
ALTER TABLE `autopool_topup_record`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auto_level1`
--
ALTER TABLE `auto_level1`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auto_level2`
--
ALTER TABLE `auto_level2`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auto_level3`
--
ALTER TABLE `auto_level3`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auto_level4`
--
ALTER TABLE `auto_level4`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_categories`
--
ALTER TABLE `coupon_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donation_package`
--
ALTER TABLE `donation_package`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `earning`
--
ALTER TABLE `earning`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `epin`
--
ALTER TABLE `epin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `epin_request`
--
ALTER TABLE `epin_request`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fix_income`
--
ALTER TABLE `fix_income`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flexible_income`
--
ALTER TABLE `flexible_income`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `franchisee`
--
ALTER TABLE `franchisee`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `franchisee_stock`
--
ALTER TABLE `franchisee_stock`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `franchisee_stock_sale_bill`
--
ALTER TABLE `franchisee_stock_sale_bill`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gap_commission_setting`
--
ALTER TABLE `gap_commission_setting`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `investments`
--
ALTER TABLE `investments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `investment_pack`
--
ALTER TABLE `investment_pack`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `level_wise_income`
--
ALTER TABLE `level_wise_income`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `secret` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2201;

--
-- AUTO_INCREMENT for table `member_profile`
--
ALTER TABLE `member_profile`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `other_wallet`
--
ALTER TABLE `other_wallet`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `pending_wallet`
--
ALTER TABLE `pending_wallet`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_sale`
--
ALTER TABLE `product_sale`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rank_system`
--
ALTER TABLE `rank_system`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `recharge_entry`
--
ALTER TABLE `recharge_entry`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rewards`
--
ALTER TABLE `rewards`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reward_setting`
--
ALTER TABLE `reward_setting`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_designation`
--
ALTER TABLE `staff_designation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `survey`
--
ALTER TABLE `survey`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `survey_user`
--
ALTER TABLE `survey_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_report`
--
ALTER TABLE `tax_report`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ticket_reply`
--
ALTER TABLE `ticket_reply`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `topup_record`
--
ALTER TABLE `topup_record`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `withdraw_request`
--
ALTER TABLE `withdraw_request`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=446;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
