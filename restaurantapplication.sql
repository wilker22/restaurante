-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04-Fev-2021 às 03:09
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `restaurantapplication`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Comida Junina', '2021-02-04 03:51:49', '2021-02-04 03:51:49'),
(2, 'Comida Chinesa', '2021-02-04 03:52:02', '2021-02-04 03:52:02'),
(3, 'Comida Japonesa', '2021-02-04 03:52:10', '2021-02-04 03:52:10'),
(4, 'Comida Italiana', '2021-02-04 03:52:22', '2021-02-04 03:52:22');

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `menus`
--

INSERT INTO `menus` (`id`, `name`, `price`, `image`, `description`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Pamonha', '5.00', '02042021010150601b477ed91bf.jpeg', 'Pão de Milho', 1, '2021-02-04 04:01:50', '2021-02-04 04:01:50'),
(2, 'Sushi', '20.00', '02042021010215601b47977eefc.jpeg', 'Sushi', 3, '2021-02-04 04:02:15', '2021-02-04 04:02:15'),
(3, 'Canjica', '22.00', '02042021010243601b47b3a58c1.jpeg', 'Canijca Junina', 1, '2021-02-04 04:02:43', '2021-02-04 04:02:43');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_02_28_041853_create_categories_table', 1),
(5, '2020_02_29_201206_create_menus_table', 1),
(6, '2020_03_11_051054_create_tables_table', 1),
(7, '2020_03_15_020716_create_sales_table', 1),
(8, '2020_03_15_021257_create_sale_details_table', 1),
(9, '2020_04_01_012301_add_role_feild_to_users', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `table_id` int(11) NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `total_recieved` decimal(8,2) NOT NULL DEFAULT 0.00,
  `change` decimal(8,2) NOT NULL DEFAULT 0.00,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sale_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `sales`
--

INSERT INTO `sales` (`id`, `table_id`, `table_name`, `user_id`, `user_name`, `total_price`, `total_recieved`, `change`, `payment_type`, `sale_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'M1', 1, 'admin', '27.00', '30.00', '3.00', 'cash', 'paid', '2021-02-04 04:43:03', '2021-02-04 04:43:34'),
(2, 1, 'M1', 1, 'admin', '47.00', '50.00', '3.00', 'cash', 'paid', '2021-02-04 04:44:52', '2021-02-04 04:45:10'),
(3, 1, 'M1', 1, 'admin', '5.00', '5.00', '0.00', 'cash', 'paid', '2021-02-04 04:45:37', '2021-02-04 04:49:12'),
(4, 2, 'M2', 1, 'admin', '5.00', '5.00', '0.00', 'cash', 'paid', '2021-02-04 04:52:25', '2021-02-04 04:57:21'),
(5, 1, 'M1', 1, 'admin', '5.00', '5.00', '0.00', 'cash', 'paid', '2021-02-04 04:57:39', '2021-02-04 05:03:04'),
(6, 1, 'M1', 1, 'admin', '5.00', '5.00', '0.00', 'cash', 'paid', '2021-02-04 05:05:03', '2021-02-04 05:05:12');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sale_details`
--

CREATE TABLE `sale_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'noConfirm',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `sale_details`
--

INSERT INTO `sale_details` (`id`, `sale_id`, `menu_id`, `menu_name`, `menu_price`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Pamonha', 5, 1, 'confirm', '2021-02-04 04:43:03', '2021-02-04 04:43:15'),
(2, 1, 3, 'Canjica', 22, 1, 'confirm', '2021-02-04 04:43:11', '2021-02-04 04:43:15'),
(3, 2, 3, 'Canjica', 22, 1, 'confirm', '2021-02-04 04:44:52', '2021-02-04 04:45:00'),
(4, 2, 1, 'Pamonha', 5, 1, 'confirm', '2021-02-04 04:44:53', '2021-02-04 04:45:00'),
(5, 2, 2, 'Sushi', 20, 1, 'confirm', '2021-02-04 04:44:56', '2021-02-04 04:45:00'),
(6, 3, 1, 'Pamonha', 5, 1, 'confirm', '2021-02-04 04:45:37', '2021-02-04 04:45:39'),
(7, 4, 1, 'Pamonha', 5, 1, 'confirm', '2021-02-04 04:52:25', '2021-02-04 04:52:27'),
(8, 5, 1, 'Pamonha', 5, 1, 'confirm', '2021-02-04 04:57:39', '2021-02-04 04:57:45'),
(9, 6, 1, 'Pamonha', 5, 1, 'confirm', '2021-02-04 05:05:03', '2021-02-04 05:05:05');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tables`
--

CREATE TABLE `tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'available',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tables`
--

INSERT INTO `tables` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'M1', 'available', '2021-02-04 04:03:03', '2021-02-04 05:05:12'),
(2, 'M2', 'available', '2021-02-04 04:03:10', '2021-02-04 04:52:35'),
(3, 'M3', 'available', '2021-02-04 04:03:15', '2021-02-04 04:03:15'),
(4, 'M4', 'available', '2021-02-04 04:03:20', '2021-02-04 04:03:20');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `role`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin@admin.com', NULL, '$2y$10$vIwJ9tWGvKoiERqn39ivf.nsOgdL.TM4gpeIu34jXMvhID8Bu3lca', NULL, NULL, NULL),
(2, 'Garçon', 'cashier', 'garcon@gmail.com', NULL, '$2y$10$DT2kVvhjsUVipQJMophBlOdcFlaH4krfXl9xjvu88ZIZI6qytUPHq', NULL, '2021-02-04 04:04:08', '2021-02-04 04:04:08'),
(3, 'wilker', 'admin', 'wilker-22@outlook.com', NULL, '$2y$10$xCNBd3UU/rA4.AXLJUshYegbEwTX4LO2M6PqIGlYJII9gjRyijo0y', NULL, '2021-02-04 04:04:21', '2021-02-04 04:04:21');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sale_details`
--
ALTER TABLE `sale_details`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `sale_details`
--
ALTER TABLE `sale_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
