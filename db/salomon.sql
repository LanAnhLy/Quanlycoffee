-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2021 at 05:45 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salomon`
--

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(10) UNSIGNED NOT NULL,
  `_name_district` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `_prefix_district` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `_province_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `_name_district`, `_prefix_district`, `_province_id`) VALUES
(1, 'Bình Chánh', 'Huyện', 1),
(2, 'Bình Tân', 'Quận', 1),
(3, 'Bình Thạnh', 'Quận', 1),
(4, 'Cần Giờ', 'Huyện', 1),
(5, 'Củ Chi', 'Huyện', 1),
(6, 'Gò Vấp', 'Quận', 1),
(7, 'Hóc Môn', 'Huyện', 1),
(8, 'Nhà Bè', 'Huyện', 1),
(9, 'Phú Nhuận', 'Quận', 1),
(10, 'Quận 1', '', 1),
(11, 'Quận 10', '', 1),
(12, 'Quận 11', '', 1),
(13, 'Quận 12', '', 1),
(14, 'Quận 2', '', 1),
(15, 'Quận 3', '', 1),
(16, 'Quận 4', '', 1),
(17, 'Quận 5', '', 1),
(18, 'Quận 6', '', 1),
(19, 'Quận 7', '', 1),
(20, 'Quận 8', '', 1),
(21, 'Quận 9', '', 1),
(22, 'Tân Bình', 'Quận', 1),
(23, 'Tân Phú', 'Quận', 1),
(24, 'Thủ Đức', 'Quận', 1),
(25, 'Ba Đình', 'Quận', 2),
(26, 'Ba Vì', 'Huyện', 2),
(27, 'Bắc Từ Liêm', 'Quận', 2),
(28, 'Cầu Giấy', 'Quận', 2),
(29, 'Chương Mỹ', 'Huyện', 2),
(30, 'Đan Phượng', 'Huyện', 2),
(31, 'Đông Anh', 'Huyện', 2),
(32, 'Đống Đa', 'Quận', 2),
(33, 'Gia Lâm', 'Huyện', 2),
(34, 'Hà Đông', 'Quận', 2),
(35, 'Hai Bà Trưng', 'Quận', 2),
(36, 'Hoài Đức', 'Huyện', 2),
(37, 'Hoàn Kiếm', 'Quận', 2),
(38, 'Hoàng Mai', 'Quận', 2),
(39, 'Long Biên', 'Quận', 2),
(40, 'Mê Linh', 'Huyện', 2),
(41, 'Mỹ Đức', 'Huyện', 2),
(42, 'Nam Từ Liêm', 'Quận', 2),
(43, 'Phú Xuyên', 'Huyện', 2),
(44, 'Phúc Thọ', 'Huyện', 2),
(45, 'Quốc Oai', 'Huyện', 2),
(46, 'Sóc Sơn', 'Huyện', 2),
(47, 'Sơn Tây', 'Thị xã', 2),
(48, 'Tây Hồ', 'Quận', 2),
(49, 'Thạch Thất', 'Huyện', 2),
(50, 'Thanh Oai', 'Huyện', 2),
(51, 'Thanh Trì', 'Huyện', 2),
(52, 'Thanh Xuân', 'Quận', 2),
(53, 'Thường Tín', 'Huyện', 2),
(54, 'Ứng Hòa', 'Huyện', 2),
(55, 'Cẩm Lệ', 'Quận', 3),
(56, 'Hải Châu', 'Quận', 3),
(57, 'Hòa Vang', 'Huyện', 3),
(58, 'Hoàng Sa', 'Huyện', 3),
(59, 'Liên Chiểu', 'Quận', 3),
(60, 'Ngũ Hành Sơn', 'Quận', 3),
(61, 'Sơn Trà', 'Quận', 3),
(62, 'Thanh Khê', 'Quận', 3),
(63, 'Bàu Bàng', 'Huyện', 4),
(64, 'Bến Cát', 'Thị xã', 4),
(65, 'Dầu Tiếng', 'Huyện', 4),
(66, 'Dĩ An', 'Thị xã', 4),
(67, 'Phú Giáo', 'Huyện', 4),
(68, 'Tân Uyên', 'Huyện', 4),
(69, 'Thủ Dầu Một', 'Thị xã', 4),
(70, 'Thuận An', 'Huyện', 4),
(71, 'Biên Hòa', 'Thành phố', 5),
(72, 'Cẩm Mỹ', 'Huyện', 5),
(73, 'Định Quán', 'Huyện', 5),
(74, 'Long Khánh', 'Thị xã', 5),
(75, 'Long Thành', 'Huyện', 5),
(76, 'Nhơn Trạch', 'Huyện', 5),
(77, 'Tân Phú', 'Quận', 5),
(78, 'Thống Nhất', 'Huyện', 5),
(79, 'Trảng Bom', 'Huyện', 5),
(80, 'Vĩnh Cửu', 'Huyện', 5),
(81, 'Xuân Lộc', 'Huyện', 5),
(82, 'Cam Lâm', 'Huyện', 6),
(83, 'Cam Ranh', 'Thành phố', 6),
(84, 'Diên Khánh', 'Huyện', 6),
(85, 'Khánh Sơn', 'Huyện', 6),
(86, 'Khánh Vĩnh', 'Huyện', 6),
(87, 'Nha Trang', 'Thành phố', 6),
(88, 'Ninh Hòa', 'Thị xã', 6),
(89, 'Trường Sa', 'Huyện', 6),
(90, 'Vạn Ninh', 'Huyện', 6),
(91, 'An Dương', 'Huyện', 7),
(92, 'An Lão', 'Huyện', 7),
(93, 'Bạch Long Vĩ', 'Huyện', 7),
(94, 'Cát Hải', 'Huyện', 7),
(95, 'Đồ Sơn', 'Quận', 7),
(96, 'Dương Kinh', 'Quận', 7),
(97, 'Hải An', 'Quận', 7),
(98, 'Hồng Bàng', 'Quận', 7),
(99, 'Kiến An', 'Quận', 7),
(100, 'Kiến Thụy', 'Huyện', 7),
(101, 'Lê Chân', 'Quận', 7),
(102, 'Ngô Quyền', 'Quận', 7),
(103, 'Thủy Nguyên', 'Huyện', 7),
(104, 'Tiên Lãng', 'Huyện', 7),
(105, 'Vĩnh Bảo', 'Huyện', 7),
(106, 'Bến Lức', 'Huyện', 8),
(107, 'Cần Đước', 'Huyện', 8),
(108, 'Cần Giuộc', 'Huyện', 8),
(109, 'Châu Thành', 'Huyện', 8),
(110, 'Đức Hòa', 'Huyện', 8),
(111, 'Đức Huệ', 'Huyện', 8),
(112, 'Kiến Tường', 'Thị xã', 8),
(113, 'Mộc Hóa', 'Huyện', 8),
(114, 'Tân An', 'Thành phố', 8),
(115, 'Tân Hưng', 'Huyện', 8),
(116, 'Tân Thạnh', 'Huyện', 8),
(117, 'Tân Trụ', 'Huyện', 8),
(118, 'Thạnh Hóa', 'Huyện', 8),
(119, 'Thủ Thừa', 'Huyện', 8),
(120, 'Vĩnh Hưng', 'Huyện', 8),
(121, 'Bắc Trà My', 'Huyện', 9),
(122, 'Đại Lộc', 'Huyện', 9),
(123, 'Điện Bàn', 'Huyện', 9),
(124, 'Đông Giang', 'Huyện', 9),
(125, 'Duy Xuyên', 'Huyện', 9),
(126, 'Hiệp Đức', 'Huyện', 9),
(127, 'Hội An', 'Thành phố', 9),
(128, 'Nam Giang', 'Huyện', 9),
(129, 'Nam Trà My', 'Huyện', 9),
(130, 'Nông Sơn', 'Huyện', 9),
(131, 'Núi Thành', 'Huyện', 9),
(132, 'Phú Ninh', 'Huyện', 9),
(133, 'Phước Sơn', 'Huyện', 9),
(134, 'Quế Sơn', 'Huyện', 9),
(135, 'Tam Kỳ', 'Thành phố', 9),
(136, 'Tây Giang', 'Huyện', 9),
(137, 'Thăng Bình', 'Huyện', 9),
(138, 'Tiên Phước', 'Huyện', 9),
(139, 'Bà Rịa', 'Thị xã', 10),
(140, 'Châu Đức', 'Huyện', 10),
(141, 'Côn Đảo', 'Huyện', 10),
(142, 'Đất Đỏ', 'Huyện', 10),
(143, 'Long Điền', 'Huyện', 10),
(144, 'Tân Thành', 'Huyện', 10),
(145, 'Vũng Tàu', 'Thành phố', 10),
(146, 'Xuyên Mộc', 'Huyện', 10),
(147, 'Buôn Đôn', 'Huyện', 11),
(148, 'Buôn Hồ', 'Thị xã', 11),
(149, 'Buôn Ma Thuột', 'Thành phố', 11),
(150, 'Cư Kuin', 'Huyện', 11),
(151, 'Cư M\'gar', 'Huyện', 11),
(152, 'Ea H\'Leo', 'Huyện', 11),
(153, 'Ea Kar', 'Huyện', 11),
(154, 'Ea Súp', 'Huyện', 11),
(155, 'Krông Ana', 'Huyện', 11),
(156, 'Krông Bông', 'Huyện', 11),
(157, 'Krông Buk', 'Huyện', 11),
(158, 'Krông Năng', 'Huyện', 11),
(159, 'Krông Pắc', 'Huyện', 11),
(160, 'Lăk', 'Huyện', 11),
(161, 'M\'Đrăk', 'Huyện', 11),
(162, ' Thới Lai', 'Huyện', 12),
(163, 'Bình Thủy', 'Quận', 12),
(164, 'Cái Răng', 'Quận', 12),
(165, 'Cờ Đỏ', 'Huyện', 12),
(166, 'Ninh Kiều', 'Quận', 12),
(167, 'Ô Môn', 'Quận', 12),
(168, 'Phong Điền', 'Huyện', 12),
(169, 'Thốt Nốt', 'Quận', 12),
(170, 'Vĩnh Thạnh', 'Huyện', 12),
(171, 'Bắc Bình', 'Huyện', 13),
(172, 'Đảo Phú Quý', 'Huyện', 13),
(173, 'Đức Linh', 'Huyện', 13),
(174, 'Hàm Tân', 'Huyện', 13),
(175, 'Hàm Thuận Bắc', 'Huyện', 13),
(176, 'Hàm Thuận Nam', 'Huyện', 13),
(177, 'La Gi', 'Thị xã', 13),
(178, 'Phan Thiết', 'Thành phố', 13),
(179, 'Tánh Linh', 'Huyện', 13),
(180, 'Tuy Phong', 'Huyện', 13),
(181, 'Bảo Lâm', 'Huyện', 14),
(182, 'Bảo Lộc', 'Thành phố', 14),
(183, 'Cát Tiên', 'Huyện', 14),
(184, 'Đạ Huoai', 'Huyện', 14),
(185, 'Đà Lạt', 'Thành phố', 14),
(186, 'Đạ Tẻh', 'Huyện', 14),
(187, 'Đam Rông', 'Huyện', 14),
(188, 'Di Linh', 'Huyện', 14),
(189, 'Đơn Dương', 'Huyện', 14),
(190, 'Đức Trọng', 'Huyện', 14),
(191, 'Lạc Dương', 'Huyện', 14),
(192, 'Lâm Hà', 'Huyện', 14),
(193, 'A Lưới', 'Huyện', 15),
(194, 'Huế', 'Thành phố', 15),
(195, 'Hương Thủy', 'Thị xã', 15),
(196, 'Hương Trà', 'Huyện', 15),
(197, 'Nam Đông', 'Huyện', 15),
(198, 'Phong Điền', 'Huyện', 15),
(199, 'Phú Lộc', 'Huyện', 15),
(200, 'Phú Vang', 'Huyện', 15),
(201, 'Quảng Điền', 'Huyện', 15),
(202, 'An Biên', 'Huyện', 16),
(203, 'An Minh', 'Huyện', 16),
(204, 'Châu Thành', 'Huyện', 16),
(205, 'Giang Thành', 'Huyện', 16),
(206, 'Giồng Riềng', 'Huyện', 16),
(207, 'Gò Quao', 'Huyện', 16),
(208, 'Hà Tiên', 'Thị xã', 16),
(209, 'Hòn Đất', 'Huyện', 16),
(210, 'Kiên Hải', 'Huyện', 16),
(211, 'Kiên Lương', 'Huyện', 16),
(212, 'Phú Quốc', 'Huyện', 16),
(213, 'Rạch Giá', 'Thành phố', 16),
(214, 'Tân Hiệp', 'Huyện', 16),
(215, 'U minh Thượng', 'Huyện', 16),
(216, 'Vĩnh Thuận', 'Huyện', 16),
(217, 'Bắc Ninh', 'Thành phố', 17),
(218, 'Gia Bình', 'Huyện', 17),
(219, 'Lương Tài', 'Huyện', 17),
(220, 'Quế Võ', 'Huyện', 17),
(221, 'Thuận Thành', 'Huyện', 17),
(222, 'Tiên Du', 'Huyện', 17),
(223, 'Từ Sơn', 'Thị xã', 17),
(224, 'Yên Phong', 'Huyện', 17),
(225, 'Ba Chẽ', 'Huyện', 18),
(226, 'Bình Liêu', 'Huyện', 18),
(227, 'Cẩm Phả', 'Thành phố', 18),
(228, 'Cô Tô', 'Huyện', 18),
(229, 'Đầm Hà', 'Huyện', 18),
(230, 'Đông Triều', 'Huyện', 18),
(231, 'Hạ Long', 'Thành phố', 18),
(232, 'Hải Hà', 'Huyện', 18),
(233, 'Hoành Bồ', 'Huyện', 18),
(234, 'Móng Cái', 'Thành phố', 18),
(235, 'Quảng Yên', 'Huyện', 18),
(236, 'Tiên Yên', 'Huyện', 18),
(237, 'Uông Bí', 'Thị xã', 18),
(238, 'Vân Đồn', 'Huyện', 18),
(239, 'Bá Thước', 'Huyện', 19),
(240, 'Bỉm Sơn', 'Thị xã', 19),
(241, 'Cẩm Thủy', 'Huyện', 19),
(242, 'Đông Sơn', 'Huyện', 19),
(243, 'Hà Trung', 'Huyện', 19),
(244, 'Hậu Lộc', 'Huyện', 19),
(245, 'Hoằng Hóa', 'Huyện', 19),
(246, 'Lang Chánh', 'Huyện', 19),
(247, 'Mường Lát', 'Huyện', 19),
(248, 'Nga Sơn', 'Huyện', 19),
(249, 'Ngọc Lặc', 'Huyện', 19),
(250, 'Như Thanh', 'Huyện', 19),
(251, 'Như Xuân', 'Huyện', 19),
(252, 'Nông Cống', 'Huyện', 19),
(253, 'Quan Hóa', 'Huyện', 19),
(254, 'Quan Sơn', 'Huyện', 19),
(255, 'Quảng Xương', 'Huyện', 19),
(256, 'Sầm Sơn', 'Thị xã', 19),
(257, 'Thạch Thành', 'Huyện', 19),
(258, 'Thanh Hóa', 'Thành phố', 19),
(259, 'Thiệu Hóa', 'Huyện', 19),
(260, 'Thọ Xuân', 'Huyện', 19),
(261, 'Thường Xuân', 'Huyện', 19),
(262, 'Tĩnh Gia', 'Huyện', 19),
(263, 'Triệu Sơn', 'Huyện', 19),
(264, 'Vĩnh Lộc', 'Huyện', 19),
(265, 'Yên Định', 'Huyện', 19),
(266, 'Anh Sơn', 'Huyện', 20),
(267, 'Con Cuông', 'Huyện', 20),
(268, 'Cửa Lò', 'Thị xã', 20),
(269, 'Diễn Châu', 'Huyện', 20),
(270, 'Đô Lương', 'Huyện', 20),
(271, 'Hoàng Mai', 'Thị xã', 20),
(272, 'Hưng Nguyên', 'Huyện', 20),
(273, 'Kỳ Sơn', 'Huyện', 20),
(274, 'Nam Đàn', 'Huyện', 20),
(275, 'Nghi Lộc', 'Huyện', 20),
(276, 'Nghĩa Đàn', 'Huyện', 20),
(277, 'Quế Phong', 'Huyện', 20),
(278, 'Quỳ Châu', 'Huyện', 20),
(279, 'Quỳ Hợp', 'Huyện', 20),
(280, 'Quỳnh Lưu', 'Huyện', 20),
(281, 'Tân Kỳ', 'Huyện', 20),
(282, 'Thái Hòa', 'Thị xã', 20),
(283, 'Thanh Chương', 'Huyện', 20),
(284, 'Tương Dương', 'Huyện', 20),
(285, 'Vinh', 'Thành phố', 20),
(286, 'Yên Thành', 'Huyện', 20),
(287, 'Bình Giang', 'Huyện', 21),
(288, 'Cẩm Giàng', 'Huyện', 21),
(289, 'Chí Linh', 'Thị xã', 21),
(290, 'Gia Lộc', 'Huyện', 21),
(291, 'Hải Dương', 'Thành phố', 21),
(292, 'Kim Thành', 'Huyện', 21),
(293, 'Kinh Môn', 'Huyện', 21),
(294, 'Nam Sách', 'Huyện', 21),
(295, 'Ninh Giang', 'Huyện', 21),
(296, 'Thanh Hà', 'Huyện', 21),
(297, 'Thanh Miện', 'Huyện', 21),
(298, 'Tứ Kỳ', 'Huyện', 21),
(299, 'An Khê', 'Thị xã', 22),
(300, 'AYun Pa', 'Thị xã', 22),
(301, 'Chư Păh', 'Huyện', 22),
(302, 'Chư Pưh', 'Huyện', 22),
(303, 'Chư Sê', 'Huyện', 22),
(304, 'ChưPRông', 'Huyện', 22),
(305, 'Đăk Đoa', 'Huyện', 22),
(306, 'Đăk Pơ', 'Huyện', 22),
(307, 'Đức Cơ', 'Huyện', 22),
(308, 'Ia Grai', 'Huyện', 22),
(309, 'Ia Pa', 'Huyện', 22),
(310, 'KBang', 'Huyện', 22),
(311, 'Kông Chro', 'Huyện', 22),
(312, 'Krông Pa', 'Huyện', 22),
(313, 'Mang Yang', 'Huyện', 22),
(314, 'Phú Thiện', 'Huyện', 22),
(315, 'Plei Ku', 'Thành phố', 22),
(316, 'Bình Long', 'Thị xã', 23),
(317, 'Bù Đăng', 'Huyện', 23),
(318, 'Bù Đốp', 'Huyện', 23),
(319, 'Bù Gia Mập', 'Huyện', 23),
(320, 'Chơn Thành', 'Huyện', 23),
(321, 'Đồng Phú', 'Huyện', 23),
(322, 'Đồng Xoài', 'Thị xã', 23),
(323, 'Hớn Quản', 'Huyện', 23),
(324, 'Lộc Ninh', 'Huyện', 23),
(325, 'Phú Riềng', 'Huyện', 23),
(326, 'Phước Long', 'Thị xã', 23),
(327, 'Ân Thi', 'Huyện', 24),
(328, 'Hưng Yên', 'Thành phố', 24),
(329, 'Khoái Châu', 'Huyện', 24),
(330, 'Kim Động', 'Huyện', 24),
(331, 'Mỹ Hào', 'Huyện', 24),
(332, 'Phù Cừ', 'Huyện', 24),
(333, 'Tiên Lữ', 'Huyện', 24),
(334, 'Văn Giang', 'Huyện', 24),
(335, 'Văn Lâm', 'Huyện', 24),
(336, 'Yên Mỹ', 'Huyện', 24),
(337, 'An Lão', 'Huyện', 25),
(338, 'An Nhơn', 'Huyện', 25),
(339, 'Hoài Ân', 'Huyện', 25),
(340, 'Hoài Nhơn', 'Huyện', 25),
(341, 'Phù Cát', 'Huyện', 25),
(342, 'Phù Mỹ', 'Huyện', 25),
(343, 'Quy Nhơn', 'Thành phố', 25),
(344, 'Tây Sơn', 'Huyện', 25),
(345, 'Tuy Phước', 'Huyện', 25),
(346, 'Vân Canh', 'Huyện', 25),
(347, 'Vĩnh Thạnh', 'Huyện', 25),
(348, 'Cái Bè', 'Huyện', 26),
(349, 'Cai Lậy', 'Thị xã', 26),
(350, 'Châu Thành', 'Huyện', 26),
(351, 'Chợ Gạo', 'Huyện', 26),
(352, 'Gò Công', 'Thị xã', 26),
(353, 'Gò Công Đông', 'Huyện', 26),
(354, 'Gò Công Tây', 'Huyện', 26),
(355, 'Huyện Cai Lậy', 'Huyện', 26),
(356, 'Mỹ Tho', 'Thành phố', 26),
(357, 'Tân Phú Đông', 'Huyện', 26),
(358, 'Tân Phước', 'Huyện', 26),
(359, 'Đông Hưng', 'Huyện', 27),
(360, 'Hưng Hà', 'Huyện', 27),
(361, 'Kiến Xương', 'Huyện', 27),
(362, 'Quỳnh Phụ', 'Huyện', 27),
(363, 'Thái Bình', 'Thành phố', 27),
(364, 'Thái Thuỵ', 'Huyện', 27),
(365, 'Tiền Hải', 'Huyện', 27),
(366, 'Vũ Thư', 'Huyện', 27),
(367, 'Bắc Giang', 'Thành phố', 28),
(368, 'Hiệp Hòa', 'Huyện', 28),
(369, 'Lạng Giang', 'Huyện', 28),
(370, 'Lục Nam', 'Huyện', 28),
(371, 'Lục Ngạn', 'Huyện', 28),
(372, 'Sơn Động', 'Huyện', 28),
(373, 'Tân Yên', 'Huyện', 28),
(374, 'Việt Yên', 'Huyện', 28),
(375, 'Yên Dũng', 'Huyện', 28),
(376, 'Yên Thế', 'Huyện', 28),
(377, 'Cao Phong', 'Huyện', 29),
(378, 'Đà Bắc', 'Huyện', 29),
(379, 'Hòa Bình', 'Thành phố', 29),
(380, 'Kim Bôi', 'Huyện', 29),
(381, 'Kỳ Sơn', 'Huyện', 29),
(382, 'Lạc Sơn', 'Huyện', 29),
(383, 'Lạc Thủy', 'Huyện', 29),
(384, 'Lương Sơn', 'Huyện', 29),
(385, 'Mai Châu', 'Huyện', 29),
(386, 'Tân Lạc', 'Huyện', 29),
(387, 'Yên Thủy', 'Huyện', 29),
(388, 'An Phú', 'Huyện', 30),
(389, 'Châu Đốc', 'Thị xã', 30),
(390, 'Châu Phú', 'Huyện', 30),
(391, 'Châu Thành', 'Huyện', 30),
(392, 'Chợ Mới', 'Huyện', 30),
(393, 'Long Xuyên', 'Thành phố', 30),
(394, 'Phú Tân', 'Huyện', 30),
(395, 'Tân Châu', 'Thị xã', 30),
(396, 'Thoại Sơn', 'Huyện', 30),
(397, 'Tịnh Biên', 'Huyện', 30),
(398, 'Tri Tôn', 'Huyện', 30),
(399, 'Bình Xuyên', 'Huyện', 31),
(400, 'Lập Thạch', 'Huyện', 31),
(401, 'Phúc Yên', 'Thị xã', 31),
(402, 'Sông Lô', 'Huyện', 31),
(403, 'Tam Đảo', 'Huyện', 31),
(404, 'Tam Dương', 'Huyện', 31),
(405, 'Vĩnh Tường', 'Huyện', 31),
(406, 'Vĩnh Yên', 'Thành phố', 31),
(407, 'Yên Lạc', 'Huyện', 31),
(408, 'Bến Cầu', 'Huyện', 32),
(409, 'Châu Thành', 'Huyện', 32),
(410, 'Dương Minh Châu', 'Huyện', 32),
(411, 'Gò Dầu', 'Huyện', 32),
(412, 'Hòa Thành', 'Huyện', 32),
(413, 'Tân Biên', 'Huyện', 32),
(414, 'Tân Châu', 'Huyện', 32),
(415, 'Tây Ninh', 'Thị xã', 32),
(416, 'Trảng Bàng', 'Huyện', 32),
(417, 'Đại Từ', 'Huyện', 33),
(418, 'Định Hóa', 'Huyện', 33),
(419, 'Đồng Hỷ', 'Huyện', 33),
(420, 'Phổ Yên', 'Huyện', 33),
(421, 'Phú Bình', 'Huyện', 33),
(422, 'Phú Lương', 'Huyện', 33),
(423, 'Sông Công', 'Thị xã', 33),
(424, 'Thái Nguyên', 'Thành phố', 33),
(425, 'Võ Nhai', 'Huyện', 33),
(426, 'Bắc Hà', 'Huyện', 34),
(427, 'Bảo Thắng', 'Huyện', 34),
(428, 'Bảo Yên', 'Huyện', 34),
(429, 'Bát Xát', 'Huyện', 34),
(430, 'Lào Cai', 'Thành phố', 34),
(431, 'Mường Khương', 'Huyện', 34),
(432, 'Sa Pa', 'Huyện', 34),
(433, 'Văn Bàn', 'Huyện', 34),
(434, 'Xi Ma Cai', 'Huyện', 34),
(435, 'Giao Thủy', 'Huyện', 35),
(436, 'Hải Hậu', 'Huyện', 35),
(437, 'Mỹ Lộc', 'Huyện', 35),
(438, 'Nam Định', 'Thành phố', 35),
(439, 'Nam Trực', 'Huyện', 35),
(440, 'Nghĩa Hưng', 'Huyện', 35),
(441, 'Trực Ninh', 'Huyện', 35),
(442, 'Vụ Bản', 'Huyện', 35),
(443, 'Xuân Trường', 'Huyện', 35),
(444, 'Ý Yên', 'Huyện', 35),
(445, 'Ba Tơ', 'Huyện', 36),
(446, 'Bình Sơn', 'Huyện', 36),
(447, 'Đức Phổ', 'Huyện', 36),
(448, 'Lý Sơn', 'Huyện', 36),
(449, 'Minh Long', 'Huyện', 36),
(450, 'Mộ Đức', 'Huyện', 36),
(451, 'Nghĩa Hành', 'Huyện', 36),
(452, 'Quảng Ngãi', 'Thành phố', 36),
(453, 'Sơn Hà', 'Huyện', 36),
(454, 'Sơn Tây', 'Huyện', 36),
(455, 'Sơn Tịnh', 'Huyện', 36),
(456, 'Tây Trà', 'Huyện', 36),
(457, 'Trà Bồng', 'Huyện', 36),
(458, 'Tư Nghĩa', 'Huyện', 36),
(459, 'Ba Tri', 'Huyện', 37),
(460, 'Bến Tre', 'Thành phố', 37),
(461, 'Bình Đại', 'Huyện', 37),
(462, 'Châu Thành', 'Huyện', 37),
(463, 'Chợ Lách', 'Huyện', 37),
(464, 'Giồng Trôm', 'Huyện', 37),
(465, 'Mỏ Cày Bắc', 'Huyện', 37),
(466, 'Mỏ Cày Nam', 'Huyện', 37),
(467, 'Thạnh Phú', 'Huyện', 37),
(468, 'Cư Jút', 'Huyện', 38),
(469, 'Dăk GLong', 'Huyện', 38),
(470, 'Dăk Mil', 'Huyện', 38),
(471, 'Dăk R\'Lấp', 'Huyện', 38),
(472, 'Dăk Song', 'Huyện', 38),
(473, 'Gia Nghĩa', 'Thị xã', 38),
(474, 'Krông Nô', 'Huyện', 38),
(475, 'Tuy Đức', 'Huyện', 38),
(476, 'Cà Mau', 'Thành phố', 39),
(477, 'Cái Nước', 'Huyện', 39),
(478, 'Đầm Dơi', 'Huyện', 39),
(479, 'Năm Căn', 'Huyện', 39),
(480, 'Ngọc Hiển', 'Huyện', 39),
(481, 'Phú Tân', 'Huyện', 39),
(482, 'Thới Bình', 'Huyện', 39),
(483, 'Trần Văn Thời', 'Huyện', 39),
(484, 'U Minh', 'Huyện', 39),
(485, 'Bình Minh', 'Huyện', 40),
(486, 'Bình Tân', 'Quận', 40),
(487, 'Long Hồ', 'Huyện', 40),
(488, 'Mang Thít', 'Huyện', 40),
(489, 'Tam Bình', 'Huyện', 40),
(490, 'Trà Ôn', 'Huyện', 40),
(491, 'Vĩnh Long', 'Thành phố', 40),
(492, 'Vũng Liêm', 'Huyện', 40),
(493, 'Gia Viễn', 'Huyện', 41),
(494, 'Hoa Lư', 'Huyện', 41),
(495, 'Kim Sơn', 'Huyện', 41),
(496, 'Nho Quan', 'Huyện', 41),
(497, 'Ninh Bình', 'Thành phố', 41),
(498, 'Tam Điệp', 'Thị xã', 41),
(499, 'Yên Khánh', 'Huyện', 41),
(500, 'Yên Mô', 'Huyện', 41),
(501, 'Cẩm Khê', 'Huyện', 42),
(502, 'Đoan Hùng', 'Huyện', 42),
(503, 'Hạ Hòa', 'Huyện', 42),
(504, 'Lâm Thao', 'Huyện', 42),
(505, 'Phù Ninh', 'Huyện', 42),
(506, 'Phú Thọ', 'Thị xã', 42),
(507, 'Tam Nông', 'Huyện', 42),
(508, 'Tân Sơn', 'Huyện', 42),
(509, 'Thanh Ba', 'Huyện', 42),
(510, 'Thanh Sơn', 'Huyện', 42),
(511, 'Thanh Thủy', 'Huyện', 42),
(512, 'Việt Trì', 'Thành phố', 42),
(513, 'Yên Lập', 'Huyện', 42),
(514, 'Bác Ái', 'Huyện', 43),
(515, 'Ninh Hải', 'Huyện', 43),
(516, 'Ninh Phước', 'Huyện', 43),
(517, 'Ninh Sơn', 'Huyện', 43),
(518, 'Phan Rang - Tháp Chàm', 'Thành phố', 43),
(519, 'Thuận Bắc', 'Huyện', 43),
(520, 'Thuận Nam', 'Huyện', 43),
(521, 'Đông Hòa', 'Huyện', 44),
(522, 'Đồng Xuân', 'Huyện', 44),
(523, 'Phú Hòa', 'Huyện', 44),
(524, 'Sơn Hòa', 'Huyện', 44),
(525, 'Sông Cầu', 'Thị xã', 44),
(526, 'Sông Hinh', 'Huyện', 44),
(527, 'Tây Hòa', 'Huyện', 44),
(528, 'Tuy An', 'Huyện', 44),
(529, 'Tuy Hòa', 'Thành phố', 44),
(530, 'Bình Lục', 'Huyện', 45),
(531, 'Duy Tiên', 'Huyện', 45),
(532, 'Kim Bảng', 'Huyện', 45),
(533, 'Lý Nhân', 'Huyện', 45),
(534, 'Phủ Lý', 'Thành phố', 45),
(535, 'Thanh Liêm', 'Huyện', 45),
(536, 'Cẩm Xuyên', 'Huyện', 46),
(537, 'Can Lộc', 'Huyện', 46),
(538, 'Đức Thọ', 'Huyện', 46),
(539, 'Hà Tĩnh', 'Thành phố', 46),
(540, 'Hồng Lĩnh', 'Thị xã', 46),
(541, 'Hương Khê', 'Huyện', 46),
(542, 'Hương Sơn', 'Huyện', 46),
(543, 'Kỳ Anh', 'Huyện', 46),
(544, 'Lộc Hà', 'Huyện', 46),
(545, 'Nghi Xuân', 'Huyện', 46),
(546, 'Thạch Hà', 'Huyện', 46),
(547, 'Vũ Quang', 'Huyện', 46),
(548, 'Cao Lãnh', 'Thành phố', 47),
(549, 'Châu Thành', 'Huyện', 47),
(550, 'Hồng Ngự', 'Thị xã', 47),
(551, 'Huyện Cao Lãnh', 'Huyện', 47),
(552, 'Huyện Hồng Ngự', 'Huyện', 47),
(553, 'Lai Vung', 'Huyện', 47),
(554, 'Lấp Vò', 'Huyện', 47),
(555, 'Sa Đéc', 'Thị xã', 47),
(556, 'Tam Nông', 'Huyện', 47),
(557, 'Tân Hồng', 'Huyện', 47),
(558, 'Thanh Bình', 'Huyện', 47),
(559, 'Tháp Mười', 'Huyện', 47),
(560, 'Châu Thành', 'Huyện', 48),
(561, 'Cù Lao Dung', 'Huyện', 48),
(562, 'Kế Sách', 'Huyện', 48),
(563, 'Long Phú', 'Huyện', 48),
(564, 'Mỹ Tú', 'Huyện', 48),
(565, 'Mỹ Xuyên', 'Huyện', 48),
(566, 'Ngã Năm', 'Huyện', 48),
(567, 'Sóc Trăng', 'Thành phố', 48),
(568, 'Thạnh Trị', 'Huyện', 48),
(569, 'Trần Đề', 'Huyện', 48),
(570, 'Vĩnh Châu', 'Huyện', 48),
(571, 'Đăk Glei', 'Huyện', 49),
(572, 'Đăk Hà', 'Huyện', 49),
(573, 'Đăk Tô', 'Huyện', 49),
(574, 'Ia H\'Drai', 'Huyện', 49),
(575, 'Kon Plông', 'Huyện', 49),
(576, 'Kon Rẫy', 'Huyện', 49),
(577, 'KonTum', 'Thành phố', 49),
(578, 'Ngọc Hồi', 'Huyện', 49),
(579, 'Sa Thầy', 'Huyện', 49),
(580, 'Tu Mơ Rông', 'Huyện', 49),
(581, 'Ba Đồn', 'Thị xã', 50),
(582, 'Bố Trạch', 'Huyện', 50),
(583, 'Đồng Hới', 'Thành phố', 50),
(584, 'Lệ Thủy', 'Huyện', 50),
(585, 'Minh Hóa', 'Huyện', 50),
(586, 'Quảng Ninh', 'Huyện', 50),
(587, 'Quảng Trạch', 'Huyện', 50),
(588, 'Tuyên Hóa', 'Huyện', 50),
(589, 'Cam Lộ', 'Huyện', 51),
(590, 'Đa Krông', 'Huyện', 51),
(591, 'Đảo Cồn cỏ', 'Huyện', 51),
(592, 'Đông Hà', 'Thành phố', 51),
(593, 'Gio Linh', 'Huyện', 51),
(594, 'Hải Lăng', 'Huyện', 51),
(595, 'Hướng Hóa', 'Huyện', 51),
(596, 'Quảng Trị', 'Thị xã', 51),
(597, 'Triệu Phong', 'Huyện', 51),
(598, 'Vĩnh Linh', 'Huyện', 51),
(599, 'Càng Long', 'Huyện', 52),
(600, 'Cầu Kè', 'Huyện', 52),
(601, 'Cầu Ngang', 'Huyện', 52),
(602, 'Châu Thành', 'Huyện', 52),
(603, 'Duyên Hải', 'Huyện', 52),
(604, 'Tiểu Cần', 'Huyện', 52),
(605, 'Trà Cú', 'Huyện', 52),
(606, 'Trà Vinh', 'Thành phố', 52),
(607, 'Châu Thành', 'Huyện', 53),
(608, 'Châu Thành A', 'Huyện', 53),
(609, 'Long Mỹ', 'Huyện', 53),
(610, 'Ngã Bảy', 'Thị xã', 53),
(611, 'Phụng Hiệp', 'Huyện', 53),
(612, 'Vị Thanh', 'Thành phố', 53),
(613, 'Vị Thủy', 'Huyện', 53),
(614, 'Bắc Yên', 'Huyện', 54),
(615, 'Mai Sơn', 'Huyện', 54),
(616, 'Mộc Châu', 'Huyện', 54),
(617, 'Mường La', 'Huyện', 54),
(618, 'Phù Yên', 'Huyện', 54),
(619, 'Quỳnh Nhai', 'Huyện', 54),
(620, 'Sơn La', 'Thành phố', 54),
(621, 'Sông Mã', 'Huyện', 54),
(622, 'Sốp Cộp', 'Huyện', 54),
(623, 'Thuận Châu', 'Huyện', 54),
(624, 'Vân Hồ', 'Huyện', 54),
(625, 'Yên Châu', 'Huyện', 54),
(626, 'Bạc Liêu', 'Thành phố', 55),
(627, 'Đông Hải', 'Huyện', 55),
(628, 'Giá Rai', 'Huyện', 55),
(629, 'Hòa Bình', 'Huyện', 55),
(630, 'Hồng Dân', 'Huyện', 55),
(631, 'Phước Long', 'Huyện', 55),
(632, 'Vĩnh Lợi', 'Huyện', 55),
(633, 'Lục Yên', 'Huyện', 56),
(634, 'Mù Cang Chải', 'Huyện', 56),
(635, 'Nghĩa Lộ', 'Thị xã', 56),
(636, 'Trạm Tấu', 'Huyện', 56),
(637, 'Trấn Yên', 'Huyện', 56),
(638, 'Văn Chấn', 'Huyện', 56),
(639, 'Văn Yên', 'Huyện', 56),
(640, 'Yên Bái', 'Thành phố', 56),
(641, 'Yên Bình', 'Huyện', 56),
(642, 'Chiêm Hóa', 'Huyện', 57),
(643, 'Hàm Yên', 'Huyện', 57),
(644, 'Lâm Bình', 'Huyện', 57),
(645, 'Na Hang', 'Huyện', 57),
(646, 'Sơn Dương', 'Huyện', 57),
(647, 'Tuyên Quang', 'Thành phố', 57),
(648, 'Yên Sơn', 'Huyện', 57),
(649, 'Điện Biên', 'Huyện', 58),
(650, 'Điện Biên Đông', 'Huyện', 58),
(651, 'Điện Biên Phủ', 'Thành phố', 58),
(652, 'Mường Ảng', 'Huyện', 58),
(653, 'Mường Chà', 'Huyện', 58),
(654, 'Mường Lay', 'Thị xã', 58),
(655, 'Mường Nhé', 'Huyện', 58),
(656, 'Nậm Pồ', 'Huyện', 58),
(657, 'Tủa Chùa', 'Huyện', 58),
(658, 'Tuần Giáo', 'Huyện', 58),
(659, 'Lai Châu', 'Thị xã', 59),
(660, 'Mường Tè', 'Huyện', 59),
(661, 'Nậm Nhùn', 'Huyện', 59),
(662, 'Phong Thổ', 'Huyện', 59),
(663, 'Sìn Hồ', 'Huyện', 59),
(664, 'Tam Đường', 'Huyện', 59),
(665, 'Tân Uyên', 'Huyện', 59),
(666, 'Than Uyên', 'Huyện', 59),
(667, 'Bắc Sơn', 'Huyện', 60),
(668, 'Bình Gia', 'Huyện', 60),
(669, 'Cao Lộc', 'Huyện', 60),
(670, 'Chi Lăng', 'Huyện', 60),
(671, 'Đình Lập', 'Huyện', 60),
(672, 'Hữu Lũng', 'Huyện', 60),
(673, 'Lạng Sơn', 'Thành phố', 60),
(674, 'Lộc Bình', 'Huyện', 60),
(675, 'Tràng Định', 'Huyện', 60),
(676, 'Văn Lãng', 'Huyện', 60),
(677, 'Văn Quan', 'Huyện', 60),
(678, 'Bắc Mê', 'Huyện', 61),
(679, 'Bắc Quang', 'Huyện', 61),
(680, 'Đồng Văn', 'Huyện', 61),
(681, 'Hà Giang', 'Thành phố', 61),
(682, 'Hoàng Su Phì', 'Huyện', 61),
(683, 'Mèo Vạc', 'Huyện', 61),
(684, 'Quản Bạ', 'Huyện', 61),
(685, 'Quang Bình', 'Huyện', 61),
(686, 'Vị Xuyên', 'Huyện', 61),
(687, 'Xín Mần', 'Huyện', 61),
(688, 'Yên Minh', 'Huyện', 61),
(689, 'Ba Bể', 'Huyện', 62),
(690, 'Bắc Kạn', 'Thị xã', 62),
(691, 'Bạch Thông', 'Huyện', 62),
(692, 'Chợ Đồn', 'Huyện', 62),
(693, 'Chợ Mới', 'Huyện', 62),
(694, 'Na Rì', 'Huyện', 62),
(695, 'Ngân Sơn', 'Huyện', 62),
(696, 'Pác Nặm', 'Huyện', 62),
(697, 'Bảo Lạc', 'Huyện', 63),
(698, 'Bảo Lâm', 'Huyện', 63),
(699, 'Cao Bằng', 'Thị xã', 63),
(700, 'Hạ Lang', 'Huyện', 63),
(701, 'Hà Quảng', 'Huyện', 63),
(702, 'Hòa An', 'Huyện', 63),
(703, 'Nguyên Bình', 'Huyện', 63),
(704, 'Phục Hòa', 'Huyện', 63),
(705, 'Quảng Uyên', 'Huyện', 63),
(706, 'Thạch An', 'Huyện', 63),
(707, 'Thông Nông', 'Huyện', 63),
(708, 'Trà Lĩnh', 'Huyện', 63),
(709, 'Trùng Khánh', 'Huyện', 63);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `dh_id` int(10) UNSIGNED NOT NULL,
  `hd_ngaynhap` datetime NOT NULL,
  `dh_trangthai_thanhtoan` int(1) NOT NULL DEFAULT 0,
  `dh_noigiaohang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dh_ngaygiaohang` datetime NOT NULL,
  `kh_id` int(11) NOT NULL,
  `httt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gopy`
--

CREATE TABLE `gopy` (
  `gy_id` int(11) NOT NULL,
  `gy_ten` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gy_diachi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gy_dienthoai` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gy_email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gy_bietqua` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gy_cogiaodich` tinyint(4) NOT NULL DEFAULT 0,
  `gy_noidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gy_ngaygopy` datetime NOT NULL,
  `cd_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gopy_chude`
--

CREATE TABLE `gopy_chude` (
  `cd_id` int(11) NOT NULL,
  `cd_ten` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hinhthucthanhtoan`
--

CREATE TABLE `hinhthucthanhtoan` (
  `httt_id` int(11) NOT NULL,
  `httt_mota` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `kh_id` int(11) NOT NULL,
  `kh_gioitinh` tinyint(4) NOT NULL DEFAULT 0,
  `kh_diachi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kh_dienthoai` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kh_email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kh_ngaysinh` int(2) DEFAULT NULL,
  `kh_thangsinh` int(2) DEFAULT NULL,
  `kh_namsinh` int(4) NOT NULL,
  `kh_hoten` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kh_matkhau` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kh_district` int(10) UNSIGNED NOT NULL,
  `kh_province` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `km_id` int(11) NOT NULL,
  `km_ten` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `km_chitiet` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `km_mo` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `lsp_id` int(11) NOT NULL,
  `lsp_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lsp_mota` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nhasanxuat`
--

CREATE TABLE `nhasanxuat` (
  `nsx_id` int(10) NOT NULL,
  `nsx_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `id` int(10) UNSIGNED NOT NULL,
  `_name_province` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `_name_province`, `_code`) VALUES
(1, 'Hồ Chí Minh', 'SG'),
(2, 'Hà Nội', 'HN'),
(3, 'Đà Nẵng', 'DDN'),
(4, 'Bình Dương', 'BD'),
(5, 'Đồng Nai', 'DNA'),
(6, 'Khánh Hòa', 'KH'),
(7, 'Hải Phòng', 'HP'),
(8, 'Long An', 'LA'),
(9, 'Quảng Nam', 'QNA'),
(10, 'Bà Rịa Vũng Tàu', 'VT'),
(11, 'Đắk Lắk', 'DDL'),
(12, 'Cần Thơ', 'CT'),
(13, 'Bình Thuận  ', 'BTH'),
(14, 'Lâm Đồng', 'LDD'),
(15, 'Thừa Thiên Huế', 'TTH'),
(16, 'Kiên Giang', 'KG'),
(17, 'Bắc Ninh', 'BN'),
(18, 'Quảng Ninh', 'QNI'),
(19, 'Thanh Hóa', 'TH'),
(20, 'Nghệ An', 'NA'),
(21, 'Hải Dương', 'HD'),
(22, 'Gia Lai', 'GL'),
(23, 'Bình Phước', 'BP'),
(24, 'Hưng Yên', 'HY'),
(25, 'Bình Định', 'BDD'),
(26, 'Tiền Giang', 'TG'),
(27, 'Thái Bình', 'TB'),
(28, 'Bắc Giang', 'BG'),
(29, 'Hòa Bình', 'HB'),
(30, 'An Giang', 'AG'),
(31, 'Vĩnh Phúc', 'VP'),
(32, 'Tây Ninh', 'TNI'),
(33, 'Thái Nguyên', 'TN'),
(34, 'Lào Cai', 'LCA'),
(35, 'Nam Định', 'NDD'),
(36, 'Quảng Ngãi', 'QNG'),
(37, 'Bến Tre', 'BTR'),
(38, 'Đắk Nông', 'DNO'),
(39, 'Cà Mau', 'CM'),
(40, 'Vĩnh Long', 'VL'),
(41, 'Ninh Bình', 'NB'),
(42, 'Phú Thọ', 'PT'),
(43, 'Ninh Thuận', 'NT'),
(44, 'Phú Yên', 'PY'),
(45, 'Hà Nam', 'HNA'),
(46, 'Hà Tĩnh', 'HT'),
(47, 'Đồng Tháp', 'DDT'),
(48, 'Sóc Trăng', 'ST'),
(49, 'Kon Tum', 'KT'),
(50, 'Quảng Bình', 'QB'),
(51, 'Quảng Trị', 'QT'),
(52, 'Trà Vinh', 'TV'),
(53, 'Hậu Giang', 'HGI'),
(54, 'Sơn La', 'SL'),
(55, 'Bạc Liêu', 'BL'),
(56, 'Yên Bái', 'YB'),
(57, 'Tuyên Quang', 'TQ'),
(58, 'Điện Biên', 'DDB'),
(59, 'Lai Châu', 'LCH'),
(60, 'Lạng Sơn', 'LS'),
(61, 'Hà Giang', 'HG'),
(62, 'Bắc Kạn', 'BK'),
(63, 'Cao Bằng', 'CB');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `sp_id` int(10) UNSIGNED NOT NULL,
  `sp_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sp_gia` decimal(20,6) DEFAULT 0.000000,
  `sp_gia_cu` decimal(20,6) DEFAULT 0.000000,
  `sp_mota_ngan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sp_mota_chitiet` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sp_ngaycapnhat` datetime NOT NULL,
  `sp_soluong` int(11) DEFAULT 0,
  `lsp_id` int(11) NOT NULL DEFAULT 0,
  `nsx_id` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham_donhang`
--

CREATE TABLE `sanpham_donhang` (
  `sp_id` int(10) UNSIGNED NOT NULL,
  `dh_id` int(10) UNSIGNED NOT NULL,
  `spdh_soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham_hinh`
--

CREATE TABLE `sanpham_hinh` (
  `hsp_id` int(10) NOT NULL,
  `hsp_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hsp_mota` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sp_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham_khuyenmai`
--

CREATE TABLE `sanpham_khuyenmai` (
  `sp_id` int(11) UNSIGNED NOT NULL,
  `km_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `_province_id` (`_province_id`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`dh_id`),
  ADD KEY `kh_id` (`kh_id`),
  ADD KEY `httt_id` (`httt_id`);

--
-- Indexes for table `gopy`
--
ALTER TABLE `gopy`
  ADD PRIMARY KEY (`gy_id`),
  ADD KEY `cd_id` (`cd_id`);

--
-- Indexes for table `gopy_chude`
--
ALTER TABLE `gopy_chude`
  ADD PRIMARY KEY (`cd_id`);

--
-- Indexes for table `hinhthucthanhtoan`
--
ALTER TABLE `hinhthucthanhtoan`
  ADD PRIMARY KEY (`httt_id`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`kh_id`),
  ADD KEY `kh_province` (`kh_province`),
  ADD KEY `kh_district` (`kh_district`);

--
-- Indexes for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`km_id`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`lsp_id`);

--
-- Indexes for table `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  ADD PRIMARY KEY (`nsx_id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`sp_id`),
  ADD KEY `FK_sanpham_loaisanpham` (`lsp_id`),
  ADD KEY `FK_sanpham_nhasanxuat` (`nsx_id`);

--
-- Indexes for table `sanpham_donhang`
--
ALTER TABLE `sanpham_donhang`
  ADD PRIMARY KEY (`sp_id`,`dh_id`),
  ADD KEY `dh_id` (`dh_id`),
  ADD KEY `sp_id` (`sp_id`);

--
-- Indexes for table `sanpham_hinh`
--
ALTER TABLE `sanpham_hinh`
  ADD PRIMARY KEY (`hsp_id`),
  ADD KEY `sp_id` (`sp_id`);

--
-- Indexes for table `sanpham_khuyenmai`
--
ALTER TABLE `sanpham_khuyenmai`
  ADD PRIMARY KEY (`sp_id`,`km_id`),
  ADD KEY `km_id` (`km_id`),
  ADD KEY `sp_id` (`sp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=710;

--
-- AUTO_INCREMENT for table `gopy`
--
ALTER TABLE `gopy`
  MODIFY `gy_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gopy_chude`
--
ALTER TABLE `gopy_chude`
  MODIFY `cd_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hinhthucthanhtoan`
--
ALTER TABLE `hinhthucthanhtoan`
  MODIFY `httt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `kh_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `km_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `lsp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  MODIFY `nsx_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `sp_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sanpham_hinh`
--
ALTER TABLE `sanpham_hinh`
  MODIFY `hsp_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`kh_id`) REFERENCES `khachhang` (`kh_id`),
  ADD CONSTRAINT `donhang_ibfk_2` FOREIGN KEY (`httt_id`) REFERENCES `hinhthucthanhtoan` (`httt_id`);

--
-- Constraints for table `gopy`
--
ALTER TABLE `gopy`
  ADD CONSTRAINT `gopy_ibfk_1` FOREIGN KEY (`cd_id`) REFERENCES `gopy_chude` (`cd_id`);

--
-- Constraints for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD CONSTRAINT `khachhang_ibfk_1` FOREIGN KEY (`kh_province`) REFERENCES `province` (`id`),
  ADD CONSTRAINT `khachhang_ibfk_2` FOREIGN KEY (`kh_district`) REFERENCES `district` (`id`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `FK_sanpham_loaisanpham` FOREIGN KEY (`lsp_id`) REFERENCES `loaisanpham` (`lsp_id`),
  ADD CONSTRAINT `FK_sanpham_nhasanxuat` FOREIGN KEY (`nsx_id`) REFERENCES `nhasanxuat` (`nsx_id`);

--
-- Constraints for table `sanpham_donhang`
--
ALTER TABLE `sanpham_donhang`
  ADD CONSTRAINT `sanpham_donhang_ibfk_1` FOREIGN KEY (`sp_id`) REFERENCES `sanpham` (`sp_id`),
  ADD CONSTRAINT `sanpham_donhang_ibfk_2` FOREIGN KEY (`dh_id`) REFERENCES `donhang` (`dh_id`);

--
-- Constraints for table `sanpham_hinh`
--
ALTER TABLE `sanpham_hinh`
  ADD CONSTRAINT `sanpham_hinh_ibfk_1` FOREIGN KEY (`sp_id`) REFERENCES `sanpham` (`sp_id`);

--
-- Constraints for table `sanpham_khuyenmai`
--
ALTER TABLE `sanpham_khuyenmai`
  ADD CONSTRAINT `sanpham_khuyenmai_ibfk_1` FOREIGN KEY (`sp_id`) REFERENCES `sanpham` (`sp_id`),
  ADD CONSTRAINT `sanpham_khuyenmai_ibfk_2` FOREIGN KEY (`km_id`) REFERENCES `khuyenmai` (`km_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
