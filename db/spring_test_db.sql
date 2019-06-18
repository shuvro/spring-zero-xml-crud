-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 18, 2019 at 07:33 AM
-- Server version: 5.7.26-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spring_test_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `ClientDetails`
--

CREATE TABLE `ClientDetails` (
  `appId` varchar(255) NOT NULL,
  `resourceIds` varchar(255) DEFAULT NULL,
  `appSecret` varchar(255) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `grantTypes` varchar(255) DEFAULT NULL,
  `redirectUrl` varchar(255) DEFAULT NULL,
  `authorities` varchar(255) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additionalInformation` varchar(4096) DEFAULT NULL,
  `autoApproveScopes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_token`
--

CREATE TABLE `oauth_access_token` (
  `token_id` varchar(255) DEFAULT NULL,
  `token` mediumblob,
  `authentication_id` varchar(255) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `authentication` mediumblob,
  `refresh_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_approvals`
--

CREATE TABLE `oauth_approvals` (
  `userId` varchar(255) DEFAULT NULL,
  `clientId` varchar(255) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `expiresAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastModifiedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_client_details`
--

CREATE TABLE `oauth_client_details` (
  `client_id` varchar(255) NOT NULL,
  `resource_ids` varchar(255) DEFAULT NULL,
  `client_secret` varchar(255) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `authorized_grant_types` varchar(255) DEFAULT NULL,
  `web_server_redirect_uri` varchar(255) DEFAULT NULL,
  `authorities` varchar(255) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_client_token`
--

CREATE TABLE `oauth_client_token` (
  `token_id` varchar(255) DEFAULT NULL,
  `token` mediumblob,
  `authentication_id` varchar(255) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_code`
--

CREATE TABLE `oauth_code` (
  `code` varchar(255) DEFAULT NULL,
  `authentication` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_token`
--

CREATE TABLE `oauth_refresh_token` (
  `token_id` varchar(255) DEFAULT NULL,
  `token` mediumblob,
  `authentication` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `first_name`, `last_name`, `user_name`) VALUES
(2, 'david.miller@example.com', 'Rasel', 'Miller', NULL),
(3, 'nicol.kidman@example.com', 'Nicol', 'Kidman', NULL),
(4, 'paul.smith@example.com', 'Paul', 'Smith', NULL),
(5, 'jhon.doe@example.com', 'Jhon', 'Doe', NULL),
(6, 'david.miller@example.com', 'David', 'Miller', NULL),
(7, 'nicol.kidman@example.com', 'Nicol', 'Kidman', NULL),
(8, 'paul.smith@example.com', 'Paul', 'Smith', NULL),
(9, 'jhon.doe@example.com', 'Jhon', 'Doe', NULL),
(10, 'david.miller@example.com', 'David', 'Miller', NULL),
(11, 'nicol.kidman@example.com', 'Nicol', 'Kidman', NULL),
(12, 'paul.smith@example.com', 'Paul', 'Smith', NULL),
(13, 'jhon.doe@example.com', 'Jhon', 'Doe', NULL),
(14, 'david.miller@example.com', 'David', 'Miller', NULL),
(15, 'nicol.kidman@example.com', 'Nicol', 'Kidman', NULL),
(16, 'paul.smith@example.com', 'Paul', 'Smith', NULL),
(17, 'jhon.doe@example.com', 'Jhon', 'Doe', NULL),
(18, 'david.miller@example.com', 'David', 'Miller', NULL),
(19, 'nicol.kidman@example.com', 'Nicol', 'Kidman', NULL),
(20, 'paul.smith@example.com', 'Paul', 'Smith', NULL),
(21, 'jhon.doe@example.com', 'Jhon', 'Doe', NULL),
(22, 'david.miller@example.com', 'David', 'Miller', NULL),
(23, 'nicol.kidman@example.com', 'Nicol', 'Kidman', NULL),
(24, 'paul.smith@example.com', 'Paul', 'Smith', NULL),
(25, 'jhon.doe@example.com', 'Jhon', 'Doe', NULL),
(26, 'david.miller@example.com', 'David', 'Miller', NULL),
(27, 'nicol.kidman@example.com', 'Nicol', 'Kidman', NULL),
(28, 'paul.smith@example.com', 'Paul', 'Smith', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ClientDetails`
--
ALTER TABLE `ClientDetails`
  ADD PRIMARY KEY (`appId`);

--
-- Indexes for table `oauth_access_token`
--
ALTER TABLE `oauth_access_token`
  ADD PRIMARY KEY (`authentication_id`);

--
-- Indexes for table `oauth_client_details`
--
ALTER TABLE `oauth_client_details`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `oauth_client_token`
--
ALTER TABLE `oauth_client_token`
  ADD PRIMARY KEY (`authentication_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
