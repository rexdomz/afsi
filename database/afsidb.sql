-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2019 at 02:01 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `afsidb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `job_title`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Emerson', 'sons@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Admin-Owner', NULL, '2019-07-07 18:30:18', '2019-07-07 18:30:18'),
(2, 'Terry', 'afsiadmin@gmail.com', '$2y$10$EWy0.yiyT9COdnaAareIxORrDYatHzPFRNlEyqGFd.bDef2u7d5YC', 'Administrator-Owner', NULL, '2019-07-12 20:26:37', '2019-07-12 20:26:37');

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` int(10) UNSIGNED NOT NULL,
  `area_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `collector` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `area_code`, `address`, `collector`, `contact`, `created_at`, `updated_at`) VALUES
(1, 'a1', 'Diamond City', 'Dagul S. Bonin', '123456', '2019-03-27 22:47:53', '2019-03-29 22:08:38'),
(2, 'a2', 'Dapitan', 'James Tolback', '1234567890', '2019-03-27 23:16:14', '2019-07-09 17:54:38'),
(3, 'a3', 'Sulangon City', 'jhon X. Tambol', '12345', '2019-03-27 23:16:35', '2019-04-16 18:57:53'),
(4, 'a4', 'Balete Drive, Demons City', 'Macy Sipat', '23123456', '2019-03-27 23:17:01', '2019-04-08 18:41:03'),
(5, 'a5', 'Kasagingan City', 'Totoy Bibo', '123455432', '2019-03-27 23:17:29', '2019-03-29 18:03:13'),
(6, 'a6', 'Sorsogon City', 'Miss Flawless', '065-212-3446', '2019-04-01 21:44:43', '2019-04-01 21:44:43'),
(7, 'a7', 'Ozamiz', 'Paro', '212-3423', '2019-05-03 02:26:51', '2019-07-09 17:54:57'),
(8, 'a8', '46452 Hansen Mountains Apt. XXXyyy', 'Peter Tolback', '1234567890', '2019-07-09 17:55:17', '2019-07-09 17:55:17');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Et minus modi aut.', 'Quia dolore et accusantium modi autem consequatur voluptate. Culpa non architecto et sunt. Distinctio dolores iste dicta aut dignissimos. Enim laudantium sunt est iste culpa.', '2019-03-27 22:38:20', '2019-03-27 22:38:20'),
(2, 'Veniam dolor id quo quas necessitatibus.', 'Fugit ad qui voluptas labore. Non esse delectus reiciendis maiores. Ut libero et ut autem hic temporibus error. Ullam dolore laborum beatae quibusdam.', '2019-03-27 22:38:20', '2019-03-27 22:38:20'),
(3, 'Repellendus quaerat necessitatibus nulla vel.', 'Consectetur quod eius perspiciatis. Commodi et quis tempora dolor velit quia eum. Accusamus cumque unde corrupti alias aliquam.', '2019-03-27 22:38:20', '2019-03-27 22:38:20'),
(4, 'Rerum temporibus nam non dolor placeat.', 'Praesentium vel quisquam culpa consequuntur. Quos nesciunt dolores quae ut autem sequi officiis. Beatae veniam et corporis ea.', '2019-03-27 22:38:20', '2019-03-27 22:38:20'),
(5, 'Vitae nam ea ad et omnis voluptas.', 'Inventore ut incidunt facere cum. Voluptate quae nihil velit iusto. Fugit molestiae architecto non est voluptatem.', '2019-03-27 22:38:20', '2019-03-27 22:38:20'),
(6, 'Dolorum officia est iure sit et.', 'Architecto et dolores labore dolore est quos maiores. Possimus consequatur quibusdam eius sint. Reiciendis est aliquid impedit quia perspiciatis.', '2019-03-27 22:38:20', '2019-03-27 22:38:20'),
(7, 'Et ab ut et magnam aut aut praesentium.', 'Velit aliquam beatae et ipsa est. Iste maxime dignissimos et vel. Sed nihil tempora id sit.', '2019-03-27 22:38:20', '2019-03-27 22:38:20'),
(8, 'Cum neque asperiores rerum consequatur.', 'Qui eos veniam aperiam et autem. Natus qui quae quisquam dolore exercitationem. Eveniet occaecati ut saepe nisi dolore.', '2019-03-27 22:38:20', '2019-03-27 22:38:20'),
(9, 'Dolor quod omnis impedit ex sed quo officiis.', 'Dolore ut doloremque et qui fugiat vel sit. Asperiores eum ea alias. Dolor et et dolore cum debitis.', '2019-03-27 22:38:20', '2019-03-27 22:38:20'),
(10, 'Ad mollitia cum ut repellat.', 'Optio laborum eum a laboriosam odio eaque. Occaecati omnis itaque praesentium. Quos ut molestiae nulla. Officia amet dolor impedit voluptates maxime dignissimos in.', '2019-03-27 22:38:20', '2019-03-27 22:38:20'),
(11, 'Sunt cupiditate veritatis adipisci eum.', 'Incidunt aliquid non et neque unde ut. Eos est veniam eius non vel alias deserunt facere. Beatae quia aliquid molestiae aut et.', '2019-03-27 22:38:20', '2019-03-27 22:38:20'),
(12, 'Fugiat laborum aut dolorem omnis.', 'Id ducimus sed quia nemo. Quo ut repellendus corrupti qui itaque molestias. Optio ullam praesentium temporibus sapiente. Est ab reiciendis necessitatibus veniam sequi.', '2019-03-27 22:38:20', '2019-03-27 22:38:20'),
(13, 'Ex quia aut sed voluptatem quisquam.', 'Velit dolor libero et ipsum veniam explicabo quo et. Eligendi occaecati amet nihil pariatur quia. Sunt qui est commodi iure tempora dolores qui totam.', '2019-03-27 22:38:20', '2019-03-27 22:38:20'),
(14, 'Voluptatibus temporibus molestiae eligendi.', 'Ipsam nesciunt ut cumque id et vel. Error minus nulla quas facere est modi. Incidunt reprehenderit magnam commodi molestiae et nobis.', '2019-03-27 22:38:20', '2019-03-27 22:38:20'),
(15, 'Ut aut quo saepe sed suscipit vitae veniam.', 'Sunt omnis harum repellat voluptatem. Libero nemo ut corporis praesentium omnis esse velit. At natus quasi et. Blanditiis ut repellat mollitia ullam.', '2019-03-27 22:38:20', '2019-03-27 22:38:20'),
(16, 'Error ut est voluptatem vel et repellendus.', 'Sed quisquam ex reprehenderit fuga eveniet. Est praesentium adipisci autem vitae animi aut perspiciatis. Ad adipisci distinctio aspernatur.', '2019-03-27 22:38:20', '2019-03-27 22:38:20'),
(17, 'Ea eum quia ut est quo tempore et.', 'Soluta quaerat est nisi officiis veritatis vero. Placeat velit consectetur deserunt qui. Natus iusto mollitia omnis at perferendis. Veniam animi consequatur at quidem autem pariatur consequuntur.', '2019-03-27 22:38:20', '2019-03-27 22:38:20'),
(18, 'Atque cupiditate sunt vero fuga sint.', 'Qui et maxime rerum unde eaque. Est aut reprehenderit iste quasi repudiandae et. Et error harum recusandae assumenda consequatur vel aut voluptatem.', '2019-03-27 22:38:20', '2019-03-27 22:38:20'),
(19, 'Natus aperiam qui adipisci et vel repellat.', 'Debitis dolores quidem cumque quia recusandae. Dolore excepturi dolorum qui dolorum.', '2019-03-27 22:38:20', '2019-03-27 22:38:20'),
(20, 'Autem tempore doloremque corrupti.', 'Culpa molestiae maiores aut aperiam animi placeat et. Voluptas ea doloremque amet nostrum. Atque iusto saepe et commodi. Autem sapiente dolores asperiores quasi omnis.', '2019-03-27 22:38:20', '2019-03-27 22:38:20'),
(21, 'Est repellendus dicta molestiae natus.', 'Qui perferendis sint et reiciendis ullam amet. Accusamus beatae aut quaerat. Fuga nulla minima et dignissimos. Ut nam qui molestiae tempore.', '2019-03-27 22:38:20', '2019-03-27 22:38:20'),
(22, 'Autem dicta et eum dolorem et totam.', 'Aut et quis recusandae. Occaecati consequatur explicabo earum architecto. Voluptatibus et omnis eaque et nemo.', '2019-03-27 22:38:20', '2019-03-27 22:38:20'),
(23, 'Ut cupiditate dicta dolor nostrum sed autem ea.', 'Modi sapiente aut labore autem vero officiis voluptatibus. Quia sed sed accusantium ab. Magni libero voluptates molestias ut qui.', '2019-03-27 22:38:20', '2019-03-27 22:38:20'),
(24, 'Quod aut perspiciatis harum magnam suscipit sed.', 'Accusantium eos nemo earum omnis non ea. Quibusdam odio ipsum eum beatae quia. Esse et earum eum. Asperiores omnis itaque est eum doloremque sed dolorem.', '2019-03-27 22:38:20', '2019-03-27 22:38:20'),
(25, 'Voluptatem consectetur beatae labore eaque.', 'Sit repellendus maxime ullam omnis saepe velit rerum eum. Quia qui qui unde provident maxime dolorem fuga. In autem et blanditiis facilis eius.', '2019-03-27 22:38:20', '2019-03-27 22:38:20'),
(26, 'Sit ex perferendis sint.', 'Dicta odit explicabo nesciunt soluta nobis aliquid. Modi aspernatur rerum fugiat nam. Itaque aliquid expedita ratione ducimus sed. Soluta sed est aut qui a similique et.', '2019-03-27 22:38:20', '2019-03-27 22:38:20'),
(27, 'Et nam consequatur aut qui vel neque voluptas.', 'Suscipit ut asperiores eaque quia. Fugiat itaque labore consequatur a blanditiis. Rerum quos reiciendis sint dolorem. Dolorum est laudantium velit ducimus temporibus excepturi exercitationem.', '2019-03-27 22:38:20', '2019-03-27 22:38:20'),
(28, 'Aut sunt eum nobis dolorum id eum.', 'A veniam quas est. Sit in consectetur voluptas. Ab porro dolores doloremque non placeat molestias culpa. Qui voluptatum repudiandae nam est.', '2019-03-27 22:38:20', '2019-03-27 22:38:20'),
(29, 'Voluptate recusandae est sequi tenetur minima.', 'Facilis eveniet eos sint repellendus. Quis consequatur ipsum eligendi saepe id. Debitis soluta qui error impedit.', '2019-03-27 22:38:20', '2019-03-27 22:38:20'),
(30, 'Voluptas qui ipsam assumenda.', 'Voluptas harum ea quibusdam molestiae. Eum suscipit eum in sint iste. Ex inventore quia voluptatem occaecati eum voluptatibus nemo. Sed mollitia veritatis sit reiciendis dolores asperiores ab sint.', '2019-03-27 22:38:21', '2019-03-27 22:38:21');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_12_29_233629_create_articles_table', 1),
(4, '2019_03_09_033922_create_profiles_table', 1),
(5, '2019_03_09_034917_create_area_table', 1),
(6, '2019_03_15_031447_create_payment_table', 1),
(7, '2019_07_08_011428_create_admins_table', 2),
(8, '2019_07_20_025606_add_fields_to_profiles', 3),
(9, '2019_07_20_034402_add_status_to_profiles', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `profile_id` int(11) NOT NULL,
  `pay` double(15,5) NOT NULL,
  `date_pay` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `profile_id`, `pay`, `date_pay`, `created_at`, `updated_at`) VALUES
(1, 116, 220.00000, '2019-01-05 00:00:00', '2019-03-31 21:05:40', '2019-03-31 21:05:40'),
(2, 116, 220.00000, '2019-04-04 00:00:00', '2019-03-31 21:06:31', '2019-03-31 21:06:31'),
(3, 116, 220.00000, '2019-04-03 12:00:00', '2019-03-31 21:06:31', '2019-03-31 21:06:31'),
(4, 116, 220.00000, '2019-04-02 12:00:00', '2019-03-31 21:06:46', '2019-03-31 21:06:46'),
(5, 27, 500.00000, '2019-04-01 12:00:00', '2019-03-31 21:33:25', '2019-03-31 21:33:25'),
(6, 27, 86.67000, '2019-04-02 12:00:00', '2019-03-31 21:45:42', '2019-03-31 21:45:42'),
(7, 27, 86.67000, '2019-04-03 12:00:00', '2019-03-31 21:46:31', '2019-03-31 21:46:31'),
(8, 27, 86.67000, '2019-04-04 12:00:00', '2019-03-31 21:47:20', '2019-03-31 21:47:20'),
(9, 110, 200.00000, '2019-04-01 12:00:00', '2019-03-31 21:55:38', '2019-03-31 21:55:38'),
(10, 110, 200.00000, '2019-04-02 12:00:00', '2019-03-31 21:55:44', '2019-03-31 21:55:44'),
(11, 92, 100.00000, '2019-04-01 12:00:00', '2019-03-31 22:08:07', '2019-04-01 21:06:48'),
(12, 110, 500.00000, '2019-04-03 12:00:00', '2019-03-31 22:36:53', '2019-03-31 22:36:53'),
(13, 109, 200.00000, '2019-04-01 12:00:00', '2019-04-01 00:00:49', '2019-04-01 00:00:49'),
(14, 109, 1000.00000, '2019-04-06 12:00:00', '2019-04-01 00:01:16', '2019-04-01 00:01:16'),
(15, 109, 200.00000, '2019-04-08 12:00:00', '2019-04-01 00:02:32', '2019-04-01 00:02:32'),
(16, 109, 200.00000, '2019-04-08 12:00:00', '2019-04-01 00:02:32', '2019-04-01 00:02:32'),
(17, 19, 100.00000, '2019-04-01 12:00:00', '2019-04-01 00:05:42', '2019-04-01 00:05:42'),
(18, 30, 29.46000, '2019-04-01 12:00:00', '2019-04-01 02:07:25', '2019-04-01 02:07:25'),
(19, 22, 421.67000, '2019-04-02 12:00:00', '2019-04-01 21:09:41', '2019-04-01 21:09:41'),
(20, 22, 421.67000, '2019-04-03 12:00:00', '2019-04-01 21:09:48', '2019-04-02 01:52:12'),
(26, 111, 110.00000, '2019-04-02 12:00:00', '2019-04-01 21:23:29', '2019-04-01 21:23:29'),
(27, 92, 600.00000, '2019-04-02 12:00:00', '2019-04-01 21:40:57', '2019-04-01 21:40:57'),
(28, 122, 60.00000, '2019-04-02 12:00:00', '2019-04-01 21:46:13', '2019-04-01 21:46:13'),
(30, 122, 60.00000, '2019-04-04 12:00:00', '2019-04-03 16:28:58', '2019-04-03 16:28:58'),
(31, 122, 60.00000, '2019-04-03 12:00:00', '2019-04-03 16:29:22', '2019-04-03 16:29:22'),
(32, 92, 100.00000, '2019-04-04 12:00:00', '2019-04-03 16:35:52', '2019-04-03 16:35:52'),
(33, 123, 100.00000, '2019-04-05 12:00:00', '2019-04-05 03:49:26', '2019-04-05 03:49:26'),
(34, 37, 108.00000, '2019-04-06 12:00:00', '2019-04-05 17:51:39', '2019-04-05 17:51:39'),
(36, 124, 120.00000, '2019-04-06 12:00:00', '2019-04-05 22:38:09', '2019-04-05 22:38:19'),
(37, 29, 88.61000, '2019-04-07 12:00:00', '2019-04-07 01:39:41', '2019-04-07 01:39:41'),
(39, 92, 200.00000, '2019-04-14 12:00:00', '2019-04-13 20:15:01', '2019-04-13 20:24:53'),
(40, 100, 40.00000, '2019-04-14 12:00:00', '2019-04-14 04:28:43', '2019-04-14 04:28:43'),
(41, 100, 40.00000, '2019-04-15 12:00:00', '2019-04-14 04:28:51', '2019-04-14 04:28:51'),
(42, 92, 100.00000, '2019-04-16 12:00:00', '2019-04-16 00:02:00', '2019-04-16 00:02:00'),
(43, 92, 100.00000, '2019-04-17 12:00:00', '2019-04-16 00:02:10', '2019-04-16 00:02:10'),
(44, 92, 100.00000, '2019-04-18 12:00:00', '2019-04-16 00:02:22', '2019-04-16 00:02:22'),
(45, 22, 421.67000, '2019-04-16 12:00:00', '2019-04-16 00:05:34', '2019-04-16 00:05:34'),
(46, 126, 100.00000, '2019-04-17 12:00:00', '2019-04-16 19:01:40', '2019-04-16 19:01:40'),
(47, 126, 500.00000, '2019-04-18 12:00:00', '2019-04-16 19:01:56', '2019-04-16 19:01:56'),
(48, 30, 29.46000, '2019-04-23 12:00:00', '2019-04-22 22:15:00', '2019-04-22 22:15:00'),
(49, 92, 4700.00000, '2019-04-23 12:00:00', '2019-04-22 22:17:55', '2019-04-22 22:17:55'),
(50, 28, 50.00000, '2019-05-03 12:00:00', '2019-05-03 02:14:21', '2019-05-03 02:14:21'),
(51, 94, 550.00000, '2019-05-19 12:00:00', '2019-05-18 21:30:58', '2019-05-18 21:30:58'),
(53, 30, 29.46000, '2019-05-19 12:00:00', '2019-05-18 21:45:01', '2019-05-18 21:45:01'),
(54, 117, 80.00000, '2019-05-27 12:00:00', '2019-05-26 19:32:20', '2019-05-26 19:32:20'),
(55, 117, 200.00000, '2019-04-28 12:00:00', '2019-05-26 19:33:07', '2019-05-26 19:33:07'),
(56, 19, 100.00000, '2019-05-27 12:00:00', '2019-05-26 19:42:21', '2019-05-26 19:42:21'),
(57, 30, 30.00000, '2019-05-27 12:00:00', '2019-05-26 19:51:27', '2019-05-26 19:51:27'),
(58, 94, 550.00000, '2019-06-01 12:00:00', '2019-05-31 18:15:55', '2019-05-31 18:15:55'),
(59, 128, 140.00000, '2019-07-10 12:00:00', '2019-07-09 17:53:31', '2019-07-09 17:53:31'),
(60, 22, 0.00000, '2019-07-14 12:00:00', '2019-07-13 17:58:15', '2019-07-13 17:58:15'),
(61, 125, 1200.00000, '2019-07-14 12:00:00', '2019-07-13 20:24:21', '2019-07-13 20:24:21');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loan` double(15,2) DEFAULT NULL,
  `interest` int(11) DEFAULT NULL,
  `term` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `per_day_in_words` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sum_in_words` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comaker2_cert_issued_at` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comaker2_cert_issued_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comaker2_certno` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comaker2_name` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comaker1_cert_issued_at` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comaker1_cert_issued_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comaker1_certno` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comaker1_name` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promisor_cert_issued_at` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promisor_cert_issued_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promisor_certno` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `full_name`, `address`, `area`, `loan`, `interest`, `term`, `status`, `date_from`, `date_to`, `contact`, `per_day_in_words`, `sum_in_words`, `comaker2_cert_issued_at`, `comaker2_cert_issued_on`, `comaker2_certno`, `comaker2_name`, `comaker1_cert_issued_at`, `comaker1_cert_issued_on`, `comaker1_certno`, `comaker1_name`, `promisor_cert_issued_at`, `promisor_cert_issued_on`, `promisor_certno`, `created_at`, `updated_at`) VALUES
(1, 'Maximo Bartoletti', '2533 Harmony Divide\nWest Orenmouth, MI 62682-3077', '1', 5000.00, 10, 2, NULL, '2019-01-04 00:00:00', '2019-03-17 00:00:00', '906.454.1889 x6132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:21', '2019-03-28 04:25:43'),
(2, 'Dan Shields', '482 Luna Hills\nDevanfort, AZ 91695-5738', '1', 3725.00, 10, 2, NULL, '2019-04-15 00:00:00', '2019-04-15 00:00:00', '495-441-6439 x9530', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:21', '2019-03-28 05:19:29'),
(3, 'Tatyana Schroeder', '4673 Lonnie Fall\nSouth Hazelhaven, PA 72490', '1', 1000.00, 10, 9, NULL, '2018-10-27 07:37:28', '2019-02-15 00:12:04', '561.994.1928 x4107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:21', '2019-03-27 22:38:21'),
(4, 'Jailyn Grady', '4837 Moore Well Suite 730\nRohanmouth, PA 44567', '1', 2000.00, 10, 8, NULL, '2018-09-06 14:15:17', '2018-11-30 18:42:04', '770-670-3429', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:21', '2019-03-27 22:38:21'),
(5, 'Caleb Walter II', '828 Keith Dale\nLake Quentin, NH 55955-6208', '1', 3000.00, 10, 6, NULL, '2018-10-27 12:25:37', '2019-05-17 23:56:31', '836.654.1226', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:21', '2019-03-27 22:38:21'),
(6, 'Mrs. Alysson Schneider PhD', '2076 Reid Loop Apt. 736\nLake Paolochester, MI 60875', '1', 6480.46, 10, 5, NULL, '2018-08-29 15:53:33', '2018-11-16 19:52:09', '(561) 567-1376', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:21', '2019-03-27 22:38:21'),
(7, 'Dr. Scottie Boyer', '2302 Aliyah Mills\nNew Rafaela, MI 56534-1333', '1', 1868.22, 10, 7, NULL, '2018-06-28 03:41:25', '2018-11-23 03:05:03', '(702) 289-6380 x1588', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:21', '2019-03-27 22:38:21'),
(8, 'Lizeth McDermott', '3147 Jakubowski Court\nOlsonfort, RI 73260', '1', 7240.71, 10, 7, NULL, '2018-09-01 08:31:46', '2018-08-26 12:37:16', '651.728.3969', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:21', '2019-03-27 22:38:21'),
(9, 'Bailee Russel', '705 Ankunding Burgs\nKesslerside, TN 45909', '1', 10000.00, 10, 5, NULL, '2018-08-04 23:36:41', '2019-03-14 03:39:05', '+1.947.998.0650', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:21', '2019-03-27 22:38:21'),
(10, 'Gia Fritsch PhD', '831 Karley Lane\nWintheisershire, UT 12543', '1', 4347.78, 2, 7, NULL, '2018-08-18 14:23:17', '2019-04-14 18:14:32', '(512) 584-1173', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:21', '2019-03-27 22:38:21'),
(11, 'Fae Murphy', '9003 Fahey Course\nNorth Quintenburgh, AR 71790-4815', '2', 4596.65, 3, 1, NULL, '2019-02-23 00:00:00', '2019-05-11 00:00:00', '257-804-0544', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:21', '2019-04-07 01:43:44'),
(12, 'Clifton Considine', '351 Fay Crossing Apt. 885\nNorth Kelliebury, TN 55001-0750', '2', 7956.37, 5, 2, NULL, '2018-05-01 00:00:00', '2018-04-23 00:00:00', '1-670-839-6782 x817', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:21', '2019-04-07 01:43:36'),
(13, 'Rollin Kuhic I', '338 Victoria Fort Suite 142\nPeterstad, NV 03282', '3', 2534.63, 3, 1, NULL, '2018-09-28 19:11:45', '2018-06-04 07:42:30', '1-496-707-7961', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:21', '2019-03-27 22:38:21'),
(14, 'Jaycee Witting', '555 Patrick Lodge\nVirginietown, MD 92080-7488', '3', 2212.12, 4, 3, NULL, '2018-09-01 21:06:15', '2019-01-20 10:09:37', '+1-403-490-3002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:21', '2019-03-27 22:38:21'),
(15, 'Teresa Howe', '95982 Jevon Ramp Apt. 497\nSerenityborough, VA 51357-8730', '4', 8489.43, 1, 4, NULL, '2018-09-14 03:05:21', '2018-08-13 16:07:00', '(874) 234-9418 x108', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:21', '2019-03-27 22:38:21'),
(16, 'Buddy White DVM', '6980 Dietrich Summit Suite 347\nMitchellstad, TN 32909', '4', 8008.14, 8, 4, NULL, '2019-02-18 17:09:58', '2018-06-26 08:06:33', '+1-470-301-2996', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:21', '2019-03-27 22:38:21'),
(17, 'Edyth Pfannerstill', '811 Schulist Hills\nNorth Adalinebury, NV 72567-4665', '4', 9930.32, 9, 9, NULL, '2019-02-20 23:46:13', '2018-04-28 07:38:11', '(760) 307-1308', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:21', '2019-03-27 22:38:21'),
(18, 'Miss Alycia Abshire', '581 Darian Springs\nBlickburgh, VA 38901', '4', 1654.94, 5, 2, NULL, '2018-06-15 12:51:15', '2018-10-10 23:07:10', '+1 (716) 906-8334', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:21', '2019-03-27 22:38:21'),
(19, 'Annabelle Boyle', '11281 Robin Lights Suite 767\nWest Denaberg, NV 65676-6674', '5', 5000.00, 10, 2, NULL, '2018-07-14 00:00:00', '2018-07-14 17:39:59', '(525) 808-9155', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:21', '2019-04-01 00:03:58'),
(20, 'Lewis Cormier', '2280 Hardy Avenue Suite 657\nNew Jude, GA 46889-9611', '4', 6500.00, 10, 2, NULL, '2019-01-24 00:00:00', '2018-08-13 00:00:00', '1-826-227-5853 x52726', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:21', '2019-04-01 19:07:29'),
(21, 'Trevion Durgan', '55250 William Lodge\nMorrisburgh, OK 16744', '4', 7000.00, 10, 1, NULL, '2019-04-01 06:21:29', '2019-05-01 14:50:14', '1-616-412-0301 x6660', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:21', '2019-03-31 19:01:24'),
(22, 'Adolphus, Schmeler B.', '46452 Hansen Mountains Apt. XXXyyy', '7', 10000.00, 10, 2, NULL, '2018-07-28 00:00:00', '2018-05-02 00:00:00', '901-921-1885 x79593', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:21', '2019-07-13 21:03:58'),
(23, 'Lilian Sauer', '73187 Hagenes Mountain Apt. 654\nAndersonbury, MN 95226', '4', 7460.52, 2, 1, NULL, '2019-01-31 16:00:43', '2018-06-22 00:13:53', '862.508.1628 x0458', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:21', '2019-03-27 22:38:21'),
(24, 'Lexus Bauch', '9654 Zoey Harbor\nLake Liana, MS 85386-3260', '4', 2147.84, 4, 3, NULL, '2018-12-05 12:13:19', '2018-06-08 03:42:48', '(735) 668-4329', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:21', '2019-03-27 22:38:21'),
(25, 'Concepcion Orn', '29005 Viola Locks Suite 439\nWunschstad, SC 53400-6432', '4', 5293.38, 0, 3, NULL, '2018-08-11 06:48:45', '2019-05-02 13:47:07', '(978) 948-8922', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:21', '2019-03-27 22:38:21'),
(26, 'Prof. Allie Murray Jr.', '69932 Von Spurs\nWest Catharineton, NJ 73672', '4', 5388.00, 10, 3, NULL, '2018-12-29 00:00:00', '2018-05-19 00:00:00', '334-231-0533', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:21', '2019-04-01 19:08:48'),
(27, 'Celestine X. Leannon', '297 Cronin WalksPort Reeceberg', '5', 6000.00, 10, 2, NULL, '2018-10-16 00:00:00', '2018-04-25 00:00:00', '1234567890', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:21', '2019-04-01 02:04:34'),
(28, 'Bessie Kuphal', '17798 Trystan Orchard Apt. 927\nWehnerberg, TX 37013-0594', '1', 5956.82, 6, 4, NULL, '2018-04-01 18:00:11', '2019-02-02 05:08:17', '1-360-637-8431 x206', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:21', '2019-03-27 22:38:21'),
(29, 'Prof. Name Little PhD', '183 Hermann Valleys Apt. 601\nMarcellamouth, IN 91934-1339', '1', 9494.06, 8, 5, NULL, '2018-10-13 23:09:44', '2018-05-07 06:48:35', '869-610-6486 x233', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:21', '2019-03-27 22:38:21'),
(30, 'Annie Dare', '18176 Wintheiser Crossroad\nArielleburgh, WI 67299', '1', 4356.30, 6, 7, NULL, '2018-10-04 10:28:16', '2018-08-22 04:44:29', '(642) 761-7628 x288', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:21', '2019-03-27 22:38:21'),
(31, 'Kamron Tillman', '83923 Marks Burgs Apt. 324\nPort Gabeburgh, TN 52617', '1', 1443.52, 10, 3, NULL, '2018-09-30 00:00:00', '2019-05-23 00:00:00', '1-831-790-2122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:22', '2019-04-01 19:06:45'),
(32, 'Prof. Evan Kessler', '8670 Haskell Keys Apt. 694\nNew Mya, MT 66372', '1', 8654.93, 5, 6, NULL, '2019-01-22 05:29:10', '2019-04-30 08:41:59', '(223) 834-1181', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:22', '2019-03-27 22:38:22'),
(33, 'Heloise Macejkovic', '28344 Mayer Throughway Apt. 293\nEast Kailyntown, IL 03657-5006', '1', 2000.00, 10, 2, NULL, '2018-11-25 00:00:00', '2018-07-29 00:00:00', '(885) 584-2964 x52717', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:22', '2019-04-01 19:06:13'),
(34, 'Darlene Kulas', '931 Armand Skyway Apt. 063\nSouth Dusty, AK 60772', '1', 4039.50, 4, 1, NULL, '2018-10-09 06:16:33', '2019-01-07 08:10:13', '+18643748119', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:22', '2019-03-27 22:38:22'),
(35, 'Beth D. Hyatt', '23555 Ruthie Center\nSincereland, WI 03594-9398', '2', 1993.48, 10, 2, NULL, '2018-09-28 00:00:00', '2018-04-11 00:00:00', '1-334-299-4836 x21254', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:22', '2019-04-07 01:43:09'),
(36, 'Ms. Maritza Ruecker', '1046 Willms Camp\nPort Hermannchester, DE 39742-9878', '10642-9244', 5374.09, 4, 7, NULL, '2018-10-17 13:30:02', '2018-10-13 23:55:52', '652.802.1561', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:22', '2019-03-27 22:38:22'),
(37, 'Alexandrea West', '557 Hoeger Pine Suite 912\nNew Moses, WY 48516-1150', '5', 5367.68, 10, 2, NULL, '2018-10-27 00:00:00', '2018-10-07 00:00:00', '314-487-9681 x2708', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:22', '2019-03-28 04:40:08'),
(38, 'Mr. Dayton Toy', '57649 Mason Vista Suite 639\nSouth Cristobal, AZ 06336-6762', '45664', 9705.68, 3, 6, NULL, '2018-06-22 14:14:42', '2018-04-25 17:24:57', '(648) 846-7382 x2498', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:22', '2019-03-27 22:38:22'),
(39, 'Sandy Gulgowski', '25285 Kamren Island\nEliseohaven, HI 74686', '73514-6797', 8950.98, 6, 3, NULL, '2019-02-01 12:00:22', '2019-03-16 03:09:52', '+1-971-216-5797', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:22', '2019-03-27 22:38:22'),
(40, 'Maegan Stoltenberg III', '81306 Anastacio Branch Suite 538\nJonestown, FL 46564-9193', '31490-6577', 9052.52, 1, 2, NULL, '2018-04-19 15:16:20', '2019-03-11 09:36:04', '+1-758-947-0611', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:22', '2019-03-27 22:38:22'),
(41, 'Don Hoppe Sr.', '42774 Bode Land\nNew Horace, WI 75968', '21394', 8014.18, 4, 8, NULL, '2019-03-23 16:19:38', '2018-10-23 12:49:16', '282.599.3005 x97487', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:22', '2019-03-27 22:38:22'),
(42, 'Brandy Hermiston', '2859 Renee Isle\nBoehmfurt, ME 99904', '50653', 2162.95, 1, 3, NULL, '2018-11-02 08:57:45', '2018-10-04 11:50:27', '287.586.5951', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:22', '2019-03-27 22:38:22'),
(43, 'Tevin Corwin', '26727 Wilderman Walk\nSporerview, ME 62477', '87849', 6982.39, 7, 3, NULL, '2019-02-16 19:41:17', '2019-02-10 04:07:59', '(480) 451-5756 x368', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:22', '2019-03-27 22:38:22'),
(44, 'Aron Nitzsche', '5064 Torp Skyway Apt. 427\nDanielshire, WI 96591', '1', 1924.59, 9, 1, NULL, '2018-10-07 00:00:00', '2019-02-04 00:00:00', '378-713-4848', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:22', '2019-04-01 19:10:06'),
(45, 'Mr. Elian Okuneva', '8461 Ashley Views\nLake Archibaldburgh, NY 90211-2820', '83406-1616', 7391.78, 9, 4, NULL, '2018-09-15 09:33:57', '2018-11-10 06:44:21', '719-828-1479', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:22', '2019-03-27 22:38:22'),
(46, 'Brock Wyman', '19009 Kirlin Forks Apt. 937\nPort Rebeccaland, FL 53189-8309', '71440-0573', 5957.86, 3, 9, NULL, '2018-03-30 17:55:33', '2019-05-09 17:01:29', '+14283829720', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:22', '2019-03-27 22:38:22'),
(48, 'Kelly Reynolds', '4409 Rogers Station Apt. 730\nLake Jonmouth, NE 80457-4566', '19881', 4472.87, 0, 2, NULL, '2018-07-29 09:09:05', '2018-09-18 12:46:43', '+1-418-413-2318', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:22', '2019-03-27 22:38:22'),
(49, 'Carole Macejkovic', '855 Raphael Estates\nSwiftburgh, SC 02939-0976', '80961', 1478.99, 4, 2, NULL, '2018-08-13 20:23:22', '2019-02-13 05:15:18', '992.773.9666', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:22', '2019-03-27 22:38:22'),
(50, 'Haylie Boyle', '954 Hayes Turnpike Suite 171\nLake Dejah, PA 01773-8024', '12708-7099', 9570.77, 5, 6, NULL, '2019-02-10 20:12:05', '2019-01-30 05:05:23', '1-862-376-8086', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:22', '2019-03-27 22:38:22'),
(51, 'Bartholome Nikolaus', '9779 Ivory Station Suite 531\nPort Evefort, GA 57082-5984', '40105', 5712.69, 8, 4, NULL, '2018-05-23 21:16:35', '2019-01-26 11:09:38', '791-252-1402 x03141', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:22', '2019-03-27 22:38:22'),
(52, 'Carrie Mueller', '9236 Era Trafficway\nKeelingfort, ID 84531-8367', '31243-4966', 4175.81, 4, 9, NULL, '2018-07-13 06:55:19', '2019-04-23 19:24:24', '698-286-9821', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:22', '2019-03-27 22:38:22'),
(53, 'Lee Tremblay', '71708 Aleen Alley\nKutchside, NY 48448-3892', '52056', 3931.20, 2, 7, NULL, '2018-12-14 09:30:40', '2018-04-19 21:29:16', '624-699-6004', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:22', '2019-03-27 22:38:22'),
(54, 'Lindsay Dare', '627 Wunsch Passage\nGissellechester, SD 64166', '38696', 3793.40, 5, 7, NULL, '2018-09-27 03:02:20', '2018-05-02 13:29:51', '918.600.5667 x04471', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:22', '2019-03-27 22:38:22'),
(55, 'Jada Crooks', '12692 Javonte Streets Suite 291\nKuphalfurt, KY 37182-8388', '85227', 7159.45, 5, 6, NULL, '2018-10-09 15:32:19', '2018-08-06 10:39:51', '1-912-360-0083 x70113', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:22', '2019-03-27 22:38:22'),
(56, 'Mrs. Rosie Reinger', '35096 Willms Village\nPort Melissa, ME 43872-9037', '29906', 9106.85, 9, 5, NULL, '2018-04-09 09:05:17', '2019-04-15 07:50:19', '205.654.0959 x336', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:22', '2019-03-27 22:38:22'),
(57, 'Kenya Klocko', '44917 Melissa Oval Apt. 524\nNorth Brittanyhaven, DE 43541', '37409-8181', 7338.09, 6, 1, NULL, '2018-09-06 01:34:38', '2019-02-17 05:17:59', '673-253-3308 x31223', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:22', '2019-03-27 22:38:22'),
(58, 'Trisha Paucek', '18617 Larson Mount Suite 469\nKunzeton, NC 79896', '92034-8933', 3825.82, 2, 1, NULL, '2018-08-08 18:31:45', '2019-05-22 01:42:38', '(287) 933-7831', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:22', '2019-03-27 22:38:22'),
(59, 'Camila Ankunding', '2120 Jenkins Shores\nBernhardland, ID 12494-6410', '50902-0405', 4780.39, 0, 3, NULL, '2018-11-19 12:38:44', '2019-05-05 02:18:04', '963.796.6528 x311', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:22', '2019-03-27 22:38:22'),
(60, 'Prof. Murphy Kulas', '6386 Alexanne Freeway Suite 788\nSouth Tayaland, GA 20223', '35528-7767', 1654.63, 5, 5, NULL, '2018-09-20 18:20:00', '2018-04-29 06:49:28', '(791) 271-8454', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:22', '2019-03-27 22:38:22'),
(61, 'Jaqueline White', '608 Steuber Radial\nSouth Ellis, VT 67317-3493', '26840', 1396.20, 7, 7, NULL, '2018-11-04 13:42:02', '2018-07-13 14:45:37', '+1 (642) 577-8775', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:22', '2019-03-27 22:38:22'),
(62, 'Mrs. Adell Langosh', '3264 Christophe Expressway\nWest Joeybury, TX 85761', '65063-3489', 1062.28, 2, 5, NULL, '2018-06-18 11:52:16', '2018-05-21 17:51:08', '841.697.2214', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:22', '2019-03-27 22:38:22'),
(63, 'Prof. Maximillian Hudson', '85343 Nathan Ways Apt. 211\nEast Kirsten, OR 19570', '27010-2311', 8928.50, 4, 8, NULL, '2018-11-09 13:27:17', '2019-03-07 18:48:28', '884-700-1131 x961', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:23', '2019-03-27 22:38:23'),
(64, 'Josiane Rosenbaum IV', '5094 Juliana Loop Suite 361\nDanielleland, WI 02794-5519', '03986-5683', 5407.85, 6, 9, NULL, '2018-08-05 23:52:56', '2018-08-07 22:32:29', '1-945-616-3528 x7512', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:23', '2019-03-27 22:38:23'),
(65, 'Faye Berge', '68198 Mariah Cliff\nWest Mariannaport, TN 18390-8729', '10590-5454', 6395.38, 2, 4, NULL, '2018-04-17 15:13:26', '2019-04-25 14:05:14', '447-919-1099 x72796', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:23', '2019-03-27 22:38:23'),
(66, 'Mrs. Neva Kirlin DVM', '5914 Emard Locks Apt. 653\nStanfordton, NC 95202', '41214', 3100.31, 4, 5, NULL, '2019-02-15 13:43:56', '2018-06-06 01:07:13', '1-756-863-3600 x880', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:23', '2019-03-27 22:38:23'),
(67, 'Prof. Beau Luettgen', '13333 Grant Curve\nNew Oceanemouth, WY 34259', '12297-3346', 3830.43, 3, 4, NULL, '2018-08-24 01:52:30', '2019-05-21 14:19:33', '986.847.0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:23', '2019-03-27 22:38:23'),
(68, 'Malachi Fritsch V', '81788 Jalen Flats Apt. 820\nHuelton, SD 61372-6188', '96921', 1641.96, 9, 3, NULL, '2018-08-11 09:26:16', '2018-07-03 00:58:38', '1-843-604-6689 x2296', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:23', '2019-03-27 22:38:23'),
(69, 'Donnell Anderson', '9119 Emma Mountain\nEast Colten, MT 14606-3672', '50093', 4397.75, 0, 4, NULL, '2019-03-29 06:43:16', '2019-05-14 23:52:46', '953.984.0063 x42981', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:23', '2019-03-27 22:38:23'),
(70, 'Dr. Kailyn Rath', '67742 Waelchi Overpass Suite 403\nEast Madiehaven, KS 10225-0710', '59974-6792', 1327.64, 6, 2, NULL, '2018-03-29 02:07:21', '2019-01-06 13:52:37', '286.530.9200 x380', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:23', '2019-03-27 22:38:23'),
(71, 'Edwina McDermott', '8824 Eleanora Fork Apt. 716\nVonRuedenstad, LA 42840-3678', '27066', 6944.10, 6, 5, NULL, '2018-11-14 19:04:18', '2019-04-09 09:47:32', '(267) 732-0329 x743', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:23', '2019-03-27 22:38:23'),
(72, 'Samanta Huel', '72152 Hammes Centers\nPort Evetown, TN 40869', '90420-3116', 6650.27, 2, 7, NULL, '2018-05-18 16:57:05', '2018-10-18 03:45:52', '(882) 927-7315', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:23', '2019-03-27 22:38:23'),
(73, 'Elroy Adams IV', '4421 Mante Trail\nWest Nelsonburgh, ID 58809-6613', '31403-3811', 3217.92, 2, 3, NULL, '2018-10-22 18:21:12', '2018-03-28 10:17:00', '+1 (940) 565-6838', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:23', '2019-03-27 22:38:23'),
(74, 'Kristian Reilly MD', '99711 Hagenes Mall\nPort Unique, HI 36728-3077', '02142-9350', 6466.32, 0, 9, NULL, '2018-11-14 16:24:27', '2018-12-31 02:06:16', '380.676.6193 x37847', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:23', '2019-03-27 22:38:23'),
(75, 'Lela Morissette', '4175 Martina Lock Suite 394\nJoneshaven, CA 24665-8292', '67702', 2251.16, 7, 5, NULL, '2018-09-01 02:03:49', '2018-09-06 14:26:28', '1-845-874-6840', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:23', '2019-03-27 22:38:23'),
(76, 'Mikel Connelly', '6245 Becker Well\nKlingview, OH 49859-5670', '43548-0338', 6195.05, 6, 6, NULL, '2019-01-07 15:12:21', '2018-04-17 21:42:39', '975-433-0692 x562', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:23', '2019-03-27 22:38:23'),
(77, 'Howell Mayer Jr.', '2197 Rath Ville\nNew Olliestad, NJ 61798', '98615-0115', 8693.93, 5, 3, NULL, '2018-11-24 02:52:44', '2018-07-31 17:38:47', '1-990-717-5599 x376', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:23', '2019-03-27 22:38:23'),
(78, 'Ayla Stark', '1082 Zieme Lodge\nFisherview, WY 64804-5890', '26169-4451', 2949.18, 7, 6, NULL, '2018-07-26 04:26:23', '2019-05-09 17:17:34', '+1-792-363-0701', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:23', '2019-03-27 22:38:23'),
(79, 'Jedidiah Gleason', '122 Littel Ports\nDarienville, NH 96369', '17824-9569', 3025.95, 0, 4, NULL, '2018-04-12 16:00:54', '2019-04-22 20:55:28', '1-874-820-4794 x2565', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:23', '2019-03-27 22:38:23'),
(80, 'Mr. Quinton Batz DVM', '190 Lelia Mill\nZboncaktown, ME 08739', '13990-2680', 3834.66, 5, 8, NULL, '2018-11-10 15:22:36', '2019-03-24 02:01:24', '1-297-826-8972 x90560', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:23', '2019-03-27 22:38:23'),
(81, 'Prof. Albert Gusikowski MD', '91713 Lueilwitz Brooks\nViolettefort, MS 25751-0419', '14272', 1286.34, 8, 8, NULL, '2018-05-14 22:21:47', '2018-06-30 05:51:33', '776.946.9214', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:23', '2019-03-27 22:38:23'),
(82, 'Andre Tromp', '4558 Hauck Fort\nNew Hazle, MS 88305-5097', '48252-8916', 6542.00, 10, 5, NULL, '2019-02-01 00:00:00', '2019-05-28 00:00:00', '897-403-6256', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:23', '2019-04-01 02:05:11'),
(83, 'Ms. Imogene Turcotte', '689 Chase Road\nSouth Adalineside, SD 20014-9821', '05689-9058', 1161.33, 8, 1, NULL, '2018-07-18 17:09:35', '2018-08-16 22:05:10', '1-456-758-9474', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:23', '2019-03-27 22:38:23'),
(84, 'Jermaine Lemke', '244 Pablo Park Apt. 569\nRennerfurt, DC 73628-4128', '13470', 2829.37, 3, 5, NULL, '2018-04-27 22:46:49', '2018-08-14 00:47:07', '267.617.1804', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:23', '2019-03-27 22:38:23'),
(85, 'Gail Willms', '4907 Kristin Isle Suite 688\nRathshire, ME 03438', '23333', 9450.52, 6, 5, NULL, '2018-07-04 12:53:50', '2018-06-03 00:24:05', '1-269-524-8191', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:23', '2019-03-27 22:38:23'),
(86, 'Dean Hodkiewicz', '151 Hollis Summit\nKiraborough, NM 00919-1884', '03297', 1252.89, 2, 1, NULL, '2018-10-20 17:35:19', '2019-03-21 08:13:37', '1-858-772-0688 x9064', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:23', '2019-03-27 22:38:23'),
(87, 'Dr. Nia Breitenberg', '957 Khalid Track Apt. 499\nSmithside, AZ 61392-1273', '76052-3110', 3642.58, 1, 6, NULL, '2018-12-04 09:33:09', '2018-08-06 21:22:51', '690.605.6877', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:23', '2019-03-27 22:38:23'),
(88, 'Jerrod Morissette', '29583 Armstrong Terrace\nSchusterstad, HI 92406', '47734', 9590.77, 4, 3, NULL, '2018-06-30 00:35:13', '2019-02-27 21:28:46', '1-976-497-9839 x9760', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:23', '2019-03-27 22:38:23'),
(89, 'Mrs. Matilde Prohaska', '7412 Hailee Highway\nNorth Rogeliofort, CA 55393-7947', '66947', 9267.61, 4, 4, NULL, '2018-12-15 10:46:05', '2018-11-29 16:17:18', '1-502-489-2927', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:23', '2019-03-27 22:38:23'),
(90, 'Marlen Rosenbaum', '1178 Tillman Summit Apt. 841\nSouth Rasheed, MA 00717-2634', '77706-1893', 1327.20, 7, 5, NULL, '2018-04-25 16:01:48', '2019-02-27 08:26:15', '+1-831-871-1059', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:23', '2019-03-27 22:38:23'),
(91, 'Iliana Corkery', '9192 Kling Crossroad\nNorth Bertha, MT 61566-2545', '37300', 8633.92, 2, 2, NULL, '2019-01-18 09:50:58', '2019-03-01 01:09:08', '606-819-0484', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:23', '2019-03-27 22:38:23'),
(93, 'Jamel Ledner', '8391 Kacey Trace\nNew Itzel, ND 76475-1612', '62187-7454', 4711.30, 3, 6, NULL, '2018-07-23 06:26:30', '2018-06-24 05:26:33', '846.337.4569 x882', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:23', '2019-03-27 22:38:23'),
(94, 'Amani Hoeger Aga', '44242 Sporer Mission Apt. 604\nDorriston, KY 20743', '1', 15000.00, 10, 1, NULL, '2018-09-30 00:00:00', '2019-03-05 00:00:00', '1-439-862-9212 x551', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:23', '2019-07-12 22:49:58'),
(96, 'Moses Corwin', '7995 Purdy Trail Suite 598\nNew Soledadton, ME 66115-2256', '51235', 6517.58, 6, 9, NULL, '2019-01-24 07:44:23', '2018-06-08 08:34:32', '659-920-3225 x645', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:24', '2019-03-27 22:38:24'),
(97, 'Mrs. Georgianna Rolfson', '11202 Richie Ways\nPort Brendan, KY 81697', '83416', 6509.33, 5, 6, NULL, '2018-07-31 03:23:34', '2019-03-10 07:09:00', '+12427526628', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:24', '2019-03-27 22:38:24'),
(98, 'Dr. Alexzander Cruickshank', '44579 Durgan Mountains Suite 510\nSouth Katharinaview, DC 34679', '43265-3994', 3173.51, 9, 4, NULL, '2019-04-03 22:36:05', '2019-01-25 03:51:32', '+1-650-341-6731', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:24', '2019-03-27 22:38:24'),
(99, 'Janiya Kunze', '5313 Jaida Fields Apt. 027\nKuhlmanhaven, ME 00971', '52577-8764', 6499.41, 2, 8, NULL, '2019-03-30 13:45:48', '2018-12-31 07:53:07', '632-458-2125 x785', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:24', '2019-03-27 22:38:24'),
(100, 'Christian Mayert Patayrt', '99892 Breitenberg Prairie Suite 790\nNew Eltatown, LA 90027', '6', 2000.00, 10, 2, NULL, '2018-12-19 00:00:00', '2018-08-20 00:00:00', '+18755417900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-27 22:38:24', '2019-07-09 17:28:31'),
(106, 'Dominguez, Asd D.', 'Dipolog City', '1', 10000.00, 10, 2, NULL, '2018-12-19 00:00:00', '2018-12-19 00:00:00', '1234567890', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-29 22:49:02', '2019-04-01 21:25:41'),
(107, 'Dominguez, Fedex D.', 'Dipolog City', '1', 10000.00, 10, 2, NULL, '2018-12-19 00:00:00', '2018-12-19 00:00:00', '1234567890', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-29 22:50:12', '2019-04-01 21:26:06'),
(108, 'Dominguez, RexM D.', 'Dipolog City', '1', 10000.00, 10, 2, NULL, '2018-12-19 19:55:05', '2018-12-19 19:55:05', '1234567890', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-29 22:50:54', '2019-03-29 22:50:54'),
(110, 'Daguinotas, Tapol', 'Sapang Dalaga City', '5', 10000.00, 10, 2, NULL, '2019-04-01 00:00:00', '2019-05-01 00:00:00', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-29 22:52:43', '2019-03-31 21:55:24'),
(111, 'Hagonoy, Mike S.', '44242 Sporer Mission Apt. 604Dorriston, KY 20743', '2', 5500.00, 10, 2, NULL, '2019-04-01 00:00:00', '2019-05-31 00:00:00', '901-921-1885 x79593', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-29 22:57:17', '2019-03-31 18:36:55'),
(116, 'Batera, Peter Lim', 'Subang Daku, New York', '5', 11000.00, 10, 2, NULL, '2019-04-01 08:00:00', '2019-05-31 08:00:00', '1234567890', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-31 06:36:37', '2019-03-31 06:36:37'),
(117, 'Dalisay, Kardo S.', 'Siyayan, ZN', '3', 4000.00, 10, 2, NULL, '2019-04-01 08:00:00', '2019-05-31 08:00:00', '2125840123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-31 06:42:08', '2019-03-31 06:42:08'),
(119, 'Dan Shields X.', '482 Luna HillsDevanfort, AZ 91695-5738', '3', 10000.00, 10, 2, NULL, '2019-03-01 00:00:00', '2019-04-30 00:00:00', '1234567890', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-31 06:49:34', '2019-07-12 22:49:39'),
(121, 'Domz, Macy T.', 'Sta Isabel, Dipolog City', '4', 9000.00, 10, 2, NULL, '2019-04-01 08:00:00', '2019-05-31 08:00:00', '098123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-31 18:06:02', '2019-03-31 18:06:02'),
(122, 'inday Market', 'Silawe Polanco ZN', '6', 3000.00, 10, 2, NULL, '2019-04-02 08:00:00', '2019-06-01 08:00:00', '212-5842', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-01 21:45:45', '2019-04-01 21:45:45'),
(124, 'Dikinaya, Muli X.', 'Mapang, Rizal Zn.', '6', 6000.00, 10, 2, NULL, '2019-04-06 00:00:00', '2019-06-05 00:00:00', '212-3423', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-05 22:35:57', '2019-04-08 18:41:23'),
(125, 'Albert Monta S.', '482 Luna HillsDevanfort, AZ 91695-5738', '4', 60000.00, 10, 2, NULL, '2019-04-16 00:00:00', '2019-06-15 00:00:00', '901-921-1885 x79593', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-15 18:11:03', '2019-07-14 03:16:08'),
(126, 'Xxxxx Sy Y.', 'Dipolog City', '5', 5000.00, 10, 2, NULL, '2019-04-18 00:00:00', '2019-06-17 00:00:00', '1234567890', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-16 18:59:43', '2019-04-16 19:00:36'),
(127, 'Bantol, James S.', 'Mapang, Rizal Zn.', '7', 5000.00, 10, 2, NULL, '2019-06-01 00:00:00', '2019-07-31 00:00:00', '212-3423', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-31 18:42:15', '2019-07-10 19:38:01'),
(128, 'Christian Carlos', 'Dipolog City', '7', 7000.00, 10, 2, NULL, '2019-07-10 08:00:00', '2019-09-08 08:00:00', '1234567890', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-09 17:50:33', '2019-07-09 17:50:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'rex', 'dominguezrex@gmail.com', '$2y$10$vvHEqBpDdwQg09E3kAOty.2UXv/BmCmx7U4EqudbRqNlhbbPbW46K', 'GABYST9WcK9HgRpTjKoKLBVw8bjUOMDE3AKWgw7gvc5INqDSesg11xrSCsaM', '2019-03-27 22:47:22', '2019-03-27 22:47:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
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
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
