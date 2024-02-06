-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 06, 2024 at 06:21 AM
-- Server version: 5.7.24
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ssi`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(10) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `pan_card_number` varchar(13) DEFAULT NULL,
  `gst_number` varchar(20) DEFAULT NULL,
  `place_of_supply` varchar(255) DEFAULT NULL,
  `state_code` varchar(20) DEFAULT NULL,
  `gst_type` varchar(20) DEFAULT 'IGST',
  `bank_account_number` varchar(30) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_ifc_code` varchar(30) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `account_type`, `industry`, `annual_revenue`, `phone_fax`, `billing_address_street`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `rating`, `phone_office`, `phone_alternate`, `website`, `ownership`, `employees`, `ticker_symbol`, `shipping_address_street`, `shipping_address_city`, `shipping_address_state`, `shipping_address_postalcode`, `shipping_address_country`, `parent_id`, `sic_code`, `campaign_id`, `pan_card_number`, `gst_number`, `place_of_supply`, `state_code`, `gst_type`, `bank_account_number`, `bank_name`, `bank_ifc_code`, `status`) VALUES
('57c24f8d-10c1-71a0-5843-625e9e228abd', 'SixthSenseInfo', '2022-04-19 11:36:31', '2022-07-21 12:13:09', '1', '1', 'SELF', 0, '1', 'Self', NULL, NULL, NULL, '114, New Natraj Complex,\r\nGurukul Road, Memnagar,', 'Ahmedabad', 'Gujarat', '380052', 'INDIA', NULL, '9824921331', NULL, 'http://www.sixthsenseinfo.com', NULL, NULL, NULL, '705, City Center, \r\nOpp-Shukan Mall, Science City,', 'Ahmedabad', 'Gujarat', '380060', 'INDIA', '', NULL, '', 'AMJPM6558Q', '24AMJPM6558Q1Z7', 'GUJARAT', '24', 'SGST_CGST', NULL, NULL, NULL, 'Active'),
('dee8073b-ebbd-7ef2-4b6c-62d940d0a21f', 'RR Consulting', '2022-07-21 12:03:16', '2022-07-29 10:13:36', '1', '1', 'Client', 0, '1', 'Client', NULL, NULL, NULL, 'Boisar', 'Thane', 'Maharashtra', '401501', 'INDIA', NULL, '9850733795', NULL, 'http://', NULL, NULL, NULL, 'Boisar', 'Thane', 'Maharashtra', '401501', 'INDIA', '', NULL, '', 'AXQPN9547A', '27AXQPN9547A1Z1', 'Maharashtra', NULL, 'IGST', NULL, NULL, NULL, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_audit`
--

CREATE TABLE `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts_audit`
--

INSERT INTO `accounts_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES
('a0db993f-5785-cdc7-11b1-62d93e3c03af', '57c24f8d-10c1-71a0-5843-625e9e228abd', '2022-07-21 11:55:18', '1', 'name', 'name', 'sixthsenseinfo', 'SixthSenseInfo', NULL, NULL),
('cab310b1-ada8-a0a9-35d0-62d93e69ad38', '57c24f8d-10c1-71a0-5843-625e9e228abd', '2022-07-21 11:56:20', '1', 'phone_office', 'phone', NULL, '9824921331', NULL, NULL),
('cc0b79d9-d205-a1e2-7cf1-62d94053e28d', 'dee8073b-ebbd-7ef2-4b6c-62d940d0a21f', '2022-07-21 12:03:46', '1', 'phone_office', 'phone', '', '9850733795', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_bugs`
--

CREATE TABLE `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_cases`
--

CREATE TABLE `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_contacts`
--

CREATE TABLE `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts_contacts`
--

INSERT INTO `accounts_contacts` (`id`, `contact_id`, `account_id`, `date_modified`, `deleted`) VALUES
('153c998d-b8d4-71b3-010b-625e9e781f27', 'd8554bd8-9d18-5171-ff85-625e9e90dd5b', '57c24f8d-10c1-71a0-5843-625e9e228abd', '2022-07-20 12:04:31', 1),
('1e309e31-f09f-95f3-ce96-632165095ced', '6a85d251-6616-187d-a1e6-63216563d408', '57c24f8d-10c1-71a0-5843-625e9e228abd', '2022-09-14 05:39:16', 0),
('238b78ef-6040-fcd9-a9ee-62d8129b9dc6', 'e2f2a163-5f31-accd-1800-62d81261cd19', '57c24f8d-10c1-71a0-5843-625e9e228abd', '2022-07-20 14:35:01', 0),
('284e5b62-b11c-2505-b65c-625e9f94f65c', '228de31b-39ff-3be1-a1d2-6258010f610d', '57c24f8d-10c1-71a0-5843-625e9e228abd', '2024-01-22 11:51:43', 0),
('3903164d-e214-3770-0cf7-62d8152f6a64', 'bbdd79f1-ee4e-c9d1-435d-62d815c477dd', '57c24f8d-10c1-71a0-5843-625e9e228abd', '2022-07-25 09:17:20', 0),
('81f15a3d-d584-c033-6e03-62d810493f37', '627266ab-5b5e-10e0-5e0a-62d810208840', '57c24f8d-10c1-71a0-5843-625e9e228abd', '2022-07-20 14:26:04', 0),
('880850f9-a378-4a98-7479-62d816da2927', '20ffdb4e-f9e0-f2b2-37b5-62d8163a1e94', '57c24f8d-10c1-71a0-5843-625e9e228abd', '2022-07-20 14:52:35', 0),
('ca4604db-c9a1-a336-e88b-62d80b6e7825', 'ba28c9d0-5f37-5410-8f37-62d80b666572', '57c24f8d-10c1-71a0-5843-625e9e228abd', '2022-07-20 14:10:54', 0),
('eb2ed08f-c13a-ae93-0a1b-62d81751b9b4', 'a9fe604d-5017-3ed8-7155-62d817e28437', '57c24f8d-10c1-71a0-5843-625e9e228abd', '2022-07-20 14:55:49', 0);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_cstm`
--

CREATE TABLE `accounts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts_cstm`
--

INSERT INTO `accounts_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`) VALUES
('57c24f8d-10c1-71a0-5843-625e9e228abd', 0.00000000, 0.00000000, '', ''),
('dee8073b-ebbd-7ef2-4b6c-62d940d0a21f', 0.00000000, 0.00000000, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_opportunities`
--

CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acl_actions`
--

CREATE TABLE `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acl_actions`
--

INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('103b17f7-884e-467f-f300-6253c7a273c4', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'Bugs', 'module', 90, 0),
('1092db01-756b-3c87-d75b-6253c7cdb262', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'AOS_Contracts', 'module', 90, 0),
('1098653e-d096-3f7e-b214-6253c8d18220', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'SurveyQuestionOptions', 'module', 90, 0),
('10cf6180-e8f7-e7b8-4700-6253c75decbc', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'Emails', 'module', 90, 0),
('10e86193-4ffe-9469-c84d-6253c71ed553', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'Tasks', 'module', 90, 0),
('1185b17e-7c97-84fe-c749-6253c7b01724', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'AOR_Scheduled_Reports', 'module', 90, 0),
('11c29c82-a218-b22b-080c-6253c8d9ce28', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'SurveyQuestionResponses', 'module', 90, 0),
('11ef9a54-391b-ff46-bad3-65bba2734001', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'edit', 'SSI_Salary_Structure', 'module', 90, 0),
('13af244c-d29b-cd41-7da0-6253c7f42917', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'EmailTemplates', 'module', 90, 0),
('140522a1-80cb-ed47-441b-6253c83f5ec3', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'SecurityGroups', 'module', 90, 0),
('14186eed-20cf-03a7-00fd-6253c701ad67', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'Leads', 'module', 89, 0),
('14232baf-22ff-cc3b-2145-6253c7fff76a', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'Bugs', 'module', 90, 0),
('14f7ee0b-c0ca-c786-6132-6253c718f5bb', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'AOS_Contracts', 'module', 90, 0),
('155d811e-9ef9-9ecf-92e7-65bba237f629', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'delete', 'SSI_Salary_Structure', 'module', 90, 0),
('169816ea-3823-cc6a-7c5e-6253c8338ae2', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'jjwg_Areas', 'module', 90, 0),
('1756d336-c17c-349a-0cce-6253c73d2d9c', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'Project', 'module', 89, 0),
('179ebb43-5c0e-a152-010b-6253c8415e09', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'SurveyQuestionResponses', 'module', 90, 0),
('17dece71-b616-eb1d-afe6-6253c7273a8c', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'AOR_Scheduled_Reports', 'module', 90, 0),
('18143cce-1627-07b1-f4b0-6253c7a53004', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'EmailTemplates', 'module', 90, 0),
('1849bae5-8750-ac0c-8efe-6253c7d8b84e', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'Bugs', 'module', 90, 0),
('1864d7d4-4c24-2006-9cf7-6253c8fe654d', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'AOW_WorkFlow', 'module', 90, 0),
('189fd737-6dc7-e046-3fdc-6253c8da1ff7', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'SurveyQuestions', 'module', 90, 0),
('18a07364-2b37-16cc-402d-65bba20915b7', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'import', 'SSI_Salary_Structure', 'module', 90, 0),
('18dffc5c-24f3-659e-41f5-6253c73a9797', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'AOS_Contracts', 'module', 90, 0),
('1a2f8a51-be87-a7fb-7a78-6253c7b3f9fb', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'Tasks', 'module', 90, 0),
('1b7d6316-e3e8-3ab2-a75c-6253c762f7eb', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'Project', 'module', 90, 0),
('1bbdca8d-b790-ddbb-c1c6-6253c72f4b79', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'EmailTemplates', 'module', 90, 0),
('1bfa932f-9323-2424-d3b6-65bba2875f33', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'export', 'SSI_Salary_Structure', 'module', 90, 0),
('1cfdcd38-8f47-88cc-ade6-6253c8b9850e', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'SurveyQuestionResponses', 'module', 90, 0),
('1d0c1124-e8e9-6487-9920-6253c8376907', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'SurveyQuestionOptions', 'module', 90, 0),
('1eb4e2ac-3b82-64a9-e6ea-6253c7646baa', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'AOR_Scheduled_Reports', 'module', 90, 0),
('1f0fad53-7600-c8e7-5b13-65bba2fb02fe', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'massupdate', 'SSI_Salary_Structure', 'module', 90, 0),
('1f1fb3c8-eb54-f450-a131-6253c7cabe01', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'Bugs', 'module', 90, 0),
('1fa3e4f8-b154-1f7f-36ee-6253c7d48d2b', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'Project', 'module', 90, 0),
('1ff2bc80-2fb4-9cfd-d62b-6253c76da54d', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('1ff49982-4fa2-2131-74fe-6253c7272008', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'AOS_Contracts', 'module', 90, 0),
('2022d649-69cb-c526-787a-6253c7f86aa5', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'EmailTemplates', 'module', 90, 0),
('22a9aef8-8c3f-83bd-16d5-6253c8424692', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'SurveyQuestionOptions', 'module', 90, 0),
('22d10ee7-3025-6680-4e81-6253c8229252', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'SurveyQuestions', 'module', 90, 0),
('2322d528-155b-d2c1-655e-6253c7e54a63', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('238c0925-8ff7-38bf-b2a9-6253c7adb773', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'Project', 'module', 90, 0),
('23b8a94a-1ae6-a143-55df-6253c72f4c75', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'Leads', 'module', 90, 0),
('25996ab2-1e93-793d-bc9d-6253c89a7d06', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'SecurityGroups', 'module', 90, 0),
('259ae9c9-754b-9c63-6507-6253c7373863', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'Meetings', 'module', 90, 0),
('25c7ec5e-9d20-73c6-da39-6253c80cb3d1', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'SurveyQuestionResponses', 'module', 90, 0),
('26249522-2fcd-edc4-ad15-6253c7f1858e', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'AOS_Product_Categories', 'module', 90, 0),
('26e1b5c9-a895-52fd-3d82-6253c745b547', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'Tasks', 'module', 90, 0),
('27f11a28-ad7a-0a69-e7eb-6253c7ff6ec0', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'Project', 'module', 90, 0),
('29563f2b-33b6-9199-894a-6253c723a1ce', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'Leads', 'module', 90, 0),
('296a3d26-5322-9afe-db09-6253c7ffaa0a', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'AOS_Quotes', 'module', 89, 0),
('2a02a70c-f73d-cbbb-1923-65bba2d48da6', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'view', 'InboundEmail', 'module', 90, 0),
('2a820d45-433c-9cf8-cd27-6253c7253da7', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'AOS_Contracts', 'module', 89, 0),
('2aea12e2-8e1c-915b-7831-6253c700597f', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'AOR_Scheduled_Reports', 'module', 90, 0),
('2b26ffcf-001d-5956-ab62-6253c83d18fe', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'SurveyQuestionResponses', 'module', 90, 0),
('2b370e71-0e8d-0c62-0680-6253c8fe089c', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'SecurityGroups', 'module', 90, 0),
('2b6e3849-9371-33e0-cb3b-6253c71a164d', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'AOS_Contracts', 'module', 90, 0),
('2c17a043-d7c1-b0f5-5e97-6253c72bef22', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'Project', 'module', 90, 0),
('2d3add0c-cc57-cd4b-25e5-6253c7f2de41', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'Tasks', 'module', 90, 0),
('2e430b51-f6f1-43da-7634-6253c7f7b6da', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'Bugs', 'module', 90, 0),
('2e4ae6e0-a3f8-90c7-517a-65bba2557aba', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'list', 'InboundEmail', 'module', 90, 0),
('2fcfd21d-84f7-7363-d8cd-6253c8eeff7a', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'Calls_Reschedule', 'module', 90, 0),
('300fd3b0-2621-50e5-7459-6253c7636a96', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'Emails', 'module', 90, 0),
('303aa462-bad7-a94f-2bb9-6253c73bc0a0', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'Users', 'module', 89, 0),
('30b46b75-529e-1dc1-df15-6253c8bf999b', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'jjwg_Areas', 'module', 89, 0),
('3176b746-a6b4-082d-3c4d-6253c7836c52', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'Project', 'module', 90, 0),
('31a351a9-626a-2a74-fdc4-6253c7444c39', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'Leads', 'module', 90, 0),
('31a9764f-05b2-e865-8010-65bba23ed13c', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'edit', 'InboundEmail', 'module', 90, 0),
('31d01c4b-9721-a2ad-0cd0-6253c7b45b08', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'Meetings', 'module', 90, 0),
('327f2bb8-fbbf-c2ec-55ef-6253c76005ce', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'Documents', 'module', 89, 0),
('33290dcf-ba6a-fc72-454e-6253c8f35c7f', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'jjwg_Areas', 'module', 90, 0),
('33842cc2-df1e-1f6f-6b0c-6253c810e972', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'SecurityGroups', 'module', 90, 0),
('33ab5157-0a9a-74a9-6b2f-6253c71e2c60', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'AOS_Quotes', 'module', 90, 0),
('348c14f7-ccef-3a68-b6c0-6253c7635f0a', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'Contacts', 'module', 89, 0),
('34de3037-87bb-651b-e07a-6253c7544962', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'Users', 'module', 90, 0),
('34f3ca8a-293d-2177-4b12-65bba25b15b8', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'delete', 'InboundEmail', 'module', 90, 0),
('3540cf4b-f023-306c-9313-6253c8012d66', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'OutboundEmailAccounts', 'module', 89, 0),
('35c9e3c4-d1e9-74a1-6ab3-6253c7d80fd9', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'Leads', 'module', 90, 0),
('3706318b-a51d-7088-7253-6253c70564a6', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'AOP_Case_Events', 'module', 89, 0),
('38058a27-d6b6-c616-3ead-6253c7eec6ba', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'Spots', 'module', 89, 0),
('388b5d38-de14-373b-aa72-6253c7c38f62', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'Project', 'module', 90, 0),
('388e0bcc-7199-ed13-bb02-6253c7b1d684', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'Bugs', 'module', 89, 0),
('38924a91-9c8b-5bac-ca12-65bba29c26d9', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'import', 'InboundEmail', 'module', 90, 0),
('389b7422-ad78-2cb9-cb91-6253c79f77ad', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'Emails', 'module', 90, 0),
('392fa4b1-d61c-ff62-890a-6253c768e261', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'Contacts', 'module', 90, 0),
('39f0774d-b970-f875-4680-6253c78fc49e', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'Leads', 'module', 90, 0),
('3b374912-2bb3-a003-4832-6253c785bb4d', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'Users', 'module', 90, 0),
('3c030042-fe23-abac-6ebd-65bba2926943', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'export', 'InboundEmail', 'module', 90, 0),
('3cc08108-b838-5196-a707-6253c833ad0a', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'Calls_Reschedule', 'module', 90, 0),
('3cfec9de-7c3e-41f8-d870-6253c78ddbec', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'Documents', 'module', 90, 0),
('3d028867-f25b-76a8-c05a-6253c7f37f63', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'AOS_Contracts', 'module', 90, 0),
('3dd519d1-1525-5a38-54fd-6253c7a4f93b', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'Tasks', 'module', 90, 0),
('3e1addc1-1849-752f-3db9-6253c70d2910', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'AOP_Case_Events', 'module', 90, 0),
('3e80c408-1e6b-775f-7fd5-6253c817e3ea', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'SecurityGroups', 'module', 90, 0),
('3f5dc792-a8b7-6165-8671-6253c7df8c17', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'Users', 'module', 90, 0),
('3f88c793-8a28-9d2a-3f77-6253c7b54638', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'Contacts', 'module', 90, 0),
('3f97b781-befe-ae96-ab09-65bba2089ed2', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'massupdate', 'InboundEmail', 'module', 90, 0),
('3ffcede5-44d2-a43d-db06-6253c7958206', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'Meetings', 'module', 90, 0),
('40765f79-3048-29df-632a-6253c7151e2d', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'Meetings', 'module', 90, 0),
('40d30e99-22e6-43f7-f686-65bba2ffea74', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'massupdate', 'SSI_Salary_Slip', 'module', 90, 0),
('4121eca3-faa2-218f-dec6-6253c7687a3d', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'AOR_Scheduled_Reports', 'module', 90, 0),
('427c1c55-ef46-ec73-1d39-6253c75bda6e', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'Leads', 'module', 90, 0),
('427febbc-8f56-6562-032a-6253c7b0e2cb', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'AOP_Case_Events', 'module', 90, 0),
('43edde5c-b2a5-fc59-6f8c-6253c7b3018b', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'Contacts', 'module', 90, 0),
('44016e42-42c5-34d3-ab77-6253c72eb94a', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'Users', 'module', 90, 0),
('44459923-4d8c-c6a4-84d4-6253c7d2ef49', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'AOS_Quotes', 'module', 90, 0),
('46642f98-7b57-bdaf-ea3d-6253c7fb2f50', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'Leads', 'module', 90, 0),
('46968221-71cb-5c0b-56a7-6253c848b0f8', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'OutboundEmailAccounts', 'module', 90, 0),
('47aafc49-397a-aa9b-f5ff-6253c7f49bc1', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'Users', 'module', 90, 0),
('47fb7e59-a330-1319-d73c-6253c7082669', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'Documents', 'module', 90, 0),
('4917861d-40b7-453a-c492-6253c797a7c6', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'AOP_Case_Events', 'module', 90, 0),
('49cbbffa-19dd-a902-a321-6253c7bb755e', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'Tasks', 'module', 90, 0),
('4a3ab99a-cec5-7f60-614d-6253c84bdc1c', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'AOW_Processed', 'module', 90, 0),
('4b330b51-b850-9333-e73b-6253c7b19a08', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'Tasks', 'module', 89, 0),
('4b5c9a54-df7c-b5ec-5ba3-6253c85ec2ca', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '1', 'access', 'Employees', 'module', 89, 0),
('4bc6cfe6-f52f-592c-356b-6253c7b9c5bc', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'Cases', 'module', 89, 0),
('4beac0e7-094e-0954-f88b-6253c75ff5b6', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'AOS_Invoices', 'module', 89, 0),
('4c92b4cc-c481-b505-d738-6253c7d900b5', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'AOS_Quotes', 'module', 90, 0),
('4cff9113-ff57-8be9-5f01-6253c7249509', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'AOP_Case_Events', 'module', 90, 0),
('4d7373e8-265d-a4d9-058a-6253c73fd698', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'Contacts', 'module', 90, 0),
('4d83bd93-b19a-d1f6-ab29-6253c7182609', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'AOP_Case_Updates', 'module', 89, 0),
('4e66ae49-b754-99c3-56f1-6253c859a354', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'OutboundEmailAccounts', 'module', 90, 0),
('4e8114d8-bd09-0e41-1e72-6253c7611762', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'Users', 'module', 90, 0),
('4ebfe3a9-f832-89de-9e32-6253c8da8899', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'jjwg_Areas', 'module', 90, 0),
('4f8d51a4-e6d0-3691-caa9-6253c8e8d5ed', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'Calls_Reschedule', 'module', 90, 0),
('4fd8053d-4796-4e61-f872-6253c7906d61', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'Meetings', 'module', 90, 0),
('501157a9-efe9-315a-3c0a-6253c709b4c8', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'AOS_Invoices', 'module', 90, 0),
('50a8ed9d-bc32-c796-d7f6-6253c70f038b', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'Cases', 'module', 90, 0),
('5164a02f-bf67-d50f-03aa-6253c769bbd9', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'AOP_Case_Events', 'module', 90, 0),
('51d88f59-b785-7ed3-55cd-6253c7f09c50', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'Contacts', 'module', 90, 0),
('51eb0458-c6ec-ddcb-0dd4-6253c8ac731d', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'SurveyQuestionOptions', 'module', 90, 0),
('5232b610-e0b1-50c1-ea8d-6253c8c5a82c', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '1', 'view', 'Employees', 'module', 90, 0),
('523392dc-291b-7537-3e3b-6253c7464fc8', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'Calls', 'module', 89, 0),
('52a7a4e3-601e-bf13-9594-6253c72c3a6a', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'Users', 'module', 90, 0),
('538fe18c-a6d5-711a-f7bb-6253c7020d9b', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'Tasks', 'module', 90, 0),
('54044363-5b2b-1d81-7387-6253c84bc19e', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'OutboundEmailAccounts', 'module', 90, 0),
('5424578c-4115-2439-7a1e-6253c75f2345', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'AOS_Quotes', 'module', 90, 0),
('5612ec68-d3f0-6039-96f4-6253c7883327', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'AOR_Reports', 'module', 89, 0),
('56c37625-a74e-d63c-4073-6253c770a079', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'Cases', 'module', 90, 0),
('573d2734-bcc4-c9c0-8c7a-6253c75517d4', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'AOD_Index', 'module', 89, 0),
('575d6fb4-8e87-48dc-426b-6253c877393d', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'Calls_Reschedule', 'module', 90, 0),
('579bbdd3-b19a-1ab6-2764-6253c7f7eeaf', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'Documents', 'module', 90, 0),
('583abd8f-fe6b-dc08-04f0-6253c7dd2e15', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'AOP_Case_Events', 'module', 90, 0),
('589cf488-b92f-0f8b-4b20-6253c70e0fdf', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'AOS_Invoices', 'module', 90, 0),
('5a4d57d5-fcc8-5cf7-5f72-6253c838c632', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'SurveyQuestions', 'module', 90, 0),
('60b10730-1890-661e-5b4d-6253c8334924', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'AOW_Processed', 'module', 90, 0),
('610fb087-7da3-c885-4e24-6253c81d24a1', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'jjwg_Areas', 'module', 90, 0),
('6150090b-bc03-dc9b-da63-6253c8b059a9', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'AOW_WorkFlow', 'module', 90, 0),
('617fec2e-444d-ac19-9650-6253c73d80be', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'Accounts', 'module', 89, 0),
('624ff63b-8ca2-2d75-4119-6253c82c203d', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '1', 'list', 'Employees', 'module', 90, 0),
('6272c100-255a-162a-321e-6253c78443c5', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'Contacts', 'module', 90, 0),
('6438835b-7573-d18b-71a0-6253c7080e70', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'AOP_Case_Updates', 'module', 90, 0),
('64a807f8-df50-445a-0e79-6253c71f0ee3', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'AOR_Scheduled_Reports', 'module', 90, 0),
('657d6f9e-9ccd-18d3-b1a1-6253c70dbfb9', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'Calls', 'module', 90, 0),
('65a67ec1-a3da-0a37-5c47-6253c7522507', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'Accounts', 'module', 90, 0),
('65f1a688-5aae-e0d2-ecc1-6253c75041f7', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'AOR_Reports', 'module', 90, 0),
('665ad4c8-97e8-6602-fe15-6253c73cb5eb', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'Contacts', 'module', 90, 0),
('66826836-dbff-a75e-92ac-6253c7e8973b', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'AOW_WorkFlow', 'module', 90, 0),
('670f8413-195a-5836-69e9-6253c80debd9', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'OutboundEmailAccounts', 'module', 90, 0),
('673bee01-7a46-29d3-3010-6253c7f3a781', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'Documents', 'module', 90, 0),
('675db299-db19-ccb3-8f2b-6253c7829c0b', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'Cases', 'module', 90, 0),
('679c75ae-86ba-99f5-3740-6253c7f6c042', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'AOP_Case_Events', 'module', 90, 0),
('687706f9-d2cb-d6eb-0b24-6253c8abbee9', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'SurveyQuestionResponses', 'module', 90, 0),
('693731a4-893e-9fbb-d309-6253c7e690c1', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'AOS_Invoices', 'module', 90, 0),
('696eb50b-cde2-8e26-1d37-6253c8f4e495', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'Calls_Reschedule', 'module', 90, 0),
('69a3f20b-31c3-414a-35e8-6253c703a482', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'Calls', 'module', 90, 0),
('69cd03b2-b48f-7f2f-48ac-6253c7889779', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'Accounts', 'module', 90, 0),
('6ab3ad29-8805-2d68-1bee-6253c89e06a1', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'AOW_Processed', 'module', 90, 0),
('6ad02e8e-5ed8-6f60-1310-6253c708a7ec', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'AOP_Case_Updates', 'module', 90, 0),
('6b844e7d-84ee-fe36-9050-6253c7ba1f39', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'Cases', 'module', 90, 0),
('6c5c802e-99ae-f5cf-4d7d-6253c760cabb', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'Documents', 'module', 90, 0),
('6c97e079-242e-0ec5-84bc-65bba277ffe6', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'access', 'SSI_Holiday', 'module', 89, 0),
('6cd62f22-a097-ee79-ee36-6253c83c429e', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'Calls_Reschedule', 'module', 89, 0),
('6ceb962e-7748-e425-d4ad-6253c8b8d8b0', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'OutboundEmailAccounts', 'module', 90, 0),
('6d4c97fc-abb7-f783-5b51-6253c85686bb', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '1', 'edit', 'Employees', 'module', 90, 0),
('6d74f9f2-645e-6600-c38c-6253c78a3695', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'AOD_Index', 'module', 90, 0),
('6dca8999-0df9-f89c-8174-6253c7b30003', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'Calls', 'module', 90, 0),
('6e321e7e-7027-d041-adf4-6253c787af96', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'Accounts', 'module', 90, 0),
('6eb8397a-9275-abee-82be-6253c79fbe4b', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'AOP_Case_Updates', 'module', 90, 0),
('6edf82c4-0bab-4c4c-cb01-6253c7309430', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'AOS_PDF_Templates', 'module', 89, 0),
('6f894f91-387c-1ca3-0647-6253c8c896a3', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'Calls_Reschedule', 'module', 90, 0),
('6fe95201-36a6-044d-5a94-6253c783e0fa', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'Cases', 'module', 90, 0),
('6ff9bf9b-070a-5b5a-732c-6253c758ef1b', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'AOS_Quotes', 'module', 90, 0),
('70098d9a-6b8b-a9bc-4e2e-6253c7dfde3f', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'Prospects', 'module', 89, 0),
('70ce3cdd-41d9-0514-0be3-65bba29d88a0', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'view', 'SSI_Holiday', 'module', 90, 0),
('70ee52af-9dd7-9cb9-8b31-6253c77aaee9', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'AOR_Reports', 'module', 90, 0),
('71b299c0-f492-b3b9-15e0-6253c7958ea0', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'Calls', 'module', 90, 0),
('71da00a1-ca27-8be5-7c52-6253c7fcd74c', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'AOD_Index', 'module', 90, 0),
('721a226a-13a7-1f45-c6a3-6253c730990e', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'Accounts', 'module', 90, 0),
('724ab5ce-b9fe-f887-115b-6253c86364da', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'OutboundEmailAccounts', 'module', 90, 0),
('72bcd950-f19a-11a1-c612-6253c7aad4db', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'AOS_Invoices', 'module', 90, 0),
('7383158e-10c7-67b9-c4ed-6253c7ca7a72', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'AOS_PDF_Templates', 'module', 90, 0),
('740feccd-1961-932a-8d31-6253c7adb9a3', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'Cases', 'module', 90, 0),
('7424ba40-ad42-40a8-348b-65bba23a45a1', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'list', 'SSI_Holiday', 'module', 90, 0),
('7514e528-9aaa-3ee2-1582-6253c7510e29', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'AOR_Reports', 'module', 90, 0),
('7548c725-1699-998b-6652-6253c85f9910', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'jjwg_Markers', 'module', 89, 0),
('7599b4ae-2466-55d6-078b-6253c8322641', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '1', 'delete', 'Employees', 'module', 90, 0),
('759e5dde-a1e2-55b2-8f24-6253c7e38d7d', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'AM_TaskTemplates', 'module', 89, 0),
('760095ab-add8-847b-8733-6253c7493626', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'AOD_Index', 'module', 90, 0),
('7686700d-cd3a-f1e3-7d76-6253c7c8c15a', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'Spots', 'module', 90, 0),
('76df9dc6-8afc-edfe-e09a-6253c74e7180', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'Prospects', 'module', 90, 0),
('7721e3eb-4cd0-4e43-cc28-6253c78d8be5', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'AOS_Invoices', 'module', 90, 0),
('7782557d-57eb-cf21-5d74-6253c75dc97a', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'AOP_Case_Updates', 'module', 90, 0),
('7797acf3-c0e5-e561-4fec-6253c749c38e', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'Documents', 'module', 90, 0),
('77dbde1e-7150-6850-79fc-65bba2794bf8', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'edit', 'SSI_Holiday', 'module', 90, 0),
('77e84e9e-76b2-fb35-12fa-6253c8d9651b', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'OutboundEmailAccounts', 'module', 90, 0),
('78367393-eabb-78a4-99d7-6253c7f62766', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'Cases', 'module', 90, 0),
('78d730e6-7d75-d8bb-45c6-6253c72e760b', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'EmailMarketing', 'module', 89, 0),
('791b2d97-258d-caca-8ba1-6253c764f04f', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'Meetings', 'module', 90, 0),
('792eb255-8673-fdbb-bbd3-6253c758c205', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'Accounts', 'module', 90, 0),
('79fc5eb9-5d81-8f54-43b3-6253c737f3ef', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'AOS_Quotes', 'module', 90, 0),
('7a156250-8a93-1543-d95d-6253c837cbca', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'AOW_Processed', 'module', 90, 0),
('7a41e15f-e688-e2a1-948b-6253c7f0255b', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'AM_TaskTemplates', 'module', 90, 0),
('7a5e8503-5e32-b9a8-8834-6253c70b717f', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'AOD_IndexEvent', 'module', 89, 0),
('7aa50553-d86f-d9a8-e5fe-65bba27925ad', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'access', 'SSI_Salary_Structure', 'module', 89, 0),
('7abb33c5-0a2f-b37d-72fa-6253c72a228a', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'Calls', 'module', 90, 0),
('7af701bd-0a5b-f907-6874-6253c79fde8c', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'Bugs', 'module', 90, 0),
('7b2f9074-f7e1-aab0-93a6-6253c85f537f', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'jjwg_Areas', 'module', 90, 0),
('7b5f83d1-7288-5f86-39d9-65bba2c92634', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'delete', 'SSI_Holiday', 'module', 90, 0),
('7b91b7c0-5e57-8633-518e-6253c77b9844', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'AOS_PDF_Templates', 'module', 90, 0),
('7c67f550-b82e-8006-255c-6253c7cff41d', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'AOR_Reports', 'module', 90, 0),
('7cd6b1e3-1ddb-631e-d70e-6253c7fc205a', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'AOD_Index', 'module', 90, 0),
('7d93ca1f-80c5-204a-ec8e-6253c7eaa29a', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'Accounts', 'module', 90, 0),
('7df805c6-3faa-2c9d-97ab-6253c79d360d', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'AOS_Invoices', 'module', 90, 0),
('7ea333a8-b437-a598-ec6f-6253c79ac9ce', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'Calls', 'module', 90, 0),
('7ec39ea1-ed96-bcea-baf4-6253c7812797', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'AOD_IndexEvent', 'module', 90, 0),
('7ef583df-0958-3156-53ce-65bba2011052', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'import', 'SSI_Holiday', 'module', 90, 0),
('7f22088f-1f75-ffcb-eaae-6253c7610dd5', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'Campaigns', 'module', 89, 0),
('7fa6497c-d355-435b-3a87-6253c7230a0a', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'Documents', 'module', 90, 0),
('7fb2f067-59af-caec-29a6-6253c8e082e7', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'AOW_Processed', 'module', 90, 0),
('7febd991-8b6c-4449-1ac8-6253c71bc9fa', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'EmailMarketing', 'module', 90, 0),
('8050087e-e7fa-8311-f9c4-6253c78056dc', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'AOR_Reports', 'module', 90, 0),
('8063833a-b03c-243b-63a4-6253c7fe8b66', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'Emails', 'module', 90, 0),
('809579ba-c619-0073-b54b-6253c7826a3d', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'ProjectTask', 'module', 90, 0),
('80966e40-2dc9-6e34-3434-6253c8d36634', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '1', 'import', 'Employees', 'module', 90, 0),
('80a3cafa-60bd-6f51-fc25-6253c741fabf', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'Prospects', 'module', 90, 0),
('80beb6aa-4e50-6724-5464-6253c736232e', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'AOD_Index', 'module', 90, 0),
('80d98c16-e0b2-cdc2-8430-6253c7d9bc27', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'AM_TaskTemplates', 'module', 90, 0),
('8100f998-8e53-1d6f-d5c7-6253c8a8b0c3', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'jjwg_Markers', 'module', 90, 0),
('8107fa0d-adc2-eb6b-7efd-6253c7a5d1b0', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'AOP_Case_Updates', 'module', 90, 0),
('812d70dc-e6fd-1ad9-a392-6253c77084f8', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'FP_events', 'module', 89, 0),
('81a36ad7-b9c2-0243-b45c-6253c851c0f2', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'AOW_Processed', 'module', 89, 0),
('81ba51f0-87e0-487d-e564-6253c7c3dff8', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'Accounts', 'module', 90, 0),
('81e01bf9-8ada-dfa8-95b5-6253c7c581f6', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'AOS_Invoices', 'module', 90, 0),
('82aba75a-c4a8-876e-3fbe-6253c7266b50', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'AOD_IndexEvent', 'module', 90, 0),
('82c9da01-0f14-5b28-1c31-6253c703e946', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'Calls', 'module', 90, 0),
('82cf7adf-2c09-8eff-12bd-65bba229ec29', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'export', 'SSI_Holiday', 'module', 90, 0),
('83570eeb-8741-cd05-799f-6253c79c81e6', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'EmailTemplates', 'module', 90, 0),
('83c0829a-f802-8799-3071-6253c7a88a3c', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'AOS_Quotes', 'module', 90, 0),
('83c59149-43d4-9323-2354-6253c779fe40', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'Campaigns', 'module', 90, 0),
('84b51501-7389-56c2-ce33-6253c70557b7', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'AOR_Reports', 'module', 90, 0),
('8533dc47-83f8-c80f-4e63-6253c7e6c701', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'EAPM', 'module', 89, 0),
('85508db0-bd88-febd-9fcc-6253c803b03a', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'AOW_Processed', 'module', 90, 0),
('857eacd4-e243-5ffb-d6ff-6253c7a94f03', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'ProspectLists', 'module', 89, 0),
('85a0019f-b3ca-8c8b-6c52-6253c7830134', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'FP_events', 'module', 90, 0),
('85f57980-e5b3-88a7-062a-6253c838b87d', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '1', 'export', 'Employees', 'module', 90, 0),
('86836145-763c-94e8-b283-6253c720a9b4', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'EmailMarketing', 'module', 90, 0),
('868a0f99-a0cc-b37b-4eb9-65bba26bccab', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'massupdate', 'SSI_Holiday', 'module', 90, 0),
('87af96a9-36dc-9f2f-d65c-6253c7a24bb6', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'AM_TaskTemplates', 'module', 90, 0),
('87ec23ba-3099-6884-cd8e-6253c737e9ec', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'Campaigns', 'module', 90, 0),
('87fad51b-f5bd-d2cd-06b0-65bba2a3a3e2', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'access', 'ExternalOAuthConnection', 'module', 89, 0),
('8811d8ad-4326-61f0-6c72-6253c7c0cfe5', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'AOD_Index', 'module', 90, 0),
('88625e78-456a-3ebc-0706-6253c883a63c', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'jjwg_Address_Cache', 'module', 89, 0),
('889d20c1-9837-f7d7-7f54-6253c790a5c5', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'AOR_Reports', 'module', 90, 0),
('891108e0-35dc-a3ac-62f8-6253c7881615', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'Opportunities', 'module', 89, 0),
('89551882-ff9b-c92a-8220-6253c77cf1c4', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'AOP_Case_Updates', 'module', 90, 0),
('8981b45c-4dd0-a4a7-c947-6253c79db44f', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'AOD_IndexEvent', 'module', 90, 0),
('89d7684f-f470-4e1d-2336-6253c7bb41f5', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'EAPM', 'module', 90, 0),
('8aca404a-267f-06a0-9892-6253c7b9cbab', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'Spots', 'module', 90, 0),
('8b8d2e85-59fb-d892-d109-6253c82a6f77', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'Surveys', 'module', 89, 0),
('8b97a143-bfeb-dbf5-3d0e-6253c7b87beb', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'AM_TaskTemplates', 'module', 90, 0),
('8ba06575-0868-11b9-7dbb-6253c79109e7', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'Prospects', 'module', 90, 0),
('8bb9a6c1-5534-86ad-92d0-6253c7ea179a', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'AOS_Products', 'module', 89, 0),
('8bd199aa-f312-a723-627c-6253c816eb99', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '1', 'massupdate', 'Employees', 'module', 90, 0),
('8bf9e780-6e6e-857b-2e27-6253c7cf6624', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'AOD_Index', 'module', 90, 0),
('8c934366-c5e0-4318-f601-6253c77a3ca0', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'ProspectLists', 'module', 90, 0),
('8ce931ab-15ec-b238-5300-6253c7c2dbaf', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'FP_Event_Locations', 'module', 89, 0),
('8d379876-c1cd-a3f6-b2a1-6253c7ff80e6', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'Opportunities', 'module', 90, 0),
('8d3d2060-4183-cd3e-545e-6253c7b1d81d', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'AOP_Case_Updates', 'module', 90, 0),
('8d80f81d-4011-5804-901b-6253c77ad21c', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'EAPM', 'module', 90, 0),
('8dffed0c-2638-6b86-948c-6253c853a110', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'jjwg_Address_Cache', 'module', 90, 0),
('8e25452c-7edd-4d77-2119-6253c772f161', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'AOD_IndexEvent', 'module', 90, 0),
('8e3077a7-5ec8-da15-0011-65bba22d2db0', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'view', 'ExternalOAuthConnection', 'module', 90, 0),
('8e83b299-19af-4503-24cb-6253c74fcd77', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'Campaigns', 'module', 90, 0),
('8ef1113e-0936-8adf-d1d5-6253c815ed15', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'SurveyResponses', 'module', 89, 0),
('8ffcbc97-84d1-45f6-9cda-6253c76e4d03', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'AM_TaskTemplates', 'module', 90, 0),
('90122b78-4d06-fdb5-bd8e-6253c7144ae7', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'FP_events', 'module', 90, 0),
('901eb8ed-90a1-6e18-b8dd-6253c70f51a6', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'AOS_Products', 'module', 90, 0),
('90b9d39a-99b8-71ea-bc88-6253c74e05bc', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'ProspectLists', 'module', 90, 0),
('911e18bc-9c7b-8b01-530c-65bba2e8d768', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'list', 'ExternalOAuthConnection', 'module', 90, 0),
('915e2c0c-068f-832f-20ae-6253c770aba7', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'Opportunities', 'module', 90, 0),
('91d9b017-7e76-45d4-5f52-6253c8129134', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'jjwg_Markers', 'module', 90, 0),
('91e60684-1b1b-e8b4-3a13-6253c79533c1', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'EAPM', 'module', 90, 0),
('9224ceee-6352-6000-a77b-6253c874d245', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'Surveys', 'module', 90, 0),
('926bc523-9c30-71e4-b1b9-6253c751dca3', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'Campaigns', 'module', 90, 0),
('92f71eb4-4482-22a6-dd62-6253c7f2dbe8', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'EmailMarketing', 'module', 90, 0),
('939d8e37-2b99-a22d-fba8-6253c81a721a', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'jjwg_Address_Cache', 'module', 90, 0),
('93df328f-296b-421f-7039-6253c7d6dbcb', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'ProjectTask', 'module', 90, 0),
('93fa5e4c-e21f-2d69-2f70-6253c8d8fccb', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'jjwg_Maps', 'module', 89, 0),
('941b0fcd-9f92-d745-4e82-6253c82776c5', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'SurveyQuestions', 'module', 90, 0),
('945d91d1-8e29-db8a-b7b6-65bba2ddb9e3', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'edit', 'ExternalOAuthConnection', 'module', 90, 0),
('9461cf37-f741-077e-dbdd-6253c7018c36', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'AM_TaskTemplates', 'module', 90, 0),
('9483ca41-15e9-873c-d1ff-6253c7bee7ac', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'AOS_Products', 'module', 90, 0),
('94f7dd96-cabd-a4f3-8966-6253c727d1ad', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'FP_Event_Locations', 'module', 90, 0),
('95463550-efe0-6462-8aaf-6253c7c21a65', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'Opportunities', 'module', 90, 0),
('95b8d216-d29f-406b-06cd-6253c8a80bc0', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'TemplateSectionLine', 'module', 89, 0),
('95dc4001-f33a-c915-13a3-6253c7956363', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'Emails', 'module', 89, 0),
('95f56d81-9cb0-a497-45bd-6253c75bd5ca', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'AOD_IndexEvent', 'module', 90, 0),
('974dd001-6f6f-3ff0-19f6-6253c79d4e7a', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'Campaigns', 'module', 90, 0),
('981b11bc-3843-8ff0-68bc-65bba2147af8', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'delete', 'ExternalOAuthConnection', 'module', 90, 0),
('9844406b-1220-f27d-2c1f-6253c7792fb4', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'ProjectTask', 'module', 90, 0),
('98aa51ca-4017-dec9-0d26-6253c76f0ad4', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'AOS_Products', 'module', 90, 0),
('993b1cb9-b4b0-93b7-a95f-6253c89d3029', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'jjwg_Address_Cache', 'module', 90, 0),
('999b6f55-6882-1866-3355-6253c781e670', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'FP_Event_Locations', 'module', 90, 0),
('99ab40e1-93ef-ebf2-9bcc-6253c790f698', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'Opportunities', 'module', 90, 0),
('99b66e27-c7f6-f3e4-f53d-6253c83ae670', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'Surveys', 'module', 90, 0),
('9a332062-ff8f-bb6f-adb2-6253c7a648fd', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'EAPM', 'module', 90, 0),
('9a537005-404e-560d-aa66-6253c82ad814', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'jjwg_Maps', 'module', 90, 0),
('9a98f0c6-f95d-d36f-c583-6253c72697cb', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'AOD_IndexEvent', 'module', 90, 0),
('9ae7b431-1ad2-1962-62c8-6253c8085568', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'SurveyResponses', 'module', 90, 0),
('9af96511-867c-6cc1-e820-6253c7bc6654', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'AM_TaskTemplates', 'module', 90, 0),
('9b6f1a4a-f404-8620-5da8-6253c7561f00', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'Notes', 'module', 89, 0),
('9b831888-5e78-9fb7-d588-6253c8e7ce9e', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'SecurityGroups', 'module', 89, 0),
('9bce9afa-ff09-6510-bcb6-65bba2d46bc5', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'import', 'ExternalOAuthConnection', 'module', 90, 0),
('9be18d1a-2c2f-e047-5919-6253c7b5ecfd', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'Spots', 'module', 90, 0),
('9c595dca-fa4a-3cd3-86f2-6253c837a317', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'jjwg_Markers', 'module', 90, 0),
('9d44f7fa-8f8f-c32f-8689-6253c707704c', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'FP_Event_Locations', 'module', 90, 0),
('9de1ecfa-6650-22c1-8f44-6253c7288e32', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'ProjectTask', 'module', 90, 0),
('9e2cfc01-c225-4e4b-0629-6253c7a63558', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'Emails', 'module', 90, 0),
('9e447f34-fdce-bdf8-e967-6253c8d3a5b9', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'TemplateSectionLine', 'module', 90, 0),
('9e9837e6-51b5-747e-0b63-6253c73ac55b', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'EAPM', 'module', 90, 0),
('9ebf81c9-62b1-99b0-4f85-6253c743239a', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'AOD_IndexEvent', 'module', 90, 0),
('9f139f89-3322-1b84-cc5a-6253c81e70ae', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'jjwg_Areas', 'module', 90, 0),
('9f172c85-8806-ac85-1db6-6253c8f41c68', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'jjwg_Address_Cache', 'module', 90, 0),
('9f1df797-b49e-e647-1368-6253c701d338', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'Campaigns', 'module', 90, 0),
('9f6f52ed-7f86-aab5-e792-65bba2c0b4bf', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'export', 'ExternalOAuthConnection', 'module', 90, 0),
('9fd42217-24c6-d410-3341-6253c71ec724', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'Notes', 'module', 90, 0),
('a0bfe4e3-af49-4d33-7930-6253c7e40d6b', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'Opportunities', 'module', 90, 0),
('a0e1cbd9-2e3a-9809-5723-6253c7a92493', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'EmailMarketing', 'module', 90, 0),
('a0f77023-b010-9e11-7175-6253c7f571e3', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'AOS_Products', 'module', 90, 0),
('a15b32ec-e6ac-ef5e-231b-6253c7d55dd6', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'Prospects', 'module', 90, 0),
('a1c9fc21-73c1-68f8-6c9f-6253c7732ca0', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'ProjectTask', 'module', 90, 0),
('a2238023-0764-ec8c-fce1-6253c8887246', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'jjwg_Maps', 'module', 90, 0),
('a2270ed0-1cdd-4039-d999-6253c7d16367', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'FP_Event_Locations', 'module', 90, 0),
('a2420695-9a00-efda-1cb4-6253c868bfde', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'Surveys', 'module', 90, 0),
('a28c9172-f98f-ca8b-2cb9-6253c7daa8f1', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'ProspectLists', 'module', 90, 0),
('a2f650e2-0d07-5a91-044a-6253c8390fce', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'SurveyResponses', 'module', 90, 0),
('a3448c74-5642-404a-a7d9-6253c76055f5', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'Campaigns', 'module', 90, 0),
('a34d1b22-a6d2-beed-3ca6-65bba2c429e6', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'massupdate', 'ExternalOAuthConnection', 'module', 90, 0),
('a3b705e0-ef49-7de6-7969-6253c71d553b', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('a4e67c10-e873-e464-1a8c-6253c76a442b', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'Opportunities', 'module', 90, 0),
('a51173ba-7d75-52fb-d3c9-6253c7882df3', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'FP_events', 'module', 90, 0),
('a545f5ad-8833-9a05-f4cc-65bba28e6dde', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'access', 'InboundEmail', 'module', 89, 0),
('a55c83ea-cd9a-2007-05c7-6253c76bc6db', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'AOS_Products', 'module', 90, 0),
('a5f08105-4591-771a-23a1-6253c70f8891', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'ProjectTask', 'module', 90, 0),
('a63bde00-d669-ecdd-3511-6253c7adfa70', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'AOW_WorkFlow', 'module', 90, 0),
('a65bf51a-e44f-3615-4808-6253c861c8f2', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'jjwg_Markers', 'module', 90, 0),
('a6a6d813-8385-d3a9-3cb0-6253c71093c2', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'EAPM', 'module', 90, 0),
('a6e8caa1-9fb7-d6ae-9576-6253c74bfed5', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'Notes', 'module', 90, 0),
('a7a118bc-87db-a6e0-c892-6253c862b880', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'Surveys', 'module', 90, 0),
('a88014e6-f3c2-782d-bc48-6253c7f0f144', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'FP_Event_Locations', 'module', 90, 0),
('a893f9fa-7905-ce2a-9830-6253c8b4044f', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'SurveyResponses', 'module', 90, 0),
('a90d0602-2e77-d32c-17aa-6253c77ff200', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'Opportunities', 'module', 90, 0);
INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('a9449273-fd9d-083d-9adb-6253c7b1c1b0', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'AOS_Products', 'module', 90, 0),
('aa1045d9-684f-3952-87b5-6253c8ba27bf', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'jjwg_Areas', 'module', 90, 0),
('aa13d088-5246-e96a-bd48-6253c8de48e7', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'jjwg_Address_Cache', 'module', 90, 0),
('aa28f2ec-b37b-2a9d-e94d-6253c74632d1', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'EmailMarketing', 'module', 90, 0),
('aa559595-9d20-6e40-42a4-6253c7344c13', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'ProjectTask', 'module', 90, 0),
('aacd6e8d-6d44-5bb5-444e-6253c743cd95', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'EAPM', 'module', 90, 0),
('ab4dd8c3-8a17-8c73-c781-6253c73e8ce6', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'Notes', 'module', 90, 0),
('abc40cf1-25c5-2f2c-0663-6253c8228e89', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'SurveyQuestionOptions', 'module', 90, 0),
('ac49b0b2-3555-505b-fa93-6253c79d4f6d', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'Alerts', 'module', 89, 0),
('ac913d42-33cd-f08f-95c1-6253c73ec9f1', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'AOK_Knowledge_Base_Categories', 'module', 89, 0),
('ad203789-31e8-e228-8a65-6253c86969ff', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'jjwg_Maps', 'module', 90, 0),
('ad3ea903-adf6-5b2c-7865-6253c8483b90', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'Surveys', 'module', 90, 0),
('ad6b25e9-3f38-753f-d1d5-6253c7109479', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'AOS_Products', 'module', 90, 0),
('ada6387e-ab76-13cf-d30b-6253c8bfe114', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'TemplateSectionLine', 'module', 90, 0),
('addf2163-6ddd-70be-eae5-6253c7df4e46', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'FP_Event_Locations', 'module', 90, 0),
('ae3180fc-85dd-b7b3-0908-6253c85bf9d5', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'SurveyResponses', 'module', 90, 0),
('aed1e8be-b129-a5f0-a15c-6253c77fbd02', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'Meetings', 'module', 90, 0),
('aee798fc-2360-23b2-4e1d-6253c876268e', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'jjwg_Markers', 'module', 90, 0),
('aeeccee8-4487-dfb2-d1ba-6253c7b3d090', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'Spots', 'module', 90, 0),
('af1d1a0c-d117-65d6-e5fc-6253c7287782', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'AOS_Product_Categories', 'module', 90, 0),
('af35edc3-8b42-078c-1b64-6253c766c061', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'Notes', 'module', 90, 0),
('b2428a5f-06de-5148-445c-6253c71ac70f', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'AOS_PDF_Templates', 'module', 90, 0),
('b2644923-b678-565c-c0d0-6253c74d0488', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'Alerts', 'module', 90, 0),
('b282c8d5-6026-1164-c97e-6253c7e39f97', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'FP_Event_Locations', 'module', 90, 0),
('b39afb21-b260-6b1d-5af2-6253c7043ff7', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'Notes', 'module', 90, 0),
('b3ae9654-4a27-4d7c-31c2-6253c74dfddf', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'EmailMarketing', 'module', 90, 0),
('b3b7b5db-dd9b-f96d-11b2-6253c7591af3', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'FP_events', 'module', 90, 0),
('b3cf10c0-9370-371e-1ed3-6253c8611bcc', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'SurveyResponses', 'module', 90, 0),
('b41678ea-dbe4-2269-4532-6253c8258bc2', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'jjwg_Address_Cache', 'module', 90, 0),
('b42800fe-fb14-313b-9a6e-6253c784b336', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'Prospects', 'module', 90, 0),
('b5ca4159-b1b9-977f-28f9-6253c8b3a5d3', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'Surveys', 'module', 90, 0),
('b89d0105-1d89-7307-80b6-65bba247e7c5', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'view', 'SSI_Salary_Structure', 'module', 90, 0),
('b8e16ca0-0c26-ab2a-9365-6253c8bccfb3', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'TemplateSectionLine', 'module', 90, 0),
('b94a812b-b6f2-13dc-c32f-6253c75e53e8', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'AOK_KnowledgeBase', 'module', 89, 0),
('b9bec783-7e9d-6fd2-ffd4-6253c8f216da', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'Calls_Reschedule', 'module', 90, 0),
('ba72e9a9-b8f3-1c10-c66e-6253c7bd70dc', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'Alerts', 'module', 90, 0),
('bb67d88a-80ee-3664-ab46-6253c8277ab6', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'Surveys', 'module', 90, 0),
('bb75ea35-8461-de16-2325-6253c79054a3', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('bc16c088-c7c2-80b1-7e12-6253c8b6fb45', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'jjwg_Markers', 'module', 90, 0),
('bcb3a332-755b-d91a-32f1-6253c70ca698', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'Prospects', 'module', 90, 0),
('bcd78016-9d18-b672-569a-6253c7e4cc12', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'Spots', 'module', 90, 0),
('bd2098c3-e46c-8f04-8743-6253c7106808', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'Notes', 'module', 90, 0),
('bd343941-c7f0-c197-52c3-6253c78cec42', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'EmailMarketing', 'module', 90, 0),
('bd600bb2-ff5b-0d6e-6bde-6253c7b7b7d6', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'Bugs', 'module', 90, 0),
('bd7119ee-9b8e-cc2e-7f51-6253c7eeb9fb', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'AOK_KnowledgeBase', 'module', 90, 0),
('bf0a4ed1-cff5-244a-9087-6253c8f713ed', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'SurveyResponses', 'module', 90, 0),
('bf754401-c6c0-43a6-4ff4-6253c78d82bb', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'AOS_Product_Categories', 'module', 89, 0),
('bfdaf1c5-c691-b865-ddf7-6253c719cf0e', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('c16d041b-94ce-e6a7-16c2-6253c8b82a72', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'TemplateSectionLine', 'module', 90, 0),
('c193f890-3310-0801-eba3-6253c71123ed', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'Emails', 'module', 90, 0),
('c24456dd-9fc1-0b8b-dead-65bba2ccd196', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'access', 'SSI_Leaves', 'module', 89, 0),
('c2500a0d-fd88-2895-d509-6253c8226110', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'SurveyQuestionResponses', 'module', 90, 0),
('c2c00459-cb29-951d-9f11-6253c747ce77', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'AOW_WorkFlow', 'module', 90, 0),
('c2dc01c7-21d5-d61d-b1e8-6253c72f7a1c', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'AOS_Contracts', 'module', 90, 0),
('c30ebcdb-7159-3640-9f05-6253c7f7583e', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'AOK_KnowledgeBase', 'module', 90, 0),
('c3441489-a06b-a781-2822-6253c77397bb', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'ProspectLists', 'module', 90, 0),
('c34b396e-299a-e8e0-5bda-6253c73f5ab6', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'Prospects', 'module', 90, 0),
('c3da5094-81b3-5b06-fc30-6253c7fe5ef7', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'AOS_Product_Categories', 'module', 90, 0),
('c3e6ee8d-34cd-367c-7a4e-6253c8c41cf3', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'jjwg_Markers', 'module', 90, 0),
('c40c6394-ae41-a0a0-727d-6253c88792de', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'AOW_Processed', 'module', 90, 0),
('c435396a-3010-8e6d-3d32-6253c7b072c0', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'Notes', 'module', 90, 0),
('c490853f-4adf-e432-5ad5-6253c82b80a1', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'jjwg_Maps', 'module', 90, 0),
('c5ae1119-b2b6-e88d-2b42-6253c7af1ee4', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'Alerts', 'module', 90, 0),
('c5da9f62-6ce7-d2c9-8a8a-65bba29d4566', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'view', 'SSI_Leaves', 'module', 90, 0),
('c773c092-a8a7-888a-d07f-6253c7053182', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'AOK_KnowledgeBase', 'module', 90, 0),
('c79ec214-b7e6-5c48-4535-6253c8d4db10', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'jjwg_Address_Cache', 'module', 90, 0),
('c7bcf158-0eaa-c088-b442-6253c790c000', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'FP_events', 'module', 90, 0),
('c7e9b58e-81dc-5d6f-ff08-6253c74656b0', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'AOW_WorkFlow', 'module', 89, 0),
('c800e031-7d91-9a0e-0fa8-6253c76eecd5', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'AOS_Product_Categories', 'module', 90, 0),
('c82bc34d-c135-18f0-5152-6253c794d666', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'AOW_WorkFlow', 'module', 90, 0),
('c9474d33-9f31-13af-9641-65bba255ea78', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'list', 'SSI_Leaves', 'module', 90, 0),
('c9ba25b3-d669-25dc-108d-6253c85bbe9f', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'TemplateSectionLine', 'module', 90, 0),
('c9f15c21-fa39-a691-b6aa-6253c73de256', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'AOS_PDF_Templates', 'module', 90, 0),
('ca06e41a-7d8e-dc68-894f-6253c862dd70', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'SurveyResponses', 'module', 90, 0),
('cb3805c6-e97a-b615-7d5c-6253c79c6a28', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'Meetings', 'module', 89, 0),
('cb4ba9f8-46fd-6f2e-7e33-6253c77d6bb2', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'Alerts', 'module', 90, 0),
('cb9a51f8-6680-1e45-b346-6253c74d18d7', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'AOK_KnowledgeBase', 'module', 90, 0),
('cc65fdd6-4c79-f93e-b8c2-6253c7aad74f', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'AOS_Product_Categories', 'module', 90, 0),
('cca0ee93-f5d5-d2f3-37c8-65bba24d7d40', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'edit', 'SSI_Leaves', 'module', 90, 0),
('cd1c2bb2-8269-139d-cdfc-6253c823c3f4', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'jjwg_Maps', 'module', 90, 0),
('cd489744-472f-e982-6184-6253c74b5f2c', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'Emails', 'module', 90, 0),
('ce22086d-9f9d-1dd8-3f8b-6253c73a04bb', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'AOR_Scheduled_Reports', 'module', 90, 0),
('cef71e54-5574-ccc2-004f-6253c7eb8632', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'AM_ProjectTemplates', 'module', 89, 0),
('cfc0e3a6-604f-6f31-5be9-6253c761b9c1', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'AOK_KnowledgeBase', 'module', 90, 0),
('d04a7d36-714a-e05c-1bac-6253c7a1c865', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'AOS_PDF_Templates', 'module', 90, 0),
('d04e0422-f76a-55ba-142f-6253c7857cd3', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'AOS_Product_Categories', 'module', 90, 0),
('d09f706c-3021-6799-59c7-65bba252274d', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'delete', 'SSI_Leaves', 'module', 90, 0),
('d0bcdb2c-0201-417f-a11c-6253c83019e4', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'SecurityGroups', 'module', 90, 0),
('d0e949ea-d64e-d564-6479-6253c7dae7c7', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'Alerts', 'module', 90, 0),
('d1e00e3a-410a-d8f7-1b9b-65bba24e7c41', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'export', 'SSI_Salary_Slip', 'module', 90, 0),
('d1e5e3c8-0dc5-180c-407e-65bba206f0ff', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'access', 'ExternalOAuthProvider', 'module', 89, 0),
('d1f3a3e3-5314-b217-1b38-6253c866e76b', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'SurveyQuestionOptions', 'module', 89, 0),
('d39aa27b-65e4-f62e-41e6-6253c77bc146', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'AM_ProjectTemplates', 'module', 90, 0),
('d3a5578e-2e6d-c6c1-8cd1-6253c762f5a5', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('d3a8e083-80fe-da5d-b3ce-6253c7daa676', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'AOK_KnowledgeBase', 'module', 90, 0),
('d4912f0c-cab1-07e7-91dc-65bba203cdec', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'import', 'SSI_Leaves', 'module', 90, 0),
('d52ace4f-6431-e740-a769-6253c8ed098a', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'jjwg_Maps', 'module', 90, 0),
('d5de2075-abc1-53ef-81de-65bba23fe7d3', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'view', 'ExternalOAuthProvider', 'module', 90, 0),
('d66c5580-af94-a707-c743-6253c85cefb0', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'TemplateSectionLine', 'module', 90, 0),
('d686d665-9440-fb15-7d05-6253c7d60535', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'Alerts', 'module', 90, 0),
('d6a384aa-e30c-68fe-86a6-6253c72b0b21', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'AOS_PDF_Templates', 'module', 90, 0),
('d7f16829-5922-6c22-4e1b-6253c7a975e1', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'Spots', 'module', 90, 0),
('d80e0e98-1dc3-807e-a831-6253c71eb645', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'AOK_KnowledgeBase', 'module', 90, 0),
('d82120bc-f092-24d6-3819-65bba296b97e', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'export', 'SSI_Leaves', 'module', 90, 0),
('d8d9a0a7-6449-381c-f067-6253c7013bc4', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'AOS_Product_Categories', 'module', 90, 0),
('d9513f67-8673-284a-db34-6253c7795e1f', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'FP_events', 'module', 90, 0),
('da1a8ad0-2d18-3806-211b-65bba25549b7', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'list', 'ExternalOAuthProvider', 'module', 90, 0),
('da330de0-b206-164b-b07d-6253c8b92651', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'SurveyQuestions', 'module', 90, 0),
('da70b42f-6ba9-b6dc-0884-6253c729f39d', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'AM_ProjectTemplates', 'module', 90, 0),
('da781218-c081-35f0-9955-6253c81731db', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'SurveyQuestions', 'module', 89, 0),
('daca1600-87a8-3297-726e-6253c741d59e', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'AOS_PDF_Templates', 'module', 90, 0),
('db75b8d2-0a1d-2c2d-d00a-6253c87eeb1e', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'SurveyQuestions', 'module', 90, 0),
('db956586-3bfc-88e7-e121-65bba299fb90', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'massupdate', 'SSI_Leaves', 'module', 90, 0),
('dc69f2fa-46b6-4acf-67fe-6253c7a3703b', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'ProspectLists', 'module', 90, 0),
('dd2ec133-770e-74fd-0f72-6253c8563fae', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'SurveyQuestionOptions', 'module', 90, 0),
('dd4c0bb3-2880-15b9-c5b8-6253c73202e4', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'ProjectTask', 'module', 89, 0),
('dd77e3c3-8bc9-d77b-fe62-6253c86b0e8c', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'jjwg_Maps', 'module', 90, 0),
('dd8321ab-df90-0ede-4e87-65bba2345722', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'edit', 'ExternalOAuthProvider', 'module', 90, 0),
('de1a497c-0522-e7fb-ff12-6253c7507831', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'AM_ProjectTemplates', 'module', 90, 0),
('e0308b1e-c93d-c2c9-15b2-65bba2eb33d4', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'access', 'SSI_Salary_Slip', 'module', 89, 0),
('e0cf0fa3-972f-a7f2-3e40-6253c774254a', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'ProspectLists', 'module', 90, 0),
('e12b37be-18fc-c7f6-a9f7-65bba2a7b7fb', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'delete', 'ExternalOAuthProvider', 'module', 90, 0),
('e1837481-f619-96c1-4965-6253c7f229b6', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'Alerts', 'module', 90, 0),
('e240dcf5-d678-9536-4320-6253c76845c0', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'delete', 'AM_ProjectTemplates', 'module', 90, 0),
('e31e8a68-0b79-30de-547f-6253c87170e7', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'TemplateSectionLine', 'module', 90, 0),
('e3ef15ae-c9bc-a63e-3460-6253c75bf511', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'EmailTemplates', 'module', 89, 0),
('e4087898-460d-22c8-cece-65bba2daea1a', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'view', 'SSI_Salary_Slip', 'module', 90, 0),
('e4351606-bc90-1341-58cb-6253c86a7190', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'SurveyQuestionResponses', 'module', 89, 0),
('e4a35353-8125-d749-c8b6-65bba23f5213', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'import', 'ExternalOAuthProvider', 'module', 90, 0),
('e4f590e6-c705-90db-f030-6253c7f4142d', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'ProspectLists', 'module', 90, 0),
('e5209ff9-7105-ea35-c9f7-6253c7f4b740', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'Spots', 'module', 90, 0),
('e5f53d37-f8b0-b403-d6fc-6253c7bc003f', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'AOW_WorkFlow', 'module', 90, 0),
('e6b62419-2ad6-5404-9912-6253c8219ed5', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'SecurityGroups', 'module', 90, 0),
('e6e46c9a-33a9-8149-ff4b-6253c7dd1990', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'AM_ProjectTemplates', 'module', 90, 0),
('e6fd7ada-fea9-d633-32aa-6253c77b4408', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'FP_events', 'module', 90, 0),
('e792deb6-2c8d-caac-d505-65bba2ddd0a1', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'list', 'SSI_Salary_Slip', 'module', 90, 0),
('e8061778-1128-ce2f-4fcc-65bba2c2d581', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'export', 'ExternalOAuthProvider', 'module', 90, 0),
('ead807a9-2748-e2f0-c9d9-65bba2b5c708', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'edit', 'SSI_Salary_Slip', 'module', 90, 0),
('eadf0849-e487-eed0-edd4-65bba2e0c123', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'list', 'SSI_Salary_Structure', 'module', 90, 0),
('eb03b824-ef68-b478-d4ed-6253c795e83b', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'EmailTemplates', 'module', 90, 0),
('eb7d3d8f-ff31-143a-f893-65bba2e8a50d', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'massupdate', 'ExternalOAuthProvider', 'module', 90, 0),
('ed7c0eb8-03c5-7bec-7c2a-6253c78d8c14', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'export', 'AM_ProjectTemplates', 'module', 90, 0),
('ee1c6bd2-e8e0-a5c5-802b-65bba29ff9dd', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'delete', 'SSI_Salary_Slip', 'module', 90, 0),
('ee424eb5-c12a-bc42-bbe7-6253c7f0c9b0', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'import', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('f0f59cd9-40a4-d82d-cef6-6253c8e75e56', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'list', 'SurveyQuestionOptions', 'module', 90, 0),
('f164150c-4efb-20f0-e4c2-6253c7551074', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'massupdate', 'AM_ProjectTemplates', 'module', 90, 0),
('f16b720f-e9f0-f68e-9f98-6253c8100770', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'view', 'SurveyQuestions', 'module', 90, 0),
('f17084c5-aef4-dff2-50dc-65bba2a5123d', '2024-02-01 13:55:17', '2024-02-01 13:55:17', '1', '1', 'import', 'SSI_Salary_Slip', 'module', 90, 0),
('f2dcf5be-125a-601b-e9f5-6253c758b638', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'access', 'AOR_Scheduled_Reports', 'module', 89, 0),
('f8890fbe-cc0e-4de1-a304-6253c70d1abd', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '', 'edit', 'EmailTemplates', 'module', 90, 0);

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles`
--

CREATE TABLE `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles_actions`
--

CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int(3) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles_users`
--

CREATE TABLE `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `address_book`
--

CREATE TABLE `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE `alerts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `target_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url_redirect` varchar(255) DEFAULT NULL,
  `reminder_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates`
--

CREATE TABLE `am_projecttemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `priority` varchar(100) DEFAULT 'High',
  `override_business_hours` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_audit`
--

CREATE TABLE `am_projecttemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_contacts_1_c`
--

CREATE TABLE `am_projecttemplates_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `contacts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_project_1_c`
--

CREATE TABLE `am_projecttemplates_project_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_project_1am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_projecttemplates_project_1project_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_users_1_c`
--

CREATE TABLE `am_projecttemplates_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `users_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_tasktemplates`
--

CREATE TABLE `am_tasktemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `priority` varchar(100) DEFAULT 'High',
  `percent_complete` int(255) DEFAULT '0',
  `predecessors` int(255) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT '0',
  `relationship_type` varchar(100) DEFAULT 'FS',
  `task_number` int(255) DEFAULT NULL,
  `order_number` int(255) DEFAULT NULL,
  `estimated_effort` int(255) DEFAULT NULL,
  `utilization` varchar(100) DEFAULT '0',
  `duration` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_tasktemplates_am_projecttemplates_c`
--

CREATE TABLE `am_tasktemplates_am_projecttemplates_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_tasktemplates_am_projecttemplatesam_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_tasktemplates_am_projecttemplatesam_tasktemplates_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_tasktemplates_audit`
--

CREATE TABLE `am_tasktemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aobh_businesshours`
--

CREATE TABLE `aobh_businesshours` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `opening_hours` varchar(100) DEFAULT '1',
  `closing_hours` varchar(100) DEFAULT '1',
  `open_status` tinyint(1) DEFAULT NULL,
  `day` varchar(100) DEFAULT 'monday'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aod_index`
--

CREATE TABLE `aod_index` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `last_optimised` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aod_index`
--

INSERT INTO `aod_index` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `last_optimised`, `location`) VALUES
('1', 'Index', '2022-04-11 06:21:12', '2022-04-11 06:21:12', '1', '1', NULL, 0, NULL, NULL, 'modules/AOD_Index/Index/Index');

-- --------------------------------------------------------

--
-- Table structure for table `aod_indexevent`
--

CREATE TABLE `aod_indexevent` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `error` varchar(255) DEFAULT NULL,
  `success` tinyint(1) DEFAULT '0',
  `record_id` char(36) DEFAULT NULL,
  `record_module` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aod_indexevent`
--

INSERT INTO `aod_indexevent` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `error`, `success`, `record_id`, `record_module`) VALUES
('10bc8b6c-768a-32d9-c2f2-62d81cd197ef', 'Krunal Mehta Salary Slip of June 2022', '2022-07-20 15:16:17', '2022-07-20 15:16:17', '1', '1', NULL, 0, NULL, NULL, 1, 'b509ef21-f107-18a1-5ec6-62d81cc39a83', 'SSI_Salary_Slip'),
('10c53604-1aa7-9717-6fe5-62d7f6684ca8', 'Salary Slip of 4 2022', '2022-07-20 12:35:46', '2022-07-20 12:35:46', '1', '1', NULL, 0, NULL, NULL, 1, 'bce2aa16-d3f7-4988-0aba-62d7f699f211', 'SSI_Salary_Slip'),
('1187b5a0-1df4-72ff-165e-62d6b54da558', 'Salary Slip of 4 2022', '2022-07-19 13:43:34', '2022-07-19 13:43:34', '1', '1', NULL, 0, NULL, NULL, 1, 'cb273447-044d-bbdc-7de1-62d6b5b7508d', 'Notes'),
('11c205cd-6003-96cb-36f8-625e4b410bec', 'salary structure 1', '2022-04-19 05:42:02', '2022-04-19 05:42:02', '1', '1', NULL, 0, NULL, NULL, 1, 'b79d01f1-c5fe-9c64-82fb-625e4b3d5fd5', 'SSI_Salary_Structure'),
('12f9be40-f185-dd48-8d81-62d7f8860582', ' Salary Slip of Apr 2022', '2022-07-20 12:45:42', '2022-07-20 12:45:42', '1', '1', NULL, 0, NULL, NULL, 1, 'a2c4c0a6-10b3-eb63-4e5e-62d7f889fe0b', 'SSI_Salary_Slip'),
('131b98c6-fcfc-9446-73c5-62d81ce2219b', 'Bhargavi Patel Salary Slip of June 2022', '2022-07-20 15:15:37', '2022-07-20 15:15:37', '1', '1', NULL, 0, NULL, NULL, 1, '9c8d8ccf-88b7-2eb5-4f1f-62d81c2af857', 'SSI_Salary_Slip'),
('1369ada3-e224-2340-84c4-65a7afd67e4e', '', '2024-01-17 10:43:26', '2024-01-17 10:43:26', '1', '1', NULL, 0, NULL, NULL, 1, 'bf0aa429-ead1-778d-7afc-65a7af7adfe3', 'Documents'),
('16049559-76cd-cbb7-5036-62d6b47a9ed0', 'Salary Slip of 2 2022', '2022-07-19 13:40:19', '2022-07-19 13:40:19', '1', '1', NULL, 0, NULL, NULL, 1, '176738ff-d568-965e-f232-62d6b4bbf848', 'Notes'),
('174051b0-a257-d954-b7ac-62d78dea9872', 'Salary Slip of 7 2022', '2022-07-20 05:05:46', '2022-07-20 05:05:46', '1', '1', NULL, 0, NULL, NULL, 1, 'ceaadda1-15c4-9854-40a1-62d78df88bb0', 'Notes'),
('187182d9-2b2c-e619-2078-65a8c605ec61', 'torrent-15-01-2023.pdf', '2024-01-18 06:34:34', '2024-01-18 06:34:34', '1', '1', NULL, 0, NULL, NULL, 1, 'cdcd10ed-b1be-6bf3-3276-65a8c6feb72e', 'Documents'),
('1aaf5241-5d81-8fe4-bd36-65a8ce206dc0', 'Arati Barvadiya Salary Slip of Dec 2023', '2024-01-18 07:06:42', '2024-01-18 07:06:42', '1', '1', NULL, 0, NULL, NULL, 1, '31c008ff-ad29-070d-26f2-65a8ce9ecf09', 'SSI_Salary_Slip'),
('1dbcc5df-41b5-6ed8-88e9-62dfd969b0c2', 'Krunal Mehta Salary Slip of Apr 2022', '2022-07-26 12:09:54', '2022-07-26 12:09:54', '1', '1', NULL, 0, NULL, NULL, 1, 'ba7e030a-4fb9-e9d0-d13d-62dfd95aca4c', 'Notes'),
('1ef73099-d51e-28ed-f737-62d8173e2d6a', 'Arati(2021-22)', '2022-07-20 14:56:34', '2022-07-20 14:56:54', '1', '1', NULL, 0, '', NULL, 1, 'd0353d18-3eb3-bc22-aa31-62d81707226d', 'SSI_Salary_Structure'),
('20857c63-99d5-0436-59bc-62d819832f8c', 'Kaushal Mehta Salary Slip of May 2022', '2022-07-20 15:05:24', '2022-07-20 15:05:24', '1', '1', NULL, 0, NULL, NULL, 1, 'c5cccb33-b6d8-9c61-1cbf-62d819b936eb', 'SSI_Salary_Slip'),
('21e1e5b8-e35c-1b25-e69f-62d8157df4ea', 'Krunal_Adhar_Card.pdf', '2022-07-20 14:48:41', '2022-07-20 14:48:41', '1', '1', NULL, 0, NULL, NULL, 1, '64474abc-8759-a56d-df7a-62d81530e163', 'Documents'),
('22bb3f37-36b1-d94e-94e1-62d8139b5ce0', 'Atir_Pan_Card.jpeg', '2022-07-20 14:37:10', '2022-07-20 14:37:10', '1', '1', NULL, 0, NULL, NULL, 1, '972ddfaf-4cff-c625-21b9-62d813aca5d7', 'Documents'),
('238bbe44-5d2c-0437-c85d-62d818ce18fd', 'Kaushal Mehta Salary Slip of Apr 2022', '2022-07-20 15:01:26', '2022-07-20 15:01:26', '1', '1', NULL, 0, NULL, NULL, 1, 'd6fc3424-acbd-a32c-6627-62d818fb00a8', 'SSI_Salary_Slip'),
('239e0b88-1268-5535-e5fd-625e56645bf5', 'salary structure 3', '2022-04-19 06:28:45', '2022-04-19 06:28:45', '1', '1', NULL, 0, NULL, NULL, 1, '4a1974e1-7baf-df0e-bea0-625e563f9749', 'SSI_Salary_Structure'),
('241c0fe3-216a-04d5-69c9-62590cd7bd87', 'structure2', '2022-04-15 06:13:14', '2022-04-15 06:13:14', '1', '1', NULL, 0, NULL, NULL, 1, '86687de9-36bf-1057-d6c4-62590cd819e7', 'SSI_Salary_Structure'),
('24cb8f31-8275-f35d-b374-62d7fbc10129', 'Bhargavi Patel Salary Slip of Apr 2022', '2022-07-20 12:58:31', '2022-07-20 12:58:31', '1', '1', NULL, 0, NULL, NULL, 1, 'b5cf1054-09ff-7fb3-6127-62d7fbe11370', 'SSI_Salary_Slip'),
('2507835c-2b93-ee99-3513-62d81c51d0a2', 'Kaushal Mehta Salary Slip of June 2022', '2022-07-20 15:16:20', '2022-07-20 15:16:20', '1', '1', NULL, 0, NULL, NULL, 1, '2d9004bb-cdab-6459-ca39-62d81cb7fcb3', 'SSI_Salary_Slip'),
('25f60c3b-5bc5-45b8-00d1-62d81d46f008', 'Bhargavi Patel Salary Slip of May 2022', '2022-07-20 15:21:14', '2022-07-20 15:21:14', '1', '1', NULL, 0, NULL, NULL, 1, 'd251f3e3-7723-b92d-964b-62d81d0dd43d', 'SSI_Salary_Slip'),
('2931be12-bb2e-fb93-13c9-62d81ade3640', 'Bhargavi(2022-23)', '2022-07-20 15:07:54', '2022-07-20 15:14:49', '1', '1', NULL, 0, '', NULL, 1, 'bdded22c-e468-f496-93b0-62d81aaa2f97', 'SSI_Salary_Structure'),
('29a23d04-489e-7157-41fc-62d80b13d932', 'Mrs. Pooja Chavda', '2022-07-20 14:06:04', '2022-07-20 14:10:55', '1', '1', NULL, 0, '', NULL, 1, 'ba28c9d0-5f37-5410-8f37-62d80b666572', 'Contacts'),
('2bf5ef97-a523-9a9d-3eeb-65aa7ef3c0fe', 'Brinda Patel Salary Slip of Dec 2023', '2024-01-19 13:50:59', '2024-01-19 13:50:59', '1', '1', NULL, 0, NULL, NULL, 1, 'da8c5fb8-d268-7679-b3d0-65aa7eabff65', 'SSI_Salary_Slip'),
('2c88ccee-9ae4-9c7b-e298-625e9e8ea25a', 'SixthSenseInfo', '2022-04-19 11:36:31', '2022-07-21 12:13:10', '1', '1', NULL, 0, '', NULL, 1, '57c24f8d-10c1-71a0-5843-625e9e228abd', 'Accounts'),
('2f4047d0-cdbe-df34-1e01-62d818c1b4d3', 'Brinda Patel Salary Slip of Apr 2022', '2022-07-20 15:01:26', '2022-07-20 15:01:26', '1', '1', NULL, 0, NULL, NULL, 1, 'e4e35a5d-81ab-4bca-49ed-62d81810d336', 'SSI_Salary_Slip'),
('3127e9d1-8e14-123c-1856-632169419050', 'Ruchita Nakrani Salary Slip of Aug 2022', '2022-09-14 05:40:11', '2022-09-14 05:40:11', '1', '1', NULL, 0, NULL, NULL, 1, 'c8c20766-ff47-bcbf-81fe-6321697e9ed9', 'Notes'),
('32d2e98a-56d8-93c0-c483-65aa7ed4dbbd', 'Kaushal Mehta Salary Slip of Dec 2023', '2024-01-19 13:51:00', '2024-01-19 13:51:00', '1', '1', NULL, 0, NULL, NULL, 1, 'dcdbf575-d96e-b4a3-60c1-65aa7e3510da', 'SSI_Salary_Slip'),
('39c5da8f-b9de-40d9-e012-65a8ce9d9403', 'Kaushal Mehta Salary Slip of Dec 2023', '2024-01-18 07:06:42', '2024-01-18 07:06:42', '1', '1', NULL, 0, NULL, NULL, 1, '209e6783-a18f-4a7a-cac9-65a8cef33fcb', 'SSI_Salary_Slip'),
('3a2dc4ab-d0b3-65e2-5dc4-62d78d07f0c5', 'Salary Slip of 2 2022', '2022-07-20 05:05:15', '2022-07-20 05:05:15', '1', '1', NULL, 0, NULL, NULL, 1, '862400e4-2eaf-3aac-9597-62d78d41edd6', 'Notes'),
('3b2d2060-72ef-a3f6-5b4b-62dfd98815cf', 'Krunal Mehta Salary Slip of May 2022', '2022-07-26 12:11:14', '2022-07-26 12:11:14', '1', '1', NULL, 0, NULL, NULL, 1, 'e3df93f5-7af4-df1a-a1d1-62dfd94efe03', 'Notes'),
('3cf21516-22d4-c626-8e9b-62d8104dac1b', 'Kaushal(2022-23)', '2022-07-20 14:27:22', '2022-07-20 14:27:22', '1', '1', NULL, 0, NULL, NULL, 1, 'e9cb1005-8f3e-91d2-2231-62d810ed1db8', 'SSI_Salary_Structure'),
('3d9d7931-b52b-31cd-2004-62d8164b98f6', 'Brinda(2021-22))', '2022-07-20 14:53:31', '2022-07-20 14:53:31', '1', '1', NULL, 0, NULL, NULL, 1, 'a9077c7b-3655-18f9-e600-62d8161874e0', 'SSI_Salary_Structure'),
('3f3e23aa-edb4-e06c-294c-62d78d99dacf', 'Salary Slip of 3 2022', '2022-07-20 05:07:10', '2022-07-20 05:07:10', '1', '1', NULL, 0, NULL, NULL, 1, 'dae0f8f9-51d2-6089-deec-62d78d1e8578', 'SSI_Salary_Slip'),
('3fadec18-3947-1fb1-0b53-65aa7e5c1c33', 'Krunal Mehta Salary Slip of Dec 2023', '2024-01-19 13:50:59', '2024-01-19 13:50:59', '1', '1', NULL, 0, NULL, NULL, 1, 'f091c166-3cd8-21ed-ac7e-65aa7e49dbb8', 'SSI_Salary_Slip'),
('409b4276-ac93-49ef-47ef-62d80321023b', 'Bhargavi Patel Salary Slip of Apr 2022', '2022-07-20 13:32:35', '2022-07-20 13:32:35', '1', '1', NULL, 0, NULL, NULL, 1, '250465b9-8ce6-9080-e9c1-62d8035f21c5', 'Notes'),
('40e823a3-3410-4c35-f197-62de5f04a9e1', 'Krunal_Pan_Card.pdf', '2022-07-25 09:18:40', '2022-07-25 09:18:40', '1', '1', NULL, 0, NULL, NULL, 1, '3470e333-3df1-ef26-0095-62de5f446f58', 'Documents'),
('4490fc12-aee5-99e3-610b-632165e21e93', 'Miss Ruchita Nakrani', '2022-09-14 05:26:09', '2022-09-14 05:39:17', '1', '1', NULL, 0, '', NULL, 1, '6a85d251-6616-187d-a1e6-63216563d408', 'Contacts'),
('4655bec0-3308-00cf-c61d-62d6a7fc3e77', 'Salary Slip of 7 2022', '2022-07-19 12:47:11', '2022-07-19 12:47:11', '1', '1', NULL, 0, NULL, NULL, 1, '3a57842a-f035-1d49-2890-62d6a7ae2ad3', 'Notes'),
('47910cab-aaab-c138-f04c-65a8c5dea590', 'electricity-A+_15477.pdf', '2024-01-18 06:28:25', '2024-01-18 06:28:25', '1', '1', NULL, 0, NULL, NULL, 1, '2c5ab904-0719-a875-73c1-65a8c55a165d', 'DocumentRevisions'),
('47db80e8-57a0-2e0b-e299-62d817993d4f', 'Mrs. Arati Barvadiya', '2022-07-20 14:55:50', '2022-07-20 14:55:50', '1', '1', NULL, 0, NULL, NULL, 1, 'a9fe604d-5017-3ed8-7155-62d817e28437', 'Contacts'),
('488b45e1-67e3-b0e6-752e-625e7906eaef', 'Bhargavi(2021-22)', '2022-04-19 08:57:02', '2022-07-20 15:19:26', '1', '1', NULL, 0, '', NULL, 1, '56042f85-8217-bc06-0986-625e799e4562', 'SSI_Salary_Structure'),
('4c5981f0-b162-a50e-6205-65a8c65d2700', 'Office_Advance_Entertainment.pdf', '2024-01-18 06:32:35', '2024-01-18 06:32:35', '1', '1', NULL, 0, NULL, NULL, 1, '2c73f22f-f4af-51a3-67c4-65a8c60599f4', 'DocumentRevisions'),
('4d4f75b2-3377-12fa-4698-65a7afa596ab', '', '2024-01-17 10:43:27', '2024-01-17 10:43:27', '1', '1', NULL, 0, NULL, NULL, 1, '365c0156-b099-c1ba-df00-65a7af33b297', 'Documents'),
('53470527-935e-cfa3-0cc5-62d819250964', 'Atir Sakhrelia Salary Slip of May 2022', '2022-07-20 15:05:23', '2022-07-20 15:05:23', '1', '1', NULL, 0, NULL, NULL, 1, 'e2e8029d-97de-2b12-7078-62d819d16713', 'SSI_Salary_Slip'),
('5499cedd-c79d-dd10-1681-62d81d8b50fa', 'Bhargavi Patel Salary Slip of Apr 2022', '2022-07-20 15:20:22', '2024-01-22 10:42:15', '1', '1', NULL, 0, '', NULL, 1, '1983f098-425d-e6e6-3600-62d81d0ce201', 'SSI_Salary_Slip'),
('5584ffb3-dbb1-0a2b-b194-625fe2c2154a', 'Salary Slip of 2 2022', '2022-04-20 10:37:17', '2022-07-19 06:34:16', '1', '1', NULL, 0, '', NULL, 1, '4fb8bd8a-334e-8639-ab7c-625fe22a8872', 'SSI_Salary_Slip'),
('58479a92-9f26-36f7-844a-62d80f24a077', 'Pooja(2022-23)', '2022-07-20 14:21:49', '2022-07-20 14:28:04', '1', '1', NULL, 0, '', NULL, 1, 'b9d7044d-40f3-c68f-7cdc-62d80f9184f3', 'SSI_Salary_Structure'),
('5ca6393d-b61b-7452-3575-65a7d8bd3b6a', 'GST_Dec_Challan_2023.pdf', '2024-01-17 13:39:06', '2024-01-17 13:39:06', '1', '1', NULL, 0, NULL, NULL, 1, '260c1597-a961-64f1-de7e-65a7d8bb45f0', 'DocumentRevisions'),
('5e474c08-3301-70a9-2950-62d81948494a', 'Pooja Chavda Salary Slip of May 2022', '2022-07-20 15:05:24', '2022-07-20 15:05:24', '1', '1', NULL, 0, NULL, NULL, 1, '177933ab-4ad4-a0d2-1f94-62d819012a80', 'SSI_Salary_Slip'),
('5f80f6e6-33bb-a767-3afc-65a8ce92bc48', 'Ruchita Nakrani Salary Slip of Dec 2023', '2024-01-18 07:06:41', '2024-01-18 07:06:41', '1', '1', NULL, 0, NULL, NULL, 1, '474ccd4a-4100-2531-0766-65a8cec5f290', 'SSI_Salary_Slip'),
('604e8d22-1a1b-a31b-c7da-62d6a351ffd6', 'Salary Slip of 7 2022', '2022-07-19 12:30:17', '2022-07-19 12:30:17', '1', '1', NULL, 0, NULL, NULL, 1, 'aeba2223-41e2-70ee-eeb2-62d6a3def380', 'Notes'),
('611a21e7-aca7-14aa-dd76-62d792e04333', 'Salary Slip of 8 2022', '2022-07-20 05:28:23', '2022-07-20 05:28:23', '1', '1', NULL, 0, NULL, NULL, 1, '16eb04da-e98a-6c0e-b1d8-62d79214d5ce', 'Notes'),
('61db1a80-fb03-aeb0-dc1e-65a8c5ff1d93', 'electricity-A+_15477.pdf', '2024-01-18 06:28:25', '2024-01-18 06:28:25', '1', '1', NULL, 0, NULL, NULL, 1, '2a538aa5-d1c0-b66c-470e-65a8c5675a16', 'Documents'),
('63d5e0a1-b1da-4be9-dd07-62d792283249', 'Salary Slip of 8 2022', '2022-07-20 05:27:46', '2022-07-20 05:27:46', '1', '1', NULL, 0, NULL, NULL, 1, 'f016383e-958b-16bf-62bd-62d792a19340', 'SSI_Salary_Slip'),
('6826ff34-8a6f-1ac7-3725-62d812581532', 'Mr. Atir Sakhrelia', '2022-07-20 14:33:46', '2022-07-20 14:35:02', '1', '1', NULL, 0, '', NULL, 1, 'e2f2a163-5f31-accd-1800-62d81261cd19', 'Contacts'),
('6965205f-530d-9389-d617-632166b2e7f6', 'Ruchita (2022-23)', '2022-09-14 05:30:30', '2022-09-14 05:31:44', '1', '1', NULL, 0, '', NULL, 1, '116744a6-2c22-2afe-645b-632166e6a9f5', 'SSI_Salary_Structure'),
('6e879e17-fac1-4d56-49e8-65a8c6296fa5', 'Office_Advance_Entertainment.pdf', '2024-01-18 06:32:35', '2024-01-18 06:32:35', '1', '1', NULL, 0, NULL, NULL, 1, '2ae44a11-4c12-bee7-d969-65a8c66767fc', 'Documents'),
('6f97f30e-7da9-c766-7441-62d9406bcaa5', 'RR Consulting', '2022-07-21 12:03:17', '2022-07-29 10:13:37', '1', '1', NULL, 0, '', NULL, 1, 'dee8073b-ebbd-7ef2-4b6c-62d940d0a21f', 'Accounts'),
('74f61826-83bb-2d0a-9938-65a8c420ea07', 'ce_Fuel-12-12-2032.pdf', '2024-01-18 06:27:56', '2024-01-18 06:27:56', '1', '1', NULL, 0, NULL, NULL, 1, '5681efd6-0490-fab7-098f-65a8c4a4b0cd', 'DocumentRevisions'),
('797042fd-5d26-1243-f9fa-65a8c6392a4a', 'Professional-aa-124587.pdf', '2024-01-18 06:34:06', '2024-01-18 06:34:06', '1', '1', NULL, 0, NULL, NULL, 1, '5bf682e2-c8fb-48b8-f8a3-65a8c68cb475', 'DocumentRevisions'),
('7a629da6-3d0d-9ed0-8a63-62d81c2c2f04', 'Arati Barvadiya Salary Slip of June 2022', '2022-07-20 15:15:38', '2022-07-20 15:15:38', '1', '1', NULL, 0, NULL, NULL, 1, '24715ed6-77cd-8854-6e3e-62d81cbe784a', 'SSI_Salary_Slip'),
('7b0d1b5a-b4ab-ce18-101f-65a8c5fbc2e0', 'idea_airtel-4876.pdf', '2024-01-18 06:31:06', '2024-01-18 06:31:06', '1', '1', NULL, 0, NULL, NULL, 1, '60feab4e-1ce4-361c-85b6-65a8c59c5cb7', 'DocumentRevisions'),
('7babd803-ee4d-4555-d8df-62d818dd26b5', 'Pooja Chavda Salary Slip of Apr 2022', '2022-07-20 15:01:26', '2022-07-20 15:01:26', '1', '1', NULL, 0, NULL, NULL, 1, '3cec7380-576b-5b9d-7db6-62d8183aa732', 'SSI_Salary_Slip'),
('7c8f2b40-c769-e0d2-40bc-65a8cec5ee86', 'Krunal Mehta Salary Slip of Dec 2023', '2024-01-18 07:06:41', '2024-01-18 07:06:41', '1', '1', NULL, 0, NULL, NULL, 1, '6644db3d-dc19-8329-a2ea-65a8ce19d179', 'SSI_Salary_Slip'),
('7f2128d9-7e3d-4030-f77c-65aa7ee7d33a', 'Pooja Chavda Salary Slip of Dec 2023', '2024-01-19 13:51:00', '2024-01-19 13:51:00', '1', '1', NULL, 0, NULL, NULL, 1, '348cdf7d-573d-85b2-63d5-65aa7e851375', 'SSI_Salary_Slip'),
('7f4363b8-2b10-dd86-a960-625fdfa8b6dc', '', '2022-04-20 10:25:36', '2022-04-20 10:25:36', '1', '1', NULL, 0, NULL, NULL, 1, '174e892e-2857-0607-a34f-625fdf01a48f', 'SSI_Salary_Slip'),
('85600a44-d523-cc52-43b2-62d8195eb3cc', 'Brinda Patel Salary Slip of May 2022', '2022-07-20 15:05:23', '2022-07-20 15:05:23', '1', '1', NULL, 0, NULL, NULL, 1, 'b7618445-9a67-21e9-254c-62d8198954c9', 'SSI_Salary_Slip'),
('88a6af7f-d6d4-5f84-1ef1-65aa7edbe146', 'Bhargavi Patel Salary Slip of Dec 2023', '2024-01-19 13:50:59', '2024-01-19 13:50:59', '1', '1', NULL, 0, NULL, NULL, 1, '46f092f1-e962-a084-9fc8-65aa7e691ac9', 'SSI_Salary_Slip'),
('8bc5995a-9256-d03f-11ce-62d818f263ec', 'Atir Sakhrelia Salary Slip of Apr 2022', '2022-07-20 15:01:25', '2022-07-20 15:01:25', '1', '1', NULL, 0, NULL, NULL, 1, '564d4ff9-ffb1-26d2-49be-62d8189aaa2e', 'SSI_Salary_Slip'),
('8cd1e6e9-ebc0-9e97-3a6a-62d7fabdff5c', 'Bhargavi Patel Salary Slip of Apr 2022', '2022-07-20 12:51:15', '2022-07-20 12:51:15', '1', '1', NULL, 0, NULL, NULL, 1, '4ae5fb89-e527-c70c-2b84-62d7fa9996d6', 'SSI_Salary_Slip'),
('8e4886f0-df91-1995-40bc-65a8c40373d9', 'ce_Fuel-12-12-2032.pdf', '2024-01-18 06:27:56', '2024-01-18 06:27:56', '1', '1', NULL, 0, NULL, NULL, 1, '5260b225-987f-a97e-9a90-65a8c4397b17', 'Documents'),
('8ee15054-6ce3-26ae-f3ad-62d81c1ea7d0', 'Brinda Patel Salary Slip of June 2022', '2022-07-20 15:15:37', '2022-07-20 15:15:37', '1', '1', NULL, 0, NULL, NULL, 1, '35080a6e-4a3e-6d0d-72ab-62d81cacc93a', 'SSI_Salary_Slip'),
('92253e85-5bc5-954c-b5f9-65a7d82ed3dd', 'GST_Dec_Challan_2023.pdf', '2024-01-17 13:39:06', '2024-01-17 13:39:06', '1', '1', NULL, 0, NULL, NULL, 1, '146a5e27-483c-fc42-cc19-65a7d8197f56', 'Documents'),
('93596646-e13c-ab56-c5c5-62d815e7445f', 'Mr. Krunal Mehta', '2022-07-20 14:45:59', '2022-07-25 09:17:23', '1', '1', NULL, 0, '', NULL, 1, 'bbdd79f1-ee4e-c9d1-435d-62d815c477dd', 'Contacts'),
('9839a069-8554-1e5f-3d06-625e9e6c73b0', 'Mr. mrugesh patel', '2022-04-19 11:36:48', '2022-04-19 11:36:48', '1', '1', NULL, 0, NULL, NULL, 1, 'd8554bd8-9d18-5171-ff85-625e9e90dd5b', 'Contacts'),
('997d2144-c616-d63f-16bb-65a8ceb6dc44', 'Bhargavi Patel Salary Slip of Dec 2023', '2024-01-18 07:06:41', '2024-01-18 07:06:41', '1', '1', NULL, 0, NULL, NULL, 1, '82b6fe3f-91ef-32d4-6824-65a8cee2938c', 'SSI_Salary_Slip'),
('9ade4565-bf7f-bc6b-0acc-65a8c596d784', 'idea_airtel-4876.pdf', '2024-01-18 06:31:06', '2024-01-18 06:31:06', '1', '1', NULL, 0, NULL, NULL, 1, '5f6c3752-4774-43f0-75a8-65a8c56ed473', 'Documents'),
('9ba80782-d6fc-ee4f-4a4a-65a8c20843a0', 'GST_Dec_Challan_2023.pdf', '2024-01-18 06:16:57', '2024-01-18 06:16:57', '1', '1', NULL, 0, NULL, NULL, 1, 'cbcfda9e-4250-8093-5a00-65a8c2969a52', 'DocumentRevisions'),
('9e5f031f-e5c5-bd16-3063-62e12ea02e2d', 'INDIA - Independence Day', '2022-07-27 12:25:56', '2022-07-27 12:25:56', '1', '1', NULL, 0, NULL, NULL, 1, 'a2f81ce6-f5ed-97cf-596d-62e12e49bcef', 'SSI_Holiday'),
('a0aa0a70-af36-7a7f-1f9d-65a8c6e43bdf', 'Professional-aa-124587.pdf', '2024-01-18 06:34:06', '2024-01-18 06:34:06', '1', '1', NULL, 0, NULL, NULL, 1, '5a463bcd-f74c-114a-3ac9-65a8c6c9f7d6', 'Documents'),
('a478b1b3-acae-ec0a-86ba-62d7910eedba', 'Salary Slip of 6 2022', '2022-07-20 05:25:21', '2022-07-20 05:25:21', '1', '1', NULL, 0, NULL, NULL, 1, '40505ddc-3839-247f-783d-62d791e99b81', 'SSI_Salary_Slip'),
('a7c14e7a-f909-d405-f365-62d819685d5b', 'Krunal Mehta Salary Slip of May 2022', '2022-07-20 15:05:23', '2022-07-20 15:05:23', '1', '1', NULL, 0, NULL, NULL, 1, '63e14008-7a0f-22da-bc1b-62d819cca1d9', 'SSI_Salary_Slip'),
('a8311252-5686-982d-42c2-625e4ac7a784', 'test 3', '2022-04-19 05:35:44', '2022-04-19 05:35:44', '1', '1', NULL, 0, NULL, NULL, 1, 'e833fc7f-79b2-b41d-3430-625e4a586f18', 'SSI_Salary_Structure'),
('ab0f7745-8cf8-b89e-b79f-62d813ce2e5e', 'Atir_Adhar_Card.jpeg', '2022-07-20 14:37:34', '2022-07-20 14:37:34', '1', '1', NULL, 0, NULL, 'Mime type image/jpeg not supported', 0, '3c75632c-da94-224b-e653-62d8138280d9', 'DocumentRevisions'),
('ad72a358-e8d5-0125-0721-62d6adcd2b6d', 'Invoice_test.pdf', '2022-07-19 13:11:17', '2022-07-19 13:11:17', '1', '1', NULL, 0, NULL, NULL, 1, 'be8009b7-1dc1-78fe-42ac-62d6addf5d8a', 'Notes'),
('b57cf4ad-6f6b-a8e6-933d-62d81b849856', 'Krunal(2022-23)', '2022-07-20 15:11:17', '2022-07-20 15:11:49', '1', '1', NULL, 0, '', NULL, 1, '521e0a9b-600c-27dd-8ebe-62d81bacc2ff', 'SSI_Salary_Structure'),
('b62c979f-d57c-0edc-6bf2-62d819b42415', 'Arati Barvadiya Salary Slip of May 2022', '2022-07-20 15:05:24', '2022-07-20 15:05:24', '1', '1', NULL, 0, NULL, NULL, 1, '6d6a82e7-f22c-0369-036a-62d819646026', 'SSI_Salary_Slip'),
('b6495862-7408-0832-c31c-63216715b8df', 'Ruchita Nakrani Salary Slip of Aug 2022', '2022-09-14 05:33:27', '2022-09-14 05:33:27', '1', '1', NULL, 0, NULL, NULL, 1, '5c9709bc-56aa-3c84-f1db-632167a72b71', 'SSI_Salary_Slip'),
('b70a425c-ba9b-51c8-2b61-65a8ce2f0ef7', 'Atir Sakhrelia Salary Slip of Dec 2023', '2024-01-18 07:06:41', '2024-01-18 07:06:41', '1', '1', NULL, 0, NULL, NULL, 1, '9ef3d577-ed8d-917f-03bd-65a8ce7d79ef', 'SSI_Salary_Slip'),
('b7c093ed-2cec-083f-43b7-62d81cc31f82', 'Atir Sakhrelia Salary Slip of June 2022', '2022-07-20 15:16:18', '2022-07-20 15:16:18', '1', '1', NULL, 0, NULL, NULL, 1, '1f244959-dfa3-b5a0-2721-62d81c764cca', 'SSI_Salary_Slip'),
('b87730cf-ae0f-5c50-f022-62d791adf557', 'Salary Slip of 5 2022', '2022-07-20 05:25:59', '2022-07-20 05:25:59', '1', '1', NULL, 0, NULL, NULL, 1, '82d44279-2fac-8628-8c43-62d79174cb98', 'Notes'),
('b878f6be-4c96-37c7-686c-62580117ed12', 'Mrs. Bhargavi Patel', '2022-04-14 11:10:53', '2024-01-22 11:51:43', '1', '1', NULL, 0, '', NULL, 1, '228de31b-39ff-3be1-a1d2-6258010f610d', 'Contacts'),
('b8b1f8a1-d557-7db9-3f59-62d659f4143f', 'Salary Slip of 7 2022', '2022-07-19 07:13:17', '2022-07-19 07:13:17', '1', '1', NULL, 0, NULL, NULL, 1, '2f972a5c-5e31-a35d-9dce-62d659d44344', 'SSI_Salary_Slip'),
('b8d41b07-a89f-69a0-d04a-65a8c5eef5ca', 'Gsuite-12455.pdf', '2024-01-18 06:30:02', '2024-01-18 06:30:02', '1', '1', NULL, 0, NULL, NULL, 1, '9bc5bb33-f932-75a5-7e13-65a8c5ccf4fc', 'DocumentRevisions'),
('c1104f8a-43d4-92cd-0f72-62d805acce83', 'Bhargavi Patel Salary Slip of Apr 2022', '2022-07-20 13:37:17', '2022-07-20 13:37:17', '1', '1', NULL, 0, NULL, NULL, 1, 'a828e82f-97b3-3bad-70d9-62d8054d2249', 'Notes'),
('c1ca2411-175c-829e-a57b-62d81510ac47', 'Krunal_Adhar_Card.pdf', '2022-07-20 14:48:40', '2022-07-20 14:48:40', '1', '1', NULL, 0, NULL, NULL, 1, '65fcca31-500a-9822-aeb8-62d8153b7bb4', 'DocumentRevisions'),
('c24b778c-c52b-20e0-f0eb-62de5f7ad893', 'Krunal_Pan_Card.pdf', '2022-07-25 09:18:39', '2022-07-25 09:18:39', '1', '1', NULL, 0, NULL, NULL, 1, '74a75201-7b35-5e85-8e42-62de5f98137c', 'DocumentRevisions'),
('c41c37a3-b638-59d8-fed5-625e4dace2a2', 'salary structure 2', '2022-04-19 05:50:36', '2022-04-19 05:50:36', '1', '1', NULL, 0, NULL, NULL, 1, '516ccf42-9e5c-041f-f56e-625e4d9c3401', 'SSI_Salary_Structure'),
('c4eaccbc-e37a-3e62-04c1-625fe22b9b06', 'Salary Slip of 4 2022', '2022-04-20 10:35:44', '2022-04-20 10:35:44', '1', '1', NULL, 0, NULL, NULL, 1, 'd300c0d8-5c68-5012-8929-625fe1624c35', 'SSI_Salary_Slip'),
('c8023c2c-2b5a-2d78-3ef5-62d651329796', 'test', '2022-07-19 06:38:43', '2022-07-19 06:38:43', '1', '1', NULL, 0, NULL, NULL, 1, '5a9de0c7-9b5e-f232-e8a8-62d651b97290', 'SSI_Salary_Slip'),
('c8948c62-91fa-f89a-ccf2-62d8183a562a', 'Arati Barvadiya Salary Slip of Apr 2022', '2022-07-20 15:01:26', '2022-07-20 15:01:26', '1', '1', NULL, 0, NULL, NULL, 1, '885e1c21-2479-3dc3-9c20-62d8187a9550', 'SSI_Salary_Slip'),
('c91cf70a-de10-ba00-729a-65a8c5244c13', 'GST_Dec_Challan_2023.pdf', '2024-01-18 06:29:32', '2024-01-18 06:29:32', '1', '1', NULL, 0, NULL, NULL, 1, '9d0c8182-748d-6bdc-afc6-65a8c5d255ad', 'DocumentRevisions'),
('c9b5dbd3-2d39-eda6-ec65-62d816a1cb0c', 'Mrs. Brinda Patel', '2022-07-20 14:52:35', '2022-07-20 14:52:35', '1', '1', NULL, 0, NULL, NULL, 1, '20ffdb4e-f9e0-f2b2-37b5-62d8163a1e94', 'Contacts'),
('ce10e15a-6ed3-c112-26d7-625908c6d9ed', 'salary structure 1', '2022-04-15 05:53:57', '2022-04-15 05:53:57', '1', '1', NULL, 0, NULL, NULL, 1, '52f20707-2bcf-cc08-8b7b-625908568086', 'SSI_Salary_Structure'),
('ce857605-667c-8f3c-f129-62d805beebcf', 'Bhargavi Patel Salary Slip of Apr 2022', '2022-07-20 13:39:04', '2022-07-20 13:39:04', '1', '1', NULL, 0, NULL, NULL, 1, 'b4271b17-7800-64c6-600b-62d805ca7414', 'Notes'),
('cf17288f-a8cf-35e8-5f8a-62d8132781e9', 'Atir_Pan_Card.jpeg', '2022-07-20 14:37:09', '2022-07-20 14:37:09', '1', '1', NULL, 0, NULL, 'Mime type image/jpeg not supported', 0, 'b0d0b15e-69ec-90ab-3df3-62d813ed2548', 'DocumentRevisions'),
('d08dc5b0-c5f5-b889-5c54-62d78c88ddfa', 'Salary Slip of 7 2022', '2022-07-20 05:02:00', '2022-07-20 05:02:00', '1', '1', NULL, 0, NULL, NULL, 1, '846c78fe-828f-9492-b700-62d78c278baa', 'Notes'),
('d35f8179-9734-5a20-c77e-65aa7e90ebd4', 'Atir Sakhrelia Salary Slip of Dec 2023', '2024-01-19 13:50:59', '2024-01-19 13:50:59', '1', '1', NULL, 0, NULL, NULL, 1, '8f7ca795-f949-8d5a-76db-65aa7e704653', 'SSI_Salary_Slip'),
('d38fef02-348e-02d6-e1a5-65aa7e9e1377', 'Arati Barvadiya Salary Slip of Dec 2023', '2024-01-19 13:51:00', '2024-01-19 13:51:00', '1', '1', NULL, 0, NULL, NULL, 1, '86a05ff4-aa7d-96cd-efb1-65aa7ea9d42f', 'SSI_Salary_Slip'),
('d432063d-ef59-7e26-e851-62d78d2282a3', 'Salary Slip of 4 2022', '2022-07-20 05:05:31', '2022-07-20 05:05:31', '1', '1', NULL, 0, NULL, NULL, 1, 'a2f2c69d-c3a8-29f3-12cb-62d78dc73b33', 'Notes'),
('d47a70cd-8618-b886-29c6-65a8ce86b750', 'Brinda Patel Salary Slip of Dec 2023', '2024-01-18 07:06:41', '2024-01-18 07:06:41', '1', '1', NULL, 0, NULL, NULL, 1, 'bccf2e21-d7f1-f871-d723-65a8ce2ab806', 'SSI_Salary_Slip'),
('d8c30a16-6db7-7adf-f799-62d79165c599', 'Salary Slip of 5 2022', '2022-07-20 05:23:51', '2022-07-20 05:23:51', '1', '1', NULL, 0, NULL, NULL, 1, '747e2e49-8f43-b060-cf52-62d7913e0900', 'SSI_Salary_Slip'),
('d92b37e3-884b-da3c-174a-62d81817dff8', 'Krunal Mehta Salary Slip of Apr 2022', '2022-07-20 15:01:25', '2022-07-20 15:01:25', '1', '1', NULL, 0, NULL, NULL, 1, '9a2d48c1-9b94-e2a9-8618-62d818c1835b', 'SSI_Salary_Slip'),
('d95550d3-1bbc-8f27-2a21-62d791faf934', 'Salary Slip of 3 2022', '2022-07-20 05:22:15', '2022-07-20 05:22:15', '1', '1', NULL, 0, NULL, NULL, 1, '7717e3f3-d424-0d10-a97b-62d79160a079', 'Notes'),
('db99ece0-bd22-3925-1fe0-62d81638efd9', 'Krunal(2021-22)', '2022-07-20 14:49:45', '2022-07-20 15:12:14', '1', '1', NULL, 0, '', NULL, 1, '8df5be6e-d39c-466e-9e0d-62d8163d0162', 'SSI_Salary_Structure'),
('e02fbd4c-0ff8-5cb8-aeba-62d8107028c1', 'Mr. Kaushal Mehta', '2022-07-20 14:26:05', '2022-07-20 14:26:05', '1', '1', NULL, 0, NULL, NULL, 1, '627266ab-5b5e-10e0-5e0a-62d810208840', 'Contacts'),
('e0be1027-898a-2bd1-2a24-65a8c5770d2b', 'Gsuite-12455.pdf', '2024-01-18 06:30:02', '2024-01-18 06:30:02', '1', '1', NULL, 0, NULL, NULL, 1, '996b6bb3-905c-d9c9-66ca-65a8c525529a', 'Documents'),
('e60f054c-650f-29f6-c9fe-65a8c4ed9279', 'cc-Rent_1457.pdf', '2024-01-18 06:26:54', '2024-01-18 06:26:54', '1', '1', NULL, 0, NULL, NULL, 1, 'c6989fa4-73b0-862c-59b9-65a8c4f3dc5a', 'Documents'),
('e6e601c8-cb21-d298-2b69-65a8c43b4203', 'cc-Rent_1457.pdf', '2024-01-18 06:26:54', '2024-01-18 06:26:54', '1', '1', NULL, 0, NULL, NULL, 1, 'c8a6aa68-50b6-021a-513e-65a8c4642be7', 'DocumentRevisions'),
('e7d9c329-15d3-0ff7-27d9-62d81ca81851', 'Pooja Chavda Salary Slip of June 2022', '2022-07-20 15:16:19', '2022-07-20 15:16:19', '1', '1', NULL, 0, NULL, NULL, 1, 'c85adcaf-61c9-1c17-ce6f-62d81c9512b6', 'SSI_Salary_Slip'),
('e8b00e09-08f9-344a-63e7-65aa7e1d9172', 'Ruchita Nakrani Salary Slip of Dec 2023', '2024-01-19 13:50:58', '2024-01-19 13:50:58', '1', '1', NULL, 0, NULL, NULL, 1, '27de6a9e-5eaf-55a1-2c72-65aa7e34c771', 'SSI_Salary_Slip'),
('eb0491ab-bb30-9e8d-e63c-65a8c575a59a', 'GST_Dec_Challan_2023.pdf', '2024-01-18 06:29:32', '2024-01-18 06:29:32', '1', '1', NULL, 0, NULL, NULL, 1, '9b9155bf-1cea-cc59-cf24-65a8c5cb23ee', 'Documents'),
('ec3ffe9c-f4c6-3183-788f-62d813e4b6be', 'Atir_Adhar_Card.jpeg', '2022-07-20 14:37:34', '2022-07-20 14:37:34', '1', '1', NULL, 0, NULL, NULL, 1, '3afe58e7-fb4a-64f3-c460-62d813013cc4', 'Documents'),
('ec692c55-8e3d-ecf2-c26b-62d8025ea21c', 'Bhargavi Patel Salary Slip of Apr 2022', '2022-07-20 13:27:32', '2022-07-20 13:27:32', '1', '1', NULL, 0, NULL, NULL, 1, 'd381ca11-e209-4cfe-6962-62d80234435c', 'Notes'),
('ed2914f4-bfab-c2bc-888a-65a8c20de01c', 'GST_Dec_Challan_2023.pdf', '2024-01-18 06:16:57', '2024-01-18 06:16:57', '1', '1', NULL, 0, NULL, NULL, 1, 'c82f4166-86d7-ebe4-66e1-65a8c21ac9ea', 'Documents'),
('eda1298c-0492-f68e-3423-65a8c687b706', 'torrent-15-01-2023.pdf', '2024-01-18 06:34:33', '2024-01-18 06:34:33', '1', '1', NULL, 0, NULL, NULL, 1, 'cf5c0174-cd2c-e51a-1367-65a8c629824c', 'DocumentRevisions'),
('f1484fbc-4384-91e8-19f4-65a8ce0e3c1a', 'Pooja Chavda Salary Slip of Dec 2023', '2024-01-18 07:06:41', '2024-01-18 07:06:41', '1', '1', NULL, 0, NULL, NULL, 1, 'dacb735c-71db-7445-7135-65a8ce7275d7', 'SSI_Salary_Slip'),
('f2354905-1ba2-fff0-b0f7-62d819523996', 'Bhargavi Patel Salary Slip of May 2022', '2022-07-20 15:05:22', '2022-07-20 15:05:22', '1', '1', NULL, 0, NULL, NULL, 1, '186c19ec-0e3b-ab32-1518-62d8193d6b6e', 'SSI_Salary_Slip'),
('f391ae8d-12c9-978b-d703-62d81363af02', 'Atir(2022-23)', '2022-07-20 14:39:36', '2022-07-20 15:15:51', '1', '1', NULL, 0, '', NULL, 1, '707549db-0de3-c72c-8104-62d813edb2f0', 'SSI_Salary_Structure');

-- --------------------------------------------------------

--
-- Table structure for table `aod_indexevent_audit`
--

CREATE TABLE `aod_indexevent_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aod_index_audit`
--

CREATE TABLE `aod_index_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledgebase`
--

CREATE TABLE `aok_knowledgebase` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `revision` varchar(255) DEFAULT NULL,
  `additional_info` text,
  `user_id_c` char(36) DEFAULT NULL,
  `user_id1_c` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledgebase_audit`
--

CREATE TABLE `aok_knowledgebase_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledgebase_categories`
--

CREATE TABLE `aok_knowledgebase_categories` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aok_knowledgebase_id` varchar(36) DEFAULT NULL,
  `aok_knowledge_base_categories_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledge_base_categories`
--

CREATE TABLE `aok_knowledge_base_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledge_base_categories_audit`
--

CREATE TABLE `aok_knowledge_base_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_events`
--

CREATE TABLE `aop_case_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_events_audit`
--

CREATE TABLE `aop_case_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_updates`
--

CREATE TABLE `aop_case_updates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `internal` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_updates_audit`
--

CREATE TABLE `aop_case_updates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_charts`
--

CREATE TABLE `aor_charts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `x_field` int(11) DEFAULT NULL,
  `y_field` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_conditions`
--

CREATE TABLE `aor_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `logic_op` varchar(255) DEFAULT NULL,
  `parenthesis` varchar(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(100) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `parameter` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_fields`
--

CREATE TABLE `aor_fields` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `field_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `link` tinyint(1) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `field_function` varchar(100) DEFAULT NULL,
  `sort_by` varchar(100) DEFAULT NULL,
  `format` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `sort_order` varchar(100) DEFAULT NULL,
  `group_by` tinyint(1) DEFAULT NULL,
  `group_order` varchar(100) DEFAULT NULL,
  `group_display` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_reports`
--

CREATE TABLE `aor_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `report_module` varchar(100) DEFAULT NULL,
  `graphs_per_row` int(11) DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_reports_audit`
--

CREATE TABLE `aor_reports_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_scheduled_reports`
--

CREATE TABLE `aor_scheduled_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `schedule` varchar(100) DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `email_recipients` longtext,
  `aor_report_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_contracts`
--

CREATE TABLE `aos_contracts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_contract_value` decimal(26,6) DEFAULT NULL,
  `total_contract_value_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `customer_signed_date` date DEFAULT NULL,
  `company_signed_date` date DEFAULT NULL,
  `renewal_reminder_date` datetime DEFAULT NULL,
  `contract_type` varchar(100) DEFAULT 'Type',
  `contract_account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_contracts_audit`
--

CREATE TABLE `aos_contracts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_contracts_documents`
--

CREATE TABLE `aos_contracts_documents` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_contracts_id` varchar(36) DEFAULT NULL,
  `documents_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_invoices`
--

CREATE TABLE `aos_invoices` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `quote_number` int(11) DEFAULT NULL,
  `quote_date` date DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `template_ddown_c` text,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `ssi_invoice_number` varchar(11) DEFAULT NULL,
  `sgst_tax_amount` decimal(26,6) DEFAULT NULL,
  `cgst_tax_amount` decimal(26,6) DEFAULT NULL,
  `total_qty` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aos_invoices`
--

INSERT INTO `aos_invoices` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `billing_account_id`, `billing_contact_id`, `billing_address_street`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `shipping_address_street`, `shipping_address_city`, `shipping_address_state`, `shipping_address_postalcode`, `shipping_address_country`, `number`, `total_amt`, `total_amt_usdollar`, `subtotal_amount`, `subtotal_amount_usdollar`, `discount_amount`, `discount_amount_usdollar`, `tax_amount`, `tax_amount_usdollar`, `shipping_amount`, `shipping_amount_usdollar`, `shipping_tax`, `shipping_tax_amt`, `shipping_tax_amt_usdollar`, `total_amount`, `total_amount_usdollar`, `currency_id`, `quote_number`, `quote_date`, `invoice_date`, `due_date`, `status`, `template_ddown_c`, `subtotal_tax_amount`, `subtotal_tax_amount_usdollar`, `ssi_invoice_number`, `sgst_tax_amount`, `cgst_tax_amount`, `total_qty`) VALUES
('3c7c265b-bfd7-0a78-9796-62d6ad3782ad', 'test', '2022-07-19 13:10:06', '2022-07-19 13:10:06', '1', '1', '', 0, '1', '', '228de31b-39ff-3be1-a1d2-6258010f610d', '', '', '', '', '', '', '', '', '', '', 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.0', '0.000000', '0.000000', '0.000000', '0.000000', '-99', 0, '2022-07-19', '2022-07-19', NULL, 'Paid', NULL, NULL, '0.000000', NULL, NULL, NULL, NULL),
('4a32c15f-a8ad-6a67-e5d2-62e36866d4f2', 'CRM customizations and development during  1st June 2022 to 31st July 2022', '2022-07-29 04:56:39', '2022-08-01 06:14:31', '1', '1', 'CRM customizations and development during  1st June 2022 to 31st July 2022', 0, '1', 'dee8073b-ebbd-7ef2-4b6c-62d940d0a21f', '', 'Boisar', 'Thane', 'Maharashtra', '401501', 'INDIA', 'Boisar', 'Thane', 'Maharashtra', '401501', 'INDIA', 3, '150.000000', '150.000000', '43.750000', '43.750000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.0', '0.000000', '0.000000', '150.000000', '150.000000', 'e8af8224-55f2-2eca-be1f-62e3b25efa88', NULL, '2022-07-29', '2022-08-01', NULL, 'Paid', NULL, NULL, '0.000000', 'SSI2022001', '0.000000', '0.000000', '30.00'),
('ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', 'July-2022', '2022-07-21 12:16:18', '2022-07-27 09:26:56', '1', '1', NULL, 0, '1', 'dee8073b-ebbd-7ef2-4b6c-62d940d0a21f', '', 'Boisar', 'Thane', 'Maharashtra', '401501', 'INDIA', 'Boisar', 'Thane', 'Maharashtra', '401501', 'INDIA', 2, '580050.000000', '580050.000000', '580050.000000', '580050.000000', '0.000000', '0.000000', '104409.000000', '104409.000000', '0.000000', '0.000000', '0.0', '0.000000', '0.000000', '684459.000000', '684459.000000', '-99', 0, '2022-07-21', '2022-07-21', NULL, 'Paid', NULL, NULL, '0.000000', NULL, '52204.500000', '52204.500000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aos_invoices_audit`
--

CREATE TABLE `aos_invoices_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aos_invoices_audit`
--

INSERT INTO `aos_invoices_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES
('124f885a-e724-b506-9a12-62dfba485cb3', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-26 09:57:05', '1', 'subtotal_amount_usdollar', 'currency', '32500.000000', '10145', NULL, NULL),
('135996a9-e949-fd16-3d31-62e10468a536', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 09:26:56', '1', 'tax_amount', 'currency', '95409.000000', '104409', NULL, NULL),
('17801029-3f15-542a-7d12-62e1042cf290', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 09:26:56', '1', 'tax_amount_usdollar', 'currency', '95409.000000', '104409', NULL, NULL),
('17990442-6194-31ab-f50b-62dfb111cc28', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-26 09:20:51', '1', 'tax_amount', 'currency', '5687.500000', '5850', NULL, NULL),
('1a9caab6-b8d6-c27a-4320-62dfbaae0fd2', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-26 09:57:05', '1', 'tax_amount', 'currency', '5850.000000', '1826.1', NULL, NULL),
('1ba6a9e0-eee6-d866-d825-62e104c7a5ed', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 09:26:56', '1', 'total_amount_usdollar', 'currency', '625459.000000', '684459', NULL, NULL),
('1ec3340b-60e9-cc1a-1370-62dfba1829f8', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-26 09:57:05', '1', 'tax_amount_usdollar', 'currency', '5850.000000', '1826.1', NULL, NULL),
('1fcd3ed3-2486-1cd9-83db-62e104f33f41', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 09:26:56', '1', 'sgst_tax_amount', 'currency', '43204.500000', '52204.5', NULL, NULL),
('22e9cb84-7580-094c-100b-62dfba7b6648', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-26 09:57:05', '1', 'total_amount_usdollar', 'currency', '38350.000000', '11971.1', NULL, NULL),
('238fb2cb-ebfb-3e73-8ff7-62dfb104a933', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-26 09:20:51', '1', 'tax_amount_usdollar', 'currency', '5687.500000', '5850', NULL, NULL),
('23f3c56a-ebf8-3990-9e94-62e104bf0b53', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 09:26:56', '1', 'cgst_tax_amount', 'currency', '43204.500000', '52204.5', NULL, NULL),
('27f4c00d-10ff-ce9b-e97a-62dfb14a8ba2', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-26 09:20:51', '1', 'total_amount_usdollar', 'currency', '38187.500000', '38350', NULL, NULL),
('2ad4c1b1-aa20-7df8-4458-62dfdfa873ef', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-26 12:36:35', '1', 'total_amt', 'currency', '10145.000000', '58500', NULL, NULL),
('36d6c9ce-fb22-958b-8206-62e0ee8f9cb1', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 07:53:30', '1', 'total_amt', 'currency', '490655.000000', '580500', NULL, NULL),
('3803f32e-79c6-3408-d588-62dfdfec2f3b', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-26 12:36:35', '1', 'total_amt_usdollar', 'currency', '10145.000000', '58500', NULL, NULL),
('3abed382-b202-c87f-a617-62e0eed33ecf', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 07:53:30', '1', 'total_amt_usdollar', 'currency', '490655.000000', '580500', NULL, NULL),
('3c690e5f-71a3-3da4-c12b-62dfdf270d9e', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-26 12:36:35', '1', 'subtotal_amount', 'currency', '10145.000000', '58500', NULL, NULL),
('3f23e457-24fe-5208-f662-62e0ee09967b', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 07:53:30', '1', 'subtotal_amount', 'currency', '490655.000000', '580500', NULL, NULL),
('408f9d79-b7c2-7239-c361-62dfdff5442e', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-26 12:36:35', '1', 'subtotal_amount_usdollar', 'currency', '10145.000000', '58500', NULL, NULL),
('430bf271-0a03-033a-6537-62e0ee300f00', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 07:53:30', '1', 'subtotal_amount_usdollar', 'currency', '490655.000000', '580500', NULL, NULL),
('47710198-41d3-51aa-0cba-62e0ee1c5511', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 07:53:30', '1', 'tax_amount', 'currency', '88317.900000', '104490', NULL, NULL),
('489e3ffa-51cc-7f38-d62b-62dfdf71a43d', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-26 12:36:35', '1', 'tax_amount', 'currency', '1826.100000', '10530', NULL, NULL),
('4afb068f-1b46-6e72-e1d9-62e104600c16', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 09:24:52', '1', 'total_amt', 'currency', '580050.000000', '530050', NULL, NULL),
('4bd61f26-ecac-ab8d-fbed-62e0eecd6d61', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 07:53:30', '1', 'tax_amount_usdollar', 'currency', '88317.900000', '104490', NULL, NULL),
('4cc4cd19-ca0e-bc14-48ae-62dfdfb91800', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-26 12:36:35', '1', 'tax_amount_usdollar', 'currency', '1826.100000', '10530', NULL, NULL),
('4e0c145f-8b09-f305-efaa-62e10354b22b', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 09:21:32', '1', 'total_amt', 'currency', '58050.000000', '580050', NULL, NULL),
('50d7177b-bd70-f6fc-0c50-62e1042508c7', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 09:24:52', '1', 'total_amt_usdollar', 'currency', '580050.000000', '530050', NULL, NULL),
('53050ada-1e77-a980-bcdf-62e1042fb3ac', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 09:26:56', '1', 'total_amt_usdollar', 'currency', '530050.000000', '580050', NULL, NULL),
('53e4b460-053b-5679-81d2-62e0ee4786c5', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 07:53:30', '1', 'total_amount_usdollar', 'currency', '578972.900000', '684990', NULL, NULL),
('54fda827-526a-7c09-deb1-62e1046027c7', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 09:24:52', '1', 'subtotal_amount', 'currency', '580050.000000', '530050', NULL, NULL),
('5511e884-8ec5-fcfd-b473-62dfdf826bdb', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-26 12:36:35', '1', 'total_amount_usdollar', 'currency', '11971.100000', '69030', NULL, NULL),
('57534012-b96e-7161-68bc-62e10318e803', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 09:21:32', '1', 'total_amt_usdollar', 'currency', '58050.000000', '580050', NULL, NULL),
('592430e4-0122-7ee3-b32b-62e1040be3a4', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 09:24:52', '1', 'subtotal_amount_usdollar', 'currency', '580050.000000', '530050', NULL, NULL),
('5938716b-bc70-fcb8-f3fa-62dfdf4abdc9', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-26 12:36:35', '1', 'sgst_tax_amount', 'currency', '0.000000', '4365', NULL, NULL),
('5b79c574-b8c4-3a83-a53c-62e103111a4a', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 09:21:32', '1', 'subtotal_amount', 'currency', '58050.000000', '580050', NULL, NULL),
('5d5f0aac-0109-dbee-2de2-62dfdff85464', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-26 12:36:35', '1', 'cgst_tax_amount', 'currency', '0.000000', '4365', NULL, NULL),
('5dbd04af-74fc-9865-1ef4-62dfba88bd72', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-26 09:57:05', '1', 'total_amt_usdollar', 'currency', '32500.000000', '10145', NULL, NULL),
('5ec1d826-4f4b-d751-8cb3-62e104e79c3d', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 09:24:52', '1', 'tax_amount', 'currency', '104409.000000', '95409', NULL, NULL),
('5fa0523f-6b53-f5b4-2f7c-62e10302657a', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 09:21:32', '1', 'subtotal_amount_usdollar', 'currency', '58050.000000', '580050', NULL, NULL),
('62316afe-4a70-fcea-7806-62e0eef93502', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 07:52:31', '1', 'total_amt', 'currency', '580500.000000', '490655', NULL, NULL),
('62e864c1-cd97-ff4e-8207-62e104d6ff18', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 09:24:52', '1', 'tax_amount_usdollar', 'currency', '104409.000000', '95409', NULL, NULL),
('63c6e2c3-5dc2-d5b3-1583-62e103b90096', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 09:21:32', '1', 'tax_amount', 'currency', '10449.000000', '104409', NULL, NULL),
('66311d33-2691-f6b8-8408-62e00c37c5bc', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-26 15:46:20', '1', 'total_amt', 'currency', '58500.000000', '580500', NULL, NULL),
('67ed735b-7839-13d0-fe85-62e10355e884', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 09:21:32', '1', 'tax_amount_usdollar', 'currency', '10449.000000', '104409', NULL, NULL),
('688a8089-09a7-5469-6d73-62e0eedcf35f', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 07:52:31', '1', 'total_amt_usdollar', 'currency', '580500.000000', '490655', NULL, NULL),
('6c140cbe-ead9-3072-d871-62e103e0d803', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 09:21:32', '1', 'total_amount_usdollar', 'currency', '68499.000000', '684459', NULL, NULL),
('6c5d64ea-73e9-e47b-1651-62e0f7d3622c', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 08:29:07', '1', 'total_amt', 'currency', '580500.000000', '58050', NULL, NULL),
('6c6e0701-3554-44fe-a259-62e1048ed256', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 09:24:52', '1', 'total_amount_usdollar', 'currency', '684459.000000', '625459', NULL, NULL),
('6c7294ec-9219-f42c-0a00-62e0ee0a3924', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 07:52:31', '1', 'subtotal_amount', 'currency', '580500.000000', '490655', NULL, NULL),
('6d84392b-29ad-8458-ea8e-62e00cd435d2', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-26 15:46:20', '1', 'total_amt_usdollar', 'currency', '58500.000000', '580500', NULL, NULL),
('70457cb9-efcc-43e4-d98d-62e0f7bbb530', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 08:29:07', '1', 'total_amt_usdollar', 'currency', '580500.000000', '58050', NULL, NULL),
('7079196a-c49b-4836-261d-62e10305c490', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 09:21:32', '1', 'sgst_tax_amount', 'currency', '4324.500000', '43204.5', NULL, NULL),
('70d7ad5f-3c13-3d83-6faa-62e0ee9d0536', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 07:52:31', '1', 'subtotal_amount_usdollar', 'currency', '580500.000000', '490655', NULL, NULL),
('71e94e07-c106-b8f5-82c8-62e00c907557', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-26 15:46:20', '1', 'subtotal_amount', 'currency', '58500.000000', '580500', NULL, NULL),
('742d89dc-5fac-6f3d-ebbf-62e0f76e34eb', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 08:29:07', '1', 'subtotal_amount', 'currency', '580500.000000', '58050', NULL, NULL),
('74fe38ab-245b-a112-6ac8-62e0eed79bea', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 07:52:31', '1', 'tax_amount', 'currency', '104490.000000', '88317.9', NULL, NULL),
('75d155a2-f0d5-62e4-0d6d-62e00c412d34', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-26 15:46:20', '1', 'subtotal_amount_usdollar', 'currency', '58500.000000', '580500', NULL, NULL),
('7887b46f-d874-eab1-6619-62e103562a76', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 09:21:32', '1', 'cgst_tax_amount', 'currency', '4324.500000', '43204.5', NULL, NULL),
('78d117d9-d110-b2b3-cea4-62e0f7aa9036', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 08:29:07', '1', 'subtotal_amount_usdollar', 'currency', '580500.000000', '58050', NULL, NULL),
('79634f59-82df-61cd-92b0-62e0ee9bc30b', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 07:52:31', '1', 'tax_amount_usdollar', 'currency', '104490.000000', '88317.9', NULL, NULL),
('79f7e392-7ef7-a01a-7207-62e00c1a8ee6', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-26 15:46:20', '1', 'tax_amount', 'currency', '10530.000000', '104490', NULL, NULL),
('7cb923b1-e473-a1d7-ed56-62e0f739ce20', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 08:29:07', '1', 'tax_amount', 'currency', '104490.000000', '10449', NULL, NULL),
('80dfb288-fad3-6bcc-aeb7-62e0f76004cc', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 08:29:07', '1', 'tax_amount_usdollar', 'currency', '104490.000000', '10449', NULL, NULL),
('8171e28f-6043-e485-ea61-62e0eee45276', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 07:52:31', '1', 'total_amount_usdollar', 'currency', '684990.000000', '578972.9', NULL, NULL),
('8245070d-ee3f-f944-b568-62e00c14c771', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-26 15:46:20', '1', 'tax_amount_usdollar', 'currency', '10530.000000', '104490', NULL, NULL),
('85064099-40bd-63dc-d0cf-62e0f7641d38', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 08:29:07', '1', 'total_amount_usdollar', 'currency', '684990.000000', '68499', NULL, NULL),
('8a9222bc-06aa-28f2-cb17-62e00c93dea9', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-26 15:46:20', '1', 'total_amount_usdollar', 'currency', '69030.000000', '684990', NULL, NULL),
('8d14ec08-e7b5-78b8-037b-62e0f72bb1b1', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 08:29:07', '1', 'sgst_tax_amount', 'currency', '43245.000000', '4324.5', NULL, NULL),
('8eb8b6c3-6efb-d00a-7f70-62e00c5a4eb2', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-26 15:46:20', '1', 'sgst_tax_amount', 'currency', '4365.000000', '43245', NULL, NULL),
('91bdda95-495d-ba16-a7b8-62e3b56be6a4', '4a32c15f-a8ad-6a67-e5d2-62e36866d4f2', '2022-07-29 10:23:28', '1', 'total_amt', 'currency', '42.500000', '43.75', NULL, NULL),
('92df4f73-91dd-b3da-dddb-62e00c05d9e6', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-26 15:46:20', '1', 'cgst_tax_amount', 'currency', '4365.000000', '43245', NULL, NULL),
('95a0862f-b9a6-4a01-82c0-62e0f77135bc', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 08:29:07', '1', 'cgst_tax_amount', 'currency', '43245.000000', '4324.5', NULL, NULL),
('99560fcb-8b4b-b9e7-33e8-62e10439699f', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 09:26:56', '1', 'subtotal_amount', 'currency', '530050.000000', '580050', NULL, NULL),
('9db48e33-7b30-d994-800d-62e3b5b7c274', '4a32c15f-a8ad-6a67-e5d2-62e36866d4f2', '2022-07-29 10:23:28', '1', 'total_amt_usdollar', 'currency', '42.500000', '43.75', NULL, NULL),
('a0260fb2-7dc7-055a-7bea-62dfbad6a1f7', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-26 09:57:05', '1', 'subtotal_amount', 'currency', '32500.000000', '10145', NULL, NULL),
('a2199f4c-eaf4-9028-5617-62e3b5f7f677', '4a32c15f-a8ad-6a67-e5d2-62e36866d4f2', '2022-07-29 10:23:28', '1', 'subtotal_amount', 'currency', '42.500000', '43.75', NULL, NULL),
('a601a9a5-9733-cd9d-f754-62e3b5d12ce5', '4a32c15f-a8ad-6a67-e5d2-62e36866d4f2', '2022-07-29 10:23:28', '1', 'subtotal_amount_usdollar', 'currency', '42.500000', '43.75', NULL, NULL),
('aa2cb339-2a38-ee1d-9943-62e76fcabafb', '4a32c15f-a8ad-6a67-e5d2-62e36866d4f2', '2022-08-01 06:14:31', '1', 'total_amt', 'currency', '50.000000', '150', NULL, NULL),
('aa66b444-5730-3e5f-cc26-62e3b5bb3de2', '4a32c15f-a8ad-6a67-e5d2-62e36866d4f2', '2022-07-29 10:23:28', '1', 'total_amount_usdollar', 'currency', '42.500000', '43.75', NULL, NULL),
('b008c402-696b-0b3f-6a14-62e76f0bc04b', '4a32c15f-a8ad-6a67-e5d2-62e36866d4f2', '2022-08-01 06:14:31', '1', 'total_amt_usdollar', 'currency', '50.000000', '150', NULL, NULL),
('b46ddcf2-a2e9-9f7c-449c-62e76f10da5d', '4a32c15f-a8ad-6a67-e5d2-62e36866d4f2', '2022-08-01 06:14:31', '1', 'total_amount_usdollar', 'currency', '50.000000', '150', NULL, NULL),
('d7d70937-20f2-e482-4c06-62e104049b01', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 09:26:56', '1', 'subtotal_amount_usdollar', 'currency', '530050.000000', '580050', NULL, NULL),
('d9ffe399-a102-cb17-c093-62e76e3740c2', '4a32c15f-a8ad-6a67-e5d2-62e36866d4f2', '2022-08-01 06:12:43', '1', 'total_amt', 'currency', '43.750000', '50', NULL, NULL),
('e4029117-d23d-8934-bad2-62e76e1d097e', '4a32c15f-a8ad-6a67-e5d2-62e36866d4f2', '2022-08-01 06:12:43', '1', 'total_amt_usdollar', 'currency', '43.750000', '50', NULL, NULL),
('e7eaa89a-7ba7-52b0-0505-62e76e4937c2', '4a32c15f-a8ad-6a67-e5d2-62e36866d4f2', '2022-08-01 06:12:43', '1', 'total_amount_usdollar', 'currency', '43.750000', '50', NULL, NULL),
('f135b8a1-8628-2e81-62d5-62dfba22510f', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-26 09:57:05', '1', 'total_amt', 'currency', '32500.000000', '10145', NULL, NULL),
('f145b093-3516-a3bf-e127-62e104fd8132', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '2022-07-27 09:26:56', '1', 'total_amt', 'currency', '530050.000000', '580050', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aos_line_item_groups`
--

CREATE TABLE `aos_line_item_groups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aos_line_item_groups`
--

INSERT INTO `aos_line_item_groups` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `total_amt`, `total_amt_usdollar`, `discount_amount`, `discount_amount_usdollar`, `subtotal_amount`, `subtotal_amount_usdollar`, `tax_amount`, `tax_amount_usdollar`, `subtotal_tax_amount`, `subtotal_tax_amount_usdollar`, `total_amount`, `total_amount_usdollar`, `parent_type`, `parent_id`, `number`, `currency_id`) VALUES
('7cfb8a4a-312b-e0d2-ff22-62e368731d28', NULL, '2022-07-29 04:56:39', '2022-08-01 06:14:31', '1', '1', NULL, 0, '1', '150.000000', '150.000000', '0.000000', '0.000000', '43.750000', '0.000000', '0.000000', '0.000000', NULL, '0.000000', '150.000000', '150.000000', 'AOS_Invoices', '4a32c15f-a8ad-6a67-e5d2-62e36866d4f2', 1, 'e8af8224-55f2-2eca-be1f-62e3b25efa88'),
('d1a9dad7-966d-669d-9806-62d943f04a99', NULL, '2022-07-21 12:16:18', '2022-07-27 09:26:56', '1', '1', NULL, 0, '1', '580050.000000', '580050.000000', '0.000000', '0.000000', '580050.000000', '580050.000000', '104409.000000', '104409.000000', NULL, '0.000000', '684459.000000', '684459.000000', 'AOS_Invoices', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', 1, '-99');

-- --------------------------------------------------------

--
-- Table structure for table `aos_line_item_groups_audit`
--

CREATE TABLE `aos_line_item_groups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_pdf_templates`
--

CREATE TABLE `aos_pdf_templates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` longtext,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `type` varchar(100) DEFAULT NULL,
  `pdfheader` longtext,
  `pdffooter` longtext,
  `margin_left` int(255) DEFAULT '15',
  `margin_right` int(255) DEFAULT '15',
  `margin_top` int(255) DEFAULT '16',
  `margin_bottom` int(255) DEFAULT '16',
  `margin_header` int(255) DEFAULT '9',
  `margin_footer` int(255) DEFAULT '9',
  `page_size` varchar(100) DEFAULT NULL,
  `orientation` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aos_pdf_templates`
--

INSERT INTO `aos_pdf_templates` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `active`, `type`, `pdfheader`, `pdffooter`, `margin_left`, `margin_right`, `margin_top`, `margin_bottom`, `margin_header`, `margin_footer`, `page_size`, `orientation`) VALUES
('3714b2e4-d9c5-ee3b-31c4-62bebe3ea150', 'Salary Slip Report', '2022-07-01 09:30:33', '2022-07-20 15:00:50', '1', '1', '<table style=\"border:1px solid #000000;border-collapse:collapse;\"><tbody><tr><td style=\"text-align:center;border:1px solid #000000;width:100%;padding:10px;\" colspan=\"4\"><span style=\"font-size:large;\"><strong><img src=\"custom/themes/default/images/company_logo.png\" alt=\"\" width=\"350\" height=\"84\" /></strong></span><br /><span style=\"font-size:small;\">705, City Center, Opp-Shukan Mall, Science City, Ahmedabad-380060 Gujarat, INDIA</span></td></tr><tr><td style=\"text-align:center;border:1px solid;width:100%;padding:10px;\" colspan=\"4\"><span style=\"font-size:large;\"><strong>Pay Slip</strong></span></td></tr><tr><td style=\"border:1px solid;padding:10px;\" colspan=\"2\"><strong>Employee Name:</strong> $contacts_ssi_salary_slip_1_name_name</td><td style=\"border:1px solid;padding:10px;\" colspan=\"2\"><strong>IT PAN No:</strong> $contacts_ssi_salary_slip_1_name_pan_card_number</td></tr><tr><td style=\"border:1px solid;padding:10px;\" colspan=\"2\"><strong>Designation:</strong> $contacts_ssi_salary_slip_1_name_title</td><td style=\"border:1px solid;padding:10px;\" colspan=\"2\"><strong>Department: </strong>$contacts_ssi_salary_slip_1_name_department</td></tr><tr><td style=\"border:1px solid;padding:10px;\" colspan=\"4\"><strong>Date of Joining:</strong> $contacts_ssi_salary_slip_1_name_date_of_joining</td></tr><tr><td style=\"border:1px solid;padding:10px;\" colspan=\"2\"><strong>Month & Year:</strong> {month_year}</td><td style=\"border:1px solid;padding:10px;\" colspan=\"2\"><strong>Days Worked: </strong>$ssi_salary_slip_days_worked</td></tr><tr><td style=\"border:1px solid;text-align:center;padding:10px;\" colspan=\"2\"><strong>Earnings (INR)</strong></td><td style=\"border:1px solid;text-align:center;padding:10px;\" colspan=\"2\"><strong>Deductions (INR)</strong></td></tr><tr><td style=\"border:1px solid;padding:10px;text-align:center;\"><strong>Salary Head</strong></td><td style=\"border:1px solid;padding:10px;text-align:center;\"><strong>Amount</strong></td><td style=\"border:1px solid;padding:10px;text-align:center;\"><strong>Salary Head</strong></td><td style=\"border:1px solid;padding:10px;text-align:center;\"><strong>Amount</strong></td></tr><tr><td style=\"border:1px solid;padding:10px;\">Basic</td><td style=\"border:1px solid;padding:10px;text-align:center;\">{basic}</td><td style=\"border:1px solid;padding:10px;\">PF Employee</td><td style=\"border:1px solid;padding:10px;text-align:center;\">{pf}</td></tr><tr><td style=\"border:1px solid;padding:10px;\">H R A</td><td style=\"border:1px solid;padding:10px;text-align:center;\">{hra}</td><td style=\"border:1px solid;padding:10px;\">ESI Employee</td><td style=\"border:1px solid;padding:10px;text-align:center;\">{esi}</td></tr><tr><td style=\"border:1px solid;padding:10px;\">Conv. All</td><td style=\"border:1px solid;padding:10px;text-align:center;\">{conv}</td><td style=\"border:1px solid;padding:10px;\">Loan</td><td style=\"border:1px solid;padding:10px;text-align:center;\">{loan}</td></tr><tr><td style=\"border:1px solid;padding:10px;\">Trans. All</td><td style=\"border:1px solid;padding:10px;text-align:center;\">{trans}</td><td style=\"border:1px solid;padding:10px;\">Prof. Tax</td><td style=\"border:1px solid;padding:10px;text-align:center;\">{tax}</td></tr><tr><td style=\"border:1px solid;padding:10px;\">Special. All</td><td style=\"border:1px solid;padding:10px;text-align:center;\">{special}</td><td style=\"border:1px solid;padding:10px;\"> </td><td style=\"border:1px solid;padding:10px;text-align:center;\"> </td></tr><tr><td style=\"border:1px solid;padding:10px;\">Medical Allowance</td><td style=\"border:1px solid;padding:10px;text-align:center;\">{medical}</td><td style=\"border:1px solid;padding:10px;\"> </td><td style=\"border:1px solid;padding:10px;text-align:center;\"> </td></tr><tr><td style=\"border:1px solid;padding:10px;\"> </td><td style=\"border:1px solid;padding:10px;text-align:center;\"> </td><td style=\"border:1px solid;padding:10px;\"> </td><td style=\"border:1px solid;padding:10px;text-align:center;\"> </td></tr><tr><td style=\"border:1px solid;padding:10px;\"><strong>Gross Earning</strong></td><td style=\"border:1px solid;padding:10px;text-align:center;\">{gross_earning} </td><td style=\"border:1px solid;padding:10px;\"><strong>Gross Deduction</strong></td><td style=\"border:1px solid;padding:10px;text-align:center;\">{gross_deduction} </td></tr><tr><td style=\"border:1px solid;padding:10px;\"><strong>Net Amount</strong></td><td style=\"border:1px solid;padding:10px;\" colspan=\"3\">{net_amount} </td></tr><tr><td style=\"border:1px solid;padding:10px;\"><strong>Net Amount In Words</strong></td><td style=\"border:1px solid;padding:10px;\" colspan=\"3\">$ssi_salary_slip_net_amount_in_words </td></tr><tr><td style=\"border:1px solid;padding:10px;\"><strong>Payment Details :</strong></td><td style=\"border:1px solid;padding-left:10px;\" colspan=\"3\"><p>Payment Date : $ssi_salary_slip_payment_date<br />A/C No : $contacts_ssi_salary_slip_1_name_bank_account_number<br /> Bank : $contacts_ssi_salary_slip_1_name_bank_name</p></td></tr></tbody></table><p style=\"text-align:center;\"> </p><p style=\"text-align:center;\"><span style=\"font-size:x-small;\"> This is a system generated payslip no signature required.</span></p>', 0, '1', 1, 'SSI_Salary_Slip', NULL, NULL, 15, 15, 11, 9, 4, 4, 'A4', 'Portrait'),
('6ab4936e-4ca3-c9bf-41c3-62d957daf876', 'state_invoice', '2022-07-21 13:43:02', '2022-07-27 09:28:46', '1', '1', '<table style=\"border:1px solid #000000;border-collapse:collapse;width:2020px;height:180px;\"><tbody><tr><td style=\"text-align:center;border:1px solid #000000;width:100%;padding:8px;background-color:#b8cce4;\" colspan=\"2\"><span style=\"font-size:18px;\"> <strong>Tax Invoice</strong> </span></td></tr><tr><td style=\"border:1px solid #000000;padding-left:5px;width:60%;\" rowspan=\"5\"><strong>SixthSenseInfo</strong> <br />114, New Natraj Complex, <br />Gurukul Road, Memnagar, <br />Ahmedabad-380052,Gujrat,INDIA <br /> <strong>GSTIN: 24AMJPM6558Q1Z7</strong></td><td style=\"border:1px solid #000000;padding-left:5px;width:40%;\">Invoice No: $aos_invoices_ssi_invoice_number</td></tr><tr><td style=\"border:1px solid #000000;padding-left:5px;\">Invoice Date: $aos_invoices_invoice_date</td></tr><tr><td style=\"border:1px solid #000000;padding-left:5px;\">Place of Supply: $billing_account_place_of_supply</td></tr><tr><td style=\"border:1px solid #000000;padding-left:5px;\"> </td></tr></tbody></table><table style=\"border:1px solid #000000;border-collapse:collapse;height:223px;width:2020px;\"><tbody><tr><td style=\"text-align:center;border:1px solid #000000;width:100%;padding:5px;background-color:#b8cce4;\" colspan=\"2\"><span style=\"font-size:15px;\"> <strong>Bill/Service provided to Party [Original for recipient] </strong> </span></td></tr><tr><td style=\"border:1px solid #000000;width:100%;padding-left:5px;\" colspan=\"2\"><strong>Name: $billing_account_name</strong></td></tr><tr><td style=\"border:1px solid #000000;width:100%;padding-left:5px;\" colspan=\"2\">Address - $billing_account_billing_address_street <br />$billing_account_billing_address_city - $billing_account_billing_address_postalcode, <br />$billing_account_billing_address_state,$billing_account_billing_address_country</td></tr><tr><td style=\"border:1px solid #000000;width:100%;padding-left:5px;\" colspan=\"2\"><strong>GSTIN: $billing_account_gst_number</strong></td></tr><tr><td style=\"border:1px solid #000000;width:100%;padding-left:5px;\" colspan=\"2\"><strong>State: $billing_account_place_of_supply</strong></td></tr><tr><td style=\"border:1px solid #000000;width:100%;padding-left:5px;\" colspan=\"2\"><strong>State Code: $billing_account_state_code</strong></td></tr></tbody></table><table style=\"border:1px solid #000000;border-collapse:collapse;width:2020px;\"><tbody><tr style=\"background-color:#b8cce4;\"><td style=\"border-bottom:1px solid #000000;border-right:1px solid #000000;width:5%;padding-left:5px;text-align:center;\" rowspan=\"2\"><strong>No.</strong></td><td style=\"border-bottom:1px solid #000000;border-right:1px solid #000000;width:49%;padding-left:5px;text-align:center;\" rowspan=\"2\"><strong>Description</strong></td><td style=\"border-bottom:1px solid #000000;border-right:1px solid #000000;width:9%;padding-left:5px;text-align:center;\" rowspan=\"2\"><strong>SAC <br />Code </strong></td><td style=\"border-bottom:1px solid #000000;border-right:1px solid #000000;width:15%;padding-left:5px;text-align:center;\" rowspan=\"2\"><strong>Taxable <br />Value </strong></td><td style=\"text-align:center;border-bottom:1px solid #000000;width:11%;padding-left:5px;\"><strong>SGST</strong></td><td style=\"text-align:center;border-bottom:1px solid #000000;width:11%;padding-left:5px;\"><strong>CGST</strong></td></tr><tr style=\"background-color:#b8cce4;\"><td style=\"border-bottom:1px solid #000000;border-right:1px solid #000000;padding-left:5px;text-align:center;\"><strong>Rate(9%)</strong></td><td style=\"border-bottom:1px solid #000000;padding-left:5px;text-align:center;\"><strong>Rate(9%)</strong></td></tr><tr><td style=\"border-bottom:1px solid #000000;border-right:1px solid #000000;padding-left:5px;padding-top:5px;text-align:center;vertical-align:top;\">$aos_services_quotes_number</td><td style=\"border-bottom:1px solid #000000;border-right:1px solid #000000;padding-left:5px;padding-bottom:5px;\">$aos_services_quotes_name</td><td style=\"border-bottom:1px solid #000000;border-right:1px solid #000000;padding-left:5px;text-align:center;padding-top:5px;vertical-align:top;\">998313</td><td style=\"border-bottom:1px solid #000000;border-right:1px solid #000000;padding-left:5px;text-align:center;padding-top:5px;vertical-align:top;\">$aos_services_quotes_service_unit_price</td><td style=\"border-bottom:1px solid #000000;border-right:1px solid #000000;padding-left:5px;text-align:center;padding-top:5px;vertical-align:top;\">$aos_services_quotes_sgst_vat_amt</td><td style=\"border-bottom:1px solid #000000;padding-left:5px;text-align:center;padding-top:5px;vertical-align:top;\">$aos_services_quotes_cgst_vat_amt</td></tr><tr><td style=\"border-right:1px solid #000000;border-bottom:1px solid #000000;padding-left:5px;background-color:#b8cce4;text-align:center;\" colspan=\"3\"><strong> Amount </strong></td><td style=\"border-right:1px solid #000000;border-bottom:1px solid #000000;padding-left:5px;text-align:center;\">$aos_invoices_subtotal_amount</td><td style=\"border-right:1px solid #000000;border-bottom:1px solid #000000;padding-left:5px;text-align:center;\">$aos_invoices_sgst_tax_amount</td><td style=\"border-bottom:1px solid #000000;padding-left:5px;text-align:center;\">$aos_invoices_cgst_tax_amount</td></tr><tr><td style=\"border-right:1px solid #000000;border-bottom:1px solid #000000;padding-left:5px;background-color:#b8cce4;text-align:center;\" colspan=\"2\"><strong> Total Invoice Amount In Words </strong></td><td style=\"border-right:1px solid #000000;border-bottom:1px solid #000000;padding-left:5px;font-size:13px;\" colspan=\"3\">Total Amount Before Tax (INR):</td><td style=\"border-bottom:1px solid #000000;padding-left:5px;text-align:center;\">$aos_invoices_subtotal_amount</td></tr><tr><td style=\"border-right:1px solid #000000;padding-left:5px;border-bottom:1px solid #000000;text-align:center;\" rowspan=\"2\" colspan=\"2\">{total_amount_in_words}</td><td style=\"border-right:1px solid #000000;border-bottom:1px solid #000000;padding-left:5px;font-size:13px;\" colspan=\"3\">GST (SGST + CGST) INR:</td><td style=\"border-bottom:1px solid #000000;padding-left:5px;text-align:center;\">$aos_invoices_tax_amount</td></tr><tr><td style=\"border-bottom:1px solid #000000;border-right:1px solid #000000;padding:5px;font-size:13px;\" colspan=\"3\"><strong>Total Amount After Tax (INR):</strong></td><td style=\"border-bottom:1px solid #000000;padding-left:5px;\"><strong>$aos_invoices_total_amount/-</strong></td></tr></tbody></table><table style=\"border:1px solid #000000;border-collapse:collapse;width:2020px;\"><tbody><tr><td style=\"text-align:center;border-bottom:1px solid #000000;width:58%;padding-left:5px;background-color:#b8cce4;\" colspan=\"2\"><strong>Bank Details</strong></td><td style=\"border:1px solid #000000;padding-left:5px;width:42%;vertical-align:bottom;text-align:center;\" rowspan=\"7\"><span style=\"font-size:x-small;\">For SixthSeneInfo, Authorised Signatory</span></td></tr><tr><td style=\"border-bottom:1px solid #000000;border-right:1px solid #000000;width:25%;padding-left:5px;\">Bank Name:</td><td style=\"border-bottom:1px solid #000000;width:35%;padding-left:5px;\">State Bank Of India</td></tr><tr><td style=\"border-bottom:1px solid #000000;border-right:1px solid #000000;width:25%;padding-left:5px;\">Bank A/C Name:</td><td style=\"border-bottom:1px solid #000000;width:35%;padding-left:5px;\">SixthSenseInfo</td></tr><tr><td style=\"border-bottom:1px solid #000000;border-right:1px solid #000000;width:25%;padding-left:5px;\">Bank A/C No:</td><td style=\"border-bottom:1px solid #000000;width:35%;padding-left:5px;\">35487836348</td></tr><tr><td style=\"border-bottom:1px solid #000000;border-right:1px solid #000000;width:25%;padding-left:5px;\">Bank Branch:</td><td style=\"border-bottom:1px solid #000000;width:35%;padding-left:5px;\">Drive-In Road,Ahmedabad</td></tr><tr><td style=\"border-bottom:1px solid #000000;border-right:1px solid #000000;width:25%;padding-left:5px;\">Bank IFSC Code:</td><td style=\"border-bottom:1px solid #000000;width:35%;padding-left:5px;\">SBIN0004192</td></tr><tr><td style=\"border-right:1px solid #000000;width:25%;padding-left:5px;\">Bank Swift Code:</td><td style=\"width:35%;padding-left:5px;\">SBININBB417</td></tr></tbody></table>', 0, '1', 1, 'AOS_Invoices', '<table style=\"width:100%;\" align=\"right\"><tbody><tr><td width=\"40%\"> </td><td style=\"margin-right:100px;text-align:right;\" width=\"60%\"><img src=\"custom/themes/SuiteP/images/ssi_clr_logo.png\" alt=\"\" width=\"175\" height=\"87\" /> </td></tr></tbody></table>', '<table style=\"width:100%;\" align=\"right\"><tbody><tr><td style=\"margin-right:100px;text-align:right;\" width=\"100%\"><img src=\"custom/themes/SuiteP/images/footer.png\" alt=\"\" /> </td></tr></tbody></table>', 30, 15, 35, 10, 3, 3, 'A4', 'Portrait'),
('8adbfe39-1803-e7f8-4d62-62e3711a6ae4', 'hourly_invoice', '2022-07-29 05:35:07', '2024-01-22 07:31:36', '1', '1', '<table style=\"width:100%;\"><tbody><tr><td style=\"text-align:left;width:45%;\"><span style=\"font-size:large;\"> <strong>DEVANG MEHTA</strong> </span></td><td style=\"text-align:right;width:55%;\"><span style=\"font-size:x-large;\"> <strong>INVOICE</strong> </span></td></tr><tr><td style=\"text-align:left;vertical-align:top;\" rowspan=\"3\"><span style=\"font-size:medium;\"><span style=\"font-size:large;\">114-New Natraj Complex</span><br /><span style=\"font-size:large;\">Gurukul Road, Memnagar,</span><br /><span style=\"font-size:large;\">Ahmedabad, GUJARAT, INDIA</span><br /><span style=\"font-size:large;\">Mob : +91-9824921331</span><br /><span style=\"font-size:large;\">Email : devmehta555@gmail.com</span><br /></span></td><td style=\"text-align:right;vertical-align:top;\"><span style=\"font-size:large;\">Date : $aos_invoices_invoice_date<br />Invoice :  #$aos_invoices_ssi_invoice_number<br />GSTIN: 24AMJPM6558Q1Z7<br />For : $aos_invoices_name<br /></span></td></tr></tbody></table><p style=\"padding-left:5px;\"><span style=\"font-size:large;\"><strong>BILL TO : $billing_account_name</strong></span><br /><span style=\"font-size:large;\">$billing_account_billing_address_street </span><br /><span style=\"font-size:large;\">$billing_account_billing_address_city - $billing_account_billing_address_postalcode, </span><br /><span style=\"font-size:large;\">$billing_account_billing_address_state,$billing_account_billing_address_country </span><br /><span style=\"font-size:large;\">Email : $billing_account_email1 | Phone : $billing_account_phone_office</span></p><table style=\"border:1px solid #000000;border-collapse:collapse;width:100%;\"><tbody><tr style=\"background-color:#808080;\"><td style=\"border:1px solid #000000;width:70%;padding-left:5px;text-align:center;\"><span style=\"font-size:large;\"><strong>DESCRIPTION</strong></span></td><td style=\"border:1px solid #000000;width:10%;padding-left:5px;text-align:center;\"><span style=\"font-size:large;\"><strong>HOURS</strong></span></td><td style=\"border:1px solid #000000;width:10%;padding-left:5px;text-align:center;\"><span style=\"font-size:large;\"><strong>RATE </strong></span></td><td style=\"border:1px solid #000000;width:10%;padding-left:5px;text-align:center;\"><strong>AMOUNT</strong></td></tr><tr><td style=\"border:1px solid #000000;width:70%;padding-left:5px;text-align:center;\"><span style=\"font-size:medium;\">$aos_products_quotes_item_description</span></td><td style=\"border:1px solid #000000;width:10%;padding-left:5px;text-align:center;\"><span style=\"font-size:medium;\">$aos_products_quotes_product_qty</span></td><td style=\"border:1px solid #000000;width:10%;padding-left:5px;text-align:center;\">$<span style=\"font-size:medium;\">$aos_products_quotes_product_list_price_usdollar</span></td><td style=\"border:1px solid #000000;width:10%;padding-left:5px;text-align:center;\">$<span style=\"font-size:medium;\">$aos_products_quotes_product_total_price_usdollar</span></td></tr><tr><td style=\"border:1px solid #000000;width:70%;padding-left:5px;text-align:right;\"><span style=\"font-size:large;\"><strong>Total Hours :</strong></span></td><td style=\"border:1px solid #000000;width:10%;padding-left:5px;text-align:center;\"><span style=\"font-size:medium;\">$aos_invoices_total_qty</span></td><td style=\"border:1px solid #000000;width:10%;padding-left:5px;text-align:center;\"> </td><td style=\"border:1px solid #000000;width:10%;padding-left:5px;text-align:center;\"> </td></tr><tr><td style=\"border:1px solid #000000;width:90%;padding-left:5px;text-align:right;\" colspan=\"3\"><strong><span style=\"font-size:large;\">TOTAL</span>:</strong></td><td style=\"border:1px solid #000000;width:10%;padding-left:5px;text-align:center;\">$<span style=\"font-size:medium;\">$aos_invoices_total_amount_usdollar</span></td></tr></tbody></table><p style=\"padding-left:5px;\"><span style=\"font-size:large;\"><strong><span style=\"text-decoration:underline;\">Bank Details :</span></strong> <br /><strong>Account Name :</strong> Devang Mehta <br /><strong>Bank Name :</strong> State Bank Of India <br /><strong>Branch Name :</strong> Drive-In Road, AHMEDABAD <br /><strong>Bank Account No :</strong> 20074191234 <br /><strong>Bank Account Type :</strong> Savings <br /><strong>IFSC Code :</strong> SBIN0004193 <br /><strong>Swift Code :</strong> SBININBB412 </span></p>', 0, '1', 1, 'AOS_Invoices', NULL, NULL, 15, 15, 16, 16, 9, 9, 'A4', 'Portrait'),
('909e108b-e0a1-07fb-ddf3-62da67aa2800', 'igst_invoice', '2022-07-22 09:03:14', '2022-07-27 09:20:48', '1', '1', '<table style=\"border:1px solid #000000;border-collapse:collapse;width:2020px;height:180px;\"><tbody><tr><td style=\"text-align:center;border:1px solid #000000;width:100%;padding:8px;background-color:#b8cce4;\" colspan=\"2\"><span style=\"font-size:18px;\"> <strong>Tax Invoice</strong> </span></td></tr><tr><td style=\"border:1px solid #000000;padding-left:5px;width:60%;\" rowspan=\"5\"><strong>SixthSenseInfo</strong> <br />114, New Natraj Complex, <br />Gurukul Road, Memnagar, <br />Ahmedabad-380052,Gujrat,INDIA <br /> <strong>GSTIN: 24AMJPM6558Q1Z7</strong></td><td style=\"border:1px solid #000000;padding-left:5px;width:40%;\">Invoice No: $aos_invoices_ssi_invoice_number</td></tr><tr><td style=\"border:1px solid #000000;padding-left:5px;\">Invoice Date: $aos_invoices_invoice_date</td></tr><tr><td style=\"border:1px solid #000000;padding-left:5px;\">Place of Supply: $billing_account_place_of_supply</td></tr><tr><td style=\"border:1px solid #000000;padding-left:5px;\"> </td></tr></tbody></table><table style=\"border:1px solid #000000;border-collapse:collapse;height:223px;width:2020px;\"><tbody><tr><td style=\"text-align:center;border:1px solid #000000;width:100%;padding:5px;background-color:#b8cce4;\" colspan=\"2\"><span style=\"font-size:15px;\"> <strong>Bill/Service provided to Party [Original for recipient] </strong> </span></td></tr><tr><td style=\"border:1px solid #000000;width:100%;padding-left:5px;\" colspan=\"2\"><strong>Name: $billing_account_name</strong></td></tr><tr><td style=\"border:1px solid #000000;width:100%;padding-left:5px;\" colspan=\"2\">Address - $billing_account_billing_address_street <br />$billing_account_billing_address_city - $billing_account_billing_address_postalcode, <br />$billing_account_billing_address_state,$billing_account_billing_address_country</td></tr><tr><td style=\"border:1px solid #000000;width:100%;padding-left:5px;\" colspan=\"2\"><strong>GSTIN: $billing_account_gst_number</strong></td></tr><tr><td style=\"border:1px solid #000000;width:100%;padding-left:5px;\" colspan=\"2\"><strong>State: $billing_account_place_of_supply</strong></td></tr><tr><td style=\"border:1px solid #000000;width:100%;padding-left:5px;\" colspan=\"2\"><strong>State Code: $billing_account_state_code</strong></td></tr></tbody></table><table style=\"border:1px solid #000000;border-collapse:collapse;width:2020px;\"><tbody><tr style=\"background-color:#b8cce4;\"><td style=\"border-bottom:1px solid #000000;border-right:1px solid #000000;width:6%;padding-left:5px;text-align:center;\" rowspan=\"2\"><strong>No.</strong></td><td style=\"border-bottom:1px solid #000000;border-right:1px solid #000000;width:40%;padding-left:5px;text-align:center;\" rowspan=\"2\"><strong>Description</strong></td><td style=\"border-bottom:1px solid #000000;border-right:1px solid #000000;width:12%;padding-left:5px;text-align:center;\" rowspan=\"2\"><strong>SAC <br />Code </strong></td><td style=\"border-bottom:1px solid #000000;border-right:1px solid #000000;width:15%;padding-left:5px;text-align:center;\" rowspan=\"2\"><strong>Taxable <br />Value </strong></td><td style=\"text-align:center;border-bottom:1px solid #000000;width:27%;padding-left:5px;\" colspan=\"2\"><strong>IGST</strong></td></tr><tr style=\"background-color:#b8cce4;\"><td style=\"border-bottom:1px solid #000000;border-right:1px solid #000000;width:11%;padding-left:5px;text-align:center;\"><strong>Rate</strong></td><td style=\"border-bottom:1px solid #000000;width:16%;padding-left:5px;text-align:center;\"><strong>Amount</strong></td></tr><tr><td style=\"border-bottom:1px solid #000000;border-right:1px solid #000000;width:6%;padding-left:5px;padding-top:5px;text-align:center;vertical-align:top;\">$aos_services_quotes_number</td><td style=\"border-bottom:1px solid #000000;border-right:1px solid #000000;width:40%;padding-left:5px;padding-bottom:5px;\">$aos_services_quotes_name</td><td style=\"border-bottom:1px solid #000000;border-right:1px solid #000000;width:12%;padding-left:5px;text-align:center;padding-top:5px;vertical-align:top;\">998313</td><td style=\"border-bottom:1px solid #000000;border-right:1px solid #000000;width:15%;padding-left:5px;text-align:center;padding-top:5px;vertical-align:top;\">$aos_services_quotes_service_unit_price</td><td style=\"border-bottom:1px solid #000000;border-right:1px solid #000000;width:11%;padding-left:5px;text-align:center;padding-top:5px;vertical-align:top;\">$aos_services_quotes_vat</td><td style=\"border-bottom:1px solid #000000;width:16%;padding-left:5px;text-align:center;padding-top:5px;vertical-align:top;\">$aos_services_quotes_vat_amt</td></tr><tr><td style=\"border-right:1px solid #000000;border-bottom:1px solid #000000;width:58%;padding-left:5px;background-color:#b8cce4;text-align:center;\" colspan=\"3\"><strong> Amount </strong></td><td style=\"border-right:1px solid #000000;border-bottom:1px solid #000000;width:15%;padding-left:5px;text-align:center;\">$aos_invoices_subtotal_amount</td><td style=\"border-right:1px solid #000000;border-bottom:1px solid #000000;width:11%;padding-left:5px;\"> </td><td style=\"border-bottom:1px solid #000000;width:16%;padding-left:5px;text-align:center;\">$aos_invoices_tax_amount</td></tr><tr><td style=\"border-right:1px solid #000000;border-bottom:1px solid #000000;width:46%;padding-left:5px;background-color:#b8cce4;text-align:center;\" colspan=\"2\"><strong> Total Invoice Amount In Words </strong></td><td style=\"border-right:1px solid #000000;border-bottom:1px solid #000000;width:38%;padding-left:5px;font-size:13px;\" colspan=\"3\">Total Amount Before Tax (INR):</td><td style=\"border-bottom:1px solid #000000;width:16%;padding-left:5px;text-align:center;\">$aos_invoices_subtotal_amount</td></tr><tr><td style=\"border-right:1px solid #000000;width:46%;padding-left:5px;border-bottom:1px solid #000000;text-align:center;\" rowspan=\"2\" colspan=\"2\">{total_amount_in_words}</td><td style=\"border-right:1px solid #000000;border-bottom:1px solid #000000;width:38%;padding-left:5px;font-size:13px;\" colspan=\"3\">Add IGST (INR):</td><td style=\"border-bottom:1px solid #000000;width:16%;padding-left:5px;text-align:center;\">$aos_invoices_tax_amount</td></tr><tr><td style=\"border-bottom:1px solid #000000;border-right:1px solid #000000;width:38%;padding:5px;font-size:13px;\" colspan=\"3\"><strong>Total Amount After Tax (INR):</strong></td><td style=\"border-bottom:1px solid #000000;width:16%;padding-left:5px;text-align:center;\"><strong>$aos_invoices_total_amount/-</strong></td></tr></tbody></table><table style=\"border:1px solid #000000;border-collapse:collapse;width:2020px;\"><tbody><tr><td style=\"text-align:center;border-bottom:1px solid #000000;width:58%;padding-left:5px;background-color:#b8cce4;\" colspan=\"2\"><strong>Bank Details</strong></td><td style=\"border:1px solid #000000;padding-left:5px;width:42%;vertical-align:bottom;text-align:center;\" rowspan=\"7\"><span style=\"font-size:x-small;\">For SixthSeneInfo, Authorised Signatory</span></td></tr><tr><td style=\"border-bottom:1px solid #000000;border-right:1px solid #000000;width:25%;padding-left:5px;\">Bank Name:</td><td style=\"border-bottom:1px solid #000000;width:35%;padding-left:5px;\">State Bank Of India</td></tr><tr><td style=\"border-bottom:1px solid #000000;border-right:1px solid #000000;width:25%;padding-left:5px;\">Bank A/C Name:</td><td style=\"border-bottom:1px solid #000000;width:35%;padding-left:5px;\">SixthSenseInfo</td></tr><tr><td style=\"border-bottom:1px solid #000000;border-right:1px solid #000000;width:25%;padding-left:5px;\">Bank A/C No:</td><td style=\"border-bottom:1px solid #000000;width:35%;padding-left:5px;\">35487836348</td></tr><tr><td style=\"border-bottom:1px solid #000000;border-right:1px solid #000000;width:25%;padding-left:5px;\">Bank Branch:</td><td style=\"border-bottom:1px solid #000000;width:35%;padding-left:5px;\">Drive-In Road,Ahmedabad</td></tr><tr><td style=\"border-bottom:1px solid #000000;border-right:1px solid #000000;width:25%;padding-left:5px;\">Bank IFSC Code:</td><td style=\"border-bottom:1px solid #000000;width:35%;padding-left:5px;\">SBIN0004192</td></tr><tr><td style=\"border-right:1px solid #000000;width:25%;padding-left:5px;\">Bank Swift Code:</td><td style=\"width:35%;padding-left:5px;\">SBININBB417</td></tr></tbody></table>', 0, '1', 1, 'AOS_Invoices', '<table style=\"width:100%;\" align=\"right\"><tbody><tr><td width=\"40%\"> </td><td style=\"margin-right:100px;text-align:right;\" width=\"60%\"><img src=\"custom/themes/SuiteP/images/ssi_clr_logo.png\" alt=\"\" width=\"175\" height=\"87\" /> </td></tr></tbody></table>', '<table style=\"width:100%;\" align=\"right\"><tbody><tr><td style=\"margin-right:100px;text-align:right;\" width=\"100%\"><img src=\"custom/themes/SuiteP/images/footer.png\" alt=\"\" /> </td></tr></tbody></table>', 30, 15, 35, 10, 3, 3, 'A4', 'Portrait');

-- --------------------------------------------------------

--
-- Table structure for table `aos_pdf_templates_audit`
--

CREATE TABLE `aos_pdf_templates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aos_pdf_templates_audit`
--

INSERT INTO `aos_pdf_templates_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES
('1d67016e-47c7-b99a-f7b6-62bed03ac7ad', '3714b2e4-d9c5-ee3b-31c4-62bebe3ea150', '2022-07-01 10:47:00', '1', 'type', 'enum', 'AOS_Quotes', 'SSI_Salary_Slip', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aos_products`
--

CREATE TABLE `aos_products` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `maincode` varchar(100) DEFAULT 'XXXX',
  `part_number` varchar(25) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT 'Good',
  `cost` decimal(26,6) DEFAULT NULL,
  `cost_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `price` decimal(26,6) DEFAULT NULL,
  `price_usdollar` decimal(26,6) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `aos_product_category_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aos_products`
--

INSERT INTO `aos_products` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `maincode`, `part_number`, `category`, `type`, `cost`, `cost_usdollar`, `currency_id`, `price`, `price_usdollar`, `url`, `contact_id`, `product_image`, `aos_product_category_id`) VALUES
('3c6ae36c-4c9a-db35-2020-62e36715357f', '5.0 - CRM customization', '2022-07-29 04:52:08', '2022-07-29 04:52:08', '1', '1', '', 0, NULL, 'XXXX', '5.0 - CRM customization', NULL, 'Service', '5.000000', '5.000000', '-99', '5.000000', '5.000000', '', '', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_audit`
--

CREATE TABLE `aos_products_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_quotes`
--

CREATE TABLE `aos_products_quotes` (
  `id` char(36) NOT NULL,
  `name` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `item_description` text,
  `number` int(11) DEFAULT NULL,
  `product_qty` decimal(18,4) DEFAULT NULL,
  `product_cost_price` decimal(26,6) DEFAULT NULL,
  `product_cost_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_list_price` decimal(26,6) DEFAULT NULL,
  `product_list_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount` decimal(26,6) DEFAULT NULL,
  `product_discount_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount_amount` decimal(26,6) DEFAULT NULL,
  `product_discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount` varchar(255) DEFAULT 'Percentage',
  `product_unit_price` decimal(26,6) DEFAULT NULL,
  `product_unit_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat_amt` decimal(26,6) DEFAULT NULL,
  `vat_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `product_total_price` decimal(26,6) DEFAULT NULL,
  `product_total_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat` varchar(100) DEFAULT '5.0',
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `product_id` char(36) DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL,
  `sgst_vat_amt` decimal(26,6) DEFAULT NULL,
  `sgst_vat_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `sgst_vat` decimal(18,2) DEFAULT NULL,
  `cgst_vat_amt` decimal(26,6) DEFAULT NULL,
  `cgst_vat_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `cgst_vat` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aos_products_quotes`
--

INSERT INTO `aos_products_quotes` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `currency_id`, `part_number`, `item_description`, `number`, `product_qty`, `product_cost_price`, `product_cost_price_usdollar`, `product_list_price`, `product_list_price_usdollar`, `product_discount`, `product_discount_usdollar`, `product_discount_amount`, `product_discount_amount_usdollar`, `discount`, `product_unit_price`, `product_unit_price_usdollar`, `vat_amt`, `vat_amt_usdollar`, `product_total_price`, `product_total_price_usdollar`, `vat`, `parent_type`, `parent_id`, `product_id`, `group_id`, `sgst_vat_amt`, `sgst_vat_amt_usdollar`, `sgst_vat`, `cgst_vat_amt`, `cgst_vat_amt_usdollar`, `cgst_vat`) VALUES
('120d1d94-3928-e807-6fd4-62e76ee5f06d', '5.0 - CRM customization', '2022-08-01 06:12:43', '2022-08-01 06:14:31', '1', '1', NULL, 0, '1', 'e8af8224-55f2-2eca-be1f-62e3b25efa88', '5.0 - CRM customization', 'Jira Task RIN-4', 3, '1.2500', '5.000000', '5.000000', '5.000000', '5.000000', NULL, '0.000000', NULL, '0.000000', 'Percentage', '5.000000', '5.000000', '0.000000', '0.000000', '6.250000', '6.250000', '0.0', 'AOS_Invoices', '4a32c15f-a8ad-6a67-e5d2-62e36866d4f2', '3c6ae36c-4c9a-db35-2020-62e36715357f', '7cfb8a4a-312b-e0d2-ff22-62e368731d28', '0.000000', '0.000000', NULL, '0.000000', '0.000000', NULL),
('1e64a2a2-1b0c-db18-903d-62dfdfbc034c', 'Codeigniter Developer for 1 month during June-2022', '2022-07-26 12:36:35', '2022-07-27 09:26:56', '1', '1', NULL, 0, '1', '-99', NULL, NULL, 1, NULL, NULL, '0.000000', '120000.000000', '120000.000000', '0.000000', '0.000000', '0.000000', '0.000000', 'Percentage', '120000.000000', '120000.000000', '21600.000000', '21600.000000', '120000.000000', '120000.000000', '18.0', 'AOS_Invoices', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '0', 'd1a9dad7-966d-669d-9806-62d943f04a99', '10800.000000', '10800.000000', '9.00', '10800.000000', '10800.000000', '9.00'),
('28e45dd1-5b2f-17c4-f0ef-62dfdf011068', 'Wordpress Developer + Frontend developer for 1 month during June-2022', '2022-07-26 12:36:35', '2022-07-27 09:26:56', '1', '1', NULL, 0, '1', '-99', NULL, NULL, 2, NULL, NULL, '0.000000', '140050.000000', '140050.000000', '0.000000', '0.000000', '0.000000', '0.000000', 'Percentage', '140050.000000', '140050.000000', '25209.000000', '25209.000000', '140050.000000', '140050.000000', '18.0', 'AOS_Invoices', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '0', 'd1a9dad7-966d-669d-9806-62d943f04a99', '12604.500000', '12604.500000', '9.00', '12604.500000', '12604.500000', '9.00'),
('3075e403-deda-6540-6f44-62dfdfbf9ec2', 'Curator Developer  for 1 month during June-2022', '2022-07-26 12:36:35', '2022-07-27 09:26:56', '1', '1', NULL, 0, '1', '-99', NULL, NULL, 3, NULL, NULL, '0.000000', '125000.000000', '125000.000000', '0.000000', '0.000000', '0.000000', '0.000000', 'Percentage', '125000.000000', '125000.000000', '22500.000000', '22500.000000', '125000.000000', '125000.000000', '18.0', 'AOS_Invoices', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '0', 'd1a9dad7-966d-669d-9806-62d943f04a99', '11250.000000', '11250.000000', '9.00', '11250.000000', '11250.000000', '9.00'),
('37c90716-5621-3987-9121-62dfdf75d7dc', 'AW cloud and server support during June-2022', '2022-07-26 12:36:35', '2022-07-27 09:26:56', '1', '1', NULL, 0, '1', '-99', NULL, NULL, 4, NULL, NULL, '0.000000', '95000.000000', '95000.000000', '0.000000', '0.000000', '0.000000', '0.000000', 'Percentage', '95000.000000', '95000.000000', '17100.000000', '17100.000000', '95000.000000', '95000.000000', '18.0', 'AOS_Invoices', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '0', 'd1a9dad7-966d-669d-9806-62d943f04a99', '8550.000000', '8550.000000', '9.00', '8550.000000', '8550.000000', '9.00'),
('8f4b420d-9228-c2e0-df60-62e368033486', '5.0 - CRM customization', '2022-07-29 04:56:39', '2022-08-01 06:14:31', '1', '1', NULL, 0, '1', 'e8af8224-55f2-2eca-be1f-62e3b25efa88', '5.0 - CRM customization', 'Jira Task RIN-1', 1, '25.2500', '5.000000', '5.000000', '5.000000', '5.000000', '0.000000', '0.000000', '0.000000', '0.000000', 'Percentage', '5.000000', '5.000000', '0.000000', '0.000000', '126.250000', '126.250000', '0.0', 'AOS_Invoices', '4a32c15f-a8ad-6a67-e5d2-62e36866d4f2', '3c6ae36c-4c9a-db35-2020-62e36715357f', '7cfb8a4a-312b-e0d2-ff22-62e368731d28', '0.000000', '0.000000', NULL, '0.000000', '0.000000', NULL),
('981567df-3955-d2ee-fb9d-62e368dc921a', '5.0 - CRM customization', '2022-07-29 04:56:39', '2022-08-01 06:14:31', '1', '1', NULL, 0, '1', 'e8af8224-55f2-2eca-be1f-62e3b25efa88', '5.0 - CRM customization', 'Jira Task RIN-1', 2, '3.5000', '5.000000', '5.000000', '5.000000', '5.000000', '0.000000', '0.000000', '0.000000', '0.000000', 'Percentage', '5.000000', '5.000000', '0.000000', '0.000000', '17.500000', '17.500000', '0.0', 'AOS_Invoices', '4a32c15f-a8ad-6a67-e5d2-62e36866d4f2', '3c6ae36c-4c9a-db35-2020-62e36715357f', '7cfb8a4a-312b-e0d2-ff22-62e368731d28', '0.000000', '0.000000', NULL, '0.000000', '0.000000', NULL),
('aab9c069-e230-2142-2754-62e104141305', 'SugarCRM Developer for 1 month during June-2022', '2022-07-27 09:26:56', '2022-07-27 09:26:56', '1', '1', NULL, 0, '1', '-99', '', NULL, 5, NULL, NULL, '0.000000', '100000.000000', '100000.000000', '0.000000', '0.000000', '0.000000', '0.000000', 'Percentage', '100000.000000', '100000.000000', '18000.000000', '18000.000000', '100000.000000', '100000.000000', '18.0', 'AOS_Invoices', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '0', 'd1a9dad7-966d-669d-9806-62d943f04a99', '9000.000000', '9000.000000', '9.00', '9000.000000', '9000.000000', '9.00'),
('e57095c4-ce4d-cd4f-3f66-62d943869a5b', 'SuiteCRM Developer for 1 month during June-2022', '2022-07-21 12:16:18', '2022-07-27 09:26:56', '1', '', NULL, 1, '', '-99', NULL, NULL, 1, NULL, NULL, '0.000000', '50000.000000', '50000.000000', '0.000000', '0.000000', '0.000000', '0.000000', 'Percentage', '50000.000000', '50000.000000', '9000.000000', '9000.000000', '50000.000000', '50000.000000', '18.0', 'AOS_Invoices', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', '0', 'd1a9dad7-966d-669d-9806-62d943f04a99', '0.000000', '0.000000', NULL, '0.000000', '0.000000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_quotes_audit`
--

CREATE TABLE `aos_products_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aos_products_quotes_audit`
--

INSERT INTO `aos_products_quotes_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES
('100bcfc5-0ef6-542d-34d4-62e1031754df', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-27 09:21:32', '1', 'product_unit_price', 'currency', '14050.000000', '140050', NULL, NULL),
('10f6f595-dbd9-d37f-ab37-62dfdfe375c4', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-26 12:36:35', '1', 'vat_amt_usdollar', 'currency', '1826.100000', '1800', NULL, NULL),
('1470d514-b79a-567b-35a8-62e103ea05aa', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-27 09:21:32', '1', 'product_unit_price_usdollar', 'currency', '14050.000000', '140050', NULL, NULL),
('14df03e1-e46e-fcb1-2fc0-62dfdf672e34', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-26 12:36:35', '1', 'product_total_price', 'currency', '10145.000000', '10000', NULL, NULL),
('15e10178-226f-284e-9c24-62e00cde4615', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-26 15:46:20', '1', 'product_list_price', 'currency', '14500.000000', '140500', NULL, NULL),
('18253525-30a2-6fbe-fbd6-62e0f703820f', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-27 08:29:07', '1', 'cgst_vat_amt_usdollar', 'currency', '10800.000000', '1080', NULL, NULL),
('19059217-579f-87b7-0bdd-62dfdffaeed1', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-26 12:36:35', '1', 'product_total_price_usdollar', 'currency', '10145.000000', '10000', NULL, NULL),
('19cfe972-78c5-fe1f-5a6f-62e103f5d897', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-27 09:21:32', '1', 'vat_amt', 'currency', '2529.000000', '25209', NULL, NULL),
('1b0197a0-2c8a-932f-382f-62e00c417a20', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-26 15:46:20', '1', 'product_list_price_usdollar', 'currency', '14500.000000', '140500', NULL, NULL),
('1e300d71-3806-d3b7-7ea0-62dfdf4ada8a', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-26 12:36:35', '1', 'product_list_price_usdollar', 'currency', '10145.000000', '10000', NULL, NULL),
('1e34f798-b496-1aed-bcdd-62e103a68537', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-27 09:21:32', '1', 'vat_amt_usdollar', 'currency', '2529.000000', '25209', NULL, NULL),
('1f282433-3cf3-53f3-c519-62e00ca8af29', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-26 15:46:20', '1', 'product_unit_price', 'currency', '14500.000000', '140500', NULL, NULL),
('221d02ce-da99-4c3b-42d4-62e10350568c', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-27 09:21:32', '1', 'product_total_price', 'currency', '14050.000000', '140050', NULL, NULL),
('234eb569-0f51-3360-1217-62e00c8bf386', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-26 15:46:20', '1', 'product_unit_price_usdollar', 'currency', '14500.000000', '140500', NULL, NULL),
('26439fcb-e11d-a8ac-dd1f-62e103d70855', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-27 09:21:32', '1', 'product_total_price_usdollar', 'currency', '14050.000000', '140050', NULL, NULL),
('27754101-65eb-fe18-e4bd-62e00c905946', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-26 15:46:20', '1', 'vat_amt', 'currency', '2610.000000', '25290', NULL, NULL),
('2a6a271b-ba15-489b-dc17-62e10357c33b', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-27 09:21:32', '1', 'sgst_vat_amt', 'currency', '1264.500000', '12604.5', NULL, NULL),
('2b9bd0cc-11c8-a556-21ea-62e00c39df0f', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-26 15:46:20', '1', 'vat_amt_usdollar', 'currency', '2610.000000', '25290', NULL, NULL),
('2e90b004-349e-0de1-f306-62e103af59db', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-27 09:21:32', '1', 'sgst_vat_amt_usdollar', 'currency', '1264.500000', '12604.5', NULL, NULL),
('2fc262b8-d0a2-ab62-9b35-62e00c59f0c8', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-26 15:46:20', '1', 'product_total_price', 'currency', '14500.000000', '140500', NULL, NULL),
('308f90b4-2634-a1ee-dc07-62e0f7c4b0a5', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-27 08:29:07', '1', 'product_list_price', 'currency', '140500.000000', '14050', NULL, NULL),
('33e8f5e2-4ef2-6b53-cf5d-62e00c0fb813', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-26 15:46:20', '1', 'product_total_price_usdollar', 'currency', '14500.000000', '140500', NULL, NULL),
('362d2af0-3efb-374f-6df7-62e0f79d90d1', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-27 08:29:07', '1', 'product_list_price_usdollar', 'currency', '140500.000000', '14050', NULL, NULL),
('36470310-2ace-e425-ecf2-62e0f77d5fae', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-27 08:29:07', '1', 'product_total_price_usdollar', 'currency', '120000.000000', '12000', NULL, NULL),
('380f8d7d-0334-b168-5633-62e00c86035b', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-26 15:46:20', '1', 'sgst_vat_amt', 'currency', '1305.000000', '12645', NULL, NULL),
('3a53b2c8-6f3a-85b3-e72b-62e0f78cea03', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-27 08:29:07', '1', 'product_unit_price', 'currency', '140500.000000', '14050', NULL, NULL),
('3c361fa4-c635-ccd5-1964-62e00cef4280', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-26 15:46:20', '1', 'sgst_vat_amt_usdollar', 'currency', '1305.000000', '12645', NULL, NULL),
('3eb8c463-58aa-501e-9f81-62e0f79cac79', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-27 08:29:07', '1', 'product_unit_price_usdollar', 'currency', '140500.000000', '14050', NULL, NULL),
('3f7ab005-9039-5702-0f4e-62dfbac71da4', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-26 09:57:05', '1', 'product_list_price', 'currency', '32500.000000', '10145', NULL, NULL),
('405ca379-2caf-026d-e2a6-62e00c984d07', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-26 15:46:20', '1', 'cgst_vat_amt', 'currency', '1305.000000', '12645', NULL, NULL),
('42a0dd87-3635-3a0c-7290-62e0f7921238', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-27 08:29:07', '1', 'vat_amt', 'currency', '25290.000000', '2529', NULL, NULL),
('43a142a2-deb1-74ce-d537-62dfba3afe32', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-26 09:57:05', '1', 'product_list_price_usdollar', 'currency', '32500.000000', '10145', NULL, NULL),
('444c05d9-5fa2-606f-c0c3-62dfdf731f46', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-26 12:36:35', '1', 'product_unit_price', 'currency', '10145.000000', '10000', NULL, NULL),
('4483347d-b4de-0840-92d6-62e00cf0f480', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-26 15:46:20', '1', 'cgst_vat_amt_usdollar', 'currency', '1305.000000', '12645', NULL, NULL),
('44cc0c59-1297-d869-9b5e-62e00c27583d', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-26 15:46:20', '1', 'sgst_vat_amt_usdollar', 'currency', '1080.000000', '10800', NULL, NULL),
('47446c96-68af-6001-8e01-62e0f76146fb', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-27 08:29:07', '1', 'vat_amt_usdollar', 'currency', '25290.000000', '2529', NULL, NULL),
('47c7dc6e-3493-22cb-628d-62dfba7c184c', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-26 09:57:05', '1', 'product_unit_price', 'currency', '32500.000000', '10145', NULL, NULL),
('4aedf83c-e3ef-a1b2-0561-62e0f7bab0fa', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-27 08:29:07', '1', 'product_total_price', 'currency', '140500.000000', '14050', NULL, NULL),
('4bee6363-716a-85e5-8f59-62dfbaa88f20', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-26 09:57:05', '1', 'product_unit_price_usdollar', 'currency', '32500.000000', '10145', NULL, NULL),
('4e4755c4-4408-f125-c199-62e00c7c3ebf', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-26 15:46:20', '1', 'product_list_price', 'currency', '12500.000000', '125000', NULL, NULL),
('4f5307f6-c625-4ce5-96bc-62e0f77149fa', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-27 08:29:07', '1', 'product_total_price_usdollar', 'currency', '140500.000000', '14050', NULL, NULL),
('50537386-0439-8fda-8e6f-62dfba229bfe', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-26 09:57:05', '1', 'vat_amt', 'currency', '5850.000000', '1826.1', NULL, NULL),
('5231ede6-2a5d-c418-a829-62dfb1d7cb8f', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-26 09:20:51', '1', 'vat_amt', 'currency', '5687.500000', '5850', NULL, NULL),
('533b1e88-8e40-13fe-f459-62e0f7581729', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-27 08:29:07', '1', 'sgst_vat_amt', 'currency', '12645.000000', '1264.5', NULL, NULL),
('53e4e9ac-bdc9-0d24-c860-62e00c597ca5', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-26 15:46:20', '1', 'product_list_price_usdollar', 'currency', '12500.000000', '125000', NULL, NULL),
('543b80f6-cabc-2cba-39e9-62dfba129a70', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-26 09:57:05', '1', 'vat_amt_usdollar', 'currency', '5850.000000', '1826.1', NULL, NULL),
('55840536-bd49-76fa-ba7f-62e104a907eb', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 09:26:56', '1', 'assigned_user_id', 'relate', '1', '', NULL, NULL),
('5761a3df-0f7a-118e-3e48-62e0f74663ea', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-27 08:29:07', '1', 'sgst_vat_amt_usdollar', 'currency', '12645.000000', '1264.5', NULL, NULL),
('580b71b9-7d2c-17c4-b6ba-62e00cfbc93a', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-26 15:46:20', '1', 'product_unit_price', 'currency', '12500.000000', '125000', NULL, NULL),
('58621a7c-9d73-01a4-5b44-62dfba30f5bd', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-26 09:57:05', '1', 'product_total_price', 'currency', '32500.000000', '10145', NULL, NULL),
('598ceff9-cb86-547c-96c3-62e1033ba9d2', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-27 09:21:32', '1', 'product_list_price', 'currency', '12500.000000', '125000', NULL, NULL),
('5b006bc4-730d-0a10-61fa-62e103b82855', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-27 09:21:32', '1', 'cgst_vat_amt', 'currency', '1264.500000', '12604.5', NULL, NULL),
('5b883901-8c1f-ed36-d519-62e0f7b53d59', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-27 08:29:07', '1', 'cgst_vat_amt', 'currency', '12645.000000', '1264.5', NULL, NULL),
('5c320a22-f9bb-939f-191e-62e00cb52e21', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-26 15:46:20', '1', 'product_unit_price_usdollar', 'currency', '12500.000000', '125000', NULL, NULL),
('5c88aa3b-f411-46e6-7d0a-62dfba0e19ad', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-26 09:57:05', '1', 'product_total_price_usdollar', 'currency', '32500.000000', '10145', NULL, NULL),
('5e67088d-97d5-92ff-e32c-62dfb15725ce', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-26 09:20:51', '1', 'vat_amt_usdollar', 'currency', '5687.500000', '5850', NULL, NULL),
('5fed4bd0-4950-2f65-ca44-62e0f72fc210', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-27 08:29:07', '1', 'cgst_vat_amt_usdollar', 'currency', '12645.000000', '1264.5', NULL, NULL),
('60589b4e-8867-6760-b209-62e00c1dcb4d', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-26 15:46:20', '1', 'vat_amt', 'currency', '2250.000000', '22500', NULL, NULL),
('647f2644-229e-628a-9e7f-62e00c6319a5', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-26 15:46:20', '1', 'vat_amt_usdollar', 'currency', '2250.000000', '22500', NULL, NULL),
('66faa08c-8098-a9f6-9e12-62e10348d749', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-27 09:21:32', '1', 'product_list_price_usdollar', 'currency', '12500.000000', '125000', NULL, NULL),
('68288da6-04fe-fa85-a351-62e0eec9bf66', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 07:53:30', '1', 'product_list_price', 'currency', '10155.000000', '100000', NULL, NULL),
('686206fc-951b-f197-0bf9-62e103ec4669', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-27 09:21:32', '1', 'product_list_price', 'currency', '14050.000000', '140050', NULL, NULL),
('68a5b2f6-5239-0155-96a5-62e00cfef32a', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-26 15:46:20', '1', 'product_total_price', 'currency', '12500.000000', '125000', NULL, NULL),
('6c983cbf-8c7a-42dc-1990-62e103892dab', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-27 09:21:32', '1', 'product_unit_price', 'currency', '12500.000000', '125000', NULL, NULL),
('6ccc4091-fc2c-ce00-74a1-62e00c305ae9', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-26 15:46:20', '1', 'product_total_price_usdollar', 'currency', '12500.000000', '125000', NULL, NULL),
('6e049ac8-5990-68ca-c7bd-62e0ee530283', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 07:53:30', '1', 'product_list_price_usdollar', 'currency', '10155.000000', '100000', NULL, NULL),
('70490399-6907-b4f5-62fd-62e0f7c20afd', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-27 08:29:07', '1', 'product_list_price', 'currency', '125000.000000', '12500', NULL, NULL),
('70bec869-4277-b60a-560c-62e1031371f5', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-27 09:21:32', '1', 'product_unit_price_usdollar', 'currency', '12500.000000', '125000', NULL, NULL),
('70f2dc79-b14b-b2d4-ba1e-62e00c324518', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-26 15:46:20', '1', 'sgst_vat_amt', 'currency', '1125.000000', '11250', NULL, NULL),
('722b2b6d-2748-712b-7c60-62e0eeaa2114', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 07:53:30', '1', 'product_unit_price', 'currency', '10155.000000', '100000', NULL, NULL),
('74e5574f-a6a0-0191-aa52-62e1030c24cd', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-27 09:21:32', '1', 'vat_amt', 'currency', '2250.000000', '22500', NULL, NULL),
('75196ba9-4c89-1a03-6183-62e00caedc9c', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-26 15:46:20', '1', 'sgst_vat_amt_usdollar', 'currency', '1125.000000', '11250', NULL, NULL),
('7651bb41-6528-dfb8-fdcc-62e0eedd3463', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 07:53:30', '1', 'product_unit_price_usdollar', 'currency', '10155.000000', '100000', NULL, NULL),
('76e0acec-9a3a-0cdc-9517-62e0f709294b', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-27 08:29:07', '1', 'product_list_price_usdollar', 'currency', '125000.000000', '12500', NULL, NULL),
('78af0f70-97bc-c056-9e13-62e0f7b4c8ef', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-27 08:29:07', '1', 'sgst_vat_amt', 'currency', '10800.000000', '1080', NULL, NULL),
('790becd8-4a25-6fe0-9708-62e103e0f2aa', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-27 09:21:32', '1', 'vat_amt_usdollar', 'currency', '2250.000000', '22500', NULL, NULL),
('793ffa0a-132e-03ba-4c3f-62e00cd69ef3', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-26 15:46:20', '1', 'cgst_vat_amt', 'currency', '1125.000000', '11250', NULL, NULL),
('7a783628-5490-7b3c-904f-62e0ee851daf', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 07:53:30', '1', 'vat_amt', 'currency', '1827.900000', '18000', NULL, NULL),
('7b45bdbc-01b9-7d09-5304-62e0f7a42dc2', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-27 08:29:07', '1', 'product_unit_price', 'currency', '125000.000000', '12500', NULL, NULL),
('7b7c0277-a8db-e8d5-99ac-62e00c5f27c8', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-26 15:46:20', '1', 'cgst_vat_amt', 'currency', '1080.000000', '10800', NULL, NULL),
('7d327855-0998-253c-e9f1-62e103d49a65', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-27 09:21:32', '1', 'product_total_price', 'currency', '12500.000000', '125000', NULL, NULL),
('7d668f78-11d0-f8ac-44a1-62e00c798e02', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-26 15:46:20', '1', 'cgst_vat_amt_usdollar', 'currency', '1125.000000', '11250', NULL, NULL),
('7e9edbf9-1110-5af0-162f-62e0ee1cf766', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 07:53:30', '1', 'vat_amt_usdollar', 'currency', '1827.900000', '18000', NULL, NULL),
('7f2dca81-d0c4-45ce-50ee-62e0f78505bc', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-27 08:29:07', '1', 'product_unit_price_usdollar', 'currency', '125000.000000', '12500', NULL, NULL),
('7f79406e-9f61-0db6-7231-62e104809807', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 09:24:52', '1', 'product_list_price', 'currency', '100000.000000', '50000', NULL, NULL),
('81590fd1-69a3-afbb-cdfa-62e1032b57c8', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-27 09:21:32', '1', 'product_total_price_usdollar', 'currency', '12500.000000', '125000', NULL, NULL),
('82c564f9-2e63-e783-96ef-62e0eea841ea', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 07:53:30', '1', 'product_total_price', 'currency', '10155.000000', '100000', NULL, NULL),
('8392d4b4-be09-73c8-93f9-62e0f78f7daa', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-27 08:29:07', '1', 'vat_amt', 'currency', '22500.000000', '2250', NULL, NULL),
('868de9a6-6499-774f-aaf5-62e10430e87c', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 09:24:52', '1', 'product_list_price_usdollar', 'currency', '100000.000000', '50000', NULL, NULL),
('86b501a9-6965-3c8c-9c27-62dfdf3bbc97', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-26 12:36:35', '1', 'product_unit_price_usdollar', 'currency', '10145.000000', '10000', NULL, NULL),
('86f69b4a-746b-d3f5-6a3f-62e10394ffe2', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-27 09:21:32', '1', 'sgst_vat_amt', 'currency', '1125.000000', '11250', NULL, NULL),
('872a7b3b-2c79-4a67-d5cd-62e0ee0ae204', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 07:53:30', '1', 'product_total_price_usdollar', 'currency', '10155.000000', '100000', NULL, NULL),
('877adb18-bac1-b7c3-e495-62e0f7e5638b', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-27 08:29:07', '1', 'vat_amt_usdollar', 'currency', '22500.000000', '2250', NULL, NULL),
('8a573b88-ece8-48cc-f374-62e00cc8d13b', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-26 15:46:20', '1', 'product_list_price', 'currency', '9500.000000', '95000', NULL, NULL),
('8ab473aa-8797-b4b2-f0b7-62e1048ffdef', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 09:24:52', '1', 'product_unit_price', 'currency', '100000.000000', '50000', NULL, NULL),
('8b1d2b45-cc47-05e2-1594-62e1037d1b40', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-27 09:21:32', '1', 'sgst_vat_amt_usdollar', 'currency', '1125.000000', '11250', NULL, NULL),
('8bdff25e-892b-77b6-f228-62e0f7052113', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-27 08:29:07', '1', 'product_total_price', 'currency', '125000.000000', '12500', NULL, NULL),
('8f394ffa-fbc8-d561-f79d-62e00c7e0d33', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-26 15:46:20', '1', 'product_list_price_usdollar', 'currency', '9500.000000', '95000', NULL, NULL),
('8f43b7a2-0cf3-54ec-7163-62e103921ea7', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-27 09:21:32', '1', 'cgst_vat_amt', 'currency', '1125.000000', '11250', NULL, NULL),
('8fc7faa7-47a6-a0df-eec4-62e0f726047e', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-27 08:29:07', '1', 'product_total_price_usdollar', 'currency', '125000.000000', '12500', NULL, NULL),
('903698a3-f7a9-5380-370d-62e103455489', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 09:21:32', '1', 'product_list_price', 'currency', '10000.000000', '100000', NULL, NULL),
('935fdd49-fedd-7ace-410e-62e00c336273', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-26 15:46:20', '1', 'product_unit_price', 'currency', '9500.000000', '95000', NULL, NULL),
('936a4ab9-05fd-6a8f-f008-62e10357fa18', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-27 09:21:32', '1', 'cgst_vat_amt_usdollar', 'currency', '1125.000000', '11250', NULL, NULL),
('942d0024-c877-6424-5c92-62e0f72d84bf', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-27 08:29:07', '1', 'sgst_vat_amt', 'currency', '11250.000000', '1125', NULL, NULL),
('94b71131-0ed4-a885-cb89-62e104c0eaf2', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 09:24:52', '1', 'product_unit_price_usdollar', 'currency', '100000.000000', '50000', NULL, NULL),
('955727e1-4baa-2a98-f186-62e103a057a3', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 09:21:32', '1', 'product_list_price_usdollar', 'currency', '10000.000000', '100000', NULL, NULL),
('97866a7d-c3f9-3919-4554-62e00cdf1684', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-26 15:46:20', '1', 'product_unit_price_usdollar', 'currency', '9500.000000', '95000', NULL, NULL),
('98151864-24a3-ebf4-bfae-62e0f7136b90', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-27 08:29:07', '1', 'sgst_vat_amt_usdollar', 'currency', '11250.000000', '1125', NULL, NULL),
('989f2c20-ca7e-0097-8f92-62e104d1961a', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 09:24:52', '1', 'vat_amt', 'currency', '18000.000000', '9000', NULL, NULL),
('99bc3de4-c1b0-1e47-0f6d-62e1036bab17', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 09:21:32', '1', 'product_unit_price', 'currency', '10000.000000', '100000', NULL, NULL),
('9b91c257-a6dc-68fa-cee1-62e0ee329876', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 07:52:31', '1', 'product_list_price', 'currency', '100000.000000', '10155', NULL, NULL),
('9bacf36b-5e6f-55a3-605f-62e00c06d615', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-26 15:46:20', '1', 'vat_amt', 'currency', '1710.000000', '17100', NULL, NULL),
('9c7a2e29-ea7d-dfdc-2d25-62e0f78f5489', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-27 08:29:07', '1', 'cgst_vat_amt', 'currency', '11250.000000', '1125', NULL, NULL),
('9d043d9e-6c09-6d1a-01eb-62e104c74dc2', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 09:24:52', '1', 'vat_amt_usdollar', 'currency', '18000.000000', '9000', NULL, NULL),
('9da442a8-71cc-1392-e559-62e10341ef30', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 09:21:32', '1', 'product_unit_price_usdollar', 'currency', '10000.000000', '100000', NULL, NULL),
('9fd3837c-b079-51a4-175c-62e00caacafb', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-26 15:46:20', '1', 'vat_amt_usdollar', 'currency', '1710.000000', '17100', NULL, NULL),
('a01c7d2a-abc5-c5c7-c817-62e103ae2e6b', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-27 09:21:32', '1', 'product_list_price', 'currency', '9500.000000', '95000', NULL, NULL),
('a0a0b522-2efd-bf50-036d-62e0f787f03a', '3075e403-deda-6540-6f44-62dfdfbf9ec2', '2022-07-27 08:29:07', '1', 'cgst_vat_amt_usdollar', 'currency', '11250.000000', '1125', NULL, NULL),
('a0ec40c2-1510-5ffd-392b-62e104901544', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 09:24:52', '1', 'product_total_price', 'currency', '100000.000000', '50000', NULL, NULL),
('a0f0d540-9168-4212-cb99-62e0ee627350', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 07:52:31', '1', 'product_list_price_usdollar', 'currency', '100000.000000', '10155', NULL, NULL),
('a209520f-6a35-c994-7a76-62e1033b3dbc', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 09:21:32', '1', 'vat_amt', 'currency', '1800.000000', '18000', NULL, NULL),
('a2c86f79-430e-0585-a7ce-62e1032cb5be', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-27 09:21:32', '1', 'cgst_vat_amt_usdollar', 'currency', '1264.500000', '12604.5', NULL, NULL),
('a4389931-5c53-f78d-879d-62e00cf00eaa', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-26 15:46:20', '1', 'product_total_price', 'currency', '9500.000000', '95000', NULL, NULL),
('a517666c-8352-59b5-ce71-62e0eeca3de9', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 07:52:31', '1', 'product_unit_price', 'currency', '100000.000000', '10155', NULL, NULL),
('a551528d-d48e-a235-6e85-62e104bb10eb', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 09:24:52', '1', 'product_total_price_usdollar', 'currency', '100000.000000', '50000', NULL, NULL),
('a5f16a9b-af20-1efa-ffc6-62e10310ce7f', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 09:21:32', '1', 'vat_amt_usdollar', 'currency', '1800.000000', '18000', NULL, NULL),
('a6f29f0c-44ae-fe86-6ed0-62e103ea65e0', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-27 09:21:32', '1', 'product_list_price_usdollar', 'currency', '9500.000000', '95000', NULL, NULL),
('a820ae09-f9dd-1597-3cc8-62e00ccf6fe8', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-26 15:46:20', '1', 'product_total_price_usdollar', 'currency', '9500.000000', '95000', NULL, NULL),
('a91718cf-441b-80db-aefe-62e00ca1526e', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-26 15:46:20', '1', 'product_list_price', 'currency', '10000.000000', '100000', NULL, NULL),
('a93dfbc7-03b0-b0e5-0664-62e0ee1f1a93', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 07:52:31', '1', 'product_unit_price_usdollar', 'currency', '100000.000000', '10155', NULL, NULL),
('aa567062-8ed0-78ae-184b-62e103b95fff', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 09:21:32', '1', 'product_total_price', 'currency', '10000.000000', '100000', NULL, NULL),
('aada9326-840a-dd6d-8427-62e103eba0e6', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-27 09:21:32', '1', 'product_unit_price', 'currency', '9500.000000', '95000', NULL, NULL),
('ab99d803-76a6-fb7e-3556-62e0f75f74e9', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 08:29:07', '1', 'product_list_price', 'currency', '100000.000000', '10000', NULL, NULL),
('ac85b130-b2cc-3bf3-5fc8-62e00c2846fe', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-26 15:46:20', '1', 'sgst_vat_amt', 'currency', '855.000000', '8550', NULL, NULL),
('ada30692-7869-8c1a-6f03-62e0ee0dfed5', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 07:52:31', '1', 'vat_amt', 'currency', '18000.000000', '1827.9', NULL, NULL),
('ae37a3a2-203e-bec0-008a-62e00c33b16e', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-26 15:46:20', '1', 'product_list_price_usdollar', 'currency', '10000.000000', '100000', NULL, NULL),
('ae7d0e46-7b77-0f92-595b-62e103183b62', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 09:21:32', '1', 'product_total_price_usdollar', 'currency', '10000.000000', '100000', NULL, NULL),
('af3fa139-8ba6-6531-fcd0-62e1036b6178', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-27 09:21:32', '1', 'product_unit_price_usdollar', 'currency', '9500.000000', '95000', NULL, NULL),
('b06dc994-366c-4ba0-b2ad-62e00cf5956f', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-26 15:46:20', '1', 'sgst_vat_amt_usdollar', 'currency', '855.000000', '8550', NULL, NULL),
('b0fc72c2-5dee-2a3e-b5fa-62e0f7a06d1e', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-27 08:29:07', '1', 'product_list_price', 'currency', '95000.000000', '9500', NULL, NULL),
('b137667c-a3e2-5032-99f6-62e0f7ee26c0', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 08:29:07', '1', 'product_list_price_usdollar', 'currency', '100000.000000', '10000', NULL, NULL),
('b25e3570-ff3d-4e57-77ad-62e00c680288', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-26 15:46:20', '1', 'product_unit_price', 'currency', '10000.000000', '100000', NULL, NULL),
('b327b0a9-2072-27af-3cef-62e103a758e3', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-27 09:21:32', '1', 'vat_amt', 'currency', '1710.000000', '17100', NULL, NULL),
('b43aa9a7-11ce-7537-16b0-62e0eeab21e3', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 07:52:31', '1', 'vat_amt_usdollar', 'currency', '18000.000000', '1827.9', NULL, NULL),
('b4d2d127-47e4-daca-71a8-62e00cd1e0a2', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-26 15:46:20', '1', 'cgst_vat_amt', 'currency', '855.000000', '8550', NULL, NULL),
('b51f73bb-4632-db21-2c67-62e0f7e5a433', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 08:29:07', '1', 'product_unit_price', 'currency', '100000.000000', '10000', NULL, NULL),
('b5230d24-9707-c005-69d7-62e0f76ce9a9', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-27 08:29:07', '1', 'product_list_price_usdollar', 'currency', '95000.000000', '9500', NULL, NULL),
('b6c341e2-2f33-ddca-9e07-62e00c177325', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-26 15:46:20', '1', 'product_unit_price_usdollar', 'currency', '10000.000000', '100000', NULL, NULL),
('b78cc13a-e847-59bb-64c5-62e103e4f01c', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-27 09:21:32', '1', 'vat_amt_usdollar', 'currency', '1710.000000', '17100', NULL, NULL),
('b8613593-6726-ac30-f550-62e0eeda4664', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 07:52:31', '1', 'product_total_price', 'currency', '100000.000000', '10155', NULL, NULL),
('b8bae2f2-e5ef-c9b9-652b-62e00c809230', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-26 15:46:20', '1', 'cgst_vat_amt_usdollar', 'currency', '855.000000', '8550', NULL, NULL),
('b90b10c9-082b-d989-605c-62e0f7406d51', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-27 08:29:07', '1', 'product_unit_price', 'currency', '95000.000000', '9500', NULL, NULL),
('b9848cdc-82f3-6bf7-7540-62e0f788aeee', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 08:29:07', '1', 'product_unit_price_usdollar', 'currency', '100000.000000', '10000', NULL, NULL),
('baab55ff-329b-b6e8-5ba3-62e00c8e49ad', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-26 15:46:20', '1', 'vat_amt', 'currency', '1800.000000', '18000', NULL, NULL),
('bb180dc2-66f3-2212-dc0a-62e0f75eaa5d', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-27 08:29:07', '1', 'sgst_vat_amt_usdollar', 'currency', '10800.000000', '1080', NULL, NULL),
('bc67b57b-f48e-9d6a-33b8-62e1036f8bed', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-27 09:21:32', '1', 'product_list_price', 'currency', '12000.000000', '120000', NULL, NULL),
('bc87bff7-b76d-895c-c4ff-62e0ee1ad02b', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 07:52:31', '1', 'product_total_price_usdollar', 'currency', '100000.000000', '10155', NULL, NULL),
('bd2a6d90-b029-08ea-7f91-62e103655a67', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-27 09:21:32', '1', 'product_total_price', 'currency', '9500.000000', '95000', NULL, NULL),
('bd31acaf-b42f-4c8e-be93-62e0f7184fe9', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-27 08:29:07', '1', 'product_unit_price_usdollar', 'currency', '95000.000000', '9500', NULL, NULL),
('bdab1889-87fb-9b9a-da38-62e0f7a8c114', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 08:29:07', '1', 'vat_amt', 'currency', '18000.000000', '1800', NULL, NULL),
('bde508bb-bd48-8beb-e5e8-62e00c6fe4e8', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-26 15:46:20', '1', 'cgst_vat_amt_usdollar', 'currency', '1080.000000', '10800', NULL, NULL),
('be530038-d2c4-1835-3032-62e103272529', '28e45dd1-5b2f-17c4-f0ef-62dfdf011068', '2022-07-27 09:21:32', '1', 'product_list_price_usdollar', 'currency', '14050.000000', '140050', NULL, NULL),
('bf106dd3-7f97-e2c4-40ef-62e00c8f9c08', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-26 15:46:20', '1', 'vat_amt_usdollar', 'currency', '1800.000000', '18000', NULL, NULL),
('c0dd093c-5906-11f1-5214-62e3b5dad6ba', '8f4b420d-9228-c2e0-df60-62e368033486', '2022-07-29 10:23:28', '1', 'product_total_price', 'currency', '25.000000', '26.25', NULL, NULL),
('c1127171-fc0d-5039-20da-62e10397f6cb', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-27 09:21:32', '1', 'product_total_price_usdollar', 'currency', '9500.000000', '95000', NULL, NULL),
('c1884d93-477d-c806-dd8f-62e103ee8b89', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-27 09:21:32', '1', 'product_list_price_usdollar', 'currency', '12000.000000', '120000', NULL, NULL),
('c1d1a14d-030f-a050-f8a7-62e0f7665691', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 08:29:07', '1', 'vat_amt_usdollar', 'currency', '18000.000000', '1800', NULL, NULL),
('c2f87e98-643d-0d5b-a3ab-62e00c4b7495', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-26 15:46:20', '1', 'product_total_price', 'currency', '10000.000000', '100000', NULL, NULL),
('c44648f0-903e-7e89-e8dd-62e0f753f05f', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-27 08:29:07', '1', 'vat_amt', 'currency', '17100.000000', '1710', NULL, NULL),
('c5778c8b-9417-37eb-e937-62e103e04dbf', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-27 09:21:32', '1', 'sgst_vat_amt', 'currency', '855.000000', '8550', NULL, NULL),
('c5b9b5a1-dbb2-1eb4-8179-62e0f743949e', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 08:29:07', '1', 'product_total_price', 'currency', '100000.000000', '10000', NULL, NULL),
('c5ed5ba0-6056-5fec-28f7-62e103245fe4', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-27 09:21:32', '1', 'product_unit_price', 'currency', '12000.000000', '120000', NULL, NULL),
('c75d8dfb-2a82-8342-1fc6-62e00c106888', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-26 15:46:20', '1', 'product_total_price_usdollar', 'currency', '10000.000000', '100000', NULL, NULL),
('c77929b0-a7c8-7de0-5c16-62e76f83a646', '8f4b420d-9228-c2e0-df60-62e368033486', '2022-08-01 06:14:31', '1', 'product_total_price', 'currency', '26.250000', '126.25', NULL, NULL),
('c86cdd67-6b1c-0017-19c2-62e0f7cb0b05', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-27 08:29:07', '1', 'vat_amt_usdollar', 'currency', '17100.000000', '1710', NULL, NULL),
('c95f934e-bf3b-6db1-7240-62e103035d91', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-27 09:21:32', '1', 'sgst_vat_amt_usdollar', 'currency', '855.000000', '8550', NULL, NULL),
('c9d565f9-ac37-4b9c-1c09-62e103bea89b', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-27 09:21:32', '1', 'product_unit_price_usdollar', 'currency', '12000.000000', '120000', NULL, NULL),
('ca1ec4c3-0e28-0951-e824-62e0f70dfc49', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-27 08:29:07', '1', 'product_total_price_usdollar', 'currency', '100000.000000', '10000', NULL, NULL),
('ccd1e8a6-c77c-0fc1-cdcf-62e0f78b625b', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-27 08:29:07', '1', 'product_total_price', 'currency', '95000.000000', '9500', NULL, NULL),
('cd060803-13da-3543-df46-62dfdfa3863f', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-26 12:36:35', '1', 'vat_amt', 'currency', '1826.100000', '1800', NULL, NULL),
('cd16b7c0-f04f-3f56-3380-62e76f917f04', '8f4b420d-9228-c2e0-df60-62e368033486', '2022-08-01 06:14:31', '1', 'product_total_price_usdollar', 'currency', '26.250000', '126.25', NULL, NULL),
('cdc4a24b-543f-c013-b24c-62e103d4723a', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-27 09:21:32', '1', 'cgst_vat_amt', 'currency', '855.000000', '8550', NULL, NULL),
('ce3a7a0a-1a1c-0ce5-71f7-62e10322b22c', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-27 09:21:32', '1', 'vat_amt', 'currency', '2160.000000', '21600', NULL, NULL),
('d07d405e-7836-db3e-8b86-62e3b5e715bb', '8f4b420d-9228-c2e0-df60-62e368033486', '2022-07-29 10:23:28', '1', 'product_total_price_usdollar', 'currency', '25.000000', '26.25', NULL, NULL),
('d0b9f55f-c733-8e7c-3fef-62e0f71f1577', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-27 08:29:07', '1', 'product_total_price_usdollar', 'currency', '95000.000000', '9500', NULL, NULL),
('d121ab60-2aad-1515-145f-62e00ca0adf9', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-26 15:46:20', '1', 'product_list_price', 'currency', '12000.000000', '120000', NULL, NULL),
('d1acbab2-a879-47f0-e4c4-62e103b0d506', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-27 09:21:32', '1', 'cgst_vat_amt_usdollar', 'currency', '855.000000', '8550', NULL, NULL),
('d2610dc5-2811-720d-af20-62e103e67da9', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-27 09:21:32', '1', 'vat_amt_usdollar', 'currency', '2160.000000', '21600', NULL, NULL),
('d51f0bf6-f81d-ee60-e75c-62e0f7950b28', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-27 08:29:07', '1', 'sgst_vat_amt', 'currency', '8550.000000', '855', NULL, NULL),
('d6424596-7a03-dbc2-c3e9-62e00c477cb8', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-26 15:46:20', '1', 'product_list_price_usdollar', 'currency', '12000.000000', '120000', NULL, NULL),
('d7c02aa9-0a80-0a03-17ea-62e103e2a757', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-27 09:21:32', '1', 'product_total_price', 'currency', '12000.000000', '120000', NULL, NULL),
('d9071f3b-ddce-5643-ad4d-62e0f791bd0e', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-27 08:29:07', '1', 'sgst_vat_amt_usdollar', 'currency', '8550.000000', '855', NULL, NULL),
('d9fd88aa-e1b1-ec4f-ff4b-62e0f70e24ce', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-27 08:29:07', '1', 'product_list_price', 'currency', '120000.000000', '12000', NULL, NULL),
('daa75c13-701c-8326-3187-62e00c324e9a', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-26 15:46:20', '1', 'product_unit_price', 'currency', '12000.000000', '120000', NULL, NULL),
('dc2534d3-23b8-3926-eab1-62e10386f59b', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-27 09:21:32', '1', 'product_total_price_usdollar', 'currency', '12000.000000', '120000', NULL, NULL),
('dd6c25df-67b4-c46a-b1bc-62e0f7812ade', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-27 08:29:07', '1', 'cgst_vat_amt', 'currency', '8550.000000', '855', NULL, NULL),
('de629803-4763-e22f-1b69-62e0f74858ee', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-27 08:29:07', '1', 'product_list_price_usdollar', 'currency', '120000.000000', '12000', NULL, NULL),
('decde420-d532-ccdf-fef2-62e00c2cfa2d', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-26 15:46:20', '1', 'product_unit_price_usdollar', 'currency', '12000.000000', '120000', NULL, NULL),
('e04bce9e-24c0-fbaf-b0c4-62e103617068', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-27 09:21:32', '1', 'sgst_vat_amt', 'currency', '1080.000000', '10800', NULL, NULL),
('e15437b9-18d0-33d5-ea8f-62e0f7435197', '37c90716-5621-3987-9121-62dfdf75d7dc', '2022-07-27 08:29:07', '1', 'cgst_vat_amt_usdollar', 'currency', '8550.000000', '855', NULL, NULL),
('e2c7a452-c85b-c0fb-23e3-62e0f706e673', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-27 08:29:07', '1', 'product_unit_price', 'currency', '120000.000000', '12000', NULL, NULL),
('e2f47737-2732-119c-c25d-62e00c064b7e', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-26 15:46:20', '1', 'vat_amt', 'currency', '2160.000000', '21600', NULL, NULL),
('e4725d31-bc5c-4d68-3df0-62e103b6109a', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-27 09:21:32', '1', 'sgst_vat_amt_usdollar', 'currency', '1080.000000', '10800', NULL, NULL),
('e4a1f842-9a87-3ae9-f347-62dfdfc57842', 'e57095c4-ce4d-cd4f-3f66-62d943869a5b', '2022-07-26 12:36:35', '1', 'product_list_price', 'currency', '10145.000000', '10000', NULL, NULL),
('e6afb61d-79b3-643b-0df6-62e0f72bc158', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-27 08:29:07', '1', 'product_unit_price_usdollar', 'currency', '120000.000000', '12000', NULL, NULL),
('e6dc85ad-8ba6-6790-5100-62e00c87c210', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-26 15:46:20', '1', 'vat_amt_usdollar', 'currency', '2160.000000', '21600', NULL, NULL),
('e898e006-7317-2512-a3c5-62e103ea9d3d', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-27 09:21:32', '1', 'cgst_vat_amt', 'currency', '1080.000000', '10800', NULL, NULL),
('eb14c850-1d28-cf63-0768-62e0f749eb95', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-27 08:29:07', '1', 'vat_amt', 'currency', '21600.000000', '2160', NULL, NULL),
('eb4190c6-108e-4c6f-c80e-62e00c0cb7a0', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-26 15:46:20', '1', 'product_total_price', 'currency', '12000.000000', '120000', NULL, NULL),
('ecbf78fd-b60f-6b7a-7810-62e10344c669', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-27 09:21:32', '1', 'cgst_vat_amt_usdollar', 'currency', '1080.000000', '10800', NULL, NULL),
('ef29969f-7ed0-25ef-e16b-62e00caa96c2', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-26 15:46:20', '1', 'product_total_price_usdollar', 'currency', '12000.000000', '120000', NULL, NULL),
('ef3b5b3f-0a48-7c7e-1dcb-62e0f74011a4', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-27 08:29:07', '1', 'vat_amt_usdollar', 'currency', '21600.000000', '2160', NULL, NULL),
('f38eb567-5b60-6431-1a49-62e00cadda7f', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-26 15:46:20', '1', 'sgst_vat_amt', 'currency', '1080.000000', '10800', NULL, NULL),
('f3a06c80-70e1-3ae4-88be-62e0f72e47cc', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-27 08:29:07', '1', 'product_total_price', 'currency', '120000.000000', '12000', NULL, NULL),
('fd800131-1582-7038-4cad-62e0f788307b', '1e64a2a2-1b0c-db18-903d-62dfdfbc034c', '2022-07-27 08:29:07', '1', 'cgst_vat_amt', 'currency', '10800.000000', '1080', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aos_product_categories`
--

CREATE TABLE `aos_product_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT '0',
  `parent_category_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_product_categories_audit`
--

CREATE TABLE `aos_product_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes`
--

CREATE TABLE `aos_quotes` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `approval_issue` text,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `template_ddown_c` text,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `stage` varchar(100) DEFAULT 'Draft',
  `term` varchar(100) DEFAULT NULL,
  `terms_c` text,
  `approval_status` varchar(100) DEFAULT NULL,
  `invoice_status` varchar(100) DEFAULT 'Not Invoiced',
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_aos_invoices_c`
--

CREATE TABLE `aos_quotes_aos_invoices_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes77d9_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes6b83nvoices_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_audit`
--

CREATE TABLE `aos_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_os_contracts_c`
--

CREATE TABLE `aos_quotes_os_contracts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotese81e_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes4dc0ntracts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_project_c`
--

CREATE TABLE `aos_quotes_project_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes1112_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes7207project_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_actions`
--

CREATE TABLE `aow_actions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `action_order` int(255) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `parameters` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_conditions`
--

CREATE TABLE `aow_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_processed`
--

CREATE TABLE `aow_processed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_processed_aow_actions`
--

CREATE TABLE `aow_processed_aow_actions` (
  `id` varchar(36) NOT NULL,
  `aow_processed_id` varchar(36) DEFAULT NULL,
  `aow_action_id` varchar(36) DEFAULT NULL,
  `status` varchar(36) DEFAULT 'Pending',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_workflow`
--

CREATE TABLE `aow_workflow` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `flow_module` varchar(100) DEFAULT NULL,
  `flow_run_on` varchar(100) DEFAULT '0',
  `status` varchar(100) DEFAULT 'Active',
  `run_when` varchar(100) DEFAULT 'Always',
  `multiple_runs` tinyint(1) DEFAULT '0',
  `run_on_import` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_workflow_audit`
--

CREATE TABLE `aow_workflow_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bugs`
--

CREATE TABLE `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `bug_number` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bugs_audit`
--

CREATE TABLE `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls`
--

CREATE TABLE `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(2) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_contacts`
--

CREATE TABLE `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_leads`
--

CREATE TABLE `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_reschedule`
--

CREATE TABLE `calls_reschedule` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_reschedule_audit`
--

CREATE TABLE `calls_reschedule_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_users`
--

CREATE TABLE `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL,
  `tracker_count` int(11) DEFAULT '0',
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int(11) DEFAULT '0',
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text,
  `content` text,
  `frequency` varchar(100) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns_audit`
--

CREATE TABLE `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_log`
--

CREATE TABLE `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_trkrs`
--

CREATE TABLE `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(255) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int(11) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_number` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text,
  `work_log` text,
  `account_id` char(36) DEFAULT NULL,
  `state` varchar(100) DEFAULT 'Open',
  `contact_created_by_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cases_audit`
--

CREATE TABLE `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cases_bugs`
--

CREATE TABLE `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cases_cstm`
--

CREATE TABLE `cases_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`category`, `name`, `value`) VALUES
('notify', 'fromaddress', 'rahul@sixthsenseinfo.com'),
('notify', 'fromname', 'SixthSenseInfo'),
('notify', 'send_by_default', '1'),
('notify', 'on', '1'),
('notify', 'send_from_assigning_user', '0'),
('MySettings', 'tab', 'YToxMzp7aTowO3M6NDoiSG9tZSI7aToxO3M6ODoiQWNjb3VudHMiO2k6MjtzOjg6IkNvbnRhY3RzIjtpOjM7czoyMDoiU1NJX1NhbGFyeV9TdHJ1Y3R1cmUiO2k6NDtzOjE1OiJTU0lfU2FsYXJ5X1NsaXAiO2k6NTtzOjk6IkRvY3VtZW50cyI7aTo2O3M6NjoiRW1haWxzIjtpOjc7czo1OiJOb3RlcyI7aTo4O3M6MTE6IlNTSV9Ib2xpZGF5IjtpOjk7czoxNzoiQU9TX1BERl9UZW1wbGF0ZXMiO2k6MTA7czoxMjoiQU9TX1Byb2R1Y3RzIjtpOjExO3M6MjI6IkFPU19Qcm9kdWN0X0NhdGVnb3JpZXMiO2k6MTI7czoxNDoiRW1haWxUZW1wbGF0ZXMiO30='),
('portal', 'on', '0'),
('tracker', 'Tracker', '1'),
('sugarfeed', 'enabled', '1'),
('sugarfeed', 'module_UserFeed', '1'),
('sugarfeed', 'module_Cases', '1'),
('sugarfeed', 'module_Contacts', '1'),
('sugarfeed', 'module_Leads', '1'),
('sugarfeed', 'module_Opportunities', '1'),
('Update', 'CheckUpdates', 'manual'),
('system', 'name', 'SixthSenseInfo'),
('system', 'adminwizard', '1'),
('notify', 'allow_default_outbound', '2'),
('proxy', 'on', '0'),
('proxy', 'host', ''),
('proxy', 'port', ''),
('proxy', 'auth', '0'),
('proxy', 'username', ''),
('proxy', 'password', ''),
('MySettings', 'disable_useredit', 'no'),
('MySettings', 'hide_subpanels', 'YToyMjp7czo1OiJsZWFkcyI7czo1OiJsZWFkcyI7czoxNDoic2VjdXJpdHlncm91cHMiO3M6MTQ6InNlY3VyaXR5Z3JvdXBzIjtzOjg6Im1lZXRpbmdzIjtzOjg6Im1lZXRpbmdzIjtzOjEzOiJwcm9zcGVjdGxpc3RzIjtzOjEzOiJwcm9zcGVjdGxpc3RzIjtzOjEzOiJhb3NfY29udHJhY3RzIjtzOjEzOiJhb3NfY29udHJhY3RzIjtzOjk6InByb3NwZWN0cyI7czo5OiJwcm9zcGVjdHMiO3M6NzoicHJvamVjdCI7czo3OiJwcm9qZWN0IjtzOjE5OiJhbV9wcm9qZWN0dGVtcGxhdGVzIjtzOjE5OiJhbV9wcm9qZWN0dGVtcGxhdGVzIjtzOjEwOiJhb3NfcXVvdGVzIjtzOjEwOiJhb3NfcXVvdGVzIjtzOjE3OiJhb2tfa25vd2xlZGdlYmFzZSI7czoxNzoiYW9rX2tub3dsZWRnZWJhc2UiO3M6Mjk6ImFva19rbm93bGVkZ2VfYmFzZV9jYXRlZ29yaWVzIjtzOjI5OiJhb2tfa25vd2xlZGdlX2Jhc2VfY2F0ZWdvcmllcyI7czoyMToiYW9yX3NjaGVkdWxlZF9yZXBvcnRzIjtzOjIxOiJhb3Jfc2NoZWR1bGVkX3JlcG9ydHMiO3M6MjI6ImFvc19wcm9kdWN0X2NhdGVnb3JpZXMiO3M6MjI6ImFvc19wcm9kdWN0X2NhdGVnb3JpZXMiO3M6MTI6ImFvc19wcm9kdWN0cyI7czoxMjoiYW9zX3Byb2R1Y3RzIjtzOjEwOiJqandnX2FyZWFzIjtzOjEwOiJqandnX2FyZWFzIjtzOjk6Impqd2dfbWFwcyI7czo5OiJqandnX21hcHMiO3M6MTI6Impqd2dfbWFya2VycyI7czoxMjoiamp3Z19tYXJrZXJzIjtzOjQ6ImJ1Z3MiO3M6NDoiYnVncyI7czoxMzoib3Bwb3J0dW5pdGllcyI7czoxMzoib3Bwb3J0dW5pdGllcyI7czo1OiJjYXNlcyI7czo1OiJjYXNlcyI7czo5OiJmcF9ldmVudHMiO3M6OToiZnBfZXZlbnRzIjtzOjExOiJjYW1wYWlnbmxvZyI7czoxMToiY2FtcGFpZ25sb2ciO30='),
('info', 'sugar_version', '6.5.25');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `joomla_account_id` varchar(255) DEFAULT NULL,
  `portal_account_disabled` tinyint(1) DEFAULT NULL,
  `portal_user_type` varchar(100) DEFAULT 'Single',
  `contact_type` varchar(100) DEFAULT NULL,
  `pan_card_number` varchar(13) DEFAULT NULL,
  `bank_account_number` varchar(30) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_ifc_code` varchar(30) DEFAULT NULL,
  `date_of_joining` date DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `salutation`, `first_name`, `last_name`, `title`, `photo`, `department`, `do_not_call`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `lawful_basis`, `date_reviewed`, `lawful_basis_source`, `primary_address_street`, `primary_address_city`, `primary_address_state`, `primary_address_postalcode`, `primary_address_country`, `alt_address_street`, `alt_address_city`, `alt_address_state`, `alt_address_postalcode`, `alt_address_country`, `assistant`, `assistant_phone`, `lead_source`, `reports_to_id`, `birthdate`, `campaign_id`, `joomla_account_id`, `portal_account_disabled`, `portal_user_type`, `contact_type`, `pan_card_number`, `bank_account_number`, `bank_name`, `bank_ifc_code`, `date_of_joining`, `status`) VALUES
('20ffdb4e-f9e0-f2b2-37b5-62d8163a1e94', '2022-07-20 14:52:35', '2022-07-20 14:52:35', '1', '1', '', 0, '1', 'Mrs.', 'Brinda', 'Patel', 'QA Engineer', NULL, 'Software Development', 0, NULL, '8460496511', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Single', 'Employee', '', '10075024431', 'DFC First Bank, Science City Branch', '', '2021-11-01', 'Active'),
('228de31b-39ff-3be1-a1d2-6258010f610d', '2022-04-14 11:10:51', '2024-01-22 11:51:43', '1', '1', NULL, 0, '', 'Mrs.', 'Bhargavi', 'Patel', 'Software Developer', NULL, 'Software Development', 0, NULL, '7698639263', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3, Sooraj Bunglow,\r\nNear - Pooja School,\r\nBaroda Express Way, CTM', 'Ahmedabad', 'Gujarat', '380008', 'INDIA', NULL, NULL, NULL, '', '1992-09-06', '', NULL, 0, 'Single', 'Employee', 'CWLPP7225F', '37911648841', 'State Bank Of India', NULL, '2020-06-20', 'Active'),
('627266ab-5b5e-10e0-5e0a-62d810208840', '2022-07-20 14:26:04', '2022-07-20 14:26:04', '1', '1', '', 0, '1', 'Mr.', 'Kaushal', 'Mehta', 'Sr. Accountant', NULL, 'Accounts', 0, NULL, '8460736562', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '5, Mangalkruti Apartment, Sterling Park,\r\nDrive-in Road, Memnagar', 'Ahmedabad', 'Gujarat', '380052', 'INDIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Single', 'Employee', 'CZCPM2642B', '10059948805', 'IDFC FIRST Bank', '', '2020-09-01', 'Active'),
('6a85d251-6616-187d-a1e6-63216563d408', '2022-09-14 05:26:08', '2022-09-14 05:39:16', '1', '1', NULL, 0, '1', 'Miss', 'Ruchita', 'Nakrani', NULL, NULL, NULL, 0, NULL, NULL, '9824921331', NULL, NULL, NULL, NULL, NULL, '114, New Natraj Complex,\r\nGurukul Road, Memnagar,', 'Ahmedabad', 'Gujarat', '380052', 'INDIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, 0, 'Single', 'Employee', NULL, NULL, NULL, NULL, NULL, 'Active'),
('a9fe604d-5017-3ed8-7155-62d817e28437', '2022-07-20 14:55:49', '2022-07-20 14:55:49', '1', '1', '', 0, '1', 'Mrs.', 'Arati', 'Barvadiya', 'Accountant', NULL, 'Accounts', 0, NULL, '9537846684', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Single', 'Employee', '', '34326669957', 'State Bank of India', '', '2021-10-01', 'Active'),
('ba28c9d0-5f37-5410-8f37-62d80b666572', '2022-07-20 14:06:03', '2022-07-20 14:10:54', '1', '1', NULL, 0, '1', 'Mrs.', 'Pooja', 'Chavda', 'CRM Developer', NULL, 'Software Development', 0, NULL, '8839771572', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', NULL, 0, 'Single', 'Employee', 'ASTPC7919H', '50100183521007', 'HDFC Bank', NULL, '2020-10-01', 'Active'),
('bbdd79f1-ee4e-c9d1-435d-62d815c477dd', '2022-07-20 14:45:58', '2022-07-25 09:17:20', '1', '1', NULL, 0, '1', 'Mr.', 'Krunal', 'Mehta', 'Software Developer', NULL, 'Software Development', 0, NULL, '7405821921', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5, Mangalkruti Apartment, Sterling Park,\r\nDrive-in Road, Memnagar', 'Ahmedabad', 'Gujarat', '380052', 'INDIA', NULL, NULL, NULL, '', NULL, '', NULL, 0, 'Single', 'Employee', 'DYRPM5620L', '78130100004457', 'Bank of Baroda', NULL, '2021-11-01', 'Active'),
('e2f2a163-5f31-accd-1800-62d81261cd19', '2022-07-20 14:33:45', '2022-07-20 14:35:01', '1', '1', NULL, 0, '1', 'Mr.', 'Atir', 'Sakhrelia', 'Software Programer', NULL, 'Software Development', 0, NULL, '9558003840', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15, Vrundavan Bunglow - Part-I,\r\nOpp-Shridhar Alayam,\r\nThaltej-Shilaj Road', 'Ahmedabad', 'Gujarat', '380054', 'INDIA', NULL, NULL, NULL, '', '2002-09-28', '', NULL, 0, 'Single', 'Employee', 'OCYPS2714H', '137101508006', 'ICICI Bank, Thaltej-Shilaj Road Branch', 'ICIC0001371', '2021-10-01', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `contacts_audit`
--

CREATE TABLE `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts_audit`
--

INSERT INTO `contacts_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES
('582e2728-aba9-e613-3da9-62d80c0f167c', 'ba28c9d0-5f37-5410-8f37-62d80b666572', '2022-07-20 14:10:54', '1', 'date_of_joining', 'date', NULL, '2020-10-01', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts_bugs`
--

CREATE TABLE `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_cases`
--

CREATE TABLE `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_cstm`
--

CREATE TABLE `contacts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts_cstm`
--

INSERT INTO `contacts_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`) VALUES
('20ffdb4e-f9e0-f2b2-37b5-62d8163a1e94', 0.00000000, 0.00000000, NULL, NULL),
('228de31b-39ff-3be1-a1d2-6258010f610d', 0.00000000, 0.00000000, '', ''),
('627266ab-5b5e-10e0-5e0a-62d810208840', 0.00000000, 0.00000000, NULL, NULL),
('6a85d251-6616-187d-a1e6-63216563d408', 0.00000000, 0.00000000, '', ''),
('a9fe604d-5017-3ed8-7155-62d817e28437', 0.00000000, 0.00000000, NULL, NULL),
('ba28c9d0-5f37-5410-8f37-62d80b666572', 0.00000000, 0.00000000, '', ''),
('bbdd79f1-ee4e-c9d1-435d-62d815c477dd', 0.00000000, 0.00000000, '', ''),
('d8554bd8-9d18-5171-ff85-625e9e90dd5b', 0.00000000, 0.00000000, NULL, NULL),
('e2f2a163-5f31-accd-1800-62d81261cd19', 0.00000000, 0.00000000, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `contacts_ssi_salary_slip_1_c`
--

CREATE TABLE `contacts_ssi_salary_slip_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `contacts_ssi_salary_slip_1contacts_ida` varchar(36) DEFAULT NULL,
  `contacts_ssi_salary_slip_1ssi_salary_slip_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts_ssi_salary_slip_1_c`
--

INSERT INTO `contacts_ssi_salary_slip_1_c` (`id`, `date_modified`, `deleted`, `contacts_ssi_salary_slip_1contacts_ida`, `contacts_ssi_salary_slip_1ssi_salary_slip_idb`) VALUES
('131099dd-f63a-f7a9-9867-62d819f016c5', '2022-07-20 15:05:21', 0, 'e2f2a163-5f31-accd-1800-62d81261cd19', 'e2e8029d-97de-2b12-7078-62d819d16713'),
('1bde4fac-01fe-ca70-e15c-62d819d4b2cf', '2022-07-20 15:05:21', 0, 'ba28c9d0-5f37-5410-8f37-62d80b666572', '177933ab-4ad4-a0d2-1f94-62d819012a80'),
('1d4e22e0-cf9e-b84f-d34f-62d8196b39c1', '2022-07-20 15:19:41', 1, '228de31b-39ff-3be1-a1d2-6258010f610d', '186c19ec-0e3b-ab32-1518-62d8193d6b6e'),
('1e660930-1e5a-1a6e-a150-62d81d6f6139', '2022-07-20 15:20:21', 0, '228de31b-39ff-3be1-a1d2-6258010f610d', '1983f098-425d-e6e6-3600-62d81d0ce201'),
('231883c8-cb04-40e5-6084-65a8ceeb78a5', '2024-01-18 07:06:41', 0, '627266ab-5b5e-10e0-5e0a-62d810208840', '209e6783-a18f-4a7a-cac9-65a8cef33fcb'),
('23c7d55f-6dd2-adf7-4721-62d81c965ce2', '2022-07-20 15:16:17', 0, 'e2f2a163-5f31-accd-1800-62d81261cd19', '1f244959-dfa3-b5a0-2721-62d81c764cca'),
('2914ea6f-d96b-dd55-3f0c-62d81cb834fd', '2022-07-20 15:15:37', 0, 'a9fe604d-5017-3ed8-7155-62d817e28437', '24715ed6-77cd-8854-6e3e-62d81cbe784a'),
('2ad45a2b-a31c-91cf-687e-65aa7eeaa8e1', '2024-01-19 13:50:58', 0, '6a85d251-6616-187d-a1e6-63216563d408', '27de6a9e-5eaf-55a1-2c72-65aa7e34c771'),
('374a0f10-c683-1d53-4a20-65aa7ea54eb2', '2024-01-19 13:50:58', 0, 'ba28c9d0-5f37-5410-8f37-62d80b666572', '348cdf7d-573d-85b2-63d5-65aa7e851375'),
('39ab9dc2-8718-3868-c2f9-62d81c1647a4', '2022-07-20 15:15:37', 0, '20ffdb4e-f9e0-f2b2-37b5-62d8163a1e94', '35080a6e-4a3e-6d0d-72ab-62d81cacc93a'),
('4151828a-8218-e433-dcd3-62d818ed13c4', '2022-07-20 15:01:25', 0, 'ba28c9d0-5f37-5410-8f37-62d80b666572', '3cec7380-576b-5b9d-7db6-62d8183aa732'),
('49c18f95-8419-40c9-a7ce-65aa7eb706f4', '2024-01-19 13:50:58', 0, '228de31b-39ff-3be1-a1d2-6258010f610d', '46f092f1-e962-a084-9fc8-65aa7e691ac9'),
('49c2a1fb-b55d-c529-b585-65a8ce280f08', '2024-01-18 07:06:41', 0, '6a85d251-6616-187d-a1e6-63216563d408', '474ccd4a-4100-2531-0766-65a8cec5f290'),
('5211093a-2b57-3d42-7c83-65a8cec2771e', '2024-01-18 07:06:41', 0, 'a9fe604d-5017-3ed8-7155-62d817e28437', '31c008ff-ad29-070d-26f2-65a8ce9ecf09'),
('5ab25e65-e7c1-417b-65a6-62d81858deb9', '2022-07-20 15:01:25', 0, 'e2f2a163-5f31-accd-1800-62d81261cd19', '564d4ff9-ffb1-26d2-49be-62d8189aaa2e'),
('6884d6d4-4eeb-9c4d-16d8-62d81999ff6d', '2022-07-20 15:05:21', 0, 'bbdd79f1-ee4e-c9d1-435d-62d815c477dd', '63e14008-7a0f-22da-bc1b-62d819cca1d9'),
('688be35e-cdbf-1579-325f-65a8ce41693e', '2024-01-18 07:06:41', 0, 'bbdd79f1-ee4e-c9d1-435d-62d815c477dd', '6644db3d-dc19-8329-a2ea-65a8ce19d179'),
('68a1a8a0-efff-1ecf-6e4e-63216789d63c', '2022-09-14 05:33:27', 0, '6a85d251-6616-187d-a1e6-63216563d408', '5c9709bc-56aa-3c84-f1db-632167a72b71'),
('724c9849-29a9-7325-31bf-62d819ffbcc4', '2022-07-20 15:05:21', 0, 'a9fe604d-5017-3ed8-7155-62d817e28437', '6d6a82e7-f22c-0369-036a-62d819646026'),
('77c90e3a-36ed-3ca3-7695-62d81c640a8a', '2022-07-20 15:16:17', 0, '627266ab-5b5e-10e0-5e0a-62d810208840', '2d9004bb-cdab-6459-ca39-62d81cb7fcb3'),
('855380ef-388d-ff45-fe69-65a8ce341702', '2024-01-18 07:06:41', 0, '228de31b-39ff-3be1-a1d2-6258010f610d', '82b6fe3f-91ef-32d4-6824-65a8cee2938c'),
('893758b9-d819-e69b-8b26-65aa7e2364f4', '2024-01-19 13:50:58', 0, 'a9fe604d-5017-3ed8-7155-62d817e28437', '86a05ff4-aa7d-96cd-efb1-65aa7ea9d42f'),
('8c84a0d5-7450-8256-17a8-62d81820376f', '2022-07-20 15:01:25', 0, 'a9fe604d-5017-3ed8-7155-62d817e28437', '885e1c21-2479-3dc3-9c20-62d8187a9550'),
('9232bc22-b345-71ec-155d-65aa7e18022c', '2024-01-19 13:50:58', 0, 'e2f2a163-5f31-accd-1800-62d81261cd19', '8f7ca795-f949-8d5a-76db-65aa7e704653'),
('9fcad710-4696-79b7-2e1d-62d818087263', '2022-07-20 15:01:25', 0, 'bbdd79f1-ee4e-c9d1-435d-62d815c477dd', '9a2d48c1-9b94-e2a9-8618-62d818c1835b'),
('a13119d9-7660-177c-9fbe-62d81c87adc6', '2022-07-20 15:15:37', 0, '228de31b-39ff-3be1-a1d2-6258010f610d', '9c8d8ccf-88b7-2eb5-4f1f-62d81c2af857'),
('a1803401-bc67-55e8-7eb2-65a8ce19cd42', '2024-01-18 07:06:41', 0, 'e2f2a163-5f31-accd-1800-62d81261cd19', '9ef3d577-ed8d-917f-03bd-65a8ce7d79ef'),
('b9ad712d-e1c1-107f-962d-62d81c0ca745', '2022-07-20 15:16:17', 0, 'bbdd79f1-ee4e-c9d1-435d-62d815c477dd', 'b509ef21-f107-18a1-5ec6-62d81cc39a83'),
('b9f5a048-d633-7d47-df45-62d7fbc6de86', '2022-07-20 15:19:47', 1, '228de31b-39ff-3be1-a1d2-6258010f610d', 'b5cf1054-09ff-7fb3-6127-62d7fbe11370'),
('bc05103e-fe97-6462-3677-62d819c02ef4', '2022-07-20 15:05:21', 0, '20ffdb4e-f9e0-f2b2-37b5-62d8163a1e94', 'b7618445-9a67-21e9-254c-62d8198954c9'),
('bf4724d0-c674-2175-ea3a-65a8ce04d23e', '2024-01-18 07:06:41', 0, '20ffdb4e-f9e0-f2b2-37b5-62d8163a1e94', 'bccf2e21-d7f1-f871-d723-65a8ce2ab806'),
('ca705336-a6d1-8a95-ccc9-62d81928bdcf', '2022-07-20 15:05:21', 0, '627266ab-5b5e-10e0-5e0a-62d810208840', 'c5cccb33-b6d8-9c61-1cbf-62d819b936eb'),
('ccfe69ea-ba5b-fefe-3073-62d81cc92e04', '2022-07-20 15:16:17', 0, 'ba28c9d0-5f37-5410-8f37-62d80b666572', 'c85adcaf-61c9-1c17-ce6f-62d81c9512b6'),
('d63a085a-4efa-b62d-24a1-62d81db6df7c', '2022-07-20 15:21:13', 0, '228de31b-39ff-3be1-a1d2-6258010f610d', 'd251f3e3-7723-b92d-964b-62d81d0dd43d'),
('dae4496e-3cbc-ce66-4014-62d818aaf27a', '2022-07-20 15:01:25', 0, '627266ab-5b5e-10e0-5e0a-62d810208840', 'd6fc3424-acbd-a32c-6627-62d818fb00a8'),
('dcd1c650-6132-a15d-daa8-65a8ce695645', '2024-01-18 07:06:41', 0, 'ba28c9d0-5f37-5410-8f37-62d80b666572', 'dacb735c-71db-7445-7135-65a8ce7275d7'),
('dd2d7b06-f817-6988-6467-65aa7eea61fe', '2024-01-19 13:50:58', 0, '20ffdb4e-f9e0-f2b2-37b5-62d8163a1e94', 'da8c5fb8-d268-7679-b3d0-65aa7eabff65'),
('e08ae42a-609e-cc3e-f5b8-65aa7ee5f79f', '2024-01-19 13:50:58', 0, '627266ab-5b5e-10e0-5e0a-62d810208840', 'dcdbf575-d96e-b4a3-60c1-65aa7e3510da'),
('e9487c68-074c-f070-60e1-62d8187b3bb6', '2022-07-20 15:01:25', 0, '20ffdb4e-f9e0-f2b2-37b5-62d8163a1e94', 'e4e35a5d-81ab-4bca-49ed-62d81810d336'),
('f3fc2701-fe63-5908-cab2-65aa7eb5a552', '2024-01-19 13:50:58', 0, 'bbdd79f1-ee4e-c9d1-435d-62d815c477dd', 'f091c166-3cd8-21ed-ac7e-65aa7e49dbb8');

-- --------------------------------------------------------

--
-- Table structure for table `contacts_ssi_salary_structure_1_c`
--

CREATE TABLE `contacts_ssi_salary_structure_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `contacts_ssi_salary_structure_1contacts_ida` varchar(36) DEFAULT NULL,
  `contacts_ssi_salary_structure_1ssi_salary_structure_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts_ssi_salary_structure_1_c`
--

INSERT INTO `contacts_ssi_salary_structure_1_c` (`id`, `date_modified`, `deleted`, `contacts_ssi_salary_structure_1contacts_ida`, `contacts_ssi_salary_structure_1ssi_salary_structure_idb`) VALUES
('11f699ed-6ec5-1eb3-2797-62d80f29b71f', '2022-07-20 14:21:48', 0, 'ba28c9d0-5f37-5410-8f37-62d80b666572', 'b9d7044d-40f3-c68f-7cdc-62d80f9184f3'),
('1bc61f39-6206-b4c9-0091-632166027c53', '2022-09-14 05:30:29', 0, '6a85d251-6616-187d-a1e6-63216563d408', '116744a6-2c22-2afe-645b-632166e6a9f5'),
('51e08e05-76a9-73cd-94b6-625e56c9c220', '2022-04-19 06:28:44', 0, '228de31b-39ff-3be1-a1d2-6258010f610d', '4a1974e1-7baf-df0e-bea0-625e563f9749'),
('58389515-4997-c35a-75a4-62d81bdf6bcb', '2022-07-20 15:11:17', 0, 'bbdd79f1-ee4e-c9d1-435d-62d815c477dd', '521e0a9b-600c-27dd-8ebe-62d81bacc2ff'),
('591be1bd-e8f3-a551-66fa-625e4ddd7727', '2022-04-19 05:50:36', 0, '228de31b-39ff-3be1-a1d2-6258010f610d', '516ccf42-9e5c-041f-f56e-625e4d9c3401'),
('5e8d5017-0865-913e-083e-625e792c5e79', '2022-04-19 08:57:00', 0, '228de31b-39ff-3be1-a1d2-6258010f610d', '56042f85-8217-bc06-0986-625e799e4562'),
('75575b66-f63f-1d33-a8d1-62d8136d2871', '2022-07-20 14:39:36', 0, 'e2f2a163-5f31-accd-1800-62d81261cd19', '707549db-0de3-c72c-8104-62d813edb2f0'),
('93165103-a885-e3d0-1920-62d81614578b', '2022-07-20 14:49:45', 0, 'bbdd79f1-ee4e-c9d1-435d-62d815c477dd', '8df5be6e-d39c-466e-9e0d-62d8163d0162'),
('ade986ab-b800-783c-868d-62d8165f7231', '2022-07-20 14:53:30', 0, '20ffdb4e-f9e0-f2b2-37b5-62d8163a1e94', 'a9077c7b-3655-18f9-e600-62d8161874e0'),
('bf22e108-1d81-188f-c494-625e4b099b5f', '2022-04-19 05:42:01', 0, '228de31b-39ff-3be1-a1d2-6258010f610d', 'b79d01f1-c5fe-9c64-82fb-625e4b3d5fd5'),
('c3f96e68-5a44-be15-9e07-62d81aceeee2', '2022-07-20 15:07:53', 0, '228de31b-39ff-3be1-a1d2-6258010f610d', 'bdded22c-e468-f496-93b0-62d81aaa2f97'),
('d41d4918-23b8-1df5-0cd3-62d817dabb2d', '2022-07-20 14:56:33', 0, 'a9fe604d-5017-3ed8-7155-62d817e28437', 'd0353d18-3eb3-bc22-aa31-62d81707226d'),
('ee302853-0e65-247d-9a49-62d8100e58c3', '2022-07-20 14:27:21', 0, '627266ab-5b5e-10e0-5e0a-62d810208840', 'e9cb1005-8f3e-91d2-2231-62d810ed1db8');

-- --------------------------------------------------------

--
-- Table structure for table `contacts_users`
--

CREATE TABLE `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cron_remove_documents`
--

CREATE TABLE `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cron_remove_documents`
--

INSERT INTO `cron_remove_documents` (`id`, `bean_id`, `module`, `date_modified`) VALUES
('138ba456-7196-6773-327f-65a8c0342719', 'bf0aa429-ead1-778d-7afc-65a7af7adfe3', 'Documents', '2024-01-18 06:10:36'),
('499cb4bc-3139-4baa-d1ba-62d78adc7beb', 'cb273447-044d-bbdc-7de1-62d6b5b7508d', 'Notes', '2022-07-20 04:56:24'),
('4bb1075d-a81a-4287-53d9-65a8c0e82e9f', '365c0156-b099-c1ba-df00-65a7af33b297', 'Documents', '2024-01-18 06:10:34'),
('68b60349-2b70-cfb2-771a-62d78a96cea3', '3a57842a-f035-1d49-2890-62d6a7ae2ad3', 'Notes', '2022-07-20 04:56:26'),
('78ffd2ae-2c1a-2ec7-ae0b-62d78a33b541', 'be8009b7-1dc1-78fe-42ac-62d6addf5d8a', 'Notes', '2022-07-20 04:56:25'),
('8468f667-5794-cd0a-b1e4-62d78a1f4114', 'aeba2223-41e2-70ee-eeb2-62d6a3def380', 'Notes', '2022-07-20 04:56:26'),
('be003eb5-4cb4-8fc1-8c80-62d80474451c', 'd381ca11-e209-4cfe-6962-62d80234435c', 'Notes', '2022-07-20 13:36:50'),
('e36b213f-a9ac-bcb9-7db0-62d78a701362', '176738ff-d568-965e-f232-62d6b4bbf848', 'Notes', '2022-07-20 04:56:24');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT '0',
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `iso4217`, `conversion_rate`, `status`, `deleted`, `date_entered`, `date_modified`, `created_by`) VALUES
('e8af8224-55f2-2eca-be1f-62e3b25efa88', 'US Dollar', '$', 'USD', 1, 'Active', 0, '2022-07-29 10:10:58', '2022-07-29 10:10:58', '1');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int(11) DEFAULT '0',
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT '0',
  `template_type` varchar(100) DEFAULT NULL,
  `document_type` varchar(100) DEFAULT NULL,
  `amount` decimal(26,6) DEFAULT NULL,
  `document_date` date DEFAULT NULL,
  `month` varchar(100) DEFAULT NULL,
  `year` varchar(100) DEFAULT '2023',
  `expense_type` varchar(100) DEFAULT NULL,
  `gst_compliance` tinyint(1) DEFAULT '0',
  `gst_amount` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `document_name`, `doc_id`, `doc_type`, `doc_url`, `active_date`, `exp_date`, `category_id`, `subcategory_id`, `status_id`, `document_revision_id`, `related_doc_id`, `related_doc_rev_id`, `is_template`, `template_type`, `document_type`, `amount`, `document_date`, `month`, `year`, `expense_type`, `gst_compliance`, `gst_amount`) VALUES
('146a5e27-483c-fc42-cc19-65a7d8197f56', '2024-01-17 13:39:05', '2024-01-17 13:39:05', '1', '1', '', 0, '1', 'GST_Dec_Challan_2023.pdf', '', 'Sugar', '', '2024-01-17', NULL, 'Finance', NULL, 'Active', '260c1597-a961-64f1-de7e-65a7d8bb45f0', '', NULL, 0, NULL, 'Finance_GST_Challan', '150000.000000', '2024-01-16', '1', '2024', '', 0, '0.00'),
('2a538aa5-d1c0-b66c-470e-65a8c5675a16', '2024-01-18 06:28:25', '2024-01-18 06:28:25', '1', '1', '', 0, '1', 'electricity-A+_15477.pdf', '', 'Sugar', '', '2024-01-18', NULL, 'Finance', NULL, 'Active', '2c5ab904-0719-a875-73c1-65a8c55a165d', '', NULL, 0, NULL, 'Finance_Expense', '2385.000000', '2023-12-05', '12', '2023', 'Electricity', 0, '0.00'),
('2ae44a11-4c12-bee7-d969-65a8c66767fc', '2024-01-18 06:32:35', '2024-01-18 06:32:35', '1', '1', '', 0, '1', 'Office_Advance_Entertainment.pdf', '', 'Sugar', '', '2024-01-18', NULL, 'Finance', NULL, 'Active', '2c73f22f-f4af-51a3-67c4-65a8c60599f4', '', NULL, 0, NULL, 'Finance_Expense', '4800.000000', '2023-12-30', '12', '2023', 'Food_Entertainment', 0, '0.00'),
('3470e333-3df1-ef26-0095-62de5f446f58', '2022-07-25 09:18:39', '2022-07-25 09:18:39', '1', '1', 'Krunal PAN Card', 0, NULL, 'Krunal_Pan_Card.pdf', '', 'Sugar', '', '2022-07-25', NULL, '', NULL, 'Active', '74a75201-7b35-5e85-8e42-62de5f98137c', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2023', NULL, 0, NULL),
('365c0156-b099-c1ba-df00-65a7af33b297', '2024-01-17 10:43:26', '2024-01-18 06:10:31', '1', '1', NULL, 1, NULL, '', NULL, 'Sugar', NULL, '2024-01-17', NULL, '', NULL, NULL, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, '2023', NULL, 0, NULL),
('3afe58e7-fb4a-64f3-c460-62d813013cc4', '2022-07-20 14:37:34', '2022-07-20 14:37:34', '1', '1', 'Atir Aadhar Card', 0, NULL, 'Atir_Adhar_Card.jpeg', '', 'Sugar', '', '2022-07-20', NULL, '', NULL, 'Active', '3c75632c-da94-224b-e653-62d8138280d9', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2023', NULL, 0, NULL),
('5260b225-987f-a97e-9a90-65a8c4397b17', '2024-01-18 06:27:56', '2024-01-18 06:27:56', '1', '1', '', 0, '1', 'ce_Fuel-12-12-2032.pdf', '', 'Sugar', '', '2024-01-18', NULL, 'Finance', NULL, 'Active', '5681efd6-0490-fab7-098f-65a8c4a4b0cd', '', NULL, 0, NULL, 'Finance_Expense', '5100.000000', '2023-12-14', '12', '2023', 'Fuel', 0, '0.00'),
('5a463bcd-f74c-114a-3ac9-65a8c6c9f7d6', '2024-01-18 06:34:06', '2024-01-18 06:34:06', '1', '1', '', 0, '1', 'Professional-aa-124587.pdf', '', 'Sugar', '', '2024-01-18', NULL, 'Finance', NULL, 'Active', '5bf682e2-c8fb-48b8-f8a3-65a8c68cb475', '', NULL, 0, NULL, 'Finance_Expense', '60000.000000', '2023-12-17', '12', '2023', 'Professional_Tax', 0, '0.00'),
('5f6c3752-4774-43f0-75a8-65a8c56ed473', '2024-01-18 06:31:06', '2024-01-18 06:31:06', '1', '1', '', 0, '1', 'idea_airtel-4876.pdf', '', 'Sugar', '', '2024-01-18', NULL, 'Finance', NULL, 'Active', '60feab4e-1ce4-361c-85b6-65a8c59c5cb7', '', NULL, 0, NULL, 'Finance_Expense', '2300.000000', '2023-12-23', '12', '2023', 'Internet', 0, '0.00'),
('64474abc-8759-a56d-df7a-62d81530e163', '2022-07-20 14:48:40', '2022-07-20 14:48:40', '1', '1', 'Krunal Adhar Card', 0, NULL, 'Krunal_Adhar_Card.pdf', '', 'Sugar', '', '2022-07-20', NULL, '', NULL, 'Active', '65fcca31-500a-9822-aeb8-62d8153b7bb4', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2023', NULL, 0, NULL),
('972ddfaf-4cff-c625-21b9-62d813aca5d7', '2022-07-20 14:37:09', '2022-07-20 14:37:09', '1', '1', 'Atir PAN Card', 0, NULL, 'Atir_Pan_Card.jpeg', '', 'Sugar', '', '2022-07-20', NULL, '', NULL, 'Active', 'b0d0b15e-69ec-90ab-3df3-62d813ed2548', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2023', NULL, 0, NULL),
('996b6bb3-905c-d9c9-66ca-65a8c525529a', '2024-01-18 06:30:02', '2024-01-18 06:30:02', '1', '1', '', 0, '1', 'Gsuite-12455.pdf', '', 'Sugar', '', '2024-01-18', NULL, 'Finance', NULL, 'Active', '9bc5bb33-f932-75a5-7e13-65a8c5ccf4fc', '', NULL, 0, NULL, 'Finance_Expense', '789852.000000', '2023-12-24', '12', '2023', 'GSuite', 0, '0.00'),
('9b9155bf-1cea-cc59-cf24-65a8c5cb23ee', '2024-01-18 06:29:32', '2024-01-18 06:29:32', '1', '1', '', 0, '1', 'GST_Dec_Challan_2023.pdf', '', 'Sugar', '', '2024-01-18', NULL, 'Finance', NULL, 'Active', '9d0c8182-748d-6bdc-afc6-65a8c5d255ad', '', NULL, 0, NULL, 'Finance_GST_Challan', '4529.000000', '2023-12-26', '12', '2023', '', 0, '0.00'),
('bf0aa429-ead1-778d-7afc-65a7af7adfe3', '2024-01-17 10:43:24', '2024-01-18 06:10:31', '1', '1', NULL, 1, NULL, '', NULL, 'Sugar', NULL, '2024-01-17', NULL, '', NULL, NULL, NULL, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, '2023', NULL, 0, NULL),
('c6989fa4-73b0-862c-59b9-65a8c4f3dc5a', '2024-01-18 06:26:54', '2024-01-18 06:26:54', '1', '1', '', 0, '1', 'cc-Rent_1457.pdf', '', 'Sugar', '', '2024-01-18', NULL, 'Finance', NULL, 'Active', 'c8a6aa68-50b6-021a-513e-65a8c4642be7', '', NULL, 0, NULL, 'Finance_Expense', '15499.000000', '2023-12-09', '12', '2023', 'Office_Rent', 0, '0.00'),
('c82f4166-86d7-ebe4-66e1-65a8c21ac9ea', '2024-01-18 06:16:52', '2024-01-18 06:16:52', '1', '1', '', 0, '1', 'GST_Dec_Challan_2023.pdf', '', 'Sugar', '', '2024-01-18', NULL, 'Finance', NULL, 'Active', 'cbcfda9e-4250-8093-5a00-65a8c2969a52', '', NULL, 0, NULL, 'Finance_GST_Challan', '100000.000000', '2023-12-06', '12', '2023', '', 0, '0.00'),
('cdcd10ed-b1be-6bf3-3276-65a8c6feb72e', '2024-01-18 06:34:33', '2024-01-18 06:34:33', '1', '1', '', 0, '1', 'torrent-15-01-2023.pdf', '', 'Sugar', '', '2024-01-18', NULL, 'Finance', NULL, 'Active', 'cf5c0174-cd2c-e51a-1367-65a8c629824c', '', NULL, 0, NULL, 'Finance_Expense', '5621.000000', '2023-12-29', '12', '2023', 'Electricity', 0, '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `documents_accounts`
--

CREATE TABLE `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_bugs`
--

CREATE TABLE `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_cases`
--

CREATE TABLE `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_contacts`
--

CREATE TABLE `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `documents_contacts`
--

INSERT INTO `documents_contacts` (`id`, `date_modified`, `deleted`, `document_id`, `contact_id`) VALUES
('c27fde70-e648-42b9-5b8c-62d813a967cc', '2022-07-20 14:37:34', 0, '3afe58e7-fb4a-64f3-c460-62d813013cc4', 'e2f2a163-5f31-accd-1800-62d81261cd19'),
('d35e6d70-818c-5d5b-2264-62d81516d1b2', '2022-07-20 14:48:40', 0, '64474abc-8759-a56d-df7a-62d81530e163', 'bbdd79f1-ee4e-c9d1-435d-62d815c477dd'),
('d8c1dc5d-b877-37f4-7563-62de5f8f2911', '2022-07-25 09:18:39', 0, '3470e333-3df1-ef26-0095-62de5f446f58', 'bbdd79f1-ee4e-c9d1-435d-62d815c477dd'),
('dd405773-a623-19d0-8109-62d81396f1dd', '2022-07-20 14:37:09', 0, '972ddfaf-4cff-c625-21b9-62d813aca5d7', 'e2f2a163-5f31-accd-1800-62d81261cd19');

-- --------------------------------------------------------

--
-- Table structure for table `documents_opportunities`
--

CREATE TABLE `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `document_revisions`
--

CREATE TABLE `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `document_revisions`
--

INSERT INTO `document_revisions` (`id`, `change_log`, `document_id`, `doc_id`, `doc_type`, `doc_url`, `date_entered`, `created_by`, `filename`, `file_ext`, `file_mime_type`, `revision`, `deleted`, `date_modified`) VALUES
('260c1597-a961-64f1-de7e-65a7d8bb45f0', 'Document Created', '146a5e27-483c-fc42-cc19-65a7d8197f56', '', 'Sugar', '', '2024-01-17 13:39:05', '1', 'GST_Dec_Challan_2023.pdf', 'pdf', 'application/pdf', '1', 0, '2024-01-17 13:39:05'),
('2c5ab904-0719-a875-73c1-65a8c55a165d', 'Document Created', '2a538aa5-d1c0-b66c-470e-65a8c5675a16', '', 'Sugar', '', '2024-01-18 06:28:25', '1', 'electricity-A+_15477.pdf', 'pdf', 'application/pdf', '1', 0, '2024-01-18 06:28:25'),
('2c73f22f-f4af-51a3-67c4-65a8c60599f4', 'Document Created', '2ae44a11-4c12-bee7-d969-65a8c66767fc', '', 'Sugar', '', '2024-01-18 06:32:35', '1', 'Office_Advance_Entertainment.pdf', 'pdf', 'application/pdf', '1', 0, '2024-01-18 06:32:35'),
('3c75632c-da94-224b-e653-62d8138280d9', 'Document Created', '3afe58e7-fb4a-64f3-c460-62d813013cc4', '', 'Sugar', '', '2022-07-20 14:37:34', '1', 'Atir_Adhar_Card.jpeg', 'jpeg', 'image/jpeg', '1', 0, '2022-07-20 14:37:34'),
('5681efd6-0490-fab7-098f-65a8c4a4b0cd', 'Document Created', '5260b225-987f-a97e-9a90-65a8c4397b17', '', 'Sugar', '', '2024-01-18 06:27:56', '1', 'ce_Fuel-12-12-2032.pdf', 'pdf', 'application/pdf', '1', 0, '2024-01-18 06:27:56'),
('5bf682e2-c8fb-48b8-f8a3-65a8c68cb475', 'Document Created', '5a463bcd-f74c-114a-3ac9-65a8c6c9f7d6', '', 'Sugar', '', '2024-01-18 06:34:06', '1', 'Professional-aa-124587.pdf', 'pdf', 'application/pdf', '1', 0, '2024-01-18 06:34:06'),
('60feab4e-1ce4-361c-85b6-65a8c59c5cb7', 'Document Created', '5f6c3752-4774-43f0-75a8-65a8c56ed473', '', 'Sugar', '', '2024-01-18 06:31:06', '1', 'idea_airtel-4876.pdf', 'pdf', 'application/pdf', '1', 0, '2024-01-18 06:31:06'),
('65fcca31-500a-9822-aeb8-62d8153b7bb4', 'Document Created', '64474abc-8759-a56d-df7a-62d81530e163', '', 'Sugar', '', '2022-07-20 14:48:40', '1', 'Krunal_Adhar_Card.pdf', 'pdf', 'application/pdf', '1', 0, '2022-07-20 14:48:40'),
('74a75201-7b35-5e85-8e42-62de5f98137c', 'Document Created', '3470e333-3df1-ef26-0095-62de5f446f58', '', 'Sugar', '', '2022-07-25 09:18:39', '1', 'Krunal_Pan_Card.pdf', 'pdf', 'application/pdf', '1', 0, '2022-07-25 09:18:39'),
('9bc5bb33-f932-75a5-7e13-65a8c5ccf4fc', 'Document Created', '996b6bb3-905c-d9c9-66ca-65a8c525529a', '', 'Sugar', '', '2024-01-18 06:30:02', '1', 'Gsuite-12455.pdf', 'pdf', 'application/pdf', '1', 0, '2024-01-18 06:30:02'),
('9d0c8182-748d-6bdc-afc6-65a8c5d255ad', 'Document Created', '9b9155bf-1cea-cc59-cf24-65a8c5cb23ee', '', 'Sugar', '', '2024-01-18 06:29:32', '1', 'GST_Dec_Challan_2023.pdf', 'pdf', 'application/pdf', '1', 0, '2024-01-18 06:29:32'),
('b0d0b15e-69ec-90ab-3df3-62d813ed2548', 'Document Created', '972ddfaf-4cff-c625-21b9-62d813aca5d7', '', 'Sugar', '', '2022-07-20 14:37:09', '1', 'Atir_Pan_Card.jpeg', 'jpeg', 'image/jpeg', '1', 0, '2022-07-20 14:37:09'),
('c8a6aa68-50b6-021a-513e-65a8c4642be7', 'Document Created', 'c6989fa4-73b0-862c-59b9-65a8c4f3dc5a', '', 'Sugar', '', '2024-01-18 06:26:54', '1', 'cc-Rent_1457.pdf', 'pdf', 'application/pdf', '1', 0, '2024-01-18 06:26:54'),
('cbcfda9e-4250-8093-5a00-65a8c2969a52', 'Document Created', 'c82f4166-86d7-ebe4-66e1-65a8c21ac9ea', '', 'Sugar', '', '2024-01-18 06:16:52', '1', 'GST_Dec_Challan_2023.pdf', 'pdf', 'application/pdf', '1', 0, '2024-01-18 06:16:52'),
('cf5c0174-cd2c-e51a-1367-65a8c629824c', 'Document Created', 'cdcd10ed-b1be-6bf3-3276-65a8c6feb72e', '', 'Sugar', '', '2024-01-18 06:34:33', '1', 'torrent-15-01-2023.pdf', 'pdf', 'application/pdf', '1', 0, '2024-01-18 06:34:33');

-- --------------------------------------------------------

--
-- Table structure for table `eapm`
--

CREATE TABLE `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emailman`
--

CREATE TABLE `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT '0',
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int(11) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `related_confirm_opt_in` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `orphaned` tinyint(1) DEFAULT NULL,
  `last_synced` datetime DEFAULT NULL,
  `date_sent_received` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `deleted`, `assigned_user_id`, `orphaned`, `last_synced`, `date_sent_received`, `message_id`, `type`, `status`, `flagged`, `reply_to_status`, `intent`, `mailbox_id`, `parent_type`, `parent_id`, `uid`, `category_id`) VALUES
('602c8055-7e4f-0ad5-e10c-6321699cf9d1', 'SixthSenseInfo - Ruchita Nakrani Salary Slip of Aug 2022', '2022-09-14 05:40:10', '2022-09-14 05:40:10', '1', '1', 0, '1', NULL, NULL, '2022-09-14 05:40:10', NULL, 'out', 'sent', NULL, NULL, 'pick', NULL, 'Contacts', '6a85d251-6616-187d-a1e6-63216563d408', NULL, NULL),
('686f757a-6a2f-1b7d-0f20-62d805b66ac8', 'SixthSenseInfo - Bhargavi Patel Salary Slip of Apr 2022', '2022-07-20 13:37:17', '2022-07-20 13:37:17', '1', '1', 0, '1', NULL, NULL, '2022-07-20 13:37:17', NULL, 'out', 'sent', NULL, NULL, 'pick', NULL, 'Contacts', '228de31b-39ff-3be1-a1d2-6258010f610d', NULL, NULL),
('7d520a95-35c7-8c25-7922-62d80286f6bc', 'SixthSenseInfo - $ssi_salary_slip_name', '2022-07-20 13:27:32', '2022-07-20 13:27:32', '1', '1', 0, '1', NULL, NULL, '2022-07-20 13:27:32', NULL, 'out', 'sent', NULL, NULL, 'pick', NULL, 'Contacts', '228de31b-39ff-3be1-a1d2-6258010f610d', NULL, NULL),
('8d462259-d344-8e84-8ecf-62dfd98642ea', 'SixthSenseInfo - Krunal Mehta Salary Slip of Apr 2022', '2022-07-26 12:09:51', '2022-07-26 12:09:51', '1', '1', 0, '1', NULL, NULL, '2022-07-26 12:09:51', NULL, 'out', 'sent', NULL, NULL, 'pick', NULL, 'Contacts', 'bbdd79f1-ee4e-c9d1-435d-62d815c477dd', NULL, NULL),
('9214d68a-123b-694a-6094-62dfd99b2680', 'SixthSenseInfo - Krunal Mehta Salary Slip of May 2022', '2022-07-26 12:11:14', '2022-07-26 12:11:14', '1', '1', 0, '1', NULL, NULL, '2022-07-26 12:11:14', NULL, 'out', 'sent', NULL, NULL, 'pick', NULL, 'Contacts', 'bbdd79f1-ee4e-c9d1-435d-62d815c477dd', NULL, NULL),
('c6407d17-ac09-a4fd-7fbe-65ae563465ea', '(no subject)', '2024-01-22 11:50:39', '2024-01-22 11:50:39', '1', '1', 0, '1', NULL, NULL, NULL, NULL, 'out', NULL, NULL, NULL, 'pick', '', 'Contacts', '228de31b-39ff-3be1-a1d2-6258010f610d', NULL, NULL),
('e1bc1a8c-42b3-902d-d98a-62d8035e80d1', 'SixthSenseInfo - Bhargavi Patel Salary Slip of Apr 2022', '2022-07-20 13:32:34', '2022-07-20 13:32:34', '1', '1', 0, '1', NULL, NULL, '2022-07-20 13:32:34', NULL, 'out', 'sent', NULL, NULL, 'pick', NULL, 'Contacts', '228de31b-39ff-3be1-a1d2-6258010f610d', NULL, NULL),
('e9da4344-4e56-ed4d-f8f1-62d8056387d2', 'SixthSenseInfo - Bhargavi Patel Salary Slip of Apr 2022', '2022-07-20 13:39:03', '2022-07-20 13:39:03', '1', '1', 0, '1', NULL, NULL, '2022-07-20 13:39:03', NULL, 'out', 'sent', NULL, NULL, 'pick', NULL, 'Contacts', '228de31b-39ff-3be1-a1d2-6258010f610d', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emails_beans`
--

CREATE TABLE `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emails_beans`
--

INSERT INTO `emails_beans` (`id`, `email_id`, `bean_id`, `bean_module`, `campaign_data`, `date_modified`, `deleted`) VALUES
('a114598f-a5bf-2e6e-f86f-62d8052b32ca', '686f757a-6a2f-1b7d-0f20-62d805b66ac8', '228de31b-39ff-3be1-a1d2-6258010f610d', 'Contacts', '', '2022-07-20 13:37:17', 0),
('ae0c8dc8-f42a-9fe9-9910-62d8057e1e6e', 'e9da4344-4e56-ed4d-f8f1-62d8056387d2', '228de31b-39ff-3be1-a1d2-6258010f610d', 'Contacts', '', '2022-07-20 13:39:03', 0),
('de80766f-1bd5-32b4-6293-62dfd90b63dd', '9214d68a-123b-694a-6094-62dfd99b2680', 'bbdd79f1-ee4e-c9d1-435d-62d815c477dd', 'Contacts', '', '2022-07-26 12:11:14', 0),
('e40d364e-aca8-0554-0f22-65ae56c4ff9a', 'c6407d17-ac09-a4fd-7fbe-65ae563465ea', '228de31b-39ff-3be1-a1d2-6258010f610d', 'Contacts', '', '2024-01-22 11:50:39', 0),
('ee37a619-ae58-115e-1882-62dfd9a59219', '8d462259-d344-8e84-8ecf-62dfd98642ea', 'bbdd79f1-ee4e-c9d1-435d-62d815c477dd', 'Contacts', '', '2022-07-26 12:09:51', 0),
('f30ac172-d09d-84ae-74dd-6321695a0e81', '602c8055-7e4f-0ad5-e10c-6321699cf9d1', '6a85d251-6616-187d-a1e6-63216563d408', 'Contacts', '', '2022-09-14 05:40:10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `emails_email_addr_rel`
--

CREATE TABLE `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emails_email_addr_rel`
--

INSERT INTO `emails_email_addr_rel` (`id`, `email_id`, `address_type`, `email_address_id`, `deleted`) VALUES
('342bfbff-6cb2-e4b7-f9eb-62dfd9ca27d5', '8d462259-d344-8e84-8ecf-62dfd98642ea', 'from', '909bde72-14c3-ae4d-ad21-62d80232d83e', 0),
('3f289f16-20d6-3bd9-36ce-62dfd95de5f3', '8d462259-d344-8e84-8ecf-62dfd98642ea', 'to', 'bf487409-4c85-98ad-bc82-62d8151a1e1b', 0),
('77d8b334-fd7f-469c-e1d0-62d805713145', 'e9da4344-4e56-ed4d-f8f1-62d8056387d2', 'from', '909bde72-14c3-ae4d-ad21-62d80232d83e', 0),
('7986b6af-2493-f65c-d996-62d80541d177', '686f757a-6a2f-1b7d-0f20-62d805b66ac8', 'from', '909bde72-14c3-ae4d-ad21-62d80232d83e', 0),
('7cb340de-501a-2a22-c05d-62d805f0636f', '686f757a-6a2f-1b7d-0f20-62d805b66ac8', 'to', '4133cccf-c87d-1341-af70-625801d93592', 0),
('83526b11-2a6f-2e4e-b8fe-62d805a4ad7d', 'e9da4344-4e56-ed4d-f8f1-62d8056387d2', 'to', '4133cccf-c87d-1341-af70-625801d93592', 0),
('b036084f-6e55-4694-4d98-63216931ef44', '602c8055-7e4f-0ad5-e10c-6321699cf9d1', 'from', '909bde72-14c3-ae4d-ad21-62d80232d83e', 0),
('b7eceb94-2729-0e9d-294f-62dfd98afbfd', '9214d68a-123b-694a-6094-62dfd99b2680', 'from', '909bde72-14c3-ae4d-ad21-62d80232d83e', 0),
('ba9de1ef-eeb7-3902-afcd-632169450cb7', '602c8055-7e4f-0ad5-e10c-6321699cf9d1', 'to', 'c775a712-59a6-8326-48d3-62d6b1dd02d6', 0),
('bbd4ff47-f765-9ec9-7d47-62dfd918a928', '9214d68a-123b-694a-6094-62dfd99b2680', 'to', 'bf487409-4c85-98ad-bc82-62d8151a1e1b', 0),
('cdf65a5d-a537-ace7-2481-65ae56a02e70', 'c6407d17-ac09-a4fd-7fbe-65ae563465ea', 'from', 'cd1c3b80-2fdd-3508-1465-65ae56cc1e61', 0),
('cea14336-9165-91e4-ac60-65ae56dfd0c3', 'c6407d17-ac09-a4fd-7fbe-65ae563465ea', 'to', 'ce49518d-258f-6359-2896-65ae564f0039', 0);

-- --------------------------------------------------------

--
-- Table structure for table `emails_text`
--

CREATE TABLE `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(250) DEFAULT NULL,
  `reply_to_addr` varchar(250) DEFAULT NULL,
  `to_addrs` text,
  `cc_addrs` text,
  `bcc_addrs` text,
  `description` longtext,
  `description_html` longtext,
  `raw_source` longtext,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emails_text`
--

INSERT INTO `emails_text` (`email_id`, `from_addr`, `reply_to_addr`, `to_addrs`, `cc_addrs`, `bcc_addrs`, `description`, `description_html`, `raw_source`, `deleted`) VALUES
('602c8055-7e4f-0ad5-e10c-6321699cf9d1', NULL, NULL, 'devmehta555@gmail.com', NULL, NULL, 'Hello Ruchita Nakrani,\nPlease find attached your salary slip for the month of Aug 2022\n\n\nDo let us know in case of any query or concern regarding the same.\n\n\n​​Devang Mehta\nCRM Consultant - SixthSenseInfo\n+91 - 9824921331\n\ndev@sixthsenseinfo.com\n ', '<p><span style=\"color:#444444;font-family:verdana, sans-serif;font-size:small;\">Hello Ruchita Nakrani,<br /></span><span style=\"color:#444444;font-family:verdana, sans-serif;font-size:small;\">Please find attached your salary slip for the month of Aug 2022<br /><br /></span></p>\r\n<p><span class=\"gmail_default\" style=\"font-size:small;font-family:verdana, sans-serif;color:#444444;\">Do let us know in case of any query or concern regarding the same.<br /><br /><br /><span style=\"color:#444444;font-family:tahoma, sans-serif;\"><span style=\"font-size:16px;\"><strong><span class=\"gmail_default\" style=\"font-family:verdana, sans-serif;\">​​</span>Devang Mehta<br /></strong></span></span></span><span style=\"color:#999999;font-family:verdana, sans-serif;font-size:xx-small;\">CRM Consultant - SixthSenseInfo<br /></span><span style=\"color:#999999;font-family:verdana, sans-serif;font-size:xx-small;\">+91 - 9824921331<br /></span><a style=\"color:#1155cc;font-family:calibri, Arial, sans-serif;font-size:13.3333px;\" title=\"email\" href=\"mailto:dev@sixthsenseinfo.com\"><span style=\"color:#666666;\">dev@sixthsenseinfo.com</span></a></p>\r\n<p><span class=\"gmail_default\" style=\"font-size:small;font-family:verdana, sans-serif;color:#444444;\"> </span></p>', NULL, 0),
('686f757a-6a2f-1b7d-0f20-62d805b66ac8', NULL, NULL, 'bhargavi@sixthsenseinfo.com', NULL, NULL, 'Hello Bhargavi Patel,\nPlease find attached your salary slip for the month of Apr 2022\n\n\nDo let us know in case of any query or concern regarding the same.\n\n\n​​Devang Mehta\nCRM Consultant - SixthSenseInfo\n+91 - 9824921331\n\ndev@sixthsenseinfo.com\n ', '<p><span style=\"color:#444444;font-family:verdana, sans-serif;font-size:small;\">Hello Bhargavi Patel,<br /></span><span style=\"color:#444444;font-family:verdana, sans-serif;font-size:small;\">Please find attached your salary slip for the month of Apr 2022<br /><br /></span></p>\r\n<p><span class=\"gmail_default\" style=\"font-size:small;font-family:verdana, sans-serif;color:#444444;\">Do let us know in case of any query or concern regarding the same.<br /><br /><br /><span style=\"color:#444444;font-family:tahoma, sans-serif;\"><span style=\"font-size:16px;\"><strong><span class=\"gmail_default\" style=\"font-family:verdana, sans-serif;\">​​</span>Devang Mehta<br /></strong></span></span></span><span style=\"color:#999999;font-family:verdana, sans-serif;font-size:xx-small;\">CRM Consultant - SixthSenseInfo<br /></span><span style=\"color:#999999;font-family:verdana, sans-serif;font-size:xx-small;\">+91 - 9824921331<br /></span><a style=\"color:#1155cc;font-family:calibri, Arial, sans-serif;font-size:13.3333px;\" title=\"email\" href=\"mailto:dev@sixthsenseinfo.com\"><span style=\"color:#666666;\">dev@sixthsenseinfo.com</span></a></p>\r\n<p><span class=\"gmail_default\" style=\"font-size:small;font-family:verdana, sans-serif;color:#444444;\"> </span></p>', NULL, 0),
('8d462259-d344-8e84-8ecf-62dfd98642ea', NULL, NULL, 'krunalmehta98@gmail.com', NULL, NULL, 'Hello Krunal Mehta,\nPlease find attached your salary slip for the month of Apr 2022\n\n\nDo let us know in case of any query or concern regarding the same.\n\n\n​​Devang Mehta\nCRM Consultant - SixthSenseInfo\n+91 - 9824921331\n\ndev@sixthsenseinfo.com\n ', '<p><span style=\"color:#444444;font-family:verdana, sans-serif;font-size:small;\">Hello Krunal Mehta,<br /></span><span style=\"color:#444444;font-family:verdana, sans-serif;font-size:small;\">Please find attached your salary slip for the month of Apr 2022<br /><br /></span></p>\r\n<p><span class=\"gmail_default\" style=\"font-size:small;font-family:verdana, sans-serif;color:#444444;\">Do let us know in case of any query or concern regarding the same.<br /><br /><br /><span style=\"color:#444444;font-family:tahoma, sans-serif;\"><span style=\"font-size:16px;\"><strong><span class=\"gmail_default\" style=\"font-family:verdana, sans-serif;\">​​</span>Devang Mehta<br /></strong></span></span></span><span style=\"color:#999999;font-family:verdana, sans-serif;font-size:xx-small;\">CRM Consultant - SixthSenseInfo<br /></span><span style=\"color:#999999;font-family:verdana, sans-serif;font-size:xx-small;\">+91 - 9824921331<br /></span><a style=\"color:#1155cc;font-family:calibri, Arial, sans-serif;font-size:13.3333px;\" title=\"email\" href=\"mailto:dev@sixthsenseinfo.com\"><span style=\"color:#666666;\">dev@sixthsenseinfo.com</span></a></p>\r\n<p><span class=\"gmail_default\" style=\"font-size:small;font-family:verdana, sans-serif;color:#444444;\"> </span></p>', NULL, 0),
('9214d68a-123b-694a-6094-62dfd99b2680', NULL, NULL, 'krunalmehta98@gmail.com', NULL, NULL, 'Hello Krunal Mehta,\nPlease find attached your salary slip for the month of May 2022\n\n\nDo let us know in case of any query or concern regarding the same.\n\n\n​​Devang Mehta\nCRM Consultant - SixthSenseInfo\n+91 - 9824921331\n\ndev@sixthsenseinfo.com\n ', '<p><span style=\"color:#444444;font-family:verdana, sans-serif;font-size:small;\">Hello Krunal Mehta,<br /></span><span style=\"color:#444444;font-family:verdana, sans-serif;font-size:small;\">Please find attached your salary slip for the month of May 2022<br /><br /></span></p>\r\n<p><span class=\"gmail_default\" style=\"font-size:small;font-family:verdana, sans-serif;color:#444444;\">Do let us know in case of any query or concern regarding the same.<br /><br /><br /><span style=\"color:#444444;font-family:tahoma, sans-serif;\"><span style=\"font-size:16px;\"><strong><span class=\"gmail_default\" style=\"font-family:verdana, sans-serif;\">​​</span>Devang Mehta<br /></strong></span></span></span><span style=\"color:#999999;font-family:verdana, sans-serif;font-size:xx-small;\">CRM Consultant - SixthSenseInfo<br /></span><span style=\"color:#999999;font-family:verdana, sans-serif;font-size:xx-small;\">+91 - 9824921331<br /></span><a style=\"color:#1155cc;font-family:calibri, Arial, sans-serif;font-size:13.3333px;\" title=\"email\" href=\"mailto:dev@sixthsenseinfo.com\"><span style=\"color:#666666;\">dev@sixthsenseinfo.com</span></a></p>\r\n<p><span class=\"gmail_default\" style=\"font-size:small;font-family:verdana, sans-serif;color:#444444;\"> </span></p>', NULL, 0),
('c6407d17-ac09-a4fd-7fbe-65ae563465ea', NULL, NULL, NULL, NULL, NULL, ' \n ', '<p> </p>\r\n<div class=\"email-signature\"> </div>', NULL, 0),
('e9da4344-4e56-ed4d-f8f1-62d8056387d2', NULL, NULL, 'bhargavi@sixthsenseinfo.com', NULL, NULL, 'Hello Bhargavi Patel,\nPlease find attached your salary slip for the month of Apr 2022\n\n\nDo let us know in case of any query or concern regarding the same.\n\n\n​​Devang Mehta\nCRM Consultant - SixthSenseInfo\n+91 - 9824921331\n\ndev@sixthsenseinfo.com\n ', '<p><span style=\"color:#444444;font-family:verdana, sans-serif;font-size:small;\">Hello Bhargavi Patel,<br /></span><span style=\"color:#444444;font-family:verdana, sans-serif;font-size:small;\">Please find attached your salary slip for the month of Apr 2022<br /><br /></span></p>\r\n<p><span class=\"gmail_default\" style=\"font-size:small;font-family:verdana, sans-serif;color:#444444;\">Do let us know in case of any query or concern regarding the same.<br /><br /><br /><span style=\"color:#444444;font-family:tahoma, sans-serif;\"><span style=\"font-size:16px;\"><strong><span class=\"gmail_default\" style=\"font-family:verdana, sans-serif;\">​​</span>Devang Mehta<br /></strong></span></span></span><span style=\"color:#999999;font-family:verdana, sans-serif;font-size:xx-small;\">CRM Consultant - SixthSenseInfo<br /></span><span style=\"color:#999999;font-family:verdana, sans-serif;font-size:xx-small;\">+91 - 9824921331<br /></span><a style=\"color:#1155cc;font-family:calibri, Arial, sans-serif;font-size:13.3333px;\" title=\"email\" href=\"mailto:dev@sixthsenseinfo.com\"><span style=\"color:#666666;\">dev@sixthsenseinfo.com</span></a></p>\r\n<p><span class=\"gmail_default\" style=\"font-size:small;font-family:verdana, sans-serif;color:#444444;\"> </span></p>', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `email_addresses`
--

CREATE TABLE `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT '0',
  `opt_out` tinyint(1) DEFAULT '0',
  `confirm_opt_in` varchar(255) DEFAULT 'not-opt-in',
  `confirm_opt_in_date` datetime DEFAULT NULL,
  `confirm_opt_in_sent_date` datetime DEFAULT NULL,
  `confirm_opt_in_fail_date` datetime DEFAULT NULL,
  `confirm_opt_in_token` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_addresses`
--

INSERT INTO `email_addresses` (`id`, `email_address`, `email_address_caps`, `invalid_email`, `opt_out`, `confirm_opt_in`, `confirm_opt_in_date`, `confirm_opt_in_sent_date`, `confirm_opt_in_fail_date`, `confirm_opt_in_token`, `date_created`, `date_modified`, `deleted`) VALUES
('246ae6d7-f4fb-8b97-5036-62d816f0c20d', 'prashant13290@gmail.com', 'PRASHANT13290@GMAIL.COM', 0, 0, 'not-opt-in', NULL, NULL, NULL, NULL, '2022-07-20 14:52:35', '2022-07-20 14:52:35', 0),
('2bf671d4-2b46-bd49-cab4-62d940b21c7a', 'pradnya@dexoit.in', 'PRADNYA@DEXOIT.IN', 0, 0, 'not-opt-in', NULL, NULL, NULL, NULL, '2022-07-21 12:03:16', '2022-07-21 12:03:16', 0),
('4133cccf-c87d-1341-af70-625801d93592', 'bhargavi@sixthsenseinfo.com', 'BHARGAVI@SIXTHSENSEINFO.COM', 0, 0, 'not-opt-in', NULL, NULL, NULL, NULL, '2022-04-14 11:10:51', '2022-04-14 11:10:51', 0),
('4204d05c-4810-da87-c8bc-65ae463664ee', 'bhargavimaam@sixthsenseinfo.com', 'BHARGAVIMAAM@SIXTHSENSEINFO.COM', 0, 0, 'not-opt-in', NULL, NULL, NULL, NULL, '2024-01-22 10:41:34', '2024-01-22 10:41:34', 0),
('680ffbc9-62fc-3987-a99d-62d810278229', 'mehta.kaushal9@gmail.com', 'MEHTA.KAUSHAL9@GMAIL.COM', 0, 0, 'not-opt-in', NULL, NULL, NULL, NULL, '2022-07-20 14:26:04', '2022-07-20 14:26:04', 0),
('8c344a32-a888-4d2e-83b8-62d6b36366bb', 'qsuniv1@gmail.com', 'QSUNIV1@GMAIL.COM', 0, 0, 'not-opt-in', NULL, NULL, NULL, NULL, '2022-07-19 13:36:56', '2022-07-19 13:36:56', 0),
('909bde72-14c3-ae4d-ad21-62d80232d83e', 'dev@sixthsenseinfo.com', 'DEV@SIXTHSENSEINFO.COM', 0, 0, 'not-opt-in', NULL, NULL, NULL, NULL, '2022-07-20 13:27:32', '2022-07-20 13:27:32', 0),
('acec6e61-5a4c-1169-ca1e-62d8173a1797', 'arshitsavaliya.ca@gmail.com', 'ARSHITSAVALIYA.CA@GMAIL.COM', 0, 0, 'not-opt-in', NULL, NULL, NULL, NULL, '2022-07-20 14:55:49', '2022-07-20 14:55:49', 0),
('bf487409-4c85-98ad-bc82-62d8151a1e1b', 'krunalmehta98@gmail.com', 'KRUNALMEHTA98@GMAIL.COM', 0, 0, 'not-opt-in', NULL, NULL, NULL, NULL, '2022-07-20 14:45:58', '2022-07-20 14:45:58', 0),
('c775a712-59a6-8326-48d3-62d6b1dd02d6', 'devmehta555@gmail.com', 'DEVMEHTA555@GMAIL.COM', 0, 0, 'not-opt-in', NULL, NULL, NULL, NULL, '2022-07-19 13:26:36', '2022-07-19 13:26:36', 0),
('cd1c3b80-2fdd-3508-1465-65ae56cc1e61', 'rahul@sixthsenseinfo.com', 'RAHUL@SIXTHSENSEINFO.COM', 0, 0, 'not-opt-in', NULL, NULL, NULL, NULL, '2024-01-22 11:50:39', '2024-01-22 11:50:39', 0),
('ce49518d-258f-6359-2896-65ae564f0039', 'rahultom342@gmail.com', 'RAHULTOM342@GMAIL.COM', 0, 0, 'not-opt-in', NULL, NULL, NULL, NULL, '2024-01-22 11:50:39', '2024-01-22 11:50:39', 0),
('df9dd0d8-cb1e-5c0a-872c-625e9ee75f23', 'mrugeshhns@gmail.com', 'MRUGESHHNS@GMAIL.COM', 0, 0, 'not-opt-in', NULL, NULL, NULL, NULL, '2022-04-19 11:36:47', '2022-04-19 11:36:47', 0),
('e69c3198-8adf-f0ea-d557-62d8123f56ea', 'atirpatel1075@gmail.com', 'ATIRPATEL1075@GMAIL.COM', 0, 0, 'not-opt-in', NULL, NULL, NULL, NULL, '2022-07-20 14:33:45', '2022-07-20 14:33:45', 0),
('f270022d-f91b-67b3-d8cd-62d94087aff6', 'pradnya.work@gmail.com', 'PRADNYA.WORK@GMAIL.COM', 0, 0, 'not-opt-in', NULL, NULL, NULL, NULL, '2022-07-21 12:03:16', '2022-07-21 12:03:16', 0);

-- --------------------------------------------------------

--
-- Table structure for table `email_addresses_audit`
--

CREATE TABLE `email_addresses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_addr_bean_rel`
--

CREATE TABLE `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT '0',
  `reply_to_address` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_addr_bean_rel`
--

INSERT INTO `email_addr_bean_rel` (`id`, `email_address_id`, `bean_id`, `bean_module`, `primary_address`, `reply_to_address`, `date_created`, `date_modified`, `deleted`) VALUES
('1badb82f-5759-b5ea-6823-6321692b84e6', 'c775a712-59a6-8326-48d3-62d6b1dd02d6', '6a85d251-6616-187d-a1e6-63216563d408', 'Contacts', 1, 0, '2022-09-14 05:39:16', '2022-09-14 05:39:16', 0),
('242c690e-7dd7-fd48-bf13-62d8164e12e9', '246ae6d7-f4fb-8b97-5036-62d816f0c20d', '20ffdb4e-f9e0-f2b2-37b5-62d8163a1e94', 'Contacts', 1, 0, '2022-07-20 14:52:35', '2022-07-20 14:52:35', 0),
('2bb7f233-3204-c40f-729a-62d940cedb47', '2bf671d4-2b46-bd49-cab4-62d940b21c7a', 'dee8073b-ebbd-7ef2-4b6c-62d940d0a21f', 'Accounts', 1, 0, '2022-07-21 12:03:16', '2022-07-21 12:03:16', 0),
('405626c1-d7f7-bec8-b8ed-6258017c6dd5', '4133cccf-c87d-1341-af70-625801d93592', '228de31b-39ff-3be1-a1d2-6258010f610d', 'Contacts', 1, 0, '2022-04-14 11:10:51', '2022-04-14 11:10:51', 1),
('41a7e7ff-4086-4e90-9b96-65ae4698db3e', '4204d05c-4810-da87-c8bc-65ae463664ee', '228de31b-39ff-3be1-a1d2-6258010f610d', 'Contacts', 1, 0, '2024-01-22 10:41:34', '2024-01-22 10:41:34', 1),
('588f64c9-7f49-ee5e-fa8e-62d93e691845', '909bde72-14c3-ae4d-ad21-62d80232d83e', '57c24f8d-10c1-71a0-5843-625e9e228abd', 'Accounts', 1, 0, '2022-07-21 11:55:18', '2022-07-21 11:55:18', 0),
('63d98cca-d871-23bb-be51-65ae56dd4d8a', 'ce49518d-258f-6359-2896-65ae564f0039', '228de31b-39ff-3be1-a1d2-6258010f610d', 'Contacts', 1, 0, '2024-01-22 11:51:43', '2024-01-22 11:51:43', 0),
('6792f7db-879d-6377-960b-62d810d6ea85', '680ffbc9-62fc-3987-a99d-62d810278229', '627266ab-5b5e-10e0-5e0a-62d810208840', 'Contacts', 1, 0, '2022-07-20 14:26:04', '2022-07-20 14:26:04', 0),
('ac6f695b-6aa4-6534-5116-62d8178e00d7', 'acec6e61-5a4c-1169-ca1e-62d8173a1797', 'a9fe604d-5017-3ed8-7155-62d817e28437', 'Contacts', 1, 0, '2022-07-20 14:55:49', '2022-07-20 14:55:49', 0),
('becb7bdf-4d22-002b-5ae2-62d8157c27c9', 'bf487409-4c85-98ad-bc82-62d8151a1e1b', 'bbdd79f1-ee4e-c9d1-435d-62d815c477dd', 'Contacts', 1, 0, '2022-07-20 14:45:58', '2022-07-20 14:45:58', 0),
('c6e3db18-edee-b4ad-abcd-62d6b1856284', 'c775a712-59a6-8326-48d3-62d6b1dd02d6', '1', 'Users', 1, 0, '2022-07-19 13:26:36', '2022-07-19 13:26:36', 0),
('decb5321-0901-4bea-32d3-625e9e4894ec', 'df9dd0d8-cb1e-5c0a-872c-625e9ee75f23', 'd8554bd8-9d18-5171-ff85-625e9e90dd5b', 'Contacts', 1, 0, '2022-04-19 11:36:47', '2022-07-20 12:04:31', 1),
('e2d00981-0c4b-be84-a47e-62d94074abb7', 'f270022d-f91b-67b3-d8cd-62d94087aff6', 'dee8073b-ebbd-7ef2-4b6c-62d940d0a21f', 'Accounts', 0, 0, '2022-07-21 12:03:16', '2022-07-21 12:03:16', 0),
('e65db447-8b23-2769-9b0e-62d812533fa6', 'e69c3198-8adf-f0ea-d557-62d8123f56ea', 'e2f2a163-5f31-accd-1800-62d81261cd19', 'Contacts', 1, 0, '2022-07-20 14:33:45', '2022-07-20 14:33:45', 0);

-- --------------------------------------------------------

--
-- Table structure for table `email_cache`
--

CREATE TABLE `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int(10) UNSIGNED DEFAULT NULL,
  `imap_uid` int(10) UNSIGNED DEFAULT NULL,
  `msgno` int(10) UNSIGNED DEFAULT NULL,
  `recent` tinyint(4) DEFAULT NULL,
  `flagged` tinyint(4) DEFAULT NULL,
  `answered` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `draft` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_marketing`
--

CREATE TABLE `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `outbound_email_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_marketing_prospect_lists`
--

CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `subject` varchar(255) DEFAULT NULL,
  `body` longtext,
  `body_html` longtext,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `published`, `name`, `description`, `subject`, `body`, `body_html`, `deleted`, `assigned_user_id`, `text_only`, `type`) VALUES
('40700494-fdce-dde0-28b1-6253c83c5bfa', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '1', 'off', 'Two Factor Authentication email', 'This template is used to send a user a code for Two Factor Authentication.', 'Two Factor Authentication Code', 'Two Factor Authentication code is $code.', '<div><table width=\"550\"><tbody><tr><td><p>Two Factor Authentication code is <b>$code</b>.</p>  </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>', 0, NULL, 0, 'system'),
('465693f5-a8c1-9065-7332-6253c80722ef', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '1', 'off', 'Case Closure', 'Template for informing a contact that their case has been closed.', '$acase_name [CASE:$acase_case_number] closed', 'Hi $contact_first_name $contact_last_name,\r\n\r\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					   Status:				$acase_status\r\n					   Reference:			$acase_case_number\r\n					   Resolution:			$acase_resolution', '<p> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\"><tbody>\r\n					    <tr><td>Status</td><td>$acase_status</td></tr>\r\n					    <tr><td>Reference</td><td>$acase_case_number</td></tr>\r\n					    <tr><td>Resolution</td><td>$acase_resolution</td></tr>\r\n					    </tbody></table>', 0, NULL, NULL, 'system'),
('572f4fa4-3739-2470-6b8c-6253c8618c2c', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '1', 'off', 'Joomla Account Creation', 'Template used when informing a contact that they\'ve been given an account on the joomla portal.', 'Support Portal Account Created', 'Hi $contact_name,\r\n					   An account has been created for you at $portal_address.\r\n					   You may login using this email address and the password $joomla_pass', '<p>Hi $contact_name,</p>\r\n					    <p>An account has been created for you at <a href=\"$portal_address\">$portal_address</a>.</p>\r\n					    <p>You may login using this email address and the password $joomla_pass</p>', 0, NULL, NULL, 'system'),
('6af61101-740e-5774-a5ad-6253c8e16fdb', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '1', 'off', 'Case Creation', 'Template to send to a contact when a case is received from them.', '$acase_name [CASE:$acase_case_number]', 'Hi $contact_first_name $contact_last_name,\r\n\r\n					   We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\r\n					   Status:		$acase_status\r\n					   Reference:	$acase_case_number\r\n					   Description:	$acase_description', '<p> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\r\n					    <table border=\"0\"><tbody>\r\n					    <tr><td>Status</td><td>$acase_status</td></tr>\r\n					    <tr><td>Reference</td><td>$acase_case_number</td></tr>\r\n					    <tr><td>Description</td><td>$acase_description</td></tr>\r\n					    </tbody></table>', 0, NULL, NULL, 'system'),
('937dbbdf-c852-7f3c-0bf8-6253c86cd9c8', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '1', 'off', 'Contact Case Update', 'Template to send to a contact when their case is updated.', '$acase_name update [CASE:$acase_case_number]', 'Hi $user_first_name $user_last_name,\r\n\r\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\r\n					       $contact_first_name $contact_last_name, said:\r\n					               $aop_case_updates_description', '<p>Hi $contact_first_name $contact_last_name,</p>\r\n					    <p> </p>\r\n					    <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\r\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\r\n					    <p style=\"padding-left:30px;\">$aop_case_updates_description</p>', 0, NULL, NULL, 'system'),
('a129e668-a4d6-5f43-5b42-6253c8b62336', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '1', 'off', 'User Case Update', 'Email template to send to a SuiteCRM user when their case is updated.', '$acase_name (# $acase_case_number) update', 'Hi $user_first_name $user_last_name,\r\n\r\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\r\n					       $contact_first_name $contact_last_name, said:\r\n					               $aop_case_updates_description\r\n                        You may review this Case at:\r\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;', '<p>Hi $user_first_name $user_last_name,</p>\r\n					     <p> </p>\r\n					     <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\r\n					     <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\r\n					     <p style=\"padding-left:30px;\">$aop_case_updates_description</p>\r\n					     <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>', 0, NULL, NULL, 'system'),
('a282b5e9-cf02-7b39-bebf-6253c851d62c', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '1', 'off', 'Confirmed Opt In', 'Email template to send to a contact to confirm they have opted in.', 'Confirm Opt In', 'Hi $contact_first_name $contact_last_name, \\n Please confirm that you have opted in by selecting the following link: $sugarurl/index.php?entryPoint=ConfirmOptIn&from=$emailaddress_email_address', '<p>Hi $contact_first_name $contact_last_name,</p>\r\n             <p>\r\n                Please confirm that you have opted in by selecting the following link:\r\n                <a href=\"$sugarurl/index.php?entryPoint=ConfirmOptIn&from=$emailaddress_confirm_opt_in_token\">Opt In</a>\r\n             </p>', 0, NULL, NULL, 'system'),
('ad57e911-8780-769b-6183-6253c87a04a5', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '1', 'off', 'System-generated password email', 'This template is used when the System Administrator sends a new password to a user.', 'New account information', '\r\nHere is your account username and temporary password:\r\nUsername : $contact_user_user_name\r\nPassword : $contact_user_user_hash\r\n\r\n$config_site_url\r\n\r\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.', '<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>', 0, NULL, 0, 'system'),
('b6a63779-5525-7bbb-85c0-6253c8921a38', '2013-05-24 14:31:45', '2022-04-11 06:15:51', '1', '1', 'off', 'Event Invite Template', 'Default event invite template.', 'You have been invited to $fp_events_name', 'Dear $contact_name,\r\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\r\n$fp_events_description\r\nYours Sincerely,\r\n', '\r\n<p>Dear $contact_name,</p>\r\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\r\n<p>$fp_events_description</p>\r\n<p>If you would like to accept this invititation please click accept.</p>\r\n<p> $fp_events_link or $fp_events_link_declined</p>\r\n<p>Yours Sincerely,</p>\r\n', 0, NULL, NULL, 'system'),
('ba0a19c0-846a-fe3d-6e3d-6253c8a33d64', '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '1', 'off', 'Forgot Password email', 'This template is used to send a user a link to click to reset the user\'s account password.', 'Reset your account password', '\r\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\r\n\r\nClick on the link below to reset your password:\r\n\r\n$contact_user_link_guid', '<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>', 0, NULL, 0, 'system'),
('f0674a85-4f90-9c42-fd87-62d7ff27dcda', '2022-07-20 13:13:04', '2022-07-20 13:16:55', '1', '1', 'off', 'SalarySlip', 'SalarySlip', 'SixthSenseInfo - $ssi_salary_slip_name', 'Hello $ssi_salary_slip_contacts_ssi_salary_slip_1_name ,\r\nPlease find attached your salary slip for the month of $ssi_salary_slip_month $ssi_salary_slip_year\r\n\r\n​--\r\n\r\nDevang Mehta\r\nCRM Consultant - SixthSenseInfo\r\n+91 - 9824921331\r\ndev@sixthsenseinfo.com', '<p><span style=\"color:#444444;font-family:verdana, sans-serif;font-size:small;\">Hello $ssi_salary_slip_contacts_ssi_salary_slip_1_name,<br /></span><span style=\"color:#444444;font-family:verdana, sans-serif;font-size:small;\">Please find attached your salary slip for the month of $ssi_salary_slip_month $ssi_salary_slip_year<br /><br /></span></p>\r\n<p><span class=\"gmail_default\" style=\"font-size:small;font-family:verdana, sans-serif;color:#444444;\">Do let us know in case of any query or concern regarding the same.<br /><br /><br /><span style=\"color:#444444;font-family:tahoma, sans-serif;\"><span style=\"font-size:16px;\"><strong><span class=\"gmail_default\" style=\"font-family:verdana, sans-serif;\">​​</span>Devang Mehta<br /></strong></span></span></span><span style=\"color:#999999;font-family:verdana, sans-serif;font-size:xx-small;\">CRM Consultant - SixthSenseInfo<br /></span><span style=\"color:#999999;font-family:verdana, sans-serif;font-size:xx-small;\">+91 - 9824921331<br /></span><a style=\"color:#1155cc;font-family:calibri, Arial, sans-serif;font-size:13.3333px;\" title=\"email\" href=\"mailto:dev@sixthsenseinfo.com\"><span style=\"color:#666666;\">dev@sixthsenseinfo.com</span></a></p>\r\n<p><span class=\"gmail_default\" style=\"font-size:small;font-family:verdana, sans-serif;color:#444444;\"> </span></p>', 0, '1', 0, 'email');

-- --------------------------------------------------------

--
-- Table structure for table `external_oauth_connections`
--

CREATE TABLE `external_oauth_connections` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `client_id` varchar(32) DEFAULT NULL,
  `client_secret` varchar(32) DEFAULT NULL,
  `token_type` varchar(32) DEFAULT NULL,
  `expires_in` varchar(32) DEFAULT NULL,
  `access_token` text,
  `refresh_token` text,
  `external_oauth_provider_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `external_oauth_providers`
--

CREATE TABLE `external_oauth_providers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `connector` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `client_secret` varchar(255) DEFAULT NULL,
  `scope` text,
  `url_authorize` varchar(255) DEFAULT NULL,
  `authorize_url_options` text,
  `url_access_token` varchar(255) DEFAULT NULL,
  `extra_provider_params` text,
  `get_token_request_grant` varchar(255) DEFAULT 'authorization_code',
  `get_token_request_options` text,
  `refresh_token_request_grant` varchar(255) DEFAULT 'refresh_token',
  `refresh_token_request_options` text,
  `access_token_mapping` varchar(255) DEFAULT 'access_token',
  `expires_in_mapping` varchar(255) DEFAULT 'expires_in',
  `refresh_token_mapping` varchar(255) DEFAULT 'refresh_token',
  `token_type_mapping` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fields_meta_data`
--

CREATE TABLE `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT '0',
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `audited` tinyint(1) DEFAULT '0',
  `massupdate` tinyint(1) DEFAULT '0',
  `duplicate_merge` smallint(6) DEFAULT '0',
  `reportable` tinyint(1) DEFAULT '1',
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fields_meta_data`
--

INSERT INTO `fields_meta_data` (`id`, `name`, `vname`, `comments`, `help`, `custom_module`, `type`, `len`, `required`, `default_value`, `date_modified`, `deleted`, `audited`, `massupdate`, `duplicate_merge`, `reportable`, `importable`, `ext1`, `ext2`, `ext3`, `ext4`) VALUES
('Accountsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Accounts', 'varchar', 255, 0, NULL, '2022-04-11 06:15:51', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Accounts', 'varchar', 255, 0, NULL, '2022-04-11 06:15:51', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Accounts', 'float', 10, 0, '0.00000000', '2022-04-11 06:15:51', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Accountsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Accounts', 'float', 11, 0, '0.00000000', '2022-04-11 06:15:51', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Casesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Cases', 'varchar', 255, 0, NULL, '2022-04-11 06:15:51', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Cases', 'varchar', 255, 0, NULL, '2022-04-11 06:15:51', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Cases', 'float', 10, 0, '0.00000000', '2022-04-11 06:15:51', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Casesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Cases', 'float', 11, 0, '0.00000000', '2022-04-11 06:15:51', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Contacts', 'varchar', 255, 0, NULL, '2022-04-11 06:15:51', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Contacts', 'varchar', 255, 0, NULL, '2022-04-11 06:15:51', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Contacts', 'float', 10, 0, '0.00000000', '2022-04-11 06:15:51', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Contacts', 'float', 11, 0, '0.00000000', '2022-04-11 06:15:51', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Leadsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Leads', 'varchar', 255, 0, NULL, '2022-04-11 06:15:51', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Leads', 'varchar', 255, 0, NULL, '2022-04-11 06:15:51', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Leads', 'float', 10, 0, '0.00000000', '2022-04-11 06:15:51', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Leadsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Leads', 'float', 11, 0, '0.00000000', '2022-04-11 06:15:51', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Meetingsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Meetings', 'varchar', 255, 0, NULL, '2022-04-11 06:15:51', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Meetings', 'varchar', 255, 0, NULL, '2022-04-11 06:15:51', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Meetings', 'float', 10, 0, '0.00000000', '2022-04-11 06:15:51', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Meetingsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Meetings', 'float', 11, 0, '0.00000000', '2022-04-11 06:15:51', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Opportunities', 'varchar', 255, 0, NULL, '2022-04-11 06:15:51', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Opportunities', 'varchar', 255, 0, NULL, '2022-04-11 06:15:51', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Opportunities', 'float', 10, 0, '0.00000000', '2022-04-11 06:15:51', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Opportunities', 'float', 11, 0, '0.00000000', '2022-04-11 06:15:51', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Projectjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Project', 'varchar', 255, 0, NULL, '2022-04-11 06:15:51', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Project', 'varchar', 255, 0, NULL, '2022-04-11 06:15:51', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Project', 'float', 10, 0, '0.00000000', '2022-04-11 06:15:51', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Projectjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Project', 'float', 11, 0, '0.00000000', '2022-04-11 06:15:51', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Prospectsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Prospects', 'varchar', 255, 0, NULL, '2022-04-11 06:15:51', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Prospects', 'varchar', 255, 0, NULL, '2022-04-11 06:15:51', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Prospects', 'float', 10, 0, '0.00000000', '2022-04-11 06:15:51', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Prospectsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Prospects', 'float', 11, 0, '0.00000000', '2022-04-11 06:15:51', 0, 0, 0, 0, 1, 'true', '8', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT '0',
  `is_group` tinyint(1) DEFAULT '0',
  `is_dynamic` tinyint(1) DEFAULT '0',
  `dynamic_query` text,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `folders_rel`
--

CREATE TABLE `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `folders_subscriptions`
--

CREATE TABLE `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events`
--

CREATE TABLE `fp_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `budget` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `invite_templates` varchar(100) DEFAULT NULL,
  `accept_redirect` varchar(255) DEFAULT NULL,
  `decline_redirect` varchar(255) DEFAULT NULL,
  `activity_status_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_audit`
--

CREATE TABLE `fp_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_contacts_c`
--

CREATE TABLE `fp_events_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_contactsfp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_contactscontacts_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_fp_event_delegates_1_c`
--

CREATE TABLE `fp_events_fp_event_delegates_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_delegates_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_delegates_1fp_event_delegates_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_fp_event_locations_1_c`
--

CREATE TABLE `fp_events_fp_event_locations_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_locations_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_locations_1fp_event_locations_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_leads_1_c`
--

CREATE TABLE `fp_events_leads_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_leads_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_leads_1leads_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_prospects_1_c`
--

CREATE TABLE `fp_events_prospects_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_prospects_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_prospects_1prospects_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_event_locations`
--

CREATE TABLE `fp_event_locations` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_event_locations_audit`
--

CREATE TABLE `fp_event_locations_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_event_locations_fp_events_1_c`
--

CREATE TABLE `fp_event_locations_fp_events_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_event_locations_fp_events_1fp_event_locations_ida` varchar(36) DEFAULT NULL,
  `fp_event_locations_fp_events_1fp_events_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `import_maps`
--

CREATE TABLE `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text,
  `default_values` text,
  `has_header` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email`
--

CREATE TABLE `inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `server_url` varchar(100) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int(5) DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text,
  `delete_seen` tinyint(1) DEFAULT '0',
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT '0',
  `groupfolder_id` char(36) DEFAULT NULL,
  `connection_string` varchar(255) DEFAULT NULL,
  `sentFolder` varchar(255) DEFAULT NULL,
  `trashFolder` varchar(255) DEFAULT NULL,
  `move_messages_to_trash_after_import` tinyint(1) DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `auth_type` varchar(255) DEFAULT 'basic',
  `protocol` varchar(255) DEFAULT 'imap',
  `is_ssl` tinyint(1) DEFAULT '0',
  `distribution_user_id` char(36) DEFAULT NULL,
  `outbound_email_id` char(36) DEFAULT NULL,
  `create_case_template_id` char(36) DEFAULT NULL,
  `external_oauth_connection_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email_autoreply`
--

CREATE TABLE `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email_cache_ts`
--

CREATE TABLE `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_address_cache`
--

CREATE TABLE `jjwg_address_cache` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `lat` float(10,8) DEFAULT NULL,
  `lng` float(11,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_address_cache_audit`
--

CREATE TABLE `jjwg_address_cache_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_areas`
--

CREATE TABLE `jjwg_areas` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `coordinates` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_areas_audit`
--

CREATE TABLE `jjwg_areas_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps`
--

CREATE TABLE `jjwg_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `distance` float(9,4) DEFAULT NULL,
  `unit_type` varchar(100) DEFAULT 'mi',
  `module_type` varchar(100) DEFAULT 'Accounts',
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps_audit`
--

CREATE TABLE `jjwg_maps_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps_jjwg_areas_c`
--

CREATE TABLE `jjwg_maps_jjwg_areas_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_5304wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_41f2g_areas_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps_jjwg_markers_c`
--

CREATE TABLE `jjwg_maps_jjwg_markers_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_b229wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_2e31markers_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_markers`
--

CREATE TABLE `jjwg_markers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `jjwg_maps_lat` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_lng` float(11,8) DEFAULT '0.00000000',
  `marker_image` varchar(100) DEFAULT 'company'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_markers_audit`
--

CREATE TABLE `jjwg_markers_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `job_queue`
--

CREATE TABLE `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text,
  `target` varchar(255) DEFAULT NULL,
  `data` text,
  `requeue` tinyint(1) DEFAULT '0',
  `retry_count` tinyint(4) DEFAULT NULL,
  `failure_count` tinyint(4) DEFAULT NULL,
  `job_delay` int(11) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT '0',
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leads_audit`
--

CREATE TABLE `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leads_cstm`
--

CREATE TABLE `leads_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `linked_documents`
--

CREATE TABLE `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT '0',
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  `gsync_id` varchar(1024) DEFAULT NULL,
  `gsync_lastsync` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_contacts`
--

CREATE TABLE `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_cstm`
--

CREATE TABLE `meetings_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_leads`
--

CREATE TABLE `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_users`
--

CREATE TABLE `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT '0',
  `description` text,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`assigned_user_id`, `id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `file_mime_type`, `filename`, `parent_type`, `parent_id`, `contact_id`, `portal_flag`, `embed_flag`, `description`, `deleted`) VALUES
(NULL, '250465b9-8ce6-9080-e9c1-62d8035f21c5', '2022-07-20 13:32:34', '2022-07-20 13:32:34', '1', '1', 'Bhargavi Patel Salary Slip of Apr 2022', 'application/pdf', NULL, 'Emails', 'e1bc1a8c-42b3-902d-d98a-62d8035e80d1', NULL, 0, 0, NULL, 0),
(NULL, 'a828e82f-97b3-3bad-70d9-62d8054d2249', '2022-07-20 13:37:17', '2022-07-20 13:37:17', '1', '1', 'Bhargavi Patel Salary Slip of Apr 2022', 'application/pdf', NULL, 'Emails', '686f757a-6a2f-1b7d-0f20-62d805b66ac8', NULL, 0, 0, NULL, 0),
(NULL, 'b4271b17-7800-64c6-600b-62d805ca7414', '2022-07-20 13:39:03', '2022-07-20 13:39:03', '1', '1', 'Bhargavi Patel Salary Slip of Apr 2022', 'application/pdf', NULL, 'Emails', 'e9da4344-4e56-ed4d-f8f1-62d8056387d2', NULL, 0, 0, NULL, 0),
(NULL, 'ba7e030a-4fb9-e9d0-d13d-62dfd95aca4c', '2022-07-26 12:09:51', '2022-07-26 12:09:51', '1', '1', 'Krunal Mehta Salary Slip of Apr 2022', 'application/pdf', NULL, 'Emails', '8d462259-d344-8e84-8ecf-62dfd98642ea', NULL, 0, 0, NULL, 0),
(NULL, 'c8c20766-ff47-bcbf-81fe-6321697e9ed9', '2022-09-14 05:40:10', '2022-09-14 05:40:10', '1', '1', 'Ruchita Nakrani Salary Slip of Aug 2022', 'application/pdf', NULL, 'Emails', '602c8055-7e4f-0ad5-e10c-6321699cf9d1', NULL, 0, 0, NULL, 0),
(NULL, 'd381ca11-e209-4cfe-6962-62d80234435c', '2022-07-20 13:27:32', '2022-07-20 13:36:50', '1', '1', 'Bhargavi Patel Salary Slip of Apr 2022', 'application/pdf', NULL, 'Emails', '7d520a95-35c7-8c25-7922-62d80286f6bc', NULL, 0, 0, NULL, 1),
(NULL, 'e3df93f5-7af4-df1a-a1d1-62dfd94efe03', '2022-07-26 12:11:14', '2022-07-26 12:11:14', '1', '1', 'Krunal Mehta Salary Slip of May 2022', 'application/pdf', NULL, 'Emails', '9214d68a-123b-694a-6094-62dfd99b2680', NULL, 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oauth2clients`
--

CREATE TABLE `oauth2clients` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `secret` varchar(4000) DEFAULT NULL,
  `redirect_url` varchar(255) DEFAULT NULL,
  `is_confidential` tinyint(1) DEFAULT '1',
  `allowed_grant_type` varchar(255) DEFAULT 'password',
  `duration_value` int(11) DEFAULT NULL,
  `duration_amount` int(11) DEFAULT NULL,
  `duration_unit` varchar(255) DEFAULT 'Duration Unit',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oauth2tokens`
--

CREATE TABLE `oauth2tokens` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `token_is_revoked` tinyint(1) DEFAULT NULL,
  `token_type` varchar(255) DEFAULT NULL,
  `access_token_expires` datetime DEFAULT NULL,
  `access_token` varchar(4000) DEFAULT NULL,
  `refresh_token` varchar(4000) DEFAULT NULL,
  `refresh_token_expires` datetime DEFAULT NULL,
  `grant_type` varchar(255) DEFAULT NULL,
  `state` varchar(1024) DEFAULT NULL,
  `client` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_consumer`
--

CREATE TABLE `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_nonce`
--

CREATE TABLE `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_tokens`
--

CREATE TABLE `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint(20) DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities`
--

CREATE TABLE `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_audit`
--

CREATE TABLE `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_contacts`
--

CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_cstm`
--

CREATE TABLE `opportunities_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `outbound_email`
--

CREATE TABLE `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) DEFAULT NULL,
  `smtp_from_name` varchar(255) DEFAULT NULL,
  `smtp_from_addr` varchar(255) DEFAULT NULL,
  `mail_sendtype` varchar(8) DEFAULT 'smtp',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` varchar(5) DEFAULT '0',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT '0',
  `mail_smtpssl` varchar(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reply_to_name` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `signature` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `outbound_email`
--

INSERT INTO `outbound_email` (`id`, `name`, `type`, `user_id`, `smtp_from_name`, `smtp_from_addr`, `mail_sendtype`, `mail_smtptype`, `mail_smtpserver`, `mail_smtpport`, `mail_smtpuser`, `mail_smtppass`, `mail_smtpauth_req`, `mail_smtpssl`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `deleted`, `assigned_user_id`, `reply_to_name`, `reply_to_addr`, `signature`) VALUES
('b69b7e14-4fc0-4ec8-3acf-6253c82237e0', 'system', 'system', '1', 'SixthSenseInfo', 'rahul@sixthsenseinfo.com', 'SMTP', 'gmail', 'smtp.gmail.com', '465', 'dev@sixthsenseinfo.com', 'x8ev76mrVNfUYHI+rdpkAQ==', 1, '1', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `outbound_email_audit`
--

CREATE TABLE `outbound_email_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `override_business_hours` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_accounts`
--

CREATE TABLE `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_bugs`
--

CREATE TABLE `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_cases`
--

CREATE TABLE `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_contacts`
--

CREATE TABLE `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_opportunities`
--

CREATE TABLE `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_products`
--

CREATE TABLE `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_contacts_1_c`
--

CREATE TABLE `project_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_contacts_1project_ida` varchar(36) DEFAULT NULL,
  `project_contacts_1contacts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_cstm`
--

CREATE TABLE `project_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_task`
--

CREATE TABLE `project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `relationship_type` varchar(255) DEFAULT NULL,
  `description` text,
  `predecessors` text,
  `date_start` date DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_finish` int(11) DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_unit` text,
  `actual_duration` int(11) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int(11) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int(11) DEFAULT '1',
  `task_number` int(11) DEFAULT NULL,
  `estimated_effort` int(11) DEFAULT NULL,
  `actual_effort` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `utilization` int(11) DEFAULT '100'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_task_audit`
--

CREATE TABLE `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_users_1_c`
--

CREATE TABLE `project_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_users_1project_ida` varchar(36) DEFAULT NULL,
  `project_users_1users_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospects`
--

CREATE TABLE `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospects_cstm`
--

CREATE TABLE `prospects_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_lists`
--

CREATE TABLE `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text,
  `domain_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_lists_prospects`
--

CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_list_campaigns`
--

CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `relationships`
--

CREATE TABLE `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(64) DEFAULT NULL,
  `join_key_lhs` varchar(64) DEFAULT NULL,
  `join_key_rhs` varchar(64) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `relationships`
--

INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('100594ef-2069-1943-c6bd-65bba4024974', 'projects_contacts', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'projects_contacts', 'project_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('1035b4fd-8001-f405-3912-65bba4b6d0d5', 'projects_opportunities', 'Project', 'project', 'id', 'Opportunities', 'opportunities', 'id', 'projects_opportunities', 'project_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('10c5405a-5a11-5621-a06d-65bba4ad2238', 'acl_roles_actions', 'ACLRoles', 'acl_roles', 'id', 'ACLActions', 'acl_actions', 'id', 'acl_roles_actions', 'role_id', 'action_id', 'many-to-many', NULL, NULL, 0, 0),
('11237b8a-af44-0d05-3c0e-65bba4ae5d33', 'acl_roles_users', 'ACLRoles', 'acl_roles', 'id', 'Users', 'users', 'id', 'acl_roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('11289e71-5eb4-539c-0834-65bba434b459', 'consumer_tokens', 'OAuthKeys', 'oauth_consumer', 'id', 'OAuthTokens', 'oauth_tokens', 'consumer', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('117263f5-04d9-e31d-fe68-65bba44981d3', 'email_marketing_prospect_lists', 'EmailMarketing', 'email_marketing', 'id', 'ProspectLists', 'prospect_lists', 'id', 'email_marketing_prospect_lists', 'email_marketing_id', 'prospect_list_id', 'many-to-many', NULL, NULL, 0, 0),
('117b2850-663d-8705-d5ca-65bba46fb902', 'oauthtokens_assigned_user', 'Users', 'users', 'id', 'OAuthTokens', 'oauth_tokens', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('11ae38c4-d7e8-1360-eb2c-65bba49a8b56', 'leads_documents', 'Leads', 'leads', 'id', 'Documents', 'documents', 'id', 'linked_documents', 'parent_id', 'document_id', 'many-to-many', 'parent_type', 'Leads', 0, 0),
('11e6a2ce-86cf-3b99-d685-65bba4b5b4b8', 'documents_accounts', 'Documents', 'documents', 'id', 'Accounts', 'accounts', 'id', 'documents_accounts', 'document_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('1216c2ce-cf35-5e67-3afa-65bba4e4b388', 'documents_contacts', 'Documents', 'documents', 'id', 'Contacts', 'contacts', 'id', 'documents_contacts', 'document_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('124b5bd0-7dbd-ae7e-ee37-65bba4b8d0b9', 'documents_opportunities', 'Documents', 'documents', 'id', 'Opportunities', 'opportunities', 'id', 'documents_opportunities', 'document_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('127f1ec7-56f2-d032-ad7d-65bba4677611', 'documents_cases', 'Documents', 'documents', 'id', 'Cases', 'cases', 'id', 'documents_cases', 'document_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('12af98ec-9017-9743-37e8-65bba4c499f7', 'documents_bugs', 'Documents', 'documents', 'id', 'Bugs', 'bugs', 'id', 'documents_bugs', 'document_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('12de99f7-5540-19cf-d9a5-65bba44a4d0d', 'aok_knowledgebase_categories', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'id', 'aok_knowledgebase_categories', 'aok_knowledgebase_id', 'aok_knowledge_base_categories_id', 'many-to-many', NULL, NULL, 0, 0),
('1309c72e-caec-3ac8-518b-65bba42eea81', 'am_projecttemplates_project_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Project', 'project', 'id', 'am_projecttemplates_project_1_c', 'am_projecttemplates_project_1am_projecttemplates_ida', 'am_projecttemplates_project_1project_idb', 'many-to-many', NULL, NULL, 0, 0),
('133b4ce3-1f25-0b4e-c69e-65bba40ebb97', 'am_projecttemplates_contacts_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Contacts', 'contacts', 'id', 'am_projecttemplates_contacts_1_c', 'am_projecttemplates_ida', 'contacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('1371d9fb-0388-2a6c-7281-65bba40ece19', 'am_projecttemplates_users_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Users', 'users', 'id', 'am_projecttemplates_users_1_c', 'am_projecttemplates_ida', 'users_idb', 'many-to-many', NULL, NULL, 0, 0),
('13a3f013-8b07-f02a-ea6c-65bba407a02a', 'am_tasktemplates_am_projecttemplates', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'id', 'am_tasktemplates_am_projecttemplates_c', 'am_tasktemplates_am_projecttemplatesam_projecttemplates_ida', 'am_tasktemplates_am_projecttemplatesam_tasktemplates_idb', 'many-to-many', NULL, NULL, 0, 0),
('13d37b2e-bb82-a6c6-9618-65bba4152689', 'aos_contracts_documents', 'AOS_Contracts', 'aos_contracts', 'id', 'Documents', 'documents', 'id', 'aos_contracts_documents', 'aos_contracts_id', 'documents_id', 'many-to-many', NULL, NULL, 0, 0),
('14018d28-2df4-99e9-89aa-65bba486e98d', 'aos_quotes_aos_contracts', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'aos_quotes_os_contracts_c', 'aos_quotese81e_quotes_ida', 'aos_quotes4dc0ntracts_idb', 'many-to-many', NULL, NULL, 0, 0),
('143466af-bd1e-1eb0-bcd0-65bba479d86f', 'aos_quotes_aos_invoices', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'aos_quotes_aos_invoices_c', 'aos_quotes77d9_quotes_ida', 'aos_quotes6b83nvoices_idb', 'many-to-many', NULL, NULL, 0, 0),
('148e6b0a-e02c-50da-3f27-65bba4bcda7d', 'aos_quotes_project', 'AOS_Quotes', 'aos_quotes', 'id', 'Project', 'project', 'id', 'aos_quotes_project_c', 'aos_quotes1112_quotes_ida', 'aos_quotes7207project_idb', 'many-to-many', NULL, NULL, 0, 0),
('14e6a020-ca7d-d310-0a07-65bba48d7eb2', 'aow_processed_aow_actions', 'AOW_Processed', 'aow_processed', 'id', 'AOW_Actions', 'aow_actions', 'id', 'aow_processed_aow_actions', 'aow_processed_id', 'aow_action_id', 'many-to-many', NULL, NULL, 0, 0),
('15298fa2-e626-3a35-7268-65bba48e6cb4', 'fp_event_locations_fp_events_1', 'FP_Event_Locations', 'fp_event_locations', 'id', 'FP_events', 'fp_events', 'id', 'fp_event_locations_fp_events_1_c', 'fp_event_locations_fp_events_1fp_event_locations_ida', 'fp_event_locations_fp_events_1fp_events_idb', 'many-to-many', NULL, NULL, 0, 0),
('1566051c-481d-06f1-cbef-65bba4ca7a61', 'fp_events_contacts', 'FP_events', 'fp_events', 'id', 'Contacts', 'contacts', 'id', 'fp_events_contacts_c', 'fp_events_contactsfp_events_ida', 'fp_events_contactscontacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('159e9015-b17f-c407-8998-65bba4d0904a', 'fp_events_fp_event_locations_1', 'FP_events', 'fp_events', 'id', 'FP_Event_Locations', 'fp_event_locations', 'id', 'fp_events_fp_event_locations_1_c', 'fp_events_fp_event_locations_1fp_events_ida', 'fp_events_fp_event_locations_1fp_event_locations_idb', 'many-to-many', NULL, NULL, 0, 0),
('15ce60be-263b-67c1-e2db-65bba4a6b085', 'fp_events_leads_1', 'FP_events', 'fp_events', 'id', 'Leads', 'leads', 'id', 'fp_events_leads_1_c', 'fp_events_leads_1fp_events_ida', 'fp_events_leads_1leads_idb', 'many-to-many', NULL, NULL, 0, 0),
('15fb8b4d-0db9-aa7a-d235-65bba456214b', 'fp_events_prospects_1', 'FP_events', 'fp_events', 'id', 'Prospects', 'prospects', 'id', 'fp_events_prospects_1_c', 'fp_events_prospects_1fp_events_ida', 'fp_events_prospects_1prospects_idb', 'many-to-many', NULL, NULL, 0, 0),
('162a2d7b-fdf0-81c8-48f5-65bba4544e33', 'jjwg_maps_jjwg_areas', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Areas', 'jjwg_areas', 'id', 'jjwg_maps_jjwg_areas_c', 'jjwg_maps_5304wg_maps_ida', 'jjwg_maps_41f2g_areas_idb', 'many-to-many', NULL, NULL, 0, 0),
('166687b6-9092-4208-1688-65bba4f1c2a4', 'jjwg_maps_jjwg_markers', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Markers', 'jjwg_markers', 'id', 'jjwg_maps_jjwg_markers_c', 'jjwg_maps_b229wg_maps_ida', 'jjwg_maps_2e31markers_idb', 'many-to-many', NULL, NULL, 0, 0),
('169add09-c704-d8de-10e2-65bba404e567', 'project_contacts_1', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'project_contacts_1_c', 'project_contacts_1project_ida', 'project_contacts_1contacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('16abbdea-bff6-8ab4-dadb-65bba484743b', 'jjwg_address_cache_modified_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('16d133d3-1066-3d29-8f5e-65bba45df2b3', 'project_users_1', 'Project', 'project', 'id', 'Users', 'users', 'id', 'project_users_1_c', 'project_users_1project_ida', 'project_users_1users_idb', 'many-to-many', NULL, NULL, 0, 0),
('16edd3bd-f6f8-443f-f8a9-65bba4420faf', 'jjwg_address_cache_created_by', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('17015a28-1b0e-a45c-0583-65bba4d457ca', 'securitygroups_acl_roles', 'SecurityGroups', 'securitygroups', 'id', 'ACLRoles', 'acl_roles', 'id', 'securitygroups_acl_roles', 'securitygroup_id', 'role_id', 'many-to-many', NULL, NULL, 0, 0),
('172bfddd-80bb-a972-e942-65bba437a73e', 'jjwg_address_cache_assigned_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('178b10a1-3f47-ef79-d54d-65bba4954818', 'aor_scheduled_reports_modified_user', 'Users', 'users', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('17944bb7-a676-c254-8e5c-65bba48790a8', 'securitygroups_project_task', 'SecurityGroups', 'securitygroups', 'id', 'ProjectTask', 'project_task', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProjectTask', 0, 0),
('17c91c46-3aba-0bab-d41b-65bba42b24b4', 'securitygroups_prospect_lists', 'SecurityGroups', 'securitygroups', 'id', 'ProspectLists', 'prospect_lists', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProspectLists', 0, 0),
('17e03ba7-5cb7-8774-a0b7-65bba4030e5b', 'aor_scheduled_reports_created_by', 'Users', 'users', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('181229da-e086-dd66-68ba-65bba49556bb', 'securitygroups_users', 'SecurityGroups', 'securitygroups', 'id', 'Users', 'users', 'id', 'securitygroups_users', 'securitygroup_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('181c0322-9a12-0e2f-6dd7-65bba41456e6', 'securitygroups_aor_scheduled_reports', 'SecurityGroups', 'securitygroups', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOR_Scheduled_Reports', 0, 0),
('1855a1d6-4d01-0f7c-6697-65bba40dc635', 'surveyquestionoptions_surveyquestionresponses', 'SurveyQuestionOptions', 'surveyquestionoptions', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'id', 'surveyquestionoptions_surveyquestionresponses', 'surveyq72c7options_ida', 'surveyq10d4sponses_idb', 'many-to-many', NULL, NULL, 0, 0),
('18cba39f-3850-f3ed-95a5-65bba4fc43c0', 'contacts_ssi_salary_slip_1', 'Contacts', 'contacts', 'id', 'SSI_Salary_Slip', 'ssi_salary_slip', 'id', 'contacts_ssi_salary_slip_1_c', 'contacts_ssi_salary_slip_1contacts_ida', 'contacts_ssi_salary_slip_1ssi_salary_slip_idb', 'many-to-many', NULL, NULL, 0, 0),
('193cef28-9a6d-4a74-1ab2-65bba4168f20', 'contacts_ssi_salary_structure_1', 'Contacts', 'contacts', 'id', 'SSI_Salary_Structure', 'ssi_salary_structure', 'id', 'contacts_ssi_salary_structure_1_c', 'contacts_ssi_salary_structure_1contacts_ida', 'contacts_ssi_salary_structure_1ssi_salary_structure_idb', 'many-to-many', NULL, NULL, 0, 0),
('198f9400-b11e-1990-9c1c-65bba4313c64', 'ssi_salary_structure_ssi_salary_slip_1', 'SSI_Salary_Structure', 'ssi_salary_structure', 'id', 'SSI_Salary_Slip', 'ssi_salary_slip', 'id', 'ssi_salary_structure_ssi_salary_slip_1_c', 'ssi_salary_structure_ssi_salary_slip_1ssi_salary_structure_ida', 'ssi_salary_structure_ssi_salary_slip_1ssi_salary_slip_idb', 'many-to-many', NULL, NULL, 0, 0),
('19919d82-3884-1ae9-7581-65bba4bb1807', 'securitygroups_emailtemplates', 'SecurityGroups', 'securitygroups', 'id', 'EmailTemplates', 'email_templates', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'EmailTemplates', 0, 0),
('1a0b441d-eddd-aaa8-3068-65bba4849697', 'emailtemplates_assigned_user', 'Users', 'users', 'id', 'EmailTemplates', 'email_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1fd56f06-e118-ff38-cd13-65bba4da9703', 'am_projecttemplates_modified_user', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('20232010-89f6-c970-c7c2-65bba4a33627', 'am_projecttemplates_created_by', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('205ff4f8-a388-29ef-a1a7-65bba4ac1967', 'am_projecttemplates_assigned_user', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2462e065-7fd1-9cdc-4288-65bba4a076a1', 'calls_reschedule_modified_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('24b803be-5ec5-5a09-61c6-65bba46c2deb', 'calls_reschedule_created_by', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2507cad2-d9c6-1cf0-09ac-65bba4373a68', 'calls_reschedule_assigned_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('272a2ba6-de53-9b9a-531a-65bba422d020', 'aos_contracts_modified_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2769b45c-a471-523b-84a4-65bba41dde07', 'aos_contracts_created_by', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('279f5b34-2f84-34ac-0f18-65bba49887c7', 'aos_contracts_assigned_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('27d09480-cafa-c737-6497-65bba41b929a', 'securitygroups_aos_contracts', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Contracts', 0, 0),
('27f9473a-aa0d-60d9-b88e-65bba416ceaf', 'aos_contracts_tasks', 'AOS_Contracts', 'aos_contracts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('28238322-b0a8-358e-0d3a-65bba46c8bf6', 'aos_contracts_notes', 'AOS_Contracts', 'aos_contracts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('284cb343-6a49-17eb-f25e-65bba4b71d4c', 'aos_contracts_meetings', 'AOS_Contracts', 'aos_contracts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('287882e6-bdb0-dc67-606b-65bba430b1b1', 'aos_contracts_calls', 'AOS_Contracts', 'aos_contracts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('28a2bb05-1b63-8886-48dd-65bba4e7cc32', 'aos_contracts_aos_products_quotes', 'AOS_Contracts', 'aos_contracts', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('28d22ece-182a-5db5-9406-65bba44e4491', 'aos_contracts_aos_line_item_groups', 'AOS_Contracts', 'aos_contracts', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2a70fc3d-f9dc-ddd5-b5e6-65bba442959f', 'notes_assigned_user', 'Users', 'users', 'id', 'Notes', 'notes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2ac5f903-b3d8-9291-2a2b-65bba4c6a2ee', 'securitygroups_notes', 'SecurityGroups', 'securitygroups', 'id', 'Notes', 'notes', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Notes', 0, 0),
('2af5ca0f-57d5-12fa-250f-65bba4d2c091', 'notes_modified_user', 'Users', 'users', 'id', 'Notes', 'notes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2b49c33c-6d66-8110-d662-65bba44a4344', 'notes_created_by', 'Users', 'users', 'id', 'Notes', 'notes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2e2e6487-a7eb-aab2-de29-65bba40ee61e', 'leads_modified_user', 'Users', 'users', 'id', 'Leads', 'leads', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2e8e22cd-bdad-8330-234d-65bba4781f7a', 'leads_created_by', 'Users', 'users', 'id', 'Leads', 'leads', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2ebbed5d-ccb6-9dcd-9bd6-65bba491bf51', 'leads_assigned_user', 'Users', 'users', 'id', 'Leads', 'leads', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2eea2a14-c3a0-9eda-3144-65bba45ddc83', 'securitygroups_leads', 'SecurityGroups', 'securitygroups', 'id', 'Leads', 'leads', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Leads', 0, 0),
('2f21f509-dc2c-c777-3414-65bba4f2c700', 'leads_email_addresses', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('2f4ef833-c38e-53aa-9cd7-65bba4b6710e', 'leads_email_addresses_primary', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('2f8913b7-81ea-946c-4429-65bba489356a', 'lead_direct_reports', 'Leads', 'leads', 'id', 'Leads', 'leads', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2fb4a093-1c7a-eddc-8700-65bba4b01473', 'lead_tasks', 'Leads', 'leads', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('2fdcfe50-0c1f-e340-28db-65bba41f68e8', 'lead_notes', 'Leads', 'leads', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('300b8c84-065b-2110-de3f-65bba401fb32', 'lead_meetings', 'Leads', 'leads', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('301856ee-3bcb-6356-52ff-65bba449ff9c', 'am_tasktemplates_modified_user', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('30360441-9c5e-5af1-699a-65bba4f10b5b', 'lead_calls', 'Leads', 'leads', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('30574190-fe31-ff6c-76aa-65bba4066fe7', 'am_tasktemplates_created_by', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('305dfdbd-a16f-be19-78bb-65bba4c70129', 'lead_emails', 'Leads', 'leads', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('3087f457-e117-3e3e-c425-65bba42b8b1c', 'lead_campaign_log', 'Leads', 'leads', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Leads', 0, 0),
('309253b2-5436-6ac8-5482-65bba4f3741f', 'am_tasktemplates_assigned_user', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3294e348-8b12-8238-3624-65bba47c7e9b', 'securitygroups_modified_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('32debf51-5c5f-8260-b01e-65bba48ae5e1', 'securitygroups_created_by', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('33172e2a-14c1-2b41-8850-65bba4fec54f', 'securitygroups_assigned_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('389aedc2-04f0-9a80-c494-65bba4055062', 'favorites_modified_user', 'Users', 'users', 'id', 'Favorites', 'favorites', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('38caad21-63cd-b7a5-f181-65bba45d6759', 'aos_invoices_modified_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('38fa985c-bea4-43f8-283a-65bba401a22d', 'favorites_created_by', 'Users', 'users', 'id', 'Favorites', 'favorites', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3923747a-aceb-3cff-3c1c-65bba46a7842', 'aos_invoices_created_by', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('392f4258-8a21-ad38-9780-65bba4673ea4', 'favorites_assigned_user', 'Users', 'users', 'id', 'Favorites', 'favorites', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('395abf0b-4988-a7df-1d4c-65bba4bc6fc4', 'aos_invoices_assigned_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('39b4539b-0da0-d0cc-5a16-65bba4c9e101', 'securitygroups_aos_invoices', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Invoices', 0, 0),
('3a12cdb1-9f26-3bcb-f9aa-65bba4b1b929', 'aos_invoices_aos_product_quotes', 'AOS_Invoices', 'aos_invoices', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3a4d6317-2c32-15ab-9fd7-65bba47aaa7b', 'aos_invoices_aos_line_item_groups', 'AOS_Invoices', 'aos_invoices', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3be0d0b9-7be7-53bb-ebab-65bba43c494b', 'calls_modified_user', 'Users', 'users', 'id', 'Calls', 'calls', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3c624f19-ecd4-cf3c-cb9e-65bba409f490', 'calls_created_by', 'Users', 'users', 'id', 'Calls', 'calls', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3cd7a915-d5ea-d489-e50b-65bba467b52c', 'calls_assigned_user', 'Users', 'users', 'id', 'Calls', 'calls', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3d22bbbc-c81a-c579-437c-65bba430fdf6', 'securitygroups_calls', 'SecurityGroups', 'securitygroups', 'id', 'Calls', 'calls', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Calls', 0, 0),
('3d72b549-438b-7055-2990-65bba4a78245', 'calls_notes', 'Calls', 'calls', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Calls', 0, 0),
('3db51328-feb8-f569-dc93-65bba4681be5', 'calls_reschedule', 'Calls', 'calls', 'id', 'Calls_Reschedule', 'calls_reschedule', 'call_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('411d8f5b-9e03-ae32-297c-65bba46608b8', 'securitygroups_outboundemailaccounts', 'SecurityGroups', 'securitygroups', 'id', 'OutboundEmailAccounts', 'outbound_email', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'OutboundEmailAccounts', 0, 0),
('4182505b-487c-4959-0f7a-65bba45f3097', 'outbound_email_owner_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('41cf3b19-e278-4224-3068-65bba489392c', 'outbound_email_modified_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4212fa3e-84da-66dd-6206-65bba4cabd74', 'outbound_email_created_by', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('42493448-15ff-a661-5b2a-65bba4e9aac8', 'outbound_email_assigned_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('42c6999b-2e50-33da-438a-65bba40cdb35', 'cases_modified_user', 'Users', 'users', 'id', 'Cases', 'cases', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('43460749-bd17-63a4-1d7d-65bba4d20b73', 'cases_created_by', 'Users', 'users', 'id', 'Cases', 'cases', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('43467325-a6ee-b3ef-e892-65bba4dc289c', 'aok_knowledge_base_categories_modified_user', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('43794e81-3da4-a63d-f08f-65bba4a4edba', 'cases_assigned_user', 'Users', 'users', 'id', 'Cases', 'cases', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('439deb22-3b4b-a104-0bdd-65bba43cf65e', 'aok_knowledge_base_categories_created_by', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('43a3a7dc-d62e-b76b-7769-65bba479a8ca', 'securitygroups_cases', 'SecurityGroups', 'securitygroups', 'id', 'Cases', 'cases', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Cases', 0, 0),
('43c3436c-32df-6bdd-2fd1-65bba41dc0ae', 'aos_pdf_templates_modified_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('43cfe24c-4276-fd04-2dd5-65bba445386e', 'case_calls', 'Cases', 'cases', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('43d1a0e0-fc12-e87d-24df-65bba42c567c', 'aok_knowledge_base_categories_assigned_user', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('43fb0597-d469-cb97-e2c6-65bba4e8da82', 'case_tasks', 'Cases', 'cases', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('4405fa4d-4872-76b2-7695-65bba482d3c7', 'aos_pdf_templates_created_by', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4425607a-6d57-dbb9-61c4-65bba49ea21e', 'case_notes', 'Cases', 'cases', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('443e1ede-bfd2-eabb-f389-65bba43a7a43', 'aos_pdf_templates_assigned_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('444d0150-6b9f-fa1e-2c8a-65bba42c27b9', 'case_meetings', 'Cases', 'cases', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('4474fb0e-6092-680e-e479-65bba41c2699', 'case_emails', 'Cases', 'cases', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('4479a1ed-2e3f-7ef8-2430-65bba4a9c0b7', 'securitygroups_aos_pdf_templates', 'SecurityGroups', 'securitygroups', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_PDF_Templates', 0, 0),
('449f5ab2-8971-89b9-489b-65bba4679e40', 'cases_created_contact', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'contact_created_by_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('46eb27d4-b6cd-d6e6-9046-65bba49b61f7', 'emails_modified_user', 'Users', 'users', 'id', 'Emails', 'emails', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4743b2ce-b463-bd6f-4c47-65bba4291935', 'emails_created_by', 'Users', 'users', 'id', 'Emails', 'emails', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('477afcd1-314a-af43-0077-65bba423c17c', 'emails_assigned_user', 'Users', 'users', 'id', 'Emails', 'emails', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('47b07b46-c82c-30c4-7e92-65bba436913a', 'securitygroups_emails', 'SecurityGroups', 'securitygroups', 'id', 'Emails', 'emails', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Emails', 0, 0),
('47e4119e-f162-4169-fef5-65bba4c7cee2', 'emails_notes_rel', 'Emails', 'emails', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('481923be-c98e-54e2-b983-65bba46dd5c7', 'emails_contacts_rel', 'Emails', 'emails', 'id', 'Contacts', 'contacts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('485f9d90-7f25-eb85-b9d7-65bba48c7674', 'emails_accounts_rel', 'Emails', 'emails', 'id', 'Accounts', 'accounts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('488e22a0-6cf1-74ff-50f3-65bba4d3d678', 'emails_leads_rel', 'Emails', 'emails', 'id', 'Leads', 'leads', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('48c34896-d2c7-fef1-8fe9-65bba4f6361c', 'emails_aos_contracts_rel', 'Emails', 'emails', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'AOS_Contracts', 0, 0),
('48f638f7-a84a-c0c1-269e-65bba4589aec', 'emails_meetings_rel', 'Emails', 'emails', 'id', 'Meetings', 'meetings', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Meetings', 0, 0),
('4c7008f6-b77b-4aac-e515-65bba4458b87', 'eapm_modified_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4ec82be5-b951-707f-be72-65bba468d674', 'externaloauthconnection_modified_user', 'Users', 'users', 'id', 'ExternalOAuthConnection', 'external_oauth_connections', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4f0ad023-b49b-287f-e77e-65bba430838f', 'externaloauthconnection_created_by', 'Users', 'users', 'id', 'ExternalOAuthConnection', 'external_oauth_connections', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4f4501ae-0d02-f353-8328-65bba4110f07', 'securitygroups_externaloauthconnection', 'SecurityGroups', 'securitygroups', 'id', 'ExternalOAuthConnection', 'external_oauth_connections', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ExternalOAuthConnection', 0, 0),
('4f7f47aa-541f-91db-6413-65bba4bfe31c', 'external_oauth_connections_external_oauth_providers', 'ExternalOAuthProvider', 'external_oauth_providers', 'id', 'ExternalOAuthConnection', 'external_oauth_connections', 'external_oauth_provider_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('51e6b100-be24-e33c-2e64-65bba4bff6b5', 'aos_product_categories_modified_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5201f9d5-061f-a134-49ba-65bba470551d', 'aok_knowledgebase_modified_user', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('525bdf7c-739e-d070-64d9-65bba4fd5844', 'aos_product_categories_created_by', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('52970a17-59de-29ff-9a84-65bba4625979', 'aos_product_categories_assigned_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('52983586-dc2d-1e99-cae2-65bba48b70d7', 'aok_knowledgebase_created_by', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('52d12226-652d-93c5-59da-65bba43cae4d', 'securitygroups_aos_product_categories', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Product_Categories', 0, 0),
('52fa3045-7efb-7a12-cb86-65bba4440df0', 'aok_knowledgebase_assigned_user', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5309fc9d-c563-f9bb-c59f-65bba4f55e9b', 'sub_product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'parent_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5318ae75-4f90-19d2-ba00-65bba497a731', 'bugs_modified_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5330d8bb-19a9-5859-e159-65bba4a67845', 'securitygroups_aok_knowledgebase', 'SecurityGroups', 'securitygroups', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOK_KnowledgeBase', 0, 0),
('537cf802-d43f-49f0-4b11-65bba448123e', 'bugs_created_by', 'Users', 'users', 'id', 'Bugs', 'bugs', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('53bf7b82-4d7c-c002-8807-65bba46a428f', 'bugs_assigned_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('53f9a0da-6b0e-1e5e-b597-65bba4bda266', 'securitygroups_bugs', 'SecurityGroups', 'securitygroups', 'id', 'Bugs', 'bugs', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Bugs', 0, 0),
('54332d74-2239-0156-f174-65bba4f57eac', 'bug_tasks', 'Bugs', 'bugs', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('54795480-9aa0-a660-fe1d-65bba47ce3e1', 'bug_meetings', 'Bugs', 'bugs', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('54bacd06-cb37-a84f-2a49-65bba43763bd', 'bug_calls', 'Bugs', 'bugs', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('5501bf35-11a7-ac67-6c47-65bba48dc98c', 'bug_emails', 'Bugs', 'bugs', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('55423594-d07c-b589-1cd4-65bba4262d85', 'bug_notes', 'Bugs', 'bugs', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('5582ebb8-cc63-dd8f-adfb-65bba4c3234d', 'bugs_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'found_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('55c64c8f-9318-ba85-3cb6-65bba4737241', 'bugs_fixed_in_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'fixed_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5671a5eb-eb51-b5ba-1747-65bba4371148', 'user_direct_reports', 'Users', 'users', 'id', 'Users', 'users', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('56bd48cd-98e3-5388-eb7c-65bba457af87', 'users_users_password_link', 'Users', 'users', 'id', NULL, 'users_signatures', 'user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('57201448-527e-9635-2871-65bba4623d62', 'users_email_addresses', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('57619fa7-2bfe-33d9-b117-65bba485476c', 'users_email_addresses_primary', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('578d60fa-de5e-1092-b0f2-65bba463c14b', 'meetings_modified_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('58004bc7-5dfe-9826-8889-65bba4591174', 'meetings_created_by', 'Users', 'users', 'id', 'Meetings', 'meetings', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('587eaef7-19fe-ce51-c6fb-65bba4682784', 'meetings_assigned_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('58c1fe69-9318-8288-dc3c-65bba4ce54d0', 'securitygroups_meetings', 'SecurityGroups', 'securitygroups', 'id', 'Meetings', 'meetings', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Meetings', 0, 0),
('5900f666-145f-4e18-d561-65bba4d9885b', 'meetings_notes', 'Meetings', 'meetings', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('5a010851-fc6d-e566-e8ef-65bba413a523', 'ssi_salary_structure_modified_user', 'Users', 'users', 'id', 'SSI_Salary_Structure', 'ssi_salary_structure', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5e644ca1-4a17-0bed-78ca-65bba475574f', 'campaignlog_contact', 'CampaignLog', 'campaign_log', 'related_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5edc7804-416b-ecd3-04da-65bba4b21c5b', 'externaloauthprovider_modified_user', 'Users', 'users', 'id', 'ExternalOAuthProvider', 'external_oauth_providers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5eee30c3-efb4-08f8-ce16-65bba42fc13f', 'campaignlog_lead', 'CampaignLog', 'campaign_log', 'related_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5f1a9b0d-2fc8-83a2-c6e9-65bba4462778', 'externaloauthprovider_created_by', 'Users', 'users', 'id', 'ExternalOAuthProvider', 'external_oauth_providers', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5f475833-fe95-6d38-2654-65bba4f6bfee', 'campaignlog_created_opportunities', 'CampaignLog', 'campaign_log', 'related_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5f4c0d83-4bc1-a6a2-e4d9-65bba4566d81', 'securitygroups_externaloauthprovider', 'SecurityGroups', 'securitygroups', 'id', 'ExternalOAuthProvider', 'external_oauth_providers', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ExternalOAuthProvider', 0, 0),
('5fa9bab0-2d82-1afd-c742-65bba4217856', 'campaignlog_targeted_users', 'CampaignLog', 'campaign_log', 'target_id', 'Users', 'users', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5fcc0f5c-3004-75e6-9b88-65bba4d87ca4', 'ssi_salary_structure_created_by', 'Users', 'users', 'id', 'SSI_Salary_Structure', 'ssi_salary_structure', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6000e86a-cf18-fc07-9177-65bba403bcd6', 'campaignlog_sent_emails', 'CampaignLog', 'campaign_log', 'related_id', 'Emails', 'emails', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('606791b4-705b-a89c-9a7e-65bba4ee0e25', 'reminders_modified_user', 'Users', 'users', 'id', 'Reminders', 'reminders', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('60ba84da-b901-aa4e-4c23-65bba4bf40cc', 'reminders_created_by', 'Users', 'users', 'id', 'Reminders', 'reminders', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6105723a-fb42-e618-cf7c-65bba427ab1b', 'reminders_assigned_user', 'Users', 'users', 'id', 'Reminders', 'reminders', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('61651744-9d5c-0c3b-e2ed-65bba4f67f00', 'aos_products_modified_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('61ae2217-49c9-5131-75ac-65bba4d7ec98', 'aos_products_created_by', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('61e33be5-28dc-89d7-60fc-65bba487321c', 'aos_products_assigned_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('62372c7b-8738-e625-5350-65bba403e4db', 'securitygroups_aos_products', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Products', 'aos_products', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Products', 0, 0),
('62771377-b630-a06a-664e-65bba4e39588', 'product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Products', 'aos_products', 'aos_product_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('63940ba0-3839-a7fc-3b3e-65bba417ff54', 'ssi_salary_structure_assigned_user', 'Users', 'users', 'id', 'SSI_Salary_Structure', 'ssi_salary_structure', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('67130f18-34d5-ecc1-11be-65bba4e7054f', 'securitygroups_ssi_salary_structure', 'SecurityGroups', 'securitygroups', 'id', 'SSI_Salary_Structure', 'ssi_salary_structure', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SSI_Salary_Structure', 0, 0),
('687d0f5c-9483-c039-6885-65bba41ebbeb', 'templatesectionline_modified_user', 'Users', 'users', 'id', 'TemplateSectionLine', 'templatesectionline', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('688c16c7-3435-70f9-f714-65bba46f7cb8', 'tasks_modified_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('68bfa8a6-8193-30c2-4536-65bba409d2e0', 'templatesectionline_created_by', 'Users', 'users', 'id', 'TemplateSectionLine', 'templatesectionline', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('68e38c9e-8df8-8a46-3626-65bba47bc221', 'tasks_created_by', 'Users', 'users', 'id', 'Tasks', 'tasks', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6912ef72-4f93-0a19-24fa-65bba4367972', 'tasks_assigned_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('693f450a-af7b-a696-1b49-65bba4e96eee', 'securitygroups_tasks', 'SecurityGroups', 'securitygroups', 'id', 'Tasks', 'tasks', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Tasks', 0, 0),
('696d49a5-88a2-1c22-c463-65bba40024b9', 'tasks_notes', 'Tasks', 'tasks', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6ba8bcc9-09a2-d6a1-1377-65bba4f41f0b', 'reminders_invitees_modified_user', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6be100dc-b44e-9baf-10b0-65bba4ad873a', 'reminders_invitees_created_by', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6c17391a-3c31-199e-376a-65bba4a92950', 'reminders_invitees_assigned_user', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6e77ff2f-52eb-feb7-03d8-65bba4159a06', 'securitygroups_project', 'SecurityGroups', 'securitygroups', 'id', 'Project', 'project', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Project', 0, 0),
('6ee13d56-aa8c-9e41-1f3a-65bba42d2268', 'projects_notes', 'Project', 'project', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('6f3603b9-ce13-278b-960c-65bba47b29d3', 'projects_tasks', 'Project', 'project', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('6fa481cd-096a-a3d3-ad7d-65bba4a90656', 'projects_meetings', 'Project', 'project', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('6fe5ab66-2727-8b97-af33-65bba48e8c29', 'projects_calls', 'Project', 'project', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('70249d6b-f701-ed36-838a-65bba468deec', 'projects_emails', 'Project', 'project', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('7065a5b3-f8e1-e93b-902b-65bba429da46', 'projects_project_tasks', 'Project', 'project', 'id', 'ProjectTask', 'project_task', 'project_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('70a21c7b-6802-89f1-7477-65bba49eff2b', 'projects_assigned_user', 'Users', 'users', 'id', 'Project', 'project', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('70ee5bff-3aaf-4b7a-a53d-65bba418a461', 'projects_modified_user', 'Users', 'users', 'id', 'Project', 'project', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7133105a-1535-4a48-708a-65bba41ada46', 'projects_created_by', 'Users', 'users', 'id', 'Project', 'project', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7245f098-b532-0914-9255-65bba479435c', 'aos_products_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('72a68687-0a36-0359-b72b-65bba46ae6c1', 'aos_products_quotes_created_by', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('72e8f29e-a416-6120-fd01-65bba4209773', 'aos_products_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('731d8958-2a28-e62b-ff42-65bba49bcfa5', 'aos_product_quotes_aos_products', 'AOS_Products', 'aos_products', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'product_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('745100b4-c8d4-6c8c-0ac2-65bba4b8b2e5', 'aor_conditions_modified_user', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('75e66400-a75a-aa79-6105-65bba45c9b4b', 'oauth2tokens_modified_user', 'Users', 'users', 'id', 'OAuth2Tokens', 'oauth2tokens', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7634f05e-5ee4-8b8e-b118-65bba4a89c69', 'oauth2tokens_created_by', 'Users', 'users', 'id', 'OAuth2Tokens', 'oauth2tokens', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('76a88922-0ba8-0455-af0c-65bba4d3d2d0', 'oauth2tokens_assigned_user', 'Users', 'users', 'id', 'OAuth2Tokens', 'oauth2tokens', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('79b506c7-79ec-1907-7012-65bba4920145', 'aor_conditions_created_by', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7cea0489-bb4b-9a71-2f2d-65bba4a1b0ab', 'fp_events_modified_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7d416b63-7779-29e9-f63d-65bba45dcad2', 'fp_events_created_by', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7d6f1ebb-8eec-7690-628d-65bba4ac7a9c', 'fp_events_assigned_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7d981170-37ba-fd4a-b2af-65bba4447c7e', 'securitygroups_fp_events', 'SecurityGroups', 'securitygroups', 'id', 'FP_events', 'fp_events', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'FP_events', 0, 0),
('7e81abb3-ff8d-76f7-8cce-65bba407cb8f', 'securitygroups_projecttask', 'SecurityGroups', 'securitygroups', 'id', 'ProjectTask', 'project_task', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProjectTask', 0, 0),
('7eefda38-aedb-fd11-1cca-65bba46b52d6', 'project_tasks_notes', 'ProjectTask', 'project_task', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('7f6e6024-e5d6-1acd-ac58-65bba4dd0bb9', 'project_tasks_tasks', 'ProjectTask', 'project_task', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('7fd3e26e-e1c4-dccc-1436-65bba46243fd', 'project_tasks_meetings', 'ProjectTask', 'project_task', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('7fe37319-6d63-6e5c-962b-65bba4f00dae', 'alerts_modified_user', 'Users', 'users', 'id', 'Alerts', 'alerts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('801f9697-647b-c682-7111-65bba491fbb6', 'project_tasks_calls', 'ProjectTask', 'project_task', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('803b70cb-6d09-4ef0-3ed8-65bba41574f1', 'alerts_created_by', 'Users', 'users', 'id', 'Alerts', 'alerts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('80638c42-bb91-23e3-f6c7-65bba47a97e3', 'project_tasks_emails', 'ProjectTask', 'project_task', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('8072b38a-ea02-15ba-1fa9-65bba4ca283e', 'alerts_assigned_user', 'Users', 'users', 'id', 'Alerts', 'alerts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('80acf935-c2cb-bfb6-2b04-65bba43a0c17', 'project_tasks_assigned_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('80f26509-2abd-b9c0-5ed4-65bba42f777a', 'project_tasks_modified_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('81391813-d84c-e5d4-03de-65bba470b903', 'project_tasks_created_by', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('8169430a-5cb6-f429-76ea-65bba457622f', 'aos_line_item_groups_modified_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('81c64b1e-66c5-bd02-85e3-65bba47f98b3', 'aos_line_item_groups_created_by', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8204ba17-2d4e-e74a-0897-65bba40cffe2', 'aos_line_item_groups_assigned_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('823648ab-74cb-0638-0ce7-65bba4f2288d', 'groups_aos_product_quotes', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'group_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('837bbece-035c-3d65-d581-65bba4bd3f85', 'oauth2clients_modified_user', 'Users', 'users', 'id', 'OAuth2Clients', 'oauth2clients', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('83bb9cce-3514-39d0-9bb8-65bba4deeead', 'oauth2clients_created_by', 'Users', 'users', 'id', 'OAuth2Clients', 'oauth2clients', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('83ebcc1d-be8c-fce9-bd46-65bba4bc8ce5', 'oauth2clients_oauth2tokens', 'OAuth2Clients', 'oauth2clients', 'id', 'OAuth2Tokens', 'oauth2tokens', 'client', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8418b9ab-e941-43b2-a11c-65bba4090f82', 'oauth2clients_assigned_user', 'Users', 'users', 'id', 'OAuth2Clients', 'oauth2clients', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8a5f5b19-a593-e66d-0eb1-65bba476f9a4', 'fp_event_locations_modified_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8a9735d9-0252-713b-3c83-65bba4396eb5', 'fp_event_locations_created_by', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8ac4d31a-246f-15b8-be0d-65bba42b3572', 'fp_event_locations_assigned_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8af6eef6-b68e-ec89-86e8-65bba40a7df6', 'campaigns_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8b0c4ab1-811b-8f8d-4c75-65bba4b4976c', 'securitygroups_fp_event_locations', 'SecurityGroups', 'securitygroups', 'id', 'FP_Event_Locations', 'fp_event_locations', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'FP_Event_Locations', 0, 0),
('8b62b8b5-1462-0cad-02ec-65bba4c1eabe', 'optimistic_locking', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('8b6e76e8-97d5-762d-f682-65bba4669dbb', 'campaigns_created_by', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8ba3ba2d-935f-ea80-a29d-65bba43ce622', 'unified_search', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('8bc4a66d-9a62-fdd3-616b-65bba4cba16e', 'campaigns_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8c243b9d-a163-bf0f-add2-65bba4d40019', 'securitygroups_campaigns', 'SecurityGroups', 'securitygroups', 'id', 'Campaigns', 'campaigns', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Campaigns', 0, 0),
('8c69e610-3860-04c0-54cb-65bba4393cc0', 'campaign_accounts', 'Campaigns', 'campaigns', 'id', 'Accounts', 'accounts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8cb01894-5af0-e27e-8238-65bba49eb0bf', 'campaign_contacts', 'Campaigns', 'campaigns', 'id', 'Contacts', 'contacts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8cf8d5ed-e64b-c348-dfc2-65bba4030e6e', 'campaign_leads', 'Campaigns', 'campaigns', 'id', 'Leads', 'leads', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8d4301e0-ba3e-40c0-c306-65bba43b8fe4', 'campaign_prospects', 'Campaigns', 'campaigns', 'id', 'Prospects', 'prospects', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8d8e5741-0ed2-08fa-d099-65bba4fece58', 'campaign_opportunities', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8ddb22b6-055e-f770-7d69-65bba4da0dd1', 'campaign_notes', 'Campaigns', 'campaigns', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Campaigns', 0, 0),
('8e2628c3-cdb1-ce6e-5859-65bba4585297', 'campaign_email_marketing', 'Campaigns', 'campaigns', 'id', 'EmailMarketing', 'email_marketing', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8e6dd6cf-fbab-160f-c362-65bba4895e90', 'campaign_emailman', 'Campaigns', 'campaigns', 'id', 'EmailMan', 'emailman', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8eb9e4bf-327b-e207-4525-65bba4fad296', 'campaign_campaignlog', 'Campaigns', 'campaigns', 'id', 'CampaignLog', 'campaign_log', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8f00def4-18e2-b6f0-e5b2-65bba4606ffe', 'campaign_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8f3d0c3f-9607-8ca6-3880-65bba4fe555a', 'campaign_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8f81261f-9017-6bb4-8f7f-65bba44d5ecc', 'surveyresponses_campaigns', 'Campaigns', 'campaigns', 'id', 'SurveyResponses', 'surveyresponses', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('91a13717-8f81-53d2-b0d6-65bba46a0c0a', 'aos_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('91e2ed28-55bd-106c-cab1-65bba42fcfe4', 'aos_quotes_created_by', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('92172c5e-3343-b366-e6a0-65bba46e543e', 'aos_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('92512aef-bebc-a8ae-e322-65bba4a01ae6', 'securitygroups_aos_quotes', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Quotes', 'aos_quotes', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Quotes', 0, 0),
('92671ea1-d229-6314-1916-65bba4cfc1b1', 'documents_modified_user', 'Users', 'users', 'id', 'Documents', 'documents', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('928d982b-bbad-ea89-b275-65bba4a324a3', 'aos_quotes_aos_product_quotes', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('92aebc15-18b0-09fb-2c1c-65bba41d27d2', 'documents_created_by', 'Users', 'users', 'id', 'Documents', 'documents', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('92c82128-c19a-cc6b-687e-65bba4ad7d62', 'aos_quotes_aos_line_item_groups', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('92e06398-1c93-c25b-3aef-65bba409c964', 'documents_assigned_user', 'Users', 'users', 'id', 'Documents', 'documents', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('93167d03-bf79-08e8-e864-65bba4c8dd1d', 'securitygroups_documents', 'SecurityGroups', 'securitygroups', 'id', 'Documents', 'documents', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Documents', 0, 0),
('936a1f84-31e0-eb22-59de-65bba4501b20', 'document_revisions', 'Documents', 'documents', 'id', 'DocumentRevisions', 'document_revisions', 'document_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('93f2d24e-e570-f37b-74b7-65bba4518e8f', 'surveyresponses_modified_user', 'Users', 'users', 'id', 'SurveyResponses', 'surveyresponses', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('941e06f0-0205-ba1e-8933-65bba4a83843', 'accounts_bugs', 'Accounts', 'accounts', 'id', 'Bugs', 'bugs', 'id', 'accounts_bugs', 'account_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('94392a48-4fc5-cee3-0471-65bba4d2562c', 'surveyresponses_created_by', 'Users', 'users', 'id', 'SurveyResponses', 'surveyresponses', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('946bcc8c-a2b3-d9df-93f7-65bba428a6ef', 'surveyresponses_assigned_user', 'Users', 'users', 'id', 'SurveyResponses', 'surveyresponses', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('949a66dc-8f60-2d1c-6698-65bba49ed70f', 'securitygroups_surveyresponses', 'SecurityGroups', 'securitygroups', 'id', 'SurveyResponses', 'surveyresponses', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyResponses', 0, 0),
('94c7e2ac-5874-6cba-c6d5-65bba4ed3a93', 'surveyresponses_surveyquestionresponses', 'SurveyResponses', 'surveyresponses', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'surveyresponse_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('94f3c785-cd8f-bb40-262a-65bba4936149', 'surveyresponses_contacts', 'Contacts', 'contacts', 'id', 'SurveyResponses', 'surveyresponses', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9505de6a-fa51-7b68-e3f8-65bba46ded23', 'revisions_created_by', 'Users', 'users', 'id', 'DocumentRevisions', 'document_revisions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9521b96c-f2e9-42eb-e7d7-65bba4df69ba', 'surveyresponses_accounts', 'Accounts', 'accounts', 'id', 'SurveyResponses', 'surveyresponses', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('985a9f99-16dc-7d9f-d794-65bba4894181', 'prospectlists_assigned_user', 'Users', 'users', 'id', 'ProspectLists', 'prospect_lists', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('986306f6-b826-dcef-93b7-65bba42a0c44', 'accounts_contacts', 'Accounts', 'accounts', 'id', 'Contacts', 'contacts', 'id', 'accounts_contacts', 'account_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('98c75c7c-c461-cef2-3234-65bba47da2a7', 'securitygroups_prospectlists', 'SecurityGroups', 'securitygroups', 'id', 'ProspectLists', 'prospect_lists', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProspectLists', 0, 0),
('9ab9d908-7f0f-158b-d9e8-65bba45f30a3', 'aod_indexevent_modified_user', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9b14a530-0f13-fa00-7fd6-65bba423d685', 'aod_indexevent_created_by', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9b591591-a8e1-a371-5049-65bba47d0a0b', 'aod_indexevent_assigned_user', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9c52000f-f897-2726-05f4-65bba4ba1648', 'accounts_opportunities', 'Accounts', 'accounts', 'id', 'Opportunities', 'opportunities', 'id', 'accounts_opportunities', 'account_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('9c928bc4-c1e0-3aa9-3cae-65bba41587d3', 'aow_actions_modified_user', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9cd649b8-75ca-9a0d-2c18-65bba44401e9', 'aow_actions_created_by', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9f490441-6b38-a6e6-8ec1-65bba46ae905', 'calls_contacts', 'Calls', 'calls', 'id', 'Contacts', 'contacts', 'id', 'calls_contacts', 'call_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('a253080b-7144-27a4-9ecf-65bba4f6f1cd', 'calls_users', 'Calls', 'calls', 'id', 'Users', 'users', 'id', 'calls_users', 'call_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('a290012b-906f-4fa2-0767-65bba4920a9e', 'eapm_created_by', 'Users', 'users', 'id', 'EAPM', 'eapm', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a2b2b65c-0c9e-0960-33d2-65bba49783d6', 'surveys_modified_user', 'Users', 'users', 'id', 'Surveys', 'surveys', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a3134de5-b8e1-c21f-4f5b-65bba42de9c4', 'surveys_created_by', 'Users', 'users', 'id', 'Surveys', 'surveys', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a35910dd-cf07-37e9-4121-65bba46d0790', 'surveys_assigned_user', 'Users', 'users', 'id', 'Surveys', 'surveys', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a38fa2e7-9589-5678-57a3-65bba4f130ea', 'securitygroups_surveys', 'SecurityGroups', 'securitygroups', 'id', 'Surveys', 'surveys', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Surveys', 0, 0),
('a3bf02f8-8fa3-c0fe-62f9-65bba42e3591', 'surveys_surveyquestions', 'Surveys', 'surveys', 'id', 'SurveyQuestions', 'surveyquestions', 'survey_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a3eda1a8-c75f-aa42-8465-65bba4ccfd8b', 'surveys_surveyresponses', 'Surveys', 'surveys', 'id', 'SurveyResponses', 'surveyresponses', 'survey_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a4206fcd-2c4a-cf0f-619b-65bba46978f5', 'surveys_campaigns', 'Surveys', 'surveys', 'id', 'Campaigns', 'campaigns', 'survey_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a5180f40-dac8-cbf1-8238-65bba4da0626', 'opportunities_modified_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a56c0784-03a4-ef9a-8b95-65bba4c92108', 'calls_leads', 'Calls', 'calls', 'id', 'Leads', 'leads', 'id', 'calls_leads', 'call_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('a6be23dc-2d30-3f3b-65b2-65bba467aac8', 'prospects_modified_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a72b607d-4e9d-1e76-ab6d-65bba4a405dd', 'prospects_created_by', 'Users', 'users', 'id', 'Prospects', 'prospects', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a7747d23-0f38-0bed-df0d-65bba4bd8ab4', 'prospects_assigned_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a7c2b2fe-8f04-5c6e-b0b1-65bba4ebf35d', 'securitygroups_prospects', 'SecurityGroups', 'securitygroups', 'id', 'Prospects', 'prospects', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Prospects', 0, 0),
('a8131a2d-bdd7-c1c1-04d5-65bba40e8d56', 'prospects_email_addresses', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('a8669e80-a32a-b9a4-643d-65bba4b755b2', 'prospects_email_addresses_primary', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('a8afd7e8-52dd-6d78-24f4-65bba42f34ea', 'prospect_tasks', 'Prospects', 'prospects', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('a8e20f29-5d19-955b-92fd-65bba4dc26da', 'cases_bugs', 'Cases', 'cases', 'id', 'Bugs', 'bugs', 'id', 'cases_bugs', 'case_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('a9075c89-9e7e-1274-b122-65bba4d43509', 'prospect_notes', 'Prospects', 'prospects', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('a942c2e9-015f-eee5-a9e1-65bba455fad4', 'prospect_meetings', 'Prospects', 'prospects', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('a96a196d-8e45-4be0-d675-65bba43ec82c', 'aod_index_modified_user', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a97c83ce-8f1a-105f-47e5-65bba4d9562b', 'prospect_calls', 'Prospects', 'prospects', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('a9a3f614-254b-a0ad-4332-65bba47797a3', 'aod_index_created_by', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a9cdd628-fea9-b9fb-d70a-65bba48179c4', 'prospect_emails', 'Prospects', 'prospects', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('a9cf4f25-b5bd-2c25-ac9f-65bba4ca570b', 'aod_index_assigned_user', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('aa0d1bb2-1cb8-1f88-9a1e-65bba4c058df', 'prospect_campaign_log', 'Prospects', 'prospects', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Prospects', 0, 0),
('aad60705-f119-8140-9f61-65bba44c3acb', 'opportunities_created_by', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ac7e0a42-336c-5064-8855-65bba4207596', 'contacts_bugs', 'Contacts', 'contacts', 'id', 'Bugs', 'bugs', 'id', 'contacts_bugs', 'contact_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('ace81e97-858d-d4ed-a945-65bba447b3d6', 'aow_workflow_modified_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ad225828-b3a2-355f-c9d5-65bba4f8d130', 'aow_workflow_created_by', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ad503303-e808-1738-16c0-65bba42715a1', 'aow_workflow_assigned_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ad7dcfb7-0318-7ae9-4bf5-65bba46ab2f0', 'securitygroups_aow_workflow', 'SecurityGroups', 'securitygroups', 'id', 'AOW_WorkFlow', 'aow_workflow', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOW_WorkFlow', 0, 0),
('adaa3056-33e9-3366-294b-65bba4d9ab2a', 'aow_workflow_aow_conditions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Conditions', 'aow_conditions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('add50ea6-63a0-5f52-eb14-65bba4761b75', 'opportunities_assigned_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('adda8072-b0ae-f688-ea67-65bba4fd1ffe', 'aow_workflow_aow_actions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Actions', 'aow_actions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ae179685-8b6f-d07b-d736-65bba4e017fa', 'aow_workflow_aow_processed', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Processed', 'aow_processed', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('af5a00b4-2c6b-e763-8280-65bba4eb77d4', 'contacts_cases', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'id', 'contacts_cases', 'contact_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('b033028c-f241-daca-f3aa-65bba471db6b', 'securitygroups_opportunities', 'SecurityGroups', 'securitygroups', 'id', 'Opportunities', 'opportunities', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Opportunities', 0, 0),
('b07a17ad-1d76-c486-087e-65bba4ffcace', 'surveyquestionresponses_modified_user', 'Users', 'users', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b0b6ea68-1de6-4294-2784-65bba4b7057d', 'surveyquestionresponses_created_by', 'Users', 'users', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b0e5183d-8d6f-ea20-4cf9-65bba422aa89', 'surveyquestionresponses_assigned_user', 'Users', 'users', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b11331a6-45bd-58dc-10ab-65bba48ab31b', 'securitygroups_surveyquestionresponses', 'SecurityGroups', 'securitygroups', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyQuestionResponses', 0, 0),
('b17c74c1-58e9-b4d0-312a-65bba45a3667', 'securitygroups_inboundemail', 'SecurityGroups', 'securitygroups', 'id', 'InboundEmail', 'inbound_email', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'InboundEmail', 0, 0),
('b1c85336-9769-4c9a-6426-65bba4db3de4', 'inbound_emails_distribution_user', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'distribution_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b1f9e38d-3b11-70f2-ee01-65bba421075a', 'inbound_emails_autoreply_email_templates', 'EmailTemplates', 'email_templates', 'id', 'InboundEmail', 'inbound_email', 'template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b206012d-33d4-77c4-c601-65bba467046d', 'contacts_users', 'Contacts', 'contacts', 'id', 'Users', 'users', 'id', 'contacts_users', 'contact_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('b224239b-aa58-e3a9-073a-65bba4e45dc0', 'inbound_emails_case_email_templates', 'EmailTemplates', 'email_templates', 'id', 'InboundEmail', 'inbound_email', 'create_case_template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b251a225-0aef-3e0a-b116-65bba4a65e30', 'inbound_emails_external_oauth_connections', 'ExternalOAuthConnection', 'external_oauth_connections', 'id', 'InboundEmail', 'inbound_email', 'external_oauth_connection_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b27d4d45-9ab3-a613-7e37-65bba4ff8641', 'inbound_outbound_email_accounts', 'OutboundEmailAccounts', 'outbound_email', 'id', 'InboundEmail', 'inbound_email', 'outbound_email_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b2a91061-c112-1d23-98d2-65bba4a72069', 'inbound_email_created_by', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('b2bf01e1-7059-2449-8db7-65bba4636f03', 'opportunity_calls', 'Opportunities', 'opportunities', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('b2da9e82-4018-aa0b-2455-65bba44a14ba', 'inbound_email_modified_user_id', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('b2e7d25d-cb9f-6df5-72f4-65bba4ccb160', 'aop_case_events_modified_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b347cf18-a4de-eb4e-d6f8-65bba4e9df53', 'aop_case_events_created_by', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b37be1c1-1204-fe78-578a-65bba4c2196f', 'aop_case_events_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b3c4edb0-a6e9-ad32-ef4f-65bba4637f78', 'cases_aop_case_events', 'Cases', 'cases', 'id', 'AOP_Case_Events', 'aop_case_events', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b4612891-ece7-611c-09ac-65bba4ccd45f', 'securitygroups_emailmarketing', 'SecurityGroups', 'securitygroups', 'id', 'EmailMarketing', 'email_marketing', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'EmailMarketing', 0, 0),
('b4d8128f-702c-eb61-10da-65bba4489721', 'email_template_email_marketings', 'EmailTemplates', 'email_templates', 'id', 'EmailMarketing', 'email_marketing', 'template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b52f0d07-f060-61e8-736e-65bba4b44d5c', 'opportunity_meetings', 'Opportunities', 'opportunities', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('b5b40729-0509-2de9-963a-65bba47c6472', 'emails_bugs_rel', 'Emails', 'emails', 'id', 'Bugs', 'bugs', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Bugs', 0, 0),
('b620190d-58dc-a404-6cdb-65bba4b9b25f', 'campaign_campaigntrakers', 'Campaigns', 'campaigns', 'id', 'CampaignTrackers', 'campaign_trkrs', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b7a90bca-49ba-a7e8-318d-65bba4a5cb68', 'opportunity_tasks', 'Opportunities', 'opportunities', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('b90808c9-e645-e3cc-07be-65bba47059ff', 'emails_cases_rel', 'Emails', 'emails', 'id', 'Cases', 'cases', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Cases', 0, 0),
('b9950aff-275e-6785-f562-65bba4bedf30', 'jjwg_areas_modified_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ba4b0bbb-dfa9-a9e8-b372-65bba48c7583', 'opportunity_notes', 'Opportunities', 'opportunities', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('bbd5ab75-0846-e4bd-57b8-65bba46b2334', 'saved_search_assigned_user', 'Users', 'users', 'id', 'SavedSearch', 'saved_search', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bcd6ee95-72c6-f566-cd7d-65bba458369f', 'aow_processed_modified_user', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bce70c31-a0c0-d11f-da55-65bba4a6da9c', 'emails_opportunities_rel', 'Emails', 'emails', 'id', 'Opportunities', 'opportunities', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Opportunities', 0, 0),
('bceb0faa-ba74-d233-f801-65bba4404c4b', 'opportunity_emails', 'Opportunities', 'opportunities', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('bd21b315-b858-c643-5711-65bba4ecbb94', 'aow_processed_created_by', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bd23ed0c-9b87-f7e5-e7cc-65bba401a56c', 'surveyquestions_modified_user', 'Users', 'users', 'id', 'SurveyQuestions', 'surveyquestions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bd6cc5c7-cc70-cf20-75fa-65bba4c5a4a9', 'surveyquestions_created_by', 'Users', 'users', 'id', 'SurveyQuestions', 'surveyquestions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bd9c0508-8ec3-3ad8-72f0-65bba459f900', 'jjwg_areas_created_by', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bd9fdc7e-09ae-9301-70bf-65bba4d52bfd', 'surveyquestions_assigned_user', 'Users', 'users', 'id', 'SurveyQuestions', 'surveyquestions', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bdce404c-a69f-ccff-5305-65bba4fa7c49', 'securitygroups_surveyquestions', 'SecurityGroups', 'securitygroups', 'id', 'SurveyQuestions', 'surveyquestions', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyQuestions', 0, 0),
('be002c34-d02e-5f5e-bfbc-65bba43065ac', 'surveyquestions_surveyquestionoptions', 'SurveyQuestions', 'surveyquestions', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'survey_question_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('be2cc2fa-2c30-03ba-2736-65bba49ff335', 'surveyquestions_surveyquestionresponses', 'SurveyQuestions', 'surveyquestions', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'surveyquestion_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bf4d01b1-c1ca-bbb4-3828-65bba42a535a', 'opportunity_leads', 'Opportunities', 'opportunities', 'id', 'Leads', 'leads', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bfd502c8-9342-ec35-f221-65bba4f7cd94', 'emails_tasks_rel', 'Emails', 'emails', 'id', 'Tasks', 'tasks', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Tasks', 0, 0),
('c1133fda-0af7-d658-3daa-65bba434c005', 'aop_case_updates_modified_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c13706a1-e8a0-e54c-3d36-65bba47a720b', 'jjwg_areas_assigned_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c15df551-afa6-c6f6-2c9f-65bba4894284', 'aop_case_updates_created_by', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c1909793-cabe-24e0-7fce-65bba4993660', 'aop_case_updates_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c1bbbc47-19c6-c3a5-bf85-65bba4514bb0', 'cases_aop_case_updates', 'Cases', 'cases', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c1c202cc-6702-df2e-c1ff-65bba439dc6a', 'opportunity_currencies', 'Opportunities', 'opportunities', 'currency_id', 'Currencies', 'currencies', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c1ed837f-3020-3d75-3b63-65bba4d481ba', 'aop_case_updates_notes', 'AOP_Case_Updates', 'aop_case_updates', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOP_Case_Updates', 0, 0),
('c2a605ad-ad09-b533-381c-65bba4df1270', 'emails_users_rel', 'Emails', 'emails', 'id', 'Users', 'users', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('c43a07d3-07f0-512f-473c-65bba4280e4c', 'securitygroups_jjwg_areas', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Areas', 'jjwg_areas', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Areas', 0, 0),
('c5c20b91-442c-fac5-bdab-65bba4870899', 'opportunities_campaign', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c7c00000-fe14-9cc6-0008-65bba4890b0b', 'schedulers_created_by_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('c829f146-fb4d-4b4d-30ed-65bba4c879fd', 'schedulers_modified_user_id_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c8500836-cecb-ef5c-9a8a-65bba457253c', 'opportunity_aos_quotes', 'Opportunities', 'opportunities', 'id', 'AOS_Quotes', 'aos_quotes', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c87e3db9-e49d-561b-3e75-65bba48d5201', 'schedulers_jobs_rel', 'Schedulers', 'schedulers', 'id', 'SchedulersJobs', 'job_queue', 'scheduler_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c8f20249-c2dd-c635-51dd-65bba4e5240f', 'emails_project_task_rel', 'Emails', 'emails', 'id', 'ProjectTask', 'project_task', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'ProjectTask', 0, 0),
('c9253d59-6580-5690-6cf9-65bba4c2caf6', 'schedulersjobs_assigned_user', 'Users', 'users', 'id', 'SchedulersJobs', 'job_queue', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cb5ac99d-aa23-53b6-f2b1-65bba464672b', 'surveyquestionoptions_modified_user', 'Users', 'users', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cb7c015f-b07c-51dd-1f5d-65bba44b1085', 'opportunity_aos_contracts', 'Opportunities', 'opportunities', 'id', 'AOS_Contracts', 'aos_contracts', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cbbd016e-69c5-385d-7d43-65bba4241297', 'surveyquestionoptions_created_by', 'Users', 'users', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cbd88ae7-7ec9-6b02-2f1b-65bba4addab4', 'spots_modified_user', 'Users', 'users', 'id', 'Spots', 'spots', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cc0f5f2c-4207-d9c0-5ad0-65bba4927398', 'surveyquestionoptions_assigned_user', 'Users', 'users', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cc3f2d29-2bb8-9b27-7caf-65bba44eeaf7', 'aow_conditions_modified_user', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cc45a57c-4f00-19f4-1ee0-65bba4ba0272', 'spots_created_by', 'Users', 'users', 'id', 'Spots', 'spots', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cc59cde9-620f-8608-d627-65bba473a47a', 'securitygroups_surveyquestionoptions', 'SecurityGroups', 'securitygroups', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyQuestionOptions', 0, 0),
('ccb241a1-c2ea-5446-a189-65bba432e755', 'aow_conditions_created_by', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ccccaac1-d7f9-6e78-5d13-65bba4f412b8', 'spots_assigned_user', 'Users', 'users', 'id', 'Spots', 'spots', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cd420417-c7de-3cbe-e7c1-65bba419e4ef', 'securitygroups_spots', 'SecurityGroups', 'securitygroups', 'id', 'Spots', 'spots', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Spots', 0, 0),
('ce630467-2e26-d103-dc36-65bba4984b09', 'emails_projects_rel', 'Emails', 'emails', 'id', 'Project', 'project', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Project', 0, 0),
('d24805c9-5b6f-90ff-1768-65bba41bc6f7', 'emails_prospects_rel', 'Emails', 'emails', 'id', 'Prospects', 'prospects', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('d251009c-a8b4-a424-0fb9-65bba4a51fdc', 'contacts_modified_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d2ba8110-82ac-1b33-55fa-65bba4b32b26', 'contacts_created_by', 'Users', 'users', 'id', 'Contacts', 'contacts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d32ed53f-8942-e45f-5d73-65bba40c421c', 'contacts_assigned_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d37d61da-be05-9c07-90d3-65bba4e6d19d', 'securitygroups_contacts', 'SecurityGroups', 'securitygroups', 'id', 'Contacts', 'contacts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Contacts', 0, 0),
('d37d837f-b9fe-df3a-4a44-65bba4c1c3b5', 'aor_reports_modified_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d3bf1274-baff-b285-ecec-65bba45776c5', 'contacts_email_addresses', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('d3c37973-1939-16a1-9682-65bba43eddea', 'aor_reports_created_by', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d3f98f36-a766-90c3-aa48-65bba43dddb7', 'aor_reports_assigned_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d400cf89-df0b-8ce1-55db-65bba4bf9577', 'contacts_email_addresses_primary', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('d43b7e49-bccb-0f58-c7b1-65bba4151709', 'contact_direct_reports', 'Contacts', 'contacts', 'id', 'Contacts', 'contacts', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d45445d1-7448-4f28-3b99-65bba40873a7', 'securitygroups_aor_reports', 'SecurityGroups', 'securitygroups', 'id', 'AOR_Reports', 'aor_reports', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOR_Reports', 0, 0),
('d4724b07-df86-e48d-d988-65bba4d113ff', 'contact_leads', 'Contacts', 'contacts', 'id', 'Leads', 'leads', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d4bdce74-dd4a-3f09-cf14-65bba496452d', 'contact_notes', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d4cae315-ccf0-a223-5825-65bba46e2c74', 'aor_reports_aor_fields', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Fields', 'aor_fields', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d5136252-31a7-9f32-80b7-65bba4d0a27a', 'contact_tasks', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d5174d02-8426-0f29-e436-65bba463c647', 'aor_reports_aor_conditions', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Conditions', 'aor_conditions', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d54cf4db-3426-4600-9dc5-65bba4be0a0c', 'aor_scheduled_reports_aor_reports', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d58961b7-1353-e1a3-f3df-65bba4468ef7', 'contact_tasks_parent', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('d5ca0c44-ed89-dd30-3765-65bba496acbe', 'meetings_contacts', 'Meetings', 'meetings', 'id', 'Contacts', 'contacts', 'id', 'meetings_contacts', 'meeting_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('d5d0ef79-2901-f479-8bbf-65bba46bcf5c', 'contact_notes_parent', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('d6156b93-aa55-1b89-da7e-65bba420ee0a', 'contact_campaign_log', 'Contacts', 'contacts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Contacts', 0, 0),
('d659293e-050d-d4fd-c164-65bba46aadd3', 'contact_aos_quotes', 'Contacts', 'contacts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d69cad12-d12d-6b0b-add4-65bba4a61df3', 'contact_aos_invoices', 'Contacts', 'contacts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d6e15228-2e57-09b2-9ea2-65bba48ee1f1', 'contact_aos_contracts', 'Contacts', 'contacts', 'id', 'AOS_Contracts', 'aos_contracts', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d724d934-a838-cdaa-837c-65bba49b5efc', 'contacts_aop_case_updates', 'Contacts', 'contacts', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d7417b55-f968-8649-478f-65bba4d04646', 'aobh_businesshours_modified_user', 'Users', 'users', 'id', 'AOBH_BusinessHours', 'aobh_businesshours', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d78d4f70-72f3-f645-2b1f-65bba466c83d', 'aobh_businesshours_created_by', 'Users', 'users', 'id', 'AOBH_BusinessHours', 'aobh_businesshours', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d95207e8-7278-1a34-4221-65bba4274630', 'meetings_users', 'Meetings', 'meetings', 'id', 'Users', 'users', 'id', 'meetings_users', 'meeting_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('da17c8d4-2320-683c-60de-65bba44c95bb', 'ssi_holiday_modified_user', 'Users', 'users', 'id', 'SSI_Holiday', 'ssi_holiday', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('da52d07a-a1be-6148-f42c-65bba4d20a92', 'ssi_holiday_created_by', 'Users', 'users', 'id', 'SSI_Holiday', 'ssi_holiday', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('da8e0afc-ae43-3551-1d80-65bba4b9da01', 'ssi_holiday_assigned_user', 'Users', 'users', 'id', 'SSI_Holiday', 'ssi_holiday', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dac9e138-e08f-251c-b4dd-65bba4ec6bee', 'securitygroups_ssi_holiday', 'SecurityGroups', 'securitygroups', 'id', 'SSI_Holiday', 'ssi_holiday', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SSI_Holiday', 0, 0),
('dcc20e34-0d70-a367-a8db-65bba4367353', 'meetings_leads', 'Meetings', 'meetings', 'id', 'Leads', 'leads', 'id', 'meetings_leads', 'meeting_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('dd86ee9d-fbf9-2406-8e2e-65bba4a46386', 'jjwg_maps_modified_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ddc821d7-fa0e-1f18-9487-65bba4242543', 'jjwg_maps_created_by', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('de026734-b31c-9836-09d6-65bba4dc7f27', 'jjwg_maps_assigned_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('de375b44-805b-c83c-cfaa-65bba4411a4d', 'securitygroups_jjwg_maps', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Maps', 'jjwg_maps', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Maps', 0, 0),
('de6d99ea-8212-af23-b5d0-65bba4752bf7', 'jjwg_Maps_accounts', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Accounts', 'accounts', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('dea7455b-2777-1ca4-1392-65bba43d5cc5', 'jjwg_Maps_contacts', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('ded984f0-f963-f632-2125-65bba4bb4f45', 'jjwg_Maps_leads', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('df0c9c79-4d36-f440-e43c-65bba435ac24', 'jjwg_Maps_opportunities', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('df38adf0-eb96-5d80-5757-65bba4b5e31f', 'jjwg_Maps_cases', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Cases', 'cases', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('df61e783-42b6-e70b-b408-65bba45af076', 'jjwg_Maps_projects', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Project', 'project', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('df7309ba-bf66-4ced-5982-65bba4cf874e', 'opportunities_contacts', 'Opportunities', 'opportunities', 'id', 'Contacts', 'contacts', 'id', 'opportunities_contacts', 'opportunity_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('df8cab1a-993f-53ea-e8d8-65bba450da20', 'jjwg_Maps_meetings', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Meetings', 'meetings', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('dfb7b820-debc-19b7-8be5-65bba4d7aa8b', 'jjwg_Maps_prospects', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Prospects', 'prospects', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('e23605d5-9054-9c2c-4d82-65bba43eb4a8', 'prospect_list_campaigns', 'ProspectLists', 'prospect_lists', 'id', 'Campaigns', 'campaigns', 'id', 'prospect_list_campaigns', 'prospect_list_id', 'campaign_id', 'many-to-many', NULL, NULL, 0, 0),
('e2dc52bd-b63b-15f9-9d2d-65bba4e3e18b', 'aor_fields_modified_user', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e330491e-c505-542b-bdc9-65bba4022c43', 'aor_fields_created_by', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e470ce78-1e0a-4056-2ae5-65bba40729dc', 'sugarfeed_modified_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e4d23932-9a31-c36f-60db-65bba4dd2145', 'sugarfeed_created_by', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e51b6c06-647c-19e3-82b7-65bba469940e', 'sugarfeed_assigned_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e53c0204-9ec6-583b-8798-65bba416a829', 'prospect_list_contacts', 'ProspectLists', 'prospect_lists', 'id', 'Contacts', 'contacts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Contacts', 0, 0),
('e7bf6905-35e0-433b-9915-65bba4875725', 'ssi_leaves_modified_user', 'Users', 'users', 'id', 'SSI_Leaves', 'ssi_leaves', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e810fd05-2739-59df-7f2b-65bba42321cb', 'ssi_leaves_created_by', 'Users', 'users', 'id', 'SSI_Leaves', 'ssi_leaves', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e8622bf4-9870-0827-dd2a-65bba41916f0', 'ssi_leaves_assigned_user', 'Users', 'users', 'id', 'SSI_Leaves', 'ssi_leaves', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e86e081f-a6cf-dc13-2c03-65bba419ba25', 'prospect_list_prospects', 'ProspectLists', 'prospect_lists', 'id', 'Prospects', 'prospects', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Prospects', 0, 0),
('e8c0a882-9380-a3d8-0500-65bba40cc87c', 'securitygroups_ssi_leaves', 'SecurityGroups', 'securitygroups', 'id', 'SSI_Leaves', 'ssi_leaves', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SSI_Leaves', 0, 0),
('eac4f3a2-b2f4-1e79-a801-65bba4b88540', 'accounts_modified_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eb132e1f-ea23-d87a-5544-65bba41af936', 'accounts_created_by', 'Users', 'users', 'id', 'Accounts', 'accounts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eb2a00d9-9651-c6eb-798f-65bba443bb12', 'prospect_list_leads', 'ProspectLists', 'prospect_lists', 'id', 'Leads', 'leads', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Leads', 0, 0),
('eb42a601-0761-e786-0637-65bba4535bca', 'accounts_assigned_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eb6fe0ef-f862-ddb1-c359-65bba456f85b', 'securitygroups_accounts', 'SecurityGroups', 'securitygroups', 'id', 'Accounts', 'accounts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Accounts', 0, 0),
('eb9f6576-8cf8-f021-6b23-65bba43d18f2', 'accounts_email_addresses', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('ebce22e9-8959-b0a1-cc21-65bba4666ecc', 'accounts_email_addresses_primary', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('ebf8f73b-8385-84d3-dee0-65bba416a914', 'member_accounts', 'Accounts', 'accounts', 'id', 'Accounts', 'accounts', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ec072267-85cd-8295-774a-65bba4b5a19c', 'aor_charts_modified_user', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ec265df8-4387-60a8-ab8c-65bba4943c4f', 'account_cases', 'Accounts', 'accounts', 'id', 'Cases', 'cases', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ec53e527-d757-98ad-e815-65bba445515c', 'account_tasks', 'Accounts', 'accounts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('ec5b8e28-45bf-7394-f9e5-65bba4cbe8c0', 'aor_charts_created_by', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ec8220c1-8abf-a5ec-f7be-65bba4ad8ddc', 'account_notes', 'Accounts', 'accounts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('ecaceb57-e142-0ce5-1189-65bba4c1968d', 'account_meetings', 'Accounts', 'accounts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('ecb243cb-fc1a-2dc7-3e34-65bba42f5ee9', 'aor_charts_aor_reports', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Charts', 'aor_charts', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ecd6ab95-4b8e-4e4c-6809-65bba4939824', 'account_calls', 'Accounts', 'accounts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0);
INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('ed1787de-0466-e061-b738-65bba46d809e', 'account_emails', 'Accounts', 'accounts', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('ed708e57-3ad3-8124-8f33-65bba4c7f937', 'account_leads', 'Accounts', 'accounts', 'id', 'Leads', 'leads', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('edbd8b2b-9bc4-7d3c-a330-65bba4ca5026', 'account_campaign_log', 'Accounts', 'accounts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Accounts', 0, 0),
('edf7802f-2bb2-c6b9-05ae-65bba44cc6d4', 'account_aos_quotes', 'Accounts', 'accounts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ee200f0e-914f-0fd6-4707-65bba46c3a5d', 'prospect_list_users', 'ProspectLists', 'prospect_lists', 'id', 'Users', 'users', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Users', 0, 0),
('ee328126-c4b9-998b-0df5-65bba4365e30', 'account_aos_invoices', 'Accounts', 'accounts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ee66e994-6b71-7edc-319d-65bba4990535', 'account_aos_contracts', 'Accounts', 'accounts', 'id', 'AOS_Contracts', 'aos_contracts', 'contract_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ee9a0688-98b0-51eb-06e5-65bba46f31bd', 'oauthkeys_modified_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('efaa7d94-afce-296c-170d-65bba411d78c', 'jjwg_markers_modified_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('efe6b08e-5f56-b334-ebdd-65bba4f3e4db', 'jjwg_markers_created_by', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f021e7fa-9726-5f4e-a772-65bba48ab0bc', 'jjwg_markers_assigned_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f067d560-d97d-e43b-6fbc-65bba41b48a9', 'securitygroups_jjwg_markers', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Markers', 'jjwg_markers', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Markers', 0, 0),
('f0a50fee-01bb-6dcf-bdf9-65bba46aae44', 'prospect_list_accounts', 'ProspectLists', 'prospect_lists', 'id', 'Accounts', 'accounts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Accounts', 0, 0),
('f167f32e-61b9-def5-bf2d-65bba48294a0', 'ssi_salary_slip_modified_user', 'Users', 'users', 'id', 'SSI_Salary_Slip', 'ssi_salary_slip', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f1b93d63-362d-42fd-4f04-65bba4aba477', 'ssi_salary_slip_created_by', 'Users', 'users', 'id', 'SSI_Salary_Slip', 'ssi_salary_slip', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f1f40ab2-430f-ebe1-eb12-65bba4b13e60', 'ssi_salary_slip_assigned_user', 'Users', 'users', 'id', 'SSI_Salary_Slip', 'ssi_salary_slip', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f232314e-d6f6-3e70-aa36-65bba46a8942', 'securitygroups_ssi_salary_slip', 'SecurityGroups', 'securitygroups', 'id', 'SSI_Salary_Slip', 'ssi_salary_slip', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SSI_Salary_Slip', 0, 0),
('f36103c5-718f-7f8f-889c-65bba4d53c85', 'roles_users', 'Roles', 'roles', 'id', 'Users', 'users', 'id', 'roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('f5d00978-caaf-f71a-7af3-65bba41b3557', 'eapm_assigned_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f6a90222-217e-616d-0eb9-65bba4cb1b44', 'projects_bugs', 'Project', 'project', 'id', 'Bugs', 'bugs', 'id', 'projects_bugs', 'project_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('fa2b0d96-5294-5d32-203f-65bba4916201', 'oauthkeys_created_by', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('fa4a051a-a60f-a59d-435c-65bba468bdc8', 'projects_cases', 'Project', 'project', 'id', 'Cases', 'cases', 'id', 'projects_cases', 'project_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('fd8609b5-054d-d21c-3bcd-65bba45f38b2', 'projects_accounts', 'Project', 'project', 'id', 'Accounts', 'accounts', 'id', 'projects_accounts', 'project_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('feb10bdf-321b-2ea3-1f7f-65bba4413509', 'oauthkeys_assigned_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `releases`
--

CREATE TABLE `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `popup` tinyint(1) DEFAULT NULL,
  `email` tinyint(1) DEFAULT NULL,
  `email_sent` tinyint(1) DEFAULT NULL,
  `timer_popup` varchar(32) DEFAULT NULL,
  `timer_email` varchar(32) DEFAULT NULL,
  `related_event_module` varchar(32) DEFAULT NULL,
  `related_event_module_id` char(36) NOT NULL,
  `date_willexecute` int(60) DEFAULT '-1',
  `popup_viewed` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reminders_invitees`
--

CREATE TABLE `reminders_invitees` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reminder_id` char(36) NOT NULL,
  `related_invitee_module` varchar(32) DEFAULT NULL,
  `related_invitee_module_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `modules` text,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles_modules`
--

CREATE TABLE `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles_users`
--

CREATE TABLE `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `saved_search`
--

CREATE TABLE `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `schedulers`
--

CREATE TABLE `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schedulers`
--

INSERT INTO `schedulers` (`id`, `deleted`, `date_entered`, `date_modified`, `created_by`, `modified_user_id`, `name`, `job`, `date_time_start`, `date_time_end`, `job_interval`, `time_from`, `time_to`, `last_run`, `status`, `catch_up`) VALUES
('1403a933-04f7-7780-51ef-6253c8764732', 0, '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '1', 'Prune Database on 1st of Month', 'function::pruneDatabase', '2015-01-01 09:30:01', NULL, '0::4::1::*::*', NULL, NULL, NULL, 'Inactive', 0),
('182a369b-8de0-6fb5-f92b-6253c8765a59', 0, '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '1', 'Perform Lucene Index', 'function::aodIndexUnindexed', '2015-01-01 14:30:01', NULL, '0::0::*::*::*', NULL, NULL, NULL, 'Active', 0),
('20b5d286-e707-54d0-8bf9-6253c8d605a1', 0, '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '1', 'Optimise AOD Index', 'function::aodOptimiseIndex', '2015-01-01 07:15:01', NULL, '0::*/3::*::*::*', NULL, NULL, NULL, 'Active', 0),
('2a7a0eb9-b6e4-8a2f-666c-6253c8c96e2b', 0, '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '1', 'Run Email Reminder Notifications', 'function::sendEmailReminders', '2015-01-01 18:15:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('2edf1b9a-688f-308c-b0dc-6253c8aa7f9d', 0, '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '1', 'Clean Jobs Queue', 'function::cleanJobQueue', '2015-01-01 19:30:01', NULL, '0::5::*::*::*', NULL, NULL, NULL, 'Active', 0),
('3305ac7e-5758-513f-6295-6253c8ae6b06', 0, '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '1', 'Removal of documents from filesystem', 'function::removeDocumentsFromFS', '2015-01-01 13:00:01', NULL, '0::3::1::*::*', NULL, NULL, NULL, 'Active', 0),
('36960dc1-808f-ffe3-65fb-6253c82748e0', 0, '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '1', 'Prune Tracker Tables', 'function::trimTracker', '2015-01-01 15:30:01', NULL, '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('372c32ce-fdd1-bde4-fcd3-6253c8f20695', 0, '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '1', 'Prune SuiteCRM Feed Tables', 'function::trimSugarFeeds', '2015-01-01 19:45:01', NULL, '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('78ff0827-3146-6a81-9294-6253c85a67de', 0, '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '1', 'Check Inbound Mailboxes', 'function::pollMonitoredInboxesAOP', '2015-01-01 15:30:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('bb680c32-eb5f-bb85-8f7d-6253c80af14d', 0, '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '1', 'Run Nightly Process Bounced Campaign Emails', 'function::pollMonitoredInboxesForBouncedCampaignEmails', '2015-01-01 17:45:01', NULL, '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('e6f3324e-7973-7ffb-3467-6253c88818b1', 0, '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '1', 'Process Workflow Tasks', 'function::processAOW_Workflow', '2015-01-01 15:00:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 1),
('ef01ce01-67f3-f1c6-b6d4-6253c837ebf3', 0, '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '1', 'Run Report Generation Scheduled Tasks', 'function::aorRunScheduledReports', '2015-01-01 14:30:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 1),
('fdd00e2f-de15-ddcb-d3c2-6253c84938bd', 0, '2022-04-11 06:15:51', '2022-04-11 06:15:51', '1', '1', 'Run Nightly Mass Email Campaigns', 'function::runMassEmailCampaign', '2015-01-01 13:15:01', NULL, '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1);

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups`
--

CREATE TABLE `securitygroups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_acl_roles`
--

CREATE TABLE `securitygroups_acl_roles` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `role_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_audit`
--

CREATE TABLE `securitygroups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_default`
--

CREATE TABLE `securitygroups_default` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_records`
--

CREATE TABLE `securitygroups_records` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `record_id` char(36) DEFAULT NULL,
  `module` varchar(100) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_users`
--

CREATE TABLE `securitygroups_users` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `securitygroup_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `primary_group` tinyint(1) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spots`
--

CREATE TABLE `spots` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `config` longtext,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ssi_holiday`
--

CREATE TABLE `ssi_holiday` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `year` varchar(100) DEFAULT NULL,
  `holiday_date` date DEFAULT NULL,
  `month` varchar(100) DEFAULT NULL,
  `day` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ssi_holiday`
--

INSERT INTO `ssi_holiday` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `year`, `holiday_date`, `month`, `day`) VALUES
('a2f81ce6-f5ed-97cf-596d-62e12e49bcef', 'INDIA - Independence Day', '2022-07-27 12:25:56', '2022-07-27 12:25:56', '1', '1', NULL, 0, NULL, '2022', '2022-08-15', '8', '1');

-- --------------------------------------------------------

--
-- Table structure for table `ssi_holiday_audit`
--

CREATE TABLE `ssi_holiday_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ssi_leaves`
--

CREATE TABLE `ssi_leaves` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `contact_id_c` char(36) DEFAULT NULL,
  `leave_date` date DEFAULT NULL,
  `type` varchar(100) DEFAULT 'Half',
  `category` varchar(100) DEFAULT 'Paid',
  `status` varchar(100) DEFAULT 'Pending',
  `month` varchar(100) DEFAULT NULL,
  `year` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ssi_leaves_audit`
--

CREATE TABLE `ssi_leaves_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ssi_salary_slip`
--

CREATE TABLE `ssi_salary_slip` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `sal_basic` decimal(8,2) DEFAULT NULL,
  `sal_hra` decimal(8,2) DEFAULT NULL,
  `sal_conv` decimal(8,2) DEFAULT NULL,
  `sal_trans` decimal(8,2) DEFAULT NULL,
  `sal_special` decimal(8,2) DEFAULT NULL,
  `sal_medical` decimal(8,2) DEFAULT NULL,
  `ded_pf` decimal(8,2) DEFAULT NULL,
  `ded_esi` decimal(8,2) DEFAULT NULL,
  `ded_loan` decimal(8,2) DEFAULT NULL,
  `ded_professional_tax` decimal(8,2) DEFAULT NULL,
  `ded_tds` decimal(8,2) DEFAULT NULL,
  `month_year` varchar(50) DEFAULT NULL,
  `sal_gross_earning` decimal(8,2) DEFAULT NULL,
  `sal_gross_deduction` decimal(8,2) DEFAULT NULL,
  `sal_net_amount` decimal(8,2) DEFAULT NULL,
  `net_amount_in_words` varchar(255) DEFAULT NULL,
  `days_worked` decimal(5,2) DEFAULT NULL,
  `working_days` decimal(5,2) DEFAULT NULL,
  `month` varchar(100) DEFAULT NULL,
  `year` varchar(100) DEFAULT '2023',
  `financial_year` varchar(10) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `is_generated` tinyint(1) DEFAULT '0',
  `status` varchar(20) DEFAULT 'Pending',
  `action` varchar(10) DEFAULT NULL,
  `trans_ref_no` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ssi_salary_slip`
--

INSERT INTO `ssi_salary_slip` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `sal_basic`, `sal_hra`, `sal_conv`, `sal_trans`, `sal_special`, `sal_medical`, `ded_pf`, `ded_esi`, `ded_loan`, `ded_professional_tax`, `ded_tds`, `month_year`, `sal_gross_earning`, `sal_gross_deduction`, `sal_net_amount`, `net_amount_in_words`, `days_worked`, `working_days`, `month`, `year`, `financial_year`, `payment_date`, `is_generated`, `status`, `action`, `trans_ref_no`) VALUES
('177933ab-4ad4-a0d2-1f94-62d819012a80', 'Pooja Chavda Salary Slip of May 2022', '2022-07-20 15:05:21', '2022-07-20 15:06:00', '1', '1', NULL, 0, '', '12950.00', '4050.00', '2800.00', '2400.00', '6750.00', '1250.00', '0.00', '0.00', NULL, '200.00', '0.00', '5_2022', '30200.00', '200.00', '30000.00', 'Thirty  Thousands Rupees  Only', '22.00', '22.00', '5', '2022', NULL, '2022-06-01', 1, 'Generated', NULL, NULL),
('186c19ec-0e3b-ab32-1518-62d8193d6b6e', 'Bhargavi Patel Salary Slip of May 2022', '2022-07-20 15:05:21', '2022-07-20 15:19:41', '1', '1', NULL, 1, '', '16600.00', '6450.00', '4000.00', '2400.00', '11200.00', '1250.00', '0.00', '0.00', NULL, '200.00', '0.00', '5_2022', '41900.00', '200.00', '41700.00', 'Forty One Thousands Seven Hundred Rupees  Only', '22.00', '22.00', '5', '2022', NULL, '2022-06-01', 1, 'Generated', NULL, NULL),
('1983f098-425d-e6e6-3600-62d81d0ce201', 'Bhargavi Patel Salary Slip of Apr 2022', '2022-07-20 15:20:21', '2024-01-22 10:42:15', '1', '1', NULL, 0, '', '16800.00', '6450.00', '4000.00', '2400.00', '11200.00', '1250.00', '0.00', '0.00', NULL, '200.00', '0.00', '4_2022', '42100.00', '200.00', '41900.00', 'Forty One Thousands Nine Hundred Rupees  Only', '21.00', '21.00', '4', '2022', NULL, '2022-04-30', 1, 'Generated', 'Save', NULL),
('1f244959-dfa3-b5a0-2721-62d81c764cca', 'Atir Sakhrelia Salary Slip of June 2022', '2022-07-20 15:16:17', '2022-07-20 15:16:46', '1', '1', NULL, 0, '', '18600.00', '7050.00', '4100.00', '2400.00', '11800.00', '1250.00', '0.00', '0.00', NULL, '200.00', '0.00', '6_2022', '45200.00', '200.00', '45000.00', 'Forty Five Thousands Rupees  Only', '22.00', '22.00', '6', '2022', NULL, '2022-07-07', 1, 'Generated', NULL, NULL),
('24715ed6-77cd-8854-6e3e-62d81cbe784a', 'Arati Barvadiya Salary Slip of June 2022', '2022-07-20 15:15:37', '2022-07-20 15:16:58', '1', '1', NULL, 0, '', '4800.00', '1500.00', '800.00', '1250.00', '600.00', '1250.00', '0.00', '0.00', NULL, '200.00', '0.00', '6_2022', '10200.00', '200.00', '10000.00', 'Ten Thousands Rupees  Only', '22.00', '22.00', '6', '2022', NULL, '2022-07-01', 1, 'Generated', NULL, NULL),
('27de6a9e-5eaf-55a1-2c72-65aa7e34c771', 'Ruchita Nakrani Salary Slip of Dec 2023', '2024-01-19 13:50:58', '2024-01-19 13:51:05', '1', '1', NULL, 0, '', '18000.00', '7200.00', '3600.00', '1600.00', '8350.00', '1250.00', '0.00', '0.00', NULL, '200.00', '0.00', '12_2023', '40000.00', '200.00', '39800.00', 'Thirty Nine Thousands Eight Hundred Rupees  Only', '21.00', '21.00', '12', '2023', NULL, '2024-01-01', 1, 'Generated', NULL, NULL),
('2d9004bb-cdab-6459-ca39-62d81cb7fcb3', 'Kaushal Mehta Salary Slip of June 2022', '2022-07-20 15:16:17', '2022-07-20 15:16:48', '1', '1', NULL, 0, '', '12950.00', '4050.00', '2800.00', '2400.00', '6750.00', '1250.00', '0.00', '0.00', NULL, '200.00', '0.00', '6_2022', '30200.00', '200.00', '30000.00', 'Thirty  Thousands Rupees  Only', '22.00', '22.00', '6', '2022', NULL, '2022-07-07', 1, 'Generated', NULL, NULL),
('348cdf7d-573d-85b2-63d5-65aa7e851375', 'Pooja Chavda Salary Slip of Dec 2023', '2024-01-19 13:50:58', '2024-01-19 13:50:58', '1', '1', NULL, 0, NULL, '12950.00', '4050.00', '2800.00', '2400.00', '6750.00', '1250.00', '0.00', '0.00', NULL, '200.00', '0.00', '12_2023', '30200.00', '200.00', '30000.00', 'Thirty  Thousands Rupees  Only', '21.00', '21.00', '12', '2023', NULL, '2024-01-01', 0, 'Pending', '', ''),
('35080a6e-4a3e-6d0d-72ab-62d81cacc93a', 'Brinda Patel Salary Slip of June 2022', '2022-07-20 15:15:37', '2022-07-20 15:17:01', '1', '1', NULL, 0, '', '8700.00', '2700.00', '1800.00', '1250.00', '4500.00', '1250.00', '0.00', '0.00', NULL, '200.00', '0.00', '6_2022', '20200.00', '200.00', '20000.00', 'Twenty Thousands Rupees  Only', '22.00', '22.00', '6', '2022', NULL, '2022-07-01', 1, 'Generated', NULL, NULL),
('3cec7380-576b-5b9d-7db6-62d8183aa732', 'Pooja Chavda Salary Slip of Apr 2022', '2022-07-20 15:01:25', '2022-07-20 15:02:24', '1', '1', NULL, 0, '', '12950.00', '4050.00', '2800.00', '2400.00', '6750.00', '1250.00', '0.00', '0.00', NULL, '200.00', '0.00', '4_2022', '30200.00', '200.00', '30000.00', 'Thirty  Thousands Rupees  Only', '21.00', '21.00', '4', '2022', NULL, '2022-04-30', 1, 'Generated', NULL, NULL),
('46f092f1-e962-a084-9fc8-65aa7e691ac9', 'Bhargavi Patel Salary Slip of Dec 2023', '2024-01-19 13:50:58', '2024-01-22 11:00:43', '1', '1', NULL, 0, '', '16800.00', '6450.00', '4000.00', '2400.00', '11200.00', '1250.00', '0.00', '0.00', NULL, '200.00', '0.00', '12_2023', '42100.00', '200.00', '41900.00', 'Forty One Thousands Nine Hundred Rupees  Only', '21.00', '21.00', '12', '2023', NULL, '2024-01-01', 1, 'Generated', NULL, NULL),
('564d4ff9-ffb1-26d2-49be-62d8189aaa2e', 'Atir Sakhrelia Salary Slip of Apr 2022', '2022-07-20 15:01:25', '2022-07-20 15:03:18', '1', '1', NULL, 0, '', '18600.00', '7050.00', '4100.00', '2400.00', '11800.00', '1250.00', '0.00', '0.00', NULL, '200.00', '0.00', '4_2022', '45200.00', '200.00', '45000.00', 'Forty Five Thousands Rupees  Only', '21.00', '21.00', '4', '2022', NULL, '2022-04-30', 1, 'Generated', NULL, NULL),
('5c9709bc-56aa-3c84-f1db-632167a72b71', 'Ruchita Nakrani Salary Slip of Aug 2022', '2022-09-14 05:33:27', '2022-09-14 05:40:10', '1', '1', NULL, 0, '', '18000.00', '7200.00', '3600.00', '1600.00', '8350.00', '1250.00', '0.00', '0.00', NULL, '200.00', '0.00', '8_2022', '40000.00', '200.00', '39800.00', 'Thirty Nine Thousands Eight Hundred Rupees  Only', '22.00', '22.00', '8', '2022', NULL, '2022-09-01', 1, 'Email_Sent', NULL, NULL),
('63e14008-7a0f-22da-bc1b-62d819cca1d9', 'Krunal Mehta Salary Slip of May 2022', '2022-07-20 15:05:21', '2022-07-26 12:11:14', '1', '1', NULL, 0, '', '12950.00', '4050.00', '2800.00', '2400.00', '6750.00', '1250.00', '0.00', '0.00', NULL, '200.00', '0.00', '5_2022', '30200.00', '200.00', '30000.00', 'Thirty  Thousands Rupees  Only', '22.00', '22.00', '5', '2022', NULL, '2022-06-01', 1, 'Email_Sent', NULL, NULL),
('6d6a82e7-f22c-0369-036a-62d819646026', 'Arati Barvadiya Salary Slip of May 2022', '2022-07-20 15:05:21', '2022-07-20 15:06:09', '1', '1', NULL, 0, '', '4800.00', '1500.00', '800.00', '1250.00', '600.00', '1250.00', '0.00', '0.00', NULL, '200.00', '0.00', '5_2022', '10200.00', '200.00', '10000.00', 'Ten Thousands Rupees  Only', '22.00', '22.00', '5', '2022', NULL, '2022-06-01', 1, 'Generated', NULL, NULL),
('86a05ff4-aa7d-96cd-efb1-65aa7ea9d42f', 'Arati Barvadiya Salary Slip of Dec 2023', '2024-01-19 13:50:58', '2024-01-19 13:50:58', '1', '1', NULL, 0, NULL, '4800.00', '1500.00', '800.00', '1250.00', '600.00', '1250.00', '0.00', '0.00', NULL, '200.00', '0.00', '12_2023', '10200.00', '200.00', '10000.00', 'Ten Thousands Rupees  Only', '21.00', '21.00', '12', '2023', NULL, '2024-01-01', 0, 'Pending', '', ''),
('885e1c21-2479-3dc3-9c20-62d8187a9550', 'Arati Barvadiya Salary Slip of Apr 2022', '2022-07-20 15:01:25', '2022-07-20 15:03:21', '1', '1', NULL, 0, '', '4800.00', '1500.00', '800.00', '1250.00', '600.00', '1250.00', '0.00', '0.00', NULL, '200.00', '0.00', '4_2022', '10200.00', '200.00', '10000.00', 'Ten Thousands Rupees  Only', '21.00', '21.00', '4', '2022', NULL, '2022-04-30', 1, 'Generated', NULL, NULL),
('8f7ca795-f949-8d5a-76db-65aa7e704653', 'Atir Sakhrelia Salary Slip of Dec 2023', '2024-01-19 13:50:58', '2024-01-19 13:50:58', '1', '1', NULL, 0, NULL, '18600.00', '7050.00', '4100.00', '2400.00', '11800.00', '1250.00', '0.00', '0.00', NULL, '200.00', '0.00', '12_2023', '45200.00', '200.00', '45000.00', 'Forty Five Thousands Rupees  Only', '21.00', '21.00', '12', '2023', NULL, '2024-01-01', 0, 'Pending', '', ''),
('9a2d48c1-9b94-e2a9-8618-62d818c1835b', 'Krunal Mehta Salary Slip of Apr 2022', '2022-07-20 15:01:25', '2022-07-26 12:09:51', '1', '1', NULL, 0, '', '12950.00', '4050.00', '2800.00', '2400.00', '6750.00', '1250.00', '0.00', '0.00', NULL, '200.00', '0.00', '4_2022', '30200.00', '200.00', '30000.00', 'Thirty  Thousands Rupees  Only', '21.00', '21.00', '4', '2022', NULL, '2022-04-30', 1, 'Email_Sent', NULL, NULL),
('9c8d8ccf-88b7-2eb5-4f1f-62d81c2af857', 'Bhargavi Patel Salary Slip of June 2022', '2022-07-20 15:15:37', '2022-07-20 15:17:05', '1', '1', NULL, 0, '', '20200.00', '8000.00', '8150.00', '2400.00', '14000.00', '1250.00', '0.00', '0.00', NULL, '200.00', '0.00', '6_2022', '54000.00', '200.00', '53800.00', 'Fifty Three Thousands Eight Hundred Rupees  Only', '22.00', '22.00', '6', '2022', NULL, '2022-07-01', 1, 'Generated', NULL, NULL),
('b509ef21-f107-18a1-5ec6-62d81cc39a83', 'Krunal Mehta Salary Slip of June 2022', '2022-07-20 15:16:17', '2022-07-20 15:16:52', '1', '1', NULL, 0, '', '14500.00', '5050.00', '4000.00', '2400.00', '8000.00', '1250.00', '0.00', '0.00', NULL, '200.00', '0.00', '6_2022', '35200.00', '200.00', '35000.00', 'Thirty Five Thousands Rupees  Only', '22.00', '22.00', '6', '2022', NULL, '2022-07-07', 1, 'Generated', NULL, NULL),
('b5cf1054-09ff-7fb3-6127-62d7fbe11370', 'Bhargavi Patel Salary Slip of Apr 2022', '2022-07-20 12:58:30', '2022-07-20 15:19:47', '1', '1', NULL, 1, '', '16600.00', '6450.00', '4000.00', '2400.00', '11200.00', '1250.00', '0.00', '0.00', NULL, '200.00', '0.00', '4_2022', '41900.00', '200.00', '41700.00', 'Forty One Thousands Seven Hundred Rupees  Only', '21.00', '21.00', '4', '2022', NULL, '2022-04-30', 1, 'Email_Sent', NULL, 'CTS1581997'),
('b7618445-9a67-21e9-254c-62d8198954c9', 'Brinda Patel Salary Slip of May 2022', '2022-07-20 15:05:21', '2022-07-20 15:06:14', '1', '1', NULL, 0, '', '8700.00', '2700.00', '1800.00', '1250.00', '4500.00', '1250.00', '0.00', '0.00', NULL, '200.00', '0.00', '5_2022', '20200.00', '200.00', '20000.00', 'Twenty Thousands Rupees  Only', '22.00', '22.00', '5', '2022', NULL, '2022-06-01', 1, 'Generated', NULL, NULL),
('c5cccb33-b6d8-9c61-1cbf-62d819b936eb', 'Kaushal Mehta Salary Slip of May 2022', '2022-07-20 15:05:21', '2022-07-20 15:06:17', '1', '1', NULL, 0, '', '12950.00', '4050.00', '2800.00', '2400.00', '6750.00', '1250.00', '0.00', '0.00', NULL, '200.00', '0.00', '5_2022', '30200.00', '200.00', '30000.00', 'Thirty  Thousands Rupees  Only', '22.00', '22.00', '5', '2022', NULL, '2022-06-01', 1, 'Generated', NULL, NULL),
('c85adcaf-61c9-1c17-ce6f-62d81c9512b6', 'Pooja Chavda Salary Slip of June 2022', '2022-07-20 15:16:17', '2022-07-20 15:16:55', '1', '1', NULL, 0, '', '12950.00', '4050.00', '2800.00', '2400.00', '6750.00', '1250.00', '0.00', '0.00', NULL, '200.00', '0.00', '6_2022', '30200.00', '200.00', '30000.00', 'Thirty  Thousands Rupees  Only', '22.00', '22.00', '6', '2022', NULL, '2022-07-07', 1, 'Generated', NULL, NULL),
('d251f3e3-7723-b92d-964b-62d81d0dd43d', 'Bhargavi Patel Salary Slip of May 2022', '2022-07-20 15:21:13', '2022-07-20 15:21:31', '1', '1', NULL, 0, '', '16800.00', '6450.00', '4000.00', '2400.00', '11200.00', '1250.00', '0.00', '0.00', NULL, '200.00', '0.00', '5_2022', '42100.00', '200.00', '41900.00', 'Forty One Thousands Nine Hundred Rupees  Only', '22.00', '22.00', '5', '2022', NULL, '2022-06-01', 1, 'Generated', NULL, NULL),
('d6fc3424-acbd-a32c-6627-62d818fb00a8', 'Kaushal Mehta Salary Slip of Apr 2022', '2022-07-20 15:01:25', '2022-07-20 15:03:28', '1', '1', NULL, 0, '', '12950.00', '4050.00', '2800.00', '2400.00', '6750.00', '1250.00', '0.00', '0.00', NULL, '200.00', '0.00', '4_2022', '30200.00', '200.00', '30000.00', 'Thirty  Thousands Rupees  Only', '21.00', '21.00', '4', '2022', NULL, '2022-04-30', 1, 'Generated', NULL, NULL),
('da8c5fb8-d268-7679-b3d0-65aa7eabff65', 'Brinda Patel Salary Slip of Dec 2023', '2024-01-19 13:50:58', '2024-01-19 13:50:58', '1', '1', NULL, 0, NULL, '8700.00', '2700.00', '1800.00', '1250.00', '4500.00', '1250.00', '0.00', '0.00', NULL, '200.00', '0.00', '12_2023', '20200.00', '200.00', '20000.00', 'Twenty Thousands Rupees  Only', '21.00', '21.00', '12', '2023', NULL, '2024-01-01', 0, 'Pending', '', ''),
('dcdbf575-d96e-b4a3-60c1-65aa7e3510da', 'Kaushal Mehta Salary Slip of Dec 2023', '2024-01-19 13:50:58', '2024-01-19 13:50:58', '1', '1', NULL, 0, NULL, '12950.00', '4050.00', '2800.00', '2400.00', '6750.00', '1250.00', '0.00', '0.00', NULL, '200.00', '0.00', '12_2023', '30200.00', '200.00', '30000.00', 'Thirty  Thousands Rupees  Only', '21.00', '21.00', '12', '2023', NULL, '2024-01-01', 0, 'Pending', '', ''),
('e2e8029d-97de-2b12-7078-62d819d16713', 'Atir Sakhrelia Salary Slip of May 2022', '2022-07-20 15:05:21', '2022-07-20 15:06:22', '1', '1', NULL, 0, '', '18600.00', '7050.00', '4100.00', '2400.00', '11800.00', '1250.00', '0.00', '0.00', NULL, '200.00', '0.00', '5_2022', '45200.00', '200.00', '45000.00', 'Forty Five Thousands Rupees  Only', '22.00', '22.00', '5', '2022', NULL, '2022-06-01', 1, 'Generated', NULL, NULL),
('e4e35a5d-81ab-4bca-49ed-62d81810d336', 'Brinda Patel Salary Slip of Apr 2022', '2022-07-20 15:01:25', '2022-07-20 15:03:31', '1', '1', NULL, 0, '', '8700.00', '2700.00', '1800.00', '1250.00', '4500.00', '1250.00', '0.00', '0.00', NULL, '200.00', '0.00', '4_2022', '20200.00', '200.00', '20000.00', 'Twenty Thousands Rupees  Only', '21.00', '21.00', '4', '2022', NULL, '2022-04-30', 1, 'Generated', NULL, NULL),
('f091c166-3cd8-21ed-ac7e-65aa7e49dbb8', 'Krunal Mehta Salary Slip of Dec 2023', '2024-01-19 13:50:58', '2024-01-19 13:51:11', '1', '1', NULL, 0, '', '14500.00', '5050.00', '4000.00', '2400.00', '8000.00', '1250.00', '0.00', '0.00', NULL, '200.00', '0.00', '12_2023', '35200.00', '200.00', '35000.00', 'Thirty Five Thousands Rupees  Only', '21.00', '21.00', '12', '2023', NULL, '2024-01-01', 1, 'Generated', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ssi_salary_slip_audit`
--

CREATE TABLE `ssi_salary_slip_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ssi_salary_slip_audit`
--

INSERT INTO `ssi_salary_slip_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES
('10a8a702-9827-2669-d0db-62d8196226fe', 'c5cccb33-b6d8-9c61-1cbf-62d819b936eb', '2022-07-20 15:06:17', '1', 'is_generated', 'bool', '0', '1', NULL, NULL),
('12ef0053-290f-81b4-ed73-62d7fc78ef51', 'b5cf1054-09ff-7fb3-6127-62d7fbe11370', '2022-07-20 12:58:50', '1', 'is_generated', 'bool', '0', '1', NULL, NULL),
('27879431-65df-dc35-e3d7-62d819c796cb', '3cec7380-576b-5b9d-7db6-62d8183aa732', '2022-07-20 15:02:24', '1', 'is_generated', 'bool', '0', '1', NULL, NULL),
('2cb923f8-f589-c602-3351-65a8ce11ea91', '6644db3d-dc19-8329-a2ea-65a8ce19d179', '2024-01-18 07:07:25', '1', 'is_generated', 'bool', '0', '1', NULL, NULL),
('302a73e4-267c-f738-c5a0-65aa7e6301e8', 'f091c166-3cd8-21ed-ac7e-65aa7e49dbb8', '2024-01-19 13:51:11', '1', 'is_generated', 'bool', '0', '1', NULL, NULL),
('404bc4d2-48c8-d971-4cb2-65ae4a254077', '46f092f1-e962-a084-9fc8-65aa7e691ac9', '2024-01-22 11:00:43', '1', 'is_generated', 'bool', '0', '1', NULL, NULL),
('44a5cd65-b957-9a1f-5770-62d819356e58', '885e1c21-2479-3dc3-9c20-62d8187a9550', '2022-07-20 15:03:21', '1', 'is_generated', 'bool', '0', '1', NULL, NULL),
('490e6c76-29e4-935e-8376-62d81d31de2c', '1983f098-425d-e6e6-3600-62d81d0ce201', '2022-07-20 15:20:51', '1', 'is_generated', 'bool', '0', '1', NULL, NULL),
('5c3c5932-a0f2-5983-61b7-62d7f6b6c331', 'bce2aa16-d3f7-4988-0aba-62d7f699f211', '2022-07-20 12:36:40', '1', 'is_generated', 'bool', '0', '1', NULL, NULL),
('75ea795c-9d72-9bd6-d573-65a8ce6aa728', '474ccd4a-4100-2531-0766-65a8cec5f290', '2024-01-18 07:07:12', '1', 'is_generated', 'bool', '0', '1', NULL, NULL),
('760236cf-cb86-4f8d-919d-62d8196be7bd', '9a2d48c1-9b94-e2a9-8618-62d818c1835b', '2022-07-20 15:03:24', '1', 'is_generated', 'bool', '0', '1', NULL, NULL),
('763fd36e-ff47-c2d2-af4e-62d81cf2f41f', '2d9004bb-cdab-6459-ca39-62d81cb7fcb3', '2022-07-20 15:16:48', '1', 'is_generated', 'bool', '0', '1', NULL, NULL),
('7aafaaa0-5e44-3fdc-be5e-62d81c57cc02', 'b509ef21-f107-18a1-5ec6-62d81cc39a83', '2022-07-20 15:16:52', '1', 'is_generated', 'bool', '0', '1', NULL, NULL),
('7f7263d9-aff4-b6cf-14ab-62d819e979cd', '564d4ff9-ffb1-26d2-49be-62d8189aaa2e', '2022-07-20 15:03:18', '1', 'is_generated', 'bool', '0', '1', NULL, NULL),
('8fceb59a-e8a7-fb1e-5944-62d81918c2b7', 'b7618445-9a67-21e9-254c-62d8198954c9', '2022-07-20 15:06:14', '1', 'is_generated', 'bool', '0', '1', NULL, NULL),
('921de709-ed12-494f-2958-62d819d093b2', 'e2e8029d-97de-2b12-7078-62d819d16713', '2022-07-20 15:06:22', '1', 'is_generated', 'bool', '0', '1', NULL, NULL),
('9af4d2f0-9d10-1558-ef0b-62d81ccf0287', 'c85adcaf-61c9-1c17-ce6f-62d81c9512b6', '2022-07-20 15:16:55', '1', 'is_generated', 'bool', '0', '1', NULL, NULL),
('9da79c5f-0a8b-24e0-49c4-62d81927aa64', '6d6a82e7-f22c-0369-036a-62d819646026', '2022-07-20 15:06:09', '1', 'is_generated', 'bool', '0', '1', NULL, NULL),
('9f7d6d71-bce2-455c-56ab-62d7fa33cac0', '4ae5fb89-e527-c70c-2b84-62d7fa9996d6', '2022-07-20 12:54:17', '1', 'is_generated', 'bool', '0', '1', NULL, NULL),
('a1d5ab99-449c-ec66-3f4d-62d81cec7a65', '24715ed6-77cd-8854-6e3e-62d81cbe784a', '2022-07-20 15:16:58', '1', 'is_generated', 'bool', '0', '1', NULL, NULL),
('a56aa5e7-c5f6-25e7-4096-62d819d1feba', 'd6fc3424-acbd-a32c-6627-62d818fb00a8', '2022-07-20 15:03:28', '1', 'is_generated', 'bool', '0', '1', NULL, NULL),
('aab36231-b8a0-e727-f1f8-62d81ca45e96', '1f244959-dfa3-b5a0-2721-62d81c764cca', '2022-07-20 15:16:46', '1', 'is_generated', 'bool', '0', '1', NULL, NULL),
('ae4d2595-4468-1abd-8348-65aa7e1d8567', '27de6a9e-5eaf-55a1-2c72-65aa7e34c771', '2024-01-19 13:51:05', '1', 'is_generated', 'bool', '0', '1', NULL, NULL),
('b0e3e5dc-c75e-71f3-063f-6321676fcc45', '5c9709bc-56aa-3c84-f1db-632167a72b71', '2022-09-14 05:33:42', '1', 'is_generated', 'bool', '0', '1', NULL, NULL),
('b8650273-2151-7b57-1fcc-62d81cb81577', '9c8d8ccf-88b7-2eb5-4f1f-62d81c2af857', '2022-07-20 15:17:05', '1', 'is_generated', 'bool', '0', '1', NULL, NULL),
('c40eee4a-e48c-e2c5-6b8b-62d81c66e99f', '35080a6e-4a3e-6d0d-72ab-62d81cacc93a', '2022-07-20 15:17:01', '1', 'is_generated', 'bool', '0', '1', NULL, NULL),
('c9464a2a-23e0-9fa6-45b0-62d819c68ef6', '186c19ec-0e3b-ab32-1518-62d8193d6b6e', '2022-07-20 15:06:03', '1', 'is_generated', 'bool', '0', '1', NULL, NULL),
('cdf48266-f209-598b-89a0-62d81938a8b7', '63e14008-7a0f-22da-bc1b-62d819cca1d9', '2022-07-20 15:06:06', '1', 'is_generated', 'bool', '0', '1', NULL, NULL),
('d107031d-8220-ef70-8dc3-62d81defb4b1', 'd251f3e3-7723-b92d-964b-62d81d0dd43d', '2022-07-20 15:21:31', '1', 'is_generated', 'bool', '0', '1', NULL, NULL),
('ed5e16cb-a1bf-85f0-bcde-62d819fe7a4c', '177933ab-4ad4-a0d2-1f94-62d819012a80', '2022-07-20 15:06:00', '1', 'is_generated', 'bool', '0', '1', NULL, NULL),
('f21f7caa-5b5b-57f2-9210-62d8199dc57c', 'e4e35a5d-81ab-4bca-49ed-62d81810d336', '2022-07-20 15:03:31', '1', 'is_generated', 'bool', '0', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ssi_salary_structure`
--

CREATE TABLE `ssi_salary_structure` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `sal_basic` decimal(8,2) DEFAULT NULL,
  `sal_hra` decimal(8,2) DEFAULT NULL,
  `sal_conv` decimal(8,2) DEFAULT NULL,
  `sal_trans` decimal(8,2) DEFAULT NULL,
  `sal_special` decimal(8,2) DEFAULT NULL,
  `sal_medical` decimal(8,2) DEFAULT NULL,
  `ded_pf` decimal(8,2) DEFAULT NULL,
  `ded_esi` decimal(8,2) DEFAULT NULL,
  `ded_loan` decimal(8,2) DEFAULT NULL,
  `ded_professional_tax` decimal(8,2) DEFAULT '200.00',
  `ded_tds` decimal(8,2) DEFAULT NULL,
  `sal_gross_earning` decimal(10,2) DEFAULT NULL,
  `sal_gross_deduction` decimal(10,2) DEFAULT NULL,
  `sal_net_amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ssi_salary_structure`
--

INSERT INTO `ssi_salary_structure` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `status`, `sal_basic`, `sal_hra`, `sal_conv`, `sal_trans`, `sal_special`, `sal_medical`, `ded_pf`, `ded_esi`, `ded_loan`, `ded_professional_tax`, `ded_tds`, `sal_gross_earning`, `sal_gross_deduction`, `sal_net_amount`) VALUES
('116744a6-2c22-2afe-645b-632166e6a9f5', 'Ruchita (2022-23)', '2022-09-14 05:30:29', '2022-09-14 05:31:44', '1', '1', NULL, 0, '1', 'Active', '18000.00', '7200.00', '3600.00', '1600.00', '8350.00', '1250.00', '0.00', '0.00', '0.00', '200.00', '0.00', '40000.00', '200.00', '39800.00'),
('521e0a9b-600c-27dd-8ebe-62d81bacc2ff', 'Krunal(2022-23)', '2022-07-20 15:11:17', '2022-07-20 15:11:49', '1', '1', NULL, 0, '1', 'Active', '14500.00', '5050.00', '4000.00', '2400.00', '8000.00', '1250.00', '0.00', '0.00', '0.00', '200.00', '0.00', '35200.00', '200.00', '35000.00'),
('56042f85-8217-bc06-0986-625e799e4562', 'Bhargavi(2021-22)', '2022-04-19 08:57:00', '2022-07-20 15:19:26', '1', '1', NULL, 0, '1', 'Active', '16800.00', '6450.00', '4000.00', '2400.00', '11200.00', '1250.00', '0.00', '0.00', '0.00', '200.00', '0.00', '42100.00', '200.00', '41900.00'),
('707549db-0de3-c72c-8104-62d813edb2f0', 'Atir(2022-23)', '2022-07-20 14:39:36', '2022-07-20 15:15:51', '1', '1', NULL, 0, '1', 'Active', '18600.00', '7050.00', '4100.00', '2400.00', '11800.00', '1250.00', '0.00', '0.00', '0.00', '200.00', '0.00', '45200.00', '200.00', '45000.00'),
('8df5be6e-d39c-466e-9e0d-62d8163d0162', 'Krunal(2021-22)', '2022-07-20 14:49:45', '2022-07-20 15:12:13', '1', '1', NULL, 0, '1', 'Inactive', '12950.00', '4050.00', '2800.00', '2400.00', '6750.00', '1250.00', '0.00', '0.00', '0.00', '200.00', '0.00', '30200.00', '200.00', '30000.00'),
('a9077c7b-3655-18f9-e600-62d8161874e0', 'Brinda(2021-22))', '2022-07-20 14:53:30', '2022-07-20 14:53:30', '1', '1', NULL, 0, '1', 'Active', '8700.00', '2700.00', '1800.00', '1250.00', '4500.00', '1250.00', '0.00', '0.00', '0.00', '200.00', '0.00', '20200.00', '200.00', '20000.00'),
('b9d7044d-40f3-c68f-7cdc-62d80f9184f3', 'Pooja(2022-23)', '2022-07-20 14:21:48', '2022-07-20 14:28:04', '1', '1', NULL, 0, '1', 'Active', '12950.00', '4050.00', '2800.00', '2400.00', '6750.00', '1250.00', '0.00', '0.00', '0.00', '200.00', '0.00', '30200.00', '200.00', '30000.00'),
('bdded22c-e468-f496-93b0-62d81aaa2f97', 'Bhargavi(2022-23)', '2022-07-20 15:07:53', '2022-07-20 15:19:26', '1', '1', NULL, 0, '1', 'Inactive', '20200.00', '8000.00', '8150.00', '2400.00', '14000.00', '1250.00', '0.00', '0.00', '0.00', '200.00', '0.00', '54000.00', '200.00', '53800.00'),
('d0353d18-3eb3-bc22-aa31-62d81707226d', 'Arati(2021-22)', '2022-07-20 14:56:33', '2022-07-20 14:56:54', '1', '1', NULL, 0, '1', 'Active', '4800.00', '1500.00', '800.00', '1250.00', '600.00', '1250.00', '0.00', '0.00', '0.00', '200.00', '0.00', '10200.00', '200.00', '10000.00'),
('e9cb1005-8f3e-91d2-2231-62d810ed1db8', 'Kaushal(2022-23)', '2022-07-20 14:27:21', '2022-07-20 14:27:21', '1', '1', NULL, 0, '1', 'Active', '12950.00', '4050.00', '2800.00', '2400.00', '6750.00', '1250.00', '0.00', '0.00', '0.00', '200.00', '0.00', '30200.00', '200.00', '30000.00');

-- --------------------------------------------------------

--
-- Table structure for table `ssi_salary_structure_audit`
--

CREATE TABLE `ssi_salary_structure_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ssi_salary_structure_ssi_salary_slip_1_c`
--

CREATE TABLE `ssi_salary_structure_ssi_salary_slip_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `ssi_salary_structure_ssi_salary_slip_1ssi_salary_structure_ida` varchar(36) DEFAULT NULL,
  `ssi_salary_structure_ssi_salary_slip_1ssi_salary_slip_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ssi_salary_structure_ssi_salary_slip_1_c`
--

INSERT INTO `ssi_salary_structure_ssi_salary_slip_1_c` (`id`, `date_modified`, `deleted`, `ssi_salary_structure_ssi_salary_slip_1ssi_salary_structure_ida`, `ssi_salary_structure_ssi_salary_slip_1ssi_salary_slip_idb`) VALUES
('18ae26cd-aca3-1610-9497-62d819f5d48a', '2022-07-20 15:05:21', 0, '707549db-0de3-c72c-8104-62d813edb2f0', 'e2e8029d-97de-2b12-7078-62d819d16713'),
('2004d244-b17e-d7de-681b-62d819a2c34e', '2022-07-20 15:05:21', 0, 'b9d7044d-40f3-c68f-7cdc-62d80f9184f3', '177933ab-4ad4-a0d2-1f94-62d819012a80'),
('23ebf54f-b96e-140b-3a9c-65a8ce4df8ad', '2024-01-18 07:06:41', 0, 'e9cb1005-8f3e-91d2-2231-62d810ed1db8', '209e6783-a18f-4a7a-cac9-65a8cef33fcb'),
('27afe2f8-0319-ae9e-34e5-62d81c848299', '2022-07-20 15:16:17', 0, '707549db-0de3-c72c-8104-62d813edb2f0', '1f244959-dfa3-b5a0-2721-62d81c764cca'),
('2bb34e8f-591f-eccc-c49b-65aa7e83f3bb', '2024-01-19 13:50:58', 0, '116744a6-2c22-2afe-645b-632166e6a9f5', '27de6a9e-5eaf-55a1-2c72-65aa7e34c771'),
('2e358edb-73c2-38fe-f29a-62d81cabbb71', '2022-07-20 15:15:37', 0, 'd0353d18-3eb3-bc22-aa31-62d81707226d', '24715ed6-77cd-8854-6e3e-62d81cbe784a'),
('383e0216-2de8-d29a-9c19-65aa7ebd8f27', '2024-01-19 13:50:58', 0, 'b9d7044d-40f3-c68f-7cdc-62d80f9184f3', '348cdf7d-573d-85b2-63d5-65aa7e851375'),
('38c46b2e-f39f-b4c5-3b33-62d81d974c98', '2022-07-20 15:20:21', 0, '56042f85-8217-bc06-0986-625e799e4562', '1983f098-425d-e6e6-3600-62d81d0ce201'),
('46722b77-bc66-9720-1878-62d818994ad3', '2022-07-20 15:01:25', 0, 'b9d7044d-40f3-c68f-7cdc-62d80f9184f3', '3cec7380-576b-5b9d-7db6-62d8183aa732'),
('4a86d7cd-d258-196b-f6f8-65a8cec8a743', '2024-01-18 07:06:41', 0, '116744a6-2c22-2afe-645b-632166e6a9f5', '474ccd4a-4100-2531-0766-65a8cec5f290'),
('4ac4307f-ec6a-6b58-54c3-65aa7e31bbb7', '2024-01-19 13:50:58', 0, '56042f85-8217-bc06-0986-625e799e4562', '46f092f1-e962-a084-9fc8-65aa7e691ac9'),
('55fe0502-f708-c94c-b9ce-62d81cfd6c83', '2022-07-20 15:15:37', 0, 'a9077c7b-3655-18f9-e600-62d8161874e0', '35080a6e-4a3e-6d0d-72ab-62d81cacc93a'),
('5c280195-c0f0-dc6f-c8a2-65a8cea4979a', '2024-01-18 07:06:41', 0, 'd0353d18-3eb3-bc22-aa31-62d81707226d', '31c008ff-ad29-070d-26f2-65a8ce9ecf09'),
('5f9467dc-b199-b0ee-e090-62d818314de8', '2022-07-20 15:01:25', 0, '707549db-0de3-c72c-8104-62d813edb2f0', '564d4ff9-ffb1-26d2-49be-62d8189aaa2e'),
('694499f0-d75b-919c-926e-65a8ce9febda', '2024-01-18 07:06:41', 0, '521e0a9b-600c-27dd-8ebe-62d81bacc2ff', '6644db3d-dc19-8329-a2ea-65a8ce19d179'),
('6c2e6e96-2283-473c-9004-62d8194d048d', '2022-07-20 15:05:21', 0, '8df5be6e-d39c-466e-9e0d-62d8163d0162', '63e14008-7a0f-22da-bc1b-62d819cca1d9'),
('762896bc-2b12-d17e-5f31-632167cdea97', '2022-09-14 05:33:27', 0, '116744a6-2c22-2afe-645b-632166e6a9f5', '5c9709bc-56aa-3c84-f1db-632167a72b71'),
('76b1afdf-69d3-f72d-9955-62d8194f8bb0', '2022-07-20 15:05:21', 0, 'd0353d18-3eb3-bc22-aa31-62d81707226d', '6d6a82e7-f22c-0369-036a-62d819646026'),
('8626f91a-c2df-8fb0-bd64-65a8ce279a3b', '2024-01-18 07:06:41', 0, '56042f85-8217-bc06-0986-625e799e4562', '82b6fe3f-91ef-32d4-6824-65a8cee2938c'),
('8a296533-05ef-8bb0-45e1-65aa7e8fc622', '2024-01-19 13:50:58', 0, 'd0353d18-3eb3-bc22-aa31-62d81707226d', '86a05ff4-aa7d-96cd-efb1-65aa7ea9d42f'),
('922233e7-978c-072b-8644-62d81850982d', '2022-07-20 15:01:25', 0, 'd0353d18-3eb3-bc22-aa31-62d81707226d', '885e1c21-2479-3dc3-9c20-62d8187a9550'),
('93084a38-7c0f-18d9-ff9c-65aa7e4bcc4f', '2024-01-19 13:50:58', 0, '707549db-0de3-c72c-8104-62d813edb2f0', '8f7ca795-f949-8d5a-76db-65aa7e704653'),
('a24721c4-902d-ca3e-70bb-65a8ce382aa5', '2024-01-18 07:06:41', 0, '707549db-0de3-c72c-8104-62d813edb2f0', '9ef3d577-ed8d-917f-03bd-65a8ce7d79ef'),
('a59622a6-3667-2259-42a1-62d81c13ccce', '2022-07-20 15:15:37', 0, 'bdded22c-e468-f496-93b0-62d81aaa2f97', '9c8d8ccf-88b7-2eb5-4f1f-62d81c2af857'),
('a5e57959-b9bd-5730-6881-62d8188369b2', '2022-07-20 15:01:25', 0, '8df5be6e-d39c-466e-9e0d-62d8163d0162', '9a2d48c1-9b94-e2a9-8618-62d818c1835b'),
('bc7e8f35-6633-c809-2ffc-62d819e7debd', '2022-07-20 15:19:41', 1, '56042f85-8217-bc06-0986-625e799e4562', '186c19ec-0e3b-ab32-1518-62d8193d6b6e'),
('c00d9bfa-7b23-20e5-fcb5-65a8ce36d84b', '2024-01-18 07:06:41', 0, 'a9077c7b-3655-18f9-e600-62d8161874e0', 'bccf2e21-d7f1-f871-d723-65a8ce2ab806'),
('c02ba8ef-df76-f365-34bf-62d819db8cb3', '2022-07-20 15:05:21', 0, 'a9077c7b-3655-18f9-e600-62d8161874e0', 'b7618445-9a67-21e9-254c-62d8198954c9'),
('cf5262cb-e2f0-fd9a-7a94-62d8196ac799', '2022-07-20 15:05:21', 0, 'e9cb1005-8f3e-91d2-2231-62d810ed1db8', 'c5cccb33-b6d8-9c61-1cbf-62d819b936eb'),
('d3577185-f0a2-b9c4-5746-62d81ce53f5a', '2022-07-20 15:16:17', 0, 'b9d7044d-40f3-c68f-7cdc-62d80f9184f3', 'c85adcaf-61c9-1c17-ce6f-62d81c9512b6'),
('d3cd58b5-93c5-d9c3-a169-62d81c9734d1', '2022-07-20 15:16:17', 0, '521e0a9b-600c-27dd-8ebe-62d81bacc2ff', 'b509ef21-f107-18a1-5ec6-62d81cc39a83'),
('d9720f5f-3a02-b2db-0b0c-62d81cd4799e', '2022-07-20 15:16:17', 0, 'e9cb1005-8f3e-91d2-2231-62d810ed1db8', '2d9004bb-cdab-6459-ca39-62d81cb7fcb3'),
('dd7d6520-fcc8-7bc2-7004-65a8ce4804d5', '2024-01-18 07:06:41', 0, 'b9d7044d-40f3-c68f-7cdc-62d80f9184f3', 'dacb735c-71db-7445-7135-65a8ce7275d7'),
('de0cd250-1f9d-1163-5e8c-65aa7eb8f419', '2024-01-19 13:50:58', 0, 'a9077c7b-3655-18f9-e600-62d8161874e0', 'da8c5fb8-d268-7679-b3d0-65aa7eabff65'),
('e081e26a-dc0f-c063-e58a-62d818b9063b', '2022-07-20 15:01:25', 0, 'e9cb1005-8f3e-91d2-2231-62d810ed1db8', 'd6fc3424-acbd-a32c-6627-62d818fb00a8'),
('e1a410a8-d12c-3389-5418-65aa7e7d4928', '2024-01-19 13:50:58', 0, 'e9cb1005-8f3e-91d2-2231-62d810ed1db8', 'dcdbf575-d96e-b4a3-60c1-65aa7e3510da'),
('e2fa3415-4c26-89b2-ef4b-62d7fb6a4f1a', '2022-07-20 15:19:47', 1, '56042f85-8217-bc06-0986-625e799e4562', 'b5cf1054-09ff-7fb3-6127-62d7fbe11370'),
('e3100553-ec59-4d1b-0ae7-65aa7eddddf5', '2024-01-19 13:50:58', 0, '521e0a9b-600c-27dd-8ebe-62d81bacc2ff', 'f091c166-3cd8-21ed-ac7e-65aa7e49dbb8'),
('eee60927-a06f-31e0-62d9-62d8183f712d', '2022-07-20 15:01:25', 0, 'a9077c7b-3655-18f9-e600-62d8161874e0', 'e4e35a5d-81ab-4bca-49ed-62d81810d336'),
('f28c6146-154f-2ceb-5d35-62d81dbc9a45', '2022-07-20 15:21:13', 0, '56042f85-8217-bc06-0986-625e799e4562', 'd251f3e3-7723-b92d-964b-62d81d0dd43d');

-- --------------------------------------------------------

--
-- Table structure for table `sugarfeed`
--

CREATE TABLE `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sugarfeed`
--

INSERT INTO `sugarfeed` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `related_module`, `related_id`, `link_url`, `link_type`) VALUES
('10d70394-e208-c1fa-d6d5-62d817a5cc13', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:a9fe604d-5017-3ed8-7155-62d817e28437:Arati Barvadiya]', '2022-07-20 14:55:49', '2022-07-20 14:55:49', '1', '1', NULL, 0, '1', 'Contacts', 'a9fe604d-5017-3ed8-7155-62d817e28437', NULL, NULL),
('2e8816f8-2e6b-7377-5564-62d8122dc525', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:e2f2a163-5f31-accd-1800-62d81261cd19:Atir Sakhrelia]', '2022-07-20 14:33:45', '2022-07-20 14:33:45', '1', '1', NULL, 0, '1', 'Contacts', 'e2f2a163-5f31-accd-1800-62d81261cd19', NULL, NULL),
('31a687d6-a78f-0c5d-9392-625e9eb788c5', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:d8554bd8-9d18-5171-ff85-625e9e90dd5b:mrugesh patel]', '2022-04-19 11:36:47', '2022-04-19 11:36:47', '1', '1', NULL, 0, '1', 'Contacts', 'd8554bd8-9d18-5171-ff85-625e9e90dd5b', NULL, NULL),
('41c9c9dc-c596-1df3-118b-63216512d229', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:6a85d251-6616-187d-a1e6-63216563d408:Ruchita Nakrani]', '2022-09-14 05:26:08', '2022-09-14 05:26:08', '1', '1', NULL, 0, '1', 'Contacts', '6a85d251-6616-187d-a1e6-63216563d408', NULL, NULL),
('4288ba96-8f8a-a002-ce20-62d8155b47b9', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:bbdd79f1-ee4e-c9d1-435d-62d815c477dd:Krunal Mehta]', '2022-07-20 14:45:58', '2022-07-20 14:45:58', '1', '1', NULL, 0, '1', 'Contacts', 'bbdd79f1-ee4e-c9d1-435d-62d815c477dd', NULL, NULL),
('90557d71-e5de-9f45-a047-62d816f6369e', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:20ffdb4e-f9e0-f2b2-37b5-62d8163a1e94:Brinda Patel]', '2022-07-20 14:52:35', '2022-07-20 14:52:35', '1', '1', NULL, 0, '1', 'Contacts', '20ffdb4e-f9e0-f2b2-37b5-62d8163a1e94', NULL, NULL),
('a5d56950-f7f6-7f0a-9dd6-62d8104e6961', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:627266ab-5b5e-10e0-5e0a-62d810208840:Kaushal Mehta]', '2022-07-20 14:26:04', '2022-07-20 14:26:04', '1', '1', NULL, 0, '1', 'Contacts', '627266ab-5b5e-10e0-5e0a-62d810208840', NULL, NULL),
('becd732e-413c-918a-c3a4-625801922b1c', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:228de31b-39ff-3be1-a1d2-6258010f610d:Bhargavi Patel]', '2022-04-14 11:10:51', '2022-04-14 11:10:51', '1', '1', NULL, 0, NULL, 'Contacts', '228de31b-39ff-3be1-a1d2-6258010f610d', NULL, NULL),
('db1ecb33-c0a9-6ae2-722d-62d80b3ca056', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:ba28c9d0-5f37-5410-8f37-62d80b666572:Pooja Chavda]', '2022-07-20 14:06:03', '2022-07-20 14:06:03', '1', '1', NULL, 0, '1', 'Contacts', 'ba28c9d0-5f37-5410-8f37-62d80b666572', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestionoptions`
--

CREATE TABLE `surveyquestionoptions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `sort_order` int(255) DEFAULT NULL,
  `survey_question_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestionoptions_audit`
--

CREATE TABLE `surveyquestionoptions_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestionoptions_surveyquestionresponses`
--

CREATE TABLE `surveyquestionoptions_surveyquestionresponses` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `surveyq72c7options_ida` varchar(36) DEFAULT NULL,
  `surveyq10d4sponses_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestionresponses`
--

CREATE TABLE `surveyquestionresponses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `answer` text,
  `answer_bool` tinyint(1) DEFAULT NULL,
  `answer_datetime` datetime DEFAULT NULL,
  `surveyquestion_id` char(36) DEFAULT NULL,
  `surveyresponse_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestionresponses_audit`
--

CREATE TABLE `surveyquestionresponses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestions`
--

CREATE TABLE `surveyquestions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `sort_order` int(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `happiness_question` tinyint(1) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestions_audit`
--

CREATE TABLE `surveyquestions_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `surveyresponses`
--

CREATE TABLE `surveyresponses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `happiness` int(11) DEFAULT NULL,
  `email_response_sent` tinyint(1) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `surveyresponses_audit`
--

CREATE TABLE `surveyresponses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

CREATE TABLE `surveys` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'LBL_DRAFT',
  `submit_text` varchar(255) DEFAULT 'Submit',
  `satisfied_text` varchar(255) DEFAULT 'Satisfied',
  `neither_text` varchar(255) DEFAULT 'Neither Satisfied nor Dissatisfied',
  `dissatisfied_text` varchar(255) DEFAULT 'Dissatisfied'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `surveys_audit`
--

CREATE TABLE `surveys_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT '0',
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `templatesectionline`
--

CREATE TABLE `templatesectionline` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `thumbnail` varchar(255) DEFAULT NULL,
  `grp` varchar(255) DEFAULT NULL,
  `ord` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `templatesectionline`
--

INSERT INTO `templatesectionline` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `thumbnail`, `grp`, `ord`) VALUES
('143df18f-7cc9-710a-bf9f-62d69ce91e4f', 'Content with left image', '2022-07-19 11:59:19', '2022-07-19 11:59:19', '1', '1', '<table style=\"width:100%;\"><tbody><tr><td><img src=\"%3A//localhost/SSI-CRM/include/javascript/mozaik/tpls/default/images/sample.jpg\" width=\"130\" alt=\"sample.jpg\" /></td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>', 0, 'include/javascript/mozaik/tpls/default/thumbs/image1left.png', NULL, 5),
('20d0761e-3157-f7e3-a1ab-62d69c310393', 'Content with right image', '2022-07-19 11:59:19', '2022-07-19 11:59:19', '1', '1', '<table style=\"width:100%;\"><tbody><tr><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td><img src=\"%3A//localhost/SSI-CRM/include/javascript/mozaik/tpls/default/images/sample.jpg\" width=\"130\" alt=\"sample.jpg\" /></td></tr></tbody></table>', 0, 'include/javascript/mozaik/tpls/default/thumbs/image1right.png', NULL, 6),
('2d44b6f9-0dcf-2e40-f0cf-62d69c007b3a', 'Content with two image', '2022-07-19 11:59:19', '2022-07-19 11:59:19', '1', '1', '<table style=\"width:100%;\"><tbody><tr><td><img src=\"%3A//localhost/SSI-CRM/include/javascript/mozaik/tpls/default/images/sample.jpg\" width=\"130\" alt=\"sample.jpg\" /></td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td><img src=\"%3A//localhost/SSI-CRM/include/javascript/mozaik/tpls/default/images/sample.jpg\" width=\"130\" alt=\"sample.jpg\" /></td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>', 0, 'include/javascript/mozaik/tpls/default/thumbs/image2.png', NULL, 7),
('39bd3300-a3f7-6075-1f9f-62d69cbc563c', 'Content with three image', '2022-07-19 11:59:19', '2022-07-19 11:59:19', '1', '1', '<table style=\"width:100%;\"><tbody><tr><td><img src=\"%3A//localhost/SSI-CRM/include/javascript/mozaik/tpls/default/images/sample.jpg\" alt=\"sample.jpg\" /></td><td><img src=\"%3A//localhost/SSI-CRM/include/javascript/mozaik/tpls/default/images/sample.jpg\" alt=\"sample.jpg\" /></td><td><img src=\"%3A//localhost/SSI-CRM/include/javascript/mozaik/tpls/default/images/sample.jpg\" alt=\"sample.jpg\" /></td></tr><tr><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>', 0, 'include/javascript/mozaik/tpls/default/thumbs/image3.png', NULL, 8),
('4d841474-b1c9-f5bb-7a69-62d69cad3150', 'Footer', '2022-07-19 11:59:19', '2022-07-19 11:59:19', '1', '1', '<p class=\"footer\">Take your footer contents and information here..</p>', 0, 'include/javascript/mozaik/tpls/default/thumbs/footer.png', NULL, 9),
('64a303e9-b8c0-c470-a5ba-62d69cd92757', 'Content with three columns', '2022-07-19 11:59:19', '2022-07-19 11:59:19', '1', '1', '<table style=\"width:100%;\"><tbody><tr><td><h2>Title</h2></td><td><h2>Title</h2></td><td><h2>Title</h2></td></tr><tr><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>', 0, 'include/javascript/mozaik/tpls/default/thumbs/content3.png', NULL, 4),
('730e68df-86a4-810a-507e-62d69c6a4dbf', 'Headline', '2022-07-19 11:59:19', '2022-07-19 11:59:19', '1', '1', '<h1>Add your headline here..</h1>', 0, 'include/javascript/mozaik/tpls/default/thumbs/headline.png', NULL, 1),
('b9510aa9-43cb-1fe0-eb2e-62d69cd3a643', 'Content', '2022-07-19 11:59:19', '2022-07-19 11:59:19', '1', '1', '<h2>Title</h2><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</p>', 0, 'include/javascript/mozaik/tpls/default/thumbs/content1.png', NULL, 2),
('ec4dbb0b-e46e-e68b-1b19-62d69c903460', 'Content with two columns', '2022-07-19 11:59:19', '2022-07-19 11:59:19', '1', '1', '<table style=\"width:100%;\"><tbody><tr><td><h2>Title</h2></td><td><h2>Title</h2></td></tr><tr><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>', 0, 'include/javascript/mozaik/tpls/default/thumbs/content2.png', NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tracker`
--

CREATE TABLE `tracker` (
  `id` int(11) NOT NULL,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tracker`
--

INSERT INTO `tracker` (`id`, `monitor_id`, `user_id`, `module_name`, `item_id`, `item_summary`, `date_modified`, `action`, `session_id`, `visible`, `deleted`) VALUES
(21, '271196cd-5648-5f3c-0c80-6259176ffe05', '1', 'SSI_Salary_Structure', '86687de9-36bf-1057-d6c4-62590cd819e7', 'structure2', '2022-04-15 06:57:18', 'detailview', '42c9a473fd0f6ac1395f5e8124e07dbc', 0, 0),
(23, '8c1da693-0fe3-82b8-9aa8-625e496269d9', '1', 'SSI_Salary_Structure', '52f20707-2bcf-cc08-8b7b-625908568086', 'salary structure 1', '2022-04-19 05:34:14', 'detailview', '80341ed9953ae6fd3e024864f12bf09a', 0, 0),
(24, '40abcb00-bb5f-821c-ebf0-625e4a97c4da', '1', 'SSI_Salary_Structure', 'e833fc7f-79b2-b41d-3430-625e4a586f18', 'test 3', '2022-04-19 05:35:45', 'detailview', '80341ed9953ae6fd3e024864f12bf09a', 0, 0),
(39, '6964842b-c3c3-5b92-5554-625e762fdb0e', '1', 'SSI_Salary_Structure', 'b79d01f1-c5fe-9c64-82fb-625e4b3d5fd5', 'salary structure 1', '2022-04-19 08:45:39', 'detailview', 'b7542a51f74629f5afe45c01e55e739a', 1, 0),
(45, 'e4cdc91d-b129-bd32-18f9-625e827c7200', '1', 'SSI_Salary_Structure', '516ccf42-9e5c-041f-f56e-625e4d9c3401', 'salary structure 2', '2022-04-19 09:37:32', 'detailview', 'b7542a51f74629f5afe45c01e55e739a', 1, 0),
(50, '41d63b41-4b44-d3f9-80d4-625e9efd81d9', '1', 'Contacts', 'd8554bd8-9d18-5171-ff85-625e9e90dd5b', 'Mr. mrugesh patel', '2022-04-19 11:36:49', 'detailview', 'b7542a51f74629f5afe45c01e55e739a', 0, 0),
(127, 'a261dedd-5dbc-da78-5658-62d650e834fb', '1', 'SSI_Salary_Structure', '4a1974e1-7baf-df0e-bea0-625e563f9749', 'salary structure 3', '2022-07-19 06:36:42', 'detailview', '249db2a9b27b00a75107d9b21ad39c89', 1, 0),
(132, '8dce06b3-2e1e-d02d-9a58-62d6518a04f6', '1', 'Accounts', '57c24f8d-10c1-71a0-5843-625e9e228abd', 'sixthsenseinfo', '2022-07-19 06:39:56', 'detailview', '249db2a9b27b00a75107d9b21ad39c89', 1, 0),
(168, 'bbd96c48-4857-a453-3337-62d69c5d6cfb', '1', 'TemplateSectionLine', '4d841474-b1c9-f5bb-7a69-62d69cad3150', 'Footer', '2022-07-19 11:59:19', 'save', '249db2a9b27b00a75107d9b21ad39c89', 1, 0),
(176, '9b29585b-c6af-0eea-7675-62d6ad0a0c7e', '1', 'AOS_PDF_Templates', 'c76d5fcb-bfb4-0bf5-a805-62d6ad1ee051', 'test', '2022-07-19 13:11:05', 'detailview', '249db2a9b27b00a75107d9b21ad39c89', 0, 0),
(179, '93d44d77-5c02-0042-108a-62d6ae3d7156', '1', 'AOS_Invoices', '3c7c265b-bfd7-0a78-9796-62d6ad3782ad', 'test', '2022-07-19 13:15:57', 'detailview', '249db2a9b27b00a75107d9b21ad39c89', 1, 0),
(180, '45d3c14d-2ac5-aa2e-8100-62d6af287702', '1', 'OutboundEmailAccounts', 'b69b7e14-4fc0-4ec8-3acf-6253c82237e0', 'system', '2022-07-19 13:19:15', 'editview', '249db2a9b27b00a75107d9b21ad39c89', 1, 0),
(204, 'd0569ad6-1797-7bdd-32ec-62d789bb5ec1', '1', 'Notes', 'cb273447-044d-bbdc-7de1-62d6b5b7508d', 'Salary Slip of 4 2022', '2022-07-20 04:51:24', 'detailview', '689447b126d03572c72d928148dc763e', 0, 0),
(206, '1a335a9d-0b30-a469-58f7-62d78b05d98b', '1', 'Emails', '4406b91f-5647-7c24-471b-62d6b5e75717', 'Salary Slip of 4 2022', '2022-07-20 04:56:55', 'detailview', '689447b126d03572c72d928148dc763e', 1, 0),
(208, 'd92f6b99-2e2d-434f-9438-62d78b3b1243', '1', 'Emails', '7f75033f-114f-39c6-5e86-62d6b1dc3a77', 'Salary Slip of 7 2022', '2022-07-20 04:57:12', 'detailview', '689447b126d03572c72d928148dc763e', 0, 0),
(209, 'c1fe2fab-4f9d-acd6-753e-62d78b4f6a3f', '1', 'Emails', '18469f22-e104-f478-1ccc-62d6b002a497', 'Salary Slip of 7 2022', '2022-07-20 04:57:13', 'detailview', '689447b126d03572c72d928148dc763e', 0, 0),
(210, 'ea950f1b-78c2-6df2-57dc-62d78b4af07c', '1', 'Emails', 'e0d508a2-2150-3622-85f5-62d6af7b517c', 'Salary Slip of 7 2022', '2022-07-20 04:57:14', 'detailview', '689447b126d03572c72d928148dc763e', 0, 0),
(211, '56dbc310-1ab3-19f3-5181-62d78b986a3e', '1', 'Emails', 'c2e26786-165b-8ea2-4a23-62d6ae56c994', 'Salary Slip of 7 2022', '2022-07-20 04:57:16', 'detailview', '689447b126d03572c72d928148dc763e', 0, 0),
(212, '840393df-1093-eb1c-0446-62d78be2d117', '1', 'Emails', '9cac0b37-95a4-75b9-4f60-62d6aec05b58', 'Invoice for test', '2022-07-20 04:57:16', 'detailview', '689447b126d03572c72d928148dc763e', 0, 0),
(213, 'a6b06dc9-a5f6-28b6-cf32-62d78b5910a4', '1', 'Emails', '45e72f8d-ac14-2cc1-9a6c-62d6ad9b463b', 'Salary Slip of 7 2022', '2022-07-20 04:57:17', 'detailview', '689447b126d03572c72d928148dc763e', 0, 0),
(214, 'ce7ebf93-0e20-99d7-c564-62d78b5d2b4c', '1', 'Emails', '6cbb0f3e-58f5-3668-0b50-62d6ad353d81', 'Salary Slip of 7 2022', '2022-07-20 04:57:18', 'detailview', '689447b126d03572c72d928148dc763e', 0, 0),
(215, 'c3d4794a-4aa3-51a5-8f7d-62d78b95238b', '1', 'Emails', '17a8c8fc-f67b-9cb3-43d1-62d6ad352679', 'Invoice for test', '2022-07-20 04:57:18', 'detailview', '689447b126d03572c72d928148dc763e', 0, 0),
(217, 'ad4e94f7-d9fe-11ed-fcc3-62d78b6e8dd6', '1', 'Emails', '73ee7ffa-a80e-5605-15b9-62d6b470f98f', 'Salary Slip of 2 2022', '2022-07-20 04:58:09', 'detailview', '689447b126d03572c72d928148dc763e', 0, 0),
(218, '8c0dd0c1-93c1-3c88-b4d6-62d78b7218f4', '1', 'Emails', '32db4260-7c65-7853-bfe1-62d6b37db025', 'Salary Slip of 7 2022', '2022-07-20 04:58:11', 'detailview', '689447b126d03572c72d928148dc763e', 0, 0),
(219, '179e67d6-f8aa-049f-4c87-62d78ba0017f', '1', 'Emails', '4b72b4bf-ca85-20b5-1705-62d6a756cf63', 'Salary Slip of 7 2022', '2022-07-20 04:58:12', 'detailview', '689447b126d03572c72d928148dc763e', 0, 0),
(220, '6413ea50-d06e-b314-b98d-62d78be11910', '1', 'Emails', 'a8f30c8a-d33d-8df2-f00a-62d6a3d7e48b', 'Salary Slip of 7 2022', '2022-07-20 04:58:14', 'detailview', '689447b126d03572c72d928148dc763e', 0, 0),
(223, '250dabed-3782-b144-ea91-62d78cf13383', '1', 'SSI_Salary_Slip', '4fb8bd8a-334e-8639-ab7c-625fe22a8872', 'Salary Slip of 2 2022', '2022-07-20 05:01:41', 'detailview', '689447b126d03572c72d928148dc763e', 1, 0),
(224, 'e006cfab-1454-94af-931c-62d78c054ecf', '1', 'SSI_Salary_Slip', 'd300c0d8-5c68-5012-8929-625fe1624c35', 'Salary Slip of 4 2022', '2022-07-20 05:01:42', 'detailview', '689447b126d03572c72d928148dc763e', 1, 0),
(236, 'd2dc776b-5cf9-f376-c27a-62d78eb0369e', '1', 'SSI_Salary_Slip', 'dae0f8f9-51d2-6089-deec-62d78d1e8578', 'Salary Slip of 3 2022', '2022-07-20 05:09:39', 'detailview', '689447b126d03572c72d928148dc763e', 1, 0),
(246, 'c19a7bd3-ee85-77e3-9418-62d7911217b5', '1', 'SSI_Salary_Slip', '40505ddc-3839-247f-783d-62d791e99b81', 'Salary Slip of 6 2022', '2022-07-20 05:25:35', 'detailview', '689447b126d03572c72d928148dc763e', 1, 0),
(247, '83b45843-2767-3db7-21bc-62d791237080', '1', 'SSI_Salary_Slip', '747e2e49-8f43-b060-cf52-62d7913e0900', 'Salary Slip of 5 2022', '2022-07-20 05:25:36', 'detailview', '689447b126d03572c72d928148dc763e', 1, 0),
(269, '1d51f9fb-31e6-56bd-8867-62d7ecf1593b', '1', 'SSI_Salary_Slip', 'f016383e-958b-16bf-62bd-62d792a19340', 'Salary Slip of 8 2022', '2022-07-20 11:51:54', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(276, 'bd94a5c9-484e-68bb-cb0e-62d7ed1b2279', '1', 'SSI_Salary_Slip', '2f972a5c-5e31-a35d-9dce-62d659d44344', 'Salary Slip of 7 2022', '2022-07-20 11:57:33', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(302, 'b3c2f822-d00d-0961-3cc6-62d7f633f696', '1', 'SSI_Salary_Slip', 'bce2aa16-d3f7-4988-0aba-62d7f699f211', 'Salary Slip of 4 2022', '2022-07-20 12:36:32', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(320, '71044474-4727-5868-d3de-62d7fa61ed46', '1', 'SSI_Salary_Slip', '4ae5fb89-e527-c70c-2b84-62d7fa9996d6', 'Bhargavi Patel Salary Slip of Apr 2022', '2022-07-20 12:54:12', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(342, '3c870a44-f7ec-a143-6998-62d800656a95', '1', 'EmailTemplates', 'f0674a85-4f90-9c42-fd87-62d7ff27dcda', 'SalarySlip', '2022-07-20 13:16:56', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(361, 'ae775b43-8ae7-47b5-a9cb-62d80f5dffcb', '1', 'Contacts', 'ba28c9d0-5f37-5410-8f37-62d80b666572', 'Mrs. Pooja Chavda', '2022-07-20 14:21:49', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(364, '8066f78e-9c1f-a206-8bee-62d810003337', '1', 'SSI_Salary_Structure', 'e9cb1005-8f3e-91d2-2231-62d810ed1db8', 'Kaushal(2022-23)', '2022-07-20 14:27:27', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(375, '97e4bffa-efc8-72e9-c9d5-62d813f15177', '1', 'Contacts', '627266ab-5b5e-10e0-5e0a-62d810208840', 'Mr. Kaushal Mehta', '2022-07-20 14:40:55', 'editview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(380, 'db90e1f1-6456-a936-333e-62d81579bf3a', '1', 'SSI_Salary_Structure', 'b9d7044d-40f3-c68f-7cdc-62d80f9184f3', 'Pooja(2022-23)', '2022-07-20 14:49:25', 'editview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(383, '95444ebe-e6bb-9cd9-ccf5-62d81654d169', '1', 'Contacts', '20ffdb4e-f9e0-f2b2-37b5-62d8163a1e94', 'Mrs. Brinda Patel', '2022-07-20 14:53:31', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(384, 'dd1a9f5a-8f98-f342-115d-62d81696711b', '1', 'SSI_Salary_Structure', 'a9077c7b-3655-18f9-e600-62d8161874e0', 'Brinda(2021-22))', '2022-07-20 14:53:35', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(386, '7c3b953f-38f9-5e41-a73a-62d8171bc45f', '1', 'Contacts', 'a9fe604d-5017-3ed8-7155-62d817e28437', 'Mrs. Arati Barvadiya', '2022-07-20 14:56:34', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(389, '5ff5ba68-aae1-88fb-79ae-62d817617013', '1', 'SSI_Salary_Structure', 'd0353d18-3eb3-bc22-aa31-62d81707226d', 'Arati(2021-22)', '2022-07-20 14:56:55', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(396, 'bba5cc4e-9045-5c71-30d8-62d81838c03d', '1', 'SSI_Salary_Slip', '3cec7380-576b-5b9d-7db6-62d8183aa732', 'Pooja Chavda Salary Slip of Apr 2022', '2022-07-20 15:02:19', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(399, '722dc9db-e029-fe5a-6c2e-62d8199df07a', '1', 'SSI_Salary_Slip', '564d4ff9-ffb1-26d2-49be-62d8189aaa2e', 'Atir Sakhrelia Salary Slip of Apr 2022', '2022-07-20 15:03:13', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(400, '19908c4e-3184-4799-c3b1-62d819bcad41', '1', 'SSI_Salary_Slip', '885e1c21-2479-3dc3-9c20-62d8187a9550', 'Arati Barvadiya Salary Slip of Apr 2022', '2022-07-20 15:03:13', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(402, 'c2889adb-5d4a-d218-42cd-62d81935b270', '1', 'SSI_Salary_Slip', 'd6fc3424-acbd-a32c-6627-62d818fb00a8', 'Kaushal Mehta Salary Slip of Apr 2022', '2022-07-20 15:03:15', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(403, '3ef2afc9-18ea-c246-2153-62d819408251', '1', 'SSI_Salary_Slip', 'e4e35a5d-81ab-4bca-49ed-62d81810d336', 'Brinda Patel Salary Slip of Apr 2022', '2022-07-20 15:03:16', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(404, 'f3aa92ff-9fb6-3cdb-2e6e-62d819670a74', '1', 'SSI_Salary_Slip', '177933ab-4ad4-a0d2-1f94-62d819012a80', 'Pooja Chavda Salary Slip of May 2022', '2022-07-20 15:05:39', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(406, 'b89bdb7b-0fa0-26a8-4aac-62d8196e96b3', '1', 'SSI_Salary_Slip', '63e14008-7a0f-22da-bc1b-62d819cca1d9', 'Krunal Mehta Salary Slip of May 2022', '2022-07-20 15:05:41', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(407, 'd203dfc3-88d3-6bfb-7797-62d819a4cb1d', '1', 'SSI_Salary_Slip', '6d6a82e7-f22c-0369-036a-62d819646026', 'Arati Barvadiya Salary Slip of May 2022', '2022-07-20 15:05:42', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(408, 'a32a4674-5cb2-605a-4f5d-62d819e7bfe3', '1', 'SSI_Salary_Slip', 'b7618445-9a67-21e9-254c-62d8198954c9', 'Brinda Patel Salary Slip of May 2022', '2022-07-20 15:05:44', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(409, '169dab03-c81d-98a6-16a5-62d819fbef4c', '1', 'SSI_Salary_Slip', 'c5cccb33-b6d8-9c61-1cbf-62d819b936eb', 'Kaushal Mehta Salary Slip of May 2022', '2022-07-20 15:05:49', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(410, 'b16c8fb3-ab52-8e70-ea69-62d81962b5a0', '1', 'SSI_Salary_Slip', 'e2e8029d-97de-2b12-7078-62d819d16713', 'Atir Sakhrelia Salary Slip of May 2022', '2022-07-20 15:05:51', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(426, '3d94ab96-4df7-974d-7bdc-62d81b22f81f', '1', 'SSI_Salary_Structure', '521e0a9b-600c-27dd-8ebe-62d81bacc2ff', 'Krunal(2022-23)', '2022-07-20 15:11:50', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(428, 'd29b2db6-94ed-b98b-acbe-62d81bd096dd', '1', 'SSI_Salary_Structure', '8df5be6e-d39c-466e-9e0d-62d8163d0162', 'Krunal(2021-22)', '2022-07-20 15:12:14', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(434, '1ea91dbf-d789-0f93-b497-62d81c343f51', '1', 'SSI_Salary_Slip', '1f244959-dfa3-b5a0-2721-62d81c764cca', 'Atir Sakhrelia Salary Slip of June 2022', '2022-07-20 15:16:35', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(435, '891cae23-9621-8e39-b28c-62d81ca382f7', '1', 'SSI_Salary_Slip', '2d9004bb-cdab-6459-ca39-62d81cb7fcb3', 'Kaushal Mehta Salary Slip of June 2022', '2022-07-20 15:16:36', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(436, 'ac0a4cb7-a45a-995e-9c12-62d81c94b9c2', '1', 'SSI_Salary_Slip', 'b509ef21-f107-18a1-5ec6-62d81cc39a83', 'Krunal Mehta Salary Slip of June 2022', '2022-07-20 15:16:37', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(437, '3a08aeb2-a4dc-d161-e0bd-62d81c3abf98', '1', 'SSI_Salary_Slip', 'c85adcaf-61c9-1c17-ce6f-62d81c9512b6', 'Pooja Chavda Salary Slip of June 2022', '2022-07-20 15:16:38', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(438, '7b3cbd97-fcda-e079-fc6e-62d81c288873', '1', 'SSI_Salary_Slip', '24715ed6-77cd-8854-6e3e-62d81cbe784a', 'Arati Barvadiya Salary Slip of June 2022', '2022-07-20 15:16:39', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(439, 'eeb8e35d-5ead-df91-c8b6-62d81c02ab9d', '1', 'SSI_Salary_Slip', '35080a6e-4a3e-6d0d-72ab-62d81cacc93a', 'Brinda Patel Salary Slip of June 2022', '2022-07-20 15:16:39', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(440, '6d1aa1ce-088e-74b0-c364-62d81c150aad', '1', 'SSI_Salary_Slip', '9c8d8ccf-88b7-2eb5-4f1f-62d81c2af857', 'Bhargavi Patel Salary Slip of June 2022', '2022-07-20 15:16:41', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(448, '3ca354a8-e500-270c-861d-62d81ccbb20b', '1', 'SSI_Salary_Structure', '56042f85-8217-bc06-0986-625e799e4562', 'Bhargavi(2021-22)', '2022-07-20 15:19:27', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(449, 'bf5830d8-f507-8dd7-cdb3-62d81d97c03a', '1', 'SSI_Salary_Slip', '186c19ec-0e3b-ab32-1518-62d8193d6b6e', 'Bhargavi Patel Salary Slip of May 2022', '2022-07-20 15:19:33', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 0, 0),
(450, 'e537609f-a4c4-2e82-0739-62d81ddf91e1', '1', 'SSI_Salary_Slip', 'b5cf1054-09ff-7fb3-6127-62d7fbe11370', 'Bhargavi Patel Salary Slip of Apr 2022', '2022-07-20 15:19:35', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 0, 0),
(452, '7ec54c82-11e3-1406-758e-62d81dc7b4bf', '1', 'SSI_Salary_Slip', 'd251f3e3-7723-b92d-964b-62d81d0dd43d', 'Bhargavi Patel Salary Slip of May 2022', '2022-07-20 15:21:27', 'detailview', '8009e0c1ff71ac0583cda22522c4a528', 1, 0),
(515, '46e8937c-804d-44dd-a84b-62dfd94d9120', '1', 'SSI_Salary_Slip', '9a2d48c1-9b94-e2a9-8618-62d818c1835b', 'Krunal Mehta Salary Slip of Apr 2022', '2022-07-26 12:09:31', 'detailview', '6a00af0456758291fd771b371d8d7201', 1, 0),
(782, '3e3f3e0e-2991-3a0d-e472-62e12fc49c84', '1', 'SSI_Holiday', 'a2f81ce6-f5ed-97cf-596d-62e12e49bcef', 'INDIA - Independence Day', '2022-07-27 12:28:24', 'detailview', 'aff9b022af9c597ce9bc2a1e434ef5e7', 1, 0),
(795, '45972ae1-cbaa-95e9-1702-62e3b2f0c697', '1', 'Currencies', 'e8af8224-55f2-2eca-be1f-62e3b25efa88', 'Base Implementation.  Should be overridden.', '2022-07-29 10:10:58', 'save', 'ed53078d036940cc6cfc4e069915f2cf', 1, 0),
(817, '8bf5d557-b526-3b5d-bc7d-62e7435dc221', '1', 'AOS_Products', '3c6ae36c-4c9a-db35-2020-62e36715357f', '5.0 - CRM customization', '2022-08-01 03:06:17', 'detailview', 'ed53078d036940cc6cfc4e069915f2cf', 1, 0),
(828, '10f8e38a-25cd-ff59-9f36-62e7ba8b13bf', '1', 'Accounts', '57c24f8d-10c1-71a0-5843-625e9e228abd', 'SixthSenseInfo', '2022-08-01 11:34:41', 'detailview', 'e82cf2d69516d7f757bda53bc53e4e36', 1, 0),
(833, '96b03669-251a-1fe0-498c-632161995dff', '1', 'SSI_Salary_Structure', '707549db-0de3-c72c-8104-62d813edb2f0', 'Atir(2022-23)', '2022-09-14 05:05:14', 'detailview', '93c3fc6a4aad223eb8b968b9d6a27fe0', 1, 0),
(839, 'a2ebc9b9-1d4e-d93a-661c-6321681c5ed6', '1', 'SSI_Salary_Structure', '116744a6-2c22-2afe-645b-632166e6a9f5', 'Ruchita (2022-23)', '2022-09-14 05:36:01', 'detailview', '93c3fc6a4aad223eb8b968b9d6a27fe0', 1, 0),
(840, '5accfa7c-8de5-705f-b894-6321687c6ec5', '1', 'SSI_Salary_Structure', 'bdded22c-e468-f496-93b0-62d81aaa2f97', 'Bhargavi(2022-23)', '2022-09-14 05:38:09', 'detailview', '93c3fc6a4aad223eb8b968b9d6a27fe0', 1, 0),
(841, '272482bb-d6bb-77ad-e272-632168a34815', '1', 'SSI_Salary_Slip', '5c9709bc-56aa-3c84-f1db-632167a72b71', 'Ruchita Nakrani Salary Slip of Aug 2022', '2022-09-14 05:39:00', 'detailview', '93c3fc6a4aad223eb8b968b9d6a27fe0', 1, 0),
(847, '6cd48019-a3e3-f637-8144-6321694130d2', '1', 'AOS_Invoices', '4a32c15f-a8ad-6a67-e5d2-62e36866d4f2', 'CRM customizations and development during  1st June 2022 to 31st July 2022', '2022-09-14 05:42:52', 'detailview', '93c3fc6a4aad223eb8b968b9d6a27fe0', 1, 0),
(848, '1b70d6d6-4127-632a-8059-6321692cc9ed', '1', 'Accounts', 'dee8073b-ebbd-7ef2-4b6c-62d940d0a21f', 'RR Consulting', '2022-09-14 05:43:13', 'detailview', '93c3fc6a4aad223eb8b968b9d6a27fe0', 1, 0),
(849, 'f20ef125-4ac3-796b-d669-632169ff5fa1', '1', 'AOS_Invoices', 'ad0a48e0-fbe5-6abf-0abd-62d9434e4e4c', 'July-2022', '2022-09-14 05:43:19', 'detailview', '93c3fc6a4aad223eb8b968b9d6a27fe0', 1, 0),
(853, '882bb7dc-a133-82c2-4109-65a8c049f442', '1', 'Documents', '365c0156-b099-c1ba-df00-65a7af33b297', NULL, '2024-01-18 06:10:05', 'editview', '40302dcbe7fc6312bc7cd864562b28fd', 0, 0),
(854, '66b400e9-d59a-02a4-bcdf-65a8c1f7a25c', '1', 'Documents', '146a5e27-483c-fc42-cc19-65a7d8197f56', 'GST_Dec_Challan_2023.pdf', '2024-01-18 06:13:32', 'editview', '40302dcbe7fc6312bc7cd864562b28fd', 1, 0),
(855, 'a7648f34-7207-443b-e9ee-65a8c266c79e', '1', 'Documents', 'c82f4166-86d7-ebe4-66e1-65a8c21ac9ea', 'GST_Dec_Challan_2023.pdf', '2024-01-18 06:16:58', 'detailview', '40302dcbe7fc6312bc7cd864562b28fd', 1, 0),
(856, '52afd55a-5b52-51dc-5f4e-65a8c4afbc66', '1', 'Documents', 'c6989fa4-73b0-862c-59b9-65a8c4f3dc5a', 'cc-Rent_1457.pdf', '2024-01-18 06:26:55', 'detailview', '40302dcbe7fc6312bc7cd864562b28fd', 1, 0),
(857, 'c6792c11-f5b6-956b-c2c7-65a8c4d102d2', '1', 'Documents', '5260b225-987f-a97e-9a90-65a8c4397b17', 'ce_Fuel-12-12-2032.pdf', '2024-01-18 06:27:56', 'detailview', '40302dcbe7fc6312bc7cd864562b28fd', 1, 0),
(858, 'a0c520e2-9293-8e64-de9e-65a8c53a770d', '1', 'Documents', '2a538aa5-d1c0-b66c-470e-65a8c5675a16', 'electricity-A+_15477.pdf', '2024-01-18 06:28:25', 'detailview', '40302dcbe7fc6312bc7cd864562b28fd', 1, 0),
(859, '41f2279f-8393-f1be-1ea7-65a8c5396975', '1', 'Documents', '9b9155bf-1cea-cc59-cf24-65a8c5cb23ee', 'GST_Dec_Challan_2023.pdf', '2024-01-18 06:29:33', 'detailview', '40302dcbe7fc6312bc7cd864562b28fd', 1, 0),
(860, '27d3a586-f354-6f4c-b680-65a8c5217d77', '1', 'Documents', '996b6bb3-905c-d9c9-66ca-65a8c525529a', 'Gsuite-12455.pdf', '2024-01-18 06:30:03', 'detailview', '40302dcbe7fc6312bc7cd864562b28fd', 1, 0),
(861, 'dce791cc-0123-b646-0a0e-65a8c57749e8', '1', 'Documents', '5f6c3752-4774-43f0-75a8-65a8c56ed473', 'idea_airtel-4876.pdf', '2024-01-18 06:31:06', 'detailview', '40302dcbe7fc6312bc7cd864562b28fd', 1, 0),
(862, 'ab651855-ac86-168b-fe4e-65a8c66952c8', '1', 'Documents', '2ae44a11-4c12-bee7-d969-65a8c66767fc', 'Office_Advance_Entertainment.pdf', '2024-01-18 06:32:35', 'detailview', '40302dcbe7fc6312bc7cd864562b28fd', 1, 0),
(863, 'd5909e2f-25ea-fc61-8653-65a8c6970b26', '1', 'Documents', '5a463bcd-f74c-114a-3ac9-65a8c6c9f7d6', 'Professional-aa-124587.pdf', '2024-01-18 06:34:06', 'detailview', '40302dcbe7fc6312bc7cd864562b28fd', 1, 0),
(865, '211de886-95a0-ab9a-23ef-65a8cdcc08a3', '1', 'Documents', 'cdcd10ed-b1be-6bf3-3276-65a8c6feb72e', 'torrent-15-01-2023.pdf', '2024-01-18 07:04:38', 'detailview', '40302dcbe7fc6312bc7cd864562b28fd', 1, 0),
(866, '9d0dd15a-4bae-3ca3-0934-65a8cd551799', '1', 'SSI_Salary_Structure', 'd0353d18-3eb3-bc22-aa31-62d81707226d', 'Arati(2021-22)', '2024-01-18 07:05:45', 'detailview', '40302dcbe7fc6312bc7cd864562b28fd', 1, 0),
(871, '1cd3a5c2-812e-a758-77d2-65a8ce0f9b3d', '1', 'Contacts', 'e2f2a163-5f31-accd-1800-62d81261cd19', 'Mr. Atir Sakhrelia', '2024-01-18 07:06:55', 'detailview', '40302dcbe7fc6312bc7cd864562b28fd', 1, 0),
(872, '370631ca-897c-7b74-86a5-65a8ceebc62b', '1', 'Contacts', '627266ab-5b5e-10e0-5e0a-62d810208840', 'Mr. Kaushal Mehta', '2024-01-18 07:06:57', 'detailview', '40302dcbe7fc6312bc7cd864562b28fd', 1, 0),
(873, 'e426bcfb-679d-9c5f-0e87-65a8ce316e32', '1', 'Contacts', 'ba28c9d0-5f37-5410-8f37-62d80b666572', 'Mrs. Pooja Chavda', '2024-01-18 07:06:59', 'detailview', '40302dcbe7fc6312bc7cd864562b28fd', 1, 0),
(889, '9b3cea5f-76af-146b-5a3b-65ace5d59d80', '1', 'Contacts', 'a9fe604d-5017-3ed8-7155-62d817e28437', 'Mrs. Arati Barvadiya', '2024-01-21 09:37:11', 'detailview', '6fc01b62da00eba633ad986af2346840', 1, 0),
(890, '7bd21a05-5947-ad7c-214f-65ace5bac6b7', '1', 'Contacts', 'bbdd79f1-ee4e-c9d1-435d-62d815c477dd', 'Mr. Krunal Mehta', '2024-01-21 09:37:13', 'detailview', '6fc01b62da00eba633ad986af2346840', 1, 0),
(891, 'df4ea992-ae57-25d0-04ac-65ace5064ddb', '1', 'Contacts', '20ffdb4e-f9e0-f2b2-37b5-62d8163a1e94', 'Mrs. Brinda Patel', '2024-01-21 09:37:16', 'detailview', '6fc01b62da00eba633ad986af2346840', 1, 0),
(892, '706b4c24-d290-1be0-c929-65ace56f8f39', '1', 'Contacts', '6a85d251-6616-187d-a1e6-63216563d408', 'Miss Ruchita Nakrani', '2024-01-21 09:37:19', 'detailview', '6fc01b62da00eba633ad986af2346840', 1, 0),
(894, '98b28b79-f302-6e9b-c0c9-65ae12e54d2e', '1', 'AOS_PDF_Templates', '3714b2e4-d9c5-ee3b-31c4-62bebe3ea150', 'Salary Slip Report', '2024-01-22 07:00:11', 'editview', '6fc01b62da00eba633ad986af2346840', 1, 0),
(898, '9f4bf116-bfee-e1bb-ddd6-65ae195a1144', '1', 'AOS_PDF_Templates', '8adbfe39-1803-e7f8-4d62-62e3711a6ae4', 'hourly_invoice', '2024-01-22 07:32:09', 'editview', '6fc01b62da00eba633ad986af2346840', 1, 0),
(900, 'dffec557-fe6f-1804-5811-65ae2c027fcb', '1', 'AOS_PDF_Templates', '6ab4936e-4ca3-c9bf-41c3-62d957daf876', 'state_invoice', '2024-01-22 08:49:15', 'detailview', '6fc01b62da00eba633ad986af2346840', 1, 0),
(901, '95b0008c-0be8-94b6-e226-65ae2c718051', '1', 'AOS_PDF_Templates', '909e108b-e0a1-07fb-ddf3-62da67aa2800', 'igst_invoice', '2024-01-22 08:49:26', 'editview', '6fc01b62da00eba633ad986af2346840', 1, 0),
(952, 'ee133bd0-bd5f-8453-294f-65b099802412', '1', 'Contacts', '228de31b-39ff-3be1-a1d2-6258010f610d', 'Mrs. Bhargavi Patel', '2024-01-24 04:59:18', 'detailview', '6fc01b62da00eba633ad986af2346840', 1, 0),
(953, '59d6fbc9-6a13-30ef-9671-65b099622950', '1', 'SSI_Salary_Slip', '1983f098-425d-e6e6-3600-62d81d0ce201', 'Bhargavi Patel Salary Slip of Apr 2022', '2024-01-24 04:59:19', 'detailview', '6fc01b62da00eba633ad986af2346840', 1, 0),
(954, '56548756-dc3a-0bd2-d5c6-65ba236cefd0', '1', 'Users', '1', 'Administrator', '2024-01-31 10:40:14', 'editview', '8b1b8839c164f8c2da8bd6746f459bd5', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `upgrade_history`
--

CREATE TABLE `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `upgrade_history`
--

INSERT INTO `upgrade_history` (`id`, `filename`, `md5sum`, `type`, `status`, `version`, `name`, `description`, `id_name`, `manifest`, `date_entered`, `enabled`) VALUES
('1f17ae7d-f2a5-ee12-0987-65bba226d111', 'upload://upgrades/patch/SuiteCRM-Upgrade-7.10.x-to-7.13.4(1).zip', '1947476a2ce92f9cf7b9ebeb5c54c20d', 'patch', 'installed', '7.13.4', NULL, NULL, NULL, 'YTozOntzOjg6Im1hbmlmZXN0IjthOjk6e3M6NDoibmFtZSI7czo4OiJTdWl0ZUNSTSI7czo2OiJhdXRob3IiO3M6MTI6IlNhbGVzQWdpbGl0eSI7czo0OiJ0eXBlIjtzOjU6InBhdGNoIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxOToiMjAyMy0wNi0zMCAxMjowMDowMCI7czo3OiJ2ZXJzaW9uIjtzOjY6IjcuMTMuNCI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjowO3M6Mjg6ImFjY2VwdGFibGVfc3VpdGVjcm1fdmVyc2lvbnMiO2E6MTp7czoxMzoicmVnZXhfbWF0Y2hlcyI7YToyOntpOjA7czo5OiJeNy4xMCgtKikiO2k6MTtzOjk6Il43LjEwKC4qKSI7fX1zOjIzOiJhY2NlcHRhYmxlX3BocF92ZXJzaW9ucyI7YToxOntzOjEzOiJyZWdleF9tYXRjaGVzIjthOjM6e2k6MDtzOjg6Il43LjQoLiopIjtpOjE7czo4OiJeOC4wKC4qKSI7aToyO3M6ODoiXjguMSguKikiO319czoxMDoiY29weV9maWxlcyI7YToyOntzOjg6ImZyb21fZGlyIjtzOjMzOiJTdWl0ZUNSTS1VcGdyYWRlLTcuMTAueC10by03LjEzLjQiO3M6NjoidG9fZGlyIjtzOjA6IiI7fX1zOjExOiJpbnN0YWxsZGVmcyI7czowOiIiO3M6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2024-02-01 13:44:22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT '1',
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `external_auth_only` tinyint(1) DEFAULT '0',
  `receive_notifications` tinyint(1) DEFAULT '1',
  `description` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT '0',
  `show_on_employees` tinyint(1) DEFAULT '1',
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL,
  `factor_auth` tinyint(1) DEFAULT NULL,
  `factor_auth_interface` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_hash`, `system_generated_password`, `pwd_last_changed`, `authenticate_id`, `sugar_login`, `first_name`, `last_name`, `is_admin`, `external_auth_only`, `receive_notifications`, `description`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `title`, `photo`, `department`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `status`, `address_street`, `address_city`, `address_state`, `address_country`, `address_postalcode`, `deleted`, `portal_only`, `show_on_employees`, `employee_status`, `messenger_id`, `messenger_type`, `reports_to_id`, `is_group`, `factor_auth`, `factor_auth_interface`) VALUES
('1', 'admin', '$2y$10$O9Yu6hZSaeQB8MRhqKPODO529VJNUzASS7vepOH3FlP0ZtgIsHY4W', 0, NULL, NULL, 1, NULL, 'Administrator', 1, 0, 1, NULL, '2022-04-11 06:15:51', '2022-07-26 09:17:26', '1', '1', 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_feeds`
--

CREATE TABLE `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_last_import`
--

CREATE TABLE `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_password_link`
--

CREATE TABLE `users_password_link` (
  `id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `keyhash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_signatures`
--

CREATE TABLE `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text,
  `signature_html` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_preferences`
--

CREATE TABLE `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_preferences`
--

INSERT INTO `user_preferences` (`id`, `category`, `deleted`, `date_entered`, `date_modified`, `assigned_user_id`, `contents`) VALUES
('14a859a4-1cf8-e031-b823-6253c88a9ffb', 'Home2_LEAD', 0, '2022-04-11 06:21:12', '2022-07-20 15:03:00', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1b7e7e65-93e9-ce8e-89cd-6253c85285fe', 'Home2_SUGARFEED', 0, '2022-04-11 06:21:12', '2022-07-20 15:03:00', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1d7a04a3-35a1-cd35-8223-625828092f84', 'SSI_Salary_Structure2_SSI_SALARY_STRUCTURE', 0, '2022-04-14 13:59:10', '2022-07-20 15:03:00', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1ea27404-a374-9c6f-3e6d-6257fed3d80d', 'Contacts2_CONTACT', 0, '2022-04-14 11:00:18', '2022-07-20 15:03:00', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2c1f0ead-ae6f-38a6-a8ab-62d69c198a6e', 'EmailTemplates2_EMAILTEMPLATE', 0, '2022-07-19 11:59:12', '2022-07-20 15:03:00', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('312dceab-ffab-f1bd-51fc-62d6b0e8901e', 'ETag', 0, '2022-07-19 13:24:28', '2022-07-20 15:03:00', '1', 'YTowOnt9'),
('36c2d624-97e3-aef6-ceaa-62d6aca01f2b', 'OutboundEmailAccounts2_OUTBOUNDEMAILACCOUNTS', 0, '2022-07-19 13:06:03', '2022-07-19 13:26:26', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3a8761e9-d194-f035-eaa1-625819f9f4ba', 'Accounts2_ACCOUNT', 0, '2022-04-14 12:52:46', '2022-07-20 15:03:00', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('47b6c756-1017-d9e5-a229-6253c8306145', 'Home2_LEAD_d020647f-098e-5aef-c395-6253c8376b28', 0, '2022-04-11 06:21:19', '2022-07-20 15:03:00', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5295e577-3a37-df95-f561-62d6b0bedba8', 'SSI_Salary_Structure', 0, '2022-07-19 13:24:28', '2022-07-20 15:12:04', '1', 'YToxOntzOjIyOiJMaXN0Vmlld0Rpc3BsYXlDb2x1bW5zIjthOjA6e319'),
('640a03c7-2716-b366-4644-6253c848bb4b', 'Home2_OPPORTUNITY', 0, '2022-04-11 06:21:12', '2022-07-20 15:03:00', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('69aaa37b-940b-eb7f-ff56-62d6b090870f', 'Dashboard', 0, '2022-07-19 13:24:28', '2022-07-20 15:03:00', '1', 'YTowOnt9'),
('7f315725-a193-1ccf-2aa1-62d6b06b5e8a', 'Contacts', 0, '2022-07-19 13:24:28', '2022-07-20 15:03:00', '1', 'YTowOnt9'),
('89140b39-428d-5d2d-e72c-62d6b086642f', 'AOS_Invoices', 0, '2022-07-19 13:24:28', '2022-07-19 13:26:26', '1', 'YTowOnt9'),
('8fbdbb02-1940-df03-22cd-62bebb61af7b', 'AOS_PDF_Templates2_AOS_PDF_TEMPLATES', 0, '2022-07-01 09:17:08', '2022-07-20 15:03:00', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('904a93d0-2e3c-52f1-b3d6-62d6ad9523a4', 'AOS_Invoices2_AOS_INVOICES', 0, '2022-07-19 13:09:46', '2022-07-19 13:26:26', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a2874777-1a6b-2abd-dc98-62d7efb1c54d', 'Users', 0, '2022-07-20 12:06:20', '2022-07-20 15:03:00', '1', 'YTowOnt9'),
('c1817812-1e2c-0fb4-7d01-62d6574ecafd', 'Schedulers2_SCHEDULER', 0, '2022-07-19 07:05:27', '2022-07-19 13:26:26', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c6a517c4-7c17-eb68-8791-65a77d7555c6', 'Documents2_DOCUMENT', 0, '2024-01-17 07:12:29', '2024-01-19 13:45:32', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c7b22009-2953-ad05-68da-625ea739d638', 'SSI_Salary_Slip2_SSI_SALARY_SLIP', 0, '2022-04-19 12:14:46', '2022-07-20 15:21:43', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoicGF5bWVudF9kYXRlIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ca16f146-8b26-d06d-4707-62d78a5b7fa3', 'Notes2_NOTE', 0, '2022-07-20 04:56:12', '2022-07-20 15:03:00', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('cc378ca0-04d6-9119-f676-62e12e3915c8', 'SSI_Holiday2_SSI_HOLIDAY', 0, '2022-07-27 12:25:19', '2022-07-27 12:25:19', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d19e84cf-ebf7-2605-c1fc-6253c828b41b', 'Home', 0, '2022-04-11 06:21:12', '2022-07-20 15:03:00', '1', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6ImNjMzg1NjZmLTYzYjItMGZmYS0wNmFhLTYyNTNjODRjZGZjNyI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6ImNjYjU1OWNkLTM5YzQtOTQxYS0xYTI5LTYyNTNjODhkZTU2OCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImNkYWY1MTY3LTI3OWYtN2MzMC01OGQxLTYyNTNjODlkYzZlMCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImNlNmFkYmM2LTk3YjUtZmQ3ZS1mMDYyLTYyNTNjODc5M2YyZiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiY2Y2NGQ1ZTktMGJkMy0wNmUxLWFlYTYtNjI1M2M4YmFlYjZlIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiZDAyMDY0N2YtMDk4ZS01YWVmLWMzOTUtNjI1M2M4Mzc2YjI4IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiJjY2I1NTljZC0zOWM0LTk0MWEtMWEyOS02MjUzYzg4ZGU1NjgiO2k6MTtzOjM2OiJjZGFmNTE2Ny0yNzlmLTdjMzAtNThkMS02MjUzYzg5ZGM2ZTAiO2k6MjtzOjM2OiJjZTZhZGJjNi05N2I1LWZkN2UtZjA2Mi02MjUzYzg3OTNmMmYiO2k6MztzOjM2OiJjZjY0ZDVlOS0wYmQzLTA2ZTEtYWVhNi02MjUzYzhiYWViNmUiO2k6NDtzOjM2OiJkMDIwNjQ3Zi0wOThlLTVhZWYtYzM5NS02MjUzYzgzNzZiMjgiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6ImNjMzg1NjZmLTYzYjItMGZmYS0wNmFhLTYyNTNjODRjZGZjNyI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),
('d20f34f4-ba37-5048-5c99-62d6b081cf83', 'Emails', 0, '2022-07-19 13:24:28', '2024-01-31 10:40:24', '1', 'YToxOntzOjEzOiJlbWFpbFNldHRpbmdzIjthOjU6e3M6MTg6ImVtYWlsQ2hlY2tJbnRlcnZhbCI7czoyOiItMSI7czoxODoiYWx3YXlzU2F2ZU91dGJvdW5kIjtzOjE6IjEiO3M6MTM6InNlbmRQbGFpblRleHQiO3M6MToiMCI7czoxMzoic2hvd051bUluTGlzdCI7czoyOiIyMCI7czoyMjoiZGVmYXVsdE91dGJvdW5kQ2hhcnNldCI7czo1OiJVVEYtOCI7fX0='),
('d4efdb83-cefd-3946-ced6-62d67e742514', 'Employees2_EMPLOYEE', 0, '2022-07-19 09:52:47', '2022-07-19 13:26:26', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d93c0ef0-0bc8-b9a1-71fc-6253c8e83c90', 'Home2_ACCOUNT', 0, '2022-04-11 06:21:12', '2022-07-20 15:03:00', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('da976b01-c883-32f4-a0ad-62d6b0fe5b07', 'Accounts', 0, '2022-07-19 13:24:28', '2022-07-19 13:26:26', '1', 'YTowOnt9'),
('dfa018f9-19ff-0bf3-5981-6253c8b44c82', 'global', 0, '2022-04-11 06:15:51', '2024-01-31 10:40:24', '1', 'YTo2MDp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6ImRkNmQ4MDRiLTU2MmEtMDBkYS00MzNkLTYyNTNjODRhNWM1YiI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoxOiJtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6MDoiIjtzOjI1OiJjb3VudF9jb2xsYXBzZWRfc3VicGFuZWxzIjtzOjI6Im9uIjtzOjE0OiJtb2R1bGVfZmF2aWNvbiI7czowOiIiO3M6OToiaGlkZV90YWJzIjthOjA6e31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czo4OiJ0aW1lem9uZSI7czoxMjoiQXNpYS9Lb2xrYXRhIjtzOjI6InV0IjtzOjE6IjEiO3M6MTU6Im1haWxfc210cHNlcnZlciI7czowOiIiO3M6MTM6Im1haWxfc210cHBvcnQiO3M6MjoiMjUiO3M6MTM6Im1haWxfc210cHVzZXIiO3M6MDoiIjtzOjEzOiJtYWlsX3NtdHBwYXNzIjtzOjA6IiI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mzoib2ZmIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZVAiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6MzoiQWxsIjtzOjk6IkNvbnRhY3RzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjk6IkFjY291bnRzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjIxOiJTU0lfU2FsYXJ5X1N0cnVjdHVyZVEiO2E6MTU6e3M6NjoibW9kdWxlIjtzOjIwOiJTU0lfU2FsYXJ5X1N0cnVjdHVyZSI7czo2OiJhY3Rpb24iO3M6NToiaW5kZXgiO3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7czo1OiJxdWVyeSI7czo0OiJ0cnVlIjtzOjc6Im9yZGVyQnkiO3M6MDoiIjtzOjk6InNvcnRPcmRlciI7czowOiIiO3M6MTA6Im5hbWVfYmFzaWMiO3M6MDoiIjtzOjQyOiJjb250YWN0c19zc2lfc2FsYXJ5X3N0cnVjdHVyZV8xX25hbWVfYmFzaWMiO3M6MDoiIjtzOjEyOiJzdGF0dXNfYmFzaWMiO2E6MTp7aTowO3M6NjoiQWN0aXZlIjt9czo2OiJidXR0b24iO3M6NjoiU2VhcmNoIjtzOjE2OiJzdWdhcl91c2VyX3RoZW1lIjtzOjY6IlN1aXRlUCI7czoxNDoiY2tfbG9naW5faWRfMjAiO3M6MToiMSI7czoyMDoiY2tfbG9naW5fbGFuZ3VhZ2VfMjAiO3M6NToiZW5fdXMiO3M6MTM6IkNvbnRhY3RzX2RpdnMiO3M6NTQ6IkNvbnRhY3RzX2NvbnRhY3RzX3NzaV9zYWxhcnlfc2xpcF8xX3Y9dHJ1ZSN1bmRlZmluZWQ9IyI7czo5OiJQSFBTRVNTSUQiO3M6MzI6IjkzYzNmYzZhNGFhZDIyM2ViOGI5NjhiOWQ2YTI3ZmUwIjt9czoxMToiZWRpdG9yX3R5cGUiO3M6NzoidGlueW1jZSI7czoxNjoiU1NJX1NhbGFyeV9TbGlwUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjtzOjE4OiJBT1NfUERGX1RlbXBsYXRlc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMToiU2NoZWR1bGVyc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMDoiRW1wbG95ZWVzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjE1OiJFbWFpbFRlbXBsYXRlc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoyMjoiT3V0Ym91bmRFbWFpbEFjY291bnRzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjEzOiJBT1NfSW52b2ljZXNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTc6InNpZ25hdHVyZV9kZWZhdWx0IjtzOjA6IiI7czoxNzoic2lnbmF0dXJlX3ByZXBlbmQiO2I6MDtzOjEzOiJyZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE2OiJyZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6MjI6ImVtYWlsX3JlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJkL20vWSI7czo1OiJ0aW1lZiI7czozOiJIOmkiO3M6MjY6ImRlZmF1bHRfbG9jYWxlX25hbWVfZm9ybWF0IjtzOjU6InMgZiBsIjtzOjE2OiJleHBvcnRfZGVsaW1pdGVyIjtzOjE6IiwiO3M6MjI6ImRlZmF1bHRfZXhwb3J0X2NoYXJzZXQiO3M6NToiVVRGLTgiO3M6MTU6ImVtYWlsX2xpbmtfdHlwZSI7czo1OiJzdWdhciI7czo4OiJzdWJ0aGVtZSI7czo0OiJEYXduIjtzOjY6IlRhc2tzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjY6Ik5vdGVzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjc6IkVtYWlsc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMzoiQU9TX1Byb2R1Y3RzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjEyOiJTU0lfSG9saWRheVEiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMDoiRG9jdW1lbnRzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO319'),
('e30cc84c-cb00-8c3b-031b-62d9423dd7f1', 'AOS_Products2_AOS_PRODUCTS', 0, '2022-07-21 12:11:07', '2022-07-21 12:11:07', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e4085deb-6183-703e-fb26-62d802913a9f', 'EmailTemplates', 0, '2022-07-20 13:27:09', '2022-07-20 15:03:00', '1', 'YTowOnt9'),
('e5e25b41-9914-3cae-9658-6253c8313988', 'Home2_CALL', 0, '2022-04-11 06:21:12', '2022-07-20 15:03:00', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e621940c-20e0-cee8-ec77-625fe05ef7e1', 'ModuleBuilder', 0, '2022-04-20 10:29:32', '2022-07-19 13:26:26', '1', 'YToxOntzOjE3OiJmaWVsZHNUYWJsZUNvbHVtbiI7czozMjoieyJrZXkiOiJ0eXBlIiwiZGlyZWN0aW9uIjoiQVNDIn0iO30='),
('ef7871d6-5b5f-4759-d8c1-62d6b0f0b0be', 'Assistant', 0, '2022-07-19 13:24:28', '2022-07-20 15:03:00', '1', 'YTowOnt9'),
('efa67152-e7a4-817f-0b35-6253c8ad15c9', 'Home2_MEETING', 0, '2022-04-11 06:21:12', '2022-07-20 15:03:00', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');

-- --------------------------------------------------------

--
-- Table structure for table `vcals`
--

CREATE TABLE `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_accnt_id_del` (`id`,`deleted`),
  ADD KEY `idx_accnt_name_del` (`name`,`deleted`),
  ADD KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  ADD KEY `idx_accnt_parent_id` (`parent_id`);

--
-- Indexes for table `accounts_audit`
--
ALTER TABLE `accounts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_accounts_parent_id` (`parent_id`);

--
-- Indexes for table `accounts_bugs`
--
ALTER TABLE `accounts_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acc_bug_acc` (`account_id`),
  ADD KEY `idx_acc_bug_bug` (`bug_id`),
  ADD KEY `idx_account_bug` (`account_id`,`bug_id`);

--
-- Indexes for table `accounts_cases`
--
ALTER TABLE `accounts_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acc_case_acc` (`account_id`),
  ADD KEY `idx_acc_acc_case` (`case_id`);

--
-- Indexes for table `accounts_contacts`
--
ALTER TABLE `accounts_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_account_contact` (`account_id`,`contact_id`),
  ADD KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`);

--
-- Indexes for table `accounts_cstm`
--
ALTER TABLE `accounts_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `accounts_opportunities`
--
ALTER TABLE `accounts_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  ADD KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`);

--
-- Indexes for table `acl_actions`
--
ALTER TABLE `acl_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclaction_id_del` (`id`,`deleted`),
  ADD KEY `idx_category_name` (`category`,`name`);

--
-- Indexes for table `acl_roles`
--
ALTER TABLE `acl_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclrole_id_del` (`id`,`deleted`);

--
-- Indexes for table `acl_roles_actions`
--
ALTER TABLE `acl_roles_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acl_role_id` (`role_id`),
  ADD KEY `idx_acl_action_id` (`action_id`),
  ADD KEY `idx_aclrole_action` (`role_id`,`action_id`);

--
-- Indexes for table `acl_roles_users`
--
ALTER TABLE `acl_roles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclrole_id` (`role_id`),
  ADD KEY `idx_acluser_id` (`user_id`),
  ADD KEY `idx_aclrole_user` (`role_id`,`user_id`);

--
-- Indexes for table `address_book`
--
ALTER TABLE `address_book`
  ADD KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`);

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_projecttemplates`
--
ALTER TABLE `am_projecttemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_projecttemplates_audit`
--
ALTER TABLE `am_projecttemplates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_am_projecttemplates_parent_id` (`parent_id`);

--
-- Indexes for table `am_projecttemplates_contacts_1_c`
--
ALTER TABLE `am_projecttemplates_contacts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_contacts_1_alt` (`am_projecttemplates_ida`,`contacts_idb`);

--
-- Indexes for table `am_projecttemplates_project_1_c`
--
ALTER TABLE `am_projecttemplates_project_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_project_1_ida1` (`am_projecttemplates_project_1am_projecttemplates_ida`),
  ADD KEY `am_projecttemplates_project_1_alt` (`am_projecttemplates_project_1project_idb`);

--
-- Indexes for table `am_projecttemplates_users_1_c`
--
ALTER TABLE `am_projecttemplates_users_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_users_1_alt` (`am_projecttemplates_ida`,`users_idb`);

--
-- Indexes for table `am_tasktemplates`
--
ALTER TABLE `am_tasktemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_tasktemplates_am_projecttemplates_c`
--
ALTER TABLE `am_tasktemplates_am_projecttemplates_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_tasktemplates_am_projecttemplates_ida1` (`am_tasktemplates_am_projecttemplatesam_projecttemplates_ida`),
  ADD KEY `am_tasktemplates_am_projecttemplates_alt` (`am_tasktemplates_am_projecttemplatesam_tasktemplates_idb`);

--
-- Indexes for table `am_tasktemplates_audit`
--
ALTER TABLE `am_tasktemplates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_am_tasktemplates_parent_id` (`parent_id`);

--
-- Indexes for table `aobh_businesshours`
--
ALTER TABLE `aobh_businesshours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aod_index`
--
ALTER TABLE `aod_index`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aod_indexevent`
--
ALTER TABLE `aod_indexevent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_record_module` (`record_module`),
  ADD KEY `idx_record_id` (`record_id`);

--
-- Indexes for table `aod_indexevent_audit`
--
ALTER TABLE `aod_indexevent_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aod_indexevent_parent_id` (`parent_id`);

--
-- Indexes for table `aod_index_audit`
--
ALTER TABLE `aod_index_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aod_index_parent_id` (`parent_id`);

--
-- Indexes for table `aok_knowledgebase`
--
ALTER TABLE `aok_knowledgebase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aok_knowledgebase_audit`
--
ALTER TABLE `aok_knowledgebase_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aok_knowledgebase_parent_id` (`parent_id`);

--
-- Indexes for table `aok_knowledgebase_categories`
--
ALTER TABLE `aok_knowledgebase_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aok_knowledgebase_categories_alt` (`aok_knowledgebase_id`,`aok_knowledge_base_categories_id`);

--
-- Indexes for table `aok_knowledge_base_categories`
--
ALTER TABLE `aok_knowledge_base_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aok_knowledge_base_categories_audit`
--
ALTER TABLE `aok_knowledge_base_categories_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aok_knowledge_base_categories_parent_id` (`parent_id`);

--
-- Indexes for table `aop_case_events`
--
ALTER TABLE `aop_case_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aop_case_events_audit`
--
ALTER TABLE `aop_case_events_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aop_case_events_parent_id` (`parent_id`);

--
-- Indexes for table `aop_case_updates`
--
ALTER TABLE `aop_case_updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aop_case_updates_audit`
--
ALTER TABLE `aop_case_updates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aop_case_updates_parent_id` (`parent_id`);

--
-- Indexes for table `aor_charts`
--
ALTER TABLE `aor_charts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aor_conditions`
--
ALTER TABLE `aor_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aor_conditions_index_report_id` (`aor_report_id`);

--
-- Indexes for table `aor_fields`
--
ALTER TABLE `aor_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aor_fields_index_report_id` (`aor_report_id`);

--
-- Indexes for table `aor_reports`
--
ALTER TABLE `aor_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aor_reports_audit`
--
ALTER TABLE `aor_reports_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aor_reports_parent_id` (`parent_id`);

--
-- Indexes for table `aor_scheduled_reports`
--
ALTER TABLE `aor_scheduled_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_contracts`
--
ALTER TABLE `aos_contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_contracts_audit`
--
ALTER TABLE `aos_contracts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_contracts_parent_id` (`parent_id`);

--
-- Indexes for table `aos_contracts_documents`
--
ALTER TABLE `aos_contracts_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_contracts_documents_alt` (`aos_contracts_id`,`documents_id`);

--
-- Indexes for table `aos_invoices`
--
ALTER TABLE `aos_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_invoices_audit`
--
ALTER TABLE `aos_invoices_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_invoices_parent_id` (`parent_id`);

--
-- Indexes for table `aos_line_item_groups`
--
ALTER TABLE `aos_line_item_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_line_item_groups_audit`
--
ALTER TABLE `aos_line_item_groups_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_line_item_groups_parent_id` (`parent_id`);

--
-- Indexes for table `aos_pdf_templates`
--
ALTER TABLE `aos_pdf_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_pdf_templates_audit`
--
ALTER TABLE `aos_pdf_templates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_pdf_templates_parent_id` (`parent_id`);

--
-- Indexes for table `aos_products`
--
ALTER TABLE `aos_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_products_audit`
--
ALTER TABLE `aos_products_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_products_parent_id` (`parent_id`);

--
-- Indexes for table `aos_products_quotes`
--
ALTER TABLE `aos_products_quotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aospq_par_del` (`parent_id`,`parent_type`,`deleted`);

--
-- Indexes for table `aos_products_quotes_audit`
--
ALTER TABLE `aos_products_quotes_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_products_quotes_parent_id` (`parent_id`);

--
-- Indexes for table `aos_product_categories`
--
ALTER TABLE `aos_product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_product_categories_audit`
--
ALTER TABLE `aos_product_categories_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_product_categories_parent_id` (`parent_id`);

--
-- Indexes for table `aos_quotes`
--
ALTER TABLE `aos_quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_quotes_aos_invoices_c`
--
ALTER TABLE `aos_quotes_aos_invoices_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_aos_invoices_alt` (`aos_quotes77d9_quotes_ida`,`aos_quotes6b83nvoices_idb`);

--
-- Indexes for table `aos_quotes_audit`
--
ALTER TABLE `aos_quotes_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_quotes_parent_id` (`parent_id`);

--
-- Indexes for table `aos_quotes_os_contracts_c`
--
ALTER TABLE `aos_quotes_os_contracts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_aos_contracts_alt` (`aos_quotese81e_quotes_ida`,`aos_quotes4dc0ntracts_idb`);

--
-- Indexes for table `aos_quotes_project_c`
--
ALTER TABLE `aos_quotes_project_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_project_alt` (`aos_quotes1112_quotes_ida`,`aos_quotes7207project_idb`);

--
-- Indexes for table `aow_actions`
--
ALTER TABLE `aow_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_action_index_workflow_id` (`aow_workflow_id`);

--
-- Indexes for table `aow_conditions`
--
ALTER TABLE `aow_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_conditions_index_workflow_id` (`aow_workflow_id`);

--
-- Indexes for table `aow_processed`
--
ALTER TABLE `aow_processed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_processed_index_workflow` (`aow_workflow_id`,`status`,`parent_id`,`deleted`),
  ADD KEY `aow_processed_index_status` (`status`),
  ADD KEY `aow_processed_index_workflow_id` (`aow_workflow_id`);

--
-- Indexes for table `aow_processed_aow_actions`
--
ALTER TABLE `aow_processed_aow_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aow_processed_aow_actions` (`aow_processed_id`,`aow_action_id`),
  ADD KEY `idx_actid_del_freid` (`aow_action_id`,`deleted`,`aow_processed_id`);

--
-- Indexes for table `aow_workflow`
--
ALTER TABLE `aow_workflow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_workflow_index_status` (`status`);

--
-- Indexes for table `aow_workflow_audit`
--
ALTER TABLE `aow_workflow_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aow_workflow_parent_id` (`parent_id`);

--
-- Indexes for table `bugs`
--
ALTER TABLE `bugs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bugsnumk` (`bug_number`),
  ADD KEY `bug_number` (`bug_number`),
  ADD KEY `idx_bug_name` (`name`),
  ADD KEY `idx_bugs_assigned_user` (`assigned_user_id`);

--
-- Indexes for table `bugs_audit`
--
ALTER TABLE `bugs_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bugs_parent_id` (`parent_id`);

--
-- Indexes for table `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_call_name` (`name`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_calls_date_start` (`date_start`),
  ADD KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Indexes for table `calls_contacts`
--
ALTER TABLE `calls_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_call_call` (`call_id`),
  ADD KEY `idx_con_call_con` (`contact_id`),
  ADD KEY `idx_call_contact` (`call_id`,`contact_id`);

--
-- Indexes for table `calls_leads`
--
ALTER TABLE `calls_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_call_call` (`call_id`),
  ADD KEY `idx_lead_call_lead` (`lead_id`),
  ADD KEY `idx_call_lead` (`call_id`,`lead_id`);

--
-- Indexes for table `calls_reschedule`
--
ALTER TABLE `calls_reschedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calls_reschedule_audit`
--
ALTER TABLE `calls_reschedule_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_calls_reschedule_parent_id` (`parent_id`);

--
-- Indexes for table `calls_users`
--
ALTER TABLE `calls_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usr_call_call` (`call_id`),
  ADD KEY `idx_usr_call_usr` (`user_id`),
  ADD KEY `idx_call_users` (`call_id`,`user_id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `camp_auto_tracker_key` (`tracker_key`),
  ADD KEY `idx_campaign_name` (`name`),
  ADD KEY `idx_survey_id` (`survey_id`);

--
-- Indexes for table `campaigns_audit`
--
ALTER TABLE `campaigns_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_campaigns_parent_id` (`parent_id`);

--
-- Indexes for table `campaign_log`
--
ALTER TABLE `campaign_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_camp_tracker` (`target_tracker_key`),
  ADD KEY `idx_camp_campaign_id` (`campaign_id`),
  ADD KEY `idx_camp_more_info` (`more_information`),
  ADD KEY `idx_target_id` (`target_id`),
  ADD KEY `idx_target_id_deleted` (`target_id`,`deleted`);

--
-- Indexes for table `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_tracker_key_idx` (`tracker_key`);

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `casesnumk` (`case_number`),
  ADD KEY `case_number` (`case_number`),
  ADD KEY `idx_case_name` (`name`),
  ADD KEY `idx_account_id` (`account_id`),
  ADD KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`);

--
-- Indexes for table `cases_audit`
--
ALTER TABLE `cases_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cases_parent_id` (`parent_id`);

--
-- Indexes for table `cases_bugs`
--
ALTER TABLE `cases_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cas_bug_cas` (`case_id`),
  ADD KEY `idx_cas_bug_bug` (`bug_id`),
  ADD KEY `idx_case_bug` (`case_id`,`bug_id`);

--
-- Indexes for table `cases_cstm`
--
ALTER TABLE `cases_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD KEY `idx_config_cat` (`category`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  ADD KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  ADD KEY `idx_reports_to_id` (`reports_to_id`),
  ADD KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  ADD KEY `idx_cont_assigned` (`assigned_user_id`);

--
-- Indexes for table `contacts_audit`
--
ALTER TABLE `contacts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_contacts_parent_id` (`parent_id`);

--
-- Indexes for table `contacts_bugs`
--
ALTER TABLE `contacts_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_bug_con` (`contact_id`),
  ADD KEY `idx_con_bug_bug` (`bug_id`),
  ADD KEY `idx_contact_bug` (`contact_id`,`bug_id`);

--
-- Indexes for table `contacts_cases`
--
ALTER TABLE `contacts_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_case_con` (`contact_id`),
  ADD KEY `idx_con_case_case` (`case_id`),
  ADD KEY `idx_contacts_cases` (`contact_id`,`case_id`);

--
-- Indexes for table `contacts_cstm`
--
ALTER TABLE `contacts_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `contacts_ssi_salary_slip_1_c`
--
ALTER TABLE `contacts_ssi_salary_slip_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_ssi_salary_slip_1_ida1` (`contacts_ssi_salary_slip_1contacts_ida`),
  ADD KEY `contacts_ssi_salary_slip_1_alt` (`contacts_ssi_salary_slip_1ssi_salary_slip_idb`);

--
-- Indexes for table `contacts_ssi_salary_structure_1_c`
--
ALTER TABLE `contacts_ssi_salary_structure_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_ssi_salary_structure_1_ida1` (`contacts_ssi_salary_structure_1contacts_ida`),
  ADD KEY `contacts_ssi_salary_structure_1_alt` (`contacts_ssi_salary_structure_1ssi_salary_structure_idb`);

--
-- Indexes for table `contacts_users`
--
ALTER TABLE `contacts_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_users_con` (`contact_id`),
  ADD KEY `idx_con_users_user` (`user_id`),
  ADD KEY `idx_contacts_users` (`contact_id`,`user_id`);

--
-- Indexes for table `cron_remove_documents`
--
ALTER TABLE `cron_remove_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cron_remove_document_bean_id` (`bean_id`),
  ADD KEY `idx_cron_remove_document_stamp` (`date_modified`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_currency_name` (`name`,`deleted`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD KEY `idx_beanid_set_num` (`bean_id`,`set_num`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_doc_cat` (`category_id`,`subcategory_id`);

--
-- Indexes for table `documents_accounts`
--
ALTER TABLE `documents_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  ADD KEY `documents_accounts_document_id` (`document_id`,`account_id`);

--
-- Indexes for table `documents_bugs`
--
ALTER TABLE `documents_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  ADD KEY `documents_bugs_document_id` (`document_id`,`bug_id`);

--
-- Indexes for table `documents_cases`
--
ALTER TABLE `documents_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_cases_case_id` (`case_id`,`document_id`),
  ADD KEY `documents_cases_document_id` (`document_id`,`case_id`);

--
-- Indexes for table `documents_contacts`
--
ALTER TABLE `documents_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  ADD KEY `documents_contacts_document_id` (`document_id`,`contact_id`);

--
-- Indexes for table `documents_opportunities`
--
ALTER TABLE `documents_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  ADD KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`);

--
-- Indexes for table `document_revisions`
--
ALTER TABLE `document_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentrevision_mimetype` (`file_mime_type`);

--
-- Indexes for table `eapm`
--
ALTER TABLE `eapm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`);

--
-- Indexes for table `emailman`
--
ALTER TABLE `emailman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  ADD KEY `idx_eman_campaign_id` (`campaign_id`),
  ADD KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_name` (`name`),
  ADD KEY `idx_message_id` (`message_id`),
  ADD KEY `idx_email_parent_id` (`parent_id`),
  ADD KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`),
  ADD KEY `idx_email_cat` (`category_id`),
  ADD KEY `idx_email_uid` (`uid`);

--
-- Indexes for table `emails_beans`
--
ALTER TABLE `emails_beans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emails_beans_bean_id` (`bean_id`),
  ADD KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`);

--
-- Indexes for table `emails_email_addr_rel`
--
ALTER TABLE `emails_email_addr_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  ADD KEY `idx_eearl_address_id` (`email_address_id`);

--
-- Indexes for table `emails_text`
--
ALTER TABLE `emails_text`
  ADD PRIMARY KEY (`email_id`),
  ADD KEY `emails_textfromaddr` (`from_addr`);

--
-- Indexes for table `email_addresses`
--
ALTER TABLE `email_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  ADD KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`);

--
-- Indexes for table `email_addresses_audit`
--
ALTER TABLE `email_addresses_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_addresses_parent_id` (`parent_id`);

--
-- Indexes for table `email_addr_bean_rel`
--
ALTER TABLE `email_addr_bean_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_address_id` (`email_address_id`),
  ADD KEY `idx_bean_id` (`bean_id`,`bean_module`);

--
-- Indexes for table `email_cache`
--
ALTER TABLE `email_cache`
  ADD KEY `idx_ie_id` (`ie_id`),
  ADD KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  ADD KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  ADD KEY `idx_mail_subj` (`subject`),
  ADD KEY `idx_mail_to` (`toaddr`);

--
-- Indexes for table `email_marketing`
--
ALTER TABLE `email_marketing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emmkt_name` (`name`),
  ADD KEY `idx_emmkit_del` (`deleted`);

--
-- Indexes for table `email_marketing_prospect_lists`
--
ALTER TABLE `email_marketing_prospect_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_template_name` (`name`);

--
-- Indexes for table `external_oauth_connections`
--
ALTER TABLE `external_oauth_connections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `external_oauth_providers`
--
ALTER TABLE `external_oauth_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fields_meta_data`
--
ALTER TABLE `fields_meta_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_meta_id_del` (`id`,`deleted`),
  ADD KEY `idx_meta_cm_del` (`custom_module`,`deleted`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_folder` (`parent_folder`);

--
-- Indexes for table `folders_rel`
--
ALTER TABLE `folders_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  ADD KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`);

--
-- Indexes for table `folders_subscriptions`
--
ALTER TABLE `folders_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`);

--
-- Indexes for table `fp_events`
--
ALTER TABLE `fp_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fp_events_audit`
--
ALTER TABLE `fp_events_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fp_events_parent_id` (`parent_id`);

--
-- Indexes for table `fp_events_contacts_c`
--
ALTER TABLE `fp_events_contacts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_contacts_alt` (`fp_events_contactsfp_events_ida`,`fp_events_contactscontacts_idb`);

--
-- Indexes for table `fp_events_fp_event_delegates_1_c`
--
ALTER TABLE `fp_events_fp_event_delegates_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_fp_event_delegates_1_ida1` (`fp_events_fp_event_delegates_1fp_events_ida`),
  ADD KEY `fp_events_fp_event_delegates_1_alt` (`fp_events_fp_event_delegates_1fp_event_delegates_idb`);

--
-- Indexes for table `fp_events_fp_event_locations_1_c`
--
ALTER TABLE `fp_events_fp_event_locations_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_fp_event_locations_1_alt` (`fp_events_fp_event_locations_1fp_events_ida`,`fp_events_fp_event_locations_1fp_event_locations_idb`);

--
-- Indexes for table `fp_events_leads_1_c`
--
ALTER TABLE `fp_events_leads_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_leads_1_alt` (`fp_events_leads_1fp_events_ida`,`fp_events_leads_1leads_idb`);

--
-- Indexes for table `fp_events_prospects_1_c`
--
ALTER TABLE `fp_events_prospects_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_prospects_1_alt` (`fp_events_prospects_1fp_events_ida`,`fp_events_prospects_1prospects_idb`);

--
-- Indexes for table `fp_event_locations`
--
ALTER TABLE `fp_event_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fp_event_locations_audit`
--
ALTER TABLE `fp_event_locations_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fp_event_locations_parent_id` (`parent_id`);

--
-- Indexes for table `fp_event_locations_fp_events_1_c`
--
ALTER TABLE `fp_event_locations_fp_events_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_event_locations_fp_events_1_ida1` (`fp_event_locations_fp_events_1fp_event_locations_ida`),
  ADD KEY `fp_event_locations_fp_events_1_alt` (`fp_event_locations_fp_events_1fp_events_idb`);

--
-- Indexes for table `import_maps`
--
ALTER TABLE `import_maps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`);

--
-- Indexes for table `inbound_email`
--
ALTER TABLE `inbound_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inbound_email_autoreply`
--
ALTER TABLE `inbound_email_autoreply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ie_autoreplied_to` (`autoreplied_to`);

--
-- Indexes for table `inbound_email_cache_ts`
--
ALTER TABLE `inbound_email_cache_ts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_address_cache`
--
ALTER TABLE `jjwg_address_cache`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_address_cache_audit`
--
ALTER TABLE `jjwg_address_cache_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_address_cache_parent_id` (`parent_id`);

--
-- Indexes for table `jjwg_areas`
--
ALTER TABLE `jjwg_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_areas_audit`
--
ALTER TABLE `jjwg_areas_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_areas_parent_id` (`parent_id`);

--
-- Indexes for table `jjwg_maps`
--
ALTER TABLE `jjwg_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_maps_audit`
--
ALTER TABLE `jjwg_maps_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_maps_parent_id` (`parent_id`);

--
-- Indexes for table `jjwg_maps_jjwg_areas_c`
--
ALTER TABLE `jjwg_maps_jjwg_areas_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jjwg_maps_jjwg_areas_alt` (`jjwg_maps_5304wg_maps_ida`,`jjwg_maps_41f2g_areas_idb`);

--
-- Indexes for table `jjwg_maps_jjwg_markers_c`
--
ALTER TABLE `jjwg_maps_jjwg_markers_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jjwg_maps_jjwg_markers_alt` (`jjwg_maps_b229wg_maps_ida`,`jjwg_maps_2e31markers_idb`);

--
-- Indexes for table `jjwg_markers`
--
ALTER TABLE `jjwg_markers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_markers_audit`
--
ALTER TABLE `jjwg_markers_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_markers_parent_id` (`parent_id`);

--
-- Indexes for table `job_queue`
--
ALTER TABLE `job_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  ADD KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  ADD KEY `idx_status_entered` (`status`,`date_entered`),
  ADD KEY `idx_status_modified` (`status`,`date_modified`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  ADD KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  ADD KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  ADD KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  ADD KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  ADD KEY `idx_lead_assigned` (`assigned_user_id`),
  ADD KEY `idx_lead_contact` (`contact_id`),
  ADD KEY `idx_reports_to` (`reports_to_id`),
  ADD KEY `idx_lead_phone_work` (`phone_work`),
  ADD KEY `idx_leads_id_del` (`id`,`deleted`);

--
-- Indexes for table `leads_audit`
--
ALTER TABLE `leads_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_leads_parent_id` (`parent_id`);

--
-- Indexes for table `leads_cstm`
--
ALTER TABLE `leads_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `linked_documents`
--
ALTER TABLE `linked_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mtg_name` (`name`),
  ADD KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  ADD KEY `idx_meet_date_start` (`date_start`);

--
-- Indexes for table `meetings_contacts`
--
ALTER TABLE `meetings_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_mtg_mtg` (`meeting_id`),
  ADD KEY `idx_con_mtg_con` (`contact_id`),
  ADD KEY `idx_meeting_contact` (`meeting_id`,`contact_id`);

--
-- Indexes for table `meetings_cstm`
--
ALTER TABLE `meetings_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `meetings_leads`
--
ALTER TABLE `meetings_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_meeting_meeting` (`meeting_id`),
  ADD KEY `idx_lead_meeting_lead` (`lead_id`),
  ADD KEY `idx_meeting_lead` (`meeting_id`,`lead_id`);

--
-- Indexes for table `meetings_users`
--
ALTER TABLE `meetings_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usr_mtg_mtg` (`meeting_id`),
  ADD KEY `idx_usr_mtg_usr` (`user_id`),
  ADD KEY `idx_meeting_users` (`meeting_id`,`user_id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_note_name` (`name`),
  ADD KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  ADD KEY `idx_note_contact` (`contact_id`),
  ADD KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Indexes for table `oauth2clients`
--
ALTER TABLE `oauth2clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth2tokens`
--
ALTER TABLE `oauth2tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_consumer`
--
ALTER TABLE `oauth_consumer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ckey` (`c_key`);

--
-- Indexes for table `oauth_nonce`
--
ALTER TABLE `oauth_nonce`
  ADD PRIMARY KEY (`conskey`,`nonce`),
  ADD KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`);

--
-- Indexes for table `oauth_tokens`
--
ALTER TABLE `oauth_tokens`
  ADD PRIMARY KEY (`id`,`deleted`),
  ADD KEY `oauth_state_ts` (`tstate`,`token_ts`),
  ADD KEY `constoken_key` (`consumer`);

--
-- Indexes for table `opportunities`
--
ALTER TABLE `opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_opp_name` (`name`),
  ADD KEY `idx_opp_assigned` (`assigned_user_id`),
  ADD KEY `idx_opp_id_deleted` (`id`,`deleted`);

--
-- Indexes for table `opportunities_audit`
--
ALTER TABLE `opportunities_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_opportunities_parent_id` (`parent_id`);

--
-- Indexes for table `opportunities_contacts`
--
ALTER TABLE `opportunities_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_opp_con` (`contact_id`),
  ADD KEY `idx_con_opp_opp` (`opportunity_id`),
  ADD KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`);

--
-- Indexes for table `opportunities_cstm`
--
ALTER TABLE `opportunities_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `outbound_email`
--
ALTER TABLE `outbound_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outbound_email_audit`
--
ALTER TABLE `outbound_email_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_outbound_email_parent_id` (`parent_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects_accounts`
--
ALTER TABLE `projects_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_acct_proj` (`project_id`),
  ADD KEY `idx_proj_acct_acct` (`account_id`),
  ADD KEY `projects_accounts_alt` (`project_id`,`account_id`);

--
-- Indexes for table `projects_bugs`
--
ALTER TABLE `projects_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_bug_proj` (`project_id`),
  ADD KEY `idx_proj_bug_bug` (`bug_id`),
  ADD KEY `projects_bugs_alt` (`project_id`,`bug_id`);

--
-- Indexes for table `projects_cases`
--
ALTER TABLE `projects_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_case_proj` (`project_id`),
  ADD KEY `idx_proj_case_case` (`case_id`),
  ADD KEY `projects_cases_alt` (`project_id`,`case_id`);

--
-- Indexes for table `projects_contacts`
--
ALTER TABLE `projects_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_con_proj` (`project_id`),
  ADD KEY `idx_proj_con_con` (`contact_id`),
  ADD KEY `projects_contacts_alt` (`project_id`,`contact_id`);

--
-- Indexes for table `projects_opportunities`
--
ALTER TABLE `projects_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_opp_proj` (`project_id`),
  ADD KEY `idx_proj_opp_opp` (`opportunity_id`),
  ADD KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`);

--
-- Indexes for table `projects_products`
--
ALTER TABLE `projects_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_prod_project` (`project_id`),
  ADD KEY `idx_proj_prod_product` (`product_id`),
  ADD KEY `projects_products_alt` (`project_id`,`product_id`);

--
-- Indexes for table `project_contacts_1_c`
--
ALTER TABLE `project_contacts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_contacts_1_alt` (`project_contacts_1project_ida`,`project_contacts_1contacts_idb`);

--
-- Indexes for table `project_cstm`
--
ALTER TABLE `project_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `project_task`
--
ALTER TABLE `project_task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_task_audit`
--
ALTER TABLE `project_task_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_project_task_parent_id` (`parent_id`);

--
-- Indexes for table `project_users_1_c`
--
ALTER TABLE `project_users_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_users_1_alt` (`project_users_1project_ida`,`project_users_1users_idb`);

--
-- Indexes for table `prospects`
--
ALTER TABLE `prospects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prospect_auto_tracker_key` (`tracker_key`),
  ADD KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  ADD KEY `idx_prospects_id_del` (`id`,`deleted`),
  ADD KEY `idx_prospects_assigned` (`assigned_user_id`);

--
-- Indexes for table `prospects_cstm`
--
ALTER TABLE `prospects_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `prospect_lists`
--
ALTER TABLE `prospect_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_prospect_list_name` (`name`);

--
-- Indexes for table `prospect_lists_prospects`
--
ALTER TABLE `prospect_lists_prospects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_plp_pro_id` (`prospect_list_id`,`deleted`),
  ADD KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`);

--
-- Indexes for table `prospect_list_campaigns`
--
ALTER TABLE `prospect_list_campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pro_id` (`prospect_list_id`),
  ADD KEY `idx_cam_id` (`campaign_id`),
  ADD KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`);

--
-- Indexes for table `relationships`
--
ALTER TABLE `relationships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rel_name` (`relationship_name`);

--
-- Indexes for table `releases`
--
ALTER TABLE `releases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_releases` (`name`,`deleted`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_reminder_name` (`name`),
  ADD KEY `idx_reminder_deleted` (`deleted`),
  ADD KEY `idx_reminder_related_event_module` (`related_event_module`),
  ADD KEY `idx_reminder_related_event_module_id` (`related_event_module_id`);

--
-- Indexes for table `reminders_invitees`
--
ALTER TABLE `reminders_invitees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_reminder_invitee_name` (`name`),
  ADD KEY `idx_reminder_invitee_assigned_user_id` (`assigned_user_id`),
  ADD KEY `idx_reminder_invitee_reminder_id` (`reminder_id`),
  ADD KEY `idx_reminder_invitee_related_invitee_module` (`related_invitee_module`),
  ADD KEY `idx_reminder_invitee_related_invitee_module_id` (`related_invitee_module_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_role_id_del` (`id`,`deleted`);

--
-- Indexes for table `roles_modules`
--
ALTER TABLE `roles_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_role_id` (`role_id`),
  ADD KEY `idx_module_id` (`module_id`);

--
-- Indexes for table `roles_users`
--
ALTER TABLE `roles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ru_role_id` (`role_id`),
  ADD KEY `idx_ru_user_id` (`user_id`);

--
-- Indexes for table `saved_search`
--
ALTER TABLE `saved_search`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_desc` (`name`,`deleted`);

--
-- Indexes for table `schedulers`
--
ALTER TABLE `schedulers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_schedule` (`date_time_start`,`deleted`);

--
-- Indexes for table `securitygroups`
--
ALTER TABLE `securitygroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `securitygroups_acl_roles`
--
ALTER TABLE `securitygroups_acl_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `securitygroups_audit`
--
ALTER TABLE `securitygroups_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_securitygroups_parent_id` (`parent_id`);

--
-- Indexes for table `securitygroups_default`
--
ALTER TABLE `securitygroups_default`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `securitygroups_records`
--
ALTER TABLE `securitygroups_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_securitygroups_records_mod` (`module`,`deleted`,`record_id`,`securitygroup_id`),
  ADD KEY `idx_securitygroups_records_del` (`deleted`,`record_id`,`module`,`securitygroup_id`);

--
-- Indexes for table `securitygroups_users`
--
ALTER TABLE `securitygroups_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `securitygroups_users_idxa` (`securitygroup_id`),
  ADD KEY `securitygroups_users_idxb` (`user_id`),
  ADD KEY `securitygroups_users_idxc` (`user_id`,`deleted`,`securitygroup_id`,`id`),
  ADD KEY `securitygroups_users_idxd` (`user_id`,`deleted`,`securitygroup_id`);

--
-- Indexes for table `spots`
--
ALTER TABLE `spots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ssi_holiday`
--
ALTER TABLE `ssi_holiday`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ssi_holiday_audit`
--
ALTER TABLE `ssi_holiday_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ssi_holiday_parent_id` (`parent_id`);

--
-- Indexes for table `ssi_leaves`
--
ALTER TABLE `ssi_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ssi_leaves_audit`
--
ALTER TABLE `ssi_leaves_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ssi_leaves_parent_id` (`parent_id`);

--
-- Indexes for table `ssi_salary_slip`
--
ALTER TABLE `ssi_salary_slip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ssi_salary_slip_audit`
--
ALTER TABLE `ssi_salary_slip_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ssi_salary_slip_parent_id` (`parent_id`);

--
-- Indexes for table `ssi_salary_structure`
--
ALTER TABLE `ssi_salary_structure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ssi_salary_structure_audit`
--
ALTER TABLE `ssi_salary_structure_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ssi_salary_structure_parent_id` (`parent_id`);

--
-- Indexes for table `ssi_salary_structure_ssi_salary_slip_1_c`
--
ALTER TABLE `ssi_salary_structure_ssi_salary_slip_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ssi_salary_structure_ssi_salary_slip_1_ida1` (`ssi_salary_structure_ssi_salary_slip_1ssi_salary_structure_ida`),
  ADD KEY `ssi_salary_structure_ssi_salary_slip_1_alt` (`ssi_salary_structure_ssi_salary_slip_1ssi_salary_slip_idb`);

--
-- Indexes for table `sugarfeed`
--
ALTER TABLE `sugarfeed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sgrfeed_date` (`date_entered`,`deleted`);

--
-- Indexes for table `surveyquestionoptions`
--
ALTER TABLE `surveyquestionoptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveyquestionoptions_audit`
--
ALTER TABLE `surveyquestionoptions_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyquestionoptions_parent_id` (`parent_id`);

--
-- Indexes for table `surveyquestionoptions_surveyquestionresponses`
--
ALTER TABLE `surveyquestionoptions_surveyquestionresponses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `surveyquestionoptions_surveyquestionresponses_alt` (`surveyq72c7options_ida`,`surveyq10d4sponses_idb`);

--
-- Indexes for table `surveyquestionresponses`
--
ALTER TABLE `surveyquestionresponses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveyquestionresponses_audit`
--
ALTER TABLE `surveyquestionresponses_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyquestionresponses_parent_id` (`parent_id`);

--
-- Indexes for table `surveyquestions`
--
ALTER TABLE `surveyquestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveyquestions_audit`
--
ALTER TABLE `surveyquestions_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyquestions_parent_id` (`parent_id`);

--
-- Indexes for table `surveyresponses`
--
ALTER TABLE `surveyresponses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveyresponses_audit`
--
ALTER TABLE `surveyresponses_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyresponses_parent_id` (`parent_id`);

--
-- Indexes for table `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveys_audit`
--
ALTER TABLE `surveys_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveys_parent_id` (`parent_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tsk_name` (`name`),
  ADD KEY `idx_task_con_del` (`contact_id`,`deleted`),
  ADD KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_task_assigned` (`assigned_user_id`),
  ADD KEY `idx_task_status` (`status`);

--
-- Indexes for table `templatesectionline`
--
ALTER TABLE `templatesectionline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracker`
--
ALTER TABLE `tracker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tracker_iid` (`item_id`),
  ADD KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  ADD KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  ADD KEY `idx_tracker_monitor_id` (`monitor_id`),
  ADD KEY `idx_tracker_date_modified` (`date_modified`);

--
-- Indexes for table `upgrade_history`
--
ALTER TABLE `upgrade_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`(30),`first_name`(30),`id`);

--
-- Indexes for table `users_feeds`
--
ALTER TABLE `users_feeds`
  ADD KEY `idx_ud_user_id` (`user_id`,`feed_id`);

--
-- Indexes for table `users_last_import`
--
ALTER TABLE `users_last_import`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`assigned_user_id`);

--
-- Indexes for table `users_password_link`
--
ALTER TABLE `users_password_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_username` (`username`);

--
-- Indexes for table `users_signatures`
--
ALTER TABLE `users_signatures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usersig_uid` (`user_id`);

--
-- Indexes for table `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_userprefnamecat` (`assigned_user_id`,`category`);

--
-- Indexes for table `vcals`
--
ALTER TABLE `vcals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vcal` (`type`,`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bugs`
--
ALTER TABLE `bugs`
  MODIFY `bug_number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `case_number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emailman`
--
ALTER TABLE `emailman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prospects`
--
ALTER TABLE `prospects`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker`
--
ALTER TABLE `tracker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=955;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
