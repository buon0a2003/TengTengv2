-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 27, 2025 at 04:41 AM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hehe`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1743039390),
('laravel_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1743039390;', 1743039390),
('laravel_cache_spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:30:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:19:\"view_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:23:\"view_any_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:21:\"create_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:21:\"update_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:22:\"restore_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:26:\"restore_any_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:24:\"replicate_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:22:\"reorder_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:21:\"delete_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:25:\"delete_any_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:27:\"force_delete_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:31:\"force_delete_any_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:9:\"view_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:13:\"view_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:11:\"create_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:11:\"update_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:15:\"delete_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:12:\"restore_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:16:\"restore_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:14:\"replicate_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:12:\"reorder_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:17:\"force_delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:21:\"force_delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:2:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:10:\"panel_user\";s:1:\"c\";s:3:\"web\";}}}', 1743068245);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieudieuchuyen`
--

DROP TABLE IF EXISTS `chitietphieudieuchuyen`;
CREATE TABLE IF NOT EXISTS `chitietphieudieuchuyen` (
  `id` int NOT NULL AUTO_INCREMENT,
  `phieudieuchuyen_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `vattu_id` int DEFAULT NULL,
  `SoLuong` decimal(10,2) DEFAULT NULL,
  `GhiChu` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaCTPCk` (`id`) USING BTREE
) ;

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieunhap`
--

DROP TABLE IF EXISTS `chitietphieunhap`;
CREATE TABLE IF NOT EXISTS `chitietphieunhap` (
  `id` int NOT NULL AUTO_INCREMENT,
  `phieunhap_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `vattu_id` int DEFAULT NULL,
  `SoLuong` decimal(10,2) DEFAULT NULL,
  `GhiChu` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `vitri_id` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaCTPN` (`id`) USING BTREE
) ;

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieuxuat`
--

DROP TABLE IF EXISTS `chitietphieuxuat`;
CREATE TABLE IF NOT EXISTS `chitietphieuxuat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `phieuxuat_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `vatu_id` int DEFAULT NULL,
  `SoLuong` decimal(10,2) DEFAULT NULL,
  `GhiChu` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaCTPX` (`id`) USING BTREE
) ;

-- --------------------------------------------------------

--
-- Table structure for table `donvitinh`
--

DROP TABLE IF EXISTS `donvitinh`;
CREATE TABLE IF NOT EXISTS `donvitinh` (
  `id` int NOT NULL AUTO_INCREMENT,
  `TenDVT` varchar(50) DEFAULT NULL,
  `Mota` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaDVT` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `donvitinh`
--

INSERT INTO `donvitinh` (`id`, `TenDVT`, `Mota`, `created_at`, `updated_at`) VALUES
(1, 'kg', 'kilogam', '2025-03-26 20:42:14', '2025-03-26 20:42:14'),
(2, 'đôi', 'đôi', '2025-03-26 20:42:38', '2025-03-26 20:42:38'),
(3, 'chiếc', 'chiếc', '2025-03-26 20:42:46', '2025-03-26 20:42:46');

-- --------------------------------------------------------

--
-- Table structure for table `dummy`
--

DROP TABLE IF EXISTS `dummy`;
CREATE TABLE IF NOT EXISTS `dummy` (
  `id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
CREATE TABLE IF NOT EXISTS `khachhang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `TenKH` varchar(50) DEFAULT NULL,
  `Sdt` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `DiaChi` varchar(100) DEFAULT NULL,
  `GhiChu` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaKH` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kho`
--

DROP TABLE IF EXISTS `kho`;
CREATE TABLE IF NOT EXISTS `kho` (
  `id` int NOT NULL AUTO_INCREMENT,
  `TenKho` varchar(50) DEFAULT NULL,
  `DiaChi` varchar(100) DEFAULT NULL,
  `GhiChu` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaKho` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kho`
--

INSERT INTO `kho` (`id`, `TenKho`, `DiaChi`, `GhiChu`, `created_at`, `updated_at`) VALUES
(1, 'Kho A', 'Hải Phòng', 'Nguyên vật liệu', '2025-03-26 20:09:59', '2025-03-26 20:09:59'),
(2, 'Kho B', 'Thuỷ Nguyên', 'Thành Phẩm', '2025-03-26 20:11:11', '2025-03-26 20:11:11'),
(3, 'Kho c', 'Lê Chân', 'Hỗn Hợp', '2025-03-26 20:12:24', '2025-03-26 20:12:24');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '0001_01_01_000000_create_users_table', 1),
(6, '0001_01_01_000001_create_cache_table', 1),
(7, '0001_01_01_000002_create_jobs_table', 1),
(8, '2025_03_26_054023_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 5);

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

DROP TABLE IF EXISTS `nhacungcap`;
CREATE TABLE IF NOT EXISTS `nhacungcap` (
  `id` int NOT NULL AUTO_INCREMENT,
  `TenNCC` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Sdt` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `DiaChi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MaSoThue` varchar(50) DEFAULT NULL,
  `GhiChu` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaNCC` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`id`, `TenNCC`, `Sdt`, `Email`, `DiaChi`, `MaSoThue`, `GhiChu`, `created_at`, `updated_at`) VALUES
(1, 'Nhà cung cấp A', '64573266', 'A@gmail.com', 'Hải Phòng', '7684646', ':D', NULL, '2025-03-26 02:28:01'),
(3, 'Nhà cung cấp B', '423424', 'B@gmail.com', 'Hà Nội', '7684646', 'â', '2025-03-24 08:06:25', '2025-03-24 08:06:25'),
(4, 'Nhà cung cấp C', '423424', 'C@gmail.com', 'Hà Nội', '7684646', 'c', '2025-03-24 08:29:37', '2025-03-24 08:29:37'),
(14, 'Nhà cung cấp A', '124324', 'anhlycuckeo123@gmail.com', 'Hải Phòng', '3435', NULL, '2025-03-25 03:15:45', '2025-03-25 03:34:00'),
(17, 'c', '124324', NULL, 'Hải Phòng', '789', NULL, '2025-03-26 02:37:41', '2025-03-26 02:37:41');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_nha::cung::cap', 'web', '2025-03-25 23:58:46', '2025-03-25 23:58:46'),
(2, 'view_any_nha::cung::cap', 'web', '2025-03-25 23:58:46', '2025-03-25 23:58:46'),
(3, 'create_nha::cung::cap', 'web', '2025-03-25 23:58:46', '2025-03-25 23:58:46'),
(4, 'update_nha::cung::cap', 'web', '2025-03-25 23:58:46', '2025-03-25 23:58:46'),
(5, 'restore_nha::cung::cap', 'web', '2025-03-25 23:58:46', '2025-03-25 23:58:46'),
(6, 'restore_any_nha::cung::cap', 'web', '2025-03-25 23:58:46', '2025-03-25 23:58:46'),
(7, 'replicate_nha::cung::cap', 'web', '2025-03-25 23:58:46', '2025-03-25 23:58:46'),
(8, 'reorder_nha::cung::cap', 'web', '2025-03-25 23:58:46', '2025-03-25 23:58:46'),
(9, 'delete_nha::cung::cap', 'web', '2025-03-25 23:58:46', '2025-03-25 23:58:46'),
(10, 'delete_any_nha::cung::cap', 'web', '2025-03-25 23:58:46', '2025-03-25 23:58:46'),
(11, 'force_delete_nha::cung::cap', 'web', '2025-03-25 23:58:46', '2025-03-25 23:58:46'),
(12, 'force_delete_any_nha::cung::cap', 'web', '2025-03-25 23:58:46', '2025-03-25 23:58:46'),
(13, 'view_role', 'web', '2025-03-25 23:58:46', '2025-03-25 23:58:46'),
(14, 'view_any_role', 'web', '2025-03-25 23:58:46', '2025-03-25 23:58:46'),
(15, 'create_role', 'web', '2025-03-25 23:58:46', '2025-03-25 23:58:46'),
(16, 'update_role', 'web', '2025-03-25 23:58:46', '2025-03-25 23:58:46'),
(17, 'delete_role', 'web', '2025-03-25 23:58:46', '2025-03-25 23:58:46'),
(18, 'delete_any_role', 'web', '2025-03-25 23:58:46', '2025-03-25 23:58:46'),
(19, 'view_user', 'web', '2025-03-25 23:58:46', '2025-03-25 23:58:46'),
(20, 'view_any_user', 'web', '2025-03-25 23:58:46', '2025-03-25 23:58:46'),
(21, 'create_user', 'web', '2025-03-25 23:58:46', '2025-03-25 23:58:46'),
(22, 'update_user', 'web', '2025-03-25 23:58:46', '2025-03-25 23:58:46'),
(23, 'restore_user', 'web', '2025-03-25 23:58:46', '2025-03-25 23:58:46'),
(24, 'restore_any_user', 'web', '2025-03-25 23:58:46', '2025-03-25 23:58:46'),
(25, 'replicate_user', 'web', '2025-03-25 23:58:46', '2025-03-25 23:58:46'),
(26, 'reorder_user', 'web', '2025-03-25 23:58:46', '2025-03-25 23:58:46'),
(27, 'delete_user', 'web', '2025-03-25 23:58:46', '2025-03-25 23:58:46'),
(28, 'delete_any_user', 'web', '2025-03-25 23:58:46', '2025-03-25 23:58:46'),
(29, 'force_delete_user', 'web', '2025-03-25 23:58:46', '2025-03-25 23:58:46'),
(30, 'force_delete_any_user', 'web', '2025-03-25 23:58:46', '2025-03-25 23:58:46');

-- --------------------------------------------------------

--
-- Table structure for table `phieudieuchuyen`
--

DROP TABLE IF EXISTS `phieudieuchuyen`;
CREATE TABLE IF NOT EXISTS `phieudieuchuyen` (
  `id` varchar(100) NOT NULL,
  `NgayLap` datetime DEFAULT NULL,
  `NguoiLap` int DEFAULT NULL,
  `MaKhoNguon` int DEFAULT NULL,
  `MaKhoDich` int DEFAULT NULL,
  `GhiChu` varchar(50) DEFAULT NULL,
  `TrangThai` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaPCK` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

DROP TABLE IF EXISTS `phieunhap`;
CREATE TABLE IF NOT EXISTS `phieunhap` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `NgayNhap` datetime DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `nhacungcap_id` int DEFAULT NULL,
  `kho_id` int DEFAULT NULL,
  `LyDo` tinyint(1) DEFAULT NULL,
  `GhiChu` varchar(50) DEFAULT NULL,
  `TrangThai` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaPN` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `phieunhap`
--

INSERT INTO `phieunhap` (`id`, `NgayNhap`, `user_id`, `nhacungcap_id`, `kho_id`, `LyDo`, `GhiChu`, `TrangThai`, `created_at`, `updated_at`) VALUES
('pn1', '2025-03-26 23:25:42', 1, 1, 1, 1, 'kk', 1, '2025-03-26 16:25:57', '2025-03-26 16:25:57');

-- --------------------------------------------------------

--
-- Table structure for table `phieusuco`
--

DROP TABLE IF EXISTS `phieusuco`;
CREATE TABLE IF NOT EXISTS `phieusuco` (
  `id` varchar(100) NOT NULL,
  `phieuxuat_id` int DEFAULT NULL,
  `phieuvanchuyen_id` int DEFAULT NULL,
  `NgayTao` datetime DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `Mota` varchar(50) DEFAULT NULL,
  `GhiChu` varchar(50) DEFAULT NULL,
  `TrangThai` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaPSC` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phieuvanchuyen`
--

DROP TABLE IF EXISTS `phieuvanchuyen`;
CREATE TABLE IF NOT EXISTS `phieuvanchuyen` (
  `id` varchar(100) NOT NULL,
  `phieuxuat_id` int DEFAULT NULL,
  `xetai_id` int DEFAULT NULL,
  `taixe_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `NgayTao` datetime DEFAULT NULL,
  `NgayVanChuyen` datetime DEFAULT NULL,
  `GhiChu` varchar(50) DEFAULT NULL,
  `TrangThai` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaPVC` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phieuxuat`
--

DROP TABLE IF EXISTS `phieuxuat`;
CREATE TABLE IF NOT EXISTS `phieuxuat` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `NgayXuat` datetime DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `kho_id` int DEFAULT NULL,
  `LyDo` tinyint(1) DEFAULT NULL,
  `khachhang_id` int DEFAULT NULL,
  `GhiChu` varchar(50) DEFAULT NULL,
  `TrangThai` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaPX` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'web', '2025-03-25 23:55:49', '2025-03-25 23:55:49'),
(2, 'panel_user', 'web', '2025-03-25 23:58:40', '2025-03-25 23:58:40');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
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
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(1, 2),
(2, 2),
(3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Px446x0O1HY14nyRQ4MSHvgt7RdbPSiUuiUV08di', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36 Edg/134.0.0.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiVHJiQkdwcWhNcm8waFFwN3dMQjczcGRZWTFzZ2dMV0lydDBXY0xGRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi92YXR0dXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJGdKMU1QRkxteDB1NE5MY1R2eXVCT3VJY1pBMmpoZk1hOEp2NU13eGRGcG5RZ1JEdDVQQ2RtIjtzOjg6ImZpbGFtZW50IjthOjA6e319', 1743050318);

-- --------------------------------------------------------

--
-- Table structure for table `taixe`
--

DROP TABLE IF EXISTS `taixe`;
CREATE TABLE IF NOT EXISTS `taixe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `TenTaiXe` varchar(50) DEFAULT NULL,
  `Sdt` varchar(50) DEFAULT NULL,
  `CCCD` varchar(50) DEFAULT NULL,
  `BangLai` varchar(50) DEFAULT NULL,
  `DiaChi` varchar(100) DEFAULT NULL,
  `NamSinh` date DEFAULT NULL,
  `GhiChu` varchar(50) DEFAULT NULL,
  `TrangThai` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaTaiXe` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tonkho`
--

DROP TABLE IF EXISTS `tonkho`;
CREATE TABLE IF NOT EXISTS `tonkho` (
  `kho_id` int NOT NULL,
  `vattu_id` int NOT NULL,
  `SoLuong` decimal(10,2) DEFAULT NULL,
  `vitri_id` int DEFAULT NULL,
  `NgayCapNhat` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`kho_id`,`vattu_id`) USING BTREE
) ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Active` tinyint DEFAULT '1',
  `Birth` date DEFAULT NULL,
  `Phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `Active`, `Birth`, `Phone`, `Address`) VALUES
(1, 'admin', 'a@gmail.com', NULL, '$2y$12$gJ1MPFLmx0u4NLcTvyuBOuIcZA2jhfMa8Jv5MwxdFpnQgRDt5PCdm', '1XyWPlLBqRdzFZ3tDtT0vZKF4DnJy4hsa8N7gb49d2YfVmUFLAROgvHL8bmN', '2025-03-25 23:54:49', '2025-03-25 23:54:49', 1, '2023-03-26', '08654829203', 'Hải Phòng'),
(2, 'sơn', 'son123@gmail.com', NULL, '$2y$12$X.I0JMKdM53MCUQyNwy.ounKVgEtsewXq3JPlZvgl8Iz4mSbf54rK', NULL, '2025-03-26 00:03:04', '2025-03-26 00:03:04', 1, '2022-01-23', '076342123', 'Hải Phòng'),
(5, 'Phan Công Lý', 'anhlycuckeo123@gmail.com', NULL, '$2y$12$UNAgYzE4oRwUZgTDlxW3MewBdkUWk2PEPeHe7fXbXofjiKm3I9bei', NULL, '2025-03-26 03:18:58', '2025-03-26 03:18:58', 1, NULL, '1141421', 'Hà Nội');

-- --------------------------------------------------------

--
-- Table structure for table `vattu`
--

DROP TABLE IF EXISTS `vattu`;
CREATE TABLE IF NOT EXISTS `vattu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `TenVT` varchar(50) DEFAULT NULL,
  `LaTP` tinyint(1) DEFAULT NULL,
  `donvitinh_id` int DEFAULT NULL,
  `KichThuoc` varchar(50) DEFAULT NULL,
  `MauSac` varchar(50) DEFAULT NULL,
  `DacDiem` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaVT` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `vattu`
--

INSERT INTO `vattu` (`id`, `TenVT`, `LaTP`, `donvitinh_id`, `KichThuoc`, `MauSac`, `DacDiem`, `created_at`, `updated_at`) VALUES
(1, 'Lưu huỳnh', 0, 1, NULL, 'vàng', 'Hoá chất', '2025-03-27 03:56:43', '2025-03-27 03:56:43'),
(2, 'Đế tái sinh', 1, 2, '10x10x10 cm', 'Đen', 'Rẻ', '2025-03-26 21:25:39', '2025-03-26 21:26:11');

-- --------------------------------------------------------

--
-- Table structure for table `vitri`
--

DROP TABLE IF EXISTS `vitri`;
CREATE TABLE IF NOT EXISTS `vitri` (
  `id` int NOT NULL AUTO_INCREMENT,
  `kho_id` int DEFAULT NULL,
  `Mota` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaViTri` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xetai`
--

DROP TABLE IF EXISTS `xetai`;
CREATE TABLE IF NOT EXISTS `xetai` (
  `id` int NOT NULL AUTO_INCREMENT,
  `BienSo` varchar(50) DEFAULT NULL,
  `TenXe` varchar(50) DEFAULT NULL,
  `HangXe` varchar(50) DEFAULT NULL,
  `TaiTrong` varchar(50) DEFAULT NULL,
  `MauSac` varchar(50) DEFAULT NULL,
  `GhiChu` varchar(50) DEFAULT NULL,
  `TrangThai` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaXe` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

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
