-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 17 2022 г., 00:16
-- Версия сервера: 5.7.36
-- Версия PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `metro`
--

-- --------------------------------------------------------

--
-- Структура таблицы `appeals`
--

DROP TABLE IF EXISTS `appeals`;
CREATE TABLE IF NOT EXISTS `appeals` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `img_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `appeal_type_id` bigint(20) UNSIGNED NOT NULL,
  `claim_category_id` bigint(20) UNSIGNED NOT NULL,
  `claim_subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `appeal_appealtype_idx` (`appeal_type_id`),
  KEY `appeal_claimcategory_idx` (`claim_category_id`),
  KEY `claim_categories_subcategory_idx` (`claim_subcategory_id`),
  KEY `appeal_status_idx` (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `appeals`
--

INSERT INTO `appeals` (`id`, `fio`, `address`, `phone`, `email`, `description`, `date`, `img_path`, `user_id`, `appeal_type_id`, `claim_category_id`, `claim_subcategory_id`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(12, 'test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test', 'test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test', '+7(111) 111-11-11', '1@m.ru', 'test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test', '2019-12-18', NULL, 4, 3, 3, 3, 2, '2022-12-06 12:19:22', '2022-12-13 04:45:44', '2022-12-13 04:45:44'),
(13, 'testtesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttestte', 'testtesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttestte', '+7(222) 222-22-22', '1@m.ru', 'testtesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttesttetesttestte', '2007-12-20', NULL, 4, 2, 4, 6, 2, '2022-12-06 12:24:34', '2022-12-06 12:24:34', NULL),
(19, 'Алексей Алексеев Алексеевич', 'Екатеринбург, Крауля 34, кв. 125', '+7(123) 321-13-22', '1@m.ru', 'Очень неудобно добираться до работы, когда уже сделаете вторую и третью ветки метро????? второе десятилетие обещаете уже, задолбали!', '2022-07-12', 'appeals_images/9cojtgAjPz1Dw3JJXp3AE8TcXBrvbFPkffdB7rMb.png', 0, 2, 3, 10, 1, '2022-12-07 11:22:37', '2022-12-07 11:22:37', NULL),
(20, 'Андрей Шишкин Максимович', '8 марта 126', '+7(554) 354-35-34', '1@m.ru', 'не работает крайний правый эскалатор при перенагрузке в час пик, в будни, попрошу вызвать ремонтную бригаду, проверить и починить.', '2022-09-05', NULL, 4, 2, 5, 30, 1, '2022-12-07 12:45:48', '2022-12-07 12:45:48', NULL),
(25, 'Modi non soluta maio', 'Suscipit optio dist', '+7(666) 666-66-66', 'xirami@mailinator.com', 'Ipsum sit dolor quIpsum sit dolor quIpsum sit dolor quIpsum sit dolor quIpsum sit dolor quIpsum sit dolor quIpsum sit dolor quIpsum sit dolor quIpsum sit dolor quIpsum sit dolor quIpsum sit dolor quIpsum sit dolor quIpsum sit dolor quIpsum sit dolor quIpsum sit dolor qu', '2022-04-04', NULL, 4, 4, 9, 44, 1, '2022-12-13 04:47:45', '2022-12-14 20:45:17', '2022-12-14 20:45:17'),
(26, 'Quibusdam sint ut la', 'Quia non duis maiore', '+7(555) 555-55-55', 'vahamywil@mailinator.com', 'Et quae ut enim aute Et quae ut enim auteEt quae ut enim auteEt quae ut enim auteEt quae ut enim auteEt quae ut enim auteEt quae ut enim auteEt quae ut enim auteEt quae ut enim auteEt quae ut enim aute', '2022-03-12', NULL, 4, 3, 4, 7, 2, '2022-12-14 08:05:00', '2022-12-14 20:49:40', NULL),
(27, 'Enim quas temporibus', 'Facere sed autem ut', '+7(555) 555-55-55', 'mr.golov2014@gmail.com', 'Dolor voluptas expedDolor voluptas expedDolor voluptas expedDolor voluptas expedDolor voluptas expedDolor voluptas expedDolor voluptas expedDolor voluptas expedDolor voluptas expedDolor voluptas exped', '2023-03-12', NULL, 4, 4, 3, 10, 1, '2022-12-14 20:39:32', '2022-12-14 20:55:42', NULL),
(28, 'Enim quas temporibus', 'Facere sed autem ut', '+7(555) 555-55-55', 'mr.golov2014@gmail.com', 'Dolor voluptas expedDolor voluptas expedDolor voluptas expedDolor voluptas expedDolor voluptas expedDolor voluptas expedDolor voluptas expedDolor voluptas expedDolor voluptas expedDolor voluptas exped', '2023-03-12', NULL, 4, 4, 3, 10, 1, '2022-12-14 20:41:36', '2022-12-14 20:45:24', '2022-12-14 20:45:24'),
(29, 'Omnis eiusmod quae l', 'Non alias aut aut no', '+7(555) 555-55-55', 'mr.golov2014@gmail.com', 'Itaque consequuntur Itaque consequuntur Itaque consequuntur Itaque consequuntur Itaque consequuntur Itaque consequuntur Itaque consequuntur Itaque consequuntur Itaque consequuntur Itaque consequuntur', '2023-03-12', NULL, 4, 3, 4, 6, 1, '2022-12-14 20:44:23', '2022-12-14 20:44:57', '2022-12-14 20:44:57'),
(30, 'Omnis eiusmod quae l', 'Non alias aut aut no', '+7(555) 555-55-55', 'mr.golov2014@gmail.com', 'Itaque consequuntur Itaque consequuntur Itaque consequuntur Itaque consequuntur Itaque consequuntur Itaque consequuntur Itaque consequuntur Itaque consequuntur Itaque consequuntur Itaque consequuntur', '2023-03-12', 'appeals_images/TvGx9KWDS6WeqR5hSkXwMxUjikD5260QFIQbVPIw.jpg', 4, 3, 4, 6, 2, '2022-12-14 20:44:00', '2022-12-14 20:51:38', NULL),
(31, 'Voluptatem distincti', 'Do commodo et nobis', '+7(222) 222-22-22', 'mr.golov2014@gmail.com', 'Suscipit dolores estSuscipit dolores estSuscipit dolores estSuscipit dolores estSuscipit dolores estSuscipit dolores estSuscipit dolores estSuscipit dolores estSuscipit dolores est', '2022-04-12', NULL, 4, 2, 10, 48, 2, '2022-12-15 16:57:00', '2022-12-15 17:01:49', NULL),
(32, 'Алексей Алексеев Алексеевич', 'Quia non duis maiore', '+7(555) 555-55-55', 'mr.golov2014@gmail.com', 'ситуация ситуация ситуация ситуация ситуация ситуация ситуация ситуация ситуация ситуация ситуация ситуация ситуация ситуация ситуация ситуация ситуация ситуация ситуация ситуация ситуация ситуация ситуация ситуация ситуация ситуация', '2022-07-12', 'appeals_images/UVNGiP0J9oNdF2cTZmHLhopE5sUQzbCwflfNqqr8.jpg', 4, 2, 4, 6, 2, '2022-12-16 22:23:00', '2022-12-16 22:25:13', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `appeal_statuses`
--

DROP TABLE IF EXISTS `appeal_statuses`;
CREATE TABLE IF NOT EXISTS `appeal_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `appeal_statuses`
--

INSERT INTO `appeal_statuses` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Обращение отправлено на проверку, ожидайте.', NULL, NULL),
(2, 'Обращение было проверено, подробнее можно узнать в письме на вашей электронной почте.', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `appeal_types`
--

DROP TABLE IF EXISTS `appeal_types`;
CREATE TABLE IF NOT EXISTS `appeal_types` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `appeal_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `appeal_types`
--

INSERT INTO `appeal_types` (`id`, `appeal_type`, `created_at`, `updated_at`) VALUES
(2, 'Жалоба', '2022-12-07 15:57:00', '2022-12-07 10:58:00'),
(3, 'Заявление', '2022-12-05 15:59:00', '2022-12-07 10:58:16'),
(4, 'Предложение', '2022-12-07 10:58:21', '2022-12-07 10:58:21');

-- --------------------------------------------------------

--
-- Структура таблицы `cards`
--

DROP TABLE IF EXISTS `cards`;
CREATE TABLE IF NOT EXISTS `cards` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` decimal(8,2) NOT NULL DEFAULT '0.00',
  `userId` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `card_user_idx` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cards`
--

INSERT INTO `cards` (`id`, `number`, `type`, `balance`, `userId`, `created_at`, `updated_at`) VALUES
(2, '9785461325', 'Екарта', '0.00', 1, '2022-12-05 02:35:21', '2022-12-05 02:35:21'),
(3, '9784613254', 'Екарта', '0.00', 1, '2022-12-05 02:35:31', '2022-12-05 02:35:31'),
(4, '4324234234', 'Екарта', '0.00', 4, '2022-12-07 16:07:13', '2022-12-07 16:07:13'),
(5, '5345345343', 'Екарта', '0.00', 4, '2022-12-09 14:06:05', '2022-12-09 14:06:05'),
(6, '4444444444', 'Екарта', '0.00', 4, '2022-12-11 17:33:49', '2022-12-11 17:33:49'),
(8, '5433545346', 'Екарта', '0.00', 4, '2022-12-13 04:43:20', '2022-12-13 04:43:20'),
(9, '1231231231', 'Екарта', '0.00', 4, '2022-12-13 04:43:41', '2022-12-13 04:43:41'),
(10, '5345345234', 'Екарта', '543.00', 4, '2022-12-16 22:21:52', '2022-12-16 22:22:41');

-- --------------------------------------------------------

--
-- Структура таблицы `category_subcategories`
--

DROP TABLE IF EXISTS `category_subcategories`;
CREATE TABLE IF NOT EXISTS `category_subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `claim_category_id` bigint(20) UNSIGNED NOT NULL,
  `claim_subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_subcategory_category_idx` (`claim_category_id`),
  KEY `category_subcategory_subcategory_idx` (`claim_subcategory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category_subcategories`
--

INSERT INTO `category_subcategories` (`id`, `claim_category_id`, `claim_subcategory_id`, `created_at`, `updated_at`) VALUES
(5, 3, 3, '2022-12-05 13:59:07', '2022-12-05 13:59:07'),
(6, 3, 4, '2022-12-05 14:00:45', '2022-12-05 14:00:45'),
(7, 3, 5, '2022-12-05 14:00:52', '2022-12-05 14:00:52'),
(8, 4, 6, '2022-12-05 14:00:58', '2022-12-05 14:00:58'),
(9, 4, 7, '2022-12-05 14:01:04', '2022-12-05 14:01:04'),
(10, 4, 8, '2022-12-05 14:01:10', '2022-12-05 14:01:10'),
(11, 3, 6, '2022-12-06 12:43:19', '2022-12-06 12:43:19'),
(12, 3, 7, '2022-12-06 12:43:26', '2022-12-06 12:43:26'),
(13, 3, 8, '2022-12-06 12:43:33', '2022-12-06 12:43:33'),
(14, 3, 9, '2022-12-06 12:43:44', '2022-12-06 12:43:44'),
(15, 3, 10, '2022-12-06 12:43:56', '2022-12-06 12:43:56'),
(16, 3, 11, '2022-12-06 12:44:04', '2022-12-06 12:44:04'),
(17, 3, 12, '2022-12-06 12:44:15', '2022-12-06 12:44:15'),
(18, 3, 13, '2022-12-06 12:44:21', '2022-12-06 12:44:21'),
(19, 5, 23, '2022-12-07 09:36:22', '2022-12-07 09:36:22'),
(20, 5, 24, '2022-12-07 09:36:42', '2022-12-07 09:36:42'),
(21, 5, 25, '2022-12-07 09:36:54', '2022-12-07 09:36:54'),
(22, 5, 26, '2022-12-07 09:37:07', '2022-12-07 09:37:07'),
(23, 5, 27, '2022-12-07 09:37:13', '2022-12-07 09:37:13'),
(24, 5, 28, '2022-12-07 09:37:24', '2022-12-07 09:37:24'),
(25, 5, 29, '2022-12-07 09:37:33', '2022-12-07 09:37:33'),
(26, 5, 30, '2022-12-07 09:37:40', '2022-12-07 09:37:40'),
(27, 5, 31, '2022-12-07 09:37:48', '2022-12-07 09:37:48'),
(28, 5, 32, '2022-12-07 09:37:58', '2022-12-07 09:37:58'),
(29, 5, 33, '2022-12-07 09:38:05', '2022-12-07 09:38:05'),
(30, 5, 34, '2022-12-07 09:38:12', '2022-12-07 09:38:12'),
(31, 6, 35, '2022-12-07 09:39:24', '2022-12-07 09:39:24'),
(32, 6, 36, '2022-12-07 09:39:31', '2022-12-07 09:39:31'),
(33, 6, 37, '2022-12-07 09:39:38', '2022-12-07 09:39:38'),
(34, 7, 38, '2022-12-07 09:41:59', '2022-12-07 09:41:59'),
(35, 7, 39, '2022-12-07 09:42:12', '2022-12-07 09:42:12'),
(36, 7, 40, '2022-12-07 09:42:21', '2022-12-07 09:42:21'),
(37, 8, 41, '2022-12-07 10:49:05', '2022-12-07 10:49:05'),
(38, 8, 42, '2022-12-07 10:49:20', '2022-12-07 10:49:20'),
(39, 8, 43, '2022-12-07 10:49:28', '2022-12-07 10:49:28'),
(40, 9, 44, '2022-12-07 10:50:04', '2022-12-07 10:50:04'),
(41, 9, 45, '2022-12-07 10:50:14', '2022-12-07 10:50:14'),
(42, 10, 46, '2022-12-07 10:50:57', '2022-12-07 10:50:57'),
(43, 10, 47, '2022-12-07 10:51:04', '2022-12-07 10:51:04'),
(44, 10, 48, '2022-12-07 10:51:12', '2022-12-07 10:51:12'),
(45, 11, 49, '2022-12-07 10:52:59', '2022-12-07 10:52:59'),
(46, 11, 50, '2022-12-07 10:53:08', '2022-12-07 10:53:08'),
(47, 11, 51, '2022-12-07 10:53:16', '2022-12-07 10:53:16'),
(48, 11, 52, '2022-12-07 10:53:26', '2022-12-07 10:53:26'),
(49, 11, 53, '2022-12-07 10:53:34', '2022-12-07 10:53:34'),
(50, 12, 54, '2022-12-07 10:54:58', '2022-12-07 10:54:58');

-- --------------------------------------------------------

--
-- Структура таблицы `claim_categories`
--

DROP TABLE IF EXISTS `claim_categories`;
CREATE TABLE IF NOT EXISTS `claim_categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `claim_categories`
--

INSERT INTO `claim_categories` (`id`, `category`, `created_at`, `updated_at`) VALUES
(3, 'Организация дорожного движения и улично-дорожная сеть', '2022-12-05 13:43:16', '2022-12-05 13:43:16'),
(4, 'Наземный пассажирский общественный транспорт', '2022-12-05 13:43:31', '2022-12-05 13:43:31'),
(5, 'Метрополитен', '2022-12-06 12:44:41', '2022-12-06 12:44:41'),
(6, 'Пригородное пассажирское ж/д', '2022-12-06 12:44:55', '2022-12-06 12:44:55'),
(7, 'Велосипеды', '2022-12-07 09:40:40', '2022-12-07 09:40:40'),
(8, 'Специальные и социальные программы', '2022-12-07 10:48:18', '2022-12-07 10:48:18'),
(9, 'Транспортные пересадочные узлы', '2022-12-07 10:49:44', '2022-12-07 10:49:44'),
(10, 'Такси (легковое)', '2022-12-07 10:50:29', '2022-12-07 10:50:29'),
(11, 'Вопросы по платным парковкам и парковочному пространству', '2022-12-07 10:51:56', '2022-12-07 10:51:56'),
(12, 'Информационно-рекламное обслуживание', '2022-12-07 10:54:38', '2022-12-07 10:54:38');

-- --------------------------------------------------------

--
-- Структура таблицы `claim_subcategories`
--

DROP TABLE IF EXISTS `claim_subcategories`;
CREATE TABLE IF NOT EXISTS `claim_subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `subcategory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `claim_subcategories`
--

INSERT INTO `claim_subcategories` (`id`, `subcategory`, `created_at`, `updated_at`) VALUES
(3, 'Разметка', '2022-12-05 13:43:55', '2022-12-05 13:43:55'),
(4, 'Дороги, тротуары, обочины', '2022-12-05 13:44:04', '2022-12-05 13:44:04'),
(5, 'Дорожные объекты', '2022-12-05 13:44:12', '2022-12-05 13:44:12'),
(6, 'Муниципальный перевозчик', '2022-12-05 13:44:24', '2022-12-05 13:44:24'),
(7, 'Коммерческий перевозчик', '2022-12-05 13:44:31', '2022-12-05 13:44:31'),
(8, 'Контролер', '2022-12-05 13:44:38', '2022-12-05 13:44:38'),
(9, 'Дорожное оборудование', '2022-12-06 12:40:29', '2022-12-06 12:40:29'),
(10, 'Изменение схемы движения', '2022-12-06 12:40:41', '2022-12-06 12:40:41'),
(11, 'Весовой контроль', '2022-12-06 12:41:48', '2022-12-06 12:41:48'),
(12, 'Грузовые пропуска для передвижения', '2022-12-06 12:42:00', '2022-12-06 12:42:47'),
(13, 'Спецразрешения на передвижение тяжеловесных/крупногабаритных ТС', '2022-12-06 12:42:00', '2022-12-06 12:42:38'),
(23, 'Обращения по правилам пользования метрополитеном', '2022-12-07 09:34:43', '2022-12-07 09:34:43'),
(24, 'Качество и культура обслуживания пассажиров', '2022-12-07 09:34:52', '2022-12-07 09:34:52'),
(25, 'Техническое содержание метрополитена', '2022-12-07 09:34:58', '2022-12-07 09:34:58'),
(26, 'Санитарное состояние метрополитена', '2022-12-07 09:35:03', '2022-12-07 09:35:03'),
(27, 'Организация движения поездов, режим работы метрополитена, пассажиропотоки', '2022-12-07 09:35:09', '2022-12-07 09:35:09'),
(28, 'Тарифная политика и способы оплаты проезда', '2022-12-07 09:35:15', '2022-12-07 09:35:15'),
(29, 'Информационно-рекламное обслуживание', '2022-12-07 09:35:21', '2022-12-07 09:35:21'),
(30, 'Реконструкция (ремонт), развитие и модернизация метрополитена', '2022-12-07 09:35:27', '2022-12-07 09:35:27'),
(31, 'Общие вопросы по метрополитену', '2022-12-07 09:35:32', '2022-12-07 09:35:32'),
(32, 'Соблюдение правил проезда и провоза багажа', '2022-12-07 09:35:38', '2022-12-07 09:35:38'),
(33, 'Контролер', '2022-12-07 09:35:42', '2022-12-07 09:35:42'),
(34, 'Очереди в кассу', '2022-12-07 09:35:46', '2022-12-07 09:35:46'),
(35, 'Организация движения', '2022-12-07 09:38:53', '2022-12-07 09:38:53'),
(36, 'Тарифы', '2022-12-07 09:38:57', '2022-12-07 09:38:57'),
(37, 'Подвижной состав', '2022-12-07 09:39:03', '2022-12-07 09:39:03'),
(38, 'Велодорожки', '2022-12-07 09:40:48', '2022-12-07 09:40:48'),
(39, 'Стоянки', '2022-12-07 09:40:54', '2022-12-07 09:40:54'),
(40, 'Велосипеды', '2022-12-07 09:41:24', '2022-12-07 09:41:24'),
(41, 'Социальное такси', '2022-12-07 10:48:43', '2022-12-07 10:48:43'),
(42, 'Топливные карты', '2022-12-07 10:48:49', '2022-12-07 10:48:49'),
(43, 'Специальные и праздничные мероприятия', '2022-12-07 10:48:54', '2022-12-07 10:48:54'),
(44, 'Существующие объекты', '2022-12-07 10:49:50', '2022-12-07 10:49:50'),
(45, 'Принятие решения о создании новых ТПУ', '2022-12-07 10:49:55', '2022-12-07 10:49:55'),
(46, 'Автомобиль', '2022-12-07 10:50:39', '2022-12-07 10:50:39'),
(47, 'Стоянки такси', '2022-12-07 10:50:45', '2022-12-07 10:50:45'),
(48, 'Водитель', '2022-12-07 10:50:50', '2022-12-07 10:50:50'),
(49, 'Информация о постановлениях и оплате штрафов АМПП (0355431010…), за исключением обжалования', '2022-12-07 10:52:06', '2022-12-07 10:52:06'),
(50, 'Эвакуация', '2022-12-07 10:52:11', '2022-12-07 10:52:11'),
(51, 'Парковки', '2022-12-07 10:52:20', '2022-12-07 10:52:20'),
(52, 'Обжалование (только ГКУ «АМПП», 0355431010…)', '2022-12-07 10:52:29', '2022-12-07 10:52:29'),
(53, 'Вопросы по постановлениям МАДИ (782)', '2022-12-07 10:52:37', '2022-12-07 10:52:37'),
(54, 'Вопросы по работе сайта', '2022-12-07 10:54:46', '2022-12-07 10:54:46');

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Имя', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Пароль', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Токен восстановления', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Дата создания', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Дата обновления', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Аватар', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Роль', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Имя', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Дата создания', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Дата обновления', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Имя', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Дата создания', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Дата обновления', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Отображаемое имя', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Роль', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Родитель', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Сортировка', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Имя', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug (ЧПУ)', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Дата создания', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Дата обновления', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Автор', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Категория', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Отрывок', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Содержимое', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Изображение Статьи', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug (ЧПУ)', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Статус', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Дата создания', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Дата обновления', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Название', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Рекомендовано', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Автор', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Отрывок', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Содержимое', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug (ЧПУ)', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Статус', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Дата создания', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Дата обновления', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Изображение Страницы', 0, 1, 1, 1, 1, 1, NULL, 12),
(77, 13, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(78, 13, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(79, 13, 'content', 'rich_text_box', 'Content', 0, 1, 1, 1, 1, 1, '{}', 3),
(80, 13, 'img', 'image', 'Img', 1, 1, 1, 1, 1, 1, '{}', 4),
(81, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(82, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(83, 13, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 0, 1, '{}', 7),
(84, 15, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(85, 15, 'subcategory', 'text', 'Subcategory', 1, 1, 1, 1, 1, 1, '{}', 2),
(86, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(87, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(88, 16, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(89, 16, 'claim_category_id', 'select_dropdown', 'Claim Category Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(90, 16, 'claim_subcategory_id', 'select_dropdown', 'Claim Subcategory Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(91, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(92, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(93, 17, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(94, 17, 'category', 'text', 'Category', 1, 1, 1, 1, 1, 1, '{}', 2),
(95, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(96, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(97, 18, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(98, 18, 'appeal_type', 'text', 'Appeal Type', 1, 1, 1, 1, 1, 1, '{}', 2),
(99, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(100, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(101, 19, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(102, 19, 'fio', 'text', 'Fio', 1, 1, 1, 1, 1, 1, '{}', 4),
(103, 19, 'address', 'text', 'Address', 1, 1, 1, 1, 1, 1, '{}', 5),
(104, 19, 'phone', 'text', 'Phone', 1, 1, 1, 1, 1, 1, '{}', 6),
(105, 19, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 7),
(106, 19, 'description', 'text_area', 'Description', 1, 1, 1, 1, 1, 1, '{}', 8),
(107, 19, 'date', 'date', 'Date', 1, 1, 1, 1, 1, 1, '{}', 9),
(108, 19, 'img_path', 'image', 'Img Path', 0, 1, 1, 1, 1, 1, '{}', 10),
(109, 19, 'appeal_type_id', 'text', 'Appeal Type Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(110, 19, 'claim_category_id', 'text', 'Claim Category Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(111, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 11),
(112, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(113, 19, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 0, 1, 1, '{}', 13),
(115, 16, 'category_subcategory_hasmany_claim_subcategory_relationship', 'relationship', 'claim_subcategories', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\ClaimSubcategory\",\"table\":\"claim_subcategories\",\"type\":\"belongsTo\",\"column\":\"claim_subcategory_id\",\"key\":\"id\",\"label\":\"subcategory\",\"pivot_table\":\"appeal_types\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(116, 16, 'category_subcategory_belongsto_claim_category_relationship', 'relationship', 'claim_categories', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\ClaimCategory\",\"table\":\"claim_categories\",\"type\":\"belongsTo\",\"column\":\"claim_category_id\",\"key\":\"id\",\"label\":\"category\",\"pivot_table\":\"appeal_types\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(117, 21, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(118, 21, 'content', 'text', 'Content', 1, 1, 1, 1, 1, 1, '{}', 2),
(119, 21, 'authorId', 'number', 'AuthorId', 1, 1, 1, 1, 1, 1, '{}', 3),
(120, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(121, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(122, 21, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 6),
(123, 22, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(124, 22, 'status', 'text', 'Status', 1, 1, 1, 1, 1, 1, '{}', 2),
(125, 22, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(126, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(127, 19, 'appeal_hasmany_appeal_status_relationship', 'relationship', 'appeal_statuses', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\AppealStatus\",\"table\":\"appeal_statuses\",\"type\":\"belongsTo\",\"column\":\"status_id\",\"key\":\"id\",\"label\":\"status\",\"pivot_table\":\"appeal_statuses\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(128, 19, 'user_id', 'hidden', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 13),
(129, 19, 'claim_subcategory_id', 'text', 'Claim Subcategory Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(130, 19, 'status_id', 'select_dropdown', 'Status Id', 0, 1, 1, 1, 1, 1, '{}', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

DROP TABLE IF EXISTS `data_types`;
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'Пользователь', 'Пользователи', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2022-12-01 09:30:19', '2022-12-01 09:30:19'),
(2, 'menus', 'menus', 'Меню', 'Меню', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-12-01 09:30:19', '2022-12-01 09:30:19'),
(3, 'roles', 'roles', 'Роль', 'Роли', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-12-01 09:30:19', '2022-12-01 09:30:19'),
(4, 'categories', 'categories', 'Категория', 'Категории', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2022-12-01 09:30:20', '2022-12-01 09:30:20'),
(5, 'posts', 'posts', 'Статья', 'Статьи', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2022-12-01 09:30:20', '2022-12-01 09:30:20'),
(6, 'pages', 'pages', 'Страница', 'Страницы', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2022-12-01 09:30:20', '2022-12-01 09:30:20'),
(13, 'news', 'news', 'News', 'Новости', 'voyager-news', 'App\\News', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-12-02 08:24:02', '2022-12-08 05:51:03'),
(15, 'claim_subcategories', 'claim-subcategories', 'Claim Subcategory', 'Claim Subcategories', NULL, 'App\\Models\\ClaimSubcategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-12-05 01:22:40', '2022-12-05 01:22:40'),
(16, 'category_subcategories', 'category-subcategories', 'Category Subcategory', 'Category Subcategories', NULL, 'App\\Models\\CategorySubcategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-12-05 01:25:19', '2022-12-05 14:00:39'),
(17, 'claim_categories', 'claim-categories', 'Claim Category', 'Claim Categories', NULL, 'App\\Models\\ClaimCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-12-05 01:25:45', '2022-12-05 02:18:28'),
(18, 'appeal_types', 'appeal-types', 'Appeal Type', 'Appeal Types', NULL, 'App\\Models\\AppealType', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-12-05 01:26:10', '2022-12-05 01:26:10'),
(19, 'appeals', 'appeals', 'Appeal', 'Appeals', NULL, 'App\\Models\\Appeal', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-12-05 01:27:10', '2022-12-14 20:54:43'),
(21, 'reviews', 'reviews', 'Review', 'Отзывы', NULL, 'App\\Models\\Review', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-12-10 08:20:01', '2022-12-10 08:20:01'),
(22, 'appeal_statuses', 'appeal-statuses', 'Appeal Status', 'Appeal Statuses', 'voyager-logbook', 'App\\Models\\AppealStatus', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-12-14 15:03:21', '2022-12-14 15:03:21');

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-12-01 09:30:19', '2022-12-01 09:30:19');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Панель управления', '', '_self', 'voyager-boat', NULL, NULL, 1, '2022-12-01 09:30:19', '2022-12-01 09:30:19', 'voyager.dashboard', NULL),
(2, 1, 'Медиа', '', '_self', 'voyager-images', NULL, NULL, 6, '2022-12-01 09:30:19', '2022-12-14 15:03:40', 'voyager.media.index', NULL),
(3, 1, 'Пользователи', '', '_self', 'voyager-person', NULL, NULL, 5, '2022-12-01 09:30:19', '2022-12-14 15:03:40', 'voyager.users.index', NULL),
(4, 1, 'Роли', '', '_self', 'voyager-lock', NULL, NULL, 7, '2022-12-01 09:30:19', '2022-12-14 15:03:40', 'voyager.roles.index', NULL),
(5, 1, 'Инструменты', '', '_self', 'voyager-tools', NULL, NULL, 13, '2022-12-01 09:30:19', '2022-12-14 15:03:33', NULL, NULL),
(6, 1, 'Конструктор Меню', '', '_self', 'voyager-list', NULL, 5, 1, '2022-12-01 09:30:19', '2022-12-02 07:59:58', 'voyager.menus.index', NULL),
(7, 1, 'База данных', '', '_self', 'voyager-data', NULL, 5, 2, '2022-12-01 09:30:19', '2022-12-02 07:59:58', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2022-12-01 09:30:19', '2022-12-02 07:59:58', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2022-12-01 09:30:19', '2022-12-02 07:59:58', 'voyager.bread.index', NULL),
(10, 1, 'Настройки', '', '_self', 'voyager-settings', NULL, NULL, 14, '2022-12-01 09:30:19', '2022-12-14 15:03:33', 'voyager.settings.index', NULL),
(16, 1, 'Новости', '', '_self', 'voyager-news', NULL, NULL, 2, '2022-12-02 08:24:02', '2022-12-14 13:55:05', 'voyager.news.index', NULL),
(17, 1, 'Claim Subcategories', '', '_self', 'voyager-categories', '#000000', NULL, 10, '2022-12-05 01:22:41', '2022-12-14 15:03:42', 'voyager.claim-subcategories.index', 'null'),
(18, 1, 'Category Subcategories', '', '_self', 'voyager-paperclip', '#000000', NULL, 12, '2022-12-05 01:25:19', '2022-12-14 15:03:33', 'voyager.category-subcategories.index', 'null'),
(19, 1, 'Claim Categories', '', '_self', 'voyager-categories', '#000000', NULL, 9, '2022-12-05 01:25:45', '2022-12-14 15:03:42', 'voyager.claim-categories.index', 'null'),
(20, 1, 'Appeal Types', '', '_self', 'voyager-edit', '#000000', NULL, 8, '2022-12-05 01:26:10', '2022-12-14 15:03:42', 'voyager.appeal-types.index', 'null'),
(21, 1, 'Appeals', '', '_self', 'voyager-bell', '#000000', NULL, 3, '2022-12-05 01:27:10', '2022-12-14 15:03:40', 'voyager.appeals.index', 'null'),
(23, 1, 'Отзывы', '', '_self', 'voyager-star', '#000000', NULL, 4, '2022-12-10 08:20:01', '2022-12-14 15:03:40', 'voyager.reviews.index', 'null'),
(24, 1, 'Appeal Statuses', '', '_self', 'voyager-logbook', '#000000', NULL, 11, '2022-12-14 15:03:21', '2022-12-14 15:04:00', 'voyager.appeal-statuses.index', 'null');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(29, '2022_11_04_182934_create_reviews_table', 1),
(30, '2022_11_08_120345_remove_column_name_to_reviews_table', 1),
(31, '2022_11_14_055749_create_cards_table', 1),
(32, '2022_11_17_102148_add_index_and_column_to_cards_table', 1),
(33, '2022_11_20_094514_add_balance_and_type_columns_to_cards_table', 1),
(39, '2022_12_03_211230_create_claim_subcategories_table', 2),
(40, '2022_12_03_211231_create_claim_categories_table', 2),
(41, '2022_12_04_092049_create_category_subcategories_table', 2),
(42, '2022_12_04_092306_create_appeal_types_table', 2),
(43, '2022_12_04_092559_create_appeals_table', 2),
(45, '2022_12_06_091115_add_userid_and_imgnullable_to_appeals_table', 4),
(48, '2022_12_07_110052_add_fk_and_idx_to_appeals_table', 5),
(50, '2022_12_07_203247_add_userid_to_appeals_table', 6),
(52, '2022_12_14_180000_create_appeal_statuses_table', 7),
(53, '2022_12_14_185854_add_column_status_to_appeals_table', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `img`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'День работника транспорта РФ. Награждение', '<p><span style=\"font-size: 14pt;\">24 ноября 2022 года в связи с профессиональным праздником &laquo;Днём работника транспорта РФ&raquo; в метрополитене состоялось торжественное награждение Почётными грамотами и Благодарственными письмами работников ЕМУП &laquo;Метрополитен&raquo; и вручение Дипломов победителям конкурса профессионального мастерства &laquo;Лучший по профессии - 2022&raquo;.</span></p>\r\n<p><span style=\"font-size: 14pt;\">Со словами поздравления с профессиональным праздником и благодарности работникам метрополитена за плодотворный труд в сложных экономических и политических условиях выступил директор метрополитена Панаиотиди Андрей Михайлович.</span><br><span style=\"font-size: 14pt;\">Во вручении отличившимся работникам ведомственных и региональных наград приняли участие депутат Законодательного собрания Свердловской области Вегнер Вячеслав Михайлович и председатель Комитета по транспорту, организации дорожного движения и развитию улично-дорожной сети Администрации Екатеринбурга Ощепков Игорь Юрьевич, которые также отметили эффективную работу Екатеринбургского метрополитена и поздравили метрополитеновцев с профессиональным праздником. Почётные гости поблагодарили всех работников метрополитена за профессионализм, благодаря которому в Екатеринбурге обеспечивается бесперебойное движение электропоездов и безопасность перевозки пассажиров, и пожелали метрополитену развития и процветания, а работникам предприятия - крепкого здоровья и благополучия.</span><br><span style=\"font-size: 14pt;\">По итогам конкурса профессионального мастерства, проводимого в 2022 году в двух крупных подразделениях метрополитена &ndash; службе подвижного состава и службе транспортной безопасности, директор метрополитена Панаиотиди А.М. поздравил и наградил победителей памятными Дипломами и подарками.</span></p>\r\n<p><span style=\"font-size: 14pt;\"><img src=\"https://metro-ektb.ru/uploadedFiles/images/IMG_2448-1.jpg\" alt=\"\" width=\"60%\"></span></p>\r\n<p><span style=\"font-size: 14pt;\"><img src=\"https://metro-ektb.ru/uploadedFiles/images/IMG_2532-1.jpg\" alt=\"\" width=\"60%\"></span></p>\r\n<p><span style=\"font-size: 14pt;\"><img src=\"https://metro-ektb.ru/uploadedFiles/images/IMG_2433-1.jpg\" alt=\"\" width=\"60%\"></span></p>\r\n<p><span style=\"font-size: 14pt;\"><img src=\"https://metro-ektb.ru/uploadedFiles/images/IMG_2474-1.jpg\" alt=\"\" width=\"60%\"></span></p>\r\n<p><span style=\"font-size: 14pt;\"><img src=\"https://metro-ektb.ru/uploadedFiles/images/IMG_2478-1.jpg\" alt=\"\" width=\"60%\"></span></p>\r\n<p><span style=\"font-size: 14pt;\"><img src=\"https://metro-ektb.ru/uploadedFiles/images/IMG_2451-1.jpg\" alt=\"\" width=\"60%\"></span></p>\r\n<p><span style=\"font-size: 14pt;\"><img src=\"https://metro-ektb.ru/uploadedFiles/images/IMG_2463-1.jpg\" alt=\"\" width=\"60%\"></span></p>\r\n<p><span style=\"font-size: 14pt;\"><img src=\"https://metro-ektb.ru/uploadedFiles/images/IMG_2501-1.jpg\" alt=\"\" width=\"60%\"></span></p>\r\n<p><span style=\"font-size: 14pt;\"><img src=\"https://metro-ektb.ru/uploadedFiles/images/IMG_2520-1.jpg\" alt=\"\" width=\"60%\"></span></p>\r\n<p><span style=\"font-size: 14pt;\"><img src=\"https://metro-ektb.ru/uploadedFiles/images/IMG_2534-1.jpg\" alt=\"\" width=\"60%\"></span></p>', 'news\\December2022\\WIMiGnChoHX0uCSxwYve.bmp', '2022-12-02 16:57:00', '2022-12-08 02:06:25', NULL),
(3, 'Конкурс профессионального мастерства', '<p>С 17 октября по 19 ноября в Екатеринбургском метрополитене был проведен конкурс профессионального мастерства &laquo;Лучший по профессии &ndash; 2022&raquo;, посвященный &laquo;Дню работника транспорта Российской Федерации&raquo;.</p>\r\n<p>В конкурсе приняли участие служба подвижного состава и служба транспортной безопасности. Общее количество участников составило 44 человека. Конкурс проводился в два этапа: отборочный и финальный.</p>\r\n<p>В службе подвижного состава в конкурсе участвовали все желающие из числа слесарей по ремонту подвижного состава, электриков по ремонту электрооборудования и электромехаников. В процессе проведения конкурса проверялись теоретические знания и практические навыки по ремонту и обслуживанию механического оборудования; электрической, электронной и пневматической аппаратуры.</p>\r\n<p>В службе транспортной безопасности проверялись навыки работы на досмотровом оборудовании и ручном металлодетекторе, оценивалось выполнение порядка действий при обнаружении предметов и веществ, в отношении которых установлен запрет или ограничения на перемещение их в зону транспортной безопасности, проверялась бдительность дежурных оперативных по обнаружению условного минирования на станциях метрополитена.</p>\r\n<p>Все участники продемонстрировали высокий уровень квалификации и готовность оперативно действовать в нестандартных ситуациях.</p>\r\n<p>По итогам конкурса победителям, призерам выплачены денежные поощрения и в торжественной обстановке Андрей Михайлович Панаиотиди вручил Дипломы I, II степени и памятные подарки.</p>\r\n<p>Служба транспортной безопасности:</p>\r\n<p><img src=\"https://metro-ektb.ru/uploadedFiles/images/IMG_2145.jpg\" alt=\"\" width=\"545\" height=\"363\"></p>\r\n<p><img src=\"https://metro-ektb.ru/uploadedFiles/images/IMG_2164.jpg\" alt=\"\" width=\"545\" height=\"363\"></p>\r\n<p><img src=\"https://metro-ektb.ru/uploadedFiles/images/IMG_2168.jpg\" alt=\"\" width=\"545\" height=\"363\"></p>\r\n<p><img src=\"https://metro-ektb.ru/uploadedFiles/images/IMG_2179.jpg\" alt=\"\" width=\"545\" height=\"363\"></p>\r\n<p>Служба подвижного состава:</p>\r\n<p><img src=\"https://metro-ektb.ru/uploadedFiles/images/2022_11_15_09_07_IMG_5603.jpg\" alt=\"\" width=\"60%\" height=\"60%\"></p>\r\n<p><img src=\"https://metro-ektb.ru/uploadedFiles/images/IMG_2241.jpg\" alt=\"\" width=\"60%\" height=\"60%\"></p>\r\n<p><img src=\"https://metro-ektb.ru/uploadedFiles/images/IMG_2326.jpg\" alt=\"\" width=\"60%\" height=\"60%\"></p>\r\n<p><img src=\"https://metro-ektb.ru/uploadedFiles/images/IMG_2330.jpg\" alt=\"\" width=\"60%\" height=\"60%\"></p>\r\n<p><img src=\"https://metro-ektb.ru/uploadedFiles/images/IMG_2333.jpg\" alt=\"\" width=\"40%\" height=\"40%\"></p>\r\n<p><img src=\"https://metro-ektb.ru/uploadedFiles/images/IMG_2344.jpg\" alt=\"\" width=\"40%\" height=\"40%\"></p>', 'news\\December2022\\ZdFp0d9TTx5FQ3OmAzbK.jpg', '2022-12-08 01:59:00', '2022-12-08 02:05:10', NULL),
(4, 'С Днём работников транспорта!', '<p><img src=\"https://metro-ektb.ru/uploadedFiles/images/PLAKAT2.jpg\" alt=\"\" width=\"60%\"></p>', 'news\\December2022\\GA3p21p7Ih1zkFIELE9s.jpg', '2022-12-08 02:00:00', '2022-12-08 02:02:03', NULL),
(5, 'Отчёт о поездке сотрудников метрополитена и их детей в природный парк \"Оленьи ручьи\"', '<p><img src=\"https://metro-ektb.ru/uploadedFiles/images/PLAKAT_OLENI_RUChI_mal.jpg\" width=\"60%\"></p>', 'news\\December2022\\VO7NF0d9YaUiCge3PJml.jpg', '2022-12-08 02:07:55', '2022-12-08 02:07:55', NULL),
(6, 'День донора', '<p>В рамках Государственной программы развития добровольного донорства 25 августа 2022 г. впервые в Екатеринбургском метрополитене был организован &laquo;День донора&raquo;.</p>\r\n<p>Мероприятие было проведено силами сотрудников ФГБУЗ &laquo;Станция переливания крови ФМБА России в Екатеринбурге&raquo;. Работники метрополитена с энтузиазмом отнеслись к донорской сдаче крови. Участие приняли не только те работники, которые регулярно сдают кровь самостоятельно, но и те, для которых это было первым опытом.</p>\r\n<p>Руководство метрополитена благодарит сотрудников Станции переливания крови за организацию выезда мобильной бригады, отличную работу, консультации и помощь, а также работников метрополитена &ndash; за отзывчивость и неравнодушное отношение.</p>\r\n<p><img src=\"https://metro-ektb.ru/uploadedFiles/images/IMG-20220825-WA0005.jpg\" alt=\"\" width=\"32%\">&nbsp;<img src=\"https://metro-ektb.ru/uploadedFiles/images/IMG-20220825-WA0007.jpg\" alt=\"\" width=\"32%\">&nbsp;<img src=\"https://metro-ektb.ru/uploadedFiles/images/IMG-20220825-WA0009.jpg\" alt=\"\" width=\"32%\"></p>\r\n<p><img src=\"https://metro-ektb.ru/uploadedFiles/images/IMG-20220825-WA0008.jpg\" alt=\"\" width=\"32%\">&nbsp;<img src=\"https://metro-ektb.ru/uploadedFiles/images/IMG-20220825-WA0011.jpg\" alt=\"\" width=\"32%\">&nbsp;<img src=\"https://metro-ektb.ru/uploadedFiles/images/IMG-20220825-WA0012.jpg\" alt=\"\" width=\"32%\"></p>\r\n<p><img src=\"https://metro-ektb.ru/uploadedFiles/images/IMG-20220825-WA0010.jpg\" alt=\"\" width=\"32%\">&nbsp;<img src=\"https://metro-ektb.ru/uploadedFiles/images/IMG-20220825-WA0019.jpg\" alt=\"\" width=\"32%\">&nbsp;<img src=\"https://metro-ektb.ru/uploadedFiles/images/IMG-20220825-WA0017.jpg\" alt=\"\" width=\"32%\"></p>\r\n<p><img src=\"https://metro-ektb.ru/uploadedFiles/images/IMG-20220825-WA0015.jpg\" alt=\"\" width=\"48%\">&nbsp;&nbsp;<img src=\"https://metro-ektb.ru/uploadedFiles/images/IMG-20220825-WA0016.jpg\" alt=\"\" width=\"48%\">&nbsp;</p>', 'news\\December2022\\duXA6RAGte8Hj7bigiQK.jpg', '2022-10-27 11:06:07', '2022-12-08 02:09:25', NULL),
(7, 'Время работы Метрополитена в связи с проведением акции \"Свеча памяти\"', '<p>Уважаемые жители и гости города Екатеринбурга!</p>\r\n<p>В рамках проведения патриотической акции \"Свеча памяти\", приуроченной к Дню памяти и скорби - дню начала Великой Отечественной войны, в ЕМУП \"Метрополитен\" 21.06.2022 года движение поездов будет организовано до 00:30 22.06.2022 года.</p>', 'news\\December2022\\Duwyjh0Rnl5FZkoMO02u.png', '2022-12-12 10:39:31', '2022-12-08 02:10:44', NULL),
(8, 'Некорректное списание денежных средств за проезд', '<p align=\"center\"><strong>УВАЖАЕМЫЕ ПАССАЖИРЫ!</strong></p>\r\n<p align=\"center\"><strong>В СВЯЗИ С МНОГОЧИСЛЕННЫМИ ОБРАЩЕНИЯМИ&nbsp;</strong><strong>ПО ФАКТАМ НЕКОРРЕКТНОГО СПИСАНИЯ&nbsp;</strong><strong>ДЕНЕЖНЫХ СРЕДСТВ ПРИ ОПЛАТЕ ПРОЕЗДА&nbsp;</strong><strong>С ПОМОЩЬЮ БАНКОВСКИХ КАРТ&nbsp;</strong></p>\r\n<p align=\"center\"><strong>ЕМУП &laquo;МЕТРОПОЛИТЕН&raquo;&nbsp;</strong><strong>ИНФОРМИРУЕТ:</strong></p>\r\n<p>оплата проезда в метрополитене с использованием банковских карт производится в рамках сервиса &laquo;Электронная карта города Екатеринбурга&raquo;.</p>\r\n<p>Все операции по картам (списание денежных средств) проводит владелец сервиса &laquo;Электронная карта города Екатеринбурга&raquo; акционерное общество &laquo;Информационная сеть&raquo; (АО &laquo;И-Сеть&raquo;).</p>\r\n<p>Оставить свои претензии или задать вопросы, связанные со&nbsp;списанием денежных средств с банковских карт вы можете через форму обратной связи на официальном сайте АО &laquo;И-Сеть&raquo; по адресу:&nbsp;<a href=\"http://www.ekarta-ek.ru/obshchie-razdely/contacts/\">http://www.ekarta-ek.ru/obshchie-razdely/contacts/</a>&nbsp;или через сообщение на адрес электронной почты&nbsp;<a href=\"mailto:adm@iset-ek.ru\">adm@iset-ek.ru</a></p>\r\n<p>&nbsp;</p>\r\n<p>Самостоятельно проверить историю проездов и списаний денежных средств за совершенные проезды можно в личном кабинете Пассажира. Ссылка на вход и инструкция находятся по адресу:</p>\r\n<p><a href=\"http://www.ekarta-ek.ru/oplata-v-odno-kasanie/karta-v-stop-liste/#3\">http://www.ekarta-ek.ru/oplata-v-odno-kasanie/karta-v-stop-liste/#3</a></p>\r\n<p>Вход в личный кабинет осуществляется по номеру банковской карты, с помощью которой оплачивался проезд.</p>', 'news\\December2022\\vU7IuXDZPcuFQ326uaTP.jpg', '2022-12-08 05:52:26', '2022-12-08 05:52:26', NULL),
(9, 'График движения поездов с 10 августа 2020 года', '<p>Для улучшения качества обслуживания пассажиров с 10 августа 2020 года ЕМУП \"Метрополитен\" организует движение поездов в рабочие дни по графику, действовавшему до объявления режима повышенной готовности и принятия дополнительных мер по защите населения от короновирусной инфекции.</p>', 'news\\December2022\\jq0L3EmfJN8dg4xceP5a.jpg', '2022-12-10 07:28:17', '2022-12-10 07:28:17', NULL),
(10, 'Вестибюль № 2 (выход в ТРЦ \"Гринвич\") станции \"Геологическая\" открыт с 05.08.2020', '<p>В связи с возобновлением работы ТРЦ \"Гринвич\" с 05.08.2020 вестибюль № 2 станции \"Геологическая\" (выход в ТРЦ \"Гринвич\") открыт.</p>', 'news\\December2022\\0GxKk8DJSqHFvDwULhYK.jpeg', '2022-12-07 07:29:00', '2022-12-13 04:33:47', NULL),
(11, 'С Днём железнодорожника', '<p><img src=\"http://metro-ektb.ru/uploadedFiles/images/den_zheleznodorozhnika_2020_.jpg\" width=\"70%\"></p>', 'news\\December2022\\vL74IJOSedXEydJUwjVb.jpg', '2022-11-10 07:30:00', '2022-12-13 04:35:22', NULL),
(12, 'Город трудовой доблести', '<p><img src=\"https://xn--80acgfbsl1azdqr.xn--p1ai/media/gallery/4/7/4798bb5a0d639d2c6462ac689f237af4_900x_.jpg\" alt=\"\"></p>\r\n<p>2 июля 2020 года Указом Президента России Владимира Путина 20 городам Российской Федерации присвоено почетное звание &laquo;Город трудовой доблести&raquo;.</p>\r\n<p>Екатеринбург вошел в число этих городов.</p>\r\n<p>С 25 июня по 1 июля 2020 года, в&nbsp;дни голосования по поправкам к Конституции России,&nbsp;прошел сбор подписей в поддержку присвоения уральской столице почётного звания &laquo;Город трудовой доблести&raquo;. Каждый совершеннолетний гражданин России, проживающий на территории уральской столицы, мог поддержать предложение о присвоении уральской столице такого почётного звания. Всего было собрано более полумиллиона подписей екатеринбуржцев в поддержку ходатайства к Президенту РФ.</p>\r\n<p>В годы войны в нашем городе были локализованы порядка 100 предприятий, эвакуированных из других городов. Практически &laquo;с колес&raquo; они организовали выпуск оборонной продукции. Благодаря их работе был внесен весомый вклад в победу над фашистскими захватчиками. Здесь изготавливали знаменитые &laquo;Катюши&raquo;, танки Т-34, Т-60, башни танка &laquo;Клим Ворошилов&raquo;, зенитные установки и противотанковые пушки, а также многое другое. Предприятия города поставляли на фронт обмундирование, обувь и продовольствие. Перелом хода войны и начало наступления на врага стало возможным в том числе и благодаря тому, что армия получила современное оружие. Более того, здесь был сформирован знаменитый добровольческий танковый корпус. В городе было размещено 49 эвакогоспиталей, где поправляли здоровье раненые бойцы армии (70% бойцов вернулись в строй). Это еще раз говорит о том, что наш город &ndash; труженик, здесь тоже ковалась Победа. Всего за самоотверженную трудовую деятельность были награждены 12,9 тыс. горожан, 26 промышленных предприятий были удостоены правительственных наград.</p>\r\n<p>С 06.07.2020 на станциях Екатеринбургского метрополитена по громкоговорящему оповещению проводится информирование пассажиров о присвоении Екатеринбургу звания &laquo;Город трудовой доблести&raquo;.</p>', 'news\\December2022\\VheUssqQ5aYgmTtqCnzg.jpg', '2022-12-05 07:30:00', '2022-12-13 04:33:58', NULL),
(13, 'ТанцТеатру 30 лет', '<p>В Екатеринбурге в центральном зале станции метро 1905 года открылась выставка, посвященная 30-летию &laquo;ТанцТеатра&raquo;.</p>\r\n<p><img src=\"http://metro-ektb.ru/uploadedFiles/images/2teatr.jpg\" alt=\"\" width=\"80%\"></p>\r\n<p>Красивые, будто вылепленные скульптором фигуры танцовщиков, калейдоскоп костюмов, коллекция эмоций &mdash; без малого три десятка фотографий, сделанных во время спектаклей &laquo;ТанцТеатра&raquo;, разместились на мраморных колоннах станции.</p>\r\n<p><img src=\"http://metro-ektb.ru/uploadedFiles/images/1teatr.jpg\" alt=\"\" width=\"80%\"></p>\r\n<p>&mdash; Это первый случай, когда театральной экспозиции отдано столь непривычное пространство, которое вовсе не располагает к разглядыванию размещенных на колоннах фотографий о танце. Метро &mdash; не то место, где публика планирует задерживаться. Однако все произошло наоборот. Любопытствующих оказалось немало. Среди них есть те, кто знает этот театр. Менявший свое название несколько раз, он многим был известен под именем &laquo;Балет Плюс&raquo;. Но большинство пассажиров впервые узнают о театре, остановившись на платформе в ожидании поезда, &mdash; говорит художественный руководитель &laquo;ТанцТеатра&raquo; Олег Петров.</p>\r\n<p><img src=\"http://metro-ektb.ru/uploadedFiles/images/4teatr.jpg\" alt=\"\" width=\"80%\"></p>\r\n<p>Экспозиция &mdash; возможность окунуться в прошлое танцевального коллектива и познакомиться с его настоящим, совершив путешествие не только под землей, но и во времени. Пассажиры могут увидеть как кадры со спектакля &laquo;Плач после полуночи&raquo;, поставленный в 1993 году, так и сделанные в прошлом году фото постановки &laquo;Шопен. Cart blanch&raquo;. Также на выставке размещены снимки со спектаклей &laquo;Спящая красавица&raquo;, &laquo;Слезы Эроса&raquo;, &laquo;Элион&raquo;, &laquo;ПИЧ&raquo;, &laquo;Сны Феллини&raquo;, &laquo;Мой Щелкунчик&raquo;, &laquo;Матаморфозы&raquo;, &laquo;Спиной к стене&raquo; и многих других.&nbsp;Пластика застывших на фото танцовщиков удивительным образом вписалась в строгую геометрию станции, рождая новые смыслы и ассоциации.</p>\r\n<p><img src=\"http://metro-ektb.ru/uploadedFiles/images/51teatr.jpg\" alt=\"\" width=\"80%\"></p>\r\n<p>&mdash; Эта выставка &mdash; не только дань юбиляру.&nbsp; Она &mdash; свидетельство.&nbsp; Того, что было и того, что есть. И, конечно же, она &mdash; о Танце. За свою тридцатилетнюю историю &laquo;ТанцТеатр&raquo; никогда не изменял танцу, никогда не шел на поводу моды, оставаясь при этом современным театром. Рассматривая фотографии, внимательный глаз уловит то важное, о чем говорил театр все эти годы со своим зрителем &mdash; Красоту. И сегодня, когда люди, находясь в страхе, переживая страдания, собственные и чужие, остановятся, скорее всего, случайно, у фотографий, они, возможно, поверят, что помимо пасмурных дней в жизни каждого человека может наступить счастливый миг. Даже если он будет подарен несколькими фотографиями, с которых на них смотрит сама Красота, &mdash; уверен Олег Петров.</p>\r\n<p>Увидеть выставку на станции \"Площадь 1905 года\" можно будет до конца августа.</p>\r\n<p>За возможность размещения выставки благодарим Андрея Панаиотиди, директора Екатеринбургского метрополитена, и его заместителя Александра Мирошника. Именно благодаря слаженной работе Екатеринбургского метрополитена вы можете не только быстро и безопасно передвигаться по городу, но и приобщиться к Красоте.</p>\r\n<p><strong>Информационная справка:</strong></p>\r\n<p>Екатеринбургский &laquo;ТанцТеатр&raquo; существует с 1990 года. За это время он не раз менял название (&laquo;Пируэт&raquo;, &laquo;Балет плюс&raquo;, Екатеринбургский театр танца), но не руководителя &ndash; создавший театр Олег Петров продолжает определять его художественную политику.<br>Театр, в начале девяностых ставший объединением балетных артистов, которым надоела рутина провинциального балетного театра, показывал программы из произведений Вацлава Нижинского, Касьяна Голейзовского, Леонида Якобсона, Георгия Алексидзе, Гедрюса Мацкявичюса. Довольно скоро их сменили европейские хореографы, специализирующиеся на современном танце, которых Олег Петров ежегодно приглашает для работы в &laquo;ТанцТеатре&raquo;.<br>Среди авторов, создававших эксклюзивные постановки или переносивших на уральскую сцену свои лучшие спектакли &mdash; Карин Сапорта,<br>Пал Френак, Гаэль Доменжер, Фабио Лопез, Балаш Бараней, Аттила Гергейи. С этими спектаклями театр успешно гастролировал в России, Европе, США, Юго-Восточной Азии.<br>ТанцТеатр &mdash; четырежды номинант российского национального театрального фестиваля &laquo;Золотая Маска&raquo;: в 2005, 2015, 2019, 2020 годах.<br>В настоящее время &laquo;ТанцТеатр&raquo; является филиалом Инновационного культурного центра Свердловской области.</p>', 'news\\December2022\\Y7NY1i9X7wYek3Qi1eSB.jpg', '2022-12-09 07:31:00', '2022-12-13 04:33:32', NULL),
(14, 'Модернизированные составы', '<p><strong>Несмотря на сложную эпидемиологическую обстановку в Свердловской области 19 июня 2020 года Екатеринбургским метрополитеном, после проведения пусконаладочных работ, были выпущены на линию 8 вагонов, прошедших модернизацию в АО &laquo;Метровагонмаш&raquo; в рамках утвержденной инвестиционной программы.</strong></p>\r\n<p><strong>Председатель Екатеринбургской городской Думы Игорь Валерьевич Володин и Глава Администрации Орджоникидзевского района Роман Геннадьевич Кравченко приняли участие в выпуске составов на линию.</strong></p>\r\n<p><strong>Так же 19 июня состоялась отправка следующей партии из восьми вагонов модели 81-717.5/81.714.5 на модернизацию в филиал &laquo;Метровагонмаш-СПБ&raquo; АО &laquo;Метровагонмаш&raquo;.</strong></p>\r\n<p><strong>Вагоны, прошедшие модернизацию, отвечают современным требованиям надежности, комфорта и пожарной безопасности. Используется новое современное оборудование, обеспечивающее надежную работу.</strong></p>\r\n<p><strong><em>Фото: пресс-служба ЕГД.</em></strong></p>\r\n<p><strong><em><img src=\"http://metro-ektb.ru/uploadedFiles/images/22062020/DSC_1_2206.jpg\" alt=\"\" width=\"709\" height=\"469\"></em></strong></p>\r\n<p><strong><em><img src=\"http://metro-ektb.ru/uploadedFiles/images/22062020/DSC_2_2206.jpg\" alt=\"\" width=\"709\" height=\"469\"></em></strong></p>\r\n<p><strong><em><img src=\"http://metro-ektb.ru/uploadedFiles/images/22062020/DSC_3_2206.jpg\" alt=\"\" width=\"709\" height=\"469\"></em></strong></p>\r\n<p><strong><em><img src=\"http://metro-ektb.ru/uploadedFiles/images/22062020/DSC_5_2206.jpg\" alt=\"\" width=\"709\" height=\"469\"></em></strong></p>\r\n<p><strong><em><img src=\"http://metro-ektb.ru/uploadedFiles/images/22062020/IMG_4_2206.jpg\" alt=\"\" width=\"709\" height=\"472\"></em></strong></p>', 'news\\December2022\\KLu6d2JxHhbzHGkXXW6f.jpg', '2022-12-04 07:32:00', '2022-12-13 04:37:45', NULL),
(15, 'Миллиардный пассажир', '<p>30 июля 2019 года в метрополитене произошло важное событие &ndash; проехал миллиардный пассажир.<br>Счастливым обладателем звания &laquo;миллиардный пассажир&raquo; оказалась 30&ndash;летняя жительница города Екатеринбурга Диана Мустакимова. Диана трудится в детской школе искусств, расположенной в микрорайоне Эльмаш.</p>\r\n<p>Мэр Екатеринбурга Александр Геннадьевич Высокинский и директор метрополитена Андрей Михайлович Панаиотиди поздравили счастливицу с тем, что именно она стала миллиардным пассажиром нашей подземки, вручили сертификат, который это подтверждает, оригинальный торт в виде вагона метрополитена, сертификат в парфюмерный супермаркет &laquo;Золотое Яблоко&raquo; и Екарту для проезда в подземке. Последнее особенно порадовало девушку &ndash; она сказала, что каждый день ездит с Химмаша на Эльмаш на работу.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"http://metro-ektb.ru/uploadedFiles/images/DSC04101-1.jpg\" alt=\"\" width=\"80%\"></p>\r\n<p><img src=\"http://metro-ektb.ru/uploadedFiles/images/DSC04095-1.jpg\" alt=\"\" width=\"80%\"></p>\r\n<p><img src=\"http://metro-ektb.ru/uploadedFiles/images/DSC04149-1.jpg\" alt=\"\" width=\"80%\"></p>\r\n<p>Из страниц истории метрополитена: миллионный пассажир проехал 28 лет назад &ndash; в июле 1991 года, а 100 миллионный пассажир &ndash; в январе 1998 года.</p>', 'news\\December2022\\MsFJgfd67GTnSuNfCfeG.jpg', '2022-11-12 07:33:00', '2022-12-13 04:33:21', NULL),
(16, 'Новый график движения поездов в выходные дни', '<p>Для улучшения качества обслуживания пассажиров в ЕМУП \"Метрополитен\" с 01.07.2019 введён новый график движения поездов выходного дня с интервалами 9-12 минут. Более подробную информацию о движении поездов по станциям можно узнать ниже.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Станции метрополитена открыты ежедневно с 06-00 до 24-00.</p>\r\n<p>Отправление последнего поезда со станции &laquo;Проспект Космонавтов&raquo;:</p>\r\n<p>- в рабочие дни &ndash; 00-02;</p>\r\n<p>- в выходные дни &ndash; 00-02.</p>\r\n<p>Отправление последнего поезда со станции &laquo;Ботаническая&raquo;:</p>\r\n<p>- в рабочие дни &ndash; 00-10;</p>\r\n<p>- в выходные дни &ndash; 00-05.</p>\r\n<p>Интервалы движения поездов в Екатеринбургском метрополитене:</p>\r\n<p>В рабочие дни:</p>\r\n<table style=\"border-collapse: collapse; border-width: 1px; border-spacing: 1px; border-style: hidden;\" border=\"1\" cellspacing=\"1\" cellpadding=\"1\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-width: 1px; padding: 1px; border-style: hidden;\" width=\"208\">\r\n<p>Часы:</p>\r\n</td>\r\n<td style=\"border-width: 1px; padding: 1px; border-style: hidden;\" width=\"208\">\r\n<p>Интервал:</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-width: 1px; padding: 1px; border-style: hidden;\" width=\"208\">\r\n<p>06.00 &ndash; 07.00</p>\r\n</td>\r\n<td style=\"border-width: 1px; padding: 1px; border-style: hidden;\" width=\"208\">\r\n<p>8&nbsp; мин.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-width: 1px; padding: 1px; border-style: hidden;\" width=\"208\">\r\n<p>07.00 &ndash; 09.30</p>\r\n</td>\r\n<td style=\"border-width: 1px; padding: 1px; border-style: hidden;\" width=\"208\">\r\n<p>5 - 4&nbsp; мин.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-width: 1px; padding: 1px; border-style: hidden;\" width=\"208\">\r\n<p>09.30 &ndash; 11.30</p>\r\n</td>\r\n<td style=\"border-width: 1px; padding: 1px; border-style: hidden;\" width=\"208\">\r\n<p>6 мин.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-width: 1px; padding: 1px; border-style: hidden;\" width=\"208\">\r\n<p>11.30 &ndash; 16.00</p>\r\n</td>\r\n<td style=\"border-width: 1px; padding: 1px; border-style: hidden;\" width=\"208\">\r\n<p>9 &ndash; 8 мин.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-width: 1px; padding: 1px; border-style: hidden;\" width=\"208\">\r\n<p>16.00 &ndash; 17.00</p>\r\n</td>\r\n<td style=\"border-width: 1px; padding: 1px; border-style: hidden;\" width=\"208\">\r\n<p>6 - 5&nbsp; мин.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-width: 1px; padding: 1px; border-style: hidden;\" width=\"208\">\r\n<p>17.00 &ndash; 19.00</p>\r\n</td>\r\n<td style=\"border-width: 1px; padding: 1px; border-style: hidden;\" width=\"208\">\r\n<p>5 - 4&nbsp; мин.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-width: 1px; padding: 1px; border-style: hidden;\" width=\"208\">\r\n<p>19.00 &ndash; 20.00</p>\r\n</td>\r\n<td style=\"border-width: 1px; padding: 1px; border-style: hidden;\" width=\"208\">\r\n<p>6&nbsp; мин.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-width: 1px; padding: 1px; border-style: hidden;\" width=\"208\">\r\n<p>20.00 &ndash; 21.00</p>\r\n</td>\r\n<td style=\"border-width: 1px; padding: 1px; border-style: hidden;\" width=\"208\">\r\n<p>8 - 9 мин.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-width: 1px; padding: 1px; border-style: hidden;\" width=\"208\">\r\n<p>21.00 &ndash; 00.00</p>\r\n</td>\r\n<td style=\"border-width: 1px; padding: 1px; border-style: hidden;\" width=\"208\">\r\n<p>11 мин.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;В выходные дни:</p>\r\n<table style=\"border-collapse: collapse; border-width: 1px; border-spacing: 1px; border-style: hidden;\" border=\"1\" cellspacing=\"1\" cellpadding=\"1\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-style: hidden; border-width: 1px; padding: 1px;\" width=\"208\">\r\n<p>Часы:</p>\r\n</td>\r\n<td style=\"border-style: hidden; border-width: 1px; padding: 1px;\" width=\"208\">\r\n<p>Интервал:</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-style: hidden; border-width: 1px; padding: 1px;\" width=\"208\">\r\n<p>06.00 &ndash; 07.00</p>\r\n</td>\r\n<td style=\"border-style: hidden; border-width: 1px; padding: 1px;\" width=\"208\">\r\n<p>12&nbsp; мин.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-style: hidden; border-width: 1px; padding: 1px;\" width=\"208\">\r\n<p>07.00 &ndash; 24.00</p>\r\n</td>\r\n<td style=\"border-style: hidden; border-width: 1px; padding: 1px;\" width=\"208\">\r\n<p>9-10&nbsp; мин.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'news\\December2022\\FUaJOvZ7MsVoXRaGSXQS.jpg', '2022-12-10 07:37:31', '2022-12-10 07:37:31', NULL),
(17, 'С Днём рождения Екатеринбургского метрополитена!', '<p style=\"text-align: center;\"><strong>Уважаемые коллеги!</strong></p>\r\n<p style=\"text-align: center;\"><strong>От всей души поздравляю весь коллектив метрополитена и его ветеранов</strong><br><strong>с Днем рождения Екатеринбургского метрополитена!</strong></p>\r\n<p><strong>За 28 лет мы перевезли 980,5 млн.пасс. Любовь, которой заслуженно пользуется наше метро у своих пассажиров &mdash; результат высочайшего профессионализма, целеустремленности, энергии, любви к своему делу всего коллектива нашего предприятия. И в этом есть частица Вашего труда и Вашей души! Примите слова искренней признательности и благодарности за Ваш добросовестный труд, и личный вклад в развитие метрополитена!</strong></p>\r\n<p><br><strong>Желаю всем неизменного оптимизма, крепкого здоровья, благополучия и долгих лет жизни!</strong></p>\r\n<p>С наилучшими пожеланиями,<br>Директор Екатеринбургского метрополитена А.М. Панаиотиди</p>', 'news\\December2022\\uL4XvA4pkemUpdRG97an.jpg', '2022-11-16 07:38:00', '2022-12-13 04:32:54', NULL),
(18, 'gdf', '<p>fgdg</p>', 'news\\December2022\\RojQ3QIEDVSv9BSOmyJt.jpg', '2022-12-16 22:24:57', '2022-12-16 22:24:57', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('1@m.ru', '$2y$10$QVq6rPVyBUcTh3gdMMispOBOosl/3TcxHAWyMji/vBmFb9twdtiSm', '2022-12-08 05:31:34'),
('mkorol203@gmail.com', '$2y$10$a.rDKUzVjFEKgCE549EgXevWIfDpC50tlJJfqnGwx.LD3WelaFhZK', '2022-12-10 12:48:42');

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-12-01 09:30:19', '2022-12-01 09:30:19'),
(2, 'browse_bread', NULL, '2022-12-01 09:30:19', '2022-12-01 09:30:19'),
(3, 'browse_database', NULL, '2022-12-01 09:30:19', '2022-12-01 09:30:19'),
(4, 'browse_media', NULL, '2022-12-01 09:30:19', '2022-12-01 09:30:19'),
(5, 'browse_compass', NULL, '2022-12-01 09:30:19', '2022-12-01 09:30:19'),
(6, 'browse_menus', 'menus', '2022-12-01 09:30:19', '2022-12-01 09:30:19'),
(7, 'read_menus', 'menus', '2022-12-01 09:30:19', '2022-12-01 09:30:19'),
(8, 'edit_menus', 'menus', '2022-12-01 09:30:19', '2022-12-01 09:30:19'),
(9, 'add_menus', 'menus', '2022-12-01 09:30:19', '2022-12-01 09:30:19'),
(10, 'delete_menus', 'menus', '2022-12-01 09:30:19', '2022-12-01 09:30:19'),
(11, 'browse_roles', 'roles', '2022-12-01 09:30:19', '2022-12-01 09:30:19'),
(12, 'read_roles', 'roles', '2022-12-01 09:30:19', '2022-12-01 09:30:19'),
(13, 'edit_roles', 'roles', '2022-12-01 09:30:19', '2022-12-01 09:30:19'),
(14, 'add_roles', 'roles', '2022-12-01 09:30:19', '2022-12-01 09:30:19'),
(15, 'delete_roles', 'roles', '2022-12-01 09:30:19', '2022-12-01 09:30:19'),
(16, 'browse_users', 'users', '2022-12-01 09:30:19', '2022-12-01 09:30:19'),
(17, 'read_users', 'users', '2022-12-01 09:30:19', '2022-12-01 09:30:19'),
(18, 'edit_users', 'users', '2022-12-01 09:30:19', '2022-12-01 09:30:19'),
(19, 'add_users', 'users', '2022-12-01 09:30:19', '2022-12-01 09:30:19'),
(20, 'delete_users', 'users', '2022-12-01 09:30:19', '2022-12-01 09:30:19'),
(21, 'browse_settings', 'settings', '2022-12-01 09:30:19', '2022-12-01 09:30:19'),
(22, 'read_settings', 'settings', '2022-12-01 09:30:19', '2022-12-01 09:30:19'),
(23, 'edit_settings', 'settings', '2022-12-01 09:30:19', '2022-12-01 09:30:19'),
(24, 'add_settings', 'settings', '2022-12-01 09:30:19', '2022-12-01 09:30:19'),
(25, 'delete_settings', 'settings', '2022-12-01 09:30:19', '2022-12-01 09:30:19'),
(26, 'browse_categories', 'categories', '2022-12-01 09:30:20', '2022-12-01 09:30:20'),
(27, 'read_categories', 'categories', '2022-12-01 09:30:20', '2022-12-01 09:30:20'),
(28, 'edit_categories', 'categories', '2022-12-01 09:30:20', '2022-12-01 09:30:20'),
(29, 'add_categories', 'categories', '2022-12-01 09:30:20', '2022-12-01 09:30:20'),
(30, 'delete_categories', 'categories', '2022-12-01 09:30:20', '2022-12-01 09:30:20'),
(31, 'browse_posts', 'posts', '2022-12-01 09:30:20', '2022-12-01 09:30:20'),
(32, 'read_posts', 'posts', '2022-12-01 09:30:20', '2022-12-01 09:30:20'),
(33, 'edit_posts', 'posts', '2022-12-01 09:30:20', '2022-12-01 09:30:20'),
(34, 'add_posts', 'posts', '2022-12-01 09:30:20', '2022-12-01 09:30:20'),
(35, 'delete_posts', 'posts', '2022-12-01 09:30:20', '2022-12-01 09:30:20'),
(36, 'browse_pages', 'pages', '2022-12-01 09:30:20', '2022-12-01 09:30:20'),
(37, 'read_pages', 'pages', '2022-12-01 09:30:20', '2022-12-01 09:30:20'),
(38, 'edit_pages', 'pages', '2022-12-01 09:30:20', '2022-12-01 09:30:20'),
(39, 'add_pages', 'pages', '2022-12-01 09:30:20', '2022-12-01 09:30:20'),
(40, 'delete_pages', 'pages', '2022-12-01 09:30:20', '2022-12-01 09:30:20'),
(46, 'browse_news', 'news', '2022-12-02 08:24:02', '2022-12-02 08:24:02'),
(47, 'read_news', 'news', '2022-12-02 08:24:02', '2022-12-02 08:24:02'),
(48, 'edit_news', 'news', '2022-12-02 08:24:02', '2022-12-02 08:24:02'),
(49, 'add_news', 'news', '2022-12-02 08:24:02', '2022-12-02 08:24:02'),
(50, 'delete_news', 'news', '2022-12-02 08:24:02', '2022-12-02 08:24:02'),
(51, 'browse_claim_subcategories', 'claim_subcategories', '2022-12-05 01:22:40', '2022-12-05 01:22:40'),
(52, 'read_claim_subcategories', 'claim_subcategories', '2022-12-05 01:22:40', '2022-12-05 01:22:40'),
(53, 'edit_claim_subcategories', 'claim_subcategories', '2022-12-05 01:22:40', '2022-12-05 01:22:40'),
(54, 'add_claim_subcategories', 'claim_subcategories', '2022-12-05 01:22:40', '2022-12-05 01:22:40'),
(55, 'delete_claim_subcategories', 'claim_subcategories', '2022-12-05 01:22:40', '2022-12-05 01:22:40'),
(56, 'browse_category_subcategories', 'category_subcategories', '2022-12-05 01:25:19', '2022-12-05 01:25:19'),
(57, 'read_category_subcategories', 'category_subcategories', '2022-12-05 01:25:19', '2022-12-05 01:25:19'),
(58, 'edit_category_subcategories', 'category_subcategories', '2022-12-05 01:25:19', '2022-12-05 01:25:19'),
(59, 'add_category_subcategories', 'category_subcategories', '2022-12-05 01:25:19', '2022-12-05 01:25:19'),
(60, 'delete_category_subcategories', 'category_subcategories', '2022-12-05 01:25:19', '2022-12-05 01:25:19'),
(61, 'browse_claim_categories', 'claim_categories', '2022-12-05 01:25:45', '2022-12-05 01:25:45'),
(62, 'read_claim_categories', 'claim_categories', '2022-12-05 01:25:45', '2022-12-05 01:25:45'),
(63, 'edit_claim_categories', 'claim_categories', '2022-12-05 01:25:45', '2022-12-05 01:25:45'),
(64, 'add_claim_categories', 'claim_categories', '2022-12-05 01:25:45', '2022-12-05 01:25:45'),
(65, 'delete_claim_categories', 'claim_categories', '2022-12-05 01:25:45', '2022-12-05 01:25:45'),
(66, 'browse_appeal_types', 'appeal_types', '2022-12-05 01:26:10', '2022-12-05 01:26:10'),
(67, 'read_appeal_types', 'appeal_types', '2022-12-05 01:26:10', '2022-12-05 01:26:10'),
(68, 'edit_appeal_types', 'appeal_types', '2022-12-05 01:26:10', '2022-12-05 01:26:10'),
(69, 'add_appeal_types', 'appeal_types', '2022-12-05 01:26:10', '2022-12-05 01:26:10'),
(70, 'delete_appeal_types', 'appeal_types', '2022-12-05 01:26:10', '2022-12-05 01:26:10'),
(71, 'browse_appeals', 'appeals', '2022-12-05 01:27:10', '2022-12-05 01:27:10'),
(72, 'read_appeals', 'appeals', '2022-12-05 01:27:10', '2022-12-05 01:27:10'),
(73, 'edit_appeals', 'appeals', '2022-12-05 01:27:10', '2022-12-05 01:27:10'),
(74, 'add_appeals', 'appeals', '2022-12-05 01:27:10', '2022-12-05 01:27:10'),
(75, 'delete_appeals', 'appeals', '2022-12-05 01:27:10', '2022-12-05 01:27:10'),
(76, 'browse_reviews', 'reviews', '2022-12-10 08:20:01', '2022-12-10 08:20:01'),
(77, 'read_reviews', 'reviews', '2022-12-10 08:20:01', '2022-12-10 08:20:01'),
(78, 'edit_reviews', 'reviews', '2022-12-10 08:20:01', '2022-12-10 08:20:01'),
(79, 'add_reviews', 'reviews', '2022-12-10 08:20:01', '2022-12-10 08:20:01'),
(80, 'delete_reviews', 'reviews', '2022-12-10 08:20:01', '2022-12-10 08:20:01'),
(81, 'browse_appeal_statuses', 'appeal_statuses', '2022-12-14 15:03:21', '2022-12-14 15:03:21'),
(82, 'read_appeal_statuses', 'appeal_statuses', '2022-12-14 15:03:21', '2022-12-14 15:03:21'),
(83, 'edit_appeal_statuses', 'appeal_statuses', '2022-12-14 15:03:21', '2022-12-14 15:03:21'),
(84, 'add_appeal_statuses', 'appeal_statuses', '2022-12-14 15:03:21', '2022-12-14 15:03:21'),
(85, 'delete_appeal_statuses', 'appeal_statuses', '2022-12-14 15:03:21', '2022-12-14 15:03:21');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
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
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
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
(85, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id`, `content`, `authorId`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 'хороший', 1, '2022-12-05 02:34:34', '2022-12-07 16:05:44', '2022-12-07 16:05:44'),
(56, 'в эту компанию. Я заказывал у них дом и они мне построили. Очень все качественно. Спасибо Обратился в компанию «Эталон» с целью приобретения квартиры. Менеджер по продажам, который был со мной на связи, сразу же сориентировал меня по цене и условиям рассрочки. За это ему отдельное спасибо! В целом, все прошло как по маслу. Буду рекомендовать знакомым В компании «Эталон-Инвест» приобрела квартиру. Все было сделано на высшем уровне. Никаких претензий к качеству нет.', 4, '2022-12-10 05:34:17', '2022-12-10 05:34:17', NULL),
(57, 'именно к Вам! Я сам лично с Москвы, это не секрет. И мне в Москве дали кучу адресов, где можно купить и без проблем. Но мне нужен был именно ваш адрес, так как я живу в области. А в Москву не поеду. Так вот я обзвонил все эти адреса, но никто не дал точного ответа. Тогда я решил обратится к вам. За что вам огромное спасибо, потому что я сам не смог найти этот адрес. Я вам сразу же перезвонил по телефону, который вы мне дали. Вы мне сказали что всё нормально, что вы меня ждете.', 4, '2022-12-10 05:34:46', '2022-12-10 05:34:46', NULL),
(58, 'к ним, сейчас все отлично! Поменяли мне тормозные диски и колодки, поставили новые датчики ABS, а также заменили масло и фильтр. В общем, все сделали быстро и качественно. С тех пор я езжу и не парюсь, что я на машине, которая у меня уже не первый год. Короче, рекомендую! Отзыв o Nissan Qashqai оставил: Анатолий из города Москва Nissan Qashqai Год выпуска: 2012 Двигатель: 1.6 Добрый день всем! Решил поделиться впечатлениями от владения своим новым Кашкаем.', 4, '2022-12-10 05:35:02', '2022-12-10 05:35:02', NULL),
(59, 'сюда! Но это только начало. Так как я в шоке от этой компании. Когда я пришел на собеседование мне не сказали что они работают с юр.лицами. В итоге когда я подписал договор я узнал что не могу его расторгнуть. Это в итоге привело к тому что я не смог расторгнуть договор и по факту я работал у них всего 2 месяца. Все это время мне платили зарплату. И я не мог получить свои честно заработанные деньги. Я звонил им, писал письма. Они говорили что все решат и что я могу остаться у них.', 4, '2022-12-10 05:35:37', '2022-12-10 05:35:37', NULL),
(60, 'к вам, мне нужно было не много времени чтоб сделать печать на своей футболке, но это того стоило. Мне понравилось как вы сделали печать на моей футболке. Все быстро и качественно, а главное не дорого, это радует. Спасибо вам большое за работу, теперь я знаю где можно сделать печать Хочу выразить благодарность за быстрое изготовление футболки, а так же за отличное качество печати. С вами приятно работать! Советую всем друзьям.', 4, '2022-12-10 05:36:04', '2022-12-10 05:36:04', NULL),
(61, 'в эту компанию. Подала заявку на ремонт стиральной машины, перезвонили сразу же. На следующий день приехал мастер, все быстро и аккуратно сделал. Стиралка работает лучше новой. Большое спасибо Обращалась в эту организацию для ремонта холодильника. После того как мне заменили компрессор, холодильник перестал морозить. Мастер приехал через час после звонка. Заменил деталь и все заработало. Ремонт обошелся недорого Обратился в эту компанию для ремонта телевизора.', 4, '2022-12-10 05:42:21', '2022-12-10 05:42:21', NULL),
(62, 'что к нему пошла. Я у него и без этого была. Пошла потому что он мне понравился. А он взял и испортил все. Хотя он мне не нравился. Просто так. Он очень хороший человек. И он хороший психолог. Но он сделал из меня дуру. Теперь я понимаю, что надо просто идти дальше. Что я могла потерять? Ничто. Да и если бы я потеряла, то не жалею. Даже если бы он был женат. Потому что это было бы не то. Не то. Ничего. В общем, все как я хотела. Это было просто глупо. Глупо и смешно. Смеяться хочется.', 4, '2022-12-10 05:42:40', '2022-12-10 05:42:40', NULL),
(63, 'что обратился. А потом вдруг понял, что я не просто так с ним столкнулся, а потому что он мне кого-то напомнил. И очень сильно. Я уже не помню, что именно, но это было настолько сильно, что на какой-то момент я даже растерялся. Потом попытался вспомнить, кого же он мне напоминает. Не вспомнил. Но это не важно. Важно то, что это был мой знакомый. Мой лучший друг. Который, оказывается, был в этом городе. В этом мире. Он не мог быть здесь. Просто не мог. Слишком это нереально.', 4, '2022-12-10 05:43:28', '2022-12-10 05:43:28', NULL),
(64, 'в эту компанию. Застройщик не выполнил свои обязательства по договору. В итоге мы получили не то, что ожидали. А именно: квартира с черновой отделкой (не полностью установлены окна, не сделана стяжка пола и т.д.) с доплатой мы согласились на это. По факту нас обманули. Все обещанные работы застройщик не сделал. Нам сделали только окна. Стяжка пола сделана на скорую руку. Пол неровный. Потолок не ровный. Двери стоят криво. Не было сделано ни одной розетки. Ни одного выключателя.', 4, '2022-12-10 05:44:21', '2022-12-10 05:44:21', NULL),
(65, 'в компанию и сказал что меня не устраивает. Они сделали все в лучшем виде. Очень доволен. Спасибо за качественную работу. Все очень понравилось. На все вопросы получил ответы. Быстро и вежливо. Рекомендую', 4, '2022-12-10 05:46:47', '2022-12-10 05:46:47', NULL),
(66, 'к прохожему: - Вы не могли бы помочь мне - Могу, - ответил прохожий и показал на карман.', 4, '2022-12-10 05:46:55', '2022-12-10 05:46:55', NULL),
(67, 'Не понимаю почему в других местах вам пишут хорошие отзывы, но это не так. Во первых цены на услуги завышены, во вторых качество услуг на нуле. К сожалению это мой не первый опыт обращения в эту компанию. Я не знаю как вы получаете клиентов, но вы их теряете. В итоге я не купил товар по той цене которую указал продавец, а заплатил в три раза больше, чем нужно было. Повезло, что продавец не стал требовать деньги обратно, а то бы пришлось и еще доплачивать.', 4, '2022-12-10 05:47:14', '2022-12-10 05:47:14', NULL),
(68, 'именно сюда, у них очень большой ассортимент, плюс еще и консультанты грамотные. Нашла себе несколько интересных позиций, в итоге купила две пижамы и еще один комплект белья, так что буду теперь ходить на выходные в новом наряде. Где купить пижаму в новокузнецке. Отзывы, инструкция по применению, состав и свойства. Официальный сайт где купить пижаму ✅ Купить-где купить пижаму можно в таких странах как: Россия, Беларусь, Казахстан, Киргизия, Молдова, Узбекистан, Украина Армения', 4, '2022-12-10 05:47:39', '2022-12-10 05:47:39', NULL),
(69, 'djtdyj', 4, '2022-12-10 08:41:11', '2022-12-10 08:41:16', '2022-12-10 08:41:16'),
(70, 'jtyj', 4, '2022-12-10 08:41:12', '2022-12-10 08:41:16', '2022-12-10 08:41:16'),
(71, 'htrj', 4, '2022-12-10 08:41:28', '2022-12-10 08:49:40', '2022-12-10 08:49:40'),
(72, 'jtyjty', 4, '2022-12-10 08:41:30', '2022-12-10 08:41:34', '2022-12-10 08:41:34'),
(73, 'hrthrt', 4, '2022-12-10 08:49:47', '2022-12-10 08:50:14', '2022-12-10 08:50:14'),
(74, 'hrthr', 4, '2022-12-10 08:49:49', '2022-12-10 08:50:14', '2022-12-10 08:50:14'),
(75, 'grege', 4, '2022-12-10 11:41:24', '2022-12-10 11:41:54', '2022-12-10 11:41:54'),
(76, 'geerg', 4, '2022-12-10 11:41:26', '2022-12-10 11:41:54', '2022-12-10 11:41:54'),
(77, 'rfgger', 2, '2022-12-10 11:42:53', '2022-12-10 11:42:53', NULL),
(78, 'gdfg', 4, '2022-12-11 03:45:56', '2022-12-11 03:46:04', '2022-12-11 03:46:04'),
(79, 'gerg', 4, '2022-12-11 03:45:59', '2022-12-11 03:46:04', '2022-12-11 03:46:04'),
(80, 'hrthrtj', 4, '2022-12-13 04:45:56', '2022-12-13 04:45:56', NULL),
(81, 'bdf', 4, '2022-12-15 09:03:31', '2022-12-15 09:03:31', NULL),
(82, 'отзывы можно редактировать только своипвапвапв', 4, '2022-12-16 22:23:56', '2022-12-16 22:24:12', '2022-12-16 22:24:12'),
(83, 'и удалять', 4, '2022-12-16 22:24:00', '2022-12-16 22:24:12', '2022-12-16 22:24:12');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Администратор', '2022-12-05 00:48:49', '2022-12-05 00:48:49'),
(2, 'user', 'Обычный Пользователь', '2022-12-05 00:48:49', '2022-12-05 00:48:49');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Название Сайта', 'Название Сайта', '', 'text', 1, 'Site'),
(2, 'site.description', 'Описание Сайта', 'Описание Сайта', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Логотип Сайта', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Фоновое Изображение для Админки', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Название Админки', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Описание Админки', 'Добро пожаловать в Voyager. Пропавшую Админку для Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Загрузчик Админки', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Иконка Админки', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (используется для панели администратора)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `column_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2022-12-01 04:30:20', '2022-12-01 04:30:20'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2022-12-01 04:30:20', '2022-12-01 04:30:20'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2022-12-01 04:30:20', '2022-12-01 04:30:20'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2022-12-01 04:30:20', '2022-12-01 04:30:20'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2022-12-01 04:30:20', '2022-12-01 04:30:20'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2022-12-01 04:30:20', '2022-12-01 04:30:20'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2022-12-01 04:30:20', '2022-12-01 04:30:20'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2022-12-01 04:30:20', '2022-12-01 04:30:20'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2022-12-01 04:30:20', '2022-12-01 04:30:20'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2022-12-01 04:30:20', '2022-12-01 04:30:20'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2022-12-01 04:30:20', '2022-12-01 04:30:20'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2022-12-01 04:30:20', '2022-12-01 04:30:20'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2022-12-01 04:30:20', '2022-12-01 04:30:20'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2022-12-01 04:30:20', '2022-12-01 04:30:20'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2022-12-01 04:30:20', '2022-12-01 04:30:20'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2022-12-01 04:30:20', '2022-12-01 04:30:20'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2022-12-01 04:30:20', '2022-12-01 04:30:20'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2022-12-01 04:30:20', '2022-12-01 04:30:20'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2022-12-01 04:30:20', '2022-12-01 04:30:20'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2022-12-01 04:30:20', '2022-12-01 04:30:20'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2022-12-01 04:30:20', '2022-12-01 04:30:20'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2022-12-01 04:30:20', '2022-12-01 04:30:20'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2022-12-01 04:30:20', '2022-12-01 04:30:20'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2022-12-01 04:30:20', '2022-12-01 04:30:20'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2022-12-01 04:30:20', '2022-12-01 04:30:20'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2022-12-01 04:30:20', '2022-12-01 04:30:20'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2022-12-01 04:30:20', '2022-12-01 04:30:20'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2022-12-01 04:30:20', '2022-12-01 04:30:20'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2022-12-01 04:30:20', '2022-12-01 04:30:20'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2022-12-01 04:30:20', '2022-12-01 04:30:20'),
(31, 'data_rows', 'display_name', 93, 'ru', 'Id', '2022-12-05 01:57:12', '2022-12-05 01:57:12'),
(32, 'data_rows', 'display_name', 94, 'ru', 'Category', '2022-12-05 01:57:12', '2022-12-05 01:57:12'),
(33, 'data_rows', 'display_name', 95, 'ru', 'Created At', '2022-12-05 01:57:12', '2022-12-05 01:57:12'),
(34, 'data_rows', 'display_name', 96, 'ru', 'Updated At', '2022-12-05 01:57:12', '2022-12-05 01:57:12'),
(35, 'data_rows', 'display_name', 114, 'ru', 'claim_subcategories', '2022-12-05 01:57:12', '2022-12-05 01:57:12'),
(36, 'data_types', 'display_name_singular', 17, 'ru', 'Claim Category', '2022-12-05 01:57:12', '2022-12-05 01:57:12'),
(37, 'data_types', 'display_name_plural', 17, 'ru', 'Claim Categories', '2022-12-05 01:57:12', '2022-12-05 01:57:12'),
(38, 'data_rows', 'display_name', 88, 'ru', 'Id', '2022-12-05 02:37:24', '2022-12-05 02:37:24'),
(39, 'data_rows', 'display_name', 89, 'ru', 'Claim Category Id', '2022-12-05 02:37:24', '2022-12-05 02:37:24'),
(40, 'data_rows', 'display_name', 90, 'ru', 'Claim Subcategory Id', '2022-12-05 02:37:24', '2022-12-05 02:37:24'),
(41, 'data_rows', 'display_name', 91, 'ru', 'Created At', '2022-12-05 02:37:24', '2022-12-05 02:37:24'),
(42, 'data_rows', 'display_name', 92, 'ru', 'Updated At', '2022-12-05 02:37:24', '2022-12-05 02:37:24'),
(43, 'data_rows', 'display_name', 115, 'ru', 'claim_subcategories', '2022-12-05 02:37:24', '2022-12-05 02:37:24'),
(44, 'data_types', 'display_name_singular', 16, 'ru', 'Category Subcategory', '2022-12-05 02:37:24', '2022-12-05 02:37:24'),
(45, 'data_types', 'display_name_plural', 16, 'ru', 'Category Subcategories', '2022-12-05 02:37:24', '2022-12-05 02:37:24'),
(46, 'data_rows', 'display_name', 116, 'ru', 'claim_categories', '2022-12-05 13:32:26', '2022-12-05 13:32:26'),
(47, 'menu_items', 'title', 17, 'ru', 'Подкатегории', '2022-12-05 13:36:31', '2022-12-05 13:42:08'),
(48, 'menu_items', 'title', 18, 'ru', 'Связи категорий с подкатегориями', '2022-12-05 13:37:20', '2022-12-05 13:41:55'),
(49, 'menu_items', 'title', 19, 'ru', 'Категории', '2022-12-05 13:38:05', '2022-12-05 13:42:22'),
(50, 'menu_items', 'title', 20, 'ru', 'Тип заявки', '2022-12-05 13:39:47', '2022-12-05 13:42:36'),
(51, 'menu_items', 'title', 21, 'ru', 'Заявки', '2022-12-05 13:40:03', '2022-12-05 13:41:38'),
(52, 'data_rows', 'display_name', 77, 'ru', 'Id', '2022-12-08 01:58:27', '2022-12-08 01:58:27'),
(53, 'data_rows', 'display_name', 78, 'ru', 'Title', '2022-12-08 01:58:27', '2022-12-08 01:58:27'),
(54, 'data_rows', 'display_name', 79, 'ru', 'Content', '2022-12-08 01:58:27', '2022-12-08 01:58:27'),
(55, 'data_rows', 'display_name', 80, 'ru', 'Img', '2022-12-08 01:58:27', '2022-12-08 01:58:27'),
(56, 'data_rows', 'display_name', 81, 'ru', 'Created At', '2022-12-08 01:58:27', '2022-12-08 01:58:27'),
(57, 'data_rows', 'display_name', 82, 'ru', 'Updated At', '2022-12-08 01:58:27', '2022-12-08 01:58:27'),
(58, 'data_rows', 'display_name', 83, 'ru', 'Deleted At', '2022-12-08 01:58:27', '2022-12-08 01:58:27'),
(59, 'data_types', 'display_name_singular', 13, 'ru', 'News', '2022-12-08 01:58:27', '2022-12-08 01:58:27'),
(60, 'data_types', 'display_name_plural', 13, 'ru', 'Новости', '2022-12-08 01:58:27', '2022-12-08 01:58:27'),
(62, 'menu_items', 'title', 23, 'ru', 'Отзывы', '2022-12-10 08:20:41', '2022-12-10 08:20:41'),
(63, 'menu_items', 'title', 24, 'ru', 'Статус заявки', '2022-12-14 15:04:00', '2022-12-14 15:04:00'),
(64, 'data_rows', 'display_name', 101, 'ru', 'Id', '2022-12-14 15:25:17', '2022-12-14 15:25:17'),
(65, 'data_rows', 'display_name', 102, 'ru', 'Fio', '2022-12-14 15:25:17', '2022-12-14 15:25:17'),
(66, 'data_rows', 'display_name', 103, 'ru', 'Address', '2022-12-14 15:25:17', '2022-12-14 15:25:17'),
(67, 'data_rows', 'display_name', 104, 'ru', 'Phone', '2022-12-14 15:25:17', '2022-12-14 15:25:17'),
(68, 'data_rows', 'display_name', 105, 'ru', 'Email', '2022-12-14 15:25:17', '2022-12-14 15:25:17'),
(69, 'data_rows', 'display_name', 106, 'ru', 'Description', '2022-12-14 15:25:17', '2022-12-14 15:25:17'),
(70, 'data_rows', 'display_name', 107, 'ru', 'Date', '2022-12-14 15:25:17', '2022-12-14 15:25:17'),
(71, 'data_rows', 'display_name', 108, 'ru', 'Img Path', '2022-12-14 15:25:17', '2022-12-14 15:25:17'),
(72, 'data_rows', 'display_name', 109, 'ru', 'Appeal Type Id', '2022-12-14 15:25:17', '2022-12-14 15:25:17'),
(73, 'data_rows', 'display_name', 110, 'ru', 'Claim Category Id', '2022-12-14 15:25:17', '2022-12-14 15:25:17'),
(74, 'data_rows', 'display_name', 111, 'ru', 'Created At', '2022-12-14 15:25:17', '2022-12-14 15:25:17'),
(75, 'data_rows', 'display_name', 112, 'ru', 'Updated At', '2022-12-14 15:25:17', '2022-12-14 15:25:17'),
(76, 'data_rows', 'display_name', 113, 'ru', 'Deleted At', '2022-12-14 15:25:17', '2022-12-14 15:25:17'),
(77, 'data_rows', 'display_name', 127, 'ru', 'appeal_statuses', '2022-12-14 15:25:17', '2022-12-14 15:25:17'),
(78, 'data_types', 'display_name_singular', 19, 'ru', 'Appeal', '2022-12-14 15:25:17', '2022-12-14 15:25:17'),
(79, 'data_types', 'display_name_plural', 19, 'ru', 'Appeals', '2022-12-14 15:25:17', '2022-12-14 15:25:17'),
(80, 'data_rows', 'display_name', 128, 'ru', 'User Id', '2022-12-14 15:26:08', '2022-12-14 15:26:08'),
(81, 'data_rows', 'display_name', 129, 'ru', 'Claim Subcategory Id', '2022-12-14 15:26:08', '2022-12-14 15:26:08'),
(82, 'data_rows', 'display_name', 130, 'ru', 'Status Id', '2022-12-14 15:26:08', '2022-12-14 15:26:08');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@mail.ru', 'users/default.png', NULL, '$2y$10$0ai4BCOMPclKx4fPgJpn3OIIlL218b.nrPYIDSlqauf4P9psEEsBO', 'vFZVfXoa6odhUYCCNRtgNOti8kTEygiKUXio5O6sqIryPoBWUNtvEbczjp0q', '{\"locale\":\"ru\"}', '2022-12-05 00:48:53', '2022-12-10 07:42:11'),
(2, 2, 'Владислав', 'notadmin@mail.ru', 'users/default.png', NULL, '$2y$10$.ngggrc9GWc5zPJZNAMMtuSwgl36xE4C8Cz1DKUUuGrH2iTAzTHk2', 'l5zfO7uMpctAQxKjxV3iShBtYrCGYfcgLjz60P0cWkzYerR3QyNls2gFHEQO', NULL, '2022-12-07 14:43:07', '2022-12-07 14:43:07'),
(3, 2, 'Максим', 'mkorol203@gmail.com', 'users/default.png', NULL, '$2y$10$TNQcsGAdGbSz/..qf/es...jf3/FEh6ZoPt3On2cF9Eoz8M6OEMme', NULL, NULL, '2022-12-08 05:32:17', '2022-12-08 05:32:17'),
(4, 2, 'Ярослав', 'mr.golov2014@gmail.com', 'users/default.png', NULL, '$2y$10$PPT6EeewoLrjgUJRsMRhIew0qJNiwNALcHuV/oMNO3aVAkvW/QT8O', 'A1bPMQQTkuiX9LO6v07PdROqJtnX7f4NaYGF9Mh56AkOq7zPrUkBa01FLnvu', NULL, '2022-12-08 05:59:26', '2022-12-16 22:26:58'),
(5, 2, 'gfd', 'qwe@mail.ru', 'users/default.png', NULL, '$2y$10$3b6KBjA4vv6eDH/13Nen3.4J.3iqPv1iqn9ARzy29m3geoEEWRwty', NULL, NULL, '2022-12-10 11:50:44', '2022-12-10 11:50:44'),
(6, 2, 'Сергей', 'yaroslavurtk@mail.ru', 'users/default.png', NULL, '$2y$10$4AQ1f5ezP5iQZcWrIi7KNe89rxOz0Sb0iCh6pfGniUbY47PWxb2ae', NULL, NULL, '2022-12-14 13:31:39', '2022-12-14 13:31:39');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `appeals`
--
ALTER TABLE `appeals`
  ADD CONSTRAINT `appeal_appealtype_fx` FOREIGN KEY (`appeal_type_id`) REFERENCES `appeal_types` (`id`),
  ADD CONSTRAINT `appeal_claimcategory_fx` FOREIGN KEY (`claim_category_id`) REFERENCES `claim_categories` (`id`),
  ADD CONSTRAINT `appeal_status_fk` FOREIGN KEY (`status_id`) REFERENCES `appeal_statuses` (`id`),
  ADD CONSTRAINT `claim_categories_subcategory_fk` FOREIGN KEY (`claim_subcategory_id`) REFERENCES `claim_subcategories` (`id`);

--
-- Ограничения внешнего ключа таблицы `category_subcategories`
--
ALTER TABLE `category_subcategories`
  ADD CONSTRAINT `category_subcategory_category_fk` FOREIGN KEY (`claim_category_id`) REFERENCES `claim_categories` (`id`),
  ADD CONSTRAINT `category_subcategory_subcategory_fk` FOREIGN KEY (`claim_subcategory_id`) REFERENCES `claim_subcategories` (`id`);

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
