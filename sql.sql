-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2021 at 03:24 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weathercity`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lugares`
--

CREATE TABLE `lugares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pais` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lugares`
--

INSERT INTO `lugares` (`id`, `pais`, `ciudad`, `created_at`, `updated_at`) VALUES
(2, 'Estados Unidos', 'Miami', '2021-08-15 23:26:58', '2021-08-15 23:26:58'),
(3, 'Estados Unidos', 'Orlando', '2021-08-15 23:32:06', '2021-08-15 23:32:06'),
(4, 'Estados Unidos', 'New York ', '2021-08-15 23:32:06', '2021-08-15 23:32:06');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2021_08_15_225020_create_lugares_table', 1),
(10, '2021_08_15_225048_create_reportes_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reportes`
--

CREATE TABLE `reportes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pais` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `humidity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reportes`
--

INSERT INTO `reportes` (`id`, `pais`, `ciudad`, `main`, `description`, `icon`, `humidity`, `lon`, `lat`, `created_at`, `updated_at`) VALUES
(2, 'US', 'Orlando', 'Clouds', 'scattered clouds', '03d', '77', '-81.3792', '28.5383', '2021-08-16 19:28:32', '2021-08-16 19:28:32'),
(3, 'US', 'Orlando', 'Clouds', 'broken clouds', '04d', '71', '-81.3792', '28.5383', '2021-08-16 21:50:20', '2021-08-16 21:50:20'),
(4, 'US', 'Miami', 'Clouds', 'scattered clouds', '03d', '69', '-80.1937', '25.7743', '2021-08-16 21:50:41', '2021-08-16 21:50:41'),
(5, 'US', 'Orlando', 'Clouds', 'broken clouds', '04d', '68', '-81.3792', '28.5383', '2021-08-16 22:50:09', '2021-08-16 22:50:09'),
(6, 'US', 'New York', 'Clouds', 'scattered clouds', '03d', '54', '-74.006', '40.7143', '2021-08-16 22:50:33', '2021-08-16 22:50:33'),
(7, 'US', 'New York', 'Clouds', 'scattered clouds', '03d', '54', '-74.006', '40.7143', '2021-08-16 23:45:09', '2021-08-16 23:45:09'),
(8, 'US', 'Orlando', 'Clouds', 'few clouds', '02d', '63', '-81.3792', '28.5383', '2021-08-16 23:45:47', '2021-08-16 23:45:47'),
(9, 'US', 'Orlando', 'Clouds', 'few clouds', '02d', '63', '-81.3792', '28.5383', '2021-08-16 23:46:05', '2021-08-16 23:46:05'),
(10, 'US', 'Orlando', 'Clouds', 'broken clouds', '04d', '66', '-81.3792', '28.5383', '2021-08-17 02:08:14', '2021-08-17 02:08:14'),
(11, 'US', 'Orlando', 'Clouds', 'broken clouds', '04n', '70', '-81.3792', '28.5383', '2021-08-17 05:57:00', '2021-08-17 05:57:00'),
(12, 'US', 'Miami', 'Clouds', 'overcast clouds', '04n', '79', '-80.1937', '25.7743', '2021-08-17 06:11:40', '2021-08-17 06:11:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ethan O\'Keefe', 'chelsey54@example.org', '2021-08-16 04:06:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jHkCCaTuME', '2021-08-16 04:06:45', '2021-08-16 04:06:45'),
(2, 'Lelah Gaylord', 'eleazar66@example.net', '2021-08-16 04:06:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WiUKTrGvbs', '2021-08-16 04:06:45', '2021-08-16 04:06:45'),
(3, 'Dr. Armando Dietrich Sr.', 'luz.hackett@example.net', '2021-08-16 04:06:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GbK7jaHGlV', '2021-08-16 04:06:45', '2021-08-16 04:06:45'),
(4, 'Elta Shanahan', 'fbotsford@example.com', '2021-08-16 04:06:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BnRU0pJibD', '2021-08-16 04:06:45', '2021-08-16 04:06:45'),
(5, 'Rafael Jones', 'crooks.ezra@example.com', '2021-08-16 04:06:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0G34qWH6Ms', '2021-08-16 04:06:45', '2021-08-16 04:06:45'),
(6, 'Winona Nienow', 'monserrat.wiegand@example.com', '2021-08-16 04:06:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'utdXIkauia', '2021-08-16 04:06:45', '2021-08-16 04:06:45'),
(7, 'Megane Rodriguez I', 'nicolette64@example.com', '2021-08-16 04:06:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'E9B1LVJyKw', '2021-08-16 04:06:45', '2021-08-16 04:06:45'),
(8, 'Keagan Hill', 'matteo10@example.com', '2021-08-16 04:06:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aibGNrV0fv', '2021-08-16 04:06:45', '2021-08-16 04:06:45'),
(9, 'Christop Bergstrom', 'hoppe.kayli@example.org', '2021-08-16 04:06:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wcg6iEfKPk', '2021-08-16 04:06:45', '2021-08-16 04:06:45'),
(10, 'Mr. Andres Purdy', 'bernhard.juston@example.net', '2021-08-16 04:06:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aMYkWnOjkn', '2021-08-16 04:06:45', '2021-08-16 04:06:45'),
(11, 'Amely Russel', 'wiza.winona@example.net', '2021-08-16 04:06:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6oRCkTV3Ks', '2021-08-16 04:06:45', '2021-08-16 04:06:45'),
(12, 'Else Mann', 'fausto69@example.org', '2021-08-16 04:06:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iTBFqQwkxR', '2021-08-16 04:06:45', '2021-08-16 04:06:45'),
(13, 'Verla Borer', 'kory.hoeger@example.com', '2021-08-16 04:06:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SXNBBNSIHH', '2021-08-16 04:06:45', '2021-08-16 04:06:45'),
(14, 'Maude Dicki', 'terrill.graham@example.net', '2021-08-16 04:06:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'c1mMtfRs5d', '2021-08-16 04:06:45', '2021-08-16 04:06:45'),
(15, 'Chesley Schmidt', 'jakubowski.elton@example.net', '2021-08-16 04:06:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4kByu5qAH9', '2021-08-16 04:06:45', '2021-08-16 04:06:45'),
(16, 'May Welch', 'jedidiah07@example.com', '2021-08-16 04:06:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OBPTRTemKJ', '2021-08-16 04:06:45', '2021-08-16 04:06:45'),
(17, 'Dr. Collin Hessel I', 'ezekiel32@example.net', '2021-08-16 04:06:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M7mlNC9o4k', '2021-08-16 04:06:45', '2021-08-16 04:06:45'),
(18, 'Mr. Horace Hoppe II', 'era62@example.com', '2021-08-16 04:06:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AX2HKr1Eh8', '2021-08-16 04:06:45', '2021-08-16 04:06:45'),
(19, 'Michelle Deckow DDS', 'tbeier@example.org', '2021-08-16 04:06:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LDxGA50Dca', '2021-08-16 04:06:45', '2021-08-16 04:06:45'),
(20, 'Prof. Roger Littel Sr.', 'qweissnat@example.net', '2021-08-16 04:06:45', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hYFQDKtkE9', '2021-08-16 04:06:45', '2021-08-16 04:06:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `lugares`
--
ALTER TABLE `lugares`
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
-- Indexes for table `reportes`
--
ALTER TABLE `reportes`
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
-- AUTO_INCREMENT for table `lugares`
--
ALTER TABLE `lugares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reportes`
--
ALTER TABLE `reportes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
