-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2023 at 01:35 AM
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
-- Database: `laravel_lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `details`, `status`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'Dune', 'one of the bestselling science fiction novels of all time', 'Available', NULL, '2023-09-06 18:33:08', 1),
(2, 'Little fires Everywhere', 'It\'s a deep psychological mystery about the power of motherhood', 'NA', NULL, '2023-09-07 20:27:09', 1),
(3, 'fix me a plate', 'Cooking book', 'Available', NULL, '2023-09-06 18:06:34', 3),
(4, 'Atomic Habits', 'Self-Help', 'Available', NULL, '2023-09-06 22:20:30', 7),
(5, 'Then signs my soul', 'Stories show the emotion and drama behind the hymns of faith that have changed many lives throughout history', 'Available', NULL, '2023-09-06 19:18:07', 2),
(6, 'lemon, love & olive oil', 'Cooking book', 'NA', NULL, '2023-09-07 17:44:28', 3),
(7, 'joy of cooking', 'Cookbook includes complete range of recipes ', 'NA', NULL, '2023-09-07 17:44:34', 3),
(8, 'Think and Grow Rich', 'The first book to boldly ask , what makes a winner', 'Available', NULL, '2023-09-06 22:23:25', 9),
(9, 'The power of habit', 'Explores how we can change our lives by changing our habits', 'Available', NULL, '2023-09-06 18:56:50', 9),
(10, 'Into the Wild', 'A young man from a well-to-do family hitchhiked to Alaska and walked alone into the wilderness north of Mt. McKinley. Four months later, his decomposed body was found by a moose hunter', 'Available', NULL, '2023-09-06 19:09:06', 8),
(11, 'Don\'t make me Think', 'Don\'t be surprised if it completely changes the way you think about Web design', 'NA', NULL, '2023-09-06 23:40:00', 6),
(12, 'The Walls Inside Us', 'This book is about getting to know oneself, not the self that one should be, but the self that one truly is.', 'NA', NULL, '2023-09-07 17:45:18', 13),
(13, 'Inclusion', 'This book will teach you how to be more empathetic, accepting, and socially aware, so you can create a more inclusive work environment—starting with yourself.', 'NA', NULL, '2023-09-07 17:45:08', 13),
(14, 'Wings of Fire', 'The war between the tribes is finally over, and now the dragonets of the prophecy have a plan for lasting peace', 'Available', NULL, '2023-09-06 23:39:21', 10),
(15, 'Practice Makes Perfect', 'A small-town sweetheart and an emotionally unavailable bad boy try to find some common ground in this chemistry-filled romance from the author of The Cheat Sheet and When in Rome.', 'Available', NULL, '2023-09-06 21:40:21', 4),
(16, 'TimeLines of ART', 'This beautiful book brings you the very best of art throughout history – using a truly innovative timeline-led approach.', 'Available', NULL, NULL, 2),
(17, 'On Trust', 'Trust is the basis for all that we do as leaders and as organizations. Employees who trust their employers are more productive and creative. Businesses that earn their customers’ trust maintain better relationships and reap better results.', 'Available', NULL, NULL, 9);

-- --------------------------------------------------------

--
-- Table structure for table `book_issues`
--

CREATE TABLE `book_issues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `issue_date` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `return_date` timestamp NULL DEFAULT NULL,
  `issue_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `book_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_issues`
--

INSERT INTO `book_issues` (`id`, `issue_date`, `return_date`, `issue_status`, `created_at`, `updated_at`, `book_id`, `user_id`) VALUES
(192, '2023-09-06 21:00:00', '2023-09-13 23:40:00', 'A', '2023-09-06 23:40:00', '2023-09-06 23:40:00', 11, 16),
(193, '2023-09-06 21:00:00', '2023-09-14 17:44:28', 'A', '2023-09-07 17:44:28', '2023-09-07 17:44:28', 6, 16),
(194, '2023-09-06 21:00:00', '2023-09-14 17:44:34', 'A', '2023-09-07 17:44:34', '2023-09-07 17:44:34', 7, 16),
(195, '2023-09-06 21:00:00', '2023-09-14 17:45:08', 'A', '2023-09-07 17:45:08', '2023-09-07 17:45:08', 13, 11),
(196, '2023-09-06 21:00:00', '2023-09-14 17:45:18', 'A', '2023-09-07 17:45:18', '2023-09-07 17:45:18', 12, 11),
(197, '2023-09-06 21:00:00', '2023-09-14 20:27:09', 'A', '2023-09-07 20:27:09', '2023-09-07 20:27:09', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Fantasy', NULL, NULL),
(2, 'Art', NULL, NULL),
(3, 'cook', NULL, NULL),
(4, 'Romance', NULL, NULL),
(5, 'History', NULL, NULL),
(6, 'computer&Tech', NULL, NULL),
(7, 'Education', NULL, NULL),
(8, 'Biography', NULL, NULL),
(9, 'Business & investing', NULL, NULL),
(10, 'Comics', NULL, NULL),
(11, 'Medical', NULL, NULL),
(12, 'Entertainment', NULL, NULL),
(13, 'Self-Help', NULL, NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_04_150336_create_books_table', 1),
(6, '2023_09_04_152048_create_book_issues_table', 1),
(7, '2023_09_04_152326_create_categories_table', 1),
(8, '2023_09_04_170511_add_category_id_to_books_table', 1),
(9, '2023_09_04_183702_add_book_id_to_book_issues_table', 2),
(10, '2023_09_04_200617_add_book_name_to_book_issues_table', 3),
(11, '2023_09_04_221032_create_settings_table', 4),
(12, '2014_10_12_100000_create_password_resets_table', 5),
(13, '2023_09_05_233622_add_user_id_to_book_issues_table', 5),
(14, '2023_09_07_134528_add_role_to_users_table', 6);

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
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `return_days` varchar(255) NOT NULL,
  `fine` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `return_days`, `fine`, `created_at`, `updated_at`) VALUES
(1, '4', '7', NULL, NULL),
(2, '6', '9', NULL, NULL);

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Menna Ahmed', 'menna@menna.com', NULL, '$2y$10$R7Oovm7iymbU/ELFIh0Uzueg7GYfyOJSeKURdmSMLxnunhkAj0D7G', NULL, '2023-09-05 19:38:37', '2023-09-07 20:15:34', 1),
(2, 'Nada Ahmed', 'nada@nada.com', NULL, '$2y$10$R7Oovm7iymbU/ELFIh0Uzueg7GYfyOJSeKURdmSMLxnunhkAj0D7G', NULL, '2023-09-05 20:19:45', '2023-09-06 17:19:39', 0),
(3, 'Ahmed Mohamed', 'ahmed@ahmed.com', NULL, '$2y$10$oOb1MeL9a5lbD7c8xm4Yc.pUB9JR6RUzhemEPYUgK4AITP4407l5C', NULL, '2023-09-06 09:22:13', '2023-09-06 09:22:13', 0),
(4, 'Hend Samir', 'hend@hend.com', NULL, '$2y$10$oOb1MeL9a5lbD7c8xm4Yc.pUB9JR6RUzhemEPYUgK4AITP4407l5C', NULL, '2023-09-06 12:47:27', '2023-09-06 15:52:03', 0),
(5, 'Maram Mohamed', 'maram@maram.com', NULL, '$2y$10$oOb1MeL9a5lbD7c8xm4Yc.pUB9JR6RUzhemEPYUgK4AITP4407l5C', NULL, '2023-09-06 17:26:52', '2023-09-06 17:26:52', 0),
(6, 'Zad Walid', 'zad@zad.com', NULL, '$2y$10$GywNqAhqzkkg2uouamFZI.hbMYOapKgdaxO51yWBnjPEUMW8c0eS6', NULL, '2023-09-06 18:13:09', '2023-09-06 19:20:22', 1),
(7, 'Bansaih Amged', 'bansaih@bansaih.com', NULL, '$2y$10$POh75Us04bVH4C3Xr651bOVTp7L4JG2eQxifSqsbVwNzmMhl2ZYVy', NULL, '2023-09-06 20:11:24', '2023-09-06 20:11:24', 0),
(8, 'Mohamed Ahmed', 'mohamed@mohamed.com', NULL, '$2y$10$S5vQCCICRKBmQqEZ0HZORe67AMOBlw/GK7tg5DquxowJbXDeR/04K', NULL, '2023-09-06 20:14:12', '2023-09-06 20:14:12', 0),
(9, 'Fatma Adel', 'fatma@fatma.com', NULL, '$2y$10$MbzBu4TsaeFXw1vQOQtHoeX81BfpISDTIhreKVkfIk6Fqm4NC1kcS', NULL, '2023-09-06 20:14:48', '2023-09-06 20:14:48', 0),
(10, 'Adel Sleem', 'adel@adel.com', NULL, '$2y$10$j.4qbpsK8926kWrD5AydxOvbK3qTokPNGimaCItewfSkvwsgJvKnm', NULL, '2023-09-06 20:21:34', '2023-09-06 20:21:34', 0),
(11, 'Khaled Mohamed', 'khaled@khaled.com', NULL, '$2y$10$NILcH8QFW1qZYHZQbfzP2OmBaAazKo635lVEc1VdbWABMi.zw/uTK', NULL, '2023-09-06 20:35:09', '2023-09-06 20:35:09', 0),
(12, 'Sara Hassan', 'sara@sara.com', NULL, '$2y$10$.MiPWW4ZIy1R6jyvS1O2M.1cFeFEItQHk1ltdLJg589qtIGELLg7m', NULL, '2023-09-06 20:35:57', '2023-09-06 20:35:57', 0),
(13, 'Maha Abdelaziz', 'maha@maha', NULL, '$2y$10$FmOHiFP8WDchBXF2mixaoefh.HezNXIAQKzopuiH5rcJr7qW6rs06', NULL, '2023-09-06 20:38:20', '2023-09-06 20:38:20', 0),
(14, 'Alia Hamed', 'alia@alia.com', NULL, '$2y$10$tZushc2X0sRWjIDLs9fxb.Qz3wPO9VGc8nGrlM.aalhqn7PlmIStq', NULL, '2023-09-06 20:39:46', '2023-09-06 20:39:46', 0),
(15, 'Tasnim Ahmed', 'tasnim@tasnim.com', NULL, '$2y$10$T1N0qmVVDhA0zFDropV/hOQjlqTh8pO9dELIKXsstf940y52Fdori', NULL, '2023-09-06 20:40:39', '2023-09-06 20:40:39', 0),
(16, 'Noor Mohamed', 'noor@noor.com', NULL, '$2y$10$GySQ4tfRfsZ7tm49xd.VU.GJtgRb0V0aUvWIirrW.Zxto.n.uAkYq', NULL, '2023-09-06 21:02:34', '2023-09-07 18:32:51', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_category_id_foreign` (`category_id`);

--
-- Indexes for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_issues_book_id_foreign` (`book_id`),
  ADD KEY `book_issues_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `settings`
--
ALTER TABLE `settings`
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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `book_issues`
--
ALTER TABLE `book_issues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD CONSTRAINT `book_issues_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `book_issues_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
