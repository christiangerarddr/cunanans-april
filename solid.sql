-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2020 at 11:21 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `solid`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `groom_name` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groom_birthdate` date DEFAULT NULL,
  `bride_name` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bride_birthdate` date DEFAULT NULL,
  `wedding_anniv` date DEFAULT NULL,
  `contact_info` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `groom_name`, `groom_birthdate`, `bride_name`, `bride_birthdate`, `wedding_anniv`, `contact_info`, `created_at`, `updated_at`) VALUES
(1, 'Test Groom', '2020-04-20', 'Test Bride', '2020-04-20', '2020-04-20', 'Test Info', '2020-04-20 01:34:11', '2020-04-20 02:05:03');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'item_name', 'text', 'Item Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'weight', 'text', 'Weight', 0, 0, 0, 0, 0, 0, '{}', 3),
(25, 4, 'unit_of_measurement', 'text', 'Unit Of Measurement', 0, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'price_history', 'text', 'Price History', 0, 0, 0, 1, 0, 1, '{}', 6),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 1, 0, 1, '{}', 9),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(29, 4, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 1, '{}', 11),
(30, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(31, 5, 'supplier_name', 'text', 'Supplier Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(32, 5, 'supplier_address', 'text', 'Supplier Address', 0, 1, 1, 1, 1, 1, '{}', 3),
(33, 5, 'supplier_contact', 'text', 'Supplier Contact', 0, 1, 1, 1, 1, 1, '{}', 4),
(35, 5, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 9),
(36, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(37, 5, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 1, '{}', 11),
(38, 5, 'price_histories_id', 'text', 'Price Histories', 0, 1, 1, 1, 1, 1, '{}', 8),
(39, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(41, 6, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 7),
(42, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(43, 6, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 1, '{}', 8),
(44, 6, 'recipe_name', 'text', 'Recipe Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(45, 6, 'ingredient_name', 'text', 'Ingredient Name', 0, 1, 1, 1, 1, 1, '{}', 5),
(46, 6, 'ingredient_weight', 'text', 'Ingredient Weight', 0, 1, 1, 1, 1, 1, '{}', 6),
(48, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(49, 7, 'dish_name', 'text', 'Dish Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(50, 7, 'dish_recipe_id', 'text', 'Dish Recipe Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(51, 7, 'category', 'select_dropdown', 'Category', 0, 1, 1, 1, 1, 1, '{\"default\":\"main\",\"options\":{\"main\":\"Main\",\"sidedish\":\"Side Dish\"}}', 5),
(52, 7, 'unit_cost', 'text', 'Unit Cost', 0, 0, 0, 0, 0, 1, '{}', 6),
(53, 7, 'unit_price', 'text', 'Unit Price', 0, 0, 0, 0, 0, 1, '{}', 7),
(54, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 8),
(55, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(56, 7, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 1, '{}', 10),
(57, 7, 'dish_belongsto_recipe_relationship', 'relationship', 'recipes', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Recipe\",\"table\":\"recipes\",\"type\":\"belongsTo\",\"column\":\"dish_recipe_id\",\"key\":\"recipe_name\",\"label\":\"recipe_name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(67, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(68, 9, 'manu_name', 'text', 'Manu Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(69, 9, 'side_dishes', 'text', 'Side Dishes', 0, 1, 1, 1, 1, 1, '{}', 3),
(70, 9, 'main_dishes', 'text', 'Main Dishes', 0, 1, 1, 1, 1, 1, '{}', 4),
(71, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 5),
(72, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(73, 9, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 1, '{}', 7),
(74, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(76, 11, 'side_dishes', 'text', 'Side Dishes', 0, 1, 1, 1, 1, 1, '{}', 4),
(77, 11, 'main_dishes', 'text', 'Main Dishes', 0, 1, 1, 1, 1, 1, '{}', 3),
(78, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(79, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(80, 11, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 1, '{}', 7),
(81, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(82, 12, 'material_name', 'text', 'Material Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(83, 12, 'remarks', 'text_area', 'Remarks', 0, 1, 1, 1, 1, 1, '{}', 3),
(84, 12, 'unit_price', 'text', 'Unit Price', 0, 1, 1, 1, 1, 1, '{}', 5),
(85, 12, 'unit_cost', 'text', 'Unit Cost', 0, 1, 1, 1, 1, 1, '{}', 4),
(86, 12, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 6),
(87, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(88, 12, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 1, '{}', 8),
(89, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(90, 13, 'service_name', 'text', 'Service Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(91, 13, 'remarks', 'text_area', 'Remarks', 0, 1, 1, 1, 1, 1, '{}', 3),
(92, 13, 'unit_cost', 'text', 'Unit Cost', 0, 1, 1, 1, 1, 1, '{}', 4),
(93, 13, 'unit_price', 'text', 'Unit Price', 0, 1, 1, 1, 1, 1, '{}', 5),
(94, 13, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 6),
(95, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(96, 13, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 1, '{}', 8),
(97, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(98, 14, 'venue_name', 'text', 'Venue Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(99, 14, 'venue_location', 'text', 'Venue Location', 0, 1, 1, 1, 1, 1, '{}', 3),
(100, 14, 'remarks', 'text_area', 'Remarks', 0, 1, 1, 1, 1, 1, '{}', 4),
(101, 14, 'unit_cost', 'text', 'Unit Cost', 0, 1, 1, 1, 1, 1, '{}', 5),
(102, 14, 'unit_price', 'text', 'Unit Price', 0, 1, 1, 1, 1, 1, '{}', 6),
(103, 14, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 7),
(104, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(105, 14, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 1, '{}', 9),
(106, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(107, 15, 'menus', 'text', 'Menus', 0, 1, 1, 1, 1, 1, '{}', 3),
(108, 15, 'services', 'text', 'Services', 0, 1, 1, 1, 1, 1, '{}', 4),
(109, 15, 'materials', 'text', 'Materials', 0, 1, 1, 1, 1, 1, '{}', 5),
(110, 15, 'venue', 'text', 'Venue', 0, 1, 1, 1, 1, 1, '{}', 6),
(111, 15, 'total_cost', 'text', 'Total Cost', 0, 1, 1, 1, 1, 1, '{}', 17),
(112, 15, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 7),
(113, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(114, 15, 'menus_total_unit_cost', 'text', 'Menus Total Unit Cost', 0, 1, 1, 1, 1, 1, '{}', 9),
(115, 15, 'menus_total_unit_price', 'text', 'Menus Total Unit Price', 0, 1, 1, 1, 1, 1, '{}', 10),
(116, 15, 'services_total_cost', 'text', 'Services Total Cost', 0, 1, 1, 1, 1, 1, '{}', 11),
(117, 15, 'materials_total_cost', 'text', 'Materials Total Cost', 0, 1, 1, 1, 1, 1, '{}', 13),
(118, 15, 'venue_total_cost', 'text', 'Venue Total Cost', 0, 1, 1, 1, 1, 1, '{}', 15),
(119, 15, 'package_name', 'text', 'Package Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(120, 11, 'menu_name', 'text', 'Menu Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(121, 15, 'materials_total_price', 'text', 'Materials Total Price', 0, 1, 1, 1, 1, 1, '{}', 14),
(122, 15, 'venue_total_price', 'text', 'Venue Total Price', 0, 1, 1, 1, 1, 1, '{}', 16),
(123, 15, 'services_total_price', 'text', 'Services Total Price', 0, 1, 1, 1, 1, 1, '{}', 12),
(124, 15, 'total_price', 'text', 'Total Price', 0, 1, 1, 1, 1, 1, '{}', 18),
(125, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(126, 16, 'groom_name', 'text', 'Groom Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(127, 16, 'groom_birthdate', 'date', 'Groom Birthdate', 0, 1, 1, 1, 1, 1, '{}', 3),
(128, 16, 'bride_name', 'text', 'Bride Name', 0, 1, 1, 1, 1, 1, '{}', 4),
(129, 16, 'bride_birthdate', 'date', 'Bride Birthdate', 0, 1, 1, 1, 1, 1, '{}', 5),
(130, 16, 'wedding_anniv', 'date', 'Wedding Anniv', 0, 1, 1, 1, 1, 1, '{}', 6),
(131, 16, 'contact_info', 'text_area', 'Contact Info', 0, 1, 1, 1, 1, 1, '{}', 7),
(132, 16, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 8),
(133, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(134, 4, 'supplier', 'text', 'Supplier', 0, 1, 1, 1, 1, 1, '{}', 7),
(135, 4, 'current_price', 'text', 'Current Price', 0, 1, 1, 1, 1, 1, '{}', 5),
(136, 4, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 8),
(148, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(149, 18, 'package', 'text', 'Package', 0, 1, 1, 1, 1, 1, '{}', 2),
(150, 18, 'location', 'text', 'Location', 0, 1, 1, 1, 1, 1, '{}', 3),
(151, 18, 'venue_caterers_fee', 'text', 'Venue Caterers Fee', 0, 1, 1, 1, 1, 1, '{}', 4),
(152, 18, 'types_services', 'text', 'Types Services', 0, 1, 1, 1, 1, 1, '{}', 5),
(153, 18, 'types_occasions', 'text', 'Types Occasions', 0, 1, 1, 1, 1, 1, '{}', 6),
(154, 18, 'types_stylings', 'text', 'Types Stylings', 0, 1, 1, 1, 1, 1, '{}', 7),
(155, 18, 'time', 'text', 'Time', 0, 1, 1, 1, 1, 1, '{}', 8),
(156, 18, 'date', 'text', 'Date', 0, 1, 1, 1, 1, 1, '{}', 9),
(157, 18, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 10),
(158, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(159, 5, 'product', 'text', 'Product', 0, 1, 1, 1, 1, 1, '{}', 6),
(160, 5, 'current_price', 'text', 'Current Price', 0, 1, 1, 1, 1, 1, '{}', 7),
(161, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(162, 20, 'package', 'text', 'Package', 0, 1, 1, 1, 1, 1, '{}', 2),
(163, 20, 'location', 'text', 'Location', 0, 1, 1, 1, 1, 1, '{}', 3),
(164, 20, 'venue_caterers_fee', 'text', 'Venue Caterers Fee', 0, 1, 1, 1, 1, 1, '{}', 4),
(165, 20, 'types_services', 'text', 'Types Services', 0, 1, 1, 1, 1, 1, '{}', 5),
(166, 20, 'types_occasions', 'text', 'Types Occasions', 0, 1, 1, 1, 1, 1, '{}', 6),
(167, 20, 'types_stylings', 'text', 'Types Stylings', 0, 1, 1, 1, 1, 1, '{}', 7),
(168, 20, 'time', 'text', 'Time', 0, 1, 1, 1, 1, 1, '{}', 8),
(169, 20, 'date', 'text', 'Date', 0, 1, 1, 1, 1, 1, '{}', 9),
(170, 20, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 10),
(171, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(172, 5, 'supplier_email', 'text', 'Supplier Email', 0, 1, 1, 1, 1, 1, '{}', 5),
(176, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(177, 21, 'supplier_name', 'text', 'Supplier Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(178, 21, 'agent_name', 'text', 'Agent Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(179, 21, 'agent_contact', 'text', 'Agent Contact', 0, 1, 1, 1, 1, 1, '{}', 4),
(180, 21, 'agent_email', 'text', 'Agent Email', 0, 1, 1, 1, 1, 1, '{}', 5),
(181, 21, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 6),
(182, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(183, 5, 'agents', 'text', 'Agents', 0, 1, 1, 1, 1, 1, '{}', 12);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-02-22 06:14:45', '2020-02-22 06:14:45'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-02-22 06:14:45', '2020-02-22 06:14:45'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2020-02-22 06:14:45', '2020-02-22 06:14:45'),
(4, 'ingredients', 'ingredients', 'Ingredient', 'Ingredients', NULL, 'App\\Ingredient', NULL, 'App\\Http\\Controllers\\Voyager\\IngredientsController', NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-02-27 09:52:31', '2020-04-14 02:52:09'),
(5, 'suppliers', 'suppliers', 'Supplier', 'Suppliers', NULL, 'App\\Supplier', NULL, 'App\\Http\\Controllers\\Voyager\\SuppliersController', NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-02-27 09:54:47', '2020-04-22 23:57:43'),
(6, 'recipes', 'recipes', 'Recipe', 'Recipes', NULL, 'App\\Recipe', NULL, 'App\\Http\\Controllers\\Voyager\\RecipesController', NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-02-27 09:58:29', '2020-02-27 10:58:26'),
(7, 'dishes', 'dishes', 'Dish', 'Dishes', NULL, 'App\\Dish', NULL, 'App\\Http\\Controllers\\Voyager\\DishesController', NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-02-27 11:00:44', '2020-04-15 02:08:06'),
(9, 'main_dishes', 'main-dishes', 'Main Dish', 'Main Dishes', NULL, 'App\\MainDish', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-02-27 11:18:32', '2020-02-27 11:18:32'),
(11, 'menu_dishes', 'menu-dishes', 'Menu Dish', 'Menu Dishes', NULL, 'App\\MenuDish', NULL, 'App\\Http\\Controllers\\Voyager\\MenuDishesController', NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-02-27 11:21:16', '2020-02-27 13:21:21'),
(12, 'materials', 'materials', 'Material', 'Materials', NULL, 'App\\Material', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-02-27 12:26:19', '2020-02-27 12:31:41'),
(13, 'services', 'services', 'Service', 'Services', NULL, 'App\\Service', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-02-27 12:26:48', '2020-02-27 12:32:14'),
(14, 'venues', 'venues', 'Location', 'Locations', NULL, 'App\\Venue', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-02-27 12:27:01', '2020-03-31 01:24:51'),
(15, 'packages', 'packages', 'Package', 'Packages', NULL, 'App\\Package', NULL, 'App\\Http\\Controllers\\Voyager\\PackagesController', NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-02-27 12:56:56', '2020-02-27 13:47:17'),
(16, 'clients', 'clients', 'Client', 'Clients', NULL, 'App\\Client', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-02-29 04:30:32', '2020-04-20 01:34:38'),
(18, 'sales', 'sales', 'Sale Tracking', 'Sales Tracking', NULL, 'App\\Sale', NULL, '\\App\\Http\\Controllers\\Voyager\\SalesController', NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-04-08 00:31:59', '2020-04-08 00:31:59'),
(20, 'purchase_orders', 'purchase-orders', 'Purchase Order', 'Purchase Orders', NULL, 'App\\PurchaseOrder', NULL, 'App\\Http\\Controllers\\Voyager\\PurchaseOrderController', NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-04-15 01:42:23', '2020-04-15 01:42:23'),
(21, 'supplier_agents', 'supplier-agents', 'Supplier Agent', 'Supplier Agents', NULL, 'App\\SupplierAgent', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-04-22 23:56:37', '2020-04-22 23:56:37');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `id` int(10) UNSIGNED NOT NULL,
  `dish_name` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dish_recipe_id` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_cost` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_price` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`id`, `dish_name`, `dish_recipe_id`, `category`, `unit_cost`, `unit_price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Dish 1', 'Recipe 1', 'main', '500', '1250', '2020-02-27 11:07:44', '2020-02-27 12:22:50', NULL),
(2, 'Dish 2', 'Recipe 1', 'sidedish', NULL, NULL, '2020-02-27 11:29:25', '2020-02-27 11:29:25', NULL),
(3, 'Main 1', 'Recipe 2', 'main', NULL, NULL, '2020-02-27 11:44:33', '2020-02-27 12:06:54', NULL),
(4, 'Main 2', NULL, 'main', NULL, NULL, '2020-02-27 11:44:39', '2020-02-27 11:44:39', NULL),
(5, 'Side 1', NULL, 'sidedish', NULL, NULL, '2020-02-27 11:44:56', '2020-02-27 11:44:56', NULL),
(6, 'Side 2', NULL, 'sidedish', NULL, NULL, '2020-02-27 11:45:03', '2020-02-27 11:45:03', NULL),
(7, 'Side 3', 'Recipe 1', 'sidedish', '600', '900', '2020-02-27 14:32:34', '2020-02-27 14:32:34', NULL),
(11, 'Hybrid', 'Hybrid Recipe', 'test', NULL, NULL, '2020-04-15 02:35:32', '2020-04-15 02:35:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_name` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_of_measurement` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_history` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `supplier` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_price` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id`, `item_name`, `weight`, `unit_of_measurement`, `price_history`, `created_at`, `updated_at`, `deleted_at`, `supplier`, `current_price`, `description`) VALUES
(1, 'Rice', '5', 'KG', NULL, '2020-02-27 09:53:14', '2020-02-27 09:53:14', NULL, NULL, NULL, NULL),
(2, 'Pork', '10', 'KG', '[null,\"50\"]', NULL, '2020-04-15 01:48:46', NULL, 'Supplier 1', '160', 'Porky'),
(3, 'Test', NULL, 'KG', '[\"234\",\"230\",\"232\"]', NULL, '2020-04-15 01:44:59', NULL, 'Supplier 1', '232', 'asdasd');

-- --------------------------------------------------------

--
-- Table structure for table `ingredient_price_histories`
--

CREATE TABLE `ingredient_price_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_name` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` int(10) UNSIGNED NOT NULL,
  `material_name` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_price` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_cost` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id`, `material_name`, `remarks`, `unit_price`, `unit_cost`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Material 1', 'asdasd', '100', '50', '2020-02-27 12:31:01', '2020-02-27 12:31:49', NULL),
(3, 'Material 2', NULL, '750', '500', '2020-02-27 14:07:55', '2020-02-27 14:07:55', NULL),
(4, 'Test', 'Test', '6', '4', '2020-04-21 02:04:22', '2020-04-21 02:08:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-02-22 06:14:45', '2020-02-22 06:14:45'),
(2, 'mockup', '2020-03-30 23:51:48', '2020-03-30 23:51:48');

-- --------------------------------------------------------

--
-- Table structure for table `menu_dishes`
--

CREATE TABLE `menu_dishes` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_name` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `side_dishes` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_dishes` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_dishes`
--

INSERT INTO `menu_dishes` (`id`, `menu_name`, `side_dishes`, `main_dishes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'menu 1', '[\"Dish 2\"]', '[\"Dish 1\"]', '2020-02-27 11:40:20', '2020-02-27 11:40:20', NULL),
(5, 'menu  2', '[\"Side 1\"]', '[\"Dish 1\"]', '2020-02-27 13:15:33', '2020-02-27 13:15:33', NULL),
(7, 'menu 3', '[\"Side 2\"]', '[\"Main 1\"]', '2020-02-27 13:16:41', '2020-02-27 13:16:41', NULL),
(8, 'Menu 4 Empty Test', '[\"N\\/A\"]', '[\"N\\/A\"]', '2020-02-27 13:20:37', '2020-02-27 13:20:37', NULL),
(9, 'Menu 5 One Empty Test', '[\"N\\/A\"]', '[\"Dish 1\"]', '2020-02-27 13:21:05', '2020-02-27 13:21:05', NULL),
(11, 'Sides Only', '[\"Side 3\"]', '[\"N\\/A\"]', '2020-02-27 14:33:17', '2020-02-27 14:33:17', NULL),
(12, 'modal test', '[\"Dish 2\",\"Side 1\"]', '[\"Dish 1\",\"Main 1\"]', '2020-04-14 02:02:31', '2020-04-14 02:02:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-calendar', '#000000', NULL, 1, '2020-02-22 06:14:45', '2020-03-31 01:21:37', 'voyager.dashboard', 'null'),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, 5, 6, '2020-02-22 06:14:45', '2020-02-22 06:17:06', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-people', '#000000', NULL, 4, '2020-02-22 06:14:45', '2020-04-15 01:42:36', 'voyager.users.index', 'null'),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 5, 7, '2020-02-22 06:14:45', '2020-02-22 06:17:11', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 6, '2020-02-22 06:14:45', '2020-04-15 01:42:36', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-02-22 06:14:45', '2020-02-22 06:17:04', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-02-22 06:14:45', '2020-02-22 06:17:04', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-02-22 06:14:45', '2020-02-22 06:17:04', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-02-22 06:14:45', '2020-02-22 06:17:04', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, 5, 8, '2020-02-22 06:14:45', '2020-02-22 06:17:12', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-02-22 06:14:45', '2020-02-22 06:17:04', 'voyager.hooks', NULL),
(12, 1, 'Ingredients', '', '_self', NULL, '#000000', 22, 1, '2020-02-27 09:52:31', '2020-03-31 01:23:30', 'voyager.ingredients.index', 'null'),
(13, 1, 'Suppliers', '', '_self', NULL, NULL, 22, 5, '2020-02-27 09:54:47', '2020-03-31 01:17:36', 'voyager.suppliers.index', NULL),
(14, 1, 'Recipes', '', '_self', NULL, '#000000', 22, 2, '2020-02-27 09:58:29', '2020-03-31 01:23:35', 'voyager.recipes.index', 'null'),
(15, 1, 'Dishes', '', '_self', NULL, '#000000', 22, 3, '2020-02-27 11:00:44', '2020-04-15 02:03:36', 'voyager.dishes.index', 'null'),
(18, 1, 'Menus', '', '_self', NULL, '#000000', 22, 4, '2020-02-27 11:21:17', '2020-04-15 02:03:36', 'voyager.menu-dishes.index', 'null'),
(22, 1, 'Profiles', '', '_self', 'voyager-folder', '#000000', NULL, 5, '2020-02-27 11:48:35', '2020-04-15 01:42:36', NULL, ''),
(23, 1, 'Materials', '', '_self', NULL, '#000000', 22, 8, '2020-02-27 12:26:19', '2020-04-22 23:56:48', 'voyager.materials.index', 'null'),
(24, 1, 'Services', '', '_self', NULL, '#000000', 22, 9, '2020-02-27 12:26:48', '2020-04-22 23:56:48', 'voyager.services.index', 'null'),
(25, 1, 'Locations', '', '_self', NULL, '#000000', 22, 10, '2020-02-27 12:27:01', '2020-04-22 23:56:48', 'voyager.venues.index', 'null'),
(26, 1, 'Packages', '', '_self', NULL, '#000000', 22, 11, '2020-02-27 12:56:56', '2020-04-22 23:56:48', 'voyager.packages.index', 'null'),
(27, 1, 'Clients', '', '_self', NULL, NULL, 22, 7, '2020-02-29 04:30:32', '2020-04-22 23:56:48', 'voyager.clients.index', NULL),
(28, 2, 'Dashboard', '/test', '_self', 'voyager-calendar', '#000000', NULL, 1, '2020-03-30 23:54:23', '2020-03-30 23:55:22', NULL, ''),
(29, 2, 'Current View', '/test', '_self', NULL, '#000000', 28, 1, '2020-03-30 23:55:00', '2020-03-30 23:55:23', NULL, ''),
(30, 2, 'Annual View', '/test', '_self', NULL, '#000000', 28, 2, '2020-03-30 23:55:14', '2020-03-30 23:55:24', NULL, ''),
(31, 2, 'Purchase Order', '/test', '_self', 'voyager-tag', '#000000', NULL, 12, '2020-03-30 23:55:49', '2020-03-30 23:55:49', NULL, ''),
(32, 2, 'Sales Tracking', '/test', '_self', 'voyager-basket', '#000000', NULL, 13, '2020-03-30 23:56:17', '2020-03-30 23:56:17', NULL, ''),
(33, 2, 'Profiles', '/test', '_self', 'voyager-folder', '#000000', NULL, 14, '2020-03-30 23:56:36', '2020-03-30 23:56:36', NULL, ''),
(34, 2, 'Users', '/test', '_self', 'voyager-people', '#000000', NULL, 15, '2020-03-30 23:56:46', '2020-03-30 23:57:10', NULL, ''),
(35, 2, 'Settings', '/test', '_self', 'voyager-settings', '#000000', NULL, 16, '2020-03-30 23:57:03', '2020-03-30 23:57:03', NULL, ''),
(39, 1, 'Sales Tracking', '', '_self', 'voyager-basket', '#000000', NULL, 3, '2020-04-08 00:31:59', '2020-04-15 01:42:36', 'voyager.sales.index', 'null'),
(41, 1, 'Purchase Orders', '', '_self', 'voyager-tag', '#000000', NULL, 2, '2020-04-15 01:42:23', '2020-04-15 01:42:40', 'voyager.purchase-orders.index', 'null'),
(42, 1, 'Supplier Agents', '', '_self', NULL, NULL, 22, 6, '2020-04-22 23:56:37', '2020-04-22 23:56:48', 'voyager.supplier-agents.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2020_04_22_095601_create_clients_table', 0),
(24, '2020_04_22_095601_create_data_rows_table', 0),
(25, '2020_04_22_095601_create_data_types_table', 0),
(26, '2020_04_22_095601_create_dishes_table', 0),
(27, '2020_04_22_095601_create_ingredient_price_histories_table', 0),
(28, '2020_04_22_095601_create_ingredients_table', 0),
(29, '2020_04_22_095601_create_materials_table', 0),
(30, '2020_04_22_095601_create_menu_dishes_table', 0),
(31, '2020_04_22_095601_create_menu_items_table', 0),
(32, '2020_04_22_095601_create_menus_table', 0),
(33, '2020_04_22_095601_create_packages_table', 0),
(34, '2020_04_22_095601_create_password_resets_table', 0),
(35, '2020_04_22_095601_create_permission_role_table', 0),
(36, '2020_04_22_095601_create_permissions_table', 0),
(37, '2020_04_22_095601_create_purchase_orders_table', 0),
(38, '2020_04_22_095601_create_recipes_table', 0),
(39, '2020_04_22_095601_create_roles_table', 0),
(40, '2020_04_22_095601_create_sales_table', 0),
(41, '2020_04_22_095601_create_services_table', 0),
(42, '2020_04_22_095601_create_settings_table', 0),
(43, '2020_04_22_095601_create_side_dishes_table', 0),
(44, '2020_04_22_095601_create_supplier_price_histories_table', 0),
(45, '2020_04_22_095601_create_suppliers_table', 0),
(46, '2020_04_22_095601_create_translations_table', 0),
(47, '2020_04_22_095601_create_user_roles_table', 0),
(48, '2020_04_22_095601_create_users_table', 0),
(49, '2020_04_22_095601_create_venues_table', 0),
(50, '2020_04_22_095603_add_foreign_keys_to_data_rows_table', 0),
(51, '2020_04_22_095603_add_foreign_keys_to_menu_items_table', 0),
(52, '2020_04_22_095603_add_foreign_keys_to_permission_role_table', 0),
(53, '2020_04_22_095603_add_foreign_keys_to_user_roles_table', 0),
(54, '2020_04_22_095603_add_foreign_keys_to_users_table', 0);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `menus` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `services` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `materials` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `venue` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_cost` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `menus_total_unit_cost` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menus_total_unit_price` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `services_total_cost` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `materials_total_cost` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `venue_total_cost` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_name` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `materials_total_price` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `venue_total_price` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `services_total_price` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_price` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `menus`, `services`, `materials`, `venue`, `total_cost`, `created_at`, `updated_at`, `menus_total_unit_cost`, `menus_total_unit_price`, `services_total_cost`, `materials_total_cost`, `venue_total_cost`, `package_name`, `materials_total_price`, `venue_total_price`, `services_total_price`, `total_price`) VALUES
(12, '[\"menu 1\"]', '[\"Service 1\"]', '[\"Material 2\"]', 'Venue 1', '51500', '2020-02-27 14:26:44', '2020-02-27 14:26:44', '500', '1250', '500', '500', '50000', 'test', '750', '70000', '1000', '73000'),
(13, '[\"N\\/A\"]', '[\"N\\/A\"]', '[\"N\\/A\"]', 'N/A', '0', '2020-02-27 14:30:10', '2020-02-27 14:30:10', '0', '0', '0', '0', '0', NULL, '0', '0', '0', '0'),
(14, '[\"Sides Only\"]', '[\"N\\/A\"]', '[\"N\\/A\"]', 'N/A', '600', '2020-02-27 14:33:41', '2020-02-27 14:33:41', '600', '900', '0', '0', '0', 'Sides', '0', '0', '0', '900'),
(15, '[\"Menu 5 One Empty Test\",\"Sides Only\"]', '[\"N\\/A\"]', '[\"N\\/A\"]', 'N/A', '1100', '2020-02-27 14:34:33', '2020-02-27 14:34:33', '1100', '2150', '0', '0', '0', 'Sides and Mains', '0', '0', '0', '2150');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-02-22 06:14:45', '2020-02-22 06:14:45'),
(2, 'browse_bread', NULL, '2020-02-22 06:14:45', '2020-02-22 06:14:45'),
(3, 'browse_database', NULL, '2020-02-22 06:14:45', '2020-02-22 06:14:45'),
(4, 'browse_media', NULL, '2020-02-22 06:14:45', '2020-02-22 06:14:45'),
(5, 'browse_compass', NULL, '2020-02-22 06:14:45', '2020-02-22 06:14:45'),
(6, 'browse_menus', 'menus', '2020-02-22 06:14:45', '2020-02-22 06:14:45'),
(7, 'read_menus', 'menus', '2020-02-22 06:14:45', '2020-02-22 06:14:45'),
(8, 'edit_menus', 'menus', '2020-02-22 06:14:45', '2020-02-22 06:14:45'),
(9, 'add_menus', 'menus', '2020-02-22 06:14:45', '2020-02-22 06:14:45'),
(10, 'delete_menus', 'menus', '2020-02-22 06:14:45', '2020-02-22 06:14:45'),
(11, 'browse_roles', 'roles', '2020-02-22 06:14:45', '2020-02-22 06:14:45'),
(12, 'read_roles', 'roles', '2020-02-22 06:14:45', '2020-02-22 06:14:45'),
(13, 'edit_roles', 'roles', '2020-02-22 06:14:45', '2020-02-22 06:14:45'),
(14, 'add_roles', 'roles', '2020-02-22 06:14:45', '2020-02-22 06:14:45'),
(15, 'delete_roles', 'roles', '2020-02-22 06:14:45', '2020-02-22 06:14:45'),
(16, 'browse_users', 'users', '2020-02-22 06:14:45', '2020-02-22 06:14:45'),
(17, 'read_users', 'users', '2020-02-22 06:14:45', '2020-02-22 06:14:45'),
(18, 'edit_users', 'users', '2020-02-22 06:14:45', '2020-02-22 06:14:45'),
(19, 'add_users', 'users', '2020-02-22 06:14:45', '2020-02-22 06:14:45'),
(20, 'delete_users', 'users', '2020-02-22 06:14:45', '2020-02-22 06:14:45'),
(21, 'browse_settings', 'settings', '2020-02-22 06:14:45', '2020-02-22 06:14:45'),
(22, 'read_settings', 'settings', '2020-02-22 06:14:45', '2020-02-22 06:14:45'),
(23, 'edit_settings', 'settings', '2020-02-22 06:14:45', '2020-02-22 06:14:45'),
(24, 'add_settings', 'settings', '2020-02-22 06:14:45', '2020-02-22 06:14:45'),
(25, 'delete_settings', 'settings', '2020-02-22 06:14:45', '2020-02-22 06:14:45'),
(26, 'browse_hooks', NULL, '2020-02-22 06:14:45', '2020-02-22 06:14:45'),
(27, 'browse_ingredients', 'ingredients', '2020-02-27 09:52:31', '2020-02-27 09:52:31'),
(28, 'read_ingredients', 'ingredients', '2020-02-27 09:52:31', '2020-02-27 09:52:31'),
(29, 'edit_ingredients', 'ingredients', '2020-02-27 09:52:31', '2020-02-27 09:52:31'),
(30, 'add_ingredients', 'ingredients', '2020-02-27 09:52:31', '2020-02-27 09:52:31'),
(31, 'delete_ingredients', 'ingredients', '2020-02-27 09:52:31', '2020-02-27 09:52:31'),
(32, 'browse_suppliers', 'suppliers', '2020-02-27 09:54:47', '2020-02-27 09:54:47'),
(33, 'read_suppliers', 'suppliers', '2020-02-27 09:54:47', '2020-02-27 09:54:47'),
(34, 'edit_suppliers', 'suppliers', '2020-02-27 09:54:47', '2020-02-27 09:54:47'),
(35, 'add_suppliers', 'suppliers', '2020-02-27 09:54:47', '2020-02-27 09:54:47'),
(36, 'delete_suppliers', 'suppliers', '2020-02-27 09:54:47', '2020-02-27 09:54:47'),
(37, 'browse_recipes', 'recipes', '2020-02-27 09:58:29', '2020-02-27 09:58:29'),
(38, 'read_recipes', 'recipes', '2020-02-27 09:58:29', '2020-02-27 09:58:29'),
(39, 'edit_recipes', 'recipes', '2020-02-27 09:58:29', '2020-02-27 09:58:29'),
(40, 'add_recipes', 'recipes', '2020-02-27 09:58:29', '2020-02-27 09:58:29'),
(41, 'delete_recipes', 'recipes', '2020-02-27 09:58:29', '2020-02-27 09:58:29'),
(42, 'browse_dishes', 'dishes', '2020-02-27 11:00:44', '2020-02-27 11:00:44'),
(43, 'read_dishes', 'dishes', '2020-02-27 11:00:44', '2020-02-27 11:00:44'),
(44, 'edit_dishes', 'dishes', '2020-02-27 11:00:44', '2020-02-27 11:00:44'),
(45, 'add_dishes', 'dishes', '2020-02-27 11:00:44', '2020-02-27 11:00:44'),
(46, 'delete_dishes', 'dishes', '2020-02-27 11:00:44', '2020-02-27 11:00:44'),
(52, 'browse_main_dishes', 'main_dishes', '2020-02-27 11:18:33', '2020-02-27 11:18:33'),
(53, 'read_main_dishes', 'main_dishes', '2020-02-27 11:18:33', '2020-02-27 11:18:33'),
(54, 'edit_main_dishes', 'main_dishes', '2020-02-27 11:18:33', '2020-02-27 11:18:33'),
(55, 'add_main_dishes', 'main_dishes', '2020-02-27 11:18:33', '2020-02-27 11:18:33'),
(56, 'delete_main_dishes', 'main_dishes', '2020-02-27 11:18:33', '2020-02-27 11:18:33'),
(57, 'browse_menu_dishes', 'menu_dishes', '2020-02-27 11:21:17', '2020-02-27 11:21:17'),
(58, 'read_menu_dishes', 'menu_dishes', '2020-02-27 11:21:17', '2020-02-27 11:21:17'),
(59, 'edit_menu_dishes', 'menu_dishes', '2020-02-27 11:21:17', '2020-02-27 11:21:17'),
(60, 'add_menu_dishes', 'menu_dishes', '2020-02-27 11:21:17', '2020-02-27 11:21:17'),
(61, 'delete_menu_dishes', 'menu_dishes', '2020-02-27 11:21:17', '2020-02-27 11:21:17'),
(62, 'browse_materials', 'materials', '2020-02-27 12:26:19', '2020-02-27 12:26:19'),
(63, 'read_materials', 'materials', '2020-02-27 12:26:19', '2020-02-27 12:26:19'),
(64, 'edit_materials', 'materials', '2020-02-27 12:26:19', '2020-02-27 12:26:19'),
(65, 'add_materials', 'materials', '2020-02-27 12:26:19', '2020-02-27 12:26:19'),
(66, 'delete_materials', 'materials', '2020-02-27 12:26:19', '2020-02-27 12:26:19'),
(67, 'browse_services', 'services', '2020-02-27 12:26:48', '2020-02-27 12:26:48'),
(68, 'read_services', 'services', '2020-02-27 12:26:48', '2020-02-27 12:26:48'),
(69, 'edit_services', 'services', '2020-02-27 12:26:48', '2020-02-27 12:26:48'),
(70, 'add_services', 'services', '2020-02-27 12:26:48', '2020-02-27 12:26:48'),
(71, 'delete_services', 'services', '2020-02-27 12:26:48', '2020-02-27 12:26:48'),
(72, 'browse_venues', 'venues', '2020-02-27 12:27:01', '2020-02-27 12:27:01'),
(73, 'read_venues', 'venues', '2020-02-27 12:27:01', '2020-02-27 12:27:01'),
(74, 'edit_venues', 'venues', '2020-02-27 12:27:01', '2020-02-27 12:27:01'),
(75, 'add_venues', 'venues', '2020-02-27 12:27:01', '2020-02-27 12:27:01'),
(76, 'delete_venues', 'venues', '2020-02-27 12:27:01', '2020-02-27 12:27:01'),
(77, 'browse_packages', 'packages', '2020-02-27 12:56:56', '2020-02-27 12:56:56'),
(78, 'read_packages', 'packages', '2020-02-27 12:56:56', '2020-02-27 12:56:56'),
(79, 'edit_packages', 'packages', '2020-02-27 12:56:56', '2020-02-27 12:56:56'),
(80, 'add_packages', 'packages', '2020-02-27 12:56:56', '2020-02-27 12:56:56'),
(81, 'delete_packages', 'packages', '2020-02-27 12:56:56', '2020-02-27 12:56:56'),
(82, 'browse_clients', 'clients', '2020-02-29 04:30:32', '2020-02-29 04:30:32'),
(83, 'read_clients', 'clients', '2020-02-29 04:30:32', '2020-02-29 04:30:32'),
(84, 'edit_clients', 'clients', '2020-02-29 04:30:32', '2020-02-29 04:30:32'),
(85, 'add_clients', 'clients', '2020-02-29 04:30:32', '2020-02-29 04:30:32'),
(86, 'delete_clients', 'clients', '2020-02-29 04:30:32', '2020-02-29 04:30:32'),
(92, 'browse_sales', 'sales', '2020-04-08 00:31:59', '2020-04-08 00:31:59'),
(93, 'read_sales', 'sales', '2020-04-08 00:31:59', '2020-04-08 00:31:59'),
(94, 'edit_sales', 'sales', '2020-04-08 00:31:59', '2020-04-08 00:31:59'),
(95, 'add_sales', 'sales', '2020-04-08 00:31:59', '2020-04-08 00:31:59'),
(96, 'delete_sales', 'sales', '2020-04-08 00:31:59', '2020-04-08 00:31:59'),
(102, 'browse_purchase_orders', 'purchase_orders', '2020-04-15 01:42:23', '2020-04-15 01:42:23'),
(103, 'read_purchase_orders', 'purchase_orders', '2020-04-15 01:42:23', '2020-04-15 01:42:23'),
(104, 'edit_purchase_orders', 'purchase_orders', '2020-04-15 01:42:23', '2020-04-15 01:42:23'),
(105, 'add_purchase_orders', 'purchase_orders', '2020-04-15 01:42:23', '2020-04-15 01:42:23'),
(106, 'delete_purchase_orders', 'purchase_orders', '2020-04-15 01:42:23', '2020-04-15 01:42:23'),
(107, 'browse_supplier_agents', 'supplier_agents', '2020-04-22 23:56:37', '2020-04-22 23:56:37'),
(108, 'read_supplier_agents', 'supplier_agents', '2020-04-22 23:56:37', '2020-04-22 23:56:37'),
(109, 'edit_supplier_agents', 'supplier_agents', '2020-04-22 23:56:37', '2020-04-22 23:56:37'),
(110, 'add_supplier_agents', 'supplier_agents', '2020-04-22 23:56:37', '2020-04-22 23:56:37'),
(111, 'delete_supplier_agents', 'supplier_agents', '2020-04-22 23:56:37', '2020-04-22 23:56:37');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
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
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `package` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `venue_caterers_fee` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `types_services` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `types_occasions` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `types_stylings` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` time DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `recipe_name` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ingredient_name` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ingredient_weight` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `created_at`, `updated_at`, `deleted_at`, `recipe_name`, `ingredient_name`, `ingredient_weight`) VALUES
(10, '2020-02-27 11:04:42', '2020-02-27 11:04:42', NULL, 'Recipe 1', '[\"1\",\"Pork\"]', '[\"2\",\"1\"]'),
(11, '2020-02-27 12:06:38', '2020-02-27 12:06:38', NULL, 'Recipe 2', '[\"1\",\"Pork\"]', '[\"2\",\"3\"]'),
(13, '2020-04-15 01:44:16', '2020-04-15 01:44:16', NULL, 'Recipe 3', '[\"1\",\"Pork\",\"Test\"]', '[\"1\",\"2\",\"3\"]'),
(16, '2020-04-15 02:35:32', '2020-04-15 02:35:32', NULL, 'Hybrid Recipe', '[\"1\",\"Pork\",\"Test\"]', '[\"1\",\"2\",\"3\"]');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-02-22 06:14:45', '2020-02-22 06:14:45'),
(2, 'user', 'Normal User', '2020-02-22 06:14:45', '2020-02-22 06:14:45');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `package` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `venue_caterers_fee` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `types_services` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `types_occasions` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `types_stylings` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` time DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_name` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_cost` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_price` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name`, `remarks`, `unit_cost`, `unit_price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Service 1', 'Test Service', '500', '1000', '2020-02-27 12:32:32', '2020-02-27 12:32:38', NULL),
(2, 'Test', 'Test', '3000', '5000', '2020-04-21 02:10:12', '2020-04-21 02:12:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\February2020\\CJLSZVtXmWg7qIgEI3Jv.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Cunanans', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Cunanas Admin Panel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\February2020\\0QsU95pzPqxYre6kPjBr.gif', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\February2020\\xLAmh3RnMY82oDzNljKb.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `side_dishes`
--

CREATE TABLE `side_dishes` (
  `id` int(10) UNSIGNED NOT NULL,
  `manu_name` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dish_name` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dish_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `supplier_name` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_address` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_contact` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_histories_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `product` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_price` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_email` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agents` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `supplier_name`, `supplier_address`, `supplier_contact`, `price_histories_id`, `created_at`, `updated_at`, `deleted_at`, `product`, `current_price`, `supplier_email`, `agents`) VALUES
(1, 'Supplier 1', NULL, NULL, NULL, '2020-02-27 09:56:51', '2020-02-27 09:56:51', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_agents`
--

CREATE TABLE `supplier_agents` (
  `id` int(10) UNSIGNED NOT NULL,
  `supplier_name` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent_name` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent_contact` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent_email` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_price_histories`
--

CREATE TABLE `supplier_price_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$FZYPuNuCOcRAqR12QCWi1uv05HuIb8x0DWfBI30MZ4qCIq.qc52Qm', NULL, NULL, '2020-02-22 06:15:34', '2020-02-22 06:15:48');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE `venues` (
  `id` int(10) UNSIGNED NOT NULL,
  `venue_name` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `venue_location` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_cost` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_price` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`id`, `venue_name`, `venue_location`, `remarks`, `unit_cost`, `unit_price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Venue 1', 'Makati City', 'Test Venue 1', '50000', '70000', '2020-02-27 12:33:35', '2020-02-27 12:33:35', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ingredient_price_histories`
--
ALTER TABLE `ingredient_price_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_dishes`
--
ALTER TABLE `menu_dishes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `side_dishes`
--
ALTER TABLE `side_dishes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_agents`
--
ALTER TABLE `supplier_agents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_price_histories`
--
ALTER TABLE `supplier_price_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indexes for table `venues`
--
ALTER TABLE `venues`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ingredient_price_histories`
--
ALTER TABLE `ingredient_price_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_dishes`
--
ALTER TABLE `menu_dishes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `side_dishes`
--
ALTER TABLE `side_dishes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier_agents`
--
ALTER TABLE `supplier_agents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier_price_histories`
--
ALTER TABLE `supplier_price_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
