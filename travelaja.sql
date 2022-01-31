-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 31, 2022 at 07:19 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travelaja`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `travel_packages_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'assets/gallery/fm47pfLyQCdihtKX5M66Ixci8t2KJYQ1WyDTAzyo.png', NULL, '2021-07-12 21:27:09', '2021-07-17 20:21:51'),
(2, 4, 'assets/gallery/lBDsSSlxSEVM4vHJncgSyQ6nn8IeEkKLEiJ9n0Ya.png', NULL, '2021-07-12 21:32:57', '2022-01-30 23:15:31'),
(3, 4, 'assets/gallery/c9tztNDzOSTQdhWtwVMSTLeUe3ArTDabMFlkLRWO.png', NULL, '2021-07-12 22:24:39', '2022-01-30 23:15:41'),
(4, 2, 'assets/gallery/zyWZKU6bC40kbzumurv0smdAmmstc9ibI9DLSPto.png', NULL, '2021-07-17 20:21:59', '2021-07-17 20:21:59'),
(5, 3, 'assets/gallery/sbbyU8JR2xG1T5jIWKJMWieKmlOmV9VUmTylAeJQ.png', NULL, '2021-07-17 20:22:06', '2021-07-17 20:22:06'),
(6, 4, 'assets/gallery/fquJ9Avyj39ZqUHifyHv70GK0snHkHbtWwv4lTmQ.png', NULL, '2021-07-17 20:22:12', '2021-07-17 20:22:12'),
(7, 1, 'assets/gallery/2Krz4F8XZUy5bxkZwQ2TLAqwA0LZMNI0KNuUNaqX.png', NULL, '2021-07-17 20:54:25', '2021-07-17 20:54:25'),
(8, 1, 'assets/gallery/JCSFyHmrsOSaD3KtdutxHCZ55EEWKG9qyxuyge8w.png', NULL, '2021-07-17 20:54:37', '2021-07-17 20:54:56'),
(9, 1, 'assets/gallery/p6bAYaOtCOtwERfL1hlL84tB683Fa5hHj3JfdBct.png', NULL, '2021-07-17 20:55:06', '2021-07-17 20:55:06'),
(10, 2, 'assets/gallery/8J29rrrHnCuedGvVJszeZ1vC3WS01tvdYnuiO4qQ.jpg', NULL, '2021-12-08 06:43:37', '2021-12-08 06:44:02'),
(11, 1, 'assets/gallery/MNUoOAm9xb6KMZiHRlriFAOiPGfJQ10LJdk42Km8.jpg', NULL, '2021-12-19 22:57:11', '2021-12-19 22:57:11');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2021_07_10_084534_create_travel_packages_table', 1),
(9, '2021_07_10_085718_create_galleries_table', 2),
(10, '2021_07_10_090156_create_transactions_table', 3),
(11, '2021_07_10_090710_create_transaction_details_table', 4),
(12, '2021_07_10_110614_add_roles_field_to_users_table', 5),
(13, '2021_07_12_042710_add_username_field_to_users_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `additional_visa` int(11) NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `travel_packages_id`, `users_id`, `additional_visa`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 4, 4, 190, 290, 'SUCCESS', NULL, '2021-07-12 23:39:04', '2021-07-17 01:46:55'),
(2, 4, 2, 0, 50, 'IN_CART', NULL, '2021-07-17 22:36:28', '2021-07-17 22:36:28'),
(3, 4, 2, 0, 50, 'IN_CART', NULL, '2021-07-17 22:36:52', '2021-07-17 22:36:52'),
(4, 2, 2, 0, 90, 'IN_CART', NULL, '2021-07-17 22:37:01', '2021-07-17 22:37:01'),
(5, 1, 2, 0, 100, 'PENDING', NULL, '2021-07-17 22:37:07', '2021-07-17 23:15:33'),
(6, 1, 2, 380, 680, 'PENDING', NULL, '2021-07-17 23:17:47', '2021-07-17 23:18:40'),
(7, 5, 2, 0, 98, 'PENDING', NULL, '2021-11-22 21:59:38', '2021-11-22 21:59:42'),
(8, 4, 2, 0, 50, 'PENDING', NULL, '2021-11-26 04:44:19', '2021-11-26 04:44:20'),
(9, 1, 3, 0, 100, 'IN_CART', NULL, '2022-01-30 18:23:30', '2022-01-30 18:23:30'),
(10, 1, 3, 0, 100, 'IN_CART', NULL, '2022-01-30 18:23:48', '2022-01-30 18:23:48'),
(11, 1, 4, 0, 100, 'PENDING', NULL, '2022-01-30 18:24:58', '2022-01-30 18:25:19'),
(12, 1, 4, 0, 100, 'PENDING', NULL, '2022-01-30 18:27:27', '2022-01-30 18:27:31'),
(13, 1, 4, 0, 100, 'IN_CART', NULL, '2022-01-30 18:27:57', '2022-01-30 18:27:57');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_visa` tinyint(1) NOT NULL,
  `doe_passport` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `username`, `nationality`, `is_visa`, `doe_passport`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'gundul user', 'ID', 1, '2021-07-13', NULL, NULL, NULL),
(2, 3, 'redha al fath', 'ID', 0, '2026-07-18', NULL, '2021-07-17 22:36:52', '2021-07-17 22:36:52'),
(3, 4, 'redha al fath', 'ID', 0, '2026-07-18', NULL, '2021-07-17 22:37:01', '2021-07-17 22:37:01'),
(4, 5, 'redha al fath', 'ID', 0, '2026-07-18', NULL, '2021-07-17 22:37:07', '2021-07-17 22:37:07'),
(5, 5, 'gundul user', 'CN', 1, '2021-07-31', '2021-07-17 23:13:08', '2021-07-17 23:01:25', '2021-07-17 23:13:08'),
(6, 5, 'al fath tata redha', 'SG', 0, '2021-07-31', '2021-07-17 23:15:26', '2021-07-17 23:15:22', '2021-07-17 23:15:26'),
(7, 6, 'redha al fath', 'ID', 0, '2026-07-18', NULL, '2021-07-17 23:17:47', '2021-07-17 23:17:47'),
(8, 6, 'gundul user', 'CN', 1, '2021-07-22', NULL, '2021-07-17 23:18:01', '2021-07-17 23:18:01'),
(9, 6, 'al fath tata redha', 'SG', 1, '2021-07-31', NULL, '2021-07-17 23:18:29', '2021-07-17 23:18:29'),
(10, 7, 'redha al fath', 'ID', 0, '2026-11-23', NULL, '2021-11-22 21:59:38', '2021-11-22 21:59:38'),
(11, 8, 'redha al fath', 'ID', 0, '2026-11-26', NULL, '2021-11-26 04:44:19', '2021-11-26 04:44:19'),
(12, 9, '', 'ID', 0, '2027-01-31', NULL, '2022-01-30 18:23:30', '2022-01-30 18:23:30'),
(13, 10, '', 'ID', 0, '2027-01-31', NULL, '2022-01-30 18:23:48', '2022-01-30 18:23:48'),
(14, 11, 'gundul user', 'ID', 0, '2027-01-31', NULL, '2022-01-30 18:24:58', '2022-01-30 18:24:58'),
(15, 12, 'gundul user', 'ID', 0, '2027-01-31', NULL, '2022-01-30 18:27:27', '2022-01-30 18:27:27'),
(16, 13, 'gundul user', 'ID', 0, '2027-01-31', NULL, '2022-01-30 18:27:57', '2022-01-30 18:27:57');

-- --------------------------------------------------------

--
-- Table structure for table `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8_unicode_ci NOT NULL,
  `featured_event` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `languages` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foods` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `departur_date` date NOT NULL,
  `duration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `title`, `slug`, `location`, `about`, `featured_event`, `languages`, `foods`, `departur_date`, `duration`, `type`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'daratan', 'daratan', 'Bali', 'Liburan Enak', 'Joget', 'Indonesia', 'Martabak', '2021-07-21', '2D', 'Open Trip', 100, NULL, '2021-07-12 01:43:24', '2021-12-19 22:56:35'),
(2, 'Pari', 'pari', 'Bogor', 'Borobudur Temple', 'Tari', 'Indonesia', 'Sego Ruwet', '2021-07-21', '2D', 'Open Trip', 90, NULL, '2021-07-12 01:44:41', '2021-07-17 20:20:28'),
(3, 'Prambanan', 'prambanan', 'Sleman', 'Nusa Panida', 'Trip', 'Indonesia', 'Stake', '2021-07-22', '1D', 'Open Trip', 100, NULL, '2021-07-12 02:07:11', '2021-07-17 20:20:38'),
(4, 'Borobudur', 'borobudur', 'Magelang', 'Malioboro', 'Pentras Seni', 'Indonesia', 'Gudeg', '2021-07-26', '2D', 'Open Trip', 50, NULL, '2021-07-12 02:12:06', '2021-07-17 20:20:49'),
(5, 'lawang sewu', 'lawangsewu', 'semarang', 'tempat bersejarah', 'hantu', 'indonesia', 'lumpia', '2021-07-14', '2D', 'Open', 98, '2022-01-30 23:16:13', NULL, '2022-01-30 23:16:13'),
(6, 'daratan', 'daratan', 'daratan', 'asdasd', 'asd', 'asd', 'asd', '2021-12-15', '1D', '2', 12, '2022-01-30 23:16:17', '2021-12-19 22:56:25', '2022-01-30 23:16:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'USER',
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`, `username`) VALUES
(1, 'Al Fath', 'alfath@gmail.com', '2022-01-15 06:08:40', '$2y$10$oo4te8vwjv.BlyvHwlje1.LP8WQKpQgSx/tHxfxugIrSRPIcSuwTq', 'flL8cdYtI6HpJfiuwVc3fhM2glrFrMSCGC7Cqg52e4xJm1f8WKB2H015thHn', '2021-07-11 20:51:26', '2021-07-11 20:56:02', 'ADMIN', 'al fath tata redha'),
(2, 'redha', 'redha@gmail.com', '2021-07-17 22:20:10', '$2y$10$oo4te8vwjv.BlyvHwlje1.LP8WQKpQgSx/tHxfxugIrSRPIcSuwTq', 'mbHh9eSeEnWnTSMHK3BGK7gBIWmL7LJxpMEEHqs7UNNU3hpiZbD7s2MibPeK', '2021-07-11 20:58:43', '2021-07-17 22:20:10', 'ADMIN', 'redha al fath'),
(3, 'Tata Redha Al Fath', 'tataredhaalfath13@gmail.com', '2021-07-11 21:15:47', '$2y$10$oo4te8vwjv.BlyvHwlje1.LP8WQKpQgSx/tHxfxugIrSRPIcSuwTq', NULL, '2021-07-11 21:14:10', '2021-07-11 21:15:47', 'USER', ''),
(4, 'gundul', 'gundul@gmail.com', '2022-01-06 01:24:50', '$2y$10$oo4te8vwjv.BlyvHwlje1.LP8WQKpQgSx/tHxfxugIrSRPIcSuwTq', NULL, '2021-07-11 21:34:41', '2021-07-11 21:34:41', 'USER', 'gundul user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_packages`
--
ALTER TABLE `travel_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
