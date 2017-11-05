-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 17, 2017 at 10:25 PM
-- Server version: 10.0.32-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_youtube`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE `access` (
  `id` int(11) NOT NULL,
  `referer` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `date_access` datetime DEFAULT NULL,
  `date_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `api_log`
--

CREATE TABLE `api_log` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `params` text,
  `result` longtext,
  `create_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description` text CHARACTER SET utf8,
  `url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `theme` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `is_draft` tinyint(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `name`, `description`, `url`, `theme`, `status`, `is_draft`, `created`, `modified`) VALUES
(14, 'XemXem.Online', '', 'magiao.club', 'bsyoutube', 1, 0, '2017-09-10 09:41:10', '2017-10-10 16:11:55'),
(15, 'Hài Tết Hay', '', 'youtube2.local', 'default', 1, 1, '2017-09-20 21:16:24', '2017-09-20 21:23:55'),
(16, 'Kokoyolo', 'Every New Videos', 'kokoyolo.com', 'default', 1, 1, '2017-10-11 21:22:04', '2017-10-13 08:35:01'),
(17, 'Kokoyolo', 'thix thi them', 'kokoyolo.com', 'default', 1, 0, '2017-10-14 14:46:01', '2017-10-14 14:49:02'),
(18, '45.77.195.56', 'Bê tô test', '45.77.195.56', 'default', 1, 0, '2017-10-11 21:22:04', '2017-10-13 08:35:01');

-- --------------------------------------------------------

--
-- Table structure for table `blogs_categories`
--

CREATE TABLE `blogs_categories` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs_categories`
--

INSERT INTO `blogs_categories` (`id`, `blog_id`, `category_id`) VALUES
(1, 14, 9),
(2, 14, 10),
(1, 18, 9),
(2, 18, 10);

-- --------------------------------------------------------

--
-- Table structure for table `blog_settings`
--

CREATE TABLE `blog_settings` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_settings`
--

INSERT INTO `blog_settings` (`id`, `blog_id`, `key`, `value`) VALUES
(1, 13, 'style_file', 'buihieublog'),
(2, 13, 'logo', 'logo/cropped-logo.png'),
(3, 13, 'bg_header', 'http://thamvantamly.net/upload/image/lam-dep-voi-cam-gao2.jpg'),
(4, 13, 'page_images', 'http://thamvantamly.net/upload/image/lam-dep-voi-cam-gao2.jpg'),
(5, 13, 'keywords', 'lam dep, lam dep sau sinh, phu nu, cach lam dep, lam dep tai nha, lam dep voi dau dua, lam dep tu thien nhien'),
(6, 13, 'short_description', 'Lam dep - Những phương pháp làm đẹp da, tóc đẹp, cải thiện vóc dáng hiệu quả và đơn giản. Chia sẻ về cách chọn mỹ phẩm, trang điểm, trị mun, giảm cân cho chị em.'),
(7, 14, 'style_file', 'style1'),
(8, 14, 'logo', 'logo-xemxem.jpg'),
(9, 14, 'bg_header', ''),
(10, 14, 'keywords', ''),
(11, 14, 'page_images', ''),
(12, 14, 'menu_header_id', '1'),
(13, 14, 'menu_footer_id', '2'),
(14, 14, 'short_description', ''),
(15, 14, 'menu_homepage_id', '3'),
(16, 15, 'style_file', 'style1'),
(26, 14, 'youtube_api', 'AIzaSyA9FcWfrdY2CuEK6S8AymAnh90d4vo2DRw'),
(28, 14, 'footer_data', '<ul class=\"footer-nav\">\r\n    <li><a href=\"dmca/index.html\">Bản quyền nội dung</a></li>\r\n    <li><a href=\"lien-he/index.html\">Liên hệ</a></li>\r\n    <li><a href=\"https://truyengo.com/\" target=\"_blank\">Truyện Tranh</a></li>\r\n    <li><a href=\"https://tophbo.com/\" target=\"_blank\">Video Clip</a></li>\r\n</ul>\r\n<div class=\"footer-txt\">\r\n    <p>2017 © xemxem.online<br>\r\n        Xem clip hài, phim hài mới hay nhất, Liveshow, Gameshow đặc sắc nhất.<br>\r\n        Tất cả các video dưới sự quản lý của youtube. Xemhbo.com không chịu trách nhiệm liên quan đến nội dung.\r\n    </p>\r\n</div>'),
(17, 15, 'logo', ''),
(18, 15, 'bg_header', ''),
(19, 15, 'keywords', ''),
(20, 15, 'page_images', ''),
(21, 15, 'menu_homepage_id', '0'),
(22, 15, 'menu_header_id', '0'),
(23, 15, 'menu_footer_id', '0'),
(24, 15, 'youtube_api', 'AIzaSyA9FcWfrdY2CuEK6S8AymAnh90d4vo2DRw'),
(25, 15, 'short_description', ''),
(29, 16, 'style_file', 'style1'),
(30, 16, 'logo', ''),
(31, 16, 'bg_header', ''),
(32, 16, 'keywords', 'Videos'),
(33, 16, 'page_images', ''),
(34, 16, 'menu_homepage_id', '7'),
(35, 16, 'menu_header_id', '6'),
(36, 16, 'menu_footer_id', '8'),
(37, 16, 'youtube_api', 'AIzaSyA9FcWfrdY2CuEK6S8AymAnh90d4vo2DRw'),
(38, 16, 'short_description', ''),
(39, 16, 'footer_data', ''),
(40, 16, 'code_wmt', ''),
(41, 16, 'code_analytics', ''),
(42, 16, 'ads_bottom_menu', ''),
(43, 16, 'ads_home_sidebar', ''),
(44, 16, 'ads_top_footer', ''),
(45, 16, 'ads_video_left', ''),
(46, 16, 'ads_video_right', ''),
(47, 17, 'style_file', 'style1'),
(48, 17, 'logo', ''),
(49, 17, 'bg_header', ''),
(50, 17, 'keywords', 'gi cung dc'),
(51, 17, 'page_images', ''),
(52, 17, 'menu_homepage_id', '11'),
(53, 17, 'menu_header_id', '10'),
(54, 17, 'menu_footer_id', '12'),
(55, 17, 'youtube_api', 'AIzaSyA9FcWfrdY2CuEK6S8AymAnh90d4vo2DRw'),
(56, 17, 'code_wmt', ''),
(57, 17, 'code_analytics', ''),
(58, 17, 'short_description', ''),
(59, 17, 'footer_data', ''),
(60, 17, 'ads_bottom_menu', ''),
(61, 17, 'ads_home_sidebar', ''),
(62, 17, 'ads_top_footer', ''),
(63, 17, 'ads_video_left', ''),
(64, 17, 'ads_video_right', ''),
(65, 18, 'style_file', 'style1'),
(66, 18, 'logo', 'logo-xemxem.jpg'),
(67, 18, 'bg_header', ''),
(68, 18, 'keywords', ''),
(69, 18, 'page_images', ''),
(70, 18, 'menu_header_id', '1'),
(71, 18, 'menu_footer_id', '2'),
(72, 18, 'short_description', ''),
(73, 18, 'menu_homepage_id', '3'),
(74, 18, 'youtube_api', 'AIzaSyDf9S1biT_1xLmQ4rjmWNZnr7GO7DHx658'),
(75, 18, 'footer_data', '<ul class=\"footer-nav\">\r\n    <li><a href=\"dmca/index.html\">Bản quyền nội dung</a></li>\r\n    <li><a href=\"lien-he/index.html\">Liên hệ</a></li>\r\n    <li><a href=\"https://truyengo.com/\" target=\"_blank\">Truyện Tranh</a></li>\r\n    <li><a href=\"https://tophbo.com/\" target=\"_blank\">Video Clip</a></li>\r\n</ul>\r\n<div class=\"footer-txt\">\r\n    <p>2017 © xemxem.online<br>\r\n        Xem clip hài, phim hài mới hay nhất, Liveshow, Gameshow đặc sắc nhất.<br>\r\n        Tất cả các video dưới sự quản lý của youtube. Xemhbo.com không chịu trách nhiệm liên quan đến nội dung.\r\n    </p>\r\n</div>');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `is_draft` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `description`, `slug`, `parent_id`, `position`, `status`, `is_draft`, `created`, `modified`) VALUES
(7, 'Làm đẹp', '', '', 'lam-dep', 0, 0, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Tư vấn làm đẹp', '', '', 'tu-van-lam-dep', 0, 0, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Clip Hot', '', '', 'clip-hot', 0, 0, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Kiếm Tiền', '', '', 'kiem-tien', 9, 0, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `gen_menus`
--

CREATE TABLE `gen_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_id` int(10) DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `danhmuc_id` int(10) DEFAULT NULL,
  `depth` int(10) DEFAULT NULL,
  `left` int(10) DEFAULT NULL,
  `right` int(10) DEFAULT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `baiviet_id` int(10) DEFAULT NULL,
  `ord` int(10) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gen_menus`
--

INSERT INTO `gen_menus` (`id`, `type_id`, `name`, `url`, `danhmuc_id`, `depth`, `left`, `right`, `parent_id`, `baiviet_id`, `ord`, `date_created`, `date_updated`) VALUES
(21, 1, 'Clip Hot', NULL, 9, 0, 2, 29, 0, NULL, 1, '2017-09-20 00:18:14', '2017-09-20 00:18:14'),
(22, 1, 'Tin Mới', NULL, 9, 0, 32, 33, 0, NULL, 16, '2017-09-20 00:18:22', '2017-09-20 00:18:22'),
(23, 1, 'Hài Hước', NULL, 9, 0, 30, 31, 0, NULL, 15, '2017-09-20 00:18:27', '2017-09-20 00:18:27'),
(24, 1, 'Âm Nhạc', NULL, 9, 0, 34, 35, 0, NULL, 17, '2017-09-20 00:18:35', '2017-09-20 00:18:35'),
(25, 1, 'Phim', NULL, 9, 0, 36, 37, 0, NULL, 18, '2017-09-20 00:18:39', '2017-09-20 00:18:39'),
(26, 1, 'Kiếm Tiền Online', '', 9, 1, 3, 4, 21, NULL, 2, '2017-09-20 00:18:52', '2017-10-13 09:18:44'),
(27, 1, 'Nữ Sinh', NULL, 9, 1, 5, 6, 21, NULL, 3, '2017-09-20 00:18:56', '2017-09-20 00:18:56'),
(28, 1, 'Kinh Dị', NULL, 9, 1, 7, 8, 21, NULL, 4, '2017-09-20 00:19:00', '2017-09-20 00:19:00'),
(29, 1, 'Clip Ma', NULL, 9, 1, 9, 10, 21, NULL, 5, '2017-09-20 00:19:11', '2017-09-20 00:19:11'),
(30, 1, 'Cảnh Sát Giao Thông', NULL, 9, 1, 17, 18, 21, NULL, 9, '2017-09-20 00:19:42', '2017-09-20 00:19:42'),
(31, 1, 'Tai Nạn', NULL, 9, 1, 15, 16, 21, NULL, 8, '2017-09-20 00:19:53', '2017-09-20 00:19:53'),
(32, 1, 'Clip Đánh Nhau', NULL, 9, 1, 13, 14, 21, NULL, 7, '2017-09-20 00:20:05', '2017-09-20 00:20:05'),
(33, 1, 'Clip Sốc', NULL, 9, 1, 11, 12, 21, NULL, 6, '2017-09-20 00:20:17', '2017-09-20 00:20:17'),
(34, 1, 'Phát Minh', NULL, 9, 1, 21, 22, 21, NULL, 11, '2017-09-20 00:21:03', '2017-09-20 00:21:03'),
(35, 1, 'Chuyện Lạ', NULL, 9, 1, 19, 20, 21, NULL, 10, '2017-09-20 00:21:09', '2017-09-20 00:21:09'),
(37, 1, 'Lừa Đảo', NULL, 9, 1, 23, 24, 21, NULL, 12, '2017-09-20 00:23:37', '2017-09-20 00:23:37'),
(38, 1, 'Xôn Xao', '', 9, 1, 25, 26, 21, NULL, 13, '2017-09-20 08:58:14', '2017-09-20 08:58:14'),
(39, 1, 'Game Show', '', 9, 1, 27, 28, 21, NULL, 14, '2017-09-20 08:59:07', '2017-09-20 08:59:07'),
(40, 2, 'Gặp Nhau Cuối Năm', '', 9, 0, 0, 0, 0, NULL, NULL, '2017-09-20 10:04:58', '2017-09-20 10:04:58'),
(41, 2, 'Tom And Jerry', '', 9, 0, 0, 0, 0, NULL, NULL, '2017-09-20 10:05:10', '2017-09-20 10:05:10'),
(42, 2, 'Kết Nối Trái Tim', '', 9, 0, 0, 0, 0, NULL, NULL, '2017-09-20 10:22:41', '2017-09-20 10:22:41'),
(43, 2, 'Hội Ngộ Danh Hài', 'chuyen-muc/bui-van-hieu', 9, 0, 0, 0, 0, NULL, NULL, '2017-09-20 10:23:39', '2017-09-20 10:23:39'),
(44, 3, 'Hài Tết 2018', '', 9, 0, 12, 13, 0, NULL, 6, '2017-09-20 10:31:02', '2017-09-20 10:31:02'),
(45, 3, 'Hài Chiến Thắng', '', 9, 0, 10, 11, 0, NULL, 5, '2017-09-20 10:31:24', '2017-09-20 10:31:24'),
(47, 3, 'Hài Tết Mới Nhất', '', 9, 0, 2, 5, 0, NULL, 1, '2017-09-22 17:33:22', '2017-09-22 17:33:22'),
(49, 3, 'Táo Quân 2018', '', 9, 0, 6, 9, 0, NULL, 3, '2017-09-22 17:35:19', '2017-09-22 17:35:19'),
(51, 2, 'Hài kem xôi', '', 9, 0, 0, 0, 0, NULL, NULL, '2017-10-10 18:13:31', '2017-10-10 18:13:31'),
(52, 3, 'hài tết 123', '', 9, 1, 3, 4, 47, NULL, 2, '2017-10-11 11:02:56', '2017-10-11 11:02:56'),
(58, 6, 'Action movies', '', 9, 0, 2, 5, 0, NULL, 1, '2017-10-11 22:23:54', '2017-10-11 22:23:54'),
(59, 6, 'Best action movies', '', 9, 1, 3, 4, 58, NULL, 2, '2017-10-11 22:24:04', '2017-10-11 22:24:04'),
(60, 6, 'Cartoon For kid', '', 9, 0, 0, 0, 0, NULL, NULL, '2017-10-11 22:24:13', '2017-10-11 22:24:13'),
(61, 7, 'Wow pvp 5.4.8', '', 9, 0, 0, 0, 0, NULL, NULL, '2017-10-11 22:24:53', '2017-10-11 22:24:53'),
(62, 7, 'Funny video', '', 9, 0, 0, 0, 0, NULL, NULL, '2017-10-11 22:24:58', '2017-10-11 22:24:58'),
(63, 7, 'Mickey mouse classic', '', 9, 0, 0, 0, 0, NULL, NULL, '2017-10-11 22:25:09', '2017-10-11 22:25:09'),
(64, 8, 'Chim sẻ đi nắng', '', 9, 0, 2, 7, 0, NULL, 1, '2017-10-11 22:26:01', '2017-10-11 22:26:01'),
(65, 8, 'Phim hành động', '', 9, 0, 8, 9, 0, NULL, 4, '2017-10-11 22:26:06', '2017-10-11 22:26:06'),
(66, 8, 'Phim hài hước', '', 9, 0, 10, 11, 0, NULL, 5, '2017-10-11 22:26:13', '2017-10-11 22:26:13'),
(67, 8, 'Đế chế random 4v4', '', 9, 1, 3, 4, 64, NULL, 2, '2017-10-11 22:26:22', '2017-10-11 22:26:22'),
(68, 8, 'Đế chế solo cung R', '', 9, 1, 5, 6, 64, NULL, 3, '2017-10-11 22:26:32', '2017-10-11 22:26:32'),
(69, 6, 'movies', '', 9, 0, 0, 0, 0, NULL, NULL, '2017-10-12 23:07:51', '2017-10-12 23:07:51'),
(70, 11, 'Phim Hai Huoc', '', 9, 0, 0, 0, 0, NULL, NULL, '2017-10-14 14:49:33', '2017-10-14 14:49:33'),
(71, 11, 'Phim hoat hinh', '', 9, 0, 0, 0, 0, NULL, NULL, '2017-10-14 14:50:08', '2017-10-14 14:50:08'),
(72, 10, 'Action Movies', '', 9, 0, 0, 0, 0, NULL, NULL, '2017-10-14 14:51:14', '2017-10-14 14:51:14'),
(73, 10, 'Cartoon for Kid', '', 9, 0, 0, 0, 0, NULL, NULL, '2017-10-14 14:51:23', '2017-10-14 14:51:23'),
(74, 10, 'Best EDM', '', 9, 0, 0, 0, 0, NULL, NULL, '2017-10-14 14:51:31', '2017-10-14 14:51:31');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL,
  `position` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `ord` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `url`, `parent_id`, `status`, `position`, `type`, `ord`) VALUES
(1, 'Header menu 1', NULL, 0, 1, 1, NULL, NULL),
(2, 'Footer menu', NULL, 0, 1, 2, NULL, NULL),
(3, 'Trang Chủ', NULL, 0, 1, 3, NULL, NULL),
(10, 'kokoyolo header', NULL, 0, 1, 10, NULL, NULL),
(11, 'kokoyolo home', NULL, 0, 1, 11, NULL, NULL),
(12, 'kokoyolo footer', NULL, 0, 1, 12, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `proxies`
--

CREATE TABLE `proxies` (
  `id` int(11) NOT NULL,
  `host` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `port` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `region` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `uptime` float NOT NULL,
  `dateadd` datetime NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `proxies`
--

INSERT INTO `proxies` (`id`, `host`, `port`, `type`, `country`, `region`, `city`, `uptime`, `dateadd`, `status`) VALUES
(1, 'IP Address', 'port', 'Code', 'Anonymity', 'Google', 'Https', 0, '2017-08-15 19:04:55', 0),
(2, '203.74.4.6', '80', 'TW', 'elite proxy', 'no', 'no', 1, '2017-08-15 19:04:55', 0),
(3, '89.187.217.116', '80', 'LB', 'anonymous', 'no', 'no', 1, '2017-08-15 19:04:55', 0),
(4, '217.15.85.202', '8080', 'FR', 'elite proxy', 'no', 'no', 1, '2017-08-15 19:04:55', 0),
(5, '212.192.120.42', '8080', 'RU', 'anonymous', 'no', 'no', 1, '2017-08-15 19:04:55', 0),
(6, '66.70.191.215', '1080', 'US', 'elite proxy', 'no', 'yes', 1, '2017-08-15 19:04:55', 0),
(7, '52.11.203.152', '8083', 'US', 'anonymous', 'no', 'yes', 1, '2017-08-15 19:04:55', 0),
(8, '171.255.199.53', '80', 'VN', 'anonymous', 'no', 'no', 1, '2017-08-15 19:04:55', 0),
(9, '201.222.55.93', '8080', 'PY', 'elite proxy', 'no', 'no', 1, '2017-08-15 19:04:55', 0),
(10, '219.76.4.72', '88', 'HK', 'anonymous', 'no', 'no', 1, '2017-08-15 19:04:55', 0),
(11, '118.97.26.126', '80', 'ID', 'elite proxy', 'no', 'no', 1, '2017-08-15 19:04:55', 0),
(12, '171.255.199.56', '80', 'VN', 'anonymous', 'no', 'no', 1, '2017-08-15 19:04:55', 0),
(13, '138.204.145.39', '80', 'BR', 'anonymous', 'no', 'yes', 1, '2017-08-15 19:04:55', 0),
(14, '180.250.159.69', '80', 'ID', 'elite proxy', 'no', 'no', 1, '2017-08-15 19:04:55', 0),
(15, '89.236.17.106', '3128', 'SE', 'elite proxy', 'no', 'yes', 1, '2017-08-15 19:04:55', 0),
(16, '171.255.199.57', '80', 'VN', 'anonymous', 'no', 'no', 1, '2017-08-15 19:04:55', 0),
(17, '203.74.4.0', '80', 'TW', 'elite proxy', 'no', 'no', 1, '2017-08-15 19:04:55', 0),
(18, '213.136.77.246', '80', 'DE', 'anonymous', 'no', 'no', 1, '2017-08-15 19:04:55', 0),
(19, '200.162.142.178', '3128', 'BR', 'anonymous', 'no', 'yes', 1, '2017-08-15 19:04:55', 0),
(20, '158.69.170.220', '3128', 'CA', 'anonymous', 'no', 'yes', 1, '2017-08-15 19:04:55', 0),
(21, '203.74.4.3', '80', 'TW', 'elite proxy', 'no', 'no', 1, '2017-08-15 19:04:55', 0),
(22, '221.133.44.142', '8080', 'MY', 'anonymous', 'no', 'yes', 1, '2017-08-15 19:05:24', 0),
(23, '171.255.199.63', '80', 'VN', 'anonymous', 'no', 'no', 1, '2017-08-15 19:05:24', 0),
(24, '219.76.4.12', '88', 'HK', 'anonymous', 'no', 'no', 1, '2017-08-15 19:05:24', 0),
(25, '171.255.199.55', '80', 'VN', 'anonymous', 'no', 'no', 1, '2017-08-15 19:05:24', 0),
(26, '177.67.83.145', '8080', 'BR', 'anonymous', 'no', 'yes', 1, '2017-08-15 19:05:24', 0),
(27, '203.74.4.4', '80', 'TW', 'elite proxy', 'no', 'no', 1, '2017-08-15 19:05:24', 0),
(28, '189.40.191.95', '8080', 'BR', 'anonymous', 'no', 'no', 1, '2017-08-15 19:05:24', 0),
(29, '179.189.236.130', '53281', 'BR', 'elite proxy', 'no', 'yes', 1, '2017-08-15 19:05:24', 0),
(30, '144.217.104.145', '8080', 'CA', 'anonymous', 'no', 'yes', 1, '2017-08-15 19:05:24', 0),
(31, '89.187.217.114', '80', 'LB', 'anonymous', 'no', 'no', 1, '2017-08-15 19:05:24', 0),
(32, '192.99.98.159', '3128', 'CA', 'anonymous', 'no', 'yes', 1, '2017-08-15 19:05:24', 0),
(33, '52.237.24.110', '80', 'CA', 'anonymous', 'no', 'no', 1, '2017-08-15 19:05:24', 0),
(34, '59.145.117.26', '3128', 'IN', 'anonymous', 'no', 'no', 1, '2017-08-15 19:05:24', 0),
(35, '171.255.199.52', '80', 'VN', 'anonymous', 'no', 'no', 1, '2017-08-15 19:05:24', 0),
(36, '203.74.4.7', '80', 'TW', 'elite proxy', 'no', 'no', 1, '2017-08-15 19:05:24', 0),
(37, '171.255.199.54', '80', 'VN', 'anonymous', 'no', 'no', 1, '2017-08-15 19:05:24', 0),
(38, '92.62.132.138', '80', 'LT', 'anonymous', 'no', 'no', 1, '2017-08-15 19:05:24', 0),
(39, '171.255.199.51', '80', 'VN', 'anonymous', 'no', 'no', 1, '2017-08-15 19:05:24', 0),
(40, '180.250.159.68', '80', 'ID', 'elite proxy', 'no', 'no', 1, '2017-08-15 19:05:24', 0),
(41, '167.114.34.116', '80', 'CA', 'anonymous', 'no', 'yes', 1, '2017-08-15 19:05:24', 0),
(42, '171.255.199.60', '80', 'VN', 'anonymous', 'no', 'no', 1, '2017-08-15 19:05:24', 0),
(43, '213.136.89.121', '80', 'DE', 'anonymous', 'no', 'no', 1, '2017-08-15 19:05:24', 0),
(44, '37.120.250.132', '8080', 'RO', 'elite proxy', 'no', 'yes', 2, '2017-08-15 19:05:24', 0),
(45, '203.74.4.5', '80', 'TW', 'elite proxy', 'no', 'no', 2, '2017-08-15 19:05:24', 0),
(46, '203.74.4.1', '80', 'TW', 'elite proxy', 'no', 'no', 2, '2017-08-15 19:05:24', 0),
(47, '203.74.4.2', '80', 'TW', 'elite proxy', 'no', 'no', 2, '2017-08-15 19:05:24', 0),
(48, '203.204.203.146', '443', 'TW', 'elite proxy', 'no', 'no', 2, '2017-08-15 19:05:24', 0),
(49, '180.250.159.70', '80', 'ID', 'elite proxy', 'no', 'no', 2, '2017-08-15 19:05:24', 0),
(50, '180.249.231.245', '9001', 'ID', 'elite proxy', 'no', 'no', 2, '2017-08-15 19:05:24', 0),
(51, '138.197.174.232', '80', 'CA', 'elite proxy', 'no', 'no', 20, '2017-08-15 19:05:24', 0),
(52, '181.214.224.96', '3128', 'US', 'elite proxy', 'no', 'no', 20, '2017-08-15 19:05:24', 0),
(53, '149.56.42.236', '3128', 'CA', 'anonymous', 'no', 'no', 20, '2017-08-15 19:05:24', 0),
(54, '183.89.42.248', '8080', 'TH', 'transparent', 'no', 'no', 20, '2017-08-15 19:05:24', 0),
(55, '47.74.65.214', '1080', 'US', 'anonymous', 'no', 'no', 20, '2017-08-15 19:05:24', 0),
(56, '103.26.95.100', '80', 'TL', 'anonymous', 'no', 'no', 20, '2017-08-15 19:05:24', 0),
(57, '220.142.194.43', '8088', 'TW', 'elite proxy', 'no', 'no', 20, '2017-08-15 19:05:24', 0),
(58, '46.36.65.10', '3128', 'LT', 'elite proxy', 'no', 'no', 20, '2017-08-15 19:05:24', 0),
(59, '109.122.86.22', '53281', 'RS', 'transparent', 'no', 'no', 20, '2017-08-15 19:05:24', 0),
(60, '172.106.236.91', '8118', 'US', 'transparent', 'no', 'no', 20, '2017-08-15 19:05:24', 0),
(61, '45.76.92.225', '3128', 'DE', 'anonymous', 'no', 'no', 20, '2017-08-15 19:05:24', 0),
(62, '5.232.13.239', '80', 'IR', 'transparent', 'no', 'no', 20, '2017-08-15 19:05:24', 0),
(63, '190.198.88.121', '8080', 'VE', 'transparent', 'no', 'no', 20, '2017-08-15 19:05:24', 0),
(64, '217.73.133.214', '8081', 'AL', 'transparent', 'no', 'no', 20, '2017-08-15 19:05:24', 0),
(65, '185.15.109.72', '8080', 'CZ', 'transparent', 'no', 'no', 1, '2017-08-15 19:05:24', 0),
(66, '201.242.57.183', '3128', 'VE', 'transparent', 'no', 'no', 1, '2017-08-15 19:05:24', 0),
(67, '151.233.54.103', '80', 'IR', 'transparent', 'no', 'no', 1, '2017-08-15 19:05:24', 0),
(68, '36.67.64.9', '8080', 'ID', 'transparent', 'no', 'no', 2, '2017-08-15 19:05:24', 0),
(69, '197.39.86.178', '8080', 'EG', 'transparent', 'no', 'no', 2, '2017-08-15 19:05:24', 0),
(70, '72.169.157.160', '87', 'US', 'transparent', 'no', 'no', 2, '2017-08-15 19:05:24', 0),
(71, '217.75.204.6', '8080', 'BA', 'transparent', 'no', 'no', 2, '2017-08-15 19:05:24', 0),
(72, '202.40.177.230', '53281', 'BD', 'transparent', 'no', 'no', 3, '2017-08-15 19:05:24', 0),
(73, '186.250.98.1', '8080', 'BR', 'transparent', 'no', 'no', 3, '2017-08-15 19:05:24', 0),
(74, '85.255.0.100', '3128', 'CZ', 'transparent', 'no', 'no', 3, '2017-08-15 19:05:24', 0),
(75, '186.226.38.166', '8080', 'BR', 'transparent', 'no', 'no', 3, '2017-08-15 19:05:24', 0),
(76, '79.147.241.15', '8080', 'ES', 'transparent', 'no', 'no', 3, '2017-08-15 19:05:24', 0),
(77, '189.92.78.197', '8080', 'BR', 'transparent', 'no', 'no', 3, '2017-08-15 19:05:24', 0),
(78, '109.194.226.203', '53281', 'RU', 'transparent', 'no', 'no', 3, '2017-08-15 19:05:24', 0),
(79, '147.75.123.139', '3128', 'CO', 'transparent', 'no', 'no', 3, '2017-08-15 19:05:24', 0),
(80, '187.60.47.122', '8080', 'BR', 'transparent', 'no', 'no', 3, '2017-08-15 19:05:24', 0),
(81, '115.87.98.165', '3128', 'TH', 'transparent', 'no', 'no', 3, '2017-08-15 19:05:24', 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `description`) VALUES
(1, 'email_contact', 'sugiarto@gie-art.com', 'Email kontak form'),
(2, 'image_max_size', '2000', 'Ukuran image dalam kb (kilo byte)'),
(3, 'file_max_size', '3000', 'Ukuran file maksimal dalam kb (kilobyte)'),
(4, 'file_type', 'doc|zip|pdf|xlsx|xls|ppt|docx|pptx', 'Tipe file yang di ijinkan untk di upload'),
(5, 'image_type', 'gif|jpg|png', 'Tipe image yang diperbolehkan untuk di upload'),
(6, 'pagination_limit', '10', 'Batas list /record (artikel, file, dll) per halaman'),
(7, 'main_office', 'Company Address', ''),
(8, 'site_title', 'CI Blog - Basic CMS based on CodeIgniter 3', ''),
(18, 'pagination_limit_directory', '50', ''),
(19, 'facebook_fanpage', 'https://www.facebook.com/Shop-Kh%E1%BB%89-599769640177190/', ''),
(20, 'social_gplus', 'https://plus.google.com/u/1/101228099432262118137', ''),
(21, 'social_linkedin', 'https://twitter.com/Hieu_Dt_106', ''),
(22, 'social_twitter', 'https://twitter.com/Hieu_Dt_106', ''),
(23, 'footer_data', '<ul class=\"footer-nav\">    <li><a href=\"dmca/index.html\">Bản quyền nội dung</a></li>    <li><a href=\"lien-he/index.html\">Liên hệ</a></li>    <li><a href=\"https://truyengo.com/\" target=\"_blank\">Truyện Tranh</a></li>    <li><a href=\"https://tophbo.com/\" target=\"_blank\">Video Clip</a></li>  </ul>  <div class=\"footer-txt\">    <p>2017 © XemHBO.com.<br>      Xem clip hài, phim hài mới hay nhất, Liveshow, Gameshow đặc sắc nhất.<br>      Tất cả các video dưới sự quản lý của youtube. Xemhbo.com không chịu trách nhiệm liên quan đến nội dung.    </p>  </div>', ''),
(24, 'footer_data1', 'sdasds', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, 'Ue8XusPjbk0DXWbzlfZYh.', 1268889823, 1507967491, 1, 'Admin', 'istrator', 'ADMIN', '0'),
(9, '127.0.0.1', 'members', '$2y$08$0TTfatwN6dXgJzX6RpYBzeRIrVsTEUs8ao7ldGewEyCywq4VoMXC.', NULL, 'members@website.com', '6d73486c9d4f501a24c7d9c9bfa3b47d68c471c0', NULL, NULL, NULL, 1451071829, 1451071890, 1, 'My', 'Member', '', ''),
(10, '116.97.1.50', 'New admin', '$2y$08$sfC5819513N.TuRzz0ljMetqeH9LlHfXY5/PSqsfF.52UTJv3sa8q', NULL, 'admin@gmail.com', 'c9b8ba1aa7005cd4323dffcb81373d3c883c5e9d', NULL, NULL, '3NQdRW1CAbPaYlRzXKtaKu', 1507712705, 1507861124, 1, 'New', 'Admin', '', ''),
(11, '116.97.1.50', 'tuong', '$2y$08$t/.Yol6uAKykGh1skRGE6eZigZGxR0zZnACxnt3qnQH5xq/d0yvyy', NULL, 'tuong@gmail.com', '2f26d70f2d4b55803ecae4e891f4aea1157b5f61', NULL, NULL, 'aWjFKKTQ6GKinZpu0nAq.u', 1507732332, 1507772470, 1, 'tuong', 'tuong', '', ''),
(12, '14.171.189.125', 'mrto', '$2y$08$MkKaYh7XaYegxna8YtqSq.DkKIPdoq7SWPi1uQOlZfsfrWg/wHwuK', NULL, 'tuanpetoad@gmail.com', '7d444fc089b8addc1ee8ddff5572650db550a955', NULL, NULL, NULL, 1507734243, 1507734243, 1, 'Ma Giao', 'Giao Chu', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(9, 1, 1),
(10, 1, 2),
(13, 9, 2),
(14, 10, 1),
(15, 10, 2),
(16, 11, 1),
(17, 11, 2),
(18, 12, 1),
(19, 12, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_log`
--
ALTER TABLE `api_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs_categories`
--
ALTER TABLE `blogs_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_id` (`blog_id`) USING BTREE,
  ADD KEY `category_id` (`category_id`) USING BTREE;

--
-- Indexes for table `blog_settings`
--
ALTER TABLE `blog_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gen_menus`
--
ALTER TABLE `gen_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proxies`
--
ALTER TABLE `proxies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access`
--
ALTER TABLE `access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23941;
--
-- AUTO_INCREMENT for table `api_log`
--
ALTER TABLE `api_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21915;
--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `blogs_categories`
--
ALTER TABLE `blogs_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `blog_settings`
--
ALTER TABLE `blog_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `gen_menus`
--
ALTER TABLE `gen_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `proxies`
--
ALTER TABLE `proxies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs_categories`
--
ALTER TABLE `blogs_categories`
  ADD CONSTRAINT `blogs_categories_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `blogs_categories_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `users_groups_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `users_groups_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
