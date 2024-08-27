-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 27, 2024 at 10:38 AM
-- Server version: 10.11.8-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u283990907_ramakrsna`
--

-- --------------------------------------------------------

--
-- Table structure for table `2nd_sub_category`
--

CREATE TABLE `2nd_sub_category` (
  `id` int(11) NOT NULL,
  `sub_category` varchar(255) NOT NULL,
  `sub_sub_categroy` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `img` longtext NOT NULL,
  `description` varchar(255) NOT NULL,
  `createddate` datetime NOT NULL DEFAULT current_timestamp(),
  `main_category` varchar(255) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` longtext DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `2nd_sub_category`
--

INSERT INTO `2nd_sub_category` (`id`, `sub_category`, `sub_sub_categroy`, `status`, `img`, `description`, `createddate`, `main_category`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(4, '10', '1 mukhi Rudraksha', 'Active', '1710764930_deity_photos_frames_thumb.jpg', '1 mukhi Rudraksha Category', '2024-03-18 12:28:50', '5', 'Buy 1 mukhi Rudraksha from Nepal, Java at Best Prices', '1 mukhi Rudraksha, Ek Mukhi Rudraksha', '1 mukhi Rudraksha beads from Nepal, India and Java. Buy original one mukhi half moon and kaju dana Rudraksha beads in silver caps, basket at best price\r\n'),
(5, '10', '2 mukhi Rudraksha', 'Active', '1710765465_planetary_yantras_thumb.jpg', '2 mukhi Rudraksha Category', '2024-03-18 12:37:45', '5', 'Buy 2 mukhi Rudraksha from Nepal, Java at Best Prices', '2 mukhi Rudraksha. Do mukhi Rudraksha', '2 mukhi Rudraksha beads collection from Nepal and Java. Buy original, quality, handpicked two mukhi Rudraksha in thread, silver caps at best price.\r\n'),
(6, '15', 'Blue Sapphire', 'Active', '1710929631_blue_sapphire_thumb.jpg', 'Blue Sapphire Category', '2024-03-20 10:13:51', '6', 'Buy Blue Sapphire (Neelam), Natural & Original at Best Price', 'Blue Sapphire, Neelam', 'Blue Sapphire stone of various carats online at best prices. Buy natural, non-heated, non-treated, jyotish quality Blue Sapphire (Neelam) gemstone.\r\n'),
(7, '15', 'Yellow Sapphire', 'Active', '1710929668_yellow_sapphire_thumb.jpg', 'Yellow Sapphire Category', '2024-03-20 10:14:28', '6', 'Buy Yellow Sapphire (Pukhraj), Natural & Original at Best Price', 'Yellow Sapphire, Pukhraj', 'Yellow Sapphire stone of various carats online at best prices. Buy natural, non-heated, non-treated, jyotish quality Yellow Sapphire (Pukhraj) gemstone\r\n'),
(8, '15', 'Ruby', 'Active', '1710929698_ruby_thumb.jpg', 'Ruby Category', '2024-03-20 10:14:58', '6', 'Buy Ruby (Manik), Natural & Original at Best Price', 'Ruby, Manik', 'Ruby stone of various carats online at best prices. Buy natural, non-heated, non-treated, jyotish quality Ruby (Manik) gemstone\r\n'),
(9, '15', 'Pearl', 'Active', '1710929726_pearl_thumb.jpg', 'Pearl Category', '2024-03-20 10:15:26', '6', 'Buy Pearl (Moti), Natural & Original at Best Price', 'Pearl, Moti', 'Pearl of various carats online at best prices. Buy natural, non-heated, non-treated, jyotish quality Pearl (moti) gemstone\r\n'),
(10, '15', 'Hessonite (Gomed)', 'Active', '1710929755_hessonite_thumb.jpg', 'Hessonite (Gomed) Category', '2024-03-20 10:15:55', '6', 'Buy Hessonite (Gomed), Natural & Original at Best Price', 'Hessonite, Gomed ', 'Hessonite stone of various carats online at best prices. Buy natural, non-heated, non-treated, jyotish quality Hessonite (Gomed) gemstone\r\n'),
(11, '15', 'Cat\'s Eye', 'Active', '1710929788_cats_eye_thumb.jpg', 'Cat\'s Eye Category', '2024-03-20 10:16:28', '6', 'Buy Cat\'s Eye (Lahsuniya), Natural & Original at Best Price', 'Cat\'s Eye, Lehsuniya', 'Cat\'s Eye of various carats online at best prices. Buy natural, non-heated, non-treated, jyotish quality Cat\'s Eye (Lehsuniya) gemstone.\r\n'),
(12, '15', 'Red Coral', 'Active', '1710929814_red_coral_thumb.jpg', 'Red Coral Category', '2024-03-20 10:16:54', '6', 'Buy Coral (Moonga), Natural & Original at Best Price', 'Red Coral, Moonga', 'Red Coral of various carats online at best prices. Buy natural, non-heated, non-treated, jyotish quality Red Coral (Lal Moonga) gemstone.\r\n'),
(13, '15', 'Diamond', 'Active', '1710929842_diamond_thumb.jpg', 'Diamond Category', '2024-03-20 10:17:22', '6', 'Buy Diamond (Heera), Natural & Original at Best Price', 'Diamond, Heera', 'Diamond stone of various carats online at best prices. Buy natural, non-heated, non-treated, jyotish quality Diamond (Hira) gemstone\r\n'),
(14, '15', 'Emerald', 'Active', '1710929874_emerald_thumb.jpg', 'Emerald Category', '2024-03-20 10:17:54', '6', 'Buy Emerald (Panna), Natural & Original at Best Price', 'Emerald, Panna', 'Emerald stone of various carats online at best prices. Buy natural, non-heated, non-treated, jyotish quality Emerald (Panna) gemstone.\r\n'),
(15, '16', 'Blue Topaz', 'Active', '1710933352_blue_topaz_thumb.jpg', 'Blue Topaz Category', '2024-03-20 11:15:52', '6', 'Buy Blue Topaz, Natural & Original at Best Price', 'Blue Topaz', 'Blue Topaz stone of various carats online at best prices. Buy natural, non-heated, non-treated, jyotish quality Blue Topaz gemstone.\r\n'),
(16, '16', 'Opal', 'Active', '1710933383_opal_thumb.jpg', 'Opal Category', '2024-03-20 11:16:23', '6', 'Buy Opal, Natural & Original at Best Price', 'Opal', 'Opal stone of various carats online at best prices. Buy natural, non-heated, non-treated, jyotish quality Opal (Dudhia) gemstone.\r\n'),
(17, '16', 'Peridot', 'Active', '1710933407_peridot_thumb.jpg', 'Peridot Category', '2024-03-20 11:16:47', '6', 'Buy Peridot, Natural & Original at Best Price', 'Peridot', 'Peridot stone of various carats online at best prices. Buy natural, non-heated, non-treated, jyotish quality Peridot gemstone.\r\n'),
(18, '16', 'Amethyst', 'Active', '1710933436_amethyst_thumb.jpg', 'Amethyst Category', '2024-03-20 11:17:16', '6', 'Buy Amethyst, Natural & Original at Best Price', 'Amethyst', 'Amethyst stone of various carats online at best prices. Buy natural, non-heated, non-treated, jyotish quality Amethyst (Jamunia) gemstone.\r\n'),
(19, '16', 'Crystal', 'Active', '1710933471_crystal_thumb.jpg', 'Crystal Category', '2024-03-20 11:17:51', '6', 'Buy Crystal (Sphatik), Natural & Original at Best Price', 'Crystal, Sphatik ', 'Sphatik stone of various carats online at best prices. Buy natural, non-heated, non-treated, jyotish quality Sphatik (Crystal) gemstone.\r\n'),
(20, '16', 'Rose Quartz', 'Active', '1710933499_rose_quartz_thumb.jpg', 'Rose Quartz Category', '2024-03-20 11:18:19', '6', 'Buy Rose Quartz, Natural & Original at Best Price', 'Rose Quartz', 'Rose Quartz stone of various carats online at best prices. Buy natural, non-heated, non-treated, jyotish quality Rose Quartz gemstone.\r\n'),
(21, '16', 'Turquoise', 'Active', '1710933530_turquoise_thumb.jpg', 'Turquoise Category', '2024-03-20 11:18:50', '6', 'Buy Turquoise, Natural & Original at Best Price', 'Turquoise', 'Turquoise stone of various carats online at best prices. Buy natural, non-heated, non-treated, jyotish quality Turquoise (Firoza) gemstone.\r\n'),
(22, '16', 'Aquamarine', 'Active', '1710933553_aquamarine_thumb.jpg', 'Aquamarine Category', '2024-03-20 11:19:13', '6', 'Buy Aquamarine, Natural & Original at Best Price', 'Aquamarine', 'Aquamarine stone of various carats online at best prices. Buy natural, non-heated, non-treated, jyotish quality Aquamarine gemstone.\r\n'),
(23, '16', 'Green Tourmaline', 'Active', '1710933578_green_tourmaline_thumb.jpg', 'Green Tourmaline Category', '2024-03-20 11:19:38', '6', 'Buy Green Tourmaline, Natural & Original at Best Price', 'Green Tourmaline', 'Green Tourmaline stone of various carats online at best prices. Buy natural, non-heated, non-treated, jyotish quality Green Tourmaline gemstone.\r\n'),
(24, '16', 'Zircon', 'Active', '1710933603_zircon_thumb.jpg', 'Zircon Category', '2024-03-20 11:20:03', '6', 'Buy Zircon, Natural & Original at Best Price', 'Zircon', 'Zircon stone of various carats online at best prices. Buy natural, non-heated, non-treated, jyotish quality Zircon gemstone.\r\n'),
(25, '16', 'Moonstone', 'Active', '1710933628_moonstone_thumb.jpg', 'Moonstone Category', '2024-03-20 11:20:28', '6', 'Buy Moonstone, Natural & Original at Best Price', 'Moonstone', 'Moonstone gemstone of various carats online at best prices. Buy natural, non-heated, non-treated, jyotish quality Moonstone gemstone.\r\n'),
(26, '16', 'Yellow Citrine', 'Active', '1710933652_yellow_citrine_thumb.jpg', 'Yellow Citrine Category', '2024-03-20 11:20:52', '6', 'Buy Yellow Citrine, Natural & Original at Best Price', 'Yellow Citrine', 'Yellow Citrine stone of various carats online at best prices. Buy natural, non-heated, non-treated, jyotish quality Yellow Citrine gemstone.\r\n'),
(29, '16', 'Lapis Lazuli', 'Active', '1710933748_lapis_lazuli_thumb.jpg', 'Lapis Lazuli Category', '2024-03-20 11:22:28', '6', 'Buy Lapis Lazuli, Natural & Original at Best Price', 'Lapis Lazuli', 'Lapis Lazuli stone of various carats online at best prices. Buy natural, non-heated, non-treated, jyotish quality Lapis Lazuli (Lajward) gemstone.\r\n'),
(30, '10', '3 mukhi Rudraksha', 'Active', '1712126580_3_mukhi_rudraksha_thumb.jpg', '3 mukhi Rudraksha Category', '2024-04-03 06:43:00', '5', 'Buy 3 mukhi Rudraksha from Nepal, Java at Best Prices', '3 mukhi Rudraksha', '3 mukhi Rudraksha beads collection from Nepal and Java. Buy original, quality, handpicked three mukhi Rudraksh in thread, silver caps at best price\r\n'),
(31, '10', '4 mukhi Rudraksha', 'Active', '1712126754_4_mukhi_rudraksha_thumb.jpg', '4 mukhi Rudraksha Category', '2024-04-03 06:45:54', '5', 'Buy 4 mukhi Rudraksha from Nepal, Java at Best Prices', '4 mukhi Rudraksha', '4 mukhi Rudraksha beads collection from Nepal and Java. Buy original, quality, handpicked four mukhi Rudraksha in thread, silver caps at best price\r\n'),
(32, '10', '5 mukhi Rudraksha', 'Active', '1712126784_5_mukhi_rudraksha_thumb.jpg', '5 mukhi Rudraksha Category', '2024-04-03 06:46:24', '5', 'Buy 5 mukhi Rudraksha from Nepal, Java at Best Prices', '5 mukhi Rudraksha', '5 mukhi Rudraksha beads collection from Nepal and Java. Buy original, quality, handpicked five mukhi Rudraksha in thread, silver caps at best price \r\n'),
(33, '10', '6 mukhi Rudraksha', 'Active', '1712126810_6_mukhi_rudraksha_thumb.jpg', '6 mukhi Rudraksha Category', '2024-04-03 06:46:50', '5', 'Buy 6 mukhi Rudraksha from Nepal, Java at Best Prices', '6 mukhi Rudraksha', '6 mukhi Rudraksha beads collection from Nepal and Java. Buy original, quality, handpicked six mukhi Rudraksha in thread, silver caps at best price.\r\n'),
(34, '10', '7 mukhi Rudraksha', 'Active', '1712126836_7_mukhi_rudraksha_thumb.jpg', '7 mukhi Rudraksha Category', '2024-04-03 06:47:16', '5', 'Buy 7 mukhi Rudraksha from Nepal, Java at Best Prices', '7 mukhi Rudraksha', '7 mukhi Rudraksha beads collection from Nepal and Java. Buy original, quality, handpicked seven mukhi Rudraksha in thread, silver caps at best price\r\n'),
(35, '10', '8 mukhi Rudraksha', 'Active', '1712126869_8_mukhi_rudraksha_thumb.jpg', '8 mukhi Rudraksha Category', '2024-04-03 06:47:49', '5', 'Buy 8 mukhi Rudraksha from Nepal, Java at Best Prices', '8 mukhi Rudraksha', '8 mukhi Rudraksha beads collection from Nepal and Java. Buy original, quality, handpicked eight mukhi Rudraksha in thread, silver caps at best price\r\n'),
(36, '10', '9 mukhi Rudraksha', 'Active', '1712126893_9_mukhi_rudraksha_thumb.jpg', '9 mukhi Rudraksha Category', '2024-04-03 06:48:13', '5', 'Buy 9 mukhi Rudraksha from Nepal, Java at Best Prices', '9 mukhi Rudraksha', '9 mukhi Rudraksha beads collection from Nepal and Java. Buy original, quality, handpicked nine mukhi Rudraksha in thread, silver caps at best price. \r\n'),
(37, '10', '10 mukhi Rudraksha', 'Active', '1712126918_10_mukhi_rudraksha_thumb.jpg', '10 mukhi Rudraksha Category', '2024-04-03 06:48:38', '5', 'Buy 10 mukhi Rudraksha from Nepal, Java at Best Prices', '10 mukhi Rudraksha', '10 mukhi Rudraksha beads collection from Nepal and Java. Buy original, quality, handpicked ten mukhi Rudraksha in thread, silver caps at best price.\r\n'),
(38, '10', '11 mukhi Rudraksha', 'Active', '1712126946_11_mukhi_rudraksha_thumb.jpg', '11 mukhi Rudraksha Category', '2024-04-03 06:49:06', '5', 'Buy 11 mukhi Rudraksha from Nepal, Java at Best Prices', '11 mukhi Rudraksha', '11 mukhi Rudraksha beads collection from Nepal and Java. Buy original, quality, handpicked eleven mukhi Rudraksh in thread, silver caps at best price\r\n'),
(39, '10', '12 mukhi Rudraksha', 'Active', '1712126971_12_mukhi_rudraksha_thumb.jpg', '12 mukhi Rudraksha Category', '2024-04-03 06:49:31', '5', 'Buy 12 mukhi Rudraksha from Nepal, Java at Best Prices', '12 mukhi Rudraksha', '12 mukhi Rudraksha beads collection from Nepal and Java. Buy original, quality, handpicked twelve mukhi Rudraksh in thread, silver caps at best price\r\n'),
(40, '10', '13 mukhi Rudraksha', 'Active', '1712126998_13_mukhi_rudraksha_thumb.jpg', '13 mukhi Rudraksha Category', '2024-04-03 06:49:58', '5', 'Buy 13 mukhi Rudraksha from Nepal, Java at Best Prices', '13 mukhi Rudraksha', '13 mukhi Rudraksha beads collection from Nepal and Java. Buy original, quality, handpicked 13 mukhi Rudraksha in thread, silver caps at best price. \r\n'),
(41, '10', '14 mukhi Rudraksha', 'Active', '1712127023_14_mukhi_rudraksha_thumb.jpg', '14 mukhi Rudraksha Category', '2024-04-03 06:50:23', '5', 'Buy 14 mukhi Rudraksha from Nepal, Java at Best Prices', '14 mukhi Rudraksha', '14 mukhi Rudraksha beads collection from Nepal and Java. Buy original, quality, handpicked 14 mukhi Rudraksha in thread, silver caps at best price. \r\n'),
(42, '10', '15 mukhi Rudraksha', 'Active', '1712127044_15_mukhi_rudraksha_thumb.jpg', '15 mukhi Rudraksha Category', '2024-04-03 06:50:44', '5', 'Buy 15 mukhi Rudraksha from Nepal, Java at Best Prices', '15 mukhi Rudraksha', '15 mukhi Rudraksha beads collection from Nepal and Java. Buy original, quality, handpicked fifteen mukhi Rudraksha in thread, silver caps at best price\r\n'),
(43, '10', '16 mukhi Rudraksha', 'Active', '1712127074_16_mukhi_rudraksha_thumb.jpg', '16 mukhi Rudraksha Category', '2024-04-03 06:51:14', '5', 'Buy 16 mukhi Rudraksha from Nepal, Java at Best Prices', '16 mukhi Rudraksha', '16 mukhi Rudraksha beads collection from Nepal and Java. Buy original, quality, handpicked sixteen mukhi Rudraksha in thread, silver caps at best price\r\n'),
(44, '10', '17 mukhi Rudraksha', 'Active', '1712127101_17_mukhi_rudraksha_thumb.jpg', '17 mukhi Rudraksha Category', '2024-04-03 06:51:41', '5', 'Buy 17 mukhi Rudraksha from Nepal, Java at Best Prices', '17 mukhi Rudraksha', '17 mukhi Rudraksha beads collection from Nepal and Java. Buy original, quality, handpicked 17 mukhi Rudraksha in thread, silver caps at best price.\r\n'),
(45, '10', '18 mukhi Rudraksha', 'Active', '1712127128_18_mukhi_rudraksha_thumb.jpg', '18 mukhi Rudraksha Category', '2024-04-03 06:52:08', '5', 'Buy 18 mukhi Rudraksha from Nepal, Java at Best Prices', '18 mukhi Rudraksha', '18 mukhi Rudraksha beads collection from Nepal and Java. Buy original, quality, handpicked eighteen mukhi Rudraksh in thread, silver caps at best price\r\n'),
(46, '10', '19 mukhi Rudraksha', 'Active', '1712127154_19_mukhi_rudraksha_thumb.jpg', '19 mukhi Rudraksha Category', '2024-04-03 06:52:34', '5', 'Buy 19 mukhi Rudraksha from Nepal, Java at Best Prices', '19 mukhi Rudraksha', '19 mukhi Rudraksha beads collection from Nepal and Java. Buy original, quality, handpicked nineteen mukhi Rudraksh in thread, silver caps at best price\r\n'),
(47, '10', '20 mukhi Rudraksha', 'Active', '1712127184_20_mukhi_rudraksha_thumb.jpg', '20 mukhi Rudraksha Category', '2024-04-03 06:53:04', '5', 'Buy 20 mukhi Rudraksha from Nepal, Java at Best Prices', '20 mukhi Rudraksha', '20 mukhi Rudraksha beads collection from Nepal and Java. Buy original, quality, handpicked twenty mukhi Rudraksha in thread, silver caps at best price.\r\n'),
(48, '10', '21 mukhi Rudraksha', 'Active', '1712127216_21_mukhi_rudraksha_thumb.jpg', '21 mukhi Rudraksha Category', '2024-04-03 06:53:36', '5', 'Buy 21 mukhi Rudraksha from Nepal, Java at Best Prices', '21 mukhi Rudraksha', '21 mukhi Rudraksha beads collection from Nepal and Java. Buy original, quality, handpicked 21 mukhi Rudraksha in thread, silver caps at best price.\r\n'),
(49, '10', 'Gauri Shankar Rudraksha', 'Active', '1712127249_gauri_shankar_rudraksha_thumb.jpg', 'Gauri Shankar Rudraksha Category', '2024-04-03 06:54:09', '5', 'Buy Gauri Shankar Rudraksha from Nepal, Java at Best Prices', 'Gauri Shankar Rudraksha', 'Gauri Shankar Rudraksha beads collection from Nepal and Java. Buy original, quality, handpicked Gauri Shankar Rudraksh in thread, silver caps at best price\r\n'),
(50, '10', 'Ganesh Rudraksha', 'Active', '1712127273_ganesh_rudraksha_thumb.jpg', 'Ganesh Rudraksha Category', '2024-04-03 06:54:33', '5', 'Buy Ganesh Rudraksha from Nepal, Java at Best Prices', 'Ganesh Rudraksha', 'Ganesh Rudraksha beads collection from Nepal and Java. Buy original, quality, handpicked Ganesh Rudraksha in thread, silver caps at best price.\r\n'),
(51, '10', 'Savar Naag Rudraksha', 'Active', '1712127303_savar_naag_rudraksha_thumb.jpg', 'Savar Naag Rudraksha Category', '2024-04-03 06:55:03', '5', 'Buy Savar Naag Rudraksha from Nepal, Java at Best Prices', 'Savar Naag Rudraksha', 'Savar Naag Rudraksha beads collection from Nepal and Java. Buy original, quality, handpicked Sawar Naag Rudraksha in thread, silver caps at best price.\r\n'),
(52, '10', 'Trijuti Rudraksha', 'Active', '1712127336_trijuti_rudraksha_thumb.jpg', 'Trijuti Rudraksha Category', '2024-04-03 06:55:36', '5', 'Buy Trijuti Rudraksha from Nepal, Java at Best Prices', 'Trijuti Rudraksha ', 'Trijuti Rudraksha beads collection from Nepal and Java. Buy original, quality, handpicked Trijuti Rudraksha in thread, silver caps at best price.\r\n'),
(53, '10', 'Garb Gauri Rudraksha', 'Active', '1712127363_garb_gauri_rudraksha_thumb.jpg', 'Garb Gauri Rudraksha Category', '2024-04-03 06:56:03', '5', 'Buy Garb Gauri Rudraksha from Nepal, Java at Best Prices', 'Garb Gauri Rudraksha', 'Garb Gauri Rudraksha beads collection from Nepal and Java. Buy original, quality, handpicked Garb Gauri Rudraksha in thread, silver caps at best price.\r\n'),
(54, '10', 'Other Rudraksha Products', 'Active', '1712127414_other_rudraksha_products_thumb.jpg', 'Rudraksha Bags, Caps, Mats, Fruits Category', '2024-04-03 06:56:54', '5', 'Buy Rudraksha Bags, Caps, Mats, Fruits at Best Prices', 'Rudraksha Bags, Caps, Mats, Fruits', 'Best quality Rudraksha products made from genuine, premium Rudraksha beads. Buy online Rudraksha products such as Bags, Caps, Mats, Fruits and more.\r\n'),
(55, '14', 'Siddha Mala (1 - 14 mukhi)', 'Active', '1712127619_siddha_mala_thumb.jpg', 'Siddha Mala Category', '2024-04-03 07:00:19', '5', 'Siddha Mala made using 1 - 14 mukhi Rudraksha Beads', 'Siddha Mala', 'Siddha Mala strung in thread and silver as described in Shiv Purana. Made using best quality 1 - 14 mukhi Rudraksha beads from Nepal and Java.  \r\n'),
(56, '14', 'Indra Mala (1 - 21 mukhi)', 'Active', '1712127646_indra_mala_thumb.jpg', 'Indra Mala Category', '2024-04-03 07:00:46', '5', 'Indra Mala made using 1 - 21 mukhi Rudraksha Beads', 'Indra Mala', 'Indra Mala strung in thread and silver as described in Katyayani tantra. Made using best quality 1 - 21 mukhi Rudraksha beads from Nepal and Java.\r\n'),
(57, '11', 'Rudraksha Mala in Thread (Japa Mala)', 'Active', '1712127810_rudraksha_mala_in_thread_thumb.jpg', 'Rudraksha Mala in Thread Category', '2024-04-03 07:03:30', '5', 'Buy Rudraksha Malas in thread for Japa and Wearing', 'Rudraksha Mala in Thread', 'Original Rudraksha Malas strung in thread for Japa and Wearing purposes. Buy 108 + 1 beads Rudraksha Mala made using handpicked, quality beads.\r\n'),
(58, '11', 'Rudraksha Mala in Copper', 'Active', '1712127840_rudraksha_mala_in_copper_thumb.jpg', 'Rudraksha Mala in Copper Category', '2024-04-03 07:04:00', '5', 'Buy Best Quality Rudraksha Malas in Copper Caps', 'Rudraksha Mala in Copper', 'Best quality Rudraksha Malas with pure copper caps for enhanced benefits. Rudraksha Mala in Copper are made using authentic, handpicked Rudraksha. \r\n'),
(59, '11', 'Rudraksha Mala in Silver', 'Active', '1712127873_rudraksha_mala_in_silver_thumb.jpg', 'Rudraksha Mala in Silver Category', '2024-04-03 07:04:33', '5', 'Buy Best Quality Rudraksha Malas in Silver Caps', 'Rudraksha Mala in Silver', 'Premium quality Rudraksha Malas with 925 silver caps for enhanced benefits. Rudraksha Mala in Silver are made using authentic, handpicked Rudraksha. \r\n'),
(60, '11', 'Rudraksha Mala in Gold', 'Active', '1712127914_rudraksha_mala_in_gold_thumb.jpg', 'Rudraksha Mala in Gold Category', '2024-04-03 07:05:14', '5', 'Buy Premium Quality Rudraksha Malas in Gold Caps', 'Rudraksha Mala in Gold', 'Best quality Rudraksha Malas with 22k gold caps for enhanced benefits. Rudraksha Mala in Gold are made using authentic, handpicked Rudraksha. \r\n'),
(61, '11', 'Mukhi Malas', 'Active', '1712127947_mukhi_malas_thumb.jpg', 'Mukhi Malas Category', '2024-04-03 07:05:47', '5', 'Buy Rudraksha Malas of 1 - 14 mukhi Premium Beads', 'Mukhi Malas', 'Original Rudraksha Mukhi Malas made using different mukhi beads. Buy 108 + 1 beads Rudraksha Mukhi Malas made using handpicked, quality beads.\r\n'),
(62, '11', 'Rudraksha Blended Malas', 'Active', '1712127983_rudraksha_blended_malas_thumb.jpg', 'Rudraksha Blended Mala Category', '2024-04-03 07:06:23', '5', 'Customized Premium Rudraksha Malas with Gemstone Beads', 'Rudraksha Blended Mala', 'Rudraksha Malas made using different Rudraksha, gemstone and other beads. Buy Rudraksha Blended Malas made using handpicked, quality beads.    \r\n'),
(64, '12', 'Rudraksha Bracelet in Thread', 'Active', '1712128116_rudraksha_bracelet_in_thread_thumb.jpg', 'Rudraksha Bracelet in Thread Category', '2024-04-03 07:08:36', '5', 'Buy Quality Rudraksha Bracelets in Various Designs', 'Rudraksha Bracelet in Thread', 'Quality Rudraksha Bracelets in different designs strung in thread. Rudraksha Bracelets in Copper made using authentic, handpicked Rudraksha beads.\r\n'),
(65, '12', 'Rudraksha Bracelet in Copper', 'Active', '1712128153_rudraksha_bracelet_in_copper_thumb.jpg', 'Rudraksha Bracelet in Copper Category', '2024-04-03 07:09:13', '5', 'Buy Quality Rudraksha Bracelets in Copper Caps', 'Rudraksha Bracelet in Copper', 'Best quality Rudraksha Bracelets with pure copper caps for enhanced benefits. Rudraksha Bracelets in Copper made using handpicked Rudraksha.\r\n'),
(66, '12', 'Rudraksha Bracelet in Silver', 'Active', '1712128212_rudraksha_bracelet_in_silver_thumb.jpg', 'Rudraksha Bracelet in Silver Category', '2024-04-03 07:10:12', '5', 'Buy Premium Rudraksha Bracelets in Silver Caps', 'Rudraksha Bracelet in Silver', 'Top quality Rudraksha Bracelets with 925 silver caps for enhanced benefits. Rudraksha Bracelets in Silver made using authentic, handpicked Rudraksh\r\n'),
(67, '12', 'Rudraksha Bracelet in Gold', 'Active', '1712128250_rudraksha_bracelet_in_gold_thumb.jpg', 'Rudraksha Bracelet in Gold Category', '2024-04-03 07:10:50', '5', 'Buy Quality Rudraksha Bracelets in Gold Caps', 'Rudraksha Bracelet in Gold', 'Best quality Rudraksha Bracelets with 22k gold caps for enhanced benefits. Rudraksha Bracelets in Gold made using authentic, handpicked Rudraksha.\r\n'),
(68, '12', 'Mukhi Bracelets', 'Active', '1712128308_mukhi_bracelets_thumb.jpg', 'Mukhi Bracelets Category', '2024-04-03 07:11:48', '5', 'Buy Rudraksha Bracelets of 1 - 14 mukhi Premium Beads', 'Mukhi Bracelets', 'Original Rudraksha Mukhi Bracelets made using different mukhi beads. Buy 108 + 1 beads Rudraksha Mukhi Bracelets made using handpicked, quality beads.\r\n'),
(69, '12', 'Rudraksha Blended Bracelets', 'Active', '1712128330_rudraksha_blended_bracelets_thumb.jpg', 'Rudraksha Blended Bracelets Category', '2024-04-03 07:12:10', '5', 'Customized Premium Rudraksha Bracelets with Gemstone Beads', 'Rudraksha Blended Bracelets', 'Rudraksha Bracelets made using different Rudraksha, gemstone and other beads. Buy Rudraksha Blended Bracelets made using handpicked, quality beads.    \r\n'),
(70, '13', 'Planetary Dosh Nivaran', 'Active', '1712128873_planetary_dosh_nivaran_thumb.jpg', 'Planetary Dosh Nivaran Rudraksha Category', '2024-04-03 07:21:13', '5', 'Buy Rudraksha Bead Combinations for Planetary Dosha', 'Planetary Dosh Nivaran Rudraksha', 'Buy Rudraksha Bead Combinations for Planetary Dosha. Powerful Rudraksha Combinations for Kaal Sarp Dosha, Mangal Dosha, Shani Dosh, Shrapit Dosha\r\n'),
(71, '13', 'Business Growth', 'Active', '1712128905_business_growth_thumb.jpg', 'Business Growth Rudraksha Combination', '2024-04-03 07:21:45', '5', 'Buy Rudraksha Bead Combinations for Business Growth', 'Business Growth Rudraksha', 'Powerful combination of Rudraksha beads that bless the wearer with Business Growth. Different mukhi beads used are original and of best quality\r\n'),
(73, '13', 'Good Luck, Fortune', 'Active', '1712128990_good_luck_fortune_thumb.jpg', 'Good Luck, Fortune Rudraksha Category', '2024-04-03 07:23:10', '5', 'Buy Rudraksha Bead Combinations for Good Luck, Fortune', 'Good Luck, Fortune Rudraksha', 'Powerful combination of Rudraksha beads that bless the wearer with good fortune. Different mukhi beads used are original and of best quality\r\n'),
(74, '13', 'Health, Protection', 'Active', '1712129025_health_protection_thumb.jpg', 'Health, Protection Rudraksha Category', '2024-04-03 07:23:45', '5', 'Buy Rudraksha Bead Combinations for Health, Protection', 'Health, Protection Rudraksha ', 'Powerful combination of Rudraksha beads that bless the wearer with good health. Different mukhi beads used are original and of best quality\r\n'),
(75, '13', 'Love, Marriage, Relationships', 'Active', '1712129062_love_marriage_relationships_thumb.jpg', 'Love, Marriage, Relationships Rudraksha Category', '2024-04-03 07:24:22', '5', 'Buy Rudraksha Bead Combinations for Marriage, Relationships', 'Love, Marriage, Relationships Rudraksha', 'Powerful combination of Rudraksha beads that bless the wearer with cordial relationships. Different mukhi beads used are original and of best quality\r\n'),
(76, '13', 'Name, Fame, Power', 'Active', '1712129094_name_fame_power_thumb.jpg', 'Name, Fame, Power Rudraksha Category', '2024-04-03 07:24:54', '5', 'Buy Rudraksha Bead Combinations for Name, Fame, Power', 'Name, Fame, Power Rudraksha', 'Powerful combination of Rudraksha beads that bless the wearer with name, fame. Different mukhi beads used are original and of best quality\r\n'),
(77, '13', 'Prosperity, Wealth, Abundance', 'Active', '1712129126_prosperity_wealth_abundance_thumb.jpg', 'Prosperity, Wealth, Abundance Rudraksha Category', '2024-04-03 07:25:26', '5', 'Buy Rudraksha Bead Combinations for Prosperity, Wealth, Abundance', 'Prosperity, Wealth, Abundance Rudraksha', 'Powerful combination of Rudraksha beads that bless the wearer with wealth, riches. Different mukhi beads used are original and of best quality\r\n'),
(78, '13', 'Spiritual Growth', 'Active', '1712129165_spiritual_growth_thumb.jpg', 'Spiritual Growth Rudraksha Category', '2024-04-03 07:26:05', '5', 'Buy Rudraksha Bead Combinations for Spiritual Growth', 'Spiritual Growth Rudraksha', 'Powerful combination of Rudraksha beads that bless the wearer with spiritual growth. Different mukhi beads used are original and of best quality\r\n'),
(79, '13', 'Wisdom, Knowledge, Confidence', 'Active', '1712129205_wisdom_knowledge_confidence_thumb.jpg', 'Wisdom, Knowledge, Confidence Rudraksha Category', '2024-04-03 07:26:45', '5', 'Buy Rudraksha Bead Combinations for Wisdom, Knowledge, Confidence', 'Wisdom, Knowledge, Confidence Rudraksha', 'Powerful combination of Rudraksha beads that bless the wearer with wisdom, knowledge. Different mukhi beads used are original and of best quality\r\n'),
(80, '11', 'Rudraksha Kantha', 'Active', '1712130290_rudraksha_kantha_thumb.jpg', 'Rudraksha Kantha Category', '2024-04-03 07:44:50', '5', 'Buy Rudraksha Kantha made from Handpicked Beads', 'Rudraksha Kantha', 'Top quality Rudraksha Kanthas made from choicest of premium quality Rudraksha beads. Rudraksha Kanthas and Kanthis are powerful tools for growth.\r\n'),
(81, '13', 'Career Growth', 'Active', '1712130333_career_growth_thumb.jpg', 'Career Growth Rudraksha Category', '2024-04-03 07:45:33', '5', 'Buy Rudraksha Bead Combinations for Career Growth', 'Career Growth Rudraksha', 'Powerful combination of Rudraksha beads that bless the wearer with Career Growth. Different mukhi beads used are original and of best quality\r\n'),
(82, '17', 'Lord Krishna Pujas', 'Active', '1719298710_krishna_pujas_thumb.jpg', 'Pujas of Lord Krishna', '2024-06-25 06:58:30', '7', 'Book Lord Krishna Pujas, Yajnas Online to Seek Divine Blessings', 'Krishna Pujas, Santan Gopal Puja, Laddu Gopal Puja, Bal Gopal Puja', 'Lord Krishna Pujas, Yajnas for blessings of good health, prosperity, protection and success. Conduct different Puja of Lord Krishna for His various manifestations. '),
(83, '16', 'Tiger\'s Eye', 'Active', '1719501555_tigers_eye_thumb.jpg', 'Tiger\'s Eye Stone Category', '2024-06-27 15:19:15', '6', 'Buy Tiger\'s Eye Stone, Natural & Original at Best Price', 'Tiger\'s Eye Stone', 'Tiger\'s Eye stone of various carats online at best prices. Buy natural, non-heated, non-treated, jyotish quality Tiger\'s Eye gemstone.'),
(84, '16', 'Red Garnet', 'Active', '1719501634_red_garnet_thumb.jpg', 'Red Garnet gemstone Category', '2024-06-27 15:20:34', '6', 'Buy Red Garnet Stone, Natural & Original at Best Price', 'Red Garnet', 'Red Garnet stone of various carats online at best prices. Buy natural, non-heated, non-treated, jyotish quality Red Garnet gemstone.\r\n'),
(85, '16', 'Red Carnelian', 'Active', '1719501684_red_carnelian_thumb.jpg', 'Red Carnelian Stone Category', '2024-06-27 15:21:24', '6', 'Buy Red Carnelian Stone, Natural & Original at Best Price', 'Red Carnelian', 'Red Carnelian stone of various carats online at best prices. Buy natural, non-heated, non-treated, jyotish quality Red Carnelian gemstone.\r\n'),
(86, '16', 'Red Jasper', 'Active', '1719501873_red_jasper_thumb.jpg', 'Red Jasper Stone description', '2024-06-27 15:24:33', '6', 'Buy Red Jasper Stone, Natural & Original at Best Price', 'Red Jasper', 'Red Jasper stone of various carats online at best prices. Buy natural, non-heated, non-treated, jyotish quality Red Jasper gemstone.\r\n'),
(87, '16', 'Orange Garnet', 'Active', '1719501935_orange__garnet_thumb.jpg', 'Orange Garnet Gemstone Category', '2024-06-27 15:25:35', '6', 'Buy Orange Garnet Stone, Natural & Original at Best Price', 'Orange Garnet', 'Orange Garnet stone of various carats online at best prices. Buy natural, non-heated, non-treated, jyotish quality Orange Garnet gemstone.\r\n'),
(88, '17', 'Lord Ganesha Pujas', 'Active', '1719502296_ganesh_puja_thumb.jpg', 'Lord Ganesha Pujas Category', '2024-06-27 15:31:36', '7', 'Book Online Pujas, Yagnas of Lord Ganesha for Divine Blessings', 'Lord Ganesha Pujas', 'Perform Pujas, Yajnas of Lord Ganesha Online for blessings of knowledge and wisdom. Lord Ganesha is the God of auspicious beginnings and remover of obstacles.\r\n'),
(89, '17', 'Lord Rama Pujas', 'Active', '1719502329_ram_puja_thumb.jpg', 'Lord Rama Pujas Category', '2024-06-27 15:32:09', '7', 'Book Online Pujas, Yagnas of Lord Rama for Divine Blessings', 'Lord Rama Pujas', 'Book Pujas, Yajnas of Lord Ram Online for blessings of protection and prosperity. Lord Ram is manifestation of Vishnu, He is embodiment of truth and Dharma.\r\n'),
(90, '17', 'Lord Hanuman Pujas', 'Active', '1719502358_hanuman_puja_thumb.jpg', 'Lord Hanuman Pujas Category', '2024-06-27 15:32:38', '7', 'Book Online Pujas, Yagnas of Lord Hanuman for Divine Blessings', 'Lord Hanuman Pujas', 'Conduct Pujas, Yajnas of Lord Hanuman Online for blessings of Power and Success. Lord Hanuman is worshipped for physical and mental strength and victory.\r\n'),
(91, '17', 'Lord Vishnu Pujas', 'Active', '1719502395_vishnu_puja_thumb.jpg', 'Lord Vishnu Pujas Category', '2024-06-27 15:33:15', '7', 'Book Online Pujas, Yagnas of Lord Vishnu for Divine Blessings', 'Lord Vishnu Pujas', 'Book Pujas, Yajnas of Lord Vishnu Online for blessings of health, wealth and success. Lord Vishnu is Para Brahman or Supreme Truth, He is source of all creation.\r\n'),
(92, '17', 'Lord Shiva Pujas', 'Active', '1719502427_shiva_puja_thumb.jpg', 'Lord Shiva Pujas Category', '2024-06-27 15:33:47', '7', 'Book Online Pujas, Yagnas of Lord Shiva for Divine Blessings', 'Lord Shiva Pujas', 'Book Online Pujas, Yagnas of Lord Shiva for Divine Blessings\r\n'),
(93, '17', 'Lord Kuber Pujas', 'Active', '1719502463_kuber_puja_thumb.jpg', 'Lord Kuber Pujas Category', '2024-06-27 15:34:23', '7', 'Book Online Pujas, Yagnas of Lord Kuber for Divine Blessings', 'Lord Kuber Pujas', 'Conduct Pujas, Yajnas of Lord Kuber Online for blessings of Wealth and Prosperity. Kuber is God of wealth He is worshipped for material riches and comforts.\r\n'),
(94, '17', 'Goddess Durga Pujas', 'Active', '1719502497_durga_puja_thumb.jpg', 'Goddess Durga Pujas Category', '2024-06-27 15:34:57', '7', 'Book Online Pujas, Yagnas of Maa Durga for Her Divine Blessings', 'Goddess Durga Pujas', 'Perform Pujas, Yajnas of Goddess Durga Online for blessings of power and victory. Goddess Durga is worshiped in Her nine forms (Navdurga) during Navratri.\r\n'),
(95, '17', 'Goddess Laxmi Pujas', 'Active', '1719502535_laxmi_puja_thumb.jpg', 'Goddess Laxmi Pujas Category', '2024-06-27 15:35:35', '7', 'Book Online Pujas, Yagnas of Maa Laxmi for Her Divine Blessings', 'Goddess Laxmi Pujas', 'Conduct Pujas, Yajnas of Goddess Laxmi Online for blessings of wealth and prosperity. Goddess Laxmi is the Goddess of wealth, She is consort of Lord Vishnu.\r\n'),
(96, '17', 'Goddess Shakti Pujas', 'Active', '1719502576_shakti_puja_thumb.jpg', 'Goddess Shakti Pujas Category', '2024-06-27 15:36:16', '7', 'Book Online Pujas, Yagnas of Maa Shakti for Her Divine Blessings', 'Goddess Shakti Pujas', 'Book Pujas, Yajnas of Goddess Shakti Online for blessings of health, wealth and success. Goddess Shakti is Para Brahman or Supreme Power for Her devotees.\r\n'),
(97, '17', 'Goddess Saraswati Pujas', 'Active', '1719502609_saraswati_puja_thumb.jpg', 'Goddess Saraswati Pujas Category', '2024-06-27 15:36:49', '7', 'Book Online Pujas, Yagnas of Maa Saraswati for Her Divine Blessings', 'Goddess Saraswati Pujas', 'Perform Pujas, Yajnas of Goddess Saraswati Online for blessings of knowledge and wisdom. Goddess Saraswati is the Goddess of education, fine arts and intellect.\r\n'),
(98, '17', 'Other Deity Pujas', 'Active', '1719502646_other_deity_puja_thumb.jpg', 'Pujas of other Gods and Goddesses ', '2024-06-27 15:37:26', '7', 'Book Online Pujas, Yagnas of Various Gods and Goddesses', 'Other Deity Pujas', 'Book Pujas, Yajnas of Various Gods and Goddesses Online to seek their blessings for different benefits. Book and conduct Pujas and Yajnas remotely.\r\n'),
(99, '16', 'Green Malachite', 'Active', '1722496308_kidney_stone_thumb.jpg', 'Green Malachite Category', '2024-08-01 07:11:48', '6', 'Buy Green Malachite (Kidney Stone) Gemstone, Natural & Original at Best Price', 'Green Malachite, Kidney Stone Gemstone', 'Green Malachite (Kidney Stone) of various carats online at best prices. Buy natural, non-heated, non-treated, jyotish quality Kidney Stone Gemstone.\r\n'),
(100, '16', 'Serpentine', 'Active', '1722496341_serpentine_thumb.jpg', 'Serpentine Category', '2024-08-01 07:12:21', '6', 'Buy Serpentine Gemstone, Natural & Original at Best Price', 'Serpentine', 'Serpentine Gemstone of various carats online at best prices. Buy natural, non-heated, non-treated, jyotish quality Serpentine Gemstone.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) NOT NULL,
  `username` mediumtext DEFAULT NULL,
  `password` longtext DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `date_time` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('Active','Inactive') DEFAULT 'Inactive',
  `remember_me_token` longtext NOT NULL,
  `token_expiration` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`, `date_time`, `status`, `remember_me_token`, `token_expiration`) VALUES
(1, 'Anurag', '$2y$10$LQVIZWrJgqzBjxdWPfwdpOQZN0zGbGOT0EXfxM3rUJMjNssYW.Ley', 'fireurimagination@gmail.com', '2024-07-30 10:19:28', 'Active', '554c34635b77d4dac65c353cc0193488efd6df7e1ccc1aab4352c2ad52c5a1d3', '1712846271');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL,
  `Category` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`id`, `Category`, `status`) VALUES
(1, 'Rudraksha', 'Active'),
(7, 'Gemstones', 'Active'),
(8, 'Festivals', 'Active'),
(9, 'Vedic Astrology', 'Active'),
(10, 'Yantra', 'Active'),
(11, 'Ask Punditji', 'Active'),
(12, 'Crystals', 'Active'),
(13, 'Gods and Goddesses', 'Active'),
(14, 'Puja, Yagna and Samskaras', 'Active'),
(15, 'Temples and Pilgrimages', 'Active'),
(16, 'Vedic Scriptures', 'Active'),
(17, 'Spiritual Sciences', 'Active'),
(18, 'Bhakti Yog', 'Active'),
(19, 'Yoga and Meditation', 'Active'),
(20, 'Sacred Articles', 'Active'),
(21, 'Vedic Wisdom', 'Active'),
(22, 'Holistic Healing', 'Active'),
(23, 'History and Culture', 'Active'),
(24, 'Panchang and Hindu Calendar', 'Active'),
(25, 'Miscellaneous', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `blog_page`
--

CREATE TABLE `blog_page` (
  `id` int(11) NOT NULL,
  `name_title` longtext CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `content` longtext NOT NULL,
  `blog_date` varchar(255) NOT NULL,
  `Blog_category` varchar(255) NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `meta_description` longtext NOT NULL,
  `meta_keyword` longtext NOT NULL,
  `meta_title` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `blog_page`
--

INSERT INTO `blog_page` (`id`, `name_title`, `content`, `blog_date`, `Blog_category`, `image`, `meta_description`, `meta_keyword`, `meta_title`) VALUES
(6, 'Secrets of Garuda Purana', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla maximus vel ipsum sit amet scelerisque. Aenean ac molestie ipsum. Aenean nisi metus, auctor ac blandit ut, venenatis in dolor. Mauris tristique gravida justo ut consectetur. Maecenas eleifend libero id eleifend dignissim. Nam luctus felis eros, eu porta turpis euismod id. Fusce at ex ligula. Sed semper eget diam ac vestibulum. Praesent augue sem, eleifend ac rutrum quis, convallis eleifend mi. Vivamus feugiat porttitor molestie. Aliquam erat volutpat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '24-08-01', '16', '1722493792_secrets-of-garuda-purana.jpg', 'Secrets of Garuda Purana', 'Garuda Purana', 'Secrets of Garuda Purana'),
(7, 'What are Angel Numbers', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla maximus vel ipsum sit amet scelerisque. Aenean ac molestie ipsum. Aenean nisi metus, auctor ac blandit ut, venenatis in dolor. Mauris tristique gravida justo ut consectetur. Maecenas eleifend libero id eleifend dignissim. Nam luctus felis eros, eu porta turpis euismod id. Fusce at ex ligula. Sed semper eget diam ac vestibulum. Praesent augue sem, eleifend ac rutrum quis, convallis eleifend mi. Vivamus feugiat porttitor molestie. Aliquam erat volutpat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '24-08-01', '17', '1722493843_what-are-angel-numbers.jpg', 'What are Angel Numbers', 'Angel Numbers', 'What are Angel Numbers'),
(8, 'Sacred Symbols in Hinduism', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla maximus vel ipsum sit amet scelerisque. Aenean ac molestie ipsum. Aenean nisi metus, auctor ac blandit ut, venenatis in dolor. Mauris tristique gravida justo ut consectetur. Maecenas eleifend libero id eleifend dignissim. Nam luctus felis eros, eu porta turpis euismod id. Fusce at ex ligula. Sed semper eget diam ac vestibulum. Praesent augue sem, eleifend ac rutrum quis, convallis eleifend mi. Vivamus feugiat porttitor molestie. Aliquam erat volutpat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '24-08-01', '23', '1722493871_auspicious-sacred-symbols.jpg', 'Sacred Symbols in Hinduism', 'Sacred Symbols in Hinduism', 'Sacred Symbols in Hinduism'),
(9, 'Human Energy System as per Vedic Scriptures', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla maximus vel ipsum sit amet scelerisque. Aenean ac molestie ipsum. Aenean nisi metus, auctor ac blandit ut, venenatis in dolor. Mauris tristique gravida justo ut consectetur. Maecenas eleifend libero id eleifend dignissim. Nam luctus felis eros, eu porta turpis euismod id. Fusce at ex ligula. Sed semper eget diam ac vestibulum. Praesent augue sem, eleifend ac rutrum quis, convallis eleifend mi. Vivamus feugiat porttitor molestie. Aliquam erat volutpat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '24-08-01', '21', '1722493903_human-energy-system.jpg', 'Human Energy System as per Vedic Scriptures', 'Human Energy System as per Vedic Scriptures', 'Human Energy System as per Vedic Scriptures'),
(10, 'Top Most Powerful Healing Crystals', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla maximus vel ipsum sit amet scelerisque. Aenean ac molestie ipsum. Aenean nisi metus, auctor ac blandit ut, venenatis in dolor. Mauris tristique gravida justo ut consectetur. Maecenas eleifend libero id eleifend dignissim. Nam luctus felis eros, eu porta turpis euismod id. Fusce at ex ligula. Sed semper eget diam ac vestibulum. Praesent augue sem, eleifend ac rutrum quis, convallis eleifend mi. Vivamus feugiat porttitor molestie. Aliquam erat volutpat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '24-08-01', '12', '1722494385_powerful-healing-crystals.jpg', 'Top Most Powerful Healing Crystals', 'Top Most Powerful Healing Crystals', 'Top Most Powerful Healing Crystals'),
(5, 'Science of Numerology', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla maximus vel ipsum sit amet scelerisque. Aenean ac molestie ipsum. Aenean nisi metus, auctor ac blandit ut, venenatis in dolor. Mauris tristique gravida justo ut consectetur. Maecenas eleifend libero id eleifend dignissim. Nam luctus felis eros, eu porta turpis euismod id. Fusce at ex ligula. Sed semper eget diam ac vestibulum. Praesent augue sem, eleifend ac rutrum quis, convallis eleifend mi. Vivamus feugiat porttitor molestie. Aliquam erat volutpat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p><p><br></p><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '24-08-01', '17', '1722493758_science-of-numerology.jpg', 'Science of Numerology', 'Numerology', 'Science of Numerology'),
(3, 'Enchanting Durga Puja of Kolkata', '<p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%\">Durga\r\nPuja is undoubtedly one of the most joyful and grandest times in the city of Kolkata.\r\nDurga Puja is not just a festival, but an emotion in which the entire city of joy\r\ngets immersed. The festival is much more than just a festival or a ritual of\r\nwelcoming Maa Durga, it is something that touches the hearts, souls and the vet\r\nessence of every resident inhabiting the city. One of the most important and auspicious\r\nfestivals of Sanatan Dharma, Durga Puja is a Divine spectacle for which the\r\nresidents of Kolkata wait for the entire year. The festival is an intangible\r\npart of Bengali culture, which encompasses ancient heritage. The festival is\r\nlike a gala event that breathes new life into the city and it transforms into\r\nan artistic fairyland with magnificent pandals and dazzling idols of Maa Durga,\r\nmostly accompanied by Maa Saraswati, Lord Ganesh, Lord Karthik, and Maa Laxmi. Mahishasura\r\nMardini, which is another name of Maa Durga is the ultimate symbol of triumph\r\nof good over evil and Dharma over Adharma.&nbsp;\r\n&nbsp;<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%;\r\nmso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin\">As per Legends\r\nmentioned in ancient scriptures, Maa Durga slayed the shape-shifting mighty buffalo\r\ndemon Mahishasura after a long and fierce battle. Maa Durga <span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">vanquished&nbsp;</span> Mahishasura on the day of\r\nVijay Dashami after a battle that lasted ten days. The legend of Maa Durga and\r\nMahishasur is narated in the Devi Mahatmya, which is a part of Markandeya\r\nPurana. &nbsp;</span><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%\">Durga Puja, apart from its religious,\r\nspiritual and devotional significance, also has a deeper impact on the\r\ngeographic culture of Kolkata and West Bengal, its food, and mainly its\r\nhistory. </span><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%;\r\nmso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin\"><o:p></o:p></span></p><p class=\"MsoNormal\"><b><span lang=\"EN-US\" style=\"font-size:16.0pt;line-height:\r\n107%\">History of Durga Puja <o:p></o:p></span></b></p><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%\">Durga\r\npuja in Kolkata starts with the onset of Mahalaya, which signifies the end of Pitru\r\nPaksha. With Mahalaya, the festival of Navratri also begins, which marks the\r\nbeginning of Durga Puja. During the eve of Navratri, the nine forms of Maa\r\nDurga are being worshipped, and each one has its unique significance. Durga Puja\r\nfalls in the Hindu month of Ashwin (usually in September - October). It is believed\r\nthat Lord Rama worshipped and performed the puja of Maa Durga before he went\r\nout to war against Ravana. Since this ritual was performed in the autumn and\r\nwas different from the traditional Durga Puja that happens during the spring\r\nseason (Basant), it is called akal-bodhan puja. The term akal-bodhan means akal\r\n(out of season) and bodhan (worship). <o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%\">The\r\nDurga Puja in Kolkata and in West Bengal still resembles the Durga of Aihole\r\nand Mahabalipuram which dates back to the 7th century. Maa Durga along with her\r\nfour children (Kartika, Ganesha, Saraswati and Lakshmi) are seen as the supreme\r\nprotector and the provider of health, wealth, prosperity and knowledge. It is\r\nbelieved that Maa Durga with her children come to Her father’s house from\r\nKailash, which is the abode of Lord Shiva, Her husband. She stays here for nine\r\ndays of the Navratri festivities, and on the tenth day (Vijay Dashami), She\r\nreturns back to Her home. Thus, Durga Puja is almost like welcoming the\r\ndaughter to her home, and the puja is more like a family affair. <o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%\">There\r\nis an interesting story behind the question - who started the Durga Puja in\r\nKolkata? The Durga Puja origin in West Bengal can be credited to the twelve\r\nfriends of Guptipara of Hooghly district. They collaborated and raised\r\ncollections from the local residents to begin the first community Durga Puja,\r\nwhich was called as ‘Baro-Yari Puja’ or the puja of the twelve friends. The\r\nconcept of Baro-Yari Puja was brought to the city of Kolkata by Raja Harinath of\r\nCossimbazar, who mainly performed puja earlier in his ancestral home at\r\nMurshidabad district from 1824 to 1831. The concept of Baro-Yaari puja paved\r\nthe way for the Sarbojanin Durga Puja or community puja in 1910. It started\r\nwhen Sanatan Dharmotsahini Sabha organized the first truly community puja in\r\nBaghbazar, Kolkata. It had full people’s contribution, people’s participation,\r\nand also people’s control. <o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%\">Today,\r\nDurga Puja has an immense influence on the culture and traditions of Kolkata\r\nand West Bengal which can be noticed even in the daily lives of people. Durga\r\nPuja is just not limited to the Bengali community but people from all sects of\r\nthe society come collectively to celebrate this Divine grand festival.<o:p></o:p></span></p><p class=\"MsoNormal\"><b><span lang=\"EN-US\" style=\"font-size:16.0pt;line-height:\r\n107%\">How is Durga Puja celebrated in Kolkata?<o:p></o:p></span></b></p><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%\">The\r\npreparations for the grand festival are also colossal just like the magnitude\r\nof its traditional values. The work of initiating and preparing for the\r\nfestivities starts months before the actual festival. A blueprint is prepared in\r\nwhich each and every detail is taken care of, right from making of the idols,\r\nsetting up the pandals, decking up the decorations, and deciding the themes for\r\neach Puja pandal. The heritage and art of Durga Puja have attracted the entire\r\nworld towards itself, which was finally recognized by UNESCO as a tangible\r\nworld heritage in 2021. <o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%\">There\r\nare hundreds of clubs and organizations in the city that conduct the Durga\r\npuja. Many of them are renowned and attract a heavy amount of crowds every year\r\ndue to their unique themes, designs and cultural programs. The idols of Maa\r\nDurga are made in the narrow lanes of Kumartuli, also known as the potter’s\r\ncolony. This area is famous for making idols for every puja and other festivals.\r\nDurga Idols are made from eco-friendly materials, primarily straw, hay, dry\r\ngrass and clay. It takes months to give shape to Maa Durga and other idols of\r\nLaxmi, Ganesh, Saraswati, and Karthik before sending them off to their\r\nrespective pandals. There are some famous sculptors whose idols are not only in\r\ndemand in Kolkata or West Bengal but also in other parts of India and abroad as\r\nwell. <o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%\">The\r\nidols are of various designs, shapes and sizes. They are easily the most\r\nimportant part of the festival and months of hard work goes into giving them\r\nshape. Some idols are customized and are prepared in accordance with the theme\r\nof the particular pandals. On the other end, the construction of the pandals\r\nalso begins almost a month or two prior to the festival. These pandals are\r\nbeing made based on the different theme designs which are picked by the\r\norganizing committees. Durga pandals in Kolkata are considered as masterpieces\r\nof artwork and imagination. The themes of the pandals are generally a\r\nresemblance of some famous place, some unique design of the creator or on the\r\nbasis of some social and devotional message. Many of these pandals are huge in\r\nsize and are stunningly beautiful. They are like an art gallery whose beauty\r\ncannot be described just by using words. <o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%\">The\r\npandals are constructed with the teamwork of carpenters, decorators, artists,\r\npainters, and even set designers who give shape to these artistic structures.\r\nThey are the home of Maa Durga for the next nine days of the festival and the\r\nplace for devotees to visit and worship Maa Shakti. The streets of Kolkata also\r\nget an equal share of decoration and are decked with advertising banners and\r\ncolorful designer lights which change their appearance completely. The nights\r\nof Durga Puja look especially stunning as the combination of the decorative\r\nlights, pandals, and illumination across the city makes it look like a\r\nwonderland. The city is enveloped in a Divine aura and on the morning of\r\nMahalaya, with the chants of Mahishasura Mardini on the radio by Birendra\r\nKrishna Bhadra, the festival kicks off, starting nine days of extravaganza and\r\ndevotion.<o:p></o:p></span></p><p class=\"MsoNormal\"><b><span lang=\"EN-US\" style=\"font-size:14.0pt;line-height:\r\n107%\">Nine days of Durga Puja and its significance <o:p></o:p></span></b></p><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%;\r\nmso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin\">The Durga Puja\r\nstarts with Navratri and it is celebrated throughout the nine/ten days,\r\nworshipping nine different forms of Maa Durga. The last five/six days of the\r\nfestival namely Panchami, Shashthi, Saptami, Ashtami, Nabami and Dashami a<span style=\"color: rgb(32, 33, 34); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">re most significance. </span>Durga Puja\r\nis celebrated both in homes and in Puja pandals. During the Puja devotees\r\nperform Puja and worship on a daily basis with devotion to the Devi. The Puja\r\nperiod is considered as the best time of the year to worship and revere Goddess\r\nShakti (Durga) and seek Her blessings for good health, wealth, protection and\r\nprosperity. The time is also ideal to immerse oneself in Shakti Sadhana which\r\nis mostly done by Shakti Sadhaks. &nbsp;&nbsp;<o:p></o:p></span></p><p class=\"MsoNormal\"><b><span lang=\"EN-US\" style=\"font-size:14.0pt;line-height:\r\n107%\">What is special about Durga Puja Celebrations in Bengal/Kolkata&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></span></b></p><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%\">The\r\nDurga Puja brings in a new life to the city and the state, awakening it to an auspicious,\r\njovial and high-energy state. People of the city wait for the entire year just\r\nfor the five days of Durga Puja. From Panchami to Maha Dashami, the dynamics of\r\nthe city change completely. <o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%\">On\r\none side, the clubs and organizers gear up to celebrate the festivals, on the\r\nother side the devotees of Maa Durga get ready for the magnificent five days of\r\ndevotion and festivities. Durga puja has a significant impact on the economy\r\nand trade of the state. It is one of the biggest contributors to boosting of the\r\nGDP during that Puja season. Before the festival starts, the shopping spree of\r\npeople gets on full throttle. People flock to stores, malls and every single\r\nshop to buy new clothes and other things for the Durga Puja. This trade is\r\nbelieved to go in millions during the festive season. Shops and streets are\r\njampacked with shoppers and it becomes a difficult thing to make your way\r\nthrough the shopping areas at that time of the year. The foodies also have a\r\nblast, both before and during the Durga puja festival in Kolkata. There are\r\nmany food outlets and famous restaurants which become a haven for food lovers.\r\nThey offer delicious Bengalis and many other cuisines for the shoppers and\r\nlater on pandal hoppers during the festive times. <o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%\">The\r\nduration of Durga Puja is the most joyous holiday period for the people of\r\nKolkata and West Bengal. People come out and do pandal hopping right from the\r\nday the pandals are inaugurated and are opened up for the public. Lakhs of revelers,\r\nchildren, adults, teenagers, senior citizens, everyone is super excited and\r\nfull of enthusiasm to celebrate the Durga Puja festival. The unique themed Pujas\r\nare advertised even before the festival begins to attract huge footfall. Young\r\nrevelers join in groups and enjoy the puja festival with a full night out plans,\r\nhopping from one pandal to another. The sound of the dhaks echoes across the\r\nsky during the aarti period. The Maha Ashtami Pushpanjali is considered one of\r\nthe most sacred offerings to Maa Durga. Boys and girls get into their\r\ntraditional attire and offer Pushpanjali to Maa Durga.<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%\">Theme\r\npandals are the biggest attraction for everybody. Earlier, the puja was\r\nperformed in the traditional way and designer themes were not used much.\r\nHowever, over the years, the trend has changed a lot and the theme has taken a\r\ndominant position in executing the puja pandal designs. There are hundreds of\r\nDurga Puja pandals in Kolkata and countless outside the city. However, some\r\nremain a must-visit Durga Puja pandal during the festive time.<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%\">Shreebhumi\r\nClub, based in the Lake Town area of Kolkata always remains a prominent\r\nattraction for puja pandal hoppers of Kolkata.<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%\">Other\r\nfamous and unmissable Puja pandals in the city that are spread from North to South\r\nare:<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpFirst\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:12.0pt;\r\nline-height:107%\">Hathibagan Sarbajonin <o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:12.0pt;\r\nline-height:107%\">Nalin Sarkar Street Durgotsav<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:12.0pt;\r\nline-height:107%\">Dum Dum Park Tarun dal<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:12.0pt;\r\nline-height:107%\">Ahiritola Sarbojonin Durgotsav<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:12.0pt;\r\nline-height:107%\">Kashi Bose Lane<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:12.0pt;\r\nline-height:107%\">Tala Prattoy<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:12.0pt;\r\nline-height:107%\">Suruchi Sangha<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:12.0pt;\r\nline-height:107%\">Santosh Mitra Square<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:12.0pt;\r\nline-height:107%\">Bagbazar<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:12.0pt;\r\nline-height:107%\">Ballygunge Cultural Association Puja Pandal<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:12.0pt;\r\nline-height:107%\">College Square<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:12.0pt;\r\nline-height:107%\">Hindustan Park<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:12.0pt;\r\nline-height:107%\">Hindustan Club<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:12.0pt;\r\nline-height:107%\">Tridhara Akalbodan<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:12.0pt;\r\nline-height:107%\">Deshapriya park<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:12.0pt;\r\nline-height:107%\">66 Pally<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:12.0pt;\r\nline-height:107%\">Mudiali<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:12.0pt;\r\nline-height:107%\">Chetla Agrani<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:12.0pt;\r\nline-height:107%\">Ajaysangathi Club<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:12.0pt;\r\nline-height:107%\">Behala Friends Club<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpLast\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:12.0pt;\r\nline-height:107%\">75 Pally<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%\">Durga\r\npuja ends with Maha Dashami or Vijaya Dashami. It is the day when Maa Durga\r\nleaves her devotees and makes her journey back to Her heavenly abode of\r\nKailash. It is the day when Bengalis all around the world are struck with a\r\nmixed feeling of happiness and grief. The ten days of Durga Puja was an\r\nemotional roller-coaster for them which had an adrenaline rush. On the last day\r\nof Durga Puja, when it is time to bid farewell to Maa Durga, women after\r\ncompletion of puja engage in the traditional ritual of Sindur Khela.&nbsp; In this, married women apply each other\r\nvermillion and pray for the long lives of their husbands. This ritual is mainly\r\nperformed after the ceremony of Boron where women do the custom of bidding\r\nAudie to Maa Durga and others, in the same way when a married woman leaves for\r\nher in-law\'s place. <o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%\">It\r\nbecomes an emotional moment for everyone as the daughter of the house will\r\nleave the father’s place and go back to her husband. The idols are then laden\r\non trucks and trolleys for their final journey toward the immersion spot where\r\nthey shall make their way back to their home. The city and the skies are filled\r\nwith chants of ‘Bolo Bolo Durga Mai Ki Jai’ which means Hail Maa Durga. ‘Ashe\r\nBochor abar Hobe’ which signifies that next year the festivity will take place\r\nagain. Many are in tears as the idols of Maa Durga move towards the banks of\r\nriver Ganga, and with a splash it immerses into the depths of the river, saying\r\ngoodbye to everyone.&nbsp; Durga Puja is such\r\nan emotion that cannot be explained in words but can be felt and experienced.\r\nIt is a bond that a mother has with her child, and there is no other more\r\nbeautiful experience than this. &nbsp;&nbsp;<o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;\r\nmso-ascii-theme-font:minor-latin;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA\">As Maa Durga departs for Her home, devotees with\r\nfolded hands and closed eyes pray to Her with tears, wishing for peace and\r\nhappiness in their lives. They yearn to see Maa Durga soon next year and the\r\nwait begins, with the chants of ‘Asche Bochor Abar Hobe...Jai Maa Durga’.</span><br></p>', '24-07-01', '23', '1719828391_what-is-durga-puja.jpg', 'Enchanting Durga Puja of Kolkata', 'Durga Puja', 'Enchanting Durga Puja of Kolkata');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `name` mediumtext NOT NULL,
  `category_description` longtext DEFAULT NULL,
  `img` longtext DEFAULT NULL,
  `category_active` enum('Active','Inactive','Pending') DEFAULT 'Active',
  `icon` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` longtext NOT NULL,
  `meta_description` longtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `seq` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `name`, `category_description`, `img`, `category_active`, `icon`, `meta_title`, `meta_keyword`, `meta_description`, `status`, `seq`) VALUES
(7, 'Online Puja Services', 'Online Puja Services Category', '1709455879_onlinepujaservices_thumb.jpg', 'Active', 'ram-online-puja-services-icon', 'Book Online Pujas, Yagna, Paath and Participate Remotely ', '', 'Conduct various Pujas and Yagnas of different Gods and Goddesses and seek blessings of health, wealth and success. Perform Cow Seva and Bhagavad Gita Paath', 1, 3),
(6, 'Gemstones', 'Gemstones Category', '1709455783_gemstones_thumb.jpg', 'Active', 'linearicons-diamond3', 'Buy Natural Gemstones, Navratna, Malas and Bracelets Online', '', 'Premium quality, authentic and natural Jyotish Gemstone Collection. Browse non-heated, non-treated Navratna, Uparatna such as Ruby, Sapphire, Emerald, Opal', 1, 2),
(5, 'Rudraksha', 'Rudraksha Category ', '1709455700_rudraksha_thumb.jpg', 'Active', 'ram-rudraksha-icon', 'Buy Rudraksha Beads, Malas, Bracelets, Combinations Online', '', 'Collection of premium quality, authentic, genuine Rudraksha beads from 1 - 21 mukhi, Rudraksha Malas, Bracelets and Combinations from Nepal and Java.', 1, 1),
(8, 'Yantras', 'Yantra Category', '1709455948_yantra_thumb.jpg', 'Active', 'ram-yantra-icon', 'Buy Yantras of Different Sizes with Accurate Design Online', '', 'Browse Yantras with perfect geometry in various sizes. Buy online Sri Yantra, Laxmi Yantra, Ganesh Yantra, Kuber Yantra, Hanuman Yantra, Navgraha Yantra', 1, 4),
(9, 'Parad', 'Parad Category', '1709456021_parad_thumb.jpg', 'Active', 'linearicons-egg', 'Buy Parad Shivling, Parad Gutika, Parad Mala, Idols Online', '', 'Authentic Parad products made from solidified parad as described in Parad Samhita with 8 stages of purification. Buy Parad Gutika, Shivling, Idols, Kada', 1, 5),
(11, 'Shree Yantra', 'Shree Yantra Category', '1709456175_shreeyantra_thumb.jpg', 'Active', 'ram-shree-yantra-icon', 'Buy Shree Yantra Online, Sphatik, Brass, Meru Sri Yantra', '', 'Browse Shree Yantras in various sizes and material. Buy online Sphatik Shree Yantra, Brass Shree Yantra, Gemstone Shree Yantra, Meru at best prices', 1, 7),
(12, 'Shivlings', 'Shivling Category', '1709456233_shivling_thumb.jpg', 'Active', 'ram-shivling-icon', 'Buy Shivlingams Online, Narmada, Parad, Gemstone Shivlings', '', 'Shiva Lingams of different types, in various sizes and material. Buy online Narmada Shivling, Parad Shivling, Gemstone Shivling with Yoni base at best prices', 1, 8),
(13, 'Gods and Goddesses Idols', 'Idols Category', '1709456292_idols_thumb.jpg', 'Active', 'ram-idols-icon', 'Buy Idols of Gods and Goddesses Online in Brass, Marble', '', 'Premium range of Deity Idols in Brass, Bronze, Marble, Resin, Silver. Buy online idols of Lord Ram, Hanuman, Krishna, Maa Durga for your Puja mandir.', 1, 9),
(14, 'Other Sacred Articles', 'Sacred Articles Category', '1709456367_sacredarticles_thumb.jpg', 'Active', 'ram-sacred-articles-icon', 'Buy Online Spiritual Gifts, Paintings, Handicraft, Posters', '', 'Exclusive range of spiritual paintings, posters, handicrafts, crystals, vastu items and more. Buy online from a range of premium spiritual products', 1, 10),
(15, 'Consultations', 'Astro Consultations Category', '1709456466_consult_thumb.jpg', 'Active', 'linearicons-chevron-right-square', 'Vedic Astrology Consultation for Marriage, Career, Health', '', 'Consult learned and knowledgeable Vedic Astrologer for early marriage, business growth, relationship issue, career growth and receive customized remedies', 1, 11),
(16, 'Spiritual Accessories', 'Malas, Braceles, Pendants, Rings Categories ', '1709457416_spirirualjewelry_thumb.jpg', 'Active', 'ram-mala-bracelets-icon', 'Buy Spiritual Jewelry, Rings, Pendants, Bracelets Online', '', 'Collection of Spiritual Jewelry, Deity Rings, Pendants, Bracelets in Silver. Keep Divinity close to self with beautiful Om, Swastik and Mantra pieces', 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` longtext NOT NULL,
  `Phone` varchar(12) NOT NULL,
  `Subject` longtext NOT NULL,
  `Message` longtext NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `Name`, `Email`, `Phone`, `Subject`, `Message`, `Date`, `Time`, `Status`) VALUES
(1, 'Praveen', 'coordinater@mocindia.co.in', '9930848060', 'Demo2 23-12-12023', 'Demo', '2024-01-30', '13:58:44', 0),
(2, 'Sumit', 'fireurimagination@gmail.com', '9821997855', 'Hi', 'test test ', '2024-05-06', '17:56:04', 0);

-- --------------------------------------------------------

--
-- Table structure for table `country_fridget`
--

CREATE TABLE `country_fridget` (
  `id` bigint(20) NOT NULL,
  `sortname` varchar(3) NOT NULL,
  `name` mediumtext DEFAULT NULL,
  `zone` mediumtext DEFAULT NULL,
  `zone_id` mediumtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `country_fridget`
--

INSERT INTO `country_fridget` (`id`, `sortname`, `name`, `zone`, `zone_id`) VALUES
(2, 'AF', 'Afghanistan', 'A', '1'),
(3, 'AX', 'Aland Islands', 'A', '15'),
(4, 'AL', 'Albania', 'A', '15'),
(5, 'DZ', 'Algeria', 'A', '15'),
(6, 'AS', 'American Samoa', 'A', ''),
(7, 'AD', 'Andorra', 'B', ''),
(8, 'AO', 'Angola', 'B', ''),
(9, 'AI', 'Anguilla', 'B', ''),
(10, 'AQ', 'Antarctica', 'B', ''),
(11, 'AG', 'Antigua and Barbuda', 'B', ''),
(12, 'AR', 'Argentina', '', ''),
(13, 'AM', 'Armenia', '', ''),
(14, 'AW', 'Aruba', '', ''),
(15, 'AU', 'Australia', '', ''),
(16, 'AT', 'Austria', '', ''),
(17, 'AZ', 'Azerbaijan', '', ''),
(18, 'BS', 'Bahamas', '', ''),
(19, 'BH', 'Bahrain', '', ''),
(20, 'BD', 'Bangladesh', '', ''),
(21, 'BB', 'Barbados', '', ''),
(22, 'BY', 'Belarus', '', ''),
(23, 'BE', 'Belgium', '', ''),
(24, 'BZ', 'Belize', '', ''),
(25, 'BJ', 'Benin', '', ''),
(26, 'BM', 'Bermuda', '', ''),
(27, 'BT', 'Bhutan', '', ''),
(28, 'BO', 'Bolivia', '', ''),
(29, 'BQ', 'Bonaire, Saint Eustatius and Saba', '', ''),
(30, 'BA', 'Bosnia and Herzegovina', '', ''),
(31, 'BW', 'Botswana', '', ''),
(32, 'BV', 'Bouvet Island', '', ''),
(33, 'BR', 'Brazil', '', ''),
(34, 'IO', 'British Indian Ocean Territory', '', ''),
(35, 'VG', 'British Virgin Islands', '', ''),
(36, 'BN', 'Brunei', '', ''),
(37, 'BG', 'Bulgaria', '', ''),
(38, 'BF', 'Burkina Faso', '', ''),
(39, 'BI', 'Burundi', '', ''),
(40, 'KH', 'Cambodia', '', ''),
(41, 'CM', 'Cameroon', '', ''),
(42, 'CA', 'Canada', '', ''),
(43, 'CV', 'Cape Verde', '', ''),
(44, 'KY', 'Cayman Islands', '', ''),
(45, 'CF', 'Central African Republic', '', ''),
(46, 'TD', 'Chad', '', ''),
(47, 'CL', 'Chile', '', ''),
(48, 'CN', 'China', '', ''),
(49, 'CX', 'Christmas Island', '', ''),
(50, 'CC', 'Cocos Islands', '', ''),
(51, 'CO', 'Colombia', '', ''),
(52, 'KM', 'Comoros', '', ''),
(53, 'CK', 'Cook Islands', '', ''),
(54, 'CR', 'Costa Rica', '', ''),
(55, 'HR', 'Croatia', '', ''),
(56, 'CU', 'Cuba', '', ''),
(57, 'CW', 'Curacao', '', ''),
(58, 'CY', 'Cyprus', '', ''),
(59, 'CZ', 'Czech Republic', '', ''),
(60, 'CD', 'Democratic Republic of the Congo', '', ''),
(61, 'DK', 'Denmark', '', ''),
(62, 'DJ', 'Djibouti', '', ''),
(63, 'DM', 'Dominica', '', ''),
(64, 'DO', 'Dominican Republic', '', ''),
(65, 'TL', 'East Timor', '', ''),
(66, 'EC', 'Ecuador', '', ''),
(67, 'EG', 'Egypt', '', ''),
(68, 'SV', 'El Salvador', '', ''),
(69, 'GQ', 'Equatorial Guinea', '', ''),
(70, 'ER', 'Eritrea', '', ''),
(71, 'EE', 'Estonia', '', ''),
(72, 'ET', 'Ethiopia', '', ''),
(73, 'FK', 'Falkland Islands', '', ''),
(74, 'FO', 'Faroe Islands', '', ''),
(75, 'FJ', 'Fiji', '', ''),
(76, 'FI', 'Finland', '', ''),
(77, 'FR', 'France', '', ''),
(78, 'GF', 'French Guiana', '', ''),
(79, 'PF', 'French Polynesia', '', ''),
(80, 'TF', 'French Southern Territories', '', ''),
(81, 'GA', 'Gabon', '', ''),
(82, 'GM', 'Gambia', '', ''),
(83, 'GE', 'Georgia', '', ''),
(84, 'DE', 'Germany', '', ''),
(85, 'GH', 'Ghana', '', ''),
(86, 'GI', 'Gibraltar', '', ''),
(87, 'GR', 'Greece', '', ''),
(88, 'GL', 'Greenland', '', ''),
(89, 'GD', 'Grenada', '', ''),
(90, 'GP', 'Guadeloupe', '', ''),
(91, 'GU', 'Guam', '', ''),
(92, 'GT', 'Guatemala', '', ''),
(93, 'GG', 'Guernsey', '', ''),
(94, 'GN', 'Guinea', '', ''),
(95, 'GW', 'Guinea-Bissau', '', ''),
(96, 'GY', 'Guyana', '', ''),
(97, 'HT', 'Haiti', '', ''),
(98, 'HM', 'Heard Island and McDonald Islands', '', ''),
(99, 'HN', 'Honduras', '', ''),
(100, 'HK', 'Hong Kong', '', ''),
(101, 'HU', 'Hungary', '', ''),
(102, 'IS', 'Iceland', '', ''),
(103, 'IN', 'India', '', ''),
(104, 'ID', 'Indonesia', '', ''),
(105, 'IR', 'Iran', '', ''),
(106, 'IQ', 'Iraq', '', ''),
(107, 'IE', 'Ireland', '', ''),
(108, 'IM', 'Isle of Man', '', ''),
(109, 'IL', 'Israel', '', ''),
(110, 'IT', 'Italy', '', ''),
(111, 'CI', 'Ivory Coast', '', ''),
(112, 'JM', 'Jamaica', '', ''),
(113, 'JP', 'Japan', '', ''),
(114, 'JE', 'Jersey', '', ''),
(115, 'JO', 'Jordan', '', ''),
(116, 'KZ', 'Kazakhstan', '', ''),
(117, 'KE', 'Kenya', '', ''),
(118, 'KI', 'Kiribati', '', ''),
(119, 'XK', 'Kosovo', '', ''),
(120, 'KW', 'Kuwait', '', ''),
(121, 'KG', 'Kyrgyzstan', '', ''),
(122, 'LA', 'Laos', '', ''),
(123, 'LV', 'Latvia', '', ''),
(124, 'LB', 'Lebanon', '', ''),
(125, 'LS', 'Lesotho', '', ''),
(126, 'LR', 'Liberia', '', ''),
(127, 'LY', 'Libya', '', ''),
(128, 'LI', 'Liechtenstein', '', ''),
(129, 'LT', 'Lithuania', '', ''),
(130, 'LU', 'Luxembourg', '', ''),
(131, 'MO', 'Macao', '', ''),
(132, 'MK', 'Macedonia', '', ''),
(133, 'MG', 'Madagascar', '', ''),
(134, 'MW', 'Malawi', '', ''),
(135, 'MY', 'Malaysia', '', ''),
(136, 'MV', 'Maldives', '', ''),
(137, 'ML', 'Mali', '', ''),
(138, 'MT', 'Malta', '', ''),
(139, 'MH', 'Marshall Islands', '', ''),
(140, 'MQ', 'Martinique', '', ''),
(141, 'MR', 'Mauritania', '', ''),
(142, 'MU', 'Mauritius', '', ''),
(143, 'YT', 'Mayotte', '', ''),
(144, 'MX', 'Mexico', '', ''),
(145, 'FM', 'Micronesia', '', ''),
(146, 'MD', 'Moldova', '', ''),
(147, 'MC', 'Monaco', '', ''),
(148, 'MN', 'Mongolia', '', ''),
(149, 'ME', 'Montenegro', '', ''),
(150, 'MS', 'Montserrat', '', ''),
(151, 'MA', 'Morocco', '', ''),
(152, 'MZ', 'Mozambique', '', ''),
(153, 'MM', 'Myanmar', '', ''),
(154, 'NA', 'Namibia', '', ''),
(155, 'NR', 'Nauru', '', ''),
(156, 'NP', 'Nepal', '', ''),
(157, 'NL', 'Netherlands', '', ''),
(158, 'AN', 'Netherlands Antilles', '', ''),
(159, 'NC', 'New Caledonia', '', ''),
(160, 'NZ', 'New Zealand', '', ''),
(161, 'NI', 'Nicaragua', '', ''),
(162, 'NE', 'Niger', '', ''),
(163, 'NG', 'Nigeria', '', ''),
(164, 'NU', 'Niue', '', ''),
(165, 'NF', 'Norfolk Island', '', ''),
(166, 'KP', 'North Korea', '', ''),
(167, 'MP', 'Northern Mariana Islands', '', ''),
(168, 'NO', 'Norway', '', ''),
(169, 'OM', 'Oman', '', ''),
(170, 'PK', 'Pakistan', '', ''),
(171, 'PW', 'Palau', '', ''),
(172, 'PS', 'Palestinian Territory', '', ''),
(173, 'PA', 'Panama', '', ''),
(174, 'PG', 'Papua New Guinea', '', ''),
(175, 'PY', 'Paraguay', '', ''),
(176, 'PE', 'Peru', '', ''),
(177, 'PH', 'Philippines', '', ''),
(178, 'PN', 'Pitcairn', '', ''),
(179, 'PL', 'Poland', '', ''),
(180, 'PT', 'Portugal', '', ''),
(181, 'PR', 'Puerto Rico', '', ''),
(182, 'QA', 'Qatar', '', ''),
(183, 'CG', 'Republic of the Congo', '', ''),
(184, 'RE', 'Reunion', '', ''),
(185, 'RO', 'Romania', '', ''),
(186, 'RU', 'Russia', '', ''),
(187, 'RW', 'Rwanda', '', ''),
(188, 'BL', 'Saint Barthelemy', '', ''),
(189, 'SH', 'Saint Helena', '', ''),
(190, 'KN', 'Saint Kitts and Nevis', '', ''),
(191, 'LC', 'Saint Lucia', '', ''),
(192, 'MF', 'Saint Martin', '', ''),
(193, 'PM', 'Saint Pierre and Miquelon', '', ''),
(194, 'VC', 'Saint Vincent and the Grenadines', '', ''),
(195, 'WS', 'Samoa', '', ''),
(196, 'SM', 'San Marino', '', ''),
(197, 'ST', 'Sao Tome and Principe', '', ''),
(198, 'SA', 'Saudi Arabia', '', ''),
(199, 'SN', 'Senegal', '', ''),
(200, 'RS', 'Serbia', '', ''),
(201, 'CS', 'Serbia and Montenegro', '', ''),
(202, 'SC', 'Seychelles', '', ''),
(203, 'SL', 'Sierra Leone', '', ''),
(204, 'SG', 'Singapore', '', ''),
(205, 'SX', 'Sint Maarten', '', ''),
(206, 'SK', 'Slovakia', '', ''),
(207, 'SI', 'Slovenia', '', ''),
(208, 'SB', 'Solomon Islands', '', ''),
(209, 'SO', 'Somalia', '', ''),
(210, 'ZA', 'South Africa', '', ''),
(211, 'GS', 'South Georgia and the South Sandwich Islands', '', ''),
(212, 'KR', 'South Korea', '', ''),
(213, 'SS', 'South Sudan', '', ''),
(214, 'ES', 'Spain', '', ''),
(215, 'LK', 'Sri Lanka', '', ''),
(216, 'SD', 'Sudan', '', ''),
(217, 'SR', 'Suriname', '', ''),
(218, 'SJ', 'Svalbard and Jan Mayen', '', ''),
(219, 'SZ', 'Swaziland', '', ''),
(220, 'SE', 'Sweden', '', ''),
(221, 'CH', 'Switzerland', '', ''),
(222, 'SY', 'Syria', '', ''),
(223, 'TW', 'Taiwan', '', ''),
(224, 'TJ', 'Tajikistan', '', ''),
(225, 'TZ', 'Tanzania', '', ''),
(226, 'TH', 'Thailand', '', ''),
(227, 'TG', 'Togo', '', ''),
(228, 'TK', 'Tokelau', '', ''),
(229, 'TO', 'Tonga', '', ''),
(230, 'TT', 'Trinidad and Tobago', '', ''),
(231, 'TN', 'Tunisia', '', ''),
(232, 'TR', 'Turkey', '', ''),
(233, 'TM', 'Turkmenistan', '', ''),
(234, 'TC', 'Turks and Caicos Islands', '', ''),
(235, 'TV', 'Tuvalu', '', ''),
(236, 'VI', 'U.S. Virgin Islands', '', ''),
(237, 'UG', 'Uganda', '', ''),
(238, 'UA', 'Ukraine', '', ''),
(239, 'AE', 'United Arab Emirates', '', ''),
(240, 'GB', 'United Kingdom', '5', ''),
(241, 'US', 'United States', 'A', '17'),
(242, 'UM', 'United States Minor Outlying Islands', '', ''),
(243, 'UY', 'Uruguay', '', ''),
(244, 'UZ', 'Uzbekistan', '', ''),
(245, 'VU', 'Vanuatu', '', ''),
(246, 'VA', 'Vatican', '', ''),
(247, 'VE', 'Venezuela', '', ''),
(248, 'VN', 'Vietnam', '', ''),
(249, 'WF', 'Wallis and Futuna', '', ''),
(250, 'EH', 'Western Sahara', '', ''),
(251, 'YE', 'Yemen', '', ''),
(252, 'ZM', 'Zambia', '', ''),
(253, 'ZW', 'Zimbabwe', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `Currency_Name` varchar(255) NOT NULL,
  `Amount` decimal(10,4) NOT NULL,
  `INR_Amount` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_page_code`
--

CREATE TABLE `home_page_code` (
  `id` int(11) NOT NULL,
  `code_1` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icons`
--

CREATE TABLE `icons` (
  `id` int(11) NOT NULL,
  `classname` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `icons`
--

INSERT INTO `icons` (`id`, `classname`, `content`) VALUES
(1, 'flaticon-shipped                     ', 'f100'),
(2, 'flaticon-money-back                  ', 'f101'),
(3, 'flaticon-support                     ', 'f102'),
(4, 'flaticon-woman                       ', 'f106'),
(5, 'flaticon-boss                        ', 'f104'),
(6, 'flaticon-friendship                  ', 'f105'),
(7, 'flaticon-sunglasses                  ', 'f106'),
(8, 'flaticon-jacket                      ', 'f107'),
(9, 'flaticon-sneakers                    ', 'f108'),
(10, 'flaticon-watch                       ', 'f109'),
(11, 'flaticon-necklace                    ', 'f10a'),
(12, 'flaticon-herbal                      ', 'f10b'),
(13, 'flaticon-ball                        ', 'f10c'),
(14, 'flaticon-pijamas                     ', 'f10d'),
(15, 'flaticon-scarf                       ', 'f10e'),
(16, 'flaticon-vintage                     ', 'f10f'),
(17, 'flaticon-pregnant                    ', 'f110'),
(18, 'flaticon-lock                        ', 'f111'),
(19, 'flaticon-bed                         ', 'f112'),
(20, 'flaticon-table                       ', 'f113'),
(21, 'flaticon-armchair                    ', 'f114'),
(22, 'flaticon-desk-lamp                   ', 'f115'),
(23, 'flaticon-sofa                        ', 'f116'),
(24, 'flaticon-chair                       ', 'f117'),
(25, 'flaticon-tv                          ', 'f118'),
(26, 'flaticon-responsive                  ', 'f119'),
(27, 'flaticon-camera                      ', 'f11a'),
(28, 'flaticon-plugins                     ', 'f11b'),
(29, 'flaticon-headphones                  ', 'f11c'),
(30, 'flaticon-console                     ', 'f11d'),
(31, 'flaticon-music-system                ', 'f11e'),
(32, 'flaticon-monitor                     ', 'f11f'),
(33, 'flaticon-printer                     ', 'f120'),
(34, 'flaticon-fax                         ', 'f121'),
(35, 'flaticon-mouse                       ', 'f122'),
(37, 'linearicons-home', ''),
(38, 'linearicons-home2', ''),
(39, 'linearicons-home3', ''),
(40, 'linearicons-home4', ''),
(41, 'linearicons-home5', ''),
(42, 'linearicons-home6', ''),
(43, 'linearicons-bathtub', ''),
(44, 'linearicons-toothbrush', ''),
(45, 'linearicons-bed', ''),
(46, 'linearicons-couch', ''),
(47, 'linearicons-chair', ''),
(48, 'linearicons-city', ''),
(49, 'linearicons-apartment', ''),
(50, 'linearicons-pencil', ''),
(51, 'linearicons-pencil2', ''),
(52, 'linearicons-pen', ''),
(53, 'linearicons-pencil3', ''),
(54, 'linearicons-eraser', ''),
(55, 'linearicons-pencil4', ''),
(56, 'linearicons-pencil5', ''),
(57, 'linearicons-feather', ''),
(58, 'linearicons-feather2', ''),
(59, 'linearicons-feather3', ''),
(60, 'linearicons-pen2', ''),
(61, 'linearicons-pen-add', ''),
(62, 'linearicons-pen-remove', ''),
(63, 'linearicons-vector', ''),
(64, 'linearicons-pen3', ''),
(65, 'linearicons-blog', ''),
(66, 'linearicons-brush', ''),
(67, 'linearicons-brush2', ''),
(68, 'linearicons-spray', ''),
(69, 'linearicons-paint-roller', ''),
(70, 'linearicons-stamp', ''),
(71, 'linearicons-tape', ''),
(72, 'linearicons-desk-tape', ''),
(73, 'linearicons-texture', ''),
(74, 'linearicons-eye-dropper', ''),
(75, 'linearicons-palette', ''),
(76, 'linearicons-color-sampler', ''),
(77, 'linearicons-bucket', ''),
(78, 'linearicons-gradient', ''),
(79, 'linearicons-gradient2', ''),
(80, 'linearicons-magic-wand', ''),
(81, 'linearicons-magnet', ''),
(82, 'linearicons-pencil-ruler', ''),
(83, 'linearicons-pencil-ruler2', ''),
(84, 'linearicons-compass', ''),
(85, 'linearicons-aim', ''),
(86, 'linearicons-gun', ''),
(87, 'linearicons-bottle', ''),
(88, 'linearicons-drop', ''),
(89, 'linearicons-drop-crossed', ''),
(90, 'linearicons-drop2', ''),
(91, 'linearicons-snow', ''),
(92, 'linearicons-snow2', ''),
(93, 'linearicons-fire', ''),
(94, 'linearicons-lighter', ''),
(95, 'linearicons-knife', ''),
(96, 'linearicons-dagger', ''),
(97, 'linearicons-tissue', ''),
(98, 'linearicons-toilet-paper', ''),
(99, 'linearicons-poop', ''),
(100, 'linearicons-umbrella', ''),
(101, 'linearicons-umbrella2', ''),
(102, 'linearicons-rain', ''),
(103, 'linearicons-tornado', ''),
(104, 'linearicons-wind', ''),
(105, 'linearicons-fan', ''),
(106, 'linearicons-contrast', ''),
(107, 'linearicons-sun-small', ''),
(108, 'linearicons-sun', ''),
(109, 'linearicons-sun2', ''),
(110, 'linearicons-moon', ''),
(111, 'linearicons-cloud', ''),
(112, 'linearicons-cloud-upload', ''),
(113, 'linearicons-cloud-download', ''),
(114, 'linearicons-cloud-rain', ''),
(115, 'linearicons-cloud-hailstones', ''),
(116, 'linearicons-cloud-snow', ''),
(117, 'linearicons-cloud-windy', ''),
(118, 'linearicons-sun-wind', ''),
(119, 'linearicons-cloud-fog', ''),
(120, 'linearicons-cloud-sun', ''),
(121, 'linearicons-cloud-lightning', ''),
(122, 'linearicons-cloud-sync', ''),
(123, 'linearicons-cloud-lock', ''),
(124, 'linearicons-cloud-gear', ''),
(125, 'linearicons-cloud-alert', ''),
(126, 'linearicons-cloud-check', ''),
(127, 'linearicons-cloud-cross', ''),
(128, 'linearicons-cloud-crossed', ''),
(129, 'linearicons-cloud-database', ''),
(130, 'linearicons-database', ''),
(131, 'linearicons-database-add', ''),
(132, 'linearicons-database-remove', ''),
(133, 'linearicons-database-lock', ''),
(134, 'linearicons-database-refresh', ''),
(135, 'linearicons-database-check', ''),
(136, 'linearicons-database-history', ''),
(137, 'linearicons-database-upload', ''),
(138, 'linearicons-database-download', ''),
(139, 'linearicons-server', ''),
(140, 'linearicons-shield', ''),
(141, 'linearicons-shield-check', ''),
(142, 'linearicons-shield-alert', ''),
(143, 'linearicons-shield-cross', ''),
(144, 'linearicons-lock', ''),
(145, 'linearicons-rotation-lock', ''),
(146, 'linearicons-unlock', ''),
(147, 'linearicons-key', ''),
(148, 'linearicons-key-hole', ''),
(149, 'linearicons-toggle-off', ''),
(150, 'linearicons-toggle-on', ''),
(151, 'linearicons-cog', ''),
(152, 'linearicons-cog2', ''),
(153, 'linearicons-wrench', ''),
(154, 'linearicons-screwdriver', ''),
(155, 'linearicons-hammer-wrench', ''),
(156, 'linearicons-hammer', ''),
(157, 'linearicons-saw', ''),
(158, 'linearicons-axe', ''),
(159, 'linearicons-axe2', ''),
(160, 'linearicons-shovel', ''),
(161, 'linearicons-pickaxe', ''),
(162, 'linearicons-factory', ''),
(163, 'linearicons-factory2', ''),
(164, 'linearicons-recycle', ''),
(165, 'linearicons-trash', ''),
(166, 'linearicons-trash2', ''),
(167, 'linearicons-trash3', ''),
(168, 'linearicons-broom', ''),
(169, 'linearicons-game', ''),
(170, 'linearicons-gamepad', ''),
(171, 'linearicons-joystick', ''),
(172, 'linearicons-dice', ''),
(173, 'linearicons-spades', ''),
(174, 'linearicons-diamonds', ''),
(175, 'linearicons-clubs', ''),
(176, 'linearicons-hearts', ''),
(177, 'linearicons-heart', ''),
(178, 'linearicons-star', ''),
(179, 'linearicons-star-half', ''),
(180, 'linearicons-star-empty', ''),
(181, 'linearicons-flag', ''),
(182, 'linearicons-flag2', ''),
(183, 'linearicons-flag3', ''),
(184, 'linearicons-mailbox-full', ''),
(185, 'linearicons-mailbox-empty', ''),
(186, 'linearicons-at-sign', ''),
(187, 'linearicons-envelope', ''),
(188, 'linearicons-envelope-open', ''),
(189, 'linearicons-paperclip', ''),
(190, 'linearicons-paper-plane', ''),
(191, 'linearicons-reply', ''),
(192, 'linearicons-reply-all', ''),
(193, 'linearicons-inbox', ''),
(194, 'linearicons-inbox2', ''),
(195, 'linearicons-outbox', ''),
(196, 'linearicons-box', ''),
(197, 'linearicons-archive', ''),
(198, 'linearicons-archive2', ''),
(199, 'linearicons-drawers', ''),
(200, 'linearicons-drawers2', ''),
(201, 'linearicons-drawers3', ''),
(202, 'linearicons-eye', ''),
(203, 'linearicons-eye-crossed', ''),
(204, 'linearicons-eye-plus', ''),
(205, 'linearicons-eye-minus', ''),
(206, 'linearicons-binoculars', ''),
(207, 'linearicons-binoculars2', ''),
(208, 'linearicons-hdd', ''),
(209, 'linearicons-hdd-down', ''),
(210, 'linearicons-hdd-up', ''),
(211, 'linearicons-floppy-disk', ''),
(212, 'linearicons-disc', ''),
(213, 'linearicons-tape2', ''),
(214, 'linearicons-printer', ''),
(215, 'linearicons-shredder', ''),
(216, 'linearicons-file-empty', ''),
(217, 'linearicons-file-add', ''),
(218, 'linearicons-file-check', ''),
(219, 'linearicons-file-lock', ''),
(220, 'linearicons-files', ''),
(221, 'linearicons-copy', ''),
(222, 'linearicons-compare', ''),
(223, 'linearicons-folder', ''),
(224, 'linearicons-folder-search', ''),
(225, 'linearicons-folder-plus', ''),
(226, 'linearicons-folder-minus', ''),
(227, 'linearicons-folder-download', ''),
(228, 'linearicons-folder-upload', ''),
(229, 'linearicons-folder-star', ''),
(230, 'linearicons-folder-heart', ''),
(231, 'linearicons-folder-user', ''),
(232, 'linearicons-folder-shared', ''),
(233, 'linearicons-folder-music', ''),
(234, 'linearicons-folder-picture', ''),
(235, 'linearicons-folder-film', ''),
(236, 'linearicons-scissors', ''),
(237, 'linearicons-paste', ''),
(238, 'linearicons-clipboard-empty', ''),
(239, 'linearicons-clipboard-pencil', ''),
(240, 'linearicons-clipboard-text', ''),
(241, 'linearicons-clipboard-check', ''),
(242, 'linearicons-clipboard-down', ''),
(243, 'linearicons-clipboard-left', ''),
(244, 'linearicons-clipboard-alert', ''),
(245, 'linearicons-clipboard-user', ''),
(246, 'linearicons-register', ''),
(247, 'linearicons-enter', ''),
(248, 'linearicons-exit', ''),
(249, 'linearicons-papers', ''),
(250, 'linearicons-news', ''),
(251, 'linearicons-reading', ''),
(252, 'linearicons-typewriter', ''),
(253, 'linearicons-document', ''),
(254, 'linearicons-document2', ''),
(255, 'linearicons-graduation-hat', ''),
(256, 'linearicons-license', ''),
(257, 'linearicons-license2', ''),
(258, 'linearicons-medal-empty', ''),
(259, 'linearicons-medal-first', ''),
(260, 'linearicons-medal-second', ''),
(261, 'linearicons-medal-third', ''),
(262, 'linearicons-podium', ''),
(263, 'linearicons-trophy', ''),
(264, 'linearicons-trophy2', ''),
(265, 'linearicons-music-note', ''),
(266, 'linearicons-music-note2', ''),
(267, 'linearicons-music-note3', ''),
(268, 'linearicons-playlist', ''),
(269, 'linearicons-playlist-add', ''),
(270, 'linearicons-guitar', ''),
(271, 'linearicons-trumpet', ''),
(272, 'linearicons-album', ''),
(273, 'linearicons-shuffle', ''),
(274, 'linearicons-repeat-one', ''),
(275, 'linearicons-repeat', ''),
(276, 'linearicons-headphones', ''),
(277, 'linearicons-headset', ''),
(278, 'linearicons-loudspeaker', ''),
(279, 'linearicons-equalizer', ''),
(280, 'linearicons-theater', ''),
(281, 'linearicons-3d-glasses', ''),
(282, 'linearicons-ticket', ''),
(283, 'linearicons-presentation', ''),
(284, 'linearicons-play', ''),
(285, 'linearicons-film-play', ''),
(286, 'linearicons-clapboard-play', ''),
(287, 'linearicons-media', ''),
(288, 'linearicons-film', ''),
(289, 'linearicons-film2', ''),
(290, 'linearicons-surveillance', ''),
(291, 'linearicons-surveillance2', ''),
(292, 'linearicons-camera', ''),
(293, 'linearicons-camera-crossed', ''),
(294, 'linearicons-camera-play', ''),
(295, 'linearicons-time-lapse', ''),
(296, 'linearicons-record', ''),
(297, 'linearicons-camera2', ''),
(298, 'linearicons-camera-flip', ''),
(299, 'linearicons-panorama', ''),
(300, 'linearicons-time-lapse2', ''),
(301, 'linearicons-shutter', ''),
(302, 'linearicons-shutter2', ''),
(303, 'linearicons-face-detection', ''),
(304, 'linearicons-flare', ''),
(305, 'linearicons-convex', ''),
(306, 'linearicons-concave', ''),
(307, 'linearicons-picture', ''),
(308, 'linearicons-picture2', ''),
(309, 'linearicons-picture3', ''),
(310, 'linearicons-pictures', ''),
(311, 'linearicons-book', ''),
(312, 'linearicons-audio-book', ''),
(313, 'linearicons-book2', ''),
(314, 'linearicons-bookmark', ''),
(315, 'linearicons-bookmark2', ''),
(316, 'linearicons-label', ''),
(317, 'linearicons-library', ''),
(318, 'linearicons-library2', ''),
(319, 'linearicons-contacts', ''),
(320, 'linearicons-profile', ''),
(321, 'linearicons-portrait', ''),
(322, 'linearicons-portrait2', ''),
(323, 'linearicons-user', ''),
(324, 'linearicons-user-plus', ''),
(325, 'linearicons-user-minus', ''),
(326, 'linearicons-user-lock', ''),
(327, 'linearicons-users', ''),
(328, 'linearicons-users2', ''),
(329, 'linearicons-users-plus', ''),
(330, 'linearicons-users-minus', ''),
(331, 'linearicons-group-work', ''),
(332, 'linearicons-woman', ''),
(333, 'linearicons-man', ''),
(334, 'linearicons-baby', ''),
(335, 'linearicons-baby2', ''),
(336, 'linearicons-baby3', ''),
(337, 'linearicons-baby-bottle', ''),
(338, 'linearicons-walk', ''),
(339, 'linearicons-hand-waving', ''),
(340, 'linearicons-jump', ''),
(341, 'linearicons-run', ''),
(342, 'linearicons-woman2', ''),
(343, 'linearicons-man2', ''),
(344, 'linearicons-man-woman', ''),
(345, 'linearicons-height', ''),
(346, 'linearicons-weight', ''),
(347, 'linearicons-scale', ''),
(348, 'linearicons-button', ''),
(349, 'linearicons-bow-tie', ''),
(350, 'linearicons-tie', ''),
(351, 'linearicons-socks', ''),
(352, 'linearicons-shoe', ''),
(353, 'linearicons-shoes', ''),
(354, 'linearicons-hat', ''),
(355, 'linearicons-pants', ''),
(356, 'linearicons-shorts', ''),
(357, 'linearicons-flip-flops', ''),
(358, 'linearicons-shirt', ''),
(359, 'linearicons-hanger', ''),
(360, 'linearicons-laundry', ''),
(361, 'linearicons-store', ''),
(362, 'linearicons-haircut', ''),
(363, 'linearicons-store-24', ''),
(364, 'linearicons-barcode', ''),
(365, 'linearicons-barcode2', ''),
(366, 'linearicons-barcode3', ''),
(367, 'linearicons-cashier', ''),
(368, 'linearicons-bag', ''),
(369, 'linearicons-bag2', ''),
(370, 'linearicons-cart', ''),
(371, 'linearicons-cart-empty', ''),
(372, 'linearicons-cart-full', ''),
(373, 'linearicons-cart-plus', ''),
(374, 'linearicons-cart-plus2', ''),
(375, 'linearicons-cart-add', ''),
(376, 'linearicons-cart-remove', ''),
(377, 'linearicons-cart-exchange', ''),
(378, 'linearicons-tag', ''),
(379, 'linearicons-tags', ''),
(380, 'linearicons-receipt', ''),
(381, 'linearicons-wallet', ''),
(382, 'linearicons-credit-card', ''),
(383, 'linearicons-cash-dollar', ''),
(384, 'linearicons-cash-euro', ''),
(385, 'linearicons-cash-pound', ''),
(386, 'linearicons-cash-yen', ''),
(387, 'linearicons-bag-dollar', ''),
(388, 'linearicons-bag-euro', ''),
(389, 'linearicons-bag-pound', ''),
(390, 'linearicons-bag-yen', ''),
(391, 'linearicons-coin-dollar', ''),
(392, 'linearicons-coin-euro', ''),
(393, 'linearicons-coin-pound', ''),
(394, 'linearicons-coin-yen', ''),
(395, 'linearicons-calculator', ''),
(396, 'linearicons-calculator2', ''),
(397, 'linearicons-abacus', ''),
(398, 'linearicons-vault', ''),
(399, 'linearicons-telephone', ''),
(400, 'linearicons-phone-lock', ''),
(401, 'linearicons-phone-wave', ''),
(402, 'linearicons-phone-pause', ''),
(403, 'linearicons-phone-outgoing', ''),
(404, 'linearicons-phone-incoming', ''),
(405, 'linearicons-phone-in-out', ''),
(406, 'linearicons-phone-error', ''),
(407, 'linearicons-phone-sip', ''),
(408, 'linearicons-phone-plus', ''),
(409, 'linearicons-phone-minus', ''),
(410, 'linearicons-voicemail', ''),
(411, 'linearicons-dial', ''),
(412, 'linearicons-telephone2', ''),
(413, 'linearicons-pushpin', ''),
(414, 'linearicons-pushpin2', ''),
(415, 'linearicons-map-marker', ''),
(416, 'linearicons-map-marker-user', ''),
(417, 'linearicons-map-marker-down', ''),
(418, 'linearicons-map-marker-check', ''),
(419, 'linearicons-map-marker-crossed', ''),
(420, 'linearicons-radar', ''),
(421, 'linearicons-compass2', ''),
(422, 'linearicons-map', ''),
(423, 'linearicons-map2', ''),
(424, 'linearicons-location', ''),
(425, 'linearicons-road-sign', ''),
(426, 'linearicons-calendar-empty', ''),
(427, 'linearicons-calendar-check', ''),
(428, 'linearicons-calendar-cross', ''),
(429, 'linearicons-calendar-31', ''),
(430, 'linearicons-calendar-full', ''),
(431, 'linearicons-calendar-insert', ''),
(432, 'linearicons-calendar-text', ''),
(433, 'linearicons-calendar-user', ''),
(434, 'linearicons-mouse', ''),
(435, 'linearicons-mouse-left', ''),
(436, 'linearicons-mouse-right', ''),
(437, 'linearicons-mouse-both', ''),
(438, 'linearicons-keyboard', ''),
(439, 'linearicons-keyboard-up', ''),
(440, 'linearicons-keyboard-down', ''),
(441, 'linearicons-delete', ''),
(442, 'linearicons-spell-check', ''),
(443, 'linearicons-escape', ''),
(444, 'linearicons-enter2', ''),
(445, 'linearicons-screen', ''),
(446, 'linearicons-aspect-ratio', ''),
(447, 'linearicons-signal', ''),
(448, 'linearicons-signal-lock', ''),
(449, 'linearicons-signal-80', ''),
(450, 'linearicons-signal-60', ''),
(451, 'linearicons-signal-40', ''),
(452, 'linearicons-signal-20', ''),
(453, 'linearicons-signal-0', ''),
(454, 'linearicons-signal-blocked', ''),
(455, 'linearicons-sim', ''),
(456, 'linearicons-flash-memory', ''),
(457, 'linearicons-usb-drive', ''),
(458, 'linearicons-phone', ''),
(459, 'linearicons-smartphone', ''),
(460, 'linearicons-smartphone-notification', ''),
(461, 'linearicons-smartphone-vibration', ''),
(462, 'linearicons-smartphone-embed', ''),
(463, 'linearicons-smartphone-waves', ''),
(464, 'linearicons-tablet', ''),
(465, 'linearicons-tablet2', ''),
(466, 'linearicons-laptop', ''),
(467, 'linearicons-laptop-phone', ''),
(468, 'linearicons-desktop', ''),
(469, 'linearicons-launch', ''),
(470, 'linearicons-new-tab', ''),
(471, 'linearicons-window', ''),
(472, 'linearicons-cable', ''),
(473, 'linearicons-cable2', ''),
(474, 'linearicons-tv', ''),
(475, 'linearicons-radio', ''),
(476, 'linearicons-remote-control', ''),
(477, 'linearicons-power-switch', ''),
(478, 'linearicons-power', ''),
(479, 'linearicons-power-crossed', ''),
(480, 'linearicons-flash-auto', ''),
(481, 'linearicons-lamp', ''),
(482, 'linearicons-flashlight', ''),
(483, 'linearicons-lampshade', ''),
(484, 'linearicons-cord', ''),
(485, 'linearicons-outlet', ''),
(486, 'linearicons-battery-power', ''),
(487, 'linearicons-battery-empty', ''),
(488, 'linearicons-battery-alert', ''),
(489, 'linearicons-battery-error', ''),
(490, 'linearicons-battery-low1', ''),
(491, 'linearicons-battery-low2', ''),
(492, 'linearicons-battery-low3', ''),
(493, 'linearicons-battery-mid1', ''),
(494, 'linearicons-battery-mid2', ''),
(495, 'linearicons-battery-mid3', ''),
(496, 'linearicons-battery-full', ''),
(497, 'linearicons-battery-charging', ''),
(498, 'linearicons-battery-charging2', ''),
(499, 'linearicons-battery-charging3', ''),
(500, 'linearicons-battery-charging4', ''),
(501, 'linearicons-battery-charging5', ''),
(502, 'linearicons-battery-charging6', ''),
(503, 'linearicons-battery-charging7', ''),
(504, 'linearicons-chip', ''),
(505, 'linearicons-chip-x64', ''),
(506, 'linearicons-chip-x86', ''),
(507, 'linearicons-bubble', ''),
(508, 'linearicons-bubbles', ''),
(509, 'linearicons-bubble-dots', ''),
(510, 'linearicons-bubble-alert', ''),
(511, 'linearicons-bubble-question', ''),
(512, 'linearicons-bubble-text', ''),
(513, 'linearicons-bubble-pencil', ''),
(514, 'linearicons-bubble-picture', ''),
(515, 'linearicons-bubble-video', ''),
(516, 'linearicons-bubble-user', ''),
(517, 'linearicons-bubble-quote', ''),
(518, 'linearicons-bubble-heart', ''),
(519, 'linearicons-bubble-emoticon', ''),
(520, 'linearicons-bubble-attachment', ''),
(521, 'linearicons-phone-bubble', ''),
(522, 'linearicons-quote-open', ''),
(523, 'linearicons-quote-close', ''),
(524, 'linearicons-dna', ''),
(525, 'linearicons-heart-pulse', ''),
(526, 'linearicons-pulse', ''),
(527, 'linearicons-syringe', ''),
(528, 'linearicons-pills', ''),
(529, 'linearicons-first-aid', ''),
(530, 'linearicons-lifebuoy', ''),
(531, 'linearicons-bandage', ''),
(532, 'linearicons-bandages', ''),
(533, 'linearicons-thermometer', ''),
(534, 'linearicons-microscope', ''),
(535, 'linearicons-brain', ''),
(536, 'linearicons-beaker', ''),
(537, 'linearicons-skull', ''),
(538, 'linearicons-bone', ''),
(539, 'linearicons-construction', ''),
(540, 'linearicons-construction-cone', ''),
(541, 'linearicons-pie-chart', ''),
(542, 'linearicons-pie-chart2', ''),
(543, 'linearicons-graph', ''),
(544, 'linearicons-chart-growth', ''),
(545, 'linearicons-chart-bars', ''),
(546, 'linearicons-chart-settings', ''),
(547, 'linearicons-cake', ''),
(548, 'linearicons-gift', ''),
(549, 'linearicons-balloon', ''),
(550, 'linearicons-rank', ''),
(551, 'linearicons-rank2', ''),
(552, 'linearicons-rank3', ''),
(553, 'linearicons-crown', ''),
(554, 'linearicons-lotus', ''),
(555, 'linearicons-diamond', ''),
(556, 'linearicons-diamond2', ''),
(557, 'linearicons-diamond3', ''),
(558, 'linearicons-diamond4', ''),
(559, 'linearicons-linearicons', ''),
(560, 'linearicons-teacup', ''),
(561, 'linearicons-teapot', ''),
(562, 'linearicons-glass', ''),
(563, 'linearicons-bottle2', ''),
(564, 'linearicons-glass-cocktail', ''),
(565, 'linearicons-glass2', ''),
(566, 'linearicons-dinner', ''),
(567, 'linearicons-dinner2', ''),
(568, 'linearicons-chef', ''),
(569, 'linearicons-scale2', ''),
(570, 'linearicons-egg', ''),
(571, 'linearicons-egg2', ''),
(572, 'linearicons-eggs', ''),
(573, 'linearicons-platter', ''),
(574, 'linearicons-steak', ''),
(575, 'linearicons-hamburger', ''),
(576, 'linearicons-hotdog', ''),
(577, 'linearicons-pizza', ''),
(578, 'linearicons-sausage', ''),
(579, 'linearicons-chicken', ''),
(580, 'linearicons-fish', ''),
(581, 'linearicons-carrot', ''),
(582, 'linearicons-cheese', ''),
(583, 'linearicons-bread', ''),
(584, 'linearicons-ice-cream', ''),
(585, 'linearicons-ice-cream2', ''),
(586, 'linearicons-candy', ''),
(587, 'linearicons-lollipop', ''),
(588, 'linearicons-coffee-bean', ''),
(589, 'linearicons-coffee-cup', ''),
(590, 'linearicons-cherry', ''),
(591, 'linearicons-grapes', ''),
(592, 'linearicons-citrus', ''),
(593, 'linearicons-apple', ''),
(594, 'linearicons-leaf', ''),
(595, 'linearicons-landscape', ''),
(596, 'linearicons-pine-tree', ''),
(597, 'linearicons-tree', ''),
(598, 'linearicons-cactus', ''),
(599, 'linearicons-paw', ''),
(600, 'linearicons-footprint', ''),
(601, 'linearicons-speed-slow', ''),
(602, 'linearicons-speed-medium', ''),
(603, 'linearicons-speed-fast', ''),
(604, 'linearicons-rocket', ''),
(605, 'linearicons-hammer2', ''),
(606, 'linearicons-balance', ''),
(607, 'linearicons-briefcase', ''),
(608, 'linearicons-luggage-weight', ''),
(609, 'linearicons-dolly', ''),
(610, 'linearicons-plane', ''),
(611, 'linearicons-plane-crossed', ''),
(612, 'linearicons-helicopter', ''),
(613, 'linearicons-traffic-lights', ''),
(614, 'linearicons-siren', ''),
(615, 'linearicons-road', ''),
(616, 'linearicons-engine', ''),
(617, 'linearicons-oil-pressure', ''),
(618, 'linearicons-coolant-temperature', ''),
(619, 'linearicons-car-battery', ''),
(620, 'linearicons-gas', ''),
(621, 'linearicons-gallon', ''),
(622, 'linearicons-transmission', ''),
(623, 'linearicons-car', ''),
(624, 'linearicons-car-wash', ''),
(625, 'linearicons-car-wash2', ''),
(626, 'linearicons-bus', ''),
(627, 'linearicons-bus2', ''),
(628, 'linearicons-car2', ''),
(629, 'linearicons-parking', ''),
(630, 'linearicons-car-lock', ''),
(631, 'linearicons-taxi', ''),
(632, 'linearicons-car-siren', ''),
(633, 'linearicons-car-wash3', ''),
(634, 'linearicons-car-wash4', ''),
(635, 'linearicons-ambulance', ''),
(636, 'linearicons-truck', ''),
(637, 'linearicons-trailer', ''),
(638, 'linearicons-scale-truck', ''),
(639, 'linearicons-train', ''),
(640, 'linearicons-ship', ''),
(641, 'linearicons-ship2', ''),
(642, 'linearicons-anchor', ''),
(643, 'linearicons-boat', ''),
(644, 'linearicons-bicycle', ''),
(645, 'linearicons-bicycle2', ''),
(646, 'linearicons-dumbbell', ''),
(647, 'linearicons-bench-press', ''),
(648, 'linearicons-swim', ''),
(649, 'linearicons-football', ''),
(650, 'linearicons-baseball-bat', ''),
(651, 'linearicons-baseball', ''),
(652, 'linearicons-tennis', ''),
(653, 'linearicons-tennis2', ''),
(654, 'linearicons-ping-pong', ''),
(655, 'linearicons-hockey', ''),
(656, 'linearicons-8ball', ''),
(657, 'linearicons-bowling', ''),
(658, 'linearicons-bowling-pins', ''),
(659, 'linearicons-golf', ''),
(660, 'linearicons-golf2', ''),
(661, 'linearicons-archery', ''),
(662, 'linearicons-slingshot', ''),
(663, 'linearicons-soccer', ''),
(664, 'linearicons-basketball', ''),
(665, 'linearicons-cube', ''),
(666, 'linearicons-3d-rotate', ''),
(667, 'linearicons-puzzle', ''),
(668, 'linearicons-glasses', ''),
(669, 'linearicons-glasses2', ''),
(670, 'linearicons-accessibility', ''),
(671, 'linearicons-wheelchair', ''),
(672, 'linearicons-wall', ''),
(673, 'linearicons-fence', ''),
(674, 'linearicons-wall2', ''),
(675, 'linearicons-icons', ''),
(676, 'linearicons-resize-handle', ''),
(677, 'linearicons-icons2', ''),
(678, 'linearicons-select', ''),
(679, 'linearicons-select2', ''),
(680, 'linearicons-site-map', ''),
(681, 'linearicons-earth', ''),
(682, 'linearicons-earth-lock', ''),
(683, 'linearicons-network', ''),
(684, 'linearicons-network-lock', ''),
(685, 'linearicons-planet', ''),
(686, 'linearicons-happy', ''),
(687, 'linearicons-smile', ''),
(688, 'linearicons-grin', ''),
(689, 'linearicons-tongue', ''),
(690, 'linearicons-sad', ''),
(691, 'linearicons-wink', ''),
(692, 'linearicons-dream', ''),
(693, 'linearicons-shocked', ''),
(694, 'linearicons-shocked2', ''),
(695, 'linearicons-tongue2', ''),
(696, 'linearicons-neutral', ''),
(697, 'linearicons-happy-grin', ''),
(698, 'linearicons-cool', ''),
(699, 'linearicons-mad', ''),
(700, 'linearicons-grin-evil', ''),
(701, 'linearicons-evil', ''),
(702, 'linearicons-wow', ''),
(703, 'linearicons-annoyed', ''),
(704, 'linearicons-wondering', ''),
(705, 'linearicons-confused', ''),
(706, 'linearicons-zipped', ''),
(707, 'linearicons-grumpy', ''),
(708, 'linearicons-mustache', ''),
(709, 'linearicons-tombstone-hipster', ''),
(710, 'linearicons-tombstone', ''),
(711, 'linearicons-ghost', ''),
(712, 'linearicons-ghost-hipster', ''),
(713, 'linearicons-halloween', ''),
(714, 'linearicons-christmas', ''),
(715, 'linearicons-easter-egg', ''),
(716, 'linearicons-mustache2', ''),
(717, 'linearicons-mustache-glasses', ''),
(718, 'linearicons-pipe', ''),
(719, 'linearicons-alarm', ''),
(720, 'linearicons-alarm-add', ''),
(721, 'linearicons-alarm-snooze', ''),
(722, 'linearicons-alarm-ringing', ''),
(723, 'linearicons-bullhorn', ''),
(724, 'linearicons-hearing', ''),
(725, 'linearicons-volume-high', ''),
(726, 'linearicons-volume-medium', ''),
(727, 'linearicons-volume-low', ''),
(728, 'linearicons-volume', ''),
(729, 'linearicons-mute', ''),
(730, 'linearicons-lan', ''),
(731, 'linearicons-lan2', ''),
(732, 'linearicons-wifi', ''),
(733, 'linearicons-wifi-lock', ''),
(734, 'linearicons-wifi-blocked', ''),
(735, 'linearicons-wifi-mid', ''),
(736, 'linearicons-wifi-low', ''),
(737, 'linearicons-wifi-low2', ''),
(738, 'linearicons-wifi-alert', ''),
(739, 'linearicons-wifi-alert-mid', ''),
(740, 'linearicons-wifi-alert-low', ''),
(741, 'linearicons-wifi-alert-low2', ''),
(742, 'linearicons-stream', ''),
(743, 'linearicons-stream-check', ''),
(744, 'linearicons-stream-error', ''),
(745, 'linearicons-stream-alert', ''),
(746, 'linearicons-communication', ''),
(747, 'linearicons-communication-crossed', ''),
(748, 'linearicons-broadcast', ''),
(749, 'linearicons-antenna', ''),
(750, 'linearicons-satellite', ''),
(751, 'linearicons-satellite2', ''),
(752, 'linearicons-mic', ''),
(753, 'linearicons-mic-mute', ''),
(754, 'linearicons-mic2', ''),
(755, 'linearicons-spotlights', ''),
(756, 'linearicons-hourglass', ''),
(757, 'linearicons-loading', ''),
(758, 'linearicons-loading2', ''),
(759, 'linearicons-loading3', ''),
(760, 'linearicons-refresh', ''),
(761, 'linearicons-refresh2', ''),
(762, 'linearicons-undo', ''),
(763, 'linearicons-redo', ''),
(764, 'linearicons-jump2', ''),
(765, 'linearicons-undo2', ''),
(766, 'linearicons-redo2', ''),
(767, 'linearicons-sync', ''),
(768, 'linearicons-repeat-one2', ''),
(769, 'linearicons-sync-crossed', ''),
(770, 'linearicons-sync2', ''),
(771, 'linearicons-repeat-one3', ''),
(772, 'linearicons-sync-crossed2', ''),
(773, 'linearicons-return', ''),
(774, 'linearicons-return2', ''),
(775, 'linearicons-refund', ''),
(776, 'linearicons-history', ''),
(777, 'linearicons-history2', ''),
(778, 'linearicons-self-timer', ''),
(779, 'linearicons-clock', ''),
(780, 'linearicons-clock2', ''),
(781, 'linearicons-clock3', ''),
(782, 'linearicons-watch', ''),
(783, 'linearicons-alarm2', ''),
(784, 'linearicons-alarm-add2', ''),
(785, 'linearicons-alarm-remove', ''),
(786, 'linearicons-alarm-check', ''),
(787, 'linearicons-alarm-error', ''),
(788, 'linearicons-timer', ''),
(789, 'linearicons-timer-crossed', ''),
(790, 'linearicons-timer2', ''),
(791, 'linearicons-timer-crossed2', ''),
(792, 'linearicons-download', ''),
(793, 'linearicons-upload', ''),
(794, 'linearicons-download2', ''),
(795, 'linearicons-upload2', ''),
(796, 'linearicons-enter-up', ''),
(797, 'linearicons-enter-down', ''),
(798, 'linearicons-enter-left', ''),
(799, 'linearicons-enter-right', ''),
(800, 'linearicons-exit-up', ''),
(801, 'linearicons-exit-down', ''),
(802, 'linearicons-exit-left', ''),
(803, 'linearicons-exit-right', ''),
(804, 'linearicons-enter-up2', ''),
(805, 'linearicons-enter-down2', ''),
(806, 'linearicons-enter-vertical', ''),
(807, 'linearicons-enter-left2', ''),
(808, 'linearicons-enter-right2', ''),
(809, 'linearicons-enter-horizontal', ''),
(810, 'linearicons-exit-up2', ''),
(811, 'linearicons-exit-down2', ''),
(812, 'linearicons-exit-left2', ''),
(813, 'linearicons-exit-right2', ''),
(814, 'linearicons-cli', ''),
(815, 'linearicons-bug', ''),
(816, 'linearicons-code', ''),
(817, 'linearicons-file-code', ''),
(818, 'linearicons-file-image', ''),
(819, 'linearicons-file-zip', ''),
(820, 'linearicons-file-audio', ''),
(821, 'linearicons-file-video', ''),
(822, 'linearicons-file-preview', ''),
(823, 'linearicons-file-charts', ''),
(824, 'linearicons-file-stats', ''),
(825, 'linearicons-file-spreadsheet', ''),
(826, 'linearicons-link', ''),
(827, 'linearicons-unlink', ''),
(828, 'linearicons-link2', ''),
(829, 'linearicons-unlink2', ''),
(830, 'linearicons-thumbs-up', ''),
(831, 'linearicons-thumbs-down', ''),
(832, 'linearicons-thumbs-up2', ''),
(833, 'linearicons-thumbs-down2', ''),
(834, 'linearicons-thumbs-up3', ''),
(835, 'linearicons-thumbs-down3', ''),
(836, 'linearicons-share', ''),
(837, 'linearicons-share2', ''),
(838, 'linearicons-share3', ''),
(839, 'linearicons-magnifier', ''),
(840, 'linearicons-file-search', ''),
(841, 'linearicons-find-replace', ''),
(842, 'linearicons-zoom-in', ''),
(843, 'linearicons-zoom-out', ''),
(844, 'linearicons-loupe', ''),
(845, 'linearicons-loupe-zoom-in', ''),
(846, 'linearicons-loupe-zoom-out', ''),
(847, 'linearicons-cross', ''),
(848, 'linearicons-menu', ''),
(849, 'linearicons-list', ''),
(850, 'linearicons-list2', ''),
(851, 'linearicons-list3', ''),
(852, 'linearicons-menu2', ''),
(853, 'linearicons-list4', ''),
(854, 'linearicons-menu3', ''),
(855, 'linearicons-exclamation', ''),
(856, 'linearicons-question', ''),
(857, 'linearicons-check', ''),
(858, 'linearicons-cross2', ''),
(859, 'linearicons-plus', ''),
(860, 'linearicons-minus', ''),
(861, 'linearicons-percent', ''),
(862, 'linearicons-chevron-up', ''),
(863, 'linearicons-chevron-down', ''),
(864, 'linearicons-chevron-left', ''),
(865, 'linearicons-chevron-right', ''),
(866, 'linearicons-chevrons-expand-vertical', ''),
(867, 'linearicons-chevrons-expand-horizontal', ''),
(868, 'linearicons-chevrons-contract-vertical', ''),
(869, 'linearicons-chevrons-contract-horizontal', ''),
(870, 'linearicons-arrow-up', ''),
(871, 'linearicons-arrow-down', ''),
(872, 'linearicons-arrow-left', ''),
(873, 'linearicons-arrow-right', ''),
(874, 'linearicons-arrow-up-right', ''),
(875, 'linearicons-arrows-merge', ''),
(876, 'linearicons-arrows-split', ''),
(877, 'linearicons-arrow-divert', ''),
(878, 'linearicons-arrow-return', ''),
(879, 'linearicons-expand', ''),
(880, 'linearicons-contract', ''),
(881, 'linearicons-expand2', ''),
(882, 'linearicons-contract2', ''),
(883, 'linearicons-move', ''),
(884, 'linearicons-tab', ''),
(885, 'linearicons-arrow-wave', ''),
(886, 'linearicons-expand3', ''),
(887, 'linearicons-expand4', ''),
(888, 'linearicons-contract3', ''),
(889, 'linearicons-notification', ''),
(890, 'linearicons-warning', ''),
(891, 'linearicons-notification-circle', ''),
(892, 'linearicons-question-circle', ''),
(893, 'linearicons-menu-circle', ''),
(894, 'linearicons-checkmark-circle', ''),
(895, 'linearicons-cross-circle', ''),
(896, 'linearicons-plus-circle', ''),
(897, 'linearicons-circle-minus', ''),
(898, 'linearicons-percent-circle', ''),
(899, 'linearicons-arrow-up-circle', ''),
(900, 'linearicons-arrow-down-circle', ''),
(901, 'linearicons-arrow-left-circle', ''),
(902, 'linearicons-arrow-right-circle', ''),
(903, 'linearicons-chevron-up-circle', ''),
(904, 'linearicons-chevron-down-circle', ''),
(905, 'linearicons-chevron-left-circle', ''),
(906, 'linearicons-chevron-right-circle', ''),
(907, 'linearicons-backward-circle', ''),
(908, 'linearicons-first-circle', ''),
(909, 'linearicons-previous-circle', ''),
(910, 'linearicons-stop-circle', ''),
(911, 'linearicons-play-circle', ''),
(912, 'linearicons-pause-circle', ''),
(913, 'linearicons-next-circle', ''),
(914, 'linearicons-last-circle', ''),
(915, 'linearicons-forward-circle', ''),
(916, 'linearicons-eject-circle', ''),
(917, 'linearicons-crop', ''),
(918, 'linearicons-frame-expand', ''),
(919, 'linearicons-frame-contract', ''),
(920, 'linearicons-focus', ''),
(921, 'linearicons-transform', ''),
(922, 'linearicons-grid', ''),
(923, 'linearicons-grid-crossed', ''),
(924, 'linearicons-layers', ''),
(925, 'linearicons-layers-crossed', ''),
(926, 'linearicons-toggle', ''),
(927, 'linearicons-rulers', ''),
(928, 'linearicons-ruler', ''),
(929, 'linearicons-funnel', ''),
(930, 'linearicons-flip-horizontal', ''),
(931, 'linearicons-flip-vertical', ''),
(932, 'linearicons-flip-horizontal2', ''),
(933, 'linearicons-flip-vertical2', ''),
(934, 'linearicons-angle', ''),
(935, 'linearicons-angle2', ''),
(936, 'linearicons-subtract', ''),
(937, 'linearicons-combine', ''),
(938, 'linearicons-intersect', ''),
(939, 'linearicons-exclude', ''),
(940, 'linearicons-align-center-vertical', ''),
(941, 'linearicons-align-right', ''),
(942, 'linearicons-align-bottom', ''),
(943, 'linearicons-align-left', ''),
(944, 'linearicons-align-center-horizontal', ''),
(945, 'linearicons-align-top', ''),
(946, 'linearicons-square', ''),
(947, 'linearicons-plus-square', ''),
(948, 'linearicons-minus-square', ''),
(949, 'linearicons-percent-square', ''),
(950, 'linearicons-arrow-up-square', ''),
(951, 'linearicons-arrow-down-square', ''),
(952, 'linearicons-arrow-left-square', ''),
(953, 'linearicons-arrow-right-square', ''),
(954, 'linearicons-chevron-up-square', ''),
(955, 'linearicons-chevron-down-square', ''),
(956, 'linearicons-chevron-left-square', ''),
(957, 'linearicons-chevron-right-square', ''),
(958, 'linearicons-check-square', ''),
(959, 'linearicons-cross-square', ''),
(960, 'linearicons-menu-square', ''),
(961, 'linearicons-prohibited', ''),
(962, 'linearicons-circle', ''),
(963, 'linearicons-radio-button', ''),
(964, 'linearicons-ligature', ''),
(965, 'linearicons-text-format', ''),
(966, 'linearicons-text-format-remove', ''),
(967, 'linearicons-text-size', ''),
(968, 'linearicons-bold', ''),
(969, 'linearicons-italic', ''),
(970, 'linearicons-underline', ''),
(971, 'linearicons-strikethrough', ''),
(972, 'linearicons-highlight', ''),
(973, 'linearicons-text-align-left', ''),
(974, 'linearicons-text-align-center', ''),
(975, 'linearicons-text-align-right', ''),
(976, 'linearicons-text-align-justify', ''),
(977, 'linearicons-line-spacing', ''),
(978, 'linearicons-indent-increase', ''),
(979, 'linearicons-indent-decrease', ''),
(980, 'linearicons-text-wrap', ''),
(981, 'linearicons-pilcrow', ''),
(982, 'linearicons-direction-ltr', ''),
(983, 'linearicons-direction-rtl', ''),
(984, 'linearicons-page-break', ''),
(985, 'linearicons-page-break2', ''),
(986, 'linearicons-sort-alpha-asc', ''),
(987, 'linearicons-sort-alpha-desc', ''),
(988, 'linearicons-sort-numeric-asc', ''),
(989, 'linearicons-sort-numeric-desc', ''),
(990, 'linearicons-sort-amount-asc', ''),
(991, 'linearicons-sort-amount-desc', ''),
(992, 'linearicons-sort-time-asc', ''),
(993, 'linearicons-sort-time-desc', ''),
(994, 'linearicons-sigma', ''),
(995, 'linearicons-pencil-line', ''),
(996, 'linearicons-hand', ''),
(997, 'linearicons-pointer-up', ''),
(998, 'linearicons-pointer-right', ''),
(999, 'linearicons-pointer-down', ''),
(1000, 'linearicons-pointer-left', ''),
(1001, 'linearicons-finger-tap', ''),
(1002, 'linearicons-fingers-tap', ''),
(1003, 'linearicons-reminder', ''),
(1004, 'linearicons-fingers-crossed', ''),
(1005, 'linearicons-fingers-victory', ''),
(1006, 'linearicons-gesture-zoom', ''),
(1007, 'linearicons-gesture-pinch', ''),
(1008, 'linearicons-fingers-scroll-horizontal', ''),
(1009, 'linearicons-fingers-scroll-vertical', ''),
(1010, 'linearicons-fingers-scroll-left', ''),
(1011, 'linearicons-fingers-scroll-right', ''),
(1012, 'linearicons-hand2', ''),
(1013, 'linearicons-pointer-up2', ''),
(1014, 'linearicons-pointer-right2', ''),
(1015, 'linearicons-pointer-down2', ''),
(1016, 'linearicons-pointer-left2', ''),
(1017, 'linearicons-finger-tap2', ''),
(1018, 'linearicons-fingers-tap2', ''),
(1019, 'linearicons-reminder2', ''),
(1020, 'linearicons-gesture-zoom2', ''),
(1021, 'linearicons-gesture-pinch2', ''),
(1022, 'linearicons-fingers-scroll-horizontal2', ''),
(1023, 'linearicons-fingers-scroll-vertical2', ''),
(1024, 'linearicons-fingers-scroll-left2', ''),
(1025, 'linearicons-fingers-scroll-right2', ''),
(1026, 'linearicons-fingers-scroll-vertical3', ''),
(1027, 'linearicons-border-style', ''),
(1028, 'linearicons-border-all', ''),
(1029, 'linearicons-border-outer', ''),
(1030, 'linearicons-border-inner', ''),
(1031, 'linearicons-border-top', ''),
(1032, 'linearicons-border-horizontal', ''),
(1033, 'linearicons-border-bottom', ''),
(1034, 'linearicons-border-left', ''),
(1035, 'linearicons-border-vertical', ''),
(1036, 'linearicons-border-right', ''),
(1037, 'linearicons-border-none', ''),
(1038, 'linearicons-ellipsis', ''),
(1039, 'ram-idols-icon', 'e900'),
(1040, 'ram-mala-bracelets-icon', 'e901'),
(1041, 'ram-online-puja-services-icon', 'e902'),
(1042, 'ram-rudraksha-icon', 'e903'),
(1043, 'ram-sacred-articles-icon', 'e904'),
(1044, 'ram-shivling-icon', 'e905'),
(1045, 'ram-shree-yantra-icon', 'e906'),
(1046, 'ram-yantra-icon', 'e907'),
(1047, 'ram-crystals-icon', 'e908'),
(1048, 'ram-crystals-icon1', 'e909'),
(1049, 'ram-idols-icon1', 'e90f'),
(1050, 'ram-malabracelet-icon1', 'e910'),
(1051, 'ram-pujaservices-icon1', 'e911'),
(1052, 'ram-rudraksha-icon1', 'e912'),
(1053, 'ram-sacredarticles-icon1', 'e913'),
(1054, 'ram-shivling-icon1', 'e914'),
(1055, 'ram-yantra-icon1', 'e916'),
(1056, 'ram-shreeyantra-icon1', 'e915');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `email` longtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`, `status`, `date`) VALUES
(1, 'sumit_stanley@yahoo.com', 0, '0000-00-00'),
(2, 'zyanideglobal@gmail.com', 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `Prd_ID` int(11) NOT NULL,
  `Prd_Name` varchar(255) NOT NULL,
  `Opt_Name` varchar(255) NOT NULL,
  `Description` longtext NOT NULL,
  `Price` varchar(255) NOT NULL,
  `USDPrice` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `Prd_ID`, `Prd_Name`, `Opt_Name`, `Description`, `Price`, `USDPrice`) VALUES
(1, 17, 'Blue Sapphire - 4.5 Carats', 'Loose Bead', 'Only Bead', '2000', '20'),
(2, 17, 'Blue Sapphire - 4.5 Carats', 'Silver Capping', 'With Silver Capping', '1000', '50'),
(3, 94, 'Shri Krishna Puja, Mantra Jaap and Yagna', '11000 Mantra Jaap', '3 Pundits, 1 Day (4 - 5 Hours)', '9001', '108'),
(4, 94, 'Shri Krishna Puja, Mantra Jaap and Yagna', '21000 Mantra Jaap', '5 Pundits, 1 Day (4 - 5 Hours)', '12501', '120'),
(5, 94, 'Shri Krishna Puja, Mantra Jaap and Yagna', '51000 Mantra Jaap', '5 Pundits, 3 Days (4 - 5 Hours Per Day)', '25501', '250'),
(6, 94, 'Shri Krishna Puja, Mantra Jaap and Yagna', '125000 Mantra Jaap', '7 Pundits, 4 Days (4 - 5 Hours Per Day)', '45001', '500'),
(7, 95, 'Ardhnarishwar Puja', '11000 Mantra Jaap', '3 Pundits, 1 Day (4 - 5 Hours)', '9001', '108'),
(8, 95, 'Ardhnarishwar Puja', '21000 Mantra Jaap', '5 Pundits, 1 Day (4 - 5 Hours)', '12501', '120'),
(9, 95, 'Ardhnarishwar Puja', '51000 Mantra Jaap', '5 Pundits, 3 Days (4 - 5 Hours Per Day)', '25501', '250'),
(10, 95, 'Ardhnarishwar Puja', '125000 Mantra Jaap', '7 Pundits, 4 Days (4 - 5 Hours Per Day)', '45001', '500');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `Bill_FirstName` varchar(255) NOT NULL,
  `Bill_LastName` varchar(255) NOT NULL,
  `Bill_Country` varchar(255) NOT NULL,
  `Bill_Address1` varchar(255) NOT NULL,
  `Bill_City` varchar(255) NOT NULL,
  `Bill_State` varchar(255) NOT NULL,
  `Bill_Zipcode` int(11) NOT NULL,
  `Bill_EmailId` varchar(255) NOT NULL,
  `Ship_FirstName` varchar(255) NOT NULL,
  `Ship_LastName` varchar(255) NOT NULL,
  `Ship_Country` varchar(255) NOT NULL,
  `Ship_Address1` varchar(255) NOT NULL,
  `Ship_City` varchar(255) NOT NULL,
  `Ship_State` varchar(255) NOT NULL,
  `Ship_Zipcode` int(11) NOT NULL,
  `Additional_Info` longtext NOT NULL,
  `Product_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`Product_info`)),
  `Order_ID` varchar(255) NOT NULL,
  `Bill_Contact_No` varchar(12) NOT NULL,
  `Order_status` varchar(255) NOT NULL,
  `Payment_status` varchar(255) NOT NULL,
  `Payment_type` varchar(255) NOT NULL,
  `payment_info` longtext NOT NULL,
  `payment_date` date NOT NULL DEFAULT current_timestamp(),
  `payment_time` time NOT NULL DEFAULT current_timestamp(),
  `Shipping_Charges` decimal(10,3) NOT NULL,
  `Total` decimal(10,3) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `ray_payID` varchar(255) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `AccountNo` varchar(255) DEFAULT NULL,
  `Cheque` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `Bill_FirstName`, `Bill_LastName`, `Bill_Country`, `Bill_Address1`, `Bill_City`, `Bill_State`, `Bill_Zipcode`, `Bill_EmailId`, `Ship_FirstName`, `Ship_LastName`, `Ship_Country`, `Ship_Address1`, `Ship_City`, `Ship_State`, `Ship_Zipcode`, `Additional_Info`, `Product_info`, `Order_ID`, `Bill_Contact_No`, `Order_status`, `Payment_status`, `Payment_type`, `payment_info`, `payment_date`, `payment_time`, `Shipping_Charges`, `Total`, `currency`, `ray_payID`, `userid`, `AccountNo`, `Cheque`) VALUES
(15, 'Praveen', 'shrigadi', '2', 'Sakinak', 'mumbai', 'maharashtra', 40072, 'praveen.shrigadi465@gmail.com', 'Praveen', 'shrigadi', '2', 'Sakinak', 'mumbai', 'maharashtra', 40072, '', '[{\"product_id_webuser\":\"14\",\"product_name_webuser\":\"Blue Sapphire\",\"product_currency\":\"USD\",\"product_weight\":\"20\",\"product_price_webuser\":\"15.00\",\"product_quantity_webuser\":\"1\",\"product_images_webuser\":\"032124120336-size800x800.jpg\",\"product_Option\":\"None\",\"product_OptPrice\":\"0\"}]', '95126483', '8928236833', 'pending', 'pending', '', '', '2024-03-23', '18:23:12', 0.000, 15.000, 'USD', '', '4', NULL, NULL),
(16, 'Praveen', 'shrigadi', '2', 'Sakinak', 'mumbai', 'maharashtra', 40072, 'praveen.shrigadi465@gmail.com', 'Praveen', 'shrigadi', '2', 'Sakinak', 'mumbai', 'maharashtra', 40072, '', '[{\"product_id_webuser\":\"14\",\"product_name_webuser\":\"Blue Sapphire\",\"product_currency\":\"USD\",\"product_weight\":\"20\",\"product_price_webuser\":\"15.00\",\"product_quantity_webuser\":\"1\",\"product_images_webuser\":\"032124120336-size800x800.jpg\",\"product_Option\":\"None\",\"product_OptPrice\":\"0\"}]', '95173426', '8928236833', 'pending', 'pending', '', '', '2024-03-23', '18:29:51', 0.000, 15.000, 'USD', '', '4', NULL, NULL),
(17, 'Praveen', 'shrigadi', '5', 'Sakinak', 'mumbai', 'maharashtra', 40072, 'praveen.shrigadi465@gmail.com', 'Praveen', 'shrigadi', '5', 'Sakinak', 'mumbai', 'maharashtra', 40072, '', '[{\"product_id_webuser\":\"14\",\"product_name_webuser\":\"Blue Sapphire\",\"product_currency\":\"USD\",\"product_weight\":\"20\",\"product_price_webuser\":\"15.00\",\"product_quantity_webuser\":\"1\",\"product_images_webuser\":\"032124120336-size800x800.jpg\",\"product_Option\":\"None\",\"product_OptPrice\":\"0\"}]', '93628104', '8928236833', 'pending', 'Complete', '', '', '2024-03-23', '18:32:08', 0.000, 15.000, 'USD', '', '4', NULL, NULL),
(18, 'Praveen', 'shrigadi', '2', 'Sakinak', 'mumbai', 'maharashtra', 40072, 'praveen.shrigadi465@gmail.com', 'Praveen', 'shrigadi', '2', 'Sakinak', 'mumbai', 'maharashtra', 40072, 'Demo', '[{\"product_id_webuser\":\"15\",\"product_name_webuser\":\"Yellow Sapphire\",\"product_currency\":\"INR\",\"product_weight\":\"20\",\"product_price_webuser\":\"1000\",\"product_quantity_webuser\":\"2\",\"product_images_webuser\":\"032124030325-size800x800.jpg\",\"product_Option\":\"None\",\"product_OptPrice\":\"0\"},{\"product_id_webuser\":\"14\",\"product_name_webuser\":\"Blue Sapphire\",\"product_currency\":\"INR\",\"product_weight\":\"20\",\"product_price_webuser\":\"1000\",\"product_quantity_webuser\":\"1\",\"product_images_webuser\":\"032124120336-size800x800.jpg\",\"product_Option\":\"None\",\"product_OptPrice\":\"0\"}]', '43016579', '8928236833', 'pending', 'Complete', '', '', '2024-03-23', '18:37:06', 0.000, 3000.000, 'INR', 'pay_Nptow0FKE8Y5CL', '4', NULL, NULL),
(19, 'Praveen', 'shrigadi', '5', 'Sakinak', 'mumbai', 'maharashtra', 40072, 'praveen.shrigadi465@gmail.com', 'Praveen', 'shrigadi', '5', 'Sakinak', 'mumbai', 'maharashtra', 40072, '', '[{\"product_id_webuser\":\"15\",\"product_name_webuser\":\"Yellow Sapphire\",\"product_currency\":\"INR\",\"product_weight\":\"20\",\"product_price_webuser\":\"1000\",\"product_quantity_webuser\":\"1\",\"product_images_webuser\":\"032124030325-size800x800.jpg\",\"product_Option\":\"None\",\"product_OptPrice\":\"0\"}]', '95274061', '8928236833', 'pending', 'Complete', '', '', '2024-03-23', '18:45:18', 0.000, 1000.000, 'INR', 'pay_Nptsp9qnYOv77p', '4', NULL, NULL),
(20, 'Navin', 'Khare', '103', '6A Kailash nagarVadavli section', 'Mumbai', 'Maharashtra', 421501, 'ommoksh@gmail.com', 'Navin', 'Khare', '103', '6A Kailash nagarVadavli section', 'Mumbai', 'Maharashtra', 421501, 'test test', '[{\"product_id_webuser\":\"14\",\"product_name_webuser\":\"Blue Sapphire\",\"product_currency\":\"INR\",\"product_weight\":\"20\",\"product_price_webuser\":\"1000\",\"product_quantity_webuser\":\"2\",\"product_images_webuser\":\"032124120336-size800x800.jpg\",\"product_Option\":\"None\",\"product_OptPrice\":\"0\"}]', '50723164', '9860750061', 'pending', 'pending', '', '', '2024-04-02', '09:17:34', 0.000, 2000.000, 'INR', '', '5', NULL, NULL),
(21, 'Praveen', 'shrigadi', '3', 'Sakinak', 'mumbai', 'maharashtra', 40072, 'praveen.shrigadi465@gmail.com', 'Praveen', 'shrigadi', '3', 'Sakinak', 'mumbai', 'maharashtra', 40072, '', '[{\"product_id_webuser\":\"17\",\"product_name_webuser\":\"Blue Sapphire - 4.5 Carats\",\"product_currency\":\"INR\",\"product_weight\":\"5\",\"product_price_webuser\":\"40000\",\"product_quantity_webuser\":\"2\",\"product_images_webuser\":\"051124040502-BS.jpg\",\"product_Option\":\"Silver Capping\",\"product_OptPrice\":\"1,000.00\"},{\"product_id_webuser\":\"16\",\"product_name_webuser\":\"Test Product\",\"product_currency\":\"INR\",\"product_weight\":\"10\",\"product_price_webuser\":\"2000\",\"product_quantity_webuser\":\"1\",\"product_images_webuser\":\"040224050439-11-mukhi-nepal-gold-scaled.jpg\",\"product_Option\":\"None\",\"product_OptPrice\":\"0\"}]', '59163847', '8928236833', 'pending', 'pending', '', '', '2024-05-19', '11:49:05', 0.000, 2.000, 'INR', '', '4', NULL, NULL),
(22, 'Praveen', 'shrigadi', '3', 'Sakinak', 'mumbai', 'maharashtra', 40072, 'praveen.shrigadi465@gmail.com', 'Praveen', 'shrigadi', '3', 'Sakinak', 'mumbai', 'maharashtra', 40072, '', '[{\"product_id_webuser\":\"17\",\"product_name_webuser\":\"Blue Sapphire - 4.5 Carats\",\"product_currency\":\"INR\",\"product_weight\":\"5\",\"product_price_webuser\":\"40000\",\"product_quantity_webuser\":\"2\",\"product_images_webuser\":\"051124040502-BS.jpg\",\"product_Option\":\"Silver Capping\",\"product_OptPrice\":\"1,000.00\"},{\"product_id_webuser\":\"16\",\"product_name_webuser\":\"Test Product\",\"product_currency\":\"INR\",\"product_weight\":\"10\",\"product_price_webuser\":\"2000\",\"product_quantity_webuser\":\"1\",\"product_images_webuser\":\"040224050439-11-mukhi-nepal-gold-scaled.jpg\",\"product_Option\":\"None\",\"product_OptPrice\":\"0\"}]', '80732694', '8928236833', 'pending', 'pending', '', '', '2024-05-19', '11:49:17', 0.000, 2.000, 'INR', '', '4', NULL, NULL),
(23, 'Praveen', 'shrigadi', '3', 'Sakinak', 'mumbai', 'maharashtra', 40072, 'praveen.shrigadi465@gmail.com', 'Praveen', 'shrigadi', '3', 'Sakinak', 'mumbai', 'maharashtra', 40072, '', '[{\"product_id_webuser\":\"17\",\"product_name_webuser\":\"Blue Sapphire - 4.5 Carats\",\"product_currency\":\"INR\",\"product_weight\":\"5\",\"product_price_webuser\":\"40000\",\"product_quantity_webuser\":\"2\",\"product_images_webuser\":\"051124040502-BS.jpg\",\"product_Option\":\"Silver Capping\",\"product_OptPrice\":\"1,000.00\"},{\"product_id_webuser\":\"16\",\"product_name_webuser\":\"Test Product\",\"product_currency\":\"INR\",\"product_weight\":\"10\",\"product_price_webuser\":\"2000\",\"product_quantity_webuser\":\"1\",\"product_images_webuser\":\"040224050439-11-mukhi-nepal-gold-scaled.jpg\",\"product_Option\":\"None\",\"product_OptPrice\":\"0\"}]', '27308415', '8928236833', 'pending', 'pending', '', '', '2024-05-19', '11:51:43', 0.000, 4000.000, 'INR', '', '4', '123123123123', 0),
(24, 'Navin', 'Khare', '103', '6A Kailash nagarVadavli section', 'Mumbai', 'Maharashtra', 421501, 'ommoksh@gmail.com', 'Navin', 'Khare', '103', '6A Kailash nagarVadavli section', 'Mumbai', 'Maharashtra', 421501, 'Test Order', '[{\"product_id_webuser\":\"17\",\"product_name_webuser\":\"Blue Sapphire - 4.5 Carats\",\"product_currency\":\"INR\",\"product_weight\":\"5\",\"product_price_webuser\":\"40000\",\"product_quantity_webuser\":\"2\",\"product_images_webuser\":\"051124040502-BS.jpg\",\"product_Option\":\"Silver Capping\",\"product_OptPrice\":\"1,000.00\"},{\"product_id_webuser\":\"18\",\"product_name_webuser\":\"Bal Gopal Puja\",\"product_currency\":\"INR\",\"product_weight\":\"100\",\"product_price_webuser\":\"9001\",\"product_quantity_webuser\":\"1\",\"product_images_webuser\":\"062524120624-sample product image.jpg\",\"product_Option\":\"None\",\"product_OptPrice\":\"0\"}]', '24879165', '9860750061', 'pending', 'pending', '', '', '2024-06-25', '07:11:19', 0.000, 11001.000, 'INR', '', '5', '', 0),
(25, 'Navin', 'Khare', '241', '6A Kailash nagarVadavli section', 'Mumbai', 'Maharashtra', 421501, 'ommoksh@gmail.com', 'Navin', 'Khare', '241', '6A Kailash nagarVadavli section', 'Mumbai', 'Maharashtra', 421501, '', '[{\"product_id_webuser\":\"91\",\"product_name_webuser\":\"15 Mukhi Indonesia - Big\",\"product_currency\":\"INR\",\"product_weight\":\"20\",\"product_price_webuser\":\"100\",\"product_quantity_webuser\":\"1\",\"product_images_webuser\":\"071924110735-sample product image.jpg\",\"product_Option\":\"None\",\"product_OptPrice\":\"0\"}]', '23789510', '9860750061', 'pending', 'pending', '', '', '2024-07-26', '10:27:39', 0.000, 100.000, 'INR', '', '5', NULL, NULL),
(30, 'Praveen', 'shrigadi', '2', 'Sakinak', 'mumbai', 'maharashtra', 40072, 'praveen.shrigadi465@gmail.com', 'Praveen', 'shrigadi', '2', 'Sakinak', 'mumbai', 'maharashtra', 40072, '', '{\"1\":{\"product_id_webuser\":\"94\",\"product_name_webuser\":\"Shri Krishna Puja, Mantra Jaap and Yagna\",\"product_currency\":\"INR\",\"product_weight\":\"500\",\"product_price_webuser\":\"9001\",\"product_quantity_webuser\":\"1\",\"product_images_webuser\":\"080924030802-sample product image.jpg\",\"product_Option\":\"51000 Mantra Jaap\",\"product_OptPrice\":\"25,501.00\"},\"2\":{\"product_id_webuser\":\"94\",\"product_name_webuser\":\"Shri Krishna Puja, Mantra Jaap and Yagna\",\"product_currency\":\"INR\",\"product_weight\":\"500\",\"product_price_webuser\":\"9001\",\"product_quantity_webuser\":\"1\",\"product_images_webuser\":\"080924030802-sample product image.jpg\",\"product_Option\":\"21000 Mantra Jaap\",\"product_OptPrice\":\"12,501.00\"}}', '68175029', '8928236833', 'pending', 'pending', '', '', '2024-08-10', '12:44:52', 4800.000, 42802.000, 'INR', '', '4', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `postal_code`
--

CREATE TABLE `postal_code` (
  `id` bigint(20) NOT NULL,
  `Circle Name` mediumtext DEFAULT NULL,
  `Region Name` mediumtext DEFAULT NULL,
  `Division Name` mediumtext DEFAULT NULL,
  `Office Name` mediumtext DEFAULT NULL,
  `Pincode` mediumtext DEFAULT NULL,
  `OfficeType` mediumtext DEFAULT NULL,
  `Delivery` mediumtext DEFAULT NULL,
  `District` mediumtext DEFAULT NULL,
  `StateName` mediumtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_img`
--

CREATE TABLE `product_img` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_img_name` varchar(255) DEFAULT NULL,
  `seq` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_img`
--

INSERT INTO `product_img` (`id`, `product_id`, `product_img_name`, `seq`) VALUES
(13, 19, '071424080720-sample product image.jpg', 0),
(10, 17, '051124040502-BS.jpg', 0),
(11, 17, '051124040528-size800x800.jpg', 0),
(12, 18, '062524120624-sample product image.jpg', 0),
(9, 16, '040224050439-11-mukhi-nepal-gold-scaled.jpg', 0),
(14, 20, '071524080731-sample product image.jpg', 0),
(15, 20, '071524080750-size800x800.jpg', 0),
(16, 21, '071524080755-sample product image.jpg', 0),
(17, 22, '071524080709-sample product image.jpg', 0),
(18, 23, '071524080722-sample product image.jpg', 0),
(19, 24, '071724090740-sample product image.jpg', 0),
(20, 25, '071724090718-sample product image.jpg', 0),
(21, 26, '071724090729-sample product image.jpg', 0),
(22, 27, '071724090730-sample product image.jpg', 0),
(23, 28, '071724090737-sample product image.jpg', 0),
(24, 29, '071724090704-sample product image.jpg', 0),
(25, 30, '071724090727-sample product image.jpg', 0),
(26, 31, '071724090750-sample product image.jpg', 0),
(27, 32, '071724090737-sample product image.jpg', 0),
(28, 33, '071724090756-sample product image.jpg', 0),
(29, 34, '071724090714-sample product image.jpg', 0),
(30, 35, '071724090727-sample product image.jpg', 0),
(31, 36, '071724090759-sample product image.jpg', 0),
(32, 37, '071724090722-sample product image.jpg', 0),
(33, 38, '071724090739-sample product image.jpg', 0),
(34, 39, '071724090758-sample product image.jpg', 0),
(35, 40, '071724110715-sample product image.jpg', 0),
(36, 41, '071724110734-sample product image.jpg', 0),
(37, 42, '071724110706-sample product image.jpg', 0),
(38, 43, '071724110731-sample product image.jpg', 0),
(39, 44, '071724110704-sample product image.jpg', 0),
(40, 45, '071724110719-sample product image.jpg', 0),
(41, 46, '071724110734-sample product image.jpg', 0),
(42, 47, '071724110750-sample product image.jpg', 0),
(43, 48, '071724110723-sample product image.jpg', 0),
(44, 49, '071724110742-sample product image.jpg', 0),
(45, 50, '071724110758-sample product image.jpg', 0),
(46, 51, '071724110718-sample product image.jpg', 0),
(47, 53, '071924090706-sample product image.jpg', 0),
(48, 54, '071924090724-sample product image.jpg', 0),
(49, 55, '071924090739-sample product image.jpg', 0),
(50, 56, '071924090756-sample product image.jpg', 0),
(51, 57, '071924100724-sample product image.jpg', 0),
(52, 58, '071924100757-sample product image.jpg', 0),
(53, 59, '071924100720-sample product image.jpg', 0),
(54, 60, '071924100735-sample product image.jpg', 0),
(55, 67, '071924100742-sample product image.jpg', 0),
(56, 68, '071924100755-sample product image.jpg', 0),
(57, 61, '071924100714-sample product image.jpg', 0),
(58, 62, '071924100705-sample product image.jpg', 0),
(59, 63, '071924100721-sample product image.jpg', 0),
(60, 64, '071924100741-sample product image.jpg', 0),
(61, 65, '071924100756-sample product image.jpg', 0),
(62, 66, '071924100710-sample product image.jpg', 0),
(63, 69, '071924100704-sample product image.jpg', 0),
(64, 76, '071924100723-sample product image.jpg', 0),
(65, 75, '071924100737-sample product image.jpg', 0),
(66, 74, '071924100751-sample product image.jpg', 0),
(67, 73, '071924100706-sample product image.jpg', 0),
(68, 72, '071924100719-sample product image.jpg', 0),
(69, 71, '071924100759-sample product image.jpg', 0),
(70, 70, '071924100715-sample product image.jpg', 0),
(71, 77, '071924110700-sample product image.jpg', 0),
(72, 78, '071924110714-sample product image.jpg', 0),
(73, 79, '071924110727-sample product image.jpg', 0),
(74, 80, '071924110741-sample product image.jpg', 0),
(75, 84, '071924110755-sample product image.jpg', 0),
(76, 83, '071924110708-sample product image.jpg', 0),
(77, 82, '071924110720-sample product image.jpg', 0),
(78, 81, '071924110734-sample product image.jpg', 0),
(79, 87, '071924110729-sample product image.jpg', 0),
(80, 88, '071924110746-sample product image.jpg', 0),
(81, 89, '071924110759-sample product image.jpg', 0),
(82, 90, '071924110712-sample product image.jpg', 0),
(83, 91, '071924110735-sample product image.jpg', 0),
(84, 92, '071924110749-sample product image.jpg', 0),
(86, 85, '071924110711-sample product image.jpg', 0),
(87, 86, '071924110728-sample product image.jpg', 0),
(88, 94, '080924030802-sample product image.jpg', 0),
(89, 95, '081624040843-sample product image.jpg', 0),
(90, 96, '082324110824-surya-dosh-nivaran-shani-puja.jpg', 0),
(91, 97, '082324110805-shani-dosh-nivaran-shani-puja.jpg', 0),
(92, 98, '082324110846-rahu-dosh-nivaran-shani-puja.jpg', 0),
(93, 99, '082324110806-guru-dosh-nivaran-shani-puja.jpg', 0),
(94, 100, '082324110829-mangal-dosh-nivaran-shani-puja.jpg', 0),
(95, 101, '082324110846-chandra-dosh-nivaran-shani-puja.jpg', 0),
(96, 102, '082324110803-ketu-dosh-nivaran-shani-puja.jpg', 0),
(97, 103, '082324120810-budh-dosh-nivaran-shani-puja.jpg', 0),
(98, 104, '082324120808-shukra-dosh-nivaran-shani-puja.jpg', 0),
(99, 105, '082324120855-kaal-sarp-dosh-nivaran-puja.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_info`
--

CREATE TABLE `product_info` (
  `Product_ID` int(11) NOT NULL,
  `Product_Name` longtext NOT NULL,
  `Product_Info` longtext NOT NULL,
  `Product_Description` longtext NOT NULL,
  `Product_Additional_info` longtext NOT NULL,
  `Product_Code` varchar(255) NOT NULL,
  `Product_Price` int(11) NOT NULL,
  `Product_USD` int(11) NOT NULL,
  `Product_Weight` int(11) NOT NULL,
  `Product_Discount` int(11) DEFAULT NULL,
  `Product_Qty` int(11) NOT NULL,
  `Product_SKU` varchar(255) NOT NULL,
  `Product_Main_Category` varchar(255) NOT NULL,
  `Product_Sub_Category` varchar(255) DEFAULT NULL,
  `Product_Sub_Sub_Category` varchar(255) DEFAULT NULL,
  `Product_Click_Count` int(11) NOT NULL,
  `Product_Added` datetime NOT NULL DEFAULT current_timestamp(),
  `Product_Updated` datetime NOT NULL,
  `Product_Status` varchar(255) NOT NULL DEFAULT 'Inactive',
  `Feature` varchar(255) NOT NULL DEFAULT 'N',
  `Sale_Offer` varchar(255) NOT NULL DEFAULT 'N',
  `Deals` varchar(255) NOT NULL DEFAULT 'N',
  `meta_description` longtext NOT NULL,
  `meta_keyword` longtext NOT NULL,
  `meta_title` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_info`
--

INSERT INTO `product_info` (`Product_ID`, `Product_Name`, `Product_Info`, `Product_Description`, `Product_Additional_info`, `Product_Code`, `Product_Price`, `Product_USD`, `Product_Weight`, `Product_Discount`, `Product_Qty`, `Product_SKU`, `Product_Main_Category`, `Product_Sub_Category`, `Product_Sub_Sub_Category`, `Product_Click_Count`, `Product_Added`, `Product_Updated`, `Product_Status`, `Feature`, `Sale_Offer`, `Deals`, `meta_description`, `meta_keyword`, `meta_title`) VALUES
(16, 'Test Product', '<p>test Description<br></p>', '<p>test Description</p>', '<p>test Description<br></p>', 'TP01', 2000, 20, 10, 0, 20, 'IKMNJI', '5', '10', '4', 0, '2024-04-02 11:44:24', '0000-00-00 00:00:00', 'Active', 'Y', 'N', 'Y', 'Test Product Test Product Test Product', 'Test Product', 'This is Test Product'),
(17, 'Blue Sapphire - 4.5 Carats', '<p>Premium Quality, Natural <span style=\"font-size: 1rem;\">Blue Sapphire Gemstones with Certification</span><span style=\"font-size: 1rem;\">  </span></p>', '<p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:115%;\r\nmso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin\">Blue Sapphire\r\nGemstones are naturally found in different shades of blue and also purple/indigo.\r\nThe best quality Blue Sapphire stones have <span style=\"color: rgb(34, 34, 34); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">deep blue colored hue, are </span>100% natural and free from\r\nany treatments. They have no visible inclusions and are also transparent with\r\nclear cut and color. The more vibrant and lustrous the stone the better it is\r\nconsidered. Blue Sapphire Gemstone is a rare stone that belongs to the Sapphire\r\nfamily of stones; they are a form of <span style=\"color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">mineral\r\nCorundum (aluminum oxide)</span>. With hardness of 9 on the Mohs scale, Blue\r\nSapphires are second most hard and durable stones after Diamonds. <span style=\"color: rgb(34, 34, 34); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">The best-quality blue sapphires are\r\nmined in Ceylon (Sri Lanka), Kashmir (India), and Madagascar. </span>Since\r\nantiquity, Blue Sapphire has fascinated royalty and others for its beauty and <span style=\"color: rgb(34, 34, 34); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">mystic properties and thus it has been\r\npart of history and folklore since ancient times. </span>Healers and travelers\r\nhave used Blue Sapphire alike as it was believed to be associated with\r\nprotection, spiritual prowess and intuition. The word ‘Sapphire’ is believed to\r\nbe derived from Latin ‘Sapphirus’ and Greek ‘Sappheiros’ which means blue or\r\nprecious. Of all Sapphires the blue sapphire is considered as most prized and\r\nprecious.  In Western Astrology, the Blue\r\nSapphire gemstone is the birthstone for people born in the month of September\r\n(Virgo / Libra).<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:115%;\r\nmso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin\">In Vedic\r\nAstrology<b> </b>Blue Sapphire is\r\nassociated with Shani Dev or Planet Saturn. In Hindi, the<b> </b>Blue Sapphire is called Neelam, it is considered as one of the\r\nmost powerful Gemstones. Another name of the Blue Sapphire is Shanipriya\r\nmeaning ‘beloved to Lord Shani’. Name of one of Lord Shani Dev wife is also\r\nNeelam, Neelima or Neela, She is mother of Sage <span style=\"color: rgb(32, 33, 34); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Kuligna and personification of the blue sapphire\r\ngemstone. </span></span><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:\r\n115%\">In Vedic Astrology Saturn is the slowest moving Planet hence its effects\r\nare profound. Planet Saturn, the ruling Planet of Blue Sapphire is considered\r\nas a strict Planet that hands individuals lessons and fruits of their Karma. The\r\n</span><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:115%;mso-bidi-font-family:\r\nCalibri;mso-bidi-theme-font:minor-latin\">Blue Sapphire stone is worn to pacify\r\nmalefic effects of a poorly placed </span><span lang=\"EN-US\" style=\"font-size:\r\n12.0pt;line-height:115%\">Planet Saturn in his natal charts and to enhance\r\npositive properties of it. It is recommended that one should wear a Blue\r\nSapphire Gemstone after proper study of his or her horoscope by a learned and\r\nknowledgeable Astrologer. As per Vedic scriptures it is important to wear<b> </b>Blue Sapphire which is free from 16\r\nstated flaws, the most common one being that the stone shouldn’t be milky in\r\nnature.</span><span lang=\"EN-US\" style=\"font-size:14.0pt;line-height:115%\"> </span><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:115%\">Blue Sapphire Gemstone is\r\nassociated with discipline, wisdom and intellect. Many regard </span><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:115%;mso-bidi-font-family:Calibri;\r\nmso-bidi-theme-font:minor-latin\">Blue Sapphire as a life-changing Gemstone. </span><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:115%\">Blue Sapphire Gemstone\r\nwhen worn blesses devotees with success, prosperity and wealth. It helps\r\nimprove energy levels, focus and concentration thus improving decision making\r\nability and providing clarity of thoughts. The stone also helps give relief\r\nfrom miseries and aid in completion of stuck work. Blue Sapphire Gemstone is\r\nalso a protective stone that provide protection from enemies and negativities\r\nalike.    </span><span lang=\"EN-US\" style=\"font-size:14.0pt;line-height:115%\"><o:p></o:p></span></p><p class=\"MsoNormal\"><b><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:115%\">Benefits of wearing Blue Sapphire\r\nGemstone:<o:p></o:p></span></b></p><p class=\"MsoListParagraphCxSpFirst\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:115%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \"Times New Roman\";\">      \r\n</span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:12.0pt;\r\nline-height:115%;mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin\">Elevates\r\none’s financial status and eliminates <span style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">financial\r\nmiseries <o:p></o:p></span></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:115%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \"Times New Roman\";\">      \r\n</span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size: 12pt; line-height: 115%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Provides protection from accidents and all sought of\r\nnegativities </span><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:115%;\r\nmso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin\"><o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:115%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \"Times New Roman\";\">      \r\n</span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:12.0pt;\r\nline-height:115%;mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin\">Invokes\r\ncourage, determination and wisdom <o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:115%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \"Times New Roman\";\">      \r\n</span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:12.0pt;\r\nline-height:115%;mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin\">Attracts\r\nnew opportunities, success and good fortune <o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:115%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \"Times New Roman\";\">      \r\n</span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:12.0pt;\r\nline-height:115%;mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin\">Brings\r\nmental clarity, focus and <span style=\"background:#F7F7F7\">self-discipline<o:p></o:p></span></span></p><p class=\"MsoListParagraphCxSpLast\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:115%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \"Times New Roman\";\">      \r\n</span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:12.0pt;\r\nline-height:115%;mso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin;\r\nbackground:#F7F7F7\">Improves relationship between couples and blesses with\r\nhappiness <o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<span lang=\"EN-US\" style=\"font-size:12.0pt;line-height:115%;font-family:\"Calibri\",\"sans-serif\";\r\nmso-ascii-theme-font:minor-latin;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-theme-font:minor-latin;\r\nbackground:#F7F7F7;mso-ansi-language:EN-US;mso-fareast-language:EN-US;\r\nmso-bidi-language:AR-SA\">Blesses with spiritual augmentation, wisdom and growth</span><br></p>', '<p>Origin: Ceylon</p>', 'BS45', 40000, 480, 5, 1, 1, 'GMBS45', '6', '15', '6', 0, '2024-05-11 10:42:44', '0000-00-00 00:00:00', 'Active', 'N', 'Y', 'Y', 'Blue Sapphire (Neelam) is associated with Shani Dev. It is the gemstone of wisdom and royalty.  Browse from our collection of natural, premium Blue Sapphire.', 'Blue Sapphire, Neelam', 'Buy Blue Sapphire - 4.5 Carats Online at Best Prices'),
(18, 'Bal Gopal Puja', '<p><span style=\"font-size: 18.6667px;\">Bal Gopal Puja is Puja of&nbsp;</span><span style=\"font-size: 18.6667px;\">Lord Krishna in His Bal roop.&nbsp;</span><br></p>', '<p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-size:14.0pt;line-height:107%;\r\nmso-bidi-font-weight:bold\">Bal Gopal is one of the names of Baby Krishna.\r\nDevotees worshipped Lord Krishna is in His </span><span lang=\"EN-US\" style=\"font-size:14.0pt;line-height:107%\">Bal Gopal form, also known as Laddu\r\nGopal to shower reverence, admiration and love to cute, loving, playful and\r\ninnocent infant Krishna. Bal Gopal Puja\r\nis also done to seek blessings of a child and for wellbeing of one’s children. Lord\r\nKrishna as a child performed His Bal Leelas right from His birth in jail, He\r\nvanquished many demons and asuras like Bakasura, Trinivarta, Putna and many\r\nothers and tamed the mighty Kaliya Naag. It’s hard not to be mesmerized,\r\ncaptivate and fall in love with naughty little Krishna’s playful mischiefs in\r\nHis childhood. Be it stealing Makhan (butter) with His friends, or teasing\r\nGopis, or showing the entire Universe in His mouth to mother Yasoda.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b><o:p></o:p></b></span></p><p class=\"MsoNormal\"><span lang=\"EN-US\" style=\"font-size:14.0pt;line-height:107%;\r\nmso-bidi-font-family:Calibri;mso-bidi-theme-font:minor-latin\">Lord Krishna in\r\nHis Bal roop is regarded as the <span style=\"color: rgb(40, 40, 41); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">embodiment\r\nof joy, love, beauty and playfulness. Even as a child He taught mankind how to\r\nlive life to the fullest, overcome problems, challenges and yet walk the path\r\nof Dharma. </span></span><span lang=\"EN-US\" style=\"font-size:14.0pt;line-height:\r\n107%;mso-bidi-font-weight:bold\">Bal Gopal Puja is done with an idol of </span><span lang=\"EN-US\" style=\"font-size:14.0pt;line-height:107%\">Laddu Gopal, along with\r\nmakhan and laddus and Tulsi as these articles are favorite of Lord Krishna. Devotees\r\nperform this puja to seek Lord Krishna\'s blessings, invite positivity and\r\nauspiciousness and to seek Divine grace of their beloved Krishna, the Supreme\r\nLord as a child. The Puja is known to help overcome obstacles in the path of\r\nconceiving a child, provide protection during pregnancy and bless couples with\r\nthe blessings of a happy and healthy child. &nbsp;&nbsp;<o:p></o:p></span></p><p class=\"MsoNormal\"><b><span lang=\"EN-US\" style=\"font-size:14.0pt;line-height:107%\">Mantra: <o:p></o:p></span></b></p><p class=\"MsoNormal\"><b><span lang=\"EN-US\" style=\"font-size:14.0pt;line-height:\r\n107%\">Benefits of Bal Gopal Puja<o:p></o:p></span></b></p><p class=\"MsoListParagraphCxSpFirst\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:14.0pt;line-height:107%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;mso-bidi-font-weight:\r\nbold\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:14.0pt;\r\nline-height:107%;mso-bidi-font-weight:bold\">To revere and worship Laddu Gopal\r\nand seek His Divine blessings <o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:14.0pt;line-height:107%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;mso-bidi-font-weight:\r\nbold\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:14.0pt;\r\nline-height:107%;mso-bidi-font-weight:bold\">Attract positivity, auspiciousness\r\nand prosperity&nbsp; <o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:14.0pt;line-height:107%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;mso-bidi-font-weight:\r\nbold\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:14.0pt;\r\nline-height:107%;mso-bidi-font-weight:bold\">Wellbeing of self and family,\r\nespecially children <o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:14.0pt;line-height:107%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;mso-bidi-font-weight:\r\nbold\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:14.0pt;\r\nline-height:107%;mso-bidi-font-weight:bold\">Blessings of children and\r\nprotection during pregnancy <o:p></o:p></span></p><p class=\"MsoListParagraphCxSpLast\" style=\"text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"EN-US\" style=\"font-size:14.0pt;line-height:107%;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;mso-bidi-font-weight:\r\nbold\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-US\" style=\"font-size:14.0pt;\r\nline-height:107%;mso-bidi-font-weight:bold\">Protection, wisdom and prosperity\r\nfor one’s children&nbsp; <o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\"><b><span lang=\"EN-US\" style=\"font-size:14.0pt;line-height:\r\n107%\">Puja Services Include:<o:p></o:p></span></b></p>', '<p>3 Pundits 1 Day</p>', 'PS555', 9001, 108, 100, 0, 100, 'PSKP5555', '7', '17', '82', 0, '2024-06-25 07:04:45', '0000-00-00 00:00:00', 'Active', 'Y', 'N', 'Y', 'Bal Gopal Puja is Puja of baby Krishna. Lord Krishna as a child played His lilas to mesmerize the world.', 'Bal Gopal Puja, Santan Gopal Puja', 'Book Bal Gopal Puja Online'),
(19, 'Emerald - 4.5 Carats', '<p>Emerald (Panna) to pacify malefic effects of Planet Mercury (Buddh Graha).&nbsp;&nbsp;<br></p>', '<p>Emerald gemstone is one of the Navratna (nine precious gemstones) in Vedic Astrology. Emeralds are a rare gemstone, 20x times rarer than Diamonds. Found in different shades of green, the best quality emeralds have clean and rich green color with a greenish hue. Emerald belongs to the beryl family of mineral; they are green form of beryl. Unlike other gemstones, nearly all Emeralds have inclusions, 99% of Emeralds have inclusions that are visible to naked eye. Thus Emeralds with inclusions are readily acceptable in Jyostish Shastra also but the stone should be natural, non-treated and non-heated to preserve the Sattvik nature of the gemstone. As Emeralds are softer than other gemstones like Diamond and Sapphires making them less durable, they are often oil treated which is also acceptable. Emerald gemstone is an ancient gemstone used since time immemorial. The gemstone has remained popular and was a prized possession for kings and emperors alike. In different civilization over centuries the Emerald gemstone has believed to possess various powers and mystic properties. It was especially celebrated in ancient Egypt where it was associated with fertility, re-birth and healing. Fondness of Emerald within royalty be it Cleopatra to Queen Victoria is well documented. Today the best quality Emeralds are mined in Columbia, they are also found in Zambia, Brazil, Afghanistan and Pakistan.</p><p>In Vedic Astrology Emerald gemstones are associated with the Buddh Graha (Planet Mercury). Mercury has a profound influence in many aspects of a person’s life especially love and relationships. People who are undergoing Maha-Dasha or Antra-Dasha of Buddh Graha are advised to wear the Emerald gemstone. It is believed that wearing a Emerald gemstone helps enhance positive aspects and decrease the malefic effects of the Buddh Graha. It is recommended that natives consult a learned and knowledgeable astrologer and get their horoscope’s analysed before wearing the Emerald gemstone. The first and foremost benefit of Emerald is that it enhances intellect of an individual. Secondly, it helps forging relationship. Thirdly, Emerald gemstone also blessed the wearer with growth and progress. Emerald gemstone is also recommended to people who are looking to get married. It also helps enhance communication and thus is recommended to students and professionals in whose profession communication is essential.</p><p>Benefits of wearing Emerald gemstone:</p><ul><li>Improves speech and communication skills&nbsp;</li><li>Blesses with cordial relationship between couples&nbsp;</li><li>Boosts focus, concentration and mental clarity&nbsp;&nbsp;</li><li>Blesses with wisdom and intellect&nbsp;</li><li>Attracts positivity, good fortune and prosperity&nbsp;</li><li>Relief from malefic effects of Planet Mercury</li></ul>', '<div><div>Dimensions:</div><div>Weight:</div><div>Origin:</div><div>Quality:</div></div>', 'EM25', 36000, 450, 5, 0, 1, 'EG56JU75', '6', '15', '14', 0, '2024-07-14 14:52:53', '0000-00-00 00:00:00', 'Active', 'Y', 'Y', 'Y', 'Best jyotish quality, 100% natural, non-heated and non-treated Emerald Gemstone. Emerald are known as Panna in Hindi and are associated with Planet Mercury.', 'Emerald, Panna', 'Buy Emerald (Panna) Gemstone 4.5 Carats Online at Best Prices'),
(20, '3 Mukhi Nepal - Small', '<p>Size: 22 mm&nbsp;<br>Origin: Nepal</p>', '<p>3 mukhi Rudraksha bead symbolizes Agni Dev, the God of Fire. Wearing the three mukhi Rudraksha bead helps burn all negative karmas of this and past lives and frees the person from bondages of past memories of hurt, shame, anger and low self-esteem.&nbsp;</p><p>Three Mukhi Rudraksha bead is very helpful for individuals who are seeking to embark on a spiritual journey. The Three mukhi Rudraksha bead washes away negative Karma and helps one achieve peace and progress. It enhances self-worth and self-esteem and increases memory power, concentration and focus. In Vedic Astrology, the 3 mukhi bead is associated with Planet Sun or Surya Dev. Thus it blesses the wearer with name, fame and power. The Three Mukhi Rudraksha bead also helps calm an individual and thus provide relief from stress. Three mukhi Rudraksha bead is highly recommended to administrator, politicians and businessmen. 3 mukhi Rudraksha from Nepal are available in different sizes such as small, regular, large and collector ranging from 18 mm – 24 mm. The bigger the beads, the more powerful and effective it is considered. Devotees may wear a 3 mukhi Rudraksha as a pendant, bracelet, ring or as a mukhi mala or mukhi bracelet.</p>', '<p>Size:</p>', 'RB355', 80, 1, 20, 0, 10, 'RB03NS46', '5', '10', '30', 0, '2024-07-15 15:23:02', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Best quality 3 mukhi Rudraksha bead of small size from Nepal. Three mukhi Rudraksha symbolizes Agni Dev and is worn for blessings of power.', '3 mukhi Rudraksha, teen mukhi, 3 faced rudraksh', 'Buy 3 mukhi Rudraksha Bead from Nepal Online'),
(21, '3 Mukhi Nepal', '<p>Dimension:&nbsp;</p>', '<p>3 mukhi Rudraksha bead symbolizes Agni Dev, the God of Fire. Wearing the three mukhi Rudraksha bead helps burn all negative karmas of this and past lives and frees the person from bondages of past memories of hurt, shame, anger and low self-esteem.&nbsp;</p><p>Three Mukhi Rudraksha bead is very helpful for individuals who are seeking to embark on a spiritual journey. The Three mukhi Rudraksha bead washes away negative Karma and helps one achieve peace and progress. It enhances self-worth and self-esteem and increases memory power, concentration and focus. In Vedic Astrology, the 3 mukhi bead is associated with Planet Sun or Surya Dev. Thus it blesses the wearer with name, fame and power. The Three Mukhi Rudraksha bead also helps calm an individual and thus provide relief from stress. Three mukhi Rudraksha bead is highly recommended to administrator, politicians and businessmen. 3 mukhi Rudraksha from Nepal are available in different sizes such as small, regular, large and collector ranging from 18 mm – 24 mm. The bigger the beads, the more powerful and effective it is considered. Devotees may wear a 3 mukhi Rudraksha as a pendant, bracelet, ring or as a mukhi mala or mukhi bracelet.</p>', '<p>Size:</p>', 'RB325', 100, 1, 20, 0, 10, 'RB03NR49', '5', '10', '30', 0, '2024-07-15 15:25:18', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', '3 mukhi Rudraksha bead from Nepal is worn to attract power, confidence, prosperity and growth. Buy teen mukhi rudraksha online at best prices.', '3 mukhi', 'Original 3 mukhi Rudraksha Bead from Nepal'),
(22, '3 Mukhi Nepal - Big', '<p>Dimension:&nbsp;</p>', '<p>3 mukhi Rudraksha bead symbolizes Agni Dev, the God of Fire. Wearing the three mukhi Rudraksha bead helps burn all negative karmas of this and past lives and frees the person from bondages of past memories of hurt, shame, anger and low self-esteem.&nbsp;</p><p>Three Mukhi Rudraksha bead is very helpful for individuals who are seeking to embark on a spiritual journey. The Three mukhi Rudraksha bead washes away negative Karma and helps one achieve peace and progress. It enhances self-worth and self-esteem and increases memory power, concentration and focus. In Vedic Astrology, the 3 mukhi bead is associated with Planet Sun or Surya Dev. Thus it blesses the wearer with name, fame and power. The Three Mukhi Rudraksha bead also helps calm an individual and thus provide relief from stress. Three mukhi Rudraksha bead is highly recommended to administrator, politicians and businessmen. 3 mukhi Rudraksha from Nepal are available in different sizes such as small, regular, large and collector ranging from 18 mm – 24 mm. The bigger the beads, the more powerful and effective it is considered. Devotees may wear a 3 mukhi Rudraksha as a pendant, bracelet, ring or as a mukhi mala or mukhi bracelet.</p>', '<p>Size:</p>', 'RB310', 100, 1, 20, 0, 10, 'RB03NB88', '5', '10', '30', 0, '2024-07-15 15:26:30', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Browse 3 mukhi Rudraksha price and other details such as 3 mukhi Rudraksha mantra, 3 mukhi Rudraksha benefits and 3 mukhi Rudraksha Puja details.', '3 mukhi', 'Best Quality 3 mukhi Rudraksha at Best Price'),
(23, '3 Mukhi Nepal - Giant', '<p>Dimension:&nbsp;</p>', '<p>3 mukhi Rudraksha bead symbolizes Agni Dev, the God of Fire. Wearing the three mukhi Rudraksha bead helps burn all negative karmas of this and past lives and frees the person from bondages of past memories of hurt, shame, anger and low self-esteem.&nbsp;</p><p>Three Mukhi Rudraksha bead is very helpful for individuals who are seeking to embark on a spiritual journey. The Three mukhi Rudraksha bead washes away negative Karma and helps one achieve peace and progress. It enhances self-worth and self-esteem and increases memory power, concentration and focus. In Vedic Astrology, the 3 mukhi bead is associated with Planet Sun or Surya Dev. Thus it blesses the wearer with name, fame and power. The Three Mukhi Rudraksha bead also helps calm an individual and thus provide relief from stress. Three mukhi Rudraksha bead is highly recommended to administrator, politicians and businessmen. 3 mukhi Rudraksha from Nepal are available in different sizes such as small, regular, large and collector ranging from 18 mm – 24 mm. The bigger the beads, the more powerful and effective it is considered. Devotees may wear a 3 mukhi Rudraksha as a pendant, bracelet, ring or as a mukhi mala or mukhi bracelet.</p>', '<p>Size:</p>', 'RB380', 100, 1, 20, 0, 10, 'RB03NG16', '5', '10', '30', 0, '2024-07-15 15:27:34', '0000-00-00 00:00:00', 'Active', 'Y', 'N', 'N', 'Original 3 mukhi Rudraksha bead sourced directly from Nepal. Wear 3 mukhi to attract Divine blessings of Agni Dev for prosperity and success.', '3 mukhi', '3 Mukhi Rudraksha Bead Giant Size from Nepal'),
(24, '4 Mukhi Nepal - Small', '<p><b>Size: </b>xx mm<b>&nbsp;</b></p>', '<p>Four mukhi is one of the most abundantly available Rudraksha beads. The 4 mukhi bead symbolizes Lord Brahma, the creator. Wearing the Four mukhi Rudraksha bead helps one get rid of intellectual dullness and improves communication. Four Mukhi Rudraksha bead or the Chatur Mukhi bead represents Lord Brahma. As Lord Brahma is the creator, the Four Mukhi Rudraksha bead provides an individual with wisdom, knowledge and creativity. The Four Mukhi Rudraksha bead is a very powerful bead that helps get rid of intellectual dullness and shyness and timidity. As the Four Mukhi Rudraksha bead helps improve concentration and memory, it is recommended to students and teachers alike.</p><p>Four mukhi Rudraksha bead blesses the wearer with wisdom, knowledge and creativity.&nbsp; In Vedic Astrology, the 4 mukhi bead is associated with Planet Jupiter or Brihaspati Dev. Thus it blesses the wearer with enhanced focus, memory and concentration. Four mukhi Rudraksha is a beautiful looking bead that helps attain knowledge of all the four states of consciousness. Four mukhi Rudraksha bead is highly recommended to students and teachers alike.</p><p><b>Benefits of Four Mukhi Rudraksha Bead:</b></p><ul><li>Enhances communication skills and power of expression&nbsp;</li><li>Blesses with knowledge and growth&nbsp;</li><li>Negates malefic effects of Planet Jupiter&nbsp;</li><li>Four mukhi enhances wisdom and intellect</li></ul><p><b></b><br></p>', '<p>Four mukhi<br></p>', 'RB455', 100, 1, 20, 0, 10, 'RB04NS19', '5', '10', '31', 0, '2024-07-17 15:39:10', '0000-00-00 00:00:00', 'Active', 'Y', 'N', 'N', 'Best quality 4 mukhi Rudraksha bead of small size from Nepal. Four mukhi Rudraksha symbolizesLord Brahma and is worn for blessings of wisdom.', '4 mukhi, Chaar mukhi', 'Buy 4 mukhi Rudraksha Bead from Nepal Online'),
(25, '4 Mukhi Nepal', '<p>4 mukhi</p>', '<p>Four mukhi is one of the most abundantly available Rudraksha beads. The 4 mukhi bead symbolizes Lord Brahma, the creator. Wearing the Four mukhi Rudraksha bead helps one get rid of intellectual dullness and improves communication. Four Mukhi Rudraksha bead or the Chatur Mukhi bead represents Lord Brahma. As Lord Brahma is the creator, the Four Mukhi Rudraksha bead provides an individual with wisdom, knowledge and creativity. The Four Mukhi Rudraksha bead is a very powerful bead that helps get rid of intellectual dullness and shyness and timidity. As the Four Mukhi Rudraksha bead helps improve concentration and memory, it is recommended to students and teachers alike.</p><p>Four mukhi Rudraksha bead blesses the wearer with wisdom, knowledge and creativity.&nbsp; In Vedic Astrology, the 4 mukhi bead is associated with Planet Jupiter or Brihaspati Dev. Thus it blesses the wearer with enhanced focus, memory and concentration. Four mukhi Rudraksha is a beautiful looking bead that helps attain knowledge of all the four states of consciousness. Four mukhi Rudraksha bead is highly recommended to students and teachers alike.</p><p><b>Benefits of Four Mukhi Rudraksha Bead:</b></p><ul><li>Enhances communication skills and power of expression&nbsp;</li><li>Blesses with knowledge and growth&nbsp;</li><li>Negates malefic effects of Planet Jupiter&nbsp;</li><li>Four mukhi enhances wisdom and intellect</li></ul><p><b></b><br></p>', '<p>Size:</p>', 'RB425', 100, 1, 20, 0, 10, 'RB04NR63', '5', '10', '31', 0, '2024-07-17 15:50:04', '0000-00-00 00:00:00', 'Active', 'Y', 'N', 'N', '4 mukhi Rudraksha bead from Nepal is worn to attract knowledge, wisdom and intellect. Buy char mukhi rudraksha online at best prices.', '4 mukhi, Chaar mukhi', 'Original 4 mukhi Rudraksha Bead from Nepal'),
(26, '4 Mukhi Nepal - Big', '<p>4 mukhi</p>', '<p>Four mukhi is one of the most abundantly available Rudraksha beads. The 4 mukhi bead symbolizes Lord Brahma, the creator. Wearing the Four mukhi Rudraksha bead helps one get rid of intellectual dullness and improves communication. Four Mukhi Rudraksha bead or the Chatur Mukhi bead represents Lord Brahma. As Lord Brahma is the creator, the Four Mukhi Rudraksha bead provides an individual with wisdom, knowledge and creativity. The Four Mukhi Rudraksha bead is a very powerful bead that helps get rid of intellectual dullness and shyness and timidity. As the Four Mukhi Rudraksha bead helps improve concentration and memory, it is recommended to students and teachers alike.</p><p>Four mukhi Rudraksha bead blesses the wearer with wisdom, knowledge and creativity.&nbsp; In Vedic Astrology, the 4 mukhi bead is associated with Planet Jupiter or Brihaspati Dev. Thus it blesses the wearer with enhanced focus, memory and concentration. Four mukhi Rudraksha is a beautiful looking bead that helps attain knowledge of all the four states of consciousness. Four mukhi Rudraksha bead is highly recommended to students and teachers alike.</p><p><b>Benefits of Four Mukhi Rudraksha Bead:</b></p><ul><li>Enhances communication skills and power of expression&nbsp;</li><li>Blesses with knowledge and growth&nbsp;</li><li>Negates malefic effects of Planet Jupiter&nbsp;</li><li>Four mukhi enhances wisdom and intellect</li></ul><p><b></b><br></p>', '<p>Size:</p>', 'RB410', 100, 1, 20, 0, 10, 'RB04NB71', '5', '10', '31', 0, '2024-07-17 15:51:59', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Browse 4 mukhi Rudraksha price and other details such as 4 mukhi Rudraksha mantra, 4 mukhi Rudraksha benefits and 4 mukhi Rudraksha Puja details.', '4 mukhi, Chaar mukhi', 'Best Quality 4 mukhi Rudraksha at Best Price'),
(27, '4 Mukhi Nepal - Giant', '<p>4 mukhi</p>', '<p>Four mukhi is one of the most abundantly available Rudraksha beads. The 4 mukhi bead symbolizes Lord Brahma, the creator. Wearing the Four mukhi Rudraksha bead helps one get rid of intellectual dullness and improves communication. Four Mukhi Rudraksha bead or the Chatur Mukhi bead represents Lord Brahma. As Lord Brahma is the creator, the Four Mukhi Rudraksha bead provides an individual with wisdom, knowledge and creativity. The Four Mukhi Rudraksha bead is a very powerful bead that helps get rid of intellectual dullness and shyness and timidity. As the Four Mukhi Rudraksha bead helps improve concentration and memory, it is recommended to students and teachers alike.</p><p>Four mukhi Rudraksha bead blesses the wearer with wisdom, knowledge and creativity.&nbsp; In Vedic Astrology, the 4 mukhi bead is associated with Planet Jupiter or Brihaspati Dev. Thus it blesses the wearer with enhanced focus, memory and concentration. Four mukhi Rudraksha is a beautiful looking bead that helps attain knowledge of all the four states of consciousness. Four mukhi Rudraksha bead is highly recommended to students and teachers alike.</p><p><b>Benefits of Four Mukhi Rudraksha Bead:</b></p><ul><li>Enhances communication skills and power of expression&nbsp;</li><li>Blesses with knowledge and growth&nbsp;</li><li>Negates malefic effects of Planet Jupiter&nbsp;</li><li>Four mukhi enhances wisdom and intellect</li></ul><p><b></b><br></p>', '<p>Size:&nbsp;</p>', 'RB480', 100, 1, 20, 0, 10, 'RB04NG29', '5', '10', '31', 0, '2024-07-17 15:54:17', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Original 4 mukhi Rudraksha bead sourced directly from Nepal. Wear 4 mukhi to attract Divine blessings of Lord Brahma for confidence and success.', '4 Mukhi, Chaar Mukhi', '4 Mukhi Rudraksha Bead Giant Size from Nepal'),
(28, '5 Mukhi Nepal - Small', '<p>5 mukhi</p>', '<p>Five mukhi is the most abundantly available Rudraksha beads. The 5 mukhi bead symbolizes Lord Kalagni Rudra, one of the fierce manifestations of Lord Shiva. Wearing the Five mukhi Rudraksha bead helps one enhance focus, concentration, wisdom and knowledge. Wearing the Five Mukhi Rudraksha bead blesses the wearer with good health, prosperity and success. It is believed that the Five Mukhi Rudraksha bead is blessed by five forms of Lord Shiva namely Saddyojat, Tatpurush, Aghor, Vamdev and Isshan. Five Mukhi Rudraksha bead also provides protection and guards against misfortunes and accidents.</p><p>Five mukhi Rudraksha bead is the most popular and used Rudraksha bead as it is most abundantly available. As per estimations 95% of all Rudraksha beads produced are 5 mukhi beads. Most Japa malas and bracelets are made using the panch mukhi Rudraksha. In Vedic Astrology, the five mukhi Rudraksha is associated with Planet Jupiter. Thus 5 mukhi beads are recommended for gaining wisdom and knowledge. Five mukhi Rudraksha also helps awaken the higher selves or Upaguru of a devotee. It enhances awareness, memory, word power and intellect.</p><p><b>Benefits of Five Mukhi Rudraksha Bead:</b></p><ul><li>Five mukhi is beneficial for people on spiritual path</li><li>Helps remove attachments and bring clarity of thoughts</li><li>Recommended for people with a weakly placed Jupiter in their Kundli&nbsp;</li><li>Provides wisdom and confidence</li></ul><p><b></b><br></p>', '<p>Size:&nbsp;</p>', 'RB555', 100, 1, 20, 0, 10, 'RB05NS93', '5', '10', '32', 0, '2024-07-17 15:58:45', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Best quality 5 mukhi Rudraksha bead of small size from Nepal. Five mukhi Rudraksha symbolizesLord Shiva and is worn for blessings of knowledge.', '5 mukhi, Paach mukhi', 'Buy 5 mukhi Rudraksha Bead from Nepal Online'),
(29, '5 Mukhi Nepal', '<p>5 mukhi</p>', '<p>Five mukhi is the most abundantly available Rudraksha beads. The 5 mukhi bead symbolizes Lord Kalagni Rudra, one of the fierce manifestations of Lord Shiva. Wearing the Five mukhi Rudraksha bead helps one enhance focus, concentration, wisdom and knowledge. Wearing the Five Mukhi Rudraksha bead blesses the wearer with good health, prosperity and success. It is believed that the Five Mukhi Rudraksha bead is blessed by five forms of Lord Shiva namely Saddyojat, Tatpurush, Aghor, Vamdev and Isshan. Five Mukhi Rudraksha bead also provides protection and guards against misfortunes and accidents.</p><p>Five mukhi Rudraksha bead is the most popular and used Rudraksha bead as it is most abundantly available. As per estimations 95% of all Rudraksha beads produced are 5 mukhi beads. Most Japa malas and bracelets are made using the panch mukhi Rudraksha. In Vedic Astrology, the five mukhi Rudraksha is associated with Planet Jupiter. Thus 5 mukhi beads are recommended for gaining wisdom and knowledge. Five mukhi Rudraksha also helps awaken the higher selves or Upaguru of a devotee. It enhances awareness, memory, word power and intellect.</p><p><b>Benefits of Five Mukhi Rudraksha Bead:</b></p><ul><li>Five mukhi is beneficial for people on spiritual path</li><li>Helps remove attachments and bring clarity of thoughts</li><li>Recommended for people with a weakly placed Jupiter in their Kundli&nbsp;</li><li>Provides wisdom and confidence</li></ul>', '<p>Size:</p>', 'RB525', 100, 1, 20, 0, 10, 'RB05NR47', '5', '10', '32', 0, '2024-07-17 16:00:55', '0000-00-00 00:00:00', 'Active', 'Y', 'N', 'N', '5 mukhi Rudraksha bead from Nepal is worn to attract good fortune and prosperity. Buy paach mukhi rudraksha online at best prices.', '5 mukhi, Paach Mukhi', 'Original 5 mukhi Rudraksha Bead from Nepal'),
(30, '5 Mukhi Nepal - Big', '<p>5 mukhi</p>', '<p>Five mukhi is the most abundantly available Rudraksha beads. The 5 mukhi bead symbolizes Lord Kalagni Rudra, one of the fierce manifestations of Lord Shiva. Wearing the Five mukhi Rudraksha bead helps one enhance focus, concentration, wisdom and knowledge. Wearing the Five Mukhi Rudraksha bead blesses the wearer with good health, prosperity and success. It is believed that the Five Mukhi Rudraksha bead is blessed by five forms of Lord Shiva namely Saddyojat, Tatpurush, Aghor, Vamdev and Isshan. Five Mukhi Rudraksha bead also provides protection and guards against misfortunes and accidents.</p><p>Five mukhi Rudraksha bead is the most popular and used Rudraksha bead as it is most abundantly available. As per estimations 95% of all Rudraksha beads produced are 5 mukhi beads. Most Japa malas and bracelets are made using the panch mukhi Rudraksha. In Vedic Astrology, the five mukhi Rudraksha is associated with Planet Jupiter. Thus 5 mukhi beads are recommended for gaining wisdom and knowledge. Five mukhi Rudraksha also helps awaken the higher selves or Upaguru of a devotee. It enhances awareness, memory, word power and intellect.</p><p><b>Benefits of Five Mukhi Rudraksha Bead:</b></p><ul><li>Five mukhi is beneficial for people on spiritual path</li><li>Helps remove attachments and bring clarity of thoughts</li><li>Recommended for people with a weakly placed Jupiter in their Kundli&nbsp;</li><li>Provides wisdom and confidence&nbsp;</li></ul>', '<p>Size:</p>', 'RB510', 100, 1, 20, 0, 10, 'RB05NB29', '5', '10', '32', 0, '2024-07-17 16:02:25', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Browse 5 mukhi Rudraksha price and other details such as 5 mukhi Rudraksha mantra, 5 mukhi Rudraksha benefits and 5 mukhi Rudraksha Puja details.', '5 mukhi, five mukhi, paanch mukhi', 'Best Quality 5 mukhi Rudraksha at Best Price'),
(31, '5 Mukhi Nepal - Giant', '<p>5 mukhi</p>', '<p>Five mukhi is the most abundantly available Rudraksha beads. The 5 mukhi bead symbolizes Lord Kalagni Rudra, one of the fierce manifestations of Lord Shiva. Wearing the Five mukhi Rudraksha bead helps one enhance focus, concentration, wisdom and knowledge. Wearing the Five Mukhi Rudraksha bead blesses the wearer with good health, prosperity and success. It is believed that the Five Mukhi Rudraksha bead is blessed by five forms of Lord Shiva namely Saddyojat, Tatpurush, Aghor, Vamdev and Isshan. Five Mukhi Rudraksha bead also provides protection and guards against misfortunes and accidents.</p><p>Five mukhi Rudraksha bead is the most popular and used Rudraksha bead as it is most abundantly available. As per estimations 95% of all Rudraksha beads produced are 5 mukhi beads. Most Japa malas and bracelets are made using the panch mukhi Rudraksha. In Vedic Astrology, the five mukhi Rudraksha is associated with Planet Jupiter. Thus 5 mukhi beads are recommended for gaining wisdom and knowledge. Five mukhi Rudraksha also helps awaken the higher selves or Upaguru of a devotee. It enhances awareness, memory, word power and intellect.</p><p><b>Benefits of Five Mukhi Rudraksha Bead:</b></p><ul><li>Five mukhi is beneficial for people on spiritual path</li><li>Helps remove attachments and bring clarity of thoughts</li><li>Recommended for people with a weakly placed Jupiter in their Kundli&nbsp;</li><li>Provides wisdom and confidence</li></ul>', '<p>Size:</p>', 'RB580', 100, 1, 20, 0, 10, 'RB05NG61', '5', '10', '32', 0, '2024-07-17 16:03:48', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Original 5 mukhi Rudraksha bead sourced directly from Nepal. Wear 5 mukhi to attract Divine blessings of Lord Shiva for confidence and success.', '5 mukhi, five mukhi, paanch mukhi', '5 Mukhi Rudraksha Bead Giant Size from Nepal'),
(32, '6 Mukhi Nepal - Small', '<p>6 mukhi</p>', '<p>Six Mukhi Rudraksha bead symbolizes Lord Kartikeya, the son of Lord Shiva. Lord Kartikeya is the God of war hence the Six Mukhi Rudraksha bead blesses the wearer with vigour and confidence, The Six Mukhi Rudraksha bead also helps remove fatigue and dullness. The Six Mukhi Rudraksha bead enhances will power and helps achieve goals and gain success. The Six Mukhi Rudraksha bead on a therapeutic levels helps provide relief from obesity, knee and joint pains and piles. The Six Mukhi Rudraksha bead also blesses the wearer with mental peace and the power of enchantment. Six mukhi is an easily available Rudraksha beads hence are inexpensive and affordable. Wearing the Six mukhi Rudraksha bead blesses the wearer with zeal, confidence, success and victory.&nbsp; &nbsp;</p><p>Six mukhi Rudraksha bead is a very auspicious bead that attracts positivity and good fortune. In Vedic Astrology, the six mukhi Rudraksha is associated with Planet Mars. It helps remove mental lethargy, overcome addictions and bless the wearer with willpower, courage and confidence. 6 mukhi helps increase connection with mother earth and helps one rise above their egos. Wearer is also blessed with good luck and materialistic assets such as properties and vehicles.</p><p><b>Benefits of Six Mukhi Rudraksha Bead:</b></p><ul><li>Six mukhi blesses the wearer with power, self-confidence and intellect</li><li>Provides relied from malefic effect of Planet Mars</li><li>Enhances energy levels and stamina and also helps fight physical dullness</li></ul><p><b></b><br></p>', '<p>Size:&nbsp;</p>', 'RB666', 100, 1, 20, 0, 10, 'RB06NS22', '5', '10', '33', 0, '2024-07-17 16:13:25', '0000-00-00 00:00:00', 'Active', 'Y', 'N', 'N', 'Best quality 6 mukhi Rudraksha bead of small size from Nepal. Six mukhi Rudraksha symbolizes Lord Kartikeya and is worn for blessings of power.', '6 mukhi, six mukhi', 'Buy 6 mukhi Rudraksha Bead from Nepal Online'),
(33, '6 Mukhi Nepal', '<p>6 mukhi</p>', '<p>Six Mukhi Rudraksha bead symbolizes Lord Kartikeya, the son of Lord Shiva. Lord Kartikeya is the God of war hence the Six Mukhi Rudraksha bead blesses the wearer with vigour and confidence, The Six Mukhi Rudraksha bead also helps remove fatigue and dullness. The Six Mukhi Rudraksha bead enhances will power and helps achieve goals and gain success. The Six Mukhi Rudraksha bead on a therapeutic levels helps provide relief from obesity, knee and joint pains and piles. The Six Mukhi Rudraksha bead also blesses the wearer with mental peace and the power of enchantment. Six mukhi is an easily available Rudraksha beads hence are inexpensive and affordable. Wearing the Six mukhi Rudraksha bead blesses the wearer with zeal, confidence, success and victory.&nbsp; &nbsp;</p><p>Six mukhi Rudraksha bead is a very auspicious bead that attracts positivity and good fortune. In Vedic Astrology, the six mukhi Rudraksha is associated with Planet Mars. It helps remove mental lethargy, overcome addictions and bless the wearer with willpower, courage and confidence. 6 mukhi helps increase connection with mother earth and helps one rise above their egos. Wearer is also blessed with good luck and materialistic assets such as properties and vehicles.</p><p><b>Benefits of Six Mukhi Rudraksha Bead:</b></p><ul><li>Six mukhi blesses the wearer with power, self-confidence and intellect</li><li>Provides relied from malefic effect of Planet Mars</li><li>Enhances energy levels and stamina and also helps fight physical dullness&nbsp;</li></ul><p><b></b><br></p>', '<p>Size:</p>', 'RB626', 100, 1, 20, 0, 10, 'RB06NR97', '5', '10', '33', 0, '2024-07-17 16:15:00', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', '6 mukhi Rudraksha bead from Nepal is worn to attract power and victory. Buy Six mukhi rudraksha online at best prices.', 'six mukhi', 'Original 6 mukhi Rudraksha Bead from Nepal');
INSERT INTO `product_info` (`Product_ID`, `Product_Name`, `Product_Info`, `Product_Description`, `Product_Additional_info`, `Product_Code`, `Product_Price`, `Product_USD`, `Product_Weight`, `Product_Discount`, `Product_Qty`, `Product_SKU`, `Product_Main_Category`, `Product_Sub_Category`, `Product_Sub_Sub_Category`, `Product_Click_Count`, `Product_Added`, `Product_Updated`, `Product_Status`, `Feature`, `Sale_Offer`, `Deals`, `meta_description`, `meta_keyword`, `meta_title`) VALUES
(34, '6 Mukhi Nepal - Big', '<p>6 mukhi</p>', '<p>Six Mukhi Rudraksha bead symbolizes Lord Kartikeya, the son of Lord Shiva. Lord Kartikeya is the God of war hence the Six Mukhi Rudraksha bead blesses the wearer with vigour and confidence, The Six Mukhi Rudraksha bead also helps remove fatigue and dullness. The Six Mukhi Rudraksha bead enhances will power and helps achieve goals and gain success. The Six Mukhi Rudraksha bead on a therapeutic levels helps provide relief from obesity, knee and joint pains and piles. The Six Mukhi Rudraksha bead also blesses the wearer with mental peace and the power of enchantment. Six mukhi is an easily available Rudraksha beads hence are inexpensive and affordable. Wearing the Six mukhi Rudraksha bead blesses the wearer with zeal, confidence, success and victory.&nbsp; &nbsp;</p><p>Six mukhi Rudraksha bead is a very auspicious bead that attracts positivity and good fortune. In Vedic Astrology, the six mukhi Rudraksha is associated with Planet Mars. It helps remove mental lethargy, overcome addictions and bless the wearer with willpower, courage and confidence. 6 mukhi helps increase connection with mother earth and helps one rise above their egos. Wearer is also blessed with good luck and materialistic assets such as properties and vehicles.</p><p><b>Benefits of Six Mukhi Rudraksha Bead:</b></p><ul><li>Six mukhi blesses the wearer with power, self-confidence and intellect</li><li>Provides relied from malefic effect of Planet Mars</li><li>Enhances energy levels and stamina and also helps fight physical dullness&nbsp;&nbsp;</li></ul>', '<p>Size:</p>', 'RB610', 100, 1, 20, 0, 10, 'RB06NB14', '5', '10', '33', 0, '2024-07-17 16:16:46', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Browse 6 mukhi Rudraksha price and other details such as 6 mukhi Rudraksha mantra, 6 mukhi Rudraksha benefits and 6 mukhi Rudraksha Puja details.', 'six mukhi', 'Best Quality 6 mukhi Rudraksha at Best Price'),
(35, '6 Mukhi Nepal - Giant', '<p>6 mukhi</p>', '<p>Six Mukhi Rudraksha bead symbolizes Lord Kartikeya, the son of Lord Shiva. Lord Kartikeya is the God of war hence the Six Mukhi Rudraksha bead blesses the wearer with vigour and confidence, The Six Mukhi Rudraksha bead also helps remove fatigue and dullness. The Six Mukhi Rudraksha bead enhances will power and helps achieve goals and gain success. The Six Mukhi Rudraksha bead on a therapeutic levels helps provide relief from obesity, knee and joint pains and piles. The Six Mukhi Rudraksha bead also blesses the wearer with mental peace and the power of enchantment. Six mukhi is an easily available Rudraksha beads hence are inexpensive and affordable. Wearing the Six mukhi Rudraksha bead blesses the wearer with zeal, confidence, success and victory.&nbsp; &nbsp;</p><p>Six mukhi Rudraksha bead is a very auspicious bead that attracts positivity and good fortune. In Vedic Astrology, the six mukhi Rudraksha is associated with Planet Mars. It helps remove mental lethargy, overcome addictions and bless the wearer with willpower, courage and confidence. 6 mukhi helps increase connection with mother earth and helps one rise above their egos. Wearer is also blessed with good luck and materialistic assets such as properties and vehicles.</p><p><b>Benefits of Six Mukhi Rudraksha Bead:</b></p><ul><li>Six mukhi blesses the wearer with power, self-confidence and intellect</li><li>Provides relied from malefic effect of Planet Mars</li><li>Enhances energy levels and stamina and also helps fight physical dullness</li></ul><p><b></b><br></p>', '<p>Size:</p>', 'RB680', 100, 1, 20, 0, 10, 'RB06NG36', '5', '10', '33', 0, '2024-07-17 16:18:14', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Original 6 mukhi Rudraksha bead sourced directly from Nepal. Wear 6 mukhi to attract Divine blessings of Lord Kartikeya for confidence and victory.', 'six mukhi', '6 Mukhi Rudraksha Bead Giant Size from Nepal'),
(36, '7 Mukhi Nepal - Small', '<p>7 mukhi</p>', '<p>Seven Mukhi Rudraksha bead symbolizes Goddess Laxmi, the Goddess of wealth and prosperity. Wearing the Seven Mukhi Rudraksha bead helps open door of opportunities and attracts wealth and prosperity. The Seven Mukhi Rudraksha bead is mentioned in numerous ancient Puranas and Upanishads. The Seven Mukhi Rudraksha bead is highly recommended to businessmen. The Seven Mukhi Rudraksha bead also protects against misfortunes, negativity and sudden losses.</p><p>Seven mukhi Rudraksha bead is a very auspicious and most sought after Rudraksha bead. In Vedic Astrology, the seven mukhi Rudraksha is associated with Planet Venus. It helps attract good fortune, new opportunities and prosperity. The Seven mukhi Rudraksha blesses the wearer with both spiritual augmentation and materialistic comforts. Wearer is also blessed with positivity, auspiciousness, good luck, materialistic assets and growth.</p><p><b>Benefits of Seven Mukhi Rudraksha Bead:</b></p><ul><li>Seven mukhi ushers good luck, fortune and improves finances&nbsp;</li><li>Blesses the wearer with positivity, happiness and success&nbsp;</li><li>Recommended for people who have an ill-placed Planet Venus in their Natal Charts</li><li>Creates new avenues of opportunities&nbsp;</li></ul>', '<p>Size:&nbsp;</p>', 'RB777', 100, 1, 20, 0, 10, 'RB07NS72', '5', '10', '34', 0, '2024-07-17 16:22:37', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Best quality 7 mukhi Rudraksha bead of small size from Nepal. Seven mukhi Rudraksha symbolizes Goddess Laxmi and is worn for blessings of wealth.', '7 mukhi', 'Buy 7 mukhi Rudraksha Bead from Nepal Online'),
(37, '7 Mukhi Nepal', '<p>7 mukhi</p>', '<p>Seven Mukhi Rudraksha bead symbolizes Goddess Laxmi, the Goddess of wealth and prosperity. Wearing the Seven Mukhi Rudraksha bead helps open door of opportunities and attracts wealth and prosperity. The Seven Mukhi Rudraksha bead is mentioned in numerous ancient Puranas and Upanishads. The Seven Mukhi Rudraksha bead is highly recommended to businessmen. The Seven Mukhi Rudraksha bead also protects against misfortunes, negativity and sudden losses.</p><p>Seven mukhi Rudraksha bead is a very auspicious and most sought after Rudraksha bead. In Vedic Astrology, the seven mukhi Rudraksha is associated with Planet Venus. It helps attract good fortune, new opportunities and prosperity. The Seven mukhi Rudraksha blesses the wearer with both spiritual augmentation and materialistic comforts. Wearer is also blessed with positivity, auspiciousness, good luck, materialistic assets and growth.</p><p><b>Benefits of Seven Mukhi Rudraksha Bead:</b></p><ul><li>Seven mukhi ushers good luck, fortune and improves finances&nbsp;</li><li>Blesses the wearer with positivity, happiness and success&nbsp;</li><li>Recommended for people who have an ill-placed Planet Venus in their Natal Charts</li><li>Creates new avenues of opportunities</li></ul>', '<p>Size:</p>', 'RB727', 100, 1, 20, 0, 10, 'RB07NR12', '5', '10', '34', 0, '2024-07-17 16:23:56', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', '7 mukhi Rudraksha bead from Nepal is worn to attract prosperity, wealth, new opportunities and growth. Buy saat mukhi rudraksha online at best prices.', '7 mukhi', 'Original 7 mukhi Rudraksha Bead from Nepal'),
(38, '7 Mukhi Nepal - Big', '<p>7 mukhi</p>', '<p>Seven Mukhi Rudraksha bead symbolizes Goddess Laxmi, the Goddess of wealth and prosperity. Wearing the Seven Mukhi Rudraksha bead helps open door of opportunities and attracts wealth and prosperity. The Seven Mukhi Rudraksha bead is mentioned in numerous ancient Puranas and Upanishads. The Seven Mukhi Rudraksha bead is highly recommended to businessmen. The Seven Mukhi Rudraksha bead also protects against misfortunes, negativity and sudden losses.</p><p>Seven mukhi Rudraksha bead is a very auspicious and most sought after Rudraksha bead. In Vedic Astrology, the seven mukhi Rudraksha is associated with Planet Venus. It helps attract good fortune, new opportunities and prosperity. The Seven mukhi Rudraksha blesses the wearer with both spiritual augmentation and materialistic comforts. Wearer is also blessed with positivity, auspiciousness, good luck, materialistic assets and growth.</p><p><b>Benefits of Seven Mukhi Rudraksha Bead:</b></p><ul><li>Seven mukhi ushers good luck, fortune and improves finances&nbsp;</li><li>Blesses the wearer with positivity, happiness and success&nbsp;</li><li>Recommended for people who have an ill-placed Planet Venus in their Natal Charts</li><li>Creates new avenues of opportunities&nbsp;</li></ul>', '<p>Size:&nbsp;</p>', 'RB710', 100, 1, 20, 0, 10, 'RB07NB89', '5', '10', '34', 0, '2024-07-17 16:25:11', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Browse 7 mukhi Rudraksha price and other details such as 7 mukhi Rudraksha mantra, 7 mukhi Rudraksha benefits and 7 mukhi Rudraksha Puja details.', '7 mukhi', 'Best Quality 7 mukhi Rudraksha at Best Price'),
(39, '7 Mukhi Nepal - Giant', '<p>7 mukhi</p>', '<p>Seven Mukhi Rudraksha bead symbolizes Goddess Laxmi, the Goddess of wealth and prosperity. Wearing the Seven Mukhi Rudraksha bead helps open door of opportunities and attracts wealth and prosperity. The Seven Mukhi Rudraksha bead is mentioned in numerous ancient Puranas and Upanishads. The Seven Mukhi Rudraksha bead is highly recommended to businessmen. The Seven Mukhi Rudraksha bead also protects against misfortunes, negativity and sudden losses.</p><p>Seven mukhi Rudraksha bead is a very auspicious and most sought after Rudraksha bead. In Vedic Astrology, the seven mukhi Rudraksha is associated with Planet Venus. It helps attract good fortune, new opportunities and prosperity. The Seven mukhi Rudraksha blesses the wearer with both spiritual augmentation and materialistic comforts. Wearer is also blessed with positivity, auspiciousness, good luck, materialistic assets and growth.</p><p><b>Benefits of Seven Mukhi Rudraksha Bead:</b></p><ul><li>Seven mukhi ushers good luck, fortune and improves finances&nbsp;</li><li>Blesses the wearer with positivity, happiness and success&nbsp;</li><li>Recommended for people who have an ill-placed Planet Venus in their Natal Charts</li><li>Creates new avenues of opportunities&nbsp;</li></ul>', '<p>Size:&nbsp;</p>', 'RB780', 100, 1, 20, 0, 10, 'RB07NG37', '5', '10', '34', 0, '2024-07-17 16:26:30', '0000-00-00 00:00:00', 'Active', 'Y', 'N', 'N', 'Original 7 mukhi Rudraksha bead sourced directly from Nepal. Wear 7 mukhi to attract Divine blessings of Goddess Laxmi for prosperity and growth.', '7 mukhi, Saat mukhi', '7 Mukhi Rudraksha Bead Giant Size from Nepal'),
(40, '8 Mukhi Nepal - Small', '<p>8 mukhi</p>', '<p>Eight Mukhi Rudraksha bead symbolizes Lord Ganesha and is one of the most popular Rudraksha bead. Lord Ganesha is the God of wisdom, good fortune intelligence and He is also the remover of obstacles. The Eight Mukhi Rudraksha bead blesses the wearer with stability and success; it also blesses the wearer with intellect and knowledge. The Eight Mukhi Rudraksha bead also helps an individual win over enemies as it provide the focus and the energy required to win over any obstacle. Eight mukhi is one of the most popular and sought after Rudraksha bead as it symbolizes Lord Ganesha, the God of wisdom and auspicious beginnings.&nbsp; Wearing the eight mukhi Rudraksha bead removes all hurdles and obstacles and blesses the wearer with growth and success.&nbsp;&nbsp;</p><p>8 mukhi is an auspicious bead that uplifts the wearer in all spheres of life and blesses with overall growth and success. It also brings the wearer close to the Divine and blesses with enhanced intellect and wisdom. In Vedic Astrology, the 8 mukhi Rudraksha is associated with Planet Ketu. Thus it blesses the wearer with wisdom and wealth. Wearer of the eight mukhi Rudraksha also attains enhanced logical and analytical skills, along with wisdom, knowledge and intellect.</p><p><b>Benefits of Eight Mukhi Rudraksha Bead:</b></p><ul><li>Eight mukhi enhances knowledge and provides success by removing obstacles&nbsp;</li><li>Blesses the wearer with growth, stability and contentment&nbsp; &nbsp;</li><li>Provides relief from malefic effects of Planet Rahu in one’s Kundli&nbsp;</li></ul>', '<p>Size:</p>', 'RB888', 100, 1, 20, 0, 10, 'RB08NS82', '5', '10', '35', 0, '2024-07-17 17:43:56', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Best quality 8 mukhi Rudraksha bead of small size from Nepal. Eight mukhi Rudraksha symbolizes Lord Ganesha and is worn for blessings of success.', '8 mukhi', 'Buy 8 mukhi Rudraksha Bead from Nepal Online'),
(41, '8 Mukhi Nepal', '<p>8 mukhi</p>', '<p>Eight Mukhi Rudraksha bead symbolizes Lord Ganesha and is one of the most popular Rudraksha bead. Lord Ganesha is the God of wisdom, good fortune intelligence and He is also the remover of obstacles. The Eight Mukhi Rudraksha bead blesses the wearer with stability and success; it also blesses the wearer with intellect and knowledge. The Eight Mukhi Rudraksha bead also helps an individual win over enemies as it provide the focus and the energy required to win over any obstacle. Eight mukhi is one of the most popular and sought after Rudraksha bead as it symbolizes Lord Ganesha, the God of wisdom and auspicious beginnings.&nbsp; Wearing the eight mukhi Rudraksha bead removes all hurdles and obstacles and blesses the wearer with growth and success.&nbsp;&nbsp;</p><p>8 mukhi is an auspicious bead that uplifts the wearer in all spheres of life and blesses with overall growth and success. It also brings the wearer close to the Divine and blesses with enhanced intellect and wisdom. In Vedic Astrology, the 8 mukhi Rudraksha is associated with Planet Ketu. Thus it blesses the wearer with wisdom and wealth. Wearer of the eight mukhi Rudraksha also attains enhanced logical and analytical skills, along with wisdom, knowledge and intellect.&nbsp;</p><p><b>Benefits of Eight Mukhi Rudraksha Bead:</b></p><ul><li>Eight mukhi enhances knowledge and provides success by removing obstacles&nbsp;</li><li>Blesses the wearer with growth, stability and contentment&nbsp; &nbsp;</li><li>Provides relief from malefic effects of Planet Rahu in one’s Kundli&nbsp;</li></ul>', '<p>Size:</p>', 'RB828', 100, 1, 20, 0, 10, 'RB08NR12', '5', '10', '35', 0, '2024-07-17 17:45:25', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', '8 mukhi Rudraksha bead from Nepal is worn to attract prosperity, wisdom, success and growth. Buy eight mukhi rudraksha online at best prices.', '8 mukhi', 'Original 8 mukhi Rudraksha Bead from Nepal'),
(42, '8 Mukhi Nepal - Big', '<p>8 mukhi</p>', '<p>Eight Mukhi Rudraksha bead symbolizes Lord Ganesha and is one of the most popular Rudraksha bead. Lord Ganesha is the God of wisdom, good fortune intelligence and He is also the remover of obstacles. The Eight Mukhi Rudraksha bead blesses the wearer with stability and success; it also blesses the wearer with intellect and knowledge. The Eight Mukhi Rudraksha bead also helps an individual win over enemies as it provide the focus and the energy required to win over any obstacle. Eight mukhi is one of the most popular and sought after Rudraksha bead as it symbolizes Lord Ganesha, the God of wisdom and auspicious beginnings.&nbsp; Wearing the eight mukhi Rudraksha bead removes all hurdles and obstacles and blesses the wearer with growth and success.&nbsp;&nbsp;</p><p>8 mukhi is an auspicious bead that uplifts the wearer in all spheres of life and blesses with overall growth and success. It also brings the wearer close to the Divine and blesses with enhanced intellect and wisdom. In Vedic Astrology, the 8 mukhi Rudraksha is associated with Planet Ketu. Thus it blesses the wearer with wisdom and wealth. Wearer of the eight mukhi Rudraksha also attains enhanced logical and analytical skills, along with wisdom, knowledge and intellect.</p><p><b>Benefits of Eight Mukhi Rudraksha Bead:</b></p><ul><li>Eight mukhi enhances knowledge and provides success by removing obstacles&nbsp;</li><li>Blesses the wearer with growth, stability and contentment&nbsp; &nbsp;</li><li>Provides relief from malefic effects of Planet Rahu in one’s Kundli</li></ul>', '<p>Size:</p>', 'RB810', 100, 1, 20, 0, 10, 'RB08NB89', '5', '10', '35', 0, '2024-07-17 17:46:43', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Browse 8 mukhi Rudraksha price and other details such as 8 mukhi Rudraksha mantra, 8 mukhi Rudraksha benefits and 8 mukhi Rudraksha Puja details.', '8 mukhi', 'Best Quality 8 mukhi Rudraksha at Best Price'),
(43, '8 Mukhi Nepal - Giant', '<p>8 mukhi</p>', '<p>Eight Mukhi Rudraksha bead symbolizes Lord Ganesha and is one of the most popular Rudraksha bead. Lord Ganesha is the God of wisdom, good fortune intelligence and He is also the remover of obstacles. The Eight Mukhi Rudraksha bead blesses the wearer with stability and success; it also blesses the wearer with intellect and knowledge. The Eight Mukhi Rudraksha bead also helps an individual win over enemies as it provide the focus and the energy required to win over any obstacle. Eight mukhi is one of the most popular and sought after Rudraksha bead as it symbolizes Lord Ganesha, the God of wisdom and auspicious beginnings.&nbsp; Wearing the eight mukhi Rudraksha bead removes all hurdles and obstacles and blesses the wearer with growth and success.&nbsp;&nbsp;</p><p>8 mukhi is an auspicious bead that uplifts the wearer in all spheres of life and blesses with overall growth and success. It also brings the wearer close to the Divine and blesses with enhanced intellect and wisdom. In Vedic Astrology, the 8 mukhi Rudraksha is associated with Planet Ketu. Thus it blesses the wearer with wisdom and wealth. Wearer of the eight mukhi Rudraksha also attains enhanced logical and analytical skills, along with wisdom, knowledge and intellect.&nbsp;</p><p><b>Benefits of Eight Mukhi Rudraksha Bead:</b></p><ul><li>Eight mukhi enhances knowledge and provides success by removing obstacles&nbsp;</li><li>Blesses the wearer with growth, stability and contentment&nbsp; &nbsp;</li><li>Provides relief from malefic effects of Planet Rahu in one’s Kundli</li></ul>', '<p>Size:</p>', 'RB880', 100, 1, 20, 0, 10, 'RB08NG38', '5', '10', '35', 0, '2024-07-17 17:47:52', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Original 8 mukhi Rudraksha bead sourced directly from Nepal. Wear 8 mukhi to attract Divine blessings of Lord Ganesha for success and growth.', '8 mukhi', '8 Mukhi Rudraksha Bead Giant Size from Nepal'),
(44, '9 Mukhi Nepal - Small', '<p>9 mukhi</p>', '<p>Nine mukhi Rudraksha bead is one of the most effective and powerful beads available. The 9 mukhi bead symbolizes Goddess Durga, the warrior Goddess of power. Wearing the nine mukhi Rudraksha bead removes fears and negativities. Nine Mukhi Rudraksha bead is a very powerful Rudraksha bead that symbolizes Goddess Durga, the warrior Goddess. The devotees of Mother Goddess should wear the Nine Mukhi Rudraksha bead as it is very beneficial for spiritual sadhaks. The Nine Mukhi Rudraksha bead blesses the wearer with power, fearlessness and dynamism so as to he can gain success in any endeavour. The therapeutic benefits of a Nine Mukhi Rudraksha bead include that it provides relief from nervous and psychiatric disorders and provide emotional and mental stability. The Nine Mukhi Rudraksha bead also helps attain both material and spiritual wealth.</p><p>9 mukhi Rudraksha beads are associated with power, dynamism, courage and fearlessness. It provides to the wearer the blessings of protection against all sought of negativities and negative traits such as ego, hatred, prejudice, selfishness and jealousy. In Vedic Astrology, the 9 mukhi Rudraksha is associated with Planet Rahu. Thus the 9 mukhi beads provide clarity, emotional stability and progress.</p><p><b>Benefits of Nine Mukhi Rudraksha Bead:</b></p><ul><li>Nine mukhi blesses the wearer with power, courage, dynamisms and victory&nbsp;</li><li>Improves self-confidence and helps fight fears and phobias</li><li>Negates malefic effect of Ketu in one’s Kundli&nbsp;&nbsp;</li><li>Blesses the wearer with name, fame and fearlessness&nbsp;</li></ul>', '<p>Size:</p>', 'RB999', 100, 1, 20, 0, 10, 'RB09NS64', '5', '10', '36', 0, '2024-07-17 17:52:12', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Best quality 9 mukhi Rudraksha bead of small size from Nepal. Nine mukhi Rudraksha symbolizes Goddess Durga and is worn for blessings of power.', '9 mukhi', 'Buy 9 mukhi Rudraksha Bead from Nepal Online'),
(45, '9 Mukhi Nepal', '<p>9 mukhi</p>', '<p>Nine mukhi Rudraksha bead is one of the most effective and powerful beads available. The 9 mukhi bead symbolizes Goddess Durga, the warrior Goddess of power. Wearing the nine mukhi Rudraksha bead removes fears and negativities. Nine Mukhi Rudraksha bead is a very powerful Rudraksha bead that symbolizes Goddess Durga, the warrior Goddess. The devotees of Mother Goddess should wear the Nine Mukhi Rudraksha bead as it is very beneficial for spiritual sadhaks. The Nine Mukhi Rudraksha bead blesses the wearer with power, fearlessness and dynamism so as to he can gain success in any endeavour. The therapeutic benefits of a Nine Mukhi Rudraksha bead include that it provides relief from nervous and psychiatric disorders and provide emotional and mental stability. The Nine Mukhi Rudraksha bead also helps attain both material and spiritual wealth.</p><p>9 mukhi Rudraksha beads are associated with power, dynamism, courage and fearlessness. It provides to the wearer the blessings of protection against all sought of negativities and negative traits such as ego, hatred, prejudice, selfishness and jealousy. In Vedic Astrology, the 9 mukhi Rudraksha is associated with Planet Rahu. Thus the 9 mukhi beads provide clarity, emotional stability and progress.</p><p><b>Benefits of Nine Mukhi Rudraksha Bead:</b></p><ul><li>Nine mukhi blesses the wearer with power, courage, dynamisms and victory&nbsp;</li><li>Improves self-confidence and helps fight fears and phobias</li><li>Negates malefic effect of Ketu in one’s Kundli&nbsp;&nbsp;</li><li>Blesses the wearer with name, fame and fearlessness&nbsp;</li></ul>', '<p>Size</p>', 'RB929', 100, 1, 20, 0, 10, 'RB09NR86', '5', '10', '36', 0, '2024-07-17 17:53:49', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', '9 mukhi Rudraksha bead from Nepal is worn to attract power, success and victory. Buy nine mukhi rudraksha online at best prices.', '9 mukhi', 'Original 9 mukhi Rudraksha Bead from Nepal'),
(46, '9 Mukhi Nepal - Big', '<p>9 mukhi</p>', '<p>Nine mukhi Rudraksha bead is one of the most effective and powerful beads available. The 9 mukhi bead symbolizes Goddess Durga, the warrior Goddess of power. Wearing the nine mukhi Rudraksha bead removes fears and negativities. Nine Mukhi Rudraksha bead is a very powerful Rudraksha bead that symbolizes Goddess Durga, the warrior Goddess. The devotees of Mother Goddess should wear the Nine Mukhi Rudraksha bead as it is very beneficial for spiritual sadhaks. The Nine Mukhi Rudraksha bead blesses the wearer with power, fearlessness and dynamism so as to he can gain success in any endeavour. The therapeutic benefits of a Nine Mukhi Rudraksha bead include that it provides relief from nervous and psychiatric disorders and provide emotional and mental stability. The Nine Mukhi Rudraksha bead also helps attain both material and spiritual wealth.</p><p>9 mukhi Rudraksha beads are associated with power, dynamism, courage and fearlessness. It provides to the wearer the blessings of protection against all sought of negativities and negative traits such as ego, hatred, prejudice, selfishness and jealousy. In Vedic Astrology, the 9 mukhi Rudraksha is associated with Planet Rahu. Thus the 9 mukhi beads provide clarity, emotional stability and progress.&nbsp;</p><p><b>Benefits of Nine Mukhi Rudraksha Bead:</b></p><ul><li>Nine mukhi blesses the wearer with power, courage, dynamisms and victory&nbsp;</li><li>Improves self-confidence and helps fight fears and phobias</li><li>Negates malefic effect of Ketu in one’s Kundli&nbsp;&nbsp;</li><li>Blesses the wearer with name, fame and fearlessness</li></ul>', '<p>Size:</p>', 'RB910', 100, 1, 20, 0, 10, 'RB09NB43', '5', '10', '36', 0, '2024-07-17 17:55:07', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Browse 9 mukhi Rudraksha price and other details such as 9 mukhi Rudraksha mantra, 9 mukhi Rudraksha benefits and 9 mukhi Rudraksha Puja details.', '9 mukhi', 'Best Quality 9 mukhi Rudraksha at Best Price'),
(47, '9 Mukhi Nepal - Giant', '<p>9 mukhi</p>', '<p>Nine mukhi Rudraksha bead is one of the most effective and powerful beads available. The 9 mukhi bead symbolizes Goddess Durga, the warrior Goddess of power. Wearing the nine mukhi Rudraksha bead removes fears and negativities. Nine Mukhi Rudraksha bead is a very powerful Rudraksha bead that symbolizes Goddess Durga, the warrior Goddess. The devotees of Mother Goddess should wear the Nine Mukhi Rudraksha bead as it is very beneficial for spiritual sadhaks. The Nine Mukhi Rudraksha bead blesses the wearer with power, fearlessness and dynamism so as to he can gain success in any endeavour. The therapeutic benefits of a Nine Mukhi Rudraksha bead include that it provides relief from nervous and psychiatric disorders and provide emotional and mental stability. The Nine Mukhi Rudraksha bead also helps attain both material and spiritual wealth.</p><p>9 mukhi Rudraksha beads are associated with power, dynamism, courage and fearlessness. It provides to the wearer the blessings of protection against all sought of negativities and negative traits such as ego, hatred, prejudice, selfishness and jealousy. In Vedic Astrology, the 9 mukhi Rudraksha is associated with Planet Rahu. Thus the 9 mukhi beads provide clarity, emotional stability and progress.</p><p><b>Benefits of Nine Mukhi Rudraksha Bead:</b></p><ul><li>Nine mukhi blesses the wearer with power, courage, dynamisms and victory&nbsp;</li><li>Improves self-confidence and helps fight fears and phobias</li><li>Negates malefic effect of Ketu in one’s Kundli&nbsp;&nbsp;</li><li>Blesses the wearer with name, fame and fearlessness</li></ul>', '<p>Size:</p>', 'RB990', 100, 1, 20, 0, 10, 'RB09NG17', '5', '10', '36', 0, '2024-07-17 17:56:30', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Original 9 mukhi Rudraksha bead sourced directly from Nepal. Wear 9 mukhi to attract Divine blessings of Goddess Durga for success and victory.', '9 mukhi', '9 Mukhi Rudraksha Bead Giant Size from Nepal'),
(48, '10 Mukhi Nepal - Small', '<p>10 mukhi<br></p>', '<p>Ten mukhi Rudraksha bead ushers love, joy, and passion. 10 mukhi is a special bead as it pacifies malefic effects of all nine planets or the Navgraha. The 10 mukhi bead is ruled by Lord Krishna, the supreme protector. Ten Mukhi Rudraksha bead symbolizes Lord Krishna, the protector. The Ten Mukhi Rudraksha bead blesses the wearer with protection and blesses him with the power of creativity and creation. The Ten Mukhi Rudraksha bead protects an individual from negative energies and black magic. The Ten Mukhi Rudraksha bead helps and individual tide over miseries and insecurities. On a therapeutic level the Ten Mukhi Rudraksha bead helps reduce anxiety and worries. The Ten Mukhi Rudraksha bead also aids concentration and memory.<span style=\"font-size: 1rem;\">&nbsp;</span></p><p>10 mukhi Rudraksha bead is associated with auspiciousness, positivity and protection. In Vedic Astrology, the dus mukhi Rudraksha is associated with all nine Planets and is used to pacify the malefic effects of all the Navgraha. Thus by wearing the 10 mukhi one gets relief from all miseries, misfortunes, negativities and dangers such as debts, losses and all kinds of problems. 10 mukhi also provides protection from negativities such as evil eyes and black magic. The 10 mukhi also blesses the wearer with harmonious relationships, creativity, happiness and contentment.</p><p><b>Benefits of Ten Mukhi Rudraksha Bead:</b></p><ul><li>Ten mukhi blesses the wearer with protection and growth&nbsp;</li><li>It also provides relief from miseries, legal hassles, debts and losses&nbsp;</li><li>Provides relief from any kind of Planetary Doshas&nbsp;</li><li>Blesses the wearer with peace of mind and contentment&nbsp;</li></ul>', '<p>Size:</p>', 'RB109', 100, 1, 20, 0, 10, 'RB10NS48', '5', '10', '37', 0, '2024-07-17 17:59:55', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Best quality 10 mukhi Rudraksha bead of small size from Nepal. Dus mukhi Rudraksha symbolizes Lord Krishna and is worn for blessings of protection.', '10 mukhi, Dus Mukhi', 'Buy 10 mukhi Rudraksha Bead from Nepal Online'),
(49, '10 Mukhi Nepal', '<p>10 mukhi</p>', '<p>Ten mukhi Rudraksha bead ushers love, joy, and passion. 10 mukhi is a special bead as it pacifies malefic effects of all nine planets or the Navgraha. The 10 mukhi bead is ruled by Lord Krishna, the supreme protector. Ten Mukhi Rudraksha bead symbolizes Lord Krishna, the protector. The Ten Mukhi Rudraksha bead blesses the wearer with protection and blesses him with the power of creativity and creation. The Ten Mukhi Rudraksha bead protects an individual from negative energies and black magic. The Ten Mukhi Rudraksha bead helps and individual tide over miseries and insecurities. On a therapeutic level the Ten Mukhi Rudraksha bead helps reduce anxiety and worries. The Ten Mukhi Rudraksha bead also aids concentration and memory.<span style=\"font-size: 1rem;\">&nbsp;</span></p><p>10 mukhi Rudraksha bead is associated with auspiciousness, positivity and protection. In Vedic Astrology, the dus mukhi Rudraksha is associated with all nine Planets and is used to pacify the malefic effects of all the Navgraha. Thus by wearing the 10 mukhi one gets relief from all miseries, misfortunes, negativities and dangers such as debts, losses and all kinds of problems. 10 mukhi also provides protection from negativities such as evil eyes and black magic. The 10 mukhi also blesses the wearer with harmonious relationships, creativity, happiness and contentment.</p><p><b>Benefits of Ten Mukhi Rudraksha Bead:</b></p><ul><li>Ten mukhi blesses the wearer with protection and growth&nbsp;</li><li>It also provides relief from miseries, legal hassles, debts and losses&nbsp;</li><li>Provides relief from any kind of Planetary Doshas&nbsp;</li><li>Blesses the wearer with peace of mind and contentment</li></ul>', '<p>Size:</p>', 'RB102', 100, 1, 20, 0, 10, 'RB10NR26', '5', '10', '37', 0, '2024-07-17 18:01:37', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', '10 mukhi Rudraksha bead from Nepal is worn to attract prosperity, protection and success. Buy ten mukhi rudraksha online at best prices.', '10 mukhi, Dus mukhi', 'Original 10 mukhi Rudraksha Bead from Nepal'),
(50, '10 Mukhi Nepal - Big', '<p>10 mukhi</p>', '<p>Ten mukhi Rudraksha bead ushers love, joy, and passion. 10 mukhi is a special bead as it pacifies malefic effects of all nine planets or the Navgraha. The 10 mukhi bead is ruled by Lord Krishna, the supreme protector. Ten Mukhi Rudraksha bead symbolizes Lord Krishna, the protector. The Ten Mukhi Rudraksha bead blesses the wearer with protection and blesses him with the power of creativity and creation. The Ten Mukhi Rudraksha bead protects an individual from negative energies and black magic. The Ten Mukhi Rudraksha bead helps and individual tide over miseries and insecurities. On a therapeutic level the Ten Mukhi Rudraksha bead helps reduce anxiety and worries. The Ten Mukhi Rudraksha bead also aids concentration and memory.<span style=\"font-size: 1rem;\">&nbsp;</span></p><p>10 mukhi Rudraksha bead is associated with auspiciousness, positivity and protection. In Vedic Astrology, the dus mukhi Rudraksha is associated with all nine Planets and is used to pacify the malefic effects of all the Navgraha. Thus by wearing the 10 mukhi one gets relief from all miseries, misfortunes, negativities and dangers such as debts, losses and all kinds of problems. 10 mukhi also provides protection from negativities such as evil eyes and black magic. The 10 mukhi also blesses the wearer with harmonious relationships, creativity, happiness and contentment.</p><p><b>Benefits of Ten Mukhi Rudraksha Bead:</b></p><ul><li>Ten mukhi blesses the wearer with protection and growth&nbsp;</li><li>It also provides relief from miseries, legal hassles, debts and losses&nbsp;</li><li>Provides relief from any kind of Planetary Doshas&nbsp;</li><li>Blesses the wearer with peace of mind and contentment</li></ul>', '<p>Size:</p>', 'RB105', 100, 1, 20, 0, 10, 'RB10NB89', '5', '10', '37', 0, '2024-07-17 18:03:05', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Browse 10 mukhi Rudraksha price and other details such as 10 mukhi Rudraksha mantra, 10 mukhi Rudraksha benefits and 10 mukhi Rudraksha Puja details.', '10 mukhi, Dus mukhi', 'Best Quality 10 mukhi Rudraksha at Best Price'),
(51, '10 Mukhi Nepal - Giant', '<p>10 mukhi</p>', '<p>Ten mukhi Rudraksha bead ushers love, joy, and passion. 10 mukhi is a special bead as it pacifies malefic effects of all nine planets or the Navgraha. The 10 mukhi bead is ruled by Lord Krishna, the supreme protector. Ten Mukhi Rudraksha bead symbolizes Lord Krishna, the protector. The Ten Mukhi Rudraksha bead blesses the wearer with protection and blesses him with the power of creativity and creation. The Ten Mukhi Rudraksha bead protects an individual from negative energies and black magic. The Ten Mukhi Rudraksha bead helps and individual tide over miseries and insecurities. On a therapeutic level the Ten Mukhi Rudraksha bead helps reduce anxiety and worries. The Ten Mukhi Rudraksha bead also aids concentration and memory.<span style=\"font-size: 1rem;\">&nbsp;</span></p><p>10 mukhi Rudraksha bead is associated with auspiciousness, positivity and protection. In Vedic Astrology, the dus mukhi Rudraksha is associated with all nine Planets and is used to pacify the malefic effects of all the Navgraha. Thus by wearing the 10 mukhi one gets relief from all miseries, misfortunes, negativities and dangers such as debts, losses and all kinds of problems. 10 mukhi also provides protection from negativities such as evil eyes and black magic. The 10 mukhi also blesses the wearer with harmonious relationships, creativity, happiness and contentment.</p><p><b>Benefits of Ten Mukhi Rudraksha Bead:</b></p><ul><li>Ten mukhi blesses the wearer with protection and growth&nbsp;</li><li>It also provides relief from miseries, legal hassles, debts and losses&nbsp;</li><li>Provides relief from any kind of Planetary Doshas&nbsp;</li><li>Blesses the wearer with peace of mind and contentment</li></ul>', '<p>Size:</p>', 'RB104', 100, 1, 20, 0, 10, 'RB10NG71', '5', '10', '37', 0, '2024-07-17 18:04:38', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Original 10 mukhi Rudraksha bead sourced directly from Nepal. Wear 10 mukhi to attract Divine blessings of Lord Krishna for prosperity and protection.', '10 mukhi, Dus mukhi', '10 Mukhi Rudraksha Bead Giant Size from Nepal'),
(53, '11 Mukhi Nepal - Small', '<p>11 mukhi</p>', '<p>Eleven mukhi Rudraksha is a powerful bead which blesses wearer with high level of awareness and wisdom. 11 mukhi beads are associated with the Lord Hanuman / 11 Rudras. It is an excellent tool for meditation and sadhanas. The Eleven Mukhi Rudraksha blesses the wearer with courage, bravery and fearlessness. It is believed that wearer of an Eleven Mukhi Rudraksha bead obtains benefits equivalent of an Ashwamedh Yajna. The wearer of an Eleven Mukhi Rudraksha bead also attains success in endeavours, prosperity and good fortune. The Eleven Mukhi Rudraksha bead is especially recommended to journalists, researches and students.<span style=\"font-size: 1rem;\">&nbsp;</span></p><p>11 mukhi Rudraksha beads are highly glorified in scriptures. It is stated that the fruits obtained after performing 1000 Ashavamedh Yagya and 100 Vajpaye Yagya can be obtained by wearing the 11 mukhi Rudraksha. . In Vedic Astrology, the gyarah mukhi Rudraksha is associated with all nine Planets and is used to pacify the malefic effects of all the Navgraha. Thus by wearing the 11 mukhi one gets relief from all miseries and misfortunes.</p><p><b>Benefits of Eleven Mukhi Rudraksha Bead:</b></p><ul><li>Eleven mukhi blesses the wearer with power, control and dedication</li><li>Enhances health and physical strength</li><li>Protects against all negative energies and negativities&nbsp;</li><li>It also helps achieve protection and success in various endeavours&nbsp;</li><li>Recommended for individuals with weakly placed Planet Mars in their Kundli&nbsp;</li></ul>', '<p>Size:</p>', 'RB115', 100, 1, 20, 0, 10, 'RB11NS24', '5', '10', '38', 0, '2024-07-19 16:20:20', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Best quality 11 mukhi Rudraksha bead of small size from Nepal. Eleven mukhi Rudraksha symbolizes Lord Hanuman and is worn for blessings of power.', '11 mukhi', 'Buy 11 mukhi Rudraksha Bead from Nepal Online'),
(54, '11 Mukhi Nepal', '<p>11 mukhi<br></p>', '<p>Eleven mukhi Rudraksha is a powerful bead which blesses wearer with high level of awareness and wisdom. 11 mukhi beads are associated with the Lord Hanuman / 11 Rudras. It is an excellent tool for meditation and sadhanas. The Eleven Mukhi Rudraksha blesses the wearer with courage, bravery and fearlessness. It is believed that wearer of an Eleven Mukhi Rudraksha bead obtains benefits equivalent of an Ashwamedh Yajna. The wearer of an Eleven Mukhi Rudraksha bead also attains success in endeavours, prosperity and good fortune. The Eleven Mukhi Rudraksha bead is especially recommended to journalists, researches and students.<span style=\"font-size: 1rem;\">&nbsp;</span></p><p>11 mukhi Rudraksha beads are highly glorified in scriptures. It is stated that the fruits obtained after performing 1000 Ashavamedh Yagya and 100 Vajpaye Yagya can be obtained by wearing the 11 mukhi Rudraksha. . In Vedic Astrology, the gyarah mukhi Rudraksha is associated with all nine Planets and is used to pacify the malefic effects of all the Navgraha. Thus by wearing the 11 mukhi one gets relief from all miseries and misfortunes.</p><p><b>Benefits of Eleven Mukhi Rudraksha Bead:</b></p><ul><li>Eleven mukhi blesses the wearer with power, control and dedication</li><li>Enhances health and physical strength</li><li>Protects against all negative energies and negativities&nbsp;</li><li>It also helps achieve protection and success in various endeavours&nbsp;</li><li>Recommended for individuals with weakly placed Planet Mars in their Kundli</li></ul>', '<p>Size</p>', 'RB119', 100, 1, 20, 0, 10, 'RB11NR62', '5', '10', '38', 0, '2024-07-19 16:21:54', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', '11 mukhi Rudraksha bead from Nepal is worn to attract power, success and victory. Buy eleven mukhi rudraksha online at best prices.', '11 mukhi', 'Original 11 mukhi Rudraksha Bead from Nepal'),
(55, '11 Mukhi Nepal - Big', '<p>11 mukhi</p>', '<p>Eleven mukhi Rudraksha is a powerful bead which blesses wearer with high level of awareness and wisdom. 11 mukhi beads are associated with the Lord Hanuman / 11 Rudras. It is an excellent tool for meditation and sadhanas. The Eleven Mukhi Rudraksha blesses the wearer with courage, bravery and fearlessness. It is believed that wearer of an Eleven Mukhi Rudraksha bead obtains benefits equivalent of an Ashwamedh Yajna. The wearer of an Eleven Mukhi Rudraksha bead also attains success in endeavours, prosperity and good fortune. The Eleven Mukhi Rudraksha bead is especially recommended to journalists, researches and students.<span style=\"font-size: 1rem;\">&nbsp;</span></p><p>11 mukhi Rudraksha beads are highly glorified in scriptures. It is stated that the fruits obtained after performing 1000 Ashavamedh Yagya and 100 Vajpaye Yagya can be obtained by wearing the 11 mukhi Rudraksha. . In Vedic Astrology, the gyarah mukhi Rudraksha is associated with all nine Planets and is used to pacify the malefic effects of all the Navgraha. Thus by wearing the 11 mukhi one gets relief from all miseries and misfortunes.</p><p><b>Benefits of Eleven Mukhi Rudraksha Bead:</b></p><ul><li>Eleven mukhi blesses the wearer with power, control and dedication</li><li>Enhances health and physical strength</li><li>Protects against all negative energies and negativities&nbsp;</li><li>It also helps achieve protection and success in various endeavours&nbsp;</li><li>Recommended for individuals with weakly placed Planet Mars in their Kundli</li></ul>', '<p>Size:</p>', 'RB111', 100, 1, 20, 0, 10, 'RB11NB83', '5', '10', '38', 0, '2024-07-19 16:23:39', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Browse 11 mukhi Rudraksha price and other details such as 11 mukhi Rudraksha mantra, 11 mukhi Rudraksha benefits and 11 mukhi Rudraksha Puja details.', '11 mukhi', 'Best Quality 11 mukhi Rudraksha at Best Price'),
(56, '11 Mukhi Nepal - Giant', '<p>11 mukhi</p>', '<p>Eleven mukhi Rudraksha is a powerful bead which blesses wearer with high level of awareness and wisdom. 11 mukhi beads are associated with the Lord Hanuman / 11 Rudras. It is an excellent tool for meditation and sadhanas. The Eleven Mukhi Rudraksha blesses the wearer with courage, bravery and fearlessness. It is believed that wearer of an Eleven Mukhi Rudraksha bead obtains benefits equivalent of an Ashwamedh Yajna. The wearer of an Eleven Mukhi Rudraksha bead also attains success in endeavours, prosperity and good fortune. The Eleven Mukhi Rudraksha bead is especially recommended to journalists, researches and students.<span style=\"font-size: 1rem;\">&nbsp;</span></p><p>11 mukhi Rudraksha beads are highly glorified in scriptures. It is stated that the fruits obtained after performing 1000 Ashavamedh Yagya and 100 Vajpaye Yagya can be obtained by wearing the 11 mukhi Rudraksha. . In Vedic Astrology, the gyarah mukhi Rudraksha is associated with all nine Planets and is used to pacify the malefic effects of all the Navgraha. Thus by wearing the 11 mukhi one gets relief from all miseries and misfortunes.</p><p><b>Benefits of Eleven Mukhi Rudraksha Bead:</b></p><ul><li>Eleven mukhi blesses the wearer with power, control and dedication</li><li>Enhances health and physical strength</li><li>Protects against all negative energies and negativities&nbsp;</li><li>It also helps achieve protection and success in various endeavours&nbsp;</li><li>Recommended for individuals with weakly placed Planet Mars in their Kundli</li></ul>', '<p>Size:</p>', 'RB117', 100, 1, 20, 0, 10, 'RB11NG20', '5', '10', '38', 0, '2024-07-19 16:25:11', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Original 11 mukhi Rudraksha bead sourced directly from Nepal. Wear 11 mukhi to attract Divine blessings of Lord Hanuman for success and protection.', '11 mukhi', '11 Mukhi Rudraksha Bead Giant Size from Nepal'),
(57, '12 Mukhi Nepal - Small', '<p>12 mukhi</p>', '<p>Twelve mukhi Rudraksha bead is associated with brilliance, intelligence radiance and power. The 12 mukhi Rudraksha bead is ruled by Lord Surya. Thus wearer of the 12 mukhi bead is blessed with confidence, leadership traits, power and vigor. 12 mukhi Rudraksha beads are powerful beads that are associated with name, fame and power. It is immensely useful for those who are seeking to get rid of stress, anger, greed, worries, suspicions, dependency and low self-esteem. In Vedic Astrology, the 12 mukhi Rudraksha beads are ruled by Planet Sun or Surya Graha. Thus it blesses the wearer with abundant energy, power and success. Twelve mukhi Rudraksha beads are highly recommended for business leaders, politicians and administrators. Twelve Mukhi Rudraksha bead is said to symbolize the twelve forms of the Sun God. The Twelve Mukhi Rudraksha bead is highly recommended to politicians, leaders and businessmen. The wearer of a Twelve Mukhi Rudraksha bead is blessed with healthier, wealthier and happier life.</p><p><b>Benefits of Twelve Mukhi Rudraksha Bead:</b></p><ul><li>Twelve mukhi enhance influence, power, name and fame&nbsp;</li><li>It also provides self-confidence and discipline and enhances self-worth&nbsp;</li><li>Recommended for people having a weakly placed Sun in their Kundli&nbsp;</li><li>Helps fight stress, worries, anger and provides happiness&nbsp;</li></ul>', '<p>Size:</p>', 'RB122', 100, 1, 20, 0, 10, 'RB12NS69', '5', '10', '39', 0, '2024-07-19 16:29:57', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Best quality 12 mukhi Rudraksha bead of small size from Nepal. Twelve mukhi Rudraksha symbolizes Lord Surya Dev and is worn for blessings of name, fame.', '12 mukhi', 'Buy 12 mukhi Rudraksha Bead from Nepal Online'),
(58, '12 Mukhi Nepal', '<p>12 mukhi</p>', '<p>Twelve mukhi Rudraksha bead is associated with brilliance, intelligence radiance and power. The 12 mukhi Rudraksha bead is ruled by Lord Surya. Thus wearer of the 12 mukhi bead is blessed with confidence, leadership traits, power and vigor. 12 mukhi Rudraksha beads are powerful beads that are associated with name, fame and power. It is immensely useful for those who are seeking to get rid of stress, anger, greed, worries, suspicions, dependency and low self-esteem. In Vedic Astrology, the 12 mukhi Rudraksha beads are ruled by Planet Sun or Surya Graha. Thus it blesses the wearer with abundant energy, power and success. Twelve mukhi Rudraksha beads are highly recommended for business leaders, politicians and administrators. Twelve Mukhi Rudraksha bead is said to symbolize the twelve forms of the Sun God. The Twelve Mukhi Rudraksha bead is highly recommended to politicians, leaders and businessmen. The wearer of a Twelve Mukhi Rudraksha bead is blessed with healthier, wealthier and happier life.</p><p><b>Benefits of Twelve Mukhi Rudraksha Bead:</b></p><ul><li>Twelve mukhi enhance influence, power, name and fame&nbsp;</li><li>It also provides self-confidence and discipline and enhances self-worth&nbsp;</li><li>Recommended for people having a weakly placed Sun in their Kundli&nbsp;</li><li>Helps fight stress, worries, anger and provides happiness&nbsp;</li></ul>', '<p>Size:</p>', 'RB129', 100, 1, 20, 0, 10, 'RB12NR27', '5', '10', '39', 0, '2024-07-19 16:31:34', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', '12 mukhi Rudraksha bead from Nepal is worn to attract name, fame and power. Buy twelve mukhi rudraksha online at best prices.', '12 mukhi', 'Original 12 mukhi Rudraksha Bead from Nepal'),
(59, '12 Mukhi Nepal - Big', '<p>12 mukhi</p>', '<p>Twelve mukhi Rudraksha bead is associated with brilliance, intelligence radiance and power. The 12 mukhi Rudraksha bead is ruled by Lord Surya. Thus wearer of the 12 mukhi bead is blessed with confidence, leadership traits, power and vigor. 12 mukhi Rudraksha beads are powerful beads that are associated with name, fame and power. It is immensely useful for those who are seeking to get rid of stress, anger, greed, worries, suspicions, dependency and low self-esteem. In Vedic Astrology, the 12 mukhi Rudraksha beads are ruled by Planet Sun or Surya Graha. Thus it blesses the wearer with abundant energy, power and success. Twelve mukhi Rudraksha beads are highly recommended for business leaders, politicians and administrators. Twelve Mukhi Rudraksha bead is said to symbolize the twelve forms of the Sun God. The Twelve Mukhi Rudraksha bead is highly recommended to politicians, leaders and businessmen. The wearer of a Twelve Mukhi Rudraksha bead is blessed with healthier, wealthier and happier life.</p><p><b>Benefits of Twelve Mukhi Rudraksha Bead:</b></p><ul><li>Twelve mukhi enhance influence, power, name and fame&nbsp;</li><li>It also provides self-confidence and discipline and enhances self-worth&nbsp;</li><li>Recommended for people having a weakly placed Sun in their Kundli&nbsp;</li><li>Helps fight stress, worries, anger and provides happiness&nbsp;</li></ul>', '<p>Size:</p>', 'RB123', 100, 1, 20, 0, 10, 'RB12NB66', '5', '10', '39', 0, '2024-07-19 16:32:44', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Browse 12 mukhi Rudraksha price and other details such as 12 mukhi Rudraksha mantra, 12 mukhi Rudraksha benefits and 12 mukhi Rudraksha Puja details.', '12 mukhi', 'Best Quality 12 mukhi Rudraksha at Best Price');
INSERT INTO `product_info` (`Product_ID`, `Product_Name`, `Product_Info`, `Product_Description`, `Product_Additional_info`, `Product_Code`, `Product_Price`, `Product_USD`, `Product_Weight`, `Product_Discount`, `Product_Qty`, `Product_SKU`, `Product_Main_Category`, `Product_Sub_Category`, `Product_Sub_Sub_Category`, `Product_Click_Count`, `Product_Added`, `Product_Updated`, `Product_Status`, `Feature`, `Sale_Offer`, `Deals`, `meta_description`, `meta_keyword`, `meta_title`) VALUES
(60, '12 Mukhi Nepal - Giant', '<p>12 mukhi</p>', '<p>Twelve mukhi Rudraksha bead is associated with brilliance, intelligence radiance and power. The 12 mukhi Rudraksha bead is ruled by Lord Surya. Thus wearer of the 12 mukhi bead is blessed with confidence, leadership traits, power and vigor. 12 mukhi Rudraksha beads are powerful beads that are associated with name, fame and power. It is immensely useful for those who are seeking to get rid of stress, anger, greed, worries, suspicions, dependency and low self-esteem. In Vedic Astrology, the 12 mukhi Rudraksha beads are ruled by Planet Sun or Surya Graha. Thus it blesses the wearer with abundant energy, power and success. Twelve mukhi Rudraksha beads are highly recommended for business leaders, politicians and administrators. Twelve Mukhi Rudraksha bead is said to symbolize the twelve forms of the Sun God. The Twelve Mukhi Rudraksha bead is highly recommended to politicians, leaders and businessmen. The wearer of a Twelve Mukhi Rudraksha bead is blessed with healthier, wealthier and happier life.</p><p><b>Benefits of Twelve Mukhi Rudraksha Bead:</b></p><ul><li>Twelve mukhi enhance influence, power, name and fame&nbsp;</li><li>It also provides self-confidence and discipline and enhances self-worth&nbsp;</li><li>Recommended for people having a weakly placed Sun in their Kundli&nbsp;</li><li>Helps fight stress, worries, anger and provides happiness&nbsp;</li></ul>', '<p>Size:</p>', 'RB127', 100, 1, 20, 0, 10, 'RB12NG54', '5', '10', '39', 0, '2024-07-19 16:49:23', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Original 12 mukhi Rudraksha bead sourced directly from Nepal. Wear 12 mukhi to attract Divine blessings of Lord Surya Dev for name and fame.', '12 mukhi', '12 Mukhi Rudraksha Bead Giant Size from Nepal'),
(61, '13 Mukhi Nepal - Small', '<p>13 mukhi</p>', '<p>Thirteen Mukhi Rudraksha bead symbolizes Lord Kamdev, the God of attraction and love. The Thirteen Mukhi Rudraksha bead is a very powerful Rudraksha bead that blesses the wearer with a charismatic personality, magnetism and confidence. Thirteen Mukhi Rudraksha bead is also useful for spiritual sadhaks as it helps awaken the kundalini shakti. The wearer of the Thirteen Mukhi Rudraksha bead is also blesses the wearer with all materialistic comforts. 13 mukhi Rudraksha bead is associated with charisma, attraction, desire fulfilment, love and joy. The thirteen mukhi Rudraksha bead is ruled by Lord Kamdev, the God of love and passion. The wearer of the 13 mukhi Rudraksha bead is blessed with dynamism, magnetism and success.&nbsp;&nbsp;</p><p>Thirteen mukhi Rudraksha bead is a powerful and popular bead. The bead blesses devotees with both materialistic desires and spiritual augmentation as well. In Vedic Astrology, the 13 mukhi Rudraksha bead is associated with Planet Moon and Venus. Thus it blesses the wearer with emotional stability, wish fulfillment and luxuries. The Thirteen mukhi Rudraksha bead also helps a person to take right decisions and actions in life.&nbsp;</p><p><b>Benefits of Thirteen Mukhi Rudraksha Bead:</b></p><ul><li>Thirteen mukhi blesses the wearer with charisma, magnetism, charm and success&nbsp;</li><li>Negates malefic effects of Venus in one’s Horoscope&nbsp;</li><li>It also helps improve focus, concentration and thus aids mediation</li><li>It helps attract right partner or to win over partner of choice</li></ul>', '<p>Size:</p>', 'RB133', 100, 1, 20, 0, 10, 'RB13NS63', '5', '10', '40', 0, '2024-07-19 16:53:52', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Best quality 13 mukhi Rudraksha bead of small size from Nepal. Thirteen mukhi Rudraksha symbolizes Lord Kamdev and is worn for blessings of attraction.', '13 mukhi', 'Buy 13 mukhi Rudraksha Bead from Nepal Online'),
(62, '13 Mukhi Nepal', '<p>13 mukhi</p>', '<p>Thirteen Mukhi Rudraksha bead symbolizes Lord Kamdev, the God of attraction and love. The Thirteen Mukhi Rudraksha bead is a very powerful Rudraksha bead that blesses the wearer with a charismatic personality, magnetism and confidence. Thirteen Mukhi Rudraksha bead is also useful for spiritual sadhaks as it helps awaken the kundalini shakti. The wearer of the Thirteen Mukhi Rudraksha bead is also blesses the wearer with all materialistic comforts. 13 mukhi Rudraksha bead is associated with charisma, attraction, desire fulfilment, love and joy. The thirteen mukhi Rudraksha bead is ruled by Lord Kamdev, the God of love and passion. The wearer of the 13 mukhi Rudraksha bead is blessed with dynamism, magnetism and success.&nbsp;&nbsp;</p><p>Thirteen mukhi Rudraksha bead is a powerful and popular bead. The bead blesses devotees with both materialistic desires and spiritual augmentation as well. In Vedic Astrology, the 13 mukhi Rudraksha bead is associated with Planet Moon and Venus. Thus it blesses the wearer with emotional stability, wish fulfillment and luxuries. The Thirteen mukhi Rudraksha bead also helps a person to take right decisions and actions in life.&nbsp;</p><p><b>Benefits of Thirteen Mukhi Rudraksha Bead:</b></p><ul><li>Thirteen mukhi blesses the wearer with charisma, magnetism, charm and success&nbsp;</li><li>Negates malefic effects of Venus in one’s Horoscope&nbsp;</li><li>It also helps improve focus, concentration and thus aids mediation</li><li>It helps attract right partner or to win over partner of choice</li></ul>', '<p>Size:</p>', 'RB138', 100, 1, 20, 0, 10, 'RB13NR22', '5', '10', '40', 0, '2024-07-19 16:55:29', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', '13 mukhi Rudraksha bead from Nepal is worn to attract charisma and success. Buy thirteen mukhi rudraksha online at best prices.', '13 mukhi', 'Original 13 mukhi Rudraksha Bead from Nepal'),
(63, '13 Mukhi Nepal - Big', '<p>13 mukhi</p>', '<p>Thirteen Mukhi Rudraksha bead symbolizes Lord Kamdev, the God of attraction and love. The Thirteen Mukhi Rudraksha bead is a very powerful Rudraksha bead that blesses the wearer with a charismatic personality, magnetism and confidence. Thirteen Mukhi Rudraksha bead is also useful for spiritual sadhaks as it helps awaken the kundalini shakti. The wearer of the Thirteen Mukhi Rudraksha bead is also blesses the wearer with all materialistic comforts. 13 mukhi Rudraksha bead is associated with charisma, attraction, desire fulfilment, love and joy. The thirteen mukhi Rudraksha bead is ruled by Lord Kamdev, the God of love and passion. The wearer of the 13 mukhi Rudraksha bead is blessed with dynamism, magnetism and success.&nbsp;&nbsp;</p><p>Thirteen mukhi Rudraksha bead is a powerful and popular bead. The bead blesses devotees with both materialistic desires and spiritual augmentation as well. In Vedic Astrology, the 13 mukhi Rudraksha bead is associated with Planet Moon and Venus. Thus it blesses the wearer with emotional stability, wish fulfillment and luxuries. The Thirteen mukhi Rudraksha bead also helps a person to take right decisions and actions in life.&nbsp;</p><p><b>Benefits of Thirteen Mukhi Rudraksha Bead:</b></p><ul><li>Thirteen mukhi blesses the wearer with charisma, magnetism, charm and success&nbsp;</li><li>Negates malefic effects of Venus in one’s Horoscope&nbsp;</li><li>It also helps improve focus, concentration and thus aids mediation</li><li>It helps attract right partner or to win over partner of choice</li></ul>', '<p>Size:</p>', 'RB135', 100, 1, 20, 0, 10, 'RB13NB41', '5', '10', '40', 0, '2024-07-19 16:57:40', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Browse 13 mukhi Rudraksha price and other details such as 13 mukhi Rudraksha mantra, 13 mukhi Rudraksha benefits and 13 mukhi Rudraksha Puja details.', '13 mukhi', 'Best Quality 13 mukhi Rudraksha at Best Price'),
(64, '13 Mukhi Nepal - Giant', '<p>13 mukhi</p>', '<p>Thirteen Mukhi Rudraksha bead symbolizes Lord Kamdev, the God of attraction and love. The Thirteen Mukhi Rudraksha bead is a very powerful Rudraksha bead that blesses the wearer with a charismatic personality, magnetism and confidence. Thirteen Mukhi Rudraksha bead is also useful for spiritual sadhaks as it helps awaken the kundalini shakti. The wearer of the Thirteen Mukhi Rudraksha bead is also blesses the wearer with all materialistic comforts. 13 mukhi Rudraksha bead is associated with charisma, attraction, desire fulfilment, love and joy. The thirteen mukhi Rudraksha bead is ruled by Lord Kamdev, the God of love and passion. The wearer of the 13 mukhi Rudraksha bead is blessed with dynamism, magnetism and success.&nbsp;&nbsp;</p><p>Thirteen mukhi Rudraksha bead is a powerful and popular bead. The bead blesses devotees with both materialistic desires and spiritual augmentation as well. In Vedic Astrology, the 13 mukhi Rudraksha bead is associated with Planet Moon and Venus. Thus it blesses the wearer with emotional stability, wish fulfillment and luxuries. The Thirteen mukhi Rudraksha bead also helps a person to take right decisions and actions in life.&nbsp;</p><p><b>Benefits of Thirteen Mukhi Rudraksha Bead:</b></p><ul><li>Thirteen mukhi blesses the wearer with charisma, magnetism, charm and success&nbsp;</li><li>Negates malefic effects of Venus in one’s Horoscope&nbsp;</li><li>It also helps improve focus, concentration and thus aids mediation</li><li>It helps attract right partner or to win over partner of choice</li></ul>', '<p>Size:</p>', 'RB131', 100, 1, 20, 0, 10, 'RB13NG83', '5', '10', '40', 0, '2024-07-19 16:59:53', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Original 13 mukhi Rudraksha bead sourced directly from Nepal. Wear 13 mukhi to attract Divine blessings of Lord Kamdev for charisma.', '13 mukhi', '13 Mukhi Rudraksha Bead Giant Size from Nepal'),
(65, '13 Mukhi Indonesia - Small', '<p>13 mukhi</p>', '<p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:115%;mso-bidi-font-family:\r\nCalibri;mso-bidi-theme-font:minor-latin\">Thirteen&nbsp;Mukhi Rudraksha bead\r\nsymbolizes Lord Kamdev, the God of attraction and love. The Thirteen&nbsp;Mukhi\r\nRudraksha bead is a very powerful Rudraksha bead that blesses the wearer with a\r\ncharismatic personality, magnetism and confidence. Thirteen&nbsp;Mukhi\r\nRudraksha bead is also useful for spiritual sadhaks as it helps awaken the\r\nkundalini shakti. The wearer of the Thirteen&nbsp;Mukhi Rudraksha bead is also\r\nblesses the wearer with all materialistic comforts. 13 mukhi Rudraksha bead is\r\nassociated with charisma, attraction, desire fulfilment, love and joy. The\r\nthirteen mukhi<b> </b>Rudraksha bead is\r\nruled by Lord Kamdev, the God of love and passion. The wearer of the 13 mukhi\r\nRudraksha bead is blessed with dynamism, magnetism and success.&nbsp; <b><o:p></o:p></b></span></p><p class=\"MsoNormal\"><span style=\"font-size:12.0pt;line-height:115%;mso-bidi-font-family:\r\nCalibri;mso-bidi-theme-font:minor-latin\">Thirteen mukhi Rudraksha bead is a\r\npowerful and popular bead. The bead blesses devotees with both materialistic\r\ndesires and spiritual augmentation as well. In Vedic Astrology, the 13 mukhi\r\nRudraksha bead is associated with Planet Moon and Venus. Thus it blesses the\r\nwearer with emotional stability, wish fulfillment and luxuries. The Thirteen\r\nmukhi Rudraksha bead also helps a person to take right decisions and actions in\r\nlife.</span><span style=\"font-size: 12pt;\">&nbsp;</span></p><p class=\"MsoNormal\"><b><span style=\"font-size: 12pt; line-height: 115%; color: rgb(32, 32, 32); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Benefits of\r\nThirteen Mukhi Rudraksha Bead:<o:p></o:p></span></b></p><ul><li>Thirteen mukhi blesses the wearer with charisma, magnetism, charm and success&nbsp;</li><li>Negates malefic effects of Venus in one’s Horoscope&nbsp;</li><li>It also helps improve focus, concentration and thus aids mediation</li><li>It helps attract right partner or to win over partner of choice</li></ul>', '<p>Size:&nbsp;</p>', 'RB139', 100, 1, 20, 0, 10, 'RB13IS23', '5', '10', '40', 0, '2024-07-19 17:01:50', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Best quality 13 mukhi Rudraksha bead of small size from Indonesia. Thirteen mukhi Rudraksha symbolizes Lord Kamdev and is worn for blessings of attraction.', '13 mukhi', 'Buy 13 mukhi Rudraksha Bead from Indonesia Online'),
(66, '13 Mukhi Indonesia', '<p>13 mukhi</p>', '<p>Thirteen Mukhi Rudraksha bead symbolizes Lord Kamdev, the God of attraction and love. The Thirteen Mukhi Rudraksha bead is a very powerful Rudraksha bead that blesses the wearer with a charismatic personality, magnetism and confidence. Thirteen Mukhi Rudraksha bead is also useful for spiritual sadhaks as it helps awaken the kundalini shakti. The wearer of the Thirteen Mukhi Rudraksha bead is also blesses the wearer with all materialistic comforts. 13 mukhi Rudraksha bead is associated with charisma, attraction, desire fulfilment, love and joy. The thirteen mukhi Rudraksha bead is ruled by Lord Kamdev, the God of love and passion. The wearer of the 13 mukhi Rudraksha bead is blessed with dynamism, magnetism and success.&nbsp;&nbsp;</p><p>Thirteen mukhi Rudraksha bead is a powerful and popular bead. The bead blesses devotees with both materialistic desires and spiritual augmentation as well. In Vedic Astrology, the 13 mukhi Rudraksha bead is associated with Planet Moon and Venus. Thus it blesses the wearer with emotional stability, wish fulfillment and luxuries. The Thirteen mukhi Rudraksha bead also helps a person to take right decisions and actions in life.&nbsp;</p><p><b>Benefits of Thirteen Mukhi Rudraksha Bead:</b></p><ul><li>Thirteen mukhi blesses the wearer with charisma, magnetism, charm and success&nbsp;</li><li>Negates malefic effects of Venus in one’s Horoscope&nbsp;</li><li>It also helps improve focus, concentration and thus aids mediation</li><li>It helps attract right partner or to win over partner of choice</li></ul>', '<p>Size:&nbsp;</p>', 'RB132', 100, 1, 20, 0, 10, 'RB13IR74', '5', '10', '40', 0, '2024-07-19 17:03:39', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', '13 mukhi Rudraksha bead from Indonesia is worn to attract charisma and success. Buy thirteen mukhi rudraksha online at best prices.', '13 mukhi', 'Original 13 mukhi Rudraksha Bead from Indonesia'),
(67, '13 Mukhi Indonesia - Big', '<p>13 mukhi</p>', '<p>Thirteen Mukhi Rudraksha bead symbolizes Lord Kamdev, the God of attraction and love. The Thirteen Mukhi Rudraksha bead is a very powerful Rudraksha bead that blesses the wearer with a charismatic personality, magnetism and confidence. Thirteen Mukhi Rudraksha bead is also useful for spiritual sadhaks as it helps awaken the kundalini shakti. The wearer of the Thirteen Mukhi Rudraksha bead is also blesses the wearer with all materialistic comforts. 13 mukhi Rudraksha bead is associated with charisma, attraction, desire fulfilment, love and joy. The thirteen mukhi Rudraksha bead is ruled by Lord Kamdev, the God of love and passion. The wearer of the 13 mukhi Rudraksha bead is blessed with dynamism, magnetism and success.&nbsp;&nbsp;</p><p>Thirteen mukhi Rudraksha bead is a powerful and popular bead. The bead blesses devotees with both materialistic desires and spiritual augmentation as well. In Vedic Astrology, the 13 mukhi Rudraksha bead is associated with Planet Moon and Venus. Thus it blesses the wearer with emotional stability, wish fulfillment and luxuries. The Thirteen mukhi Rudraksha bead also helps a person to take right decisions and actions in life.&nbsp;</p><p><b>Benefits of Thirteen Mukhi Rudraksha Bead:</b></p><ul><li>Thirteen mukhi blesses the wearer with charisma, magnetism, charm and success&nbsp;</li><li>Negates malefic effects of Venus in one’s Horoscope&nbsp;</li><li>It also helps improve focus, concentration and thus aids mediation</li><li>It helps attract right partner or to win over partner of choice</li></ul>', '<p>Size:</p>', 'RB136', 100, 1, 20, 0, 10, 'RB13IB49', '5', '10', '40', 0, '2024-07-19 17:04:54', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Browse 13 mukhi Rudraksha price and other details such as 13 mukhi Rudraksha mantra, 13 mukhi Rudraksha benefits and 13 mukhi Rudraksha Puja details.', '13 mukhi', 'Best Quality 13 mukhi Rudraksha at Best Price'),
(68, '13 Mukhi Indonesia - Giant', '<p>13 mukhi</p>', '<p>Thirteen Mukhi Rudraksha bead symbolizes Lord Kamdev, the God of attraction and love. The Thirteen Mukhi Rudraksha bead is a very powerful Rudraksha bead that blesses the wearer with a charismatic personality, magnetism and confidence. Thirteen Mukhi Rudraksha bead is also useful for spiritual sadhaks as it helps awaken the kundalini shakti. The wearer of the Thirteen Mukhi Rudraksha bead is also blesses the wearer with all materialistic comforts. 13 mukhi Rudraksha bead is associated with charisma, attraction, desire fulfilment, love and joy. The thirteen mukhi Rudraksha bead is ruled by Lord Kamdev, the God of love and passion. The wearer of the 13 mukhi Rudraksha bead is blessed with dynamism, magnetism and success.&nbsp;&nbsp;</p><p>Thirteen mukhi Rudraksha bead is a powerful and popular bead. The bead blesses devotees with both materialistic desires and spiritual augmentation as well. In Vedic Astrology, the 13 mukhi Rudraksha bead is associated with Planet Moon and Venus. Thus it blesses the wearer with emotional stability, wish fulfillment and luxuries. The Thirteen mukhi Rudraksha bead also helps a person to take right decisions and actions in life.&nbsp;</p><p><b>Benefits of Thirteen Mukhi Rudraksha Bead:</b></p><ul><li>Thirteen mukhi blesses the wearer with charisma, magnetism, charm and success&nbsp;</li><li>Negates malefic effects of Venus in one’s Horoscope&nbsp;</li><li>It also helps improve focus, concentration and thus aids mediation</li><li>It helps attract right partner or to win over partner of choice</li></ul>', '<p>Size:&nbsp;</p>', 'RB134', 100, 1, 20, 0, 10, 'RB13IG38', '5', '10', '40', 0, '2024-07-19 17:06:02', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Original 13 mukhi Rudraksha bead sourced directly from Indonesia. Wear 13 mukhi to attract Divine blessings of Lord Kamdev for charisma.', '13 mukhi', '13 Mukhi Rudraksha Bead Giant Size from Indonesia'),
(69, '2 Mukhi Nepal - Small', '<p>2 mukhi</p>', '<p>2 mukhi Rudraksha bead symbolizes Lord Ardhanareshwar, which is a combined form or oneness of Shiva and Shakti. Ardhanareshwar is incarnation of Lord Shiva which is depicted as half Lord Shiva and half Maa Parvati. Two Mukhi Rudraksha bead helps enhance and strengthen relationships. The Two Mukhi Rudraksha bead is also helpful for couples who are looking to conceive. The Two Mukhi Rudraksha bead is a very rare and special Rudraksha bead. Wearing the Two Mukhi Rudraksha bead also helps the wearer attain peace and contentment. Wearing the two mukhi Rudraksha bead helps one attain harmony, peace of mind, cordial relationship and clarity of thoughts.&nbsp;</p><p>When worn 2 Mukhi Rudraksha bestows material fulfilment, emotional stability, uplifts spiritually, making the beads sought after.&nbsp; 2 mukhi Rudraksha symbolizes the divine unification of the mind and soul. In Vedic Astrology, Do mukhi bead is associated with Planet Moon or Chandra Dev, which rules the mind, feelings and emotions of a native. Thus two mukhi helps stabilize wavering mind and emotions. It also assists harmonious relationships and enhances self-acceptance and self-confidence. When worn 2 mukhi Rudraksha bead bestows material fulfilment, emotional stability and uplifts one spiritually.&nbsp; Two mukhi Rudraksha bead is highly recommended to married couples and natives with a weak moon in their natal chart.&nbsp;</p><p><b>Benefits of Two Mukhi Rudraksha Bead:</b></p><ul><li>Two mukhi helps enhance understanding and relationships and teaches unity&nbsp;&nbsp;</li><li>Increase stamina, vitally and sexual prowess&nbsp;&nbsp;</li><li>Enhances benefits of Moon and provides relief from the malefic of Moon&nbsp;</li><li>Enhances creativity, provides happiness and peace of mind</li></ul>', '<p>Size:</p>', 'RB023', 100, 1, 20, 0, 10, 'RB02NS40', '5', '10', '5', 0, '2024-07-19 17:13:01', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Best quality 2 mukhi Rudraksha bead of small size from Nepal. Two mukhi Rudraksha symbolizes Lord Ardhanareshwar and is worn for blessings of cordial relationships.', '2 mukhi, Do mukhi', 'Buy 2 mukhi Rudraksha Bead from Nepal Online'),
(70, '2 Mukhi Nepal', '<p>2 mukhi</p>', '<p>2 mukhi Rudraksha bead symbolizes Lord Ardhanareshwar, which is a combined form or oneness of Shiva and Shakti. Ardhanareshwar is incarnation of Lord Shiva which is depicted as half Lord Shiva and half Maa Parvati. Two Mukhi Rudraksha bead helps enhance and strengthen relationships. The Two Mukhi Rudraksha bead is also helpful for couples who are looking to conceive. The Two Mukhi Rudraksha bead is a very rare and special Rudraksha bead. Wearing the Two Mukhi Rudraksha bead also helps the wearer attain peace and contentment. Wearing the two mukhi Rudraksha bead helps one attain harmony, peace of mind, cordial relationship and clarity of thoughts.&nbsp;</p><p>When worn 2 Mukhi Rudraksha bestows material fulfilment, emotional stability, uplifts spiritually, making the beads sought after.&nbsp; 2 mukhi Rudraksha symbolizes the divine unification of the mind and soul. In Vedic Astrology, Do mukhi bead is associated with Planet Moon or Chandra Dev, which rules the mind, feelings and emotions of a native. Thus two mukhi helps stabilize wavering mind and emotions. It also assists harmonious relationships and enhances self-acceptance and self-confidence. When worn 2 mukhi Rudraksha bead bestows material fulfilment, emotional stability and uplifts one spiritually.&nbsp; Two mukhi Rudraksha bead is highly recommended to married couples and natives with a weak moon in their natal chart.&nbsp;</p><p><b>Benefits of Two Mukhi Rudraksha Bead:</b></p><ul><li>Two mukhi helps enhance understanding and relationships and teaches unity&nbsp;&nbsp;</li><li>Increase stamina, vitally and sexual prowess&nbsp;&nbsp;</li><li>Enhances benefits of Moon and provides relief from the malefic of Moon&nbsp;</li><li>Enhances creativity, provides happiness and peace of mind</li></ul>', '<p>Size:</p>', 'RB028', 100, 1, 20, 0, 10, 'RB02NR28', '5', '10', '5', 0, '2024-07-19 17:16:07', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', '2 mukhi Rudraksha bead from Nepal is worn to attract harmony and cordial relationships. Buy Do mukhi rudraksha online at best prices.', '2 mukhi, Do mukhi', 'Original 2 mukhi Rudraksha Bead from Nepal'),
(71, '2 Mukhi Nepal - Big', '<p>2 mukhi</p>', '<p>2 mukhi Rudraksha bead symbolizes Lord Ardhanareshwar, which is a combined form or oneness of Shiva and Shakti. Ardhanareshwar is incarnation of Lord Shiva which is depicted as half Lord Shiva and half Maa Parvati. Two Mukhi Rudraksha bead helps enhance and strengthen relationships. The Two Mukhi Rudraksha bead is also helpful for couples who are looking to conceive. The Two Mukhi Rudraksha bead is a very rare and special Rudraksha bead. Wearing the Two Mukhi Rudraksha bead also helps the wearer attain peace and contentment. Wearing the two mukhi Rudraksha bead helps one attain harmony, peace of mind, cordial relationship and clarity of thoughts.&nbsp;</p><p>When worn 2 Mukhi Rudraksha bestows material fulfilment, emotional stability, uplifts spiritually, making the beads sought after.&nbsp; 2 mukhi Rudraksha symbolizes the divine unification of the mind and soul. In Vedic Astrology, Do mukhi bead is associated with Planet Moon or Chandra Dev, which rules the mind, feelings and emotions of a native. Thus two mukhi helps stabilize wavering mind and emotions. It also assists harmonious relationships and enhances self-acceptance and self-confidence. When worn 2 mukhi Rudraksha bead bestows material fulfilment, emotional stability and uplifts one spiritually.&nbsp; Two mukhi Rudraksha bead is highly recommended to married couples and natives with a weak moon in their natal chart.&nbsp;</p><p><b>Benefits of Two Mukhi Rudraksha Bead:</b></p><ul><li>Two mukhi helps enhance understanding and relationships and teaches unity&nbsp;&nbsp;</li><li>Increase stamina, vitally and sexual prowess&nbsp;&nbsp;</li><li>Enhances benefits of Moon and provides relief from the malefic of Moon&nbsp;</li><li>Enhances creativity, provides happiness and peace of mind</li></ul>', '<p>Size:</p>', 'RB025', 100, 1, 20, 0, 10, 'RB02NB96', '5', '10', '5', 0, '2024-07-19 17:17:31', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Browse 2 mukhi Rudraksha price and other details such as 2 mukhi Rudraksha mantra, 2 mukhi Rudraksha benefits and 2 mukhi Rudraksha Puja details.', '2 mukhi', 'Best Quality 2 mukhi Rudraksha at Best Price'),
(72, '2 Mukhi Nepal - Giant', '<p>2 mukhi</p>', '<p>2 mukhi Rudraksha bead symbolizes Lord Ardhanareshwar, which is a combined form or oneness of Shiva and Shakti. Ardhanareshwar is incarnation of Lord Shiva which is depicted as half Lord Shiva and half Maa Parvati. Two Mukhi Rudraksha bead helps enhance and strengthen relationships. The Two Mukhi Rudraksha bead is also helpful for couples who are looking to conceive. The Two Mukhi Rudraksha bead is a very rare and special Rudraksha bead. Wearing the Two Mukhi Rudraksha bead also helps the wearer attain peace and contentment. Wearing the two mukhi Rudraksha bead helps one attain harmony, peace of mind, cordial relationship and clarity of thoughts.&nbsp;</p><p>When worn 2 Mukhi Rudraksha bestows material fulfilment, emotional stability, uplifts spiritually, making the beads sought after.&nbsp; 2 mukhi Rudraksha symbolizes the divine unification of the mind and soul. In Vedic Astrology, Do mukhi bead is associated with Planet Moon or Chandra Dev, which rules the mind, feelings and emotions of a native. Thus two mukhi helps stabilize wavering mind and emotions. It also assists harmonious relationships and enhances self-acceptance and self-confidence. When worn 2 mukhi Rudraksha bead bestows material fulfilment, emotional stability and uplifts one spiritually.&nbsp; Two mukhi Rudraksha bead is highly recommended to married couples and natives with a weak moon in their natal chart.&nbsp;</p><p><b>Benefits of Two Mukhi Rudraksha Bead:</b></p><ul><li>Two mukhi helps enhance understanding and relationships and teaches unity&nbsp;&nbsp;</li><li>Increase stamina, vitally and sexual prowess&nbsp;&nbsp;</li><li>Enhances benefits of Moon and provides relief from the malefic of Moon&nbsp;</li><li>Enhances creativity, provides happiness and peace of mind</li></ul>', '<p>Size:</p>', 'RB021', 100, 1, 20, 0, 10, 'RB02NG14', '5', '10', '5', 0, '2024-07-19 17:19:23', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Original 2 mukhi Rudraksha bead sourced directly from Nepal. Wear 2 mukhi to attract Divine blessings of Lord Ardhanareshwar for harmony at home.', '2 mukhi, Do mukhi', '2 Mukhi Rudraksha Bead Giant Size from Nepal'),
(73, '2 Mukhi Indonesia - Small', '<p>2 mukhi</p>', '<p>2 mukhi Rudraksha bead symbolizes Lord Ardhanareshwar, which is a combined form or oneness of Shiva and Shakti. Ardhanareshwar is incarnation of Lord Shiva which is depicted as half Lord Shiva and half Maa Parvati. Two Mukhi Rudraksha bead helps enhance and strengthen relationships. The Two Mukhi Rudraksha bead is also helpful for couples who are looking to conceive. The Two Mukhi Rudraksha bead is a very rare and special Rudraksha bead. Wearing the Two Mukhi Rudraksha bead also helps the wearer attain peace and contentment. Wearing the two mukhi Rudraksha bead helps one attain harmony, peace of mind, cordial relationship and clarity of thoughts.&nbsp;</p><p>When worn 2 Mukhi Rudraksha bestows material fulfilment, emotional stability, uplifts spiritually, making the beads sought after.&nbsp; 2 mukhi Rudraksha symbolizes the divine unification of the mind and soul. In Vedic Astrology, Do mukhi bead is associated with Planet Moon or Chandra Dev, which rules the mind, feelings and emotions of a native. Thus two mukhi helps stabilize wavering mind and emotions. It also assists harmonious relationships and enhances self-acceptance and self-confidence. When worn 2 mukhi Rudraksha bead bestows material fulfilment, emotional stability and uplifts one spiritually.&nbsp; Two mukhi Rudraksha bead is highly recommended to married couples and natives with a weak moon in their natal chart.&nbsp;</p><p><b>Benefits of Two Mukhi Rudraksha Bead:</b></p><ul><li>Two mukhi helps enhance understanding and relationships and teaches unity&nbsp;&nbsp;</li><li>Increase stamina, vitally and sexual prowess&nbsp;&nbsp;</li><li>Enhances benefits of Moon and provides relief from the malefic of Moon&nbsp;</li><li>Enhances creativity, provides happiness and peace of mind</li></ul>', '<p>Size:</p>', 'RB029', 100, 1, 20, 0, 10, 'RB02IS77', '5', '10', '5', 0, '2024-07-19 17:20:57', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Best quality 2 mukhi Rudraksha bead of small size from Indonesia. Two mukhi Rudraksha symbolizes Lord Ardhanareshwar and is worn for blessings of cordial relationships.', '2 mukhi, Do mukhi', 'Buy 2 mukhi Rudraksha Bead from Indonesia Online'),
(74, '2 Mukhi Indonesia', '<p>2 mukhi</p>', '<p>2 mukhi Rudraksha bead symbolizes Lord Ardhanareshwar, which is a combined form or oneness of Shiva and Shakti. Ardhanareshwar is incarnation of Lord Shiva which is depicted as half Lord Shiva and half Maa Parvati. Two Mukhi Rudraksha bead helps enhance and strengthen relationships. The Two Mukhi Rudraksha bead is also helpful for couples who are looking to conceive. The Two Mukhi Rudraksha bead is a very rare and special Rudraksha bead. Wearing the Two Mukhi Rudraksha bead also helps the wearer attain peace and contentment. Wearing the two mukhi Rudraksha bead helps one attain harmony, peace of mind, cordial relationship and clarity of thoughts.&nbsp;</p><p>When worn 2 Mukhi Rudraksha bestows material fulfilment, emotional stability, uplifts spiritually, making the beads sought after.&nbsp; 2 mukhi Rudraksha symbolizes the divine unification of the mind and soul. In Vedic Astrology, Do mukhi bead is associated with Planet Moon or Chandra Dev, which rules the mind, feelings and emotions of a native. Thus two mukhi helps stabilize wavering mind and emotions. It also assists harmonious relationships and enhances self-acceptance and self-confidence. When worn 2 mukhi Rudraksha bead bestows material fulfilment, emotional stability and uplifts one spiritually.&nbsp; Two mukhi Rudraksha bead is highly recommended to married couples and natives with a weak moon in their natal chart.&nbsp;</p><p><b>Benefits of Two Mukhi Rudraksha Bead:</b></p><ul><li>Two mukhi helps enhance understanding and relationships and teaches unity&nbsp;&nbsp;</li><li>Increase stamina, vitally and sexual prowess&nbsp;&nbsp;</li><li>Enhances benefits of Moon and provides relief from the malefic of Moon&nbsp;</li><li>Enhances creativity, provides happiness and peace of mind</li></ul>', '<p>Size:</p>', 'RB022', 100, 1, 20, 0, 10, 'RB02IR93Original 2 mukhi Rudraksha Bead from Indonesia', '5', '10', '5', 0, '2024-07-19 17:22:09', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', '2 mukhi Rudraksha bead from Indonesia is worn to attract harmony and cordial relationships. Buy Do mukhi rudraksha online at best prices.', '2 mukhji, Do mukhi', 'Original 2 mukhi Rudraksha Bead from Indonesia'),
(75, '2 Mukhi Indonesia - Big', '<p>2 mukhi</p>', '<p>2 mukhi Rudraksha bead symbolizes Lord Ardhanareshwar, which is a combined form or oneness of Shiva and Shakti. Ardhanareshwar is incarnation of Lord Shiva which is depicted as half Lord Shiva and half Maa Parvati. Two Mukhi Rudraksha bead helps enhance and strengthen relationships. The Two Mukhi Rudraksha bead is also helpful for couples who are looking to conceive. The Two Mukhi Rudraksha bead is a very rare and special Rudraksha bead. Wearing the Two Mukhi Rudraksha bead also helps the wearer attain peace and contentment. Wearing the two mukhi Rudraksha bead helps one attain harmony, peace of mind, cordial relationship and clarity of thoughts.&nbsp;</p><p>When worn 2 Mukhi Rudraksha bestows material fulfilment, emotional stability, uplifts spiritually, making the beads sought after.&nbsp; 2 mukhi Rudraksha symbolizes the divine unification of the mind and soul. In Vedic Astrology, Do mukhi bead is associated with Planet Moon or Chandra Dev, which rules the mind, feelings and emotions of a native. Thus two mukhi helps stabilize wavering mind and emotions. It also assists harmonious relationships and enhances self-acceptance and self-confidence. When worn 2 mukhi Rudraksha bead bestows material fulfilment, emotional stability and uplifts one spiritually.&nbsp; Two mukhi Rudraksha bead is highly recommended to married couples and natives with a weak moon in their natal chart.&nbsp;</p><p><b>Benefits of Two Mukhi Rudraksha Bead:</b></p><ul><li>Two mukhi helps enhance understanding and relationships and teaches unity&nbsp;&nbsp;</li><li>Increase stamina, vitally and sexual prowess&nbsp;&nbsp;</li><li>Enhances benefits of Moon and provides relief from the malefic of Moon&nbsp;</li><li>Enhances creativity, provides happiness and peace of mind</li></ul>', '<p>Size:</p>', 'RB026', 100, 1, 20, 0, 10, 'RB02IB66', '5', '10', '5', 0, '2024-07-19 17:23:23', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Browse 2 mukhi Rudraksha price and other details such as 2 mukhi Rudraksha mantra, 2 mukhi Rudraksha benefits and 2 mukhi Rudraksha Puja details.', '2 mukhi, Do mukhi', 'Best Quality 2 mukhi Rudraksha at Best Price'),
(76, '2 Mukhi Indonesia - Giant', '<p>2 mukhi</p>', '<p>2 mukhi Rudraksha bead symbolizes Lord Ardhanareshwar, which is a combined form or oneness of Shiva and Shakti. Ardhanareshwar is incarnation of Lord Shiva which is depicted as half Lord Shiva and half Maa Parvati. Two Mukhi Rudraksha bead helps enhance and strengthen relationships. The Two Mukhi Rudraksha bead is also helpful for couples who are looking to conceive. The Two Mukhi Rudraksha bead is a very rare and special Rudraksha bead. Wearing the Two Mukhi Rudraksha bead also helps the wearer attain peace and contentment. Wearing the two mukhi Rudraksha bead helps one attain harmony, peace of mind, cordial relationship and clarity of thoughts.&nbsp;</p><p>When worn 2 Mukhi Rudraksha bestows material fulfilment, emotional stability, uplifts spiritually, making the beads sought after.&nbsp; 2 mukhi Rudraksha symbolizes the divine unification of the mind and soul. In Vedic Astrology, Do mukhi bead is associated with Planet Moon or Chandra Dev, which rules the mind, feelings and emotions of a native. Thus two mukhi helps stabilize wavering mind and emotions. It also assists harmonious relationships and enhances self-acceptance and self-confidence. When worn 2 mukhi Rudraksha bead bestows material fulfilment, emotional stability and uplifts one spiritually.&nbsp; Two mukhi Rudraksha bead is highly recommended to married couples and natives with a weak moon in their natal chart.&nbsp;</p><p><b>Benefits of Two Mukhi Rudraksha Bead:</b></p><ul><li>Two mukhi helps enhance understanding and relationships and teaches unity&nbsp;&nbsp;</li><li>Increase stamina, vitally and sexual prowess&nbsp;&nbsp;</li><li>Enhances benefits of Moon and provides relief from the malefic of Moon&nbsp;</li><li>Enhances creativity, provides happiness and peace of mind</li></ul>', '<p>Size:</p>', 'RB024', 100, 1, 20, 0, 10, 'RB02IG49', '5', '10', '5', 0, '2024-07-19 17:25:22', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Original 2 mukhi Rudraksha bead sourced directly from Indonesia. Wear 2 mukhi to attract Divine blessings of Lord Ardhanareshwar for harmony at home.', '2 mukhi, Do mukhi', '2 Mukhi Rudraksha Bead Giant Size from Indonesia'),
(77, '14 Mukhi Nepal - Small', '<p>14 mukhi</p>', '<p>14 mukhi Rudraksha bead is associated with strength, willpower and determination. The fourteen mukhi Rudraksha bead is ruled by Lord Hanuman, the God of physical and mental strength and power. The wearer of the 14 mukhi Rudraksha bead is blessed with courage, confidence and success. Fourteen Mukhi Rudraksha bead symbolizes Lord Hanuman, the God of power and courage. The Fourteen Mukhi Rudraksha bead is one of the most significant and powerful Rudraksha bead. It is believed that the Fourteen Mukhi Rudraksha bead is the favourite of Lord Shiva Himself. Wearer of the Fourteen Mukhi Rudraksha bead is blessed with courage, passion, fearlessness, confidence and willpower.&nbsp;</p><p>Fourteen mukhi Rudraksha bead is called ‘Devmani’ meaning Gem of Gods in scriptures. The bead is an exceptional bead which helps one to overcome all the odds and attain success and victory. In Vedic Astrology, the 14 mukhi Rudraksha bead is associated with Planet Mars or Mangal Graha. The 14 mukhi blesses the wearer with stability in personal and professional lives.&nbsp;</p><p><b>Benefits of Fourteen Mukhi Rudraksha Bead:</b></p><ul><li>Fourteen mukhi blesses the wearer with power, strength and understanding&nbsp;&nbsp;</li><li>Helps in recovery from any loss or debt or misfortune&nbsp;</li><li>Provides relief from malefic effects of Planet Saturn&nbsp;</li><li>Enhances prosperity and blesses with success</li></ul>', '<p>Size:</p>', 'RB143', 100, 1, 50, 0, 10, 'RB14NS62', '5', '10', '41', 0, '2024-07-19 17:32:02', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Best quality 14 mukhi Rudraksha bead of small size from Nepal. Fourteen mukhi Rudraksha symbolizes Lord Hanuman and is worn for blessings of power.', '14 mukhi', 'Buy 14 mukhi Rudraksha Bead from Nepal Online'),
(78, '14 Mukhi Nepal', '<p>14 mukhi</p>', '<p>14 mukhi Rudraksha bead is associated with strength, willpower and determination. The fourteen mukhi Rudraksha bead is ruled by Lord Hanuman, the God of physical and mental strength and power. The wearer of the 14 mukhi Rudraksha bead is blessed with courage, confidence and success. Fourteen Mukhi Rudraksha bead symbolizes Lord Hanuman, the God of power and courage. The Fourteen Mukhi Rudraksha bead is one of the most significant and powerful Rudraksha bead. It is believed that the Fourteen Mukhi Rudraksha bead is the favourite of Lord Shiva Himself. Wearer of the Fourteen Mukhi Rudraksha bead is blessed with courage, passion, fearlessness, confidence and willpower.&nbsp;</p><p>Fourteen mukhi Rudraksha bead is called ‘Devmani’ meaning Gem of Gods in scriptures. The bead is an exceptional bead which helps one to overcome all the odds and attain success and victory. In Vedic Astrology, the 14 mukhi Rudraksha bead is associated with Planet Mars or Mangal Graha. The 14 mukhi blesses the wearer with stability in personal and professional lives.&nbsp;</p><p><b>Benefits of Fourteen Mukhi Rudraksha Bead:</b></p><ul><li>Fourteen mukhi blesses the wearer with power, strength and understanding&nbsp;&nbsp;</li><li>Helps in recovery from any loss or debt or misfortune&nbsp;</li><li>Provides relief from malefic effects of Planet Saturn&nbsp;</li><li>Enhances prosperity and blesses with success</li></ul>', '<p>Size:</p>', 'RB148', 100, 1, 20, 0, 10, 'RB14NR29', '5', '10', '41', 0, '2024-07-19 17:33:14', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', '12 mukhi Rudraksha bead from Nepal is worn to attract name, fame and power. Buy fourteen mukhi rudraksha online at best prices.', '14 mukhi', 'Original 14 mukhi Rudraksha Bead from Nepal'),
(79, '14 Mukhi Nepal - Big', '<p>14 mukhi</p>', '<p>14 mukhi Rudraksha bead is associated with strength, willpower and determination. The fourteen mukhi Rudraksha bead is ruled by Lord Hanuman, the God of physical and mental strength and power. The wearer of the 14 mukhi Rudraksha bead is blessed with courage, confidence and success. Fourteen Mukhi Rudraksha bead symbolizes Lord Hanuman, the God of power and courage. The Fourteen Mukhi Rudraksha bead is one of the most significant and powerful Rudraksha bead. It is believed that the Fourteen Mukhi Rudraksha bead is the favourite of Lord Shiva Himself. Wearer of the Fourteen Mukhi Rudraksha bead is blessed with courage, passion, fearlessness, confidence and willpower.&nbsp;</p><p>Fourteen mukhi Rudraksha bead is called ‘Devmani’ meaning Gem of Gods in scriptures. The bead is an exceptional bead which helps one to overcome all the odds and attain success and victory. In Vedic Astrology, the 14 mukhi Rudraksha bead is associated with Planet Mars or Mangal Graha. The 14 mukhi blesses the wearer with stability in personal and professional lives.&nbsp;</p><p><b>Benefits of Fourteen Mukhi Rudraksha Bead:</b></p><ul><li>Fourteen mukhi blesses the wearer with power, strength and understanding&nbsp;&nbsp;</li><li>Helps in recovery from any loss or debt or misfortune&nbsp;</li><li>Provides relief from malefic effects of Planet Saturn&nbsp;</li><li>Enhances prosperity and blesses with success</li></ul>', '<p>Size:</p>', 'RB145', 100, 1, 20, 0, 10, 'RB14NB43', '5', '10', '41', 0, '2024-07-19 17:34:34', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Browse 14 mukhi Rudraksha price and other details such as 14 mukhi Rudraksha mantra, 14 mukhi Rudraksha benefits and 14 mukhi Rudraksha Puja details.', '14 mukhi', 'Best Quality 14 mukhi Rudraksha at Best Price'),
(80, '14 Mukhi Nepal - Giant', '<p>14 mukhi</p>', '<p>14 mukhi Rudraksha bead is associated with strength, willpower and determination. The fourteen mukhi Rudraksha bead is ruled by Lord Hanuman, the God of physical and mental strength and power. The wearer of the 14 mukhi Rudraksha bead is blessed with courage, confidence and success. Fourteen Mukhi Rudraksha bead symbolizes Lord Hanuman, the God of power and courage. The Fourteen Mukhi Rudraksha bead is one of the most significant and powerful Rudraksha bead. It is believed that the Fourteen Mukhi Rudraksha bead is the favourite of Lord Shiva Himself. Wearer of the Fourteen Mukhi Rudraksha bead is blessed with courage, passion, fearlessness, confidence and willpower.&nbsp;</p><p>Fourteen mukhi Rudraksha bead is called ‘Devmani’ meaning Gem of Gods in scriptures. The bead is an exceptional bead which helps one to overcome all the odds and attain success and victory. In Vedic Astrology, the 14 mukhi Rudraksha bead is associated with Planet Mars or Mangal Graha. The 14 mukhi blesses the wearer with stability in personal and professional lives.&nbsp;</p><p><b>Benefits of Fourteen Mukhi Rudraksha Bead:</b></p><ul><li>Fourteen mukhi blesses the wearer with power, strength and understanding&nbsp;&nbsp;</li><li>Helps in recovery from any loss or debt or misfortune&nbsp;</li><li>Provides relief from malefic effects of Planet Saturn&nbsp;</li><li>Enhances prosperity and blesses with success</li></ul>', '<p>Size:</p>', 'RB141', 100, 1, 20, 0, 10, 'RB14NG85', '5', '10', '41', 0, '2024-07-19 17:35:38', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Original 14 mukhi Rudraksha bead sourced directly from Nepal. Wear 14 mukhi to attract Divine blessings of Lord Hanuman for power and success.', '14 mukhi', '14 Mukhi Rudraksha Bead Giant Size from Nepal'),
(81, '14 Mukhi Indonesia - Small', '<p>14 mukhi</p>', '<p>14 mukhi Rudraksha bead is associated with strength, willpower and determination. The fourteen mukhi Rudraksha bead is ruled by Lord Hanuman, the God of physical and mental strength and power. The wearer of the 14 mukhi Rudraksha bead is blessed with courage, confidence and success. Fourteen Mukhi Rudraksha bead symbolizes Lord Hanuman, the God of power and courage. The Fourteen Mukhi Rudraksha bead is one of the most significant and powerful Rudraksha bead. It is believed that the Fourteen Mukhi Rudraksha bead is the favourite of Lord Shiva Himself. Wearer of the Fourteen Mukhi Rudraksha bead is blessed with courage, passion, fearlessness, confidence and willpower.&nbsp;</p><p>Fourteen mukhi Rudraksha bead is called ‘Devmani’ meaning Gem of Gods in scriptures. The bead is an exceptional bead which helps one to overcome all the odds and attain success and victory. In Vedic Astrology, the 14 mukhi Rudraksha bead is associated with Planet Mars or Mangal Graha. The 14 mukhi blesses the wearer with stability in personal and professional lives.&nbsp;</p><p><b>Benefits of Fourteen Mukhi Rudraksha Bead:</b></p><ul><li>Fourteen mukhi blesses the wearer with power, strength and understanding&nbsp;&nbsp;</li><li>Helps in recovery from any loss or debt or misfortune&nbsp;</li><li>Provides relief from malefic effects of Planet Saturn&nbsp;</li><li>Enhances prosperity and blesses with success</li></ul>', '<p>Size:</p>', 'RB149', 100, 1, 20, 0, 10, 'RB14IS21', '5', '10', '41', 0, '2024-07-19 17:36:49', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Best quality 14 mukhi Rudraksha bead of small size from Indonesia. Fourteen mukhi Rudraksha symbolizes Lord Hanuman and is worn for blessings of power.', '14 mukhi', 'Buy 14 mukhi Rudraksha Bead from Indonesia Online'),
(82, '14 Mukhi Indonesia', '<p>14 mukhi</p>', '<p>14 mukhi Rudraksha bead is associated with strength, willpower and determination. The fourteen mukhi Rudraksha bead is ruled by Lord Hanuman, the God of physical and mental strength and power. The wearer of the 14 mukhi Rudraksha bead is blessed with courage, confidence and success. Fourteen Mukhi Rudraksha bead symbolizes Lord Hanuman, the God of power and courage. The Fourteen Mukhi Rudraksha bead is one of the most significant and powerful Rudraksha bead. It is believed that the Fourteen Mukhi Rudraksha bead is the favourite of Lord Shiva Himself. Wearer of the Fourteen Mukhi Rudraksha bead is blessed with courage, passion, fearlessness, confidence and willpower.&nbsp;</p><p>Fourteen mukhi Rudraksha bead is called ‘Devmani’ meaning Gem of Gods in scriptures. The bead is an exceptional bead which helps one to overcome all the odds and attain success and victory. In Vedic Astrology, the 14 mukhi Rudraksha bead is associated with Planet Mars or Mangal Graha. The 14 mukhi blesses the wearer with stability in personal and professional lives.&nbsp;</p><p><b>Benefits of Fourteen Mukhi Rudraksha Bead:</b></p><ul><li>Fourteen mukhi blesses the wearer with power, strength and understanding&nbsp;&nbsp;</li><li>Helps in recovery from any loss or debt or misfortune&nbsp;</li><li>Provides relief from malefic effects of Planet Saturn&nbsp;</li><li>Enhances prosperity and blesses with success</li></ul>', '<p>Size:</p>', 'RB142', 100, 1, 20, 0, 10, 'RB14IR78', '5', '10', '41', 0, '2024-07-19 17:37:52', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', '12 mukhi Rudraksha bead from Indonesia is worn to attract name, fame and power. Buy fourteen mukhi rudraksha online at best prices.', '14 mukhi', 'Original 14 mukhi Rudraksha Bead from Indonesia'),
(83, '14 Mukhi Indonesia - Big', '<p>14 mukhi</p>', '<p>14 mukhi Rudraksha bead is associated with strength, willpower and determination. The fourteen mukhi Rudraksha bead is ruled by Lord Hanuman, the God of physical and mental strength and power. The wearer of the 14 mukhi Rudraksha bead is blessed with courage, confidence and success. Fourteen Mukhi Rudraksha bead symbolizes Lord Hanuman, the God of power and courage. The Fourteen Mukhi Rudraksha bead is one of the most significant and powerful Rudraksha bead. It is believed that the Fourteen Mukhi Rudraksha bead is the favourite of Lord Shiva Himself. Wearer of the Fourteen Mukhi Rudraksha bead is blessed with courage, passion, fearlessness, confidence and willpower.&nbsp;</p><p>Fourteen mukhi Rudraksha bead is called ‘Devmani’ meaning Gem of Gods in scriptures. The bead is an exceptional bead which helps one to overcome all the odds and attain success and victory. In Vedic Astrology, the 14 mukhi Rudraksha bead is associated with Planet Mars or Mangal Graha. The 14 mukhi blesses the wearer with stability in personal and professional lives.&nbsp;</p><p><b>Benefits of Fourteen Mukhi Rudraksha Bead:</b></p><ul><li>Fourteen mukhi blesses the wearer with power, strength and understanding&nbsp;&nbsp;</li><li>Helps in recovery from any loss or debt or misfortune&nbsp;</li><li>Provides relief from malefic effects of Planet Saturn&nbsp;</li><li>Enhances prosperity and blesses with success</li></ul>', '<p>Size:</p>', 'RB146', 100, 1, 20, 0, 10, 'RB14IB44', '5', '10', '41', 0, '2024-07-19 17:39:11', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Browse 14 mukhi Rudraksha price and other details such as 14 mukhi Rudraksha mantra, 14 mukhi Rudraksha benefits and 14 mukhi Rudraksha Puja details.', '14 mukhi', 'Best Quality 14 mukhi Rudraksha at Best Price');
INSERT INTO `product_info` (`Product_ID`, `Product_Name`, `Product_Info`, `Product_Description`, `Product_Additional_info`, `Product_Code`, `Product_Price`, `Product_USD`, `Product_Weight`, `Product_Discount`, `Product_Qty`, `Product_SKU`, `Product_Main_Category`, `Product_Sub_Category`, `Product_Sub_Sub_Category`, `Product_Click_Count`, `Product_Added`, `Product_Updated`, `Product_Status`, `Feature`, `Sale_Offer`, `Deals`, `meta_description`, `meta_keyword`, `meta_title`) VALUES
(84, '14 Mukhi Indonesia - Giant', '<p>14 mukhi</p>', '<p>14 mukhi Rudraksha bead is associated with strength, willpower and determination. The fourteen mukhi Rudraksha bead is ruled by Lord Hanuman, the God of physical and mental strength and power. The wearer of the 14 mukhi Rudraksha bead is blessed with courage, confidence and success. Fourteen Mukhi Rudraksha bead symbolizes Lord Hanuman, the God of power and courage. The Fourteen Mukhi Rudraksha bead is one of the most significant and powerful Rudraksha bead. It is believed that the Fourteen Mukhi Rudraksha bead is the favourite of Lord Shiva Himself. Wearer of the Fourteen Mukhi Rudraksha bead is blessed with courage, passion, fearlessness, confidence and willpower.&nbsp;</p><p>Fourteen mukhi Rudraksha bead is called ‘Devmani’ meaning Gem of Gods in scriptures. The bead is an exceptional bead which helps one to overcome all the odds and attain success and victory. In Vedic Astrology, the 14 mukhi Rudraksha bead is associated with Planet Mars or Mangal Graha. The 14 mukhi blesses the wearer with stability in personal and professional lives.&nbsp;</p><p><b>Benefits of Fourteen Mukhi Rudraksha Bead:</b></p><ul><li>Fourteen mukhi blesses the wearer with power, strength and understanding&nbsp;&nbsp;</li><li>Helps in recovery from any loss or debt or misfortune&nbsp;</li><li>Provides relief from malefic effects of Planet Saturn&nbsp;</li><li>Enhances prosperity and blesses with success</li></ul>', '<p>Size:</p>', 'RB144', 100, 1, 20, 0, 10, 'RB14IG32', '5', '10', '41', 0, '2024-07-19 17:40:21', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Original 14 mukhi Rudraksha bead sourced directly from Indonesia. Wear 14 mukhi to attract Divine blessings of Lord Hanuman for power and success.', '14 mukhi', '14 Mukhi Rudraksha Bead Giant Size from Indonesia'),
(85, '15 Mukhi Nepal - Small', '<p>15 mukhi</p>', '<p>15 mukhi Rudraksha bead is associated with fulfilment of innermost desires, release of excessive attachments and spiritual awakening. The fifteen mukhi Rudraksha bead is ruled by Lord Pashupatinath, the Lord of all animals. The wearer of 15 mukhi Rudraksha is blessed with traits of unconditional love and compassion. Fifteen mukhi Rudraksha bead is popular and powerful bead which is associated with mainly good health, protection and relief from ailments and diseases. The 15 mukhi bead helps an individual tide over instabilities, fears and insecurities.</p><p>Fifteen Mukhi Rudraksha bead symbolizes Pashupati Shiva. The Fifteen Mukhi Rudraksha bead is a divine, rare, auspicious and sacred object. The Fifteen Mukhi Rudraksha bead helps individuals in their spiritual journey. The Fifteen Mukhi Rudraksha bead helps in mediation and concentration. The wearer of the Fifteen Mukhi Rudraksha bead attains self-realization by defeating ignorance. The Fifteen Mukhi Rudraksha bead also improves relationships. In Vedic Astrology, the 15 mukhi Rudraksha bead is associated with Planet Mercury or Buddh Graha. Thus the pandrah mukhi bead blesses with healthy relations, good fortune, better and clearer thought process and contentment.&nbsp;</p><p><b>Benefits of Fifteen Mukhi Rudraksha Bead:</b></p><ul><li>Fifteen mukhi enhances intuition and blesses with knowledge and growth</li><li>It also releases and burns all negative karma and ignorance</li><li>Blesses the wearer with positivity&nbsp;</li><li>Enhances benefits and reduces malefic effects of Jupiter in one’s Kundli</li></ul>', '<p>Size:</p>', 'RB153', 100, 1, 20, 0, 10, 'RB15NS52', '5', '10', '42', 0, '2024-07-19 17:45:04', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Best quality 15 mukhi Rudraksha bead of small size from Nepal. Fifteen mukhi Rudraksha symbolizes Lord Pashupatinath and is worn for blessings of good fortune.', '15 mukhi', 'Buy 15 mukhi Rudraksha Bead from Nepal Online'),
(86, '15 Mukhi Nepal', '<p>15 mukhi</p>', '<p>15 mukhi Rudraksha bead is associated with fulfilment of innermost desires, release of excessive attachments and spiritual awakening. The fifteen mukhi Rudraksha bead is ruled by Lord Pashupatinath, the Lord of all animals. The wearer of 15 mukhi Rudraksha is blessed with traits of unconditional love and compassion. Fifteen mukhi Rudraksha bead is popular and powerful bead which is associated with mainly good health, protection and relief from ailments and diseases. The 15 mukhi bead helps an individual tide over instabilities, fears and insecurities.</p><p>Fifteen Mukhi Rudraksha bead symbolizes Pashupati Shiva. The Fifteen Mukhi Rudraksha bead is a divine, rare, auspicious and sacred object. The Fifteen Mukhi Rudraksha bead helps individuals in their spiritual journey. The Fifteen Mukhi Rudraksha bead helps in mediation and concentration. The wearer of the Fifteen Mukhi Rudraksha bead attains self-realization by defeating ignorance. The Fifteen Mukhi Rudraksha bead also improves relationships. In Vedic Astrology, the 15 mukhi Rudraksha bead is associated with Planet Mercury or Buddh Graha. Thus the pandrah mukhi bead blesses with healthy relations, good fortune, better and clearer thought process and contentment.&nbsp;</p><p><b>Benefits of Fifteen Mukhi Rudraksha Bead:</b></p><ul><li>Fifteen mukhi enhances intuition and blesses with knowledge and growth</li><li>It also releases and burns all negative karma and ignorance</li><li>Blesses the wearer with positivity&nbsp;</li><li>Enhances benefits and reduces malefic effects of Jupiter in one’s Kundli</li></ul>', '<p>Size:</p>', 'RB158', 100, 1, 20, 0, 10, 'RB15NR49', '5', '10', '42', 0, '2024-07-19 17:46:15', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', '15 mukhi Rudraksha bead from Nepal is worn to attract health, wealth and happiness. Buy fifteen mukhi rudraksha online at best prices.', '15 mukhi', 'Original 15 mukhi Rudraksha Bead from Nepal'),
(87, '15 Mukhi Nepal - Big', '<p>15 mukhi</p>', '<p>15 mukhi Rudraksha bead is associated with fulfilment of innermost desires, release of excessive attachments and spiritual awakening. The fifteen mukhi Rudraksha bead is ruled by Lord Pashupatinath, the Lord of all animals. The wearer of 15 mukhi Rudraksha is blessed with traits of unconditional love and compassion. Fifteen mukhi Rudraksha bead is popular and powerful bead which is associated with mainly good health, protection and relief from ailments and diseases. The 15 mukhi bead helps an individual tide over instabilities, fears and insecurities.</p><p>Fifteen Mukhi Rudraksha bead symbolizes Pashupati Shiva. The Fifteen Mukhi Rudraksha bead is a divine, rare, auspicious and sacred object. The Fifteen Mukhi Rudraksha bead helps individuals in their spiritual journey. The Fifteen Mukhi Rudraksha bead helps in mediation and concentration. The wearer of the Fifteen Mukhi Rudraksha bead attains self-realization by defeating ignorance. The Fifteen Mukhi Rudraksha bead also improves relationships. In Vedic Astrology, the 15 mukhi Rudraksha bead is associated with Planet Mercury or Buddh Graha. Thus the pandrah mukhi bead blesses with healthy relations, good fortune, better and clearer thought process and contentment. </p><p><b>Benefits of Fifteen Mukhi Rudraksha Bead:</b></p><ul><li>Fifteen mukhi enhances intuition and blesses with knowledge and growth</li><li>It also releases and burns all negative karma and ignorance</li><li>Blesses the wearer with positivity </li><li>Enhances benefits and reduces malefic effects of Jupiter in one’s Kundli</li></ul>', '<p>Size:</p>', 'RB155', 100, 1, 50, 0, 10, 'RB15NB93', '5', '10', '42', 0, '2024-07-19 17:47:36', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Browse 15 mukhi Rudraksha price and other details such as 15 mukhi Rudraksha mantra, 15 mukhi Rudraksha benefits and 15 mukhi Rudraksha Puja details.', '15 mukhi', 'Best Quality 15 mukhi Rudraksha at Best Price'),
(88, '15 Mukhi Nepal - Giant', '<p>15 mukhi</p>', '<p>15 mukhi Rudraksha bead is associated with fulfilment of innermost desires, release of excessive attachments and spiritual awakening. The fifteen mukhi Rudraksha bead is ruled by Lord Pashupatinath, the Lord of all animals. The wearer of 15 mukhi Rudraksha is blessed with traits of unconditional love and compassion. Fifteen mukhi Rudraksha bead is popular and powerful bead which is associated with mainly good health, protection and relief from ailments and diseases. The 15 mukhi bead helps an individual tide over instabilities, fears and insecurities.</p><p>Fifteen Mukhi Rudraksha bead symbolizes Pashupati Shiva. The Fifteen Mukhi Rudraksha bead is a divine, rare, auspicious and sacred object. The Fifteen Mukhi Rudraksha bead helps individuals in their spiritual journey. The Fifteen Mukhi Rudraksha bead helps in mediation and concentration. The wearer of the Fifteen Mukhi Rudraksha bead attains self-realization by defeating ignorance. The Fifteen Mukhi Rudraksha bead also improves relationships. In Vedic Astrology, the 15 mukhi Rudraksha bead is associated with Planet Mercury or Buddh Graha. Thus the pandrah mukhi bead blesses with healthy relations, good fortune, better and clearer thought process and contentment.&nbsp;</p><p><b>Benefits of Fifteen Mukhi Rudraksha Bead:</b></p><ul><li>Fifteen mukhi enhances intuition and blesses with knowledge and growth</li><li>It also releases and burns all negative karma and ignorance</li><li>Blesses the wearer with positivity&nbsp;</li><li>Enhances benefits and reduces malefic effects of Jupiter in one’s Kundli</li></ul>', '<p>Size:</p>', 'RB151', 100, 1, 20, 0, 10, 'RB15NG35', '5', '10', '42', 0, '2024-07-19 17:48:38', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Original 15 mukhi Rudraksha bead sourced directly from Nepal. Wear 15 mukhi to attract Divine blessings of Lord Pashupatinath for prosperity and success.', '15 mukhi', '15 Mukhi Rudraksha Bead Giant Size from Nepal'),
(89, '15 Mukhi Indonesia - Small', '<p>15 mukhi</p>', '<p>15 mukhi Rudraksha bead is associated with fulfilment of innermost desires, release of excessive attachments and spiritual awakening. The fifteen mukhi Rudraksha bead is ruled by Lord Pashupatinath, the Lord of all animals. The wearer of 15 mukhi Rudraksha is blessed with traits of unconditional love and compassion. Fifteen mukhi Rudraksha bead is popular and powerful bead which is associated with mainly good health, protection and relief from ailments and diseases. The 15 mukhi bead helps an individual tide over instabilities, fears and insecurities.</p><p>Fifteen Mukhi Rudraksha bead symbolizes Pashupati Shiva. The Fifteen Mukhi Rudraksha bead is a divine, rare, auspicious and sacred object. The Fifteen Mukhi Rudraksha bead helps individuals in their spiritual journey. The Fifteen Mukhi Rudraksha bead helps in mediation and concentration. The wearer of the Fifteen Mukhi Rudraksha bead attains self-realization by defeating ignorance. The Fifteen Mukhi Rudraksha bead also improves relationships. In Vedic Astrology, the 15 mukhi Rudraksha bead is associated with Planet Mercury or Buddh Graha. Thus the pandrah mukhi bead blesses with healthy relations, good fortune, better and clearer thought process and contentment.&nbsp;</p><p><b>Benefits of Fifteen Mukhi Rudraksha Bead:</b></p><ul><li>Fifteen mukhi enhances intuition and blesses with knowledge and growth</li><li>It also releases and burns all negative karma and ignorance</li><li>Blesses the wearer with positivity&nbsp;</li><li>Enhances benefits and reduces malefic effects of Jupiter in one’s Kundli</li></ul>', '<p>Size:</p>', 'RB159', 100, 1, 20, 0, 10, 'RB15IS31', '5', '10', '42', 0, '2024-07-19 17:49:40', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Best quality 15 mukhi Rudraksha bead of small size from Indonesia. Fifteen mukhi Rudraksha symbolizes Lord Pashupatinath and is worn for blessings of good fortune.', '15 mukhi', 'Buy 15 mukhi Rudraksha Bead from Indonesia Online'),
(90, '15 Mukhi Indonesia', '<p>15 mukhi</p>', '<p>15 mukhi Rudraksha bead is associated with fulfilment of innermost desires, release of excessive attachments and spiritual awakening. The fifteen mukhi Rudraksha bead is ruled by Lord Pashupatinath, the Lord of all animals. The wearer of 15 mukhi Rudraksha is blessed with traits of unconditional love and compassion. Fifteen mukhi Rudraksha bead is popular and powerful bead which is associated with mainly good health, protection and relief from ailments and diseases. The 15 mukhi bead helps an individual tide over instabilities, fears and insecurities.</p><p>Fifteen Mukhi Rudraksha bead symbolizes Pashupati Shiva. The Fifteen Mukhi Rudraksha bead is a divine, rare, auspicious and sacred object. The Fifteen Mukhi Rudraksha bead helps individuals in their spiritual journey. The Fifteen Mukhi Rudraksha bead helps in mediation and concentration. The wearer of the Fifteen Mukhi Rudraksha bead attains self-realization by defeating ignorance. The Fifteen Mukhi Rudraksha bead also improves relationships. In Vedic Astrology, the 15 mukhi Rudraksha bead is associated with Planet Mercury or Buddh Graha. Thus the pandrah mukhi bead blesses with healthy relations, good fortune, better and clearer thought process and contentment.&nbsp;</p><p><b>Benefits of Fifteen Mukhi Rudraksha Bead:</b></p><ul><li>Fifteen mukhi enhances intuition and blesses with knowledge and growth</li><li>It also releases and burns all negative karma and ignorance</li><li>Blesses the wearer with positivity&nbsp;</li><li>Enhances benefits and reduces malefic effects of Jupiter in one’s Kundli</li></ul>', '<p>Size:</p>', 'RB152', 100, 1, 20, 0, 10, 'RB15IR98', '5', '10', '42', 0, '2024-07-19 17:51:02', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', '15 mukhi Rudraksha bead from Indonesia is worn to attract health, wealth and happiness. Buy fifteen mukhi rudraksha online at best prices.', '15 mukhi', 'Original 15 mukhi Rudraksha Bead from Indonesia'),
(91, '15 Mukhi Indonesia - Big', '<p>15 mukhi</p>', '<p>15 mukhi Rudraksha bead is associated with fulfilment of innermost desires, release of excessive attachments and spiritual awakening. The fifteen mukhi Rudraksha bead is ruled by Lord Pashupatinath, the Lord of all animals. The wearer of 15 mukhi Rudraksha is blessed with traits of unconditional love and compassion. Fifteen mukhi Rudraksha bead is popular and powerful bead which is associated with mainly good health, protection and relief from ailments and diseases. The 15 mukhi bead helps an individual tide over instabilities, fears and insecurities.</p><p>Fifteen Mukhi Rudraksha bead symbolizes Pashupati Shiva. The Fifteen Mukhi Rudraksha bead is a divine, rare, auspicious and sacred object. The Fifteen Mukhi Rudraksha bead helps individuals in their spiritual journey. The Fifteen Mukhi Rudraksha bead helps in mediation and concentration. The wearer of the Fifteen Mukhi Rudraksha bead attains self-realization by defeating ignorance. The Fifteen Mukhi Rudraksha bead also improves relationships. In Vedic Astrology, the 15 mukhi Rudraksha bead is associated with Planet Mercury or Buddh Graha. Thus the pandrah mukhi bead blesses with healthy relations, good fortune, better and clearer thought process and contentment.&nbsp;</p><p><b>Benefits of Fifteen Mukhi Rudraksha Bead:</b></p><ul><li>Fifteen mukhi enhances intuition and blesses with knowledge and growth</li><li>It also releases and burns all negative karma and ignorance</li><li>Blesses the wearer with positivity&nbsp;</li><li>Enhances benefits and reduces malefic effects of Jupiter in one’s Kundli</li></ul>', '<p>Size:</p>', 'RB156', 100, 1, 20, 0, 10, 'RB15IB14', '5', '10', '42', 0, '2024-07-19 17:52:03', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Browse 15 mukhi Rudraksha price and other details such as 15 mukhi Rudraksha mantra, 15 mukhi Rudraksha benefits and 15 mukhi Rudraksha Puja details.', '15 mukhi', 'Best Quality 15 mukhi Rudraksha at Best Price'),
(92, '15 Mukhi Indonesia - Giant', '<p>15 mukhi</p>', '<p>15 mukhi Rudraksha bead is associated with fulfilment of innermost desires, release of excessive attachments and spiritual awakening. The fifteen mukhi Rudraksha bead is ruled by Lord Pashupatinath, the Lord of all animals. The wearer of 15 mukhi Rudraksha is blessed with traits of unconditional love and compassion. Fifteen mukhi Rudraksha bead is popular and powerful bead which is associated with mainly good health, protection and relief from ailments and diseases. The 15 mukhi bead helps an individual tide over instabilities, fears and insecurities.</p><p>Fifteen Mukhi Rudraksha bead symbolizes Pashupati Shiva. The Fifteen Mukhi Rudraksha bead is a divine, rare, auspicious and sacred object. The Fifteen Mukhi Rudraksha bead helps individuals in their spiritual journey. The Fifteen Mukhi Rudraksha bead helps in mediation and concentration. The wearer of the Fifteen Mukhi Rudraksha bead attains self-realization by defeating ignorance. The Fifteen Mukhi Rudraksha bead also improves relationships. In Vedic Astrology, the 15 mukhi Rudraksha bead is associated with Planet Mercury or Buddh Graha. Thus the pandrah mukhi bead blesses with healthy relations, good fortune, better and clearer thought process and contentment.&nbsp;</p><p><b>Benefits of Fifteen Mukhi Rudraksha Bead:</b></p><ul><li>Fifteen mukhi enhances intuition and blesses with knowledge and growth</li><li>It also releases and burns all negative karma and ignorance</li><li>Blesses the wearer with positivity&nbsp;</li><li>Enhances benefits and reduces malefic effects of Jupiter in one’s Kundli</li></ul>', '<p>Size:</p>', 'RB154', 100, 1, 20, 0, 10, 'RB15IG22', '5', '10', '42', 0, '2024-07-19 17:53:22', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Original 15 mukhi Rudraksha bead sourced directly from Indonesia. Wear 15 mukhi to attract Divine blessings of Lord Pashupatinath for prosperity and success.', '15 mukhi', '15 Mukhi Rudraksha Bead Giant Size from Indonesia'),
(94, 'Shri Krishna Puja, Mantra Jaap and Yagna', '<p><b>No. of Pundits:</b> 4<br><b>No. of Days: </b>1</p>', '<p>Lord Krishna is regarded as the eighth avatar or incarnation of Lord Vishnu, who took incarnation in the Dwapara Yuga to vanquish Kansa, establish Dharma and bestow to the mankind the Srimad Bhagavad Gita. One of the most popular Deities in Dharma, Lord Krishna is revered and loved by one and all. For His devotees He is Para-Brahman or the Supreme Truth. Lord Krishna taught mankind how to live our lives to the fullest and yet follow the righteous path of Dharma. He gave mankind Srimad Bhagwad Gita which is truly the essence of the Vedas. Lord Krishna is worshiped for good health, wealth, success and prosperity and also for peace of mind, cordial relationships and spiritual upliftment.</p><p>Krishna Puja and Yajna is done to worship and to seek Divine blessings of Lord Krishna. Worshipping Lord Krishna blesses one with peace of mind, spiritual growth, prosperity and success. It helps one gain self-awareness, mental clarity, emotional stability and helps attract good fortune and auspiciousness. It is believed that in the Kali Yug, even chanting just the name of Lord Krishna is meritorious. In the Srimad Bhagwad Gita, Lord Krishna revealed to Arjuna the answers to all question and doubts that a human may have regarding life, the universe and God Himself. He also revealed His Vishvarupa showing Arjuna that He is from whom all creation originates. Devotees worship Lord Krishna for materialistic comforts and success in life and after death liberation from the cycle of birth and death.</p><p><b>Lord Krishna Mantra:&nbsp; </b>||&nbsp;<i>Om Namo Bhagavate Vasudevaya</i> ||&nbsp;</p><p><b>Benefits of Shri Krishna Puja, Mantra Jaap and Yagna</b></p><ul><li>Blessings of good health, prosperity, protection and success</li><li>For peace of mind, relief from stress, happiness&nbsp;</li><li>Growth in professional and personal life&nbsp;</li><li>Blessings of self-confidence and charisma&nbsp;</li><li>Cordial relationships and harmony in family&nbsp;</li><li>Divine blessing and grace of Lord Krishna for spiritual augmentation</li></ul><p><br></p><p><span style=\"font-weight: bolder;\">Shri Krishna Puja, Mantra Jaap and Yagna Vidhi | Puja Procedure</span></p>Kalash Sthapana<br>\r\nSwasti Vachan<br>\r\nGanesh Smaran<br>\r\nPanchang Sthapana (Gauri Ganesh, Punyavachan, Shodash Matrika, Navgraha, Sarvotabhadra)<br>\r\n64 yogini Pujan<br>\r\nShetrapal Pujan<br>\r\nSankalp<br>\r\nNavgraha Pujan<br>\r\nInvocation of all Deities<br>\r\nxx Shodashopachara Puja<br>\r\nYantra Pujan<br>\r\nMantra Jaap<br>\r\nStotra Recitation<br>\r\nDhyana<br>\r\nHavan<br>\r\nAarti<br>\r\nPushpanjali<p><span style=\"font-weight: bolder;\"><br></span></p><p><b style=\"font-size: 1rem;\">RamaKrsna Online Puja Services Highlights:</b><br></p><ul><li>All Pujas and Yagnas are complete with all required Vedic rituals&nbsp;</li><li>Conducted by Team of Experienced Karamkandi Pundit(s)</li><li>Pujas scheduled at appropriate auspicious Muhurat&nbsp;&nbsp;</li><li>All Pujas are conducted on an individual’s name (family members names may be included). Please mention the birth details (name, date, place, time, gotra) and Sankalp (wish) of all individuals during checkout</li><li>Puja Tokri containing Dry Fruit Puja Prasad, an Energized Rudraksha Bead, Yantra, Bhasma (Vibhuti), Roli and Akshat (energized during your Puja) will be sent to you after successful completion of your Puja&nbsp;</li><li>Puja Video (of up to 30 minutes) containing essence of the Puja i.e. Sankalp, Puja, Mantra Japa and Homa and Puja photographs will be sent to you after successful completion of your Puja</li><li>You can connect with Punditji on WhatsApp video call and take the Sankalp personally</li><li>You may watch Live Streaming of the entire Puja by paying a nominal additional charge</li></ul><p><br></p><p><a href=\"#\" target=\"_blank\">Disclaimer</a></p><p><br></p>', '', 'PS427', 9001, 108, 500, 0, 100, 'PSKP8462', '7', '17', '82', 0, '2024-08-09 09:31:26', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Book Krishna Puja, Mantra Jaap, Yagna Online and seek Divine blessings of Lord Krishna for of good health, wealth, protection, prosperity and success.', 'Krishna Puja', 'Krishna Puja, Mantra Jaap, Yagna Online for Divine Blessings'),
(95, 'Ardhnarishwar Puja', '<p>4 Pundits, 1 Day</p>', '<p>Ardhnarishwar is a combination of 3 words ‘Ardha’, ‘Nari’ and ‘Ishwara’. The name means Lord who is half female.&nbsp; Lord Ardhnarishwar, is a Deity which is a union of Lord Shiva and Goddess Shakti. Ardhnarishvara represents the combined and inseparable masculine and feminine energies of the Universe which is responsible for all creation of the Universe. The left half of Ardhnarishwar represents Goddess Parvati / Shakti, while the right half represents Lord Shiva. The Ardhanareeshvara symbolizes the force of creation and constructiveness. It illustrates how opposites are one in the cosmos. Worshipping Ardhnarishwar is considered as the ultimate offering because it symbolizes both the energies (male and female) of the supreme power. Lord Ardhnarishvara is primary worshipped for blessings of cordial and harmonious relationship between couples and also for harmony at home and to find ideal life partner.&nbsp;</p><p><br></p><p>Devotees perform Ardhnarishwar puja also to attract prosperity and success in life. Married couples do this puja to bring love and happiness in their relationship. Worshiping Ardhnarishwar helps in overcoming financial issues and obstacles in life. Conducting the Ardhnarishwar Puja on Mondays and during Shravan Maas is considered highly beneficial and meritorious. Devotees may achieve material prosperity and mental peace by doing this puja. Ardhnarishwar Puja helps in attaining spiritual augmentation and contentment and satisfaction in one’s life. The puja is also performed to get protection against evil and negative energies. The Puja helps burn malefic effects of negative past life and present life Karmas. Issues in relationship, problems with spouse or family can be resolved with the blessings of Lord Shiva and Goddess Shakti by devotees performing the Ardhnarishwar Puja.</p><p><br></p><p>Ardhnarishwar Mantra</p><p><br></p><p>|| Om Ardhnarishwar Namah ||</p>', '<p>test</p>', 'PS215', 9001, 108, 500, 0, 100, 'PSAP7618', '7', '17', '92', 0, '2024-08-16 11:22:24', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Book Ardhnarishwar Puja Online for Divine Blessings', 'Ardhnarishwar Puja', 'Book Ardhnarishwar Puja Online for Divine Blessings'),
(96, 'Surya Dev Shanti Puja', '<p>No. of Pundits:</p><p>No of Days:&nbsp;</p>', '<p>Surya Shanti Puja, also known as Surya Dosh Nivaran Puja is conducted to nullify the malefic effects of a weakly placed Planet Surya (Sun) in the Kundli. It is also conducted when a native is undergoing Mahadasha or Antardasha of Planet Surya. A weakly placed Surya causes loss of influence and power, legal issues and threat from enemies or competition. On the other hand a strongly placed Surya blesses one with power, position, happiness and increase in income and wealth. Surya Dev is regarded as the most powerful planet of the Navgraha. It is primarily associated with power, authority, vitality and leadership. Planet Surya blesses devotees with confidence, courage, discipline, reputation and leadership traits. On the other hand when Planet Sun occupies unsuitable houses in conjunction with other Planets it also decreases benefits of other beneficial Planets.&nbsp;</p><p><br></p><p>Surya Shanti Puja helps nullify the malefic effects of Planet Sun and enhance its positive effects in an individual’s Birth Chart (Horoscope). During the Puja Surya Dev is invoked and worshiped and its Divine blessings are sought for health, prosperity and success. The Sun is the primarily source of energy for all living beings on the Planet, it is said that all life on earth is solar-powered. No Planet has a profound impact on a native’s life as the Sun. A strongly placed Surya Dev in the natal chart is closely associated with robust health, vigor and a dynamic personality. Surya Dev is also associated with authority, power and leadership. A strong Sun in the natal chart ensures power and influence, confidence and correct decision-making abilities and ability to take control and charge on situations. Thus Divine blessings of Surya Dev ensure success in both professional and personal fronts.</p>', '<p>FAQ</p>', 'PY166', 9001, 108, 500, 0, 100, 'PSSP1673', '7', '18', '', 0, '2024-08-23 06:07:04', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Surya Dosh Nivaran Puja Online of Surya Dev Shanti Puja is done to appease and worship Lord Surya Dev to seek Divine blessings of power, confidence and success.', 'Surya Shanti Puja, Surya Dosh Nivaran Puja Online', 'Book Surya Dev Shanti Puja or Surya Dosh Nivaran Puja Online'),
(97, 'Shani Dev Shanti Puja', '<p>No. of Pundits:</p><p>No. of Days:&nbsp;</p>', '<p>Shani Shanti Puja, also known as Shani Dosh Nivaran Puja is conducted to nullify the malefic effects of a weakly placed Planet Shani (Saturn) in the Kundli. It is also conducted when a native is undergoing Mahadasha or Antardasha or Sade Sati of Planet Shani Dev. A weakly placed Surya causes losses, misfortunes, failures and miseries. On the other hand a strongly placed Shani dev blesses one with success, status, stability, prosperity and relief from problems. Shani Dev is regarded as one of the most influential planet of the Navgraha. It is primarily associated with disciple, duty, responsibility, karma teachings and kasht nivaran. Planet Saturn blesses devotees with good health, status in society, growth and success, cordial relationships, relief from problems and issues.&nbsp;</p><p><br></p><p>Shani Shanti Puja helps nullify the malefic effects of Planet Shani and enhance its positive effects in an individual’s Birth Chart (Horoscope). During the Puja Shani Dev is invoked and worshiped and its Divine blessings are sought for good health, wealth, protection and prosperity. Planet Saturn is the slowest moving Planets, so in Vedic Astrology its impact, be it positive or negative on a native is intense and over a longer duration of time. A strongly placed Shani Dev in the natal chart is closely associated with long-term success, stability, prosperity and maturity. Shani Dev is also associated with hard work, karma and teachings. A strong Shani in the natal chart ensures growth and progress. On the other hand a malefic Saturn causes challenges and delays, turmoil in relationships and professional life and also health challenges. Thus Divine blessings of Surya Dev ensure kasht nivaran in both professional and personal fronts.&nbsp;</p><p><br></p><p>Shani Mantra: || Om Aing Hring Shring Shanaishchray Namah ||</p>', '<p>FAQ</p>', 'PY713', 9001, 108, 500, 0, 100, 'PSSP2376', '7', '18', '', 0, '2024-08-23 06:12:16', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Shani Dosh Nivaran Puja Online of Shani Dev Shanti Puja is done to appease and worship Lord Shani Dev to seek Divine blessings for relief from problems and issues.', 'Shani Shanti Puja, Shani Dosh Nivaran Puja Online', 'Book Shani Dev Shanti Puja or Shani Dosh Nivaran Puja Online'),
(98, 'Rahu Dev Shanti Puja', '<p>No. of Pundits:</p><p>No. of Days:&nbsp;</p>', '<p>Rahu Shanti Puja, also known as Rahu Dosh Nivaran Puja is conducted to nullify the malefic effects of a weakly placed Planet Rahu (North Node) in the Kundli. It is also conducted when a native is undergoing Mahadasha or Antardasha of Planet Rahu. A weakly placed Rahu causes sudden losses, mental stress, obstacles and hurdles, loss of reputation, delays and failures. On the other hand a strongly placed Rahu dev blesses one with sudden profits and gains, success, stability and mental clarity. In the Kali Yug, Rahu Dev is regarded as one of the most influential planet of the Navgraha. It is primarily associated with maya or materialistic pursuits, ambition, illusion and mental prowess. Planet Rahu blesses devotees with financial gains, innovative thinking, mental clarity, superior decision making skills and success.&nbsp;&nbsp;</p><p><br></p><p>Rahu Shanti Puja helps nullify the malefic effects of Planet Rahu and enhance its positive effects in an individual’s Birth Chart (Horoscope). During the Puja Rahu Dev is invoked and worshiped and its Divine blessings are sought for growth, success, prosperity and peace of mind. Rahu Dev is a malefic shadow Planet that is associated with both material and spiritual pursuits. A strongly placed Rahu Dev in the natal chart is closely associated with prosperity, wealth, growth and status in society. On the other hand, a malefic Rahu causes unexpected financial losses, mental stress and confusion and also loss of reputation. A weakly placed Rahu in the natal chart also decreases beneficial effects of other beneficial Planets.</p><p>&nbsp;</p><p>&nbsp;</p><p><br></p><p>Rahu Mantra: || Om Aing Hring Rahave Namah ||</p>', '<p>FAQ</p>', 'PS452', 9001, 108, 500, 0, 100, 'PSRP2314', '7', '18', '', 0, '2024-08-23 06:16:33', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Rahu Dosh Nivaran Puja Online or Rahu Dev Shanti Puja is done to appease and worship Lord Rahu Dev to seek Divine blessings for material and spiritual gains.', 'Rahu Shanti Puja, Rahu Dosh Nivaran Puja Online', 'Book Rahu Dev Shanti Puja or Rahu Dosh Nivaran Puja Online'),
(99, 'Brihaspati Dev Shanti Puja', '<p>No. of Pundits:</p><p>No. of Days:&nbsp;</p>', '<p>Guru (Brihaspati) Shanti Puja, also known as Guru Dosh Nivaran Puja is conducted to nullify the malefic effects of a weakly placed Planet Guru (Jupiter) in the Kundli. It is also conducted when a native is undergoing Mahadasha or Antardasha of Planet Guru. A weakly placed Guru causes relationship issues, lack of intellect and wisdom, eluding success and native moving towards wrong path in life. On the other hand a strongly placed Guru Dev blesses one with knowledge, intellect, wisdom, prosperity and success. Planet Guru is the second largest planet of the Navgraha. It is big and also slow moving and thus has a significant impact on a native’s life. It is primarily associated with wisdom, growth, learning, good fortune and prosperity. Planet Guru blesses devotees with intellectual growth, spiritual growth, knowledge, generosity and prosperity.&nbsp;</p><p><br></p><p>Guru Shanti Puja helps nullify the malefic effects of Planet Rahu and enhance its positive effects in an individual’s Birth Chart (Horoscope). During the Puja Planet Guru is invoked and worshiped and its Divine blessings are sought for wisdom, knowledge, growth and prosperity. Planet Jupiter is regarded as a teacher among the Navgraha. It impacts mostly all aspects of a native’s life. A strongly placed Planet Guru in the natal chart is closely associated with higher learning, spiritual growth, prosperity and knowledge. On the other hand a malefic Guru causes weak mental prowess and academics, mental clutter, stress and lack of understanding. A weakly placed Guru in the natal chart also decreases beneficial effects of other beneficial Planets.</p><p><br></p><p><br></p><p><br></p><p>Brihaspati Mantra: || Om Hring Cling hung Brihsptye Namah ||</p>', '<p>FAQ</p>', 'PS731', 9001, 108, 500, 0, 100, 'PSGP2852', '7', '18', '', 0, '2024-08-23 06:18:46', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Brihaspati Dosh Nivaran Puja Online or Guru Dev Shanti Puja is done to appease and worship Lord Brihaspati Dev to seek Divine blessings for wisdom, intellect and knowledge.', 'Brihaspati Shanti Puja, Brihaspati Dosh Nivaran Puja Online', 'Book Brihaspati Dev Shanti Puja or Brihaspati Dosh Nivaran Puja Online'),
(100, 'Mangal Dev Shanti Puja', '<p>No. of Pundits:</p><p>No. of Days:&nbsp;</p>', '<p>Mangal Shanti Puja, also known as Mangal Dosh Nivaran Puja is conducted to nullify the malefic effects of a weakly placed Planet Mangal (Mars) in the Kundli. It is also conducted when a native is undergoing Mahadasha or Antardasha of Planet Mangal. A weakly placed Planet Mangal causes misfortune, losses and relationship issues with friends and family. On the other hand a strongly placed Mangal Dev blesses one with confidence, power, position, assets, wealth, property, success, clarity of thoughts and victory. Planet Mars is associated with anger and rage, a malefic Mars has significant impact on marriage and married life of a native. It is also primarily associated with vigour, courage, aggression and victory. Planet Mars is a warrior Planet that blesses devotees with power, victory, strength and growth.&nbsp;</p><p><br></p><p>Mangal Shanti Puja helps nullify the malefic effects of Planet Mangal and enhance its positive effects in an individual’s Birth Chart (Horoscope). During the Puja Planet Mangal is invoked and worshiped and its Divine blessings are sought for courage, confidence, power, growth and victory. A strongly placed Planet Mangal in the natal chart is closely associated with ability to overcome obstacles, achieve success, pursue goals with vigour, and asserts oneself effectively. On the other hand a malefic Mangal causes obstacle and hurdles in path of success, lacklustre dynamism and personality, anger issues and mental stress and agony. A weakly placed Mangal Dev in the natal chart also decreases beneficial effects of other beneficial Planets.</p><p><br></p><p>Mangal Mantra: || Om Hung Shring Bhaumay Namah ||</p>', '<p>FAQs</p>', 'PS253', 9001, 108, 500, 0, 100, 'PSMP2036', '7', '18', '', 0, '2024-08-23 06:21:43', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Mangal Dosh Nivaran Puja Online or Mangal Dev Shanti Puja is done to appease and worship Lord Mangal Dev to seek Divine blessings of growth, victory, strength and confidence.', 'Mangal Shanti Puja, Mangal Dosh Nivaran Puja Online', 'Book Mangal Dev Shanti Puja or Mangal Dosh Nivaran Puja Online'),
(101, 'Chandra Dev Shanti Puja', '<p>No. of Pundits: </p><p>No. of Days: </p>', '<p>Chandra Shanti Puja, also known as Chandra Dosh Nivaran Puja is conducted to nullify the malefic effects of a weakly placed Planet Chandra Dev (Moon) in the Kundli. It is also conducted when a native is undergoing Mahadasha or Antardasha of Planet Moon. A weakly placed Planet Chandra causes emotional turmoil, mental stress and agony, anger issues, mental clutter and confusion, bad decision making and relationship issues. On the other hand a strongly placed Chandra Dev blesses one with mental and emotional stability, creativity, emotional balance and wellbeing, peace of mind and healthy, harmonious and cordial relationships. Planet Moon primarily governs the mind, emotions and intuition in an individual. It is associated with anger, calmness, communication and peace of mind. It is also associated with good mental and physical health, sound sleep, love and care for others.  </p><p><br></p><p>Chandra Shanti Puja helps nullify the malefic effects of Planet Chandra and enhance its positive effects in an individual’s Birth Chart (Horoscope). During the Puja Planet Chandra is invoked and worshiped and its Divine blessings are sought for good health, growth, peace of mind, emotional wellbeing and success. A strongly placed Planet Chandra in the natal chart is closely associated with emotional stability, happiness, mental clarity, cordial relationships and materialistic comforts and growth. On the other hand a malefic Moon causes mental stress, unhappiness, lack of energy, issues in relationships, obstacles and hurdles and loss of reputation and wealth. A weakly placed Chandra Dev in the natal chart also decreases beneficial effects of other beneficial Planets.</p><p><br></p><p><br></p><p><br></p><p>Chandra Mantra: || Om Aing Kling Somay Namah ||</p>', '<p>FAQ</p>', 'PS223', 9001, 108, 500, 0, 100, 'PSCP4512', '7', '18', '', 0, '2024-08-23 06:24:06', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Chandra Dosh Nivaran Puja Online or Chandra Dev Shanti Puja is done to appease and worship Lord Chandra Dev to seek Divine blessings of peace of mind and emotional wellbeing.', 'Chandra Shanti Puja, Chandra Dosh Nivaran Puja Online', 'Book Chandra Dev Shanti Puja or Chandra Dosh Nivaran Puja Online'),
(102, 'Ketu Dev Shanti Puja', '<p>No. of Pundits:</p><p>No. of Days: </p>', '<p>Ketu Shanti Puja, also known as Ketu Dosh Nivaran Puja is conducted to nullify the malefic effects of a weakly placed Planet Ketu Dev (South Node) in the Kundli. It is also conducted when a native is undergoing Mahadasha or Antardasha of Planet Ketu. A weakly placed Planet Ketu causes hurdles, obstacles and roadblocks in success, mental stress and indecisiveness. On the other hand a strongly placed Ketu blesses with clarity of thoughts, success, comfort, favorable results and spiritual inclination in the native. Ketu is a malefic Planet in general and a weakly placed Ketu also decreases benefits of other beneficial Planets. Planet Ketu primarily is associated with spiritual knowledge, detachment and higher wisdom. It is also associated with sudden gains, sudden losses, transformation and change, enhanced mental clarity and intuition.   </p><p><br></p><p>Ketu Shanti Puja helps nullify the malefic effects of Planet Ketu and enhance its positive effects in an individual’s Birth Chart (Horoscope). During the Puja Planet Ketu is invoked and worshiped and its Divine blessings are sought for spiritual and material progress, removal of hurdles and obstacles from the path of success, peace of mind and mental clarity, enhanced decision making skills and increased wisdom and intellect. A strongly placed Planet Ketu in the natal chart is closely associated with both spiritual and materialistic growth. On the other hand a malefic Ketu can cause mental agony, sudden financial losses, mental clutter and indecisiveness.  </p><p><br></p><p><br></p><p>Ketu Mantra: || Om Hring Aing Ketave Namah ||</p>', '<p>FAQ</p>', 'PS864', 9001, 108, 500, 0, 100, 'PSKP1597', '7', '18', '', 0, '2024-08-23 06:26:12', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Ketu Dosh Nivaran Puja Online or Ketu Dev Shanti Puja is done to appease and worship Lord Ketu Dev to seek Divine blessings of spiritual growth, contentment and progress.', 'Ketu Shanti Puja, Ketu Dosh Nivaran Puja Online', 'Book Ketu Dev Shanti Puja or Ketu Dosh Nivaran Puja Online'),
(103, 'Budh Dev Shanti Puja', '<p>No. of Pundits:</p><p>No. of Days: </p>', '<p>Budh Shanti Puja, also known as Budh Dosh Nivaran Puja is conducted to nullify the malefic effects of a weakly placed Planet Budh Dev (Mercury) in the Kundli. It is also conducted when a native is undergoing Mahadasha or Antardasha of Planet Budh. A weakly placed Planet Budh in kundli causes sudden loss and unfavourable of less result even after putting in the required hard work. On the other hand a strongly placed Budh blesses with happiness, contentment and success. Planet Budh is primarily associated with communication, intellect and analytical aspects in a native. A favourable Budh ensures adaptability, growth and progress and street-smartness in an individual. </p><p><br></p><p>Budh Shanti Puja helps nullify the malefic effects of Planet Budh and enhance its positive effects in an individual’s Birth Chart (Horoscope). During the Puja Planet Budh is invoked and worshiped and its Divine blessings are sought for enhanced communication skills, intellectual prowess, effective learning and adaptability, cordial relationships, creativity and innovation and success. A strongly placed Planet Budh in the natal chart is closely associated with success and happiness whereas a malefic Budh causes all sought of issues such as lack of confidence, relationship issues, communication problems, mental stress, lack of status in society, financial hardships and more. A weakly placed Planet Budh also decreases benefits of other beneficial Planets.</p><p><br></p><p><br></p><p>Budh Mantra: || Om Aing Shring Shring Budhay Namah ||</p>', '<p>FAQ</p>', 'PS754', 9001, 108, 500, 0, 100, 'PSBP2163', '7', '18', '', 0, '2024-08-23 06:30:45', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Budh Dosh Nivaran Puja Online or Budh Dev Shanti Puja is done to appease and worship Lord Budh Dev to seek Divine blessings of cordial relationships, communication and success.', 'Budh Shanti Puja, Budh Dosh Nivaran Puja Online', 'Book Budh Dev Shanti Puja or Budh Dosh Nivaran Puja Online'),
(104, 'Shukra Dev Shanti Puja', '<p>No. of Pundits:</p><p>No. of Days: </p>', '<p>Shukra Shanti Puja, also known as Shukra Dosh Nivaran Puja is conducted to nullify the malefic effects of a weakly placed Planet Shukra Dev (Venus) in the Kundli. It is also conducted when a native is undergoing Mahadasha or Antardasha of Planet Shukra. A weakly placed Planet Shukra in kundli causes lack of money and comforts, lack of love, no passion and indulgence in life and issues in relationships. On the other hand a strongly placed Shukra blesses with financial prosperity, materialist comforts, luxury and beauty, love, enjoyment and harmony in relationships. Planet Shukra is primarily associated with luxury, beauty, prosperity and growth. A favourable Shukra ensures growth and prosperity along with harmony and emotional stability. </p><p><br></p><p>Shukra Shanti Puja helps nullify the malefic effects of Planet Budh and enhance its positive effects in an individual’s Birth Chart (Horoscope). During the Puja Planet Shukra is invoked and worshiped and its Divine blessings are sought for prosperity, wealth and growth and also love and bliss. A strongly placed Planet Shukra in the natal chart is closely associated with riches, social status, wealth, luxury and happy life. Whereas a malefic Shukra causes separation from family and loved ones, issues between couples and bad health. A weakly placed Planet Shukra also decreases benefits of other beneficial Planets.</p><p><br></p><p>Shukra Mantra: || Om Hring Shring Shukray Namah ||</p>', '<p>FAQ</p>', 'PS754', 9001, 108, 500, 0, 100, 'PSSP2793', '7', '18', '', 0, '2024-08-23 06:32:37', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Shukra Dosh Nivaran Puja Online or Shukra Dev Shanti Puja is done to appease and worship Lord Shukra Dev to seek Divine blessings of luxury and material growth.', 'Shukra Shanti Puja, Shukra Dosh Nivaran Puja Online', 'Book Shukra Dev Shanti Puja or Shukra Dosh Nivaran Puja Online'),
(105, 'Kaal Sarp Dosh Nivaran Puja', '<p>No. of pundits:</p><p>No. of Days:&nbsp;</p>', '<p>Kaal Sarp Dosha is an inauspicious Yog formed in a Kundli when all seven planets (Sun, Moon, Jupiter, Mars, Saturn, Mercury and Venus) are placed between Rahu and Ketu. As both Rahu and Ketu are malefic Planets it is believed that the Kaal Sarp Dosha puts in a bind or negates the benefic effects of other Planets and auspicious Yogs. People with Kaal Sarp Dosha in their natal chart often experience delay and obstacles in their personal and professional life. They face mental stress and agony, difficulties and delays like in marriage and professional stability in their careers. It is believed that the Kaal Sarp Dosh is formed in kundli because of bad karma of killing a serpent by the native in some past life. People suffering from the Kaal Sarp Dosha have fear of snakes and they often encounter snakes both in their day to day life and also in their dreams.&nbsp;&nbsp;</p><p>&nbsp;&nbsp;</p><p>Kaal Sarp Dosh Nivaran Puja, also known as Kaal Sarp Shanti Puja is an ideal ritual to pacify and seek relief from the malefic effects of the Dosha. In the Puja, Planets Rahu and Ketu are worshipped along with Lord Mahamrityunjaya. It is believed that the Kaal Sarp Dosh Nivaran Puja should be conducted on and Amavasya Tithi for best results. Depending upon the placements of Planets, there are 12 different types of Kaal Sarp Dosh. Due to Kaal Sarp Dosha, a person may experience financial hardships and mental suffering throughout his life. Natives with Kaal Sarp in their kundli have to work extra hard for everything and are also prone to sudden losses and health issues.&nbsp; &nbsp;</p>', '<p>FAQ</p>', 'PS699', 9001, 108, 500, 0, 100, 'PSKS2361', '7', '18', '', 0, '2024-08-23 06:44:38', '0000-00-00 00:00:00', 'Active', 'N', 'N', 'N', 'Kaal Sarp Dosh Nivaran Puja or Kalsarp Shanti Puja is done to nullify the malefic effects of Kaal Sarp Dosha and seek blessings of prosperity, growth and success.', 'Kaal Sarp Dosh Nivaran Puja, Kaal Sarp Puja Online', 'Book Kaal Sarp Dosh Nivaran Puja or Kalsarp Shanti Puja Online');

-- --------------------------------------------------------

--
-- Table structure for table `product_review`
--

CREATE TABLE `product_review` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment` longtext NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `emailid` varchar(255) NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_review`
--

INSERT INTO `product_review` (`id`, `product_id`, `name`, `comment`, `date`, `time`, `emailid`, `rate`) VALUES
(1, 1, 'praveen', 'Demo', '2024-02-16', '17:02:20', 'coordinater@mocindia.co.in', 5),
(2, 14, 'Sumit', 'Best', '2024-03-26', '13:03:02', 'sumit_stanley@yahoo.com', 5),
(3, 17, 'Anurag', 'Awesome', '2024-05-13', '14:05:09', 'fireurimagination@rediffmail.com', 5);

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL,
  `main_category` varchar(255) NOT NULL,
  `sub_category` varchar(255) NOT NULL,
  `img` longtext NOT NULL,
  `description` longtext NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` longtext DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `main_category`, `sub_category`, `img`, `description`, `status`, `created`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(10, '5', 'Rudraksha Beads', '1710763394_rudraksha_beads_thumb.jpg', 'Loose Rudraksha Beads Category', 'Active', '2024-03-18 12:03:14', 'Buy Rudraksha Beads from 1 - 21 mukhi from Nepal and Java', 'Rudraksha Beads', 'Powerful original, premium Rudraksha beads from Nepal and Java, Indonesia. Buy 1 - 21 mukhi, Gauri Shankar, Trijuti, Ganesh, Garb Gauri, Sawar Naag Online\r\n'),
(11, '5', 'Rudraksha Mala', '1710763471_rudraksha_mala_thumb.jpg', 'Rudraksha Mala Category', 'Active', '2024-03-18 12:04:31', 'Buy Rudraksha Malas of 108 + 1 beads for Japa or Wearing', 'Rudraksha Mala, Rudraksha Rosaries', 'Rudraksha Mala with 108 + 1 beads in thread and silver capping for wearing and Japa purpose. All malas are made using handpicked, original Rudraksha beads.\r\n'),
(12, '5', 'Rudraksha Bracelets', '1710763518_rudraksha_bracelets_thumb.jpg', 'Rudraksha Bracelets Category', 'Active', '2024-03-18 12:05:18', 'Rudraksha Bracelets made from quality beads in different designs', 'Rudraksha Bracelets, Rudraksha Wrist Malas', 'Rudraksha Bracelets in varied designs strung in thread or Silver Capping. All bracelets and wrist malas are made using handpicked, original Rudraksha beads\r\n'),
(13, '5', 'Rudraksha Power Combinations', '1710763554_rudraksha_power_combinations_thumb.jpg', 'Rudraksha Combinations Category', 'Active', '2024-03-18 12:05:54', 'Rudraksha Combinations made with compatible mukhi beads', 'Rudraksha Combinations', 'Rudraksha Power Combinations for health, wealth and success made using handpicked Rudraksha beads and strung as per compatibility for maximum benefits\r\n'),
(14, '5', 'Siddha and Indra Mala', '1710763604_siddha_and_indra_mala_thumb.jpg', 'Siddha Mala, Indra Mala Category', 'Active', '2024-03-18 12:06:44', 'Authentic Siddha, Indra Mala made from quality Rudraksha', 'Siddha Mala, Indra Mala', 'Most powerful Rudraksha Combinations of Siddha Mala and Indra Mala made using quality 1 -14 mukhi and 1 - 21 mukhi beads as mentioned in Katyayani Tantra\r\n'),
(15, '6', 'Precious Gemstones (Navratna)', '1710763750_precious_gemstones_navratna_thumb.jpg', 'Gemstones Category', 'Active', '2024-03-18 12:09:10', 'Natural Precious Gemstones (Navratna) of Jyotish quality', 'Gemstones, Navratna', 'Natural Jyotish Quality Precious Gemstones (Navratna) at best prices. Buy Natural Ruby, Emerald, Sapphire, Cat\'s Eye, Pearl, Coral, Hessonite, Diamond.\r\n'),
(16, '6', 'Semi-Precious Gemstones (Uparatna)', '1710763974_semi-precious_gemstones_uparatna_thumb.jpg', 'Semi-Precious Gemstones Category', 'Active', '2024-03-18 12:12:54', 'Natural Semi Precious Gemstones (Upratna) of Jyotish quality', 'Semi-Precious Gemstones, Uparatna', 'Natural Jyotish Quality Semi Precious Gemstones (Uparatna) at best prices. Buy Natural Opal, Peridot, Sphatik, Amethyst, Pyrite, turquoise, Lapis Lazuli\r\n'),
(17, '7', 'Gods and Goddesses Pujas', '1710921943_gods_and_goddesses_pujas_thumb.jpg', 'Gods and Goddesses Pujas Category', 'Active', '2024-03-20 08:05:43', 'Book Online Pujas and Yagnas of various Gods and Goddesses', 'Pujas, God Poojas', 'Book now and experience Divine blessings with our online puja services. All pujas are complete with all Vedic rituals done by learned Karmkandi Pundits\r\n'),
(18, '7', 'Graha Shanti (Dosh Nivaran) Pujas', '1710922024_graha_shanti_dosh_nivaran_puja_thumbs.jpg', 'Graha Shanti, Dosh Nivaran Pujas Category', 'Active', '2024-03-20 08:07:04', 'Conduct Graha Shanti, Dosh Nivaran Pujas for Navgraha online', 'Graha Shanti Pujas, Dosh Nivaran Pujas', 'Perform Navgraha Shanti Puja, Graha Pujas and Dosh Nivaran Pujas Online. Mitigate malefic effects of Kaal Sarp Dosh, Mangal Dosh, Shrapit Dosh, Sade Sati\r\n'),
(19, '7', 'Yagna and Homa', '1710922068_yagna_and_homa_thumb.jpg', 'Yagna and Homa Category', 'Active', '2024-03-20 08:07:48', 'Book Yagna & Homa to seek Special Blessings from the Divine', 'Yagna, Yajna, Homa, Homam', 'Conduct special Yagna and Homa remotely and seek Divine blessings of good health, wealth, prosperity, harmony with our online Yagna and Homa services\r\n'),
(20, '7', 'Paath and Sanskara', '1710922114_paath_and_sanskara_thumb.jpg', 'Paath and Sanskara Category', 'Active', '2024-03-20 08:08:34', 'Conduct Paath & Sanskara such as Cow Seva, Ramayana Paath', 'Paath, Sanskara, Samskara', 'Organize Paath online such as Ramayana Paath, Sundarkand Paath, Bhagwad Gita Paath and more. Conduct Gau Daan, Cow Seva and Daan Dakshina online\r\n'),
(21, '7', 'Prasad, Puja at Temples', '1710922169_prasad_puja_at_temples_thumb.jpg', 'Prasad, Puja at Temples Category', 'Active', '2024-03-20 08:09:29', 'Organize Pujas and Prasad from various famous Hindu temples', 'Prasad from temples, Puja at Temples', 'Experience peace and tranquility with Temple Pujas and Temple Prasad from famous Hindu temples. Connect with the Divine with remote Temple Puja Services\r\n'),
(22, '7', 'Purposewise, Mantra Japa Pujas', '1710922210_purposewise_mantra_japa_pujas_thumb.jpg', 'Purposewise Pujas, Mantra Japa Pujas Category', 'Active', '2024-03-20 08:10:10', 'Organize Purpose wise Pujas, Mantra Japa for Special Benefit', 'Purposewise Pujas, Mantra Japa Pujas', 'Worship specific Deities with Mantra chanting and seek blessings of special benefits. Conduct Laxmi Kuber Puja for wealth, Mrityunjaya Puja for health\r\n'),
(23, '7', 'Special Occasion Pujas', '1710922251_special_occasion_pujas_thumb.jpg', 'Special Occasion Pujas Category', 'Active', '2024-03-20 08:10:51', 'Special Occasion Pujas on Birthday, Anniversary, Festival', 'Birthday Pujas, Anniversary Pujas', 'Book personalized Pujas for special occasions and celebrations such as birthdays, anniversaries. Express gratitude to Divine for blessings bestowed\r\n'),
(24, '7', 'Group Pujas', '1710922282_group_pujas_thumb.jpg', 'Group Pujas Category', 'Active', '2024-03-20 08:11:22', 'Book Group Maha Pujas on festivals to seek Divine blessings', 'Group Pujas, Maha Pujas', 'Participate in Group Maha Pujas conducted on special occasions remotely through live streaming and seek blessings of health, wealth, prosperity, success\r\n'),
(25, '8', 'Gods and Goddesses Yantras', '1710922387_gods_and_goddesses_yantras_thumb.jpg', 'Gods and Goddesses Yantras Category', 'Active', '2024-03-20 08:13:07', 'Yantras of Deities with Accurate Geometry for Divine Blessings', 'Gods and Goddesses Yantras', 'Powerful Yantras of various Gods and Goddesses to enhance meditation and aid spiritual growth. Manifest benefits and enhance positivity in life.\r\n'),
(26, '8', 'Planetary Yantras', '1710922454_planetary_yantras_thumb.jpg', 'Planetary Yantras Category', 'Active', '2024-03-20 08:14:14', 'Yantras of Navgraha with Accurate Geometry for Dosh Nivaran', 'Planetary Yantras, Graha Yantras', 'Collection of Planetary Yantras to nullify malefic effects of Planetary Doshas. Experience good health, prosperity, success with various Planetary Yantras \r\n'),
(27, '8', 'Purposewise Yantras', '1710922487_purposewise_yantras_thumb.jpg', 'Purposewise Yantras Category', 'Active', '2024-03-20 08:14:47', 'Yantras for Good Health, Wealth, Prosperity, Success, Power', 'Purposewise Yantras', 'Seek various blessings and manifest desires with sacred geometry of Yantras. Yantras are schematic representation of Mantras worshiped for various purposes\r\n'),
(28, '8', 'Kavach Taveez', '1710922515_kavach_taveez_thumb.jpg', 'Kavach Taveez Category', 'Active', '2024-03-20 08:15:15', 'Collection of Powerful Kavach & Taveez for various Benefits', 'Kavach Taveez', 'Harness Divine vibrations of abundance and protection with powerful Kavach and Taveez. Seek blessings of prosperity and well-being with Divine Mantras. \r\n'),
(29, '9', 'Parad Mala, Lockets, Bracelets', '1710924451_parad_mala_lockets_bracelets_thumb.jpg', 'Parad Mala, Lockets, Bracelets Category', 'Active', '2024-03-20 08:47:31', 'Buy Parad Malas, Lockets, Bracelets made from Siddh Parad ', 'Parad Mala, Lockets, Bracelets', 'Parad Mala, Lockets, Bracelets made from Siddh Parad Gutikas. Siddh Parad or solidified mercury is made after 8 stages of Purification as per Parad Samhita\r\n'),
(30, '9', 'Parad Idols', '1710924485_parad_idols_thumb.jpg', 'Parad Idols Category', 'Active', '2024-03-20 08:48:05', 'Parad Idols of Gods and Goddesses made from Siddh Parad', 'Parad Idols Category', 'Parad Idols of Gods and Goddesses made from Siddh Parad. Purified Siddh Parad or solidified mercury blesses devotees with health, confidence & success\r\n'),
(31, '9', 'Parad Pyramid, Sri Yantra', '1710924522_parad_pyramid_sri_yantra_thumb.jpg', 'Parad Pyramid, Sri Yantra Category', 'Active', '2024-03-20 08:48:42', 'Parad Pyramid, Sri Yantra, Yantras made from Siddh Parad ', 'Parad Pyramid, Sri Yantra', 'Parad or Solidified Mercury is the favorite metal of Lord Shiva. Parad Pyramid and Yantras made from Siddh Parad blesses with prosperity and peace\r\n'),
(32, '9', 'Parad Rings, Gutika', '1710924560_parad_rings_gutika_thumb.jpg', 'Parad Rings, Gutika Category', 'Active', '2024-03-20 08:49:20', 'Buy Parad Gutikas, Parad Rings made from Siddh Parad', 'Parad Rings, Gutika', 'Parad Ring and Parad Gutikas made from Siddh Parad for health, wealth, success. Siddh Parad is made after 8 stages of Purification as per Parad Samhita\r\n'),
(33, '9', 'Parad Shivling', '1710924590_parad_shivling_thumb.jpg', 'Parad Shivling Category', 'Active', '2024-03-20 08:49:50', 'Collection of Parad Shivlings made from Siddh Parad', 'Parad Shivling', 'Parad Shivling is the most auspicious Shivling to worship at home. Parad Shivling is highly glorified in vedic scriptures as most powerful Shivaling of all\r\n'),
(34, '16', 'Gemstone Malas', '1710924671_gemstone_malas_thumb.jpg', 'Gemstone Malas Category ', 'Active', '2024-03-20 08:51:11', 'Buy Premium Quality Gemstone Malas and Rosaries Online', 'Gemstone Malas, Gemstone Rosaries', 'Collection of Gemstone Malas, Rosaries made using premium natural gemstone beads. Strung with thread with 108+ 1 beads for wearing and Japa purposes.\r\n'),
(35, '16', 'Spiritual Malas, Rosaries', '1710924705_spiritual_malas_rosaries_thumb.jpg', 'Spiritual Malas, Rosaries Category', 'Active', '2024-03-20 08:51:45', 'Buy Best Quality Spiritual Malas and Rosaries Online', 'Spiritual Malas, Rosaries', 'Premium quality spiritual malas and rosaries strung in quality thread. Tulsi Mala, Kamal Gatta Mala, Haldi Mala for wearing and as a meditational tool.\r\n'),
(36, '16', 'Gemstone Bracelets', '1710924745_gemstone_bracelets_thumb.jpg', 'Gemstone Bracelets Category', 'Active', '2024-03-20 08:52:25', 'Buy Premium Quality Gemstone Bracelets Online', 'Gemstone Bracelets, Gemstone Wristmala', 'Collection of Gemstone Bracelets made using premium natural gemstone beads. Strung in thread with embellishments in different designs and sizes.\r\n'),
(37, '16', 'Spiritual Bracelets, Wrist-Malas, Kadas', '1710924792_spiritual_bracelets_wrist-malas_kadas_thumb.jpg', 'Spiritual Bracelets, Wrist-Malas, Kadas Category', 'Active', '2024-03-20 08:53:12', 'Buy Best Quality Spiritual Bracelets, Kadas Online', 'Spiritual Bracelets, Kada', 'Collection of quality spiritual bracelets, wrist malas strung with natural quality beads. Buy Tulsi, Lotus bead, sandalwood bracelets online at best prices\r\n'),
(38, '16', 'Pendants and Lockets', '1710924839_pendants_and_lockets_thumb.jpg', 'Pendants and Lockets Category', 'Active', '2024-03-20 08:53:59', 'Spiritual Deity Pendants and Lockets in Silver and Gold', 'Pendants and Lockets', 'Exquisite collection of Devotional Pendants and Lockets. Range includes spiritual lockets such as Om & Swastik pendants, Deity pendants at best prices.\r\n'),
(39, '16', 'Devotional Rings', '1710924868_devotional_rings_thumb.jpg', 'Devotional Rings Category', 'Active', '2024-03-20 08:54:28', 'Spiritual Deity, Om, Swastik Ring in Silver and Gold', 'Devotional Rings', 'Keep Divinity close to self with spiritual and devotional rings collection. Buy Om Ring, Swatik Ring, Deity Rings in Silver and Gold online at best prices.\r\n'),
(40, '11', 'Gemstone Shree Yantras', '1710924913_gemstone_shree_yantras_thumb.jpg', 'Gemstone Shree Yantras Category', 'Active', '2024-03-20 08:55:13', 'Shree Yantra Collection carved in various Natural Gemstones', 'Gemstone Shree Yantras', 'Shree Yantras carved meticulously from natural gemstones. Worship gemstone Shree Yantras for Divine Blessings of Goddess Shakti for good health and wealth.\r\n'),
(41, '11', 'Meru Shree Yantras', '1710924951_meru_shree_yantras_thumb.jpg', 'Meru Shree Yantras Category', 'Active', '2024-03-20 08:55:51', 'Assorted Shree Yantras in various Designs, Material & Sizes', 'Meru Shree Yantras', 'Collection of powerful Meru Shree Yantra in Brass and other materials. Divine geometry of Shree Yantra encompasses energies of prosperity and abundance.\r\n'),
(42, '12', 'Gemstone Shivlings', '1710924980_gemstone_shivlings_thumb.jpg', 'Gemstone Shivlings Category', 'Active', '2024-03-20 08:56:20', 'Shivalingam Collection carved in various Natural Gemstones', 'Gemstone Shivlings', 'Sacred Shiva Lingams carved in various natural gemstones for your puja altar. Seek blessings of health, wealth, prosperity, success with Lord Shiva\'s grace.\r\n'),
(43, '12', 'Shivlingam Collection', '1710925015_shivlingam_collection_thumb.jpg', 'Shivlingam Collection Category', 'Active', '2024-03-20 08:56:55', 'Assorted Shivlingams in various Designs, Material & Sizes', 'Shivlingam Collection', 'Seek Divine blessings of Lord Shiva with exquisite collection of Narmada Shivlings, Bana lingams, Parad Shivlings in different sizes with Yoni base.\r\n'),
(44, '15', 'Astro Consultations', '1710925058_astro_consultations_thumb.jpg', 'Vedic Astrology Consultations Category', 'Active', '2024-03-20 08:57:38', 'Vedic Astro Consultation for Health, Career, Marriage, Business', 'Astro Consultations', 'Consult experienced, learned Astrologer for Health, Career, Marriage, Business, Job and more. Receive detailed Kundli and personalized recommendations. \r\n'),
(45, '15', 'Astro Reports', '1710925086_astro_reports_thumb.jpg', 'Vedic Astro Reports Category', 'Active', '2024-03-20 08:58:06', 'Vedic Astro Reports for Health, Career, Marriage, Business', 'Astro Reports', 'Vedic Astro reports prepared by expirenced astrologers for Health, Career, Marriage, Business. Receive detailed report with personalized recommendations.\r\n'),
(46, '13', 'Brass Idols', '1710925191_brass_idols_thumb.jpg', 'Brass Idols Category', 'Active', '2024-03-20 08:59:51', 'Brass Idols of Gods and Goddesses; Browse latest Designs', 'Brass Deity Idols', 'Seek Divine grace and blessings with exquisite collection of Deity Idols in Brass. Perfectly crafted by traditional skilled artisans to invoke Divinity.\r\n'),
(47, '13', 'Bronze Idols', '1710925225_bronze_idols_thumb.jpg', 'Bronze Idols Category', 'Active', '2024-03-20 09:00:25', 'Bronze Idols of Gods and Goddesses; Browse latest Designs', 'Deity Bronze Idols', 'Meticulously crafted Gods and Goddesses idols in Bronze. Invoke Divine blessings of health, wealth, prosperity and success with these handcrafted idols.\r\n'),
(48, '13', 'Gemstone Idols', '1710925251_gemstone_idols_thumb.jpg', 'Gemstone Idols Category', 'Active', '2024-03-20 09:00:51', 'Premium Natural Gemstone Idols of Deities in Varied Sizes', 'Gemstone Idols', 'Premium collection of Natural Gemstone Idols carved to perfection by traditional skilled artisan. Collection of Gemstone God Idols in compatible Gemstones\r\n'),
(49, '13', 'Marble Idols', '1710925282_marble_idols_thumb.jpg', 'Marble Idols Category', 'Active', '2024-03-20 09:01:22', 'Premium Marble Idols of Gods and Goddesses in Varied Sizes', 'Marble Idols', 'Elevate the spiritual ambiance of your Puja room with stunning God and Goddesses idols in Marble. Experience peace and serenity with meticulously crafted idols. \r\n'),
(50, '13', 'Silver Idols', '1710925312_silver_idols_thumb.jpg', 'Silver Idols Category', 'Active', '2024-03-20 09:01:52', 'Silver Idols of Gods and Goddesses; Browse latest Designs', 'Silver Idols', 'Experience Divinity with our exquisite collection of Silver idols of Gods and Goddesses. These handcrafted Divine Idols are made in 925 Pure Silver.\r\n'),
(51, '13', 'Other Idols', '1710925336_other_idols_thumb.jpg', 'Other Idols Category', 'Active', '2024-03-20 09:02:16', 'Premium Quality Gods and Goddesses Idols in Resin, Plastic', 'Other Idols', 'Collection of Gods and Goddesses Idols made in Resin, Plastic and other materials. Energize your study table or work desk, also perfect for gifting.\r\n'),
(52, '14', 'Vastu', '1710925442_vastu_thumb.jpg', 'Vastu Category', 'Active', '2024-03-20 09:04:02', 'Vastu Products to mitigate Vastu Dosha and enhance dwelling', 'Vastu', 'Vastu product to enhance positivity of your dwelling. Mitigate malefic effects of Vashu Dosha with collection of Vastu products such as Vastu rectifiers.\r\n'),
(53, '14', 'Spiritual Gifting', '1710925514_spiritual_gifting_thumb.jpg', 'Spiritual Gifting Category', 'Active', '2024-03-20 09:05:14', 'Premium Collection of Spiritual Gifts for Wedding Season', 'Spiritual Gifting', 'Range of Spiritual Gifts such as Idols, Vastu Kits, Aroma Hampers, Coins, Paintings, Product Combos and more for wedding, birthday and anniversaries.\r\n'),
(54, '14', 'Crystals', '1710925547_crystals_thumb.jpg', 'Crystals Category', 'Active', '2024-03-20 09:05:47', 'Natural Crystals, Gemstone Rocks, Clusters, Geode Online', 'Crystals', 'Buy online and attract positivity, manifest your desires, heal and empowering yourself with our range of natural crystals, rocks, cluster, geode and more.\r\n'),
(55, '14', 'Aroma, Fragrance', '1710925584_aroma_fragrance_thumb.jpg', 'Aroma, Fragrance Category', 'Active', '2024-03-20 09:06:24', 'Natural Attars, Waters, Essential Oils for Aromatherapy', 'Aroma, Fragrance', 'Discover peace and tranquility with our aroma blends. Experience nature\'s essence for relaxation and rejuvenation with natural waters, attars, essential oils.\r\n'),
(56, '14', 'Puja Essentials', '1710925615_puja_essentials_thumb.jpg', 'Puja Essentials Category', 'Active', '2024-03-20 09:06:55', 'Premium Quality Puja Essentials, Samagri, Vessels, Kits', 'Puja Essentials', 'Exclusive range of premium quality, Sattvik Puja Samagri, Puja Kits, Puja Essentials and Puja Vessels. Buy Puja & Havan Samagri online at best prices\r\n'),
(57, '14', 'Paintings', '1710925645_paintings_thumb.jpg', 'Paintings Category', 'Active', '2024-03-20 09:07:25', 'Exclusive Spiritual Paintings, Prints in Various Sizes', 'Paintings', 'Exclusive collection of handcrafted spiritual paintings & prints. Infuse your home with colors of charm, delight, elegance and devotion with our range.\r\n'),
(58, '14', 'Mantra Posters', '1710925677_mantra_posters_thumb.jpg', 'Mantra Posters Category', 'Active', '2024-03-20 09:07:57', 'Buy Exclusive Mantra Posters, Prints in Various Sizes', 'Mantra Posters', 'Exclusive collection of mantra posters, spiritual posters and prints. Discover colorful creations which are unique blend of tradition and creativity.\r\n'),
(59, '14', 'Devotional Stationary', '1710925702_devotional_stationary_thumb.jpg', 'Devotional Stationary Category', 'Active', '2024-03-20 09:08:22', 'Spiritual Stationary items like Diaries, Books, Keychains', 'Devotional Stationary', 'Range of Divine stationery to keep Divinity close when meditating, journaling or mantra writing. These are perfect companions in your spiritual journey.\r\n'),
(60, '14', 'Handicraft', '1710925735_handicrafts_thumb.jpg', 'Handicraft Category', 'Active', '2024-03-20 09:08:55', 'Buy Traditional Handicraft items Online at Best Prices', 'Handicraft', 'Exquisite handicrafts made by skilled, traditional artisans, sourced from all over India. Elevate your dwelling with handcrafted treasures with rich heritage\r\n'),
(61, '14', 'Deity Photos, Frames', '1710925763_deity_photos_frames_thumb.jpg', 'Deity Photos, Frames Category', 'Active', '2024-03-20 09:09:23', 'Collection of Gods and Goddesses Photos, Photo Frames', 'Deity Photos, Frames', 'Curated collection of photos and images of Gods and Goddesses in different sizes. Premium quality images available with and without frames for Puja room\r\n'),
(62, '14', 'Shaligram', '1710925801_shaligram_thumb.jpg', 'Shaligram Category', 'Active', '2024-03-20 09:10:01', 'Authentic Shaligram Shilas from Gandaki River, Nepal', 'Shaligram', 'Discover best quality, original Shaligram Shilas sourced from Gandaki River, Nepal. Shaligrams are manifestation of Lord Vishnu like Laxmi Narayan, Sudarshan.\r\n'),
(63, '14', 'Other Spiritual Articles', '1710925837_other_sacred_articles_thumb.jpg', 'Other Spiritual Articles Category', 'Active', '2024-03-20 09:10:37', 'Assorted Sacred Articles and Items for Spiritual Growth ', 'Other Spiritual Articles', 'Discover spiritual, holy and sacred articles such as books, accessories, key chains, digital products and more. Elevate your spiritual growth with us.\r\n'),
(64, '7', 'Festival Pujas', '1719502837_festivals_puja_thumb.jpg', 'Festival Pujas Category', 'Active', '2024-06-27 15:40:37', 'Book Online Festival Pujas to Worship Divine on Auspicious Days', 'Festival Pujas', 'Perform Pujas, Yajnas on festivals and seek good health, wealth, success. Celebrate festival, revere the Divine and invite positivity on special days.\r\n'),
(65, '7', 'Daan Dakshina', '1719502870_daan_dakshina_puja_thumb.jpg', 'Daan Dakshina Category', 'Active', '2024-06-27 15:41:10', 'Conduct Online Daan Dakshina like Gau Daan, Brahmin Bhoj more', 'Daan Dakshina', 'Perform Daan Dakshina to nullify negative karma and invite bliss. Daan Dakshina or donation is regarded as a very meritorious and beneficial deed in Dharma. \r\n'),
(66, '7', 'Shraadh Pujas', '1719502908_shraadh_puja_thumb.jpg', 'Shraadh Pujas Category', 'Active', '2024-06-27 15:41:48', 'Book Online Shraadh Rituals like Pind Daan for the Departed', 'Shraadh Pujas', 'Shraadh Puja and Rituals like Pind Daan, Tripindi Shraddha for ancestors especially during Pitru Paksha. Shraadh rituals helps native seek blessings of forefathers.\r\n'),
(67, '7', 'Subscription Pujas', '1719502940_subscription_puja_thumb.jpg', 'Subscription Pujas Category', 'Active', '2024-06-27 15:42:20', 'Worship and Revere the Divine on Special Days every Month', 'Subscription Puja', 'Conduct Pujas of your favorite Deity on special and auspicious days every week or month. Subscription Pujas help seek ongoing, constant Divine blessings. \r\n');

-- --------------------------------------------------------

--
-- Table structure for table `sub_order`
--

CREATE TABLE `sub_order` (
  `id` int(11) NOT NULL,
  `orderid` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` longtext NOT NULL,
  `currency` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `images` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `time` time NOT NULL DEFAULT current_timestamp(),
  `mainorderid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sub_order`
--

INSERT INTO `sub_order` (`id`, `orderid`, `product_id`, `product_name`, `currency`, `amount`, `quantity`, `images`, `date`, `time`, `mainorderid`) VALUES
(31, '24879165', 17, 'Blue Sapphire - 4.5 Carats', 'INR', '9001', 2, '051124040502-BS.jpg', '2024-06-25', '12:41:19', 24),
(30, '27308415', 16, 'Test Product', 'INR', '2000', 1, '040224050439-11-mukhi-nepal-gold-scaled.jpg', '2024-05-19', '17:21:43', 23),
(29, '27308415', 17, 'Blue Sapphire - 4.5 Carats', 'INR', '2000', 2, '051124040502-BS.jpg', '2024-05-19', '17:21:43', 23),
(28, '80732694', 16, 'Test Product', 'INR', '2000', 1, '040224050439-11-mukhi-nepal-gold-scaled.jpg', '2024-05-19', '17:19:17', 22),
(27, '80732694', 17, 'Blue Sapphire - 4.5 Carats', 'INR', '2000', 2, '051124040502-BS.jpg', '2024-05-19', '17:19:17', 22),
(26, '59163847', 16, 'Test Product', 'INR', '2000', 1, '040224050439-11-mukhi-nepal-gold-scaled.jpg', '2024-05-19', '17:19:05', 21),
(25, '59163847', 17, 'Blue Sapphire - 4.5 Carats', 'INR', '2000', 2, '051124040502-BS.jpg', '2024-05-19', '17:19:05', 21),
(24, '50723164', 14, 'Blue Sapphire', 'INR', '1000', 2, '032124120336-size800x800.jpg', '2024-04-02', '14:47:34', 20),
(23, '95274061', 15, 'Yellow Sapphire', 'INR', '1000', 1, '032124030325-size800x800.jpg', '2024-03-24', '00:15:18', 19),
(22, '43016579', 14, 'Blue Sapphire', 'INR', '1000', 1, '032124120336-size800x800.jpg', '2024-03-24', '00:07:06', 18),
(21, '43016579', 15, 'Yellow Sapphire', 'INR', '1000', 2, '032124030325-size800x800.jpg', '2024-03-24', '00:07:06', 18),
(20, '93628104', 14, 'Blue Sapphire', 'USD', '15.00', 1, '032124120336-size800x800.jpg', '2024-03-24', '00:02:08', 17),
(19, '95173426', 14, 'Blue Sapphire', 'USD', '15.00', 1, '032124120336-size800x800.jpg', '2024-03-23', '23:59:51', 16),
(18, '95126483', 14, 'Blue Sapphire', 'USD', '15.00', 1, '032124120336-size800x800.jpg', '2024-03-23', '23:53:12', 15),
(32, '24879165', 18, 'Bal Gopal Puja', 'INR', '9001', 1, '062524120624-sample product image.jpg', '2024-06-25', '12:41:19', 24),
(33, '23789510', 91, '15 Mukhi Indonesia - Big', 'INR', '100', 1, '071924110735-sample product image.jpg', '2024-07-26', '15:57:39', 25),
(34, '70625394', 16, 'Test Product', 'INR', '2000', 1, '040224050439-11-mukhi-nepal-gold-scaled.jpg', '2024-07-27', '13:21:32', 26),
(35, '39401827', 94, 'Shri Krishna Puja, Mantra Jaap and Yagna', 'INR', '12,501.00', 1, '080924030802-sample product image.jpg', '2024-08-10', '17:39:36', 27),
(36, '39401827', 94, 'Shri Krishna Puja, Mantra Jaap and Yagna', 'INR', '12,501.00', 1, '080924030802-sample product image.jpg', '2024-08-10', '17:39:36', 27),
(37, '68953470', 94, 'Shri Krishna Puja, Mantra Jaap and Yagna', 'INR', '25501', 1, '080924030802-sample product image.jpg', '2024-08-10', '00:00:18', 28),
(38, '68953470', 94, 'Shri Krishna Puja, Mantra Jaap and Yagna', 'INR', '12501', 1, '080924030802-sample product image.jpg', '2024-08-10', '00:00:18', 28),
(39, '40758213', 94, 'Shri Krishna Puja, Mantra Jaap and Yagna', 'INR', '25501', 1, '080924030802-sample product image.jpg', '2024-08-10', '00:00:18', 29),
(40, '40758213', 94, 'Shri Krishna Puja, Mantra Jaap and Yagna', 'INR', '12501', 1, '080924030802-sample product image.jpg', '2024-08-10', '00:00:18', 29),
(41, '68175029', 94, 'Shri Krishna Puja, Mantra Jaap and Yagna', 'INR', '25501', 1, '080924030802-sample product image.jpg', '2024-08-10', '00:00:18', 30),
(42, '68175029', 94, 'Shri Krishna Puja, Mantra Jaap and Yagna', 'INR', '12501', 1, '080924030802-sample product image.jpg', '2024-08-10', '00:00:18', 30);

-- --------------------------------------------------------

--
-- Table structure for table `webuser`
--

CREATE TABLE `webuser` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `password` mediumtext DEFAULT NULL,
  `activationcode` mediumtext DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `Last_Name` varchar(250) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `paas_view` mediumtext DEFAULT NULL,
  `Country` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `State` varchar(255) NOT NULL,
  `Zipcode` varchar(255) NOT NULL,
  `verification_code` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `webuser`
--

INSERT INTO `webuser` (`id`, `name`, `email`, `password`, `activationcode`, `date`, `status`, `Last_Name`, `phone_number`, `paas_view`, `Country`, `Address`, `City`, `State`, `Zipcode`, `verification_code`) VALUES
(1, 'Sumit', 'zyanideglobal@gmail.com', '$2y$10$ZRrRRYAHnNBg12Usxmsk2ucqeB6SPsiKWT9M7Zpwr6ol1iuOoWTfa', '$2y$10$nXrOrUEpt1VUqTbGUob4peIjHzM6HO4hJlSHqXuZjdVv4XjtUFUj.', '2024-03-22 07:17:30', 1, NULL, NULL, 'Okies@123', '', '', '', '', '', 445962),
(4, 'Praveen', 'praveen.shrigadi465@gmail.com', '$2y$10$pHjghhBHsvsRVErAOjAg1O2w0TKuEhX6J1PRn/5qREQLKPoBum2d2', '$2y$10$jELBF8wgMCG9eWSSCRXf8.jpqmzHIK1ofqFunVrkuQcTcJw9FxqnW', '2024-03-23 11:06:54', 1, 'shrigadi', '8928236833', 'shri150150', 'India', 'Sakinak', 'mumbai', 'maharashtra', '40072', NULL),
(5, 'Navin', 'ommoksh@gmail.com', '$2y$10$e48qaKTrv.gnVa50gzEWEunTt8krwzMt7VJ4IJO.mkGVB0tNMDlaK', '$2y$10$jUy0IRgtoI4FkTdt72onY.ATon6.MQVtjdvyGxVSCxIMaRYMsRrwW', '2024-04-02 09:07:13', 1, 'Khare', '9860750061', '$2y$10$e48qaKTrv.gnVa50gzEWEunTt8krwzMt7VJ4IJO.mkGVB0tNMDlaK', 'India', '6A Kailash nagar\r\nVadavli section', 'Mumbai', 'Maharashtra', '421501', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `zoneeditor`
--

CREATE TABLE `zoneeditor` (
  `id` int(11) NOT NULL,
  `Zone_name` mediumtext NOT NULL,
  `Zone_Code` mediumtext DEFAULT NULL,
  `INR_Price` mediumtext NOT NULL,
  `USD_Price` mediumtext NOT NULL,
  `Weight` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `zoneeditor`
--

INSERT INTO `zoneeditor` (`id`, `Zone_name`, `Zone_Code`, `INR_Price`, `USD_Price`, `Weight`) VALUES
(1, 'A', 'Asian', '1600', '20', '50'),
(2, 'A', 'Asian', '3200', '40', '100'),
(3, 'A', 'Asian', '0', '0', '0'),
(4, 'A', 'Asian', '4800', '60', '150'),
(5, 'B', 'Pacific', '0', '0', '0'),
(6, 'B', 'Pacific', '800', '10', '50'),
(7, 'B', 'Pacific', '1600', '20', '100'),
(8, 'B', 'Pacific', '2400', '30', '150');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `2nd_sub_category`
--
ALTER TABLE `2nd_sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_page`
--
ALTER TABLE `blog_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_fridget`
--
ALTER TABLE `country_fridget`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_img`
--
ALTER TABLE `product_img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_info`
--
ALTER TABLE `product_info`
  ADD PRIMARY KEY (`Product_ID`);

--
-- Indexes for table `product_review`
--
ALTER TABLE `product_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_order`
--
ALTER TABLE `sub_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webuser`
--
ALTER TABLE `webuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zoneeditor`
--
ALTER TABLE `zoneeditor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `2nd_sub_category`
--
ALTER TABLE `2nd_sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `blog_page`
--
ALTER TABLE `blog_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `country_fridget`
--
ALTER TABLE `country_fridget`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icons`
--
ALTER TABLE `icons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1057;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `product_img`
--
ALTER TABLE `product_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `product_info`
--
ALTER TABLE `product_info`
  MODIFY `Product_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `product_review`
--
ALTER TABLE `product_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `sub_order`
--
ALTER TABLE `sub_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `webuser`
--
ALTER TABLE `webuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `zoneeditor`
--
ALTER TABLE `zoneeditor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
