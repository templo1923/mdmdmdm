-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2025 at 01:31 PM
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
-- Database: `downgrade`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `addon_id` int(11) NOT NULL,
  `addon_name` varchar(191) DEFAULT NULL,
  `addon_slug` varchar(191) DEFAULT NULL,
  `addon_image` varchar(191) DEFAULT NULL,
  `addon_version` varchar(10) DEFAULT NULL,
  `addon_dir` varchar(191) DEFAULT NULL,
  `addon_envato_id` varchar(50) DEFAULT NULL,
  `addon_url` text DEFAULT NULL,
  `addon_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `attr_id` int(11) NOT NULL,
  `attr_label` varchar(500) DEFAULT NULL,
  `attr_field_type` varchar(100) DEFAULT NULL,
  `attr_field_value` text DEFAULT NULL,
  `attr_field_order` int(100) NOT NULL,
  `attr_field_status` int(100) NOT NULL,
  `attr_drop_status` varchar(50) DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`attr_id`, `attr_label`, `attr_field_type`, `attr_field_value`, `attr_field_order`, `attr_field_status`, `attr_drop_status`) VALUES
(32, 'Package Includes', 'multi-select', 'CSS,HTML', 1, 1, 'no'),
(33, 'Compatible Browsers', 'multi-select', 'Opera,Safari,Chrome,Firefox,Internet Explorer', 2, 1, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `blog_cat_id` int(11) NOT NULL,
  `blog_category_name` varchar(500) NOT NULL,
  `blog_category_slug` varchar(500) NOT NULL,
  `blog_category_status` int(20) NOT NULL,
  `category_allow_seo` int(11) NOT NULL DEFAULT 0,
  `category_seo_keyword` text DEFAULT NULL,
  `category_seo_desc` text DEFAULT NULL,
  `drop_status` varchar(20) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`blog_cat_id`, `blog_category_name`, `blog_category_slug`, `blog_category_status`, `category_allow_seo`, `category_seo_keyword`, `category_seo_desc`, `drop_status`) VALUES
(11, 'Creative', 'Creative', 1, 0, NULL, NULL, 'no'),
(12, 'Featured', 'Featured', 1, 0, NULL, NULL, 'no'),
(13, 'Hobbies', 'Hobbies', 1, 0, NULL, NULL, 'no'),
(14, 'International', 'International', 1, 0, NULL, NULL, 'no'),
(15, 'Lifestyle', 'Lifestyle', 1, 0, NULL, NULL, 'no'),
(16, 'Travel', 'travel', 1, 1, 'travel, bike travel', 'travel information', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `category_name` varchar(200) NOT NULL,
  `category_slug` varchar(200) NOT NULL,
  `category_icon` varchar(50) DEFAULT NULL,
  `category_image` varchar(50) DEFAULT NULL,
  `category_allow_seo` int(11) NOT NULL DEFAULT 0,
  `category_meta_keywords` text DEFAULT NULL,
  `category_meta_desc` text DEFAULT NULL,
  `category_status` int(50) NOT NULL,
  `display_order` int(50) NOT NULL,
  `drop_status` varchar(50) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `category_name`, `category_slug`, `category_icon`, `category_image`, `category_allow_seo`, `category_meta_keywords`, `category_meta_desc`, `category_status`, `display_order`, `drop_status`) VALUES
(27, 'Scripts', 'scripts', '17252678049.png', '17252798092.jpg', 1, 'script, php script', 'PHP (Hypertext Processor) is a general-purpose scripting language and interpreter that is freely available and widely used for web development.', 1, 1, 'no'),
(28, 'Themes', 'themes', '17252682259.png', '17252682252.jpg', 0, '', '', 1, 2, 'no'),
(29, 'Plugins', 'plugins', '17252684289.png', '17252684282.jpg', 0, '', '', 1, 3, 'no'),
(30, 'Print', 'print', '17252686369.png', '17252796812.jpg', 0, '', '', 1, 4, 'no'),
(31, 'Graphics', 'graphics', '17252687719.png', '17252687712.jpg', 0, '', '', 1, 5, 'no'),
(32, 'Mobile Apps', 'mobile-apps', '17252689629.png', '17252689622.jpg', 0, '', '', 1, 6, 'no'),
(35, 'App Templates', 'app-templates', '17252691839.png', '17252691832.jpg', 0, '', '', 1, 7, 'no'),
(36, 'Audio', 'audio', '17252693209.png', '17252693202.jpg', 0, '', '', 1, 8, 'no'),
(37, 'Presentations', 'presentations', '17252695039.png', '17252695032.jpg', 0, '', '', 1, 9, 'no'),
(38, 'Logos', 'logos', '17252762999.png', '17252762992.jpg', 0, '', '', 1, 10, 'no'),
(39, '3D', '3d', '17252765849.png', '17252765842.jpg', 0, '', '', 1, 11, 'no'),
(40, 'Business Cards', 'business-cards', '17252769739.png', '17252769732.jpg', 0, '', '', 1, 12, 'no'),
(41, 'Brochures', 'brochures', '17252772899.png', '17252772892.jpg', 0, '', '', 1, 13, 'no'),
(42, 'Resumes', 'resumes', '17252774359.png', '17252774352.jpg', 0, '', '', 1, 14, 'no'),
(43, 'Magazine Covers', 'magazine-covers', '17252776159.png', '17252776152.jpg', 0, '', '', 1, 15, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `cid` int(11) NOT NULL,
  `from_name` varchar(200) NOT NULL,
  `from_email` varchar(200) NOT NULL,
  `message_text` text NOT NULL,
  `contact_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`cid`, `from_name`, `from_email`, `message_text`, `contact_date`) VALUES
(4, 'tester', 'tester@gnauk.com', 'tester', '2023-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(200) NOT NULL,
  `vat_price` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`, `vat_price`) VALUES
(5, 'Afghanistan', NULL),
(6, 'Albania', NULL),
(7, 'Algeria', NULL),
(8, 'American Samoa', NULL),
(9, 'Andorra', NULL),
(10, 'Angola', NULL),
(11, 'Anguilla', NULL),
(12, 'Antarctica', NULL),
(13, 'Antigua and Barbuda', NULL),
(14, 'Argentina', NULL),
(15, 'Armenia', NULL),
(16, 'Aruba', NULL),
(17, 'Australia', NULL),
(18, 'Austria', NULL),
(19, 'Azerbaijan', NULL),
(20, 'Bahamas', NULL),
(21, 'Bahrain', NULL),
(22, 'Bangladesh', NULL),
(23, 'Barbados', NULL),
(24, 'Belarus', NULL),
(25, 'Belgium', NULL),
(26, 'Belize', NULL),
(27, 'Benin', NULL),
(28, 'Bermuda', NULL),
(29, 'Bhutan', NULL),
(30, 'Bolivia', NULL),
(31, 'Bosnia and Herzegowina', NULL),
(32, 'Botswana', NULL),
(33, 'Bouvet Island', NULL),
(34, 'Brazil', NULL),
(35, 'British Indian Ocean Territory', NULL),
(36, 'Brunei Darussalam', NULL),
(37, 'Bulgaria', NULL),
(38, 'Burkina Faso', NULL),
(39, 'Burundi', NULL),
(40, 'Cambodia', NULL),
(41, 'Cameroon', NULL),
(42, 'Canada', NULL),
(43, 'Cape Verde', NULL),
(44, 'Cayman Islands', NULL),
(45, 'Central African Republic', NULL),
(46, 'Chad', NULL),
(47, 'Chile', NULL),
(48, 'China', NULL),
(49, 'Christmas Island', NULL),
(50, 'Cocos (Keeling) Islands', NULL),
(51, 'Colombia', NULL),
(52, 'Comoros', NULL),
(53, 'Congo', NULL),
(54, 'Congo, the Democratic Republic of the', NULL),
(55, 'Cook Islands', NULL),
(56, 'Costa Rica', NULL),
(57, 'Cote d \'Ivoire', NULL),
(58, 'Croatia (Hrvatska)', NULL),
(59, 'Cuba', NULL),
(60, 'Cyprus', NULL),
(61, 'Czech Republic', NULL),
(62, 'Denmark', NULL),
(63, 'Djibouti', NULL),
(64, 'Dominica', NULL),
(65, 'Dominican Republic', NULL),
(66, 'East Timor', NULL),
(67, 'Ecuador', NULL),
(68, 'Egypt', NULL),
(69, 'El Salvador', NULL),
(70, 'Equatorial Guinea', NULL),
(71, 'Eritrea', NULL),
(72, 'Estonia', NULL),
(73, 'Ethiopia', NULL),
(74, 'Falkland Islands (Malvinas)', NULL),
(75, 'Faroe Islands', NULL),
(76, 'Fiji', NULL),
(77, 'Finland', NULL),
(78, 'France', NULL),
(79, 'France Metropolitan', NULL),
(80, 'French Guiana', NULL),
(81, 'French Polynesia', NULL),
(82, 'French Southern Territories', NULL),
(83, 'Gabon', NULL),
(84, 'Gambia', NULL),
(85, 'Georgia', NULL),
(86, 'Germany', NULL),
(87, 'Ghana', NULL),
(88, 'Gibraltar', NULL),
(89, 'Greece', NULL),
(90, 'Greenland', NULL),
(91, 'Grenada', NULL),
(92, 'Guadeloupe', NULL),
(93, 'Guam', NULL),
(94, 'Guatemala', NULL),
(95, 'Guinea', NULL),
(96, 'Guinea-Bissau', NULL),
(97, 'Guyana', NULL),
(98, 'Haiti', NULL),
(99, 'Heard and Mc Donald Islands', NULL),
(100, 'Holy See (Vatican City State)', NULL),
(101, 'Honduras', NULL),
(102, 'Hong Kong', NULL),
(103, 'Hungary', NULL),
(104, 'Iceland', NULL),
(105, 'India', NULL),
(106, 'Indonesia', NULL),
(107, 'Iran (Islamic Republic of)', NULL),
(108, 'Iraq', NULL),
(109, 'Ireland', NULL),
(110, 'Israel', NULL),
(111, 'Italy', NULL),
(112, 'Jamaica', NULL),
(113, 'Japan', NULL),
(114, 'Jordan', NULL),
(115, 'Kazakhstan', NULL),
(116, 'Kenya', NULL),
(117, 'Kiribati', NULL),
(118, 'Korea, Democratic People\'s Republic of', NULL),
(119, 'Korea, Republic of', NULL),
(120, 'Kuwait', NULL),
(121, 'Kyrgyzstan', NULL),
(122, 'Lao, People\'s Democratic Republic', NULL),
(123, 'Latvia', NULL),
(124, 'Lebanon', NULL),
(125, 'Lesotho', NULL),
(126, 'Liberia', NULL),
(127, 'Libyan Arab Jamahiriya', NULL),
(128, 'Liechtenstein', NULL),
(129, 'Lithuania', NULL),
(130, 'Luxembourg', NULL),
(131, 'Macau', NULL),
(132, 'Macedonia, The Former Yugoslav Republic of', NULL),
(133, 'Madagascar', NULL),
(134, 'Malawi', NULL),
(135, 'Malaysia', NULL),
(136, 'Maldives', NULL),
(137, 'Mali', NULL),
(138, 'Malta', NULL),
(139, 'Marshall Islands', NULL),
(140, 'Martinique', NULL),
(141, 'Mauritania', NULL),
(142, 'Mauritius', NULL),
(143, 'Mayotte', NULL),
(144, 'Mexico', NULL),
(145, 'Micronesia, Federated States of', NULL),
(146, 'Moldova, Republic of', NULL),
(147, 'Monaco', NULL),
(148, 'Mongolia', NULL),
(149, 'Montserrat', NULL),
(150, 'Morocco', NULL),
(151, 'Mozambique', NULL),
(152, 'Myanmar', NULL),
(153, 'Namibia', NULL),
(154, 'Nauru', NULL),
(155, 'Nepal', NULL),
(156, 'Netherlands', NULL),
(157, 'Netherlands Antilles', NULL),
(158, 'New Caledonia', NULL),
(159, 'New Zealand', NULL),
(160, 'Nicaragua', NULL),
(161, 'Niger', NULL),
(162, 'Nigeria', NULL),
(163, 'Niue', NULL),
(164, 'Norfolk Island', NULL),
(165, 'Northern Mariana Islands', NULL),
(166, 'Norway', NULL),
(167, 'Oman', NULL),
(168, 'Pakistan', NULL),
(169, 'Palau', NULL),
(170, 'Panama', NULL),
(171, 'Papua New Guinea', NULL),
(172, 'Paraguay', NULL),
(173, 'Peru', NULL),
(174, 'Philippines', NULL),
(175, 'Pitcairn', NULL),
(176, 'Poland', NULL),
(177, 'Portugal', NULL),
(178, 'Puerto Rico', NULL),
(179, 'Qatar', NULL),
(180, 'Reunion', NULL),
(181, 'Romania', NULL),
(182, 'Russian Federation', NULL),
(183, 'Rwanda', NULL),
(184, 'Saint Kitts and Nevis', NULL),
(185, 'Saint Lucia', NULL),
(186, 'Saint Vincent and the Grenadines', NULL),
(187, 'Samoa', NULL),
(188, 'San Marino', NULL),
(189, 'Sao Tome and Principe', NULL),
(190, 'Saudi Arabia', NULL),
(191, 'Senegal', NULL),
(192, 'Seychelles', NULL),
(193, 'Sierra Leone', NULL),
(194, 'Singapore', NULL),
(195, 'Slovakia (Slovak Republic)', NULL),
(196, 'Slovenia', NULL),
(197, 'Solomon Islands', NULL),
(198, 'Somalia', NULL),
(199, 'South Africa', NULL),
(200, 'South Georgia and the South Sandwich Islands', NULL),
(201, 'Spain', NULL),
(202, 'Sri Lanka', NULL),
(203, 'St. Helena', NULL),
(204, 'St. Pierre and Miquelon', NULL),
(205, 'Sudan', NULL),
(206, 'Suriname', NULL),
(207, 'Svalbard and Jan Mayen Islands', NULL),
(208, 'Swaziland', NULL),
(209, 'Sweden', NULL),
(210, 'Switzerland', NULL),
(211, 'Syrian Arab Republic', NULL),
(212, 'Taiwan, Province of China', NULL),
(213, 'Tajikistan', NULL),
(214, 'Tanzania, United Republic of', NULL),
(215, 'Thailand', NULL),
(216, 'Togo', NULL),
(217, 'Tokelau', NULL),
(218, 'Tonga', NULL),
(219, 'Trinidad and Tobago', NULL),
(220, 'Tunisia', NULL),
(221, 'Turkey', NULL),
(222, 'Turkmenistan', NULL),
(223, 'Turks and Caicos Islands', NULL),
(224, 'Tuvalu', NULL),
(225, 'Uganda', NULL),
(226, 'Ukraine', NULL),
(227, 'United Arab Emirates', NULL),
(228, 'United Kingdom', NULL),
(229, 'United States of America', '50'),
(230, 'United States Minor Outlying Islands', NULL),
(231, 'Uruguay', NULL),
(232, 'Uzbekistan', NULL),
(233, 'Vanuatu', NULL),
(234, 'Venezuela', NULL),
(235, 'Vietnam', NULL),
(236, 'Virgin Islands (British)', NULL),
(237, 'Virgin Islands (U.S.)', NULL),
(238, 'Wallis and Futuna Islands', NULL),
(239, 'Western Sahara', NULL),
(240, 'Yemen', NULL),
(241, 'Yugoslavia', NULL),
(242, 'Zambia', NULL),
(243, 'Zimbabwe', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `coupon_id` int(11) NOT NULL,
  `user_id` int(100) NOT NULL,
  `coupon_type` varchar(191) NOT NULL DEFAULT 'product',
  `coupon_code` varchar(200) DEFAULT NULL,
  `discount_type` varchar(100) DEFAULT NULL,
  `coupon_value` float NOT NULL,
  `coupon_start_date` varchar(200) DEFAULT NULL,
  `coupon_end_date` varchar(200) DEFAULT NULL,
  `coupon_status` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`coupon_id`, `user_id`, `coupon_type`, `coupon_code`, `discount_type`, `coupon_value`, `coupon_start_date`, `coupon_end_date`, `coupon_status`) VALUES
(40, 1, 'product', 'OFFER', 'percentage', 10, '2025-09-15', '2026-03-31', 1),
(41, 1, 'subscription', 'BEST', 'percentage', 10, '2023-05-26', '2023-06-30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `custom_settings`
--

CREATE TABLE `custom_settings` (
  `sno` int(11) NOT NULL,
  `google_recaptcha_site_key` varchar(200) DEFAULT NULL,
  `google_recaptcha_secret_key` varchar(200) DEFAULT NULL,
  `mercadopago_mode` int(10) NOT NULL DEFAULT 0,
  `mercadopago_client_id` varchar(200) DEFAULT NULL,
  `mercadopago_client_secret` varchar(200) DEFAULT NULL,
  `aws_access_key_id` varchar(191) DEFAULT NULL,
  `aws_secret_access_key` varchar(191) DEFAULT NULL,
  `aws_default_region` varchar(191) DEFAULT NULL,
  `aws_bucket` varchar(191) DEFAULT NULL,
  `backup_types` varchar(191) DEFAULT 'database',
  `demo_mode` varchar(191) DEFAULT 'off',
  `coinbase_api_key` varchar(191) DEFAULT NULL,
  `coinbase_secret_key` varchar(191) DEFAULT NULL,
  `cashfree_api_key` varchar(191) DEFAULT NULL,
  `cashfree_api_secret` varchar(191) DEFAULT NULL,
  `cashfree_mode` int(11) NOT NULL DEFAULT 0,
  `nowpayments_mode` int(11) NOT NULL DEFAULT 0,
  `nowpayments_api_key` varchar(191) DEFAULT NULL,
  `nowpayments_ipn_secret` varchar(191) DEFAULT NULL,
  `per_sale_referral_commission_type` varchar(20) DEFAULT 'fixed',
  `signup_referral_commission_type` varchar(20) DEFAULT 'fixed',
  `affiliate_referral` int(11) NOT NULL DEFAULT 1,
  `shop_search_type` varchar(191) DEFAULT 'normal',
  `disable_view_source` int(11) NOT NULL DEFAULT 0,
  `verify_mode` int(11) NOT NULL DEFAULT 1,
  `default_vat_price` varchar(191) DEFAULT '0',
  `item_sold_display` int(11) NOT NULL DEFAULT 1,
  `members_count_display` int(11) NOT NULL DEFAULT 1,
  `product_sale_count` int(11) NOT NULL DEFAULT 1,
  `demo_url_preview` int(11) NOT NULL DEFAULT 1,
  `app_store_url` varchar(191) DEFAULT NULL,
  `google_play_url` varchar(191) DEFAULT NULL,
  `available_payment_methods` varchar(50) DEFAULT NULL,
  `author_key` int(11) NOT NULL DEFAULT 0,
  `upgrade_files` varchar(191) DEFAULT NULL,
  `theme_layout` varchar(50) DEFAULT 'container',
  `offline_payment_details` text DEFAULT NULL,
  `google_captcha_version` varchar(10) DEFAULT 'v3',
  `uddoktapay_api_key` varchar(191) DEFAULT NULL,
  `uddoktapay_api_url` varchar(191) DEFAULT NULL,
  `google2fa_option` int(11) NOT NULL DEFAULT 1,
  `product_name_limit` int(11) NOT NULL,
  `fapshi_mode` int(11) NOT NULL DEFAULT 0,
  `fapshi_api_user` varchar(191) DEFAULT NULL,
  `fapshi_api_key` varchar(191) DEFAULT NULL,
  `fapshi_payment_token` varchar(191) DEFAULT NULL,
  `fapshi_purchase_token` varchar(191) DEFAULT NULL,
  `user_license_7_4` int(11) NOT NULL DEFAULT 1,
  `product_license_price` int(11) NOT NULL DEFAULT 1,
  `author_url` varchar(191) NOT NULL DEFAULT 'https://codecanor.com',
  `author_consumer_key` varchar(191) NOT NULL DEFAULT 'ck_63618c733ca7359bde2a254d85adeb1bb6242e89',
  `author_consumer_secret` varchar(191) NOT NULL DEFAULT 'cs_7a2237ee830809c9a6c825a6ef5158971d39fb45'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `custom_settings`
--

INSERT INTO `custom_settings` (`sno`, `google_recaptcha_site_key`, `google_recaptcha_secret_key`, `mercadopago_mode`, `mercadopago_client_id`, `mercadopago_client_secret`, `aws_access_key_id`, `aws_secret_access_key`, `aws_default_region`, `aws_bucket`, `backup_types`, `demo_mode`, `coinbase_api_key`, `coinbase_secret_key`, `cashfree_api_key`, `cashfree_api_secret`, `cashfree_mode`, `nowpayments_mode`, `nowpayments_api_key`, `nowpayments_ipn_secret`, `per_sale_referral_commission_type`, `signup_referral_commission_type`, `affiliate_referral`, `shop_search_type`, `disable_view_source`, `verify_mode`, `default_vat_price`, `item_sold_display`, `members_count_display`, `product_sale_count`, `demo_url_preview`, `app_store_url`, `google_play_url`, `available_payment_methods`, `author_key`, `upgrade_files`, `theme_layout`, `offline_payment_details`, `google_captcha_version`, `uddoktapay_api_key`, `uddoktapay_api_url`, `google2fa_option`, `product_name_limit`, `fapshi_mode`, `fapshi_api_user`, `fapshi_api_key`, `fapshi_payment_token`, `fapshi_purchase_token`, `user_license_7_4`, `product_license_price`, `author_url`, `author_consumer_key`, `author_consumer_secret`) VALUES
(1, '6LdZaAclAAAAAPmRk3F9grUl6LeQiAzznmBZ91dl', '6LdZaAclAAAAAOgesG5XB9PzTSZG3CnuLPEYQzJt', 0, 'TEST-bd89ca30-986a-41b6-80a2-6b47a3df5f66', 'TEST-2868251246865916-050517-7c55f176e9c060137cf2717909a7f4e5-555090144', 'dsfdsafdsafsafsafdsfasfdsfdsa', 'dsfdsafdsafsafsafdsfasfdsfdsa', 'us-east-2', 'downgrade', 'database', 'off', 'fdsfsafsafsafsdafafdas', 'fdsafsafsafsafdsafdsafdsa', '1263983e81306c7fedc609b9e93621', 'bae35d38c057b5ffe03a7e7dcdc8af024ab87118', 0, 0, 'EWAFE7A-FHE4DWQ-KF4818K-F6HH61P', 'zFBgbYMq07Ada42/sM8xdyVxgcFTLz3b', 'percentage', 'fixed', 1, 'ajax', 1, 1, '10', 1, 1, 1, 1, 'https://apple.com', 'https://play.google.com', '172502222411.png', 0, '176078586368f375c702b6a.zip', 'boxed', 'Lorem ipsum', 'v2', '982d381360a69d419689740d9f2e26ce36fb7a50', 'https://sandbox.uddoktapay.com/api/checkout-v2', 1, 0, 0, '29f154bc-cf47-46ac-936f-b05748b61b8e', 'FAK_TEST_435db4e8092810985e54', '', '', 0, 1, 'https://codecanor.com', 'ck_63618c733ca7359bde2a254d85adeb1bb6242e89', 'cs_7a2237ee830809c9a6c825a6ef5158971d39fb45');

-- --------------------------------------------------------

--
-- Table structure for table `development_logo`
--

CREATE TABLE `development_logo` (
  `logo_id` int(11) NOT NULL,
  `logo_image` varchar(200) NOT NULL,
  `logo_order` int(50) NOT NULL DEFAULT 0,
  `logo_status` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `development_logo`
--

INSERT INTO `development_logo` (`logo_id`, `logo_image`, `logo_order`, `logo_status`) VALUES
(4, '1570022081.jpg', 1, 1),
(5, '1570022094.jpg', 2, 1),
(6, '1570022281.jpg', 3, 1),
(7, '1570022437.jpg', 4, 1),
(8, '1570022552.jpg', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE `email_template` (
  `et_id` int(10) UNSIGNED NOT NULL,
  `et_heading` text DEFAULT NULL,
  `et_subject` text DEFAULT NULL,
  `et_content` longtext DEFAULT NULL,
  `et_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `email_template`
--

INSERT INTO `email_template` (`et_id`, `et_heading`, `et_subject`, `et_content`, `et_status`) VALUES
(2, 'New Comment Received', 'New Comment Received', '&lt;p&gt;&lt;span style=&quot;color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-transform: capitalize; background-color: #ffffff;&quot;&gt;Sender Name :&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;&quot;&gt;{{from_name}}&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-transform: capitalize; background-color: #ffffff;&quot;&gt;Sender Email :&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;&quot;&gt;{{from_email}}&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-transform: capitalize; background-color: #ffffff;&quot;&gt;Product Url : &lt;/span&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;&quot;&gt;&lt;a href=&quot;{{product_url}}&quot;&gt;{{product_url}}&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-transform: capitalize; background-color: #ffffff;&quot;&gt;Comment :&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;&quot;&gt;{{comm_text}}&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1),
(3, 'Contact Us', 'Contact Us', '&lt;p&gt;&lt;span style=&quot;color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-transform: capitalize; background-color: #ffffff;&quot;&gt;Name :&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;&quot;&gt;{{from_name}}&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-transform: capitalize; background-color: #ffffff;&quot;&gt;Email :&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;&quot;&gt;{{from_email}}&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-transform: capitalize; background-color: #ffffff;&quot;&gt;Message :&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;&quot;&gt;{{message_text}}&lt;/span&gt;&lt;/p&gt;', 1),
(4, 'Forgot Password', 'Forgot Password', '&lt;p&gt;You are receiving this email because we received a password reset request for your account&lt;/p&gt;\r\n&lt;p&gt;&lt;a href=&quot;{{forgot_url}}&quot;&gt;Reset Password&lt;/a&gt;&lt;/p&gt;', 1),
(6, 'Newsletter Signup', 'Newsletter Signup', '&lt;p&gt;You are receiving this email newsletter subscription request&lt;/p&gt;\r\n&lt;p&gt;Please confirm to this link &lt;a href=&quot;{{activate_url}}&quot;&gt;{{activate_url}}&lt;/a&gt; to activate your email subscription.&lt;/p&gt;', 1),
(7, 'Product Rating & Reviews', 'Product Rating & Reviews', '&lt;p&gt;Name : {{from_name}}&lt;/p&gt;\r\n&lt;p&gt;Email : {{from_email}}&lt;/p&gt;\r\n&lt;p&gt;Rating : {{rating}} Stars&lt;/p&gt;\r\n&lt;p&gt;Rating Reason : {{rating_reason}}&lt;/p&gt;\r\n&lt;p&gt;Comment : {{rating_comment}}&lt;/p&gt;\r\n&lt;p&gt;Product Url : &lt;a href=&quot;{{product_url}}&quot;&gt;{{product_url}}&lt;/a&gt;&lt;/p&gt;', 1),
(8, 'Refund Request Received', 'Refund Request Received', '&lt;p&gt;Name : {{from_name}}&lt;/p&gt;\r\n&lt;p&gt;Email : {{from_email}}&lt;/p&gt;\r\n&lt;p&gt;Refund Reason : {{ref_refund_reason}}&lt;/p&gt;\r\n&lt;p&gt;Comment : {{ref_refund_comment}}&lt;/p&gt;\r\n&lt;p&gt;Product Url : &lt;a href=&quot;{{product_url}}&quot;&gt;{{product_url}}&lt;/a&gt;&lt;/p&gt;', 1),
(9, 'New Signup Email Verification', 'Verify Your Email Address', '&lt;p&gt;Your registered email-id is {{email}} , Please click on the below link to verify your email account&lt;/p&gt;\r\n&lt;p&gt;&lt;a href=&quot;{{register_url}}&quot;&gt;Verify Email&lt;/a&gt;&lt;/p&gt;', 1),
(10, 'Contact Support', 'Contact Support', '&lt;p&gt;Name : {{from_name}}&lt;/p&gt;\r\n&lt;p&gt;Email : {{from_email}}&lt;/p&gt;\r\n&lt;p&gt;Subject : {{support_subject}}&lt;/p&gt;\r\n&lt;p&gt;Message : {{support_msg}}&lt;/p&gt;\r\n&lt;p&gt;Product Url : &lt;a href=&quot;{{product_url}}&quot;&gt;{{product_url}}&lt;/a&gt;&lt;/p&gt;', 1),
(11, 'Payment Refund Declined', 'Payment Refund Declined', '&lt;p&gt;Your payment refund is declined. Please contact your administrator&lt;/p&gt;\r\n&lt;p&gt;your refund request amount is : {{price}} {{currency}}&lt;/p&gt;', 1),
(13, 'Payment Refund Accepted', 'Payment Refund Accepted', '&lt;p&gt;Your payment refund is accepted and amount will be credit on your account. Please check your earning balance on your account&lt;/p&gt;\r\n&lt;p&gt;your payment is : {{price}} {{currency}}&lt;/p&gt;', 1),
(15, 'Item Update Notifications', 'Item Update Notifications', '&lt;p&gt;We\'d like to let you know that an update to your item &lt;a href=&quot;{{product_url}}&quot;&gt;{{product_url}}&lt;/a&gt; is now available in your Purchased page.&lt;/p&gt;', 1),
(16, 'Newsletter Updates', 'Newsletter Updates', '&lt;p&gt;Newsletter updates received. Please visit our website&lt;/p&gt;\r\n&lt;p&gt;Subject : {{news_heading}}&lt;/p&gt;\r\n&lt;p&gt;Content : {{news_content}}&lt;/p&gt;', 1),
(17, 'Payment Withdrawal Request Accepted', 'Payment Withdrawal Request Accepted', '&lt;p&gt;Your payment withdrawal request is accepted and amount will be credit on your payment gateway or bank account&lt;/p&gt;\r\n&lt;p&gt;your payment is : {{wd_amount}} {{currency}}&lt;/p&gt;', 1),
(20, 'Subscription Upgrade', 'Subscription Upgrade', '&lt;p&gt;&lt;strong&gt;Thanks for your subscription&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-transform: capitalize; background-color: #ffffff;&quot;&gt;Pack Name : &lt;/span&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;&quot;&gt;{{user_subscr_type}}&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;&quot;&gt;&lt;span style=&quot;color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-transform: capitalize; background-color: #ffffff;&quot;&gt;Date :&amp;nbsp;&lt;/span&gt;{{subscr_date}}&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-transform: capitalize; background-color: #ffffff;&quot;&gt;Duration :&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;&quot;&gt;{{subscri_date}}&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-transform: capitalize; background-color: #ffffff;&quot;&gt;Price :&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;&quot;&gt;{{currency}} {{subscr_price}}&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1),
(21, 'Item Purchase Notifications', 'Item Purchase Notifications', '&lt;h3&gt;Thank you for your order&lt;/h3&gt;\r\n&lt;p&gt;&lt;strong&gt;Buyer Details&lt;/strong&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Name : {{from_name}}&lt;/p&gt;\r\n&lt;p&gt;Email : {{from_email}}&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Order Details&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Order ID : #{{purchased_token}}&lt;/p&gt;\r\n&lt;p&gt;Amount : {{currency}} {{final_amount}}&lt;/p&gt;\r\n&lt;p&gt;Download File : {{download_file}}&lt;/p&gt;', 1),
(23, 'Subscription Renewal Notifications', 'Subscription Renewal Notifications', '&lt;h3&gt;&lt;span style=&quot;color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; font-weight: 400; background-color: #ffffff;&quot;&gt;Your subscription has been expire on {{expired_date}}. Please click on this page &lt;a href=&quot;{{subscription_url}}&quot;&gt;{{subscription_url}}&lt;/a&gt; and renewal your subscription&lt;/span&gt;&amp;nbsp;&lt;/h3&gt;\r\n&lt;p&gt;&lt;strong&gt;Customer Details&lt;/strong&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Name : {{from_name}}&lt;/p&gt;\r\n&lt;p&gt;Email : {{from_email}}&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Subscription Details&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Expire On : {{expired_date}}&lt;/p&gt;\r\n&lt;p&gt;Pack Name : {{pack_name}}&lt;/p&gt;', 1),
(24, 'Item Report Notifications', 'Item Report Notifications', '&lt;p&gt;Name : {{from_name}}&lt;/p&gt;\r\n&lt;p&gt;Email : {{from_email}}&lt;/p&gt;\r\n&lt;p&gt;Product Name : {{product_name}}&lt;/p&gt;\r\n&lt;p&gt;Product Url : {{product_slug}}&lt;/p&gt;\r\n&lt;p&gt;Issue Type : {{report_issue_type}}&lt;/p&gt;\r\n&lt;p&gt;Subject : {{report_subject}}&lt;/p&gt;\r\n&lt;p&gt;Message : {{report_message}}&lt;/p&gt;', 1),
(25, 'Redeem Voucher Notifications', 'Redeem Voucher Notifications', '&lt;p&gt;Thank you for your redemption&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Redeem Details&lt;/strong&gt;&lt;strong&gt;&amp;nbsp;:-&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Voucher Code&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; :&amp;nbsp; {{voucher_code}}&lt;/p&gt;\r\n&lt;p&gt;Credits&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;:&amp;nbsp; {{credits}} {{currency}}&lt;/p&gt;', 1),
(26, 'New Ticket Received', 'New Ticket Received', '&lt;p&gt;&lt;strong&gt;Customer Details&lt;/strong&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Name : {{from_name}}&lt;/p&gt;\r\n&lt;p&gt;Email : {{from_email}}&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Ticket Details&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;background-color: rgba(0, 0, 0, 0.05); color: #212529; font-family: -apple-system, BlinkMacSystemFont, &#039;Segoe UI&#039;, Roboto, &#039;Helvetica Neue&#039;, Arial, sans-serif, &#039;Apple Color Emoji&#039;, &#039;Segoe UI Emoji&#039;, &#039;Segoe UI Symbol&#039;, &#039;Noto Color Emoji&#039;; font-size: 16px;&quot;&gt;Ticket ID&lt;/span&gt;&amp;nbsp;:&amp;nbsp;&lt;span style=&quot;background-color: rgba(0, 0, 0, 0.05); color: #212529; font-family: -apple-system, BlinkMacSystemFont, &#039;Segoe UI&#039;, Roboto, &#039;Helvetica Neue&#039;, Arial, sans-serif, &#039;Apple Color Emoji&#039;, &#039;Segoe UI Emoji&#039;, &#039;Segoe UI Symbol&#039;, &#039;Noto Color Emoji&#039;; font-size: 16px;&quot;&gt;{{ticket_token}}&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, &#039;Segoe UI&#039;, Roboto, &#039;Helvetica Neue&#039;, Arial, sans-serif, &#039;Apple Color Emoji&#039;, &#039;Segoe UI Emoji&#039;, &#039;Segoe UI Symbol&#039;, &#039;Noto Color Emoji&#039;; font-size: 16px;&quot;&gt;Subject&lt;/span&gt;&amp;nbsp;:&amp;nbsp;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, &#039;Segoe UI&#039;, Roboto, &#039;Helvetica Neue&#039;, Arial, sans-serif, &#039;Apple Color Emoji&#039;, &#039;Segoe UI Emoji&#039;, &#039;Segoe UI Symbol&#039;, &#039;Noto Color Emoji&#039;; font-size: 16px;&quot;&gt;{{ticket_subject}}&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;background-color: rgba(0, 0, 0, 0.05); color: #212529; font-family: -apple-system, BlinkMacSystemFont, &#039;Segoe UI&#039;, Roboto, &#039;Helvetica Neue&#039;, Arial, sans-serif, &#039;Apple Color Emoji&#039;, &#039;Segoe UI Emoji&#039;, &#039;Segoe UI Symbol&#039;, &#039;Noto Color Emoji&#039;; font-size: 16px;&quot;&gt;Priority&lt;/span&gt;&amp;nbsp;:&amp;nbsp;&lt;span style=&quot;background-color: rgba(0, 0, 0, 0.05); color: #212529; font-family: -apple-system, BlinkMacSystemFont, &#039;Segoe UI&#039;, Roboto, &#039;Helvetica Neue&#039;, Arial, sans-serif, &#039;Apple Color Emoji&#039;, &#039;Segoe UI Emoji&#039;, &#039;Segoe UI Symbol&#039;, &#039;Noto Color Emoji&#039;; font-size: 16px;&quot;&gt;{{ticket_priority}}&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, &#039;Segoe UI&#039;, Roboto, &#039;Helvetica Neue&#039;, Arial, sans-serif, &#039;Apple Color Emoji&#039;, &#039;Segoe UI Emoji&#039;, &#039;Segoe UI Symbol&#039;, &#039;Noto Color Emoji&#039;; font-size: 16px;&quot;&gt;Message&lt;/span&gt;&amp;nbsp;:&amp;nbsp;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, &#039;Segoe UI&#039;, Roboto, &#039;Helvetica Neue&#039;, Arial, sans-serif, &#039;Apple Color Emoji&#039;, &#039;Segoe UI Emoji&#039;, &#039;Segoe UI Symbol&#039;, &#039;Noto Color Emoji&#039;; font-size: 16px;&quot;&gt;{{ticket_message}}&lt;/span&gt;&lt;/p&gt;', 1),
(27, 'Ticket Replied By Customer', 'Ticket Replied By Customer', '&lt;p&gt;&lt;strong&gt;Customer Details&lt;/strong&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Name : {{from_name}}&lt;/p&gt;\r\n&lt;p&gt;Email : {{from_email}}&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Ticket Reply Details&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;background-color: rgba(0, 0, 0, 0.05); color: #212529; font-family: -apple-system, BlinkMacSystemFont, &#039;Segoe UI&#039;, Roboto, &#039;Helvetica Neue&#039;, Arial, sans-serif, &#039;Apple Color Emoji&#039;, &#039;Segoe UI Emoji&#039;, &#039;Segoe UI Symbol&#039;, &#039;Noto Color Emoji&#039;; font-size: 16px;&quot;&gt;Ticket ID&lt;/span&gt;&amp;nbsp;:&amp;nbsp;&lt;span style=&quot;background-color: rgba(0, 0, 0, 0.05); color: #212529; font-family: -apple-system, BlinkMacSystemFont, &#039;Segoe UI&#039;, Roboto, &#039;Helvetica Neue&#039;, Arial, sans-serif, &#039;Apple Color Emoji&#039;, &#039;Segoe UI Emoji&#039;, &#039;Segoe UI Symbol&#039;, &#039;Noto Color Emoji&#039;; font-size: 16px;&quot;&gt;{{tickets_token}}&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, &#039;Segoe UI&#039;, Roboto, &#039;Helvetica Neue&#039;, Arial, sans-serif, &#039;Apple Color Emoji&#039;, &#039;Segoe UI Emoji&#039;, &#039;Segoe UI Symbol&#039;, &#039;Noto Color Emoji&#039;; font-size: 16px;&quot;&gt;Reply Message&lt;/span&gt;&amp;nbsp;:&amp;nbsp;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, &#039;Segoe UI&#039;, Roboto, &#039;Helvetica Neue&#039;, Arial, sans-serif, &#039;Apple Color Emoji&#039;, &#039;Segoe UI Emoji&#039;, &#039;Segoe UI Symbol&#039;, &#039;Noto Color Emoji&#039;; font-size: 16px;&quot;&gt;{{tickets_message}}&lt;/span&gt;&lt;/p&gt;', 1),
(28, 'Ticket Replied By Admin', 'Ticket Replied By Admin', '&lt;p&gt;&lt;strong&gt;Customer Details&lt;/strong&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Name : {{from_name}}&lt;/p&gt;\r\n&lt;p&gt;Email : {{from_email}}&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Ticket Reply Details&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;background-color: rgba(0, 0, 0, 0.05); color: #212529; font-family: -apple-system, BlinkMacSystemFont, &#039;Segoe UI&#039;, Roboto, &#039;Helvetica Neue&#039;, Arial, sans-serif, &#039;Apple Color Emoji&#039;, &#039;Segoe UI Emoji&#039;, &#039;Segoe UI Symbol&#039;, &#039;Noto Color Emoji&#039;; font-size: 16px;&quot;&gt;Ticket ID&lt;/span&gt;&amp;nbsp;:&amp;nbsp;&lt;span style=&quot;background-color: rgba(0, 0, 0, 0.05); color: #212529; font-family: -apple-system, BlinkMacSystemFont, &#039;Segoe UI&#039;, Roboto, &#039;Helvetica Neue&#039;, Arial, sans-serif, &#039;Apple Color Emoji&#039;, &#039;Segoe UI Emoji&#039;, &#039;Segoe UI Symbol&#039;, &#039;Noto Color Emoji&#039;; font-size: 16px;&quot;&gt;{{tickets_token}}&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, &#039;Segoe UI&#039;, Roboto, &#039;Helvetica Neue&#039;, Arial, sans-serif, &#039;Apple Color Emoji&#039;, &#039;Segoe UI Emoji&#039;, &#039;Segoe UI Symbol&#039;, &#039;Noto Color Emoji&#039;; font-size: 16px;&quot;&gt;Reply Message&lt;/span&gt;&amp;nbsp;:&amp;nbsp;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, &#039;Segoe UI&#039;, Roboto, &#039;Helvetica Neue&#039;, Arial, sans-serif, &#039;Apple Color Emoji&#039;, &#039;Segoe UI Emoji&#039;, &#039;Segoe UI Symbol&#039;, &#039;Noto Color Emoji&#039;; font-size: 16px;&quot;&gt;{{tickets_message}}&lt;/span&gt;&lt;/p&gt;', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `news_id` int(11) NOT NULL,
  `news_email` varchar(200) NOT NULL,
  `news_token` varchar(200) NOT NULL,
  `news_status` int(50) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`news_id`, `news_email`, `news_token`, `news_status`) VALUES
(16, 'sara@gmail.com', '2wpHiJDMJCEnP0kjSpJgUOfXw', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `page_title` varchar(500) NOT NULL,
  `page_desc` mediumtext NOT NULL,
  `page_slug` varchar(200) NOT NULL,
  `page_allow_seo` int(11) NOT NULL DEFAULT 0,
  `page_seo_keyword` text DEFAULT NULL,
  `page_seo_desc` text DEFAULT NULL,
  `main_menu` int(50) NOT NULL DEFAULT 0,
  `footer_menu` int(50) NOT NULL DEFAULT 0,
  `menu_order` int(50) NOT NULL,
  `page_status` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `page_title`, `page_desc`, `page_slug`, `page_allow_seo`, `page_seo_keyword`, `page_seo_desc`, `main_menu`, `footer_menu`, `menu_order`, `page_status`) VALUES
(7, 'About Us', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;', 'about-us', 1, 'about us, about', 'About Us', 1, 1, 1, 1),
(11, 'Faq', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;', 'faq', 0, NULL, NULL, 0, 1, 2, 1),
(12, 'Terms and conditions', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;', 'terms-and-conditions', 0, NULL, NULL, 1, 1, 3, 1),
(13, 'Privacy Policy', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;', 'privacy-policy', 0, NULL, NULL, 1, 1, 4, 1),
(14, 'What does support include?', '&lt;p&gt;&lt;strong&gt;Regular License&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Extended License&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'what-does-support-include', 0, NULL, NULL, 0, 0, 0, 1),
(15, 'Refund Policy', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;', 'refund-policy', 0, NULL, NULL, 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('vendor@gmail.com', '$2y$10$DudwNnzFgSRTp4JUAezRYOlyI97mHDUNrtGj9Lci3yCXTLASy3EbG', '2019-06-24 05:24:16'),
('admin@admin.com', '$2y$10$S2yqTfG9UXHCWZbIWp/fmOSAB4/abqAbhPXedsr58jDNIftOsrxlK', '2019-06-24 05:49:05');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(1000) NOT NULL,
  `post_slug` varchar(200) NOT NULL,
  `blog_cat_id` int(100) NOT NULL,
  `post_short_desc` text NOT NULL,
  `post_image` varchar(200) NOT NULL,
  `post_desc` longtext NOT NULL,
  `post_date` date NOT NULL,
  `post_view` int(100) NOT NULL DEFAULT 0,
  `post_tags` text DEFAULT NULL,
  `post_allow_seo` int(11) NOT NULL DEFAULT 0,
  `post_seo_keyword` text DEFAULT NULL,
  `post_seo_desc` text DEFAULT NULL,
  `post_status` int(100) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_title`, `post_slug`, `blog_cat_id`, `post_short_desc`, `post_image`, `post_desc`, `post_date`, `post_view`, `post_tags`, `post_allow_seo`, `post_seo_keyword`, `post_seo_desc`, `post_status`) VALUES
(11, 'Ridiculus non et dis fermentum non', 'ridiculus-non-et-dis-fermentum-non', 15, 'Tortor ac litora phasellus a porta hac vestibulum fringilla taciti gravida adipiscing est litora sed massa per a ut vivamus libero vel. Ridiculus non et dis fermentum non libero per hac vestibulum senectus tortor leo nisl lobortis consectetur senectus habitant facilisi sodales vestibulum potenti nisl a. Ultricies et tortor', '1568442066.jpg', '&lt;p&gt;Tortor ac litora phasellus a porta hac vestibulum fringilla taciti gravida adipiscing est litora sed massa per a ut vivamus libero vel. Ridiculus non et dis fermentum non libero per hac vestibulum senectus tortor leo nisl lobortis consectetur senectus habitant facilisi sodales vestibulum potenti nisl a. Ultricies et tortor&lt;/p&gt;\r\n&lt;p&gt;Tortor ac litora phasellus a porta hac vestibulum fringilla taciti gravida adipiscing est litora sed massa per a ut vivamus libero vel. Ridiculus non et dis fermentum non libero per hac vestibulum senectus tortor leo nisl lobortis consectetur senectus habitant facilisi sodales vestibulum potenti nisl a. Ultricies et tortor&lt;/p&gt;\r\n&lt;p&gt;Tortor ac litora phasellus a porta hac vestibulum fringilla taciti gravida adipiscing est litora sed massa per a ut vivamus libero vel. Ridiculus non et dis fermentum non libero per hac vestibulum senectus tortor leo nisl lobortis consectetur senectus habitant facilisi sodales vestibulum potenti nisl a. Ultricies et tortor&lt;/p&gt;', '2025-05-26', 32, 'blog,lifestyle,style', 1, 'lifestyle, life style', 'LifeStyle', 1),
(12, 'Mus viverra sem a a magna consequat', 'mus-viverra-sem-a-a-magna-consequat', 16, 'Nam venenatis parturient convallis arcu lorem at eros cubilia nulla adipiscing urna sed vestibulum a suscipit. Mus viverra sem a a magna consequat ullamcorper a tristique etiam integer a dui parturient dapibus velit massa a nam feugiat donec.Nibh vestibulum facilisi morbi praesent facilisi vestibulum non facilisis potenti consectetur.', '1568442193.jpg', '&lt;p&gt;Nam venenatis parturient convallis arcu lorem at eros cubilia nulla adipiscing urna sed vestibulum a suscipit. Mus viverra sem a a magna consequat ullamcorper a tristique etiam integer a dui parturient dapibus velit massa a nam feugiat donec.Nibh vestibulum facilisi morbi praesent facilisi vestibulum non facilisis potenti consectetur.&lt;/p&gt;\r\n&lt;p&gt;Nam venenatis parturient convallis arcu lorem at eros cubilia nulla adipiscing urna sed vestibulum a suscipit. Mus viverra sem a a magna consequat ullamcorper a tristique etiam integer a dui parturient dapibus velit massa a nam feugiat donec.Nibh vestibulum facilisi morbi praesent facilisi vestibulum non facilisis potenti consectetur.&lt;/p&gt;\r\n&lt;p&gt;Nam venenatis parturient convallis arcu lorem at eros cubilia nulla adipiscing urna sed vestibulum a suscipit. Mus viverra sem a a magna consequat ullamcorper a tristique etiam integer a dui parturient dapibus velit massa a nam feugiat donec.Nibh vestibulum facilisi morbi praesent facilisi vestibulum non facilisis potenti consectetur.&lt;/p&gt;', '2024-08-31', 5, 'travel,lifestyle,blog', 0, NULL, NULL, 1),
(13, 'Parturient eleifend varius auctor', 'parturient-eleifend-varius-auctor', 13, 'Accumsan proin aliquet ridiculus sapien parturient eleifend varius auctor dignissim vivamus vivamus a metus nostra curae at et sociosqu leo parturient euismod suspendisse nunc penatibus magna. Adipiscing a condimentum vel proin nisl dignissim class congue malesuada suspendisse primis neque odio at parturient.', '1568442458.jpg', '&lt;p&gt;Accumsan proin aliquet ridiculus sapien parturient eleifend varius auctor dignissim vivamus vivamus a metus nostra curae at et sociosqu leo parturient euismod suspendisse nunc penatibus magna. Adipiscing a condimentum vel proin nisl dignissim class congue malesuada suspendisse primis neque odio at parturient.&lt;/p&gt;\r\n&lt;p&gt;Accumsan proin aliquet ridiculus sapien parturient eleifend varius auctor dignissim vivamus vivamus a metus nostra curae at et sociosqu leo parturient euismod suspendisse nunc penatibus magna. Adipiscing a condimentum vel proin nisl dignissim class congue malesuada suspendisse primis neque odio at parturient.&lt;/p&gt;\r\n&lt;p&gt;Accumsan proin aliquet ridiculus sapien parturient eleifend varius auctor dignissim vivamus vivamus a metus nostra curae at et sociosqu leo parturient euismod suspendisse nunc penatibus magna. Adipiscing a condimentum vel proin nisl dignissim class congue malesuada suspendisse primis neque odio at parturient.&lt;/p&gt;', '2024-08-31', 16, 'Hobbies,lifestyle,post,blog', 0, NULL, NULL, 1),
(14, 'Non vestibulum lacus sociosqu hac', 'non-vestibulum-lacus-sociosqu-hac', 11, 'Aptent ultrices vestibulum scelerisque dui suspendisse adipiscing vestibulum consectetur a class faucibus senectus iaculis hendrerit interdum justo commodo.A eget nunc natoque at dignissim a libero hendrerit a ut bibendum arcu ultrices a magna vitae leo vel id donec duis nulla nulla a adipiscing odio sodales.', '1568442655.jpg', '&lt;p&gt;Aptent ultrices vestibulum scelerisque dui suspendisse adipiscing vestibulum consectetur a class faucibus senectus iaculis hendrerit interdum justo commodo.A eget nunc natoque at dignissim a libero hendrerit a ut bibendum arcu ultrices a magna vitae leo vel id donec duis nulla nulla a adipiscing odio sodales.&lt;/p&gt;\r\n&lt;p&gt;Aptent ultrices vestibulum scelerisque dui suspendisse adipiscing vestibulum consectetur a class faucibus senectus iaculis hendrerit interdum justo commodo.A eget nunc natoque at dignissim a libero hendrerit a ut bibendum arcu ultrices a magna vitae leo vel id donec duis nulla nulla a adipiscing odio sodales.&lt;/p&gt;\r\n&lt;p&gt;Aptent ultrices vestibulum scelerisque dui suspendisse adipiscing vestibulum consectetur a class faucibus senectus iaculis hendrerit interdum justo commodo.A eget nunc natoque at dignissim a libero hendrerit a ut bibendum arcu ultrices a magna vitae leo vel id donec duis nulla nulla a adipiscing odio sodales.&lt;/p&gt;', '2024-08-31', 7, 'blog,post,creative', 0, NULL, NULL, 1),
(15, 'Suspendisse a penatibus a varius', 'suspendisse-a-penatibus-a-varius', 14, 'Susp endisse ullam corper a adipiscing class ullam corper inceptos nisl consequat eros congue ullamcorper suspendisse a penatibus a varius. Montes a platea viva mus ridiculus consequat parturient parturient pretium nascetur at cras porta parturient scelerisque ad mollis at in vivamus risus. Euismod maecenas.', '1568442786.jpg', '&lt;p&gt;Susp endisse ullam corper a adipiscing class ullam corper inceptos nisl consequat eros congue ullamcorper suspendisse a penatibus a varius. Montes a platea viva mus ridiculus consequat parturient parturient pretium nascetur at cras porta parturient scelerisque ad mollis at in vivamus risus. Euismod maecenas.&lt;/p&gt;\r\n&lt;p&gt;Susp endisse ullam corper a adipiscing class ullam corper inceptos nisl consequat eros congue ullamcorper suspendisse a penatibus a varius. Montes a platea viva mus ridiculus consequat parturient parturient pretium nascetur at cras porta parturient scelerisque ad mollis at in vivamus risus. Euismod maecenas.&lt;/p&gt;\r\n&lt;p&gt;Susp endisse ullam corper a adipiscing class ullam corper inceptos nisl consequat eros congue ullamcorper suspendisse a penatibus a varius. Montes a platea viva mus ridiculus consequat parturient parturient pretium nascetur at cras porta parturient scelerisque ad mollis at in vivamus risus. Euismod maecenas.&lt;/p&gt;', '2024-08-31', 9, 'blog,international,post', 0, NULL, NULL, 1),
(16, 'Nam venenatis parturient convallis', 'nam-venenatis-parturient-convallis', 12, 'Nam venenatis parturient convallis arcu lorem at eros cubilia nulla adipiscing urna sed vestibulum a suscipit. Mus viverra sem a a magna consequat ullamcorper a tristique etiam integer a dui parturient dapibus velit massa a nam feugiat donec.Nibh vestibulum facilisi morbi praesent facilisi vestibulum non facilisis potenti consectetur.', '1568442941.jpg', '&lt;p&gt;Nam venenatis parturient convallis arcu lorem at eros cubilia nulla adipiscing urna sed vestibulum a suscipit. Mus viverra sem a a magna consequat ullamcorper a tristique etiam integer a dui parturient dapibus velit massa a nam feugiat donec.Nibh vestibulum facilisi morbi praesent facilisi vestibulum non facilisis potenti consectetur.&lt;/p&gt;\r\n&lt;p&gt;Nam venenatis parturient convallis arcu lorem at eros cubilia nulla adipiscing urna sed vestibulum a suscipit. Mus viverra sem a a magna consequat ullamcorper a tristique etiam integer a dui parturient dapibus velit massa a nam feugiat donec.Nibh vestibulum facilisi morbi praesent facilisi vestibulum non facilisis potenti consectetur.&lt;/p&gt;\r\n&lt;p&gt;Nam venenatis parturient convallis arcu lorem at eros cubilia nulla adipiscing urna sed vestibulum a suscipit. Mus viverra sem a a magna consequat ullamcorper a tristique etiam integer a dui parturient dapibus velit massa a nam feugiat donec.Nibh vestibulum facilisi morbi praesent facilisi vestibulum non facilisis potenti consectetur.&lt;/p&gt;', '2024-08-31', 20, 'Travel,cretive,post', 0, NULL, NULL, 1),
(17, 'Vestibulum fringilla taciti gravida', 'vestibulum-fringilla-taciti-gravida', 16, 'Tortor ac litora phasellus a porta hac vestibulum fringilla taciti gravida adipiscing est litora sed massa per a ut vivamus libero vel. Ridiculus non et dis fermentum non libero per hac vestibulum senectus tortor leo nisl lobortis consectetur senectus habitant facilisi sodales vestibulum potenti nisl a. Ultricies et tortor', '1568443072.jpg', '&lt;p&gt;Tortor ac litora phasellus a porta hac vestibulum fringilla taciti gravida adipiscing est litora sed massa per a ut vivamus libero vel. Ridiculus non et dis fermentum non libero per hac vestibulum senectus tortor leo nisl lobortis consectetur senectus habitant facilisi sodales vestibulum potenti nisl a. Ultricies et tortor&lt;/p&gt;\r\n&lt;p&gt;Tortor ac litora phasellus a porta hac vestibulum fringilla taciti gravida adipiscing est litora sed massa per a ut vivamus libero vel. Ridiculus non et dis fermentum non libero per hac vestibulum senectus tortor leo nisl lobortis consectetur senectus habitant facilisi sodales vestibulum potenti nisl a. Ultricies et tortor&lt;/p&gt;\r\n&lt;p&gt;Tortor ac litora phasellus a porta hac vestibulum fringilla taciti gravida adipiscing est litora sed massa per a ut vivamus libero vel. Ridiculus non et dis fermentum non libero per hac vestibulum senectus tortor leo nisl lobortis consectetur senectus habitant facilisi sodales vestibulum potenti nisl a. Ultricies et tortor&lt;/p&gt;', '2024-08-31', 69, 'creative,international,travel,post', 0, NULL, NULL, 1),
(18, 'Pretium nascetur at cras porta', 'pretium-nascetur-at-cras-porta', 15, 'Susp endisse ullam corper a adipiscing class ullam corper inceptos nisl consequat eros congue ullamcorper suspendisse a penatibus a varius. Montes a platea viva mus ridiculus consequat parturient parturient pretium nascetur at cras porta parturient scelerisque ad mollis at in vivamus risus. Euismod maecenas.', '1568443277.jpg', '&lt;p&gt;Susp endisse ullam corper a adipiscing class ullam corper inceptos nisl consequat eros congue ullamcorper suspendisse a penatibus a varius. Montes a platea viva mus ridiculus consequat parturient parturient pretium nascetur at cras porta parturient scelerisque ad mollis at in vivamus risus. Euismod maecenas.&lt;/p&gt;\r\n&lt;p&gt;Susp endisse ullam corper a adipiscing class ullam corper inceptos nisl consequat eros congue ullamcorper suspendisse a penatibus a varius. Montes a platea viva mus ridiculus consequat parturient parturient pretium nascetur at cras porta parturient scelerisque ad mollis at in vivamus risus. Euismod maecenas.&lt;/p&gt;\r\n&lt;p&gt;Susp endisse ullam corper a adipiscing class ullam corper inceptos nisl consequat eros congue ullamcorper suspendisse a penatibus a varius. Montes a platea viva mus ridiculus consequat parturient parturient pretium nascetur at cras porta parturient scelerisque ad mollis at in vivamus risus. Euismod maecenas.&lt;/p&gt;', '2024-08-31', 89, 'lifestyle,blog,post', 0, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_comment`
--

CREATE TABLE `post_comment` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_date` date NOT NULL,
  `comment_status` int(50) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `post_comment`
--

INSERT INTO `post_comment` (`comment_id`, `post_id`, `user_id`, `comment_content`, `comment_date`, `comment_status`) VALUES
(4, 15, 7, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2020-08-28', 1),
(6, 17, 7, 'Very good post', '2025-04-02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `user_id` int(200) NOT NULL,
  `product_token` varchar(200) NOT NULL,
  `product_name` varchar(500) NOT NULL,
  `product_slug` varchar(500) NOT NULL,
  `product_category` varchar(200) NOT NULL,
  `product_category_parent` int(11) DEFAULT 0,
  `product_category_type` varchar(191) DEFAULT NULL,
  `product_type_cat_id` varchar(191) DEFAULT NULL,
  `product_short_desc` mediumtext NOT NULL,
  `product_desc` longtext NOT NULL,
  `regular_price` float NOT NULL,
  `extended_price` float DEFAULT NULL,
  `product_image` varchar(200) DEFAULT NULL,
  `product_preview` varchar(191) DEFAULT NULL,
  `product_video_url` varchar(500) DEFAULT NULL,
  `product_demo_url` varchar(500) DEFAULT NULL,
  `product_allow_seo` int(50) DEFAULT NULL,
  `product_seo_keyword` mediumtext DEFAULT NULL,
  `product_seo_desc` mediumtext DEFAULT NULL,
  `product_tags` varchar(500) DEFAULT NULL,
  `product_flash_sale` int(50) DEFAULT NULL,
  `product_free` int(50) DEFAULT NULL,
  `download_count` int(200) DEFAULT NULL,
  `product_views` int(100) NOT NULL DEFAULT 0,
  `product_liked` int(100) NOT NULL DEFAULT 0,
  `product_sold` int(100) DEFAULT NULL,
  `product_fake_stars` varchar(191) DEFAULT NULL,
  `product_featured` int(50) DEFAULT NULL,
  `product_file` varchar(200) DEFAULT NULL,
  `product_file_type` varchar(50) NOT NULL DEFAULT 'file',
  `product_file_link` mediumtext DEFAULT NULL,
  `package_includes` varchar(500) DEFAULT NULL,
  `compatible_browsers` varchar(500) DEFAULT NULL,
  `future_update` int(50) DEFAULT NULL,
  `item_support` int(50) DEFAULT NULL,
  `product_date` datetime NOT NULL,
  `product_update` datetime NOT NULL,
  `subscription_item` int(11) NOT NULL DEFAULT 0,
  `product_status` int(50) NOT NULL DEFAULT 0,
  `product_drop_status` varchar(50) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `user_id`, `product_token`, `product_name`, `product_slug`, `product_category`, `product_category_parent`, `product_category_type`, `product_type_cat_id`, `product_short_desc`, `product_desc`, `regular_price`, `extended_price`, `product_image`, `product_preview`, `product_video_url`, `product_demo_url`, `product_allow_seo`, `product_seo_keyword`, `product_seo_desc`, `product_tags`, `product_flash_sale`, `product_free`, `download_count`, `product_views`, `product_liked`, `product_sold`, `product_fake_stars`, `product_featured`, `product_file`, `product_file_type`, `product_file_link`, `package_includes`, `compatible_browsers`, `future_update`, `item_support`, `product_date`, `product_update`, `subscription_item`, `product_status`, `product_drop_status`) VALUES
(152, 1, 'kQ5DbXFk8eOykEYhvCjHADNLj', 'Labore et dolore magna', 'labore-et-dolore-magna', '29', 29, 'category', 'category_29', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 55, 78, 'tue-dec-13-2022-1133-am37839.jpg', 'tue-dec-13-2022-1133-am37839.jpg', 'https://www.youtube.com/watch?v=cXxAVn3rASk', 'https://upworks.monster/demo/hiredman', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 0, 0, 2, 229, 8, 15, '', 1, 'wed-sep-6-2023-1220-pm85193.zip', 'file', NULL, '', '10,8,7', 0, 0, '2019-09-26 10:11:04', '2024-01-18 12:39:48', 1, 1, 'no'),
(153, 1, '9k8VnbmpbLdoP7qFvP5cUm9KO', 'Dolore magna aliqua', 'dolore-magna-aliqua', '84', 31, 'subcategory', 'subcategory_84', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', 30, 70, 'tue-dec-13-2022-1132-am59980.jpg', 'tue-dec-13-2022-1132-am59980.jpg', 'https://www.youtube.com/watch?v=cXxAVn3rASk', 'https://upworks.monster/demo/zigkart', 0, '', '', 'laravel,script,web app', 0, 0, 3, 74, 2, 12, '', 0, '1569402533147.zip', 'file', NULL, '', '10,7', 1, 1, '2019-09-26 10:11:31', '2025-09-17 07:11:18', 1, 1, 'no'),
(154, 1, 'yqB5h8CYCRlALTAWPRxhtKbac', 'Incididunt ut labore', 'incididunt-ut-labore', '31', 31, 'category', 'category_31', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', 35, 0, 'tue-dec-13-2022-1131-am46209.jpg', 'tue-dec-13-2022-1131-am46209.jpg', '', '', 0, '', '', 'wordpress,wp themes,wordpress theme,themes', 0, 0, 1, 60, 1, 14, '', 1, '1569402697147.zip', 'file', NULL, '', '10,9,6', 0, 0, '2019-09-26 09:56:32', '2025-09-17 07:10:54', 0, 1, 'no'),
(155, 1, 'fdIgZfiZKARZaAXCJg84hNVBf', 'Consectetur adipiscing', 'consectetur-adipiscing', '30', 30, 'category', 'category_30', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', 20, 0, 'tue-dec-13-2022-1129-am73504.jpg', 'tue-dec-13-2022-1129-am73504.jpg', 'https://www.youtube.com/watch?v=cXxAVn3rASk', '', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'css theme,css template,css,sample design,new design', 0, 1, NULL, 148, 5, 3, '', 1, '1569402959147.zip', 'file', NULL, '', '9,8,7,6', 1, 0, '2019-09-26 09:56:25', '2025-09-17 07:10:32', 0, 1, 'no'),
(156, 1, 'Bi41VdRAKMuvR8F5sA5xHvv1a', 'Lorem ipsum dolor', 'lorem-ipsum-dolor', '52', 27, 'subcategory', 'subcategory_52', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', 75, 95, 'fri-jul-21-2023-231-pm79484.png', 'fri-jul-21-2023-231-pm79484.png', 'https://www.youtube.com/watch?v=cXxAVn3rASk', 'https://upworks.monster/demo/feberr', 0, '', '', 'custom js,javascript,js edition', 0, 1, NULL, 57, 4, 17, '452', 1, '1569403200147.zip', 'file', NULL, '', '9,8,6', 0, 1, '2019-09-26 10:12:13', '2025-09-17 07:09:46', 0, 1, 'no'),
(157, 1, 'si39CjKgJYSv3nrLvkUoJObkM', 'Sed do eiusmod tempor', 'sed-do-eiusmod-tempor', '88', 32, 'subcategory', 'subcategory_88', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', 60, 0, 'tue-dec-13-2022-1127-am24090.jpg', 'tue-dec-13-2022-1127-am24090.jpg', 'https://www.youtube.com/watch?v=cXxAVn3rASk', '', 0, '', '', 'bootstrap,css,theme,html', 0, 1, NULL, 39, 5, 4, '', 1, '1569403603147.zip', 'file', NULL, '', '10,8,7,6', 1, 0, '2019-09-26 09:56:11', '2025-09-17 07:10:08', 0, 1, 'no'),
(158, 1, 'AMqcrMlfKso08tHpxrYFdi5PV', 'Adipiscing elit consectetur', 'adipiscing-elit-consectetur', '32', 32, 'category', 'category_32', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 35, 135, 'tue-dec-13-2022-1125-am22992.jpg', 'tue-dec-13-2022-1125-am22992.jpg', '', '', 0, '', '', 'laravel,time tracking,script', 0, 0, NULL, 7, 2, 0, '', 1, '1569489756147.zip', 'file', NULL, '', '10,9,8,7', 1, 1, '2019-09-26 09:56:04', '2025-09-17 07:09:30', 0, 1, 'no'),
(159, 1, 'TZ9BhX9EaEKC4d3Guhr4WkHl9', 'Ut labore et dolore magna', 'ut-labore-et-dolore-magna', '81', 31, 'subcategory', 'subcategory_81', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', 80, 165, 'tue-dec-13-2022-1124-am62254.jpg', 'tue-dec-13-2022-1124-am62254.jpg', 'https://www.youtube.com/watch?v=cXxAVn3rASk', 'https://upworks.monster/demo/looker', 0, '', '', 'wp plugin,wordpress plugin,menu plugin', 0, 0, 4, 69, 1, 12, '', 1, '1569490599147.zip', 'file', NULL, '', '10,8,7', 1, 1, '2019-09-26 10:12:53', '2025-09-17 07:08:59', 1, 1, 'no'),
(160, 1, 'sDnVKtQMlrfsQ6HUIrEfPQNhr', 'Eiusmod tempor incididunt', 'eiusmod-tempor-incididunt', '60', 28, 'subcategory', 'subcategory_60', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', 35, 55, 'tue-dec-13-2022-1123-am45795.jpg', 'tue-dec-13-2022-1123-am45795.jpg', 'https://www.youtube.com/watch?v=cXxAVn3rASk', 'https://codecanor.com/buddykart', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '', 0, 0, NULL, 17, 4, 2, '', 1, '1569490845147.zip', 'file', NULL, '', '9,7,6', 1, 0, '2019-09-26 09:55:45', '2025-09-17 07:08:44', 1, 1, 'no'),
(161, 1, 'HkUZphbtZGjckUp2l35syHJ9f', 'Sectetur adipiscing elit', 'sectetur-adipiscing-elit', '28', 28, 'category', 'category_28', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 70, 299, 'tue-dec-13-2022-1122-am27225.jpg', 'tue-dec-13-2022-1122-am27225.jpg', 'https://www.youtube.com/watch?v=cXxAVn3rASk', 'https://upworks.monster/demo/upstock', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'hotel script,wp theme,wordpress', 0, 1, 21, 167, 0, 34, '', 1, 'mon-mar-10-2025-1141-am48838.zip', 'file', NULL, '', '10,8,7,6', 0, 1, '2019-09-26 13:59:29', '2025-09-17 07:08:29', 0, 1, 'no'),
(162, 1, 'SfMshw6UsNnZCqi2FsJCkP2Ql', 'Tempor incididunt ut labore', 'cididunt-ut-labore-et', '53', 27, 'subcategory', 'subcategory_53', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 3, 10, 'tue-dec-13-2022-1122-am95173.jpg', 'tue-dec-13-2022-1122-am95173.jpg', '', 'https://demo.demoworks.in/downgrade', 1, 'php script, script', 'php script files', '', 0, 0, 22, 279, 0, 49, '', 1, 'wed-oct-15-2025-1127-am83191.zip', 'file', 'https://mkakouris.sites.sch.gr/wp-content/uploads/2020/08/Php_Tutorials.pdf', '', '10,9,8', 1, 1, '2019-09-26 14:07:37', '2025-10-16 10:06:49', 1, 1, 'no'),
(196, 1, '6nFFAGomDwIm6TGemnQ17uHXp', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bono', 'contrary-to-popular-belief-lorem-ipsum-is-not-simply-random-text-it-has-roots-in-a-piece-of-classical-latin-literature-from-45-bc-making-it-over-2000-years-old-richard-mcclintock-a-latin-professor-at-hampdensydney-college-in-virginia-looked-up-one-of-the-more-obscure-latin-words-consectetur-from-a-lorem-ipsum-passage-and-going-through-the-cites-of-the-word-in-classical-literature-discovered-the-undoubtable-source-lorem-ipsum-comes-from-sections-11032-and-11033-of-de-finibus-bonorum-et-malorum-th', '53', 27, 'subcategory', 'subcategory_53', 'fdsafdsa', '<p>fdsafdsa</p>', 33, 0, 'sun-aug-24-2025-423-am57400.jpg', 'sun-aug-24-2025-423-am57400.jpg', '', '', 0, '', '', 'test', 1, 0, NULL, 16, 0, 0, '', 1, 'sun-aug-24-2025-423-am21875.zip', 'file', NULL, NULL, NULL, 0, 0, '2025-08-24 04:26:24', '2025-08-24 05:22:48', 0, 1, 'yes'),
(199, 1, 'wfblSyqSKWVGALn6TKQsDb4dd', 'Test Product', 'test-product', '60', 28, 'subcategory', 'subcategory_60', 'test', '<p>test</p>', 45, 199, 'fri-sep-12-2025-129-pm62529.jpg', 'fri-sep-12-2025-129-pm62529.jpg', '', '', 0, '', '', '', 0, 0, NULL, 0, 0, 0, '', 0, 'fri-sep-12-2025-129-pm61596.zip', 'file', NULL, NULL, NULL, 0, 0, '2025-09-12 14:08:52', '2025-09-12 14:08:52', 0, 1, 'yes'),
(200, 1, '5tX141RETLwbKOgQvoNjxoe1p', 'N1', 'n1', '66', 28, 'subcategory', 'subcategory_66', 'DFSA', '<p>DFSA</p>', 87, 0, 'fri-sep-12-2025-129-pm62529.jpg', 'fri-sep-12-2025-129-pm62529.jpg', '', '', 0, '', '', '', 0, 0, NULL, 0, 0, 0, '', 0, 'fri-sep-12-2025-129-pm61596.zip', 'file', NULL, NULL, NULL, 0, 0, '2025-09-12 14:19:24', '2025-09-12 14:19:24', 0, 1, 'yes'),
(201, 1, 'cXPXapDYTfibOTZ3g4ANeBLVk', 'New Test', 'new-test', '63', 28, 'subcategory', 'subcategory_63', 'test', '<p>test</p>', 12, 87, 'sat-sep-13-2025-622-am99378.jpg', 'sat-sep-13-2025-622-am99378.jpg', '', '', 0, '', '', '', 0, 0, NULL, 0, 0, 0, '', 0, 'sat-sep-13-2025-622-am40441.zip', 'file', '', NULL, NULL, 0, 0, '2025-09-13 06:23:29', '2025-09-13 06:23:29', 0, 1, 'yes'),
(202, 1, 'Vn6o9bxsjQYxFIOEIEGIsUKse', 'sanoke', 'sanoke', '66', 28, 'subcategory', 'subcategory_66', 'test', '<p>test</p>', 44, 0, 'sat-sep-13-2025-635-am62724.jpg', 'sat-sep-13-2025-635-am62724.jpg', '', '', 0, '', '', '', 0, 0, NULL, 3, 0, 2, '', 0, 'sat-sep-13-2025-635-am89447.zip', 'file', NULL, NULL, NULL, 0, 0, '2025-09-13 06:36:31', '2025-09-13 12:30:33', 0, 1, 'yes'),
(203, 1, '0LZv4eEumLh1y73xl8iamCfkK', 'TEST WORK', 'testwork', '66', 28, 'subcategory', 'subcategory_66', 'test', '<p>test</p>', 35, 56, 'thu-oct-9-2025-1125-am64102.jpg', 'thu-oct-9-2025-1125-am64102.jpg', '', '', 0, '', '', '', 0, 1, 9, 13, 0, 1, '', 0, 'fri-oct-10-2025-512-am28531.zip', 'file', NULL, NULL, NULL, 0, 0, '2025-10-09 11:26:05', '2025-10-10 06:08:58', 0, 1, 'yes'),
(204, 1, 'qKQV99Qt51FfJa3mX1QMaTwLh', 'SAMPLE PRODUCT', 'SAMPLE PRODUCT', '53', 27, 'subcategory', 'subcategory_53', 'TEST', '<p>FDS</p>', 49, 0, 'mon-oct-13-2025-138-pm47023.jpg', 'mon-oct-13-2025-138-pm47023.jpg', '', '', 0, '', '', '', 0, 0, 12, 9, 0, 1, '', 0, 'tue-oct-14-2025-1254-pm28999.zip', 'file', '', NULL, NULL, 0, 0, '2025-10-10 12:46:06', '2025-10-14 12:54:43', 0, 1, 'yes'),
(205, 1, 'qLq3GgFldXmSe2DFkVGLOvRjq', 'Food Item', 'food-item', '53', 27, 'subcategory', 'subcategory_53', 'Food Item', '<p>Food Item</p>', 53, 0, 'tue-oct-14-2025-611-am82461.jpg', 'tue-oct-14-2025-611-am82461.jpg', '', '', 0, '', '', '', 0, 0, NULL, 19, 0, 1, '', 1, 'tue-oct-14-2025-1252-pm65379.zip', 'file', '', NULL, NULL, 0, 1, '2025-10-14 06:12:43', '2025-10-14 12:52:09', 0, 1, 'yes'),
(206, 1, '8wluOVd2H38RRbxCGpwYaZIwX', 'TE', 'te', '66', 28, 'subcategory', 'subcategory_66', 'SDA', '<p>DFSA</p>', 33, 0, 'tue-oct-14-2025-106-pm62762.jpg', 'tue-oct-14-2025-106-pm62762.jpg', '', '', 0, '', '', '', 0, 1, NULL, 0, 0, 0, '', 1, 'wed-oct-15-2025-653-am57285.zip', 'file', '', NULL, NULL, 0, 0, '2025-10-14 13:08:31', '2025-10-15 06:53:27', 0, 1, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `product_attribute_id` int(11) NOT NULL,
  `product_token` varchar(200) DEFAULT NULL,
  `attribute_id` int(200) NOT NULL,
  `product_attribute_label` text DEFAULT NULL,
  `product_attribute_values` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`product_attribute_id`, `product_token`, `attribute_id`, `product_attribute_label`, `product_attribute_values`) VALUES
(6, 'tY1zHrl12AKTvS8w2O9thHrvW', 32, 'Package Includes', 'HTML'),
(7, 'tY1zHrl12AKTvS8w2O9thHrvW', 33, 'Compatible Browsers', 'Chrome'),
(14, '76Z9W6RkWvVg6uytJu9TXUN3P', 32, 'Package Includes', 'CSS,HTML'),
(15, '76Z9W6RkWvVg6uytJu9TXUN3P', 33, 'Compatible Browsers', 'Safari,Firefox'),
(73, 'a0aIh4pa1aaexDs42q794G8d5', 32, 'Package Includes', 'HTML'),
(74, 'a0aIh4pa1aaexDs42q794G8d5', 33, 'Compatible Browsers', 'Safari'),
(117, 'MAnn48BjQzAif2ljAMdGJC4GF', 32, 'Package Includes', 'HTML'),
(118, 'MAnn48BjQzAif2ljAMdGJC4GF', 33, 'Compatible Browsers', 'Safari'),
(135, 'rgoFn2ht8kRb1EtC9rE9BvaaA', 32, 'Package Includes', 'HTML'),
(136, 'rgoFn2ht8kRb1EtC9rE9BvaaA', 33, 'Compatible Browsers', 'Chrome'),
(157, 'DCnYy1dC3rabgZ1WoRdcu3HPq', 32, 'Package Includes', 'HTML'),
(158, 'DCnYy1dC3rabgZ1WoRdcu3HPq', 33, 'Compatible Browsers', 'Safari'),
(161, '4D9yoPYrKFg6HC3OAXtG4brLr', 32, 'Package Includes', 'HTML'),
(162, '4D9yoPYrKFg6HC3OAXtG4brLr', 33, 'Compatible Browsers', 'Chrome'),
(185, 'LQQoaXa9XhA9jpV9qtVppGbqg', 32, 'Package Includes', 'CSS'),
(186, 'LQQoaXa9XhA9jpV9qtVppGbqg', 33, 'Compatible Browsers', 'Opera'),
(191, 'V5SyjVKUnMygrYu6PRBcazTJP', 32, 'Package Includes', 'CSS'),
(192, 'V5SyjVKUnMygrYu6PRBcazTJP', 33, 'Compatible Browsers', 'Chrome'),
(199, 'xZZ1y2aIMfDovPa1F62G9RGsT', 32, 'Package Includes', 'HTML'),
(200, 'xZZ1y2aIMfDovPa1F62G9RGsT', 33, 'Compatible Browsers', 'Safari'),
(215, 'kQ5DbXFk8eOykEYhvCjHADNLj', 32, 'Package Includes', 'CSS,HTML'),
(216, 'kQ5DbXFk8eOykEYhvCjHADNLj', 33, 'Compatible Browsers', 'Opera,Safari,Chrome,Firefox'),
(225, 'T7OqhWWBJsYvoZOdd68quvdDF', 32, 'Package Includes', 'HTML'),
(226, 'T7OqhWWBJsYvoZOdd68quvdDF', 33, 'Compatible Browsers', 'Safari'),
(227, 'LdmPXJfON65M4PFsaQHfZCxNg', 32, 'Package Includes', 'HTML'),
(228, 'LdmPXJfON65M4PFsaQHfZCxNg', 33, 'Compatible Browsers', 'Chrome'),
(283, '6nFFAGomDwIm6TGemnQ17uHXp', 32, 'Package Includes', 'HTML'),
(284, '6nFFAGomDwIm6TGemnQ17uHXp', 33, 'Compatible Browsers', 'Chrome'),
(293, 'cXPXapDYTfibOTZ3g4ANeBLVk', 32, 'Package Includes', 'HTML'),
(294, 'cXPXapDYTfibOTZ3g4ANeBLVk', 33, 'Compatible Browsers', 'Chrome'),
(303, 'Vn6o9bxsjQYxFIOEIEGIsUKse', 32, 'Package Includes', 'HTML'),
(304, 'Vn6o9bxsjQYxFIOEIEGIsUKse', 33, 'Compatible Browsers', 'Chrome'),
(323, 'HkUZphbtZGjckUp2l35syHJ9f', 32, 'Package Includes', 'CSS,HTML'),
(324, 'HkUZphbtZGjckUp2l35syHJ9f', 33, 'Compatible Browsers', 'Safari,Chrome,Internet Explorer'),
(325, 'sDnVKtQMlrfsQ6HUIrEfPQNhr', 32, 'Package Includes', 'CSS,HTML'),
(326, 'sDnVKtQMlrfsQ6HUIrEfPQNhr', 33, 'Compatible Browsers', 'Safari,Firefox,Internet Explorer'),
(327, 'TZ9BhX9EaEKC4d3Guhr4WkHl9', 32, 'Package Includes', 'CSS,HTML'),
(328, 'TZ9BhX9EaEKC4d3Guhr4WkHl9', 33, 'Compatible Browsers', 'Safari,Chrome,Internet Explorer'),
(329, 'AMqcrMlfKso08tHpxrYFdi5PV', 32, 'Package Includes', 'CSS,HTML'),
(330, 'AMqcrMlfKso08tHpxrYFdi5PV', 33, 'Compatible Browsers', 'Opera,Chrome,Firefox'),
(331, 'Bi41VdRAKMuvR8F5sA5xHvv1a', 32, 'Package Includes', 'HTML'),
(332, 'Bi41VdRAKMuvR8F5sA5xHvv1a', 33, 'Compatible Browsers', 'Safari,Firefox'),
(333, 'si39CjKgJYSv3nrLvkUoJObkM', 32, 'Package Includes', 'CSS,HTML'),
(334, 'si39CjKgJYSv3nrLvkUoJObkM', 33, 'Compatible Browsers', 'Safari,Firefox'),
(335, 'fdIgZfiZKARZaAXCJg84hNVBf', 32, 'Package Includes', 'CSS'),
(336, 'fdIgZfiZKARZaAXCJg84hNVBf', 33, 'Compatible Browsers', 'Opera,Safari'),
(337, 'yqB5h8CYCRlALTAWPRxhtKbac', 33, 'Compatible Browsers', 'Opera,Firefox'),
(338, '9k8VnbmpbLdoP7qFvP5cUm9KO', 32, 'Package Includes', 'CSS'),
(345, '0LZv4eEumLh1y73xl8iamCfkK', 32, 'Package Includes', 'CSS'),
(346, '0LZv4eEumLh1y73xl8iamCfkK', 33, 'Compatible Browsers', 'Chrome'),
(383, 'qLq3GgFldXmSe2DFkVGLOvRjq', 32, 'Package Includes', 'HTML'),
(384, 'qLq3GgFldXmSe2DFkVGLOvRjq', 33, 'Compatible Browsers', 'Opera'),
(385, 'qKQV99Qt51FfJa3mX1QMaTwLh', 32, 'Package Includes', 'HTML'),
(386, 'qKQV99Qt51FfJa3mX1QMaTwLh', 33, 'Compatible Browsers', 'Chrome'),
(409, '8wluOVd2H38RRbxCGpwYaZIwX', 32, 'Package Includes', 'HTML'),
(410, '8wluOVd2H38RRbxCGpwYaZIwX', 33, 'Compatible Browsers', 'Safari'),
(415, 'SfMshw6UsNnZCqi2FsJCkP2Ql', 32, 'Package Includes', 'CSS,HTML'),
(416, 'SfMshw6UsNnZCqi2FsJCkP2Ql', 33, 'Compatible Browsers', 'Safari,Firefox,Internet Explorer');

-- --------------------------------------------------------

--
-- Table structure for table `product_checkout`
--

CREATE TABLE `product_checkout` (
  `chout_id` int(11) NOT NULL,
  `purchase_token` varchar(500) NOT NULL,
  `purchase_code` varchar(191) DEFAULT NULL,
  `order_ids` varchar(200) DEFAULT NULL,
  `product_prices` varchar(200) DEFAULT NULL,
  `product_user_id` varchar(200) DEFAULT NULL,
  `user_id` int(200) NOT NULL,
  `total` float NOT NULL,
  `subtotal` float NOT NULL,
  `processing_fee` float NOT NULL,
  `vat_price` varchar(191) DEFAULT NULL,
  `payment_type` varchar(100) DEFAULT NULL,
  `payment_token` varchar(300) DEFAULT NULL,
  `payment_date` date NOT NULL,
  `order_firstname` varchar(200) DEFAULT NULL,
  `order_lastname` varchar(200) DEFAULT NULL,
  `order_company` varchar(200) DEFAULT NULL,
  `order_email` varchar(200) DEFAULT NULL,
  `order_country` varchar(200) DEFAULT NULL,
  `order_address` text DEFAULT NULL,
  `order_city` varchar(200) DEFAULT NULL,
  `order_zipcode` varchar(200) DEFAULT NULL,
  `order_notes` text DEFAULT NULL,
  `payment_status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_comments`
--

CREATE TABLE `product_comments` (
  `comm_id` int(11) NOT NULL,
  `comm_user_id` int(200) NOT NULL,
  `comm_product_user_id` int(200) NOT NULL,
  `comm_product_id` int(200) NOT NULL,
  `comm_text` text NOT NULL,
  `comm_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_comment_reply`
--

CREATE TABLE `product_comment_reply` (
  `comm_reply_id` int(11) NOT NULL,
  `comm_user_id` int(200) NOT NULL,
  `comm_product_user_id` int(200) NOT NULL,
  `comm_product_id` int(200) NOT NULL,
  `comm_id` int(200) NOT NULL,
  `comm_text` text NOT NULL,
  `comm_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_compatible_browsers`
--

CREATE TABLE `product_compatible_browsers` (
  `browser_id` int(11) NOT NULL,
  `browser_name` varchar(200) NOT NULL,
  `browser_drop_status` varchar(50) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product_compatible_browsers`
--

INSERT INTO `product_compatible_browsers` (`browser_id`, `browser_name`, `browser_drop_status`) VALUES
(6, 'Internet Explorer', 'no'),
(7, 'Firefox', 'no'),
(8, 'Chrome', 'no'),
(9, 'Safari', 'no'),
(10, 'Opera', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `product_data`
--

CREATE TABLE `product_data` (
  `prd_id` int(100) NOT NULL,
  `original_file_name` varchar(500) DEFAULT NULL,
  `product_file_name` varchar(500) DEFAULT NULL,
  `session_id` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product_data`
--

INSERT INTO `product_data` (`prd_id`, `original_file_name`, `product_file_name`, `session_id`) VALUES
(1, 'mario_PNG125.png', 'tue-jan-25-2022-1136-am29761.png', 'Z2PFFRZ9OhF5D6TiFIjq3LXjadNhD4YqpJfqW8DV'),
(2, 'mario_PNG125.png', 'tue-jan-25-2022-1136-am15465.png', 'Z2PFFRZ9OhF5D6TiFIjq3LXjadNhD4YqpJfqW8DV'),
(90, 'pexels-kelvin-diri-326816017-13798023.jpg', 'fri-aug-15-2025-1141-am58229.jpg', 'WwX2BsHZ45wxhSi5PSbX36rqkRHOczGJz3W9ixKz'),
(102, 'test.zip', 'tue-oct-7-2025-146-pm24678.zip', 'HbZnEoifUC7nL24hvy1rUuUV4nraJvkM0tUCWP6c'),
(103, 'test.zip', 'tue-oct-7-2025-148-pm16120.zip', 'HbZnEoifUC7nL24hvy1rUuUV4nraJvkM0tUCWP6c'),
(104, 'test.zip', 'wed-oct-8-2025-137-pm75283.zip', 'Vta8Z0tjaQqShr9fpgmtqOm3GCpBCeCEb5oKv9xV'),
(107, 'premium_photo-1693227521269-d90b70e3ee06.zip', 'thu-oct-9-2025-205-pm77485.zip', 'pNcdTSlKhkUdB3XkiGrvtmc7IJg1Byn2x6hM8A1b'),
(111, 'test.zip', 'fri-oct-10-2025-119-pm49340.zip', 'ZfRqXDJTY8uEkNBalCFfvfqlrh3PuNp93Hk1TG8D'),
(157, 'premium_photo-1693227521269-d90b70e3ee06.jpg', 'wed-oct-15-2025-700-am91222.jpg', '1t25kwQuo5wdn3k01NvDHsCzVxhPWIGBKh0LtGcd'),
(158, 'premium_photo-1693227521269-d90b70e3ee06.zip', 'wed-oct-15-2025-700-am31366.zip', '1t25kwQuo5wdn3k01NvDHsCzVxhPWIGBKh0LtGcd');

-- --------------------------------------------------------

--
-- Table structure for table `product_favorite`
--

CREATE TABLE `product_favorite` (
  `fav_id` int(11) NOT NULL,
  `product_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product_favorite`
--

INSERT INTO `product_favorite` (`fav_id`, `product_id`, `user_id`) VALUES
(28, 11, 7),
(30, 3, 7),
(31, 153, 7),
(32, 157, 7),
(33, 158, 7),
(34, 159, 7);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `prod_gal_id` int(11) NOT NULL,
  `product_token` varchar(200) DEFAULT NULL,
  `product_gallery_image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`prod_gal_id`, `product_token`, `product_gallery_image`) VALUES
(27, 'TZ9BhX9EaEKC4d3Guhr4WkHl9', '3530O-112542-5XQ.png'),
(36, 'HkUZphbtZGjckUp2l35syHJ9f', 'qdGEP-111245-YLD.jpg'),
(39, 'Uv0B1rSpj6uFZxM6y3ge6gLi4', 'VqTfU-060502-3ND.jpg'),
(40, 'Uv0B1rSpj6uFZxM6y3ge6gLi4', 'z06sR-060554-XrD.jpg'),
(44, '94Jm0rmaLYEEswIg5aPZFffUl', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_order`
--

CREATE TABLE `product_order` (
  `ord_id` int(11) NOT NULL,
  `user_id` int(100) NOT NULL,
  `session_id` varchar(500) DEFAULT NULL,
  `product_id` int(100) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_user_id` int(100) NOT NULL,
  `product_token` varchar(200) NOT NULL,
  `purchase_token` varchar(200) DEFAULT NULL,
  `purchase_code` varchar(191) DEFAULT NULL,
  `payment_token` varchar(200) DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL,
  `license` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `coupon_key` varchar(191) DEFAULT NULL,
  `coupon_id` varchar(191) DEFAULT NULL,
  `coupon_code` varchar(191) DEFAULT NULL,
  `coupon_type` varchar(191) DEFAULT NULL,
  `coupon_value` varchar(191) DEFAULT NULL,
  `discount_price` double(8,2) NOT NULL,
  `product_price` float NOT NULL,
  `admin_amount` float NOT NULL DEFAULT 0,
  `total_price` float NOT NULL,
  `extra_service_ids` varchar(255) DEFAULT NULL,
  `extra_service_fees` varchar(255) DEFAULT NULL,
  `order_status` varchar(100) NOT NULL,
  `drop_status` varchar(100) DEFAULT NULL,
  `approval_status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_package_includes`
--

CREATE TABLE `product_package_includes` (
  `package_id` int(11) NOT NULL,
  `package_name` varchar(200) DEFAULT NULL,
  `package_drop_status` varchar(50) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product_package_includes`
--

INSERT INTO `product_package_includes` (`package_id`, `package_name`, `package_drop_status`) VALUES
(1, 'HTML', 'no'),
(2, 'CSS', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `product_ratings`
--

CREATE TABLE `product_ratings` (
  `rating_id` int(11) NOT NULL,
  `or_product_id` int(200) NOT NULL,
  `order_id` int(50) NOT NULL,
  `or_product_token` varchar(200) NOT NULL,
  `or_username` varchar(191) DEFAULT NULL,
  `or_user_id` int(200) NOT NULL,
  `or_product_user_id` int(200) NOT NULL,
  `rating` int(100) NOT NULL,
  `rating_reason` varchar(200) NOT NULL,
  `rating_comment` text NOT NULL,
  `rating_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product_ratings`
--

INSERT INTO `product_ratings` (`rating_id`, `or_product_id`, `order_id`, `or_product_token`, `or_username`, `or_user_id`, `or_product_user_id`, `rating`, `rating_reason`, `rating_comment`, `rating_date`) VALUES
(16, 161, 187, 'HkUZphbtZGjckUp2l35syHJ9f', NULL, 7, 1, 2, 'support', 'great', '2025-08-24 11:07:18'),
(17, 161, 0, 'HkUZphbtZGjckUp2l35syHJ9f', 'sample', 0, 1, 4, 'design', 'Best', '2025-08-25 04:09:06');

-- --------------------------------------------------------

--
-- Table structure for table `product_refund`
--

CREATE TABLE `product_refund` (
  `refund_id` int(11) NOT NULL,
  `ref_product_id` int(200) NOT NULL,
  `ref_order_id` int(200) NOT NULL,
  `ref_purchased_token` varchar(200) NOT NULL,
  `ref_product_token` varchar(200) NOT NULL,
  `ref_user_id` int(200) NOT NULL,
  `ref_product_user_id` int(200) NOT NULL,
  `ref_refund_reason` varchar(500) NOT NULL,
  `ref_refund_comment` text NOT NULL,
  `ref_refund_approval` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_report`
--

CREATE TABLE `product_report` (
  `report_id` int(11) NOT NULL,
  `report_product_token` varchar(200) DEFAULT NULL,
  `report_fullname` varchar(100) DEFAULT NULL,
  `report_email` varchar(100) DEFAULT NULL,
  `report_issue_type` varchar(100) DEFAULT NULL,
  `report_subject` varchar(500) DEFAULT NULL,
  `report_message` text DEFAULT NULL,
  `report_times` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_report`
--

INSERT INTO `product_report` (`report_id`, `report_product_token`, `report_fullname`, `report_email`, `report_issue_type`, `report_subject`, `report_message`, `report_times`) VALUES
(7, 'TZ9BhX9EaEKC4d3Guhr4WkHl9', 'customer', 'customer@gmail.com', 'Item or File Problem', 'File missing', 'please update it', '2025-08-25 04:55 am');

-- --------------------------------------------------------

--
-- Table structure for table `product_withdrawal`
--

CREATE TABLE `product_withdrawal` (
  `wd_id` int(11) NOT NULL,
  `wd_user_id` int(200) NOT NULL,
  `wd_date` date NOT NULL,
  `withdraw_type` varchar(100) NOT NULL,
  `paypal_email` varchar(200) NOT NULL,
  `stripe_email` varchar(200) NOT NULL,
  `paystack_email` varchar(200) DEFAULT NULL,
  `payfast_email` varchar(191) DEFAULT NULL,
  `skrill_email` varchar(191) DEFAULT NULL,
  `upi_id` varchar(191) DEFAULT NULL,
  `paytm_no` varchar(191) DEFAULT NULL,
  `bank_details` text DEFAULT NULL,
  `mobile_money` varchar(191) DEFAULT NULL,
  `paytm_number` varchar(191) DEFAULT NULL,
  `crypto_address` varchar(191) DEFAULT NULL,
  `wd_amount` float NOT NULL,
  `wd_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product_withdrawal`
--

INSERT INTO `product_withdrawal` (`wd_id`, `wd_user_id`, `wd_date`, `withdraw_type`, `paypal_email`, `stripe_email`, `paystack_email`, `payfast_email`, `skrill_email`, `upi_id`, `paytm_no`, `bank_details`, `mobile_money`, `paytm_number`, `crypto_address`, `wd_amount`, `wd_status`) VALUES
(19, 7, '2025-06-26', 'crypto', '', '', '', '', '', '', '', '', NULL, NULL, '16LYtg2WRjiJxxtrdM2MeBdLRRmV9BooHf', 90, 'paid'),
(20, 7, '2025-10-08', 'fapshi', '', '', '', '', '', '', '', '', 'Mobile money number : 670000000\r\nFull name : Peter Mark\r\nNetwork type (Orange or Mtn) : Mtn', NULL, '', 50, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `pwa_settings`
--

CREATE TABLE `pwa_settings` (
  `sno` int(11) NOT NULL,
  `app_name` varchar(100) DEFAULT NULL,
  `short_name` varchar(100) DEFAULT NULL,
  `background_color` varchar(50) DEFAULT NULL,
  `theme_color` varchar(50) DEFAULT NULL,
  `pwa_icon1` varchar(50) DEFAULT NULL,
  `pwa_icon2` varchar(50) DEFAULT NULL,
  `pwa_icon3` varchar(50) DEFAULT NULL,
  `pwa_icon4` varchar(50) DEFAULT NULL,
  `pwa_icon5` varchar(50) DEFAULT NULL,
  `pwa_icon6` varchar(50) DEFAULT NULL,
  `pwa_icon7` varchar(50) DEFAULT NULL,
  `pwa_icon8` varchar(50) DEFAULT NULL,
  `pwa_splash1` varchar(50) DEFAULT NULL,
  `pwa_splash2` varchar(50) DEFAULT NULL,
  `pwa_splash3` varchar(50) DEFAULT NULL,
  `pwa_splash4` varchar(50) DEFAULT NULL,
  `pwa_splash5` varchar(50) DEFAULT NULL,
  `pwa_splash6` varchar(50) DEFAULT NULL,
  `pwa_splash7` varchar(50) DEFAULT NULL,
  `pwa_splash8` varchar(50) DEFAULT NULL,
  `pwa_splash9` varchar(50) DEFAULT NULL,
  `pwa_splash10` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pwa_settings`
--

INSERT INTO `pwa_settings` (`sno`, `app_name`, `short_name`, `background_color`, `theme_color`, `pwa_icon1`, `pwa_icon2`, `pwa_icon3`, `pwa_icon4`, `pwa_icon5`, `pwa_icon6`, `pwa_icon7`, `pwa_icon8`, `pwa_splash1`, `pwa_splash2`, `pwa_splash3`, `pwa_splash4`, `pwa_splash5`, `pwa_splash6`, `pwa_splash7`, `pwa_splash8`, `pwa_splash9`, `pwa_splash10`) VALUES
(1, 'Downgrade Marketplace', 'Selling Items', '#213E66', '#4AD295', '16940953121.png', '16940953122.png', '16940953123.png', '16940953124.png', '16940953125.png', '16940953126.png', '16940953127.png', '16940953128.png', '16940953129.png', '169409531210.png', '169409531211.png', '169409531212.png', '169409531213.png', '169409531214.png', '169409531215.png', '169409531216.png', '169409531217.png', '169409531218.png');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `sid` int(11) NOT NULL,
  `site_title` varchar(500) NOT NULL,
  `site_home_title` varchar(191) NOT NULL,
  `site_desc` mediumtext NOT NULL,
  `site_keywords` mediumtext NOT NULL,
  `site_favicon` varchar(100) NOT NULL,
  `site_logo` varchar(100) NOT NULL,
  `site_banner` varchar(200) DEFAULT NULL,
  `site_banner_heading` varchar(500) DEFAULT NULL,
  `site_banner_sub_heading` varchar(500) NOT NULL,
  `site_copyright` varchar(500) DEFAULT NULL,
  `office_address` text NOT NULL,
  `office_email` varchar(500) NOT NULL,
  `office_phone` varchar(500) NOT NULL,
  `site_currency_code` varchar(50) DEFAULT NULL,
  `site_currency_symbol` varchar(50) DEFAULT NULL,
  `sender_name` varchar(200) NOT NULL,
  `sender_email` varchar(200) NOT NULL,
  `site_max_image_size` int(100) NOT NULL,
  `site_max_zip_size` int(200) NOT NULL DEFAULT 0,
  `payment_option` varchar(1000) NOT NULL,
  `withdraw_option` varchar(1000) NOT NULL,
  `paypal_email` varchar(200) NOT NULL,
  `paypal_mode` varchar(100) NOT NULL,
  `stripe_type` varchar(191) NOT NULL DEFAULT 'charges',
  `stripe_mode` varchar(50) NOT NULL,
  `test_publish_key` varchar(200) NOT NULL,
  `test_secret_key` varchar(200) NOT NULL,
  `live_publish_key` varchar(200) NOT NULL,
  `live_secret_key` varchar(200) NOT NULL,
  `site_minimum_withdrawal` int(50) NOT NULL,
  `facebook_url` varchar(200) NOT NULL,
  `twitter_url` varchar(200) NOT NULL,
  `gplus_url` varchar(200) NOT NULL,
  `pinterest_url` varchar(200) NOT NULL,
  `instagram_url` varchar(200) NOT NULL,
  `site_footer_payment` varchar(500) DEFAULT NULL,
  `site_subscribe_text` text DEFAULT NULL,
  `site_development_display` int(50) NOT NULL DEFAULT 0,
  `site_blog_display` int(50) NOT NULL DEFAULT 0,
  `site_theme_color` varchar(50) DEFAULT NULL,
  `site_button_color` varchar(50) DEFAULT NULL,
  `site_button_hover` varchar(50) DEFAULT NULL,
  `site_footer_color` varchar(50) DEFAULT NULL,
  `site_header_color` varchar(50) DEFAULT NULL,
  `site_loader_image` varchar(200) DEFAULT NULL,
  `site_loader_display` int(50) NOT NULL DEFAULT 0,
  `product_per_page` int(50) NOT NULL DEFAULT 0,
  `post_per_page` int(50) NOT NULL DEFAULT 0,
  `comment_per_page` int(50) NOT NULL DEFAULT 0,
  `review_per_page` int(200) NOT NULL DEFAULT 0,
  `site_flash_end_date` date NOT NULL,
  `home_featured_items` int(50) NOT NULL DEFAULT 0,
  `home_flash_items` int(50) NOT NULL DEFAULT 0,
  `home_popular_items` int(50) NOT NULL DEFAULT 0,
  `home_new_items` int(50) NOT NULL DEFAULT 0,
  `home_blog_post` int(50) NOT NULL DEFAULT 0,
  `product_support_link` varchar(200) DEFAULT NULL,
  `site_range_min_price` int(100) NOT NULL,
  `site_range_max_price` int(100) NOT NULL,
  `menu_display_categories` int(50) NOT NULL DEFAULT 0,
  `menu_categories_order` varchar(50) NOT NULL DEFAULT 'asc',
  `footer_menu_display_categories` int(50) NOT NULL,
  `footer_menu_categories_order` varchar(50) NOT NULL DEFAULT 'asc',
  `site_extra_fee` float NOT NULL DEFAULT 0,
  `mail_driver` varchar(200) DEFAULT NULL,
  `mail_host` varchar(200) DEFAULT NULL,
  `mail_port` varchar(200) DEFAULT NULL,
  `mail_username` varchar(200) DEFAULT NULL,
  `mail_password` varchar(200) DEFAULT NULL,
  `mail_encryption` varchar(200) DEFAULT NULL,
  `facebook_client_id` varchar(200) DEFAULT NULL,
  `facebook_client_secret` varchar(200) DEFAULT NULL,
  `facebook_callback_url` varchar(200) DEFAULT NULL,
  `google_client_id` varchar(200) DEFAULT NULL,
  `google_client_secret` varchar(200) DEFAULT NULL,
  `google_callback_url` varchar(200) DEFAULT NULL,
  `display_social_login` int(20) NOT NULL DEFAULT 0,
  `home_free_items` int(100) NOT NULL,
  `cookie_popup` int(50) NOT NULL,
  `cookie_popup_text` text DEFAULT NULL,
  `cookie_popup_button` varchar(200) DEFAULT NULL,
  `site_google_translate` int(50) NOT NULL,
  `site_header_top_bar` int(50) NOT NULL,
  `paystack_public_key` varchar(200) DEFAULT NULL,
  `paystack_secret_key` varchar(200) DEFAULT NULL,
  `paystack_merchant_email` varchar(200) DEFAULT NULL,
  `razorpay_key` varchar(200) DEFAULT NULL,
  `razorpay_secret` varchar(200) DEFAULT NULL,
  `watermark_option` int(50) DEFAULT NULL,
  `site_watermark` varchar(200) DEFAULT NULL,
  `top_ads_pages` text DEFAULT NULL,
  `sidebar_ads_pages` text DEFAULT NULL,
  `bottom_ads_pages` text DEFAULT NULL,
  `top_ads` text DEFAULT NULL,
  `sidebar_ads` text DEFAULT NULL,
  `bottom_ads` text DEFAULT NULL,
  `google_ads` int(50) NOT NULL,
  `coingate_mode` int(50) NOT NULL,
  `coingate_auth_token` varchar(500) DEFAULT NULL,
  `site_refund_display` int(50) NOT NULL,
  `site_withdrawal_display` int(11) NOT NULL,
  `google_analytics` varchar(200) DEFAULT NULL,
  `site_s3_storage` int(50) NOT NULL,
  `wasabi_access_key_id` varchar(200) DEFAULT NULL,
  `wasabi_secret_access_key` varchar(200) DEFAULT NULL,
  `wasabi_default_region` varchar(50) DEFAULT NULL,
  `wasabi_bucket` varchar(50) DEFAULT NULL,
  `dropbox_api` varchar(191) DEFAULT NULL,
  `dropbox_token` varchar(191) DEFAULT NULL,
  `google_drive_client_id` varchar(191) DEFAULT NULL,
  `google_drive_client_secret` varchar(191) DEFAULT NULL,
  `google_drive_refresh_token` varchar(191) DEFAULT NULL,
  `google_drive_folder_id` varchar(191) DEFAULT NULL,
  `email_verification` int(11) NOT NULL,
  `site_newsletter_display` int(11) NOT NULL,
  `coinpayments_merchant_id` varchar(191) DEFAULT NULL,
  `site_tawk_chat` varchar(191) DEFAULT NULL,
  `payhere_mode` int(11) NOT NULL DEFAULT 0,
  `payhere_merchant_id` varchar(191) DEFAULT NULL,
  `payfast_merchant_id` varchar(191) DEFAULT NULL,
  `payfast_merchant_key` varchar(191) DEFAULT NULL,
  `payfast_mode` int(11) NOT NULL DEFAULT 0,
  `flutterwave_public_key` varchar(191) DEFAULT NULL,
  `flutterwave_secret_key` varchar(191) DEFAULT NULL,
  `subscription_mode` int(11) NOT NULL DEFAULT 1,
  `reminder_renewal_before_days` int(11) NOT NULL,
  `redeem_voucher_terms` text DEFAULT NULL,
  `site_referral_commission` varchar(50) NOT NULL,
  `per_sale_referral_commission` varchar(50) NOT NULL,
  `site_google_recaptcha` int(11) NOT NULL DEFAULT 1,
  `maintenance_mode` int(11) NOT NULL DEFAULT 0,
  `m_mode_title` varchar(191) DEFAULT NULL,
  `m_mode_content` text DEFAULT NULL,
  `m_mode_social_label` varchar(191) DEFAULT NULL,
  `m_mode_background` varchar(50) DEFAULT 'color',
  `m_mode_bgcolor` varchar(50) DEFAULT '#4AD295',
  `m_mode_bgimage` varchar(50) DEFAULT NULL,
  `site_flash_sale_discount` varchar(20) DEFAULT '50',
  `product_updates_tabs` int(11) NOT NULL DEFAULT 1,
  `product_reporting_url` varchar(191) DEFAULT NULL,
  `local_bank_details` text DEFAULT NULL,
  `item_sold_count` varchar(50) DEFAULT NULL,
  `members_count` varchar(50) DEFAULT NULL,
  `watermark_repeat` int(11) NOT NULL DEFAULT 1,
  `watermark_position` varchar(50) DEFAULT 'bottom-right',
  `home_subscriber_items` int(11) NOT NULL DEFAULT 4,
  `site_other_banner` varchar(50) NOT NULL,
  `home_categories_icon` varchar(20) NOT NULL,
  `flutterwave_default_currency` varchar(20) DEFAULT 'NGN',
  `paystack_default_currency` varchar(20) DEFAULT 'NGN'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`sid`, `site_title`, `site_home_title`, `site_desc`, `site_keywords`, `site_favicon`, `site_logo`, `site_banner`, `site_banner_heading`, `site_banner_sub_heading`, `site_copyright`, `office_address`, `office_email`, `office_phone`, `site_currency_code`, `site_currency_symbol`, `sender_name`, `sender_email`, `site_max_image_size`, `site_max_zip_size`, `payment_option`, `withdraw_option`, `paypal_email`, `paypal_mode`, `stripe_type`, `stripe_mode`, `test_publish_key`, `test_secret_key`, `live_publish_key`, `live_secret_key`, `site_minimum_withdrawal`, `facebook_url`, `twitter_url`, `gplus_url`, `pinterest_url`, `instagram_url`, `site_footer_payment`, `site_subscribe_text`, `site_development_display`, `site_blog_display`, `site_theme_color`, `site_button_color`, `site_button_hover`, `site_footer_color`, `site_header_color`, `site_loader_image`, `site_loader_display`, `product_per_page`, `post_per_page`, `comment_per_page`, `review_per_page`, `site_flash_end_date`, `home_featured_items`, `home_flash_items`, `home_popular_items`, `home_new_items`, `home_blog_post`, `product_support_link`, `site_range_min_price`, `site_range_max_price`, `menu_display_categories`, `menu_categories_order`, `footer_menu_display_categories`, `footer_menu_categories_order`, `site_extra_fee`, `mail_driver`, `mail_host`, `mail_port`, `mail_username`, `mail_password`, `mail_encryption`, `facebook_client_id`, `facebook_client_secret`, `facebook_callback_url`, `google_client_id`, `google_client_secret`, `google_callback_url`, `display_social_login`, `home_free_items`, `cookie_popup`, `cookie_popup_text`, `cookie_popup_button`, `site_google_translate`, `site_header_top_bar`, `paystack_public_key`, `paystack_secret_key`, `paystack_merchant_email`, `razorpay_key`, `razorpay_secret`, `watermark_option`, `site_watermark`, `top_ads_pages`, `sidebar_ads_pages`, `bottom_ads_pages`, `top_ads`, `sidebar_ads`, `bottom_ads`, `google_ads`, `coingate_mode`, `coingate_auth_token`, `site_refund_display`, `site_withdrawal_display`, `google_analytics`, `site_s3_storage`, `wasabi_access_key_id`, `wasabi_secret_access_key`, `wasabi_default_region`, `wasabi_bucket`, `dropbox_api`, `dropbox_token`, `google_drive_client_id`, `google_drive_client_secret`, `google_drive_refresh_token`, `google_drive_folder_id`, `email_verification`, `site_newsletter_display`, `coinpayments_merchant_id`, `site_tawk_chat`, `payhere_mode`, `payhere_merchant_id`, `payfast_merchant_id`, `payfast_merchant_key`, `payfast_mode`, `flutterwave_public_key`, `flutterwave_secret_key`, `subscription_mode`, `reminder_renewal_before_days`, `redeem_voucher_terms`, `site_referral_commission`, `per_sale_referral_commission`, `site_google_recaptcha`, `maintenance_mode`, `m_mode_title`, `m_mode_content`, `m_mode_social_label`, `m_mode_background`, `m_mode_bgcolor`, `m_mode_bgimage`, `site_flash_sale_discount`, `product_updates_tabs`, `product_reporting_url`, `local_bank_details`, `item_sold_count`, `members_count`, `watermark_repeat`, `watermark_position`, `home_subscriber_items`, `site_other_banner`, `home_categories_icon`, `flutterwave_default_currency`, `paystack_default_currency`) VALUES
(1, 'downGrade', 'Best Selling Digital Product Marketplace', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '1725094668.png', '172509436411.png', '17250869902321.jpg', 'Bring your Own Marketplace Script', 'The Best Marketplace Script for Online Marketplace Business', 'Copyright &copy; 2025. All Right Reserved.', '487 West Ivy Street, Mason, OH 45040', 'ritojey514@qatw.net', '9876543210', 'USD', '$', 'downGrade', 'vasic98467@anyqx.com', 2000, 3000, 'paypal,wallet,paystack,localbank,offline,razorpay,coingate,coinpayments,payhere,payfast,flutterwave,mercadopago,coinbase,cashfree,nowpayments,uddoktapay,fapshi,stripe', 'paypal,stripe,paystack,fapshi,localbank,payfast,paytm,UPI,skrill,crypto', 'zujocarper@gmail.com', '0', 'charges', '0', 'pk_test_2fR28XACHzyFUmp44ah5KKP000BvS2sjXk', 'sk_test_qkIX025z7NxZAJ0dkSqoLwGg00Wbh6fQBU', 'fdsfsewwr', '324324fdsfsa', 50, 'http://facebook.com', 'http://twitter.com', 'https://wa.me/919876543210', 'http://pinterest.com', 'http://instagram.com', '1569937942133.png', NULL, 1, 1, '#085B21', '#085B21', '#089A34', '#FAEADE', '#011C09', '17250955196713.gif', 1, 25, 25, 25, 25, '2026-08-01', 6, 6, 6, 8, 3, 'what-does-support-include', 1, 1000, 15, 'asc', 10, 'desc', 5, 'mail', 'mail.mailtrap.io', '25', '', '', '', '2466123147039848', '5fd2de273a28f221aa8a07d4ba251b43', 'https://localhost/downgrade/login/facebook/callback', '1062293149843-ups8hoqgd13krguoiu6mlhnehgo3dria.apps.googleusercontent.com', 'fwIUneV1Yej1-XGgbh80PYBe', 'https://localhost/downgrade/login/google/callback', 1, 6, 1, 'Do you like cookies? We use cookies to ensure you get the best experience on our website.', 'Allow Cookies', 1, 1, 'pk_test_2a5a6d36733a2e562f75d25831db9737c3423380', 'sk_test_72f75924ee11551c998a5aadf594497c99e1e45d', 'demowork@gmail.com', 'rzp_test_h0cwc0nIdSMJe4', 'Y2u4IcE7AzoNHYOIw8dH2tFd', 0, '1604746452141.png', '', '', '', '', '', '', 1, 0, '7xstS-_AeMgLBvnKy5V8LPPGmZxxUoEzcy_Fnq7C', 1, 1, 'UA-XXXXX-Y', 0, 'dsfdsafdsafsafsafdsfasfdsfdsa', 'dsfdsafdsafsafsafdsfasfdsfdsa', 'us-east-2', 'downgrade', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 'bf8da97500dcfefdbf59bded654368e6', 'https://embed.tawk.to/609bc139b1d5182476b83612/1f5g6lj0r', 0, '1219156', '10000100', '46f0cd694581a', 0, 'FLWPUBK_TEST-6a23a89e3f2c63951237457e1acaad8f-X', 'FLWSECK_TEST-7b84ca2b199aac5ec640ea94c04f1655-X', 1, 5, '<p>1. To topup credits enter the purchased voucher redemption code exactly as provided and your account will be credited right away.</p>\r\n<p>2. The amount of money added to your wallet depends on the voucher type.</p>\r\n<p>3. After successful recharge, the money added to your wallet can be used for transactions on the site only.</p>\r\n<p>4. The recharge voucher code is case sensitive and does not require a dash in between.</p>\r\n<p>5. Once your voucher has been redeemed you cannot transfer, exchange for cash or ask for refunds.</p>\r\n<p>6. Lost or leaked vouchers will not be replaced. please keep your recharge vouchers in a safe place.</p>\r\n<p>7. To purchase a recharge voucher click on one of the links below,</p>\r\n<p>Purchase URL : https://demowork.me/downgrade/redeem-voucher</p>', '0.25', '10', 1, 0, 'Be right back', 'Lorem ipsum dolor sit amet consectetur adipisicing elit sed eiu sit amet consectetur', 'Stay connected', 'image', '#0B2239', '167818225611.gif', '10', 1, 'https://demowork.me/downgrade/contact', 'Bank Name : Test Bank\r\nBranch Name : Test Branch\r\nBranch Code : 00000\r\nIFSC Code : 63632EF', '8549', '359', 1, 'bottom-right', 6, '1725089100039.jpg', '12', 'NGN', 'NGN');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `subcat_id` int(11) NOT NULL,
  `cat_id` int(50) NOT NULL,
  `subcategory_name` varchar(200) NOT NULL,
  `subcategory_slug` varchar(200) NOT NULL,
  `category_allow_seo` int(11) NOT NULL DEFAULT 0,
  `category_seo_keyword` text DEFAULT NULL,
  `category_seo_desc` text DEFAULT NULL,
  `subcategory_order` int(50) NOT NULL,
  `subcategory_status` int(50) NOT NULL,
  `drop_status` varchar(50) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`subcat_id`, `cat_id`, `subcategory_name`, `subcategory_slug`, `category_allow_seo`, `category_seo_keyword`, `category_seo_desc`, `subcategory_order`, `subcategory_status`, `drop_status`) VALUES
(52, 27, 'JavaScript', 'javascript', 1, 'javascript, java scripts', 'This is a javascript', 1, 1, 'no'),
(53, 27, 'PHP Scripts', 'php-scripts', 0, NULL, NULL, 2, 1, 'no'),
(54, 27, 'CSS', 'css', 0, NULL, NULL, 3, 1, 'no'),
(55, 27, 'HTML5', 'html5', 0, NULL, NULL, 4, 1, 'no'),
(56, 27, '.NET', '-net', 0, NULL, NULL, 5, 1, 'no'),
(57, 27, 'Skins', 'skins', 0, NULL, NULL, 6, 1, 'no'),
(58, 28, 'WordPress', 'wordpress', 0, NULL, NULL, 7, 1, 'no'),
(59, 28, 'HTML/CSS', 'html-css', 0, NULL, NULL, 8, 1, 'no'),
(60, 28, 'Bootstrap', 'bootstrap', 0, NULL, NULL, 8, 1, 'no'),
(61, 28, 'Muse', 'muse', 0, NULL, NULL, 9, 1, 'no'),
(62, 28, 'Joomla', 'joomla', 0, NULL, NULL, 10, 1, 'no'),
(63, 28, 'Magento', 'magento', 0, NULL, NULL, 11, 1, 'no'),
(64, 28, 'Drupal', 'drupal', 0, NULL, NULL, 12, 1, 'no'),
(65, 28, 'OpenCart', 'opencart', 0, NULL, NULL, 13, 1, 'no'),
(66, 28, 'PrestaShop', 'prestashop', 0, NULL, NULL, 14, 1, 'no'),
(67, 28, 'Tumblr', 'tumblr', 0, NULL, NULL, 15, 1, 'no'),
(68, 29, 'WordPress Plugins', 'wordpress-plugins', 0, NULL, NULL, 16, 1, 'no'),
(69, 29, 'Magento Extensions', 'magento-extensions', 0, NULL, NULL, 17, 1, 'no'),
(70, 29, 'Joomla', 'joomla', 0, NULL, NULL, 18, 1, 'no'),
(71, 29, 'Drupal', 'drupal', 0, NULL, NULL, 19, 1, 'no'),
(72, 29, 'OpenCart', 'opencart', 0, NULL, NULL, 20, 1, 'no'),
(73, 29, 'ExpressionEngine', 'expressionengine', 0, NULL, NULL, 21, 1, 'no'),
(74, 30, 'Business Cards', 'business-cards', 0, NULL, NULL, 22, 1, 'no'),
(75, 30, 'Brochures', 'brochures', 0, NULL, NULL, 23, 1, 'no'),
(76, 30, 'Flyers', 'flyers', 0, NULL, NULL, 24, 1, 'no'),
(77, 30, 'Resumes', 'resumes', 0, NULL, NULL, 25, 1, 'no'),
(78, 30, 'Logos', 'logos', 0, NULL, NULL, 26, 1, 'no'),
(79, 30, 'Magazines', 'magazines', 0, NULL, NULL, 27, 1, 'no'),
(80, 31, 'Icons', 'icons', 0, NULL, NULL, 28, 1, 'no'),
(81, 31, 'Illustrations', 'illustrations', 0, NULL, NULL, 29, 1, 'no'),
(82, 31, 'Objects', 'objects', 0, NULL, NULL, 30, 1, 'no'),
(83, 31, 'Patterns', 'patterns', 0, NULL, NULL, 31, 1, 'no'),
(84, 31, 'Product Mock-Ups', 'product-mock-ups', 0, NULL, NULL, 32, 1, 'no'),
(85, 31, 'Textures', 'textures', 0, NULL, NULL, 33, 1, 'no'),
(86, 32, 'Android', 'android', 0, NULL, NULL, 34, 1, 'no'),
(87, 32, 'iOS', 'ios', 0, NULL, NULL, 35, 1, 'no'),
(88, 32, 'Native Web', 'native-web', 0, NULL, NULL, 36, 1, 'no'),
(89, 32, 'Unity', 'unity', 0, NULL, NULL, 37, 1, 'no'),
(90, 32, 'Corona', 'corona', 0, NULL, NULL, 38, 1, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `subscr_id` int(11) NOT NULL,
  `subscr_name` varchar(200) NOT NULL,
  `subscr_slug` varchar(200) NOT NULL,
  `subscr_price` float NOT NULL,
  `subscr_duration` varchar(50) NOT NULL,
  `subscr_item_level` varchar(100) DEFAULT NULL,
  `subscr_item` int(100) NOT NULL,
  `subscr_download_item` mediumint(9) NOT NULL,
  `subscr_space_level` varchar(100) DEFAULT NULL,
  `subscr_space` int(100) NOT NULL,
  `subscr_space_type` varchar(100) DEFAULT NULL,
  `subscr_order` int(50) NOT NULL,
  `subscr_email_support` int(50) NOT NULL,
  `subscr_payment_mode` int(50) NOT NULL,
  `subscr_status` int(50) NOT NULL,
  `subscr_drop_status` varchar(50) NOT NULL DEFAULT 'no',
  `highlight_pack` int(11) NOT NULL DEFAULT 0,
  `highlight_bg_color` varchar(191) DEFAULT NULL,
  `highlight_text_color` varchar(191) DEFAULT NULL,
  `icon_color` varchar(191) DEFAULT NULL,
  `button_bg_color` varchar(191) DEFAULT NULL,
  `button_text_color` varchar(191) DEFAULT NULL,
  `extra_info` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`subscr_id`, `subscr_name`, `subscr_slug`, `subscr_price`, `subscr_duration`, `subscr_item_level`, `subscr_item`, `subscr_download_item`, `subscr_space_level`, `subscr_space`, `subscr_space_type`, `subscr_order`, `subscr_email_support`, `subscr_payment_mode`, `subscr_status`, `subscr_drop_status`, `highlight_pack`, `highlight_bg_color`, `highlight_text_color`, `icon_color`, `button_bg_color`, `button_text_color`, `extra_info`) VALUES
(7, 'Monthly', 'monthly', 29, '1 Month', 'limited', 100, 0, NULL, 0, NULL, 2, 0, 0, 1, 'no', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Yearly', 'yearly', 129, '1 Year', 'limited', 300, 0, NULL, 0, NULL, 3, 0, 0, 1, 'no', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Life Time', 'life-time', 1499, '1000 Year', 'unlimited', 0, 0, NULL, 0, NULL, 4, 0, 0, 1, 'no', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Weekly', 'weekly', 9, '1 Week', 'limited', 25, 0, NULL, 0, NULL, 1, 0, 0, 1, 'no', 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticket_id` int(11) NOT NULL,
  `ticket_token` varchar(191) DEFAULT NULL,
  `ticket_user_token` varchar(191) DEFAULT NULL,
  `ticket_subject` varchar(191) DEFAULT NULL,
  `ticket_message` text DEFAULT NULL,
  `ticket_file` varchar(191) DEFAULT NULL,
  `ticket_status` varchar(50) DEFAULT NULL,
  `ticket_priority` varchar(20) DEFAULT NULL,
  `ticket_date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`ticket_id`, `ticket_token`, `ticket_user_token`, `ticket_subject`, `ticket_message`, `ticket_file`, `ticket_status`, `ticket_priority`, `ticket_date_time`) VALUES
(11, '917917', 'BAkada4tQQW7PvJEcLuyEqZDP', 'I need your help', 'Hi, i need your help, please check my screenshot', '1744199066.jpg', 'admin replied', 'High', '2025-04-09 11:44:26'),
(12, '796687', 'fy3kbqQokF0HnO2mB0YJX0oxn', 'Pre-sale question', 'can you provide free installation?', '', 'customer replied', 'Medium', '2025-04-09 11:46:34'),
(13, '651927', 'fy3kbqQokF0HnO2mB0YJX0oxn', 'installation help', 'Hello sir,\r\n\r\nwe need to setup help', '', 'close', 'Low', '2025-04-09 11:54:56');

-- --------------------------------------------------------

--
-- Table structure for table `tickets_reply`
--

CREATE TABLE `tickets_reply` (
  `tr_id` int(11) NOT NULL,
  `tickets_token` varchar(50) DEFAULT NULL,
  `tickets_user_token` varchar(191) DEFAULT NULL,
  `tickets_message` text DEFAULT NULL,
  `tickets_file` varchar(100) DEFAULT NULL,
  `tickets_date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tickets_reply`
--

INSERT INTO `tickets_reply` (`tr_id`, `tickets_token`, `tickets_user_token`, `tickets_message`, `tickets_file`, `tickets_date_time`) VALUES
(12, '917917', 'BAkada4tQQW7PvJEcLuyEqZDP', 'Please check it my ticket', '', '2025-04-09 11:44:45'),
(13, '917917', 'wY8wGc5rFLhA57SpAzw7ZP37m', 'Yes i will help you', '', '2025-04-09 11:45:20'),
(14, '796687', 'wY8wGc5rFLhA57SpAzw7ZP37m', 'sure :)', '', '2025-04-09 11:47:18'),
(15, '796687', 'fy3kbqQokF0HnO2mB0YJX0oxn', 'Great', '', '2025-04-09 11:48:06'),
(16, '651927', 'wY8wGc5rFLhA57SpAzw7ZP37m', 'done', '', '2025-04-09 12:02:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(500) DEFAULT NULL,
  `provider_id` varchar(500) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(50) DEFAULT NULL,
  `user_country` varchar(200) DEFAULT NULL,
  `user_photo` varchar(100) DEFAULT NULL,
  `user_banner` varchar(200) DEFAULT NULL,
  `user_token` varchar(500) NOT NULL,
  `user_permission` varchar(500) DEFAULT NULL,
  `earnings` float NOT NULL,
  `password` varchar(191) NOT NULL,
  `verified` int(50) NOT NULL DEFAULT 0,
  `user_coupon_id` varchar(191) DEFAULT NULL,
  `user_coupon_code` varchar(191) DEFAULT NULL,
  `user_coupon_type` varchar(191) DEFAULT NULL,
  `user_coupon_value` varchar(191) DEFAULT NULL,
  `user_discount_price` double(8,2) NOT NULL,
  `user_subscr_id` int(11) NOT NULL,
  `user_subscr_price` double(8,2) NOT NULL,
  `user_subscr_payment_type` varchar(191) DEFAULT NULL,
  `user_subscr_payment_status` varchar(191) DEFAULT NULL,
  `user_subscr_type` varchar(191) DEFAULT NULL,
  `user_subscr_date` date NOT NULL,
  `user_renewal_email` int(11) NOT NULL DEFAULT 0,
  `user_subscr_item_level` varchar(191) DEFAULT NULL,
  `user_subscr_item` int(11) NOT NULL,
  `user_today_download_limit` int(11) NOT NULL,
  `user_today_download_date` date NOT NULL,
  `user_purchase_token` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `drop_status` varchar(50) NOT NULL DEFAULT 'no',
  `register_url` varchar(191) DEFAULT NULL,
  `referral_by` int(11) DEFAULT NULL,
  `referral_count` int(11) NOT NULL DEFAULT 0,
  `referral_amount` varchar(191) DEFAULT NULL,
  `referral_payout` varchar(191) DEFAULT NULL,
  `google2fa_secret` varchar(191) DEFAULT NULL,
  `google2fa_access` varchar(20) DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `provider`, `provider_id`, `name`, `username`, `email`, `email_verified_at`, `user_type`, `user_country`, `user_photo`, `user_banner`, `user_token`, `user_permission`, `earnings`, `password`, `verified`, `user_coupon_id`, `user_coupon_code`, `user_coupon_type`, `user_coupon_value`, `user_discount_price`, `user_subscr_id`, `user_subscr_price`, `user_subscr_payment_type`, `user_subscr_payment_status`, `user_subscr_type`, `user_subscr_date`, `user_renewal_email`, `user_subscr_item_level`, `user_subscr_item`, `user_today_download_limit`, `user_today_download_date`, `user_purchase_token`, `remember_token`, `created_at`, `updated_at`, `drop_status`, `register_url`, `referral_by`, `referral_count`, `referral_amount`, `referral_payout`, `google2fa_secret`, `google2fa_access`) VALUES
(1, NULL, NULL, 'admin', 'admin', 'admin@admin.com', NULL, 'admin', NULL, '1619422658.png', '1561461056456.jpg', 'wY8wGc5rFLhA57SpAzw7ZP37m', 'dashboard,settings,country,customers,category,subscription,manage-products,orders,refund-request,withdrawal,blog,ads,pages,contact,etemplate,newsletter,clear-cache,voucher,maintenance,coupons,backups,upgrade,tickets,addons', 0, '$2y$10$s9xCA0cJEMWtMqsdvkMqkuSi6JQ0xvrg6PKVXq46A7GeeMqm741xW', 1, NULL, NULL, NULL, NULL, 0.00, 0, 0.00, NULL, NULL, NULL, '0000-00-00', 0, NULL, 0, 0, '2025-10-18', NULL, NULL, '2019-06-17 05:25:51', '2025-08-25 00:08:25', 'no', NULL, NULL, 0, NULL, NULL, NULL, 'no'),
(7, NULL, NULL, 'customer', 'customer', 'customer@gmail.com', NULL, 'customer', '229', '1619423185.png', NULL, 'BAkada4tQQW7PvJEcLuyEqZDP', NULL, 0, '$2y$10$ygqn9Daf/jUUSjSRreNy1uMCOzdx18/sa3zhrUMdqu6KUx8z.ejhi', 1, '', 'BEST', 'percentage', '10', 116.10, 7, 29.00, 'fapshi', 'completed', 'Monthly', '2025-11-06', 1, 'limited', 100, 0, '2025-10-17', NULL, NULL, '2019-09-16 07:51:57', '2025-07-21 06:45:01', 'no', NULL, NULL, 0, NULL, NULL, NULL, 'no'),
(14, NULL, NULL, 'sample', 'sample', 'sample@gmail.com', NULL, 'customer', NULL, NULL, NULL, 'fy3kbqQokF0HnO2mB0YJX0oxn', NULL, 0, '$2y$10$MBEWZ9l5eJc1WrfOu1v9VeX17Up0yNGSoNUnP0V52egM0qdStBq3e', 1, NULL, NULL, NULL, NULL, 0.00, 0, 0.00, NULL, NULL, NULL, '0000-00-00', 0, NULL, 0, 0, '2025-04-09', NULL, NULL, '2022-08-31 01:29:17', '2022-08-31 01:29:17', 'no', NULL, NULL, 0, NULL, NULL, NULL, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `vid` int(11) NOT NULL,
  `voucher_code` varchar(100) DEFAULT NULL,
  `voucher_token` varchar(100) DEFAULT NULL,
  `voucher_user_id` int(20) NOT NULL,
  `voucher_redeem_user_id` int(20) NOT NULL,
  `voucher_price` varchar(50) DEFAULT NULL,
  `voucher_bonus` varchar(50) DEFAULT NULL,
  `voucher_total` varchar(50) DEFAULT NULL,
  `voucher_status` varchar(50) NOT NULL DEFAULT 'Unused',
  `voucher_create_date` varchar(100) DEFAULT NULL,
  `voucher_expiry_date` datetime DEFAULT NULL,
  `voucher_redeem_date` varchar(100) DEFAULT NULL,
  `purchase_token` varchar(100) DEFAULT NULL,
  `voucher_notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `voucher`
--

INSERT INTO `voucher` (`vid`, `voucher_code`, `voucher_token`, `voucher_user_id`, `voucher_redeem_user_id`, `voucher_price`, `voucher_bonus`, `voucher_total`, `voucher_status`, `voucher_create_date`, `voucher_expiry_date`, `voucher_redeem_date`, `purchase_token`, `voucher_notes`) VALUES
(375, 'CARDsjeX9mS5ci1l', 'pw7OKLF5vSVuueDtvYYSF1pDp', 1, 0, '10', '2', '12', 'Unused', '24-Feb-2023 12:05 pm', '2023-08-17 10:35:00', NULL, NULL, 'Best deals'),
(376, 'CARDIPnye4OvQbtO', '9Ch2bMTx3wsAWmSmQphFmKPEh', 1, 0, '20', '7', '27', 'Unused', '24-Feb-2023 12:05 pm', '2023-08-17 10:35:00', NULL, NULL, 'Best deals'),
(377, 'CARDbkmAaSSWSWkC', 'OTUyUwOp18VT6PLeAZN9KH3jw', 1, 0, '30', '0', '30', 'Unused', '24-Feb-2023 12:05 pm', '2023-08-17 10:35:00', NULL, NULL, 'Best deals'),
(378, 'Vwj4UadMnEsS4X4X', 'D86Grf5pDwXRqqF43gQpZJTzQ', 1, 0, '1', '1', '2', 'Unused', '24-Feb-2023 12:06 pm', '2024-02-24 12:06:56', NULL, NULL, ''),
(379, 'nNCtzemqsWp4BMiY', '9l3tJ0ppvu08LJx3Y8e3mDh2m', 1, 0, '7', '2', '9', 'Unused', '24-Feb-2023 12:06 pm', '2024-02-24 12:06:56', NULL, NULL, ''),
(380, 'J8rWQd9OLp07krnq', 'fNvTTSqEJVNzrStXoKlKtaDKR', 1, 0, '11', '1', '12', 'Unused', '24-Feb-2023 12:08 pm', '2024-02-24 12:08:44', NULL, NULL, 'ttt'),
(381, 'tnjKNHSP3s723SQx', 'I8YTcwhAbu70Y4ITuLyRvzA5U', 1, 7, '22', '2', '24', 'Used', '24-Feb-2023 12:08 pm', '2024-02-24 12:08:44', '25-Feb-2023 09:45 am', NULL, 'ttt'),
(382, 'nD5ySPV6I515WITy', 'CEkfuaGhStb2XG36VcAtqbroy', 1, 0, '11', '1', '12', 'Unused', '24-Feb-2023 12:10 pm', '2024-02-24 12:10:41', NULL, NULL, ''),
(383, '2unrZoKjm3z3B4p2', 'szBWzBueJoqLE84b6pIAg3pXn', 1, 0, '11', '1', '12', 'Unused', '24-Feb-2023 12:11 pm', '2024-02-24 12:11:14', NULL, NULL, ''),
(384, 'S17xRYLCPsT0mnMu', 'y0UHWAYngAIDUtqLqGK9e0DOk', 1, 0, '11', '1', '12', 'Unused', '24-Feb-2023 12:11 pm', '2023-05-11 05:41:00', NULL, NULL, 'svewrew'),
(385, 'hkRS6PmkR82xqlPO', 'RCCDPbDwzjjqbXj1Rd2wy4WUW', 1, 0, '22', '2', '24', 'Unused', '24-Feb-2023 12:11 pm', '2023-05-11 05:41:00', NULL, NULL, 'svewrew');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal`
--

CREATE TABLE `withdrawal` (
  `wd_id` int(11) NOT NULL,
  `wd_user_id` int(200) NOT NULL,
  `wd_date` date NOT NULL,
  `withdraw_type` varchar(100) NOT NULL,
  `paypal_email` varchar(200) NOT NULL,
  `stripe_email` varchar(200) NOT NULL,
  `wd_amount` float NOT NULL,
  `wd_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_methods`
--

CREATE TABLE `withdrawal_methods` (
  `wm_id` int(11) NOT NULL,
  `withdrawal_name` varchar(500) NOT NULL,
  `withdrawal_key` varchar(100) NOT NULL,
  `withdrawal_order` int(50) NOT NULL,
  `withdrawal_status` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `withdrawal_methods`
--

INSERT INTO `withdrawal_methods` (`wm_id`, `withdrawal_name`, `withdrawal_key`, `withdrawal_order`, `withdrawal_status`) VALUES
(2, 'Stripe', 'stripe', 2, 1),
(3, 'Paypal', 'paypal', 1, 1),
(4, 'Paystack', 'paystack', 3, 1),
(5, 'Local Bank', 'localbank', 5, 1),
(6, 'PayFast', 'payfast', 6, 1),
(7, 'Paytm', 'paytm', 7, 1),
(8, 'UPI', 'UPI', 8, 1),
(9, 'Skrill', 'skrill', 9, 1),
(10, 'Manual Payment (Crypto)', 'crypto', 10, 1),
(11, 'Mobile Money', 'fapshi', 4, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`addon_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`attr_id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`blog_cat_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `custom_settings`
--
ALTER TABLE `custom_settings`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `development_logo`
--
ALTER TABLE `development_logo`
  ADD PRIMARY KEY (`logo_id`);

--
-- Indexes for table `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`et_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_comment`
--
ALTER TABLE `post_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`product_attribute_id`);

--
-- Indexes for table `product_checkout`
--
ALTER TABLE `product_checkout`
  ADD PRIMARY KEY (`chout_id`);

--
-- Indexes for table `product_comments`
--
ALTER TABLE `product_comments`
  ADD PRIMARY KEY (`comm_id`);

--
-- Indexes for table `product_comment_reply`
--
ALTER TABLE `product_comment_reply`
  ADD PRIMARY KEY (`comm_reply_id`);

--
-- Indexes for table `product_compatible_browsers`
--
ALTER TABLE `product_compatible_browsers`
  ADD PRIMARY KEY (`browser_id`);

--
-- Indexes for table `product_data`
--
ALTER TABLE `product_data`
  ADD PRIMARY KEY (`prd_id`);

--
-- Indexes for table `product_favorite`
--
ALTER TABLE `product_favorite`
  ADD PRIMARY KEY (`fav_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`prod_gal_id`);

--
-- Indexes for table `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`ord_id`);

--
-- Indexes for table `product_package_includes`
--
ALTER TABLE `product_package_includes`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `product_ratings`
--
ALTER TABLE `product_ratings`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `product_refund`
--
ALTER TABLE `product_refund`
  ADD PRIMARY KEY (`refund_id`);

--
-- Indexes for table `product_report`
--
ALTER TABLE `product_report`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `product_withdrawal`
--
ALTER TABLE `product_withdrawal`
  ADD PRIMARY KEY (`wd_id`);

--
-- Indexes for table `pwa_settings`
--
ALTER TABLE `pwa_settings`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`subcat_id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`subscr_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `tickets_reply`
--
ALTER TABLE `tickets_reply`
  ADD PRIMARY KEY (`tr_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`vid`);

--
-- Indexes for table `withdrawal`
--
ALTER TABLE `withdrawal`
  ADD PRIMARY KEY (`wd_id`);

--
-- Indexes for table `withdrawal_methods`
--
ALTER TABLE `withdrawal_methods`
  ADD PRIMARY KEY (`wm_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `addon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `attr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `blog_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `custom_settings`
--
ALTER TABLE `custom_settings`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `development_logo`
--
ALTER TABLE `development_logo`
  MODIFY `logo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `email_template`
--
ALTER TABLE `email_template`
  MODIFY `et_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `post_comment`
--
ALTER TABLE `post_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `product_attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=417;

--
-- AUTO_INCREMENT for table `product_checkout`
--
ALTER TABLE `product_checkout`
  MODIFY `chout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=386;

--
-- AUTO_INCREMENT for table `product_comments`
--
ALTER TABLE `product_comments`
  MODIFY `comm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_comment_reply`
--
ALTER TABLE `product_comment_reply`
  MODIFY `comm_reply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_compatible_browsers`
--
ALTER TABLE `product_compatible_browsers`
  MODIFY `browser_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_data`
--
ALTER TABLE `product_data`
  MODIFY `prd_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `product_favorite`
--
ALTER TABLE `product_favorite`
  MODIFY `fav_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `prod_gal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `product_order`
--
ALTER TABLE `product_order`
  MODIFY `ord_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `product_package_includes`
--
ALTER TABLE `product_package_includes`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_ratings`
--
ALTER TABLE `product_ratings`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product_refund`
--
ALTER TABLE `product_refund`
  MODIFY `refund_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `product_report`
--
ALTER TABLE `product_report`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_withdrawal`
--
ALTER TABLE `product_withdrawal`
  MODIFY `wd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pwa_settings`
--
ALTER TABLE `pwa_settings`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `subcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `subscr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tickets_reply`
--
ALTER TABLE `tickets_reply`
  MODIFY `tr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `voucher`
--
ALTER TABLE `voucher`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=386;

--
-- AUTO_INCREMENT for table `withdrawal`
--
ALTER TABLE `withdrawal`
  MODIFY `wd_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdrawal_methods`
--
ALTER TABLE `withdrawal_methods`
  MODIFY `wm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
