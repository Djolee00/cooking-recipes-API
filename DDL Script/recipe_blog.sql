-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2022 at 05:40 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recipe_blog`
--

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
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `recipe_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id`, `name`, `quantity`, `recipe_id`, `created_at`, `updated_at`) VALUES
(1, 'Yukon gold potatoes', 3, 7, '2022-12-08 15:18:55', '2022-12-08 15:18:55'),
(2, 'Teaspoons kosher salt', 2, 1, '2022-12-08 15:18:55', '2022-12-08 15:18:55'),
(3, 'Cup extra virgin olive oil, divided', 3, 2, '2022-12-08 15:18:55', '2022-12-08 15:18:55'),
(4, 'Voluptatem sequi omnis autem.', 8, 8, '2022-12-08 15:18:55', '2022-12-08 15:18:55'),
(5, 'Dolor voluptas occaecati quia ullam qui beatae.', 11, 9, '2022-12-08 15:18:55', '2022-12-08 15:18:55'),
(6, 'Illum vel asperiores fuga dolor quo reprehenderit deserunt.', 10, 10, '2022-12-08 15:18:55', '2022-12-08 15:18:55'),
(7, 'Ovo je prvi sastojak', 10, 11, '2022-12-08 15:27:55', '2022-12-08 15:27:55');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_05_094645_create_recipes_table', 1),
(6, '2022_12_05_095542_change_num_of_servings_to_num_of_servings_in_recipes_table', 1),
(7, '2022_12_05_175852_create_steps_table', 1),
(8, '2022_12_05_180446_change_description_string_to_text_in_steps_table', 1),
(9, '2022_12_05_182908_add_column_user_id_to_recipes_table', 1),
(10, '2022_12_05_184404_create_ingredients_table', 1);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 14, 'auth_token', 'd470c3df01b0a9e53211c0e88f510d2e76236292f8b13b4ea4df9ea01fc0d04a', '[\"*\"]', NULL, NULL, '2022-12-08 15:22:19', '2022-12-08 15:22:19'),
(2, 'App\\Models\\User', 14, 'auth_token', 'a0b6ad610518ee1bd89e39fd31e40456ee8c34c30ffc58fbc19be5b2b3efeeeb', '[\"*\"]', '2022-12-08 15:24:04', NULL, '2022-12-08 15:22:40', '2022-12-08 15:24:04'),
(3, 'App\\Models\\User', 14, 'auth_token', '33fd5b964f010cd2992471082cea766f13124b1e1210b99a6a60e6ed373c3fe1', '[\"*\"]', '2022-12-08 15:27:55', NULL, '2022-12-08 15:27:46', '2022-12-08 15:27:55');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prep_time` int(11) NOT NULL,
  `cook_time` int(11) NOT NULL,
  `num_of_servings` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `title`, `prep_time`, `cook_time`, `num_of_servings`, `description`, `created_at`, `updated_at`, `published_at`, `user_id`) VALUES
(1, 'Vegetable Soup', 15, 10, 5, 'I love growing fresh herbs and right now the oregano in my herb pot is overgrowing! Greek Ribs is one tasty recipe using fresh oregano. Enjoy these ribs as an appetizer and serve with my homemade Tzatziki Sauce. As a main course these Greek marinated ribs are exceptional served with a tasty salad like my Santa Fe Salad. The marinade of garlic, oregano, lemon and onions pack some serious flavour! Make the marinade in the morning and let the ribs soak up the seasonings all day.', '2022-12-08 15:18:55', '2022-12-08 15:18:55', '2022-12-08 15:18:55', 1),
(2, 'Banana Pancakes', 10, 15, 4, 'Wake up on the right side of the bed with a stack of sweet, cozy, and simple banana pancakes. This top-rated banana pancake recipe is easy to make and it comes together in just 15 minutes, so you don\'t have to wake up early to enjoy a satisfying breakfast. Learn how to make, store, and serve the best banana pancakes ever.', '2022-12-08 15:18:55', '2022-12-08 15:18:55', '2022-12-08 15:18:55', 1),
(3, 'Officia excepturi illo soluta nemo inventore. Nulla sed repellendus porro est quae omnis animi. In sint quae voluptas. Molestiae et voluptates optio molestiae sunt est rerum.', 21, 29, 1, 'Impedit necessitatibus voluptas neque expedita sunt aperiam non nulla. Dolorem qui fuga sunt vitae. Iusto rerum illo omnis amet rerum veniam.', '2022-12-08 15:18:55', '2022-12-08 15:18:55', '2022-12-08 15:18:55', 6),
(4, 'Unde quisquam fugiat temporibus quasi. Saepe ea repudiandae sit voluptatem et. Quia hic corporis veniam numquam odit enim odit.', 13, 13, 1, 'Hic qui aut quaerat at. Accusantium aliquam ipsum provident perferendis placeat nobis quia. Doloremque expedita quam vel molestias.', '2022-12-08 15:18:55', '2022-12-08 15:18:55', '2022-12-08 15:18:55', 7),
(5, 'Non odio nobis dolor ut neque. Ex consequatur incidunt qui reprehenderit illo. Sed sint tempora esse odio. Ex aut voluptatem dignissimos dolor dolores laborum quia.', 22, 29, 2, 'Quidem assumenda cumque excepturi cupiditate voluptatem dolorum. Ea et deserunt saepe similique perferendis praesentium porro.', '2022-12-08 15:18:55', '2022-12-08 15:18:55', '2022-12-08 15:18:55', 8),
(6, 'Laudantium et rerum at et. Aut velit sed aut beatae. Adipisci in quisquam consequatur laudantium et voluptates dolorum.', 28, 29, 5, 'Qui atque et aut quisquam rerum quos a. Cupiditate nihil at culpa ut est eveniet. Laboriosam omnis qui eum fuga neque libero. Officiis maxime occaecati harum quos voluptate. Cum quasi ut et.', '2022-12-08 15:18:55', '2022-12-08 15:18:55', '2022-12-08 15:18:55', 9),
(7, 'Impedit quis ut necessitatibus possimus vero sint commodi dignissimos. Libero numquam non dolor nam quae aut. Non maxime sit qui omnis harum est ut nihil. Repellat quibusdam dicta quaerat dicta et.', 23, 14, 9, 'Consequatur ex enim sapiente veniam. Voluptas dicta officiis facere eum saepe commodi esse. Dolores vitae autem quam modi. Iure nihil excepturi quasi cum eos.', '2022-12-08 15:18:55', '2022-12-08 15:18:55', '2022-12-08 15:18:55', 10),
(8, 'Quos omnis numquam ex aliquid. Minus quo iure consectetur quisquam explicabo provident. Sunt neque mollitia iste non voluptas totam mollitia est.', 14, 19, 4, 'Quo ad ratione enim. Adipisci dignissimos eum facere exercitationem mollitia. Enim ipsum qui est et. In aut molestias et ipsam mollitia.', '2022-12-08 15:18:55', '2022-12-08 15:18:55', '2022-12-08 15:18:55', 11),
(9, 'Velit sed vel distinctio. Aut provident tenetur temporibus impedit ut.', 27, 26, 7, 'Mollitia in et impedit quisquam. Provident consequatur sit enim ad corrupti facere ipsa omnis. Recusandae nobis aspernatur ea sit. Voluptatum quo ad inventore expedita laborum ut labore.', '2022-12-08 15:18:55', '2022-12-08 15:18:55', '2022-12-08 15:18:55', 12),
(10, 'Dolorem iure laborum quibusdam eum et. Voluptas sit et id ut expedita esse. Ut velit labore consequatur minus quisquam. Earum quis fuga ipsa corporis debitis.', 11, 18, 1, 'Et quia occaecati ipsam. Et molestias doloremque sunt. Corrupti libero delectus quam sequi est exercitationem repudiandae. Est nam numquam odio nemo.', '2022-12-08 15:18:55', '2022-12-08 15:18:55', '2022-12-08 15:18:55', 13),
(11, 'Recept 1', 5, 10, 4, 'Ovo je prvi recept', '2022-12-08 15:27:55', '2022-12-08 15:27:55', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `steps`
--

CREATE TABLE `steps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordinal_number` int(11) NOT NULL,
  `recipe_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `steps`
--

INSERT INTO `steps` (`id`, `description`, `ordinal_number`, `recipe_id`, `created_at`, `updated_at`) VALUES
(1, 'Marinating the Steak', 1, 1, '2022-12-08 15:18:55', '2022-12-08 15:18:55'),
(2, 'Preparing the Grill', 2, 1, '2022-12-08 15:18:55', '2022-12-08 15:18:55'),
(3, 'Marinate in the refrigerator, turning occasionally, 4 to 8 hours.', 1, 7, '2022-12-08 15:18:55', '2022-12-08 15:18:55'),
(4, 'Ovo je prvi korak', 1, 11, '2022-12-08 15:27:55', '2022-12-08 15:27:55'),
(5, 'Ovo je drugi korak', 2, 11, '2022-12-08 15:27:55', '2022-12-08 15:27:55');

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
(1, 'Mrs. Maegan Turcotte DVM', 'waylon.harris@example.net', '2022-12-08 15:18:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wMXgQueQa8', '2022-12-08 15:18:55', '2022-12-08 15:18:55'),
(2, 'Mrs. Ashlee Wilkinson', 'wemard@example.org', '2022-12-08 15:18:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'o48c1jd8DB', '2022-12-08 15:18:55', '2022-12-08 15:18:55'),
(4, 'Elva Schneider MD', 'cshanahan@example.com', '2022-12-08 15:18:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZwCBT3bfOO', '2022-12-08 15:18:55', '2022-12-08 15:18:55'),
(5, 'Drake Tremblay PhD', 'dherman@example.com', '2022-12-08 15:18:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hmo1IlW8sf', '2022-12-08 15:18:55', '2022-12-08 15:18:55'),
(6, 'Vita Haley III', 'qemmerich@example.com', '2022-12-08 15:18:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4VFDSHb2dH', '2022-12-08 15:18:55', '2022-12-08 15:18:55'),
(7, 'Avis Jones', 'rtorp@example.org', '2022-12-08 15:18:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XSURjMRaEQ', '2022-12-08 15:18:55', '2022-12-08 15:18:55'),
(8, 'Josh Sanford MD', 'clement59@example.net', '2022-12-08 15:18:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NBdj3GQSxh', '2022-12-08 15:18:55', '2022-12-08 15:18:55'),
(9, 'Remington Cummings', 'maia12@example.org', '2022-12-08 15:18:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UGel7JyitU', '2022-12-08 15:18:55', '2022-12-08 15:18:55'),
(10, 'Raheem Schneider', 'bradtke.cristopher@example.org', '2022-12-08 15:18:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'K8POb0ssj0', '2022-12-08 15:18:55', '2022-12-08 15:18:55'),
(11, 'Sherwood Crist', 'krystal28@example.org', '2022-12-08 15:18:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Tt9K8uT057', '2022-12-08 15:18:55', '2022-12-08 15:18:55'),
(12, 'Rahul Waelchi', 'alene.kuhn@example.org', '2022-12-08 15:18:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jNlcnE70Hm', '2022-12-08 15:18:55', '2022-12-08 15:18:55'),
(13, 'Mr. Clifford Stracke DVM', 'samanta.schmeler@example.com', '2022-12-08 15:18:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hojKW1lHBT', '2022-12-08 15:18:55', '2022-12-08 15:18:55'),
(14, 'Djordje', 'djole999@gmail.com', NULL, '$2y$10$d9PbNSnpub8np7S7xN6dfO6E7zsb6AnDZoVNPMqo9zm.wQpmYyVfK', NULL, '2022-12-08 15:22:19', '2022-12-08 15:22:19'),
(15, 'Milos Miosevic Zarkovic', 'milosZark@gmail.com', NULL, '$2y$10$df1TGBJFIqB/PuEIHCC1F.TZsAMs1zMnCObR61MYcKqD72atfotxm', NULL, '2022-12-08 15:24:04', '2022-12-08 15:24:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `recipes_title_unique` (`title`),
  ADD UNIQUE KEY `recipes_description_unique` (`description`) USING HASH;

--
-- Indexes for table `steps`
--
ALTER TABLE `steps`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `steps`
--
ALTER TABLE `steps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
