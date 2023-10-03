-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2023 at 07:13 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `urlshortner`
--

-- --------------------------------------------------------

--
-- Table structure for table `countclikedurls`
--

CREATE TABLE `countclikedurls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `url_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countclikedurls`
--

INSERT INTO `countclikedurls` (`id`, `user_id`, `url_id`, `created_at`, `updated_at`) VALUES
(108, 2, 6, '2023-09-25 19:11:10', '2023-09-25 19:11:10'),
(109, 2, 5, '2023-09-25 19:12:46', '2023-09-25 19:12:46'),
(110, 2, 5, '2023-09-25 19:13:19', '2023-09-25 19:13:19'),
(111, 2, 6, '2023-09-25 19:17:44', '2023-09-25 19:17:44'),
(112, 2, 5, '2023-09-25 19:17:49', '2023-09-25 19:17:49'),
(113, 2, 6, '2023-09-25 19:18:33', '2023-09-25 19:18:33'),
(114, 2, 5, '2023-09-25 19:20:20', '2023-09-25 19:20:20'),
(115, 2, 6, '2023-09-25 19:21:53', '2023-09-25 19:21:53'),
(116, 2, 5, '2023-09-25 19:22:00', '2023-09-25 19:22:00'),
(117, 2, 7, '2023-09-25 19:39:00', '2023-09-25 19:39:00'),
(118, 3, 8, '2023-09-25 19:42:22', '2023-09-25 19:42:22'),
(119, 3, 9, '2023-09-25 19:54:26', '2023-09-25 19:54:26'),
(120, 1, 4, '2023-09-25 19:58:51', '2023-09-25 19:58:51'),
(121, 1, 1, '2023-09-25 20:32:17', '2023-09-25 20:32:17'),
(122, 1, 2, '2023-09-26 01:27:37', '2023-09-26 01:27:37'),
(123, 1, 3, '2023-09-26 01:29:09', '2023-09-26 01:29:09'),
(124, 1, 11, '2023-09-26 01:47:32', '2023-09-26 01:47:32'),
(125, 1, 1, '2023-09-30 08:23:17', '2023-09-30 08:23:17'),
(126, 1, 12, '2023-09-30 09:03:32', '2023-09-30 09:03:32');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(26, '2014_10_12_000000_create_users_table', 1),
(27, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(28, '2014_10_12_100000_create_password_resets_table', 1),
(29, '2019_08_19_000000_create_failed_jobs_table', 1),
(30, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(31, '2023_09_25_170250_create_urls_table', 1),
(32, '2023_09_25_190508_create_countclikedurls_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `urls`
--

CREATE TABLE `urls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `longurl` varchar(255) NOT NULL,
  `shorturl` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `urls`
--

INSERT INTO `urls` (`id`, `user_id`, `longurl`, `shorturl`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://docs.google.com/spreadsheets/d/1vprpz__BgDYpS6woAZod1xUc76eETPRRw3EsIg7R-Zk/edit#gid=0', 'qbCWg', '2023-09-25 17:02:27', '2023-09-25 17:02:27'),
(2, 1, 'https://www.google.com/', 'k1pZe', '2023-09-25 17:09:43', '2023-09-25 17:09:43'),
(3, 1, 'https://www.google.com/', 'tGDQm', '2023-09-25 17:12:29', '2023-09-25 17:12:29'),
(4, 1, 'https://www.google.com/', '1Iuwr', '2023-09-25 17:28:46', '2023-09-25 17:28:46'),
(5, 2, 'https://docs.google.com/spreadsheets/d/1vprpz__BgDYpS6woAZod1xUc76eETPRRw3EsIg7R-Zk/edit#gid=0', 'oUo1k', '2023-09-25 17:30:55', '2023-09-25 17:30:55'),
(6, 2, 'https://www.google.com/', 'MFDPR', '2023-09-25 18:22:26', '2023-09-25 18:22:26'),
(7, 2, 'https://www.netflix.com/browse', 'Tt3kr', '2023-09-25 19:38:56', '2023-09-25 19:38:56'),
(8, 3, 'https://docs.google.com/spreadsheets/d/1vprpz__BgDYpS6woAZod1xUc76eETPRRw3EsIg7R-Zk/edit#gid=0', 'gn8wk', '2023-09-25 19:42:19', '2023-09-25 19:42:19'),
(9, 3, 'https://www.netflix.com/browse', 'https://shorturl/Rsetr', '2023-09-25 19:54:17', '2023-09-25 19:54:17'),
(10, 1, 'https://docs.google.com/spreadsheets/d/1vprpz__BgDYpS6woAZod1xUc76eETPRRw3EsIg7R-Zk/edit#gid=0', 'https://localhost/27LgS', '2023-09-25 20:42:54', '2023-09-25 20:42:54'),
(11, 1, 'https://www.netflix.com/browse', 'https://localhost/Ldkbj', '2023-09-26 01:47:28', '2023-09-26 01:47:28'),
(12, 1, 'https://www.google.com/', 'https://localhost/1Iib7', '2023-09-30 09:03:29', '2023-09-30 09:03:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Tanvir Ahmed', 'tanvir.rafee405@gmail.com', NULL, '$2y$10$4daGpaC6JBwvPBiQM3rV/OPXxUgyAd5X2EaM13XWVc4H7nl0kPrmy', NULL, '2023-09-25 17:02:20', '2023-09-25 17:02:20'),
(2, 'Tanvir Ahmed', 'tanvir.rafee404@gmail.com', NULL, '$2y$10$3V91cu5/VPPiuVavRGDvwuP14cvFiT8EcJUmL1y.xdncaezBB3Moe', NULL, '2023-09-25 17:30:51', '2023-09-25 17:30:51'),
(3, 'Tanvir', 'tanvir.rafee403@gmail.com', NULL, '$2y$10$G9E3P.UJ4brzEnp2dhWq7OP72soO5WwXsmbdmEPLaAlNXhTOWwP4q', NULL, '2023-09-25 19:42:12', '2023-09-25 19:42:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countclikedurls`
--
ALTER TABLE `countclikedurls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countclikedurls_user_id_foreign` (`user_id`),
  ADD KEY `countclikedurls_url_id_foreign` (`url_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `urls`
--
ALTER TABLE `urls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `urls_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `countclikedurls`
--
ALTER TABLE `countclikedurls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `urls`
--
ALTER TABLE `urls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `countclikedurls`
--
ALTER TABLE `countclikedurls`
  ADD CONSTRAINT `countclikedurls_url_id_foreign` FOREIGN KEY (`url_id`) REFERENCES `urls` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `countclikedurls_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `urls`
--
ALTER TABLE `urls`
  ADD CONSTRAINT `urls_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
