-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2024 at 07:57 AM
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
-- Database: `mlm_adi_future`
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
(1, 'Admin', 'admin', '$2y$10$P5VMT35fdDybgJot7DPC..jn67l/uTETMy42Z0lAI8cp/Ae1zXJrG', 'admin@g.com', '20394f4ddec8ff4981c2dd9a86a5cf62', '::1', 1709962243),
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
-- Table structure for table `agent_earning`
--

CREATE TABLE `agent_earning` (
  `id` int(11) NOT NULL,
  `userid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ref_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N/A',
  `date` date NOT NULL,
  `team` varchar(11) DEFAULT NULL,
  `secret` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `status` enum('Paid','Pending') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Pending'
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
  `epin_type` varchar(255) NOT NULL,
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
(1, '1001', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '8233395', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

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
  `prefix` varchar(10) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `show_password` varchar(255) NOT NULL,
  `photo` text DEFAULT NULL,
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
  `re_topup` int(11) NOT NULL DEFAULT 1 COMMENT '0- Retopup again | 1 already topup ',
  `mypv` int(11) NOT NULL DEFAULT 0,
  `total_a_pv` varchar(5) NOT NULL DEFAULT '0',
  `total_b_pv` varchar(5) NOT NULL DEFAULT '0',
  `total_c_pv` varchar(10) NOT NULL DEFAULT '0',
  `total_d_pv` varchar(10) NOT NULL DEFAULT '0',
  `total_e_pv` varchar(10) NOT NULL DEFAULT '0',
  `my_img` text DEFAULT NULL COMMENT ' ',
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

INSERT INTO `member` (`id`, `name`, `prefix`, `email`, `phone`, `username`, `password`, `show_password`, `photo`, `sponsor`, `position`, `signup_package`, `epin`, `address`, `join_time`, `placement_leg`, `A`, `B`, `C`, `D`, `E`, `total_a`, `total_b`, `total_c`, `total_d`, `total_e`, `paid_a`, `paid_b`, `paid_c`, `paid_d`, `paid_e`, `rank`, `registration_ip`, `session`, `last_login`, `last_login_ip`, `topup`, `re_topup`, `mypv`, `total_a_pv`, `total_b_pv`, `total_c_pv`, `total_d_pv`, `total_e_pv`, `my_img`, `status`, `total_a_matching_incm`, `total_b_matching_incm`, `total_c_matching_incm`, `total_d_matching_incm`, `total_e_matching_incm`, `my_business`, `total_a_investment`, `total_b_investment`, `paid_a_matching_incm`, `paid_b_matching_incm`, `secret`, `gift_level`) VALUES
(1001, 'master user', '', 'muhammad5101729@gmail.com', '9905174054', '1001', '$2y$10$TPreRxDqL95EJ8c1iCH2fur8oxUqYJ5fSy3MbTb/VlwCobvgP8Sy2', '123456', NULL, '', '', '0', NULL, '', '2024-01-31', 'A', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'master_agent', '', 'b2494dbb992ca1900772d27d0feb88ab', 1709787406, '103.104.183.2', '1.00', 1, 0, '0', '0', '', '', '', 'uploads/member/download_-_Copy.jpg', 'Active', '0', '0', '', '', '', '0', '0', '0', '0', '0', 1, 0),
(8233395, 'Radhe Radhe', 'ADFIA', 'vikashkakkar97@gmail.com', '9955215097', '1709793013', '$2y$10$jtaprvhS.fOMbLiH3sBYSuoVxFiIJrBmJnAsV5GoijhYEmSXEHS12', 'ADI72915', NULL, '1001', '1001', '0', NULL, 'Delhi<br/>', '2024-03-07', 'A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Agent', '122.162.147.217', 'fa354aa876efa81033eba3fdf99741ce', 1709953630, '122.162.147.239', '1.00', 1, 0, '0', '0', '0', '0', '0', 'uploads/member/Screenshot_2024-03-07_124808.png', 'Active', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 750, 0);

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
  `upi_id` varchar(70) DEFAULT '',
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

INSERT INTO `member_profile` (`id`, `userid`, `tax_no`, `aadhar_no`, `bank_ac_no`, `bank_name`, `bank_ifsc`, `bank_branch`, `upi_id`, `tcc_address`, `nominee_name`, `nominee_add`, `nominee_relation`, `date_of_birth`, `gstin`, `id_proof`, `add_proof`) VALUES
(1, '1001', 'N/A', 'NA', '', '', '', '', '', '', 'NA', 'NA', '', NULL, 'NA', NULL, NULL),
(2, '8233395', 'BGRPK8796D', '970385903495', '20232928990', 'State Bank Of India', 'SBIN0014302', 'SINGHWARA', '9955215097@ybl', '', 'Pooja Kakkar', 'Delhi', 'Wife', '1991-01-04', 'NA', '', '');

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
(1, '<p><img alt=\"\" src=\"http://localhost/mlm_myproject/adi/adi_software/uploads/uploaded_images/6.png\" xss=removed>Welcome To ADI FUTURE</p>\r\n\r\n<p>HOW R YOU</p>\r\n\r\n<p>hi</p>', 1, '2021-07-20'),
(2, '<p><img alt=\"\" src=\"http://localhost/mlm_myproject/adi/adi_software/uploads/uploaded_images/2.png\" xss=removed>Welcome</p>', 1, '2021-07-20');

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
(1, '1001', '0.00', 'Default'),
(2, '8233395', '0.00', 'Default');

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
(1, 'Package 1', '1', '500', '0.00', '', '', -1, '0.00', 'default.jpg', 'Yes', NULL, '250,200,750,2000,3000,4000,5000', NULL, '200000000.00', '0.00', 0, 0, 0, 'Selling'),
(2, 'Package 2', '2', '1500', '0.00', '', '', -1, '0.00', 'default.jpg', 'Yes', NULL, '250,200,750,2000,3000,4000,5000', NULL, NULL, '0.00', 0, 0, 0, 'Selling'),
(3, 'Package 3', '3', '4000', '0.00', '', '', -1, '0.00', 'default.jpg', 'Yes', NULL, '250,200,750,2000,3000,4000,5000', NULL, NULL, '0.00', 0, 0, 0, 'Selling'),
(4, 'Package 4', '4', '8000', '0.00', '', '', -1, '0.00', 'default.jpg', 'Yes', NULL, '250,200,750,2000,3000,4000,5000', NULL, NULL, '0.00', 0, 0, 0, 'Selling'),
(5, 'Package 5', '5', '16000', '0.00', '', '', -1, '0.00', 'default.jpg', 'Yes', NULL, '250,200,750,2000,3000,4000,5000', NULL, NULL, '0.00', 0, 0, 0, 'Selling'),
(6, 'Package 6', '6', '32000', '0.00', '', '', -1, '0.00', 'default.jpg', 'Yes', NULL, '250,200,750,2000,3000,4000,5000', NULL, NULL, '0.00', 0, 0, 0, 'Selling');

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
(1, 'Silver', 0, 1, 1, 1, 1, 1, 'Member'),
(2, 'Gold', 0, 5, 5, 5, 5, 5, 'Member'),
(3, 'Ruby', 0, 25, 25, 25, 25, 25, 'Member'),
(4, 'Emerald', 0, 125, 125, 125, 125, 125, 'Member'),
(5, 'Saphiere', 0, 625, 625, 625, 625, 625, 'Member'),
(6, ' Diamond', 0, 3125, 3125, 3125, 3125, 3125, 'Member'),
(7, 'Director Diamond', 0, 15625, 15625, 15625, 15625, 15625, 'Member');

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
(1, 'LED BULB', 0, 0, 1, 1, 1, 1, 1),
(2, '3 Lakhs Insurance', 0, 0, 5, 5, 5, 5, 5),
(3, 'Sonata Couple Watch', 0, 0, 25, 25, 25, 25, 25),
(4, 'Samsung Galaxy 4G', 0, 0, 125, 125, 125, 125, 125),
(5, 'Samsung Galaxy 5G', 0, 0, 625, 625, 625, 625, 625),
(6, 'Laptop', 0, 0, 3125, 3125, 3125, 3125, 3125);

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
  `remark` varchar(50) DEFAULT NULL,
  `time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uploaded_image`
--

CREATE TABLE `uploaded_image` (
  `id` int(2) NOT NULL,
  `image` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(1, '1001', '0', '0', 'Default'),
(2, '8233395', '0', '0', 'Default');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transection`
--

CREATE TABLE `wallet_transection` (
  `id` int(11) NOT NULL,
  `userid` varchar(10) NOT NULL,
  `amount` float(20,2) NOT NULL,
  `status` enum('IN','OUT') NOT NULL,
  `remark` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Indexes for table `agent_earning`
--
ALTER TABLE `agent_earning`
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
-- Indexes for table `uploaded_image`
--
ALTER TABLE `uploaded_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userid` (`userid`);

--
-- Indexes for table `wallet_transection`
--
ALTER TABLE `wallet_transection`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `agent_earning`
--
ALTER TABLE `agent_earning`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `secret` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=751;

--
-- AUTO_INCREMENT for table `member_profile`
--
ALTER TABLE `member_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `other_wallet`
--
ALTER TABLE `other_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pending_wallet`
--
ALTER TABLE `pending_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `transfer_balance_records`
--
ALTER TABLE `transfer_balance_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uploaded_image`
--
ALTER TABLE `uploaded_image`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wallet_transection`
--
ALTER TABLE `wallet_transection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraw_request`
--
ALTER TABLE `withdraw_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
