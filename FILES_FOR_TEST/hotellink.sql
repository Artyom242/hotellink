-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 05 2025 г., 19:14
-- Версия сервера: 5.6.51-log
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `hotellink`
--

-- --------------------------------------------------------

--
-- Структура таблицы `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `check_in_date` date NOT NULL,
  `check_out_date` date NOT NULL,
  `adults` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passport` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id`, `name`, `email`, `phone`, `passport`, `created_at`, `updated_at`) VALUES
(1, 'Terry Eichmann', 'wolff.sincere@example.com', '+18455651552', '6576 910523', '2025-07-05 11:35:02', '2025-07-05 11:35:02'),
(2, 'Grover Douglas', 'rosalee.herzog@example.com', '769-914-2538', '7994 854424', '2025-07-05 11:35:02', '2025-07-05 11:35:02'),
(3, 'Devan Romaguera', 'wisozk.jadyn@example.net', '+1.806.610.5054', '4426 652788', '2025-07-05 11:35:02', '2025-07-05 11:35:02'),
(4, 'Keshawn Boehm', 'ethyl.lakin@example.com', '+12836606047', '5915 802156', '2025-07-05 11:35:02', '2025-07-05 11:35:02'),
(5, 'Claudie Feest', 'dmclaughlin@example.net', '+1-334-809-5948', '8922 703672', '2025-07-05 11:35:02', '2025-07-05 11:35:02'),
(6, 'Corrine Bosco Jr.', 'jermey.huel@example.net', '279.581.7392', '4220 645399', '2025-07-05 11:35:02', '2025-07-05 11:35:02'),
(7, 'Mr. Mitchell Feest', 'fthompson@example.net', '585-469-6387', '8600 972083', '2025-07-05 11:35:02', '2025-07-05 11:35:02'),
(8, 'Dr. Thad Keeling Jr.', 'alexzander86@example.com', '+1-518-338-4075', '3448 917600', '2025-07-05 11:35:02', '2025-07-05 11:35:02'),
(9, 'Tatyana Lang', 'gabe43@example.org', '+1-865-889-7206', '3956 470436', '2025-07-05 11:35:02', '2025-07-05 11:35:02'),
(10, 'Kenneth Douglas', 'djaskolski@example.net', '272-277-0612', '6887 314542', '2025-07-05 11:35:02', '2025-07-05 11:35:02');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2025_07_05_132505_create_clients_table', 1),
(2, '2025_07_05_133834_create_types_table', 1),
(3, '2025_07_05_141826_create_rooms_table', 1),
(4, '2025_07_05_141848_create_bookings_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` bigint(20) UNSIGNED NOT NULL,
  `floor` int(11) NOT NULL,
  `status` enum('confirmed','pending','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `rooms`
--

INSERT INTO `rooms` (`id`, `room_number`, `type_id`, `floor`, `status`, `created_at`, `updated_at`) VALUES
(1, '036', 2, 38, 'confirmed', '2025-07-05 11:35:02', '2025-07-05 11:35:02'),
(2, '074', 4, 34, 'confirmed', '2025-07-05 11:35:02', '2025-07-05 11:35:02'),
(3, '491', 3, 23, 'pending', '2025-07-05 11:35:02', '2025-07-05 11:35:02'),
(4, '472', 4, 98, 'confirmed', '2025-07-05 11:35:02', '2025-07-05 11:35:02'),
(5, '776', 4, 72, 'pending', '2025-07-05 11:35:02', '2025-07-05 11:35:02'),
(6, '692', 2, 27, 'confirmed', '2025-07-05 11:35:02', '2025-07-05 11:35:02'),
(7, '274', 5, 31, 'confirmed', '2025-07-05 11:35:02', '2025-07-05 11:35:02'),
(8, '587', 5, 66, 'confirmed', '2025-07-05 11:35:02', '2025-07-05 11:35:02'),
(9, '546', 5, 55, 'cancelled', '2025-07-05 11:35:02', '2025-07-05 11:35:02'),
(10, '549', 1, 20, 'pending', '2025-07-05 11:35:02', '2025-07-05 11:35:02');

-- --------------------------------------------------------

--
-- Структура таблицы `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_price` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `types`
--

INSERT INTO `types` (`id`, `name`, `description`, `base_price`, `capacity`, `created_at`, `updated_at`) VALUES
(1, 'nam', 'Quam deserunt repudiandae quo quam deserunt nihil necessitatibus rerum nihil ut odio repellat cupiditate.', 9916, 2, '2025-07-05 11:35:02', '2025-07-05 11:35:02'),
(2, 'aperiam', 'Dolor in sunt rerum autem nobis molestiae eum.', 7251, 3, '2025-07-05 11:35:02', '2025-07-05 11:35:02'),
(3, 'minima', 'Enim dignissimos omnis itaque ut repellat consequatur culpa ut sequi deleniti eaque quia.', 1606, 2, '2025-07-05 11:35:02', '2025-07-05 11:35:02'),
(4, 'est', 'Ratione saepe nemo voluptas minus non asperiores magnam quia quia rerum.', 5001, 3, '2025-07-05 11:35:02', '2025-07-05 11:35:02'),
(5, 'omnis', 'Hic sunt aut ipsa quasi iure qui perspiciatis sed distinctio cupiditate aliquam.', 6461, 5, '2025-07-05 11:35:02', '2025-07-05 11:35:02');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_client_id_foreign` (`client_id`),
  ADD KEY `bookings_room_id_foreign` (`room_id`);

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_type_id_foreign` (`type_id`);

--
-- Индексы таблицы `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
