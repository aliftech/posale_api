-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Nov 2021 pada 08.15
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `posale`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `name` varchar(100) NOT NULL,
  `photo` text NOT NULL,
  `role` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `created` varchar(100) NOT NULL,
  `last_login` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `email`, `username`, `password`, `name`, `photo`, `role`, `position`, `phone`, `address`, `gender`, `created`, `last_login`) VALUES
(2, 'superadmin@posale.com', 'Superadmin', '$2y$10$tK3K13jf7bLlt72bNkHSP.3UWut5bvpXzrvuS1iLgaqzW7hyQA3R6', 'Admin Posale', 'default.png', 'Superadmin', '', '', '', 'Male', '2021-10-16 09:45:10', '2021-11-05 13:42:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `code` varchar(200) NOT NULL,
  `brand` varchar(200) NOT NULL,
  `created_by` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `brands`
--

INSERT INTO `brands` (`id`, `code`, `brand`, `created_by`, `created_at`) VALUES
(1, '0001', 'Indomie', 'Superadmin', '2021-10-21 14:19:45'),
(2, '0002', 'Apple', 'Superadmin', '2021-10-21 14:31:05'),
(4, '0004', 'Lenovo', 'Superadmin', '2021-10-21 14:46:50'),
(7, '0003', 'Sedaap', 'Superadmin', '2021-10-22 15:27:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `created_by` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `category`, `created_by`, `created_at`) VALUES
(1, 'Food', 'Superadmin', '2021-10-16 14:20:15'),
(3, 'Soft Drink', 'Superadmin', '2021-10-23 14:47:06'),
(4, 'Electronic', 'Superadmin', '2021-10-23 14:47:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `created_by` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`id`, `name`, `address`, `phone`, `created_by`, `created_at`) VALUES
(1, 'Someone', '-', '00000000', 'Superadmin', '2021-10-16 14:44:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `genders`
--

CREATE TABLE `genders` (
  `id` int(11) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `created_by` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `genders`
--

INSERT INTO `genders` (`id`, `gender`, `created_by`, `created_at`) VALUES
(1, 'Male', 'Superadmin', '2021-10-16 15:01:22'),
(2, 'Female', 'Superadmin', '2021-10-16 15:01:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `icons`
--

CREATE TABLE `icons` (
  `id` int(11) NOT NULL,
  `icon` varchar(250) NOT NULL,
  `created_by` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `icons`
--

INSERT INTO `icons` (`id`, `icon`, `created_by`, `created_at`) VALUES
(1, 'zmdi zmdi-home', 'Superadmin', '2021-10-29 14:49:43'),
(2, 'zmdi zmdi-label', 'Superadmin', '2021-10-29 16:01:59'),
(3, 'zmdi zmdi-key', 'Superadmin', '2021-10-29 16:03:21'),
(4, 'zmdi zmdi-receipt', 'Superadmin', '2021-10-29 16:04:37'),
(5, 'zmdi zmdi-storage', 'Superadmin', '2021-10-29 16:05:35'),
(6, 'zmdi zmdi-settings', 'Superadmin', '2021-10-29 16:07:01'),
(7, 'zmdi zmdi-sort-amount-desc', 'Superadmin', '2021-10-29 16:09:00'),
(8, 'zmdi zmdi-tag', 'Superadmin', '2021-10-29 16:11:54'),
(9, 'zmdi zmdi-store', 'Superadmin', '2021-10-29 16:12:53'),
(10, 'zmdi zmdi-repeat', 'Superadmin', '2021-10-29 16:14:01'),
(11, 'zmdi zmdi-dropbox', 'Superadmin', '2021-10-29 16:15:45'),
(12, 'zmdi zmdi-view-list-alt', 'Superadmin', '2021-10-29 16:16:45'),
(13, 'zmdi zmdi-view-dashboard', 'Superadmin', '2021-10-29 16:18:19'),
(14, 'zmdi zmdi-truck', 'Superadmin', '2021-10-29 16:19:29'),
(15, 'zmdi zmdi-shopping-cart', 'Superadmin', '2021-10-29 16:20:15'),
(16, 'zmdi zmdi-forward', 'Superadmin', '2021-10-29 16:21:24'),
(17, 'zmdi zmdi-swap', 'Superadmin', '2021-10-29 16:21:41'),
(18, 'zmdi zmdi-long-arrow-return', 'Superadmin', '2021-10-29 16:22:09'),
(19, 'zmdi zmdi-arrow-merge', 'Superadmin', '2021-10-29 16:22:27'),
(20, 'zmdi zmdi-check-all', 'Superadmin', '2021-10-29 16:24:48'),
(21, 'zmdi zmdi-check', 'Superadmin', '2021-10-29 16:25:30'),
(22, 'zmdi zmdi-account', 'Superadmin', '2021-10-29 16:26:20'),
(23, 'zmdi zmdi-accounts', 'Superadmin', '2021-10-29 16:28:52'),
(24, 'zmdi zmdi-face', 'Superadmin', '2021-10-29 16:29:55'),
(25, 'zmdi zmdi-shopping-basket', 'Superadmin', '2021-10-31 10:01:39'),
(26, 'zmdi zmdi-label-alt', 'Superadmin', '2021-10-31 10:04:26'),
(27, 'zmdi zmdi-globe', 'Superadmin', '2021-10-31 10:04:45'),
(28, 'zmdi zmdi-lock', 'Superadmin', '2021-10-31 10:05:15'),
(29, 'zmdi zmdi-link', 'Superadmin', '2021-10-31 10:05:34'),
(30, 'zmdi zmdi-filter-list', 'Superadmin', '2021-10-31 10:06:02'),
(31, 'zmdi zmdi-dialpad', 'Superadmin', '2021-10-31 10:06:17'),
(32, 'zmdi zmdi-drink', 'Superadmin', '2021-10-31 10:06:35'),
(33, 'zmdi zmdi-collection-item', 'Superadmin', '2021-10-31 10:07:21'),
(34, 'zmdi zmdi-coffee', 'Superadmin', '2021-10-31 10:07:40'),
(35, 'zmdi zmdi-code', 'Superadmin', '2021-10-31 10:07:56'),
(36, 'zmdi zmdi-chart', 'Superadmin', '2021-10-31 10:08:17'),
(37, 'zmdi zmdi-chart-donut', 'Superadmin', '2021-10-31 10:08:33'),
(38, 'zmdi zmdi-city-alt', 'Superadmin', '2021-10-31 10:08:50'),
(39, 'zmdi zmdi-case', 'Superadmin', '2021-10-31 10:09:10'),
(40, 'zmdi zmdi-case-check', 'Superadmin', '2021-10-31 10:09:24'),
(41, 'zmdi zmdi-bookmark', 'Superadmin', '2021-10-31 10:09:40'),
(42, 'zmdi zmdi-assignment-check', 'Superadmin', '2021-10-31 10:10:05'),
(43, 'zmdi zmdi-balance', 'Superadmin', '2021-10-31 10:11:38'),
(44, 'zmdi zmdi-assignment', 'Superadmin', '2021-10-31 10:11:57'),
(45, 'zmdi zmdi-flag', 'Superadmin', '2021-10-31 10:12:40'),
(46, 'zmdi zmdi-file-text', 'Superadmin', '2021-10-31 10:13:09'),
(47, 'zmdi zmdi-money', 'Superadmin', '2021-10-31 10:18:58'),
(48, 'zmdi zmdi-money-box', 'Superadmin', '2021-10-31 10:19:12'),
(49, 'zmdi zmdi-print', 'Superadmin', '2021-10-31 10:19:44'),
(50, 'zmdi zmdi-view-module', 'Superadmin', '2021-10-31 10:20:36'),
(52, 'zmdi zmdi-widgets', 'Superadmin', '2021-10-31 10:29:50'),
(53, 'zmdi zmdi-menu', 'Superadmin', '2021-10-31 12:11:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `inventories`
--

CREATE TABLE `inventories` (
  `id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(250) NOT NULL,
  `image` text NOT NULL,
  `image_path` text NOT NULL,
  `product` varchar(200) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `category` varchar(200) NOT NULL,
  `type` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `suplyer` varchar(200) NOT NULL,
  `stock` varchar(200) NOT NULL,
  `min_stock` varchar(250) NOT NULL,
  `buy_price` varchar(200) NOT NULL,
  `sell_price` varchar(200) NOT NULL,
  `profit` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `created_by` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `inventories`
--

INSERT INTO `inventories` (`id`, `code`, `name`, `image`, `image_path`, `product`, `brand`, `category`, `type`, `description`, `suplyer`, `stock`, `min_stock`, `buy_price`, `sell_price`, `profit`, `status`, `created_by`, `created_at`) VALUES
(1, '0001', 'SKU Sedaap Goreng Cup Noodle', 'mie-sedap-cup.jpg', 'http://localhost:8080/image/product/', 'Cup Noodle', 'Sedaap', 'Food', 'Goods', 'Delicious Cup Noodle', 'PT. Hura-Hura', '100', '5', '2500', '3500', '1000', 'Available', 'Superadmin', '2021-10-16 16:10:28'),
(2, '0002', 'SKU Indomie Goreng', 'Indomie_2.jpg', 'http://localhost:8080/image/product/', 'Instant Noodle', 'Indomie', 'Food', 'Goods', 'Indomie goreng is delicious noodle', 'PT. Hura-Hura', '50', '5', '1500', '2500', '1000', 'Available', 'Superadmin', '2021-10-24 13:04:35'),
(3, '0003', 'SKU Mie Sedaap Goreng', 'e9f6959bbb7bba999952fb757e69150a.jpg_720x720q80.jpg', 'http://localhost:8080/image/product/', 'Instant Noodle', 'Sedaap', 'Food', 'Goods', 'Delicious fried noodle', 'PT. Hura-Hura', '50', '5', '2000', '3000', '1000', 'Available', 'Superadmin', '2021-10-24 13:16:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `menu` varchar(250) NOT NULL,
  `icon` varchar(250) NOT NULL,
  `link` varchar(250) NOT NULL,
  `parent` varchar(250) NOT NULL,
  `number` varchar(250) NOT NULL,
  `created_by` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id`, `menu`, `icon`, `link`, `parent`, `number`, `created_by`, `created_at`) VALUES
(1, 'Dashboard', 'zmdi zmdi-view-dashboard', '/dashboard', '', '1', 'Superadmin', '2021-10-31 11:18:43'),
(2, 'Sales', 'zmdi zmdi-shopping-cart', '#', '', '2', 'Superadmin', '2021-10-31 11:19:52'),
(3, 'Customers', 'zmdi zmdi-face', '/customer_list', '', '6', 'Superadmin', '2021-10-31 11:21:36'),
(4, 'Purchases', 'zmdi zmdi-money', '#', '', '7', 'Superadmin', '2021-10-31 11:22:56'),
(5, 'Suplyer', 'zmdi zmdi-truck', '/suplyer_list', '', '10', 'Superadmin', '2021-10-31 11:23:47'),
(6, 'Items', 'zmdi zmdi-widgets', '#', '', '11', 'Superadmin', '2021-10-31 11:55:24'),
(7, 'Authorization', 'zmdi zmdi-key', '#', '', '17', 'Superadmin', '2021-10-31 11:55:47'),
(8, 'POS', 'zmdi zmdi-print', '/pos', 'Sales', '3', 'Superadmin', '2021-10-31 11:57:38'),
(9, 'Sales List', 'zmdi zmdi-view-list-alt', '/sales-list', 'Sales', '4', 'Superadmin', '2021-10-31 11:58:29'),
(10, 'Sales Return', 'zmdi zmdi-repeat', '/sales-return', 'Sales', '5', 'Superadmin', '2021-10-31 11:59:35'),
(11, 'Purchase List', 'zmdi zmdi-view-list-alt', '/purchase-list', 'Purchases', '8', 'Superadmin', '2021-10-31 12:00:56'),
(12, 'Purchase Return', 'zmdi zmdi-repeat', '/purchase-return', 'Purchases', '9', 'Superadmin', '2021-10-31 12:01:41'),
(13, 'Inventories', 'zmdi zmdi-store', '/inventory', 'Items', '12', 'Superadmin', '2021-10-31 12:02:45'),
(14, 'Products', 'zmdi zmdi-collection-item', '/product', 'Items', '13', 'Superadmin', '2021-10-31 12:04:04'),
(15, 'Categories', 'zmdi zmdi-filter-list', '/category', 'Items', '14', 'Superadmin', '2021-10-31 12:04:54'),
(16, 'Types', 'zmdi zmdi-arrow-merge', '/type', 'Items', '15', 'Superadmin', '2021-10-31 12:05:58'),
(17, 'Brands', 'zmdi zmdi-label', 'brand', 'Items', '16', 'Superadmin', '2021-10-31 12:06:51'),
(18, 'Icons', 'zmdi zmdi-flag', '/icon', 'Authorization', '18', 'Superadmin', '2021-10-31 12:08:15'),
(20, 'Menu', 'zmdi zmdi-menu', '/menu', 'Authorization', '19', 'Superadmin', '2021-11-05 10:59:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-10-16-015757', 'App\\Database\\Migrations\\Admins', 'default', 'App', 1634349780, 1),
(2, '2021-10-16-025859', 'App\\Database\\Migrations\\Product', 'default', 'App', 1634353325, 2),
(3, '2021-10-16-030426', 'App\\Database\\Migrations\\Product', 'default', 'App', 1634353797, 3),
(4, '2021-10-16-031047', 'App\\Database\\Migrations\\Category', 'default', 'App', 1634353921, 4),
(5, '2021-10-16-031318', 'App\\Database\\Migrations\\Suplyer', 'default', 'App', 1634354297, 5),
(6, '2021-10-16-032343', 'App\\Database\\Migrations\\Inventory', 'default', 'App', 1634355068, 6),
(7, '2021-10-16-033527', 'App\\Database\\Migrations\\Purchase', 'default', 'App', 1634355593, 7),
(8, '2021-10-16-034108', 'App\\Database\\Migrations\\Sales', 'default', 'App', 1634355717, 8),
(9, '2021-10-16-035657', 'App\\Database\\Migrations\\Staff', 'default', 'App', 1634357268, 9),
(10, '2021-10-16-040845', 'App\\Database\\Migrations\\Staff', 'default', 'App', 1634357340, 10),
(11, '2021-10-16-042206', 'App\\Database\\Migrations\\Role', 'default', 'App', 1634358225, 11),
(12, '2021-10-16-042514', 'App\\Database\\Migrations\\Gender', 'default', 'App', 1634358376, 12),
(13, '2021-10-16-042654', 'App\\Database\\Migrations\\Position', 'default', 'App', 1634358475, 13),
(14, '2021-10-16-043534', 'App\\Database\\Migrations\\Type', 'default', 'App', 1634358994, 14),
(15, '2021-10-16-050519', 'App\\Database\\Migrations\\Customer', 'default', 'App', 1634360837, 15),
(16, '2021-10-16-050833', 'App\\Database\\Migrations\\Customer', 'default', 'App', 1634360926, 16),
(17, '2021-10-18-075607', 'App\\Database\\Migrations\\Brand', 'default', 'App', 1634543846, 17),
(18, '2021-10-29-071533', 'App\\Database\\Migrations\\Icon', 'default', 'App', 1635491808, 18),
(19, '2021-10-29-071930', 'App\\Database\\Migrations\\Menu', 'default', 'App', 1635492181, 19),
(20, '2021-10-29-072639', 'App\\Database\\Migrations\\RoleMenu', 'default', 'App', 1635492562, 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `position` varchar(100) NOT NULL,
  `created_by` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `positions`
--

INSERT INTO `positions` (`id`, `position`, `created_by`, `created_at`) VALUES
(1, 'CEO', 'Superadmin', '2021-10-17 09:47:19'),
(2, 'Owner', 'Superadmin', '2021-10-17 09:47:47'),
(4, 'Manager', 'Superadmin', '2021-10-17 09:48:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `product` varchar(200) NOT NULL,
  `created_by` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `code`, `product`, `created_by`, `created_at`) VALUES
(1, '0001', 'Cup Noodle', 'Superadmin', '2021-10-17 10:35:36'),
(2, '0002', 'Instant Noodle', 'Superadmin', '2021-10-23 15:38:48'),
(3, '0003', 'Smartphone', 'Superadmin', '2021-10-23 16:01:04'),
(4, '0004', 'Laptop', 'Superadmin', '2021-10-23 16:06:57'),
(14, '0005', 'Batery', 'Superadmin', '2021-10-23 16:29:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchases`
--

CREATE TABLE `purchases` (
  `id` int(11) NOT NULL,
  `product` varchar(100) NOT NULL,
  `category` varchar(200) NOT NULL,
  `type` varchar(250) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `suplyer` varchar(250) NOT NULL,
  `date_and_time` varchar(200) NOT NULL,
  `created_by` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` varchar(100) NOT NULL,
  `created_by` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_by`, `created_at`) VALUES
(1, 'Superadmin', 'Superadmin', '2021-11-05 11:26:04'),
(3, 'Adm_Retail', 'Superadmin', '2021-11-05 11:44:28'),
(4, 'Sales_Retail', 'Superadmin', '2021-11-05 11:44:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_menus`
--

CREATE TABLE `role_menus` (
  `id` int(11) NOT NULL,
  `role` varchar(250) NOT NULL,
  `number` varchar(250) NOT NULL,
  `menu` varchar(250) NOT NULL,
  `icon` varchar(250) NOT NULL,
  `link` varchar(250) NOT NULL,
  `parent` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL,
  `created_by` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `product` varchar(100) NOT NULL,
  `category` varchar(200) NOT NULL,
  `type` varchar(250) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `customer` varchar(200) NOT NULL,
  `date_and_time` varchar(200) NOT NULL,
  `created_by` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `employee_number` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `original_address` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(250) NOT NULL,
  `id_card_number` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `education` varchar(200) NOT NULL,
  `position` varchar(200) NOT NULL,
  `salary` varchar(200) NOT NULL,
  `photo` text NOT NULL,
  `joined_at` varchar(200) NOT NULL,
  `marital_status` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `created_by` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `suplyers`
--

CREATE TABLE `suplyers` (
  `id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `suplyer_name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `created_by` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `suplyers`
--

INSERT INTO `suplyers` (`id`, `code`, `suplyer_name`, `address`, `phone`, `created_by`, `created_at`) VALUES
(1, '0001', 'PT. Hura-Hura', 'Jl. Aspal No. 99, Etan Kali Lor Sawah', '00000000000', 'Superadmin', '2021-10-24 12:01:18'),
(2, '0002', 'PT. Makmur Tbk', 'Jl. Aspal No. 99,5', '0000000000', 'Superadmin', '2021-10-27 15:27:00'),
(3, '0002', 'PT. Makmur Sekali Tbk', 'Jl. Aspal No. 99,5 Etan Kali', '0000000000', 'Superadmin', '2021-10-27 15:27:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  `created_by` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `types`
--

INSERT INTO `types` (`id`, `type`, `created_by`, `created_at`) VALUES
(1, 'Raw Material', 'Superadmin', '2021-10-16 15:20:46'),
(2, 'Finished Good', 'Superadmin', '2021-10-16 15:21:07'),
(3, 'Semi Finished Good', 'Superadmin', '2021-10-22 16:09:02'),
(5, 'Goods', 'Superadmin', '2021-10-23 16:16:20');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role_menus`
--
ALTER TABLE `role_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `suplyers`
--
ALTER TABLE `suplyers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `genders`
--
ALTER TABLE `genders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `icons`
--
ALTER TABLE `icons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT untuk tabel `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `role_menus`
--
ALTER TABLE `role_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `suplyers`
--
ALTER TABLE `suplyers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
