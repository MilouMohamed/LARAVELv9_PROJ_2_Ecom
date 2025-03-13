-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 13 mars 2025 à 23:29
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecom_3_lar_v9v1`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `pathImage` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `pathImage`, `created_at`, `updated_at`) VALUES
(1, 'fawakih', 'descrip 1', 'assets/img/products/product-img-1.jpg', '2025-03-08 16:21:54', '2025-03-08 16:21:54'),
(2, 'khodar', 'descpt 2', 'assets/img/products/product-img-2.jpg', '2025-03-08 16:21:54', '2025-03-08 16:21:54'),
(3, 'Categor 3', 'descrip 3', 'assets/img/products/product-img-6.jpg', '2025-03-08 16:21:54', '2025-03-08 16:21:54'),
(4, 'Categor 4', 'descpt 4', 'assets/img/products/product-img-3.jpg', '2025-03-08 16:21:54', '2025-03-08 16:21:54'),
(5, 'Categor   5', 'descrip 5', 'assets/img/products/product-img-4.jpg', '2025-03-08 16:21:54', '2025-03-08 16:21:54'),
(6, 'Categor 6', 'descpt 6', 'assets/img/products/product-img-5.jpg', '2025-03-08 16:21:54', '2025-03-08 16:21:54');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(18, '2014_10_12_000000_create_users_table', 1),
(19, '2014_10_12_100000_create_password_resets_table', 1),
(20, '2019_08_19_000000_create_failed_jobs_table', 1),
(21, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(22, '2025_03_07_214653_create_categories_table', 1),
(23, '2025_03_07_215005_create_produits_table', 1),
(25, '2025_03_12_164116_create_reviews_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `pathImage` text DEFAULT NULL,
  `price` decimal(8,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `quantite` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `categorie_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id`, `name`, `description`, `pathImage`, `price`, `quantite`, `created_at`, `updated_at`, `categorie_id`) VALUES
(7, 'Prod 3', 'descriptin 3descriptin 3descriptin 3descriptin 3descriptin 3descriptin 3descriptin 3descriptin 3descriptin 3descriptin 3descriptin 3descriptin 3descriptin 3descriptin 3descriptin 3', '/assets/img/products/product-img-2.jpg', 700.00, 20, '2025-03-08 16:21:54', '2025-03-08 16:21:54', 3),
(8, 'Tv Al Lg', 'descriptin 4descriptin 4descriptin 4descriptin 4descriptin 4descriptin 4descriptin 4descriptin 4descriptin 4descriptin 4descriptin 4descriptin 4descriptin 4descriptin 4descriptin 4', '/assets/img/products/product-img-4.jpg', 1200.00, 20, '2025-03-08 16:21:54', '2025-03-13 18:14:03', 3),
(9, 'ktab', 'descriptin 5descriptin 5descriptin 5descriptin 5descriptin 5descriptin 5descriptin 5descriptin 5descriptin 5descriptin 5descriptin 5descriptin 5descriptin 5descriptin 5descriptin 5', '/assets/img/products/product-img-5.jpg', 500.00, 320, '2025-03-08 16:21:54', '2025-03-08 16:21:54', 6),
(10, 'Prod 6', 'descriptin 6descriptin 6descriptin 6descriptin 6descriptin 6descriptin 6descriptin 6descriptin 6descriptin 6descriptin 6descriptin 6descriptin 6descriptin 6descriptin 6descriptin 6', '/assets/img/products/product-img-6.jpg', 300.00, 1230, '2025-03-08 16:21:54', '2025-03-08 16:21:54', 1),
(11, 'moto', 'descriptin 7descriptin 7descriptin 7descriptin 7descriptin 7descriptin 7descriptin 7descriptin 7descriptin 7descriptin 7descriptin 7descriptin 7descriptin 7descriptin 7descriptin 7', '/assets/img/products/product-img-2.jpg', 100.00, 720, '2025-03-08 16:21:54', '2025-03-08 16:21:54', 1),
(12, 'pc ', 'descriptin 8descriptin 8descriptin 8descriptin 8descriptin 8descriptin 8descriptin 8descriptin 8descriptin 8descriptin 8descriptin 8descriptin 8descriptin 8descriptin 8descriptin 8', '/assets/img/products/product-img-3.jpg', 6100.00, 420, '2025-03-08 16:21:54', '2025-03-08 16:21:54', 6),
(13, 'Prod 9', 'descriptin 9descriptin 9descriptin 9descriptin 9descriptin 9descriptin 9descriptin 9descriptin 9descriptin 9descriptin 9descriptin 9descriptin 9descriptin 9descriptin 9descriptin 9', '/assets/img/products/product-img-1.jpg', 8100.00, 210, '2025-03-08 16:21:54', '2025-03-08 16:21:54', 4),
(14, 'Prod update 2', 'descriptin 61111111111111111111222222222222222222 33333333333333 11', '/assets/img/products/product-img-2.jpg', 22.00, 33, '2025-03-08 16:21:54', '2025-03-12 15:57:02', 1),
(18, 'lenovo tv', 'descriptin 14descriptin 14descriptin 14descriptin 14descriptin 14descriptin 14descriptin 14descriptin 14descriptin 14descriptin 14descriptin 14descriptin 14descriptin 14descriptin 14descriptin 14', '/assets/img/products/product-img-4.jpg', 100.00, 20, '2025-03-08 16:21:54', '2025-03-08 16:21:54', 2),
(19, 'Prod 15', 'descriptin 15descriptin 15descriptin 15descriptin 15descriptin 15descriptin 15descriptin 15descriptin 15descriptin 15descriptin 15descriptin 15descriptin 15descriptin 15descriptin 15descriptin 15', '/assets/img/products/product-img-3.jpg', 500.00, 320, '2025-03-08 16:21:54', '2025-03-08 16:21:54', 6),
(28, 'Name is', 'form  Description  form from Description   Description   Description   Description', 'upload/Prod_67d3129705985.png', 100.00, 300, '2025-03-13 16:49:55', '2025-03-13 17:15:03', 2),
(29, 'Name hh22', 'hhhh 22 fille form  Description  form from Description   Description   Description   Description', 'upload/Prod_67d3133a60413.png', 999.00, 333, '2025-03-13 17:16:01', '2025-03-13 17:28:38', 2);

-- --------------------------------------------------------

--
-- Structure de la table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `pathImg` text NOT NULL DEFAULT 'assets/img/avaters/avatar2.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `email`, `phone`, `subject`, `message`, `pathImg`, `created_at`, `updated_at`) VALUES
(1, 'Yassine dev', 'yassine@gmail.df', '0633221144', 'develeppeur', 'mesage ici mesage ici mesage ici mesage ici mesage ici mesage ici mesage ici mesage ici ', 'assets/img/avaters/avatar2.png', NULL, NULL),
(2, 'khalid dc', 'khalid@gmail.com', '0655446633', 'professeur', 'emrce poue  emrce poue  emrce poue  emrce poue  emrce poue  emrce poue  ', 'assets/img/avaters/avatar1.png', NULL, NULL),
(3, 'Yassine dev', 'yassine@gmail.df', '0633221144', 'develeppeur', 'mesage ici mesage ici mesage ici mesage ici mesage ici mesage ici mesage ici mesage ici ', 'assets/img/avaters/avatar2.png', NULL, NULL),
(4, 'khalid dc', 'khalid@gmail.com', '0655446633', 'professeur', 'emrce poue  emrce poue  emrce poue  emrce poue  emrce poue  emrce poue  ', 'assets/img/avaters/avatar3.png', NULL, NULL),
(5, 'abdallah', 'abdallae@gmail.df', '063669955', 'cemerical', 'mesage ici mesage ici mesage ici mesage ici mesage ici mesage ici mesage ici mesage ici ', 'assets/img/avaters/avatar2.png', NULL, NULL),
(6, 'nour eddine dc', 'eddine@gmail.com', '06555425', 'Condeceur', 'emrce poue  emrce poue  emrce poue  emrce poue  emrce poue  emrce poue  ', 'assets/img/avaters/avatar3.png', NULL, NULL),
(7, 'rabi3', 'rabi3@gmail.com', '002233565', 'ecom', 'No Message here 00112235', 'assets/img/avaters/avatar2.png', '2025-03-12 18:09:52', '2025-03-12 18:09:52'),
(8, 'rabi3', 'rabi3@gmail.com', '002233565', 'ecom', 'No Message here 00112235', 'assets/img/avaters/avatar2.png', '2025-03-12 18:11:13', '2025-03-12 18:11:13'),
(9, 'mohamed', 'mohamed@gmail.com', '0633556699', 'derecteur', 'her msg', 'assets/img/avaters/avatar2.png', '2025-03-12 18:18:11', '2025-03-12 18:18:11');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produits_categorie_id_foreign` (`categorie_id`);

--
-- Index pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `produits_categorie_id_foreign` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
