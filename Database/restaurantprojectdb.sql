-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2024 at 05:28 PM
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
-- Database: `restaurantprojectdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add restaurant', 7, 'add_restaurant'),
(26, 'Can change restaurant', 7, 'change_restaurant'),
(27, 'Can delete restaurant', 7, 'delete_restaurant'),
(28, 'Can view restaurant', 7, 'view_restaurant');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'restaurantList_app', 'restaurant'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-11-05 20:23:34.374448'),
(2, 'auth', '0001_initial', '2024-11-05 20:23:35.302461'),
(3, 'admin', '0001_initial', '2024-11-05 20:23:35.518879'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-11-05 20:23:35.534505'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-11-05 20:23:35.562887'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-11-05 20:23:35.670029'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-11-05 20:23:35.772881'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-11-05 20:23:35.788506'),
(9, 'auth', '0004_alter_user_username_opts', '2024-11-05 20:23:35.815929'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-11-05 20:23:35.907238'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-11-05 20:23:35.907238'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-11-05 20:23:35.931321'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-11-05 20:23:35.955292'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-11-05 20:23:35.980714'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-11-05 20:23:36.012628'),
(16, 'auth', '0011_update_proxy_permissions', '2024-11-05 20:23:36.014768'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-11-05 20:23:36.040833'),
(18, 'restaurantList_app', '0001_initial', '2024-11-05 20:23:36.107963'),
(19, 'sessions', '0001_initial', '2024-11-05 20:23:36.181759');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `paymentId` int(11) NOT NULL,
  `reservationId` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `tableId` int(11) DEFAULT NULL,
  `restaurantId` bigint(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `startTime` datetime NOT NULL,
  `endTime` datetime NOT NULL,
  `status` enum('not confirmed','paid','canceled') DEFAULT 'not confirmed',
  `clientName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `tableId`, `restaurantId`, `phone`, `email`, `startTime`, `endTime`, `status`, `clientName`) VALUES
(23, 1, 1, '123-456-7890', 'john.doe@example.com', '2023-10-01 18:00:00', '2023-10-01 20:00:00', 'canceled', 'mohamed');

-- --------------------------------------------------------

--
-- Table structure for table `restaurantlist_app_restaurant`
--

CREATE TABLE `restaurantlist_app_restaurant` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `phone_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurantlist_app_restaurant`
--

INSERT INTO `restaurantlist_app_restaurant` (`id`, `name`, `address`, `city`, `country`, `phone_number`) VALUES
(1, 'Restaurant C', '202 Pine St', 'City5', 'Country5', '456-789-0123'),
(2, 'Restaurant A', '101 Maple St', 'City2', 'Country1', '345-678-9012'),
(3, 'Restaurant C', '789 Oak St', 'City2', 'Country1', '456-789-0123'),
(4, 'Restaurant C', '123 Main St', 'City1', 'Country5', '123-456-7890'),
(5, 'Restaurant E', '101 Maple St', 'City3', 'Country1', '456-789-0123'),
(6, 'Restaurant D', '456 Elm St', 'City1', 'Country5', '456-789-0123'),
(7, 'Restaurant C', '202 Pine St', 'City1', 'Country5', '234-567-8901'),
(8, 'Restaurant E', '202 Pine St', 'City2', 'Country1', '234-567-8901'),
(9, 'Restaurant C', '789 Oak St', 'City2', 'Country1', '567-890-1234'),
(10, 'Restaurant A', '101 Maple St', 'City2', 'Country3', '567-890-1234'),
(11, 'Restaurant B', '202 Pine St', 'City4', 'Country3', '456-789-0123'),
(12, 'Restaurant B', '202 Pine St', 'City4', 'Country54', '234-567-83901'),
(13, 'Restaurant A', '789 Oak St', 'City5', 'Country1', '234-567-8901'),
(14, 'Restaurant C', '789 Oak St', 'City4', 'Country5', '234-567-8901'),
(15, 'Restaurant C', '123 Main St', 'City1', 'Country2', '123-456-7890'),
(16, 'Restaurant D', '789 Oak St', 'City4', 'Country2', '234-567-8901'),
(17, 'Restaurant B', '456 Elm St', 'City2', 'Country5', '567-890-1234'),
(18, 'Restaurant B', '789 Oak St', 'City3', 'Country2', '345-678-9012'),
(19, 'Restaurant D', '123 Main St', 'City1', 'Country4', '456-789-0123'),
(20, 'Restaurant E', '202 Pine St', 'City3', 'Country2', '234-567-8901'),
(21, 'Restaurant E', '123 Main St', 'City4', 'Country1', '123-456-7890'),
(22, 'Restaurant B', '789 Oak St', 'City5', 'Country2', '456-789-0123'),
(23, 'Restaurant D', '101 Maple St', 'City3', 'Country5', '456-789-0123'),
(24, 'Restaurant D', '202 Pine St', 'City1', 'Country1', '234-567-8901'),
(25, 'Restaurant B', '123 Main St', 'City2', 'Country1', '567-890-1234'),
(26, 'Restaurant D', '101 Maple St', 'City4', 'Country1', '345-678-9012'),
(27, 'Restaurant B', '101 Maple St', 'City2', 'Country4', '123-456-7890'),
(28, 'Restaurant C', '202 Pine St', 'City5', 'Country5', '234-567-8901'),
(29, 'Restaurant E', '123 Main St', 'City1', 'Country5', '456-789-0123'),
(30, 'Restaurant B', '789 Oak St', 'City1', 'Country2', '234-567-8901'),
(31, 'Restaurant A', '456 Elm St', 'City5', 'Country3', '345-678-9012'),
(32, 'Restaurant B', '123 Main St', 'City2', 'Country2', '123-456-7890'),
(33, 'Restaurant E', '202 Pine St', 'City5', 'Country4', '456-789-0123'),
(34, 'Restaurant E', '123 Main St', 'City5', 'Country5', '123-456-7890'),
(35, 'Restaurant E', '101 Maple St', 'City1', 'Country4', '567-890-1234'),
(36, 'Restaurant E', '123 Main St', 'City1', 'Country4', '456-789-0123'),
(37, 'Restaurant D', '101 Maple St', 'City5', 'Country4', '456-789-0123'),
(38, 'Restaurant A', '456 Elm St', 'City2', 'Country5', '123-456-7890'),
(39, 'Restaurant A', '789 Oak St', 'City2', 'Country2', '234-567-8901'),
(40, 'Restaurant A', '456 Elm St', 'City5', 'Country3', '456-789-0123'),
(41, 'Restaurant B', '123 Main St', 'City4', 'Country2', '234-567-8901'),
(42, 'Restaurant D', '123 Main St', 'City3', 'Country2', '456-789-0123'),
(43, 'Restaurant E', '101 Maple St', 'City1', 'Country3', '567-890-1234'),
(44, 'Restaurant E', '101 Maple St', 'City1', 'Country1', '567-890-1234'),
(45, 'Restaurant C', '101 Maple St', 'City5', 'Country1', '567-890-1234'),
(46, 'Restaurant C', '101 Maple St', 'City3', 'Country1', '345-678-9012'),
(47, 'Restaurant B', '202 Pine St', 'City1', 'Country1', '345-678-9012'),
(48, 'Restaurant C', '789 Oak St', 'City3', 'Country4', '234-567-8901'),
(49, 'Restaurant D', '789 Oak St', 'City4', 'Country1', '567-890-1234'),
(50, 'Restaurant E', '101 Maple St', 'City2', 'Country1', '234-567-8901'),
(51, 'Restaurant C', '789 Oak St', 'City2', 'Country2', '567-890-1234'),
(52, 'Restaurant C', '456 Elm St', 'City2', 'Country3', '123-456-7890'),
(53, 'Restaurant D', '123 Main St', 'City3', 'Country1', '567-890-1234'),
(54, 'Restaurant C', '456 Elm St', 'City1', 'Country4', '123-456-7890'),
(55, 'Restaurant C', '101 Maple St', 'City2', 'Country1', '456-789-0123'),
(56, 'Restaurant C', '202 Pine St', 'City1', 'Country1', '123-456-7890'),
(57, 'Restaurant D', '789 Oak St', 'City2', 'Country1', '567-890-1234'),
(58, 'Restaurant D', '789 Oak St', 'City4', 'Country1', '567-890-1234'),
(59, 'Restaurant D', '123 Main St', 'City4', 'Country5', '123-456-7890'),
(60, 'Restaurant B', '101 Maple St', 'City2', 'Country3', '234-567-8901'),
(61, 'Restaurant B', '101 Maple St', 'City3', 'Country4', '123-456-7890'),
(62, 'Restaurant C', '456 Elm St', 'City3', 'Country3', '456-789-0123'),
(63, 'Restaurant D', '202 Pine St', 'City5', 'Country5', '345-678-9012'),
(64, 'Restaurant C', '202 Pine St', 'City1', 'Country3', '234-567-8901'),
(65, 'Restaurant A', '789 Oak St', 'City2', 'Country1', '234-567-8901'),
(66, 'Restaurant C', '123 Main St', 'City4', 'Country5', '567-890-1234'),
(67, 'Restaurant C', '101 Maple St', 'City2', 'Country3', '234-567-8901'),
(68, 'Restaurant D', '202 Pine St', 'City3', 'Country5', '456-789-0123'),
(69, 'Restaurant D', '789 Oak St', 'City2', 'Country5', '234-567-8901'),
(70, 'Restaurant B', '202 Pine St', 'City2', 'Country1', '345-678-9012'),
(71, 'Restaurant B', '202 Pine St', 'City4', 'Country2', '345-678-9012'),
(72, 'Restaurant A', '456 Elm St', 'City5', 'Country1', '234-567-8901'),
(73, 'Restaurant A', '789 Oak St', 'City5', 'Country3', '345-678-9012'),
(74, 'Restaurant D', '789 Oak St', 'City1', 'Country4', '234-567-8901'),
(75, 'Restaurant D', '789 Oak St', 'City5', 'Country4', '123-456-7890'),
(76, 'Restaurant D', '456 Elm St', 'City5', 'Country2', '456-789-0123'),
(77, 'Restaurant B', '202 Pine St', 'City2', 'Country5', '345-678-9012'),
(78, 'Restaurant E', '789 Oak St', 'City1', 'Country3', '456-789-0123'),
(79, 'Restaurant D', '202 Pine St', 'City3', 'Country5', '123-456-7890'),
(80, 'Restaurant B', '789 Oak St', 'City1', 'Country1', '567-890-1234'),
(81, 'Restaurant B', '101 Maple St', 'City3', 'Country4', '567-890-1234'),
(82, 'Restaurant B', '123 Main St', 'City5', 'Country3', '567-890-1234'),
(83, 'Restaurant B', '202 Pine St', 'City4', 'Country4', '567-890-1234'),
(84, 'Restaurant B', '202 Pine St', 'City4', 'Country1', '345-678-9012'),
(85, 'Restaurant D', '101 Maple St', 'City1', 'Country5', '234-567-8901'),
(86, 'Restaurant C', '123 Main St', 'City2', 'Country3', '456-789-0123'),
(87, 'Restaurant E', '123 Main St', 'City3', 'Country1', '123-456-7890'),
(88, 'Restaurant A', '202 Pine St', 'City4', 'Country3', '456-789-0123'),
(89, 'Restaurant E', '123 Main St', 'City5', 'Country2', '234-567-8901'),
(90, 'Restaurant B', '456 Elm St', 'City4', 'Country1', '123-456-7890'),
(91, 'Restaurant A', '101 Maple St', 'City5', 'Country1', '234-567-8901'),
(92, 'Restaurant B', '456 Elm St', 'City1', 'Country5', '456-789-0123'),
(93, 'Restaurant B', '123 Main St', 'City2', 'Country1', '456-789-0123'),
(94, 'Restaurant A', '789 Oak St', 'City3', 'Country4', '567-890-1234'),
(95, 'Restaurant B', '101 Maple St', 'City2', 'Country2', '345-678-9012'),
(96, 'Restaurant E', '202 Pine St', 'City5', 'Country5', '123-456-7890'),
(97, 'Restaurant C', '202 Pine St', 'City2', 'Country5', '456-789-0123'),
(98, 'Restaurant A', '456 Elm St', 'City3', 'Country1', '234-567-8901'),
(99, 'Restaurant D', '789 Oak St', 'City4', 'Country1', '234-567-8901'),
(100, 'Restaurant B', '101 Maple St', 'City5', 'Country4', '123-456-7890');

-- --------------------------------------------------------

--
-- Table structure for table `restuarant_table`
--

CREATE TABLE `restuarant_table` (
  `id` int(11) NOT NULL,
  `available` bit(1) NOT NULL,
  `num_of_chairs` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `restaurant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restuarant_table`
--

INSERT INTO `restuarant_table` (`id`, `available`, `num_of_chairs`, `number`, `position`, `restaurant_id`) VALUES
(1, b'1', 4, 1, 'outside', 1),
(2, b'1', 4, 3, 'outside', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservationId` (`reservationId`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tableId` (`tableId`),
  ADD KEY `fk2` (`restaurantId`);

--
-- Indexes for table `restaurantlist_app_restaurant`
--
ALTER TABLE `restaurantlist_app_restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restuarant_table`
--
ALTER TABLE `restuarant_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `restaurantlist_app_restaurant`
--
ALTER TABLE `restaurantlist_app_restaurant`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `restuarant_table`
--
ALTER TABLE `restuarant_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`reservationId`) REFERENCES `reservations` (`id`);

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `fk2` FOREIGN KEY (`restaurantId`) REFERENCES `restaurantlist_app_restaurant` (`id`),
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`tableId`) REFERENCES `restuarant_table` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
