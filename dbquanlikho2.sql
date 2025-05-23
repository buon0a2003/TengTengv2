-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 25, 2025 at 02:56 AM
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
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:118:{i:0;a:3:{s:1:\"a\";i:235;s:1:\"b\";s:27:\"view_chi::tiet::phieu::nhap\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:236;s:1:\"b\";s:31:\"view_any_chi::tiet::phieu::nhap\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:237;s:1:\"b\";s:29:\"create_chi::tiet::phieu::nhap\";s:1:\"c\";s:3:\"web\";}i:3;a:3:{s:1:\"a\";i:238;s:1:\"b\";s:29:\"update_chi::tiet::phieu::nhap\";s:1:\"c\";s:3:\"web\";}i:4;a:3:{s:1:\"a\";i:239;s:1:\"b\";s:29:\"delete_chi::tiet::phieu::nhap\";s:1:\"c\";s:3:\"web\";}i:5;a:3:{s:1:\"a\";i:240;s:1:\"b\";s:33:\"delete_any_chi::tiet::phieu::nhap\";s:1:\"c\";s:3:\"web\";}i:6;a:4:{s:1:\"a\";i:241;s:1:\"b\";s:14:\"view_donvitinh\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:7;a:4:{s:1:\"a\";i:242;s:1:\"b\";s:18:\"view_any_donvitinh\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:8;a:4:{s:1:\"a\";i:243;s:1:\"b\";s:16:\"create_donvitinh\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:9;a:4:{s:1:\"a\";i:244;s:1:\"b\";s:16:\"update_donvitinh\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:10;a:4:{s:1:\"a\";i:245;s:1:\"b\";s:16:\"delete_donvitinh\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:6;}}i:11;a:4:{s:1:\"a\";i:246;s:1:\"b\";s:20:\"delete_any_donvitinh\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:6;}}i:12;a:4:{s:1:\"a\";i:247;s:1:\"b\";s:16:\"view_khach::hang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:13;a:4:{s:1:\"a\";i:248;s:1:\"b\";s:20:\"view_any_khach::hang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:14;a:4:{s:1:\"a\";i:249;s:1:\"b\";s:18:\"create_khach::hang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:15;a:4:{s:1:\"a\";i:250;s:1:\"b\";s:18:\"update_khach::hang\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:16;a:3:{s:1:\"a\";i:251;s:1:\"b\";s:18:\"delete_khach::hang\";s:1:\"c\";s:3:\"web\";}i:17;a:3:{s:1:\"a\";i:252;s:1:\"b\";s:22:\"delete_any_khach::hang\";s:1:\"c\";s:3:\"web\";}i:18;a:4:{s:1:\"a\";i:253;s:1:\"b\";s:8:\"view_kho\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:19;a:4:{s:1:\"a\";i:254;s:1:\"b\";s:12:\"view_any_kho\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:20;a:4:{s:1:\"a\";i:255;s:1:\"b\";s:10:\"create_kho\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:21;a:4:{s:1:\"a\";i:256;s:1:\"b\";s:10:\"update_kho\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:22;a:3:{s:1:\"a\";i:257;s:1:\"b\";s:10:\"delete_kho\";s:1:\"c\";s:3:\"web\";}i:23;a:3:{s:1:\"a\";i:258;s:1:\"b\";s:14:\"delete_any_kho\";s:1:\"c\";s:3:\"web\";}i:24;a:4:{s:1:\"a\";i:259;s:1:\"b\";s:19:\"view_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:25;a:4:{s:1:\"a\";i:260;s:1:\"b\";s:23:\"view_any_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:26;a:4:{s:1:\"a\";i:261;s:1:\"b\";s:21:\"create_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:27;a:4:{s:1:\"a\";i:262;s:1:\"b\";s:21:\"update_nha::cung::cap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:28;a:3:{s:1:\"a\";i:263;s:1:\"b\";s:21:\"delete_nha::cung::cap\";s:1:\"c\";s:3:\"web\";}i:29;a:3:{s:1:\"a\";i:264;s:1:\"b\";s:25:\"delete_any_nha::cung::cap\";s:1:\"c\";s:3:\"web\";}i:30;a:4:{s:1:\"a\";i:265;s:1:\"b\";s:16:\"view_phieu::nhap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:4;i:1;i:6;i:2;i:8;}}i:31;a:4:{s:1:\"a\";i:266;s:1:\"b\";s:20:\"view_any_phieu::nhap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:4;i:1;i:6;i:2;i:8;}}i:32;a:4:{s:1:\"a\";i:267;s:1:\"b\";s:18:\"create_phieu::nhap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:4;i:1;i:6;i:2;i:8;}}i:33;a:4:{s:1:\"a\";i:268;s:1:\"b\";s:18:\"update_phieu::nhap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:4;i:1;i:6;i:2;i:8;}}i:34;a:4:{s:1:\"a\";i:269;s:1:\"b\";s:18:\"delete_phieu::nhap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:4;i:1;i:6;i:2;i:8;}}i:35;a:4:{s:1:\"a\";i:270;s:1:\"b\";s:22:\"delete_any_phieu::nhap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:4;i:1;i:6;i:2;i:8;}}i:36;a:4:{s:1:\"a\";i:271;s:1:\"b\";s:9:\"view_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:37;a:4:{s:1:\"a\";i:272;s:1:\"b\";s:13:\"view_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:38;a:4:{s:1:\"a\";i:273;s:1:\"b\";s:11:\"create_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:39;a:4:{s:1:\"a\";i:274;s:1:\"b\";s:11:\"update_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:40;a:4:{s:1:\"a\";i:275;s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:41;a:4:{s:1:\"a\";i:276;s:1:\"b\";s:15:\"delete_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:42;a:4:{s:1:\"a\";i:277;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:43;a:4:{s:1:\"a\";i:278;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:44;a:4:{s:1:\"a\";i:279;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:45;a:4:{s:1:\"a\";i:280;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:46;a:4:{s:1:\"a\";i:281;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:47;a:4:{s:1:\"a\";i:282;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:48;a:4:{s:1:\"a\";i:283;s:1:\"b\";s:10:\"view_vattu\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:49;a:4:{s:1:\"a\";i:284;s:1:\"b\";s:14:\"view_any_vattu\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:50;a:4:{s:1:\"a\";i:285;s:1:\"b\";s:12:\"create_vattu\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:51;a:4:{s:1:\"a\";i:286;s:1:\"b\";s:12:\"update_vattu\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:52;a:3:{s:1:\"a\";i:287;s:1:\"b\";s:12:\"delete_vattu\";s:1:\"c\";s:3:\"web\";}i:53;a:3:{s:1:\"a\";i:288;s:1:\"b\";s:16:\"delete_any_vattu\";s:1:\"c\";s:3:\"web\";}i:54;a:3:{s:1:\"a\";i:289;s:1:\"b\";s:19:\"view_nha::cung::cap\";s:1:\"c\";s:4:\"nole\";}i:55;a:3:{s:1:\"a\";i:290;s:1:\"b\";s:23:\"view_any_nha::cung::cap\";s:1:\"c\";s:4:\"nole\";}i:56;a:3:{s:1:\"a\";i:291;s:1:\"b\";s:21:\"create_nha::cung::cap\";s:1:\"c\";s:4:\"nole\";}i:57;a:3:{s:1:\"a\";i:292;s:1:\"b\";s:21:\"update_nha::cung::cap\";s:1:\"c\";s:4:\"nole\";}i:58;a:4:{s:1:\"a\";i:293;s:1:\"b\";s:26:\"duyetphieunhap_phieu::nhap\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:4;i:1;i:6;i:2;i:8;}}i:59;a:4:{s:1:\"a\";i:294;s:1:\"b\";s:11:\"view_tonkho\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:60;a:4:{s:1:\"a\";i:295;s:1:\"b\";s:15:\"view_any_tonkho\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:61;a:4:{s:1:\"a\";i:296;s:1:\"b\";s:13:\"create_tonkho\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:62;a:4:{s:1:\"a\";i:297;s:1:\"b\";s:13:\"update_tonkho\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:63;a:4:{s:1:\"a\";i:298;s:1:\"b\";s:13:\"delete_tonkho\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:64;a:4:{s:1:\"a\";i:299;s:1:\"b\";s:17:\"delete_any_tonkho\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:6;}}i:65;a:4:{s:1:\"a\";i:300;s:1:\"b\";s:16:\"view_phieu::xuat\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:4;i:1;i:6;i:2;i:8;}}i:66;a:4:{s:1:\"a\";i:301;s:1:\"b\";s:20:\"view_any_phieu::xuat\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:4;i:1;i:6;i:2;i:8;}}i:67;a:4:{s:1:\"a\";i:302;s:1:\"b\";s:18:\"create_phieu::xuat\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:4;i:1;i:6;i:2;i:8;}}i:68;a:4:{s:1:\"a\";i:303;s:1:\"b\";s:18:\"update_phieu::xuat\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:4;i:1;i:6;i:2;i:8;}}i:69;a:4:{s:1:\"a\";i:304;s:1:\"b\";s:18:\"delete_phieu::xuat\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:4;i:1;i:6;i:2;i:8;}}i:70;a:4:{s:1:\"a\";i:305;s:1:\"b\";s:22:\"delete_any_phieu::xuat\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:4;i:1;i:6;i:2;i:8;}}i:71;a:4:{s:1:\"a\";i:306;s:1:\"b\";s:26:\"duyetphieuxuat_phieu::xuat\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:4;i:1;i:6;i:2;i:8;}}i:72;a:4:{s:1:\"a\";i:307;s:1:\"b\";s:17:\"view_custom::role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:73;a:4:{s:1:\"a\";i:308;s:1:\"b\";s:21:\"view_any_custom::role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:74;a:4:{s:1:\"a\";i:309;s:1:\"b\";s:19:\"create_custom::role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:75;a:4:{s:1:\"a\";i:310;s:1:\"b\";s:19:\"update_custom::role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:76;a:4:{s:1:\"a\";i:311;s:1:\"b\";s:19:\"delete_custom::role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:77;a:4:{s:1:\"a\";i:312;s:1:\"b\";s:23:\"delete_any_custom::role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:78;a:4:{s:1:\"a\";i:313;s:1:\"b\";s:10:\"view_taixe\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:79;a:4:{s:1:\"a\";i:314;s:1:\"b\";s:14:\"view_any_taixe\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:80;a:4:{s:1:\"a\";i:315;s:1:\"b\";s:12:\"create_taixe\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:81;a:4:{s:1:\"a\";i:316;s:1:\"b\";s:12:\"update_taixe\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:82;a:3:{s:1:\"a\";i:317;s:1:\"b\";s:12:\"delete_taixe\";s:1:\"c\";s:3:\"web\";}i:83;a:3:{s:1:\"a\";i:318;s:1:\"b\";s:16:\"delete_any_taixe\";s:1:\"c\";s:3:\"web\";}i:84;a:4:{s:1:\"a\";i:319;s:1:\"b\";s:23:\"view_phieu::van::chuyen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:85;a:4:{s:1:\"a\";i:320;s:1:\"b\";s:27:\"view_any_phieu::van::chuyen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:86;a:4:{s:1:\"a\";i:321;s:1:\"b\";s:25:\"create_phieu::van::chuyen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:87;a:4:{s:1:\"a\";i:322;s:1:\"b\";s:25:\"update_phieu::van::chuyen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:88;a:4:{s:1:\"a\";i:323;s:1:\"b\";s:25:\"delete_phieu::van::chuyen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:89;a:4:{s:1:\"a\";i:324;s:1:\"b\";s:29:\"delete_any_phieu::van::chuyen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:90;a:4:{s:1:\"a\";i:325;s:1:\"b\";s:12:\"view_xe::tai\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:91;a:4:{s:1:\"a\";i:326;s:1:\"b\";s:16:\"view_any_xe::tai\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:92;a:4:{s:1:\"a\";i:327;s:1:\"b\";s:14:\"create_xe::tai\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:93;a:4:{s:1:\"a\";i:328;s:1:\"b\";s:14:\"update_xe::tai\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:94;a:3:{s:1:\"a\";i:329;s:1:\"b\";s:14:\"delete_xe::tai\";s:1:\"c\";s:3:\"web\";}i:95;a:3:{s:1:\"a\";i:330;s:1:\"b\";s:18:\"delete_any_xe::tai\";s:1:\"c\";s:3:\"web\";}i:96;a:4:{s:1:\"a\";i:331;s:1:\"b\";s:15:\"page_ReportPage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:97;a:4:{s:1:\"a\";i:332;s:1:\"b\";s:15:\"view_nhan::vien\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:98;a:4:{s:1:\"a\";i:333;s:1:\"b\";s:19:\"view_any_nhan::vien\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:99;a:4:{s:1:\"a\";i:334;s:1:\"b\";s:17:\"create_nhan::vien\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:100;a:4:{s:1:\"a\";i:335;s:1:\"b\";s:17:\"update_nhan::vien\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:101;a:4:{s:1:\"a\";i:336;s:1:\"b\";s:18:\"view_phieu::su::co\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:102;a:4:{s:1:\"a\";i:337;s:1:\"b\";s:22:\"view_any_phieu::su::co\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:103;a:4:{s:1:\"a\";i:338;s:1:\"b\";s:20:\"create_phieu::su::co\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:104;a:4:{s:1:\"a\";i:339;s:1:\"b\";s:20:\"update_phieu::su::co\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:105;a:4:{s:1:\"a\";i:340;s:1:\"b\";s:20:\"delete_phieu::su::co\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:106;a:4:{s:1:\"a\";i:341;s:1:\"b\";s:24:\"delete_any_phieu::su::co\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:107;a:4:{s:1:\"a\";i:342;s:1:\"b\";s:20:\"page_XuatnhaptonPage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:108;a:4:{s:1:\"a\";i:343;s:1:\"b\";s:11:\"page_Themes\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:109;a:4:{s:1:\"a\";i:344;s:1:\"b\";s:24:\"view_phieu::dieu::chuyen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:110;a:4:{s:1:\"a\";i:345;s:1:\"b\";s:28:\"view_any_phieu::dieu::chuyen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:111;a:4:{s:1:\"a\";i:346;s:1:\"b\";s:26:\"create_phieu::dieu::chuyen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:112;a:4:{s:1:\"a\";i:347;s:1:\"b\";s:26:\"update_phieu::dieu::chuyen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:113;a:4:{s:1:\"a\";i:348;s:1:\"b\";s:26:\"delete_phieu::dieu::chuyen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:114;a:4:{s:1:\"a\";i:349;s:1:\"b\";s:30:\"delete_any_phieu::dieu::chuyen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:115;a:4:{s:1:\"a\";i:350;s:1:\"b\";s:40:\"duyetphieudieuchuyen_phieu::dieu::chuyen\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:4;}}i:116;a:4:{s:1:\"a\";i:351;s:1:\"b\";s:16:\"page_HanghuyPage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}i:117;a:4:{s:1:\"a\";i:352;s:1:\"b\";s:20:\"page_ThongkeSucoPage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:4;i:1;i:5;}}}s:5:\"roles\";a:4:{i:0;a:3:{s:1:\"a\";i:4;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:6;s:1:\"b\";s:16:\"Quản Lý Kho A\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:8;s:1:\"b\";s:16:\"Giám sát viên\";s:1:\"c\";s:3:\"web\";}i:3;a:3:{s:1:\"a\";i:5;s:1:\"b\";s:14:\"Người dùng\";s:1:\"c\";s:3:\"web\";}}}', 1748080546);

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
  `tonkho_id` int DEFAULT NULL,
  `SoLuong` decimal(10,2) DEFAULT NULL,
  `vitri_dich_id` int DEFAULT NULL,
  `GhiChu` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaCTPCk` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chitietphieudieuchuyen`
--

INSERT INTO `chitietphieudieuchuyen` (`id`, `phieudieuchuyen_id`, `vattu_id`, `tonkho_id`, `SoLuong`, `vitri_dich_id`, `GhiChu`, `created_at`, `updated_at`) VALUES
(1, 'PDC150525-001', 6, 17, 6.00, NULL, NULL, '2025-05-15 03:17:44', '2025-05-15 03:17:44'),
(2, 'PDC150525-001', 2, 11, 1.00, NULL, NULL, '2025-05-15 03:19:32', '2025-05-15 03:20:09'),
(3, 'PDC150525-002', 6, 19, 6.00, 6, NULL, '2025-05-15 06:47:07', '2025-05-15 06:47:07'),
(4, 'PDC150525-002', 2, 20, 1.00, 9, NULL, '2025-05-15 06:47:07', '2025-05-15 06:47:07');

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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chitietphieunhap`
--

INSERT INTO `chitietphieunhap` (`id`, `phieunhap_id`, `vattu_id`, `SoLuong`, `GhiChu`, `created_at`, `updated_at`, `vitri_id`) VALUES
(1, 'pn1', 2, 12.00, 'kk', '2025-03-27 08:09:26', '2025-03-27 08:09:45', 3),
(2, 'pn1', 1, 123.00, NULL, '2025-03-27 08:32:25', '2025-03-27 09:09:54', 4),
(5, 'pn1', 1, 123.00, NULL, '2025-03-27 10:13:04', '2025-03-27 10:18:11', 4),
(7, 'pn3', 2, 3.00, NULL, '2025-03-29 02:06:47', '2025-03-29 02:06:47', NULL),
(10, 'pn5', 2, 123.00, NULL, '2025-04-01 03:06:54', '2025-04-01 03:07:11', 9),
(11, 'pn5', 2, 345.00, NULL, '2025-04-01 03:06:54', '2025-04-01 03:07:15', 9),
(21, 'PN130525', 1, 26.00, NULL, '2025-05-13 00:28:28', '2025-05-13 00:31:35', 2),
(22, 'PN130525', 7, 6.00, NULL, '2025-05-13 00:28:50', '2025-05-13 00:31:44', 7),
(23, 'PN130525', 1, 1.00, NULL, '2025-05-13 00:36:48', '2025-05-13 00:37:09', 1),
(24, 'PN210525-001', 4, 1.00, 'hihi', '2025-05-21 00:29:08', '2025-05-21 00:29:08', NULL),
(25, 'PN230525-001', 6, 10.00, NULL, '2025-05-23 01:09:42', '2025-05-23 01:09:42', NULL),
(26, 'PN230525-002', 2, 123.00, NULL, '2025-05-23 01:35:36', '2025-05-23 01:35:36', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chitietphieuxuat`
--

INSERT INTO `chitietphieuxuat` (`id`, `phieuxuat_id`, `vattu_id`, `tonkho_id`, `SoLuong`, `GhiChu`, `created_at`, `updated_at`) VALUES
(3, 'px2', 2, 11, 230.00, NULL, '2025-04-01 16:41:37', '2025-04-01 16:41:37'),
(4, 'pn99', 1, 9, 123.00, NULL, '2025-04-11 07:43:36', '2025-04-11 07:43:36'),
(6, 'px3', 6, 17, 6.00, NULL, '2025-05-13 08:42:18', '2025-05-13 08:42:25'),
(7, 'PX150525', 2, 8, 0.00, NULL, '2025-05-15 01:31:19', '2025-05-15 01:31:19'),
(8, 'PX190525-001', 2, 20, 0.00, NULL, '2025-05-19 07:56:55', '2025-05-19 07:56:55');

-- --------------------------------------------------------

--
-- Table structure for table `donvitinh`
--

DROP TABLE IF EXISTS `donvitinh`;
CREATE TABLE IF NOT EXISTS `donvitinh` (
  `id` int NOT NULL AUTO_INCREMENT,
  `TenDVT` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `Mota` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `low` int UNSIGNED DEFAULT NULL,
  `very_low` int UNSIGNED DEFAULT NULL,
  `critical` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT (now()),
  `updated_at` timestamp NULL DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaDVT` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `donvitinh`
--

INSERT INTO `donvitinh` (`id`, `TenDVT`, `Mota`, `low`, `very_low`, `critical`, `created_at`, `updated_at`) VALUES
(1, 'kg', 'kilogam', 50, 20, 10, '2025-03-26 20:42:14', '2025-04-28 07:40:21'),
(2, 'đôi', 'đôi', 1000, 500, 100, '2025-03-26 20:42:38', '2025-04-28 07:40:36'),
(3, 'chiếc', 'chiếc', 2000, 1000, 200, '2025-03-26 20:42:46', '2025-04-28 07:40:49');

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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(17, '2025-04-04 17:56:09', 'local', 'export-17-nhacungcaps', 'App\\Filament\\Exports\\NhacungcapExporter', 3, 3, 3, 1, '2025-04-04 17:56:09', '2025-04-04 17:56:09'),
(18, '2025-04-18 00:53:03', 'local', 'export-18-donvitinhs', 'App\\Filament\\Exports\\DonvitinhExporter', 3, 3, 3, 1, '2025-04-18 00:53:03', '2025-04-18 00:53:03'),
(19, '2025-04-20 20:24:50', 'local', 'export-19-vattus', 'App\\Filament\\Exports\\VattuExporter', 2, 2, 2, 1, '2025-04-20 20:24:49', '2025-04-20 20:24:50'),
(20, '2025-04-21 02:32:57', 'local', 'export-20-tonkhos', 'App\\Filament\\Exports\\TonkhoExporter', 4, 4, 4, 1, '2025-04-21 02:32:56', '2025-04-21 02:32:57'),
(21, '2025-04-28 01:05:48', 'local', 'export-21-tonkhos', 'App\\Filament\\Exports\\TonkhoExporter', 4, 4, 4, 1, '2025-04-28 01:05:48', '2025-04-28 01:05:48'),
(22, '2025-04-29 03:15:25', 'local', 'export-22-vattus', 'App\\Filament\\Exports\\VattuExporter', 4, 4, 4, 1, '2025-04-29 03:15:25', '2025-04-29 03:15:25'),
(23, '2025-05-12 20:19:10', 'local', 'export-23-vattus', 'App\\Filament\\Exports\\VattuExporter', 4, 4, 4, 1, '2025-05-12 20:19:10', '2025-05-12 20:19:10'),
(24, '2025-05-12 20:35:58', 'local', 'export-24-phieunhaps', 'App\\Filament\\Exports\\PhieunhapExporter', 5, 5, 5, 1, '2025-05-12 20:35:58', '2025-05-12 20:35:58'),
(25, '2025-05-12 20:40:08', 'local', 'export-25-phieunhaps', 'App\\Filament\\Exports\\PhieunhapExporter', 5, 5, 5, 1, '2025-05-12 20:40:08', '2025-05-12 20:40:08'),
(26, '2025-05-12 20:44:38', 'local', 'export-26-xetais', 'App\\Filament\\Exports\\XetaiExporter', 2, 2, 2, 1, '2025-05-12 20:44:38', '2025-05-12 20:44:38'),
(27, '2025-05-12 20:46:37', 'local', 'export-27-taixes', 'App\\Filament\\Exports\\TaixeExporter', 1, 1, 1, 1, '2025-05-12 20:46:37', '2025-05-12 20:46:37'),
(28, '2025-05-12 20:47:44', 'local', 'export-28-khachhangs', 'App\\Filament\\Exports\\KhachhangExporter', 5, 5, 5, 1, '2025-05-12 20:47:44', '2025-05-12 20:47:44'),
(29, '2025-05-12 20:48:07', 'local', 'export-29-khachhangs', 'App\\Filament\\Exports\\KhachhangExporter', 5, 5, 5, 1, '2025-05-12 20:48:07', '2025-05-12 20:48:07'),
(30, '2025-05-12 20:52:30', 'local', 'export-30-xetais', 'App\\Filament\\Exports\\XetaiExporter', 2, 2, 2, 1, '2025-05-12 20:52:30', '2025-05-12 20:52:30'),
(31, '2025-05-12 20:53:26', 'local', 'export-31-nhanviens', 'App\\Filament\\Exports\\NhanvienExporter', 4, 4, 4, 1, '2025-05-12 20:53:26', '2025-05-12 20:53:26'),
(32, '2025-05-15 00:12:41', 'local', 'export-32-phieudieuchuyens', 'App\\Filament\\Exports\\PhieuDieuChuyenExporter', 2, 2, 2, 1, '2025-05-15 00:12:40', '2025-05-15 00:12:41'),
(33, '2025-05-23 03:28:48', 'local', 'export-33-phieuvanchuyens', 'App\\Filament\\Exports\\PhieuvanchuyenExporter', 2, 2, 2, 1, '2025-05-23 03:28:48', '2025-05-23 03:28:48');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `imports`
--

INSERT INTO `imports` (`id`, `completed_at`, `file_name`, `file_path`, `importer`, `processed_rows`, `total_rows`, `successful_rows`, `user_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 'export-20-tonkhos.csv', 'E:\\Web_vcl\\TengTengv2\\storage\\app/private\\livewire-tmp/LOjBpG4Jhbe6Rcxnf4WMxcY5VYlmTC-metaZXhwb3J0LTIwLXRvbmtob3MuY3N2-.csv', 'App\\Filament\\Imports\\TonkhoImporter', 0, 1, 0, 1, '2025-04-21 02:41:00', '2025-04-21 02:41:00'),
(2, '2025-04-21 02:41:31', 'export-20-tonkhos.csv', 'E:\\Web_vcl\\TengTengv2\\storage\\app/private\\livewire-tmp/LOjBpG4Jhbe6Rcxnf4WMxcY5VYlmTC-metaZXhwb3J0LTIwLXRvbmtob3MuY3N2-.csv', 'App\\Filament\\Imports\\TonkhoImporter', 1, 1, 1, 1, '2025-04-21 02:41:31', '2025-04-21 02:41:31'),
(3, '2025-04-21 02:43:57', 'export-20-tonkhos.csv', 'E:\\Web_vcl\\TengTengv2\\storage\\app/private\\livewire-tmp/eCRew9yzX1GMJYVuh3BMwoggFCMYeC-metaZXhwb3J0LTIwLXRvbmtob3MuY3N2-.csv', 'App\\Filament\\Imports\\TonkhoImporter', 1, 1, 1, 1, '2025-04-21 02:43:57', '2025-04-21 02:43:57'),
(4, '2025-04-24 00:09:39', 'vattu-importer-example.csv', 'E:\\Web_vcl\\TengTengv2\\storage\\app/private\\livewire-tmp/rMIuvZaYDcuwYYHISGwkIElC9sS22Y-metadmF0dHUtaW1wb3J0ZXItZXhhbXBsZS5jc3Y=-.csv', 'App\\Filament\\Imports\\VattuImporter', 14, 14, 14, 1, '2025-04-24 00:09:39', '2025-04-24 00:09:39'),
(5, '2025-04-24 00:23:56', 'vattu-importer-example.csv', 'E:\\Web_vcl\\TengTengv2\\storage\\app/private\\livewire-tmp/aWVWJkWvTKccZMLW1pUSoTTHjsLyD7-metadmF0dHUtaW1wb3J0ZXItZXhhbXBsZS5jc3Y=-.csv', 'App\\Filament\\Imports\\VattuImporter', 14, 14, 14, 1, '2025-04-24 00:23:56', '2025-04-24 00:23:56');

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
('9ec01711-3ca3-46ab-a53e-e2eb74b6b2ad', '', 1, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:3606:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:4:{s:9:\"columnMap\";a:7:{s:4:\"MaVT\";s:4:\"MaVT\";s:5:\"TenVT\";s:5:\"TenVT\";s:4:\"LaTP\";s:4:\"LaTP\";s:9:\"donvitinh\";s:9:\"donvitinh\";s:9:\"KichThuoc\";s:9:\"KichThuoc\";s:6:\"MauSac\";s:6:\"MauSac\";s:7:\"DacDiem\";s:7:\"DacDiem\";}s:6:\"import\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Imports\\Models\\Import\";s:2:\"id\";i:4;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:13:\"jobConnection\";N;s:7:\"options\";a:0:{}}s:8:\"function\";s:2925:\"function () use ($columnMap, $import, $jobConnection, $options) {\n                    $import->touch(\'completed_at\');\n\n                    event(new \\Filament\\Actions\\Imports\\Events\\ImportCompleted($import, $columnMap, $options));\n\n                    if (! $import->user instanceof \\Illuminate\\Contracts\\Auth\\Authenticatable) {\n                        return;\n                    }\n\n                    $failedRowsCount = $import->getFailedRowsCount();\n\n                    \\Filament\\Notifications\\Notification::make()\n                        ->title($import->importer::getCompletedNotificationTitle($import))\n                        ->body($import->importer::getCompletedNotificationBody($import))\n                        ->when(\n                            ! $failedRowsCount,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->success(),\n                        )\n                        ->when(\n                            $failedRowsCount && ($failedRowsCount < $import->total_rows),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->warning(),\n                        )\n                        ->when(\n                            $failedRowsCount === $import->total_rows,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->danger(),\n                        )\n                        ->when(\n                            $failedRowsCount,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->actions([\n                                \\Filament\\Notifications\\Actions\\Action::make(\'downloadFailedRowsCsv\')\n                                    ->label(trans_choice(\'filament-actions::import.notifications.completed.actions.download_failed_rows_csv.label\', $failedRowsCount, [\n                                        \'count\' => \\Illuminate\\Support\\Number::format($failedRowsCount),\n                                    ]))\n                                    ->color(\'danger\')\n                                    ->url(route(\'filament.imports.failed-rows.download\', [\'import\' => $import], absolute: false), shouldOpenInNewTab: true)\n                                    ->markAsRead(),\n                            ]),\n                        )\n                        ->when(\n                            ($jobConnection === \'sync\') ||\n                                (blank($jobConnection) && (config(\'queue.default\') === \'sync\')),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification\n                                ->persistent()\n                                ->send(),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->sendToDatabase($import->user, isEventDispatched: true),\n                        );\n                }\";s:5:\"scope\";s:29:\"Filament\\Actions\\ImportAction\";s:4:\"this\";N;s:4:\"self\";s:32:\"000000000000087c0000000000000000\";}\";s:4:\"hash\";s:44:\"2w4uhF9XKet3aN3T4kYFgyFUx+am3L2lSf9TpJnHCBk=\";}}}}', NULL, 1745478579, 1745478579),
('9ec01c2e-0d0a-4707-9d9a-9e1076f2fd4e', '', 1, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:3606:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:4:{s:9:\"columnMap\";a:7:{s:4:\"MaVT\";s:4:\"MaVT\";s:5:\"TenVT\";s:5:\"TenVT\";s:4:\"LaTP\";s:4:\"LaTP\";s:9:\"donvitinh\";s:9:\"donvitinh\";s:9:\"KichThuoc\";s:9:\"KichThuoc\";s:6:\"MauSac\";s:6:\"MauSac\";s:7:\"DacDiem\";s:7:\"DacDiem\";}s:6:\"import\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Imports\\Models\\Import\";s:2:\"id\";i:5;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:13:\"jobConnection\";N;s:7:\"options\";a:0:{}}s:8:\"function\";s:2925:\"function () use ($columnMap, $import, $jobConnection, $options) {\n                    $import->touch(\'completed_at\');\n\n                    event(new \\Filament\\Actions\\Imports\\Events\\ImportCompleted($import, $columnMap, $options));\n\n                    if (! $import->user instanceof \\Illuminate\\Contracts\\Auth\\Authenticatable) {\n                        return;\n                    }\n\n                    $failedRowsCount = $import->getFailedRowsCount();\n\n                    \\Filament\\Notifications\\Notification::make()\n                        ->title($import->importer::getCompletedNotificationTitle($import))\n                        ->body($import->importer::getCompletedNotificationBody($import))\n                        ->when(\n                            ! $failedRowsCount,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->success(),\n                        )\n                        ->when(\n                            $failedRowsCount && ($failedRowsCount < $import->total_rows),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->warning(),\n                        )\n                        ->when(\n                            $failedRowsCount === $import->total_rows,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->danger(),\n                        )\n                        ->when(\n                            $failedRowsCount,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->actions([\n                                \\Filament\\Notifications\\Actions\\Action::make(\'downloadFailedRowsCsv\')\n                                    ->label(trans_choice(\'filament-actions::import.notifications.completed.actions.download_failed_rows_csv.label\', $failedRowsCount, [\n                                        \'count\' => \\Illuminate\\Support\\Number::format($failedRowsCount),\n                                    ]))\n                                    ->color(\'danger\')\n                                    ->url(route(\'filament.imports.failed-rows.download\', [\'import\' => $import], absolute: false), shouldOpenInNewTab: true)\n                                    ->markAsRead(),\n                            ]),\n                        )\n                        ->when(\n                            ($jobConnection === \'sync\') ||\n                                (blank($jobConnection) && (config(\'queue.default\') === \'sync\')),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification\n                                ->persistent()\n                                ->send(),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->sendToDatabase($import->user, isEventDispatched: true),\n                        );\n                }\";s:5:\"scope\";s:29:\"Filament\\Actions\\ImportAction\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000008780000000000000000\";}\";s:4:\"hash\";s:44:\"M+u/cAo+CyPr9l/+bbZ4RqYmWFqJ0+WddRW5l+qbN6w=\";}}}}', NULL, 1745479436, 1745479436),
('9ec83715-9bfa-497a-b911-946017f48111', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:5520:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":7:{s:11:\"\0*\0exporter\";O:35:\"App\\Filament\\Exports\\TonkhoExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-04-28 08:05:48\";s:10:\"created_at\";s:19:\"2025-04-28 08:05:48\";s:2:\"id\";i:21;s:9:\"file_name\";s:17:\"export-21-tonkhos\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-04-28 08:05:48\";s:10:\"created_at\";s:19:\"2025-04-28 08:05:48\";s:2:\"id\";i:21;s:9:\"file_name\";s:17:\"export-21-tonkhos\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:17:\"export-21-tonkhos\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:5:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:22:\"vattu.donvitinh.TenDVT\";s:16:\"Đơn vị tính\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:21;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:5:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:22:\"vattu.donvitinh.TenDVT\";s:16:\"Đơn vị tính\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0formats\";a:2:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";i:1;E:48:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Xlsx\";}s:10:\"\0*\0options\";a:0:{}s:7:\"chained\";a:1:{i:0;s:2411:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:35:\"App\\Filament\\Exports\\TonkhoExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-04-28 08:05:48\";s:10:\"created_at\";s:19:\"2025-04-28 08:05:48\";s:2:\"id\";i:21;s:9:\"file_name\";s:17:\"export-21-tonkhos\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:35:\"App\\Filament\\Exports\\TonkhoExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-04-28 08:05:48\";s:10:\"created_at\";s:19:\"2025-04-28 08:05:48\";s:2:\"id\";i:21;s:9:\"file_name\";s:17:\"export-21-tonkhos\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:17:\"export-21-tonkhos\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:5:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:22:\"vattu.donvitinh.TenDVT\";s:16:\"Đơn vị tính\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:21;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:5:{s:10:\"kho.TenKho\";s:8:\"Tên kho\";s:11:\"vattu.TenVT\";s:14:\"Tên vật tư\";s:22:\"vattu.donvitinh.TenDVT\";s:16:\"Đơn vị tính\";s:7:\"SoLuong\";s:13:\"Số lượng\";s:10:\"vitri.Mota\";s:9:\"vị trí\";}s:10:\"\0*\0options\";a:0:{}}\";}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"0000000000000d450000000000000000\";}\";s:4:\"hash\";s:44:\"2pB6m2K4+nn+5UjckZt08e7T7h6jWxzAAzHyD2RAfOo=\";}}}}', NULL, 1745827548, 1745827548),
('9eca686c-6667-4fa2-9402-6f7ac3f25001', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:5728:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":7:{s:11:\"\0*\0exporter\";O:34:\"App\\Filament\\Exports\\VattuExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\VattuExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-04-29 10:15:25\";s:10:\"created_at\";s:19:\"2025-04-29 10:15:25\";s:2:\"id\";i:22;s:9:\"file_name\";s:16:\"export-22-vattus\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\VattuExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-04-29 10:15:25\";s:10:\"created_at\";s:19:\"2025-04-29 10:15:25\";s:2:\"id\";i:22;s:9:\"file_name\";s:16:\"export-22-vattus\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:16:\"export-22-vattus\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:7:{s:2:\"id\";s:13:\"Mã vật tư\";s:5:\"TenVT\";s:14:\"Tên vật tư\";s:16:\"donvitinh.TenDVT\";s:16:\"Đơn vị tính\";s:9:\"KichThuoc\";s:14:\"Kích thước\";s:6:\"MauSac\";s:10:\"Màu sắc\";s:7:\"DacDiem\";s:13:\"Dặc điểm\";s:4:\"LaTP\";s:17:\"Là thành phẩm\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:22;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:7:{s:2:\"id\";s:13:\"Mã vật tư\";s:5:\"TenVT\";s:14:\"Tên vật tư\";s:16:\"donvitinh.TenDVT\";s:16:\"Đơn vị tính\";s:9:\"KichThuoc\";s:14:\"Kích thước\";s:6:\"MauSac\";s:10:\"Màu sắc\";s:7:\"DacDiem\";s:13:\"Dặc điểm\";s:4:\"LaTP\";s:17:\"Là thành phẩm\";}s:10:\"\0*\0formats\";a:2:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";i:1;E:48:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Xlsx\";}s:10:\"\0*\0options\";a:0:{}s:7:\"chained\";a:1:{i:0;s:2515:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:34:\"App\\Filament\\Exports\\VattuExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\VattuExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-04-29 10:15:25\";s:10:\"created_at\";s:19:\"2025-04-29 10:15:25\";s:2:\"id\";i:22;s:9:\"file_name\";s:16:\"export-22-vattus\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\VattuExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-04-29 10:15:25\";s:10:\"created_at\";s:19:\"2025-04-29 10:15:25\";s:2:\"id\";i:22;s:9:\"file_name\";s:16:\"export-22-vattus\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:16:\"export-22-vattus\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:7:{s:2:\"id\";s:13:\"Mã vật tư\";s:5:\"TenVT\";s:14:\"Tên vật tư\";s:16:\"donvitinh.TenDVT\";s:16:\"Đơn vị tính\";s:9:\"KichThuoc\";s:14:\"Kích thước\";s:6:\"MauSac\";s:10:\"Màu sắc\";s:7:\"DacDiem\";s:13:\"Dặc điểm\";s:4:\"LaTP\";s:17:\"Là thành phẩm\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:22;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:7:{s:2:\"id\";s:13:\"Mã vật tư\";s:5:\"TenVT\";s:14:\"Tên vật tư\";s:16:\"donvitinh.TenDVT\";s:16:\"Đơn vị tính\";s:9:\"KichThuoc\";s:14:\"Kích thước\";s:6:\"MauSac\";s:10:\"Màu sắc\";s:7:\"DacDiem\";s:13:\"Dặc điểm\";s:4:\"LaTP\";s:17:\"Là thành phẩm\";}s:10:\"\0*\0options\";a:0:{}}\";}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"0000000000000e320000000000000000\";}\";s:4:\"hash\";s:44:\"DAQ/29z0vA/uCn2Z3xQcveCK6HMvkd4zuT39mE9M040=\";}}}}', NULL, 1745921725, 1745921725),
('9ee5fd57-1dad-4116-bc3c-09a54f44d482', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:5728:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":7:{s:11:\"\0*\0exporter\";O:34:\"App\\Filament\\Exports\\VattuExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\VattuExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:19:10\";s:10:\"created_at\";s:19:\"2025-05-13 03:19:10\";s:2:\"id\";i:23;s:9:\"file_name\";s:16:\"export-23-vattus\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\VattuExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:19:10\";s:10:\"created_at\";s:19:\"2025-05-13 03:19:10\";s:2:\"id\";i:23;s:9:\"file_name\";s:16:\"export-23-vattus\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:16:\"export-23-vattus\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:7:{s:2:\"id\";s:13:\"Mã vật tư\";s:5:\"TenVT\";s:14:\"Tên vật tư\";s:16:\"donvitinh.TenDVT\";s:16:\"Đơn vị tính\";s:9:\"KichThuoc\";s:14:\"Kích thước\";s:6:\"MauSac\";s:10:\"Màu sắc\";s:7:\"DacDiem\";s:13:\"Dặc điểm\";s:4:\"LaTP\";s:17:\"Là thành phẩm\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:23;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:7:{s:2:\"id\";s:13:\"Mã vật tư\";s:5:\"TenVT\";s:14:\"Tên vật tư\";s:16:\"donvitinh.TenDVT\";s:16:\"Đơn vị tính\";s:9:\"KichThuoc\";s:14:\"Kích thước\";s:6:\"MauSac\";s:10:\"Màu sắc\";s:7:\"DacDiem\";s:13:\"Dặc điểm\";s:4:\"LaTP\";s:17:\"Là thành phẩm\";}s:10:\"\0*\0formats\";a:2:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";i:1;E:48:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Xlsx\";}s:10:\"\0*\0options\";a:0:{}s:7:\"chained\";a:1:{i:0;s:2515:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:34:\"App\\Filament\\Exports\\VattuExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\VattuExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:19:10\";s:10:\"created_at\";s:19:\"2025-05-13 03:19:10\";s:2:\"id\";i:23;s:9:\"file_name\";s:16:\"export-23-vattus\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\VattuExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:19:10\";s:10:\"created_at\";s:19:\"2025-05-13 03:19:10\";s:2:\"id\";i:23;s:9:\"file_name\";s:16:\"export-23-vattus\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:16:\"export-23-vattus\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:7:{s:2:\"id\";s:13:\"Mã vật tư\";s:5:\"TenVT\";s:14:\"Tên vật tư\";s:16:\"donvitinh.TenDVT\";s:16:\"Đơn vị tính\";s:9:\"KichThuoc\";s:14:\"Kích thước\";s:6:\"MauSac\";s:10:\"Màu sắc\";s:7:\"DacDiem\";s:13:\"Dặc điểm\";s:4:\"LaTP\";s:17:\"Là thành phẩm\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:23;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:7:{s:2:\"id\";s:13:\"Mã vật tư\";s:5:\"TenVT\";s:14:\"Tên vật tư\";s:16:\"donvitinh.TenDVT\";s:16:\"Đơn vị tính\";s:9:\"KichThuoc\";s:14:\"Kích thước\";s:6:\"MauSac\";s:10:\"Màu sắc\";s:7:\"DacDiem\";s:13:\"Dặc điểm\";s:4:\"LaTP\";s:17:\"Là thành phẩm\";}s:10:\"\0*\0options\";a:0:{}}\";}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"0000000000000ed50000000000000000\";}\";s:4:\"hash\";s:44:\"H02pn3lqSHzXjROijSDQBN5UiuOd8HWedLOiWzM+fac=\";}}}}', NULL, 1747106350, 1747106350),
('9ee60359-3d21-4add-bc24-7dc0a57ef588', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:6188:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":7:{s:11:\"\0*\0exporter\";O:38:\"App\\Filament\\Exports\\PhieunhapExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:38:\"App\\Filament\\Exports\\PhieunhapExporter\";s:10:\"total_rows\";i:5;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:35:58\";s:10:\"created_at\";s:19:\"2025-05-13 03:35:58\";s:2:\"id\";i:24;s:9:\"file_name\";s:20:\"export-24-phieunhaps\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:38:\"App\\Filament\\Exports\\PhieunhapExporter\";s:10:\"total_rows\";i:5;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:35:58\";s:10:\"created_at\";s:19:\"2025-05-13 03:35:58\";s:2:\"id\";i:24;s:9:\"file_name\";s:20:\"export-24-phieunhaps\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:20:\"export-24-phieunhaps\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:10:{s:2:\"id\";s:18:\"Mã phiếu nhập\";s:8:\"NgayNhap\";s:12:\"Ngày nhập\";s:9:\"user.name\";s:14:\"Người tạo\";s:17:\"nhacungcap.TenNCC\";s:15:\"Nhà cung cấp\";s:10:\"kho.TenKho\";s:3:\"Kho\";s:4:\"LyDo\";s:6:\"Lý do\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:9:\"TrangThai\";s:13:\"Trạng thái\";s:10:\"created_at\";s:11:\"Ngày tạo\";s:10:\"updated_at\";s:18:\"Ngày cập nhật\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:24;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:10:{s:2:\"id\";s:18:\"Mã phiếu nhập\";s:8:\"NgayNhap\";s:12:\"Ngày nhập\";s:9:\"user.name\";s:14:\"Người tạo\";s:17:\"nhacungcap.TenNCC\";s:15:\"Nhà cung cấp\";s:10:\"kho.TenKho\";s:3:\"Kho\";s:4:\"LyDo\";s:6:\"Lý do\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:9:\"TrangThai\";s:13:\"Trạng thái\";s:10:\"created_at\";s:11:\"Ngày tạo\";s:10:\"updated_at\";s:18:\"Ngày cập nhật\";}s:10:\"\0*\0formats\";a:2:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";i:1;E:48:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Xlsx\";}s:10:\"\0*\0options\";a:0:{}s:7:\"chained\";a:1:{i:0;s:2745:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:38:\"App\\Filament\\Exports\\PhieunhapExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:38:\"App\\Filament\\Exports\\PhieunhapExporter\";s:10:\"total_rows\";i:5;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:35:58\";s:10:\"created_at\";s:19:\"2025-05-13 03:35:58\";s:2:\"id\";i:24;s:9:\"file_name\";s:20:\"export-24-phieunhaps\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:38:\"App\\Filament\\Exports\\PhieunhapExporter\";s:10:\"total_rows\";i:5;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:35:58\";s:10:\"created_at\";s:19:\"2025-05-13 03:35:58\";s:2:\"id\";i:24;s:9:\"file_name\";s:20:\"export-24-phieunhaps\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:20:\"export-24-phieunhaps\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:10:{s:2:\"id\";s:18:\"Mã phiếu nhập\";s:8:\"NgayNhap\";s:12:\"Ngày nhập\";s:9:\"user.name\";s:14:\"Người tạo\";s:17:\"nhacungcap.TenNCC\";s:15:\"Nhà cung cấp\";s:10:\"kho.TenKho\";s:3:\"Kho\";s:4:\"LyDo\";s:6:\"Lý do\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:9:\"TrangThai\";s:13:\"Trạng thái\";s:10:\"created_at\";s:11:\"Ngày tạo\";s:10:\"updated_at\";s:18:\"Ngày cập nhật\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:24;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:10:{s:2:\"id\";s:18:\"Mã phiếu nhập\";s:8:\"NgayNhap\";s:12:\"Ngày nhập\";s:9:\"user.name\";s:14:\"Người tạo\";s:17:\"nhacungcap.TenNCC\";s:15:\"Nhà cung cấp\";s:10:\"kho.TenKho\";s:3:\"Kho\";s:4:\"LyDo\";s:6:\"Lý do\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:9:\"TrangThai\";s:13:\"Trạng thái\";s:10:\"created_at\";s:11:\"Ngày tạo\";s:10:\"updated_at\";s:18:\"Ngày cập nhật\";}s:10:\"\0*\0options\";a:0:{}}\";}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000010a70000000000000000\";}\";s:4:\"hash\";s:44:\"oMwO/oN/9a2mrg7muHBMLpdpLv12ew+mCWJqc+Jnqyc=\";}}}}', NULL, 1747107358, 1747107358),
('9ee604d6-addd-467c-b6d8-2118af490740', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:6188:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":7:{s:11:\"\0*\0exporter\";O:38:\"App\\Filament\\Exports\\PhieunhapExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:38:\"App\\Filament\\Exports\\PhieunhapExporter\";s:10:\"total_rows\";i:5;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:40:08\";s:10:\"created_at\";s:19:\"2025-05-13 03:40:08\";s:2:\"id\";i:25;s:9:\"file_name\";s:20:\"export-25-phieunhaps\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:38:\"App\\Filament\\Exports\\PhieunhapExporter\";s:10:\"total_rows\";i:5;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:40:08\";s:10:\"created_at\";s:19:\"2025-05-13 03:40:08\";s:2:\"id\";i:25;s:9:\"file_name\";s:20:\"export-25-phieunhaps\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:20:\"export-25-phieunhaps\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:10:{s:2:\"id\";s:18:\"Mã phiếu nhập\";s:8:\"NgayNhap\";s:12:\"Ngày nhập\";s:9:\"user.name\";s:14:\"Người tạo\";s:17:\"nhacungcap.TenNCC\";s:15:\"Nhà cung cấp\";s:10:\"kho.TenKho\";s:3:\"Kho\";s:4:\"LyDo\";s:6:\"Lý do\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:9:\"TrangThai\";s:13:\"Trạng thái\";s:10:\"created_at\";s:11:\"Ngày tạo\";s:10:\"updated_at\";s:18:\"Ngày cập nhật\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:25;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:10:{s:2:\"id\";s:18:\"Mã phiếu nhập\";s:8:\"NgayNhap\";s:12:\"Ngày nhập\";s:9:\"user.name\";s:14:\"Người tạo\";s:17:\"nhacungcap.TenNCC\";s:15:\"Nhà cung cấp\";s:10:\"kho.TenKho\";s:3:\"Kho\";s:4:\"LyDo\";s:6:\"Lý do\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:9:\"TrangThai\";s:13:\"Trạng thái\";s:10:\"created_at\";s:11:\"Ngày tạo\";s:10:\"updated_at\";s:18:\"Ngày cập nhật\";}s:10:\"\0*\0formats\";a:2:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";i:1;E:48:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Xlsx\";}s:10:\"\0*\0options\";a:0:{}s:7:\"chained\";a:1:{i:0;s:2745:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:38:\"App\\Filament\\Exports\\PhieunhapExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:38:\"App\\Filament\\Exports\\PhieunhapExporter\";s:10:\"total_rows\";i:5;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:40:08\";s:10:\"created_at\";s:19:\"2025-05-13 03:40:08\";s:2:\"id\";i:25;s:9:\"file_name\";s:20:\"export-25-phieunhaps\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:38:\"App\\Filament\\Exports\\PhieunhapExporter\";s:10:\"total_rows\";i:5;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:40:08\";s:10:\"created_at\";s:19:\"2025-05-13 03:40:08\";s:2:\"id\";i:25;s:9:\"file_name\";s:20:\"export-25-phieunhaps\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:20:\"export-25-phieunhaps\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:10:{s:2:\"id\";s:18:\"Mã phiếu nhập\";s:8:\"NgayNhap\";s:12:\"Ngày nhập\";s:9:\"user.name\";s:14:\"Người tạo\";s:17:\"nhacungcap.TenNCC\";s:15:\"Nhà cung cấp\";s:10:\"kho.TenKho\";s:3:\"Kho\";s:4:\"LyDo\";s:6:\"Lý do\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:9:\"TrangThai\";s:13:\"Trạng thái\";s:10:\"created_at\";s:11:\"Ngày tạo\";s:10:\"updated_at\";s:18:\"Ngày cập nhật\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:25;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:10:{s:2:\"id\";s:18:\"Mã phiếu nhập\";s:8:\"NgayNhap\";s:12:\"Ngày nhập\";s:9:\"user.name\";s:14:\"Người tạo\";s:17:\"nhacungcap.TenNCC\";s:15:\"Nhà cung cấp\";s:10:\"kho.TenKho\";s:3:\"Kho\";s:4:\"LyDo\";s:6:\"Lý do\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:9:\"TrangThai\";s:13:\"Trạng thái\";s:10:\"created_at\";s:11:\"Ngày tạo\";s:10:\"updated_at\";s:18:\"Ngày cập nhật\";}s:10:\"\0*\0options\";a:0:{}}\";}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000010a20000000000000000\";}\";s:4:\"hash\";s:44:\"RA70GkijuES/pu/AeFrRTEIDJnF8//xGg0hEre9e28k=\";}}}}', NULL, 1747107608, 1747107608),
('9ee60673-3ec1-4f64-9225-d66ecc084751', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:6036:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":7:{s:11:\"\0*\0exporter\";O:34:\"App\\Filament\\Exports\\XetaiExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\XetaiExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:44:38\";s:10:\"created_at\";s:19:\"2025-05-13 03:44:38\";s:2:\"id\";i:26;s:9:\"file_name\";s:16:\"export-26-xetais\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\XetaiExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:44:38\";s:10:\"created_at\";s:19:\"2025-05-13 03:44:38\";s:2:\"id\";i:26;s:9:\"file_name\";s:16:\"export-26-xetais\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:16:\"export-26-xetais\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:10:{s:2:\"id\";s:12:\"Mã xe tải\";s:6:\"BienSo\";s:11:\"Biển số\";s:5:\"TenXe\";s:7:\"Tên xe\";s:6:\"HangXe\";s:8:\"Hãng xe\";s:8:\"TaiTrong\";s:13:\"Tải trọng\";s:6:\"MauSac\";s:10:\"Màu sắc\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:9:\"TrangThai\";s:13:\"Trạng thái\";s:10:\"created_at\";s:11:\"Ngày tạo\";s:10:\"updated_at\";s:18:\"Ngày cập nhật\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:26;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:10:{s:2:\"id\";s:12:\"Mã xe tải\";s:6:\"BienSo\";s:11:\"Biển số\";s:5:\"TenXe\";s:7:\"Tên xe\";s:6:\"HangXe\";s:8:\"Hãng xe\";s:8:\"TaiTrong\";s:13:\"Tải trọng\";s:6:\"MauSac\";s:10:\"Màu sắc\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:9:\"TrangThai\";s:13:\"Trạng thái\";s:10:\"created_at\";s:11:\"Ngày tạo\";s:10:\"updated_at\";s:18:\"Ngày cập nhật\";}s:10:\"\0*\0formats\";a:2:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";i:1;E:48:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Xlsx\";}s:10:\"\0*\0options\";a:0:{}s:7:\"chained\";a:1:{i:0;s:2669:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:34:\"App\\Filament\\Exports\\XetaiExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\XetaiExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:44:38\";s:10:\"created_at\";s:19:\"2025-05-13 03:44:38\";s:2:\"id\";i:26;s:9:\"file_name\";s:16:\"export-26-xetais\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\XetaiExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:44:38\";s:10:\"created_at\";s:19:\"2025-05-13 03:44:38\";s:2:\"id\";i:26;s:9:\"file_name\";s:16:\"export-26-xetais\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:16:\"export-26-xetais\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:10:{s:2:\"id\";s:12:\"Mã xe tải\";s:6:\"BienSo\";s:11:\"Biển số\";s:5:\"TenXe\";s:7:\"Tên xe\";s:6:\"HangXe\";s:8:\"Hãng xe\";s:8:\"TaiTrong\";s:13:\"Tải trọng\";s:6:\"MauSac\";s:10:\"Màu sắc\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:9:\"TrangThai\";s:13:\"Trạng thái\";s:10:\"created_at\";s:11:\"Ngày tạo\";s:10:\"updated_at\";s:18:\"Ngày cập nhật\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:26;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:10:{s:2:\"id\";s:12:\"Mã xe tải\";s:6:\"BienSo\";s:11:\"Biển số\";s:5:\"TenXe\";s:7:\"Tên xe\";s:6:\"HangXe\";s:8:\"Hãng xe\";s:8:\"TaiTrong\";s:13:\"Tải trọng\";s:6:\"MauSac\";s:10:\"Màu sắc\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:9:\"TrangThai\";s:13:\"Trạng thái\";s:10:\"created_at\";s:11:\"Ngày tạo\";s:10:\"updated_at\";s:18:\"Ngày cập nhật\";}s:10:\"\0*\0options\";a:0:{}}\";}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000010800000000000000000\";}\";s:4:\"hash\";s:44:\"Qj+YMLWaERBFrd/f2wdbSBbiJRUPBMbJFuvWkyaFAxQ=\";}}}}', NULL, 1747107878, 1747107878);
INSERT INTO `job_batches` (`id`, `name`, `total_jobs`, `pending_jobs`, `failed_jobs`, `failed_job_ids`, `options`, `cancelled_at`, `created_at`, `finished_at`) VALUES
('9ee60727-b980-4b41-b141-77477b690be0', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:6280:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":7:{s:11:\"\0*\0exporter\";O:34:\"App\\Filament\\Exports\\TaixeExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\TaixeExporter\";s:10:\"total_rows\";i:1;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:46:37\";s:10:\"created_at\";s:19:\"2025-05-13 03:46:37\";s:2:\"id\";i:27;s:9:\"file_name\";s:16:\"export-27-taixes\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\TaixeExporter\";s:10:\"total_rows\";i:1;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:46:37\";s:10:\"created_at\";s:19:\"2025-05-13 03:46:37\";s:2:\"id\";i:27;s:9:\"file_name\";s:16:\"export-27-taixes\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:16:\"export-27-taixes\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:11:{s:2:\"id\";s:13:\"Mã tài xế\";s:8:\"TenTaiXe\";s:14:\"Tên tài xế\";s:3:\"Sdt\";s:20:\"Số điện thoại\";s:4:\"CCCD\";s:23:\"Căn cước công dân\";s:7:\"BangLai\";s:11:\"Bằng lái\";s:6:\"DiaChi\";s:12:\"Địa chỉ\";s:7:\"NamSinh\";s:9:\"Năm sinh\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:9:\"TrangThai\";s:13:\"Trạng thái\";s:10:\"created_at\";s:11:\"Ngày tạo\";s:10:\"updated_at\";s:18:\"Ngày cập nhật\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:27;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:11:{s:2:\"id\";s:13:\"Mã tài xế\";s:8:\"TenTaiXe\";s:14:\"Tên tài xế\";s:3:\"Sdt\";s:20:\"Số điện thoại\";s:4:\"CCCD\";s:23:\"Căn cước công dân\";s:7:\"BangLai\";s:11:\"Bằng lái\";s:6:\"DiaChi\";s:12:\"Địa chỉ\";s:7:\"NamSinh\";s:9:\"Năm sinh\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:9:\"TrangThai\";s:13:\"Trạng thái\";s:10:\"created_at\";s:11:\"Ngày tạo\";s:10:\"updated_at\";s:18:\"Ngày cập nhật\";}s:10:\"\0*\0formats\";a:2:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";i:1;E:48:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Xlsx\";}s:10:\"\0*\0options\";a:0:{}s:7:\"chained\";a:1:{i:0;s:2791:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:34:\"App\\Filament\\Exports\\TaixeExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\TaixeExporter\";s:10:\"total_rows\";i:1;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:46:37\";s:10:\"created_at\";s:19:\"2025-05-13 03:46:37\";s:2:\"id\";i:27;s:9:\"file_name\";s:16:\"export-27-taixes\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\TaixeExporter\";s:10:\"total_rows\";i:1;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:46:37\";s:10:\"created_at\";s:19:\"2025-05-13 03:46:37\";s:2:\"id\";i:27;s:9:\"file_name\";s:16:\"export-27-taixes\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:16:\"export-27-taixes\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:11:{s:2:\"id\";s:13:\"Mã tài xế\";s:8:\"TenTaiXe\";s:14:\"Tên tài xế\";s:3:\"Sdt\";s:20:\"Số điện thoại\";s:4:\"CCCD\";s:23:\"Căn cước công dân\";s:7:\"BangLai\";s:11:\"Bằng lái\";s:6:\"DiaChi\";s:12:\"Địa chỉ\";s:7:\"NamSinh\";s:9:\"Năm sinh\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:9:\"TrangThai\";s:13:\"Trạng thái\";s:10:\"created_at\";s:11:\"Ngày tạo\";s:10:\"updated_at\";s:18:\"Ngày cập nhật\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:27;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:11:{s:2:\"id\";s:13:\"Mã tài xế\";s:8:\"TenTaiXe\";s:14:\"Tên tài xế\";s:3:\"Sdt\";s:20:\"Số điện thoại\";s:4:\"CCCD\";s:23:\"Căn cước công dân\";s:7:\"BangLai\";s:11:\"Bằng lái\";s:6:\"DiaChi\";s:12:\"Địa chỉ\";s:7:\"NamSinh\";s:9:\"Năm sinh\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:9:\"TrangThai\";s:13:\"Trạng thái\";s:10:\"created_at\";s:11:\"Ngày tạo\";s:10:\"updated_at\";s:18:\"Ngày cập nhật\";}s:10:\"\0*\0options\";a:0:{}}\";}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"000000000000110d0000000000000000\";}\";s:4:\"hash\";s:44:\"s0Z/XaRZj46vck9rGlIlBlZjBeYueJiJWBrOI8kokqg=\";}}}}', NULL, 1747107997, 1747107997),
('9ee6078f-19cc-46c7-8977-5401e5dc3a7c', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:5632:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":7:{s:11:\"\0*\0exporter\";O:38:\"App\\Filament\\Exports\\KhachhangExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:38:\"App\\Filament\\Exports\\KhachhangExporter\";s:10:\"total_rows\";i:5;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:47:44\";s:10:\"created_at\";s:19:\"2025-05-13 03:47:44\";s:2:\"id\";i:28;s:9:\"file_name\";s:20:\"export-28-khachhangs\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:38:\"App\\Filament\\Exports\\KhachhangExporter\";s:10:\"total_rows\";i:5;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:47:44\";s:10:\"created_at\";s:19:\"2025-05-13 03:47:44\";s:2:\"id\";i:28;s:9:\"file_name\";s:20:\"export-28-khachhangs\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:20:\"export-28-khachhangs\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:7:{s:2:\"id\";s:3:\"Mã\";s:5:\"TenKH\";s:17:\"Tên khách hàng\";s:3:\"Sdt\";s:20:\"Số điện thoại\";s:5:\"Email\";s:5:\"Email\";s:6:\"DiaChi\";s:12:\"Địa chỉ\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:10:\"created_at\";s:11:\"Ngày tạo\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:28;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:7:{s:2:\"id\";s:3:\"Mã\";s:5:\"TenKH\";s:17:\"Tên khách hàng\";s:3:\"Sdt\";s:20:\"Số điện thoại\";s:5:\"Email\";s:5:\"Email\";s:6:\"DiaChi\";s:12:\"Địa chỉ\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:10:\"created_at\";s:11:\"Ngày tạo\";}s:10:\"\0*\0formats\";a:2:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";i:1;E:48:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Xlsx\";}s:10:\"\0*\0options\";a:0:{}s:7:\"chained\";a:1:{i:0;s:2467:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:38:\"App\\Filament\\Exports\\KhachhangExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:38:\"App\\Filament\\Exports\\KhachhangExporter\";s:10:\"total_rows\";i:5;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:47:44\";s:10:\"created_at\";s:19:\"2025-05-13 03:47:44\";s:2:\"id\";i:28;s:9:\"file_name\";s:20:\"export-28-khachhangs\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:38:\"App\\Filament\\Exports\\KhachhangExporter\";s:10:\"total_rows\";i:5;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:47:44\";s:10:\"created_at\";s:19:\"2025-05-13 03:47:44\";s:2:\"id\";i:28;s:9:\"file_name\";s:20:\"export-28-khachhangs\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:20:\"export-28-khachhangs\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:7:{s:2:\"id\";s:3:\"Mã\";s:5:\"TenKH\";s:17:\"Tên khách hàng\";s:3:\"Sdt\";s:20:\"Số điện thoại\";s:5:\"Email\";s:5:\"Email\";s:6:\"DiaChi\";s:12:\"Địa chỉ\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:10:\"created_at\";s:11:\"Ngày tạo\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:28;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:7:{s:2:\"id\";s:3:\"Mã\";s:5:\"TenKH\";s:17:\"Tên khách hàng\";s:3:\"Sdt\";s:20:\"Số điện thoại\";s:5:\"Email\";s:5:\"Email\";s:6:\"DiaChi\";s:12:\"Địa chỉ\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:10:\"created_at\";s:11:\"Ngày tạo\";}s:10:\"\0*\0options\";a:0:{}}\";}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"0000000000000e960000000000000000\";}\";s:4:\"hash\";s:44:\"192C8sFr8KbVJIKj8kqSa5oF+/jJ+hsoVe/H6/8Fe8g=\";}}}}', NULL, 1747108064, 1747108064),
('9ee607b1-2d54-4ab4-b284-f96b6bcb7ed6', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:5632:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":7:{s:11:\"\0*\0exporter\";O:38:\"App\\Filament\\Exports\\KhachhangExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:38:\"App\\Filament\\Exports\\KhachhangExporter\";s:10:\"total_rows\";i:5;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:48:07\";s:10:\"created_at\";s:19:\"2025-05-13 03:48:07\";s:2:\"id\";i:29;s:9:\"file_name\";s:20:\"export-29-khachhangs\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:38:\"App\\Filament\\Exports\\KhachhangExporter\";s:10:\"total_rows\";i:5;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:48:07\";s:10:\"created_at\";s:19:\"2025-05-13 03:48:07\";s:2:\"id\";i:29;s:9:\"file_name\";s:20:\"export-29-khachhangs\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:20:\"export-29-khachhangs\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:7:{s:2:\"id\";s:3:\"Mã\";s:5:\"TenKH\";s:17:\"Tên khách hàng\";s:3:\"Sdt\";s:20:\"Số điện thoại\";s:5:\"Email\";s:5:\"Email\";s:6:\"DiaChi\";s:12:\"Địa chỉ\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:10:\"created_at\";s:11:\"Ngày tạo\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:29;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:7:{s:2:\"id\";s:3:\"Mã\";s:5:\"TenKH\";s:17:\"Tên khách hàng\";s:3:\"Sdt\";s:20:\"Số điện thoại\";s:5:\"Email\";s:5:\"Email\";s:6:\"DiaChi\";s:12:\"Địa chỉ\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:10:\"created_at\";s:11:\"Ngày tạo\";}s:10:\"\0*\0formats\";a:2:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";i:1;E:48:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Xlsx\";}s:10:\"\0*\0options\";a:0:{}s:7:\"chained\";a:1:{i:0;s:2467:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:38:\"App\\Filament\\Exports\\KhachhangExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:38:\"App\\Filament\\Exports\\KhachhangExporter\";s:10:\"total_rows\";i:5;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:48:07\";s:10:\"created_at\";s:19:\"2025-05-13 03:48:07\";s:2:\"id\";i:29;s:9:\"file_name\";s:20:\"export-29-khachhangs\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:38:\"App\\Filament\\Exports\\KhachhangExporter\";s:10:\"total_rows\";i:5;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:48:07\";s:10:\"created_at\";s:19:\"2025-05-13 03:48:07\";s:2:\"id\";i:29;s:9:\"file_name\";s:20:\"export-29-khachhangs\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:20:\"export-29-khachhangs\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:7:{s:2:\"id\";s:3:\"Mã\";s:5:\"TenKH\";s:17:\"Tên khách hàng\";s:3:\"Sdt\";s:20:\"Số điện thoại\";s:5:\"Email\";s:5:\"Email\";s:6:\"DiaChi\";s:12:\"Địa chỉ\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:10:\"created_at\";s:11:\"Ngày tạo\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:29;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:7:{s:2:\"id\";s:3:\"Mã\";s:5:\"TenKH\";s:17:\"Tên khách hàng\";s:3:\"Sdt\";s:20:\"Số điện thoại\";s:5:\"Email\";s:5:\"Email\";s:6:\"DiaChi\";s:12:\"Địa chỉ\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:10:\"created_at\";s:11:\"Ngày tạo\";}s:10:\"\0*\0options\";a:0:{}}\";}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"0000000000000e960000000000000000\";}\";s:4:\"hash\";s:44:\"4LVOlCFzlt2vatnM3iPCBFGJn36VGO4AmfK28uKWyjw=\";}}}}', NULL, 1747108087, 1747108087),
('9ee60943-9f26-4127-a245-c81bd13f3d4e', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:6036:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":7:{s:11:\"\0*\0exporter\";O:34:\"App\\Filament\\Exports\\XetaiExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\XetaiExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:52:30\";s:10:\"created_at\";s:19:\"2025-05-13 03:52:30\";s:2:\"id\";i:30;s:9:\"file_name\";s:16:\"export-30-xetais\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\XetaiExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:52:30\";s:10:\"created_at\";s:19:\"2025-05-13 03:52:30\";s:2:\"id\";i:30;s:9:\"file_name\";s:16:\"export-30-xetais\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:16:\"export-30-xetais\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:10:{s:2:\"id\";s:12:\"Mã xe tải\";s:6:\"BienSo\";s:11:\"Biển số\";s:5:\"TenXe\";s:7:\"Tên xe\";s:6:\"HangXe\";s:8:\"Hãng xe\";s:8:\"TaiTrong\";s:13:\"Tải trọng\";s:6:\"MauSac\";s:10:\"Màu sắc\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:9:\"TrangThai\";s:13:\"Trạng thái\";s:10:\"created_at\";s:11:\"Ngày tạo\";s:10:\"updated_at\";s:18:\"Ngày cập nhật\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:30;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:10:{s:2:\"id\";s:12:\"Mã xe tải\";s:6:\"BienSo\";s:11:\"Biển số\";s:5:\"TenXe\";s:7:\"Tên xe\";s:6:\"HangXe\";s:8:\"Hãng xe\";s:8:\"TaiTrong\";s:13:\"Tải trọng\";s:6:\"MauSac\";s:10:\"Màu sắc\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:9:\"TrangThai\";s:13:\"Trạng thái\";s:10:\"created_at\";s:11:\"Ngày tạo\";s:10:\"updated_at\";s:18:\"Ngày cập nhật\";}s:10:\"\0*\0formats\";a:2:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";i:1;E:48:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Xlsx\";}s:10:\"\0*\0options\";a:0:{}s:7:\"chained\";a:1:{i:0;s:2669:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:34:\"App\\Filament\\Exports\\XetaiExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\XetaiExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:52:30\";s:10:\"created_at\";s:19:\"2025-05-13 03:52:30\";s:2:\"id\";i:30;s:9:\"file_name\";s:16:\"export-30-xetais\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:34:\"App\\Filament\\Exports\\XetaiExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:52:30\";s:10:\"created_at\";s:19:\"2025-05-13 03:52:30\";s:2:\"id\";i:30;s:9:\"file_name\";s:16:\"export-30-xetais\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:16:\"export-30-xetais\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:10:{s:2:\"id\";s:12:\"Mã xe tải\";s:6:\"BienSo\";s:11:\"Biển số\";s:5:\"TenXe\";s:7:\"Tên xe\";s:6:\"HangXe\";s:8:\"Hãng xe\";s:8:\"TaiTrong\";s:13:\"Tải trọng\";s:6:\"MauSac\";s:10:\"Màu sắc\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:9:\"TrangThai\";s:13:\"Trạng thái\";s:10:\"created_at\";s:11:\"Ngày tạo\";s:10:\"updated_at\";s:18:\"Ngày cập nhật\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:30;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:10:{s:2:\"id\";s:12:\"Mã xe tải\";s:6:\"BienSo\";s:11:\"Biển số\";s:5:\"TenXe\";s:7:\"Tên xe\";s:6:\"HangXe\";s:8:\"Hãng xe\";s:8:\"TaiTrong\";s:13:\"Tải trọng\";s:6:\"MauSac\";s:10:\"Màu sắc\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:9:\"TrangThai\";s:13:\"Trạng thái\";s:10:\"created_at\";s:11:\"Ngày tạo\";s:10:\"updated_at\";s:18:\"Ngày cập nhật\";}s:10:\"\0*\0options\";a:0:{}}\";}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000010800000000000000000\";}\";s:4:\"hash\";s:44:\"SqVtlVL9kqbm88+MB1MiHoN70jD2+Ol/WbmFXaf/1+g=\";}}}}', NULL, 1747108350, 1747108350),
('9ee60998-207c-4a8e-83f6-e1b0e317103a', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:5624:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":7:{s:11:\"\0*\0exporter\";O:37:\"App\\Filament\\Exports\\NhanvienExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:37:\"App\\Filament\\Exports\\NhanvienExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:53:26\";s:10:\"created_at\";s:19:\"2025-05-13 03:53:26\";s:2:\"id\";i:31;s:9:\"file_name\";s:19:\"export-31-nhanviens\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:37:\"App\\Filament\\Exports\\NhanvienExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:53:26\";s:10:\"created_at\";s:19:\"2025-05-13 03:53:26\";s:2:\"id\";i:31;s:9:\"file_name\";s:19:\"export-31-nhanviens\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:19:\"export-31-nhanviens\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:7:{s:2:\"id\";s:3:\"Mã\";s:4:\"name\";s:16:\"Tên nhân viên\";s:5:\"Birth\";s:10:\"Ngày sinh\";s:5:\"Phone\";s:20:\"Số điện thoại\";s:7:\"Address\";s:12:\"Địa chỉ\";s:4:\"cccd\";s:4:\"CCCD\";s:10:\"created_at\";s:11:\"Ngày tạo\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:31;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:7:{s:2:\"id\";s:3:\"Mã\";s:4:\"name\";s:16:\"Tên nhân viên\";s:5:\"Birth\";s:10:\"Ngày sinh\";s:5:\"Phone\";s:20:\"Số điện thoại\";s:7:\"Address\";s:12:\"Địa chỉ\";s:4:\"cccd\";s:4:\"CCCD\";s:10:\"created_at\";s:11:\"Ngày tạo\";}s:10:\"\0*\0formats\";a:2:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";i:1;E:48:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Xlsx\";}s:10:\"\0*\0options\";a:0:{}s:7:\"chained\";a:1:{i:0;s:2463:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:37:\"App\\Filament\\Exports\\NhanvienExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:37:\"App\\Filament\\Exports\\NhanvienExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:53:26\";s:10:\"created_at\";s:19:\"2025-05-13 03:53:26\";s:2:\"id\";i:31;s:9:\"file_name\";s:19:\"export-31-nhanviens\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:37:\"App\\Filament\\Exports\\NhanvienExporter\";s:10:\"total_rows\";i:4;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-13 03:53:26\";s:10:\"created_at\";s:19:\"2025-05-13 03:53:26\";s:2:\"id\";i:31;s:9:\"file_name\";s:19:\"export-31-nhanviens\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:19:\"export-31-nhanviens\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:7:{s:2:\"id\";s:3:\"Mã\";s:4:\"name\";s:16:\"Tên nhân viên\";s:5:\"Birth\";s:10:\"Ngày sinh\";s:5:\"Phone\";s:20:\"Số điện thoại\";s:7:\"Address\";s:12:\"Địa chỉ\";s:4:\"cccd\";s:4:\"CCCD\";s:10:\"created_at\";s:11:\"Ngày tạo\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:31;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:7:{s:2:\"id\";s:3:\"Mã\";s:4:\"name\";s:16:\"Tên nhân viên\";s:5:\"Birth\";s:10:\"Ngày sinh\";s:5:\"Phone\";s:20:\"Số điện thoại\";s:7:\"Address\";s:12:\"Địa chỉ\";s:4:\"cccd\";s:4:\"CCCD\";s:10:\"created_at\";s:11:\"Ngày tạo\";}s:10:\"\0*\0options\";a:0:{}}\";}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"0000000000000e810000000000000000\";}\";s:4:\"hash\";s:44:\"RRFkhY6Me5Fz0IihiykzQI0qjYmPLU5DZ/eWEUF8PKE=\";}}}}', NULL, 1747108406, 1747108406),
('9eea56d1-7015-46ed-9be9-200eed7fc48d', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:6468:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":7:{s:11:\"\0*\0exporter\";O:44:\"App\\Filament\\Exports\\PhieuDieuChuyenExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:44:\"App\\Filament\\Exports\\PhieuDieuChuyenExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-15 07:12:40\";s:10:\"created_at\";s:19:\"2025-05-15 07:12:40\";s:2:\"id\";i:32;s:9:\"file_name\";s:26:\"export-32-phieudieuchuyens\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:44:\"App\\Filament\\Exports\\PhieuDieuChuyenExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-15 07:12:40\";s:10:\"created_at\";s:19:\"2025-05-15 07:12:40\";s:2:\"id\";i:32;s:9:\"file_name\";s:26:\"export-32-phieudieuchuyens\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:26:\"export-32-phieudieuchuyens\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:11:{s:2:\"id\";s:11:\"Mã phiếu\";s:7:\"NgayLap\";s:11:\"Ngày lập\";s:9:\"user.name\";s:14:\"Người lập\";s:10:\"MaKhoNguon\";s:15:\"Mã kho nguồn\";s:15:\"khonguon.TenKho\";s:11:\"Kho nguồn\";s:9:\"MaKhoDich\";s:14:\"Mã kho đích\";s:14:\"khodich.TenKho\";s:10:\"Kho đích\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:9:\"TrangThai\";s:13:\"Trạng thái\";s:10:\"created_at\";s:11:\"Ngày tạo\";s:10:\"updated_at\";s:18:\"Ngày cập nhật\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:32;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:11:{s:2:\"id\";s:11:\"Mã phiếu\";s:7:\"NgayLap\";s:11:\"Ngày lập\";s:9:\"user.name\";s:14:\"Người lập\";s:10:\"MaKhoNguon\";s:15:\"Mã kho nguồn\";s:15:\"khonguon.TenKho\";s:11:\"Kho nguồn\";s:9:\"MaKhoDich\";s:14:\"Mã kho đích\";s:14:\"khodich.TenKho\";s:10:\"Kho đích\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:9:\"TrangThai\";s:13:\"Trạng thái\";s:10:\"created_at\";s:11:\"Ngày tạo\";s:10:\"updated_at\";s:18:\"Ngày cập nhật\";}s:10:\"\0*\0formats\";a:2:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";i:1;E:48:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Xlsx\";}s:10:\"\0*\0options\";a:0:{}s:7:\"chained\";a:1:{i:0;s:2885:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:44:\"App\\Filament\\Exports\\PhieuDieuChuyenExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:44:\"App\\Filament\\Exports\\PhieuDieuChuyenExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-15 07:12:40\";s:10:\"created_at\";s:19:\"2025-05-15 07:12:40\";s:2:\"id\";i:32;s:9:\"file_name\";s:26:\"export-32-phieudieuchuyens\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:44:\"App\\Filament\\Exports\\PhieuDieuChuyenExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-15 07:12:40\";s:10:\"created_at\";s:19:\"2025-05-15 07:12:40\";s:2:\"id\";i:32;s:9:\"file_name\";s:26:\"export-32-phieudieuchuyens\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:26:\"export-32-phieudieuchuyens\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:11:{s:2:\"id\";s:11:\"Mã phiếu\";s:7:\"NgayLap\";s:11:\"Ngày lập\";s:9:\"user.name\";s:14:\"Người lập\";s:10:\"MaKhoNguon\";s:15:\"Mã kho nguồn\";s:15:\"khonguon.TenKho\";s:11:\"Kho nguồn\";s:9:\"MaKhoDich\";s:14:\"Mã kho đích\";s:14:\"khodich.TenKho\";s:10:\"Kho đích\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:9:\"TrangThai\";s:13:\"Trạng thái\";s:10:\"created_at\";s:11:\"Ngày tạo\";s:10:\"updated_at\";s:18:\"Ngày cập nhật\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:32;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:11:{s:2:\"id\";s:11:\"Mã phiếu\";s:7:\"NgayLap\";s:11:\"Ngày lập\";s:9:\"user.name\";s:14:\"Người lập\";s:10:\"MaKhoNguon\";s:15:\"Mã kho nguồn\";s:15:\"khonguon.TenKho\";s:11:\"Kho nguồn\";s:9:\"MaKhoDich\";s:14:\"Mã kho đích\";s:14:\"khodich.TenKho\";s:10:\"Kho đích\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:9:\"TrangThai\";s:13:\"Trạng thái\";s:10:\"created_at\";s:11:\"Ngày tạo\";s:10:\"updated_at\";s:18:\"Ngày cập nhật\";}s:10:\"\0*\0options\";a:0:{}}\";}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000010fe0000000000000000\";}\";s:4:\"hash\";s:44:\"XRP/xBmsrO6QfHFcREKB9FuPyy+jfGL9eu8v4c5SR0A=\";}}}}', NULL, 1747293161, 1747293161),
('9efab4d4-cedf-4da1-b9be-9d1c34c8f1d0', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:6374:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":7:{s:11:\"\0*\0exporter\";O:43:\"App\\Filament\\Exports\\PhieuvanchuyenExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:43:\"App\\Filament\\Exports\\PhieuvanchuyenExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-23 10:28:48\";s:10:\"created_at\";s:19:\"2025-05-23 10:28:48\";s:2:\"id\";i:33;s:9:\"file_name\";s:25:\"export-33-phieuvanchuyens\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:43:\"App\\Filament\\Exports\\PhieuvanchuyenExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-23 10:28:48\";s:10:\"created_at\";s:19:\"2025-05-23 10:28:48\";s:2:\"id\";i:33;s:9:\"file_name\";s:25:\"export-33-phieuvanchuyens\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:25:\"export-33-phieuvanchuyens\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:9:{s:2:\"id\";s:26:\"Mã phiếu vận chuyển\";s:12:\"phieuxuat.id\";s:14:\"Phiếu xuất\";s:12:\"xetai.BienSo\";s:14:\"Biển số xe\";s:14:\"taixe.TenTaiXe\";s:9:\"Tài xế\";s:9:\"user.name\";s:14:\"Người tạo\";s:7:\"NgayTao\";s:11:\"Ngày tạo\";s:13:\"NgayVanChuyen\";s:20:\"Ngày vận chuyển\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:9:\"TrangThai\";s:13:\"Trạng thái\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:33;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:9:{s:2:\"id\";s:26:\"Mã phiếu vận chuyển\";s:12:\"phieuxuat.id\";s:14:\"Phiếu xuất\";s:12:\"xetai.BienSo\";s:14:\"Biển số xe\";s:14:\"taixe.TenTaiXe\";s:9:\"Tài xế\";s:9:\"user.name\";s:14:\"Người tạo\";s:7:\"NgayTao\";s:11:\"Ngày tạo\";s:13:\"NgayVanChuyen\";s:20:\"Ngày vận chuyển\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:9:\"TrangThai\";s:13:\"Trạng thái\";}s:10:\"\0*\0formats\";a:2:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";i:1;E:48:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Xlsx\";}s:10:\"\0*\0options\";a:0:{}s:7:\"chained\";a:1:{i:0;s:2838:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:43:\"App\\Filament\\Exports\\PhieuvanchuyenExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":32:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:43:\"App\\Filament\\Exports\\PhieuvanchuyenExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-23 10:28:48\";s:10:\"created_at\";s:19:\"2025-05-23 10:28:48\";s:2:\"id\";i:33;s:9:\"file_name\";s:25:\"export-33-phieuvanchuyens\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";i:1;s:8:\"exporter\";s:43:\"App\\Filament\\Exports\\PhieuvanchuyenExporter\";s:10:\"total_rows\";i:2;s:9:\"file_disk\";s:5:\"local\";s:10:\"updated_at\";s:19:\"2025-05-23 10:28:48\";s:10:\"created_at\";s:19:\"2025-05-23 10:28:48\";s:2:\"id\";i:33;s:9:\"file_name\";s:25:\"export-33-phieuvanchuyens\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:25:\"export-33-phieuvanchuyens\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:27:\"\0*\0relationAutoloadCallback\";N;s:26:\"\0*\0relationAutoloadContext\";N;s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:9:{s:2:\"id\";s:26:\"Mã phiếu vận chuyển\";s:12:\"phieuxuat.id\";s:14:\"Phiếu xuất\";s:12:\"xetai.BienSo\";s:14:\"Biển số xe\";s:14:\"taixe.TenTaiXe\";s:9:\"Tài xế\";s:9:\"user.name\";s:14:\"Người tạo\";s:7:\"NgayTao\";s:11:\"Ngày tạo\";s:13:\"NgayVanChuyen\";s:20:\"Ngày vận chuyển\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:9:\"TrangThai\";s:13:\"Trạng thái\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:33;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:9:{s:2:\"id\";s:26:\"Mã phiếu vận chuyển\";s:12:\"phieuxuat.id\";s:14:\"Phiếu xuất\";s:12:\"xetai.BienSo\";s:14:\"Biển số xe\";s:14:\"taixe.TenTaiXe\";s:9:\"Tài xế\";s:9:\"user.name\";s:14:\"Người tạo\";s:7:\"NgayTao\";s:11:\"Ngày tạo\";s:13:\"NgayVanChuyen\";s:20:\"Ngày vận chuyển\";s:6:\"GhiChu\";s:8:\"Ghi chú\";s:9:\"TrangThai\";s:13:\"Trạng thái\";}s:10:\"\0*\0options\";a:0:{}}\";}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"0000000000000f500000000000000000\";}\";s:4:\"hash\";s:44:\"EvZ7sLe6iFmmTRY7GQRHmwODPpfW1eqVq7dOfU7N/pY=\";}}}}', NULL, 1747996128, 1747996128);

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
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`id`, `TenKH`, `Sdt`, `Email`, `DiaChi`, `GhiChu`, `created_at`, `updated_at`) VALUES
(1, 'Khách A', '124324', 'anhlycuckeo123@gmail.com', 'Hải Phòng', NULL, '2025-03-29 01:32:03', '2025-03-29 01:32:03'),
(102, 'Khách B', '123123', 'uia@gmail.com', '34535', NULL, '2025-03-30 20:10:41', '2025-05-06 03:52:14'),
(203, 'Khách C', '1231645', NULL, 'abc', NULL, '2025-04-03 01:42:07', '2025-05-06 03:52:21'),
(204, 'Khách D', '1231645', NULL, 'abc', NULL, '2025-04-03 01:42:41', '2025-05-06 03:52:26'),
(205, 'Huy Khánh', '0987654321', 'jobgcoug63970@banhgiay.com', 'Hải Phòng', 'khách mới', '2025-05-12 20:13:46', '2025-05-12 20:14:08');

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(13, '2025_04_06_114117_add_renew_password_on_users_table', 3),
(14, '2025_05_07_102112_create_nhanviens_table', 4),
(15, '2025_05_07_102450_create_nhanvien_table', 5);

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
(6, 'App\\Models\\User', 2),
(5, 'App\\Models\\User', 28),
(5, 'App\\Models\\User', 29),
(8, 'App\\Models\\User', 29);

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`id`, `TenNCC`, `Sdt`, `Email`, `DiaChi`, `MaSoThue`, `GhiChu`, `created_at`, `updated_at`) VALUES
(1, 'Nhà cung cấp A', '64573266', 'A@gmail.com', 'Hải Phòng', '7684646', ':D', NULL, '2025-03-26 02:28:01'),
(3, 'Nhà cung cấp B', '423424', 'B@gmail.com', 'Hà Nội', '7684646', 'â', '2025-03-24 08:06:25', '2025-03-24 08:06:25'),
(4, 'Nhà cung cấp C', '234862384', 'C@gmail.com', 'Hà Nội', '7684646', 'c', '2025-03-24 08:29:37', '2025-05-23 03:24:08'),
(18, 'Nhà cung cấp D', '0865489203', NULL, 'Huế', '1234567890', NULL, '2025-04-10 21:27:00', '2025-04-10 21:27:00');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
CREATE TABLE IF NOT EXISTS `nhanvien` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Birth` date DEFAULT NULL,
  `Phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cccd` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`id`, `name`, `Birth`, `Phone`, `Address`, `cccd`, `image`, `created_at`, `updated_at`) VALUES
(1, 'PhanLý', '2003-12-19', '0865489209', 'Hải Phòng', '031203011243', 'nhanvien/01JTSKQ7Q445GQS142HPH1460V.jpg', '2025-05-08 01:53:19', '2025-05-08 21:09:11'),
(2, 'aaaa', '2025-04-28', '0865489999', 'trái đất', '031203011241', 'nhanvien/01JTSZJ4ZNK58H4ZS4MCANZG21.jpg', '2025-05-09 00:12:41', '2025-05-09 00:36:07'),
(3, 'Huy ngoo1', '2025-05-22', '0965489999', 'Hải Phòng', '031203099243', 'nhanvien/01JVS0RTN4AA3S73X3QJQV47C5.jpg', '2025-05-09 00:38:09', '2025-05-21 01:53:42'),
(4, 'Vinh', '2025-05-29', '0764162672', 'trái đất', '031876011243', 'nhanvien/01JTT0A14V0T0CDXRS9WNG6XKA.jpg', '2025-05-09 00:49:10', '2025-05-09 00:49:10');

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
) ENGINE=InnoDB AUTO_INCREMENT=353 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(312, 'delete_any_custom::role', 'web', '2025-04-06 09:21:01', '2025-04-06 09:21:01'),
(313, 'view_taixe', 'web', '2025-04-23 19:02:29', '2025-04-23 19:02:29'),
(314, 'view_any_taixe', 'web', '2025-04-23 19:02:29', '2025-04-23 19:02:29'),
(315, 'create_taixe', 'web', '2025-04-23 19:02:29', '2025-04-23 19:02:29'),
(316, 'update_taixe', 'web', '2025-04-23 19:02:29', '2025-04-23 19:02:29'),
(317, 'delete_taixe', 'web', '2025-04-23 19:02:29', '2025-04-23 19:02:29'),
(318, 'delete_any_taixe', 'web', '2025-04-23 19:02:29', '2025-04-23 19:02:29'),
(319, 'view_phieu::van::chuyen', 'web', '2025-04-23 19:24:58', '2025-04-23 19:24:58'),
(320, 'view_any_phieu::van::chuyen', 'web', '2025-04-23 19:24:58', '2025-04-23 19:24:58'),
(321, 'create_phieu::van::chuyen', 'web', '2025-04-23 19:24:58', '2025-04-23 19:24:58'),
(322, 'update_phieu::van::chuyen', 'web', '2025-04-23 19:24:58', '2025-04-23 19:24:58'),
(323, 'delete_phieu::van::chuyen', 'web', '2025-04-23 19:24:58', '2025-04-23 19:24:58'),
(324, 'delete_any_phieu::van::chuyen', 'web', '2025-04-23 19:24:58', '2025-04-23 19:24:58'),
(325, 'view_xe::tai', 'web', '2025-04-23 19:24:58', '2025-04-23 19:24:58'),
(326, 'view_any_xe::tai', 'web', '2025-04-23 19:24:58', '2025-04-23 19:24:58'),
(327, 'create_xe::tai', 'web', '2025-04-23 19:24:58', '2025-04-23 19:24:58'),
(328, 'update_xe::tai', 'web', '2025-04-23 19:24:58', '2025-04-23 19:24:58'),
(329, 'delete_xe::tai', 'web', '2025-04-23 19:24:58', '2025-04-23 19:24:58'),
(330, 'delete_any_xe::tai', 'web', '2025-04-23 19:24:58', '2025-04-23 19:24:58'),
(331, 'page_ReportPage', 'web', '2025-05-12 18:04:22', '2025-05-12 18:04:22'),
(332, 'view_nhan::vien', 'web', '2025-05-12 18:04:47', '2025-05-12 18:04:47'),
(333, 'view_any_nhan::vien', 'web', '2025-05-12 18:04:47', '2025-05-12 18:04:47'),
(334, 'create_nhan::vien', 'web', '2025-05-12 18:04:47', '2025-05-12 18:04:47'),
(335, 'update_nhan::vien', 'web', '2025-05-12 18:04:47', '2025-05-12 18:04:47'),
(336, 'view_phieu::su::co', 'web', '2025-05-12 18:04:47', '2025-05-12 18:04:47'),
(337, 'view_any_phieu::su::co', 'web', '2025-05-12 18:04:47', '2025-05-12 18:04:47'),
(338, 'create_phieu::su::co', 'web', '2025-05-12 18:04:47', '2025-05-12 18:04:47'),
(339, 'update_phieu::su::co', 'web', '2025-05-12 18:04:47', '2025-05-12 18:04:47'),
(340, 'delete_phieu::su::co', 'web', '2025-05-12 18:04:47', '2025-05-12 18:04:47'),
(341, 'delete_any_phieu::su::co', 'web', '2025-05-12 18:04:47', '2025-05-12 18:04:47'),
(342, 'page_XuatnhaptonPage', 'web', '2025-05-12 18:04:47', '2025-05-12 18:04:47'),
(343, 'page_Themes', 'web', '2025-05-12 18:04:47', '2025-05-12 18:04:47'),
(344, 'view_phieu::dieu::chuyen', 'web', '2025-05-22 21:26:26', '2025-05-22 21:26:26'),
(345, 'view_any_phieu::dieu::chuyen', 'web', '2025-05-22 21:26:26', '2025-05-22 21:26:26'),
(346, 'create_phieu::dieu::chuyen', 'web', '2025-05-22 21:26:26', '2025-05-22 21:26:26'),
(347, 'update_phieu::dieu::chuyen', 'web', '2025-05-22 21:26:26', '2025-05-22 21:26:26'),
(348, 'delete_phieu::dieu::chuyen', 'web', '2025-05-22 21:26:26', '2025-05-22 21:26:26'),
(349, 'delete_any_phieu::dieu::chuyen', 'web', '2025-05-22 21:26:26', '2025-05-22 21:26:26'),
(350, 'duyetphieudieuchuyen_phieu::dieu::chuyen', 'web', '2025-05-22 21:26:26', '2025-05-22 21:26:26'),
(351, 'page_HanghuyPage', 'web', '2025-05-22 21:26:26', '2025-05-22 21:26:26'),
(352, 'page_ThongkeSucoPage', 'web', '2025-05-22 21:26:26', '2025-05-22 21:26:26');

-- --------------------------------------------------------

--
-- Table structure for table `phieudieuchuyen`
--

DROP TABLE IF EXISTS `phieudieuchuyen`;
CREATE TABLE IF NOT EXISTS `phieudieuchuyen` (
  `id` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `NgayLap` datetime DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `giamsat_id` int DEFAULT NULL,
  `MaKhoNguon` int DEFAULT NULL,
  `MaKhoDich` int DEFAULT NULL,
  `GhiChu` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `TrangThai` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaPCK` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `phieudieuchuyen`
--

INSERT INTO `phieudieuchuyen` (`id`, `NgayLap`, `user_id`, `giamsat_id`, `MaKhoNguon`, `MaKhoDich`, `GhiChu`, `TrangThai`, `created_at`, `updated_at`) VALUES
('PDC150525-001', '2025-05-15 00:00:00', 1, NULL, 3, 1, NULL, 1, '2025-05-15 03:17:44', '2025-05-15 03:22:37'),
('PDC150525-002', '2025-05-15 00:00:00', 1, NULL, 1, 3, NULL, 1, '2025-05-15 06:47:07', '2025-05-15 06:58:41');

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

DROP TABLE IF EXISTS `phieunhap`;
CREATE TABLE IF NOT EXISTS `phieunhap` (
  `id` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `NgayNhap` datetime DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `giamsat_id` int DEFAULT NULL,
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

INSERT INTO `phieunhap` (`id`, `NgayNhap`, `user_id`, `giamsat_id`, `nhacungcap_id`, `LyDo`, `GhiChu`, `TrangThai`, `created_at`, `updated_at`, `kho_id`) VALUES
('pn1', '2025-03-26 00:00:00', 1, NULL, 1, 1, 'kk', 1, '2025-03-26 16:25:57', '2025-04-18 00:46:24', 2),
('PN130525', NULL, 2, 29, 18, 1, NULL, 1, '2025-05-13 00:13:38', '2025-05-23 01:37:21', 1),
('PN210525-001', '2025-05-21 00:00:00', 1, 29, NULL, 0, NULL, 0, '2025-05-21 00:29:08', '2025-05-21 00:29:08', NULL),
('pn222222', NULL, 1, NULL, 18, 1, NULL, 0, '2025-04-10 21:27:06', '2025-05-23 08:48:40', 1),
('PN230525-001', '2025-05-23 00:00:00', 1, 29, NULL, 0, NULL, 0, '2025-05-23 01:09:42', '2025-05-23 01:09:42', NULL),
('PN230525-002', '2025-05-23 00:00:00', 1, 29, NULL, 0, NULL, 0, '2025-05-23 01:35:36', '2025-05-23 01:53:19', 1),
('pn3', '2025-03-06 00:00:00', 2, NULL, 3, 2, 'hihihaha', 2, '2025-03-29 02:06:47', '2025-04-23 19:20:04', 3),
('pn5', '2025-04-10 00:00:00', 1, NULL, NULL, 0, 'hahahhihi', 1, '2025-04-01 03:06:54', '2025-05-15 01:10:52', 3),
('pn7', NULL, 1, NULL, NULL, 0, NULL, 2, '2025-04-22 21:02:04', '2025-04-27 19:06:48', 2);

-- --------------------------------------------------------

--
-- Table structure for table `phieusuco`
--

DROP TABLE IF EXISTS `phieusuco`;
CREATE TABLE IF NOT EXISTS `phieusuco` (
  `id` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `phieuxuat_id` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `phieuvanchuyen_id` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
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

--
-- Dumping data for table `phieusuco`
--

INSERT INTO `phieusuco` (`id`, `phieuxuat_id`, `phieuvanchuyen_id`, `NgayTao`, `user_id`, `Mota`, `GhiChu`, `TrangThai`, `created_at`, `updated_at`) VALUES
('PSC070525', 'px3', 'pvc1', '2025-05-07 07:51:35', 1, 'hihi', NULL, 0, '2025-05-07 07:52:32', '2025-05-13 09:04:08');

-- --------------------------------------------------------

--
-- Table structure for table `phieuvanchuyen`
--

DROP TABLE IF EXISTS `phieuvanchuyen`;
CREATE TABLE IF NOT EXISTS `phieuvanchuyen` (
  `id` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `phieuxuat_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `xetai_id` int DEFAULT NULL,
  `taixe_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `NgayTao` datetime DEFAULT NULL,
  `NgayVanChuyen` datetime DEFAULT NULL,
  `GhiChu` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `TrangThai` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `MaPVC` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `phieuvanchuyen`
--

INSERT INTO `phieuvanchuyen` (`id`, `phieuxuat_id`, `xetai_id`, `taixe_id`, `user_id`, `NgayTao`, `NgayVanChuyen`, `GhiChu`, `TrangThai`, `created_at`, `updated_at`) VALUES
('PVC060525', 'pn99', 1, 1, 1, '2025-05-06 08:02:14', '2025-05-09 00:00:00', NULL, 0, '2025-05-06 08:02:29', '2025-05-06 08:53:00'),
('pvc1', 'px3', 2, 1, 1, '2025-05-06 09:57:39', '2025-05-06 00:00:00', 'hiihihhah', 2, '2025-05-06 02:56:26', '2025-05-07 02:17:43');

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
  `giamsat_id` int DEFAULT NULL,
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

INSERT INTO `phieuxuat` (`id`, `NgayXuat`, `kho_id`, `user_id`, `giamsat_id`, `LyDo`, `khachhang_id`, `GhiChu`, `TrangThai`, `created_at`, `updated_at`) VALUES
('pn99', '2025-04-14 00:00:00', 3, 2, NULL, 0, NULL, NULL, 1, '2025-04-11 07:43:36', '2025-04-23 04:20:34'),
('PX190525-001', '2025-05-19 00:00:00', NULL, 1, 29, 1, 205, NULL, 0, '2025-05-19 07:56:55', '2025-05-19 07:56:55'),
('px2', '2025-04-04 00:00:00', 2, 5, NULL, 1, 1, 'kkkkk', 2, '2025-04-01 16:41:37', '2025-04-02 03:13:50'),
('px3', '2025-04-09 00:00:00', 3, 2, 29, 0, NULL, NULL, 0, '2025-04-02 02:40:07', '2025-05-17 09:13:19');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(4, 'super_admin', 'web', '2025-03-28 07:47:01', '2025-03-28 07:47:01'),
(5, 'Người dùng', 'web', '2025-03-28 07:52:49', '2025-03-28 07:56:18'),
(6, 'Quản Lý Kho A', 'web', '2025-04-28 19:35:16', '2025-04-28 19:35:16'),
(8, 'Giám sát viên', 'web', '2025-05-22 21:14:39', '2025-05-22 21:14:39');

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
(247, 4),
(248, 4),
(249, 4),
(250, 4),
(253, 4),
(254, 4),
(255, 4),
(256, 4),
(259, 4),
(260, 4),
(261, 4),
(262, 4),
(265, 4),
(266, 4),
(267, 4),
(268, 4),
(269, 4),
(270, 4),
(271, 4),
(272, 4),
(273, 4),
(274, 4),
(275, 4),
(276, 4),
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
(313, 4),
(314, 4),
(315, 4),
(316, 4),
(319, 4),
(320, 4),
(321, 4),
(322, 4),
(323, 4),
(324, 4),
(325, 4),
(326, 4),
(327, 4),
(328, 4),
(331, 4),
(332, 4),
(333, 4),
(334, 4),
(335, 4),
(336, 4),
(337, 4),
(338, 4),
(339, 4),
(340, 4),
(341, 4),
(342, 4),
(343, 4),
(344, 4),
(345, 4),
(346, 4),
(347, 4),
(348, 4),
(349, 4),
(350, 4),
(351, 4),
(352, 4),
(331, 5),
(342, 5),
(343, 5),
(351, 5),
(352, 5),
(241, 6),
(242, 6),
(243, 6),
(244, 6),
(245, 6),
(246, 6),
(247, 6),
(248, 6),
(249, 6),
(250, 6),
(253, 6),
(254, 6),
(255, 6),
(256, 6),
(259, 6),
(260, 6),
(261, 6),
(262, 6),
(265, 6),
(266, 6),
(267, 6),
(268, 6),
(269, 6),
(270, 6),
(277, 6),
(278, 6),
(279, 6),
(280, 6),
(281, 6),
(282, 6),
(283, 6),
(284, 6),
(285, 6),
(286, 6),
(293, 6),
(294, 6),
(295, 6),
(296, 6),
(297, 6),
(298, 6),
(299, 6),
(300, 6),
(301, 6),
(302, 6),
(303, 6),
(304, 6),
(305, 6),
(306, 6),
(265, 8),
(266, 8),
(267, 8),
(268, 8),
(269, 8),
(270, 8),
(293, 8),
(300, 8),
(301, 8),
(302, 8),
(303, 8),
(304, 8),
(305, 8),
(306, 8);

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
('LgkksXpKFpMdtBjXP88ttVKkaRSHPu7WeALKFjVv', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoid2h1dXpBa1R0ZzM0SjBGSDlUTGQwYlFtMmdob3BEN2NYdXpyUllYTiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9maWxhbWVudC9leHBvcnRzLzMzL2Rvd25sb2FkP2Zvcm1hdD1jc3YiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkZ0oxTVBGTG14MHU0TkxjVHZ5dUJPdUljWkEyamhmTWE4SnY1TXd4ZEZwblFnUkR0NVBDZG0iO3M6ODoiZmlsYW1lbnQiO2E6MDp7fXM6NjoidGFibGVzIjthOjE6e3M6NDg6Ijg2NTlhN2YyNzA0YjBmMzhjYmJlYTZkYTA2OGJjMWQ1X3RvZ2dsZWRfY29sdW1ucyI7YToxOntzOjY6IkdoaUNodSI7YjowO319fQ==', 1747996272),
('taxCrK6SZeSRVoN7AiMdmBQy4Y0FrlJfh4bA9n3x', 29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiVVpNRUN6WmVBTlk4bzhaRzF1RVVHZGFoU0J1a0VDaGw5WkVTWm1FMSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwOiJodHRwOi8vbG9jYWxob3N0OjgwMDAvcGhpZXVuaGFwL1BOMTMwNTI1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjk7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiRnSjFNUEZMbXgwdTROTGNUdnl1Qk91SWNaQTJqaGZNYThKdjVNd3hkRnBuUWdSRHQ1UENkbSI7czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1747995608);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `taixe`
--

INSERT INTO `taixe` (`id`, `TenTaiXe`, `Sdt`, `CCCD`, `BangLai`, `DiaChi`, `NamSinh`, `GhiChu`, `TrangThai`, `created_at`, `updated_at`) VALUES
(1, 'Nam', '0123456789', '12334524', '43654247', 'Tây nguyên', '2025-04-21', 'eqe', 1, '2025-04-21 03:12:57', '2025-05-06 08:52:21');

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tonkho`
--

INSERT INTO `tonkho` (`kho_id`, `vattu_id`, `SoLuong`, `vitri_id`, `NgayCapNhat`, `created_at`, `updated_at`, `id`) VALUES
(2, 2, 12.00, 3, '2025-03-28 08:17:13', '2025-03-28 01:17:13', '2025-03-28 01:17:13', 8),
(2, 1, 246.00, 4, '2025-03-28 08:17:13', '2025-03-28 01:17:13', '2025-03-28 01:17:13', 9),
(1, 1, 20.00, 7, '2025-03-29 06:53:18', '2025-03-28 23:53:18', '2025-04-28 02:18:10', 10),
(3, 2, 3.00, 9, '2025-05-15 06:47:21', '2025-04-01 03:07:23', '2025-05-14 23:47:21', 11),
(3, 6, 123456.00, 6, '2025-05-15 06:47:21', '2025-05-06 20:54:25', '2025-05-14 23:47:21', 17),
(1, 10, 789.00, 2, '2025-05-07 03:54:25', '2025-05-06 20:54:25', '2025-05-06 20:54:25', 18),
(1, 6, 0.00, 1, '2025-05-15 06:47:21', '2025-05-14 20:22:37', '2025-05-14 23:47:21', 19),
(1, 2, 0.00, 1, '2025-05-15 06:47:21', '2025-05-14 20:22:37', '2025-05-14 23:47:21', 20),
(1, 1, 26.00, 2, '2025-05-23 08:37:21', '2025-05-23 01:37:21', '2025-05-23 01:37:21', 21),
(1, 7, 6.00, 7, '2025-05-23 08:37:21', '2025-05-23 01:37:21', '2025-05-23 01:37:21', 22),
(1, 1, 1.00, 1, '2025-05-23 08:37:21', '2025-05-23 01:37:21', '2025-05-23 01:37:21', 23);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nhanvien_id` int DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Active` tinyint DEFAULT '1',
  `cccd` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Birth` date DEFAULT NULL,
  `Phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_renew_password_at` timestamp NULL DEFAULT NULL,
  `force_renew_password` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nhanvien_id`, `image`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `Active`, `cccd`, `Birth`, `Phone`, `Address`, `created_at`, `updated_at`, `last_renew_password_at`, `force_renew_password`) VALUES
(1, 1, 'nhanvien/01JTSKQ7Q445GQS142HPH1460V.jpg', 'PhanLý', 'a@gmail.com', NULL, '$2y$12$gJ1MPFLmx0u4NLcTvyuBOuIcZA2jhfMa8Jv5MwxdFpnQgRDt5PCdm', 'Pt7s4IcPs7vTmn220Mrc2rc0A80bGCM34GSbPQoU6OR3wEgaFyRV9iPKQaW1', 1, '031203011243', '2003-12-19', '0865489209', 'Hải Phòng', '2025-03-25 23:54:49', '2025-05-08 21:09:11', '2025-05-08 21:09:11', 0),
(2, NULL, NULL, 'Trung Sơn', 'son123@gmail.com', NULL, '$2y$12$X.I0JMKdM53MCUQyNwy.ounKVgEtsewXq3JPlZvgl8Iz4mSbf54rK', 'rk7aRbboyZOYOaoiE5fh4rRaCgf4pCP681X7juD9ZTccob8GOcD8AahcN7s0', 1, NULL, '2022-01-23', '0763421232', 'Hải Phòng', '2025-03-26 00:03:04', '2025-05-06 18:49:12', NULL, 0),
(28, 2, 'nhanvien/01JTSZJ4ZNK58H4ZS4MCANZG21.jpg', 'aaaa', 'ly90488@st.vimaru.edu.vn', NULL, '$2y$12$C3FDW2liAtoT3zaw0YHot.VFepm8lXGExwmiVw/2AN4mHJx6TM/EC', NULL, 0, '031203011241', '2025-04-28', '0865489999', 'trái đất', '2025-05-09 00:35:47', '2025-05-21 01:30:10', NULL, 1),
(29, 4, 'nhanvien/01JTT0A14V0T0CDXRS9WNG6XKA.jpg', 'Vinh', 'vinz123@gmail.com', NULL, '$2y$12$gJ1MPFLmx0u4NLcTvyuBOuIcZA2jhfMa8Jv5MwxdFpnQgRDt5PCdm', NULL, 1, '031876011243', '2025-05-29', '0764162672', 'trái đất', '2025-05-09 00:49:10', '2025-05-23 01:06:06', '2025-05-15 01:39:41', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vattu`
--

DROP TABLE IF EXISTS `vattu`;
CREATE TABLE IF NOT EXISTS `vattu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `MaVT` varchar(25) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `vattu`
--

INSERT INTO `vattu` (`id`, `MaVT`, `TenVT`, `LaTP`, `donvitinh_id`, `KichThuoc`, `MauSac`, `DacDiem`, `created_at`, `updated_at`) VALUES
(1, 'S', 'Lưu huỳnh', 0, 1, NULL, 'vàng', 'Hoá chất', '2025-03-27 03:56:43', '2025-04-24 00:11:41'),
(2, 'TTS', 'Đế tái sinh', 1, 2, '10x10x10 cm', 'Đen', 'Rẻ', '2025-03-26 21:25:39', '2025-04-24 00:12:24'),
(3, 'CS', 'Đế giầy cao su', 1, 2, '5 cm', 'Đen', 'Rẻ', '2025-04-24 00:09:39', '2025-04-24 00:23:56'),
(4, 'CS1', 'Đế giầy cao su L1', 1, 2, '10 cm', 'Đen', 'Đắt', '2025-04-24 00:09:39', '2025-04-24 00:23:56'),
(5, 'TS', 'Đế giầy nhựa tái sinh', 1, 2, '15 cm', 'Đen', 'Rẻ', '2025-04-24 00:09:39', '2025-04-24 00:23:56'),
(6, 'AS', 'Acid Stearic', 0, 1, NULL, NULL, 'Hoá chất', '2025-04-24 00:09:39', '2025-04-24 00:23:56'),
(7, 'CACO3', 'Bột nhẹ CaCO3', 0, 1, NULL, NULL, 'Hoá chất', '2025-04-24 00:09:39', '2025-04-24 00:23:56'),
(8, 'CS SVR', 'Cao su SVR 3L', 0, 1, NULL, NULL, 'Hoá chất', '2025-04-24 00:09:39', '2025-04-24 00:23:56'),
(9, 'LH', 'Lưu huỳnh', 0, 1, NULL, NULL, 'Hoá chất', '2025-04-24 00:09:39', '2025-04-24 00:23:56'),
(10, 'OK', 'Oxits kẽm', 0, 1, NULL, NULL, 'Hoá chất', '2025-04-24 00:09:39', '2025-04-24 00:23:56'),
(11, 'PL', 'Phế liệu', 0, 1, NULL, NULL, 'Hoá chất', '2025-04-24 00:09:39', '2025-04-24 00:23:56'),
(12, 'RPO', 'Dầu hóa dẻo RPO', 0, 1, NULL, NULL, 'Hoá chất', '2025-04-24 00:09:39', '2025-04-24 00:23:56'),
(13, 'TC', 'Than cục', 0, 1, NULL, NULL, 'Hoá chất', '2025-04-24 00:09:39', '2025-04-24 00:23:56'),
(14, 'TH', 'Than cám', 0, 1, NULL, NULL, 'Hoá chất', '2025-04-24 00:09:39', '2025-04-24 00:23:56'),
(15, 'TL', 'Toluen', 0, 1, NULL, NULL, 'Hoá chất', '2025-04-24 00:09:39', '2025-04-24 00:23:56'),
(16, 'XT', 'Xúc tiến M', 0, 1, NULL, NULL, 'Hoá chất', '2025-04-24 00:09:39', '2025-04-24 00:23:56');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `xetai`
--

INSERT INTO `xetai` (`id`, `BienSo`, `TenXe`, `HangXe`, `TaiTrong`, `MauSac`, `GhiChu`, `TrangThai`, `created_at`, `updated_at`) VALUES
(1, '29C-866.66', 'xe tải', 'toyota', '999', 'xanh-blue', 'xe cũ', 1, '2025-05-06 02:26:49', '2025-05-07 03:23:26'),
(2, '99A-999.99', 'xe con', 'honda', '23', 'Trắng', NULL, 1, '2025-05-06 07:10:00', '2025-05-07 03:23:30');

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
