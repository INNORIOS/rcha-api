-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2023 at 10:37 AM
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
-- Database: `rchadb1`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_discription` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_discription`, `created_at`, `updated_at`) VALUES
(1, 'MUSEUMs', 'RWANDAN CULTURE', NULL, '2023-10-18 06:35:27'),
(3, 'MARKET', 'fruits market', '2023-10-18 06:25:47', '2023-10-18 06:25:47');

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
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `comment`, `rate`, `created_at`, `updated_at`, `payment_id`) VALUES
(1, 'Good but not fine.', '5', '2023-10-19 07:56:53', '2023-10-19 07:56:53', 4),
(2, 'Good but not fine.', '5', '2023-10-19 10:05:49', '2023-10-19 10:05:49', 4),
(3, 'Good but not fine.', '5', '2023-10-19 10:07:07', '2023-10-19 10:07:07', 4),
(4, 'Good but not fine.', '5', '2023-10-19 10:07:10', '2023-10-19 10:07:10', 4),
(5, 'Good but not fine.', '5', '2023-10-19 10:11:52', '2023-10-19 10:11:52', 4),
(6, 'Good but not fine.', '5', '2023-10-19 10:13:07', '2023-10-19 10:13:07', 4),
(7, 'Good but not fine.', '5', '2023-10-19 10:16:08', '2023-10-19 10:16:08', 4),
(8, 'Good but not fine.', '5', '2023-10-19 10:16:49', '2023-10-19 10:16:49', 4);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) NOT NULL,
  `place_id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `place_id`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 3, 'C:\\xampp\\RCHA RESERVED\\RCHA\\public/images', '2023-10-05 06:12:54', '2023-10-05 06:12:54'),
(2, 3, 'C:\\xampp\\RCHA RESERVED\\RCHA\\public/images\\1696493656.jpg', '2023-10-05 06:14:16', '2023-10-05 06:14:16'),
(3, 3, 'C:\\xampp\\RCHA RESERVED\\RCHA\\public/images\\1696494104.1UNRzpAHGM7bmhRdBAHR1zy1nkhMQTFKT00HHPQC.jpg.jpg', '2023-10-05 06:21:44', '2023-10-05 06:21:44'),
(4, 3, 'C:\\xampp\\RCHA RESERVED\\RCHA\\public/images\\1696494317.r6oPnus7yKblEW3MlNCtAkfCBAtE3fgGHDpeqTDi.jpg', '2023-10-05 06:25:17', '2023-10-05 06:25:17'),
(5, 3, '/images/1696496545.5NovuhHfKZTajUIGeGGtc5bdemK1AWGurZxmIZAr.jpg', '2023-10-05 07:02:25', '2023-10-05 07:02:25'),
(6, 5, '/images/1697812875.EYWZrvKCgHurXCjhGhjERFaFDm08q8KPVbbwHL5t.jpg', '2023-10-20 12:41:15', '2023-10-20 12:41:15'),
(7, 4, '/images/1697814647.EKdyTh4vpOGLNy1Ck5p8bLiKKCXqx296yUP9zAES.jpg', '2023-10-20 13:10:47', '2023-10-20 13:10:47');

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
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_28_084403_create_users_table', 1),
(6, '2023_10_04_123212_create_image1s_table', 2);

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `place_id` bigint(20) UNSIGNED NOT NULL,
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `amount` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `place_id`, `token_id`, `amount`, `created_at`, `updated_at`) VALUES
(2, 2, 3, 2, '1000', '2023-10-06 08:12:49', '2023-10-06 08:12:49'),
(3, 4, 3, 2, '9000', '2023-10-06 08:33:32', '2023-10-06 08:33:32'),
(4, 1, 3, 90, '9000', '2023-10-12 12:34:49', '2023-10-12 12:34:49'),
(5, 1, 4, 90, '9000', '2023-10-12 12:35:12', '2023-10-12 12:35:12'),
(6, 1, 4, 90, '9000', '2023-10-12 12:35:19', '2023-10-12 12:35:19'),
(7, 6, 4, 90, '10002', '2023-10-13 08:54:02', '2023-10-13 08:54:02'),
(8, 7, 4, 94, '2302', '2023-10-13 08:55:04', '2023-10-13 08:55:04'),
(9, 1, 4, 94, '2302', '2023-10-13 10:33:01', '2023-10-13 10:33:01');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `place_name` varchar(255) NOT NULL,
  `place_location` varchar(255) NOT NULL,
  `place_status` varchar(255) NOT NULL,
  `place_details` varchar(255) NOT NULL,
  `place_preview_video` varchar(255) NOT NULL,
  `place_link` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `category_id`, `place_name`, `place_location`, `place_status`, `place_details`, `place_preview_video`, `place_link`, `created_at`, `updated_at`) VALUES
(3, 1, 'Nyanza museum', 'Nyanza Yacu', 'Availabe', 'History of Rwandan Kings', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6', '2023-10-04 08:34:57', '2023-10-04 08:34:57'),
(4, 1, 'Nyanza museum', 'Nyanza Yacu', 'sleep', 'History of Rwandan Kings', 'https://youtu.be/5FVO3IHwIzw?si=2uc6j9wGsHF1eeKE', '5FVO3IHwIzw', '2023-10-11 20:33:30', '2023-10-11 20:33:30'),
(5, 1, 'Kicukiro museum', 'Kicukiro Yacu', 'Availabe', 'History of Rwandan Kings', 'https://youtu.be/5FVO3IHwIzw?si=2uc6j9wGsHF1eeKE', 'https://youtu.be/5FVO3IHwIzw?si=2uc6j9wGsHF1eeKE', '2023-10-15 16:48:38', '2023-10-15 16:48:38');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` bigint(20) NOT NULL,
  `paid_token` varchar(255) NOT NULL,
  `token_expires_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `paid_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `paid_token`, `token_expires_at`, `created_at`, `updated_at`, `paid_link`) VALUES
(70, 'M2nFdCTgdiiQKLvUScUFlY6KMd4FEBKN', '2000-01-19 22:00:00', '2023-10-10 07:44:43', '2023-10-10 07:44:43', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/M2nFdCTgdiiQKLvUScUFlY6KMd4FEBKN'),
(71, '2Xs8ZrfFQ1NagBH585GX20HvgfiYwWxr', '2000-01-19 22:00:00', '2023-10-10 07:47:09', '2023-10-10 07:47:09', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/2Xs8ZrfFQ1NagBH585GX20HvgfiYwWxr'),
(72, 'N1unukPFZuy3V8Csqx8yNiSe3nhFVWCN', '2023-10-10 07:54:58', '2023-10-10 07:52:58', '2023-10-10 07:52:58', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/N1unukPFZuy3V8Csqx8yNiSe3nhFVWCN'),
(73, 'KWug42tvbIZLKJa1wkcK9HOS3Ii4xcer', '2023-10-10 07:57:59', '2023-10-10 07:55:59', '2023-10-10 07:55:59', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/KWug42tvbIZLKJa1wkcK9HOS3Ii4xcer'),
(74, 'XFZeV1Wuc5B1Vb8KaqOtZxtooIfTP9nd', '2023-10-10 08:00:28', '2023-10-10 07:58:28', '2023-10-10 07:58:28', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/XFZeV1Wuc5B1Vb8KaqOtZxtooIfTP9nd'),
(75, 'XPtqNwMTpVhSuUWCLGlSzw2NTQXqM3sf', '2023-10-10 08:16:18', '2023-10-10 08:06:18', '2023-10-10 08:06:18', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/XPtqNwMTpVhSuUWCLGlSzw2NTQXqM3sf'),
(76, 'y7llUwFHUfsaz1tDBUOuXF7vm26Kr1JK', '2023-10-10 14:45:58', '2023-10-10 14:35:58', '2023-10-10 14:35:58', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/y7llUwFHUfsaz1tDBUOuXF7vm26Kr1JK'),
(77, 'CEwQr2Q8osyBi8NSoKLF0ko6XL6a5220', '2023-10-10 17:02:57', '2023-10-10 15:02:57', '2023-10-10 15:02:57', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/CEwQr2Q8osyBi8NSoKLF0ko6XL6a5220'),
(78, 'N3axTu745xHDCwNSac7dPKyHP2qrxLZN', '2023-10-10 17:16:29', '2023-10-10 17:16:29', '2023-10-10 17:16:29', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/N3axTu745xHDCwNSac7dPKyHP2qrxLZN'),
(79, 'F1gKOVYYhIkQqAlwGJZkW256MtZkmepd', '2023-10-10 17:23:10', '2023-10-10 15:23:10', '2023-10-10 15:23:10', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/F1gKOVYYhIkQqAlwGJZkW256MtZkmepd'),
(80, 'ugX8UxtpplYd6VIUutaHbmBKjZn7WOPa', '2023-10-11 08:59:35', '2023-10-11 08:59:35', '2023-10-11 08:59:35', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/ugX8UxtpplYd6VIUutaHbmBKjZn7WOPa'),
(81, '3NfKIob2ltEbEx4n2JKkdzaPO4E55Exk', '2023-10-11 09:00:51', '2023-10-11 09:00:51', '2023-10-11 09:00:51', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/3NfKIob2ltEbEx4n2JKkdzaPO4E55Exk'),
(82, 'k7pOypQGeYKskKc0dQWzROflAYQXD7TF', '2023-10-11 09:17:55', '2023-10-11 09:17:55', '2023-10-11 09:17:55', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/k7pOypQGeYKskKc0dQWzROflAYQXD7TF'),
(83, 'dtJGNoj0nzv8LooDLibWHgCrnGtCGG4i', '2023-10-11 09:18:01', '2023-10-11 09:18:01', '2023-10-11 09:18:01', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/dtJGNoj0nzv8LooDLibWHgCrnGtCGG4i'),
(84, 'NjshcPRU8fGhreAsPUVJjjfhTKLM9Dr6', '2023-10-11 09:18:54', '2023-10-11 09:18:54', '2023-10-11 09:18:54', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/NjshcPRU8fGhreAsPUVJjjfhTKLM9Dr6'),
(85, '1sytILk5RomG5HJUp0TctEcpInKxjANN', '2023-10-11 09:18:55', '2023-10-11 09:18:55', '2023-10-11 09:18:55', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/1sytILk5RomG5HJUp0TctEcpInKxjANN'),
(86, '7PWRs3UOUISydOlSAzvhZmDxHGTJWe7u', '2023-10-11 09:22:08', '2023-10-11 09:22:08', '2023-10-11 09:22:08', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/7PWRs3UOUISydOlSAzvhZmDxHGTJWe7u'),
(87, 'hxVwxDrLuZVDZhFMRt8hJjs5CBgduvNL', '2023-10-11 09:25:12', '2023-10-11 09:25:12', '2023-10-11 09:25:12', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/hxVwxDrLuZVDZhFMRt8hJjs5CBgduvNL'),
(88, '2vwqDgmbnDq3l9nJhqjLuoq8KG0DMxcD', '2023-10-11 09:31:31', '2023-10-11 09:31:31', '2023-10-11 09:31:31', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/2vwqDgmbnDq3l9nJhqjLuoq8KG0DMxcD'),
(89, 'k1jYqaCkF7bhWvjpjhDmjLe9bbUIDrO6', '2023-10-11 09:32:15', '2023-10-11 09:32:15', '2023-10-11 09:32:15', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/k1jYqaCkF7bhWvjpjhDmjLe9bbUIDrO6'),
(90, 'TwSCZYE5HnhmJsQdj0HGG5rYJZhkerCq', '2023-10-11 09:32:44', '2023-10-11 09:32:44', '2023-10-11 09:32:44', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/TwSCZYE5HnhmJsQdj0HGG5rYJZhkerCq'),
(91, 'DZnrBiiqseAlXbVLA7CUfZkLPLPoj9na', '2023-10-11 09:41:45', '2023-10-11 09:39:45', '2023-10-11 09:39:45', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/DZnrBiiqseAlXbVLA7CUfZkLPLPoj9na'),
(92, '8LV2ppEKsx3uVoyhC7pC4QO34JA1EqUU', '2023-10-11 09:41:59', '2023-10-11 09:39:59', '2023-10-11 09:39:59', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/8LV2ppEKsx3uVoyhC7pC4QO34JA1EqUU'),
(93, '1nJPvXfcOzg3qEod9t4QQ8nQufaIHcR7', '2023-10-11 09:41:59', '2023-10-11 09:39:59', '2023-10-11 09:39:59', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/1nJPvXfcOzg3qEod9t4QQ8nQufaIHcR7'),
(94, 'rDX4VmoifUlUB46jEG36Q36wcOpklfGO', '2023-10-11 09:42:59', '2023-10-11 09:40:59', '2023-10-11 09:40:59', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/rDX4VmoifUlUB46jEG36Q36wcOpklfGO'),
(95, 'zVH5xizzSlr9AWbqWLjcBLJ1ELFAIsJm', '2023-10-11 09:43:46', '2023-10-11 09:41:46', '2023-10-11 09:41:46', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/zVH5xizzSlr9AWbqWLjcBLJ1ELFAIsJm'),
(96, 'M38lAPYyjyvhkZi7hdM9zZeMjKoFeiSq', '2023-10-11 09:50:02', '2023-10-11 09:48:02', '2023-10-11 09:48:02', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/M38lAPYyjyvhkZi7hdM9zZeMjKoFeiSq'),
(97, 'rgR2KojyeBUrO4cws6bwNSnlsgv72unG', '2023-10-11 09:50:12', '2023-10-11 09:48:12', '2023-10-11 09:48:12', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/rgR2KojyeBUrO4cws6bwNSnlsgv72unG'),
(98, 'wDfDY9m0gW2xpxo3apJ0WqQMcwcmD1mK', '2023-10-11 09:50:50', '2023-10-11 09:48:50', '2023-10-11 09:48:50', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/wDfDY9m0gW2xpxo3apJ0WqQMcwcmD1mK'),
(99, 'nGE8VHwV3swglX0WR6ieH4PmTCJekovF', '2023-10-11 09:57:34', '2023-10-11 09:55:34', '2023-10-11 09:55:34', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/nGE8VHwV3swglX0WR6ieH4PmTCJekovF'),
(100, 'njcJQJJBw5VdJqSnzVCkI76tidz8dgPS', '2023-10-11 09:59:31', '2023-10-11 09:57:31', '2023-10-11 09:57:31', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/njcJQJJBw5VdJqSnzVCkI76tidz8dgPS'),
(101, 'fjhaMPK8VbpqRC4EhYfuV4mGxuCLUjRw', '2023-10-11 11:22:19', '2023-10-11 11:21:19', '2023-10-11 11:21:19', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/fjhaMPK8VbpqRC4EhYfuV4mGxuCLUjRw'),
(102, 'Zj9Mhbzrx48IEk25qmzmgGYfEtYmvy0n', '2023-10-11 11:24:55', '2023-10-11 11:23:55', '2023-10-11 11:23:55', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/Zj9Mhbzrx48IEk25qmzmgGYfEtYmvy0n'),
(103, '5ARJ1gnA3PyT72uwTdv5RzzC3dRRy9LE', '2023-10-11 11:32:36', '2023-10-11 11:29:36', '2023-10-11 11:29:36', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/5ARJ1gnA3PyT72uwTdv5RzzC3dRRy9LE'),
(104, 'nm9eyfzW0VmgH8psXPOYTS7V7jNfhh9C', '2023-10-11 11:33:10', '2023-10-11 11:30:10', '2023-10-11 11:30:10', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/nm9eyfzW0VmgH8psXPOYTS7V7jNfhh9C'),
(105, 'J2zyQ9Bl0QBbGAXktkgFW9mOMTmCzz1G', '2023-10-11 11:34:23', '2023-10-11 11:31:23', '2023-10-11 11:31:23', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/J2zyQ9Bl0QBbGAXktkgFW9mOMTmCzz1G'),
(106, '7QPNyTJ7chmP35RvVfGcHD5bvJFWukzy', '2023-10-11 11:34:26', '2023-10-11 11:31:26', '2023-10-11 11:31:26', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/7QPNyTJ7chmP35RvVfGcHD5bvJFWukzy'),
(107, 'Eczhw6u6aJcqIYzDyye9SuKA4vBn6Pdc', '2023-10-11 11:36:23', '2023-10-11 11:33:23', '2023-10-11 11:33:23', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/Eczhw6u6aJcqIYzDyye9SuKA4vBn6Pdc'),
(108, 'Qq1CsYZ1777gRGkQmAVj0pus0AKHLd1c', '2023-10-11 11:38:11', '2023-10-11 11:35:11', '2023-10-11 11:35:11', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/Qq1CsYZ1777gRGkQmAVj0pus0AKHLd1c'),
(109, 'T24sBHIH0fbBe9MEwfbDER8fJ21PxDoT', '2023-10-11 11:38:19', '2023-10-11 11:35:19', '2023-10-11 11:35:19', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/T24sBHIH0fbBe9MEwfbDER8fJ21PxDoT'),
(110, 's4BrTr7vcdDJOo5nKC2OKBt52qZL8tPn', '2023-10-11 11:40:02', '2023-10-11 11:37:02', '2023-10-11 11:37:02', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/s4BrTr7vcdDJOo5nKC2OKBt52qZL8tPn'),
(111, '01F0pIwAdyoQnlftYNbDThmeZmiQuWUD', '2023-10-11 11:40:08', '2023-10-11 11:37:08', '2023-10-11 11:37:08', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/01F0pIwAdyoQnlftYNbDThmeZmiQuWUD'),
(112, 'kezivPSKXOO9Is7Pbv0BQ6EmiFxZsmVZ', '2023-10-11 19:11:40', '2023-10-11 19:08:40', '2023-10-11 19:08:40', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/kezivPSKXOO9Is7Pbv0BQ6EmiFxZsmVZ'),
(113, 'SJrsWQCNKB1o8xkt30gHeVGMPSdAVTpq', '2023-10-11 19:12:31', '2023-10-11 19:09:31', '2023-10-11 19:09:31', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/SJrsWQCNKB1o8xkt30gHeVGMPSdAVTpq'),
(114, 'rxhNCiOhj42XuTogznfi32Jum4s54yoi', '2023-10-11 19:15:14', '2023-10-11 19:12:14', '2023-10-11 19:12:14', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/rxhNCiOhj42XuTogznfi32Jum4s54yoi'),
(115, 'vjdCSAfJakVe5soQEkRkEuT8aH4GHd2d', '2023-10-11 19:17:01', '2023-10-11 19:14:01', '2023-10-11 19:14:01', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/vjdCSAfJakVe5soQEkRkEuT8aH4GHd2d'),
(116, 'OyU6VmPqUuJu8PAoduhCFUT4zThNklci', '2023-10-11 19:20:01', '2023-10-11 19:17:01', '2023-10-11 19:17:01', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/OyU6VmPqUuJu8PAoduhCFUT4zThNklci'),
(117, 'fbIAqC2lMwlhk5BaATEsp3Ib5fJCgb7S', '2023-10-11 19:20:10', '2023-10-11 19:17:10', '2023-10-11 19:17:10', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/fbIAqC2lMwlhk5BaATEsp3Ib5fJCgb7S'),
(118, 'mUtFz2zpU7vP98RI6OccDNv4s40AWcYi', '2023-10-11 19:54:16', '2023-10-11 19:51:16', '2023-10-11 19:51:16', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/mUtFz2zpU7vP98RI6OccDNv4s40AWcYi'),
(119, 'BOKcU9R9DBDTGcXNxCCvHF2hy0jIyRnG', '2023-10-11 19:54:25', '2023-10-11 19:51:25', '2023-10-11 19:51:25', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/BOKcU9R9DBDTGcXNxCCvHF2hy0jIyRnG'),
(120, '3ILxz9OlCKTdZoo1FcY46k9bBhUuzgh8', '2023-10-11 19:59:30', '2023-10-11 19:56:30', '2023-10-11 19:56:30', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/3ILxz9OlCKTdZoo1FcY46k9bBhUuzgh8'),
(121, '8sxAsqtFDEvoa553SMyoHTNRjrdqHT29', '2023-10-11 19:59:42', '2023-10-11 19:56:42', '2023-10-11 19:56:42', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/8sxAsqtFDEvoa553SMyoHTNRjrdqHT29'),
(122, 'QMk16aWaPd1krvaUEriYJorJRGS1Rthv', '2023-10-11 20:04:43', '2023-10-11 20:01:43', '2023-10-11 20:01:43', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/QMk16aWaPd1krvaUEriYJorJRGS1Rthv'),
(123, 'moOcSL9XsjnjAhNEDy1XOCcwtuGX5epO', '2023-10-11 20:04:50', '2023-10-11 20:01:50', '2023-10-11 20:01:50', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/moOcSL9XsjnjAhNEDy1XOCcwtuGX5epO'),
(124, 'SS6AuzenwPROYvlrtyY8zVnO7vaxRUAy', '2023-10-11 20:10:07', '2023-10-11 20:07:07', '2023-10-11 20:07:07', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/SS6AuzenwPROYvlrtyY8zVnO7vaxRUAy'),
(125, 'BOrOpHJJ44mpqHFDO3INSTjVs0gE8FVk', '2023-10-11 20:10:13', '2023-10-11 20:07:13', '2023-10-11 20:07:13', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/BOrOpHJJ44mpqHFDO3INSTjVs0gE8FVk'),
(126, '2uLI9RFgXvls7UUhZ8oKY35L9A26QoRR', '2023-10-11 20:18:11', '2023-10-11 20:15:11', '2023-10-11 20:15:11', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/2uLI9RFgXvls7UUhZ8oKY35L9A26QoRR'),
(127, 'lnf5oXKg2gD3phMrPHEKfDpdT5Ka7h0q', '2023-10-11 20:18:37', '2023-10-11 20:15:37', '2023-10-11 20:15:37', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/lnf5oXKg2gD3phMrPHEKfDpdT5Ka7h0q'),
(128, 'F0kYhYLvybGy38PCTqmoWBz83p2TRjlX', '2023-10-11 20:21:58', '2023-10-11 20:18:58', '2023-10-11 20:18:58', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/F0kYhYLvybGy38PCTqmoWBz83p2TRjlX'),
(129, 'dRNEcqBoemkv0mGq8OcbZaJvQILwzhrY', '2023-10-11 20:22:08', '2023-10-11 20:19:08', '2023-10-11 20:19:08', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/dRNEcqBoemkv0mGq8OcbZaJvQILwzhrY'),
(130, '8bXVSxo1jYVqY52qFkYfuNgwI4Ys1ZXj', '2023-10-11 20:26:22', '2023-10-11 20:23:22', '2023-10-11 20:23:22', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/8bXVSxo1jYVqY52qFkYfuNgwI4Ys1ZXj'),
(131, 'uqP8aKkkzF6va2oxtfLLNgAGauQ0pQTL', '2023-10-11 20:26:28', '2023-10-11 20:23:28', '2023-10-11 20:23:28', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/uqP8aKkkzF6va2oxtfLLNgAGauQ0pQTL'),
(132, '93IyogIOWffLqIoRJaU0wKTz9dJ6PFH5', '2023-10-11 20:36:51', '2023-10-11 20:33:51', '2023-10-11 20:33:51', 'https://youtu.be/5FVO3IHwIzw?si=2uc6j9wGsHF1eeKE/93IyogIOWffLqIoRJaU0wKTz9dJ6PFH5'),
(133, 'xevuCcrFBCAg9ab7UraHSOlgzkuLmfe8', '2023-10-11 20:37:03', '2023-10-11 20:34:03', '2023-10-11 20:34:03', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/xevuCcrFBCAg9ab7UraHSOlgzkuLmfe8'),
(134, 'Q96pSzkih4j2nQzjKXWPFRtGbitnYKp7', '2023-10-11 20:43:28', '2023-10-11 20:40:28', '2023-10-11 20:40:28', 'https://youtu.be/5FVO3IHwIzw?si=2uc6j9wGsHF1eeKE/Q96pSzkih4j2nQzjKXWPFRtGbitnYKp7'),
(135, '5sesL3FQ9QJyYr5ZpdtWXodnyWHJWfTw', '2023-10-11 20:43:33', '2023-10-11 20:40:33', '2023-10-11 20:40:33', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/5sesL3FQ9QJyYr5ZpdtWXodnyWHJWfTw'),
(136, 'dZEiw8ppNMPIxLGUeb5RAxkZdQHdqhuJ', '2023-10-11 20:52:02', '2023-10-11 20:49:02', '2023-10-11 20:49:02', 'https://youtu.be/5FVO3IHwIzw?si=2uc6j9wGsHF1eeKE/dZEiw8ppNMPIxLGUeb5RAxkZdQHdqhuJ'),
(137, 'mzFZp7Jbsrl56k8wDl0vdhKg7AvObo5X', '2023-10-11 20:52:06', '2023-10-11 20:49:06', '2023-10-11 20:49:06', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/mzFZp7Jbsrl56k8wDl0vdhKg7AvObo5X'),
(138, 'XAWmGeav6a0yBv2nPcONti9c0Tr5DlVF', '2023-10-11 21:06:24', '2023-10-11 21:03:24', '2023-10-11 21:03:24', 'https://youtu.be/5FVO3IHwIzw?si=2uc6j9wGsHF1eeKE/XAWmGeav6a0yBv2nPcONti9c0Tr5DlVF'),
(139, 'RSboHkeotZJR94rMn25KRKN2J5LGPzGM', '2023-10-11 21:06:27', '2023-10-11 21:03:27', '2023-10-11 21:03:27', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/RSboHkeotZJR94rMn25KRKN2J5LGPzGM'),
(140, 'c5sDmNklZsMaUhZnbkT8MuZcF6fPIDND', '2023-10-11 21:09:01', '2023-10-11 21:06:01', '2023-10-11 21:06:01', 'https://youtu.be/5FVO3IHwIzw?si=2uc6j9wGsHF1eeKE/c5sDmNklZsMaUhZnbkT8MuZcF6fPIDND'),
(141, 'USzhmlqHCFd182GnSER20c8uAwVgO9Qh', '2023-10-11 21:49:11', '2023-10-11 21:46:11', '2023-10-11 21:46:11', 'https://youtu.be/5FVO3IHwIzw?si=2uc6j9wGsHF1eeKE/USzhmlqHCFd182GnSER20c8uAwVgO9Qh'),
(142, 'OyvbPdnL1RopGkyXJAnVZWwepInwfhWs', '2023-10-11 21:49:18', '2023-10-11 21:46:18', '2023-10-11 21:46:18', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/OyvbPdnL1RopGkyXJAnVZWwepInwfhWs'),
(143, 'QsvhW8xmbuQ4GhbXDpOShL3CNwYoPzfg', '2023-10-11 21:54:24', '2023-10-11 21:51:24', '2023-10-11 21:51:24', 'https://youtu.be/5FVO3IHwIzw?si=2uc6j9wGsHF1eeKE/QsvhW8xmbuQ4GhbXDpOShL3CNwYoPzfg'),
(144, 'Nvfzp8p6psCxfAtLtBcNmcDDUOQaRIup', '2023-10-11 22:05:38', '2023-10-11 22:02:38', '2023-10-11 22:02:38', 'https://youtu.be/5FVO3IHwIzw?si=2uc6j9wGsHF1eeKE/Nvfzp8p6psCxfAtLtBcNmcDDUOQaRIup'),
(145, 'ZRwfepkxUTFXtl3zddP3CdLgMWTiiEa0', '2023-10-12 05:22:49', '2023-10-12 05:19:49', '2023-10-12 05:19:49', 'https://youtu.be/5FVO3IHwIzw?si=2uc6j9wGsHF1eeKE/ZRwfepkxUTFXtl3zddP3CdLgMWTiiEa0'),
(146, 'UWcnlbX8YHfnkrlA5gd0V3muvjC7l8G6', '2023-10-12 05:27:09', '2023-10-12 05:24:09', '2023-10-12 05:24:09', 'https://youtu.be/5FVO3IHwIzw?si=2uc6j9wGsHF1eeKE/UWcnlbX8YHfnkrlA5gd0V3muvjC7l8G6'),
(147, 'QY6AeoZQkRBcYULrRFaXJ2rSl57wx9s3', '2023-10-12 05:35:50', '2023-10-12 05:32:50', '2023-10-12 05:32:50', 'https://youtu.be/5FVO3IHwIzw?si=2uc6j9wGsHF1eeKE/QY6AeoZQkRBcYULrRFaXJ2rSl57wx9s3'),
(148, '27ZHqdaNWHRmMtHrutpu6OxfDsfxUQrI', '2023-10-12 05:49:14', '2023-10-12 05:46:14', '2023-10-12 05:46:14', 'https://youtu.be/5FVO3IHwIzw?si=2uc6j9wGsHF1eeKE/27ZHqdaNWHRmMtHrutpu6OxfDsfxUQrI'),
(149, '8M83jceqvDbVsCDf7ySmHbCiBMekPDMI', '2023-10-12 05:53:25', '2023-10-12 05:50:25', '2023-10-12 05:50:25', 'https://youtu.be/5FVO3IHwIzw?si=2uc6j9wGsHF1eeKE/8M83jceqvDbVsCDf7ySmHbCiBMekPDMI'),
(150, 'dE7bZYalk9pADdZUYkvCPRbKnbHDgJFo', '2023-10-12 06:38:55', '2023-10-12 06:35:55', '2023-10-12 06:35:55', 'https://youtu.be/5FVO3IHwIzw?si=2uc6j9wGsHF1eeKE/dE7bZYalk9pADdZUYkvCPRbKnbHDgJFo'),
(151, 'fvtkg5RobIf5gwuHXjjQV4zu7jBJqJvm', '2023-10-12 06:39:21', '2023-10-12 06:36:21', '2023-10-12 06:36:21', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/fvtkg5RobIf5gwuHXjjQV4zu7jBJqJvm'),
(152, 'zuELUaCrlHakQEAECvrVoffSWLlCdKxQ', '2023-10-12 06:42:55', '2023-10-12 06:39:55', '2023-10-12 06:39:55', 'https://youtu.be/5FVO3IHwIzw?si=2uc6j9wGsHF1eeKE/zuELUaCrlHakQEAECvrVoffSWLlCdKxQ'),
(153, 'pP6j8IFWJqJXUpHoUkcRR5ug1Ak10slo', '2023-10-12 06:43:02', '2023-10-12 06:40:02', '2023-10-12 06:40:02', '1drv.ms/v/s!Ak5SMLLhPWnplmlGWLflteE9-Uv1?e=rUgLM6/pP6j8IFWJqJXUpHoUkcRR5ug1Ak10slo'),
(154, 'GyYxzWzKRgfrn216jKcKNxxDLtTGH99F', '2023-10-12 06:45:38', '2023-10-12 06:42:38', '2023-10-12 06:42:38', 'https://youtu.be/5FVO3IHwIzw?si=2uc6j9wGsHF1eeKE/GyYxzWzKRgfrn216jKcKNxxDLtTGH99F'),
(155, 'b9QvWZqH04DgJEdM31qQWYmYezgGnPDT', '2023-10-12 06:45:45', '2023-10-12 06:42:45', '2023-10-12 06:42:45', 'https://youtu.be/5FVO3IHwIzw?si=2uc6j9wGsHF1eeKE/b9QvWZqH04DgJEdM31qQWYmYezgGnPDT'),
(156, '7QsHAbL44xxaJBvU4KVCZ517jCd2Hh6q', '2023-10-12 06:48:47', '2023-10-12 06:45:47', '2023-10-12 06:45:47', 'https://youtu.be/5FVO3IHwIzw?si=2uc6j9wGsHF1eeKE/7QsHAbL44xxaJBvU4KVCZ517jCd2Hh6q'),
(157, 'ATTZKHuJNxnXm3TZWJ20Qh1vRTo1wGqB', '2023-10-12 06:48:50', '2023-10-12 06:45:50', '2023-10-12 06:45:50', 'https://youtu.be/5FVO3IHwIzw?si=2uc6j9wGsHF1eeKE/ATTZKHuJNxnXm3TZWJ20Qh1vRTo1wGqB'),
(158, 'aImSuQt2sLcz7kG49fPs4A4GWhF2QqIo', '2023-10-12 06:51:53', '2023-10-12 06:48:53', '2023-10-12 06:48:53', 'https://youtu.be/5FVO3IHwIzw?si=2uc6j9wGsHF1eeKE/aImSuQt2sLcz7kG49fPs4A4GWhF2QqIo'),
(159, 'koWqhpFdWLFK1IT6HpeH7cKK1oc0HXLd', '2023-10-12 06:52:03', '2023-10-12 06:49:03', '2023-10-12 06:49:03', 'https://youtu.be/5FVO3IHwIzw?si=2uc6j9wGsHF1eeKE/koWqhpFdWLFK1IT6HpeH7cKK1oc0HXLd'),
(160, 'TIUFUpp92CebD794wJk765sYnN81Nd0t', '2023-10-12 06:55:48', '2023-10-12 06:52:48', '2023-10-12 06:52:48', 'https://youtu.be/5FVO3IHwIzw?si=2uc6j9wGsHF1eeKE/TIUFUpp92CebD794wJk765sYnN81Nd0t'),
(161, 'uLb0YQkewKBew6tN5SSizxNo9GFdybCe', '2023-10-12 06:55:52', '2023-10-12 06:52:52', '2023-10-12 06:52:52', 'https://youtu.be/5FVO3IHwIzw?si=2uc6j9wGsHF1eeKE/uLb0YQkewKBew6tN5SSizxNo9GFdybCe'),
(162, 'O6vVeBTZ55EB6PcH3wffEzUu6nehzlTU', '2023-10-12 07:03:12', '2023-10-12 07:00:12', '2023-10-12 07:00:12', 'https://youtu.be/5FVO3IHwIzw?si=2uc6j9wGsHF1eeKE/O6vVeBTZ55EB6PcH3wffEzUu6nehzlTU'),
(163, 'lAOOVjoXUcEhmy5LR1ex4zQFakuTClnV', '2023-10-12 07:03:25', '2023-10-12 07:00:25', '2023-10-12 07:00:25', 'https://youtu.be/5FVO3IHwIzw?si=2uc6j9wGsHF1eeKE/lAOOVjoXUcEhmy5LR1ex4zQFakuTClnV'),
(164, '40JAX5Ne659ZNZ1WjmXyzri8I5iSEMon', '2023-10-12 07:11:48', '2023-10-12 07:08:48', '2023-10-12 07:08:48', 'https://youtu.be/5FVO3IHwIzw?si=2uc6j9wGsHF1eeKE/40JAX5Ne659ZNZ1WjmXyzri8I5iSEMon'),
(165, 'DtMxJ06hSwIsNmpjBhwGjGFrZd1AHSM4', '2023-10-12 07:12:39', '2023-10-12 07:09:39', '2023-10-12 07:09:39', 'https://youtu.be/5FVO3IHwIzw?si=2uc6j9wGsHF1eeKE/DtMxJ06hSwIsNmpjBhwGjGFrZd1AHSM4'),
(166, 'OP2nfzXoK0d8idtpFniI5TBd4t1w82TJ', '2023-10-12 07:13:30', '2023-10-12 07:10:30', '2023-10-12 07:10:30', 'https://youtu.be/5FVO3IHwIzw?si=2uc6j9wGsHF1eeKE/OP2nfzXoK0d8idtpFniI5TBd4t1w82TJ'),
(167, 'UiaYwZiiQ1tpH6PlZt3Rfin02cn04gqO', '2023-10-12 08:52:10', '2023-10-12 08:49:10', '2023-10-12 08:49:10', 'https://youtu.be/5FVO3IHwIzw?si=2uc6j9wGsHF1eeKE/UiaYwZiiQ1tpH6PlZt3Rfin02cn04gqO'),
(168, '4kS7MyQKz3DHFyW1Up3jeWXZiZVkvd6a', '2023-10-12 09:15:29', '2023-10-12 08:55:29', '2023-10-12 08:55:29', '5FVO3IHwIzw/4kS7MyQKz3DHFyW1Up3jeWXZiZVkvd6a'),
(169, 'VNseeRMhBdt4iyb7de4MEc2ulR2FvR3D', '2023-10-13 07:46:02', '2023-10-13 07:26:02', '2023-10-13 07:26:02', '5FVO3IHwIzw/VNseeRMhBdt4iyb7de4MEc2ulR2FvR3D'),
(170, 's9t3rNmj28BuprXkX2GxMLrPKXsifm9x', '2023-10-19 06:48:33', '2023-10-18 06:48:33', '2023-10-18 06:48:33', '5FVO3IHwIzw/s9t3rNmj28BuprXkX2GxMLrPKXsifm9x'),
(171, 'OgTNaxJGBiYdj1MCGW5Vyu46LbD5g9nF', '2023-10-19 06:52:23', '2023-10-18 06:52:23', '2023-10-18 06:52:23', '5FVO3IHwIzw/OgTNaxJGBiYdj1MCGW5Vyu46LbD5g9nF'),
(172, 'RTxqD7psdKDTY3XavofE6ZA8NfMqmHVC', '2023-10-19 06:56:11', '2023-10-18 06:56:11', '2023-10-18 06:56:11', '5FVO3IHwIzw/RTxqD7psdKDTY3XavofE6ZA8NfMqmHVC'),
(173, 'fHZPK6DS7MEKIrPWBwNFvkmLyBX0zXOT', '2023-10-19 06:57:50', '2023-10-18 06:57:50', '2023-10-18 06:57:50', '5FVO3IHwIzw/fHZPK6DS7MEKIrPWBwNFvkmLyBX0zXOT'),
(174, 'BgFlS0hcUf9EtQ4KOSJRqdmQj5rUBOf9', '2023-10-19 07:01:50', '2023-10-18 07:01:50', '2023-10-18 07:01:50', '5FVO3IHwIzw/BgFlS0hcUf9EtQ4KOSJRqdmQj5rUBOf9'),
(175, 'eOQLMR7BWGeoHBxj681d9bwe45j34DUM', '2023-10-19 07:11:22', '2023-10-18 07:11:22', '2023-10-18 07:11:22', '5FVO3IHwIzw/eOQLMR7BWGeoHBxj681d9bwe45j34DUM'),
(176, 'ZRJ0R459sP2YTDmwSe5hQK3XWr4d9vtu', '2023-10-19 07:12:46', '2023-10-18 07:12:46', '2023-10-18 07:12:46', '5FVO3IHwIzw/ZRJ0R459sP2YTDmwSe5hQK3XWr4d9vtu'),
(177, 'q13zVqZpR8m5pE19Apzddxidtw4Aiak2', '2023-10-19 07:13:35', '2023-10-18 07:13:35', '2023-10-18 07:13:35', '5FVO3IHwIzw/q13zVqZpR8m5pE19Apzddxidtw4Aiak2'),
(178, 'AN0RfK2MFt3zDmdQN40tOWD3kwopUcUx', '2023-10-19 07:16:58', '2023-10-18 07:16:58', '2023-10-18 07:16:58', '5FVO3IHwIzw/AN0RfK2MFt3zDmdQN40tOWD3kwopUcUx');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `email_verified_at`, `password`, `country`, `remember_token`, `created_at`, `updated_at`, `role`, `city`) VALUES
(1, 'Shema', 'Maurice', 'munyinya13@gmail.com', '078652491', NULL, '$2y$10$HvupJKw.nH7IymHvcGeOYuWFXuXjgjPCF4BY9ylktuoeqqEYTET7K', 'Rwanda', NULL, '2023-10-06 06:23:44', '2023-10-06 06:23:44', 'admin', NULL),
(4, 'Shema', 'Maurice', 'munyinyaTech@gmail.com', '078652492', NULL, '$2y$10$BFdj5xKoINpKRwN1alGLAOEaif6JCSRcnH19HzPmg3hQ/InLKIJI.', 'Rwanda', NULL, '2023-10-06 07:08:11', '2023-10-06 07:08:11', 'user', NULL),
(6, 'Ngobo', 'Blaise', 'munyinya@gmail.com', '0786524922', NULL, '$2y$10$9ch9SLUl/.DABMPR03FSW.JV4Krl1QcX3mCqtwVoyX.3I6n/be0MW', 'Rwanda', NULL, '2023-10-13 08:49:20', '2023-10-13 08:49:20', 'user', NULL),
(7, 'Pasical', 'Muvunyi', 'munyinya1@gmail.com', '07865249221', NULL, '$2y$10$xFChf6Kt913KrSB7B1Z9B.NhDdMvY7gIxXwiX3K5L8R2vI7vvbBW2', 'Rwanda', NULL, '2023-10-13 08:52:09', '2023-10-13 08:52:09', 'user', NULL),
(11, 'Pasical', 'Muvunyi', 'munyinya130@gmail.com', '078652492210', NULL, '$2y$10$wHps4tbzRFGQyMvgLwfjhuCbv96gpepGbkMUeiJSnhbUg4mkAO8tS', 'Rwanda', NULL, '2023-10-20 11:01:49', '2023-10-20 11:01:49', 'user', 'Kigali');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_number_unique` (`phone_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
