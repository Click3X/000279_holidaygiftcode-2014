-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 09, 2015 at 03:17 PM
-- Server version: 5.5.33
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `holidaycard-2014`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gift_code` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=700 ;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `gift_code`) VALUES
(1, '1JEN'),
(2, '1GTT'),
(3, 'CLTI'),
(4, 'STAT'),
(5, '0ATV'),
(6, '1VFP'),
(7, '0SQN'),
(8, '1UTM'),
(9, '1VPV'),
(10, 'APM9'),
(11, '0QP2'),
(12, 'CMVY'),
(13, '1QQ7'),
(14, '86KO'),
(15, '1UAX'),
(16, '1CHP'),
(17, '0NWQ'),
(18, '19L7'),
(19, 'O3ZP'),
(20, 'MQAD'),
(21, 'ABMK'),
(22, 'VQKH'),
(23, '0ODD'),
(24, 'BFOP'),
(25, '1ATY'),
(26, 'JL0P'),
(27, '1ART'),
(28, '1GPT'),
(29, '1XA4'),
(30, '78OY'),
(31, 'OXBT'),
(32, '13GR'),
(33, '1N7O'),
(34, '1EVA'),
(35, '03OZ'),
(36, 'LIA4'),
(37, '2Y1E'),
(38, 'VR0Z'),
(39, '0RK8'),
(40, '00N5'),
(41, '1YVO'),
(42, '0O21'),
(43, '1OS9'),
(44, 'UTSA'),
(45, 'SIOB'),
(46, 'ZZES'),
(47, '0P7K'),
(48, 'ECXC'),
(49, 'W7JW'),
(50, '0XBT'),
(51, '08GD'),
(52, '0PVW'),
(53, '2ZTI'),
(54, '2MZL'),
(55, '8KRO'),
(56, '0UK6'),
(57, '1J9J'),
(58, '15BU'),
(59, '7NVJ'),
(60, 'MGUC'),
(61, '0CS9'),
(62, 'NR6X'),
(63, '0AJK'),
(64, 'MBWX'),
(65, '09IM'),
(66, 'UTPD'),
(67, '1B24'),
(68, '0AA3'),
(69, 'SJWB'),
(70, '1EY5'),
(71, 'QIZC'),
(72, '167Z'),
(73, 'LID9'),
(74, '1X4E'),
(75, 'NJYD'),
(76, '53FP'),
(77, '16S2'),
(78, '1AAV'),
(79, '0CHR'),
(80, 'A8GX'),
(81, '0SD1'),
(82, '0KRV'),
(83, 'DZU7'),
(84, '0JK0'),
(85, 'JQA1'),
(86, '0GHE'),
(87, '0UHC'),
(88, '0HAE'),
(89, '1G9H'),
(90, 'E7XJ'),
(91, 'ZAXA'),
(92, '1XNX'),
(93, 'Z1O9'),
(94, '0FMZ'),
(95, 'NCXU'),
(96, 'UPYN'),
(97, '0GSX'),
(98, '0J6A'),
(99, 'WGW9'),
(100, '0ZFV'),
(101, '0VWZ'),
(102, '0N6S'),
(103, 'BLWB'),
(104, 'COJN'),
(105, '061G'),
(106, '1BHO'),
(107, 'E9DW'),
(108, 'LOLU'),
(109, '0QM9'),
(110, 'RTJY'),
(111, 'JM6X'),
(112, '09CT'),
(113, 'KQKB'),
(114, '1BNL'),
(115, 'LJY2'),
(116, '19QN'),
(117, 'NFKL'),
(118, '1PZA'),
(119, 'HPRH'),
(120, 'WNT4'),
(121, 'FY7D'),
(122, '9ZDH'),
(123, '3MBH'),
(124, '1INW'),
(125, 'SA20'),
(126, 'HOMB'),
(127, '0ZOG'),
(128, 'JIWT'),
(129, 'OYGL'),
(130, '1FEO'),
(131, '1CWD'),
(132, 'GTCF'),
(133, '1QNC'),
(134, 'REPH'),
(135, 'O7LL'),
(136, 'NJ7G'),
(137, '1QVP'),
(138, '1TVB'),
(139, '1QY5'),
(140, '1FRH'),
(141, 'OHSA'),
(142, 'ZU5L'),
(143, '1SP7'),
(144, '1CRU'),
(145, 'VDVK'),
(146, '0AF8'),
(147, 'K52V'),
(148, 'CEIS'),
(149, '0AT0'),
(150, 'YZ18'),
(151, '17WP'),
(152, '0SIE'),
(153, 'AJ3F'),
(154, '105A'),
(155, '0CZY'),
(156, 'JYFK'),
(157, 'GSAD'),
(158, '169E'),
(159, 'HBMU'),
(160, '8ANH'),
(161, '0PAZ'),
(162, '1FCG'),
(163, '0FZ7'),
(164, 'JC09'),
(165, '0QSD'),
(166, '9SMT'),
(167, '0XGE'),
(168, 'YVBP'),
(169, '09JH'),
(170, '0KRL'),
(171, '1CKX'),
(172, 'FKIT'),
(173, 'HI0T'),
(174, '184N'),
(175, '7YDY'),
(176, '0GVV'),
(177, 'OAPS'),
(178, 'MXCD'),
(179, 'UDLB'),
(180, '1IWJ'),
(181, '0INF'),
(182, '0IQQ'),
(183, '9R13'),
(184, '0VLC'),
(185, '0QEZ'),
(186, 'NWOJ'),
(187, '1MCM'),
(188, 'DAYY'),
(189, 'G3SF'),
(190, '1O55'),
(191, '1HBA'),
(192, 'JUHY'),
(193, '1TGW'),
(194, '15UW'),
(195, '2MMG'),
(196, '0QJ9'),
(197, '0IGG'),
(198, 'PGQ3'),
(199, '1INH'),
(200, '0GSH'),
(201, '1HWK'),
(202, 'NECM'),
(203, 'OVJE'),
(204, '02YS'),
(205, 'GVHX'),
(206, 'OU7Q'),
(207, '0G4X'),
(208, 'HBK2'),
(209, 'E9YL'),
(210, '0MV6'),
(211, '6OZF'),
(212, '1VVZ'),
(213, '1DWM'),
(214, 'UVJE'),
(215, '1RBC'),
(216, '1Q95'),
(217, '0XGD'),
(218, '0JAS'),
(219, '0Z0N'),
(220, '0ALG'),
(221, 'WKRZ'),
(222, '0QRH'),
(223, 'BZET'),
(224, '1OKC'),
(225, '1HT2'),
(226, 'HXKI'),
(227, 'DXCD'),
(228, '0ZD7'),
(229, 'VV76'),
(230, '0EGJ'),
(231, 'TDVG'),
(232, '0SUL'),
(233, 'BBFW'),
(234, 'QUKP'),
(235, '2M25'),
(236, '1QKJ'),
(237, 'AUSS'),
(238, 'ADAW'),
(239, '0NJJ'),
(240, 'FWXR'),
(241, 'SG44'),
(242, '0CEF'),
(243, '0ZDF'),
(244, '0PPH'),
(245, 'HSAD'),
(246, 'UM0D'),
(247, 'Z4HN'),
(248, '1SLJ'),
(249, '0DK3'),
(250, 'UQVA'),
(251, '1ZAQ'),
(252, '7OFV'),
(253, 'QDNH'),
(254, '1AWB'),
(255, '7DHC'),
(256, '0UBN'),
(257, 'XYYU'),
(258, '4J2R'),
(259, '1IKM'),
(260, 'RQP3'),
(261, '1TMF'),
(262, 'GUPI'),
(263, '1JTM'),
(264, '4P1F'),
(265, 'F3TO'),
(266, '0QGL'),
(267, 'JAGI'),
(268, 'TYP9'),
(269, 'NGIV'),
(270, 'HLJR'),
(271, '0OZJ'),
(272, 'H2VW'),
(273, 'AAKD'),
(274, '0CV8'),
(275, '0TFU'),
(276, '0OXD'),
(277, '3LLO'),
(278, 'WQB7'),
(279, '1YWL'),
(280, 'QF7I'),
(281, 'OSE6'),
(282, '05T3'),
(283, 'WD5X'),
(284, 'E53Q'),
(285, 'IXIQ'),
(286, '0BSF'),
(287, 'QJL1'),
(288, 'ZQT8'),
(289, '0JE2'),
(290, '18WA'),
(291, 'UPKC'),
(292, 'XL7L'),
(293, 'SODY'),
(294, '1EFD'),
(295, '08WA'),
(296, 'CHAF'),
(297, '0WBZ'),
(298, '0TKD'),
(299, 'XDLQ'),
(300, '1ONF');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `ref_client_id` tinyint(3) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `state` varchar(3) DEFAULT NULL,
  `size` varchar(11) DEFAULT NULL,
  `design` varchar(20) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `ref_client_id`, `name`, `state`, `size`, `design`, `status`, `address`, `city`, `zip`, `created_at`) VALUES
(29, 22, '', 'IL', 'med', 'click1', NULL, '33 W Monroe St', 'Chicago', '60603', '2015-03-04 22:52:39'),
(30, 23, '', 'IL', 'med', 'sxsw1', NULL, 'asdfasdfs', 'Chicago', '60603', '2015-03-04 22:57:34'),
(31, 24, '', 'NY', 'lrg', 'sxsw2', NULL, 'sdFASDFASDF', 'Brooklyn', '11201', '2015-03-04 22:58:14'),
(32, 25, '', 'NY', 'med', 'sxsw2', NULL, '20 Jay St., Suite 619', 'Brooklyn', '11201', '2015-03-04 23:01:51'),
(33, 26, '', 'NY', 'med', 'sxsw1', NULL, '1 Dag Hammarskjold Plaza, 35th Floor', 'New York', '10017', '2015-03-04 23:05:52'),
(34, 28, '', 'NY', 'xlr', 'sxsw1', NULL, '10th Floor, 175 Varick Street', 'New York', '10014', '2015-03-04 23:13:01'),
(35, 30, '', 'NY', 'med', 'sxsw1', NULL, '11 Penn Plaza, New York, NY 10001', 'New York', '10001', '2015-03-04 23:25:45'),
(36, 29, '', 'MA', 'med', 'sxsw1', NULL, '2 Seaport Lane', 'Boston', '2210', '2015-03-04 23:32:17'),
(37, 29, '', 'MA', 'med', 'sxsw1', NULL, '2 Seaport Lane', 'Boston', '2210', '2015-03-04 23:39:13'),
(38, 29, '', 'MA', 'med', 'sxsw2', NULL, '2 Seaport Lane', 'Boston', '2210', '2015-03-04 23:40:01'),
(39, 13, '', 'NY', 'med', 'click1', NULL, '235 E. 45th Street', 'New York', '10017', '2015-03-05 19:15:20'),
(40, 13, '', 'NY', 'med', 'sxsw2', NULL, '235 E. 45th Street', 'New York', '10017', '2015-03-05 19:17:14'),
(41, 13, '', 'NY', 'med', 'sxsw1', NULL, '235 E. 45th Street', 'New York', '10017', '2015-03-05 19:20:10'),
(42, 13, '', 'NY', 'med', 'sxsw1', NULL, '235 E. 45th Street', 'New York', '10017', '2015-03-05 19:53:40'),
(43, 13, '', 'MT', 'med', '', NULL, '235 E. 45th Street', 'New York', '10017', '2015-03-05 19:55:47'),
(44, 13, '', 'NY', 'med', 'sxsw2', NULL, '235 E. 45th Street', 'New York', '10017', '2015-03-05 21:57:36'),
(45, 13, 'wen', 'NY', 'med', 'sxsw2', NULL, '235 E. 45th Street', 'New York', '10017', '2015-03-06 17:29:28'),
(58, NULL, 'wen', 'DE', 'med', 'click1-black', NULL, 'jersey', 'jersey city', '123456', '2015-03-09 18:19:56'),
(59, 1, 'charlie', 'AL', 'med', 'click2-black', NULL, 'successful', 'aww', 'asdf', '2015-03-09 18:22:45'),
(60, 2, 'CHARLIE', 'NY', 'med', 'sxsw1-black', NULL, 'ASDFSASDF', 'ASDFASDF', 'ASDFASDF', '2015-03-09 18:55:06'),
(61, 3, 'Finally working', 'MD', 'med', 'click2-black', NULL, 'asdf', 'asdf', '12345', '2015-03-09 19:00:02'),
(62, 4, 'MATT', 'AL', 'med', 'sxsw1-white', NULL, 'ASDFASDF', 'ASDFASDF', 'ASDFASDF', '2015-03-09 19:05:08'),
(63, 5, 'JASON', 'AK', 'med', 'sxsw1-white', NULL, 'ASDF', 'ASDFASD', 'ASDFASDF', '2015-03-09 19:13:14');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `state_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'PK: Unique state ID',
  `state_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT 'State name with first letter capital',
  `state_abbr` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Optional state abbreviation (US is 2 capital letters)',
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=52 ;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`state_id`, `state_name`, `state_abbr`) VALUES
(1, 'Alabama', 'AL'),
(2, 'Alaska', 'AK'),
(3, 'Arizona', 'AZ'),
(4, 'Arkansas', 'AR'),
(5, 'California', 'CA'),
(6, 'Colorado', 'CO'),
(7, 'Connecticut', 'CT'),
(8, 'Delaware', 'DE'),
(9, 'District of Columbia', 'DC'),
(10, 'Florida', 'FL'),
(11, 'Georgia', 'GA'),
(12, 'Hawaii', 'HI'),
(13, 'Idaho', 'ID'),
(14, 'Illinois', 'IL'),
(15, 'Indiana', 'IN'),
(16, 'Iowa', 'IA'),
(17, 'Kansas', 'KS'),
(18, 'Kentucky', 'KY'),
(19, 'Louisiana', 'LA'),
(20, 'Maine', 'ME'),
(21, 'Maryland', 'MD'),
(22, 'Massachusetts', 'MA'),
(23, 'Michigan', 'MI'),
(24, 'Minnesota', 'MN'),
(25, 'Mississippi', 'MS'),
(26, 'Missouri', 'MO'),
(27, 'Montana', 'MT'),
(28, 'Nebraska', 'NE'),
(29, 'Nevada', 'NV'),
(30, 'New Hampshire', 'NH'),
(31, 'New Jersey', 'NJ'),
(32, 'New Mexico', 'NM'),
(33, 'New York', 'NY'),
(34, 'North Carolina', 'NC'),
(35, 'North Dakota', 'ND'),
(36, 'Ohio', 'OH'),
(37, 'Oklahoma', 'OK'),
(38, 'Oregon', 'OR'),
(39, 'Pennsylvania', 'PA'),
(40, 'Rhode Island', 'RI'),
(41, 'South Carolina', 'SC'),
(42, 'South Dakota', 'SD'),
(43, 'Tennessee', 'TN'),
(44, 'Texas', 'TX'),
(45, 'Utah', 'UT'),
(46, 'Vermont', 'VT'),
(47, 'Virginia', 'VA'),
(48, 'Washington', 'WA'),
(49, 'West Virginia', 'WV'),
(50, 'Wisconsin', 'WI'),
(51, 'Wyoming', 'WY');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
