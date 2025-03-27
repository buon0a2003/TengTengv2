-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2025 at 05:23 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doan`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1743049336),
('laravel_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1743049336;', 1743049336),
('laravel_cache_spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:42:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:19:\"view_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:23:\"view_any_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:21:\"create_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:21:\"update_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:22:\"restore_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:26:\"restore_any_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:24:\"replicate_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:22:\"reorder_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:21:\"delete_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:25:\"delete_any_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:27:\"force_delete_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:31:\"force_delete_any_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:9:\"view_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:13:\"view_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:11:\"create_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:11:\"update_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:15:\"delete_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:12:\"restore_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:16:\"restore_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:14:\"replicate_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:12:\"reorder_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:17:\"force_delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:21:\"force_delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:16:\"view_khach::hang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:20:\"view_any_khach::hang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:18:\"create_khach::hang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:18:\"update_khach::hang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:19:\"restore_khach::hang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:23:\"restore_any_khach::hang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:21:\"replicate_khach::hang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:19:\"reorder_khach::hang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:18:\"delete_khach::hang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:22:\"delete_any_khach::hang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:40;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:24:\"force_delete_khach::hang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:28:\"force_delete_any_khach::hang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:2:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:10:\"panel_user\";s:1:\"c\";s:3:\"web\";}}}', 1743135677);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieudieuchuyen`
--

CREATE TABLE `chitietphieudieuchuyen` (
  `id` int(11) NOT NULL,
  `phieudieuchuyen_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vattu_id` int(11) DEFAULT NULL,
  `SoLuong` decimal(10,2) DEFAULT NULL,
  `GhiChu` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `id` int(11) NOT NULL,
  `phieunhap_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vattu_id` int(11) DEFAULT NULL,
  `SoLuong` decimal(10,2) DEFAULT NULL,
  `GhiChu` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `vitri_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieuxuat`
--

CREATE TABLE `chitietphieuxuat` (
  `id` int(11) NOT NULL,
  `phieuxuat_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vatu_id` int(11) DEFAULT NULL,
  `SoLuong` decimal(10,2) DEFAULT NULL,
  `GhiChu` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donvitinh`
--

CREATE TABLE `donvitinh` (
  `id` int(11) NOT NULL,
  `TenDVT` varchar(50) DEFAULT NULL,
  `Mota` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

CREATE TABLE `dummy` (
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(11) NOT NULL,
  `TenKH` varchar(50) DEFAULT NULL,
  `Sdt` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `DiaChi` varchar(100) DEFAULT NULL,
  `GhiChu` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`id`, `TenKH`, `Sdt`, `Email`, `DiaChi`, `GhiChu`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn A', '0123456', NULL, 'Hải Phòng', NULL, '2025-03-26 21:21:44', '2025-03-26 21:21:44'),
(2, 'Nguyễn B', '1364646', NULL, 'Hà Nội', NULL, '2025-03-26 21:22:10', '2025-03-26 21:22:10');

-- --------------------------------------------------------

--
-- Table structure for table `kho`
--

CREATE TABLE `kho` (
  `id` int(11) NOT NULL,
  `TenKho` varchar(50) DEFAULT NULL,
  `DiaChi` varchar(100) DEFAULT NULL,
  `GhiChu` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'App\\Models\\User', 5),
(1, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `id` int(11) NOT NULL,
  `TenNCC` varchar(50) NOT NULL,
  `Sdt` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `MaSoThue` varchar(50) DEFAULT NULL,
  `GhiChu` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

CREATE TABLE `password_reset_tokens` (
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
(30, 'force_delete_any_user', 'web', '2025-03-25 23:58:46', '2025-03-25 23:58:46'),
(31, 'view_khach::hang', 'web', '2025-03-26 21:18:50', '2025-03-26 21:18:50'),
(32, 'view_any_khach::hang', 'web', '2025-03-26 21:18:50', '2025-03-26 21:18:50'),
(33, 'create_khach::hang', 'web', '2025-03-26 21:18:50', '2025-03-26 21:18:50'),
(34, 'update_khach::hang', 'web', '2025-03-26 21:18:50', '2025-03-26 21:18:50'),
(35, 'restore_khach::hang', 'web', '2025-03-26 21:18:50', '2025-03-26 21:18:50'),
(36, 'restore_any_khach::hang', 'web', '2025-03-26 21:18:50', '2025-03-26 21:18:50'),
(37, 'replicate_khach::hang', 'web', '2025-03-26 21:18:50', '2025-03-26 21:18:50'),
(38, 'reorder_khach::hang', 'web', '2025-03-26 21:18:50', '2025-03-26 21:18:50'),
(39, 'delete_khach::hang', 'web', '2025-03-26 21:18:50', '2025-03-26 21:18:50'),
(40, 'delete_any_khach::hang', 'web', '2025-03-26 21:18:50', '2025-03-26 21:18:50'),
(41, 'force_delete_khach::hang', 'web', '2025-03-26 21:18:50', '2025-03-26 21:18:50'),
(42, 'force_delete_any_khach::hang', 'web', '2025-03-26 21:18:50', '2025-03-26 21:18:50');

-- --------------------------------------------------------

--
-- Table structure for table `phieudieuchuyen`
--

CREATE TABLE `phieudieuchuyen` (
  `id` varchar(100) NOT NULL,
  `NgayLap` datetime DEFAULT NULL,
  `NguoiLap` int(11) DEFAULT NULL,
  `MaKhoNguon` int(11) DEFAULT NULL,
  `MaKhoDich` int(11) DEFAULT NULL,
  `GhiChu` varchar(50) DEFAULT NULL,
  `TrangThai` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

CREATE TABLE `phieunhap` (
  `id` varchar(100) NOT NULL,
  `NgayNhap` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nhacungcap_id` int(11) DEFAULT NULL,
  `kho_id` int(11) DEFAULT NULL,
  `LyDo` tinyint(1) DEFAULT NULL,
  `GhiChu` varchar(50) DEFAULT NULL,
  `TrangThai` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phieunhap`
--

INSERT INTO `phieunhap` (`id`, `NgayNhap`, `user_id`, `nhacungcap_id`, `kho_id`, `LyDo`, `GhiChu`, `TrangThai`, `created_at`, `updated_at`) VALUES
('pn1', '2025-03-26 23:25:42', 1, 1, 1, 1, 'kk', 1, '2025-03-26 16:25:57', '2025-03-26 16:25:57');

-- --------------------------------------------------------

--
-- Table structure for table `phieusuco`
--

CREATE TABLE `phieusuco` (
  `id` varchar(100) NOT NULL,
  `phieuxuat_id` int(11) DEFAULT NULL,
  `phieuvanchuyen_id` int(11) DEFAULT NULL,
  `NgayTao` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `Mota` varchar(50) DEFAULT NULL,
  `GhiChu` varchar(50) DEFAULT NULL,
  `TrangThai` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phieuvanchuyen`
--

CREATE TABLE `phieuvanchuyen` (
  `id` varchar(100) NOT NULL,
  `phieuxuat_id` int(11) DEFAULT NULL,
  `xetai_id` int(11) DEFAULT NULL,
  `taixe_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `NgayTao` datetime DEFAULT NULL,
  `NgayVanChuyen` datetime DEFAULT NULL,
  `GhiChu` varchar(50) DEFAULT NULL,
  `TrangThai` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `id` varchar(100) NOT NULL,
  `NgayXuat` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `kho_id` int(11) DEFAULT NULL,
  `LyDo` tinyint(1) DEFAULT NULL,
  `khachhang_id` int(11) DEFAULT NULL,
  `GhiChu` varchar(50) DEFAULT NULL,
  `TrangThai` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'super_admin', 'web', '2025-03-25 23:55:49', '2025-03-25 23:55:49'),
(2, 'panel_user', 'web', '2025-03-25 23:58:40', '2025-03-25 23:58:40');

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
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
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
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('a6UwfkA8GYKuwBsx2FSfnwthIBQAnGPABYY3LpXK', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo3OntzOjM6InVybCI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9raGFjaC1oYW5ncyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NjoiX3Rva2VuIjtzOjQwOiJ3WkNZWlp6ZVBDVWNobzFFNTZ5dXB1VGdsQXJTd1hab1pJNHpBcGNmIjtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo2O3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkY2p5c2JJVHlHZ0NTLmpYRXQ3TlJxLndVSGRaWFhUWnV5bzVLRmlKZndvWVhsNUFIeU9qejIiO3M6ODoiZmlsYW1lbnQiO2E6MDp7fX0=', 1743049338),
('Px446x0O1HY14nyRQ4MSHvgt7RdbPSiUuiUV08di', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36 Edg/134.0.0.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiVHJiQkdwcWhNcm8waFFwN3dMQjczcGRZWTFzZ2dMV0lydDBXY0xGRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi92YXR0dXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJGdKMU1QRkxteDB1NE5MY1R2eXVCT3VJY1pBMmpoZk1hOEp2NU13eGRGcG5RZ1JEdDVQQ2RtIjtzOjg6ImZpbGFtZW50IjthOjA6e319', 1743047955);

-- --------------------------------------------------------

--
-- Table structure for table `taixe`
--

CREATE TABLE `taixe` (
  `id` int(11) NOT NULL,
  `TenTaiXe` varchar(50) DEFAULT NULL,
  `Sdt` varchar(50) DEFAULT NULL,
  `CCCD` varchar(50) DEFAULT NULL,
  `BangLai` varchar(50) DEFAULT NULL,
  `DiaChi` varchar(100) DEFAULT NULL,
  `NamSinh` date DEFAULT NULL,
  `GhiChu` varchar(50) DEFAULT NULL,
  `TrangThai` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tonkho`
--

CREATE TABLE `tonkho` (
  `kho_id` int(11) NOT NULL,
  `vattu_id` int(11) NOT NULL,
  `SoLuong` decimal(10,2) DEFAULT NULL,
  `vitri_id` int(11) DEFAULT NULL,
  `NgayCapNhat` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `Active` tinyint(4) DEFAULT 1,
  `Birth` date DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `Active`, `Birth`, `Phone`, `Address`) VALUES
(1, 'admin', 'a@gmail.com', NULL, '$2y$12$gJ1MPFLmx0u4NLcTvyuBOuIcZA2jhfMa8Jv5MwxdFpnQgRDt5PCdm', '1XyWPlLBqRdzFZ3tDtT0vZKF4DnJy4hsa8N7gb49d2YfVmUFLAROgvHL8bmN', '2025-03-25 23:54:49', '2025-03-25 23:54:49', 1, '2023-03-26', '08654829203', 'Hải Phòng'),
(2, 'sơn', 'son123@gmail.com', NULL, '$2y$12$X.I0JMKdM53MCUQyNwy.ounKVgEtsewXq3JPlZvgl8Iz4mSbf54rK', NULL, '2025-03-26 00:03:04', '2025-03-26 00:03:04', 1, '2022-01-23', '076342123', 'Hải Phòng'),
(5, 'Phan Công Lý', 'anhlycuckeo123@gmail.com', NULL, '$2y$12$UNAgYzE4oRwUZgTDlxW3MewBdkUWk2PEPeHe7fXbXofjiKm3I9bei', NULL, '2025-03-26 03:18:58', '2025-03-26 03:18:58', 1, NULL, '1141421', 'Hà Nội'),
(6, 'Loc', 'loc@gmail.com', NULL, '$2y$12$cjysbITyGgCS.jXEt7NRq.wUHdZXXTZuyo5KFiJfwoYXl5AHyOjz2', NULL, '2025-03-26 21:15:15', '2025-03-26 21:15:15', 1, '2003-07-07', '01234', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `vattu`
--

CREATE TABLE `vattu` (
  `id` int(11) NOT NULL,
  `TenVT` varchar(50) DEFAULT NULL,
  `LaTP` tinyint(1) DEFAULT NULL,
  `donvitinh_id` int(11) DEFAULT NULL,
  `KichThuoc` varchar(50) DEFAULT NULL,
  `MauSac` varchar(50) DEFAULT NULL,
  `DacDiem` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vattu`
--

INSERT INTO `vattu` (`id`, `TenVT`, `LaTP`, `donvitinh_id`, `KichThuoc`, `MauSac`, `DacDiem`, `created_at`, `updated_at`) VALUES
(1, 'Lưu huỳnh', 0, 1, NULL, 'vàng', 'Hoá chất', '2025-03-27 03:56:43', '2025-03-27 03:56:43');

-- --------------------------------------------------------

--
-- Table structure for table `vitri`
--

CREATE TABLE `vitri` (
  `id` int(11) NOT NULL,
  `kho_id` int(11) DEFAULT NULL,
  `Mota` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xetai`
--

CREATE TABLE `xetai` (
  `id` int(11) NOT NULL,
  `BienSo` varchar(50) DEFAULT NULL,
  `TenXe` varchar(50) DEFAULT NULL,
  `HangXe` varchar(50) DEFAULT NULL,
  `TaiTrong` varchar(50) DEFAULT NULL,
  `MauSac` varchar(50) DEFAULT NULL,
  `GhiChu` varchar(50) DEFAULT NULL,
  `TrangThai` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `chitietphieudieuchuyen`
--
ALTER TABLE `chitietphieudieuchuyen`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `MaCTPCk` (`id`) USING BTREE;

--
-- Indexes for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `MaCTPN` (`id`) USING BTREE;

--
-- Indexes for table `chitietphieuxuat`
--
ALTER TABLE `chitietphieuxuat`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `MaCTPX` (`id`) USING BTREE;

--
-- Indexes for table `donvitinh`
--
ALTER TABLE `donvitinh`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `MaDVT` (`id`) USING BTREE;

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `MaKH` (`id`) USING BTREE;

--
-- Indexes for table `kho`
--
ALTER TABLE `kho`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `MaKho` (`id`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `MaNCC` (`id`) USING BTREE;

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `phieudieuchuyen`
--
ALTER TABLE `phieudieuchuyen`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `MaPCK` (`id`) USING BTREE;

--
-- Indexes for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `MaPN` (`id`) USING BTREE;

--
-- Indexes for table `phieusuco`
--
ALTER TABLE `phieusuco`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `MaPSC` (`id`) USING BTREE;

--
-- Indexes for table `phieuvanchuyen`
--
ALTER TABLE `phieuvanchuyen`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `MaPVC` (`id`) USING BTREE;

--
-- Indexes for table `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `MaPX` (`id`) USING BTREE;

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `taixe`
--
ALTER TABLE `taixe`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `MaTaiXe` (`id`) USING BTREE;

--
-- Indexes for table `tonkho`
--
ALTER TABLE `tonkho`
  ADD PRIMARY KEY (`kho_id`,`vattu_id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vattu`
--
ALTER TABLE `vattu`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `MaVT` (`id`) USING BTREE;

--
-- Indexes for table `vitri`
--
ALTER TABLE `vitri`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `MaViTri` (`id`) USING BTREE;

--
-- Indexes for table `xetai`
--
ALTER TABLE `xetai`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `MaXe` (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitietphieudieuchuyen`
--
ALTER TABLE `chitietphieudieuchuyen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chitietphieuxuat`
--
ALTER TABLE `chitietphieuxuat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donvitinh`
--
ALTER TABLE `donvitinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kho`
--
ALTER TABLE `kho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `taixe`
--
ALTER TABLE `taixe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vattu`
--
ALTER TABLE `vattu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vitri`
--
ALTER TABLE `vitri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xetai`
--
ALTER TABLE `xetai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
