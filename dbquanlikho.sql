-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 07, 2025 at 02:14 PM
-- Server version: 9.1.0
-- PHP Version: 8.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbquanlikho`
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
('laravel_cache_livewire-rate-limiter:2b5beabac0aaa62b75ff665708fd5b0b5abb2408', 'i:1;', 1744027666),
('laravel_cache_livewire-rate-limiter:2b5beabac0aaa62b75ff665708fd5b0b5abb2408:timer', 'i:1744027666;', 1744027666),
('laravel_cache_spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:78:{i:0;a:3:{s:1:\"a\";i:235;s:1:\"b\";s:27:\"view_chi::tiet::phieu::nhap\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:236;s:1:\"b\";s:31:\"view_any_chi::tiet::phieu::nhap\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:237;s:1:\"b\";s:29:\"create_chi::tiet::phieu::nhap\";s:1:\"c\";s:3:\"web\";}i:3;a:3:{s:1:\"a\";i:238;s:1:\"b\";s:29:\"update_chi::tiet::phieu::nhap\";s:1:\"c\";s:3:\"web\";}i:4;a:3:{s:1:\"a\";i:239;s:1:\"b\";s:29:\"delete_chi::tiet::phieu::nhap\";s:1:\"c\";s:3:\"web\";}i:5;a:3:{s:1:\"a\";i:240;s:1:\"b\";s:33:\"delete_any_chi::tiet::phieu::nhap\";s:1:\"c\";s:3:\"web\";}i:6;a:4:{s:1:\"a\";i:241;s:1:\"b\";s:14:\"view_donvitinh\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:7;a:4:{s:1:\"a\";i:242;s:1:\"b\";s:18:\"view_any_donvitinh\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:8;a:4:{s:1:\"a\";i:243;s:1:\"b\";s:16:\"create_donvitinh\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:9;a:4:{s:1:\"a\";i:244;s:1:\"b\";s:16:\"update_donvitinh\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:10;a:4:{s:1:\"a\";i:245;s:1:\"b\";s:16:\"delete_donvitinh\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:11;a:4:{s:1:\"a\";i:246;s:1:\"b\";s:20:\"delete_any_donvitinh\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:12;a:4:{s:1:\"a\";i:247;s:1:\"b\";s:16:\"view_khach::hang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:13;a:4:{s:1:\"a\";i:248;s:1:\"b\";s:20:\"view_any_khach::hang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:14;a:4:{s:1:\"a\";i:249;s:1:\"b\";s:18:\"create_khach::hang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:15;a:4:{s:1:\"a\";i:250;s:1:\"b\";s:18:\"update_khach::hang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:16;a:4:{s:1:\"a\";i:251;s:1:\"b\";s:18:\"delete_khach::hang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:17;a:4:{s:1:\"a\";i:252;s:1:\"b\";s:22:\"delete_any_khach::hang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:18;a:4:{s:1:\"a\";i:253;s:1:\"b\";s:8:\"view_kho\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:19;a:4:{s:1:\"a\";i:254;s:1:\"b\";s:12:\"view_any_kho\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:20;a:4:{s:1:\"a\";i:255;s:1:\"b\";s:10:\"create_kho\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:21;a:4:{s:1:\"a\";i:256;s:1:\"b\";s:10:\"update_kho\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:22;a:4:{s:1:\"a\";i:257;s:1:\"b\";s:10:\"delete_kho\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:23;a:4:{s:1:\"a\";i:258;s:1:\"b\";s:14:\"delete_any_kho\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:24;a:4:{s:1:\"a\";i:259;s:1:\"b\";s:19:\"view_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:25;a:4:{s:1:\"a\";i:260;s:1:\"b\";s:23:\"view_any_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:26;a:4:{s:1:\"a\";i:261;s:1:\"b\";s:21:\"create_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:27;a:4:{s:1:\"a\";i:262;s:1:\"b\";s:21:\"update_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:28;a:4:{s:1:\"a\";i:263;s:1:\"b\";s:21:\"delete_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:29;a:4:{s:1:\"a\";i:264;s:1:\"b\";s:25:\"delete_any_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:30;a:4:{s:1:\"a\";i:265;s:1:\"b\";s:16:\"view_phieu::nhap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:31;a:4:{s:1:\"a\";i:266;s:1:\"b\";s:20:\"view_any_phieu::nhap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:32;a:4:{s:1:\"a\";i:267;s:1:\"b\";s:18:\"create_phieu::nhap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:33;a:4:{s:1:\"a\";i:268;s:1:\"b\";s:18:\"update_phieu::nhap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:34;a:4:{s:1:\"a\";i:269;s:1:\"b\";s:18:\"delete_phieu::nhap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:35;a:4:{s:1:\"a\";i:270;s:1:\"b\";s:22:\"delete_any_phieu::nhap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:36;a:4:{s:1:\"a\";i:271;s:1:\"b\";s:9:\"view_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:5;}}i:37;a:4:{s:1:\"a\";i:272;s:1:\"b\";s:13:\"view_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:5;}}i:38;a:4:{s:1:\"a\";i:273;s:1:\"b\";s:11:\"create_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:5;}}i:39;a:4:{s:1:\"a\";i:274;s:1:\"b\";s:11:\"update_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:5;}}i:40;a:4:{s:1:\"a\";i:275;s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:5;}}i:41;a:4:{s:1:\"a\";i:276;s:1:\"b\";s:15:\"delete_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:5;}}i:42;a:4:{s:1:\"a\";i:277;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:43;a:4:{s:1:\"a\";i:278;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:44;a:4:{s:1:\"a\";i:279;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:45;a:4:{s:1:\"a\";i:280;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:46;a:4:{s:1:\"a\";i:281;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:47;a:4:{s:1:\"a\";i:282;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:48;a:4:{s:1:\"a\";i:283;s:1:\"b\";s:10:\"view_vattu\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:49;a:4:{s:1:\"a\";i:284;s:1:\"b\";s:14:\"view_any_vattu\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:50;a:4:{s:1:\"a\";i:285;s:1:\"b\";s:12:\"create_vattu\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:51;a:4:{s:1:\"a\";i:286;s:1:\"b\";s:12:\"update_vattu\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:52;a:4:{s:1:\"a\";i:287;s:1:\"b\";s:12:\"delete_vattu\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:53;a:4:{s:1:\"a\";i:288;s:1:\"b\";s:16:\"delete_any_vattu\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:54;a:3:{s:1:\"a\";i:289;s:1:\"b\";s:19:\"view_nha::cung::cap\";s:1:\"c\";s:4:\"nole\";}i:55;a:3:{s:1:\"a\";i:290;s:1:\"b\";s:23:\"view_any_nha::cung::cap\";s:1:\"c\";s:4:\"nole\";}i:56;a:3:{s:1:\"a\";i:291;s:1:\"b\";s:21:\"create_nha::cung::cap\";s:1:\"c\";s:4:\"nole\";}i:57;a:3:{s:1:\"a\";i:292;s:1:\"b\";s:21:\"update_nha::cung::cap\";s:1:\"c\";s:4:\"nole\";}i:58;a:4:{s:1:\"a\";i:293;s:1:\"b\";s:26:\"duyetphieunhap_phieu::nhap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:59;a:4:{s:1:\"a\";i:294;s:1:\"b\";s:11:\"view_tonkho\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:60;a:4:{s:1:\"a\";i:295;s:1:\"b\";s:15:\"view_any_tonkho\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:61;a:4:{s:1:\"a\";i:296;s:1:\"b\";s:13:\"create_tonkho\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:62;a:4:{s:1:\"a\";i:297;s:1:\"b\";s:13:\"update_tonkho\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:63;a:4:{s:1:\"a\";i:298;s:1:\"b\";s:13:\"delete_tonkho\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:64;a:4:{s:1:\"a\";i:299;s:1:\"b\";s:17:\"delete_any_tonkho\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:65;a:4:{s:1:\"a\";i:300;s:1:\"b\";s:16:\"view_phieu::xuat\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:66;a:4:{s:1:\"a\";i:301;s:1:\"b\";s:20:\"view_any_phieu::xuat\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:67;a:4:{s:1:\"a\";i:302;s:1:\"b\";s:18:\"create_phieu::xuat\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:68;a:4:{s:1:\"a\";i:303;s:1:\"b\";s:18:\"update_phieu::xuat\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:69;a:4:{s:1:\"a\";i:304;s:1:\"b\";s:18:\"delete_phieu::xuat\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:70;a:4:{s:1:\"a\";i:305;s:1:\"b\";s:22:\"delete_any_phieu::xuat\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:71;a:4:{s:1:\"a\";i:306;s:1:\"b\";s:26:\"duyetphieuxuat_phieu::xuat\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:72;a:4:{s:1:\"a\";i:307;s:1:\"b\";s:17:\"view_custom::role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:73;a:4:{s:1:\"a\";i:308;s:1:\"b\";s:21:\"view_any_custom::role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:74;a:4:{s:1:\"a\";i:309;s:1:\"b\";s:19:\"create_custom::role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:75;a:4:{s:1:\"a\";i:310;s:1:\"b\";s:19:\"update_custom::role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:76;a:4:{s:1:\"a\";i:311;s:1:\"b\";s:19:\"delete_custom::role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:77;a:4:{s:1:\"a\";i:312;s:1:\"b\";s:23:\"delete_any_custom::role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}}s:5:\"roles\";a:2:{i:0;a:3:{s:1:\"a\";i:4;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:5;s:1:\"b\";s:14:\"Người dùng\";s:1:\"c\";s:3:\"web\";}}}', 1744042861),
('laravel_cache_theme', 's:6:\"sunset\";', 2058917362),
('laravel_cache_theme_color', 's:6:\"orange\";', 2058928211);

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
  `phieudieuchuyen_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `vattu_id` int DEFAULT NULL,
  `SoLuong` decimal(10,2) DEFAULT NULL,
  `GhiChu` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaCTPCk` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieunhap`
--

DROP TABLE IF EXISTS `chitietphieunhap`;
CREATE TABLE IF NOT EXISTS `chitietphieunhap` (
  `id` int NOT NULL AUTO_INCREMENT,
  `phieunhap_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `vattu_id` int DEFAULT NULL,
  `SoLuong` decimal(10,2) DEFAULT NULL,
  `GhiChu` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `vitri_id` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaCTPN` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chitietphieunhap`
--

INSERT INTO `chitietphieunhap` (`id`, `phieunhap_id`, `vattu_id`, `SoLuong`, `GhiChu`, `created_at`, `updated_at`, `vitri_id`) VALUES
(1, 'pn1', 2, 12.00, 'kk', '2025-03-27 08:09:26', '2025-03-27 08:09:45', 3),
(2, 'pn1', 1, 123.00, NULL, '2025-03-27 08:32:25', '2025-03-27 09:09:54', 4),
(5, 'pn1', 1, 123.00, NULL, '2025-03-27 10:13:04', '2025-03-27 10:18:11', 4),
(7, 'pn3', 2, 3.00, NULL, '2025-03-29 02:06:47', '2025-03-29 02:06:47', NULL),
(10, 'pn5', 2, 123.00, NULL, '2025-04-01 03:06:54', '2025-04-01 03:07:11', 9),
(11, 'pn5', 2, 345.00, NULL, '2025-04-01 03:06:54', '2025-04-01 03:07:15', 9);

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieuxuat`
--

DROP TABLE IF EXISTS `chitietphieuxuat`;
CREATE TABLE IF NOT EXISTS `chitietphieuxuat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `phieuxuat_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `vattu_id` int DEFAULT NULL,
  `tonkho_id` int DEFAULT NULL,
  `SoLuong` decimal(10,2) DEFAULT NULL,
  `GhiChu` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaCTPX` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chitietphieuxuat`
--

INSERT INTO `chitietphieuxuat` (`id`, `phieuxuat_id`, `vattu_id`, `tonkho_id`, `SoLuong`, `GhiChu`, `created_at`, `updated_at`) VALUES
(3, 'px2', 2, 11, 230.00, NULL, '2025-04-01 16:41:37', '2025-04-01 16:41:37');

-- --------------------------------------------------------

--
-- Table structure for table `donvitinh`
--

DROP TABLE IF EXISTS `donvitinh`;
CREATE TABLE IF NOT EXISTS `donvitinh` (
  `id` int NOT NULL AUTO_INCREMENT,
  `TenDVT` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `Mota` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaDVT` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exports`
--

DROP TABLE IF EXISTS `exports`;
CREATE TABLE IF NOT EXISTS `exports` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `completed_at` timestamp NULL DEFAULT NULL,
  `file_disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exporter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `processed_rows` int UNSIGNED NOT NULL DEFAULT '0',
  `total_rows` int UNSIGNED NOT NULL,
  `successful_rows` int UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exports_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exports`
--

INSERT INTO `exports` (`id`, `completed_at`, `file_disk`, `file_name`, `exporter`, `processed_rows`, `total_rows`, `successful_rows`, `user_id`, `created_at`, `updated_at`) VALUES
(6, '2025-03-29 00:24:35', 'local', 'export-6-tonkhos', 'App\\Filament\\Exports\\TonkhoExporter', 3, 3, 3, 1, '2025-03-29 00:24:35', '2025-03-29 00:24:35'),
(7, '2025-03-29 00:25:14', 'local', 'export-7-tonkhos', 'App\\Filament\\Exports\\TonkhoExporter', 3, 3, 3, 1, '2025-03-29 00:25:14', '2025-03-29 00:25:14'),
(8, '2025-03-29 00:31:50', 'local', 'export-8-tonkhos', 'App\\Filament\\Exports\\TonkhoExporter', 3, 3, 3, 1, '2025-03-29 00:31:50', '2025-03-29 00:31:50'),
(9, '2025-03-29 00:34:53', 'local', 'export-9-tonkhos', 'App\\Filament\\Exports\\TonkhoExporter', 1, 1, 1, 1, '2025-03-29 00:34:52', '2025-03-29 00:34:53'),
(10, '2025-03-29 00:40:12', 'local', 'export-10-tonkhos', 'App\\Filament\\Exports\\TonkhoExporter', 3, 3, 3, 1, '2025-03-29 00:40:12', '2025-03-29 00:40:12'),
(11, '2025-03-29 00:42:51', 'local', 'export-11-tonkhos', 'App\\Filament\\Exports\\TonkhoExporter', 3, 3, 3, 1, '2025-03-29 00:42:50', '2025-03-29 00:42:51'),
(12, '2025-03-29 00:46:09', 'local', 'export-12-tonkhos', 'App\\Filament\\Exports\\TonkhoExporter', 2, 2, 2, 1, '2025-03-29 00:46:09', '2025-03-29 00:46:09'),
(13, '2025-03-30 21:12:02', 'local', 'export-13-tonkhos', 'App\\Filament\\Exports\\TonkhoExporter', 3, 3, 3, 1, '2025-03-30 21:12:02', '2025-03-30 21:12:02'),
(14, '2025-03-31 00:11:42', 'local', 'export-14-nhacungcaps', 'App\\Filament\\Exports\\NhacungcapExporter', 3, 3, 3, 1, '2025-03-31 00:11:42', '2025-03-31 00:11:42'),
(15, '2025-03-31 01:14:13', 'local', 'export-15-vattus', 'App\\Filament\\Exports\\VattuExporter', 2, 2, 2, 1, '2025-03-31 01:14:13', '2025-03-31 01:14:13'),
(16, '2025-04-01 03:05:08', 'local', 'export-16-tonkhos', 'App\\Filament\\Exports\\TonkhoExporter', 3, 3, 3, 1, '2025-04-01 03:05:08', '2025-04-01 03:05:08'),
(17, '2025-04-04 17:56:09', 'local', 'export-17-nhacungcaps', 'App\\Filament\\Exports\\NhacungcapExporter', 3, 3, 3, 1, '2025-04-04 17:56:09', '2025-04-04 17:56:09');

-- --------------------------------------------------------

--
-- Table structure for table `failed_import_rows`
--

DROP TABLE IF EXISTS `failed_import_rows`;
CREATE TABLE IF NOT EXISTS `failed_import_rows` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `import_id` bigint UNSIGNED NOT NULL,
  `validation_error` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `failed_import_rows_import_id_foreign` (`import_id`)
) ;

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
-- Table structure for table `imports`
--

DROP TABLE IF EXISTS `imports`;
CREATE TABLE IF NOT EXISTS `imports` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `completed_at` timestamp NULL DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `importer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `processed_rows` int UNSIGNED NOT NULL DEFAULT '0',
  `total_rows` int UNSIGNED NOT NULL,
  `successful_rows` int UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `imports_user_id_foreign` (`user_id`)
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"a0868570-5188-4545-a2a8-a6530a2994a4\",\"displayName\":\"Illuminate\\\\Bus\\\\ChainedBatch\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Bus\\\\ChainedBatch\",\"command\":\"O:27:\\\"Illuminate\\\\Bus\\\\ChainedBatch\\\":15:{s:4:\\\"jobs\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:46:\\\"Filament\\\\Actions\\\\Exports\\\\Jobs\\\\PrepareCsvExport\\\":7:{s:11:\\\"\\u0000*\\u0000exporter\\\";O:35:\\\"App\\\\Filament\\\\Exports\\\\TonkhoExporter\\\":3:{s:9:\\\"\\u0000*\\u0000export\\\";O:38:\\\"Filament\\\\Actions\\\\Exports\\\\Models\\\\Export\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";N;s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:8:{s:7:\\\"user_id\\\";i:1;s:8:\\\"exporter\\\";s:35:\\\"App\\\\Filament\\\\Exports\\\\TonkhoExporter\\\";s:10:\\\"total_rows\\\";i:3;s:9:\\\"file_disk\\\";s:5:\\\"local\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-29 07:16:02\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-03-29 07:16:02\\\";s:2:\\\"id\\\";i:1;s:9:\\\"file_name\\\";s:16:\\\"export-1-tonkhos\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:8:{s:7:\\\"user_id\\\";i:1;s:8:\\\"exporter\\\";s:35:\\\"App\\\\Filament\\\\Exports\\\\TonkhoExporter\\\";s:10:\\\"total_rows\\\";i:3;s:9:\\\"file_disk\\\";s:5:\\\"local\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-29 07:16:02\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-03-29 07:16:02\\\";s:2:\\\"id\\\";i:1;s:9:\\\"file_name\\\";s:16:\\\"export-1-tonkhos\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:1:{s:9:\\\"file_name\\\";s:16:\\\"export-1-tonkhos\\\";}s:8:\\\"\\u0000*\\u0000casts\\\";a:4:{s:12:\\\"completed_at\\\";s:9:\\\"timestamp\\\";s:14:\\\"processed_rows\\\";s:7:\\\"integer\\\";s:10:\\\"total_rows\\\";s:7:\\\"integer\\\";s:15:\\\"successful_rows\\\";s:7:\\\"integer\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:0:{}}s:12:\\\"\\u0000*\\u0000columnMap\\\";a:4:{s:10:\\\"kho.TenKho\\\";s:8:\\\"Tên kho\\\";s:11:\\\"vattu.TenVT\\\";s:14:\\\"Tên vật tư\\\";s:7:\\\"SoLuong\\\";s:13:\\\"Số lượng\\\";s:10:\\\"vitri.Mota\\\";s:9:\\\"vị trí\\\";}s:10:\\\"\\u0000*\\u0000options\\\";a:0:{}}s:9:\\\"\\u0000*\\u0000export\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:38:\\\"Filament\\\\Actions\\\\Exports\\\\Models\\\\Export\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:8:\\\"\\u0000*\\u0000query\\\";s:619:\\\"O:36:\\\"AnourValar\\\\EloquentSerialize\\\\Package\\\":1:{s:42:\\\"\\u0000AnourValar\\\\EloquentSerialize\\\\Package\\u0000data\\\";a:4:{s:5:\\\"model\\\";s:17:\\\"App\\\\Models\\\\tonkho\\\";s:10:\\\"connection\\\";N;s:8:\\\"eloquent\\\";a:3:{s:4:\\\"with\\\";a:0:{}s:14:\\\"removed_scopes\\\";a:0:{}s:5:\\\"casts\\\";a:1:{s:2:\\\"id\\\";s:3:\\\"int\\\";}}s:5:\\\"query\\\";a:5:{s:8:\\\"bindings\\\";a:9:{s:6:\\\"select\\\";a:0:{}s:4:\\\"from\\\";a:0:{}s:4:\\\"join\\\";a:0:{}s:5:\\\"where\\\";a:0:{}s:7:\\\"groupBy\\\";a:0:{}s:6:\\\"having\\\";a:0:{}s:5:\\\"order\\\";a:0:{}s:5:\\\"union\\\";a:0:{}s:10:\\\"unionOrder\\\";a:0:{}}s:8:\\\"distinct\\\";b:0;s:4:\\\"from\\\";s:6:\\\"tonkho\\\";s:6:\\\"wheres\\\";a:0:{}s:6:\\\"orders\\\";a:1:{i:0;a:2:{s:6:\\\"column\\\";s:9:\\\"tonkho.id\\\";s:9:\\\"direction\\\";s:3:\\\"asc\\\";}}}}}\\\";s:12:\\\"\\u0000*\\u0000columnMap\\\";a:4:{s:10:\\\"kho.TenKho\\\";s:8:\\\"Tên kho\\\";s:11:\\\"vattu.TenVT\\\";s:14:\\\"Tên vật tư\\\";s:7:\\\"SoLuong\\\";s:13:\\\"Số lượng\\\";s:10:\\\"vitri.Mota\\\";s:9:\\\"vị trí\\\";}s:10:\\\"\\u0000*\\u0000options\\\";a:0:{}s:12:\\\"\\u0000*\\u0000chunkSize\\\";i:100;s:10:\\\"\\u0000*\\u0000records\\\";N;}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:4:\\\"name\\\";s:0:\\\"\\\";s:7:\\\"options\\\";a:1:{s:13:\\\"allowFailures\\\";b:1;}s:7:\\\"batchId\\\";N;s:38:\\\"\\u0000Illuminate\\\\Bus\\\\ChainedBatch\\u0000fakeBatch\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:2:{i:0;s:2442:\\\"O:46:\\\"Filament\\\\Actions\\\\Exports\\\\Jobs\\\\ExportCompletion\\\":5:{s:11:\\\"\\u0000*\\u0000exporter\\\";O:35:\\\"App\\\\Filament\\\\Exports\\\\TonkhoExporter\\\":3:{s:9:\\\"\\u0000*\\u0000export\\\";O:38:\\\"Filament\\\\Actions\\\\Exports\\\\Models\\\\Export\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";N;s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:8:{s:7:\\\"user_id\\\";i:1;s:8:\\\"exporter\\\";s:35:\\\"App\\\\Filament\\\\Exports\\\\TonkhoExporter\\\";s:10:\\\"total_rows\\\";i:3;s:9:\\\"file_disk\\\";s:5:\\\"local\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-29 07:16:02\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-03-29 07:16:02\\\";s:2:\\\"id\\\";i:1;s:9:\\\"file_name\\\";s:16:\\\"export-1-tonkhos\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:8:{s:7:\\\"user_id\\\";i:1;s:8:\\\"exporter\\\";s:35:\\\"App\\\\Filament\\\\Exports\\\\TonkhoExporter\\\";s:10:\\\"total_rows\\\";i:3;s:9:\\\"file_disk\\\";s:5:\\\"local\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-29 07:16:02\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-03-29 07:16:02\\\";s:2:\\\"id\\\";i:1;s:9:\\\"file_name\\\";s:16:\\\"export-1-tonkhos\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:1:{s:9:\\\"file_name\\\";s:16:\\\"export-1-tonkhos\\\";}s:8:\\\"\\u0000*\\u0000casts\\\";a:4:{s:12:\\\"completed_at\\\";s:9:\\\"timestamp\\\";s:14:\\\"processed_rows\\\";s:7:\\\"integer\\\";s:10:\\\"total_rows\\\";s:7:\\\"integer\\\";s:15:\\\"successful_rows\\\";s:7:\\\"integer\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:0:{}}s:12:\\\"\\u0000*\\u0000columnMap\\\";a:4:{s:10:\\\"kho.TenKho\\\";s:8:\\\"Tên kho\\\";s:11:\\\"vattu.TenVT\\\";s:14:\\\"Tên vật tư\\\";s:7:\\\"SoLuong\\\";s:13:\\\"Số lượng\\\";s:10:\\\"vitri.Mota\\\";s:9:\\\"vị trí\\\";}s:10:\\\"\\u0000*\\u0000options\\\";a:0:{}}s:9:\\\"\\u0000*\\u0000export\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:38:\\\"Filament\\\\Actions\\\\Exports\\\\Models\\\\Export\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"\\u0000*\\u0000columnMap\\\";a:4:{s:10:\\\"kho.TenKho\\\";s:8:\\\"Tên kho\\\";s:11:\\\"vattu.TenVT\\\";s:14:\\\"Tên vật tư\\\";s:7:\\\"SoLuong\\\";s:13:\\\"Số lượng\\\";s:10:\\\"vitri.Mota\\\";s:9:\\\"vị trí\\\";}s:10:\\\"\\u0000*\\u0000formats\\\";a:2:{i:0;E:47:\\\"Filament\\\\Actions\\\\Exports\\\\Enums\\\\ExportFormat:Csv\\\";i:1;E:48:\\\"Filament\\\\Actions\\\\Exports\\\\Enums\\\\ExportFormat:Xlsx\\\";}s:10:\\\"\\u0000*\\u0000options\\\";a:0:{}}\\\";i:1;s:2297:\\\"O:44:\\\"Filament\\\\Actions\\\\Exports\\\\Jobs\\\\CreateXlsxFile\\\":4:{s:11:\\\"\\u0000*\\u0000exporter\\\";O:35:\\\"App\\\\Filament\\\\Exports\\\\TonkhoExporter\\\":3:{s:9:\\\"\\u0000*\\u0000export\\\";O:38:\\\"Filament\\\\Actions\\\\Exports\\\\Models\\\\Export\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";N;s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:8:{s:7:\\\"user_id\\\";i:1;s:8:\\\"exporter\\\";s:35:\\\"App\\\\Filament\\\\Exports\\\\TonkhoExporter\\\";s:10:\\\"total_rows\\\";i:3;s:9:\\\"file_disk\\\";s:5:\\\"local\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-29 07:16:02\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-03-29 07:16:02\\\";s:2:\\\"id\\\";i:1;s:9:\\\"file_name\\\";s:16:\\\"export-1-tonkhos\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:8:{s:7:\\\"user_id\\\";i:1;s:8:\\\"exporter\\\";s:35:\\\"App\\\\Filament\\\\Exports\\\\TonkhoExporter\\\";s:10:\\\"total_rows\\\";i:3;s:9:\\\"file_disk\\\";s:5:\\\"local\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-29 07:16:02\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-03-29 07:16:02\\\";s:2:\\\"id\\\";i:1;s:9:\\\"file_name\\\";s:16:\\\"export-1-tonkhos\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:1:{s:9:\\\"file_name\\\";s:16:\\\"export-1-tonkhos\\\";}s:8:\\\"\\u0000*\\u0000casts\\\";a:4:{s:12:\\\"completed_at\\\";s:9:\\\"timestamp\\\";s:14:\\\"processed_rows\\\";s:7:\\\"integer\\\";s:10:\\\"total_rows\\\";s:7:\\\"integer\\\";s:15:\\\"successful_rows\\\";s:7:\\\"integer\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:0:{}}s:12:\\\"\\u0000*\\u0000columnMap\\\";a:4:{s:10:\\\"kho.TenKho\\\";s:8:\\\"Tên kho\\\";s:11:\\\"vattu.TenVT\\\";s:14:\\\"Tên vật tư\\\";s:7:\\\"SoLuong\\\";s:13:\\\"Số lượng\\\";s:10:\\\"vitri.Mota\\\";s:9:\\\"vị trí\\\";}s:10:\\\"\\u0000*\\u0000options\\\";a:0:{}}s:9:\\\"\\u0000*\\u0000export\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:38:\\\"Filament\\\\Actions\\\\Exports\\\\Models\\\\Export\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"\\u0000*\\u0000columnMap\\\";a:4:{s:10:\\\"kho.TenKho\\\";s:8:\\\"Tên kho\\\";s:11:\\\"vattu.TenVT\\\";s:14:\\\"Tên vật tư\\\";s:7:\\\"SoLuong\\\";s:13:\\\"Số lượng\\\";s:10:\\\"vitri.Mota\\\";s:9:\\\"vị trí\\\";}s:10:\\\"\\u0000*\\u0000options\\\";a:0:{}}\\\";}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";a:0:{}}\"}}', 0, NULL, 1743232562, 1743232562),
(2, 'default', '{\"uuid\":\"b1b82271-23e9-4562-9271-695f5c8dc5f5\",\"displayName\":\"Illuminate\\\\Bus\\\\ChainedBatch\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Bus\\\\ChainedBatch\",\"command\":\"O:27:\\\"Illuminate\\\\Bus\\\\ChainedBatch\\\":15:{s:4:\\\"jobs\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:46:\\\"Filament\\\\Actions\\\\Exports\\\\Jobs\\\\PrepareCsvExport\\\":7:{s:11:\\\"\\u0000*\\u0000exporter\\\";O:35:\\\"App\\\\Filament\\\\Exports\\\\TonkhoExporter\\\":3:{s:9:\\\"\\u0000*\\u0000export\\\";O:38:\\\"Filament\\\\Actions\\\\Exports\\\\Models\\\\Export\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";N;s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:8:{s:7:\\\"user_id\\\";i:1;s:8:\\\"exporter\\\";s:35:\\\"App\\\\Filament\\\\Exports\\\\TonkhoExporter\\\";s:10:\\\"total_rows\\\";i:3;s:9:\\\"file_disk\\\";s:5:\\\"local\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-29 07:16:42\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-03-29 07:16:42\\\";s:2:\\\"id\\\";i:2;s:9:\\\"file_name\\\";s:16:\\\"export-2-tonkhos\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:8:{s:7:\\\"user_id\\\";i:1;s:8:\\\"exporter\\\";s:35:\\\"App\\\\Filament\\\\Exports\\\\TonkhoExporter\\\";s:10:\\\"total_rows\\\";i:3;s:9:\\\"file_disk\\\";s:5:\\\"local\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-29 07:16:42\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-03-29 07:16:42\\\";s:2:\\\"id\\\";i:2;s:9:\\\"file_name\\\";s:16:\\\"export-2-tonkhos\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:1:{s:9:\\\"file_name\\\";s:16:\\\"export-2-tonkhos\\\";}s:8:\\\"\\u0000*\\u0000casts\\\";a:4:{s:12:\\\"completed_at\\\";s:9:\\\"timestamp\\\";s:14:\\\"processed_rows\\\";s:7:\\\"integer\\\";s:10:\\\"total_rows\\\";s:7:\\\"integer\\\";s:15:\\\"successful_rows\\\";s:7:\\\"integer\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:0:{}}s:12:\\\"\\u0000*\\u0000columnMap\\\";a:4:{s:10:\\\"kho.TenKho\\\";s:8:\\\"Tên kho\\\";s:11:\\\"vattu.TenVT\\\";s:14:\\\"Tên vật tư\\\";s:7:\\\"SoLuong\\\";s:13:\\\"Số lượng\\\";s:10:\\\"vitri.Mota\\\";s:9:\\\"vị trí\\\";}s:10:\\\"\\u0000*\\u0000options\\\";a:0:{}}s:9:\\\"\\u0000*\\u0000export\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:38:\\\"Filament\\\\Actions\\\\Exports\\\\Models\\\\Export\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:8:\\\"\\u0000*\\u0000query\\\";s:619:\\\"O:36:\\\"AnourValar\\\\EloquentSerialize\\\\Package\\\":1:{s:42:\\\"\\u0000AnourValar\\\\EloquentSerialize\\\\Package\\u0000data\\\";a:4:{s:5:\\\"model\\\";s:17:\\\"App\\\\Models\\\\tonkho\\\";s:10:\\\"connection\\\";N;s:8:\\\"eloquent\\\";a:3:{s:4:\\\"with\\\";a:0:{}s:14:\\\"removed_scopes\\\";a:0:{}s:5:\\\"casts\\\";a:1:{s:2:\\\"id\\\";s:3:\\\"int\\\";}}s:5:\\\"query\\\";a:5:{s:8:\\\"bindings\\\";a:9:{s:6:\\\"select\\\";a:0:{}s:4:\\\"from\\\";a:0:{}s:4:\\\"join\\\";a:0:{}s:5:\\\"where\\\";a:0:{}s:7:\\\"groupBy\\\";a:0:{}s:6:\\\"having\\\";a:0:{}s:5:\\\"order\\\";a:0:{}s:5:\\\"union\\\";a:0:{}s:10:\\\"unionOrder\\\";a:0:{}}s:8:\\\"distinct\\\";b:0;s:4:\\\"from\\\";s:6:\\\"tonkho\\\";s:6:\\\"wheres\\\";a:0:{}s:6:\\\"orders\\\";a:1:{i:0;a:2:{s:6:\\\"column\\\";s:9:\\\"tonkho.id\\\";s:9:\\\"direction\\\";s:3:\\\"asc\\\";}}}}}\\\";s:12:\\\"\\u0000*\\u0000columnMap\\\";a:4:{s:10:\\\"kho.TenKho\\\";s:8:\\\"Tên kho\\\";s:11:\\\"vattu.TenVT\\\";s:14:\\\"Tên vật tư\\\";s:7:\\\"SoLuong\\\";s:13:\\\"Số lượng\\\";s:10:\\\"vitri.Mota\\\";s:9:\\\"vị trí\\\";}s:10:\\\"\\u0000*\\u0000options\\\";a:0:{}s:12:\\\"\\u0000*\\u0000chunkSize\\\";i:100;s:10:\\\"\\u0000*\\u0000records\\\";N;}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:4:\\\"name\\\";s:0:\\\"\\\";s:7:\\\"options\\\";a:1:{s:13:\\\"allowFailures\\\";b:1;}s:7:\\\"batchId\\\";N;s:38:\\\"\\u0000Illuminate\\\\Bus\\\\ChainedBatch\\u0000fakeBatch\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:2:{i:0;s:2442:\\\"O:46:\\\"Filament\\\\Actions\\\\Exports\\\\Jobs\\\\ExportCompletion\\\":5:{s:11:\\\"\\u0000*\\u0000exporter\\\";O:35:\\\"App\\\\Filament\\\\Exports\\\\TonkhoExporter\\\":3:{s:9:\\\"\\u0000*\\u0000export\\\";O:38:\\\"Filament\\\\Actions\\\\Exports\\\\Models\\\\Export\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";N;s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:8:{s:7:\\\"user_id\\\";i:1;s:8:\\\"exporter\\\";s:35:\\\"App\\\\Filament\\\\Exports\\\\TonkhoExporter\\\";s:10:\\\"total_rows\\\";i:3;s:9:\\\"file_disk\\\";s:5:\\\"local\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-29 07:16:42\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-03-29 07:16:42\\\";s:2:\\\"id\\\";i:2;s:9:\\\"file_name\\\";s:16:\\\"export-2-tonkhos\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:8:{s:7:\\\"user_id\\\";i:1;s:8:\\\"exporter\\\";s:35:\\\"App\\\\Filament\\\\Exports\\\\TonkhoExporter\\\";s:10:\\\"total_rows\\\";i:3;s:9:\\\"file_disk\\\";s:5:\\\"local\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-29 07:16:42\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-03-29 07:16:42\\\";s:2:\\\"id\\\";i:2;s:9:\\\"file_name\\\";s:16:\\\"export-2-tonkhos\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:1:{s:9:\\\"file_name\\\";s:16:\\\"export-2-tonkhos\\\";}s:8:\\\"\\u0000*\\u0000casts\\\";a:4:{s:12:\\\"completed_at\\\";s:9:\\\"timestamp\\\";s:14:\\\"processed_rows\\\";s:7:\\\"integer\\\";s:10:\\\"total_rows\\\";s:7:\\\"integer\\\";s:15:\\\"successful_rows\\\";s:7:\\\"integer\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:0:{}}s:12:\\\"\\u0000*\\u0000columnMap\\\";a:4:{s:10:\\\"kho.TenKho\\\";s:8:\\\"Tên kho\\\";s:11:\\\"vattu.TenVT\\\";s:14:\\\"Tên vật tư\\\";s:7:\\\"SoLuong\\\";s:13:\\\"Số lượng\\\";s:10:\\\"vitri.Mota\\\";s:9:\\\"vị trí\\\";}s:10:\\\"\\u0000*\\u0000options\\\";a:0:{}}s:9:\\\"\\u0000*\\u0000export\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:38:\\\"Filament\\\\Actions\\\\Exports\\\\Models\\\\Export\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"\\u0000*\\u0000columnMap\\\";a:4:{s:10:\\\"kho.TenKho\\\";s:8:\\\"Tên kho\\\";s:11:\\\"vattu.TenVT\\\";s:14:\\\"Tên vật tư\\\";s:7:\\\"SoLuong\\\";s:13:\\\"Số lượng\\\";s:10:\\\"vitri.Mota\\\";s:9:\\\"vị trí\\\";}s:10:\\\"\\u0000*\\u0000formats\\\";a:2:{i:0;E:47:\\\"Filament\\\\Actions\\\\Exports\\\\Enums\\\\ExportFormat:Csv\\\";i:1;E:48:\\\"Filament\\\\Actions\\\\Exports\\\\Enums\\\\ExportFormat:Xlsx\\\";}s:10:\\\"\\u0000*\\u0000options\\\";a:0:{}}\\\";i:1;s:2297:\\\"O:44:\\\"Filament\\\\Actions\\\\Exports\\\\Jobs\\\\CreateXlsxFile\\\":4:{s:11:\\\"\\u0000*\\u0000exporter\\\";O:35:\\\"App\\\\Filament\\\\Exports\\\\TonkhoExporter\\\":3:{s:9:\\\"\\u0000*\\u0000export\\\";O:38:\\\"Filament\\\\Actions\\\\Exports\\\\Models\\\\Export\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";N;s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:8:{s:7:\\\"user_id\\\";i:1;s:8:\\\"exporter\\\";s:35:\\\"App\\\\Filament\\\\Exports\\\\TonkhoExporter\\\";s:10:\\\"total_rows\\\";i:3;s:9:\\\"file_disk\\\";s:5:\\\"local\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-29 07:16:42\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-03-29 07:16:42\\\";s:2:\\\"id\\\";i:2;s:9:\\\"file_name\\\";s:16:\\\"export-2-tonkhos\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:8:{s:7:\\\"user_id\\\";i:1;s:8:\\\"exporter\\\";s:35:\\\"App\\\\Filament\\\\Exports\\\\TonkhoExporter\\\";s:10:\\\"total_rows\\\";i:3;s:9:\\\"file_disk\\\";s:5:\\\"local\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-29 07:16:42\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-03-29 07:16:42\\\";s:2:\\\"id\\\";i:2;s:9:\\\"file_name\\\";s:16:\\\"export-2-tonkhos\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:1:{s:9:\\\"file_name\\\";s:16:\\\"export-2-tonkhos\\\";}s:8:\\\"\\u0000*\\u0000casts\\\";a:4:{s:12:\\\"completed_at\\\";s:9:\\\"timestamp\\\";s:14:\\\"processed_rows\\\";s:7:\\\"integer\\\";s:10:\\\"total_rows\\\";s:7:\\\"integer\\\";s:15:\\\"successful_rows\\\";s:7:\\\"integer\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:0:{}}s:12:\\\"\\u0000*\\u0000columnMap\\\";a:4:{s:10:\\\"kho.TenKho\\\";s:8:\\\"Tên kho\\\";s:11:\\\"vattu.TenVT\\\";s:14:\\\"Tên vật tư\\\";s:7:\\\"SoLuong\\\";s:13:\\\"Số lượng\\\";s:10:\\\"vitri.Mota\\\";s:9:\\\"vị trí\\\";}s:10:\\\"\\u0000*\\u0000options\\\";a:0:{}}s:9:\\\"\\u0000*\\u0000export\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:38:\\\"Filament\\\\Actions\\\\Exports\\\\Models\\\\Export\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"\\u0000*\\u0000columnMap\\\";a:4:{s:10:\\\"kho.TenKho\\\";s:8:\\\"Tên kho\\\";s:11:\\\"vattu.TenVT\\\";s:14:\\\"Tên vật tư\\\";s:7:\\\"SoLuong\\\";s:13:\\\"Số lượng\\\";s:10:\\\"vitri.Mota\\\";s:9:\\\"vị trí\\\";}s:10:\\\"\\u0000*\\u0000options\\\";a:0:{}}\\\";}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";a:0:{}}\"}}', 0, NULL, 1743232602, 1743232602),
(3, 'default', '{\"uuid\":\"ca19a27b-5976-4d3c-af59-ea1d9ca9c689\",\"displayName\":\"Illuminate\\\\Bus\\\\ChainedBatch\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Bus\\\\ChainedBatch\",\"command\":\"O:27:\\\"Illuminate\\\\Bus\\\\ChainedBatch\\\":15:{s:4:\\\"jobs\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:46:\\\"Filament\\\\Actions\\\\Exports\\\\Jobs\\\\PrepareCsvExport\\\":7:{s:11:\\\"\\u0000*\\u0000exporter\\\";O:35:\\\"App\\\\Filament\\\\Exports\\\\TonkhoExporter\\\":3:{s:9:\\\"\\u0000*\\u0000export\\\";O:38:\\\"Filament\\\\Actions\\\\Exports\\\\Models\\\\Export\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";N;s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:8:{s:7:\\\"user_id\\\";i:1;s:8:\\\"exporter\\\";s:35:\\\"App\\\\Filament\\\\Exports\\\\TonkhoExporter\\\";s:10:\\\"total_rows\\\";i:3;s:9:\\\"file_disk\\\";s:5:\\\"local\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-29 07:20:15\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-03-29 07:20:15\\\";s:2:\\\"id\\\";i:3;s:9:\\\"file_name\\\";s:16:\\\"export-3-tonkhos\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:8:{s:7:\\\"user_id\\\";i:1;s:8:\\\"exporter\\\";s:35:\\\"App\\\\Filament\\\\Exports\\\\TonkhoExporter\\\";s:10:\\\"total_rows\\\";i:3;s:9:\\\"file_disk\\\";s:5:\\\"local\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-29 07:20:15\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-03-29 07:20:15\\\";s:2:\\\"id\\\";i:3;s:9:\\\"file_name\\\";s:16:\\\"export-3-tonkhos\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:1:{s:9:\\\"file_name\\\";s:16:\\\"export-3-tonkhos\\\";}s:8:\\\"\\u0000*\\u0000casts\\\";a:4:{s:12:\\\"completed_at\\\";s:9:\\\"timestamp\\\";s:14:\\\"processed_rows\\\";s:7:\\\"integer\\\";s:10:\\\"total_rows\\\";s:7:\\\"integer\\\";s:15:\\\"successful_rows\\\";s:7:\\\"integer\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:0:{}}s:12:\\\"\\u0000*\\u0000columnMap\\\";a:1:{s:7:\\\"SoLuong\\\";s:13:\\\"Số lượng\\\";}s:10:\\\"\\u0000*\\u0000options\\\";a:0:{}}s:9:\\\"\\u0000*\\u0000export\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:38:\\\"Filament\\\\Actions\\\\Exports\\\\Models\\\\Export\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:8:\\\"\\u0000*\\u0000query\\\";s:619:\\\"O:36:\\\"AnourValar\\\\EloquentSerialize\\\\Package\\\":1:{s:42:\\\"\\u0000AnourValar\\\\EloquentSerialize\\\\Package\\u0000data\\\";a:4:{s:5:\\\"model\\\";s:17:\\\"App\\\\Models\\\\tonkho\\\";s:10:\\\"connection\\\";N;s:8:\\\"eloquent\\\";a:3:{s:4:\\\"with\\\";a:0:{}s:14:\\\"removed_scopes\\\";a:0:{}s:5:\\\"casts\\\";a:1:{s:2:\\\"id\\\";s:3:\\\"int\\\";}}s:5:\\\"query\\\";a:5:{s:8:\\\"bindings\\\";a:9:{s:6:\\\"select\\\";a:0:{}s:4:\\\"from\\\";a:0:{}s:4:\\\"join\\\";a:0:{}s:5:\\\"where\\\";a:0:{}s:7:\\\"groupBy\\\";a:0:{}s:6:\\\"having\\\";a:0:{}s:5:\\\"order\\\";a:0:{}s:5:\\\"union\\\";a:0:{}s:10:\\\"unionOrder\\\";a:0:{}}s:8:\\\"distinct\\\";b:0;s:4:\\\"from\\\";s:6:\\\"tonkho\\\";s:6:\\\"wheres\\\";a:0:{}s:6:\\\"orders\\\";a:1:{i:0;a:2:{s:6:\\\"column\\\";s:9:\\\"tonkho.id\\\";s:9:\\\"direction\\\";s:3:\\\"asc\\\";}}}}}\\\";s:12:\\\"\\u0000*\\u0000columnMap\\\";a:1:{s:7:\\\"SoLuong\\\";s:13:\\\"Số lượng\\\";}s:10:\\\"\\u0000*\\u0000options\\\";a:0:{}s:12:\\\"\\u0000*\\u0000chunkSize\\\";i:100;s:10:\\\"\\u0000*\\u0000records\\\";N;}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:4:\\\"name\\\";s:0:\\\"\\\";s:7:\\\"options\\\";a:1:{s:13:\\\"allowFailures\\\";b:1;}s:7:\\\"batchId\\\";N;s:38:\\\"\\u0000Illuminate\\\\Bus\\\\ChainedBatch\\u0000fakeBatch\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:2:{i:0;s:2226:\\\"O:46:\\\"Filament\\\\Actions\\\\Exports\\\\Jobs\\\\ExportCompletion\\\":5:{s:11:\\\"\\u0000*\\u0000exporter\\\";O:35:\\\"App\\\\Filament\\\\Exports\\\\TonkhoExporter\\\":3:{s:9:\\\"\\u0000*\\u0000export\\\";O:38:\\\"Filament\\\\Actions\\\\Exports\\\\Models\\\\Export\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";N;s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:8:{s:7:\\\"user_id\\\";i:1;s:8:\\\"exporter\\\";s:35:\\\"App\\\\Filament\\\\Exports\\\\TonkhoExporter\\\";s:10:\\\"total_rows\\\";i:3;s:9:\\\"file_disk\\\";s:5:\\\"local\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-29 07:20:15\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-03-29 07:20:15\\\";s:2:\\\"id\\\";i:3;s:9:\\\"file_name\\\";s:16:\\\"export-3-tonkhos\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:8:{s:7:\\\"user_id\\\";i:1;s:8:\\\"exporter\\\";s:35:\\\"App\\\\Filament\\\\Exports\\\\TonkhoExporter\\\";s:10:\\\"total_rows\\\";i:3;s:9:\\\"file_disk\\\";s:5:\\\"local\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-29 07:20:15\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-03-29 07:20:15\\\";s:2:\\\"id\\\";i:3;s:9:\\\"file_name\\\";s:16:\\\"export-3-tonkhos\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:1:{s:9:\\\"file_name\\\";s:16:\\\"export-3-tonkhos\\\";}s:8:\\\"\\u0000*\\u0000casts\\\";a:4:{s:12:\\\"completed_at\\\";s:9:\\\"timestamp\\\";s:14:\\\"processed_rows\\\";s:7:\\\"integer\\\";s:10:\\\"total_rows\\\";s:7:\\\"integer\\\";s:15:\\\"successful_rows\\\";s:7:\\\"integer\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:0:{}}s:12:\\\"\\u0000*\\u0000columnMap\\\";a:1:{s:7:\\\"SoLuong\\\";s:13:\\\"Số lượng\\\";}s:10:\\\"\\u0000*\\u0000options\\\";a:0:{}}s:9:\\\"\\u0000*\\u0000export\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:38:\\\"Filament\\\\Actions\\\\Exports\\\\Models\\\\Export\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"\\u0000*\\u0000columnMap\\\";a:1:{s:7:\\\"SoLuong\\\";s:13:\\\"Số lượng\\\";}s:10:\\\"\\u0000*\\u0000formats\\\";a:2:{i:0;E:47:\\\"Filament\\\\Actions\\\\Exports\\\\Enums\\\\ExportFormat:Csv\\\";i:1;E:48:\\\"Filament\\\\Actions\\\\Exports\\\\Enums\\\\ExportFormat:Xlsx\\\";}s:10:\\\"\\u0000*\\u0000options\\\";a:0:{}}\\\";i:1;s:2081:\\\"O:44:\\\"Filament\\\\Actions\\\\Exports\\\\Jobs\\\\CreateXlsxFile\\\":4:{s:11:\\\"\\u0000*\\u0000exporter\\\";O:35:\\\"App\\\\Filament\\\\Exports\\\\TonkhoExporter\\\":3:{s:9:\\\"\\u0000*\\u0000export\\\";O:38:\\\"Filament\\\\Actions\\\\Exports\\\\Models\\\\Export\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";N;s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:1;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:8:{s:7:\\\"user_id\\\";i:1;s:8:\\\"exporter\\\";s:35:\\\"App\\\\Filament\\\\Exports\\\\TonkhoExporter\\\";s:10:\\\"total_rows\\\";i:3;s:9:\\\"file_disk\\\";s:5:\\\"local\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-29 07:20:15\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-03-29 07:20:15\\\";s:2:\\\"id\\\";i:3;s:9:\\\"file_name\\\";s:16:\\\"export-3-tonkhos\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:8:{s:7:\\\"user_id\\\";i:1;s:8:\\\"exporter\\\";s:35:\\\"App\\\\Filament\\\\Exports\\\\TonkhoExporter\\\";s:10:\\\"total_rows\\\";i:3;s:9:\\\"file_disk\\\";s:5:\\\"local\\\";s:10:\\\"updated_at\\\";s:19:\\\"2025-03-29 07:20:15\\\";s:10:\\\"created_at\\\";s:19:\\\"2025-03-29 07:20:15\\\";s:2:\\\"id\\\";i:3;s:9:\\\"file_name\\\";s:16:\\\"export-3-tonkhos\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:1:{s:9:\\\"file_name\\\";s:16:\\\"export-3-tonkhos\\\";}s:8:\\\"\\u0000*\\u0000casts\\\";a:4:{s:12:\\\"completed_at\\\";s:9:\\\"timestamp\\\";s:14:\\\"processed_rows\\\";s:7:\\\"integer\\\";s:10:\\\"total_rows\\\";s:7:\\\"integer\\\";s:15:\\\"successful_rows\\\";s:7:\\\"integer\\\";}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:0:{}}s:12:\\\"\\u0000*\\u0000columnMap\\\";a:1:{s:7:\\\"SoLuong\\\";s:13:\\\"Số lượng\\\";}s:10:\\\"\\u0000*\\u0000options\\\";a:0:{}}s:9:\\\"\\u0000*\\u0000export\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:38:\\\"Filament\\\\Actions\\\\Exports\\\\Models\\\\Export\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"\\u0000*\\u0000columnMap\\\";a:1:{s:7:\\\"SoLuong\\\";s:13:\\\"Số lượng\\\";}s:10:\\\"\\u0000*\\u0000options\\\";a:0:{}}\\\";}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";a:0:{}}\"}}', 0, NULL, 1743232815, 1743232815);

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

--
-- Dumping data for table `job_batches`
--

INSERT INTO `job_batches` (`id`, `name`, `total_jobs`, `pending_jobs`, `failed_jobs`, `failed_job_ids`, `options`, `cancelled_at`, `created_at`, `finished_at`) VALUES
('9e8bcddb-306a-4ba7-929d-8e44734b8761', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:4860:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":7:{s:11:\"\0*\0exporter\";O:35:\"App\\Filament\\Exports\\TonkhoExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:21:53\";s:10:\"created_at\";s:19:\"2025-03-29 07:21:53\";s:2:\"id\";i:4;s:9:\"file_name\";s:16:\"export-4-tonkhos\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:21:53\";s:10:\"created_at\";s:19:\"2025-03-29 07:21:53\";s:2:\"id\";i:4;s:9:\"file_name\";s:16:\"export-4-tonkhos\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:16:\"export-4-tonkhos\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:1:{s:7:\"SoLuong\";s:13:\"Số lượng\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:4;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:1:{s:7:\"SoLuong\";s:13:\"Số lượng\";}s:10:\"\0*\0formats\";a:2:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";i:1;E:48:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Xlsx\";}s:10:\"\0*\0options\";a:0:{}s:7:\"chained\";a:1:{i:0;s:2081:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:35:\"App\\Filament\\Exports\\TonkhoExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:21:53\";s:10:\"created_at\";s:19:\"2025-03-29 07:21:53\";s:2:\"id\";i:4;s:9:\"file_name\";s:16:\"export-4-tonkhos\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:21:53\";s:10:\"created_at\";s:19:\"2025-03-29 07:21:53\";s:2:\"id\";i:4;s:9:\"file_name\";s:16:\"export-4-tonkhos\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:16:\"export-4-tonkhos\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:1:{s:7:\"SoLuong\";s:13:\"Số lượng\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:4;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:1:{s:7:\"SoLuong\";s:13:\"Số lượng\";}s:10:\"\0*\0options\";a:0:{}}\";}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"0000000000000bed0000000000000000\";}\";s:4:\"hash\";s:44:\"SfcN1P0HOSjh+EsYtS8sdphxRYNBedhhl0ARNj5d3qg=\";}}}}', NULL, 1743232913, 1743232913),
('9e8bcdf0-da8d-4891-a307-b5c394b8a4cd', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:4860:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":7:{s:11:\"\0*\0exporter\";O:35:\"App\\Filament\\Exports\\TonkhoExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:22:07\";s:10:\"created_at\";s:19:\"2025-03-29 07:22:07\";s:2:\"id\";i:5;s:9:\"file_name\";s:16:\"export-5-tonkhos\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:22:07\";s:10:\"created_at\";s:19:\"2025-03-29 07:22:07\";s:2:\"id\";i:5;s:9:\"file_name\";s:16:\"export-5-tonkhos\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:16:\"export-5-tonkhos\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:1:{s:7:\"SoLuong\";s:13:\"Số lượng\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:5;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:1:{s:7:\"SoLuong\";s:13:\"Số lượng\";}s:10:\"\0*\0formats\";a:2:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";i:1;E:48:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Xlsx\";}s:10:\"\0*\0options\";a:0:{}s:7:\"chained\";a:1:{i:0;s:2081:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:35:\"App\\Filament\\Exports\\TonkhoExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:22:07\";s:10:\"created_at\";s:19:\"2025-03-29 07:22:07\";s:2:\"id\";i:5;s:9:\"file_name\";s:16:\"export-5-tonkhos\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:22:07\";s:10:\"created_at\";s:19:\"2025-03-29 07:22:07\";s:2:\"id\";i:5;s:9:\"file_name\";s:16:\"export-5-tonkhos\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:16:\"export-5-tonkhos\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:1:{s:7:\"SoLuong\";s:13:\"Số lượng\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:5;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:1:{s:7:\"SoLuong\";s:13:\"Số lượng\";}s:10:\"\0*\0options\";a:0:{}}\";}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"0000000000000bed0000000000000000\";}\";s:4:\"hash\";s:44:\"phU4jUBhVbGh/F/XLMkB29ySJjfGRqqUp4VnAeBkAIw=\";}}}}', NULL, 1743232927, 1743232927),
('9e8bced2-be87-4fda-8996-481c1df37ebb', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:4860:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":7:{s:11:\"\0*\0exporter\";O:35:\"App\\Filament\\Exports\\TonkhoExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:24:35\";s:10:\"created_at\";s:19:\"2025-03-29 07:24:35\";s:2:\"id\";i:6;s:9:\"file_name\";s:16:\"export-6-tonkhos\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:24:35\";s:10:\"created_at\";s:19:\"2025-03-29 07:24:35\";s:2:\"id\";i:6;s:9:\"file_name\";s:16:\"export-6-tonkhos\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:16:\"export-6-tonkhos\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:1:{s:7:\"SoLuong\";s:13:\"Số lượng\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:6;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:1:{s:7:\"SoLuong\";s:13:\"Số lượng\";}s:10:\"\0*\0formats\";a:2:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";i:1;E:48:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Xlsx\";}s:10:\"\0*\0options\";a:0:{}s:7:\"chained\";a:1:{i:0;s:2081:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:35:\"App\\Filament\\Exports\\TonkhoExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:24:35\";s:10:\"created_at\";s:19:\"2025-03-29 07:24:35\";s:2:\"id\";i:6;s:9:\"file_name\";s:16:\"export-6-tonkhos\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:24:35\";s:10:\"created_at\";s:19:\"2025-03-29 07:24:35\";s:2:\"id\";i:6;s:9:\"file_name\";s:16:\"export-6-tonkhos\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:16:\"export-6-tonkhos\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:1:{s:7:\"SoLuong\";s:13:\"Số lượng\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:6;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:1:{s:7:\"SoLuong\";s:13:\"Số lượng\";}s:10:\"\0*\0options\";a:0:{}}\";}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"0000000000000bed0000000000000000\";}\";s:4:\"hash\";s:44:\"f4P5Fd+m7Oo6RHwae0VSRrpJ4CZEYceRfbw40T4Bvvg=\";}}}}', NULL, 1743233075, 1743233075),
('9e8bcf0d-a2f3-43ea-8e1d-6ee5f117a33a', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:5292:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":7:{s:11:\"\0*\0exporter\";O:35:\"App\\Filament\\Exports\\TonkhoExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:25:14\";s:10:\"created_at\";s:19:\"2025-03-29 07:25:14\";s:2:\"id\";i:7;s:9:\"file_name\";s:16:\"export-7-tonkhos\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:25:14\";s:10:\"created_at\";s:19:\"2025-03-29 07:25:14\";s:2:\"id\";i:7;s:9:\"file_name\";s:16:\"export-7-tonkhos\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:16:\"export-7-tonkhos\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:4:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:7;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:4:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0formats\";a:2:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";i:1;E:48:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Xlsx\";}s:10:\"\0*\0options\";a:0:{}s:7:\"chained\";a:1:{i:0;s:2297:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:35:\"App\\Filament\\Exports\\TonkhoExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:25:14\";s:10:\"created_at\";s:19:\"2025-03-29 07:25:14\";s:2:\"id\";i:7;s:9:\"file_name\";s:16:\"export-7-tonkhos\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:25:14\";s:10:\"created_at\";s:19:\"2025-03-29 07:25:14\";s:2:\"id\";i:7;s:9:\"file_name\";s:16:\"export-7-tonkhos\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:16:\"export-7-tonkhos\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:4:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:7;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:4:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0options\";a:0:{}}\";}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"000000000000082f0000000000000000\";}\";s:4:\"hash\";s:44:\"iBtwXsLf6viOeEJ5Zmw2rWjGGVO7bB5+tlWlaQ3LC3I=\";}}}}', NULL, 1743233114, 1743233114),
('9e8bd169-c915-4e85-ab91-0915d25c1d72', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:5292:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":7:{s:11:\"\0*\0exporter\";O:35:\"App\\Filament\\Exports\\TonkhoExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:31:50\";s:10:\"created_at\";s:19:\"2025-03-29 07:31:50\";s:2:\"id\";i:8;s:9:\"file_name\";s:16:\"export-8-tonkhos\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:31:50\";s:10:\"created_at\";s:19:\"2025-03-29 07:31:50\";s:2:\"id\";i:8;s:9:\"file_name\";s:16:\"export-8-tonkhos\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:16:\"export-8-tonkhos\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:4:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:8;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:4:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0formats\";a:2:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";i:1;E:48:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Xlsx\";}s:10:\"\0*\0options\";a:0:{}s:7:\"chained\";a:1:{i:0;s:2297:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:35:\"App\\Filament\\Exports\\TonkhoExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:31:50\";s:10:\"created_at\";s:19:\"2025-03-29 07:31:50\";s:2:\"id\";i:8;s:9:\"file_name\";s:16:\"export-8-tonkhos\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:31:50\";s:10:\"created_at\";s:19:\"2025-03-29 07:31:50\";s:2:\"id\";i:8;s:9:\"file_name\";s:16:\"export-8-tonkhos\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:16:\"export-8-tonkhos\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:4:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:8;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:4:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0options\";a:0:{}}\";}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"000000000000082f0000000000000000\";}\";s:4:\"hash\";s:44:\"NHs+UtrcWanXdIsjKJfDkP70K2tICcZGKM2JZug96Rg=\";}}}}', NULL, 1743233510, 1743233510),
('9e8bd280-b9a1-430e-a919-c376ee7ece5d', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:5292:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":7:{s:11:\"\0*\0exporter\";O:35:\"App\\Filament\\Exports\\TonkhoExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:1;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:34:52\";s:10:\"created_at\";s:19:\"2025-03-29 07:34:52\";s:2:\"id\";i:9;s:9:\"file_name\";s:16:\"export-9-tonkhos\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:1;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:34:52\";s:10:\"created_at\";s:19:\"2025-03-29 07:34:52\";s:2:\"id\";i:9;s:9:\"file_name\";s:16:\"export-9-tonkhos\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:16:\"export-9-tonkhos\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:4:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:9;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:4:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0formats\";a:2:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";i:1;E:48:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Xlsx\";}s:10:\"\0*\0options\";a:0:{}s:7:\"chained\";a:1:{i:0;s:2297:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:35:\"App\\Filament\\Exports\\TonkhoExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:1;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:34:52\";s:10:\"created_at\";s:19:\"2025-03-29 07:34:52\";s:2:\"id\";i:9;s:9:\"file_name\";s:16:\"export-9-tonkhos\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:1;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:34:52\";s:10:\"created_at\";s:19:\"2025-03-29 07:34:52\";s:2:\"id\";i:9;s:9:\"file_name\";s:16:\"export-9-tonkhos\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:16:\"export-9-tonkhos\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:4:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:9;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:4:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0options\";a:0:{}}\";}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000009370000000000000000\";}\";s:4:\"hash\";s:44:\"kTFmwRk2RZeIadEXt3vsnV/m4FQIPQF8ip2MVFVt2Vo=\";}}}}', NULL, 1743233692, 1743233693),
('9e8bd468-0a9f-448d-9580-1bc1c185a767', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:5304:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":7:{s:11:\"\0*\0exporter\";O:35:\"App\\Filament\\Exports\\TonkhoExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:40:12\";s:10:\"created_at\";s:19:\"2025-03-29 07:40:12\";s:2:\"id\";i:10;s:9:\"file_name\";s:17:\"export-10-tonkhos\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:40:12\";s:10:\"created_at\";s:19:\"2025-03-29 07:40:12\";s:2:\"id\";i:10;s:9:\"file_name\";s:17:\"export-10-tonkhos\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:17:\"export-10-tonkhos\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:4:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:10;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:4:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0formats\";a:2:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";i:1;E:48:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Xlsx\";}s:10:\"\0*\0options\";a:0:{}s:7:\"chained\";a:1:{i:0;s:2303:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:35:\"App\\Filament\\Exports\\TonkhoExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:40:12\";s:10:\"created_at\";s:19:\"2025-03-29 07:40:12\";s:2:\"id\";i:10;s:9:\"file_name\";s:17:\"export-10-tonkhos\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:40:12\";s:10:\"created_at\";s:19:\"2025-03-29 07:40:12\";s:2:\"id\";i:10;s:9:\"file_name\";s:17:\"export-10-tonkhos\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:17:\"export-10-tonkhos\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:4:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:10;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:4:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0options\";a:0:{}}\";}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000008280000000000000000\";}\";s:4:\"hash\";s:44:\"YB3cehD49M3MkmvltR9VNf6SUFonW6LuJReoCBRLLXo=\";}}}}', NULL, 1743234012, 1743234012),
('9e8bd559-ea68-4079-8bb1-204a78def139', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:5304:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":7:{s:11:\"\0*\0exporter\";O:35:\"App\\Filament\\Exports\\TonkhoExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:42:50\";s:10:\"created_at\";s:19:\"2025-03-29 07:42:50\";s:2:\"id\";i:11;s:9:\"file_name\";s:17:\"export-11-tonkhos\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:42:50\";s:10:\"created_at\";s:19:\"2025-03-29 07:42:50\";s:2:\"id\";i:11;s:9:\"file_name\";s:17:\"export-11-tonkhos\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:17:\"export-11-tonkhos\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:4:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:11;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:4:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0formats\";a:2:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";i:1;E:48:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Xlsx\";}s:10:\"\0*\0options\";a:0:{}s:7:\"chained\";a:1:{i:0;s:2303:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:35:\"App\\Filament\\Exports\\TonkhoExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:42:50\";s:10:\"created_at\";s:19:\"2025-03-29 07:42:50\";s:2:\"id\";i:11;s:9:\"file_name\";s:17:\"export-11-tonkhos\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:42:50\";s:10:\"created_at\";s:19:\"2025-03-29 07:42:50\";s:2:\"id\";i:11;s:9:\"file_name\";s:17:\"export-11-tonkhos\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:17:\"export-11-tonkhos\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:4:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:11;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:4:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0options\";a:0:{}}\";}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"000000000000082a0000000000000000\";}\";s:4:\"hash\";s:44:\"2CasAblrkOVVNkyhERTKv2EC3FijhwzH0RcLcShe5IE=\";}}}}', NULL, 1743234170, 1743234171);
INSERT INTO `job_batches` (`id`, `name`, `total_jobs`, `pending_jobs`, `failed_jobs`, `failed_job_ids`, `options`, `cancelled_at`, `created_at`, `finished_at`) VALUES
('9e8bd688-f653-496e-84bc-fbb58b236f64', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:5504:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":7:{s:11:\"\0*\0exporter\";O:35:\"App\\Filament\\Exports\\TonkhoExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:46:09\";s:10:\"created_at\";s:19:\"2025-03-29 07:46:09\";s:2:\"id\";i:12;s:9:\"file_name\";s:17:\"export-12-tonkhos\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:46:09\";s:10:\"created_at\";s:19:\"2025-03-29 07:46:09\";s:2:\"id\";i:12;s:9:\"file_name\";s:17:\"export-12-tonkhos\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:17:\"export-12-tonkhos\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:5:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:18:\"vattu.donvitinh_id\";s:16:\"Đơn vị tính\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:12;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:5:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:18:\"vattu.donvitinh_id\";s:16:\"Đơn vị tính\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0formats\";a:2:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";i:1;E:48:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Xlsx\";}s:10:\"\0*\0options\";a:0:{}s:7:\"chained\";a:1:{i:0;s:2403:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:35:\"App\\Filament\\Exports\\TonkhoExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:46:09\";s:10:\"created_at\";s:19:\"2025-03-29 07:46:09\";s:2:\"id\";i:12;s:9:\"file_name\";s:17:\"export-12-tonkhos\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-29 07:46:09\";s:10:\"created_at\";s:19:\"2025-03-29 07:46:09\";s:2:\"id\";i:12;s:9:\"file_name\";s:17:\"export-12-tonkhos\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:17:\"export-12-tonkhos\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:5:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:18:\"vattu.donvitinh_id\";s:16:\"Đơn vị tính\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:12;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:5:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:18:\"vattu.donvitinh_id\";s:16:\"Đơn vị tính\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0options\";a:0:{}}\";}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"0000000000000ccf0000000000000000\";}\";s:4:\"hash\";s:44:\"QkIGWeGmBQHCOetaBrJ80tZBxqG/vgv88SvhTk4vwjk=\";}}}}', NULL, 1743234369, 1743234369),
('9e8f8fed-ebba-4ae7-8baf-b43dedf4531b', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:5504:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":7:{s:11:\"\0*\0exporter\";O:35:\"App\\Filament\\Exports\\TonkhoExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-31 04:12:02\";s:10:\"created_at\";s:19:\"2025-03-31 04:12:02\";s:2:\"id\";i:13;s:9:\"file_name\";s:17:\"export-13-tonkhos\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-31 04:12:02\";s:10:\"created_at\";s:19:\"2025-03-31 04:12:02\";s:2:\"id\";i:13;s:9:\"file_name\";s:17:\"export-13-tonkhos\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:17:\"export-13-tonkhos\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:5:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:18:\"vattu.donvitinh_id\";s:16:\"Đơn vị tính\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:13;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:5:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:18:\"vattu.donvitinh_id\";s:16:\"Đơn vị tính\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0formats\";a:2:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";i:1;E:48:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Xlsx\";}s:10:\"\0*\0options\";a:0:{}s:7:\"chained\";a:1:{i:0;s:2403:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:35:\"App\\Filament\\Exports\\TonkhoExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-31 04:12:02\";s:10:\"created_at\";s:19:\"2025-03-31 04:12:02\";s:2:\"id\";i:13;s:9:\"file_name\";s:17:\"export-13-tonkhos\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-31 04:12:02\";s:10:\"created_at\";s:19:\"2025-03-31 04:12:02\";s:2:\"id\";i:13;s:9:\"file_name\";s:17:\"export-13-tonkhos\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:17:\"export-13-tonkhos\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:5:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:18:\"vattu.donvitinh_id\";s:16:\"Đơn vị tính\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:13;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:5:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:18:\"vattu.donvitinh_id\";s:16:\"Đơn vị tính\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0options\";a:0:{}}\";}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"0000000000000cac0000000000000000\";}\";s:4:\"hash\";s:44:\"viwaBMNfBmmRU95YExl/k4CFXXmVrd/jZbSTPghSHOQ=\";}}}}', NULL, 1743394322, 1743394322),
('9e8fd02f-8246-4220-888f-f9505f4d929f', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:5812:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":7:{s:11:\"\0*\0exporter\";O:39:\"App\\Filament\\Exports\\NhacungcapExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:39:\"App\\Filament\\Exports\\NhacungcapExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-31 07:11:42\";s:10:\"created_at\";s:19:\"2025-03-31 07:11:42\";s:2:\"id\";i:14;s:9:\"file_name\";s:21:\"export-14-nhacungcaps\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:39:\"App\\Filament\\Exports\\NhacungcapExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-31 07:11:42\";s:10:\"created_at\";s:19:\"2025-03-31 07:11:42\";s:2:\"id\";i:14;s:9:\"file_name\";s:21:\"export-14-nhacungcaps\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:21:\"export-14-nhacungcaps\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:8:{s:2:\"id\";s:3:\"Mã\";s:6:\"TenNCC\";s:20:\"Tên nhà cung cấp\";s:3:\"Sdt\";s:20:\"Số điện thoại\";s:5:\"Email\";s:5:\"Email\";s:6:\"DiaChi\";s:12:\"Địa chỉ\";s:8:\"MaSoThue\";s:15:\"Mã Số thuế\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:10:\"created_at\";s:11:\"Ngày tạo\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:14;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:8:{s:2:\"id\";s:3:\"Mã\";s:6:\"TenNCC\";s:20:\"Tên nhà cung cấp\";s:3:\"Sdt\";s:20:\"Số điện thoại\";s:5:\"Email\";s:5:\"Email\";s:6:\"DiaChi\";s:12:\"Địa chỉ\";s:8:\"MaSoThue\";s:15:\"Mã Số thuế\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:10:\"created_at\";s:11:\"Ngày tạo\";}s:10:\"\0*\0formats\";a:2:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";i:1;E:48:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Xlsx\";}s:10:\"\0*\0options\";a:0:{}s:7:\"chained\";a:1:{i:0;s:2557:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:39:\"App\\Filament\\Exports\\NhacungcapExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:39:\"App\\Filament\\Exports\\NhacungcapExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-31 07:11:42\";s:10:\"created_at\";s:19:\"2025-03-31 07:11:42\";s:2:\"id\";i:14;s:9:\"file_name\";s:21:\"export-14-nhacungcaps\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:39:\"App\\Filament\\Exports\\NhacungcapExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-31 07:11:42\";s:10:\"created_at\";s:19:\"2025-03-31 07:11:42\";s:2:\"id\";i:14;s:9:\"file_name\";s:21:\"export-14-nhacungcaps\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:21:\"export-14-nhacungcaps\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:8:{s:2:\"id\";s:3:\"Mã\";s:6:\"TenNCC\";s:20:\"Tên nhà cung cấp\";s:3:\"Sdt\";s:20:\"Số điện thoại\";s:5:\"Email\";s:5:\"Email\";s:6:\"DiaChi\";s:12:\"Địa chỉ\";s:8:\"MaSoThue\";s:15:\"Mã Số thuế\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:10:\"created_at\";s:11:\"Ngày tạo\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:14;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:8:{s:2:\"id\";s:3:\"Mã\";s:6:\"TenNCC\";s:20:\"Tên nhà cung cấp\";s:3:\"Sdt\";s:20:\"Số điện thoại\";s:5:\"Email\";s:5:\"Email\";s:6:\"DiaChi\";s:12:\"Địa chỉ\";s:8:\"MaSoThue\";s:15:\"Mã Số thuế\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:10:\"created_at\";s:11:\"Ngày tạo\";}s:10:\"\0*\0options\";a:0:{}}\";}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"0000000000000f440000000000000000\";}\";s:4:\"hash\";s:44:\"ua3ZM6dfTcHGpdwCxTko9yMJmhitaDj5QIXMpmiYiLE=\";}}}}', NULL, 1743405102, 1743405102),
('9e8fe689-ec46-4bb5-b78a-5a3da01f1156', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:5728:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":7:{s:11:\"\0*\0exporter\";O:34:\"App\\Filament\\Exports\\VattuExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\VattuExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-31 08:14:13\";s:10:\"created_at\";s:19:\"2025-03-31 08:14:13\";s:2:\"id\";i:15;s:9:\"file_name\";s:16:\"export-15-vattus\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\VattuExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-31 08:14:13\";s:10:\"created_at\";s:19:\"2025-03-31 08:14:13\";s:2:\"id\";i:15;s:9:\"file_name\";s:16:\"export-15-vattus\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:16:\"export-15-vattus\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:7:{s:2:\"id\";s:13:\"Mã vật tư\";s:5:\"TenVT\";s:14:\"Tên vật tư\";s:16:\"donvitinh.TenDVT\";s:16:\"Đơn vị tính\";s:9:\"KichThuoc\";s:14:\"Kích thước\";s:6:\"MauSac\";s:10:\"Màu sắc\";s:7:\"DacDiem\";s:13:\"Dặc điểm\";s:4:\"LaTP\";s:17:\"Là thành phẩm\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:15;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:7:{s:2:\"id\";s:13:\"Mã vật tư\";s:5:\"TenVT\";s:14:\"Tên vật tư\";s:16:\"donvitinh.TenDVT\";s:16:\"Đơn vị tính\";s:9:\"KichThuoc\";s:14:\"Kích thước\";s:6:\"MauSac\";s:10:\"Màu sắc\";s:7:\"DacDiem\";s:13:\"Dặc điểm\";s:4:\"LaTP\";s:17:\"Là thành phẩm\";}s:10:\"\0*\0formats\";a:2:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";i:1;E:48:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Xlsx\";}s:10:\"\0*\0options\";a:0:{}s:7:\"chained\";a:1:{i:0;s:2515:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:34:\"App\\Filament\\Exports\\VattuExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\VattuExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-31 08:14:13\";s:10:\"created_at\";s:19:\"2025-03-31 08:14:13\";s:2:\"id\";i:15;s:9:\"file_name\";s:16:\"export-15-vattus\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\VattuExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-03-31 08:14:13\";s:10:\"created_at\";s:19:\"2025-03-31 08:14:13\";s:2:\"id\";i:15;s:9:\"file_name\";s:16:\"export-15-vattus\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:16:\"export-15-vattus\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:7:{s:2:\"id\";s:13:\"Mã vật tư\";s:5:\"TenVT\";s:14:\"Tên vật tư\";s:16:\"donvitinh.TenDVT\";s:16:\"Đơn vị tính\";s:9:\"KichThuoc\";s:14:\"Kích thước\";s:6:\"MauSac\";s:10:\"Màu sắc\";s:7:\"DacDiem\";s:13:\"Dặc điểm\";s:4:\"LaTP\";s:17:\"Là thành phẩm\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:15;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:7:{s:2:\"id\";s:13:\"Mã vật tư\";s:5:\"TenVT\";s:14:\"Tên vật tư\";s:16:\"donvitinh.TenDVT\";s:16:\"Đơn vị tính\";s:9:\"KichThuoc\";s:14:\"Kích thước\";s:6:\"MauSac\";s:10:\"Màu sắc\";s:7:\"DacDiem\";s:13:\"Dặc điểm\";s:4:\"LaTP\";s:17:\"Là thành phẩm\";}s:10:\"\0*\0options\";a:0:{}}\";}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"0000000000000dfd0000000000000000\";}\";s:4:\"hash\";s:44:\"EStAvWFKweI6gFa6d5nqIv5kHnvG/h7tiiIhScv4RGg=\";}}}}', NULL, 1743408853, 1743408853),
('9e921131-884e-4a58-8922-cfe2b3285ece', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:5504:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":7:{s:11:\"\0*\0exporter\";O:35:\"App\\Filament\\Exports\\TonkhoExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-04-01 10:05:08\";s:10:\"created_at\";s:19:\"2025-04-01 10:05:08\";s:2:\"id\";i:16;s:9:\"file_name\";s:17:\"export-16-tonkhos\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-04-01 10:05:08\";s:10:\"created_at\";s:19:\"2025-04-01 10:05:08\";s:2:\"id\";i:16;s:9:\"file_name\";s:17:\"export-16-tonkhos\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:17:\"export-16-tonkhos\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:5:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:18:\"vattu.donvitinh_id\";s:16:\"Đơn vị tính\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:16;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:5:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:18:\"vattu.donvitinh_id\";s:16:\"Đơn vị tính\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0formats\";a:2:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";i:1;E:48:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Xlsx\";}s:10:\"\0*\0options\";a:0:{}s:7:\"chained\";a:1:{i:0;s:2403:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:35:\"App\\Filament\\Exports\\TonkhoExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-04-01 10:05:08\";s:10:\"created_at\";s:19:\"2025-04-01 10:05:08\";s:2:\"id\";i:16;s:9:\"file_name\";s:17:\"export-16-tonkhos\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-04-01 10:05:08\";s:10:\"created_at\";s:19:\"2025-04-01 10:05:08\";s:2:\"id\";i:16;s:9:\"file_name\";s:17:\"export-16-tonkhos\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:17:\"export-16-tonkhos\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:5:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:18:\"vattu.donvitinh_id\";s:16:\"Đơn vị tính\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:16;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:5:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:18:\"vattu.donvitinh_id\";s:16:\"Đơn vị tính\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0options\";a:0:{}}\";}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000007ca0000000000000000\";}\";s:4:\"hash\";s:44:\"YvHt85AuOO5D/CI84EUHZKTc5S/BmlEujG97FofRTOY=\";}}}}', NULL, 1743501908, 1743501908),
('9e9958cb-8d67-46aa-8d39-700463e6f60e', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:5812:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":7:{s:11:\"\0*\0exporter\";O:39:\"App\\Filament\\Exports\\NhacungcapExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:39:\"App\\Filament\\Exports\\NhacungcapExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-04-05 00:56:09\";s:10:\"created_at\";s:19:\"2025-04-05 00:56:09\";s:2:\"id\";i:17;s:9:\"file_name\";s:21:\"export-17-nhacungcaps\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:39:\"App\\Filament\\Exports\\NhacungcapExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-04-05 00:56:09\";s:10:\"created_at\";s:19:\"2025-04-05 00:56:09\";s:2:\"id\";i:17;s:9:\"file_name\";s:21:\"export-17-nhacungcaps\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:21:\"export-17-nhacungcaps\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:8:{s:2:\"id\";s:3:\"Mã\";s:6:\"TenNCC\";s:20:\"Tên nhà cung cấp\";s:3:\"Sdt\";s:20:\"Số điện thoại\";s:5:\"Email\";s:5:\"Email\";s:6:\"DiaChi\";s:12:\"Địa chỉ\";s:8:\"MaSoThue\";s:15:\"Mã Số thuế\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:10:\"created_at\";s:11:\"Ngày tạo\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:17;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:8:{s:2:\"id\";s:3:\"Mã\";s:6:\"TenNCC\";s:20:\"Tên nhà cung cấp\";s:3:\"Sdt\";s:20:\"Số điện thoại\";s:5:\"Email\";s:5:\"Email\";s:6:\"DiaChi\";s:12:\"Địa chỉ\";s:8:\"MaSoThue\";s:15:\"Mã Số thuế\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:10:\"created_at\";s:11:\"Ngày tạo\";}s:10:\"\0*\0formats\";a:2:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";i:1;E:48:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Xlsx\";}s:10:\"\0*\0options\";a:0:{}s:7:\"chained\";a:1:{i:0;s:2557:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:39:\"App\\Filament\\Exports\\NhacungcapExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:39:\"App\\Filament\\Exports\\NhacungcapExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-04-05 00:56:09\";s:10:\"created_at\";s:19:\"2025-04-05 00:56:09\";s:2:\"id\";i:17;s:9:\"file_name\";s:21:\"export-17-nhacungcaps\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:39:\"App\\Filament\\Exports\\NhacungcapExporter\";s:10:\"total_rows\";i:3;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-04-05 00:56:09\";s:10:\"created_at\";s:19:\"2025-04-05 00:56:09\";s:2:\"id\";i:17;s:9:\"file_name\";s:21:\"export-17-nhacungcaps\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:21:\"export-17-nhacungcaps\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:8:{s:2:\"id\";s:3:\"Mã\";s:6:\"TenNCC\";s:20:\"Tên nhà cung cấp\";s:3:\"Sdt\";s:20:\"Số điện thoại\";s:5:\"Email\";s:5:\"Email\";s:6:\"DiaChi\";s:12:\"Địa chỉ\";s:8:\"MaSoThue\";s:15:\"Mã Số thuế\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:10:\"created_at\";s:11:\"Ngày tạo\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:17;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:8:{s:2:\"id\";s:3:\"Mã\";s:6:\"TenNCC\";s:20:\"Tên nhà cung cấp\";s:3:\"Sdt\";s:20:\"Số điện thoại\";s:5:\"Email\";s:5:\"Email\";s:6:\"DiaChi\";s:12:\"Địa chỉ\";s:8:\"MaSoThue\";s:15:\"Mã Số thuế\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:10:\"created_at\";s:11:\"Ngày tạo\";}s:10:\"\0*\0options\";a:0:{}}\";}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"0000000000000e480000000000000000\";}\";s:4:\"hash\";s:44:\"Gj8yzCAjpdLx5CMCdtsN8ghje6OisqONoC1kD5BtLTg=\";}}}}', NULL, 1743814569, 1743814569);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
CREATE TABLE IF NOT EXISTS `khachhang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `TenKH` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Sdt` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `DiaChi` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `GhiChu` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaKH` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`id`, `TenKH`, `Sdt`, `Email`, `DiaChi`, `GhiChu`, `created_at`, `updated_at`) VALUES
(1, 'Khách A', '124324', 'anhlycuckeo123@gmail.com', 'Hải Phòng', NULL, '2025-03-29 01:32:03', '2025-03-29 01:32:03'),
(102, 'Khách A', '123123', 'uia@gmail.com', '34535', NULL, '2025-03-30 20:10:41', '2025-04-04 19:06:29'),
(203, 'Khách A', '1231645', NULL, 'abc', NULL, '2025-04-03 01:42:07', '2025-04-03 01:42:07'),
(204, 'Khách A', '1231645', NULL, 'abc', NULL, '2025-04-03 01:42:41', '2025-04-03 01:42:41');

-- --------------------------------------------------------

--
-- Table structure for table `kho`
--

DROP TABLE IF EXISTS `kho`;
CREATE TABLE IF NOT EXISTS `kho` (
  `id` int NOT NULL AUTO_INCREMENT,
  `TenKho` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `DiaChi` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `GhiChu` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaKho` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `kho`
--

INSERT INTO `kho` (`id`, `TenKho`, `DiaChi`, `GhiChu`, `created_at`, `updated_at`) VALUES
(1, 'Kho A', 'Hải Phòng', 'Nguyên vật liệu', '2025-03-26 20:09:59', '2025-03-26 20:09:59'),
(2, 'Kho B', 'Thuỷ Nguyên', 'Thành Phẩm', '2025-03-26 20:11:11', '2025-03-26 20:11:11'),
(3, 'Kho C', 'Lê Chân', 'Hỗn Hợp', '2025-03-26 20:12:24', '2025-03-30 23:24:11');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '0001_01_01_000000_create_users_table', 1),
(6, '0001_01_01_000001_create_cache_table', 1),
(7, '0001_01_01_000002_create_jobs_table', 1),
(8, '2025_03_26_054023_create_permission_tables', 1),
(9, '2025_03_29_070941_create_notifications_table', 2),
(10, '2025_03_29_071027_create_imports_table', 2),
(11, '2025_03_29_071028_create_exports_table', 2),
(12, '2025_03_29_071029_create_failed_import_rows_table', 2),
(13, '2025_04_06_114117_add_renew_password_on_users_table', 3);

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
(4, 'App\\Models\\User', 1),
(5, 'App\\Models\\User', 2),
(5, 'App\\Models\\User', 21);

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

DROP TABLE IF EXISTS `nhacungcap`;
CREATE TABLE IF NOT EXISTS `nhacungcap` (
  `id` int NOT NULL AUTO_INCREMENT,
  `TenNCC` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Sdt` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `DiaChi` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `MaSoThue` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `GhiChu` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaNCC` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`id`, `TenNCC`, `Sdt`, `Email`, `DiaChi`, `MaSoThue`, `GhiChu`, `created_at`, `updated_at`) VALUES
(1, 'Nhà cung cấp A', '64573266', 'A@gmail.com', 'Hải Phòng', '7684646', ':D', NULL, '2025-03-26 02:28:01'),
(3, 'Nhà cung cấp B', '423424', 'B@gmail.com', 'Hà Nội', '7684646', 'â', '2025-03-24 08:06:25', '2025-03-24 08:06:25'),
(4, 'Nhà cung cấp C', '423424', 'C@gmail.com', 'Hà Nội', '7684646', 'c', '2025-03-24 08:29:37', '2025-03-24 08:29:37');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=313 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(235, 'view_chi::tiet::phieu::nhap', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(236, 'view_any_chi::tiet::phieu::nhap', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(237, 'create_chi::tiet::phieu::nhap', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(238, 'update_chi::tiet::phieu::nhap', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(239, 'delete_chi::tiet::phieu::nhap', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(240, 'delete_any_chi::tiet::phieu::nhap', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(241, 'view_donvitinh', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(242, 'view_any_donvitinh', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(243, 'create_donvitinh', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(244, 'update_donvitinh', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(245, 'delete_donvitinh', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(246, 'delete_any_donvitinh', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(247, 'view_khach::hang', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(248, 'view_any_khach::hang', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(249, 'create_khach::hang', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(250, 'update_khach::hang', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(251, 'delete_khach::hang', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(252, 'delete_any_khach::hang', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(253, 'view_kho', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(254, 'view_any_kho', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(255, 'create_kho', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(256, 'update_kho', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(257, 'delete_kho', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(258, 'delete_any_kho', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(259, 'view_nha::cung::cap', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(260, 'view_any_nha::cung::cap', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(261, 'create_nha::cung::cap', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(262, 'update_nha::cung::cap', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(263, 'delete_nha::cung::cap', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(264, 'delete_any_nha::cung::cap', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(265, 'view_phieu::nhap', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(266, 'view_any_phieu::nhap', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(267, 'create_phieu::nhap', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(268, 'update_phieu::nhap', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(269, 'delete_phieu::nhap', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(270, 'delete_any_phieu::nhap', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(271, 'view_role', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(272, 'view_any_role', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(273, 'create_role', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(274, 'update_role', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(275, 'delete_role', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(276, 'delete_any_role', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(277, 'view_user', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(278, 'view_any_user', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(279, 'create_user', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(280, 'update_user', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(281, 'delete_user', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(282, 'delete_any_user', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(283, 'view_vattu', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(284, 'view_any_vattu', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(285, 'create_vattu', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(286, 'update_vattu', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(287, 'delete_vattu', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(288, 'delete_any_vattu', 'web', '2025-03-28 07:50:43', '2025-03-28 07:50:43'),
(289, 'view_nha::cung::cap', 'nole', '2025-03-28 07:52:49', '2025-03-28 07:52:49'),
(290, 'view_any_nha::cung::cap', 'nole', '2025-03-28 07:52:49', '2025-03-28 07:52:49'),
(291, 'create_nha::cung::cap', 'nole', '2025-03-28 07:52:49', '2025-03-28 07:52:49'),
(292, 'update_nha::cung::cap', 'nole', '2025-03-28 07:52:49', '2025-03-28 07:52:49'),
(293, 'duyetphieunhap_phieu::nhap', 'web', '2025-03-28 08:27:52', '2025-03-28 08:27:52'),
(294, 'view_tonkho', 'web', '2025-03-28 09:54:20', '2025-03-28 09:54:20'),
(295, 'view_any_tonkho', 'web', '2025-03-28 09:54:20', '2025-03-28 09:54:20'),
(296, 'create_tonkho', 'web', '2025-03-28 09:54:20', '2025-03-28 09:54:20'),
(297, 'update_tonkho', 'web', '2025-03-28 09:54:20', '2025-03-28 09:54:20'),
(298, 'delete_tonkho', 'web', '2025-03-28 09:54:20', '2025-03-28 09:54:20'),
(299, 'delete_any_tonkho', 'web', '2025-03-28 09:54:20', '2025-03-28 09:54:20'),
(300, 'view_phieu::xuat', 'web', '2025-04-01 22:23:39', '2025-04-01 22:23:39'),
(301, 'view_any_phieu::xuat', 'web', '2025-04-01 22:23:39', '2025-04-01 22:23:39'),
(302, 'create_phieu::xuat', 'web', '2025-04-01 22:23:39', '2025-04-01 22:23:39'),
(303, 'update_phieu::xuat', 'web', '2025-04-01 22:23:39', '2025-04-01 22:23:39'),
(304, 'delete_phieu::xuat', 'web', '2025-04-01 22:23:39', '2025-04-01 22:23:39'),
(305, 'delete_any_phieu::xuat', 'web', '2025-04-01 22:23:39', '2025-04-01 22:23:39'),
(306, 'duyetphieuxuat_phieu::xuat', 'web', '2025-04-01 22:24:46', '2025-04-01 22:24:46'),
(307, 'view_custom::role', 'web', '2025-04-06 09:21:01', '2025-04-06 09:21:01'),
(308, 'view_any_custom::role', 'web', '2025-04-06 09:21:01', '2025-04-06 09:21:01'),
(309, 'create_custom::role', 'web', '2025-04-06 09:21:01', '2025-04-06 09:21:01'),
(310, 'update_custom::role', 'web', '2025-04-06 09:21:01', '2025-04-06 09:21:01'),
(311, 'delete_custom::role', 'web', '2025-04-06 09:21:01', '2025-04-06 09:21:01'),
(312, 'delete_any_custom::role', 'web', '2025-04-06 09:21:01', '2025-04-06 09:21:01');

-- --------------------------------------------------------

--
-- Table structure for table `phieudieuchuyen`
--

DROP TABLE IF EXISTS `phieudieuchuyen`;
CREATE TABLE IF NOT EXISTS `phieudieuchuyen` (
  `id` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `NgayLap` datetime DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `MaKhoNguon` int DEFAULT NULL,
  `MaKhoDich` int DEFAULT NULL,
  `GhiChu` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `TrangThai` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaPCK` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

DROP TABLE IF EXISTS `phieunhap`;
CREATE TABLE IF NOT EXISTS `phieunhap` (
  `id` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `NgayNhap` datetime DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `nhacungcap_id` int DEFAULT NULL,
  `LyDo` tinyint(1) DEFAULT NULL,
  `GhiChu` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `TrangThai` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `kho_id` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaPN` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `phieunhap`
--

INSERT INTO `phieunhap` (`id`, `NgayNhap`, `user_id`, `nhacungcap_id`, `LyDo`, `GhiChu`, `TrangThai`, `created_at`, `updated_at`, `kho_id`) VALUES
('pn1', '2025-03-26 00:00:00', 1, 1, 1, 'kk', 1, '2025-03-26 16:25:57', '2025-03-28 01:17:13', 2),
('pn3', '2025-03-06 00:00:00', 2, NULL, 0, 'hihihaha', 2, '2025-03-29 02:06:47', '2025-03-30 20:09:59', 3),
('pn5', '2025-04-10 00:00:00', 5, NULL, 0, 'hahahhihi', 1, '2025-04-01 03:06:54', '2025-04-01 03:07:23', 3);

-- --------------------------------------------------------

--
-- Table structure for table `phieusuco`
--

DROP TABLE IF EXISTS `phieusuco`;
CREATE TABLE IF NOT EXISTS `phieusuco` (
  `id` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `phieuxuat_id` int DEFAULT NULL,
  `phieuvanchuyen_id` int DEFAULT NULL,
  `NgayTao` datetime DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `Mota` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `GhiChu` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `TrangThai` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaPSC` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phieuvanchuyen`
--

DROP TABLE IF EXISTS `phieuvanchuyen`;
CREATE TABLE IF NOT EXISTS `phieuvanchuyen` (
  `id` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `phieuxuat_id` int DEFAULT NULL,
  `xetai_id` int DEFAULT NULL,
  `taixe_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `NgayTao` datetime DEFAULT NULL,
  `NgayVanChuyen` datetime DEFAULT NULL,
  `GhiChu` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `TrangThai` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaPVC` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phieuxuat`
--

DROP TABLE IF EXISTS `phieuxuat`;
CREATE TABLE IF NOT EXISTS `phieuxuat` (
  `id` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `NgayXuat` datetime DEFAULT NULL,
  `kho_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `LyDo` tinyint(1) DEFAULT NULL,
  `khachhang_id` int DEFAULT NULL,
  `GhiChu` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `TrangThai` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaPX` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `phieuxuat`
--

INSERT INTO `phieuxuat` (`id`, `NgayXuat`, `kho_id`, `user_id`, `LyDo`, `khachhang_id`, `GhiChu`, `TrangThai`, `created_at`, `updated_at`) VALUES
('px2', '2025-04-04 00:00:00', 2, 5, 1, 1, 'kkkkk', 2, '2025-04-01 16:41:37', '2025-04-02 03:13:50'),
('px3', NULL, 3, 2, 0, NULL, NULL, 0, '2025-04-02 02:40:07', '2025-04-02 02:40:07');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(4, 'super_admin', 'web', '2025-03-28 07:47:01', '2025-03-28 07:47:01'),
(5, 'Người dùng', 'web', '2025-03-28 07:52:49', '2025-03-28 07:56:18');

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
(241, 4),
(242, 4),
(243, 4),
(244, 4),
(245, 4),
(246, 4),
(247, 4),
(248, 4),
(249, 4),
(250, 4),
(251, 4),
(252, 4),
(253, 4),
(254, 4),
(255, 4),
(256, 4),
(257, 4),
(258, 4),
(259, 4),
(260, 4),
(261, 4),
(262, 4),
(263, 4),
(264, 4),
(265, 4),
(266, 4),
(267, 4),
(268, 4),
(269, 4),
(270, 4),
(277, 4),
(278, 4),
(279, 4),
(280, 4),
(281, 4),
(282, 4),
(283, 4),
(284, 4),
(285, 4),
(286, 4),
(287, 4),
(288, 4),
(293, 4),
(294, 4),
(295, 4),
(296, 4),
(297, 4),
(298, 4),
(299, 4),
(300, 4),
(301, 4),
(302, 4),
(303, 4),
(304, 4),
(305, 4),
(306, 4),
(307, 4),
(308, 4),
(309, 4),
(310, 4),
(311, 4),
(312, 4),
(248, 5),
(265, 5),
(266, 5),
(267, 5),
(268, 5),
(269, 5),
(270, 5),
(271, 5),
(272, 5),
(273, 5),
(274, 5),
(275, 5),
(276, 5),
(277, 5),
(278, 5),
(279, 5),
(280, 5),
(281, 5),
(282, 5),
(300, 5),
(301, 5),
(302, 5),
(303, 5),
(304, 5),
(305, 5);

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
('0ljaySkH7D5Oacp09SsPgzuBVVWvqjCHX8FpGihU', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoib2tSNzZ4RzJON0x1b1h3Y00wald5STFISmx0SXo2VVVrMmdsRnp3UCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcGhpZXVuaGFwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJGdKMU1QRkxteDB1NE5MY1R2eXVCT3VJY1pBMmpoZk1hOEp2NU13eGRGcG5RZ1JEdDVQQ2RtIjtzOjg6ImZpbGFtZW50IjthOjA6e319', 1744035246);

-- --------------------------------------------------------

--
-- Table structure for table `taixe`
--

DROP TABLE IF EXISTS `taixe`;
CREATE TABLE IF NOT EXISTS `taixe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `TenTaiXe` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `Sdt` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `CCCD` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `BangLai` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `DiaChi` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `NamSinh` date DEFAULT NULL,
  `GhiChu` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `TrangThai` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaTaiXe` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tonkho`
--

INSERT INTO `tonkho` (`kho_id`, `vattu_id`, `SoLuong`, `vitri_id`, `NgayCapNhat`, `created_at`, `updated_at`, `id`) VALUES
(2, 2, 12.00, 3, '2025-03-28 08:17:13', '2025-03-28 01:17:13', '2025-03-28 01:17:13', 8),
(2, 1, 246.00, 4, '2025-03-28 08:17:13', '2025-03-28 01:17:13', '2025-03-28 01:17:13', 9),
(1, 1, 99.00, 7, '2025-03-29 06:53:18', '2025-03-28 23:53:18', '2025-03-28 23:53:18', 10),
(3, 2, 3.00, 9, '2025-04-02 03:10:49', '2025-04-01 03:07:23', '2025-04-01 20:10:49', 11);

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
  `last_renew_password_at` timestamp NULL DEFAULT NULL,
  `force_renew_password` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `Active`, `Birth`, `Phone`, `Address`, `last_renew_password_at`, `force_renew_password`) VALUES
(1, 'Loc', 'a@gmail.com', NULL, '$2y$12$gJ1MPFLmx0u4NLcTvyuBOuIcZA2jhfMa8Jv5MwxdFpnQgRDt5PCdm', 'oZynBUaw2HHJYGwAA5YaxlonU2gCnYqiGlCar7V3JFety8St1MP0JlSusIwp', '2025-03-25 23:54:49', '2025-04-04 19:16:53', 1, '2023-03-26', '08654829203', 'Hải Phòng', NULL, 0),
(2, 'sơn', 'son123@gmail.com', NULL, '$2y$12$X.I0JMKdM53MCUQyNwy.ounKVgEtsewXq3JPlZvgl8Iz4mSbf54rK', 'SDessTx3jgEUWCPOqxmzYYOyfUud0e0xQzmGIDGgd3PwjFZFrOyzteqBkQxY', '2025-03-26 00:03:04', '2025-04-06 09:37:57', 0, '2022-01-23', '076342123', 'Hải Phòng', NULL, 0),
(5, 'Phan Công Lý', 'a123@gmail.com', NULL, '$2y$12$UNAgYzE4oRwUZgTDlxW3MewBdkUWk2PEPeHe7fXbXofjiKm3I9bei', 'xQKx5s2nZWPo2nCfHA2abn4dza6ZjKjnjrs7L9yogGP6cl3D6HAtjbJDzw6H', '2025-03-26 03:18:58', '2025-04-01 22:28:10', 1, '2025-03-18', '1141421', 'Hà Nội', NULL, 0),
(21, 'a', 'anhlycuckeo123@gmail.com', NULL, '$2y$12$17pc4h55ZiUn6O6Tit1kGe9JOt6/qOVQ2rEX4WUzUAuhMoc0NUQsa', NULL, '2025-04-06 09:27:18', '2025-04-06 23:02:16', 1, NULL, '1141421', NULL, '2025-04-06 22:24:45', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vattu`
--

DROP TABLE IF EXISTS `vattu`;
CREATE TABLE IF NOT EXISTS `vattu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `TenVT` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `LaTP` tinyint(1) DEFAULT NULL,
  `donvitinh_id` int DEFAULT NULL,
  `KichThuoc` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `MauSac` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `DacDiem` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaVT` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
  `Mota` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaViTri` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `vitri`
--

INSERT INTO `vitri` (`id`, `kho_id`, `Mota`, `created_at`, `updated_at`) VALUES
(1, 1, 'A1', '2025-03-27 14:46:32', '2025-03-27 14:46:32'),
(2, 1, 'A2', '2025-03-27 14:46:38', '2025-03-27 14:46:40'),
(3, 2, 'B1', '2025-03-27 14:46:48', '2025-03-27 14:46:48'),
(4, 2, 'B2', '2025-03-27 14:46:53', '2025-03-27 14:46:53'),
(5, 3, 'C1', '2025-03-27 14:49:18', '2025-03-27 14:49:18'),
(6, 3, 'C2', '2025-03-27 14:49:23', '2025-03-27 14:49:23'),
(7, 1, 'A3', '2025-03-27 16:26:52', '2025-03-27 16:27:01'),
(8, 2, 'B3', '2025-03-27 16:27:14', '2025-03-27 16:27:14'),
(9, 3, 'C3', '2025-03-27 16:27:21', '2025-03-27 16:27:21');

-- --------------------------------------------------------

--
-- Table structure for table `xetai`
--

DROP TABLE IF EXISTS `xetai`;
CREATE TABLE IF NOT EXISTS `xetai` (
  `id` int NOT NULL AUTO_INCREMENT,
  `BienSo` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `TenXe` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `HangXe` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `TaiTrong` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `MauSac` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `GhiChu` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `TrangThai` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaXe` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `exports`
--
ALTER TABLE `exports`
  ADD CONSTRAINT `exports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `failed_import_rows`
--
ALTER TABLE `failed_import_rows`
  ADD CONSTRAINT `failed_import_rows_import_id_foreign` FOREIGN KEY (`import_id`) REFERENCES `imports` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `imports`
--
ALTER TABLE `imports`
  ADD CONSTRAINT `imports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

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
