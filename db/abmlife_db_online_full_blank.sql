-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 06, 2023 at 12:39 PM
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
(1, '1001', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

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
(1001, 'Master User', 'abmlifeforever@gmail.com', '6201348383', '1001', '$2y$10$TPreRxDqL95EJ8c1iCH2fur8oxUqYJ5fSy3MbTb/VlwCobvgP8Sy2', '', '', '', NULL, NULL, 'Patna', '2023-11-01', 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Member', '', 'cfd492ede525e2e2558f86f44cbbd5de', 1701864864, '103.104.183.2', 0.00, 0, '', '0', '', '', '', '', 'Active', '0', '0', '', '', '', '0', '', '0', '0', '0', 1, 1);

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
(1, '1001', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL);

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
(1, '1001', '0', '0', 'Default');

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auto_level1`
--
ALTER TABLE `auto_level1`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `epin`
--
ALTER TABLE `epin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `epin_request`
--
ALTER TABLE `epin_request`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `other_wallet`
--
ALTER TABLE `other_wallet`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_reply`
--
ALTER TABLE `ticket_reply`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `topup_record`
--
ALTER TABLE `topup_record`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `withdraw_request`
--
ALTER TABLE `withdraw_request`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=446;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
