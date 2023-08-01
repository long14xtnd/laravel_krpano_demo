-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2022 at 03:00 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codechochau`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`, `status`, `slug`, `position`) VALUES
(2, 'Phim Lẻ', 'Phim lẻ cập nhật hằng ngày', 1, 'phim-le', 2),
(4, 'Phim Bộ', 'Phim bộ cập nhật hằng ngày', 1, 'phim-bo', 3),
(5, 'Phim Hoạt Hình', 'Phim hoạt hình cập nhật nhanh nhất', 1, 'phim-hoat-hinh', 4),
(6, 'Phim Mới', 'Phim mới cập nhật nhanh nhất', 1, 'phim-moi', 1),
(9, 'Phim Chiếu Rạp', 'Phim chiếu rạp cập nhật nhanh nhất', 1, 'phim-chieu-rap', 0);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `title`, `description`, `status`, `slug`) VALUES
(1, 'Việt Nam', 'Phim Việt Nam cập nhật nhanh nhất', 1, 'viet-nam'),
(2, 'Mỹ', 'Phim Mỹ cập nhật hằng ngày', 1, 'my'),
(3, 'Anh', 'Phim Anh cập nhật nhanh nhất', 1, 'anh'),
(4, 'Nhật Bản', 'Phim Nhật Bản cập nhật nhanh nhất', 1, 'nhat-ban'),
(5, 'Hàn Quốc', 'Phim Hàn Quốc cập nhật nhanh nhất', 1, 'han-quoc'),
(6, 'Trung quốc', 'Phim Trung Quốc cập nhật nhanh nhất', 1, 'trung-quoc'),
(7, 'Thái Lan', 'Phim Thái Lan cập nhật nhanh nhất', 1, 'Thái Lan'),
(8, 'Đài Loan', 'Phim Đài Loan cập nhật nhanh nhất', 1, 'Đài Loan'),
(9, 'Singapo', 'phim singapo', 1, 'Singapo');

-- --------------------------------------------------------

--
-- Table structure for table `episodes`
--

CREATE TABLE `episodes` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `linkphim` longtext NOT NULL,
  `episode` varchar(11) NOT NULL,
  `updated_at` varchar(50) NOT NULL,
  `created_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `episodes`
--

INSERT INTO `episodes` (`id`, `movie_id`, `linkphim`, `episode`, `updated_at`, `created_at`) VALUES
(4, 27, '<p><iframe allowfullscreen src=\"https://short.ink/bV4Snk1X5\" frameborder=\"0\" height=\"350\" width=\"600\"></iframe></p>', '1', '2022-07-15 10:23:25', '2022-07-15 10:23:25'),
(5, 27, '<p><iframe allowfullscreen src=\"https://short.ink/aYCwLyZ2e\" frameborder=\"0\" height=\"350\" width=\"600\"></iframe></p>', '2', '2022-07-15 10:26:10', '2022-07-15 10:26:10'),
(6, 27, '<p><iframe allowfullscreen src=\"https://short.ink/eb9f6lxd_\" frameborder=\"0\" height=\"350\" width=\"600\"></iframe></p>', '3', '2022-07-15 10:28:07', '2022-07-15 10:28:07'),
(15, 27, '<p><iframe allowfullscreen src=\"https://short.ink/bV4Snk1X5\" frameborder=\"0\" height=\"350\" width=\"600\"></iframe></p>', '4', '2022-07-15 10:29:42', '2022-07-15 10:29:42'),
(16, 27, '<p><iframe allowfullscreen src=\"https://short.ink/Warv6vz04\" frameborder=\"0\" height=\"350\" width=\"600\"></iframe></p>', '5', '2022-07-15 10:31:19', '2022-07-15 10:31:19'),
(17, 27, '<p><iframe allowfullscreen src=\"https://short.ink/_1VS6zRHr\" frameborder=\"0\" height=\"350\" width=\"600\"></iframe></p>', '6', '2022-07-15 10:34:53', '2022-07-15 10:34:53'),
(18, 11, '<p><iframe allowfullscreen src=\"https://short.ink/1cX0REvDv\" frameborder=\"0\" height=\"350\" width=\"600\"></iframe></p>', 'FullHD', '2022-07-15 10:38:50', '2022-07-15 10:38:50'),
(21, 46, '<p><iframe allowfullscreen src=\"https://short.ink/3RaqR2ikeO\" frameborder=\"0\" height=\"350\" width=\"600\"></iframe></p>', 'FullHD', '2022-07-15 21:04:11', '2022-07-15 21:04:11'),
(22, 53, '<p><iframe allowfullscreen src=\"https://short.ink/b0-CMdFl4\" frameborder=\"0\" height=\"350\" width=\"600\"></iframe></p>', '1', '2022-07-15 21:05:45', '2022-07-15 21:05:45'),
(23, 53, '<p><iframe allowfullscreen src=\"https://short.ink/AOD7GFfhX\" frameborder=\"0\" height=\"350\" width=\"600\"></iframe></p>', '2', '2022-07-15 21:06:20', '2022-07-15 21:06:20'),
(24, 53, '<p><iframe allowfullscreen src=\"https://short.ink/4pOdGcwSkn\" frameborder=\"0\" height=\"350\" width=\"600\"></iframe></p>', '3', '2022-07-15 21:07:13', '2022-07-15 21:07:13'),
(25, 53, '<p><iframe allowfullscreen src=\"https://short.ink/pSjDqUiNL\" frameborder=\"0\" height=\"350\" width=\"600\"></iframe></p>', '4', '2022-07-15 21:08:12', '2022-07-15 21:08:12'),
(26, 53, '<p><iframe allowfullscreen src=\"https://short.ink/Vk-zI-JlH\" frameborder=\"0\" height=\"350\" width=\"600\"></iframe></p>', '5', '2022-07-15 21:08:48', '2022-07-15 21:08:48'),
(27, 53, '<p><iframe allowfullscreen src=\"https://short.ink/ADb3NNuNa\" frameborder=\"0\" height=\"350\" width=\"600\"></iframe></p>', '6', '2022-07-15 21:09:16', '2022-07-15 21:09:16'),
(28, 53, '<p><iframe allowfullscreen src=\"https://short.ink/Y2Af_wYfu\" frameborder=\"0\" height=\"350\" width=\"600\"></iframe></p>', '7', '2022-07-15 21:09:53', '2022-07-15 21:09:53'),
(29, 53, '<p><iframe allowfullscreen src=\"https://short.ink/oBtxncMvS\" frameborder=\"0\" height=\"350\" width=\"600\"></iframe></p>', '8', '2022-07-15 21:10:32', '2022-07-15 21:10:32'),
(30, 53, '<p><iframe allowfullscreen src=\"https://short.ink/mi7AoWgyy\" frameborder=\"0\" height=\"350\" width=\"600\"></iframe></p>', '9', '2022-07-15 21:11:30', '2022-07-15 21:11:30'),
(31, 53, '<p><iframe allowfullscreen src=\"https://short.ink/Ige_N8LlKU\" frameborder=\"0\" height=\"350\" width=\"600\"></iframe></p>', '10', '2022-07-15 21:11:56', '2022-07-15 21:11:56'),
(32, 53, '<p><iframe allowfullscreen src=\"https://short.ink/toUrF0IAU\" frameborder=\"0\" height=\"350\" width=\"600\"></iframe></p>', '11', '2022-07-15 21:12:38', '2022-07-15 21:12:38'),
(33, 54, '<p><iframe allowfullscreen src=\"https://short.ink/eXXJPDSsH\" frameborder=\"0\" height=\"350\" width=\"600\"></iframe></p>', '1', '2022-07-15 21:15:31', '2022-07-15 21:15:31'),
(34, 54, '<p><iframe allowfullscreen src=\"https://short.ink/lOSyGPU3e\" frameborder=\"0\" height=\"350\" width=\"600\"></iframe></p>', '2', '2022-07-15 21:16:03', '2022-07-15 21:16:03'),
(35, 43, '<p><iframe allowfullscreen src=\"https://short.ink/lrn3HY0-_\" frameborder=\"0\" height=\"350\" width=\"600\"></iframe></p>', 'FullHD', '2022-07-15 21:17:40', '2022-07-15 21:17:40'),
(36, 45, '<p><iframe allowfullscreen src=\"https://short.ink/tFlX98sDb\" frameborder=\"0\" height=\"350\" width=\"600\"></iframe></p>', 'FullHD', '2022-07-15 21:18:39', '2022-07-15 21:18:39'),
(37, 42, '<p><iframe allowfullscreen src=\"https://short.ink/gnsNcDjn5\" frameborder=\"0\" height=\"350\" width=\"600\"></iframe></p>', 'FullHD', '2022-07-15 21:19:44', '2022-07-15 21:19:44'),
(38, 33, '<p><iframe allowfullscreen src=\"https://short.ink/Uc2Neneuq\" frameborder=\"0\" height=\"350\" width=\"600\"></iframe></p>', 'FullHD', '2022-07-15 21:21:04', '2022-07-15 21:21:04'),
(39, 35, '<p><iframe allowfullscreen src=\"https://short.ink/yn-BfhJr9\" frameborder=\"0\" height=\"350\" width=\"600\"></iframe></p>', 'FullHD', '2022-07-15 21:22:29', '2022-07-15 21:22:29'),
(40, 24, '<p><iframe allowfullscreen src=\"https://short.ink/hlZTdgP7sj\" frameborder=\"0\" height=\"350\" width=\"600\"></iframe></p>', 'FullHD', '2022-07-15 21:23:31', '2022-07-15 21:23:31');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `title`, `description`, `status`, `slug`) VALUES
(1, 'Hành Động', 'Phim hành động cập nhật nhanh nhất', 1, 'hanh-dong'),
(3, 'Hài Hước', 'Phim hài hước cập nhật hằng ngày', 1, 'hai-huoc'),
(4, 'Lãng Mạn', 'Phim lãng mạn cập nhật nhanh nhất', 1, 'lang-man'),
(5, 'Viễn Tưởng', 'Phim viễn tưởng cập nhật nhanh nhất', 1, 'vien-tuong'),
(6, 'Võ Thuật', 'Phim võ thuật cập nhật nhanh nhất', 1, 'vo-thuat'),
(7, 'Kinh Dị', 'Phim kinh dị cập nhật nhanh nhất', 1, 'kinh-di'),
(8, 'Tâm Lý', 'Phim tâm lý cập nhật nhanh nhất', 0, 'tam-ly'),
(9, 'Phim thuyết minh', 'hay', 1, 'phim-thuyet-minh');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `thoiluong` varchar(50) DEFAULT NULL,
  `description` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `thuocphim` varchar(10) NOT NULL,
  `genre_id` int(11) NOT NULL DEFAULT 1,
  `country_id` int(11) NOT NULL,
  `phim_hot` int(11) NOT NULL,
  `resolution` int(11) NOT NULL DEFAULT 0,
  `name_eng` varchar(255) NOT NULL,
  `phude` int(11) NOT NULL DEFAULT 0,
  `season` int(11) NOT NULL DEFAULT 0,
  `ngaytao` varchar(50) DEFAULT NULL,
  `ngaycapnhat` varchar(50) DEFAULT NULL,
  `year` varchar(20) DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `topview` int(11) DEFAULT NULL,
  `trailer` varchar(100) DEFAULT NULL,
  `sotap` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `thoiluong`, `description`, `status`, `image`, `slug`, `category_id`, `thuocphim`, `genre_id`, `country_id`, `phim_hot`, `resolution`, `name_eng`, `phude`, `season`, `ngaytao`, `ngaycapnhat`, `year`, `tags`, `topview`, `trailer`, `sotap`) VALUES
(4, 'THỜI ĐẠI MA PHÁP', NULL, 'Thời đại Ma Pháp, Mahouka Koukou no Rettousei: Raihousha-hen | The Irregular at Magic High School: Visitor Arc 2020 Tập 13 HD Vietsub\r\nThời đại Ma Pháp - Mahouka Koukou No Rettousei: Raihousha-hen | The Irregular At Magic High School: Visitor Arc, Mahouka Koukou No Rettousei: Raihousha-hen | The Irregular At Magic High School: Visitor Arc 2020', 1, 'thoi-dai-ma-phap9960.jpg', 'thoi-dai-ma-phap', 5, 'phimle', 9, 4, 0, 0, 'THỜI ĐẠI MA PHÁP', 0, 0, NULL, '2022-07-15 22:06:38', NULL, NULL, NULL, NULL, 0),
(5, 'SIÊU NHÂN/NGƯỜI DƠI ĐẠI CHIẾN: KẺ THÙ QUỐC GIA', '120 phút', 'Siêu Nhân/Người Dơi Đại Chiến: Kẻ Thù Quốc Gia, Superman/Batman: Public Enemies 2009 Tập HD Vietsub\r\nSuperman/Batman: Public Enemies là bộ phim hoạt hình về Người Dơi và Siêu Nhân. Trong phần này, nói về cuộc chiến của họ khi Lex Luthor được bầu làm Tổng thống Mỹ, ông đã cáo buộc Superman là kẻ thù, buộc Superman làm sao để phá vỡ sao băng Kryptonite chuẩn bị đâm vào trái đất. Superman sẽ hành động thế nào?', 1, 'sieu-nhan-nguoi-doi-dai-chien-ke-thu-quoc-gia8833.jpg', 'sieu-nhannguoi-doi-dai-chien-ke-thu-quoc-gia', 5, 'phimbo', 1, 2, 0, 0, 'Superman', 0, 0, NULL, '2022-07-15 22:04:43', NULL, NULL, NULL, NULL, 0),
(6, 'HUYỀN THOẠI GAME THỦ', NULL, 'Huyền Thoại Game Thủ, No Game, No Life 2015 Tập 12 / 12 HD Vietsub\r\nHai anh em Sora & Shiro tạo nên huyền thoại game thủ với thành tích quán quân trong tất cả bảng xếp hạng game dưới cái tên Kuhaku hay còn được gọi là Blank. Bước ra khỏi thế giới ảo, họ là những NEET chính hiệu, không việc làm, không ăn học, cách ly và sợ tiếp xúc với bên ngoài, luôn nghĩ mình sinh nhầm thế giới. Một ngày nọ, có 1 tên kì lạ tự cho mình là thần (Tên: Tet, là 1 vị thần tối cao) đã hỏi 1 câu hỏi kì lạ \"2 người muốn vào 1 thế giới chỉ định đoạt bằng game? nếu nó thực sự tồn tại? \" và đưa 2 anh em được đưa tới một thế giới khác - một nơi mà mọi thứ đều được quyết định bởi game, từ các dụng cụ, tiền tệ, quốc gia thậm chí là cả mạng sống đều quyết định qua game. Khi tới đây mục tiêu duy nhất của 2 anh em họ chỉ là: đánh bại 16 tộc -đoạt lấy quân cờ chủng tộc (là thứ cốt lõi của 1 quốc gia nơi đây) để thách đấu với Tet.', 1, 'huyen-thoai-game-thu-60196-thumbnail4006.jpg', 'huyen-thoai-game-thu', 5, 'phimle', 9, 4, 0, 0, 'HUYỀN THOẠI GAME THỦ', 0, 0, NULL, '2022-07-15 22:06:13', NULL, NULL, NULL, NULL, 0),
(9, 'SIÊU NHÂN/NGƯỜI DƠI ĐẠI CHIẾN: KẺ THÙ QUỐC GIA', '120 phút', 'Siêu Nhân/Người Dơi Đại Chiến: Kẻ Thù Quốc Gia, Superman/Batman: Public Enemies 2009 Tập HD Vietsub\r\nSuperman/Batman: Public Enemies là bộ phim hoạt hình về Người Dơi và Siêu Nhân. Trong phần này, nói về cuộc chiến của họ khi Lex Luthor được bầu làm Tổng thống Mỹ, ông đã cáo buộc Superman là kẻ thù, buộc Superman làm sao để phá vỡ sao băng Kryptonite chuẩn bị đâm vào trái đất. Superman sẽ hành động thế nào?', 1, 'sieu-nhan-nguoi-doi-dai-chien-ke-thu-quoc-gia8833.jpg', 'sieu-nhannguoi-doi-dai-chien-ke-thu-quoc-gia', 5, 'phimle', 1, 2, 0, 0, 'Superman', 0, 0, NULL, '2022-07-15 22:04:23', NULL, NULL, NULL, NULL, 0),
(10, 'HUYỀN THOẠI GAME THỦ', '120 phút', 'Huyền Thoại Game Thủ, No Game, No Life 2015 Tập 12 / 12 HD Vietsub\r\nHai anh em Sora & Shiro tạo nên huyền thoại game thủ với thành tích quán quân trong tất cả bảng xếp hạng game dưới cái tên Kuhaku hay còn được gọi là Blank. Bước ra khỏi thế giới ảo, họ là những NEET chính hiệu, không việc làm, không ăn học, cách ly và sợ tiếp xúc với bên ngoài, luôn nghĩ mình sinh nhầm thế giới. Một ngày nọ, có 1 tên kì lạ tự cho mình là thần (Tên: Tet, là 1 vị thần tối cao) đã hỏi 1 câu hỏi kì lạ \"2 người muốn vào 1 thế giới chỉ định đoạt bằng game? nếu nó thực sự tồn tại? \" và đưa 2 anh em được đưa tới một thế giới khác - một nơi mà mọi thứ đều được quyết định bởi game, từ các dụng cụ, tiền tệ, quốc gia thậm chí là cả mạng sống đều quyết định qua game. Khi tới đây mục tiêu duy nhất của 2 anh em họ chỉ là: đánh bại 16 tộc -đoạt lấy quân cờ chủng tộc (là thứ cốt lõi của 1 quốc gia nơi đây) để thách đấu với Tet.', 1, 'huyen-thoai-game-thu-60196-thumbnail4006.jpg', 'huyen-thoai-game-thu', 5, 'phimbo', 9, 4, 0, 0, 'HUYỀN THOẠI GAME THỦ', 0, 0, NULL, '2022-07-15 22:05:58', NULL, NULL, NULL, NULL, 0),
(11, 'Người Nhện: Không còn nhà', '', 'Người Nhện: Không Còn Nhà, Spider-Man: No Way Home 2021 CAM Vietsub + Thuyết minh\r\nNgười Nhện: Không Còn Nhà - Spider-Man: No Way Home, Spider-Man: No Way Home 2021 CAM Với Danh Tính Của Người Nhện Giờ đã được Tiết Lộ, Peter Nhờ Doctor Strange Giúp đỡ. Khi Một Câu Thần Chú Bị Sai, Những Kẻ Thù Nguy Hiểm Từ Các Thế Giới Khác Bắt đầu Xuất Hiện, Buộc Peter Phải Khám Phá Ra ý Nghĩa Thực Sự Của Việc Trở Thành Người Nhện.', 1, 'nguoi-nhen-khong-con-nha-58642-thumbnail-250x3504352.jpg', 'nguoi-nhen-khong-con-nha', 2, 'phimle', 1, 1, 0, 1, 'No way home(2022)', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(12, 'THỜI ĐẠI MA PHÁP', NULL, 'Thời đại Ma Pháp, Mahouka Koukou no Rettousei: Raihousha-hen | The Irregular at Magic High School: Visitor Arc 2020 Tập 13 HD Vietsub\r\nThời đại Ma Pháp - Mahouka Koukou No Rettousei: Raihousha-hen | The Irregular At Magic High School: Visitor Arc, Mahouka Koukou No Rettousei: Raihousha-hen | The Irregular At Magic High School: Visitor Arc 2020', 1, 'tải xuống7549.jpeg', 'thoi-dai-ma-phap', 5, 'phimle', 5, 4, 0, 0, 'thoi-dai-ma-phap', 0, 0, NULL, '2022-07-15 17:45:23', NULL, NULL, NULL, NULL, 0),
(13, 'SIÊU NHÂN/NGƯỜI DƠI ĐẠI CHIẾN: KẺ THÙ QUỐC GIA', '120 phút', 'Siêu Nhân/Người Dơi Đại Chiến: Kẻ Thù Quốc Gia, Superman/Batman: Public Enemies 2009 Tập HD Vietsub\r\nSuperman/Batman: Public Enemies là bộ phim hoạt hình về Người Dơi và Siêu Nhân. Trong phần này, nói về cuộc chiến của họ khi Lex Luthor được bầu làm Tổng thống Mỹ, ông đã cáo buộc Superman là kẻ thù, buộc Superman làm sao để phá vỡ sao băng Kryptonite chuẩn bị đâm vào trái đất. Superman sẽ hành động thế nào?', 1, 'sieu-nhan-nguoi-doi-dai-chien-ke-thu-quoc-gia8833.jpg', 'sieu-nhannguoi-doi-dai-chien-ke-thu-quoc-gia', 5, 'phimle', 1, 2, 0, 0, 'Superman', 0, 0, NULL, '2022-07-15 22:04:03', NULL, NULL, NULL, NULL, 0),
(17, 'SIÊU NHÂN/NGƯỜI DƠI ĐẠI CHIẾN: KẺ THÙ QUỐC GIA', '120 phút', 'Siêu Nhân/Người Dơi Đại Chiến: Kẻ Thù Quốc Gia, Superman/Batman: Public Enemies 2009 Tập HD Vietsub\r\nSuperman/Batman: Public Enemies là bộ phim hoạt hình về Người Dơi và Siêu Nhân. Trong phần này, nói về cuộc chiến của họ khi Lex Luthor được bầu làm Tổng thống Mỹ, ông đã cáo buộc Superman là kẻ thù, buộc Superman làm sao để phá vỡ sao băng Kryptonite chuẩn bị đâm vào trái đất. Superman sẽ hành động thế nào?', 1, 'sieu-nhan-nguoi-doi-dai-chien-ke-thu-quoc-gia8833.jpg', 'sieu-nhannguoi-doi-dai-chien-ke-thu-quoc-gia', 2, 'phimle', 1, 1, 0, 0, 'Superman', 0, 0, NULL, '2022-07-15 17:47:48', NULL, NULL, NULL, NULL, 1),
(20, 'One Punch Man', NULL, 'one punch man c Gia, Superman/Batman: Public Enemies 2009 Tập HD Vietsub Superman/Batman: Public Enemies là bộ phim hoạt hình về Người Dơi và Siêu Nhân. Trong phần này, nói về cuộc chiến của họ khi Lex Luthor được bầu làm Tổng thống Mỹ, ông đ', 1, 'thoi-dai-ma-phap6341.jpg', 'one-punch-man', 4, 'phimbo', 4, 5, 0, 0, 'one-punch-man', 0, 0, NULL, '2022-07-15 17:48:33', NULL, NULL, NULL, NULL, 1),
(22, 'D4DJ: FIRST MIX', '50 phút/1 tập', 'D4DJ: First Mix, D4DJ First Mix, Dig Delight Direct Drive DJ 2020 Tập 11 Anime HD Vietsub\r\nD4DJ: First Mix, D4DJ First Mix, Dig Delight Direct Drive DJ 2020 Anime', 1, 'd4dj-first-mix-61500-thumbnail6547.jpg', 'd4dj-first-mix', 5, 'phimbo', 3, 4, 0, 5, 'D4DJ First Mix, Dig Delight Direct Drive DJ (2020)', 1, 0, NULL, '2022-07-15 17:46:52', '2019', NULL, 0, '2v4fIUF7jMo', 1),
(24, 'MA TRẬN: HỒI SINH', NULL, 'Ma Trận: Hồi Sinh, The Matrix Resurrections 2021 HD Vietsub + TM\r\nMa Trận: Hồi Sinh - The Matrix Resurrections 2021 Quay Trở Lại Một Thế Giới Của Hai Thực Tại: Một, Cuộc Sống Hàng Ngày; Khác, Những Gì Nằm Sau Nó. Để Tìm Hiểu Xem Thực Tế Của Anh Ta Có Phải Là Một Công Trình Hay Không, để Thực Sự Hiểu Rõ Bản Thân Mình, Anh Anderson Sẽ Phải Chọn Theo Dõi Con Thỏ Trắng Một Lần Nữa. Ma Trận: Hồi Sinh là phần phim tiếp theo rất được trông đợi của loạt phim “Ma Trận” đình đám, đã góp phần tái định nghĩa thể loại phim khoa học viễn tưởng. Phần phim mới nhất này đón chào sự trở lại của cặp đôi Keanu Reeves và Carrie-Anne Moss với vai diễn biểu tượng đã làm nên tên tuổi của họ, Neo và Trinity. Ngoài ra, phim còn có sự góp mặt của dàn diễn viên đầy tài năng gồm Yahya Abdul-', 1, '61bfe08e7b5336675.jpg', 'ma-tran-hoi-sinh', 9, 'phimle', 4, 9, 1, 2, 'The Matrix Resurrections (2021)', 1, 0, NULL, '2022-04-03 15:16:16', '2022', NULL, 1, NULL, 1),
(25, 'Chú Chó Lulu – Dog', '133 phút', 'Chú Chó Lulu - Dog, Dog 2022 Full\r\nHai cựu binh sĩ Biệt động quân được ghép đôi trái ý muốn của họ trong chuyến đi đường đời. Briggs (Channing Tatum) và Lulu (một chú chó Malinois của Bỉ) chạy đua xuống Bờ biển Thái Bình Dương để đến dự đám tang của một người lính đúng giờ.', 1, '62371f2a1d5772456.jpg', 'chu-cho-lulu-–-dog', 9, 'phimle', 4, 2, 0, 5, 'Dog', 0, 0, NULL, '2022-07-15 11:23:24', '2022', 'dongphim,dongphym,vtv16, vuviphim, vietsubtv, vtvgiaitri', 1, 'V4tAtp-TyzQ', 1),
(26, 'Phi Vụ Đen - Ánh Sáng Đen', '108 phút', 'Phi Vụ Đen - Ánh Sáng Đen Blacklight Travis Block, một đặc vụ chính phủ bóng tối, người chuyên loại bỏ các đặc vụ có vỏ bọc đã bị vạch trần, phát hiện ra một âm mưu chết người trong hàng ngũ của chính mình, những người đạt đến các cấp cao nhất của quyền lực.', 1, 'poster_pvd_3_1_567.jpg', 'phi-vu-den-anh-sang-den', 9, 'phimle', 3, 2, 1, 5, 'Blacklight (2022)', 0, 0, '2022-03-24 08:54:29', '2022-07-15 12:02:58', '2001', 'Phi Vụ Đen - Ánh Sáng Đen phimmoi.net, Phi Vụ Đen - Ánh Sáng Đen full hd vietsub, xem phim Phi Vụ Đen - Ánh Sáng Đen,phim Blacklight vietsub,Phi Vụ Đen - Ánh Sáng Đen bilutv,bilutvzz,Phi Vụ Đen - Ánh Sáng Đen phimmoi,phimmoizz,zphimmoi,phimmoii,phimmoiizz,ephimmoi,Phi Vụ Đen - Ánh Sáng Đen motphim,Phi Vụ Đen - Ánh Sáng Đen phimbathu,Phi Vụ Đen - Ánh Sáng Đen khoaitv, bongngo,Blacklight xemphimplus,zingtv, hdonline, phim3s, xemphimgi, banhtv, Phi Vụ Đen - Ánh Sáng Đen dongphim,dongphym,vtv16, vuviphim, vietsubtv, vtvgiaitri,Phi Vụ Đen - Ánh Sáng Đen youtube,phimnhanh,tvhay,khophimle,viethd,vphim,Phi Vụ Đen - Ánh Sáng Đen netflix,trangphim,Phi Vụ Đen - Ánh Sáng Đen fullphim,ssphim,phimgi,phephimz,phim99,vuviphimtv,Phi Vụ Đen - Ánh Sáng Đen motchill,bichill,,phim1080,luotphim,Phi Vụ Đen - Ánh Sáng Đen phimmoiplus,Phi Vụ Đen - Ánh Sáng Đen cam,Phi Vụ Đen - Ánh Sáng Đen thuyết minh,Phi Vụ Đen - Ánh Sáng Đen phụ đề,Phi Vụ Đen - Ánh Sáng Đen lồng tiếng,tải phim Phi Vụ Đen - Ánh Sáng Đen', 2, 'm7uGGw6rZxs', 1),
(27, 'Moon Knight (Phần 1) – Moon Knight (Season 1)', '50 phút/1 tập', 'Moon Knight (Phần 1) - Moon Knight (Season 1), Moon Knight (Season 1) 2022 Season 1\r\nMột cựu thủy quân lục chiến Hoa Kỳ, đang vật lộn với chứng rối loạn nhận dạng phân ly, được ban cho sức mạnh của một vị thần mặt trăng của Ai Cập. Nhưng anh ấy sớm phát hiện ra rằng những sức mạnh mới được tìm thấy này có thể vừa là một may mắn vừa là một lời nguyền cho cuộc đời đầy rắc rối của anh ấy.', 1, '62442caaf2a766055.jpg', 'moon-knight-phan-1-–-moon-knight-season-1', 4, 'phimbo', 8, 1, 1, 0, 'Moon Knight', 0, 0, '2022-03-31 17:36:02', '2022-07-15 14:53:49', '2022', 'Moon Knight (Phần 1) - Moon Knight (Season 1), Moon Knight (Season 1) 2022 Season 1', NULL, 'x7Krla_UxRg', 6),
(33, 'Cảnh sát vũ trụ (2022)', '1 giờ 45 phút', 'Bộ phim kể về chuyến hành trình hành động kết hợp khoa học viễn tưởng nhằm giới thiệu câu chuyện về nguồn gốc của nhân vật Buzz Lightyear — người anh hùng đã truyền cảm hứng sáng tạo ra đồ chơi. “Lightyear” sẽ theo chân Cảnh Sát Vũ Trụ huyền thoại trong cuộc hành trình bước ra ngoài không gian cùng với một nhóm chiến binh đầy tham vọng và người bạn đồng hành là chú mèo máy Sox.', 1, 'vpILbP9eOQEtdQgl4vgjZUNY07r5749.jpg', 'canh-sat-vu-tru-2022', 6, 'phimle', 5, 2, 1, 4, 'Lightyear', 0, 0, '2022-07-15 12:00:30', '2022-07-15 21:21:19', NULL, NULL, NULL, 'hB_JdXDnZVQ', 1),
(34, 'Điện Thoại Đen (2022)', '1 giờ 43 phút', 'Cậu bé 13 tuổi Finney Shaw bị một kẻ giết người hàng loạt bắt cóc và giam giữ trong tầng hầm cách âm. Tuy nhiên, căn hầm này có chứa thế lực tâm linh đặc biệt, có thể giúp Shaw nghe thấy giọng nói của những nạn nhân trước đó, thông qua chiếc điện thoại đen đã bị ngắt kết nối. Các dấu hiệu được báo trước đó sẽ là manh mối để cậu có thể tìm cách trốn thoát khỏi bàn tay hiểm ác của tên sát nhân.', 1, 'b142G8fTRblu6IuBflHp6qJC1kd4700.jpg', 'dien-thoai-den-2022', 6, 'phimle', 8, 1, 1, 5, 'The Black Phone', 0, 0, '2022-07-15 12:11:15', '2022-07-15 12:12:46', NULL, NULL, NULL, '3eGP6im8AZA', 1),
(35, 'Thế giới khủng long: Lãnh địa (2022)', '2 giờ 26 phút', 'Bốn năm sau kết thúc Jurassic World: Fallen Kingdom, những con khủng long đã thoát khỏi nơi giam cầm và xâm nhập vào thế giới của loài người. Trong bối cảnh mới, một thời kỳ đã mở ra khi các sinh vật cổ đại bắt đầu học cách tồn tại không chỉ trong vùng hoang dã mà còn ở cả các đô thị đông đúc hiện đại. Điều này dường như là mối nguy hại cho khả năng thống trị Trái Đất của con người. Chúng ta đối mặt với nguy cơ trở thành kẻ bị săn đuổi giữa một thế giới đầy rẫy nguy hiểm.', 1, 'kAVRgw7GgK1CfYEJq8ME6EvRIgU4778.jpg', 'the-gioi-khung-long-lanh-dia-2022', 2, 'phimle', 6, 2, 1, 4, 'Jurassic World Dominion', 0, 0, '2022-07-15 12:15:41', '2022-07-15 12:15:41', NULL, NULL, NULL, NULL, 1),
(36, 'Nỗi đau Muay Thái (2022)', '120 phút', 'Từ cá cược bất hợp pháp đến dàn xếp tỷ số, hãy khám phá thế giới ngầm đáng sợ đằng sau môn thể thao Muay Thái từng được ca tụng. Phim chính kịch dựa trên sự kiện có thật.', 1, 'mxK8Svp0ILBdDkUAov38Tc5rKzz5650.jpg', 'noi-dau-muay-thai-2022', 6, 'phimle', 8, 7, 0, 5, 'Hurts Like Hell', 0, 0, '2022-07-15 12:17:52', '2022-07-15 12:17:52', NULL, NULL, NULL, 'AnkfD0is6f8', 1),
(37, 'Kung Fu Panda: Hiệp sĩ rồng (2022)', '60 phút/tập', 'Chiến binh huyền thoại Po bắt tay với một hiệp sĩ Anh ưu tú trong nhiệm vụ có quy mô toàn cầu để giành lại các vũ khí ma thuật, rửa sạch thanh danh và cứu thế giới!', 1, 'cr7ow6T0kKIuDPQYmyh8U2kpair9610.jpg', 'kung-fu-panda-hiep-si-rong-2022', 6, 'phimle', 8, 4, 0, 5, 'Kung Fu Panda: The Dragon Knight', 1, 0, '2022-07-15 12:20:13', '2022-07-15 12:20:13', NULL, NULL, NULL, 'MYy7oGQiSqI', 1),
(38, 'Quy luật của Vũ trụ: Kỷ nguyên Elohim (2021)', '1 giờ 59 phút', '150 triệu năm trước, nhiều giống người ngoài hành tinh khác nhau đã chung sống hòa thuận dưới sự cai trị của Thần Đất, Elohim. Nhưng sự thật là trái đất đang gặp nguy hiểm bởi một kế hoạch hủy diệt trái đất của Dahar, người đến từ mặt tối của vũ trụ.', 1, 'asCvC25uwtvkE93IzStqH7hsxz82851.jpg', 'quy-luat-cua-vu-tru-ky-nguyen-elohim-2021', 6, 'phimle', 5, 4, 0, 5, 'The Laws of the Universe: The Age of Elohim', 0, 0, '2022-07-15 12:23:09', '2022-07-15 12:23:09', NULL, NULL, NULL, 'aVwp7WeU3Uk', 1),
(39, 'Resident Evil (2022)', '120 phút', 'Nhiều năm sau khi một đợt bùng phát vi-rút gây ra tận thế trên toàn cầu, Jade Wesker thề sẽ hạ gục kẻ chịu trách nhiệm và chiến đấu để sống sót trước người nhiễm bệnh.', 1, 'z3rHBpPFRXc7cAVzcIioXyGAEVu8655.jpg', 'resident-evil-2022', 6, 'phimle', 8, 2, 0, 5, 'Resident Evil (2022)', 0, 0, '2022-07-15 12:24:40', '2022-07-15 12:24:40', NULL, NULL, NULL, 'uIdjcDTc9Vk', 1),
(40, 'Quyền Năng Của Green Lantern (2022)', '1 giờ 27 phút', 'Green Lantern: Beware My Power, kể về câu chuyện của cựu thủy quân lục chiến John Stewart, sau khi giải ngũ anh đã nhận được sức mạnh từ một chiếc nhẫn kỳ lạ. Được biết, chiếc nhẫn này không phải là vật chất của Trái Đất và cho phép người có nó sử dụng sức mạnh của Green Lantern of Earth.', 1, 'fBIzAD9ZDdNVNdsNPdsMUfrM3fI9126.jpg', 'quyen-nang-cua-green-lantern-2022', 6, 'phimle', 1, 2, 0, 5, 'Green Lantern: Beware My Power', 0, 0, '2022-07-15 12:26:33', '2022-07-15 12:26:33', NULL, NULL, NULL, 'bjD3r8wPQQA', 1),
(41, 'Kẻ Nội Gián (2022)', '60 phút/tập', 'Kim Yo Han là người hành động cẩn trọng và lạnh lùng. Anh vô tình vướng vào một vụ án bất ngờ khi đang điều tra nội bộ và trở thành tù nhân. Tại đây, anh bắt đầu lên kế hoạch thay đổi số phận.', 1, '5Gy4yvyLLqxRylwV1OMQ2OPNRYl553.jpg', 'ke-noi-gian-2022', 6, 'phimle', 8, 5, 0, 5, 'Insider', 1, 0, '2022-07-15 12:28:15', '2022-07-15 12:28:15', NULL, NULL, NULL, 'vfMc6A32nFY', 1),
(42, 'Phù thủy tối thượng trong Đa Vũ trụ hỗn loạn (2022) 2 giờ 6 phútPG-13', '2 giờ 6 phút', 'Sau các sự kiện của Avengers: Endgame, Tiến sĩ Stephen Strange tiếp tục nghiên cứu về Viên đá Thời gian. Nhưng một người bạn cũ đã trở thành kẻ thù tìm cách tiêu diệt mọi phù thủy trên Trái đất, làm xáo trộn kế hoạch của Strange và cũng khiến anh ta mở ra một tội ác khôn lường.', 1, '9Gtg2DzBhmYamXBS1hKAhiwbBKS2364.jpg', 'phu-thuy-toi-thuong-trong-da-vu-tru-hon-loan-2022-2-gio-6-phutpg-13', 9, 'phimle', 8, 2, 1, 4, 'Doctor Strange in the Multiverse of Madness', 0, 0, '2022-07-15 17:03:30', '2022-07-15 17:03:30', NULL, NULL, NULL, '3xccmeAsy8g', 1),
(43, 'Minions 2: Sự Trỗi Dậy Của Gru – Minions: The Rise of Gru', '120 phút', 'Minions 2: Sự Trỗi Dậy Của Gru - Minions: The Rise of Gru, Minions: The Rise of Gru 2022 HDCAM\r\nCâu chuyện chưa kể về ước mơ trở thành siêu nhân vĩ đại nhất thế giới của một cậu bé mười hai tuổi.', 1, '62c78bff81c686131.jpg', 'minions-2-su-troi-day-cua-gru-–-minions-the-rise-of-gru', 9, 'phimle', 3, 2, 1, 2, 'Minions: The Rise of Gru', 1, 0, '2022-07-15 17:06:48', '2022-07-15 17:46:13', NULL, NULL, NULL, '6DxjJzmYsXo', 1),
(44, 'Sát Thủ Nhân Tạo 2: Mẫu Vật Còn Lại', '120 phút', 'Sát Thủ Nhân Tạo 2: Mẫu Vật Còn Lại - The Witch Part 2: The Other One, The Witch Part 2: The Other One 2022 HD\r\nMột cô gái tỉnh dậy trong một phòng thí nghiệm bí mật và gặp Kyung-hee, người đang cố gắng bảo vệ cô khỏi một băng nhóm. Cuối cùng khi cả nhóm tìm thấy cô gái, họ bị áp đảo bởi một sức mạnh bất ngờ.', 1, '62d0e10f6e93f2758.jpg', 'sat-thu-nhan-tao-2-mau-vat-con-lai', 9, 'phimle', 1, 3, 0, 5, 'The Witch Part 2: The Other One The Witch Part 2: The Other One', 0, 0, '2022-07-15 17:09:09', '2022-07-15 17:09:09', NULL, NULL, NULL, 'jhF5zIGJsXs', 1),
(45, 'Thor: Tình Yêu Và Sấm Sét – Thor: Love and Thunder', '120 phút', 'Thor: Tình Yêu Và Sấm Sét - Thor: Love and Thunder, Thor: Love and Thunder 2022 HDCAM\r\nThor nhờ sự giúp đỡ của Valkyrie, Korg và bạn gái cũ Jane Foster để chống lại Gorr the God Butcher, kẻ có ý định khiến các vị thần tuyệt chủng.', 1, '62c78c5fbd9bd8967.jpg', 'thor-tinh-yeu-va-sam-set-–-thor-love-and-thunder', 9, 'phimle', 8, 2, 1, 4, 'Thor: Love and Thunder', 0, 0, '2022-07-15 17:10:51', '2022-07-15 17:10:51', NULL, NULL, NULL, 'UBgPypHGAqE', 1),
(46, 'Siêu Chiến Binh', '120 phút', 'hihi', 1, '62b6f31bdbe3a9604.jpg', 'sieu-chien-binh', 9, 'phimle', 6, 1, 1, 4, 'Attack', 0, 0, '2022-07-15 17:12:42', '2022-07-15 17:48:55', NULL, NULL, NULL, NULL, 1),
(47, 'Chó Sói Hung Hãn', '120 phút', 'Chó Sói Hung Hãn - The Wolves, The Wolves 2022 Full\r\nChiếc máy bay mà nam chính và các thành viên nhóm chống săn trộm đang bay đã rơi xuống cánh đồng băng cực kỳ lạnh giá ở Siberia. Cùng với nam chính, còn có các chuyên gia sinh tồn hoang dã và đội an ninh đã tìm cách trốn thoát. Công cuộc giải cứu bị trì hoãn, họ phải trải qua cảnh băng tuyết đóng băng, và bị đe dọa bởi những con sói đột biến phóng xạ. Để sống sót, nam chính và mọi người sẽ làm cách nào để thoát khỏi nguy hiểm?', 1, '62d0dea79de195590.jpg', 'cho-soi-hung-han', 2, 'phimle', 1, 2, 0, 0, 'The Wolves The Wolves', 0, 0, '2022-07-15 17:16:08', '2022-07-15 17:16:08', NULL, NULL, NULL, 'oG1xjm0GZgQ', 1),
(48, 'Cô Gái Trong Bức Ảnh – Girl in the Picture', '120 phút', 'Cô Gái Trong Bức Ảnh - Girl in the Picture, Girl in the Picture 2022 Full\r\nTrong phim tài liệu này, một phụ nữ được phát hiện hấp hối bên đường bỏ lại cậu con trai, người đàn ông tự xưng là chồng cô – và bí ẩn tựa như cơn ác mộng khi được hé mở.', 1, '62d0df7ce93184754.jpg', 'co-gai-trong-buc-anh-–-girl-in-the-picture', 2, 'phimle', 8, 1, 0, 0, 'Girl in the Picture', 0, 0, '2022-07-15 17:18:53', '2022-07-15 17:18:53', NULL, NULL, NULL, 'jnJ4BGNpby8', 1),
(49, 'Hàng Ghế 19 – Row 19 (Ryad 19)', '120 phút', 'Hàng Ghế 19 - Row 19 (Ryad 19), Row 19 (Ryad 19) 2021 Full\r\nMột nữ bác sĩ trẻ cùng con gái 6 tuổi đang trên chuyến bay đêm thì gặp bão kinh hoàng. Trong một cabin trống rỗng, cô phải đối mặt với cái chết không rõ nguyên nhân của những người bạn đồng hành, mất đi sự bám chặt vào thực tế và sống lại cơn ác mộng tồi tệ nhất từ ​​thời thơ ấu của cô.', 1, '62ce53fd480be3280.jpg', 'hang-ghe-19-–-row-19-ryad-19', 2, 'phimle', 5, 1, 0, 0, 'Row 19', 0, 0, '2022-07-15 17:20:34', '2022-07-15 17:20:34', NULL, NULL, NULL, 's9U7-ITrNn0', 1),
(50, 'Burger Của Bob – The Bob’s Burgers Movie', '120 phút', 'Burger Của Bob - The Bob\'s Burgers Movie, The Bob\'s Burgers Movie 2022 Full\r\nCác Belcher cố gắng cứu nhà hàng đóng cửa khi một hố sụt hình thành trước mặt nó, trong khi những đứa trẻ cố gắng giải quyết một bí ẩn có thể cứu nhà hàng của gia đình họ.', 1, '62ce54d4960d01407.jpg', 'burger-cua-bob-–-the-bob’s-burgers-movie', 2, 'phimle', 3, 1, 0, 0, 'The Bob\'s Burgers Movie', 0, 0, '2022-07-15 17:22:00', '2022-07-15 17:22:00', NULL, NULL, NULL, NULL, 1),
(51, 'Tăng Tốc… Về Phía Em – Fast & Feel Love', '120 phút', 'Tăng Tốc... Về Phía Em - Fast & Feel Love, Fast & Feel Love 2022 Full\r\nKhi một nhà vô địch thế giới của môn thể thao xếp chồng bị bạn gái lâu năm của mình ném đá, anh ta phải học những kỹ năng đánh đòn cơ bản để có thể sống một mình và chăm sóc bản thân', 1, '62c5854fc19ab7086.jpg', 'tang-toc…-ve-phia-em-–-fast-feel-love', 2, 'phimle', 8, 5, 0, 5, 'Fast & Feel Love', 0, 0, '2022-07-15 17:23:26', '2022-07-15 17:23:26', NULL, NULL, NULL, 'YfOF23mOUVY', 1),
(52, 'Đá Vàng (Phần 3) – Yellowstone (Season 3)', '60 phút/tập', 'Đá Vàng (Phần 3) - Yellowstone (Season 3), Yellowstone Season 3 2020 Tập 8 Vietsub Season 3\r\nMột gia đình chăn nuôi ở Montana đối mặt với những người khác lấn chiếm đất của họ.', 1, 'da-vang-phan-3-yellowstone-season-3-90487-250x3501949.jpg', 'da-vang-phan-3-–-yellowstone-season-3', 4, 'phimbo', 1, 2, 0, 0, 'Yellowstone (Season 3)', 0, 0, '2022-07-15 17:25:26', '2022-07-15 17:25:26', NULL, NULL, NULL, NULL, 8),
(53, 'Kung Fu Panda: Hiệp Sĩ Rồng (Phần 1) – Kung Fu Panda: The Dragon Knight (Season 1)', '60 phút/tập', 'Kung Fu Panda: Hiệp Sĩ Rồng (Phần 1) - Kung Fu Panda: The Dragon Knight (Season 1), Kung Fu Panda: The Dragon Knight (Season 1) 2022 Full (11/11) Season 1\r\nChiến binh huyền thoại Po bắt tay với một hiệp sĩ Anh ưu tú trong nhiệm vụ có quy mô toàn cầu để giành lại các vũ khí ma thuật, rửa sạch thanh danh và cứu thế giới!', 1, '62d0e0728024b5273.jpg', 'kung-fu-panda-hiep-si-rong-phan-1-–-kung-fu-panda-the-dragon-knight-season-1', 4, 'phimbo', 3, 1, 1, 4, 'Kung Fu Panda: The Dragon Knight (Season 1)', 0, 0, '2022-07-15 17:29:11', '2022-07-15 21:14:03', NULL, NULL, NULL, 'izsaIxdC2dc', 11),
(54, 'Ms. Marvel (Phần 1) – Ms. Marvel (Season 1)', '60 phút/tập', 'Ms. Marvel (Phần 1) - Ms. Marvel (Season 1), Ms. Marvel (Season 1) 2022 Full (6/6) Season 1\r\nKamala Khan lớn lên ở New Jersey biết rằng cô có sức mạnh đa hình.', 1, '62a061ae5fc633726.jpg', 'ms-marvel-phan-1-–-ms-marvel-season-1', 4, 'phimbo', 1, 2, 1, 2, 'Ms. Marvel', 0, 0, '2022-07-15 17:30:40', '2022-07-15 21:16:19', NULL, NULL, NULL, 'm9EX0f6V11Y', 6),
(55, 'Đêm Dài Nhất (Phần 1) – The Longest Night (Season 1)', '60 phút/tập', 'Đêm Dài Nhất (Phần 1) - The Longest Night (Season 1), The Longest Night (Season 1) 2022 Full (6/6) Season 1\r\nCác lực lượng vũ trang bao vây một nhà tù tâm thần để tóm tên sát nhân hàng loạt bị giam giữ. Tuy nhiên, họ lại chẳng ngờ đến trận chiến nổ ra sau đó.', 1, '62cb9bbe26024344.jpg', 'dem-dai-nhat-phan-1-–-the-longest-night-season-1', 4, 'phimbo', 1, 2, 0, 0, 'The Longest Night (Season 1)', 0, 0, '2022-07-15 17:32:43', '2022-07-15 17:32:43', NULL, NULL, NULL, NULL, 6),
(56, 'Nữ Luật Sư Kỳ Lạ Woo Young Woo – Extraordinary Attorney Woo', '60 phút/tập', 'Nữ Luật Sư Kỳ Lạ Woo Young Woo – Extraordinary Attorney Woo', 1, '62bd151bee0df2887.jpg', 'nu-luat-su-ky-la-woo-young-woo-–-extraordinary-attorney-woo', 4, 'phimbo', 8, 5, 0, 0, 'Nữ Luật Sư Kỳ Lạ Woo Young Woo – Extraordinary Attorney Woo', 0, 0, '2022-07-15 17:34:24', '2022-07-15 17:34:24', NULL, NULL, NULL, NULL, 6),
(57, 'Anna – Anna', '60 phút/tập', 'Anna – Anna', 1, '62bbc1a4bab8c8492.jpg', 'anna-–-anna', 4, 'phimbo', 8, 5, 0, 0, 'Anna – Anna', 0, 0, '2022-07-15 17:35:12', '2022-07-19 21:48:45', '2022', 'Hành Động\r\nTLXH Hành Động\r\nHành Động Hài Hước\r\nCờ Bạc Xã Hội Đen\r\nVõ Thuật\r\nVõ Thuật Kiếm Hiệp', NULL, NULL, 6),
(76, 'long test 21313', '120 phút', 'sdassaas', 0, 'PTDV8433.jpg', 'long-test-21313', 2, 'phimle', 4, 1, 0, 0, 'test validate', 1, 0, '2022-12-20 20:59:24', '2022-12-20 20:59:24', NULL, 'sdfasdfdas', NULL, 'aVwp7WeU3Uk', 12);

-- --------------------------------------------------------

--
-- Table structure for table `movie_genre`
--

CREATE TABLE `movie_genre` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie_genre`
--

INSERT INTO `movie_genre` (`id`, `movie_id`, `genre_id`) VALUES
(22, 26, 1),
(23, 26, 3),
(29, 24, 1),
(30, 24, 3),
(31, 24, 4),
(41, 22, 1),
(42, 22, 3),
(54, 27, 1),
(55, 27, 3),
(56, 27, 4),
(57, 27, 5),
(58, 27, 8),
(74, 12, 1),
(75, 12, 3),
(76, 12, 4),
(77, 12, 5),
(78, 25, 1),
(79, 25, 3),
(80, 25, 4),
(81, 33, 3),
(82, 33, 5),
(83, 34, 1),
(84, 34, 7),
(85, 34, 8),
(86, 35, 1),
(87, 35, 5),
(88, 35, 6),
(89, 36, 1),
(90, 36, 6),
(91, 36, 7),
(92, 36, 8),
(93, 37, 1),
(94, 37, 3),
(95, 37, 5),
(96, 37, 6),
(97, 37, 8),
(98, 38, 1),
(99, 38, 4),
(100, 38, 5),
(101, 39, 7),
(102, 39, 8),
(103, 40, 1),
(104, 41, 1),
(105, 41, 7),
(106, 41, 8),
(107, 42, 1),
(108, 42, 5),
(109, 42, 8),
(110, 43, 3),
(111, 44, 1),
(112, 45, 1),
(113, 45, 5),
(114, 45, 6),
(115, 45, 8),
(116, 46, 1),
(117, 46, 5),
(118, 46, 6),
(119, 47, 1),
(120, 48, 7),
(121, 48, 8),
(122, 49, 5),
(123, 50, 3),
(124, 51, 3),
(125, 51, 8),
(126, 52, 1),
(127, 53, 3),
(128, 54, 1),
(129, 55, 1),
(130, 56, 8),
(131, 57, 8),
(133, 17, 1),
(134, 20, 3),
(135, 20, 4),
(136, 13, 1),
(137, 9, 1),
(138, 5, 1),
(139, 10, 9),
(140, 6, 9),
(141, 4, 9),
(158, 76, 3),
(159, 76, 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'user01', 'user01@gmail.com', NULL, '$2y$10$UYX7Phik6ozCMxYBsPZAcOJOAgiRX2kABKPSRMi4Mn.b03/5eQmzy', NULL, '2022-01-03 07:00:17', '2022-01-03 07:00:17'),
(3, 'phimhay', 'phimhay@gmail.com', NULL, '$2y$10$NRGyWdtng8T9.0MHo/9fk.dJtAvVri19aqASSrLBqrWInl0r6MRtW', NULL, '2022-03-22 01:46:13', '2022-03-22 01:46:13'),
(4, 'Long Đoàn', 'longdoan14xtnd@gmail.com', NULL, '$2y$10$aunU5NfAE/xIpCOLgOB7JeIXDhbYBYwna43O6iX3bw.T5tJaX1Uki', 'uchMbtRtt44hbmuqyQZcFAzeFj1G0Rkro95DFVpwRUsbZ72kq2FMNdQCnLku', '2022-07-06 20:45:43', '2022-07-06 20:45:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indexes for table `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `movie_genre`
--
ALTER TABLE `movie_genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `episodes`
--
ALTER TABLE `episodes`
  ADD CONSTRAINT `episodes_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `movies_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`),
  ADD CONSTRAINT `movies_ibfk_3` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

--
-- Constraints for table `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD CONSTRAINT `movie_genre_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
