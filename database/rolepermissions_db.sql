-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2025 at 07:16 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `meta_title`, `meta_keyword`, `meta_description`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Php', 'php', 'Php Interview Question Answer', 'Php Interview Question Answer', 'Php Interview Question Answer for Experienced', NULL, NULL, '2024-12-03 17:57:47', '2024-12-03 17:57:47'),
(2, 'Mysql', 'mysql', 'Mysql Interview Question Answer', 'Mysql Interview Question Answer', 'Mysql Interview Question Answer for Experienced', NULL, NULL, '2024-12-03 18:02:33', '2024-12-03 18:02:33'),
(3, 'Laravel', 'laravel', 'Laravel Interview Questions', 'Laravel Interview Questions', 'Laravel Interview Questions', NULL, NULL, '2024-12-03 18:03:21', '2024-12-03 18:03:21'),
(4, 'Javascript', 'javascript', 'javscript', 'javscript, interview, question, answer', 'javscript interview questions', NULL, NULL, '2024-12-05 16:46:24', '2024-12-05 17:28:23');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_09_135640_create_permission_tables', 1),
(5, '2020_10_09_135732_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(7, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `cid` int(11) DEFAULT NULL,
  `controller` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `action` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `depth` decimal(6,3) NOT NULL,
  `icon` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `description`, `pid`, `cid`, `controller`, `action`, `depth`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Users', '', 0, NULL, NULL, NULL, '100.000', 'fa fa-user', '2023-09-04 16:34:59', '2023-09-04 11:04:59'),
(3, 'Masters', 'All masters data', 0, NULL, NULL, NULL, '2.000', 'fa fa-asterisk', '2023-03-09 16:48:38', '2023-03-09 11:18:38'),
(4, 'Roles', '', 3, NULL, 'roles', 'index', '1.000', NULL, '2018-10-29 12:07:19', '2018-10-29 12:07:19'),
(5, 'Modules', 'module list', 3, NULL, 'modules', 'index', '2.000', NULL, '2018-10-29 12:09:45', '2018-10-29 12:09:45'),
(7, 'Assign Sidebar Role', 'rolespermissions', 3, NULL, 'rolepermissions', 'index', '2.000', NULL, '2018-10-29 12:14:41', '2018-10-29 12:20:18'),
(8, 'All Users', 'All users list', 1, NULL, 'users', 'index', '1.000', NULL, '2018-10-29 12:21:10', '2018-10-29 12:21:10'),
(15, 'Dashboard', '', 14, NULL, 'dashboard', 'index', '1.000', NULL, '2018-11-14 14:32:05', '2018-11-14 14:32:05'),
(191, 'Add  New User', 'create', 1, 1, 'users', 'create', '2.000', NULL, '2022-12-02 21:18:03', '2022-12-02 15:48:03'),
(192, 'edit', 'edit', 1, 0, 'users', 'edit', '3.000', NULL, '2022-11-17 22:57:15', '2022-11-17 17:27:15'),
(193, 'view', 'view', 1, 0, 'users', 'view', '4.000', NULL, '2022-11-17 22:58:32', '2022-11-17 17:28:32'),
(493, 'Profile', 'profile', 1, 1, 'users', 'profile', '5.000', NULL, '2023-06-12 18:30:03', '2023-06-12 13:00:03'),
(703, 'Product', 'Product Module', 0, 0, '', '', '3.000', NULL, '2024-10-26 12:09:52', '2024-10-26 12:09:52'),
(704, 'Index', 'Product-Index', 703, 0, 'products', 'index', '1.000', NULL, '2024-10-26 12:09:52', '2024-10-26 12:09:52'),
(705, 'Create', 'Product-Create', 703, 0, 'products', 'create', '2.000', NULL, '2024-10-26 12:09:52', '2024-10-26 12:09:52'),
(706, 'Edit', 'Product-Edit', 703, 0, 'products', 'edit', '3.000', NULL, '2024-10-26 12:09:52', '2024-10-26 12:09:52'),
(707, 'Destroy', 'Product-Destroy', 703, 0, 'products', 'delete', '4.000', NULL, '2024-10-26 12:09:52', '2024-10-26 12:09:52'),
(708, 'Category', 'Skill Category', 0, 0, '', '', '7.000', NULL, '2024-12-03 16:31:07', '2024-12-03 16:31:07'),
(709, 'Index', 'Category-Index', 708, 0, 'categories', 'index', '1.000', NULL, '2024-12-03 16:31:07', '2024-12-03 16:31:07'),
(710, 'Create', 'Category-Create', 708, 0, 'categories', 'create', '2.000', NULL, '2024-12-03 16:31:07', '2024-12-03 16:31:07'),
(711, 'Edit', 'Category-Edit', 708, 0, 'categories', 'edit', '3.000', NULL, '2024-12-03 16:31:07', '2024-12-03 16:31:07'),
(712, 'Destroy', 'Category-Destroy', 708, 0, 'categories', 'destroy', '4.000', NULL, '2024-12-03 16:31:07', '2024-12-03 16:31:07'),
(713, 'Post', 'Post', 0, 0, '', '', '7.000', NULL, '2024-12-05 17:07:15', '2024-12-05 17:07:15'),
(714, 'Index', 'Post-Index', 713, 0, 'posts', 'index', '1.000', NULL, '2024-12-05 17:07:15', '2024-12-05 17:07:15'),
(715, 'Create', 'Post-Create', 713, 0, 'posts', 'create', '2.000', NULL, '2024-12-05 17:07:15', '2024-12-05 17:07:15'),
(716, 'Edit', 'Post-Edit', 713, 0, 'posts', 'edit', '3.000', NULL, '2024-12-05 17:07:15', '2024-12-05 17:07:15'),
(717, 'Destroy', 'Post-Destroy', 713, 0, 'posts', 'destroy', '4.000', NULL, '2024-12-05 17:07:15', '2024-12-05 17:07:15');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2023-10-06 03:15:55', '2023-10-06 03:15:55'),
(2, 'role-create', 'web', '2023-10-06 03:15:55', '2023-10-06 03:15:55'),
(3, 'role-edit', 'web', '2023-10-06 03:15:55', '2023-10-06 03:15:55'),
(4, 'role-delete', 'web', '2023-10-06 03:15:55', '2023-10-06 03:15:55'),
(5, 'user-list', 'web', NULL, NULL),
(6, 'user-create', 'web', NULL, NULL),
(7, 'user-edit', 'web', NULL, NULL),
(8, 'user-delete', 'web', NULL, NULL),
(9, 'module-list', 'web', '2023-10-12 03:15:55', '2023-10-12 03:15:55'),
(10, 'module-create', 'web', '2023-10-06 03:15:55', '2023-10-06 03:15:55'),
(11, 'module-edit', 'web', '2023-10-06 03:15:55', '2023-10-06 03:15:55'),
(12, 'module-delete', 'web', '2023-10-06 03:15:55', '2023-10-06 03:15:55'),
(17, 'product-index', 'web', '2024-10-26 06:39:52', '2024-10-26 06:39:52'),
(18, 'product-create', 'web', '2024-10-26 06:39:52', '2024-10-26 06:39:52'),
(19, 'product-edit', 'web', '2024-10-26 06:39:52', '2024-10-26 06:39:52'),
(20, 'product-delete', 'web', '2024-10-26 06:39:52', '2024-10-26 06:39:52'),
(22, 'category-index', 'web', '2024-12-03 11:01:07', '2024-12-03 11:01:07'),
(23, 'category-create', 'web', '2024-12-03 11:01:07', '2024-12-03 11:01:07'),
(24, 'category-edit', 'web', '2024-12-03 11:01:07', '2024-12-03 11:01:07'),
(25, 'category-destroy', 'web', '2024-12-03 11:01:07', '2024-12-03 11:01:07'),
(26, 'post-index', 'web', '2024-12-05 11:37:15', '2024-12-05 11:37:15'),
(27, 'post-create', 'web', '2024-12-05 11:37:15', '2024-12-05 11:37:15'),
(28, 'post-edit', 'web', '2024-12-05 11:37:15', '2024-12-05 11:37:15'),
(29, 'post-destroy', 'web', '2024-12-05 11:37:15', '2024-12-05 11:37:15');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `category_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Core Php', 'core-php', 1, 'Core Php Interview Questions', '2024-12-05 13:10:21', '2024-12-05 18:41:22'),
(2, 'Laravel', 'laravel', 1, 'Laravel Interview Questions', '2024-12-05 13:11:46', '2024-12-05 18:45:42'),
(3, 'Cake Php', 'cake-php', 1, 'Cake Php Interview Questions', '2024-12-05 13:15:11', '2024-12-05 13:15:11'),
(4, 'Mysql', 'mysql', 2, 'Mysql Interview Questions', '2024-12-05 13:17:12', '2024-12-05 13:17:12'),
(5, 'Postgre Sql', 'postgre-sql', 2, 'Postgre Sql Interview Question', '2024-12-05 13:17:58', '2024-12-05 13:17:58'),
(6, 'Core Javascript', 'core-javascript', 4, 'Core Javascript interview Questions', '2024-12-05 13:19:12', '2024-12-05 13:19:12'),
(7, 'JQuery', 'jquery', 4, 'JQuery Interview Questions', '2024-12-05 13:19:57', '2024-12-05 13:19:57'),
(8, 'React Js', 'reactjs', 4, 'React Js Interview Questions', '2024-12-05 13:20:37', '2024-12-05 13:20:37'),
(9, 'What is composer, why we use it ?', 'What-is-composer,-why-we-use-it-?', 3, '<p>It is a <strong>application level package manager</strong> for php.</p>', '2025-01-19 11:17:47', '2025-01-19 11:17:47'),
(10, 'What are contracts ?', 'what-are-contracts-?', 3, '<p>Set of Interfaces.<br>Example: Queue, Mailer.</p>', '2025-01-19 11:19:38', '2025-01-19 11:19:38'),
(11, 'What is Service Provider ?', 'what-is-service-provider-?', 3, '<p>A service provider in Laravel is a class that bootstraps an application by registering services and dependencies.</p><p>Service providers are <strong>the central place to configure your application</strong></p><p>Path: config/app.php<br>&nbsp;</p><p>&nbsp;</p>', '2025-01-19 11:22:58', '2025-01-19 11:22:58'),
(12, 'What is Facade ?', 'what-is-facade-?', 3, '<p>&nbsp;</p>', '2025-01-19 11:23:55', '2025-01-19 11:23:55'),
(13, 'What is Service Container ?', 'what-is-service-container-?', 3, '<p>Service Container is a powerful tool to manage class dependency and dependency injection.</p>', '2025-01-19 11:26:19', '2025-01-19 11:26:19'),
(14, 'What is dependency Injection ?', 'what-is-dependency-injection-?', 3, '<p>&nbsp;</p>', '2025-01-19 11:27:10', '2025-01-19 11:27:10'),
(15, 'What is sql Injection ?', 'what-is-sql-injection-?', 3, '<p>Laravel provides built-in features and best practices to protect against SQL injection attacks: Query Builder: Laravel\'s Query Builder provides a fluent interface for creating database queries using PHP code.&nbsp;<br><strong>The Query Builder automatically escapes user input, preventing SQL injection attacks</strong>.<br>SQL injection attacks can be prevented by validating user input, using parameterized queries, and limiting access to databases.</p>', '2025-01-19 11:27:33', '2025-01-19 12:11:28'),
(16, 'What is eloquent ORM ?', 'what-is-eloquent-orm-?', 3, '<p>Object Relationship mapping.</p>', '2025-01-19 11:28:59', '2025-01-19 11:28:59');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `created_at`, `updated_at`) VALUES
(1, 'product1', 'This is first sample product', '2023-10-06 04:30:08', '2023-10-06 04:30:08'),
(2, 'First Test', 'first test product updated', '2023-10-13 03:07:11', '2023-11-10 00:54:25');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', '2023-10-06 03:15:10', '2023-10-06 03:15:10'),
(2, 'Manager', 'web', '2023-10-06 04:27:21', '2023-10-06 04:27:21'),
(7, 'Employee', 'web', '2023-11-27 18:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `navigationshow` int(11) DEFAULT NULL COMMENT 'Show=0 ; Hide=1',
  `module` varchar(200) NOT NULL,
  `moduletask` varchar(200) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `roles_permissions`
--

INSERT INTO `roles_permissions` (`id`, `role_id`, `mid`, `navigationshow`, `module`, `moduletask`, `updated_at`, `created_at`) VALUES
(28, 3, 15, 1, 'Dashboard', 'Dashboard', '2018-11-14 03:32:43', '2018-11-14 14:32:43'),
(32, 4, 15, 1, 'Dashboard', 'Dashboard', '2018-11-22 18:11:35', '2018-11-23 10:41:35'),
(59, 4, 18, 1, 'Banners', 'Banner Add ', '2018-11-25 20:05:18', '2018-11-26 12:35:18'),
(60, 4, 19, 1, 'Banners', 'Banner Edit', '2018-11-25 20:05:19', '2018-11-26 12:35:19'),
(61, 4, 20, 1, 'Banners', 'Banner Delete ', '2018-11-25 20:05:19', '2018-11-26 12:35:19'),
(62, 4, 21, 0, 'Banners', 'Banners', '2018-11-25 20:05:19', '2018-11-26 12:35:19'),
(63, 4, 22, 1, 'Banners', 'View Banner', '2018-11-25 20:05:19', '2018-11-26 12:35:19'),
(76, 1, 24, 0, 'Language Management', 'Interface translation', '2018-11-30 06:58:09', '2018-11-30 17:58:09'),
(77, 1, 25, 0, 'Language Management', 'Locale String', '2018-11-30 06:58:09', '2018-11-30 17:58:09'),
(464, 3, 17, 0, 'Content types', 'Articles', '2019-01-24 08:27:13', '2019-01-24 19:27:13'),
(466, 3, 19, 0, 'Content types', 'Logo Sliders', '2019-01-24 08:27:13', '2019-01-24 19:27:13'),
(468, 3, 21, 0, 'Content types', 'Banners', '2019-01-24 08:27:13', '2019-01-24 19:27:13'),
(471, 3, 29, 0, 'Content types', 'News', '2019-01-24 08:27:13', '2019-01-24 19:27:13'),
(479, 3, 40, 1, 'Content types', 'Edit Article', '2019-01-24 08:27:13', '2019-01-24 19:27:13'),
(480, 3, 41, 1, 'Content types', 'Add Articles', '2019-01-24 08:27:13', '2019-01-24 19:27:13'),
(485, 3, 46, 1, 'Content types', 'Add Banners', '2019-01-24 08:27:13', '2019-01-24 19:27:13'),
(486, 3, 47, 1, 'Content types', 'Edit Banners', '2019-01-24 08:27:13', '2019-01-24 19:27:13'),
(491, 3, 52, 1, 'Content types', 'Add News', '2019-01-24 08:27:13', '2019-01-24 19:27:13'),
(492, 3, 53, 1, 'Content types', 'Edit News', '2019-01-24 08:27:13', '2019-01-24 19:27:13'),
(588, 1, 76, 0, 'Galleries', 'Galleries', '2019-02-13 08:30:16', '2019-02-13 19:30:16'),
(589, 1, 77, 0, 'Galleries', 'Categories', '2019-02-13 08:30:16', '2019-02-13 19:30:16'),
(640, 6, 15, 1, 'Dashboard', 'Dashboard', '2019-02-23 01:28:27', '2019-02-23 12:28:27'),
(737, 1, 28, 0, 'Appearance', 'Menus', '2019-05-30 00:41:07', '2019-05-30 11:41:07'),
(738, 1, 33, 0, 'Appearance', 'Online Enquiry', '2019-05-30 00:41:08', '2019-05-30 11:41:07'),
(748, 1, 17, 0, 'Content types', 'Articles', '2019-06-25 03:10:51', '2019-06-25 14:10:51'),
(749, 1, 18, 0, 'Content types', 'Posts', '2019-06-25 03:10:51', '2019-06-25 14:10:51'),
(750, 1, 19, 0, 'Content types', 'Logo Sliders', '2019-06-25 03:10:51', '2019-06-25 14:10:51'),
(751, 1, 20, 0, 'Content types', 'Testimonials', '2019-06-25 03:10:51', '2019-06-25 14:10:51'),
(752, 1, 21, 0, 'Content types', 'Banners', '2019-06-25 03:10:51', '2019-06-25 14:10:51'),
(754, 1, 29, 0, 'Content types', 'News', '2019-06-25 03:10:51', '2019-06-25 14:10:51'),
(797, 1, 116, 0, 'Events', 'Events List', '2020-07-16 06:52:13', '2020-07-16 17:52:13'),
(798, 1, 117, 1, 'Events', 'Add', '2020-07-16 06:52:13', '2020-07-16 17:52:13'),
(799, 1, 118, 1, 'Events', 'Edit', '2020-07-16 06:52:13', '2020-07-16 17:52:13'),
(800, 1, 119, 1, 'Events', 'View', '2020-07-16 06:52:13', '2020-07-16 17:52:13'),
(801, 1, 120, 1, 'Events', 'Delete', '2020-07-16 06:52:13', '2020-07-16 17:52:13'),
(824, 1, 129, 0, 'Video', 'Video List', '2020-07-16 23:00:13', '2020-07-17 10:00:13'),
(825, 1, 130, 1, 'Video', 'Add', '2020-07-16 23:00:13', '2020-07-17 10:00:13'),
(826, 1, 131, 1, 'Video', 'View', '2020-07-16 23:00:13', '2020-07-17 10:00:13'),
(827, 1, 132, 1, 'Video', 'Edit', '2020-07-16 23:00:13', '2020-07-17 10:00:13'),
(828, 1, 133, 1, 'Video', 'Delete', '2020-07-16 23:00:13', '2020-07-17 10:00:13'),
(1027, 1, 167, 1, 'Speeches and Conferences', 'Speeches / Conferences List', '2020-12-29 07:18:06', '2020-12-29 12:48:06'),
(1029, 1, 166, 1, 'Youtube Official Channel', 'Youtube Video List', '2020-12-29 07:18:35', '2020-12-29 12:48:35'),
(1033, 1, 169, 1, 'Feedback', 'Feedback List', '2020-12-29 07:19:31', '2020-12-29 12:49:31'),
(1038, 1, 158, 1, 'Multimedia ', 'Category', '2020-12-29 07:20:35', '2020-12-29 12:50:35'),
(1039, 1, 159, 1, 'Multimedia ', 'Sub Category', '2020-12-29 07:20:35', '2020-12-29 12:50:35'),
(1040, 1, 160, 1, 'Multimedia ', 'Image Media', '2020-12-29 07:20:35', '2020-12-29 12:50:35'),
(1041, 1, 161, 1, 'Multimedia ', 'Video Media', '2020-12-29 07:20:35', '2020-12-29 12:50:35'),
(1044, 1, 163, 1, 'Contact', 'Contact List', '2020-12-29 07:22:08', '2020-12-29 12:52:08'),
(1142, 1, 103, 1, 'News', 'News List', '2022-10-21 12:04:38', '2022-10-21 17:34:38'),
(1143, 1, 104, 1, 'News', 'Add', '2022-10-21 12:04:38', '2022-10-21 17:34:38'),
(1144, 1, 105, 1, 'News', 'Edit', '2022-10-21 12:04:38', '2022-10-21 17:34:38'),
(1145, 1, 106, 1, 'News', 'View', '2022-10-21 12:04:38', '2022-10-21 17:34:38'),
(1146, 1, 107, 1, 'News', 'Delete', '2022-10-21 12:04:38', '2022-10-21 17:34:38'),
(1147, 1, 141, 1, 'News', 'Photo List', '2022-10-21 12:04:38', '2022-10-21 17:34:38'),
(1148, 1, 142, 1, 'News', 'Add Photo/Video', '2022-10-21 12:04:38', '2022-10-21 17:34:38'),
(1149, 1, 178, 1, 'News', 'test', '2022-10-21 12:04:38', '2022-10-21 17:34:38'),
(1150, 1, 179, 1, 'test', 'testdb', '2022-10-21 12:11:52', '2022-10-21 17:41:52'),
(1364, 8, 15, 1, 'Dashboard', 'Dashboard', '2022-11-18 12:02:46', '2022-11-18 17:32:46'),
(1682, 2, 15, 1, 'Dashboard', 'Dashboard', '2023-10-09 10:44:38', '2022-12-07 16:28:38'),
(1683, 9, 15, 1, 'Dashboard', 'Dashboard', '2022-12-07 10:58:53', '2022-12-07 16:28:49'),
(1707, 10, 187, 0, 'CooperatIve Reports', 'Reports', '2022-12-10 07:04:26', '2022-12-10 12:34:16'),
(1708, 10, 188, 0, 'CooperatIve Reports', 'All Registrations', '2022-12-10 07:04:26', '2022-12-10 12:34:16'),
(1715, 10, 173, 0, 'Cooperative Society', 'List of Cooperative', '2022-12-10 10:44:29', '2022-12-10 16:14:25'),
(1716, 10, 174, 0, 'Cooperative Society', 'Add New Cooperative', '2022-12-10 10:44:29', '2022-12-10 16:14:25'),
(1863, 9, 174, 0, 'Cooperative Society', 'Add New Cooperative', '2022-12-24 10:18:53', '2022-12-24 15:48:50'),
(1864, 9, 175, 1, 'Cooperative Society', 'Edit Cooperative Registration', '2022-12-24 10:18:53', '2022-12-24 15:48:50'),
(1865, 9, 176, 1, 'Cooperative Society', 'View Cooperative Registration Details', '2022-12-24 10:18:53', '2022-12-24 15:48:50'),
(1866, 9, 177, 1, 'Cooperative Society', 'Delete Cooperative Registration', '2022-12-24 10:18:53', '2022-12-24 15:48:50'),
(1867, 9, 182, 0, 'Cooperative Society', 'List of Cooperative', '2022-12-24 10:18:53', '2022-12-24 15:48:50'),
(1868, 9, 189, 1, 'Cooperative Society', 'Get Secondary Activity Ajax', '2022-12-24 10:18:53', '2022-12-24 15:48:50'),
(1869, 9, 208, 1, 'Cooperative Society', 'getdccb', '2022-12-24 10:18:53', '2022-12-24 15:48:50'),
(1870, 9, 209, 1, 'Cooperative Society', 'getfederationlevel', '2022-12-24 10:18:53', '2022-12-24 15:48:50'),
(1871, 9, 210, 1, 'Cooperative Society', 'get-districts', '2022-12-24 10:18:53', '2022-12-24 15:48:50'),
(1872, 9, 211, 1, 'Cooperative Society', 'get-blocks', '2022-12-24 10:18:53', '2022-12-24 15:48:50'),
(1873, 9, 212, 1, 'Cooperative Society', 'get-gp', '2022-12-24 10:18:53', '2022-12-24 15:48:50'),
(1874, 9, 213, 1, 'Cooperative Society', 'get-villages', '2022-12-24 10:18:53', '2022-12-24 15:48:50'),
(1875, 9, 214, 1, 'Cooperative Society', 'get-primary-activity', '2022-12-24 10:18:53', '2022-12-24 15:48:50'),
(1876, 9, 215, 1, 'Cooperative Society', 'Cooperative Registration : Rural Village Add Row', '2022-12-24 10:18:53', '2022-12-24 15:48:50'),
(1877, 9, 231, 1, 'Cooperative Society', 'Cooperative Registration : Urban Ward Add Row', '2022-12-24 10:18:53', '2022-12-24 15:48:50'),
(1902, 10, 15, 1, 'Dashboard', 'Dashboard', '2022-12-30 05:11:28', '2022-12-30 10:41:22'),
(1903, 10, 233, 1, 'Dashboard', 'Get districts by state', '2022-12-30 05:11:28', '2022-12-30 10:41:22'),
(2029, 14, 15, 1, 'Dashboard', 'Dashboard', '2023-01-06 11:15:29', '2023-01-06 16:45:26'),
(2030, 14, 233, 1, 'Dashboard', 'Get districts by state', '2023-01-06 11:15:29', '2023-01-06 16:45:26'),
(2072, 13, 15, 1, 'Dashboard', 'Dashboard', '2023-01-10 14:49:24', '2023-01-10 20:19:22'),
(2356, 8, 283, 0, 'Payment', 'Generate Certificate', '2023-01-31 12:30:04', '2023-01-31 18:00:04'),
(2357, 8, 287, 0, 'Payment', 'Add Bank Detail', '2023-01-31 12:30:04', '2023-01-31 18:00:04'),
(2358, 8, 288, 1, 'Payment', 'Edit', '2023-01-31 12:30:04', '2023-01-31 18:00:04'),
(2359, 8, 291, 0, 'Payment', 'Upload Certificate', '2023-01-31 12:30:04', '2023-01-31 18:00:04'),
(2360, 8, 294, 0, 'Payment', 'List District Certificate', '2023-01-31 12:30:04', '2023-01-31 18:00:04'),
(2361, 8, 295, 1, 'Payment', 'Delete Payment Certificate', '2023-01-31 12:30:04', '2023-01-31 18:00:04'),
(2362, 8, 297, 1, 'Payment', 'Delete Bank Detail', '2023-01-31 12:30:04', '2023-01-31 18:00:04'),
(2374, 14, 299, 0, 'Payment', 'List All Certificate', '2023-02-03 12:26:14', '2023-02-03 17:56:14'),
(2412, 17, 251, 0, 'National Federations', 'National Federation List', '2023-02-09 05:13:36', '2023-02-09 10:43:36'),
(2413, 17, 253, 0, 'National Federations', 'List Of Members', '2023-02-09 05:13:36', '2023-02-09 10:43:36'),
(2414, 17, 256, 1, 'National Federations', 'View Member', '2023-02-09 05:13:36', '2023-02-09 10:43:36'),
(2423, 17, 15, 1, 'Dashboard', 'Dashboard', '2023-02-09 07:11:19', '2023-02-09 12:41:19'),
(2424, 17, 233, 1, 'Dashboard', 'Get districts by state', '2023-02-09 07:11:19', '2023-02-09 12:41:19'),
(2458, 8, 274, 0, 'Certificates', 'Generate Certificate', '2023-02-10 16:29:33', '2023-02-10 21:59:33'),
(2459, 8, 275, 0, 'Certificates', 'Upload Certificate', '2023-02-10 16:29:33', '2023-02-10 21:59:33'),
(2460, 8, 276, 0, 'Certificates', 'List Certificate', '2023-02-10 16:29:33', '2023-02-10 21:59:33'),
(2461, 8, 281, 1, 'Certificates', 'Download Certificate', '2023-02-10 16:29:33', '2023-02-10 21:59:33'),
(2462, 8, 302, 0, 'Certificates', 'Generate PACS Certificate', '2023-02-10 16:29:33', '2023-02-10 21:59:33'),
(2463, 8, 305, 0, 'Certificates', 'Generate All Certificate (Revised)', '2023-02-10 16:29:33', '2023-02-10 21:59:33'),
(2501, 21, 251, 0, 'National Federations', 'National Federation List', '2023-02-18 07:29:10', '2023-02-18 12:59:10'),
(2502, 21, 253, 1, 'National Federations', 'List Of Members', '2023-02-18 07:29:10', '2023-02-18 12:59:10'),
(2503, 21, 256, 1, 'National Federations', 'View Member', '2023-02-18 07:29:10', '2023-02-18 12:59:10'),
(2504, 21, 258, 1, 'National Federations', 'view national', '2023-02-18 07:29:10', '2023-02-18 12:59:10'),
(2532, 15, 15, 1, 'Dashboard', 'Dashboard', '2023-02-18 08:36:03', '2023-02-18 14:06:03'),
(2593, 11, 15, 1, 'Dashboard', 'Dashboard', '2023-02-23 06:56:52', '2023-02-23 12:26:52'),
(2594, 11, 233, 1, 'Dashboard', 'Get districts by state', '2023-02-23 06:56:52', '2023-02-23 12:26:52'),
(2595, 11, 324, 1, 'Dashboard', 'Get blocks', '2023-02-23 06:56:52', '2023-02-23 12:26:52'),
(2599, 8, 326, 1, 'Gram Panchayat Pie Chart', 'Gram Panchayat Chart View', '2023-02-23 10:15:21', '2023-02-23 15:45:21'),
(2600, 8, 327, 1, 'Gram Panchayat Pie Chart', 'Get districts', '2023-02-23 10:15:21', '2023-02-23 15:45:21'),
(2601, 8, 328, 1, 'Gram Panchayat Pie Chart', 'Get blocks', '2023-02-23 10:15:21', '2023-02-23 15:45:21'),
(2602, 11, 326, 1, 'Gram Panchayat Pie Chart', 'Gram Panchayat Chart View', '2023-02-23 10:15:44', '2023-02-23 15:45:44'),
(2603, 11, 327, 1, 'Gram Panchayat Pie Chart', 'Get districts', '2023-02-23 10:15:44', '2023-02-23 15:45:44'),
(2604, 11, 328, 1, 'Gram Panchayat Pie Chart', 'Get blocks', '2023-02-23 10:15:44', '2023-02-23 15:45:44'),
(2605, 14, 326, 1, 'Gram Panchayat Pie Chart', 'Gram Panchayat Chart View', '2023-02-23 10:16:07', '2023-02-23 15:46:07'),
(2606, 14, 327, 1, 'Gram Panchayat Pie Chart', 'Get districts', '2023-02-23 10:16:07', '2023-02-23 15:46:07'),
(2607, 14, 328, 1, 'Gram Panchayat Pie Chart', 'Get blocks', '2023-02-23 10:16:07', '2023-02-23 15:46:07'),
(2608, 2, 326, 1, 'Gram Panchayat Pie Chart', 'Gram Panchayat Chart View', '2023-10-09 10:44:38', '2023-02-23 15:46:24'),
(2609, 2, 327, 1, 'Gram Panchayat Pie Chart', 'Get districts', '2023-10-09 10:44:38', '2023-02-23 15:46:24'),
(2610, 2, 328, 1, 'Gram Panchayat Pie Chart', 'Get blocks', '2023-10-09 10:44:38', '2023-02-23 15:46:24'),
(2671, 13, 243, 1, 'National Federations', 'National Federation :: Phone Number Add Row', '2023-02-26 04:20:04', '2023-02-26 09:50:04'),
(2672, 13, 244, 1, 'National Federations', 'National Federation :: Email Id Add Row', '2023-02-26 04:20:04', '2023-02-26 09:50:04'),
(2673, 13, 245, 1, 'National Federations', 'National Federation :: Members Add Row', '2023-02-26 04:20:04', '2023-02-26 09:50:04'),
(2674, 13, 246, 1, 'National Federations', 'Edit National Federations', '2023-02-26 04:20:04', '2023-02-26 09:50:04'),
(2675, 13, 247, 1, 'National Federations', 'View National Federations', '2023-02-26 04:20:04', '2023-02-26 09:50:04'),
(2676, 13, 248, 1, 'National Federations', 'Delete National Federations', '2023-02-26 04:20:04', '2023-02-26 09:50:04'),
(2677, 13, 249, 1, 'National Federations', 'Add National Federation Data', '2023-02-26 04:20:04', '2023-02-26 09:50:04'),
(2678, 13, 250, 1, 'National Federations', 'getCooperativeSocietyInfo', '2023-02-26 04:20:04', '2023-02-26 09:50:04'),
(2679, 13, 251, 1, 'National Federations', 'National Federation List', '2023-02-26 04:20:04', '2023-02-26 09:50:04'),
(2680, 13, 252, 1, 'National Federations', 'Add Member', '2023-02-26 04:20:04', '2023-02-26 09:50:04'),
(2681, 13, 253, 0, 'National Federations', 'List Of Members', '2023-02-26 04:20:04', '2023-02-26 09:50:04'),
(2682, 13, 254, 1, 'National Federations', 'sectorAddRow', '2023-02-26 04:20:04', '2023-02-26 09:50:04'),
(2683, 13, 255, 1, 'National Federations', 'Edit Member', '2023-02-26 04:20:04', '2023-02-26 09:50:04'),
(2684, 13, 256, 1, 'National Federations', 'View Member', '2023-02-26 04:20:04', '2023-02-26 09:50:04'),
(2685, 13, 257, 1, 'National Federations', 'delete Member', '2023-02-26 04:20:04', '2023-02-26 09:50:04'),
(2686, 13, 258, 1, 'National Federations', 'view national', '2023-02-26 04:20:04', '2023-02-26 09:50:04'),
(2687, 13, 259, 1, 'National Federations', 'edit national', '2023-02-26 04:20:04', '2023-02-26 09:50:04'),
(2688, 13, 332, 1, 'National Federations', 'getSocietyName', '2023-02-26 04:20:04', '2023-02-26 09:50:04'),
(2689, 13, 333, 1, 'National Federations', 'get-society-details', '2023-02-26 04:20:04', '2023-02-26 09:50:04'),
(2693, 1, 187, 0, 'CooperatIve Reports', 'Reports', '2023-02-28 09:19:15', '2023-02-28 14:49:15'),
(2694, 1, 188, 0, 'CooperatIve Reports', 'All Registrations Report', '2023-02-28 09:19:15', '2023-02-28 14:49:15'),
(2695, 1, 334, 0, 'CooperatIve Reports', 'Linac Report', '2023-02-28 09:19:15', '2023-02-28 14:49:15'),
(2753, 1, 312, 0, 'DB Tables', 'Table Data', '2023-03-09 09:45:59', '2023-03-09 15:15:59'),
(2754, 1, 313, 1, 'DB Tables', 'getTableFields', '2023-03-09 09:45:59', '2023-03-09 15:15:59'),
(2755, 1, 314, 1, 'DB Tables', 'viewIndex', '2023-03-09 09:45:59', '2023-03-09 15:15:59'),
(2756, 1, 315, 1, 'DB Tables', 'executeQuery', '2023-03-09 09:45:59', '2023-03-09 15:15:59'),
(2757, 1, 316, 1, 'DB Tables', 'viewExecuteQuery', '2023-03-09 09:45:59', '2023-03-09 15:15:59'),
(2774, 2, 336, 0, 'Scb Registration', 'List of Scb Registration', '2023-10-09 10:44:38', '2023-03-13 11:25:32'),
(2775, 2, 337, 0, 'Scb Registration', 'Add New Scb', '2023-10-09 10:44:38', '2023-03-13 11:25:32'),
(2776, 2, 338, 1, 'Scb Registration', 'schemeAddRow', '2023-10-09 10:44:38', '2023-03-13 11:25:32'),
(2777, 2, 339, 1, 'Scb Registration', 'sectorAddRow', '2023-10-09 10:44:38', '2023-03-13 11:25:32'),
(2799, 24, 15, 1, 'Dashboard', 'Dashboard', '2023-03-14 08:32:07', '2023-03-14 14:02:07'),
(2802, 25, 15, 1, 'Dashboard', 'Dashboard', '2023-03-14 09:47:24', '2023-03-14 15:17:24'),
(2904, 14, 336, 0, 'Scb Registration', 'List of Scb Registration', '2023-03-17 06:45:20', '2023-03-17 12:15:20'),
(2905, 14, 337, 1, 'Scb Registration', 'Add New Scb', '2023-03-17 06:45:20', '2023-03-17 12:15:20'),
(2906, 14, 338, 1, 'Scb Registration', 'schemeAddRow', '2023-03-17 06:45:20', '2023-03-17 12:15:20'),
(2907, 14, 339, 1, 'Scb Registration', 'sectorAddRow', '2023-03-17 06:45:20', '2023-03-17 12:15:20'),
(2908, 14, 345, 1, 'Scb Registration', 'Edit SCB', '2023-03-17 06:45:20', '2023-03-17 12:15:20'),
(2909, 14, 346, 0, 'Scb Registration', 'Member List', '2023-03-17 06:45:20', '2023-03-17 12:15:20'),
(2910, 14, 349, 1, 'Scb Registration', 'Delete SCB', '2023-03-17 06:45:20', '2023-03-17 12:15:20'),
(2911, 14, 350, 1, 'Scb Registration', 'Delete Member', '2023-03-17 06:45:20', '2023-03-17 12:15:20'),
(2912, 14, 351, 1, 'Scb Registration', 'View SCB', '2023-03-17 06:45:20', '2023-03-17 12:15:20'),
(2913, 14, 352, 1, 'Scb Registration', 'View Member', '2023-03-17 06:45:20', '2023-03-17 12:15:20'),
(2914, 14, 353, 1, 'Scb Registration', 'Get Society', '2023-03-17 06:45:20', '2023-03-17 12:15:20'),
(2934, 1, 356, 0, 'Sugar Mills Federation Report', 'Sugar Mills Federation List', '2023-03-21 06:07:22', '2023-03-21 11:37:22'),
(2935, 1, 358, 0, 'Sugar Mills Federation Report', 'Sugar Mills Overdue Reports', '2023-03-21 06:07:22', '2023-03-21 11:37:22'),
(2981, 1, 340, 0, 'GIS MAPs', 'Overall Count', '2023-03-23 09:42:03', '2023-03-23 15:12:03'),
(2982, 1, 341, 0, 'GIS MAPs', 'Sugar Mills Lat Lon', '2023-03-23 09:42:03', '2023-03-23 15:12:03'),
(2983, 1, 343, 1, 'GIS MAPs', 'view Listing Lat Lon', '2023-03-23 09:42:03', '2023-03-23 15:12:03'),
(2984, 1, 344, 1, 'GIS MAPs', 'update Lat Lon', '2023-03-23 09:42:03', '2023-03-23 15:12:03'),
(2985, 1, 354, 0, 'GIS MAPs', 'MAP Dashboard', '2023-03-23 09:42:03', '2023-03-23 15:12:03'),
(3071, 56, 188, 0, 'CooperatIve Reports', 'All Registrations Report', '2023-03-31 07:09:28', '2023-03-31 12:39:28'),
(3072, 56, 236, 1, 'CooperatIve Reports', 'get-districts', '2023-03-31 07:09:28', '2023-03-31 12:39:28'),
(3073, 56, 15, 1, 'Dashboard', 'Dashboard', '2023-03-31 07:10:34', '2023-03-31 12:40:34'),
(3074, 56, 326, 0, 'Gram Panchayat Pie Chart', 'Gram Panchayat Chart View', '2023-03-31 11:25:28', '2023-03-31 16:55:28'),
(3075, 56, 327, 1, 'Gram Panchayat Pie Chart', 'Get districts', '2023-03-31 11:25:28', '2023-03-31 16:55:28'),
(3076, 56, 328, 1, 'Gram Panchayat Pie Chart', 'Get blocks', '2023-03-31 11:25:28', '2023-03-31 16:55:28'),
(3287, 59, 15, 1, 'Dashboard', 'Dashboard', '2023-04-21 05:09:37', '2023-04-21 10:39:37'),
(3288, 59, 233, 1, 'Dashboard', 'Get districts by state', '2023-04-21 05:09:37', '2023-04-21 10:39:37'),
(3289, 59, 324, 1, 'Dashboard', 'Get blocks', '2023-04-21 05:09:37', '2023-04-21 10:39:37'),
(3449, 20, 15, 1, 'Dashboard', 'Dashboard', '2023-04-24 08:04:31', '2023-04-24 13:34:31'),
(3450, 20, 233, 1, 'Dashboard', 'Get districts by state', '2023-04-24 08:04:31', '2023-04-24 13:34:31'),
(3451, 20, 324, 1, 'Dashboard', 'Get blocks', '2023-04-24 08:04:31', '2023-04-24 13:34:31'),
(3546, 59, 377, 0, 'State Cooperative Federation', 'Fishery Federations List', '2023-04-25 10:07:04', '2023-04-25 15:37:04'),
(3547, 59, 378, 1, 'State Cooperative Federation', 'urbanWardAddRow', '2023-04-25 10:07:04', '2023-04-25 15:37:04'),
(3548, 59, 381, 1, 'State Cooperative Federation', 'Fishery Federations : Urban Ward Add Row', '2023-04-25 10:07:04', '2023-04-25 15:37:04'),
(3549, 59, 382, 1, 'State Cooperative Federation', 'Fishery Federations: Rural Village Add Row', '2023-04-25 10:07:04', '2023-04-25 15:37:04'),
(3550, 59, 400, 1, 'State Cooperative Federation', 'Add State Federation Data', '2023-04-25 10:07:04', '2023-04-25 15:37:04'),
(3551, 59, 401, 1, 'State Cooperative Federation', 'View Individual State Cooperative Detail', '2023-04-25 10:07:05', '2023-04-25 15:37:04'),
(3552, 59, 402, 1, 'State Cooperative Federation', 'Edit  Individual State cooperative Detail', '2023-04-25 10:07:05', '2023-04-25 15:37:05'),
(3553, 59, 403, 1, 'State Cooperative Federation', 'Members List', '2023-04-25 10:07:05', '2023-04-25 15:37:05'),
(3554, 59, 404, 1, 'State Cooperative Federation', 'View Member', '2023-04-25 10:07:05', '2023-04-25 15:37:05'),
(3555, 59, 405, 1, 'State Cooperative Federation', 'Add Member', '2023-04-25 10:07:05', '2023-04-25 15:37:05'),
(3556, 59, 406, 1, 'State Cooperative Federation', 'Edit Member', '2023-04-25 10:07:05', '2023-04-25 15:37:05'),
(3557, 59, 407, 1, 'State Cooperative Federation', 'Delete Member', '2023-04-25 10:07:05', '2023-04-25 15:37:05'),
(3558, 59, 408, 1, 'State Cooperative Federation', 'Delete Fishery Federation Detail', '2023-04-25 10:07:05', '2023-04-25 15:37:05'),
(3684, 58, 422, 0, 'State Dairy Cooperative Federation', 'Dairy Federation List', '2023-04-27 06:32:34', '2023-04-27 12:02:34'),
(3685, 58, 423, 1, 'State Dairy Cooperative Federation', 'Add State Federation Detail', '2023-04-27 06:32:34', '2023-04-27 12:02:34'),
(3686, 58, 424, 1, 'State Dairy Cooperative Federation', 'Edit State Federation Detail', '2023-04-27 06:32:34', '2023-04-27 12:02:34'),
(3687, 58, 425, 1, 'State Dairy Cooperative Federation', 'View State Federation Detail', '2023-04-27 06:32:34', '2023-04-27 12:02:34'),
(3688, 58, 426, 1, 'State Dairy Cooperative Federation', 'Delete Dairy Federation Detail', '2023-04-27 06:32:34', '2023-04-27 12:02:34'),
(3689, 58, 427, 1, 'State Dairy Cooperative Federation', 'Add Member', '2023-04-27 06:32:34', '2023-04-27 12:02:34'),
(3690, 58, 428, 1, 'State Dairy Cooperative Federation', 'Edit Member', '2023-04-27 06:32:34', '2023-04-27 12:02:34'),
(3691, 58, 429, 1, 'State Dairy Cooperative Federation', 'View Member', '2023-04-27 06:32:34', '2023-04-27 12:02:34'),
(3692, 58, 430, 1, 'State Dairy Cooperative Federation', 'Delete Member', '2023-04-27 06:32:34', '2023-04-27 12:02:34'),
(3693, 58, 431, 1, 'State Dairy Cooperative Federation', 'Members List', '2023-04-27 06:32:34', '2023-04-27 12:02:34'),
(3694, 58, 432, 1, 'State Dairy Cooperative Federation', 'Dairy Federations : Urban Ward Add Row', '2023-04-27 06:32:34', '2023-04-27 12:02:34'),
(3695, 58, 433, 1, 'State Dairy Cooperative Federation', 'Dairy Federations: Rural Village Add Row', '2023-04-27 06:32:34', '2023-04-27 12:02:34'),
(3696, 58, 15, 1, 'Dashboard', 'Dashboard', '2023-04-27 06:49:56', '2023-04-27 12:19:56'),
(3697, 58, 233, 1, 'Dashboard', 'Get districts by state', '2023-04-27 06:49:56', '2023-04-27 12:19:56'),
(3698, 58, 324, 1, 'Dashboard', 'Get blocks', '2023-04-27 06:49:56', '2023-04-27 12:19:56'),
(3757, 15, 243, 1, 'National Federations', 'National Federation :: Phone Number Add Row', '2023-05-02 04:32:16', '2023-05-02 10:02:16'),
(3758, 15, 249, 0, 'National Federations', 'Add National Federation Data', '2023-05-02 04:32:16', '2023-05-02 10:02:16'),
(3759, 15, 251, 1, 'National Federations', 'National Federation List', '2023-05-02 04:32:16', '2023-05-02 10:02:16'),
(3760, 15, 253, 0, 'National Federations', 'List Of Members', '2023-05-02 04:32:16', '2023-05-02 10:02:16'),
(3761, 15, 254, 1, 'National Federations', 'sectorAddRow', '2023-05-02 04:32:16', '2023-05-02 10:02:16'),
(3762, 15, 256, 1, 'National Federations', 'View Member', '2023-05-02 04:32:16', '2023-05-02 10:02:16'),
(3763, 15, 258, 1, 'National Federations', 'view national', '2023-05-02 04:32:16', '2023-05-02 10:02:16'),
(3764, 15, 259, 1, 'National Federations', 'edit national', '2023-05-02 04:32:16', '2023-05-02 10:02:16'),
(3765, 15, 301, 1, 'National Federations', 'Approval', '2023-05-02 04:32:16', '2023-05-02 10:02:16'),
(3789, 11, 441, 0, 'District Nodal Entries Report', 'report index', '2023-05-04 08:07:59', '2023-05-04 13:37:59'),
(3796, 11, 442, 0, 'District Nodal Entries Report', 'District Nodal Entries Report', '2023-05-04 08:36:32', '2023-05-04 14:06:32'),
(3799, 11, 443, 0, 'District Nodal Entries Report', 'Target Report', '2023-05-04 08:49:03', '2023-05-04 14:19:03'),
(4217, 14, 188, 0, 'CooperatIve Reports', 'All Registrations Report', '2023-05-20 11:19:01', '2023-05-20 16:49:01'),
(4218, 14, 225, 0, 'CooperatIve Reports', 'All India Reports', '2023-05-20 11:19:01', '2023-05-20 16:49:01'),
(4219, 14, 232, 0, 'CooperatIve Reports', 'Area Operation Report', '2023-05-20 11:19:01', '2023-05-20 16:49:01'),
(4220, 14, 236, 1, 'CooperatIve Reports', 'get-districts', '2023-05-20 11:19:01', '2023-05-20 16:49:01'),
(4221, 14, 260, 0, 'CooperatIve Reports', 'NCD Report', '2023-05-20 11:19:01', '2023-05-20 16:49:01'),
(4222, 14, 478, 0, 'CooperatIve Reports', 'GP Covered  Report', '2023-05-20 11:19:01', '2023-05-20 16:49:01'),
(4248, 2, 395, 1, 'Multi State Cooperative', 'brandAddRow', '2023-10-09 10:44:38', '2023-05-22 12:04:10'),
(4249, 2, 396, 1, 'Multi State Cooperative', 'exportAddRow', '2023-10-09 10:44:38', '2023-05-22 12:04:10'),
(4250, 2, 446, 0, 'Multi State Cooperative', 'Mscs Step First', '2023-10-09 10:44:38', '2023-05-22 12:04:10'),
(4251, 2, 447, 1, 'Multi State Cooperative', 'mscs step second', '2023-10-09 10:44:38', '2023-05-22 12:04:10'),
(4252, 2, 448, 1, 'Multi State Cooperative', 'mscs step third', '2023-10-09 10:44:38', '2023-05-22 12:04:10'),
(4253, 2, 449, 1, 'Multi State Cooperative', 'mscs step fourth', '2023-10-09 10:44:38', '2023-05-22 12:04:10'),
(4254, 2, 450, 1, 'Multi State Cooperative', 'mscs step fifth', '2023-10-09 10:44:38', '2023-05-22 12:04:10'),
(4255, 2, 451, 1, 'Multi State Cooperative', 'mscs step sixth', '2023-10-09 10:44:38', '2023-05-22 12:04:10'),
(4256, 2, 452, 1, 'Multi State Cooperative', 'edit Mscs Step First', '2023-10-09 10:44:38', '2023-05-22 12:04:10'),
(4257, 2, 453, 1, 'Multi State Cooperative', 'edit mscs step second', '2023-10-09 10:44:38', '2023-05-22 12:04:10'),
(4258, 2, 454, 1, 'Multi State Cooperative', 'edit mscs step third', '2023-10-09 10:44:38', '2023-05-22 12:04:10'),
(4259, 2, 455, 1, 'Multi State Cooperative', 'edit mscs step fourth', '2023-10-09 10:44:38', '2023-05-22 12:04:10'),
(4260, 2, 456, 1, 'Multi State Cooperative', 'edit mscs step fifth', '2023-10-09 10:44:38', '2023-05-22 12:04:10'),
(4261, 2, 457, 1, 'Multi State Cooperative', 'edit mscs step sixth', '2023-10-09 10:44:38', '2023-05-22 12:04:10'),
(4262, 2, 458, 0, 'Multi State Cooperative', 'List of MSCS Draft', '2023-10-09 10:44:38', '2023-05-22 12:04:10'),
(4263, 2, 481, 0, 'Multi State Cooperative', 'data entry pending', '2023-10-09 10:44:38', '2023-05-22 12:04:10'),
(4507, 64, 392, 1, 'Multi State Cooperative', 'Add New MSCS', '2023-05-29 04:27:48', '2023-05-29 09:57:48'),
(4508, 64, 395, 1, 'Multi State Cooperative', 'brandAddRow', '2023-05-29 04:27:48', '2023-05-29 09:57:48'),
(4509, 64, 396, 1, 'Multi State Cooperative', 'exportAddRow', '2023-05-29 04:27:48', '2023-05-29 09:57:48'),
(4510, 64, 446, 0, 'Multi State Cooperative', 'Add New MSCS', '2023-05-29 04:27:48', '2023-05-29 09:57:48'),
(4511, 64, 447, 1, 'Multi State Cooperative', 'mscs step second', '2023-05-29 04:27:49', '2023-05-29 09:57:48'),
(4512, 64, 448, 1, 'Multi State Cooperative', 'mscs step third', '2023-05-29 04:27:49', '2023-05-29 09:57:49'),
(4513, 64, 449, 1, 'Multi State Cooperative', 'mscs step fourth', '2023-05-29 04:27:49', '2023-05-29 09:57:49'),
(4514, 64, 450, 1, 'Multi State Cooperative', 'mscs step fifth', '2023-05-29 04:27:49', '2023-05-29 09:57:49'),
(4515, 64, 451, 1, 'Multi State Cooperative', 'mscs step sixth', '2023-05-29 04:27:49', '2023-05-29 09:57:49'),
(4516, 64, 452, 1, 'Multi State Cooperative', 'edit Mscs Step First', '2023-05-29 04:27:49', '2023-05-29 09:57:49'),
(4517, 64, 453, 1, 'Multi State Cooperative', 'edit mscs step second', '2023-05-29 04:27:49', '2023-05-29 09:57:49'),
(4518, 64, 454, 1, 'Multi State Cooperative', 'edit mscs step third', '2023-05-29 04:27:49', '2023-05-29 09:57:49'),
(4519, 64, 455, 1, 'Multi State Cooperative', 'edit mscs step fourth', '2023-05-29 04:27:49', '2023-05-29 09:57:49'),
(4520, 64, 456, 1, 'Multi State Cooperative', 'edit mscs step fifth', '2023-05-29 04:27:49', '2023-05-29 09:57:49'),
(4521, 64, 457, 1, 'Multi State Cooperative', 'edit mscs step sixth', '2023-05-29 04:27:49', '2023-05-29 09:57:49'),
(4522, 64, 458, 0, 'Multi State Cooperative', 'List of MSCS Draft', '2023-05-29 04:27:49', '2023-05-29 09:57:49'),
(4523, 64, 481, 0, 'Multi State Cooperative', 'Data Entry Pending', '2023-05-29 04:27:49', '2023-05-29 09:57:49'),
(4524, 65, 392, 1, 'Multi State Cooperative', 'Add New MSCS', '2023-05-29 04:28:13', '2023-05-29 09:58:13'),
(4525, 65, 395, 1, 'Multi State Cooperative', 'brandAddRow', '2023-05-29 04:28:13', '2023-05-29 09:58:13'),
(4526, 65, 396, 1, 'Multi State Cooperative', 'exportAddRow', '2023-05-29 04:28:13', '2023-05-29 09:58:13'),
(4527, 65, 446, 0, 'Multi State Cooperative', 'Add New MSCS', '2023-05-29 04:28:13', '2023-05-29 09:58:13'),
(4528, 65, 447, 1, 'Multi State Cooperative', 'mscs step second', '2023-05-29 04:28:13', '2023-05-29 09:58:13'),
(4529, 65, 448, 1, 'Multi State Cooperative', 'mscs step third', '2023-05-29 04:28:13', '2023-05-29 09:58:13'),
(4530, 65, 449, 1, 'Multi State Cooperative', 'mscs step fourth', '2023-05-29 04:28:13', '2023-05-29 09:58:13'),
(4531, 65, 450, 1, 'Multi State Cooperative', 'mscs step fifth', '2023-05-29 04:28:13', '2023-05-29 09:58:13'),
(4532, 65, 451, 1, 'Multi State Cooperative', 'mscs step sixth', '2023-05-29 04:28:13', '2023-05-29 09:58:13'),
(4533, 65, 452, 1, 'Multi State Cooperative', 'edit Mscs Step First', '2023-05-29 04:28:14', '2023-05-29 09:58:14'),
(4534, 65, 453, 1, 'Multi State Cooperative', 'edit mscs step second', '2023-05-29 04:28:14', '2023-05-29 09:58:14'),
(4535, 65, 454, 1, 'Multi State Cooperative', 'edit mscs step third', '2023-05-29 04:28:14', '2023-05-29 09:58:14'),
(4536, 65, 455, 1, 'Multi State Cooperative', 'edit mscs step fourth', '2023-05-29 04:28:14', '2023-05-29 09:58:14'),
(4537, 65, 456, 1, 'Multi State Cooperative', 'edit mscs step fifth', '2023-05-29 04:28:14', '2023-05-29 09:58:14'),
(4538, 65, 457, 1, 'Multi State Cooperative', 'edit mscs step sixth', '2023-05-29 04:28:14', '2023-05-29 09:58:14'),
(4539, 65, 458, 0, 'Multi State Cooperative', 'List of MSCS Draft', '2023-05-29 04:28:14', '2023-05-29 09:58:14'),
(4540, 65, 481, 0, 'Multi State Cooperative', 'Data Entry Pending', '2023-05-29 04:28:14', '2023-05-29 09:58:14'),
(4545, 64, 15, 1, 'Dashboard', 'Dashboard', '2023-05-29 04:37:30', '2023-05-29 10:07:30'),
(4546, 64, 233, 0, 'Dashboard', 'Get districts by state', '2023-05-29 04:37:30', '2023-05-29 10:07:30'),
(4547, 64, 324, 0, 'Dashboard', 'Get blocks', '2023-05-29 04:37:30', '2023-05-29 10:07:30'),
(4548, 65, 15, 0, 'Dashboard', 'Dashboard', '2023-05-29 04:37:40', '2023-05-29 10:07:40'),
(4549, 65, 233, 0, 'Dashboard', 'Get districts by state', '2023-05-29 04:37:40', '2023-05-29 10:07:40'),
(4550, 65, 324, 0, 'Dashboard', 'Get blocks', '2023-05-29 04:37:40', '2023-05-29 10:07:40'),
(4853, 1, 502, 0, 'SCB Reports', 'Reports Dashboard', '2023-06-05 21:06:36', '2023-06-06 02:36:36'),
(4854, 1, 503, 0, 'SCB Reports', 'SCB Audit Report', '2023-06-05 21:06:36', '2023-06-06 02:36:36'),
(4855, 1, 504, 0, 'SCB Reports', 'SCB Public Details', '2023-06-05 21:06:36', '2023-06-06 02:36:36'),
(4856, 1, 505, 0, 'SCB Reports', 'SCB Financial Details', '2023-06-05 21:06:36', '2023-06-06 02:36:36'),
(4857, 1, 506, 0, 'SCB Reports', 'DSCB Audit Report', '2023-06-05 21:06:36', '2023-06-06 02:36:36'),
(4858, 1, 507, 0, 'SCB Reports', 'DSCB Public Details', '2023-06-05 21:06:36', '2023-06-06 02:36:36'),
(4859, 1, 508, 0, 'SCB Reports', 'DSCB Financial Details', '2023-06-05 21:06:36', '2023-06-06 02:36:36'),
(4860, 1, 509, 1, 'SCB Reports', 'View Scb Audit Report', '2023-06-05 21:06:36', '2023-06-06 02:36:36'),
(4861, 1, 510, 1, 'SCB Reports', 'View SCB Public Details', '2023-06-05 21:06:36', '2023-06-06 02:36:36'),
(4862, 1, 511, 1, 'SCB Reports', 'View SCB Financial Details', '2023-06-05 21:06:36', '2023-06-06 02:36:36'),
(4863, 1, 512, 1, 'SCB Reports', 'View DSCB Audit Report', '2023-06-05 21:06:36', '2023-06-06 02:36:36'),
(4864, 1, 513, 1, 'SCB Reports', 'View DSCB Public Details', '2023-06-05 21:06:36', '2023-06-06 02:36:36'),
(4865, 1, 514, 1, 'SCB Reports', 'View DSCB Financial Details', '2023-06-05 21:06:36', '2023-06-06 02:36:36'),
(4918, 2, 495, 0, 'Education Training', 'Add New Institute', '2023-10-09 10:44:38', '2023-06-06 16:03:30'),
(4919, 2, 496, 1, 'Education Training', 'edit', '2023-10-09 10:44:38', '2023-06-06 16:03:30'),
(4920, 2, 497, 0, 'Education Training', 'List of Draft', '2023-10-09 10:44:38', '2023-06-06 16:03:30'),
(4921, 2, 498, 1, 'Education Training', 'view', '2023-10-09 10:44:38', '2023-06-06 16:03:30'),
(4922, 2, 499, 1, 'Education Training', 'delete', '2023-10-09 10:44:38', '2023-06-06 16:03:30'),
(4923, 2, 516, 0, 'Education Training', 'List of  Pending', '2023-10-09 10:44:38', '2023-06-06 16:03:30'),
(4924, 2, 517, 0, 'Education Training', 'List of Accepted', '2023-10-09 10:44:38', '2023-06-06 16:03:30'),
(4925, 2, 518, 0, 'Education Training', 'Return for Correction', '2023-10-09 10:44:38', '2023-06-06 16:03:30'),
(5202, 26, 188, 0, 'CooperatIve Reports', 'All Registrations Report', '2023-06-12 07:32:10', '2023-06-12 13:02:09'),
(5203, 26, 225, 0, 'CooperatIve Reports', 'All India Reports', '2023-06-12 07:32:10', '2023-06-12 13:02:10'),
(5204, 26, 232, 0, 'CooperatIve Reports', 'Area Operation Report', '2023-06-12 07:32:10', '2023-06-12 13:02:10'),
(5205, 26, 235, 0, 'CooperatIve Reports', 'Functional List Report', '2023-06-12 07:32:10', '2023-06-12 13:02:10'),
(5206, 26, 260, 0, 'CooperatIve Reports', 'NCD Report', '2023-06-12 07:32:10', '2023-06-12 13:02:10'),
(5207, 26, 289, 0, 'CooperatIve Reports', 'Affiliated Report', '2023-06-12 07:32:10', '2023-06-12 13:02:10'),
(5208, 26, 525, 0, 'CooperatIve Reports', 'New All Registration List', '2023-06-12 07:32:10', '2023-06-12 13:02:10'),
(5209, 26, 526, 0, 'CooperatIve Reports', 'New-count-report', '2023-06-12 07:32:10', '2023-06-12 13:02:10'),
(5213, 8, 527, 0, 'Education Training', 'list of pending', '2023-06-12 09:35:15', '2023-06-12 15:05:15'),
(5214, 8, 528, 0, 'Education Training', 'list of accepted', '2023-06-12 09:35:15', '2023-06-12 15:05:15'),
(5215, 8, 529, 0, 'Education Training', 'Return for Correction', '2023-06-12 09:35:15', '2023-06-12 15:05:15'),
(5482, 66, 15, 1, 'Dashboard', 'Dashboard', '2023-06-13 09:28:42', '2023-06-13 14:58:42'),
(5483, 66, 233, 1, 'Dashboard', 'Get districts by state', '2023-06-13 09:28:42', '2023-06-13 14:58:42'),
(5484, 66, 324, 1, 'Dashboard', 'Get blocks', '2023-06-13 09:28:42', '2023-06-13 14:58:42'),
(5563, 11, 336, 0, 'StCB Registration', 'StCB Registation', '2023-06-14 09:06:24', '2023-06-14 14:36:24'),
(5564, 11, 337, 1, 'StCB Registration', 'Add New SCB', '2023-06-14 09:06:24', '2023-06-14 14:36:24'),
(5565, 11, 338, 1, 'StCB Registration', 'schemeAddRow', '2023-06-14 09:06:24', '2023-06-14 14:36:24'),
(5566, 11, 339, 1, 'StCB Registration', 'sectorAddRow', '2023-06-14 09:06:24', '2023-06-14 14:36:24'),
(5567, 11, 345, 1, 'StCB Registration', 'Edit StCB', '2023-06-14 09:06:24', '2023-06-14 14:36:24'),
(5568, 11, 349, 1, 'StCB Registration', 'Delete StCB', '2023-06-14 09:06:24', '2023-06-14 14:36:24'),
(5569, 11, 351, 1, 'StCB Registration', 'View StCB', '2023-06-14 09:06:24', '2023-06-14 14:36:24'),
(5570, 11, 360, 0, 'StCB Registration', 'DCB Member List', '2023-06-14 09:06:24', '2023-06-14 14:36:24'),
(5571, 11, 362, 1, 'StCB Registration', 'Get districts', '2023-06-14 09:06:24', '2023-06-14 14:36:24'),
(5663, 63, 15, 1, 'Dashboard', 'Dashboard', '2023-06-15 05:47:52', '2023-06-15 11:17:52'),
(5664, 62, 15, 1, 'Dashboard', 'Dashboard', '2023-06-15 06:43:33', '2023-06-15 12:13:33'),
(5900, 63, 395, 1, 'Multi State Cooperative', 'brandAddRow', '2023-06-16 10:44:58', '2023-06-16 16:14:58'),
(5901, 63, 396, 1, 'Multi State Cooperative', 'exportAddRow', '2023-06-16 10:44:58', '2023-06-16 16:14:58'),
(5902, 63, 446, 0, 'Multi State Cooperative', 'Add New MSCS', '2023-06-16 10:44:58', '2023-06-16 16:14:58'),
(5903, 63, 447, 1, 'Multi State Cooperative', 'mscs step second', '2023-06-16 10:44:58', '2023-06-16 16:14:58'),
(5904, 63, 448, 1, 'Multi State Cooperative', 'mscs step third', '2023-06-16 10:44:58', '2023-06-16 16:14:58'),
(5905, 63, 449, 1, 'Multi State Cooperative', 'mscs step fourth', '2023-06-16 10:44:58', '2023-06-16 16:14:58'),
(5906, 63, 450, 1, 'Multi State Cooperative', 'mscs step fifth', '2023-06-16 10:44:58', '2023-06-16 16:14:58'),
(5907, 63, 451, 1, 'Multi State Cooperative', 'mscs step sixth', '2023-06-16 10:44:58', '2023-06-16 16:14:58'),
(5908, 63, 452, 1, 'Multi State Cooperative', 'edit Mscs Step First', '2023-06-16 10:44:58', '2023-06-16 16:14:58'),
(5909, 63, 453, 1, 'Multi State Cooperative', 'edit mscs step second', '2023-06-16 10:44:58', '2023-06-16 16:14:58'),
(5910, 63, 454, 1, 'Multi State Cooperative', 'edit mscs step third', '2023-06-16 10:44:58', '2023-06-16 16:14:58'),
(5911, 63, 455, 1, 'Multi State Cooperative', 'edit mscs step fourth', '2023-06-16 10:44:58', '2023-06-16 16:14:58'),
(5912, 63, 456, 1, 'Multi State Cooperative', 'edit mscs step fifth', '2023-06-16 10:44:58', '2023-06-16 16:14:58'),
(5913, 63, 457, 1, 'Multi State Cooperative', 'edit mscs step sixth', '2023-06-16 10:44:58', '2023-06-16 16:14:58'),
(5914, 63, 458, 0, 'Multi State Cooperative', 'List of MSCS Draft', '2023-06-16 10:44:58', '2023-06-16 16:14:58'),
(5915, 63, 481, 0, 'Multi State Cooperative', 'Data Entry Pending', '2023-06-16 10:44:58', '2023-06-16 16:14:58'),
(5916, 63, 538, 0, 'Multi State Cooperative', 'Data Entry Accepted', '2023-06-16 10:44:58', '2023-06-16 16:14:58'),
(5917, 63, 542, 0, 'Multi State Cooperative', 'Rejected from Nodal', '2023-06-16 10:44:58', '2023-06-16 16:14:58'),
(5918, 63, 543, 1, 'Multi State Cooperative', 'view', '2023-06-16 10:44:58', '2023-06-16 16:14:58'),
(5919, 63, 547, 1, 'Multi State Cooperative', 'delete', '2023-06-16 10:44:58', '2023-06-16 16:14:58'),
(5999, 62, 536, 0, 'Multi State Cooperative', 'List of Pending Data Entry', '2023-06-19 07:02:54', '2023-06-19 12:32:54'),
(6000, 62, 539, 0, 'Multi State Cooperative', 'List of Accepted Data Entry', '2023-06-19 07:02:54', '2023-06-19 12:32:54'),
(6001, 62, 541, 0, 'Multi State Cooperative', 'List of Rejected Data Entry', '2023-06-19 07:02:54', '2023-06-19 12:32:54'),
(6002, 62, 543, 1, 'Multi State Cooperative', 'view', '2023-06-19 07:02:54', '2023-06-19 12:32:54'),
(6071, 25, 338, 1, 'StCB Registration', 'schemeAddRow', '2023-06-20 10:22:48', '2023-06-20 15:52:48'),
(6072, 25, 339, 1, 'StCB Registration', 'sectorAddRow', '2023-06-20 10:22:48', '2023-06-20 15:52:48'),
(6073, 25, 345, 1, 'StCB Registration', 'Edit StCB', '2023-06-20 10:22:48', '2023-06-20 15:52:48'),
(6074, 25, 349, 1, 'StCB Registration', 'Delete StCB', '2023-06-20 10:22:48', '2023-06-20 15:52:48'),
(6075, 25, 351, 1, 'StCB Registration', 'View StCB', '2023-06-20 10:22:48', '2023-06-20 15:52:48'),
(6076, 25, 361, 1, 'StCB Registration', 'View Member', '2023-06-20 10:22:48', '2023-06-20 15:52:48'),
(6077, 25, 362, 1, 'StCB Registration', 'Get districts', '2023-06-20 10:22:48', '2023-06-20 15:52:48'),
(6078, 25, 363, 1, 'StCB Registration', 'Get All Society', '2023-06-20 10:22:48', '2023-06-20 15:52:48'),
(6079, 25, 368, 1, 'StCB Registration', 'other member add row', '2023-06-20 10:22:48', '2023-06-20 15:52:48'),
(6080, 25, 369, 1, 'StCB Registration', 'Get All Society1', '2023-06-20 10:22:48', '2023-06-20 15:52:48'),
(6081, 25, 462, 1, 'StCB Registration', 'Get All Society DCCB', '2023-06-20 10:22:48', '2023-06-20 15:52:48'),
(6082, 25, 463, 1, 'StCB Registration', 'Get All Society1 DCCB', '2023-06-20 10:22:48', '2023-06-20 15:52:48'),
(6083, 25, 553, 1, 'StCB Registration', 'Export Affiliated Pacs', '2023-06-20 10:22:48', '2023-06-20 15:52:48'),
(6138, 13, 551, 0, 'State Federation', 'Add Sectors Federations', '2023-06-22 05:38:30', '2023-06-22 11:08:30'),
(6139, 13, 557, 1, 'State Federation', 'Pacs', '2023-06-22 05:38:30', '2023-06-22 11:08:30'),
(6312, 14, 479, 0, 'SCARDB Registration', 'List all Scardb Registrations', '2023-06-26 08:45:47', '2023-06-26 14:15:47'),
(6313, 14, 531, 0, 'SCARDB Registration', 'List of Registered PCARDB', '2023-06-26 08:45:47', '2023-06-26 14:15:47'),
(6326, 14, 437, 1, 'PCARDB Registration', 'Add New PCARDB', '2023-06-26 09:42:45', '2023-06-26 15:12:45'),
(6327, 14, 464, 1, 'PCARDB Registration', 'other member add row', '2023-06-26 09:42:45', '2023-06-26 15:12:45'),
(6328, 14, 465, 1, 'PCARDB Registration', 'pcardb-add-row', '2023-06-26 09:42:45', '2023-06-26 15:12:45'),
(6329, 14, 466, 1, 'PCARDB Registration', 'get-all-society', '2023-06-26 09:42:45', '2023-06-26 15:12:45'),
(6330, 14, 467, 1, 'PCARDB Registration', 'get-all-society1', '2023-06-26 09:42:45', '2023-06-26 15:12:45'),
(6331, 14, 468, 1, 'PCARDB Registration', 'get-districts', '2023-06-26 09:42:45', '2023-06-26 15:12:45'),
(6332, 14, 469, 1, 'PCARDB Registration', 'sector-add-row', '2023-06-26 09:42:45', '2023-06-26 15:12:45'),
(6333, 14, 470, 1, 'PCARDB Registration', 'scardb-add-row', '2023-06-26 09:42:45', '2023-06-26 15:12:45'),
(6334, 14, 471, 1, 'PCARDB Registration', 'scheme-add-row', '2023-06-26 09:42:45', '2023-06-26 15:12:45'),
(6335, 14, 472, 1, 'PCARDB Registration', 'List of Registered PCARDB', '2023-06-26 09:42:45', '2023-06-26 15:12:45'),
(6336, 14, 522, 1, 'PCARDB Registration', 'view Index', '2023-06-26 09:42:45', '2023-06-26 15:12:45'),
(6337, 14, 549, 1, 'PCARDB Registration', 'pcardb member', '2023-06-26 09:42:45', '2023-06-26 15:12:45'),
(6353, 14, 481, 0, 'Multi State Cooperative', 'Data Entry Pending', '2023-06-26 10:34:21', '2023-06-26 16:04:21'),
(6354, 14, 538, 0, 'Multi State Cooperative', 'Data Entry Accepted', '2023-06-26 10:34:21', '2023-06-26 16:04:21'),
(6355, 14, 543, 1, 'Multi State Cooperative', 'view', '2023-06-26 10:34:22', '2023-06-26 16:04:22'),
(6742, 8, 572, 0, 'Payment Revised', 'Generate Certificate', '2023-07-03 09:40:27', '2023-07-03 15:10:27'),
(6743, 8, 573, 0, 'Payment Revised', 'Add Bank Detail', '2023-07-03 09:40:27', '2023-07-03 15:10:27'),
(6744, 8, 574, 1, 'Payment Revised', 'Edit', '2023-07-03 09:40:27', '2023-07-03 15:10:27'),
(6745, 8, 575, 0, 'Payment Revised', 'Upload Certificate', '2023-07-03 09:40:27', '2023-07-03 15:10:27'),
(6746, 8, 576, 0, 'Payment Revised', 'List District Certificate', '2023-07-03 09:40:27', '2023-07-03 15:10:27'),
(6747, 8, 577, 1, 'Payment Revised', 'Delete Payment Certificate', '2023-07-03 09:40:27', '2023-07-03 15:10:27'),
(6748, 8, 578, 1, 'Payment Revised', 'Delete Bank Detail', '2023-07-03 09:40:27', '2023-07-03 15:10:27'),
(6749, 2, 174, 0, 'Cooperative Societies', 'Add New Cooperative', '2023-10-09 10:44:38', '2023-07-04 12:14:16'),
(6750, 2, 175, 1, 'Cooperative Societies', 'Edit Cooperative Registration', '2023-10-09 10:44:38', '2023-07-04 12:14:16'),
(6751, 2, 176, 1, 'Cooperative Societies', 'View Cooperative Registration Details', '2023-10-09 10:44:38', '2023-07-04 12:14:16'),
(6752, 2, 177, 1, 'Cooperative Societies', 'Delete Cooperative Registration', '2023-10-09 10:44:38', '2023-07-04 12:14:16'),
(6753, 2, 189, 1, 'Cooperative Societies', 'Get Secondary Activity Ajax', '2023-10-09 10:44:38', '2023-07-04 12:14:16'),
(6754, 2, 208, 1, 'Cooperative Societies', 'getdccb', '2023-10-09 10:44:38', '2023-07-04 12:14:16'),
(6755, 2, 209, 1, 'Cooperative Societies', 'getfederationlevel', '2023-10-09 10:44:38', '2023-07-04 12:14:16'),
(6756, 2, 210, 1, 'Cooperative Societies', 'get-districts', '2023-10-09 10:44:38', '2023-07-04 12:14:16'),
(6757, 2, 211, 1, 'Cooperative Societies', 'get-blocks', '2023-10-09 10:44:38', '2023-07-04 12:14:16'),
(6758, 2, 212, 1, 'Cooperative Societies', 'get-gp', '2023-10-09 10:44:38', '2023-07-04 12:14:16'),
(6759, 2, 213, 1, 'Cooperative Societies', 'get-villages', '2023-10-09 10:44:38', '2023-07-04 12:14:16'),
(6760, 2, 214, 1, 'Cooperative Societies', 'get-primary-activity', '2023-10-09 10:44:38', '2023-07-04 12:14:16'),
(6761, 2, 215, 1, 'Cooperative Societies', 'Cooperative Registration : Rural Village Add Row', '2023-10-09 10:44:38', '2023-07-04 12:14:16'),
(6762, 2, 216, 0, 'Cooperative Societies', 'List of Cooperative Draft', '2023-10-09 10:44:38', '2023-07-04 12:14:16'),
(6763, 2, 217, 0, 'Cooperative Societies', 'List of Cooperative Pending', '2023-10-09 10:44:38', '2023-07-04 12:14:16'),
(6764, 2, 218, 0, 'Cooperative Societies', 'List of Cooperative Accepted', '2023-10-09 10:44:38', '2023-07-04 12:14:16'),
(6765, 2, 219, 0, 'Cooperative Societies', 'Return For Correction', '2023-10-09 10:44:38', '2023-07-04 12:14:16'),
(6766, 2, 231, 1, 'Cooperative Societies', 'Cooperative Registration : Urban Ward Add Row', '2023-10-09 10:44:38', '2023-07-04 12:14:16'),
(6767, 2, 397, 1, 'Cooperative Societies', 'Housing Society', '2023-10-09 10:44:38', '2023-07-04 12:14:16'),
(6768, 2, 398, 1, 'Cooperative Societies', 'Marketing Society', '2023-10-09 10:44:38', '2023-07-04 12:14:16'),
(6769, 2, 399, 1, 'Cooperative Societies', 'Credit & Thrift Society', '2023-10-09 10:44:38', '2023-07-04 12:14:16'),
(6770, 2, 434, 1, 'Cooperative Societies', 'Cooperative consumer society', '2023-10-09 10:44:38', '2023-07-04 12:14:16'),
(6771, 2, 439, 1, 'Cooperative Societies', 'Labour Society', '2023-10-09 10:44:38', '2023-07-04 12:14:17'),
(6772, 2, 444, 1, 'Cooperative Societies', 'Transport Society', '2023-10-09 10:44:38', '2023-07-04 12:14:17'),
(6773, 2, 445, 1, 'Cooperative Societies', 'PROCESSING/INDUSTRY', '2023-10-09 10:44:38', '2023-07-04 12:14:17'),
(6774, 2, 460, 1, 'Cooperative Societies', 'Handloom & Weavers', '2023-10-09 10:44:38', '2023-07-04 12:14:17'),
(6775, 2, 461, 1, 'Cooperative Societies', 'Agriculture & Allied ', '2023-10-09 10:44:38', '2023-07-04 12:14:17'),
(6776, 2, 473, 1, 'Cooperative Societies', 'Tribal SC/ST', '2023-10-09 10:44:38', '2023-07-04 12:14:17'),
(6777, 2, 474, 1, 'Cooperative Societies', 'Tourism Society', '2023-10-09 10:44:38', '2023-07-04 12:14:17'),
(6778, 2, 475, 1, 'Cooperative Societies', 'Handicraft Society', '2023-10-09 10:44:38', '2023-07-04 12:14:17'),
(6779, 2, 476, 1, 'Cooperative Societies', 'Education cooperative society', '2023-10-09 10:44:38', '2023-07-04 12:14:17'),
(6780, 2, 482, 1, 'Cooperative Societies', 'UCB Society', '2023-10-09 10:44:38', '2023-07-04 12:14:17'),
(6781, 2, 484, 1, 'Cooperative Societies', 'Cooperative Registration : Gov Scheme Add Row', '2023-10-09 10:44:38', '2023-07-04 12:14:17'),
(6782, 2, 485, 1, 'Cooperative Societies', 'Jute & Coir cooperative society', '2023-10-09 10:44:38', '2023-07-04 12:14:17'),
(6783, 2, 486, 1, 'Cooperative Societies', 'Get Sector Graphs', '2023-10-09 10:44:38', '2023-07-04 12:14:17'),
(6784, 2, 488, 1, 'Cooperative Societies', 'livestock & poultry society', '2023-10-09 10:44:38', '2023-07-04 12:14:17'),
(6785, 2, 490, 1, 'Cooperative Societies', 'Sericulture cooperative society', '2023-10-09 10:44:38', '2023-07-04 12:14:17'),
(6786, 2, 492, 1, 'Cooperative Societies', 'Primary Womwn cooperative society', '2023-10-09 10:44:38', '2023-07-04 12:14:17'),
(6787, 2, 515, 1, 'Cooperative Societies', 'Bee cooperative society', '2023-10-09 10:44:38', '2023-07-04 12:14:17'),
(6788, 2, 519, 1, 'Cooperative Societies', 'Multipurpose society', '2023-10-09 10:44:38', '2023-07-04 12:14:17'),
(6789, 2, 523, 1, 'Cooperative Societies', 'Social Welfare & Cultural Cooperative Society', '2023-10-09 10:44:38', '2023-07-04 12:14:17'),
(6790, 2, 532, 1, 'Cooperative Societies', 'Sugar Cooperative society', '2023-10-09 10:44:38', '2023-07-04 12:14:17'),
(6791, 2, 534, 1, 'Cooperative Societies', 'Miscellaneous', '2023-10-09 10:44:38', '2023-07-04 12:14:17'),
(6792, 2, 548, 1, 'Cooperative Societies', 'Credit Miscellaneous', '2023-10-09 10:44:38', '2023-07-04 12:14:17'),
(6795, 2, 562, 1, 'Cooperative Societies', 'Revised form : Urban Ward Add Row', '2023-10-09 10:44:38', '2023-07-04 12:14:17'),
(6854, 68, 495, 0, 'Education Training', 'Add New Institute', '2023-07-06 09:49:31', '2023-07-06 15:19:31'),
(6855, 68, 496, 1, 'Education Training', 'edit', '2023-07-06 09:49:31', '2023-07-06 15:19:31'),
(6856, 68, 497, 0, 'Education Training', 'List of Draft', '2023-07-06 09:49:31', '2023-07-06 15:19:31'),
(6857, 68, 498, 1, 'Education Training', 'view', '2023-07-06 09:49:31', '2023-07-06 15:19:31'),
(6858, 68, 499, 1, 'Education Training', 'delete', '2023-07-06 09:49:31', '2023-07-06 15:19:31'),
(6859, 68, 516, 0, 'Education Training', 'List of  Pending', '2023-07-06 09:49:31', '2023-07-06 15:19:31'),
(6860, 68, 517, 0, 'Education Training', 'List of Accepted', '2023-07-06 09:49:31', '2023-07-06 15:19:31'),
(6861, 68, 518, 0, 'Education Training', 'Return for Correction', '2023-07-06 09:49:31', '2023-07-06 15:19:31'),
(6862, 67, 527, 0, 'Education Training', 'List of  Institute Pending', '2023-07-06 09:50:48', '2023-07-06 15:20:48'),
(6863, 67, 528, 0, 'Education Training', 'List of  Institute Accepted', '2023-07-06 09:50:48', '2023-07-06 15:20:48'),
(6864, 67, 529, 0, 'Education Training', 'Return for Correction', '2023-07-06 09:50:48', '2023-07-06 15:20:48'),
(6865, 67, 15, 1, 'Dashboard', 'Dashboard', '2023-07-06 09:58:06', '2023-07-06 15:28:06'),
(6871, 68, 15, 1, 'Dashboard', 'Dashboard', '2023-07-06 10:01:02', '2023-07-06 15:31:02'),
(6966, 66, 210, 1, 'Cooperative Societies', 'get-districts', '2023-07-10 11:18:03', '2023-07-10 16:48:03'),
(6967, 66, 214, 1, 'Cooperative Societies', 'get-primary-activity', '2023-07-10 11:18:03', '2023-07-10 16:48:03'),
(6968, 66, 227, 1, 'Cooperative Societies', 'get-districts', '2023-07-10 11:18:03', '2023-07-10 16:48:03'),
(6969, 66, 486, 1, 'Cooperative Societies', 'Get Sector Graphs', '2023-07-10 11:18:03', '2023-07-10 16:48:03'),
(6970, 66, 521, 1, 'Cooperative Societies', 'getDistricts', '2023-07-10 11:18:04', '2023-07-10 16:48:04'),
(6971, 66, 535, 0, 'Cooperative Societies', 'List of Cooperative', '2023-07-10 11:18:04', '2023-07-10 16:48:04'),
(6972, 66, 537, 0, 'Cooperative Societies', 'Sample Form for Data Collection', '2023-07-10 11:18:04', '2023-07-10 16:48:04'),
(6973, 66, 554, 1, 'Cooperative Societies', 'Cooperative registration list', '2023-07-10 11:18:04', '2023-07-10 16:48:04'),
(6974, 66, 555, 1, 'Cooperative Societies', 'view', '2023-07-10 11:18:04', '2023-07-10 16:48:04'),
(6975, 66, 615, 0, 'Cooperative Societies', 'Map Reports', '2023-07-10 11:18:04', '2023-07-10 16:48:04'),
(6976, 66, 354, 0, 'GIS MAPs', 'MAP Dashboard', '2023-07-11 05:07:19', '2023-07-11 10:37:19'),
(7086, 14, 579, 0, 'Payment (Revised)', 'List All Certificate', '2023-07-12 05:56:13', '2023-07-12 11:26:13'),
(7087, 14, 580, 0, 'Payment (Revised)', 'List All State Certificate', '2023-07-12 05:56:13', '2023-07-12 11:26:13'),
(7088, 17, 354, 0, 'GIS MAPs', 'MAP Dashboard', '2023-07-12 07:40:50', '2023-07-12 13:10:50'),
(7175, 25, 346, 0, 'DCB Registration', 'DCB Member List', '2023-07-13 11:16:57', '2023-07-13 16:46:57'),
(7176, 25, 347, 1, 'DCB Registration', 'Add member', '2023-07-13 11:16:57', '2023-07-13 16:46:57');
INSERT INTO `roles_permissions` (`id`, `role_id`, `mid`, `navigationshow`, `module`, `moduletask`, `updated_at`, `created_at`) VALUES
(7177, 25, 348, 1, 'DCB Registration', 'Edit member', '2023-07-13 11:16:57', '2023-07-13 16:46:57'),
(7178, 25, 350, 1, 'DCB Registration', 'Delete Member', '2023-07-13 11:16:57', '2023-07-13 16:46:57'),
(7179, 25, 352, 1, 'DCB Registration', 'View Member', '2023-07-13 11:16:57', '2023-07-13 16:46:57'),
(7180, 25, 353, 1, 'DCB Registration', 'Get Society', '2023-07-13 11:16:57', '2023-07-13 16:46:57'),
(7181, 25, 364, 1, 'DCB Registration', 'schemeAddRow', '2023-07-13 11:16:57', '2023-07-13 16:46:57'),
(7182, 25, 556, 0, 'DCB Registration', 'PACS Computerization', '2023-07-13 11:16:57', '2023-07-13 16:46:57'),
(7183, 25, 620, 0, 'DCB Registration', 'Report Computerized', '2023-07-13 11:16:57', '2023-07-13 16:46:57'),
(7285, 1, 173, 0, 'Cooperative Societies', 'List of Cooperative', '2023-07-19 12:00:22', '2023-07-19 17:30:22'),
(7286, 1, 174, 0, 'Cooperative Societies', 'Add New Cooperative', '2023-07-19 12:00:22', '2023-07-19 17:30:22'),
(7287, 1, 175, 1, 'Cooperative Societies', 'Edit Cooperative Registration', '2023-07-19 12:00:22', '2023-07-19 17:30:22'),
(7288, 1, 176, 1, 'Cooperative Societies', 'View Cooperative Registration Details', '2023-07-19 12:00:22', '2023-07-19 17:30:22'),
(7289, 1, 177, 1, 'Cooperative Societies', 'Delete Cooperative Registration', '2023-07-19 12:00:22', '2023-07-19 17:30:22'),
(7290, 1, 625, 0, 'Cooperative Societies', 'cooperative of list (advance)', '2023-07-19 12:00:23', '2023-07-19 17:30:23'),
(7308, 11, 276, 0, 'Certificates', 'List Certificate', '2023-07-20 08:35:55', '2023-07-20 14:05:55'),
(7309, 11, 281, 1, 'Certificates', 'Download Certificate', '2023-07-20 08:35:55', '2023-07-20 14:05:55'),
(7355, 14, 558, 0, 'Certificates', 'All India List of Certificate (Revised)', '2023-07-21 05:48:05', '2023-07-21 11:18:05'),
(7389, 11, 318, 0, 'State wise report', 'Year-wise society register', '2023-07-21 11:40:41', '2023-07-21 17:10:41'),
(7390, 11, 566, 0, 'State wise report', 'Society report', '2023-07-21 11:40:41', '2023-07-21 17:10:41'),
(7420, 8, 175, 1, 'Cooperative Societies', 'Edit Cooperative Registration', '2023-07-24 06:10:51', '2023-07-24 11:40:51'),
(7421, 8, 176, 1, 'Cooperative Societies', 'View Cooperative Registration Details', '2023-07-24 06:10:51', '2023-07-24 11:40:51'),
(7422, 8, 177, 1, 'Cooperative Societies', 'Delete Cooperative Registration', '2023-07-24 06:10:51', '2023-07-24 11:40:51'),
(7423, 8, 180, 1, 'Cooperative Societies', 'CR - Add Row Contact Number Ajax', '2023-07-24 06:10:51', '2023-07-24 11:40:51'),
(7424, 8, 181, 1, 'Cooperative Societies', 'CR  - Add Row Email Ajax', '2023-07-24 06:10:51', '2023-07-24 11:40:51'),
(7425, 8, 189, 1, 'Cooperative Societies', 'Get Secondary Activity Ajax', '2023-07-24 06:10:51', '2023-07-24 11:40:51'),
(7426, 8, 194, 0, 'Cooperative Societies', 'Nodal Entry Form', '2023-07-24 06:10:51', '2023-07-24 11:40:51'),
(7427, 8, 195, 1, 'Cooperative Societies', 'Add Nodal', '2023-07-24 06:10:51', '2023-07-24 11:40:51'),
(7428, 8, 196, 1, 'Cooperative Societies', 'Edit Nodal entry', '2023-07-24 06:10:51', '2023-07-24 11:40:51'),
(7429, 8, 197, 1, 'Cooperative Societies', 'View Nodal entry', '2023-07-24 06:10:51', '2023-07-24 11:40:51'),
(7430, 8, 207, 1, 'Cooperative Societies', 'delete nodal entity form', '2023-07-24 06:10:51', '2023-07-24 11:40:51'),
(7431, 8, 208, 1, 'Cooperative Societies', 'getdccb', '2023-07-24 06:10:51', '2023-07-24 11:40:51'),
(7432, 8, 209, 1, 'Cooperative Societies', 'getfederationlevel', '2023-07-24 06:10:51', '2023-07-24 11:40:51'),
(7433, 8, 210, 1, 'Cooperative Societies', 'get-districts', '2023-07-24 06:10:51', '2023-07-24 11:40:51'),
(7434, 8, 211, 1, 'Cooperative Societies', 'get-blocks', '2023-07-24 06:10:51', '2023-07-24 11:40:51'),
(7435, 8, 212, 1, 'Cooperative Societies', 'get-gp', '2023-07-24 06:10:51', '2023-07-24 11:40:51'),
(7436, 8, 213, 1, 'Cooperative Societies', 'get-villages', '2023-07-24 06:10:51', '2023-07-24 11:40:51'),
(7437, 8, 214, 1, 'Cooperative Societies', 'get-primary-activity', '2023-07-24 06:10:51', '2023-07-24 11:40:51'),
(7438, 8, 215, 1, 'Cooperative Societies', 'Cooperative Registration : Rural Village Add Row', '2023-07-24 06:10:51', '2023-07-24 11:40:51'),
(7439, 8, 220, 0, 'Cooperative Societies', 'List of Cooperative Pending', '2023-07-24 06:10:51', '2023-07-24 11:40:51'),
(7440, 8, 221, 0, 'Cooperative Societies', 'List of Cooperative Accepted', '2023-07-24 06:10:51', '2023-07-24 11:40:51'),
(7441, 8, 222, 0, 'Cooperative Societies', 'Return For Correction', '2023-07-24 06:10:51', '2023-07-24 11:40:51'),
(7442, 8, 223, 1, 'Cooperative Societies', 'List of cooperative Bulk Approval', '2023-07-24 06:10:51', '2023-07-24 11:40:51'),
(7443, 8, 224, 1, 'Cooperative Societies', 'Approval', '2023-07-24 06:10:51', '2023-07-24 11:40:51'),
(7444, 8, 227, 1, 'Cooperative Societies', 'get-districts', '2023-07-24 06:10:51', '2023-07-24 11:40:51'),
(7445, 8, 228, 1, 'Cooperative Societies', 'getDistricsNodal', '2023-07-24 06:10:51', '2023-07-24 11:40:51'),
(7446, 8, 231, 1, 'Cooperative Societies', 'Cooperative Registration : Urban Ward Add Row', '2023-07-24 06:10:51', '2023-07-24 11:40:51'),
(7447, 8, 477, 1, 'Cooperative Societies', 'Cooperative registration Logs', '2023-07-24 06:10:51', '2023-07-24 11:40:51'),
(7448, 8, 480, 1, 'Cooperative Societies', 'log view', '2023-07-24 06:10:51', '2023-07-24 11:40:51'),
(7449, 8, 582, 0, 'Cooperative Societies', 'Nodal Entry Form old', '2023-07-24 06:10:51', '2023-07-24 11:40:51'),
(7450, 8, 583, 1, 'Cooperative Societies', 'Add Nodal old', '2023-07-24 06:10:51', '2023-07-24 11:40:51'),
(7451, 8, 584, 1, 'Cooperative Societies', 'Edit Nodal entry old', '2023-07-24 06:10:52', '2023-07-24 11:40:52'),
(7452, 8, 585, 1, 'Cooperative Societies', 'View Nodal entry old', '2023-07-24 06:10:52', '2023-07-24 11:40:52'),
(7453, 8, 586, 1, 'Cooperative Societies', 'delete nodal entity form old', '2023-07-24 06:10:52', '2023-07-24 11:40:52'),
(7454, 8, 625, 0, 'Cooperative Societies', 'cooperative of list (advance)', '2023-07-24 06:10:52', '2023-07-24 11:40:52'),
(7493, 11, 188, 0, 'Analytical Report/ Dashboard', 'All Registrations Report', '2023-07-24 10:59:52', '2023-07-24 16:29:52'),
(7494, 11, 230, 0, 'Analytical Report/ Dashboard', 'State Level Report', '2023-07-24 10:59:52', '2023-07-24 16:29:52'),
(7495, 11, 234, 0, 'Analytical Report/ Dashboard', 'State Area Urban Report', '2023-07-24 10:59:52', '2023-07-24 16:29:52'),
(7496, 11, 236, 1, 'Analytical Report/ Dashboard', 'get-districts', '2023-07-24 10:59:52', '2023-07-24 16:29:52'),
(7497, 11, 239, 0, 'Analytical Report/ Dashboard', 'State Area Report', '2023-07-24 10:59:52', '2023-07-24 16:29:52'),
(7498, 11, 263, 0, 'Analytical Report/ Dashboard', 'State Level Urban Report', '2023-07-24 10:59:52', '2023-07-24 16:29:52'),
(7499, 11, 617, 0, 'Analytical Report/ Dashboard', 'Sectorwise Society Count Report', '2023-07-24 10:59:52', '2023-07-24 16:29:52'),
(7500, 11, 618, 0, 'Analytical Report/ Dashboard', 'State Sector society member count < 10L', '2023-07-24 10:59:52', '2023-07-24 16:29:52'),
(7501, 11, 626, 0, 'Analytical Report/ Dashboard', 'State wise society & members count', '2023-07-24 10:59:52', '2023-07-24 16:29:52'),
(7503, 11, 630, 0, 'Payment (Revised)', 'List State Certificates', '2023-07-24 11:20:20', '2023-07-24 16:50:20'),
(7504, 17, 365, 0, 'Analytical Report/ Dashboard', 'Audit Status & Land availability ', '2023-07-24 11:29:50', '2023-07-24 16:59:50'),
(7505, 17, 624, 0, 'Analytical Report/ Dashboard', 'Audit Report', '2023-07-24 11:29:50', '2023-07-24 16:59:50'),
(7512, 17, 568, 0, 'Computerization Reports', 'PACS Report of Computerization', '2023-07-25 10:05:42', '2023-07-25 15:35:42'),
(7513, 17, 569, 1, 'Computerization Reports', 'Computerization all List', '2023-07-25 10:05:42', '2023-07-25 15:35:42'),
(7514, 17, 619, 1, 'Computerization Reports', 'Computerization Reports', '2023-07-25 10:05:42', '2023-07-25 15:35:42'),
(7515, 11, 568, 0, 'Computerization Reports', 'PACS Report of Computerization', '2023-07-25 10:06:10', '2023-07-25 15:36:10'),
(7516, 11, 569, 1, 'Computerization Reports', 'Computerization all List', '2023-07-25 10:06:10', '2023-07-25 15:36:10'),
(7517, 11, 619, 1, 'Computerization Reports', 'Computerization Reports', '2023-07-25 10:06:11', '2023-07-25 15:36:11'),
(7518, 23, 568, 0, 'Computerization Reports', 'PACS Report of Computerization', '2023-07-25 10:06:32', '2023-07-25 15:36:32'),
(7519, 23, 569, 1, 'Computerization Reports', 'Computerization all List', '2023-07-25 10:06:32', '2023-07-25 15:36:32'),
(7520, 23, 619, 1, 'Computerization Reports', 'Computerization Reports', '2023-07-25 10:06:32', '2023-07-25 15:36:32'),
(7786, 60, 384, 1, 'SCARDB Registration', 'SCARDB Registration ', '2023-08-02 06:22:27', '2023-08-02 11:52:27'),
(7787, 60, 385, 0, 'SCARDB Registration', 'Add New SCARDB', '2023-08-02 06:22:27', '2023-08-02 11:52:27'),
(7788, 60, 386, 1, 'SCARDB Registration', 'sectorAddRow', '2023-08-02 06:22:27', '2023-08-02 11:52:27'),
(7789, 60, 387, 1, 'SCARDB Registration', 'schemeAddRow', '2023-08-02 06:22:27', '2023-08-02 11:52:27'),
(7790, 60, 388, 1, 'SCARDB Registration', 'View SCARDB', '2023-08-02 06:22:27', '2023-08-02 11:52:27'),
(7791, 60, 389, 1, 'SCARDB Registration', 'scardbAddRow', '2023-08-02 06:22:27', '2023-08-02 11:52:27'),
(7792, 60, 390, 1, 'SCARDB Registration', 'Edit SCARDB', '2023-08-02 06:22:27', '2023-08-02 11:52:27'),
(7793, 60, 419, 1, 'SCARDB Registration', 'other member add row', '2023-08-02 06:22:27', '2023-08-02 11:52:27'),
(7794, 60, 479, 1, 'SCARDB Registration', 'List all Scardb Registrations', '2023-08-02 06:22:27', '2023-08-02 11:52:27'),
(7795, 60, 483, 1, 'SCARDB Registration', 'get-districts', '2023-08-02 06:22:27', '2023-08-02 11:52:27'),
(7796, 60, 531, 0, 'SCARDB Registration', 'List of Registered PCARDB', '2023-08-02 06:22:27', '2023-08-02 11:52:27'),
(7797, 60, 642, 0, 'SCARDB Registration', 'List of Registered Draft PCARDB', '2023-08-02 06:22:27', '2023-08-02 11:52:27'),
(7866, 14, 174, 0, 'Cooperative Societies', 'Add New Cooperative', '2023-08-02 06:52:52', '2023-08-02 12:22:52'),
(7867, 14, 175, 1, 'Cooperative Societies', 'Edit Cooperative Registration', '2023-08-02 06:52:53', '2023-08-02 12:22:53'),
(7868, 14, 176, 1, 'Cooperative Societies', 'View Cooperative Registration Details', '2023-08-02 06:52:53', '2023-08-02 12:22:53'),
(7869, 14, 177, 1, 'Cooperative Societies', 'Delete Cooperative Registration', '2023-08-02 06:52:53', '2023-08-02 12:22:53'),
(7870, 14, 180, 1, 'Cooperative Societies', 'CR - Add Row Contact Number Ajax', '2023-08-02 06:52:53', '2023-08-02 12:22:53'),
(7871, 14, 181, 1, 'Cooperative Societies', 'CR  - Add Row Email Ajax', '2023-08-02 06:52:53', '2023-08-02 12:22:53'),
(7872, 14, 189, 1, 'Cooperative Societies', 'Get Secondary Activity Ajax', '2023-08-02 06:52:53', '2023-08-02 12:22:53'),
(7873, 14, 199, 1, 'Cooperative Societies', 'Add New Cooperative 1', '2023-08-02 06:52:53', '2023-08-02 12:22:53'),
(7874, 14, 208, 1, 'Cooperative Societies', 'getdccb', '2023-08-02 06:52:53', '2023-08-02 12:22:53'),
(7875, 14, 209, 1, 'Cooperative Societies', 'getfederationlevel', '2023-08-02 06:52:53', '2023-08-02 12:22:53'),
(7876, 14, 210, 1, 'Cooperative Societies', 'get-districts', '2023-08-02 06:52:53', '2023-08-02 12:22:53'),
(7877, 14, 211, 1, 'Cooperative Societies', 'get-blocks', '2023-08-02 06:52:53', '2023-08-02 12:22:53'),
(7878, 14, 212, 1, 'Cooperative Societies', 'get-gp', '2023-08-02 06:52:53', '2023-08-02 12:22:53'),
(7879, 14, 213, 1, 'Cooperative Societies', 'get-villages', '2023-08-02 06:52:53', '2023-08-02 12:22:53'),
(7880, 14, 214, 1, 'Cooperative Societies', 'get-primary-activity', '2023-08-02 06:52:53', '2023-08-02 12:22:53'),
(7881, 14, 215, 1, 'Cooperative Societies', 'Cooperative Registration : Rural Village Add Row', '2023-08-02 06:52:53', '2023-08-02 12:22:53'),
(7882, 14, 226, 0, 'Cooperative Societies', 'Nodal Entry Form', '2023-08-02 06:52:53', '2023-08-02 12:22:53'),
(7883, 14, 227, 1, 'Cooperative Societies', 'get-districts', '2023-08-02 06:52:53', '2023-08-02 12:22:53'),
(7884, 14, 228, 1, 'Cooperative Societies', 'getDistricsNodal', '2023-08-02 06:52:53', '2023-08-02 12:22:53'),
(7885, 14, 229, 0, 'Cooperative Societies', 'List of Cooperative Pending', '2023-08-02 06:52:53', '2023-08-02 12:22:53'),
(7886, 14, 231, 1, 'Cooperative Societies', 'Cooperative Registration : Urban Ward Add Row', '2023-08-02 06:52:53', '2023-08-02 12:22:53'),
(7887, 14, 237, 0, 'Cooperative Societies', 'List of Cooperative Approved', '2023-08-02 06:52:53', '2023-08-02 12:22:53'),
(7888, 14, 238, 0, 'Cooperative Societies', 'Return For Correction', '2023-08-02 06:52:53', '2023-08-02 12:22:53'),
(8060, 60, 437, 1, 'PCARDB Registration', 'Add New PCARDB', '2023-08-02 12:04:22', '2023-08-02 17:34:22'),
(8061, 60, 464, 1, 'PCARDB Registration', 'other member add row', '2023-08-02 12:04:22', '2023-08-02 17:34:22'),
(8062, 60, 465, 1, 'PCARDB Registration', 'pcardb-add-row', '2023-08-02 12:04:22', '2023-08-02 17:34:22'),
(8063, 60, 466, 1, 'PCARDB Registration', 'get-all-society', '2023-08-02 12:04:22', '2023-08-02 17:34:22'),
(8064, 60, 467, 1, 'PCARDB Registration', 'get-all-society1', '2023-08-02 12:04:22', '2023-08-02 17:34:22'),
(8065, 60, 468, 1, 'PCARDB Registration', 'get-districts', '2023-08-02 12:04:22', '2023-08-02 17:34:22'),
(8066, 60, 469, 1, 'PCARDB Registration', 'sector-add-row', '2023-08-02 12:04:22', '2023-08-02 17:34:22'),
(8067, 60, 470, 1, 'PCARDB Registration', 'scardb-add-row', '2023-08-02 12:04:22', '2023-08-02 17:34:22'),
(8068, 60, 471, 1, 'PCARDB Registration', 'scheme-add-row', '2023-08-02 12:04:22', '2023-08-02 17:34:22'),
(8069, 60, 472, 1, 'PCARDB Registration', 'List of Registered PCARDB', '2023-08-02 12:04:22', '2023-08-02 17:34:22'),
(8070, 60, 522, 1, 'PCARDB Registration', 'view Index', '2023-08-02 12:04:22', '2023-08-02 17:34:22'),
(8071, 60, 640, 1, 'PCARDB Registration', 'List of Registered PCARDB Draft', '2023-08-02 12:04:22', '2023-08-02 17:34:22'),
(8072, 60, 641, 1, 'PCARDB Registration', 'view Draft', '2023-08-02 12:04:22', '2023-08-02 17:34:22'),
(8073, 60, 645, 1, 'PCARDB Registration', 'Pcardb Urban Ward Add Row', '2023-08-02 12:04:22', '2023-08-02 17:34:22'),
(8074, 60, 646, 1, 'PCARDB Registration', 'pcardb Rural Village Add Row', '2023-08-02 12:04:22', '2023-08-02 17:34:22'),
(8147, 12, 247, 1, 'National Federations', 'View National Federations', '2023-08-04 05:02:39', '2023-08-04 10:32:39'),
(8148, 12, 250, 1, 'National Federations', 'getCooperativeSocietyInfo', '2023-08-04 05:02:39', '2023-08-04 10:32:39'),
(8149, 12, 251, 0, 'National Federations', 'National Federation List', '2023-08-04 05:02:39', '2023-08-04 10:32:39'),
(8150, 12, 253, 1, 'National Federations', 'List Of Members', '2023-08-04 05:02:39', '2023-08-04 10:32:39'),
(8151, 12, 256, 1, 'National Federations', 'View Member', '2023-08-04 05:02:39', '2023-08-04 10:32:39'),
(8152, 12, 258, 1, 'National Federations', 'view national', '2023-08-04 05:02:39', '2023-08-04 10:32:39'),
(8153, 12, 332, 1, 'National Federations', 'getSocietyName', '2023-08-04 05:02:39', '2023-08-04 10:32:39'),
(8154, 12, 333, 1, 'National Federations', 'get-society-details', '2023-08-04 05:02:39', '2023-08-04 10:32:39'),
(8164, 12, 336, 0, 'StCB Registration', 'StCB Registation', '2023-08-04 05:05:08', '2023-08-04 10:35:08'),
(8165, 12, 351, 1, 'StCB Registration', 'View StCB', '2023-08-04 05:05:08', '2023-08-04 10:35:08'),
(8166, 12, 360, 0, 'StCB Registration', 'DCB Member List', '2023-08-04 05:05:08', '2023-08-04 10:35:08'),
(8167, 12, 361, 1, 'StCB Registration', 'View Member', '2023-08-04 05:05:08', '2023-08-04 10:35:08'),
(8168, 12, 362, 1, 'StCB Registration', 'Get districts', '2023-08-04 05:05:09', '2023-08-04 10:35:09'),
(8169, 12, 363, 1, 'StCB Registration', 'Get All Society', '2023-08-04 05:05:09', '2023-08-04 10:35:09'),
(8170, 12, 462, 1, 'StCB Registration', 'Get All Society DCCB', '2023-08-04 05:05:09', '2023-08-04 10:35:09'),
(8171, 12, 463, 1, 'StCB Registration', 'Get All Society1 DCCB', '2023-08-04 05:05:09', '2023-08-04 10:35:09'),
(8172, 12, 553, 1, 'StCB Registration', 'Export Affiliated Pacs', '2023-08-04 05:05:09', '2023-08-04 10:35:09'),
(8173, 12, 346, 0, 'DCB Registration', 'DCB Member List', '2023-08-04 05:06:55', '2023-08-04 10:36:55'),
(8174, 12, 352, 1, 'DCB Registration', 'View Member', '2023-08-04 05:06:55', '2023-08-04 10:36:55'),
(8175, 12, 353, 1, 'DCB Registration', 'Get Society', '2023-08-04 05:06:55', '2023-08-04 10:36:55'),
(8177, 12, 354, 0, 'GIS MAPs', 'MAP Dashboard', '2023-08-04 05:09:16', '2023-08-04 10:39:16'),
(8178, 12, 500, 1, 'GIS MAPs', 'Get Primary Activities', '2023-08-04 05:09:16', '2023-08-04 10:39:16'),
(8179, 12, 613, 1, 'GIS MAPs', 'primaryAllIndia', '2023-08-04 05:09:16', '2023-08-04 10:39:16'),
(8180, 12, 481, 0, 'Multi State Cooperative', 'Data Entry Pending', '2023-08-04 06:14:56', '2023-08-04 11:44:56'),
(8181, 12, 539, 0, 'Multi State Cooperative', 'List of Accepted Data Entry', '2023-08-04 06:14:56', '2023-08-04 11:44:56'),
(8182, 12, 543, 1, 'Multi State Cooperative', 'view', '2023-08-04 06:14:56', '2023-08-04 11:44:56'),
(8183, 12, 564, 1, 'Multi State Cooperative', 'Get districts', '2023-08-04 06:14:56', '2023-08-04 11:44:56'),
(8184, 12, 568, 0, 'Computerization Reports', 'PACS Report of Computerization', '2023-08-04 06:20:02', '2023-08-04 11:50:02'),
(8185, 12, 569, 1, 'Computerization Reports', 'Computerization all List', '2023-08-04 06:20:02', '2023-08-04 11:50:02'),
(8186, 12, 619, 1, 'Computerization Reports', 'Computerization Reports', '2023-08-04 06:20:02', '2023-08-04 11:50:02'),
(8218, 12, 15, 1, 'Dashboard', 'Dashboard', '2023-08-07 09:30:25', '2023-08-07 15:00:25'),
(8219, 12, 233, 1, 'Dashboard', 'Get districts by state', '2023-08-07 09:30:25', '2023-08-07 15:00:25'),
(8220, 12, 188, 0, 'Analytical Report/ Dashboard', 'All Registrations Report', '2023-08-07 09:35:28', '2023-08-07 15:05:28'),
(8221, 12, 225, 1, 'Analytical Report/ Dashboard', 'All India Reports', '2023-08-07 09:35:28', '2023-08-07 15:05:28'),
(8222, 12, 236, 1, 'Analytical Report/ Dashboard', 'get-districts', '2023-08-07 09:35:28', '2023-08-07 15:05:28'),
(8223, 12, 289, 1, 'Analytical Report/ Dashboard', 'Affiliated Report', '2023-08-07 09:35:28', '2023-08-07 15:05:28'),
(8224, 12, 296, 1, 'Analytical Report/ Dashboard', 'Available Affiliated Report', '2023-08-07 09:35:28', '2023-08-07 15:05:28'),
(8225, 12, 329, 1, 'Analytical Report/ Dashboard', 'viewchart', '2023-08-07 09:35:28', '2023-08-07 15:05:28'),
(8226, 12, 330, 1, 'Analytical Report/ Dashboard', 'available-fedration-state', '2023-08-07 09:35:28', '2023-08-07 15:05:28'),
(8227, 12, 331, 1, 'Analytical Report/ Dashboard', 'Not Available Affiliated Report', '2023-08-07 09:35:28', '2023-08-07 15:05:28'),
(8228, 12, 365, 0, 'Analytical Report/ Dashboard', 'Audit Status & Land availability ', '2023-08-07 09:35:28', '2023-08-07 15:05:28'),
(8229, 12, 478, 0, 'Analytical Report/ Dashboard', 'GP Covered  Report', '2023-08-07 09:35:28', '2023-08-07 15:05:28'),
(8230, 12, 526, 0, 'Analytical Report/ Dashboard', 'New-count-report', '2023-08-07 09:35:28', '2023-08-07 15:05:28'),
(8231, 12, 546, 0, 'Analytical Report/ Dashboard', 'Area of Operation Under Co-op', '2023-08-07 09:35:28', '2023-08-07 15:05:28'),
(8232, 12, 616, 1, 'Analytical Report/ Dashboard', 'Districtwise Society Count', '2023-08-07 09:35:28', '2023-08-07 15:05:28'),
(8233, 12, 617, 0, 'Analytical Report/ Dashboard', 'Sectorwise Society Count Report', '2023-08-07 09:35:29', '2023-08-07 15:05:29'),
(8234, 12, 618, 0, 'Analytical Report/ Dashboard', 'State Sector society member count < 1 L', '2023-08-07 09:35:29', '2023-08-07 15:05:29'),
(8235, 12, 624, 0, 'Analytical Report/ Dashboard', 'Audit Report', '2023-08-07 09:35:29', '2023-08-07 15:05:29'),
(8236, 12, 626, 0, 'Analytical Report/ Dashboard', 'State wise society & members count', '2023-08-07 09:35:29', '2023-08-07 15:05:29'),
(8237, 12, 647, 0, 'Analytical Report/ Dashboard', 'Newly registered society', '2023-08-07 09:35:29', '2023-08-07 15:05:29'),
(8238, 12, 210, 1, 'Cooperative Societies', 'get-districts', '2023-08-07 09:36:51', '2023-08-07 15:06:51'),
(8239, 12, 211, 1, 'Cooperative Societies', 'get-blocks', '2023-08-07 09:36:51', '2023-08-07 15:06:51'),
(8240, 12, 214, 1, 'Cooperative Societies', 'get-primary-activity', '2023-08-07 09:36:51', '2023-08-07 15:06:51'),
(8241, 12, 521, 1, 'Cooperative Societies', 'getDistricts', '2023-08-07 09:36:52', '2023-08-07 15:06:52'),
(8242, 12, 535, 0, 'Cooperative Societies', 'List of Cooperative', '2023-08-07 09:36:52', '2023-08-07 15:06:52'),
(8243, 12, 537, 0, 'Cooperative Societies', 'Sample Form for Data Collection', '2023-08-07 09:36:52', '2023-08-07 15:06:52'),
(8244, 12, 555, 1, 'Cooperative Societies', 'view', '2023-08-07 09:36:52', '2023-08-07 15:06:52'),
(8245, 12, 625, 0, 'Cooperative Societies', 'cooperative of list (advance)', '2023-08-07 09:36:52', '2023-08-07 15:06:52'),
(8397, 8, 653, 1, 'District Federation / Union Form', 'Federation Member', '2023-08-11 05:47:18', '2023-08-11 11:17:18'),
(8411, 24, 336, 0, 'StCB Registration', 'StCB Registation', '2023-08-16 12:29:55', '2023-08-16 17:59:55'),
(8412, 24, 337, 1, 'StCB Registration', 'Add New SCB', '2023-08-16 12:29:55', '2023-08-16 17:59:55'),
(8413, 24, 338, 1, 'StCB Registration', 'schemeAddRow', '2023-08-16 12:29:55', '2023-08-16 17:59:55'),
(8414, 24, 339, 1, 'StCB Registration', 'sectorAddRow', '2023-08-16 12:29:56', '2023-08-16 17:59:56'),
(8415, 24, 345, 1, 'StCB Registration', 'Edit StCB', '2023-08-16 12:29:56', '2023-08-16 17:59:56'),
(8416, 24, 349, 1, 'StCB Registration', 'Delete StCB', '2023-08-16 12:29:56', '2023-08-16 17:59:56'),
(8417, 24, 351, 1, 'StCB Registration', 'View StCB', '2023-08-16 12:29:56', '2023-08-16 17:59:56'),
(8418, 24, 360, 0, 'StCB Registration', 'DCB Member List', '2023-08-16 12:29:56', '2023-08-16 17:59:56'),
(8419, 24, 361, 1, 'StCB Registration', 'View Member', '2023-08-16 12:29:56', '2023-08-16 17:59:56'),
(8420, 24, 362, 1, 'StCB Registration', 'Get districts', '2023-08-16 12:29:56', '2023-08-16 17:59:56'),
(8421, 24, 363, 1, 'StCB Registration', 'Get All Society', '2023-08-16 12:29:56', '2023-08-16 17:59:56'),
(8422, 24, 368, 1, 'StCB Registration', 'other member add row', '2023-08-16 12:29:56', '2023-08-16 17:59:56'),
(8423, 24, 369, 1, 'StCB Registration', 'Get All Society1', '2023-08-16 12:29:56', '2023-08-16 17:59:56'),
(8424, 24, 553, 1, 'StCB Registration', 'Export Affiliated Pacs', '2023-08-16 12:29:56', '2023-08-16 17:59:56'),
(8496, 2, 653, 1, 'District Federation / Union Form', 'Federation Member', '2023-10-09 10:44:38', '2023-08-17 14:49:26'),
(8604, 26, 535, 0, 'Cooperative Societies', 'List of Cooperative', '2023-08-23 07:40:43', '2023-08-23 13:10:43'),
(8605, 26, 554, 1, 'Cooperative Societies', 'Cooperative registration list', '2023-08-23 07:40:43', '2023-08-23 13:10:43'),
(8606, 26, 555, 1, 'Cooperative Societies', 'view', '2023-08-23 07:40:43', '2023-08-23 13:10:43'),
(8607, 26, 625, 0, 'Cooperative Societies', 'cooperative of list (advance)', '2023-08-23 07:40:43', '2023-08-23 13:10:43'),
(8608, 66, 188, 0, 'Analytical Report/ Dashboard', 'All Registrations Report', '2023-08-23 12:24:32', '2023-08-23 17:54:32'),
(8609, 66, 236, 1, 'Analytical Report/ Dashboard', 'get-districts', '2023-08-23 12:24:32', '2023-08-23 17:54:32'),
(8610, 66, 289, 1, 'Analytical Report/ Dashboard', 'Affiliated Report', '2023-08-23 12:24:32', '2023-08-23 17:54:32'),
(8611, 66, 296, 1, 'Analytical Report/ Dashboard', 'Available Affiliated Report', '2023-08-23 12:24:32', '2023-08-23 17:54:32'),
(8612, 66, 300, 1, 'Analytical Report/ Dashboard', 'Area Operation Block Report', '2023-08-23 12:24:32', '2023-08-23 17:54:32'),
(8613, 66, 329, 1, 'Analytical Report/ Dashboard', 'viewchart', '2023-08-23 12:24:32', '2023-08-23 17:54:32'),
(8614, 66, 330, 1, 'Analytical Report/ Dashboard', 'available-fedration-state', '2023-08-23 12:24:32', '2023-08-23 17:54:32'),
(8615, 66, 331, 1, 'Analytical Report/ Dashboard', 'Not Available Affiliated Report', '2023-08-23 12:24:32', '2023-08-23 17:54:32'),
(8616, 66, 365, 0, 'Analytical Report/ Dashboard', 'Audit Status & Land availability ', '2023-08-23 12:24:32', '2023-08-23 17:54:32'),
(8617, 66, 545, 0, 'Analytical Report/ Dashboard', 'Affiliation with Federation/Union', '2023-08-23 12:24:32', '2023-08-23 17:54:32'),
(8618, 66, 546, 0, 'Analytical Report/ Dashboard', 'Area of Operation Under Co-op', '2023-08-23 12:24:32', '2023-08-23 17:54:32'),
(8764, 2, 560, 0, 'District Federation / Union Form', 'Add New State/District Federation', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8765, 2, 561, 1, 'District Federation / Union Form', 'get fed', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8766, 2, 563, 1, 'District Federation / Union Form', 'Revised Form : Rural Village Add Row', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8767, 2, 570, 1, 'District Federation / Union Form', 'Revised Form : other-member-add-row', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8768, 2, 581, 1, 'District Federation / Union Form', 'Handloom', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8769, 2, 590, 1, 'District Federation / Union Form', 'Sugar', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8770, 2, 591, 1, 'District Federation / Union Form', 'Tourism', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8771, 2, 592, 1, 'District Federation / Union Form', 'Transport', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8772, 2, 593, 1, 'District Federation / Union Form', 'Tribal', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8773, 2, 594, 1, 'District Federation / Union Form', 'Women', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8774, 2, 595, 1, 'District Federation / Union Form', 'Social', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8775, 2, 596, 1, 'District Federation / Union Form', 'Sericulture', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8776, 2, 597, 1, 'District Federation / Union Form', 'Processing', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8777, 2, 598, 1, 'District Federation / Union Form', 'Marketing', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8778, 2, 599, 1, 'District Federation / Union Form', 'Housing', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8779, 2, 600, 1, 'District Federation / Union Form', 'Multipurpose', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8780, 2, 601, 1, 'District Federation / Union Form', 'Miscellaneous', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8781, 2, 602, 1, 'District Federation / Union Form', 'Livestock', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8782, 2, 603, 1, 'District Federation / Union Form', 'Labour', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8783, 2, 604, 1, 'District Federation / Union Form', 'Jute', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8784, 2, 605, 1, 'District Federation / Union Form', 'Handicraft', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8785, 2, 606, 1, 'District Federation / Union Form', 'Education', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8786, 2, 607, 1, 'District Federation / Union Form', 'Consumer', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8787, 2, 608, 1, 'District Federation / Union Form', 'Bee', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8788, 2, 609, 1, 'District Federation / Union Form', 'Agriculture', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8789, 2, 610, 1, 'District Federation / Union Form', 'Credit and Thrift', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8790, 2, 611, 1, 'District Federation / Union Form', 'Miscellaneous Credit', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8791, 2, 612, 1, 'District Federation / Union Form', 'Urban Cooperative Bank', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8792, 2, 621, 1, 'District Federation / Union Form', 'Edit State/District Federation', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8793, 2, 622, 0, 'District Federation / Union Form', 'List of State/District Federation Draft', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8794, 2, 623, 1, 'District Federation / Union Form', 'View of State/District Federation', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8795, 2, 629, 0, 'District Federation / Union Form', 'List of State/District Federation', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8796, 2, 639, 1, 'District Federation / Union Form', 'State District Federation : Gov Scheme Add Row', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8797, 2, 643, 1, 'District Federation / Union Form', 'get districts', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8798, 2, 649, 1, 'District Federation / Union Form', 'get primary activity', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8799, 2, 654, 1, 'District Federation / Union Form', 'Federation Member', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8800, 2, 664, 1, 'District Federation / Union Form', 'add member ajax', '2023-10-09 10:44:38', '2023-08-29 10:21:22'),
(8839, 11, 560, 0, 'District Federation / Union Form', 'Add New State/District Federation', '2023-08-29 10:02:43', '2023-08-29 15:32:43'),
(8840, 11, 561, 1, 'District Federation / Union Form', 'get fed', '2023-08-29 10:02:43', '2023-08-29 15:32:43'),
(8841, 11, 563, 1, 'District Federation / Union Form', 'Revised Form : Rural Village Add Row', '2023-08-29 10:02:43', '2023-08-29 15:32:43'),
(8842, 11, 570, 1, 'District Federation / Union Form', 'Revised Form : other-member-add-row', '2023-08-29 10:02:43', '2023-08-29 15:32:43'),
(8843, 11, 581, 1, 'District Federation / Union Form', 'Handloom', '2023-08-29 10:02:43', '2023-08-29 15:32:43'),
(8844, 11, 590, 1, 'District Federation / Union Form', 'Sugar', '2023-08-29 10:02:43', '2023-08-29 15:32:43'),
(8845, 11, 591, 1, 'District Federation / Union Form', 'Tourism', '2023-08-29 10:02:43', '2023-08-29 15:32:43'),
(8846, 11, 592, 1, 'District Federation / Union Form', 'Transport', '2023-08-29 10:02:43', '2023-08-29 15:32:43'),
(8847, 11, 593, 1, 'District Federation / Union Form', 'Tribal', '2023-08-29 10:02:43', '2023-08-29 15:32:43'),
(8848, 11, 594, 1, 'District Federation / Union Form', 'Women', '2023-08-29 10:02:43', '2023-08-29 15:32:43'),
(8849, 11, 595, 1, 'District Federation / Union Form', 'Social', '2023-08-29 10:02:43', '2023-08-29 15:32:43'),
(8850, 11, 596, 1, 'District Federation / Union Form', 'Sericulture', '2023-08-29 10:02:43', '2023-08-29 15:32:43'),
(8851, 11, 597, 1, 'District Federation / Union Form', 'Processing', '2023-08-29 10:02:43', '2023-08-29 15:32:43'),
(8852, 11, 598, 1, 'District Federation / Union Form', 'Marketing', '2023-08-29 10:02:43', '2023-08-29 15:32:43'),
(8853, 11, 599, 1, 'District Federation / Union Form', 'Housing', '2023-08-29 10:02:44', '2023-08-29 15:32:44'),
(8854, 11, 600, 1, 'District Federation / Union Form', 'Multipurpose', '2023-08-29 10:02:44', '2023-08-29 15:32:44'),
(8855, 11, 601, 1, 'District Federation / Union Form', 'Miscellaneous', '2023-08-29 10:02:44', '2023-08-29 15:32:44'),
(8856, 11, 602, 1, 'District Federation / Union Form', 'Livestock', '2023-08-29 10:02:44', '2023-08-29 15:32:44'),
(8857, 11, 603, 1, 'District Federation / Union Form', 'Labour', '2023-08-29 10:02:44', '2023-08-29 15:32:44'),
(8858, 11, 604, 1, 'District Federation / Union Form', 'Jute', '2023-08-29 10:02:44', '2023-08-29 15:32:44'),
(8859, 11, 605, 1, 'District Federation / Union Form', 'Handicraft', '2023-08-29 10:02:44', '2023-08-29 15:32:44'),
(8860, 11, 606, 1, 'District Federation / Union Form', 'Education', '2023-08-29 10:02:44', '2023-08-29 15:32:44'),
(8861, 11, 607, 1, 'District Federation / Union Form', 'Consumer', '2023-08-29 10:02:44', '2023-08-29 15:32:44'),
(8862, 11, 608, 1, 'District Federation / Union Form', 'Bee', '2023-08-29 10:02:44', '2023-08-29 15:32:44'),
(8863, 11, 609, 1, 'District Federation / Union Form', 'Agriculture', '2023-08-29 10:02:44', '2023-08-29 15:32:44'),
(8864, 11, 610, 1, 'District Federation / Union Form', 'Credit and Thrift', '2023-08-29 10:02:44', '2023-08-29 15:32:44'),
(8865, 11, 611, 1, 'District Federation / Union Form', 'Miscellaneous Credit', '2023-08-29 10:02:44', '2023-08-29 15:32:44'),
(8866, 11, 612, 1, 'District Federation / Union Form', 'Urban Cooperative Bank', '2023-08-29 10:02:44', '2023-08-29 15:32:44'),
(8867, 11, 621, 1, 'District Federation / Union Form', 'Edit State/District Federation', '2023-08-29 10:02:44', '2023-08-29 15:32:44'),
(8868, 11, 622, 0, 'District Federation / Union Form', 'List of State/District Federation Draft', '2023-08-29 10:02:44', '2023-08-29 15:32:44'),
(8869, 11, 623, 1, 'District Federation / Union Form', 'View of State/District Federation', '2023-08-29 10:02:44', '2023-08-29 15:32:44'),
(8870, 11, 629, 0, 'District Federation / Union Form', 'List of State/District Federation', '2023-08-29 10:02:44', '2023-08-29 15:32:44'),
(8871, 11, 639, 1, 'District Federation / Union Form', 'State District Federation : Gov Scheme Add Row', '2023-08-29 10:02:44', '2023-08-29 15:32:44'),
(8872, 11, 643, 1, 'District Federation / Union Form', 'get districts', '2023-08-29 10:02:44', '2023-08-29 15:32:44'),
(8873, 11, 649, 1, 'District Federation / Union Form', 'get primary activity', '2023-08-29 10:02:44', '2023-08-29 15:32:44'),
(8874, 11, 652, 1, 'District Federation / Union Form', 'Sector Wise Report', '2023-08-29 10:02:44', '2023-08-29 15:32:44'),
(8875, 11, 654, 1, 'District Federation / Union Form', 'Federation Member', '2023-08-29 10:02:44', '2023-08-29 15:32:44'),
(8876, 11, 655, 1, 'District Federation / Union Form', 'State Wise Report', '2023-08-29 10:02:44', '2023-08-29 15:32:44'),
(8877, 11, 664, 1, 'District Federation / Union Form', 'add member ajax', '2023-08-29 10:02:44', '2023-08-29 15:32:44'),
(8878, 11, 665, 1, 'District Federation / Union Form', 'show members ajax', '2023-08-29 10:02:44', '2023-08-29 15:32:44'),
(8926, 66, 666, 1, 'District Nodal Entries Report', 'dashboard-new', '2023-09-06 06:52:41', '2023-09-06 12:22:41'),
(8927, 12, 666, 1, 'District Nodal Entries Report', 'dashboard-new', '2023-09-06 06:55:25', '2023-09-06 12:25:25'),
(8985, 11, 173, 0, 'Cooperative Societies', 'List of Cooperative', '2023-09-18 05:39:46', '2023-09-18 11:09:46'),
(8986, 11, 176, 1, 'Cooperative Societies', 'View Cooperative Registration Details', '2023-09-18 05:39:46', '2023-09-18 11:09:46'),
(8987, 11, 182, 1, 'Cooperative Societies', 'List of Cooperative', '2023-09-18 05:39:46', '2023-09-18 11:09:46'),
(8988, 11, 208, 1, 'Cooperative Societies', 'getdccb', '2023-09-18 05:39:46', '2023-09-18 11:09:46'),
(8989, 11, 210, 1, 'Cooperative Societies', 'get-districts', '2023-09-18 05:39:46', '2023-09-18 11:09:46'),
(8990, 11, 212, 1, 'Cooperative Societies', 'get-gp', '2023-09-18 05:39:46', '2023-09-18 11:09:46'),
(8991, 11, 213, 1, 'Cooperative Societies', 'get-villages', '2023-09-18 05:39:46', '2023-09-18 11:09:46'),
(8992, 11, 214, 1, 'Cooperative Societies', 'get-primary-activity', '2023-09-18 05:39:46', '2023-09-18 11:09:46'),
(8993, 11, 226, 0, 'Cooperative Societies', 'Nodal Entry Form', '2023-09-18 05:39:46', '2023-09-18 11:09:46'),
(8994, 11, 227, 1, 'Cooperative Societies', 'get-districts', '2023-09-18 05:39:46', '2023-09-18 11:09:46'),
(8995, 11, 228, 1, 'Cooperative Societies', 'getDistricsNodal', '2023-09-18 05:39:46', '2023-09-18 11:09:46'),
(8996, 11, 229, 0, 'Cooperative Societies', 'List of Cooperative Pending', '2023-09-18 05:39:46', '2023-09-18 11:09:46'),
(8997, 11, 521, 1, 'Cooperative Societies', 'getDistricts', '2023-09-18 05:39:47', '2023-09-18 11:09:47'),
(8998, 11, 535, 0, 'Cooperative Societies', 'List of Cooperative', '2023-09-18 05:39:47', '2023-09-18 11:09:47'),
(8999, 11, 554, 1, 'Cooperative Societies', 'Cooperative registration list', '2023-09-18 05:39:47', '2023-09-18 11:09:47'),
(9000, 11, 555, 1, 'Cooperative Societies', 'view', '2023-09-18 05:39:47', '2023-09-18 11:09:47'),
(9001, 11, 625, 0, 'Cooperative Societies', 'cooperative of list (advance)', '2023-09-18 05:39:47', '2023-09-18 11:09:47'),
(9067, 2, 236, 1, 'Analytical Report/ Dashboard', 'get-districts', '2023-10-09 10:44:38', '2023-09-19 16:36:27'),
(9068, 2, 478, 0, 'Analytical Report/ Dashboard', 'GP Covered  Report', '2023-10-09 10:44:38', '2023-09-19 16:36:27'),
(9069, 2, 680, 1, 'Analytical Report/ Dashboard', 'pacswiselist', '2023-10-09 10:44:38', '2023-09-19 16:36:28'),
(9103, 8, 236, 1, 'Analytical Report/ Dashboard', 'get-districts', '2023-09-19 11:39:27', '2023-09-19 17:09:27'),
(9104, 8, 260, 0, 'Analytical Report/ Dashboard', 'NCD Report', '2023-09-19 11:39:27', '2023-09-19 17:09:27'),
(9105, 8, 261, 0, 'Analytical Report/ Dashboard', 'NABARD Report', '2023-09-19 11:39:27', '2023-09-19 17:09:27'),
(9106, 8, 680, 1, 'Analytical Report/ Dashboard', 'pacswiselist', '2023-09-19 11:39:27', '2023-09-19 17:09:27'),
(9129, 26, 656, 0, 'Multi State Cooperative', 'State Wise MSCS', '2023-09-20 07:01:57', '2023-09-20 12:31:57'),
(9130, 26, 657, 1, 'Multi State Cooperative', 'data-entry-pending-new-details', '2023-09-20 07:01:57', '2023-09-20 12:31:57'),
(9131, 26, 659, 1, 'Multi State Cooperative', 'new View', '2023-09-20 07:01:57', '2023-09-20 12:31:57'),
(9132, 26, 672, 0, 'Multi State Cooperative', 'List of MSCS', '2023-09-20 07:01:57', '2023-09-20 12:31:57'),
(9212, 11, 635, 0, 'Society Correction', 'Registration Date', '2023-09-22 07:02:30', '2023-09-22 12:32:30'),
(9213, 11, 638, 0, 'Society Correction', 'No of Members', '2023-09-22 07:02:30', '2023-09-22 12:32:30'),
(9214, 11, 651, 0, 'Society Correction', 'Registration Number', '2023-09-22 07:02:30', '2023-09-22 12:32:30'),
(9215, 11, 677, 0, 'Society Correction', 'Mobile Number', '2023-09-22 07:02:30', '2023-09-22 12:32:30'),
(9216, 11, 678, 0, 'Society Correction', 'Pincode Number', '2023-09-22 07:02:30', '2023-09-22 12:32:30'),
(9217, 11, 679, 0, 'Society Correction', 'Federation Name', '2023-09-22 07:02:30', '2023-09-22 12:32:30'),
(9218, 11, 684, 0, 'Society Correction', 'PACS Correction', '2023-09-22 07:02:30', '2023-09-22 12:32:30'),
(9219, 8, 634, 0, 'Society Correction', 'Registration Date', '2023-09-22 07:02:57', '2023-09-22 12:32:57'),
(9220, 8, 636, 0, 'Society Correction', 'Registration Name', '2023-09-22 07:02:57', '2023-09-22 12:32:57'),
(9221, 8, 637, 0, 'Society Correction', 'No of Members', '2023-09-22 07:02:57', '2023-09-22 12:32:57'),
(9222, 8, 650, 0, 'Society Correction', 'Registration Number', '2023-09-22 07:02:57', '2023-09-22 12:32:57'),
(9223, 8, 658, 1, 'Society Correction', 'Delete Society', '2023-09-22 07:02:57', '2023-09-22 12:32:57'),
(9224, 8, 677, 0, 'Society Correction', 'Mobile Number', '2023-09-22 07:02:57', '2023-09-22 12:32:57'),
(9225, 8, 678, 0, 'Society Correction', 'Pincode Number', '2023-09-22 07:02:57', '2023-09-22 12:32:57'),
(9226, 8, 679, 0, 'Society Correction', 'Federation Name', '2023-09-22 07:02:57', '2023-09-22 12:32:57'),
(9227, 8, 682, 1, 'Society Correction', 'updatecorrection', '2023-09-22 07:02:57', '2023-09-22 12:32:57'),
(9228, 8, 684, 0, 'Society Correction', 'PACS Correction', '2023-09-22 07:02:57', '2023-09-22 12:32:57'),
(9232, 12, 629, 0, 'District Federation / Union Form', 'List of State/District Federation', '2023-09-22 09:23:19', '2023-09-22 14:53:19'),
(9233, 14, 629, 0, 'District Federation / Union Form', 'List of State/District Federation', '2023-09-22 09:24:05', '2023-09-22 14:54:05'),
(9234, 8, 560, 0, 'District Federation / Union Form', 'Add New State/District Federation', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9235, 8, 561, 1, 'District Federation / Union Form', 'get fed', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9236, 8, 563, 1, 'District Federation / Union Form', 'Revised Form : Rural Village Add Row', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9237, 8, 570, 1, 'District Federation / Union Form', 'Revised Form : other-member-add-row', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9238, 8, 581, 1, 'District Federation / Union Form', 'Handloom', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9239, 8, 590, 1, 'District Federation / Union Form', 'Sugar', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9240, 8, 591, 1, 'District Federation / Union Form', 'Tourism', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9241, 8, 592, 1, 'District Federation / Union Form', 'Transport', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9242, 8, 593, 1, 'District Federation / Union Form', 'Tribal', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9243, 8, 594, 1, 'District Federation / Union Form', 'Women', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9244, 8, 595, 1, 'District Federation / Union Form', 'Social', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9245, 8, 596, 1, 'District Federation / Union Form', 'Sericulture', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9246, 8, 597, 1, 'District Federation / Union Form', 'Processing', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9247, 8, 598, 1, 'District Federation / Union Form', 'Marketing', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9248, 8, 599, 1, 'District Federation / Union Form', 'Housing', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9249, 8, 600, 1, 'District Federation / Union Form', 'Multipurpose', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9250, 8, 601, 1, 'District Federation / Union Form', 'Miscellaneous', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9251, 8, 602, 1, 'District Federation / Union Form', 'Livestock', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9252, 8, 603, 1, 'District Federation / Union Form', 'Labour', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9253, 8, 604, 1, 'District Federation / Union Form', 'Jute', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9254, 8, 605, 1, 'District Federation / Union Form', 'Handicraft', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9255, 8, 606, 1, 'District Federation / Union Form', 'Education', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9256, 8, 607, 1, 'District Federation / Union Form', 'Consumer', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9257, 8, 608, 1, 'District Federation / Union Form', 'Bee', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9258, 8, 609, 1, 'District Federation / Union Form', 'Agriculture', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9259, 8, 610, 1, 'District Federation / Union Form', 'Credit and Thrift', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9260, 8, 611, 1, 'District Federation / Union Form', 'Miscellaneous Credit', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9261, 8, 612, 1, 'District Federation / Union Form', 'Urban Cooperative Bank', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9262, 8, 621, 1, 'District Federation / Union Form', 'Edit State/District Federation', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9263, 8, 622, 0, 'District Federation / Union Form', 'List of State/District Federation Draft', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9264, 8, 623, 1, 'District Federation / Union Form', 'View of State/District Federation', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9265, 8, 629, 0, 'District Federation / Union Form', 'List of State/District Federation', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9266, 8, 639, 1, 'District Federation / Union Form', 'State District Federation : Gov Scheme Add Row', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9267, 8, 643, 1, 'District Federation / Union Form', 'get districts', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9268, 8, 649, 1, 'District Federation / Union Form', 'get primary activity', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9269, 8, 654, 1, 'District Federation / Union Form', 'Federation Member', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9270, 8, 661, 1, 'District Federation / Union Form', 'delete', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9271, 8, 664, 1, 'District Federation / Union Form', 'add member ajax', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9272, 8, 665, 1, 'District Federation / Union Form', 'show members ajax', '2023-09-22 10:51:29', '2023-09-22 16:21:29'),
(9277, 1, 187, 1, 'Analytical Report/ Dashboard', 'Reports', '2023-11-28 03:07:41', '2023-11-28 08:37:41'),
(9278, 1, 188, 1, 'Analytical Report/ Dashboard', 'All Registrations Report', '2023-11-28 03:07:41', '2023-11-28 08:37:41'),
(9279, 1, 225, 0, 'Analytical Report/ Dashboard', 'All India Reports', '2023-11-28 03:07:41', '2023-11-28 08:37:41'),
(9280, 1, 230, 0, 'Analytical Report/ Dashboard', 'State Level Report', '2023-11-28 03:07:41', '2023-11-28 08:37:41'),
(9281, 2, 187, 0, 'Analytical Report/ Dashboard', 'Reports', '2023-11-28 03:26:14', '2023-11-28 08:56:14'),
(9282, 2, 188, 0, 'Analytical Report/ Dashboard', 'All Registrations Report', '2023-11-28 03:26:14', '2023-11-28 08:56:14'),
(9283, 2, 236, 1, 'Analytical Report/ Dashboard', 'get-districts', '2023-11-28 03:26:14', '2023-11-28 08:56:14'),
(9284, 2, 478, 0, 'Analytical Report/ Dashboard', 'GP Covered  Report', '2023-11-28 03:26:14', '2023-11-28 08:56:14'),
(9285, 2, 680, 1, 'Analytical Report/ Dashboard', 'pacswiselist', '2023-11-28 03:26:14', '2023-11-28 08:56:14'),
(9386, 1, 4, 0, 'Masters', 'Roles', '2024-10-26 02:23:01', '2024-10-26 07:53:01'),
(9387, 1, 5, 0, 'Masters', 'Modules', '2024-10-26 02:23:01', '2024-10-26 07:53:01'),
(9388, 1, 7, 0, 'Masters', 'Assign Sidebar Role', '2024-10-26 02:23:01', '2024-10-26 07:53:01'),
(9405, 1, 8, 0, 'User', 'All Users', '2024-10-26 15:05:23', '2024-10-26 14:57:33'),
(9406, 1, 191, 0, 'User', 'Add  New User', '2024-10-26 15:05:27', '2024-10-26 14:57:33'),
(9407, 1, 192, 1, 'User', 'edit', '2024-10-26 15:05:32', '2024-10-26 14:57:33'),
(9408, 1, 193, 1, 'User', 'view', '2024-10-26 15:05:37', '2024-10-26 14:57:33'),
(9409, 1, 493, 1, 'User', 'Profile', '2024-10-26 15:05:41', '2024-10-26 14:57:33'),
(9410, 7, 709, 0, 'Category', 'Index', '2024-12-03 11:13:41', '2024-12-03 16:43:41'),
(9411, 7, 710, 1, 'Category', 'Create', '2024-12-03 11:13:41', '2024-12-03 16:43:41'),
(9412, 7, 711, 1, 'Category', 'Edit', '2024-12-03 11:13:41', '2024-12-03 16:43:41'),
(9413, 7, 712, 1, 'Category', 'Destroy', '2024-12-03 11:13:41', '2024-12-03 16:43:41'),
(9414, 7, 704, 0, 'Product', 'Index', '2024-12-03 11:56:43', '2024-12-03 17:26:43'),
(9415, 7, 705, 1, 'Product', 'Create', '2024-12-03 11:56:43', '2024-12-03 17:26:43'),
(9416, 7, 706, 1, 'Product', 'Edit', '2024-12-03 11:56:43', '2024-12-03 17:26:43'),
(9417, 7, 707, 1, 'Product', 'Destroy', '2024-12-03 11:56:43', '2024-12-03 17:26:43'),
(9422, 1, 714, 0, 'Post', 'Index', '2025-01-19 08:48:23', '2025-01-19 14:18:23'),
(9423, 1, 715, 1, 'Post', 'Create', '2025-01-19 08:48:23', '2025-01-19 14:18:23'),
(9424, 1, 716, 1, 'Post', 'Edit', '2025-01-19 08:48:23', '2025-01-19 14:18:23'),
(9425, 1, 717, 1, 'Post', 'Destroy', '2025-01-19 08:48:23', '2025-01-19 14:18:23');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(17, 1),
(17, 7),
(18, 1),
(18, 7),
(19, 1),
(19, 7),
(22, 7),
(23, 7),
(24, 7),
(26, 1),
(26, 7),
(27, 1),
(27, 7),
(28, 1),
(28, 7),
(29, 1),
(29, 7);

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
  `hint` varchar(200) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `hint`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@gmail.com', NULL, '$2y$10$tqVbM1v1Skih/IITHr2EMOWxY5Sk9H19RsncC0xQyLtMc1Mt55WsK', '123456', 1, NULL, '2023-10-06 03:15:10', '2023-10-06 03:15:10'),
(2, 'Manager', 'manager@gmail.com', NULL, '$2y$10$tqVbM1v1Skih/IITHr2EMOWxY5Sk9H19RsncC0xQyLtMc1Mt55WsK', '123456', 7, NULL, '2023-10-06 04:28:29', '2023-10-06 04:28:29'),
(3, 'Employee', 'employee@gmail.com', NULL, '$2y$10$tqVbM1v1Skih/IITHr2EMOWxY5Sk9H19RsncC0xQyLtMc1Mt55WsK', '123456', 7, NULL, '2023-11-28 03:31:46', '2024-12-05 11:49:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

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
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=718;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9426;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
