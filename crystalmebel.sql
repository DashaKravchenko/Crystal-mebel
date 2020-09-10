-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 22 2020 г., 12:13
-- Версия сервера: 5.7.29
-- Версия PHP: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `crystalmebel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(12, 'action_scheduler/migration_hook', 'complete', '2020-07-06 11:45:55', '2020-07-06 14:45:55', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1594035955;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1594035955;}', 1, 1, '2020-07-06 11:46:26', '2020-07-06 14:46:26', 0, NULL),
(13, 'action_scheduler/migration_hook', 'canceled', '2020-07-06 11:45:55', '2020-07-06 14:45:55', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1594035955;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1594035955;}', 1, 0, '2020-07-06 11:46:26', '2020-07-06 14:46:26', 0, NULL),
(14, 'action_scheduler/migration_hook', 'complete', '2020-07-09 18:14:33', '2020-07-09 21:14:33', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1594318473;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1594318473;}', 1, 1, '2020-07-09 18:14:41', '2020-07-09 21:14:41', 0, NULL),
(15, 'action_scheduler/migration_hook', 'complete', '2020-07-09 18:29:45', '2020-07-09 21:29:45', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1594319385;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1594319385;}', 1, 1, '2020-07-09 18:29:55', '2020-07-09 21:29:55', 0, NULL),
(16, 'action_scheduler/migration_hook', 'complete', '2020-07-09 18:30:55', '2020-07-09 21:30:55', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1594319455;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1594319455;}', 1, 1, '2020-07-09 18:31:00', '2020-07-09 21:31:00', 0, NULL),
(17, 'action_scheduler/migration_hook', 'complete', '2020-07-09 18:41:34', '2020-07-09 21:41:34', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1594320094;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1594320094;}', 1, 1, '2020-07-09 18:41:57', '2020-07-09 21:41:57', 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 12, 'действие создано', '2020-07-06 11:44:56', '2020-07-06 14:44:56'),
(2, 13, 'действие создано', '2020-07-06 11:44:56', '2020-07-06 14:44:56'),
(3, 12, 'действие началось через WP Cron', '2020-07-06 11:46:26', '2020-07-06 14:46:26'),
(4, 13, 'действие отменено', '2020-07-06 11:46:26', '2020-07-06 14:46:26'),
(5, 12, 'действие завершено через WP Cron', '2020-07-06 11:46:26', '2020-07-06 14:46:26'),
(6, 13, 'действие игнорируется через WP Cron', '2020-07-06 11:46:26', '2020-07-06 14:46:26'),
(7, 14, 'действие создано', '2020-07-09 18:13:33', '2020-07-09 21:13:33'),
(8, 14, 'действие началось через WP Cron', '2020-07-09 18:14:41', '2020-07-09 21:14:41'),
(9, 14, 'действие завершено через WP Cron', '2020-07-09 18:14:41', '2020-07-09 21:14:41'),
(10, 15, 'действие создано', '2020-07-09 18:28:45', '2020-07-09 21:28:45'),
(11, 15, 'действие началось через Async Request', '2020-07-09 18:29:55', '2020-07-09 21:29:55'),
(12, 15, 'действие завершено через Async Request', '2020-07-09 18:29:55', '2020-07-09 21:29:55'),
(13, 16, 'действие создано', '2020-07-09 18:29:56', '2020-07-09 21:29:56'),
(14, 16, 'действие началось через Async Request', '2020-07-09 18:31:00', '2020-07-09 21:31:00'),
(15, 16, 'действие завершено через Async Request', '2020-07-09 18:31:00', '2020-07-09 21:31:00'),
(16, 17, 'действие создано', '2020-07-09 18:40:34', '2020-07-09 21:40:34'),
(17, 17, 'действие началось через WP Cron', '2020-07-09 18:41:57', '2020-07-09 21:41:57'),
(18, 17, 'действие завершено через WP Cron', '2020-07-09 18:41:57', '2020-07-09 21:41:57');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Коментатор WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-07-06 09:43:42', '2020-07-06 06:43:42', 'Привіт! Це коментар.\nЩоб почати модерувати, редагувати і видаляти коментарі, перейдіть в розділ Коментарів у Майстерні.\nАватари авторів коментарів завантажуються з сервісу<a href=\"https://uk.gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_create_map`
--

CREATE TABLE `wp_create_map` (
  `map_id` int(11) NOT NULL,
  `map_title` varchar(255) DEFAULT NULL,
  `map_width` varchar(255) DEFAULT NULL,
  `map_height` varchar(255) DEFAULT NULL,
  `map_zoom_level` varchar(255) DEFAULT NULL,
  `map_type` varchar(255) DEFAULT NULL,
  `map_scrolling_wheel` varchar(255) DEFAULT NULL,
  `map_visual_refresh` varchar(255) DEFAULT NULL,
  `map_45imagery` varchar(255) DEFAULT NULL,
  `map_street_view_setting` text,
  `map_route_direction_setting` text,
  `map_all_control` text,
  `map_info_window_setting` text,
  `style_google_map` text,
  `map_locations` longtext,
  `map_layer_setting` text,
  `map_polygon_setting` longtext,
  `map_polyline_setting` longtext,
  `map_cluster_setting` text,
  `map_overlay_setting` text,
  `map_geotags` text,
  `map_infowindow_setting` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_group_map`
--

CREATE TABLE `wp_group_map` (
  `group_map_id` int(11) NOT NULL,
  `group_map_title` varchar(255) DEFAULT NULL,
  `group_marker` text,
  `extensions_fields` text,
  `group_parent` int(11) DEFAULT '0',
  `group_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_map_locations`
--

CREATE TABLE `wp_map_locations` (
  `location_id` int(11) NOT NULL,
  `location_title` varchar(255) DEFAULT NULL,
  `location_address` varchar(255) DEFAULT NULL,
  `location_draggable` varchar(255) DEFAULT NULL,
  `location_infowindow_default_open` varchar(255) DEFAULT NULL,
  `location_animation` varchar(255) DEFAULT NULL,
  `location_latitude` varchar(255) DEFAULT NULL,
  `location_longitude` varchar(255) DEFAULT NULL,
  `location_city` varchar(255) DEFAULT NULL,
  `location_state` varchar(255) DEFAULT NULL,
  `location_country` varchar(255) DEFAULT NULL,
  `location_postal_code` varchar(255) DEFAULT NULL,
  `location_zoom` int(11) DEFAULT NULL,
  `location_author` int(11) DEFAULT NULL,
  `location_messages` text,
  `location_settings` text,
  `location_group_map` text,
  `location_extrafields` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://crystalmebel', 'yes'),
(2, 'home', 'http://crystalmebel', 'yes'),
(3, 'blogname', '', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', '0960551617m@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:159:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:17:\"katalog-mebeli/?$\";s:27:\"index.php?post_type=product\";s:47:\"katalog-mebeli/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:42:\"katalog-mebeli/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:34:\"katalog-mebeli/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=13&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:59:\"ajax-search-for-woocommerce/ajax-search-for-woocommerce.php\";i:2;s:19:\"jetpack/jetpack.php\";i:3;s:45:\"woocommerce-services/woocommerce-services.php\";i:4;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:77:\"F:\\IT\\OSPanel\\domains\\crystalmebel/wp-content/themes/clean-commerce/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'clean-commerce', 'yes'),
(41, 'stylesheet', 'clean-commerce', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'customer', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:3:{i:2;a:4:{s:5:\"title\";s:13:\"О сайте\";s:4:\"text\";s:205:\"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:21:\"Найдите нас\";s:4:\"text\";s:141:\"<strong>Адрес</strong>\r\nг. Запорожье ул. Автострадная 109\r\n\r\n+38 (096) 055 16 17\r\n+38 (050) 608 63 93;\r\n\r\n&nbsp;\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:45:\"woocommerce-services/woocommerce-services.php\";a:2:{i:0;s:17:\"WC_Connect_Loader\";i:1;s:16:\"plugin_uninstall\";}}', 'no'),
(82, 'timezone_string', 'Europe/Kiev', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '13', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1609569822', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:124:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:20:\"wpgmp_admin_overview\";b:1;s:18:\"wpgmp_how_overview\";b:1;s:19:\"wpgmp_form_location\";b:1;s:21:\"wpgmp_manage_location\";b:1;s:14:\"wpgmp_form_map\";b:1;s:16:\"wpgmp_manage_map\";b:1;s:20:\"wpgmp_form_group_map\";b:1;s:22:\"wpgmp_manage_group_map\";b:1;s:21:\"wpgmp_manage_settings\";b:1;s:23:\"wpgmp_manage_extentions\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'ru_RU', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:7:{s:19:\"wp_inactive_widgets\";a:1:{i:0;s:6:\"text-2\";}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-3\";i:1;s:38:\"woocommerce_recently_viewed_products-3\";i:2;s:23:\"clean-commerce-social-3\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:19:{i:1595409128;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1595409133;a:1:{s:28:\"wp_1_wc_privacy_cleanup_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:37:\"wp_1_wc_privacy_cleanup_cron_interval\";s:4:\"args\";a:0:{}s:8:\"interval\";i:300;}}}i:1595411023;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1595411090;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1595411102;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1595411938;a:1:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1595412730;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1595418289;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1595418295;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1595429079;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1595439879;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1595443423;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1595451600;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1595486623;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1595486649;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1595486650;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1595918623;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1596627939;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1594018325;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(139, 'can_compress_scripts', '1', 'no'),
(148, 'new_admin_email', '0960551617m@gmail.com', 'yes'),
(171, 'widget_clean-commerce-social', 'a:2:{i:3;a:2:{s:5:\"title\";s:0:\"\";s:8:\"subtitle\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(172, 'widget_clean-commerce-featured-page', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(173, 'widget_clean-commerce-recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(174, 'theme_mods_clean-commerce', 'a:6:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:16;s:6:\"header\";i:32;s:6:\"social\";i:33;}s:16:\"search_in_header\";b:0;s:13:\"global_layout\";s:13:\"right-sidebar\";s:21:\"show_social_in_footer\";b:0;s:24:\"featured_carousel_status\";s:9:\"home-page\";}', 'yes'),
(179, 'current_theme', 'Clean Commerce', 'yes'),
(180, 'theme_switched', '', 'yes'),
(182, 'recently_activated', 'a:3:{s:35:\"call-now-button/call-now-button.php\";i:1594320032;s:47:\"excitel-click-to-call/excitel-click-to-call.php\";i:1594319324;s:45:\"wp-google-map-plugin/wp-google-map-plugin.php\";i:1594318411;}', 'yes'),
(195, 'action_scheduler_hybrid_store_demarkation', '11', 'yes'),
(196, 'schema-ActionScheduler_StoreSchema', '3.0.1594035847', 'yes'),
(197, 'schema-ActionScheduler_LoggerSchema', '2.0.1594035848', 'yes'),
(200, 'woocommerce_store_address', 'ул. Автострадная 109', 'yes'),
(201, 'woocommerce_store_address_2', '', 'yes'),
(202, 'woocommerce_store_city', 'Запорожье', 'yes'),
(203, 'woocommerce_default_country', 'UA', 'yes'),
(204, 'woocommerce_store_postcode', '69081', 'yes'),
(205, 'woocommerce_allowed_countries', 'specific', 'yes'),
(206, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(207, 'woocommerce_specific_allowed_countries', 'a:1:{i:0;s:2:\"UA\";}', 'yes'),
(208, 'woocommerce_ship_to_countries', 'specific', 'yes'),
(209, 'woocommerce_specific_ship_to_countries', 'a:1:{i:0;s:2:\"UA\";}', 'yes'),
(210, 'woocommerce_default_customer_address', 'base', 'yes'),
(211, 'woocommerce_calc_taxes', 'no', 'yes'),
(212, 'woocommerce_enable_coupons', 'no', 'yes'),
(213, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(214, 'woocommerce_currency', 'UAH', 'yes'),
(215, 'woocommerce_currency_pos', 'left', 'yes'),
(216, 'woocommerce_price_thousand_sep', ',', 'yes'),
(217, 'woocommerce_price_decimal_sep', '.', 'yes'),
(218, 'woocommerce_price_num_decimals', '2', 'yes'),
(219, 'woocommerce_shop_page_id', '13', 'yes'),
(220, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(221, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(222, 'woocommerce_placeholder_image', '12', 'yes'),
(223, 'woocommerce_weight_unit', 'kg', 'yes'),
(224, 'woocommerce_dimension_unit', 'cm', 'yes'),
(225, 'woocommerce_enable_reviews', 'yes', 'yes'),
(226, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(227, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(228, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(229, 'woocommerce_review_rating_required', 'yes', 'no'),
(230, 'woocommerce_manage_stock', 'yes', 'yes'),
(231, 'woocommerce_hold_stock_minutes', '60', 'no'),
(232, 'woocommerce_notify_low_stock', 'yes', 'no'),
(233, 'woocommerce_notify_no_stock', 'yes', 'no'),
(234, 'woocommerce_stock_email_recipient', '0960551617m@gmail.com', 'no'),
(235, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(236, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(237, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(238, 'woocommerce_stock_format', '', 'yes'),
(239, 'woocommerce_file_download_method', 'force', 'no'),
(240, 'woocommerce_downloads_require_login', 'no', 'no'),
(241, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(242, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(243, 'woocommerce_prices_include_tax', 'no', 'yes'),
(244, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(245, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(246, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(247, 'woocommerce_tax_classes', '', 'yes'),
(248, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(249, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(250, 'woocommerce_price_display_suffix', '', 'yes'),
(251, 'woocommerce_tax_total_display', 'itemized', 'no'),
(252, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(253, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(254, 'woocommerce_ship_to_destination', 'billing', 'no'),
(255, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(256, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(257, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(258, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(259, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(260, 'woocommerce_registration_generate_username', 'yes', 'no'),
(261, 'woocommerce_registration_generate_password', 'yes', 'no'),
(262, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(263, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(264, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(265, 'woocommerce_registration_privacy_policy_text', 'Ваши личные данные будут использоваться для упрощения вашей работы с сайтом, управления доступом к вашей учётной записи и для других целей, описанных в нашей [privacy_policy].', 'yes'),
(266, 'woocommerce_checkout_privacy_policy_text', 'Ваши личные данные будут использоваться для обработки ваших заказов, упрощения вашей работы с сайтом и для других целей, описанных в нашей [privacy_policy].', 'yes'),
(267, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(268, 'woocommerce_trash_pending_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(269, 'woocommerce_trash_failed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(270, 'woocommerce_trash_cancelled_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(271, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(272, 'woocommerce_email_from_name', 'Crystal mebel', 'no'),
(273, 'woocommerce_email_from_address', '0960551617m@gmail.com', 'no'),
(274, 'woocommerce_email_header_image', '', 'no'),
(275, 'woocommerce_email_footer_text', '{site_title} &mdash;', 'no'),
(276, 'woocommerce_email_base_color', '#ff9900', 'no'),
(277, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(278, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(279, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(280, 'woocommerce_cart_page_id', '14', 'no'),
(281, 'woocommerce_checkout_page_id', '15', 'no'),
(282, 'woocommerce_myaccount_page_id', '16', 'no'),
(283, 'woocommerce_terms_page_id', '', 'no'),
(284, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(285, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(286, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(287, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(288, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(289, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(290, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(291, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(292, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(293, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(294, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(295, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(296, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(297, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(298, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(299, 'woocommerce_api_enabled', 'no', 'yes'),
(300, 'woocommerce_allow_tracking', 'yes', 'no'),
(301, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(302, 'woocommerce_single_image_width', '600', 'yes'),
(303, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(304, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(305, 'woocommerce_demo_store', 'no', 'no'),
(307, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(308, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(309, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(310, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(312, 'default_product_cat', '15', 'yes'),
(313, 'woocommerce_admin_notices', 'a:2:{i:0;s:7:\"install\";i:1;s:20:\"no_secure_connection\";}', 'yes'),
(316, 'woocommerce_version', '4.2.2', 'yes'),
(317, 'woocommerce_db_version', '4.2.2', 'yes'),
(320, 'action_scheduler_lock_async-request-runner', '1595409205', 'yes'),
(321, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"S9qEil36gMuXOnaXvAN20hnFWCjCHzrB\";}', 'yes'),
(322, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(323, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(324, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(325, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(326, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(327, 'widget_woocommerce_product_categories', 'a:2:{i:2;a:8:{s:5:\"title\";s:33:\"Категории товаров\";s:7:\"orderby\";s:4:\"name\";s:8:\"dropdown\";i:0;s:5:\"count\";i:0;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:0;s:9:\"max_depth\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(328, 'widget_woocommerce_product_search', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(329, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(330, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(331, 'widget_woocommerce_recently_viewed_products', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(332, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(333, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(334, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(343, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(344, 'woocommerce_admin_version', '1.2.4', 'yes'),
(345, 'woocommerce_admin_install_timestamp', '1594035897', 'yes'),
(346, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(351, 'woocommerce_onboarding_profile', 'a:10:{s:9:\"completed\";b:1;s:12:\"setup_client\";b:1;s:8:\"industry\";a:1:{i:0;a:1:{s:4:\"slug\";s:21:\"home-furniture-garden\";}}s:13:\"product_types\";a:1:{i:0;s:8:\"physical\";}s:13:\"product_count\";s:8:\"101-1000\";s:14:\"selling_venues\";s:12:\"brick-mortar\";s:7:\"revenue\";s:4:\"none\";s:19:\"business_extensions\";a:0:{}s:5:\"theme\";s:14:\"clean-commerce\";s:7:\"plugins\";s:17:\"already-installed\";}', 'yes'),
(352, 'woocommerce_onboarding_opt_in', 'yes', 'yes'),
(355, '_transient_woocommerce_reports-transient-version', '1594315000', 'yes'),
(385, 'jetpack_activated', '1', 'yes'),
(388, 'jetpack_activation_source', 'a:2:{i:0;s:7:\"unknown\";i:1;N;}', 'yes'),
(389, 'jetpack_sync_settings_disable', '0', 'yes'),
(390, 'jetpack_options', 'a:4:{s:7:\"version\";s:16:\"8.6.1:1594036737\";s:11:\"old_version\";s:16:\"8.6.1:1594036737\";s:28:\"fallback_no_verify_ssl_certs\";i:0;s:9:\"time_diff\";i:0;}', 'yes'),
(391, 'jetpack_connection_active_plugins', 'a:1:{s:7:\"jetpack\";a:1:{s:4:\"name\";s:7:\"Jetpack\";}}', 'yes'),
(394, 'wc_connect_options', 'a:1:{s:12:\"tos_accepted\";b:1;}', 'yes'),
(395, 'jetpack_testimonial', '0', 'yes'),
(396, '_transient_timeout_jetpack_file_data_8.6.1', '1596542529', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(397, '_transient_jetpack_file_data_8.6.1', 'a:52:{s:32:\"212a162108f1dc20cc6c768d5b47d4f2\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d3576702faeb399eb47ad20f586c3804\";a:14:{s:4:\"name\";s:8:\"Carousel\";s:11:\"description\";s:75:\"Display images and galleries in a gorgeous, full-screen browsing experience\";s:4:\"sort\";s:2:\"22\";s:20:\"recommendation_order\";s:2:\"12\";s:10:\"introduced\";s:3:\"1.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:80:\"gallery, carousel, diaporama, slideshow, images, lightbox, exif, metadata, image\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"55409a5f8388b8d33e2350ef80de3ea3\";a:14:{s:4:\"name\";s:13:\"Comment Likes\";s:11:\"description\";s:64:\"Increase visitor engagement by adding a Like button to comments.\";s:4:\"sort\";s:2:\"39\";s:20:\"recommendation_order\";s:2:\"17\";s:10:\"introduced\";s:3:\"5.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:37:\"like widget, like button, like, likes\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e914e6d31cb61f5a9ef86e1b9573430e\";a:14:{s:4:\"name\";s:8:\"Comments\";s:11:\"description\";s:81:\"Let visitors use a WordPress.com, Twitter, Facebook, or Google account to comment\";s:4:\"sort\";s:2:\"20\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:53:\"comments, comment, facebook, twitter, google+, social\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"f1b8c61705fb18eb8c8584c9f9cdffd9\";a:14:{s:4:\"name\";s:12:\"Contact Form\";s:11:\"description\";s:81:\"Add a customizable contact form to any post or page using the Jetpack Form Block.\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:3:\"1.3\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:214:\"contact, form, grunion, feedback, submission, contact form, email, feedback, contact form plugin, custom form, custom form plugin, form builder, forms, form maker, survey, contact by jetpack, contact us, forms free\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4fca6eb23a793155d69fdb119a094926\";a:14:{s:4:\"name\";s:9:\"Copy Post\";s:11:\"description\";s:77:\"Enable the option to copy entire posts and pages, including tags and settings\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"7.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:15:\"copy, duplicate\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cfdac01e3c3c529f93a8f49edef1f5db\";a:14:{s:4:\"name\";s:20:\"Custom content types\";s:11:\"description\";s:74:\"Display different types of content on your site with custom content types.\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:72:\"cpt, custom post types, portfolio, portfolios, testimonial, testimonials\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4b9137ecf507290743735fb1f94535df\";a:14:{s:4:\"name\";s:10:\"Custom CSS\";s:11:\"description\";s:88:\"Adds options for CSS preprocessor use, disabling the theme\'s CSS, or custom image width.\";s:4:\"sort\";s:1:\"2\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.7\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:108:\"css, customize, custom, style, editor, less, sass, preprocessor, font, mobile, appearance, theme, stylesheet\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"95d75b38d76d2ee1b5b537026eadb8ff\";a:14:{s:4:\"name\";s:21:\"Enhanced Distribution\";s:11:\"description\";s:27:\"Increase reach and traffic.\";s:4:\"sort\";s:1:\"5\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"google, seo, firehose, search, broadcast, broadcasting\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"f1bb571a95c5de1e6adaf9db8567c039\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"822f9ef1281dace3fb7cc420c77d24e0\";a:14:{s:4:\"name\";s:16:\"Google Analytics\";s:11:\"description\";s:56:\"Set up Google Analytics without touching a line of code.\";s:4:\"sort\";s:2:\"37\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"4.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:37:\"webmaster, google, analytics, console\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"c167275f926ef0eefaec9a679bd88d34\";a:14:{s:4:\"name\";s:19:\"Gravatar Hovercards\";s:11:\"description\";s:58:\"Enable pop-up business cards over commenters’ Gravatars.\";s:4:\"sort\";s:2:\"11\";s:20:\"recommendation_order\";s:2:\"13\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:20:\"gravatar, hovercards\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"58cbd4585a74829a1c88aa9c295f3993\";a:14:{s:4:\"name\";s:15:\"Infinite Scroll\";s:11:\"description\";s:53:\"Automatically load new content when a visitor scrolls\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:33:\"scroll, infinite, infinite scroll\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d4a35eabc948caefad71a0d3303b95c8\";a:14:{s:4:\"name\";s:8:\"JSON API\";s:11:\"description\";s:51:\"Allow applications to securely access your content.\";s:4:\"sort\";s:2:\"19\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:19:\"Writing, Developers\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:50:\"api, rest, develop, developers, json, klout, oauth\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7b0c670bc3f8209dc83abb8610e23a89\";a:14:{s:4:\"name\";s:14:\"Beautiful Math\";s:11:\"description\";s:74:\"Use the LaTeX markup language to write mathematical equations and formulas\";s:4:\"sort\";s:2:\"12\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:47:\"latex, math, equation, equations, formula, code\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b00e4e6c109ce6f77b5c83fbaaaead4c\";a:14:{s:4:\"name\";s:11:\"Lazy Images\";s:11:\"description\";s:137:\"Speed up your site and create a smoother viewing experience by loading images as visitors scroll down the screen, instead of all at once.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:5:\"5.6.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:23:\"Appearance, Recommended\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:150:\"mobile, theme, fast images, fast image, image, lazy, lazy load, lazyload, images, lazy images, thumbnail, image lazy load, lazy loading, load, loading\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"8e46c72906c928eca634ac2c8b1bc84f\";a:14:{s:4:\"name\";s:5:\"Likes\";s:11:\"description\";s:63:\"Give visitors an easy way to show they appreciate your content.\";s:4:\"sort\";s:2:\"23\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:26:\"like, likes, wordpress.com\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2df2264a07aff77e0556121e33349dce\";a:14:{s:4:\"name\";s:8:\"Markdown\";s:11:\"description\";s:50:\"Write posts or pages in plain-text Markdown syntax\";s:4:\"sort\";s:2:\"31\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:12:\"md, markdown\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0337eacae47d30c946cb9fc4e5ece649\";a:14:{s:4:\"name\";s:21:\"WordPress.com Toolbar\";s:11:\"description\";s:91:\"Replaces the admin bar with a useful toolbar to quickly manage your site via WordPress.com.\";s:4:\"sort\";s:2:\"38\";s:20:\"recommendation_order\";s:2:\"16\";s:10:\"introduced\";s:3:\"4.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"General\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:19:\"adminbar, masterbar\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cb5d81445061b89d19cb9c7754697a39\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ea0fbbd64080c81a90a784924603588c\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5c53fdb3633ba3232f60180116900273\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"40b97d9ce396339d3e8e46b833a045b5\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0739df64747f2d02c140f23ce6c19cd8\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"c54bb0a65b39f1316da8632197a88a4e\";a:14:{s:4:\"name\";s:7:\"Monitor\";s:11:\"description\";s:118:\"Jetpack’s downtime monitoring will continuously watch your site, and alert you the moment that downtime is detected.\";s:4:\"sort\";s:2:\"28\";s:20:\"recommendation_order\";s:2:\"10\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:123:\"monitor, uptime, downtime, monitoring, maintenance, maintenance mode, offline, site is down, site down, down, repair, error\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cc013f4c5480c7bdc1e7edb2f410bf3c\";a:14:{s:4:\"name\";s:13:\"Notifications\";s:11:\"description\";s:57:\"Receive instant notifications of site comments and likes.\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:62:\"notification, notifications, toolbar, adminbar, push, comments\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b3b34928b1e549bb52f866accc0450c5\";a:14:{s:4:\"name\";s:9:\"Asset CDN\";s:11:\"description\";s:154:\"Jetpack’s Site Accelerator loads your site faster by optimizing your images and serving your images and static files from our global network of servers.\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"6.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:23:\"Recommended, Appearance\";s:25:\"additional_search_queries\";s:160:\"site accelerator, accelerate, static, assets, javascript, css, files, performance, cdn, bandwidth, content delivery network, pagespeed, combine js, optimize css\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"714284944f56d6936a40f3309900bc8e\";a:14:{s:4:\"name\";s:9:\"Image CDN\";s:11:\"description\";s:141:\"Mirrors and serves your images from our free and fast image CDN, improving your site’s performance with no additional load on your servers.\";s:4:\"sort\";s:2:\"25\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:23:\"Recommended, Appearance\";s:25:\"additional_search_queries\";s:171:\"photon, photo cdn, image cdn, speed, compression, resize, responsive images, responsive, content distribution network, optimize, page speed, image optimize, photon jetpack\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"348754bc914ee02c72d9af445627784c\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"041704e207c4c59eea93e0499c908bff\";a:14:{s:4:\"name\";s:13:\"Post by email\";s:11:\"description\";s:33:\"Publish posts by sending an email\";s:4:\"sort\";s:2:\"14\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:20:\"post by email, email\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"26e6cb3e08a6cfd0811c17e7c633c72c\";a:14:{s:4:\"name\";s:7:\"Protect\";s:11:\"description\";s:151:\"Enabling brute force protection will prevent bots and hackers from attempting to log in to your website with common username and password combinations.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"4\";s:10:\"introduced\";s:3:\"3.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:173:\"security, jetpack protect, secure, protection, botnet, brute force, protect, login, bot, password, passwords, strong passwords, strong password, wp-login.php,  protect admin\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"915a504082f797395713fd01e0e2e713\";a:14:{s:4:\"name\";s:9:\"Publicize\";s:11:\"description\";s:128:\"Publicize makes it easy to share your site’s posts on several social media networks automatically when you publish a new post.\";s:4:\"sort\";s:2:\"10\";s:20:\"recommendation_order\";s:1:\"7\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:220:\"facebook, jetpack publicize, twitter, tumblr, linkedin, social, tweet, connections, sharing, social media, automated, automated sharing, auto publish, auto tweet and like, auto tweet, facebook auto post, facebook posting\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"a7b21cc562ee9ffa357bba19701fe45b\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"9243c1a718566213f4eaf3b44cf14b07\";a:14:{s:4:\"name\";s:13:\"Related posts\";s:11:\"description\";s:113:\"Keep visitors engaged on your blog by highlighting relevant and new content at the bottom of each published post.\";s:4:\"sort\";s:2:\"29\";s:20:\"recommendation_order\";s:1:\"9\";s:10:\"introduced\";s:3:\"2.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:360:\"related, jetpack related posts, related posts for wordpress, related posts, popular posts, popular, related content, related post, contextual, context, contextual related posts, related articles, similar posts, easy related posts, related page, simple related posts, free related posts, related thumbnails, similar, engagement, yet another related posts plugin\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"583e4cda5596ee1b28a19cde33f438be\";a:14:{s:4:\"name\";s:6:\"Search\";s:11:\"description\";s:102:\"Help visitors quickly find answers with highly relevant instant search results and powerful filtering.\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:6:\"Search\";s:25:\"additional_search_queries\";s:110:\"search, elastic, elastic search, elasticsearch, fast search, search results, search performance, google search\";s:12:\"plan_classes\";s:8:\"business\";}s:32:\"15346c1f7f2a5f29d34378774ecfa830\";a:14:{s:4:\"name\";s:9:\"SEO Tools\";s:11:\"description\";s:50:\"Better results on search engines and social media.\";s:4:\"sort\";s:2:\"35\";s:20:\"recommendation_order\";s:2:\"15\";s:10:\"introduced\";s:3:\"4.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:7:\"Traffic\";s:25:\"additional_search_queries\";s:81:\"search engine optimization, social preview, meta description, custom title format\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"72a0ff4cfae86074a7cdd2dcd432ef11\";a:14:{s:4:\"name\";s:7:\"Sharing\";s:11:\"description\";s:120:\"Add Twitter, Facebook and Google+ buttons at the bottom of each post, making it easy for visitors to share your content.\";s:4:\"sort\";s:1:\"7\";s:20:\"recommendation_order\";s:1:\"6\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:229:\"share, sharing, sharedaddy, social buttons, buttons, share facebook, share twitter, social media sharing, social media share, social share, icons, email, facebook, twitter, linkedin, pinterest, pocket, social widget, social media\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"bb8c6c190aaec212a7ab6e940165af4d\";a:14:{s:4:\"name\";s:16:\"Shortcode Embeds\";s:11:\"description\";s:177:\"Shortcodes are WordPress-specific markup that let you add media from popular sites. This feature is no longer necessary as the editor now handles media embeds rather gracefully.\";s:4:\"sort\";s:1:\"3\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:46:\"Photos and Videos, Social, Writing, Appearance\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:236:\"shortcodes, shortcode, embeds, media, bandcamp, dailymotion, facebook, flickr, google calendars, google maps, google+, polldaddy, recipe, recipes, scribd, slideshare, slideshow, slideshows, soundcloud, ted, twitter, vimeo, vine, youtube\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"1abd31fe07ae4fb0f8bb57dc24592219\";a:14:{s:4:\"name\";s:16:\"WP.me Shortlinks\";s:11:\"description\";s:82:\"Generates shorter links so you can have more space to write on social media sites.\";s:4:\"sort\";s:1:\"8\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:17:\"shortlinks, wp.me\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cae5f097f8d658e0b0ae50733d7c6476\";a:14:{s:4:\"name\";s:8:\"Sitemaps\";s:11:\"description\";s:50:\"Make it easy for search engines to find your site.\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:20:\"Recommended, Traffic\";s:7:\"feature\";s:11:\"Recommended\";s:25:\"additional_search_queries\";s:39:\"sitemap, traffic, search, site map, seo\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e9b8318133b2f95e7906cedb3557a87d\";a:14:{s:4:\"name\";s:14:\"Secure Sign On\";s:11:\"description\";s:63:\"Allow users to log in to this site using WordPress.com accounts\";s:4:\"sort\";s:2:\"30\";s:20:\"recommendation_order\";s:1:\"5\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:51:\"sso, single sign on, login, log in, 2fa, two-factor\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"17e66a12031ccf11d8d45ceee0955f05\";a:14:{s:4:\"name\";s:10:\"Site Stats\";s:11:\"description\";s:44:\"Collect valuable traffic stats and insights.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"2\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:23:\"Site Stats, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"statistics, tracking, analytics, views, traffic, stats\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"346cf9756e7c1252acecb9a8ca81a21c\";a:14:{s:4:\"name\";s:13:\"Subscriptions\";s:11:\"description\";s:58:\"Let visitors subscribe to new posts and comments via email\";s:4:\"sort\";s:1:\"9\";s:20:\"recommendation_order\";s:1:\"8\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:74:\"subscriptions, subscription, email, follow, followers, subscribers, signup\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4f84d218792a6efa06ed6feae09c4dd5\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ca086af79d0d9dccacc934ccff5b4fd7\";a:14:{s:4:\"name\";s:15:\"Tiled Galleries\";s:11:\"description\";s:61:\"Display image galleries in a variety of elegant arrangements.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:43:\"gallery, tiles, tiled, grid, mosaic, images\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"43c24feb7c541c376af93e0251c1a261\";a:14:{s:4:\"name\";s:20:\"Backups and Scanning\";s:11:\"description\";s:100:\"Protect your site with daily or real-time backups and automated virus scanning and threat detection.\";s:4:\"sort\";s:2:\"32\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"0:1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:5:\"false\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:16:\"Security, Health\";s:25:\"additional_search_queries\";s:386:\"backup, cloud backup, database backup, restore, wordpress backup, backup plugin, wordpress backup plugin, back up, backup wordpress, backwpup, vaultpress, backups, off-site backups, offsite backup, offsite, off-site, antivirus, malware scanner, security, virus, viruses, prevent viruses, scan, anti-virus, antimalware, protection, safe browsing, malware, wp security, wordpress security\";s:12:\"plan_classes\";s:27:\"personal, business, premium\";}s:32:\"b9396d8038fc29140b499098d2294d79\";a:14:{s:4:\"name\";s:17:\"Site verification\";s:11:\"description\";s:58:\"Establish your site\'s authenticity with external services.\";s:4:\"sort\";s:2:\"33\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:56:\"webmaster, seo, google, bing, pinterest, search, console\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"afe184082e106c1bdfe1ee844f98aef3\";a:14:{s:4:\"name\";s:10:\"VideoPress\";s:11:\"description\";s:101:\"Save on hosting storage and bandwidth costs by streaming fast, ad-free video from our global network.\";s:4:\"sort\";s:2:\"27\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:118:\"video, videos, videopress, video gallery, video player, videoplayer, mobile video, vimeo, youtube, html5 video, stream\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"44637d43460370af9a1b31ce3ccec0cd\";a:14:{s:4:\"name\";s:17:\"Widget Visibility\";s:11:\"description\";s:42:\"Control where widgets appear on your site.\";s:4:\"sort\";s:2:\"17\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:54:\"widget visibility, logic, conditional, widgets, widget\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"694c105a5c3b659acfcddad220048d08\";a:14:{s:4:\"name\";s:21:\"Extra Sidebar Widgets\";s:11:\"description\";s:49:\"Provides additional widgets for use on your site.\";s:4:\"sort\";s:1:\"4\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:65:\"widget, widgets, facebook, gallery, twitter, gravatar, image, rss\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"21b59e7bb3fe0784e7525ad11ad8a8f6\";a:14:{s:4:\"name\";s:21:\"WooCommerce Analytics\";s:11:\"description\";s:53:\"Enhanced analytics for WooCommerce and Jetpack users.\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"8.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:18:\"Other, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:69:\"woocommerce, analytics, stats, statistics, tracking, analytics, views\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ae15da72c5802d72f320640bad669561\";a:14:{s:4:\"name\";s:3:\"Ads\";s:11:\"description\";s:60:\"Earn income by allowing Jetpack to display high quality ads.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"4.5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Traffic, Appearance\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:26:\"advertising, ad codes, ads\";s:12:\"plan_classes\";s:17:\"premium, business\";}}', 'no'),
(398, 'jetpack_available_modules', 'a:1:{s:5:\"8.6.1\";a:42:{s:8:\"carousel\";s:3:\"1.5\";s:13:\"comment-likes\";s:3:\"5.1\";s:8:\"comments\";s:3:\"1.4\";s:12:\"contact-form\";s:3:\"1.3\";s:9:\"copy-post\";s:3:\"7.0\";s:20:\"custom-content-types\";s:3:\"3.1\";s:10:\"custom-css\";s:3:\"1.7\";s:21:\"enhanced-distribution\";s:3:\"1.2\";s:16:\"google-analytics\";s:3:\"4.5\";s:19:\"gravatar-hovercards\";s:3:\"1.1\";s:15:\"infinite-scroll\";s:3:\"2.0\";s:8:\"json-api\";s:3:\"1.9\";s:5:\"latex\";s:3:\"1.1\";s:11:\"lazy-images\";s:5:\"5.6.0\";s:5:\"likes\";s:3:\"2.2\";s:8:\"markdown\";s:3:\"2.8\";s:9:\"masterbar\";s:3:\"4.8\";s:7:\"monitor\";s:3:\"2.6\";s:5:\"notes\";s:3:\"1.9\";s:10:\"photon-cdn\";s:3:\"6.6\";s:6:\"photon\";s:3:\"2.0\";s:13:\"post-by-email\";s:3:\"2.0\";s:7:\"protect\";s:3:\"3.4\";s:9:\"publicize\";s:3:\"2.0\";s:13:\"related-posts\";s:3:\"2.9\";s:6:\"search\";s:3:\"5.0\";s:9:\"seo-tools\";s:3:\"4.4\";s:10:\"sharedaddy\";s:3:\"1.1\";s:10:\"shortcodes\";s:3:\"1.1\";s:10:\"shortlinks\";s:3:\"1.1\";s:8:\"sitemaps\";s:3:\"3.9\";s:3:\"sso\";s:3:\"2.6\";s:5:\"stats\";s:3:\"1.1\";s:13:\"subscriptions\";s:3:\"1.2\";s:13:\"tiled-gallery\";s:3:\"2.1\";s:10:\"vaultpress\";s:5:\"0:1.2\";s:18:\"verification-tools\";s:3:\"3.0\";s:10:\"videopress\";s:3:\"2.5\";s:17:\"widget-visibility\";s:3:\"2.4\";s:7:\"widgets\";s:3:\"1.2\";s:21:\"woocommerce-analytics\";s:3:\"8.4\";s:7:\"wordads\";s:5:\"4.5.0\";}}', 'yes'),
(402, 'do_activate', '0', 'yes'),
(427, 'sharing-options', 'a:1:{s:6:\"global\";a:5:{s:12:\"button_style\";s:9:\"icon-text\";s:13:\"sharing_label\";s:36:\"Поделиться ссылкой:\";s:10:\"open_links\";s:4:\"same\";s:4:\"show\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:6:\"custom\";a:0:{}}}', 'yes'),
(428, 'stats_options', 'a:7:{s:9:\"admin_bar\";b:1;s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:11:\"count_roles\";a:0:{}s:7:\"blog_id\";b:0;s:12:\"do_not_track\";b:1;s:10:\"hide_smile\";b:1;s:7:\"version\";s:1:\"9\";}', 'yes'),
(438, '_transient_timeout_wc_low_stock_count', '1596628944', 'no'),
(439, '_transient_wc_low_stock_count', '0', 'no'),
(440, '_transient_timeout_wc_outofstock_count', '1596628945', 'no'),
(441, '_transient_wc_outofstock_count', '0', 'no'),
(466, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(473, '_transient_shipping-transient-version', '1594119713', 'yes'),
(474, '_transient_timeout_wc_shipping_method_count_legacy', '1596719078', 'no'),
(475, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1594119713\";s:5:\"value\";i:0;}', 'no'),
(477, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(485, '_transient_product_query-transient-version', '1594321807', 'yes'),
(556, '_transient_health-check-site-status-result', '{\"good\":8,\"recommended\":9,\"critical\":0}', 'yes'),
(642, 'product_cat_children', 'a:1:{i:17;a:6:{i:0;i:18;i:1;i:19;i:2;i:20;i:3;i:21;i:4;i:22;i:5;i:23;}}', 'yes'),
(696, 'woocommerce_excluded_report_order_statuses', 'a:2:{i:0;s:7:\"pending\";i:1;s:6:\"failed\";}', 'yes'),
(697, 'woocommerce_actionable_order_statuses', 'a:3:{i:0;s:10:\"processing\";i:1;s:9:\"completed\";i:2;s:9:\"cancelled\";}', 'yes'),
(698, 'woocommerce_default_date_range', 'period=month&amp;compare=previous_year', 'yes'),
(702, '_transient_timeout_wc_shipping_method_count', '1596711674', 'no'),
(703, '_transient_wc_shipping_method_count', 'a:2:{s:7:\"version\";s:10:\"1594037549\";s:5:\"value\";i:0;}', 'no'),
(730, 'category_children', 'a:0:{}', 'yes'),
(753, 'woocommerce_tracker_last_send', '1595409134', 'yes'),
(862, 'woocommerce_tracker_ua', 'a:1:{i:0;s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36\";}', 'yes'),
(923, 'fs_active_plugins', 'O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:34:\"ajax-search-for-woocommerce/fs/lib\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.3.2\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1594310378;s:11:\"plugin_path\";s:59:\"ajax-search-for-woocommerce/ajax-search-for-woocommerce.php\";}}s:7:\"abspath\";s:35:\"F:\\IT\\OSPanel\\domains\\crystalmebel/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:59:\"ajax-search-for-woocommerce/ajax-search-for-woocommerce.php\";s:8:\"sdk_path\";s:34:\"ajax-search-for-woocommerce/fs/lib\";s:7:\"version\";s:5:\"2.3.2\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1594310378;}}', 'yes'),
(924, 'fs_debug_mode', '', 'yes'),
(925, 'fs_accounts', 'a:5:{s:21:\"id_slug_type_path_map\";a:1:{i:700;a:3:{s:4:\"slug\";s:27:\"ajax-search-for-woocommerce\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:59:\"ajax-search-for-woocommerce/ajax-search-for-woocommerce.php\";}}s:11:\"plugin_data\";a:1:{s:27:\"ajax-search-for-woocommerce\";a:16:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:59:\"ajax-search-for-woocommerce/ajax-search-for-woocommerce.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1594310378;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:0;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.3.2\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"1.7.1\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:12:\"crystalmebel\";s:9:\"server_ip\";s:9:\"127.0.0.1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1594310378;s:7:\"version\";s:5:\"1.7.1\";}s:15:\"prev_is_premium\";b:0;s:12:\"is_anonymous\";a:3:{s:2:\"is\";b:1;s:9:\"timestamp\";i:1594310396;s:7:\"version\";s:5:\"1.7.1\";}}}s:13:\"file_slug_map\";a:1:{s:59:\"ajax-search-for-woocommerce/ajax-search-for-woocommerce.php\";s:27:\"ajax-search-for-woocommerce\";}s:7:\"plugins\";a:1:{s:27:\"ajax-search-for-woocommerce\";O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:27:\"AJAX Search for WooCommerce\";s:4:\"slug\";s:27:\"ajax-search-for-woocommerce\";s:12:\"premium_slug\";s:35:\"ajax-search-for-woocommerce-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:59:\"ajax-search-for-woocommerce/ajax-search-for-woocommerce.php\";s:7:\"version\";s:5:\"1.7.1\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:3:\"Pro\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_f4f2a51dbe0aee43de0692db77a3e\";s:10:\"secret_key\";N;s:2:\"id\";s:3:\"700\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"73bcead250b0a2cdb2adb1a988c7240a\";}', 'yes'),
(926, 'fs_gdpr', 'a:1:{s:2:\"u1\";a:1:{s:8:\"required\";b:0;}}', 'yes'),
(927, 'fs_api_cache', 'a:0:{}', 'no'),
(930, 'widget_dgwt_wcas_ajax_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(931, 'dgwt_wcas_activation_date', '1594310383', 'yes'),
(932, 'dgwt_wcas_settings', 'a:46:{s:9:\"min_chars\";s:1:\"3\";s:14:\"max_form_width\";s:3:\"600\";s:18:\"show_submit_button\";s:2:\"on\";s:18:\"search_submit_text\";s:10:\"Поиск\";s:18:\"search_placeholder\";s:28:\"Поиск товаров...\";s:13:\"search_layout\";s:7:\"classic\";s:21:\"enable_mobile_overlay\";s:2:\"on\";s:17:\"mobile_breakpoint\";s:3:\"992\";s:14:\"bg_input_color\";s:0:\"\";s:16:\"text_input_color\";s:0:\"\";s:18:\"border_input_color\";s:7:\"#ff9900\";s:15:\"bg_submit_color\";s:7:\"#ff9900\";s:17:\"text_submit_color\";s:0:\"\";s:14:\"show_preloader\";s:2:\"on\";s:13:\"preloader_url\";s:0:\"\";s:17:\"suggestions_limit\";s:1:\"7\";s:20:\"show_grouped_results\";s:2:\"on\";s:22:\"search_no_results_text\";s:32:\"Ничего не найдено\";s:18:\"show_product_image\";s:2:\"on\";s:18:\"show_product_price\";s:2:\"on\";s:17:\"show_product_desc\";s:3:\"off\";s:16:\"show_product_sku\";s:3:\"off\";s:27:\"search_see_all_results_text\";s:19:\"See all products...\";s:24:\"show_matching_categories\";s:2:\"on\";s:18:\"show_matching_tags\";s:3:\"off\";s:19:\"show_matching_posts\";s:3:\"off\";s:19:\"show_matching_pages\";s:3:\"off\";s:16:\"show_details_box\";s:3:\"off\";s:12:\"sug_bg_color\";s:0:\"\";s:15:\"sug_hover_color\";s:7:\"#ff9900\";s:14:\"sug_text_color\";s:0:\"\";s:19:\"sug_highlight_color\";s:0:\"\";s:16:\"sug_border_color\";s:7:\"#ff9900\";s:25:\"search_in_product_content\";s:2:\"on\";s:25:\"search_in_product_excerpt\";s:2:\"on\";s:21:\"search_in_product_sku\";s:3:\"off\";s:28:\"search_in_product_attributes\";s:3:\"off\";s:28:\"search_in_product_categories\";s:3:\"off\";s:22:\"search_in_product_tags\";s:3:\"off\";s:23:\"search_in_custom_fields\";s:0:\"\";s:20:\"exclude_out_of_stock\";s:3:\"off\";s:22:\"fuzziness_enabled_demo\";s:3:\"off\";s:15:\"search_synonyms\";s:0:\"\";s:16:\"indexer_schedule\";s:3:\"off\";s:25:\"indexer_schedule_interval\";s:6:\"weekly\";s:27:\"indexer_schedule_start_time\";s:1:\"3\";}', 'yes'),
(933, 'dgwt_wcas_version', '1.7.1', 'yes'),
(935, 'dgwt_wcas_settings_show_advanced', 'on', 'yes'),
(1008, 'widget_wpgmp_google_map_widget_class', 'a:2:{i:2;a:2:{s:9:\"map_title\";s:0:\"\";s:6:\"map_id\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1019, 'woocommerce_task_list_tracked_completed_tasks', 'a:2:{i:0;s:8:\"purchase\";i:1;s:8:\"shipping\";}', 'yes'),
(1022, 'woocommerce_task_list_welcome_modal_dismissed', '1', 'yes'),
(1069, '_transient_timeout_wc_term_counts', '1596910679', 'no'),
(1070, '_transient_wc_term_counts', 'a:16:{i:15;s:0:\"\";i:22;s:0:\"\";i:17;s:0:\"\";i:19;s:0:\"\";i:30;s:0:\"\";i:21;s:0:\"\";i:23;s:0:\"\";i:25;s:0:\"\";i:24;s:0:\"\";i:29;s:0:\"\";i:31;s:0:\"\";i:18;s:0:\"\";i:26;s:0:\"\";i:27;s:0:\"\";i:28;s:0:\"\";i:20;s:0:\"\";}', 'no'),
(1092, 'cnb', 'a:13:{s:6:\"active\";s:1:\"1\";s:6:\"number\";s:12:\"380668856790\";s:4:\"text\";s:7:\"Call me\";s:5:\"color\";s:7:\"#00bb00\";s:9:\"iconcolor\";s:7:\"#ffffff\";s:10:\"appearance\";s:5:\"right\";s:4:\"show\";s:0:\"\";s:5:\"limit\";s:7:\"include\";s:8:\"tracking\";s:1:\"0\";s:11:\"conversions\";s:1:\"0\";s:4:\"zoom\";s:3:\"1.1\";s:7:\"z-index\";s:2:\"10\";s:7:\"version\";s:5:\"0.4.0\";}', 'yes'),
(1111, 'action_scheduler_migration_status', 'complete', 'yes'),
(1203, '_transient_is_multi_author', '0', 'yes'),
(1757, '_transient_timeout__woocommerce_helper_subscriptions', '1595410015', 'no'),
(1758, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(1759, '_site_transient_timeout_theme_roots', '1595410915', 'no'),
(1760, '_site_transient_theme_roots', 'a:4:{s:14:\"clean-commerce\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(1761, '_transient_timeout__woocommerce_helper_updates', '1595452315', 'no'),
(1762, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1595409115;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(1765, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.4.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1595409126;s:15:\"version_checked\";s:5:\"5.4.2\";s:12:\"translations\";a:0:{}}', 'no'),
(1766, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1595409127;s:7:\"checked\";a:4:{s:14:\"clean-commerce\";s:3:\"1.2\";s:14:\"twentynineteen\";s:3:\"1.5\";s:15:\"twentyseventeen\";s:3:\"2.3\";s:12:\"twentytwenty\";s:3:\"1.2\";}s:8:\"response\";a:2:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.6.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1767, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1595409128;s:7:\"checked\";a:8:{s:43:\"advanced-woo-search/advanced-woo-search.php\";s:4:\"2.05\";s:59:\"ajax-search-for-woocommerce/ajax-search-for-woocommerce.php\";s:5:\"1.7.1\";s:19:\"akismet/akismet.php\";s:5:\"4.1.5\";s:35:\"call-now-button/call-now-button.php\";s:5:\"0.4.0\";s:9:\"hello.php\";s:5:\"1.7.2\";s:19:\"jetpack/jetpack.php\";s:5:\"8.6.1\";s:27:\"woocommerce/woocommerce.php\";s:5:\"4.2.2\";s:45:\"woocommerce-services/woocommerce-services.php\";s:6:\"1.23.2\";}s:8:\"response\";a:5:{s:43:\"advanced-woo-search/advanced-woo-search.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:33:\"w.org/plugins/advanced-woo-search\";s:4:\"slug\";s:19:\"advanced-woo-search\";s:6:\"plugin\";s:43:\"advanced-woo-search/advanced-woo-search.php\";s:11:\"new_version\";s:4:\"2.06\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/advanced-woo-search/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/advanced-woo-search.2.06.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/advanced-woo-search/assets/icon-128x128.jpg?rev=2244825\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-woo-search/assets/banner-1544x500.jpg?rev=2244825\";s:2:\"1x\";s:74:\"https://ps.w.org/advanced-woo-search/assets/banner-772x250.jpg?rev=2244825\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:59:\"ajax-search-for-woocommerce/ajax-search-for-woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:41:\"w.org/plugins/ajax-search-for-woocommerce\";s:4:\"slug\";s:27:\"ajax-search-for-woocommerce\";s:6:\"plugin\";s:59:\"ajax-search-for-woocommerce/ajax-search-for-woocommerce.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/ajax-search-for-woocommerce/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/ajax-search-for-woocommerce.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/ajax-search-for-woocommerce/assets/icon-256x256.png?rev=2042590\";s:2:\"1x\";s:80:\"https://ps.w.org/ajax-search-for-woocommerce/assets/icon-128x128.png?rev=2042590\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/ajax-search-for-woocommerce/assets/banner-1544x500.jpg?rev=2234615\";s:2:\"1x\";s:82:\"https://ps.w.org/ajax-search-for-woocommerce/assets/banner-772x250.jpg?rev=2234615\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.5\";s:12:\"requires_php\";s:3:\"5.5\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/jetpack\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:5:\"8.7.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/jetpack.8.7.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=1791404\";s:2:\"1x\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";s:3:\"svg\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404\";s:2:\"1x\";s:62:\"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.2\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"4.3.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.4.3.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.2\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:35:\"call-now-button/call-now-button.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/call-now-button\";s:4:\"slug\";s:15:\"call-now-button\";s:6:\"plugin\";s:35:\"call-now-button/call-now-button.php\";s:11:\"new_version\";s:5:\"0.4.0\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/call-now-button/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/call-now-button.0.4.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/call-now-button/assets/icon-256x256.png?rev=1793650\";s:2:\"1x\";s:68:\"https://ps.w.org/call-now-button/assets/icon-128x128.png?rev=1793650\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/call-now-button/assets/banner-1544x500.png?rev=2269468\";s:2:\"1x\";s:70:\"https://ps.w.org/call-now-button/assets/banner-772x250.png?rev=2269468\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"woocommerce-services/woocommerce-services.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/woocommerce-services\";s:4:\"slug\";s:20:\"woocommerce-services\";s:6:\"plugin\";s:45:\"woocommerce-services/woocommerce-services.php\";s:11:\"new_version\";s:6:\"1.23.2\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/woocommerce-services/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/woocommerce-services.1.23.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-256x256.png?rev=1910075\";s:2:\"1x\";s:73:\"https://ps.w.org/woocommerce-services/assets/icon-128x128.png?rev=1910075\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/woocommerce-services/assets/banner-1544x500.png?rev=1962920\";s:2:\"1x\";s:75:\"https://ps.w.org/woocommerce-services/assets/banner-772x250.png?rev=1962920\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1769, '_transient_timeout_jetpack_idc_allowed', '1595412735', 'no'),
(1770, '_transient_jetpack_idc_allowed', '1', 'no'),
(1771, '_site_transient_timeout_php_check_390020986c145d03452f580d89d5ee69', '1596013939', 'no'),
(1772, '_site_transient_php_check_390020986c145d03452f580d89d5ee69', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(1775, '_transient_timeout_wc_onboarding_product_data', '1595495549', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1776, '_transient_wc_onboarding_product_data', 'a:6:{s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:17:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Wed, 22 Jul 2020 09:12:29 GMT\";s:12:\"content-type\";s:31:\"application/json; charset=UTF-8\";s:14:\"content-length\";s:4:\"4023\";s:12:\"x-robots-tag\";s:7:\"noindex\";s:4:\"link\";s:60:\"<https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:29:\"access-control-expose-headers\";s:27:\"X-WP-Total, X-WP-TotalPages\";s:28:\"access-control-allow-headers\";s:27:\"Authorization, Content-Type\";s:13:\"cache-control\";s:10:\"max-age=60\";s:5:\"allow\";s:3:\"GET\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"x-rq\";s:15:\"fra1 89 80 3221\";s:3:\"age\";s:2:\"55\";s:7:\"x-cache\";s:3:\"hit\";s:4:\"vary\";s:23:\"Accept-Encoding, Origin\";s:13:\"accept-ranges\";s:5:\"bytes\";}}s:4:\"body\";s:16398:\"{\"products\":[{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-2.png\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"Product Bundles\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-PB.png?v=1\",\"excerpt\":\"Offer personalized product bundles, bulk discount packages and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"WooCommerce Bookings\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"Composite Products\",\"image\":\"\",\"excerpt\":\"Create product kit builders and custom product configurators using existing products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"Groups for WooCommerce\",\"image\":\"\",\"excerpt\":\"Sell Memberships with Groups and WooCommerce \\u2013\\u00a0the best Group Membership and Access Control solution for WordPress and WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/groups-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"aa2d455ed00566e4fb71bc9d53f2613b\",\"slug\":\"groups-woocommerce\",\"id\":18704},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"Chained Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/05\\/wc-product-chained-products-dark-tkjqoj.png\",\"excerpt\":\"Pre-configured product bundles, giveaways, forced sells and discounted combos. Automatically adds \\u201cchained\\u201d products to cart when \\u201cmain\\u201d product is added.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/chained-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=cp\",\"price\":\"&#36;49.00\",\"hash\":\"cc6e246e495745db10f9f7fddc5aa907\",\"slug\":\"woocommerce-chained-products\",\"id\":18687},{\"title\":\"Mix and Match Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/04\\/mnm-icon-dark-jprydo.png\",\"excerpt\":\"Allow your customers to combine products and create their own variations, and increase your average order value.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-mix-and-match-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"e59883891b7bcd535025486721e4c09f\",\"slug\":\"woocommerce-mix-and-match-products\",\"id\":853021},{\"title\":\"All Products for WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-APFS.png?v=1\",\"excerpt\":\"Offer your products on subscription, and let customers add products to their existing subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/all-products-for-woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"2794ee6e-bc30-4733-9b24-5edfc3f0095d\",\"slug\":\"woocommerce-all-products-for-subscriptions\",\"id\":3978176},{\"title\":\"WooCommerce Box Office\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-BO-Dark.png\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602},{\"title\":\"Teams for WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/02\\/Thumbnail-Teams-for-Memberships-2.png\",\"excerpt\":\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/teams-woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9feb48da-9615-4131-8aa8-eebb55b9cff4\",\"slug\":\"woocommerce-memberships-for-teams\",\"id\":2893267},{\"title\":\"Software Add-on\",\"image\":\"\",\"excerpt\":\"Sell License Keys for Software\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"79f6dbfe1f1d3a56a86f0509b6d6b04b\",\"slug\":\"woocommerce-software-add-on\",\"id\":18683},{\"title\":\"WooCommerce API Manager\",\"image\":\"\",\"excerpt\":\"Let customers subscribe to your software or services through API Keys, aka License Keys. Provide automated updates for WordPress Plugins and Themes, or any software through robust APIs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-api-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"f7cdcfb7de76afa0889f07bcb92bf12e\",\"slug\":\"woocommerce-api-manager\",\"id\":260110},{\"title\":\"WooCommerce Bookings Availability\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Aval-Dark.png\",\"excerpt\":\"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"30770d2a-e392-4e82-baaa-76cfc7d02ae3\",\"slug\":\"woocommerce-bookings-availability\",\"id\":4228225},{\"title\":\"Auctions for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/10\\/auctions_for_woocommerce.png\",\"excerpt\":\"A professional Auction solution for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/auctions-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/wpinstitut.com\\/auctions-for-woocommerce-demo\\/\",\"price\":\"&#36;149.00\",\"hash\":\"c41a199e-5f49-4f5c-bb28-7ca22b0c4fe7\",\"slug\":\"auctions-for-woocommerce\",\"id\":4922919},{\"title\":\"Paywall for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/01\\/paywall-for-woocommerce-logo.png\",\"excerpt\":\"Paywall is a WooCommerce extension that allows creating products with restricted access to content.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paywall-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo-woocommerce-paywall.tiv.net\\/\",\"price\":\"&#36;79.00\",\"hash\":\"a688fc22-9370-4652-9e5e-f968ced9a0a8\",\"slug\":\"paywall-for-woocommerce\",\"id\":5253500},{\"title\":\"Lottery for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/05\\/lottery-logo.png?w=150&amp;h=150\",\"excerpt\":\"Lottery for WooCommerce is a full-featured lottery plugin for creating and managing online lotteries in your WooCommerce Shop.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/lottery-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9694c9bd-1d5c-43af-b1e9-796cc64b16a8\",\"slug\":\"lottery-for-woocommerce\",\"id\":5860289},{\"title\":\"Auctions Made Easy for WooCommerce\",\"image\":\"\",\"excerpt\":\"Auctions Made Easy for WooCommerce is a full-featured auctions plugin for creating and managing online auctions in a WooCommerce shop.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/auctions-made-easy-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a7fbc475-9946-4db9-92b6-5b7ebab3bab2\",\"slug\":\"auctions-made-easy-for-woocommerce\",\"id\":5249611},{\"title\":\"Custom Product Boxes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/04\\/CPB_Icon.jpg?w=150&amp;h=150\",\"excerpt\":\"Custom product boxes for WooCommerce allows users to create product bundles by choosing specific items of their own choice from the collection of products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/custom-product-boxes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/composite-products.codeincept.com\\/product\\/cupcake-gift-box\\/\",\"price\":\"&#36;79.00\",\"hash\":\"ba19e1e3-1d5f-4e2c-bc3e-d7029c04f326\",\"slug\":\"custom-product-boxes\",\"id\":5706607},{\"title\":\"Etsy Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo-2.png\",\"excerpt\":\"Sell on Etsy with Etsy Integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/etsy-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"1dc5953a-3b22-4e73-9d7d-cc852d189beb\",\"slug\":\"woocommerce-etsy-integration\",\"id\":5712585},{\"title\":\"Assorted Products for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/10\\/icon.jpg\",\"excerpt\":\"Empower your customers to create product bundles\\u2014gift boxes of their choice comprising items from your shop.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/assorted-products-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/assorted-products.codeincept.com\\/product\\/assorted-product\\/\",\"price\":\"&#36;79.00\",\"hash\":\"6ab9ee51-c187-421c-9104-efa21d9423ca\",\"slug\":\"assorted-products-for-woocommerce\",\"id\":4911617},{\"title\":\"Smart Product Bundle For WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2020\\/01\\/Smart-Product-Bundle-z1tihh.png\",\"excerpt\":\"Fulfill customer expectations with Smart Product Bundle and enrich customer experiences along with your sales revenue.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-bundle-product-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.wpexperts.io\\/smart-bundle-product-for-woocommerce\\/\",\"price\":\"&#36;79.00\",\"hash\":\"033cccdf-744b-4497-87b1-5765e71d3dcd\",\"slug\":\"smart-bundle-for-woocommerce\",\"id\":5193957},{\"title\":\"Rental Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/05\\/Rental-Products-Logo.png?w=150&amp;h=150\",\"excerpt\":\"Create rental products within your WooCommerce store, allowing customers to rent products for specific dates.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/rental-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"d6b9b1a1-8b92-4e07-89b9-4d85e3b574ce\",\"slug\":\"wcrp-rental-products\",\"id\":5860277},{\"title\":\"Walmart Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo-1.png\",\"excerpt\":\"Sell on Walmart with Walmart Integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/walmart-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;249.00\",\"hash\":\"1237f272-56c8-4c77-8539-31450a2f4e1a\",\"slug\":\"walmart-integration-for-woocommerce\",\"id\":5423057},{\"title\":\"Featured Listing for Product Vendors\",\"image\":\"\",\"excerpt\":\"This is an addon of WooCommerce Product Vendor which offers vendor the option to feature their product ahead of others, for a small fee.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/featured-listing-for-product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.makewebbetter.com\\/featured-listing-for-product-vendors\\/\",\"price\":\"&#36;79.00\",\"hash\":\"78610942-f38c-4517-b7e0-4c3753d11752\",\"slug\":\"featured-listing-for-product-vendors\",\"id\":5021060},{\"title\":\"Shopee Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo.png\",\"excerpt\":\"Sell on Shopee with Shopee integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shopee-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"dcf810b6-c8ce-48da-84ba-289ac4ee43f5\",\"slug\":\"woocommerce-shopee-integration\",\"id\":4794826}]}\";s:8:\"response\";a:2:{s:4:\"code\";i:200;s:7:\"message\";s:2:\"OK\";}s:7:\"cookies\";a:0:{}s:8:\"filename\";N;s:13:\"http_response\";O:25:\"WP_HTTP_Requests_Response\":5:{s:11:\"\0*\0response\";O:17:\"Requests_Response\":10:{s:4:\"body\";s:16398:\"{\"products\":[{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-2.png\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"Product Bundles\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-PB.png?v=1\",\"excerpt\":\"Offer personalized product bundles, bulk discount packages and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"WooCommerce Bookings\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"Composite Products\",\"image\":\"\",\"excerpt\":\"Create product kit builders and custom product configurators using existing products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"Groups for WooCommerce\",\"image\":\"\",\"excerpt\":\"Sell Memberships with Groups and WooCommerce \\u2013\\u00a0the best Group Membership and Access Control solution for WordPress and WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/groups-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"aa2d455ed00566e4fb71bc9d53f2613b\",\"slug\":\"groups-woocommerce\",\"id\":18704},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"Chained Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/05\\/wc-product-chained-products-dark-tkjqoj.png\",\"excerpt\":\"Pre-configured product bundles, giveaways, forced sells and discounted combos. Automatically adds \\u201cchained\\u201d products to cart when \\u201cmain\\u201d product is added.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/chained-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=cp\",\"price\":\"&#36;49.00\",\"hash\":\"cc6e246e495745db10f9f7fddc5aa907\",\"slug\":\"woocommerce-chained-products\",\"id\":18687},{\"title\":\"Mix and Match Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/04\\/mnm-icon-dark-jprydo.png\",\"excerpt\":\"Allow your customers to combine products and create their own variations, and increase your average order value.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-mix-and-match-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"e59883891b7bcd535025486721e4c09f\",\"slug\":\"woocommerce-mix-and-match-products\",\"id\":853021},{\"title\":\"All Products for WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-APFS.png?v=1\",\"excerpt\":\"Offer your products on subscription, and let customers add products to their existing subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/all-products-for-woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"2794ee6e-bc30-4733-9b24-5edfc3f0095d\",\"slug\":\"woocommerce-all-products-for-subscriptions\",\"id\":3978176},{\"title\":\"WooCommerce Box Office\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-BO-Dark.png\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602},{\"title\":\"Teams for WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/02\\/Thumbnail-Teams-for-Memberships-2.png\",\"excerpt\":\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/teams-woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9feb48da-9615-4131-8aa8-eebb55b9cff4\",\"slug\":\"woocommerce-memberships-for-teams\",\"id\":2893267},{\"title\":\"Software Add-on\",\"image\":\"\",\"excerpt\":\"Sell License Keys for Software\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"79f6dbfe1f1d3a56a86f0509b6d6b04b\",\"slug\":\"woocommerce-software-add-on\",\"id\":18683},{\"title\":\"WooCommerce API Manager\",\"image\":\"\",\"excerpt\":\"Let customers subscribe to your software or services through API Keys, aka License Keys. Provide automated updates for WordPress Plugins and Themes, or any software through robust APIs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-api-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"f7cdcfb7de76afa0889f07bcb92bf12e\",\"slug\":\"woocommerce-api-manager\",\"id\":260110},{\"title\":\"WooCommerce Bookings Availability\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Aval-Dark.png\",\"excerpt\":\"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"30770d2a-e392-4e82-baaa-76cfc7d02ae3\",\"slug\":\"woocommerce-bookings-availability\",\"id\":4228225},{\"title\":\"Auctions for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/10\\/auctions_for_woocommerce.png\",\"excerpt\":\"A professional Auction solution for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/auctions-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/wpinstitut.com\\/auctions-for-woocommerce-demo\\/\",\"price\":\"&#36;149.00\",\"hash\":\"c41a199e-5f49-4f5c-bb28-7ca22b0c4fe7\",\"slug\":\"auctions-for-woocommerce\",\"id\":4922919},{\"title\":\"Paywall for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/01\\/paywall-for-woocommerce-logo.png\",\"excerpt\":\"Paywall is a WooCommerce extension that allows creating products with restricted access to content.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paywall-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo-woocommerce-paywall.tiv.net\\/\",\"price\":\"&#36;79.00\",\"hash\":\"a688fc22-9370-4652-9e5e-f968ced9a0a8\",\"slug\":\"paywall-for-woocommerce\",\"id\":5253500},{\"title\":\"Lottery for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/05\\/lottery-logo.png?w=150&amp;h=150\",\"excerpt\":\"Lottery for WooCommerce is a full-featured lottery plugin for creating and managing online lotteries in your WooCommerce Shop.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/lottery-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9694c9bd-1d5c-43af-b1e9-796cc64b16a8\",\"slug\":\"lottery-for-woocommerce\",\"id\":5860289},{\"title\":\"Auctions Made Easy for WooCommerce\",\"image\":\"\",\"excerpt\":\"Auctions Made Easy for WooCommerce is a full-featured auctions plugin for creating and managing online auctions in a WooCommerce shop.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/auctions-made-easy-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a7fbc475-9946-4db9-92b6-5b7ebab3bab2\",\"slug\":\"auctions-made-easy-for-woocommerce\",\"id\":5249611},{\"title\":\"Custom Product Boxes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/04\\/CPB_Icon.jpg?w=150&amp;h=150\",\"excerpt\":\"Custom product boxes for WooCommerce allows users to create product bundles by choosing specific items of their own choice from the collection of products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/custom-product-boxes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/composite-products.codeincept.com\\/product\\/cupcake-gift-box\\/\",\"price\":\"&#36;79.00\",\"hash\":\"ba19e1e3-1d5f-4e2c-bc3e-d7029c04f326\",\"slug\":\"custom-product-boxes\",\"id\":5706607},{\"title\":\"Etsy Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo-2.png\",\"excerpt\":\"Sell on Etsy with Etsy Integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/etsy-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"1dc5953a-3b22-4e73-9d7d-cc852d189beb\",\"slug\":\"woocommerce-etsy-integration\",\"id\":5712585},{\"title\":\"Assorted Products for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/10\\/icon.jpg\",\"excerpt\":\"Empower your customers to create product bundles\\u2014gift boxes of their choice comprising items from your shop.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/assorted-products-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/assorted-products.codeincept.com\\/product\\/assorted-product\\/\",\"price\":\"&#36;79.00\",\"hash\":\"6ab9ee51-c187-421c-9104-efa21d9423ca\",\"slug\":\"assorted-products-for-woocommerce\",\"id\":4911617},{\"title\":\"Smart Product Bundle For WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2020\\/01\\/Smart-Product-Bundle-z1tihh.png\",\"excerpt\":\"Fulfill customer expectations with Smart Product Bundle and enrich customer experiences along with your sales revenue.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-bundle-product-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.wpexperts.io\\/smart-bundle-product-for-woocommerce\\/\",\"price\":\"&#36;79.00\",\"hash\":\"033cccdf-744b-4497-87b1-5765e71d3dcd\",\"slug\":\"smart-bundle-for-woocommerce\",\"id\":5193957},{\"title\":\"Rental Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/05\\/Rental-Products-Logo.png?w=150&amp;h=150\",\"excerpt\":\"Create rental products within your WooCommerce store, allowing customers to rent products for specific dates.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/rental-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"d6b9b1a1-8b92-4e07-89b9-4d85e3b574ce\",\"slug\":\"wcrp-rental-products\",\"id\":5860277},{\"title\":\"Walmart Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo-1.png\",\"excerpt\":\"Sell on Walmart with Walmart Integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/walmart-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;249.00\",\"hash\":\"1237f272-56c8-4c77-8539-31450a2f4e1a\",\"slug\":\"walmart-integration-for-woocommerce\",\"id\":5423057},{\"title\":\"Featured Listing for Product Vendors\",\"image\":\"\",\"excerpt\":\"This is an addon of WooCommerce Product Vendor which offers vendor the option to feature their product ahead of others, for a small fee.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/featured-listing-for-product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.makewebbetter.com\\/featured-listing-for-product-vendors\\/\",\"price\":\"&#36;79.00\",\"hash\":\"78610942-f38c-4517-b7e0-4c3753d11752\",\"slug\":\"featured-listing-for-product-vendors\",\"id\":5021060},{\"title\":\"Shopee Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo.png\",\"excerpt\":\"Sell on Shopee with Shopee integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shopee-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"dcf810b6-c8ce-48da-84ba-289ac4ee43f5\",\"slug\":\"woocommerce-shopee-integration\",\"id\":4794826}]}\";s:3:\"raw\";s:16962:\"HTTP/1.1 200 OK\r\nServer: nginx\r\nDate: Wed, 22 Jul 2020 09:12:29 GMT\r\nContent-Type: application/json; charset=UTF-8\r\nContent-Length: 4023\r\nConnection: close\r\nX-Robots-Tag: noindex\r\nLink: <https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\r\nX-Content-Type-Options: nosniff\r\nAccess-Control-Expose-Headers: X-WP-Total, X-WP-TotalPages\r\nAccess-Control-Allow-Headers: Authorization, Content-Type\r\nCache-Control: max-age=60\r\nAllow: GET\r\nContent-Encoding: gzip\r\nX-rq: fra1 89 80 3221\r\nAge: 55\r\nX-Cache: hit\r\nVary: Accept-Encoding, Origin\r\nAccept-Ranges: bytes\r\n\r\n{\"products\":[{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-2.png\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"Product Bundles\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-PB.png?v=1\",\"excerpt\":\"Offer personalized product bundles, bulk discount packages and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"WooCommerce Bookings\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"Composite Products\",\"image\":\"\",\"excerpt\":\"Create product kit builders and custom product configurators using existing products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"Groups for WooCommerce\",\"image\":\"\",\"excerpt\":\"Sell Memberships with Groups and WooCommerce \\u2013\\u00a0the best Group Membership and Access Control solution for WordPress and WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/groups-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"aa2d455ed00566e4fb71bc9d53f2613b\",\"slug\":\"groups-woocommerce\",\"id\":18704},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"Chained Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/05\\/wc-product-chained-products-dark-tkjqoj.png\",\"excerpt\":\"Pre-configured product bundles, giveaways, forced sells and discounted combos. Automatically adds \\u201cchained\\u201d products to cart when \\u201cmain\\u201d product is added.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/chained-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=cp\",\"price\":\"&#36;49.00\",\"hash\":\"cc6e246e495745db10f9f7fddc5aa907\",\"slug\":\"woocommerce-chained-products\",\"id\":18687},{\"title\":\"Mix and Match Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/04\\/mnm-icon-dark-jprydo.png\",\"excerpt\":\"Allow your customers to combine products and create their own variations, and increase your average order value.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-mix-and-match-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"e59883891b7bcd535025486721e4c09f\",\"slug\":\"woocommerce-mix-and-match-products\",\"id\":853021},{\"title\":\"All Products for WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-APFS.png?v=1\",\"excerpt\":\"Offer your products on subscription, and let customers add products to their existing subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/all-products-for-woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"2794ee6e-bc30-4733-9b24-5edfc3f0095d\",\"slug\":\"woocommerce-all-products-for-subscriptions\",\"id\":3978176},{\"title\":\"WooCommerce Box Office\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-BO-Dark.png\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602},{\"title\":\"Teams for WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/02\\/Thumbnail-Teams-for-Memberships-2.png\",\"excerpt\":\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/teams-woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9feb48da-9615-4131-8aa8-eebb55b9cff4\",\"slug\":\"woocommerce-memberships-for-teams\",\"id\":2893267},{\"title\":\"Software Add-on\",\"image\":\"\",\"excerpt\":\"Sell License Keys for Software\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/software-add-on\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"79f6dbfe1f1d3a56a86f0509b6d6b04b\",\"slug\":\"woocommerce-software-add-on\",\"id\":18683},{\"title\":\"WooCommerce API Manager\",\"image\":\"\",\"excerpt\":\"Let customers subscribe to your software or services through API Keys, aka License Keys. Provide automated updates for WordPress Plugins and Themes, or any software through robust APIs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-api-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"f7cdcfb7de76afa0889f07bcb92bf12e\",\"slug\":\"woocommerce-api-manager\",\"id\":260110},{\"title\":\"WooCommerce Bookings Availability\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Aval-Dark.png\",\"excerpt\":\"Sell more bookings by presenting a calendar or schedule of available slots in a page or post.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bookings-availability\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"30770d2a-e392-4e82-baaa-76cfc7d02ae3\",\"slug\":\"woocommerce-bookings-availability\",\"id\":4228225},{\"title\":\"Auctions for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/10\\/auctions_for_woocommerce.png\",\"excerpt\":\"A professional Auction solution for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/auctions-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/wpinstitut.com\\/auctions-for-woocommerce-demo\\/\",\"price\":\"&#36;149.00\",\"hash\":\"c41a199e-5f49-4f5c-bb28-7ca22b0c4fe7\",\"slug\":\"auctions-for-woocommerce\",\"id\":4922919},{\"title\":\"Paywall for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/01\\/paywall-for-woocommerce-logo.png\",\"excerpt\":\"Paywall is a WooCommerce extension that allows creating products with restricted access to content.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paywall-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo-woocommerce-paywall.tiv.net\\/\",\"price\":\"&#36;79.00\",\"hash\":\"a688fc22-9370-4652-9e5e-f968ced9a0a8\",\"slug\":\"paywall-for-woocommerce\",\"id\":5253500},{\"title\":\"Lottery for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/05\\/lottery-logo.png?w=150&amp;h=150\",\"excerpt\":\"Lottery for WooCommerce is a full-featured lottery plugin for creating and managing online lotteries in your WooCommerce Shop.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/lottery-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9694c9bd-1d5c-43af-b1e9-796cc64b16a8\",\"slug\":\"lottery-for-woocommerce\",\"id\":5860289},{\"title\":\"Auctions Made Easy for WooCommerce\",\"image\":\"\",\"excerpt\":\"Auctions Made Easy for WooCommerce is a full-featured auctions plugin for creating and managing online auctions in a WooCommerce shop.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/auctions-made-easy-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a7fbc475-9946-4db9-92b6-5b7ebab3bab2\",\"slug\":\"auctions-made-easy-for-woocommerce\",\"id\":5249611},{\"title\":\"Custom Product Boxes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/04\\/CPB_Icon.jpg?w=150&amp;h=150\",\"excerpt\":\"Custom product boxes for WooCommerce allows users to create product bundles by choosing specific items of their own choice from the collection of products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/custom-product-boxes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/composite-products.codeincept.com\\/product\\/cupcake-gift-box\\/\",\"price\":\"&#36;79.00\",\"hash\":\"ba19e1e3-1d5f-4e2c-bc3e-d7029c04f326\",\"slug\":\"custom-product-boxes\",\"id\":5706607},{\"title\":\"Etsy Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo-2.png\",\"excerpt\":\"Sell on Etsy with Etsy Integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/etsy-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"1dc5953a-3b22-4e73-9d7d-cc852d189beb\",\"slug\":\"woocommerce-etsy-integration\",\"id\":5712585},{\"title\":\"Assorted Products for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/10\\/icon.jpg\",\"excerpt\":\"Empower your customers to create product bundles\\u2014gift boxes of their choice comprising items from your shop.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/assorted-products-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/assorted-products.codeincept.com\\/product\\/assorted-product\\/\",\"price\":\"&#36;79.00\",\"hash\":\"6ab9ee51-c187-421c-9104-efa21d9423ca\",\"slug\":\"assorted-products-for-woocommerce\",\"id\":4911617},{\"title\":\"Smart Product Bundle For WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2020\\/01\\/Smart-Product-Bundle-z1tihh.png\",\"excerpt\":\"Fulfill customer expectations with Smart Product Bundle and enrich customer experiences along with your sales revenue.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-bundle-product-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.wpexperts.io\\/smart-bundle-product-for-woocommerce\\/\",\"price\":\"&#36;79.00\",\"hash\":\"033cccdf-744b-4497-87b1-5765e71d3dcd\",\"slug\":\"smart-bundle-for-woocommerce\",\"id\":5193957},{\"title\":\"Rental Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/05\\/Rental-Products-Logo.png?w=150&amp;h=150\",\"excerpt\":\"Create rental products within your WooCommerce store, allowing customers to rent products for specific dates.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/rental-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"d6b9b1a1-8b92-4e07-89b9-4d85e3b574ce\",\"slug\":\"wcrp-rental-products\",\"id\":5860277},{\"title\":\"Walmart Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo-1.png\",\"excerpt\":\"Sell on Walmart with Walmart Integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/walmart-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;249.00\",\"hash\":\"1237f272-56c8-4c77-8539-31450a2f4e1a\",\"slug\":\"walmart-integration-for-woocommerce\",\"id\":5423057},{\"title\":\"Featured Listing for Product Vendors\",\"image\":\"\",\"excerpt\":\"This is an addon of WooCommerce Product Vendor which offers vendor the option to feature their product ahead of others, for a small fee.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/featured-listing-for-product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.makewebbetter.com\\/featured-listing-for-product-vendors\\/\",\"price\":\"&#36;79.00\",\"hash\":\"78610942-f38c-4517-b7e0-4c3753d11752\",\"slug\":\"featured-listing-for-product-vendors\",\"id\":5021060},{\"title\":\"Shopee Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2019\\/06\\/Logo.png\",\"excerpt\":\"Sell on Shopee with Shopee integration for WooCommerce. Automate, list, and sync inventories in a click and grow your sales.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shopee-integration-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"dcf810b6-c8ce-48da-84ba-289ac4ee43f5\",\"slug\":\"woocommerce-shopee-integration\",\"id\":4794826}]}\";s:7:\"headers\";O:25:\"Requests_Response_Headers\":1:{s:7:\"\0*\0data\";a:17:{s:6:\"server\";a:1:{i:0;s:5:\"nginx\";}s:4:\"date\";a:1:{i:0;s:29:\"Wed, 22 Jul 2020 09:12:29 GMT\";}s:12:\"content-type\";a:1:{i:0;s:31:\"application/json; charset=UTF-8\";}s:14:\"content-length\";a:1:{i:0;s:4:\"4023\";}s:12:\"x-robots-tag\";a:1:{i:0;s:7:\"noindex\";}s:4:\"link\";a:1:{i:0;s:60:\"<https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\";}s:22:\"x-content-type-options\";a:1:{i:0;s:7:\"nosniff\";}s:29:\"access-control-expose-headers\";a:1:{i:0;s:27:\"X-WP-Total, X-WP-TotalPages\";}s:28:\"access-control-allow-headers\";a:1:{i:0;s:27:\"Authorization, Content-Type\";}s:13:\"cache-control\";a:1:{i:0;s:10:\"max-age=60\";}s:5:\"allow\";a:1:{i:0;s:3:\"GET\";}s:16:\"content-encoding\";a:1:{i:0;s:4:\"gzip\";}s:4:\"x-rq\";a:1:{i:0;s:15:\"fra1 89 80 3221\";}s:3:\"age\";a:1:{i:0;s:2:\"55\";}s:7:\"x-cache\";a:1:{i:0;s:3:\"hit\";}s:4:\"vary\";a:1:{i:0;s:23:\"Accept-Encoding, Origin\";}s:13:\"accept-ranges\";a:1:{i:0;s:5:\"bytes\";}}}s:11:\"status_code\";i:200;s:16:\"protocol_version\";d:1.1;s:7:\"success\";b:1;s:9:\"redirects\";i:0;s:3:\"url\";s:81:\"https://woocommerce.com/wp-json/wccom-extensions/1.0/search?category=product-type\";s:7:\"history\";a:0:{}s:7:\"cookies\";O:19:\"Requests_Cookie_Jar\":1:{s:10:\"\0*\0cookies\";a:0:{}}}s:11:\"\0*\0filename\";N;s:4:\"data\";N;s:7:\"headers\";N;s:6:\"status\";N;}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(20, 12, '_wp_attached_file', 'woocommerce-placeholder.png'),
(21, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:23:\"clean-commerce-carousel\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-400x400.png\";s:5:\"width\";i:400;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(22, 2, '_wp_trash_meta_status', 'publish'),
(23, 2, '_wp_trash_meta_time', '1594037033'),
(24, 2, '_wp_desired_post_slug', 'sample-page'),
(34, 13, '_edit_lock', '1594042286:1'),
(35, 13, '_edit_last', '1'),
(36, 22, '_wp_trash_meta_status', 'publish'),
(37, 22, '_wp_trash_meta_time', '1594037536'),
(38, 23, '_wp_trash_meta_status', 'publish'),
(39, 23, '_wp_trash_meta_time', '1594037623'),
(40, 24, '_edit_lock', '1594037677:1'),
(41, 24, '_wp_trash_meta_status', 'publish'),
(42, 24, '_wp_trash_meta_time', '1594037688'),
(43, 1, '_edit_lock', '1594037720:1'),
(44, 1, '_wp_trash_meta_status', 'publish'),
(45, 1, '_wp_trash_meta_time', '1594037713'),
(46, 1, '_wp_desired_post_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d1%96%d1%82-%d1%81%d0%b2%d1%96%d1%82'),
(47, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(48, 1, '_edit_last', '1'),
(49, 26, '_wp_trash_meta_status', 'publish'),
(50, 26, '_wp_trash_meta_time', '1594037827'),
(51, 27, '_wp_trash_meta_status', 'publish'),
(52, 27, '_wp_trash_meta_time', '1594037861'),
(53, 28, '_wp_trash_meta_status', 'publish'),
(54, 28, '_wp_trash_meta_time', '1594038015'),
(55, 29, '_edit_lock', '1594122378:1'),
(56, 29, '_edit_last', '1'),
(57, 31, '_edit_lock', '1594126788:1'),
(58, 31, '_edit_last', '1'),
(59, 33, '_edit_lock', '1594123580:1'),
(60, 33, '_edit_last', '1'),
(61, 36, '_edit_lock', '1594124434:1'),
(62, 36, '_edit_last', '1'),
(63, 38, '_edit_lock', '1594124786:1'),
(64, 38, '_edit_last', '1'),
(65, 40, '_edit_lock', '1594383306:1'),
(66, 40, '_edit_last', '1'),
(67, 42, '_edit_lock', '1594318590:1'),
(68, 42, '_edit_last', '1'),
(69, 44, '_menu_item_type', 'post_type'),
(70, 44, '_menu_item_menu_item_parent', '0'),
(71, 44, '_menu_item_object_id', '42'),
(72, 44, '_menu_item_object', 'page'),
(73, 44, '_menu_item_target', ''),
(74, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(75, 44, '_menu_item_xfn', ''),
(76, 44, '_menu_item_url', ''),
(78, 45, '_menu_item_type', 'post_type'),
(79, 45, '_menu_item_menu_item_parent', '0'),
(80, 45, '_menu_item_object_id', '40'),
(81, 45, '_menu_item_object', 'page'),
(82, 45, '_menu_item_target', ''),
(83, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(84, 45, '_menu_item_xfn', ''),
(85, 45, '_menu_item_url', ''),
(87, 46, '_menu_item_type', 'post_type'),
(88, 46, '_menu_item_menu_item_parent', '0'),
(89, 46, '_menu_item_object_id', '38'),
(90, 46, '_menu_item_object', 'page'),
(91, 46, '_menu_item_target', ''),
(92, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(93, 46, '_menu_item_xfn', ''),
(94, 46, '_menu_item_url', ''),
(96, 47, '_menu_item_type', 'post_type'),
(97, 47, '_menu_item_menu_item_parent', '0'),
(98, 47, '_menu_item_object_id', '36'),
(99, 47, '_menu_item_object', 'page'),
(100, 47, '_menu_item_target', ''),
(101, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(102, 47, '_menu_item_xfn', ''),
(103, 47, '_menu_item_url', ''),
(105, 48, '_menu_item_type', 'post_type'),
(106, 48, '_menu_item_menu_item_parent', '0'),
(107, 48, '_menu_item_object_id', '33'),
(108, 48, '_menu_item_object', 'page'),
(109, 48, '_menu_item_target', ''),
(110, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(111, 48, '_menu_item_xfn', ''),
(112, 48, '_menu_item_url', ''),
(114, 49, '_menu_item_type', 'post_type'),
(115, 49, '_menu_item_menu_item_parent', '0'),
(116, 49, '_menu_item_object_id', '31'),
(117, 49, '_menu_item_object', 'page'),
(118, 49, '_menu_item_target', ''),
(119, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(120, 49, '_menu_item_xfn', ''),
(121, 49, '_menu_item_url', ''),
(123, 50, '_menu_item_type', 'post_type'),
(124, 50, '_menu_item_menu_item_parent', '0'),
(125, 50, '_menu_item_object_id', '29'),
(126, 50, '_menu_item_object', 'page'),
(127, 50, '_menu_item_target', ''),
(128, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(129, 50, '_menu_item_xfn', ''),
(130, 50, '_menu_item_url', ''),
(132, 51, '_menu_item_type', 'post_type'),
(133, 51, '_menu_item_menu_item_parent', '0'),
(134, 51, '_menu_item_object_id', '13'),
(135, 51, '_menu_item_object', 'page'),
(136, 51, '_menu_item_target', ''),
(137, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(138, 51, '_menu_item_xfn', ''),
(139, 51, '_menu_item_url', ''),
(141, 52, '_edit_lock', '1594104297:1'),
(142, 52, '_wp_trash_meta_status', 'publish'),
(143, 52, '_wp_trash_meta_time', '1594104326'),
(144, 53, '_wp_trash_meta_status', 'publish'),
(145, 53, '_wp_trash_meta_time', '1594104787'),
(146, 54, '_edit_lock', '1594104812:1'),
(147, 54, '_wp_trash_meta_status', 'publish'),
(148, 54, '_wp_trash_meta_time', '1594104815'),
(149, 55, '_edit_lock', '1594104905:1'),
(150, 55, '_wp_trash_meta_status', 'publish'),
(151, 55, '_wp_trash_meta_time', '1594104904'),
(152, 56, '_edit_lock', '1594118373:1'),
(154, 56, '_edit_last', '1'),
(155, 56, 'clean_commerce_theme_settings', 'a:2:{s:11:\"post_layout\";s:13:\"right-sidebar\";s:12:\"single_image\";s:0:\"\";}'),
(156, 62, '_edit_lock', '1594118591:1'),
(157, 62, '_edit_last', '1'),
(158, 64, '_edit_lock', '1594118638:1'),
(159, 64, '_edit_last', '1'),
(160, 86, '_wp_trash_meta_status', 'publish'),
(161, 86, '_wp_trash_meta_time', '1594125508'),
(162, 90, '_menu_item_type', 'custom'),
(163, 90, '_menu_item_menu_item_parent', '0'),
(164, 90, '_menu_item_object_id', '90'),
(165, 90, '_menu_item_object', 'custom'),
(166, 90, '_menu_item_target', ''),
(167, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(168, 90, '_menu_item_xfn', ''),
(169, 90, '_menu_item_url', ''),
(171, 91, '_wp_trash_meta_status', 'publish'),
(172, 91, '_wp_trash_meta_time', '1594313116'),
(173, 93, '_wp_trash_meta_status', 'publish'),
(174, 93, '_wp_trash_meta_time', '1594318742'),
(175, 95, '_menu_item_type', 'custom'),
(176, 95, '_menu_item_menu_item_parent', '0'),
(177, 95, '_menu_item_object_id', '95'),
(178, 95, '_menu_item_object', 'custom'),
(179, 95, '_menu_item_target', ''),
(180, 95, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(181, 95, '_menu_item_xfn', ''),
(182, 95, '_menu_item_url', 'http://tel%20+380668856790'),
(183, 95, '_menu_item_orphaned', '1594320341'),
(184, 100, '_wp_trash_meta_status', 'publish'),
(185, 100, '_wp_trash_meta_time', '1594321373'),
(186, 101, '_menu_item_type', 'custom'),
(187, 101, '_menu_item_menu_item_parent', '0'),
(188, 101, '_menu_item_object_id', '101'),
(189, 101, '_menu_item_object', 'custom'),
(190, 101, '_menu_item_target', ''),
(191, 101, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(192, 101, '_menu_item_xfn', ''),
(193, 101, '_menu_item_url', 'https://www.instagram.com/kravchenko5609/');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-07-06 09:43:42', '2020-07-06 06:43:42', '<!-- wp:paragraph -->\n<p>Ласкаво просимо до WordPress. Це ваш перший запис. Редагуйте або видаліть, а потім починайте писати!</p>\n<!-- /wp:paragraph -->', 'Привіт, світ!', '', 'trash', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d1%96%d1%82-%d1%81%d0%b2%d1%96%d1%82__trashed', '', '', '2020-07-06 15:15:19', '2020-07-06 12:15:19', '', 0, 'http://crystalmebel/?p=1', 0, 'post', '', 1),
(2, 1, '2020-07-06 09:43:42', '2020-07-06 06:43:42', '<!-- wp:paragraph -->\n<p>Це приклад сторінки. Від записів у блозі вона відрізняється тим, що залишається на одному місці і відображається в меню сайту (у більшості тем). На сторінці &laquo;Деталі&raquo; власники сайтів зазвичай розповідають про себе потенційним відвідувачам. Наприклад, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привіт! Вдень я кур\'єр, а ввечері &#8212; перспективний актор. Це мій блог. Я живу у Львові, люблю свого пса Джека і Пінаколаду. (І ще потрапляти під дощ.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... чи щось подібне до цього:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компанія &laquo;Штучки XYZ&raquo; була заснована в 1971 році і з тих пір виготовляє якісні штучки. Компанія знаходиться в Готем-сіті, має штат з більш ніж 2000 співробітників і приносить багато користі жителям Готема.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдіть <a href=\"http://crystalmebel/wp-admin/\">в майстерню</a>, щоб видалити цю сторінку і створити нові. Успіхів!</p>\n<!-- /wp:paragraph -->', 'Зразок сторінки', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2020-07-06 15:03:53', '2020-07-06 12:03:53', '', 0, 'http://crystalmebel/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-07-06 09:43:42', '2020-07-06 06:43:42', '<!-- wp:heading --><h2>Хто ми</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Наша адреса сайту: http://crystalmebel.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Які особисті дані ми збираємо та чому ми їх збираємо</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Коментарі</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Коли відвідувачі залишають коментарі на сайті, ми збираємо дані, що відображаються у формі коментарів, а також IP-адреси відвідувачів та рядку агента-браузера користувача, щоб допомогти виявити спам.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонімний рядок, створений за вашою адресою електронної пошти (також називається хеш), може бути наданий службі Gravatar, щоб дізнатись, чи ви його використовуєте. Політика конфіденційності служби Gravatar доступна тут: https://automattic.com/privacy/. Після схвалення вашого коментаря, ваше зображення профілю буде видно для громадськості в контексті вашого коментарю.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Медіафайли</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Якщо ви завантажуєте зображення на сайт, вам слід уникати завантаження зображень із вбудованими даними про місцезнаходження (EXIF GPS). Відвідувачі сайту можуть завантажувати та витягувати будь-які дані про місцезнаходження із зображень на сайті.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Контактні форми</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Якщо ви залишаєте коментар на нашому сайті, ви можете ввімкнути збереження свого імені, електронної адреси та сайту в файлах cookie. Це для вашої зручності, так що вам не потрібно буде повторно заповнювати ваші дані, коли ви залишатимете наступний коментар. Ці файли cookie зберігатимуться 1 рік.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Якщо у вас є обліковий запис на сайті і ви ввійдете в нього, ми встановимо тимчасовий cookie для визначення підтримки cookies вашим браузером, cookie не містить ніякої особистої інформації і віддаляється при закритті вашого браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Коли ви ввійдете в систему, ми також встановимо декілька файлів cookie, щоб зберегти інформацію про ваш логін та налаштування екрана. Cookie-файли для входу зберігаються 2 дні, а файли cookie-файлів налаштувань екрану - 1 рік. Якщо ви виберете &quot;Запам\'ятати мене&quot;, ваш логін буде зберігатися протягом 2 тижнів. Якщо ви вийдете зі свого облікового запису, файли cookie логіну будуть видалені.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Якщо ви редагуєте або публікуєте статтю, у вашому веб-переглядачі буде збережений додатковий файл cookie. Цей файл cookie не містить особистих даних і просто вказує ідентифікатор статті, яку ви щойно редагували. Його термін дії закінчується через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Вбудований вміст з інших веб-сайтів</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Статті на цьому сайті можуть містити вбудований вміст (наприклад: відео, зображення, статті тощо). Вбудований вміст з інших сайтів веде себе так само, як би користувач відвідав інший сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ці сайти можуть збирати дані про вас, використовувати файли cookie, вбудовані додатки відстеження третіх сторін та стежити за вашою взаємодією з цим вбудованим вмістом. Зокрема відстежувати взаємодію з вбудованим вмістом, якщо у вас є обліковий запис і ви увійшли на цей сайт.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Аналітика</h3><!-- /wp:heading --><!-- wp:heading --><h2>З ким ми ділимося вашими даними</h2><!-- /wp:heading --><!-- wp:heading --><h2>Як довго ми зберігаємо ваші дані</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Якщо ви залишаєте коментар, він та його метадані зберігаються протягом невизначеного терміну. Таким чином, ми можемо автоматично визначати та затверджувати кожен наступний коментар замість того, щоб тримати їх у черзі на модерації.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для користувачів, які реєструються на нашому сайті (якщо такі є), ми зберігаємо надану ними персональну інформацію у їхньому профілі користувача. Всі користувачі можуть переглядати, редагувати або видаляти свої особисті дані в будь-який час (за винятком того, що вони не можуть змінити своє ім\'я користувача). Адміністратори сайту також можуть переглядати та редагувати цю інформацію.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Які права ви маєте відносно своїх даних</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Якщо у вас є обліковий запис на цьому сайті або ви залишили коментарі, ви можете подати запит на отримання експортованого файлу особистих даних які ми зберігаємо про вас, включаючи всі дані, які ви надали нам. Ви також можете вимагати, щоб ми стерли будь-які особисті дані, які ми маємо щодо вас. Це не включає будь-які дані, які ми зобов\'язані зберігати в адміністративних, правових та цілях безпеки.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куди ми відправляємо ваші данні</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Коментарі відвідувачів можуть бути перевірені за допомогою служби автоматичного виявлення спаму.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ваша контактна інформація</h2><!-- /wp:heading --><!-- wp:heading --><h2>Додаткова інформація</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Як ми захищаємо ваші данні</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Які процедури проти втрати даних ми використовуємо</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Від яких третіх сторін ми отримуємо дані</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Яке автоматичне рішення приймається  і/або профілювання ми робимо з користувацькими даними</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Вимоги до розкриття галузевих нормативних вимог</h3><!-- /wp:heading -->', 'Політика конфіденційності', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-07-06 09:43:42', '2020-07-06 06:43:42', '', 0, 'http://crystalmebel/?page_id=3', 0, 'page', '', 0),
(12, 1, '2020-07-06 14:44:40', '2020-07-06 11:44:40', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-07-06 14:44:40', '2020-07-06 11:44:40', '', 0, 'http://crystalmebel/wp-content/uploads/2020/07/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(13, 1, '2020-07-06 14:55:01', '2020-07-06 11:55:01', '', 'Каталог мебели', '', 'publish', 'closed', 'closed', '', 'katalog-mebeli', '', '', '2020-07-06 16:31:25', '2020-07-06 13:31:25', '', 0, 'http://crystalmebel/shop/', 1, 'page', '', 0),
(14, 1, '2020-07-06 14:55:02', '2020-07-06 11:55:02', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Корзина', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2020-07-07 16:03:54', '2020-07-07 13:03:54', '', 0, 'http://crystalmebel/cart/', 0, 'page', '', 0),
(15, 1, '2020-07-06 14:55:02', '2020-07-06 11:55:02', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Оформление заказа', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2020-07-07 16:04:10', '2020-07-07 13:04:10', '', 0, 'http://crystalmebel/checkout/', 0, 'page', '', 0),
(16, 1, '2020-07-06 14:55:02', '2020-07-06 11:55:02', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'Мой аккаунт', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2020-07-07 16:03:57', '2020-07-07 13:03:57', '', 0, 'http://crystalmebel/my-account/', 0, 'page', '', 0),
(17, 1, '2020-07-06 15:03:53', '2020-07-06 12:03:53', '<!-- wp:paragraph -->\n<p>Це приклад сторінки. Від записів у блозі вона відрізняється тим, що залишається на одному місці і відображається в меню сайту (у більшості тем). На сторінці &laquo;Деталі&raquo; власники сайтів зазвичай розповідають про себе потенційним відвідувачам. Наприклад, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привіт! Вдень я кур\'єр, а ввечері &#8212; перспективний актор. Це мій блог. Я живу у Львові, люблю свого пса Джека і Пінаколаду. (І ще потрапляти під дощ.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... чи щось подібне до цього:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компанія &laquo;Штучки XYZ&raquo; була заснована в 1971 році і з тих пір виготовляє якісні штучки. Компанія знаходиться в Готем-сіті, має штат з більш ніж 2000 співробітників і приносить багато користі жителям Готема.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдіть <a href=\"http://crystalmebel/wp-admin/\">в майстерню</a>, щоб видалити цю сторінку і створити нові. Успіхів!</p>\n<!-- /wp:paragraph -->', 'Зразок сторінки', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-07-06 15:03:53', '2020-07-06 12:03:53', '', 2, 'http://crystalmebel/2020/07/06/2-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2020-07-06 15:04:52', '2020-07-06 12:04:52', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Корзина', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-07-06 15:04:52', '2020-07-06 12:04:52', '', 14, 'http://crystalmebel/2020/07/06/14-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2020-07-06 15:04:58', '2020-07-06 12:04:58', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'Мой аккаунт', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2020-07-06 15:04:58', '2020-07-06 12:04:58', '', 16, 'http://crystalmebel/2020/07/06/16-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2020-07-06 15:05:07', '2020-07-06 12:05:07', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Оформление заказа', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-07-06 15:05:07', '2020-07-06 12:05:07', '', 15, 'http://crystalmebel/2020/07/06/15-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2020-07-06 15:08:10', '2020-07-06 12:08:10', '', 'Каталог мебели', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-07-06 15:08:10', '2020-07-06 12:08:10', '', 13, 'http://crystalmebel/2020/07/06/13-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2020-07-06 15:12:14', '2020-07-06 12:12:14', '{\n    \"blogname\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-06 12:12:14\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-06 12:12:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '975b849e-2ccf-49ee-87b2-15abd3b4f77b', '', '', '2020-07-06 15:12:14', '2020-07-06 12:12:14', '', 0, 'http://crystalmebel/2020/07/06/975b849e-2ccf-49ee-87b2-15abd3b4f77b/', 0, 'customize_changeset', '', 0),
(23, 1, '2020-07-06 15:13:42', '2020-07-06 12:13:42', '{\n    \"clean-commerce::nav_menu_locations[primary]\": {\n        \"value\": -6537854992990458000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-06 12:13:42\"\n    },\n    \"nav_menu[-6537854992990458000]\": {\n        \"value\": {\n            \"name\": \"\\u043c\\u0435\\u043d\\u044e\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-06 12:13:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e1106101-69db-4699-84e8-09ab55c8336f', '', '', '2020-07-06 15:13:42', '2020-07-06 12:13:42', '', 0, 'http://crystalmebel/2020/07/06/e1106101-69db-4699-84e8-09ab55c8336f/', 0, 'customize_changeset', '', 0),
(24, 1, '2020-07-06 15:14:47', '2020-07-06 12:14:47', '{\n    \"clean-commerce::nav_menu_locations[primary]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-06 12:14:36\"\n    },\n    \"nav_menu[16]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-06 12:14:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd27b9df9-c3ca-4058-8631-a573c3b1cb5e', '', '', '2020-07-06 15:14:47', '2020-07-06 12:14:47', '', 0, 'http://crystalmebel/?p=24', 0, 'customize_changeset', '', 0),
(25, 1, '2020-07-06 15:15:13', '2020-07-06 12:15:13', '<!-- wp:paragraph -->\n<p>Ласкаво просимо до WordPress. Це ваш перший запис. Редагуйте або видаліть, а потім починайте писати!</p>\n<!-- /wp:paragraph -->', 'Привіт, світ!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-07-06 15:15:13', '2020-07-06 12:15:13', '', 1, 'http://crystalmebel/2020/07/06/1-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2020-07-06 15:17:07', '2020-07-06 12:17:07', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"woocommerce_recently_viewed_products-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-06 12:17:07\"\n    },\n    \"widget_woocommerce_recently_viewed_products[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-06 12:17:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0812f50e-84bb-4364-9a4c-43489a869832', '', '', '2020-07-06 15:17:07', '2020-07-06 12:17:07', '', 0, 'http://crystalmebel/2020/07/06/0812f50e-84bb-4364-9a4c-43489a869832/', 0, 'customize_changeset', '', 0),
(27, 1, '2020-07-06 15:17:40', '2020-07-06 12:17:40', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-06 12:17:40\"\n    },\n    \"page_on_front\": {\n        \"value\": \"13\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-06 12:17:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0c594c26-09f0-4f66-afd6-f140d67400fe', '', '', '2020-07-06 15:17:40', '2020-07-06 12:17:40', '', 0, 'http://crystalmebel/2020/07/06/0c594c26-09f0-4f66-afd6-f140d67400fe/', 0, 'customize_changeset', '', 0),
(28, 1, '2020-07-06 15:20:14', '2020-07-06 12:20:14', '{\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-06 12:20:14\"\n    },\n    \"page_on_front\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-06 12:20:14\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-06 12:20:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5629c6f3-21d8-477a-aded-67f5e98fc044', '', '', '2020-07-06 15:20:14', '2020-07-06 12:20:14', '', 0, 'http://crystalmebel/2020/07/06/5629c6f3-21d8-477a-aded-67f5e98fc044/', 0, 'customize_changeset', '', 0),
(29, 1, '2020-07-06 16:18:59', '2020-07-06 13:18:59', '<!-- wp:paragraph {\"customFontSize\":15} -->\n<p style=\"font-size:15px\"><code>    </code>В нашем магазине есть возможность заказа мебели по индивидуальным размерам. Все представленные модели диванов, а также некоторые модели корпусной мебели Вы можете заказать в нужном размере и цветовой гамме. &nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"customFontSize\":15} -->\n<p style=\"font-size:15px\">Изготовление мебели производиться в срок до 3-х недель.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"customFontSize\":15} -->\n<p style=\"font-size:15px\">Оформить заказ Вы можете в нашем магазине, по телефону или на сайте.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Порядок заказа мебели по индивидуальным размерам или с заменой ткани:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>Выбирайте по фото в нашем каталоге понравившуюся модель мебели;</li><li>Во вкладке «ткани» выбирайте цвет и тип ткани (для мягкой мебели);</li><li>Определитесь с нужными Вам габаритами мебели;</li><li>Сохраните выбранные названия в корзину или сделайте скрин экрана, запишите названия ткани и модели мебели;</li><li>Звоните нам или приезжайте в салон и после предоплаты производство начнет изготовление Вашей мебели.</li></ol>\n<!-- /wp:list -->', 'Мебель под заказ', '', 'publish', 'closed', 'closed', '', 'mebel-na-zakaz', '', '', '2020-07-07 14:46:44', '2020-07-07 11:46:44', '', 0, 'http://crystalmebel/?page_id=29', 2, 'page', '', 0),
(30, 1, '2020-07-06 16:18:59', '2020-07-06 13:18:59', '', 'Мебель под заказ', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-07-06 16:18:59', '2020-07-06 13:18:59', '', 29, 'http://crystalmebel/2020/07/06/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2020-07-06 16:21:44', '2020-07-06 13:21:44', '<!-- wp:paragraph -->\n<p>     В нашем мебельном магазине Вы можете воспользоваться рассрочкой от Приват банка</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>    Данное предложение действует только для посетителей нашего магазина, так как рассрочка оформляется через терминал.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>    «<strong>Мгновенная рассрочка» </strong>- это новая возможность, предоставляемая клиентам ПрибатБанка, и позволяющая совершать крупные покупки в магазинах с наибольшей выгодой для себя. Воспользовавшись этой услугой, можно оплатить покупку не полностью и сразу, а разбить сумму на части, и выплатить её постепенно, внося ежемесячные регулярные платежи. То есть, проще говоря, - оплачивая покупку по частям.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>    Сервисом может воспользоваться каждый клиент ПриватБанка, являющийся владельцем любой из нижеперечисленных кредитных карт:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>«Универсальной»,</li><li>«Универсальной Gold»,</li><li>либо же одной из элитных карт для VIP-клиентов банка (Platinum, Infinite, World Signia/Elite).</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>     Максимальное количество частей, на которые можно разделить общую сумму покупки - 24. Это значит, что теперь есть возможность расплатиться за, например,&nbsp;кровать, в течении 2-х лет со дня совершения покупки, оплачивая комиссию в размере 2,9% от стоимости товара ежемесячно.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Как воспользоваться услугой:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:list {\"ordered\":true,\"type\":\"1\"} -->\n<ol type=\"1\"><li>Узнать сумму своего допустимого лимита по данному сервису. Для этого нужно отправить смс-сообщение на номер 10060 с текстом chast.</li><li>Выбрать мебель, которую хочется купить, даже если на неё сейчас не хватает денег.</li><li><strong>В мебельном магазине МодаМебель </strong>сказать продавцу, что выбранная мебель будет оплачена частями по программе \"Мгновенная рассрочка\", и предъявить карту ПриватБанка.</li><li>Сообщить удобное количество платежей и сделать покупку, оплатив первую её часть.</li><li>Теперь можно ожидать доставку купленной мебели домой и каждый месяц с карты оплачивать часть её стоимости с учетом комиссии за использование программы рассрочки.</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>     Если вы хотите купить все ту же кровать стоимостью 6000 грн. в рассрочку&nbsp;и вы планируете за 2 года выплатить его стоимость полностью.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>     Значит, нужно сумму разделить на 25 (24 регулярных платежа + 1 взнос в день покупки). Получается, что каждый месяц нужно будет выплачивать всего по 240 грн в течении 2-х лет, при этом пользуясь мебелью, если оплата происходит с собственных средств.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>      Если же оплата будет свершаться с помощью кредитных средств, то нужно будет платить в месяц +4% от суммы платежа.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Преимущества сервиса \"Мгновенная рассрочка\":</h3>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>покупка оформляется быстро, сразу на кассе;</li><li>минимальная комиссия;</li><li>отсутствие необходимости заполнять какие-то документы.</li></ul>\n<!-- /wp:list -->', 'Рассрочка', '', 'publish', 'closed', 'closed', '', 'rassrochka', '', '', '2020-07-07 15:58:50', '2020-07-07 12:58:50', '', 0, 'http://crystalmebel/?page_id=31', 3, 'page', '', 0),
(32, 1, '2020-07-06 16:21:29', '2020-07-06 13:21:29', '', 'Рассрочка', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2020-07-06 16:21:29', '2020-07-06 13:21:29', '', 31, 'http://crystalmebel/2020/07/06/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2020-07-06 16:22:39', '2020-07-06 13:22:39', '<!-- wp:paragraph -->\n<p>Доставка мягкой и корпусной мебели в черте города Запорожья производиться бесплатно.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>По городу Запорожье доставка готового изделия с салона-магазина производиться в день покупки или в срок, оговоренный с заказчиком.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Доставка по Украине возможна перевозчиками Деливери, Новая почта или попутным транспортом по тарифам перевозчика. Все логистические услуги мы возьмем на себя.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Мы не отправим Вам товар до тех пор, пока не назовем примерную стоимость доставки нужного Вам товара.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Возможен самовывоз мебели с нашего магазина.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>При отправке товара по Украине любым перевозчиком, мы упаковываем мебель в стрейч пленку.</p>\n<!-- /wp:paragraph -->', 'Доставка', '', 'publish', 'closed', 'closed', '', 'dostavka', '', '', '2020-07-07 14:50:22', '2020-07-07 11:50:22', '', 0, 'http://crystalmebel/?page_id=33', 4, 'page', '', 0),
(34, 1, '2020-07-06 16:22:26', '2020-07-06 13:22:26', '', 'Доставка', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2020-07-06 16:22:26', '2020-07-06 13:22:26', '', 33, 'http://crystalmebel/2020/07/06/33-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2020-07-06 16:24:54', '2020-07-06 13:24:54', '<!-- wp:paragraph -->\n<p>В нашем мебельном магазине возможен любой удобный для Вас способ оплаты:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>наличными;</li><li>через терминал картой любого банка;</li><li>перевод на карту через мобильный банк;</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Все расходы по переводу средств мы берем на себя.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Если Вы заказали мебель, находясь у нас в магазине, предоплата не требуется.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Если Вы решили сделать онлайн заказ или по телефону, перед отправкой товара необходима предоплата в размере 50% от стоимости товара.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Если товар приехал без повреждений, в срок, оговоренный при заказе и Вы по личным причинам отказываетесь  принимать товар, с предоплаты взымается стоимость разгрузочно-погрузочных работ. Остаток средств возвращается заказчику на карту или наличными.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Если Вы заказываете мебель по индивидуальным размерам и/или с заменой ткани, требуется предоплата в размере 100% от стоимости товара. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Если заказанный Вами товар поврежден или не соответствует нужным размерам, типу или цвету ткани, предоплата возвращается в полном размере на карту заказчика или наличными.</p>\n<!-- /wp:paragraph -->', 'Оплата', '', 'publish', 'closed', 'closed', '', 'oplata', '', '', '2020-07-07 15:22:06', '2020-07-07 12:22:06', '', 0, 'http://crystalmebel/?page_id=36', 5, 'page', '', 0),
(37, 1, '2020-07-06 16:24:40', '2020-07-06 13:24:40', '', 'Оплата', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-07-06 16:24:40', '2020-07-06 13:24:40', '', 36, 'http://crystalmebel/2020/07/06/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2020-07-06 16:26:27', '2020-07-06 13:26:27', '<!-- wp:paragraph -->\n<p>На весь ассортимент мягкой мебели действует гарантия сроком 12 месяцев (для покупателей в городе Запорожье). Гарантии для покупателей других городов действуют до момента забора товара.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Гарантия на корпусную мебель действует до момента забора товара заказчиком.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Условия гарантии на мягкую мебель:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>Гарантия действительна только при наличии гарантийного свидетельства с датой продажи, подписи продавца и покупателя.</li><li>Гарантийному обслуживанию подлежит только та мебель, которая имеет неисправность по вине мебельной фабрики.</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Во избежание серьезных повреждений мебели в процессе эксплуатации запрещается:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>садиться на спинки;</li><li>садиться на боковины (на быльца диванов и кресел);</li><li>класть и кидать на мягкие части мебели громоздкие предметы с острыми углами;</li><li>избегать приложения резких динамичных нагрузок к сиденьям (нормативная динамичная нагрузка к одноместной мебели 0-100 кг, многоместной 120-220 кг.)</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Гарантия не распростроняется:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:list {\"ordered\":true,\"type\":\"1\"} -->\n<ol type=\"1\"><li>Любое повреждение при транспортировке самовывозом.</li><li>,Повреждения, вызванные неправильным, грубым или небрежным обращением.</li><li>Неправильная эксплуатация раскладного механизма (приложенные сверх усилия при складывании/раскладывании мебели)</li><li>Естественное (в процессе использования) изнашивание тканевых, кожаных покрытий и механизмов.</li><li>Повреждения, вызванные пожаром или иными стихийными бедствиями.</li><li>Повреждения, вызванные неправильными:</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Сборкой, ремонтом или наладкой, выполненными неуполномоченными мастерами магазина.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Все дефекты, возникшие по вине завода-производителя на протяжении гарантийного срока, устраняются заводом-изготовителем бесплатно. Гарантия не распространяется на изделие в отношении которого нарушаются правила эксплуатации транспортировки, а также на изделие с признаками ремонта силами покупателя.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Все недостающие части для сборки, заявленные в комплекте мебели, доставляются магазином заказчику на адрес бесплатно.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Возврат товара возможен в срок до 14 дней от момента совершения покупки при условии сохранности товара в надлежащем, рабочем виде, наличии товарного чека о покупке.</p>\n<!-- /wp:paragraph -->', 'Гарантии и возврат', '', 'publish', 'closed', 'closed', '', 'garantii-i-vozvrat', '', '', '2020-07-07 15:27:10', '2020-07-07 12:27:10', '', 0, 'http://crystalmebel/?page_id=38', 6, 'page', '', 0),
(39, 1, '2020-07-06 16:26:04', '2020-07-06 13:26:04', '', 'Гарантии и возврат', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2020-07-06 16:26:04', '2020-07-06 13:26:04', '', 38, 'http://crystalmebel/2020/07/06/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2020-07-06 16:27:18', '2020-07-06 13:27:18', '<!-- wp:paragraph -->\n<p>Вы можете нам позвонить</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<div id=\"tophead\">\n	<div class=\"container\">\n		<div id=\"quick-contact\">\n			<ul>\n												<li class=\"quick-call\">\n<button><a href=\"tel:380668856790\">380668856790</a></button>\n</li>	\n<li class=\"quick-call\">\n<button><a href=\"tel:380960551617\">+380960551617</a></button>\n</li>																</ul>\n</div> <!-- #quick-contact -->\n\n									\n				\n			</div> <!-- .container -->\n		</div>\n<!-- /wp:html -->', 'Контакты', '', 'publish', 'closed', 'closed', '', 'kontakty', '', '', '2020-07-09 22:57:04', '2020-07-09 19:57:04', '', 0, 'http://crystalmebel/?page_id=40', 7, 'page', '', 0),
(41, 1, '2020-07-06 16:26:55', '2020-07-06 13:26:55', '', 'Контакты', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-07-06 16:26:55', '2020-07-06 13:26:55', '', 40, 'http://crystalmebel/2020/07/06/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2020-07-06 16:28:03', '2020-07-06 13:28:03', '<!-- wp:paragraph -->\n<p>Г. Запорожье, ул. Автострадная 109</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Частный сектор по трассе Харьков-Симферополь.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d10719.02468920123!2d35.23507733475115!3d47.80556210955243!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40dc5c23d0f79905%3A0xcddfd3ef2385ca10!2z0JDQstGC0L7RgdGC0YDQsNC00L3QsNGPINGD0LsuLCAxMDksINCX0LDQv9C-0YDQvtC20YzQtSwg0JfQsNC_0L7RgNC-0LbRgdC60LDRjyDQvtCx0LvQsNGB0YLRjCwgNjkwMDA!5e0!3m2!1sru!2sua!4v1594317901994!5m2!1sru!2sua\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>К нам не ездит общественный транспорт, но мы с радостью доставим Вас в магазин своим служебным транспортом от ближайших остановок улицы Восточной, что на Космосе или от улицы Молочной, что в р-не Шевченковского. Просто позвоните нам и предупредите о своем визите, и мы в срок прибудем за Вами.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Адрес магазина', '', 'publish', 'closed', 'closed', '', 'adress-magazina', '', '', '2020-07-09 21:08:16', '2020-07-09 18:08:16', '', 0, 'http://crystalmebel/?page_id=42', 9, 'page', '', 0),
(43, 1, '2020-07-06 16:27:40', '2020-07-06 13:27:40', '', 'Адрес магазина', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2020-07-06 16:27:40', '2020-07-06 13:27:40', '', 42, 'http://crystalmebel/2020/07/06/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2020-07-07 09:42:46', '2020-07-07 06:42:46', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2020-07-07 09:42:46', '2020-07-07 06:42:46', '', 0, 'http://crystalmebel/?p=44', 8, 'nav_menu_item', '', 0),
(45, 1, '2020-07-07 09:42:45', '2020-07-07 06:42:45', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2020-07-07 09:42:45', '2020-07-07 06:42:45', '', 0, 'http://crystalmebel/?p=45', 7, 'nav_menu_item', '', 0),
(46, 1, '2020-07-07 09:42:45', '2020-07-07 06:42:45', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2020-07-07 09:42:45', '2020-07-07 06:42:45', '', 0, 'http://crystalmebel/?p=46', 6, 'nav_menu_item', '', 0),
(47, 1, '2020-07-07 09:42:45', '2020-07-07 06:42:45', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2020-07-07 09:42:45', '2020-07-07 06:42:45', '', 0, 'http://crystalmebel/?p=47', 5, 'nav_menu_item', '', 0),
(48, 1, '2020-07-07 09:42:45', '2020-07-07 06:42:45', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2020-07-07 09:42:45', '2020-07-07 06:42:45', '', 0, 'http://crystalmebel/?p=48', 4, 'nav_menu_item', '', 0),
(49, 1, '2020-07-07 09:42:44', '2020-07-07 06:42:44', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2020-07-07 09:42:44', '2020-07-07 06:42:44', '', 0, 'http://crystalmebel/?p=49', 3, 'nav_menu_item', '', 0),
(50, 1, '2020-07-07 09:42:44', '2020-07-07 06:42:44', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2020-07-07 09:42:44', '2020-07-07 06:42:44', '', 0, 'http://crystalmebel/?p=50', 2, 'nav_menu_item', '', 0),
(51, 1, '2020-07-07 09:42:44', '2020-07-07 06:42:44', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2020-07-07 09:42:44', '2020-07-07 06:42:44', '', 0, 'http://crystalmebel/?p=51', 1, 'nav_menu_item', '', 0),
(52, 1, '2020-07-07 09:45:25', '2020-07-07 06:45:25', '{\n    \"clean-commerce::nav_menu_locations[header]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-07 06:44:57\"\n    },\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-07 06:45:25\"\n    },\n    \"page_on_front\": {\n        \"value\": \"13\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-07 06:45:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'db246860-89d8-4a6f-80b2-ae1d75f2ce5a', '', '', '2020-07-07 09:45:25', '2020-07-07 06:45:25', '', 0, 'http://crystalmebel/?p=52', 0, 'customize_changeset', '', 0),
(53, 1, '2020-07-07 09:53:07', '2020-07-07 06:53:07', '{\n    \"clean-commerce::search_in_header\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-07 06:53:07\"\n    },\n    \"clean-commerce::global_layout\": {\n        \"value\": \"right-sidebar\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-07 06:53:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '06176f11-d44b-47c1-9f97-359e6d240e56', '', '', '2020-07-07 09:53:07', '2020-07-07 06:53:07', '', 0, 'http://crystalmebel/2020/07/07/06176f11-d44b-47c1-9f97-359e6d240e56/', 0, 'customize_changeset', '', 0),
(54, 1, '2020-07-07 09:53:35', '2020-07-07 06:53:35', '{\n    \"clean-commerce::show_social_in_footer\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-07 06:53:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1720e9c6-89a8-44b3-99b9-8971172cbec0', '', '', '2020-07-07 09:53:35', '2020-07-07 06:53:35', '', 0, 'http://crystalmebel/?p=54', 0, 'customize_changeset', '', 0),
(55, 1, '2020-07-07 09:55:03', '2020-07-07 06:55:03', '{\n    \"clean-commerce::show_social_in_footer\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-07 06:54:32\"\n    },\n    \"clean-commerce::featured_carousel_status\": {\n        \"value\": \"home-page\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-07 06:54:32\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"text-3\",\n            \"woocommerce_recently_viewed_products-3\",\n            \"woocommerce_product_search-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-07 06:55:03\"\n    },\n    \"widget_woocommerce_product_search[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-07 06:55:03\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9738842d-82a2-4398-abf3-ab098985030a', '', '', '2020-07-07 09:55:03', '2020-07-07 06:55:03', '', 0, 'http://crystalmebel/?p=55', 0, 'customize_changeset', '', 0),
(56, 1, '2020-07-07 13:36:09', '2020-07-07 10:36:09', '', 'Ткани', '', 'publish', 'closed', 'closed', '', 'tkani', '', '', '2020-07-07 13:36:57', '2020-07-07 10:36:57', '', 29, 'http://crystalmebel/?page_id=56', 0, 'page', '', 0),
(58, 1, '2020-07-07 13:35:47', '2020-07-07 10:35:47', '', 'Ткани', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2020-07-07 13:35:47', '2020-07-07 10:35:47', '', 56, 'http://crystalmebel/2020/07/07/56-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2020-07-07 13:37:10', '2020-07-07 10:37:10', '', 'Ткани', '', 'inherit', 'closed', 'closed', '', '56-autosave-v1', '', '', '2020-07-07 13:37:10', '2020-07-07 10:37:10', '', 56, 'http://crystalmebel/2020/07/07/56-autosave-v1/', 0, 'revision', '', 0),
(60, 1, '2020-07-07 13:39:51', '2020-07-07 10:39:51', '<!-- wp:list -->\n<ul><li>Nrfyb</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph {\"textColor\":\"very-dark-gray\",\"fontSize\":\"medium\"} -->\n<p class=\"has-text-color has-medium-font-size has-very-dark-gray-color\"></p>\n<!-- /wp:paragraph -->', 'Мебель под заказ', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-07-07 13:39:51', '2020-07-07 10:39:51', '', 29, 'http://crystalmebel/2020/07/07/29-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2020-07-07 13:40:44', '2020-07-07 10:40:44', '<!-- wp:list -->\n<ul><li>Nrfyb   <a href=\"http://crystalmebel/mebel-na-zakaz/tkani/\"><code>http://crystalmebel/mebel-na-zakaz/tkani/</code></a></li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph {\"textColor\":\"very-dark-gray\",\"fontSize\":\"medium\"} -->\n<p class=\"has-text-color has-medium-font-size has-very-dark-gray-color\"></p>\n<!-- /wp:paragraph -->', 'Мебель под заказ', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-07-07 13:40:44', '2020-07-07 10:40:44', '', 29, 'http://crystalmebel/2020/07/07/29-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2020-07-07 13:43:04', '2020-07-07 10:43:04', '', 'Механизмы раскладки', '', 'publish', 'closed', 'closed', '', 'mekhanizmy-raskladki', '', '', '2020-07-07 13:43:07', '2020-07-07 10:43:07', '', 29, 'http://crystalmebel/?page_id=62', 0, 'page', '', 0),
(63, 1, '2020-07-07 13:42:47', '2020-07-07 10:42:47', '', 'Механизмы раскладки', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2020-07-07 13:42:47', '2020-07-07 10:42:47', '', 62, 'http://crystalmebel/2020/07/07/62-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2020-07-07 13:43:52', '2020-07-07 10:43:52', '', 'Наполнители матрасов', '', 'publish', 'closed', 'closed', '', 'napolniteli-matrasov', '', '', '2020-07-07 13:43:55', '2020-07-07 10:43:55', '', 29, 'http://crystalmebel/?page_id=64', 0, 'page', '', 0),
(65, 1, '2020-07-07 13:43:37', '2020-07-07 10:43:37', '', 'Наполнители матрасов', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2020-07-07 13:43:37', '2020-07-07 10:43:37', '', 64, 'http://crystalmebel/2020/07/07/64-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2020-07-07 14:29:49', '2020-07-07 11:29:49', '<!-- wp:categories /-->\n\n<!-- wp:categories /-->\n\n<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">\n\n\n&lt;!-- /* Font Definitions */ @font-face {font-family:\"Cambria Math\"; panose-1:2 4 5 3 5 4 6 3 2 4; mso-font-charset:0; mso-generic-font-family:roman; mso-font-pitch:variable; mso-font-signature:3 0 0 0 1 0;} /* Style Definitions */ p.MsoNormal, li.MsoNormal, div.MsoNormal {mso-style-unhide:no; mso-style-qformat:yes; mso-style-parent:\"\"; margin:0cm; margin-bottom:.0001pt; mso-pagination:widow-orphan; font-size:12.0pt; font-family:\"Times New Roman\",serif; mso-fareast-font-family:\"Times New Roman\";} .MsoChpDefault {mso-style-type:export-only; mso-default-props:yes; font-size:10.0pt; mso-ansi-font-size:10.0pt; mso-bidi-font-size:10.0pt;} @page WordSection1 {size:612.0pt 792.0pt; margin:2.0cm 42.5pt 2.0cm 3.0cm; mso-header-margin:36.0pt; mso-footer-margin:36.0pt; mso-paper-source:0;} div.WordSection1 {page:WordSection1;} -->\nВ нашем магазине есть возможность заказа мебели по индивидуальным размерам.\nВсе представленные модели диванов, а также некоторые модели корпусной мебели Вы можете заказать в нужном размере и цветовой гамме.\n \nИзготовление мебели производиться в срок до 3-х недель.\n \nОформить заказ Вы можете в нашем магазине, по телефону или на сайте.</pre>\n<!-- /wp:preformatted -->', 'Мебель под заказ', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-07-07 14:29:49', '2020-07-07 11:29:49', '', 29, 'http://crystalmebel/2020/07/07/29-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2020-07-07 14:31:07', '2020-07-07 11:31:07', '<!-- wp:categories /-->\n\n<!-- wp:paragraph {\"customFontSize\":18} -->\n<p style=\"font-size:18px\">\nВ нашем магазине есть возможность заказа мебели по индивидуальным размерам.\nВсе представленные модели диванов, а также некоторые модели корпусной мебели Вы можете заказать в нужном размере и цветовой гамме.\n \nИзготовление мебели производиться в срок до 3-х недель.\n \nОформить заказ Вы можете в нашем магазине, по телефону или на сайте.</p>\n<!-- /wp:paragraph -->', 'Мебель под заказ', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-07-07 14:31:07', '2020-07-07 11:31:07', '', 29, 'http://crystalmebel/2020/07/07/29-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2020-07-07 14:32:04', '2020-07-07 11:32:04', '<!-- wp:categories /-->\n\n<!-- wp:paragraph {\"customFontSize\":17} -->\n<p style=\"font-size:17px\">      В нашем магазине есть возможность заказа мебели по индивидуальным размерам. Все представленные модели диванов, а также некоторые модели корпусной мебели Вы можете заказать в нужном размере и цветовой гамме.  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"customFontSize\":17} -->\n<p style=\"font-size:17px\">Изготовление мебели производиться в срок до 3-х недель.   Оформить заказ Вы можете в нашем магазине, по телефону или на сайте.</p>\n<!-- /wp:paragraph -->', 'Мебель под заказ', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-07-07 14:32:04', '2020-07-07 11:32:04', '', 29, 'http://crystalmebel/2020/07/07/29-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2020-07-07 14:33:30', '2020-07-07 11:33:30', '<!-- wp:categories /-->\n\n<!-- wp:paragraph {\"customFontSize\":17} -->\n<p style=\"font-size:17px\"><code>   &lt;h1>fffff&lt;/h1>  </code>В нашем магазине есть возможность заказа мебели по индивидуальным размерам. Все представленные модели диванов, а также некоторые модели корпусной мебели Вы можете заказать в нужном размере и цветовой гамме.  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"customFontSize\":17} -->\n<p style=\"font-size:17px\">Изготовление мебели производиться в срок до 3-х недель.   Оформить заказ Вы можете в нашем магазине, по телефону или на сайте.</p>\n<!-- /wp:paragraph -->', 'Мебель под заказ', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-07-07 14:33:30', '2020-07-07 11:33:30', '', 29, 'http://crystalmebel/2020/07/07/29-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2020-07-07 14:34:14', '2020-07-07 11:34:14', '<!-- wp:categories /-->\n\n<!-- wp:paragraph {\"customFontSize\":17} -->\n<p style=\"font-size:17px\"><code>    </code>В нашем магазине есть возможность заказа мебели по индивидуальным размерам. Все представленные модели диванов, а также некоторые модели корпусной мебели Вы можете заказать в нужном размере и цветовой гамме.  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"customFontSize\":17} -->\n<p style=\"font-size:17px\">Изготовление мебели производиться в срок до 3-х недель.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"customFontSize\":17} -->\n<p style=\"font-size:17px\">Оформить заказ Вы можете в нашем магазине, по телефону или на сайте.</p>\n<!-- /wp:paragraph -->', 'Мебель под заказ', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-07-07 14:34:14', '2020-07-07 11:34:14', '', 29, 'http://crystalmebel/2020/07/07/29-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2020-07-07 14:35:50', '2020-07-07 11:35:50', '<!-- wp:paragraph {\"customFontSize\":17} -->\n<p style=\"font-size:17px\"><code>    </code>В нашем магазине есть возможность заказа мебели по индивидуальным размерам. Все представленные модели диванов, а также некоторые модели корпусной мебели Вы можете заказать в нужном размере и цветовой гамме. &nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"customFontSize\":17} -->\n<p style=\"font-size:17px\">Изготовление мебели производиться в срок до 3-х недель.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"customFontSize\":17} -->\n<p style=\"font-size:17px\">Оформить заказ Вы можете в нашем магазине, по телефону или на сайте.</p>\n<!-- /wp:paragraph -->', 'Мебель под заказ', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-07-07 14:35:50', '2020-07-07 11:35:50', '', 29, 'http://crystalmebel/2020/07/07/29-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2020-07-07 14:45:15', '2020-07-07 11:45:15', '<!-- wp:paragraph {\"customFontSize\":17} -->\n<p style=\"font-size:17px\"><code>    </code>В нашем магазине есть возможность заказа мебели по индивидуальным размерам. Все представленные модели диванов, а также некоторые модели корпусной мебели Вы можете заказать в нужном размере и цветовой гамме. &nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"customFontSize\":17} -->\n<p style=\"font-size:17px\">Изготовление мебели производиться в срок до 3-х недель.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"customFontSize\":17} -->\n<p style=\"font-size:17px\">Оформить заказ Вы можете в нашем магазине, по телефону или на сайте.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Порядок заказа мебели по индивидуальным размерам или с заменой ткани:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>Выбирайте по фото в нашем каталоге понравившуюся модель мебели;</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:list {\"ordered\":true,\"type\":\"1\"} -->\n<ol type=\"1\"><li>Во вкладке «ткани» выбирайте цвет и тип ткани (для мягкой мебели);</li><li>Определитесь с нужными Вам габаритами мебели;</li><li>Сохраните выбранные названия в корзину или сделайте скрин экрана, запишите названия ткани и модели мебели;</li><li>Звоните нам или приезжайте в салон и после предоплаты производство начнет изготовление Вашей мебели.</li></ol>\n<!-- /wp:list -->', 'Мебель под заказ', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-07-07 14:45:15', '2020-07-07 11:45:15', '', 29, 'http://crystalmebel/2020/07/07/29-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2020-07-07 14:46:18', '2020-07-07 11:46:18', '<!-- wp:paragraph {\"fontSize\":\"normal\"} -->\n<p class=\"has-normal-font-size\"><code>    </code>В нашем магазине есть возможность заказа мебели по индивидуальным размерам. Все представленные модели диванов, а также некоторые модели корпусной мебели Вы можете заказать в нужном размере и цветовой гамме. &nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"normal\"} -->\n<p class=\"has-normal-font-size\">Изготовление мебели производиться в срок до 3-х недель.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"normal\"} -->\n<p class=\"has-normal-font-size\">Оформить заказ Вы можете в нашем магазине, по телефону или на сайте.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Порядок заказа мебели по индивидуальным размерам или с заменой ткани:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>Выбирайте по фото в нашем каталоге понравившуюся модель мебели;</li><li>Во вкладке «ткани» выбирайте цвет и тип ткани (для мягкой мебели);</li><li>Определитесь с нужными Вам габаритами мебели;</li><li>Сохраните выбранные названия в корзину или сделайте скрин экрана, запишите названия ткани и модели мебели;</li><li>Звоните нам или приезжайте в салон и после предоплаты производство начнет изготовление Вашей мебели.</li></ol>\n<!-- /wp:list -->', 'Мебель под заказ', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-07-07 14:46:18', '2020-07-07 11:46:18', '', 29, 'http://crystalmebel/2020/07/07/29-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(75, 1, '2020-07-07 14:46:42', '2020-07-07 11:46:42', '<!-- wp:paragraph {\"customFontSize\":15} -->\n<p style=\"font-size:15px\"><code>    </code>В нашем магазине есть возможность заказа мебели по индивидуальным размерам. Все представленные модели диванов, а также некоторые модели корпусной мебели Вы можете заказать в нужном размере и цветовой гамме. &nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"customFontSize\":15} -->\n<p style=\"font-size:15px\">Изготовление мебели производиться в срок до 3-х недель.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"customFontSize\":15} -->\n<p style=\"font-size:15px\">Оформить заказ Вы можете в нашем магазине, по телефону или на сайте.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Порядок заказа мебели по индивидуальным размерам или с заменой ткани:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>Выбирайте по фото в нашем каталоге понравившуюся модель мебели;</li><li>Во вкладке «ткани» выбирайте цвет и тип ткани (для мягкой мебели);</li><li>Определитесь с нужными Вам габаритами мебели;</li><li>Сохраните выбранные названия в корзину или сделайте скрин экрана, запишите названия ткани и модели мебели;</li><li>Звоните нам или приезжайте в салон и после предоплаты производство начнет изготовление Вашей мебели.</li></ol>\n<!-- /wp:list -->', 'Мебель под заказ', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-07-07 14:46:42', '2020-07-07 11:46:42', '', 29, 'http://crystalmebel/2020/07/07/29-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2020-07-07 14:50:19', '2020-07-07 11:50:19', '<!-- wp:paragraph -->\n<p>Доставка мягкой и корпусной мебели в черте города Запорожья производиться бесплатно.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>По городу Запорожье доставка готового изделия с салона-магазина производиться в день покупки или в срок, оговоренный с заказчиком.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Доставка по Украине возможна перевозчиками Деливери, Новая почта или попутным транспортом по тарифам перевозчика. Все логистические услуги мы возьмем на себя.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Мы не отправим Вам товар до тех пор, пока не назовем примерную стоимость доставки нужного Вам товара.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Возможен самовывоз мебели с нашего магазина.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>При отправке товара по Украине любым перевозчиком, мы упаковываем мебель в стрейч пленку.</p>\n<!-- /wp:paragraph -->', 'Доставка', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2020-07-07 14:50:19', '2020-07-07 11:50:19', '', 33, 'http://crystalmebel/2020/07/07/33-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2020-07-07 15:04:56', '2020-07-07 12:04:56', '<!-- wp:paragraph -->\n<p>     В нашем мебельном магазине Вы можете воспользоваться рассрочкой от Приват банка</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>    Данное предложение действует только для посетителей нашего магазина, так как рассрочка оформляется через терминал.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>    «<strong>Мгновенная рассрочка» </strong>- это новая возможность, предоставляемая клиентам ПрибатБанка, и позволяющая совершать крупные покупки в магазинах с наибольшей выгодой для себя. Воспользовавшись этой услугой, можно оплатить покупку не полностью и сразу, а разбить сумму на части, и выплатить её постепенно, внося ежемесячные регулярные платежи. То есть, проще говоря, - оплачивая покупку по частям.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>    Сервисом может воспользоваться каждый клиент ПриватБанка, являющийся владельцем любой из нижеперечисленных кредитных карт:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>«Универсальной»,</li><li>«Универсальной Gold»,</li><li>либо же одной из элитных карт для VIP-клиентов банка (Platinum, Infinite, World Signia/Elite).</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>     Максимальное количество частей, на которые можно разделить общую сумму покупки - 24. Это значит, что теперь есть возможность расплатиться за, например, кровать, в течении 2-х лет со дня совершения покупки, оплачивая комиссию в размере 2,9% от стоимости товара ежемесячно.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Как воспользоваться услугой:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:list {\"ordered\":true,\"type\":\"1\"} -->\n<ol type=\"1\"><li>Узнать сумму своего допустимого лимита по данному сервису. Для этого нужно отправить смс-сообщение на номер 10060 с текстом chast.</li><li>Выбрать мебель, которую хочется купить, даже если на неё сейчас не хватает денег.</li><li><strong>В мебельном магазине </strong><strong>Кристалл</strong>&nbsp;сказать продавцу, что выбранная мебель будет оплачена частями по программе \"Мгновенная рассрочка\", и предъявить карту ПриватБанка.</li><li>Сообщить удобное количество платежей и сделать покупку, оплатив первую её часть.</li><li>Теперь можно ожидать доставку купленной мебели домой и каждый месяц с карты оплачивать часть её стоимости с учетом комиссии за использование программы рассрочки.</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>     Если вы хотите купить все ту же кровать стоимостью 6000 грн. в рассрочку и вы планируете за 2 года выплатить его стоимость полностью.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>     Значит, нужно сумму разделить на 25 (24 регулярных платежа + 1 взнос в день покупки). Получается, что каждый месяц нужно будет выплачивать всего по 240 грн в течении 2-х лет, при этом пользуясь мебелью, если оплата происходит с собственных средств.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>      Если же оплата будет свершаться с помощью кредитных средств, то нужно будет платить в месяц +4% от суммы платежа.</p>\n<!-- /wp:paragraph -->', 'Рассрочка', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2020-07-07 15:04:56', '2020-07-07 12:04:56', '', 31, 'http://crystalmebel/2020/07/07/31-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2020-07-07 15:11:37', '2020-07-07 12:11:37', '<!-- wp:paragraph -->\n<p>     В нашем мебельном магазине Вы можете воспользоваться рассрочкой от Приват банка</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>    Данное предложение действует только для посетителей нашего магазина, так как рассрочка оформляется через терминал.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>    «<strong>Мгновенная рассрочка» </strong>- это новая возможность, предоставляемая клиентам ПрибатБанка, и позволяющая совершать крупные покупки в магазинах с наибольшей выгодой для себя. Воспользовавшись этой услугой, можно оплатить покупку не полностью и сразу, а разбить сумму на части, и выплатить её постепенно, внося ежемесячные регулярные платежи. То есть, проще говоря, - оплачивая покупку по частям.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>    Сервисом может воспользоваться каждый клиент ПриватБанка, являющийся владельцем любой из нижеперечисленных кредитных карт:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>«Универсальной»,</li><li>«Универсальной Gold»,</li><li>либо же одной из элитных карт для VIP-клиентов банка (Platinum, Infinite, World Signia/Elite).</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>     Максимальное количество частей, на которые можно разделить общую сумму покупки - 24. Это значит, что теперь есть возможность расплатиться за, например,&nbsp;кровать, в течении 2-х лет со дня совершения покупки, оплачивая комиссию в размере 2,9% от стоимости товара ежемесячно.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Как воспользоваться услугой:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:list {\"ordered\":true,\"type\":\"1\"} -->\n<ol type=\"1\"><li>Узнать сумму своего допустимого лимита по данному сервису. Для этого нужно отправить смс-сообщение на номер 10060 с текстом chast.</li><li>Выбрать мебель, которую хочется купить, даже если на неё сейчас не хватает денег.</li><li><strong>В мебельном магазине </strong><strong>Кристалл</strong>&nbsp;сказать продавцу, что выбранная мебель будет оплачена частями по программе \"Мгновенная рассрочка\", и предъявить карту ПриватБанка.</li><li>Сообщить удобное количество платежей и сделать покупку, оплатив первую её часть.</li><li>Теперь можно ожидать доставку купленной мебели домой и каждый месяц с карты оплачивать часть её стоимости с учетом комиссии за использование программы рассрочки.</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>     Если вы хотите купить все ту же кровать стоимостью 6000 грн. в рассрочку&nbsp;и вы планируете за 2 года выплатить его стоимость полностью.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>     Значит, нужно сумму разделить на 25 (24 регулярных платежа + 1 взнос в день покупки). Получается, что каждый месяц нужно будет выплачивать всего по 240 грн в течении 2-х лет, при этом пользуясь мебелью, если оплата происходит с собственных средств.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>      Если же оплата будет свершаться с помощью кредитных средств, то нужно будет платить в месяц +4% от суммы платежа.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Преимущества сервиса \"Мгновенная рассрочка\":</h3>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>покупка оформляется быстро, сразу на кассе;</li><li>минимальная комиссия;</li><li>отсутствие необходимости заполнять какие-то документы.</li></ul>\n<!-- /wp:list -->', 'Рассрочка', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2020-07-07 15:11:37', '2020-07-07 12:11:37', '', 31, 'http://crystalmebel/2020/07/07/31-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2020-07-07 15:21:44', '2020-07-07 12:21:44', '<!-- wp:paragraph -->\n<p>В нашем мебельном магазине возможен любой удобный для Вас способ оплаты:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>наличными;</li><li>через терминал картой любого банка;</li><li>перевод на карту через мобильный банк;</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Все расходы по переводу средств мы берем на себя.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Если Вы заказали мебель, находясь у нас в магазине, предоплата не требуется.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Если Вы решили сделать онлайн заказ или по телефону, перед отправкой товара необходима предоплата в размере 50% от стоимости товара. Если товар приехал без повреждений, в срок, оговоренный при заказе и Вы по личным причинам отказываетесь&nbsp; принимать товар, с предоплаты взымается стоимость разгрузочно-погрузочных работ. Остаток средств возвращается заказчику на карту или наличными.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Если Вы заказываете мебель по индивидуальным размерам и/или с заменой ткани, требуется предоплата в размере 100% от стоимости товара. Если заказанный Вами товар поврежден или не соответствует нужным размерам, типу или цвету ткани, предоплата возвращается в полном размере на карту заказчика или наличными.</p>\n<!-- /wp:paragraph -->', 'Оплата', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-07-07 15:21:44', '2020-07-07 12:21:44', '', 36, 'http://crystalmebel/2020/07/07/36-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2020-07-07 15:22:04', '2020-07-07 12:22:04', '<!-- wp:paragraph -->\n<p>В нашем мебельном магазине возможен любой удобный для Вас способ оплаты:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>наличными;</li><li>через терминал картой любого банка;</li><li>перевод на карту через мобильный банк;</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Все расходы по переводу средств мы берем на себя.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Если Вы заказали мебель, находясь у нас в магазине, предоплата не требуется.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Если Вы решили сделать онлайн заказ или по телефону, перед отправкой товара необходима предоплата в размере 50% от стоимости товара.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Если товар приехал без повреждений, в срок, оговоренный при заказе и Вы по личным причинам отказываетесь  принимать товар, с предоплаты взымается стоимость разгрузочно-погрузочных работ. Остаток средств возвращается заказчику на карту или наличными.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Если Вы заказываете мебель по индивидуальным размерам и/или с заменой ткани, требуется предоплата в размере 100% от стоимости товара. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Если заказанный Вами товар поврежден или не соответствует нужным размерам, типу или цвету ткани, предоплата возвращается в полном размере на карту заказчика или наличными.</p>\n<!-- /wp:paragraph -->', 'Оплата', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-07-07 15:22:04', '2020-07-07 12:22:04', '', 36, 'http://crystalmebel/2020/07/07/36-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2020-07-07 15:27:07', '2020-07-07 12:27:07', '<!-- wp:paragraph -->\n<p>На весь ассортимент мягкой мебели действует гарантия сроком 12 месяцев (для покупателей в городе Запорожье). Гарантии для покупателей других городов действуют до момента забора товара.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Гарантия на корпусную мебель действует до момента забора товара заказчиком.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Условия гарантии на мягкую мебель:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>Гарантия действительна только при наличии гарантийного свидетельства с датой продажи, подписи продавца и покупателя.</li><li>Гарантийному обслуживанию подлежит только та мебель, которая имеет неисправность по вине мебельной фабрики.</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Во избежание серьезных повреждений мебели в процессе эксплуатации запрещается:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>садиться на спинки;</li><li>садиться на боковины (на быльца диванов и кресел);</li><li>класть и кидать на мягкие части мебели громоздкие предметы с острыми углами;</li><li>избегать приложения резких динамичных нагрузок к сиденьям (нормативная динамичная нагрузка к одноместной мебели 0-100 кг, многоместной 120-220 кг.)</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Гарантия не распростроняется:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:list {\"ordered\":true,\"type\":\"1\"} -->\n<ol type=\"1\"><li>Любое повреждение при транспортировке самовывозом.</li><li>,Повреждения, вызванные неправильным, грубым или небрежным обращением.</li><li>Неправильная эксплуатация раскладного механизма (приложенные сверх усилия при складывании/раскладывании мебели)</li><li>Естественное (в процессе использования) изнашивание тканевых, кожаных покрытий и механизмов.</li><li>Повреждения, вызванные пожаром или иными стихийными бедствиями.</li><li>Повреждения, вызванные неправильными:</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Сборкой, ремонтом или наладкой, выполненными неуполномоченными мастерами магазина.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Все дефекты, возникшие по вине завода-производителя на протяжении гарантийного срока, устраняются заводом-изготовителем бесплатно. Гарантия не распространяется на изделие в отношении которого нарушаются правила эксплуатации транспортировки, а также на изделие с признаками ремонта силами покупателя.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Все недостающие части для сборки, заявленные в комплекте мебели, доставляются магазином заказчику на адрес бесплатно.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Возврат товара возможен в срок до 14 дней от момента совершения покупки при условии сохранности товара в надлежащем, рабочем виде, наличии товарного чека о покупке.</p>\n<!-- /wp:paragraph -->', 'Гарантии и возврат', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2020-07-07 15:27:07', '2020-07-07 12:27:07', '', 38, 'http://crystalmebel/2020/07/07/38-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2020-07-07 15:28:27', '2020-07-07 12:28:27', '<!-- wp:paragraph -->\n<p>На весь ассортимент мягкой мебели действует гарантия сроком 12 месяцев (для покупателей в городе Запорожье). Гарантии для покупателей других городов действуют до момента забора товара.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Гарантия на корпусную мебель действует до момента забора товара заказчиком.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Условия гарантии на мягкую мебель:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>Гарантия действительна только при наличии гарантийного свидетельства с датой продажи, подписи продавца и покупателя.</li><li>Гарантийному обслуживанию подлежит только та мебель, которая имеет неисправность по вине мебельной фабрики.</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Во избежание серьезных повреждений мебели в процессе эксплуатации запрещается:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>садиться на спинки;</li><li>садиться на боковины (на быльца диванов и кресел);</li><li>класть и кидать на мягкие части мебели громоздкие предметы с острыми углами;</li><li>избегать приложения резких динамичных нагрузок к сиденьям (нормативная динамичная нагрузка к одноместной мебели 0-100 кг, многоместной 120-220 кг.)</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Гарантия не распростроняется:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:list {\"ordered\":true,\"type\":\"1\"} -->\n<ol type=\"1\"><li>Любое повреждение при транспортировке самовывозом.</li><li>,Повреждения, вызванные неправильным, грубым или небрежным обращением.</li><li>Неправильная эксплуатация раскладного механизма (приложенные сверх усилия при складывании/раскладывании мебели)</li><li>Естественное (в процессе использования) изнашивание тканевых, кожаных покрытий и механизмов.</li><li>Повреждения, вызванные пожаром или иными стихийными бедствиями.</li><li>Повреждения, вызванные неправильными:</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Сборкой, ремонтом или наладкой, выполненными неуполномоченными мастерами магазина.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Все дефекты, возникшие по вине завода-производителя на протяжении гарантийного срока, устраняются заводом-изготовителем бесплатно. Гарантия не распространяется на изделие в отношении которого нарушаются правила эксплуатации транспортировки, а также на изделие с признаками ремонта силами покупателя.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Все недостающие части для сборки, заявленные в комплекте мебели, доставляются магазином заказчику на адрес бесплатно.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Возврат товара возможен в срок до 14 дней от момента совершения покупки при условии сохранности товара в надлежащем, рабочем виде, наличии товарного чека о покупке.</p>\n<!-- /wp:paragraph -->', 'Гарантии и возврат', '', 'inherit', 'closed', 'closed', '', '38-autosave-v1', '', '', '2020-07-07 15:28:27', '2020-07-07 12:28:27', '', 38, 'http://crystalmebel/2020/07/07/38-autosave-v1/', 0, 'revision', '', 0),
(85, 1, '2020-07-07 15:28:44', '2020-07-07 12:28:44', '<!-- wp:paragraph -->\n<p>Г. Запорожье, ул. Автострадная 109</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Частный сектор по трассе Харьков-Симферополь.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>К нам не ездит общественный транспорт, но мы с радостью доставим Вас в магазин своим служебным транспортом от ближайших остановок улицы Восточной, что на Космосе или от улицы Молочной, что в р-не Шевченковского. Просто позвоните нам и предупредите о своем визите, и мы в срок прибудем за Вами.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Адрес магазина', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2020-07-07 15:28:44', '2020-07-07 12:28:44', '', 42, 'http://crystalmebel/2020/07/07/42-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2020-07-07 15:38:28', '2020-07-07 12:38:28', '{\n    \"blogname\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-07 12:38:28\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '71353d36-41a0-47b5-abc7-28331f18d0e1', '', '', '2020-07-07 15:38:28', '2020-07-07 12:38:28', '', 0, 'http://crystalmebel/2020/07/07/71353d36-41a0-47b5-abc7-28331f18d0e1/', 0, 'customize_changeset', '', 0),
(87, 1, '2020-07-07 15:52:35', '2020-07-07 12:52:35', '<!-- wp:paragraph -->\n<p>     В нашем мебельном магазине Вы можете воспользоваться рассрочкой от Приват банка</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>    Данное предложение действует только для посетителей нашего магазина, так как рассрочка оформляется через терминал.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>    «<strong>Мгновенная рассрочка» </strong>- это новая возможность, предоставляемая клиентам ПрибатБанка, и позволяющая совершать крупные покупки в магазинах с наибольшей выгодой для себя. Воспользовавшись этой услугой, можно оплатить покупку не полностью и сразу, а разбить сумму на части, и выплатить её постепенно, внося ежемесячные регулярные платежи. То есть, проще говоря, - оплачивая покупку по частям.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>    Сервисом может воспользоваться каждый клиент ПриватБанка, являющийся владельцем любой из нижеперечисленных кредитных карт:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>«Универсальной»,</li><li>«Универсальной Gold»,</li><li>либо же одной из элитных карт для VIP-клиентов банка (Platinum, Infinite, World Signia/Elite).</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>     Максимальное количество частей, на которые можно разделить общую сумму покупки - 24. Это значит, что теперь есть возможность расплатиться за, например,&nbsp;кровать, в течении 2-х лет со дня совершения покупки, оплачивая комиссию в размере 2,9% от стоимости товара ежемесячно.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Как воспользоваться услугой:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:list {\"ordered\":true,\"type\":\"1\"} -->\n<ol type=\"1\"><li>Узнать сумму своего допустимого лимита по данному сервису. Для этого нужно отправить смс-сообщение на номер 10060 с текстом chast.</li><li>Выбрать мебель, которую хочется купить, даже если на неё сейчас не хватает денег.</li><li><strong>В мебельном магазине МодаМебель</strong>сказать продавцу, что выбранная мебель будет оплачена частями по программе \"Мгновенная рассрочка\", и предъявить карту ПриватБанка.</li><li>Сообщить удобное количество платежей и сделать покупку, оплатив первую её часть.</li><li>Теперь можно ожидать доставку купленной мебели домой и каждый месяц с карты оплачивать часть её стоимости с учетом комиссии за использование программы рассрочки.</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>     Если вы хотите купить все ту же кровать стоимостью 6000 грн. в рассрочку&nbsp;и вы планируете за 2 года выплатить его стоимость полностью.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>     Значит, нужно сумму разделить на 25 (24 регулярных платежа + 1 взнос в день покупки). Получается, что каждый месяц нужно будет выплачивать всего по 240 грн в течении 2-х лет, при этом пользуясь мебелью, если оплата происходит с собственных средств.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>      Если же оплата будет свершаться с помощью кредитных средств, то нужно будет платить в месяц +4% от суммы платежа.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Преимущества сервиса \"Мгновенная рассрочка\":</h3>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>покупка оформляется быстро, сразу на кассе;</li><li>минимальная комиссия;</li><li>отсутствие необходимости заполнять какие-то документы.</li></ul>\n<!-- /wp:list -->', 'Рассрочка', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2020-07-07 15:52:35', '2020-07-07 12:52:35', '', 31, 'http://crystalmebel/2020/07/07/31-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2020-07-07 15:53:00', '2020-07-07 12:53:00', '<!-- wp:paragraph -->\n<p>     В нашем мебельном магазине Вы можете воспользоваться рассрочкой от Приват банка</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>    Данное предложение действует только для посетителей нашего магазина, так как рассрочка оформляется через терминал.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>    «<strong>Мгновенная рассрочка» </strong>- это новая возможность, предоставляемая клиентам ПрибатБанка, и позволяющая совершать крупные покупки в магазинах с наибольшей выгодой для себя. Воспользовавшись этой услугой, можно оплатить покупку не полностью и сразу, а разбить сумму на части, и выплатить её постепенно, внося ежемесячные регулярные платежи. То есть, проще говоря, - оплачивая покупку по частям.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>    Сервисом может воспользоваться каждый клиент ПриватБанка, являющийся владельцем любой из нижеперечисленных кредитных карт:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>«Универсальной»,</li><li>«Универсальной Gold»,</li><li>либо же одной из элитных карт для VIP-клиентов банка (Platinum, Infinite, World Signia/Elite).</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>     Максимальное количество частей, на которые можно разделить общую сумму покупки - 24. Это значит, что теперь есть возможность расплатиться за, например,&nbsp;кровать, в течении 2-х лет со дня совершения покупки, оплачивая комиссию в размере 2,9% от стоимости товара ежемесячно.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Как воспользоваться услугой:</h3>\n<!-- /wp:heading -->\n\n<!-- wp:list {\"ordered\":true,\"type\":\"1\"} -->\n<ol type=\"1\"><li>Узнать сумму своего допустимого лимита по данному сервису. Для этого нужно отправить смс-сообщение на номер 10060 с текстом chast.</li><li>Выбрать мебель, которую хочется купить, даже если на неё сейчас не хватает денег.</li><li><strong>В мебельном магазине МодаМебель </strong>сказать продавцу, что выбранная мебель будет оплачена частями по программе \"Мгновенная рассрочка\", и предъявить карту ПриватБанка.</li><li>Сообщить удобное количество платежей и сделать покупку, оплатив первую её часть.</li><li>Теперь можно ожидать доставку купленной мебели домой и каждый месяц с карты оплачивать часть её стоимости с учетом комиссии за использование программы рассрочки.</li></ol>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>     Если вы хотите купить все ту же кровать стоимостью 6000 грн. в рассрочку&nbsp;и вы планируете за 2 года выплатить его стоимость полностью.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>     Значит, нужно сумму разделить на 25 (24 регулярных платежа + 1 взнос в день покупки). Получается, что каждый месяц нужно будет выплачивать всего по 240 грн в течении 2-х лет, при этом пользуясь мебелью, если оплата происходит с собственных средств.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>      Если же оплата будет свершаться с помощью кредитных средств, то нужно будет платить в месяц +4% от суммы платежа.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Преимущества сервиса \"Мгновенная рассрочка\":</h3>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>покупка оформляется быстро, сразу на кассе;</li><li>минимальная комиссия;</li><li>отсутствие необходимости заполнять какие-то документы.</li></ul>\n<!-- /wp:list -->', 'Рассрочка', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2020-07-07 15:53:00', '2020-07-07 12:53:00', '', 31, 'http://crystalmebel/2020/07/07/31-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2020-07-09 19:01:56', '2020-07-09 16:01:56', '', 'dgwt_wcas_search_box', '', 'publish', 'closed', 'closed', '', 'dgwt_wcas_search_box', '', '', '2020-07-09 19:01:56', '2020-07-09 16:01:56', '', 0, 'http://crystalmebel/?p=90', 1, 'nav_menu_item', '', 0),
(91, 1, '2020-07-09 19:45:15', '2020-07-09 16:45:15', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"text-3\",\n            \"woocommerce_recently_viewed_products-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-09 16:45:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8e32f4a6-b59a-46da-bb8f-9905d393fd97', '', '', '2020-07-09 19:45:15', '2020-07-09 16:45:15', '', 0, 'http://crystalmebel/2020/07/09/8e32f4a6-b59a-46da-bb8f-9905d393fd97/', 0, 'customize_changeset', '', 0),
(92, 1, '2020-07-09 21:08:12', '2020-07-09 18:08:12', '<!-- wp:paragraph -->\n<p>Г. Запорожье, ул. Автострадная 109</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Частный сектор по трассе Харьков-Симферополь.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d10719.02468920123!2d35.23507733475115!3d47.80556210955243!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40dc5c23d0f79905%3A0xcddfd3ef2385ca10!2z0JDQstGC0L7RgdGC0YDQsNC00L3QsNGPINGD0LsuLCAxMDksINCX0LDQv9C-0YDQvtC20YzQtSwg0JfQsNC_0L7RgNC-0LbRgdC60LDRjyDQvtCx0LvQsNGB0YLRjCwgNjkwMDA!5e0!3m2!1sru!2sua!4v1594317901994!5m2!1sru!2sua\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>К нам не ездит общественный транспорт, но мы с радостью доставим Вас в магазин своим служебным транспортом от ближайших остановок улицы Восточной, что на Космосе или от улицы Молочной, что в р-не Шевченковского. Просто позвоните нам и предупредите о своем визите, и мы в срок прибудем за Вами.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Адрес магазина', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2020-07-09 21:08:12', '2020-07-09 18:08:12', '', 42, 'http://crystalmebel/2020/07/09/42-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2020-07-09 21:19:01', '2020-07-09 18:19:01', '{\n    \"sidebars_widgets[footer-1]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-09 18:19:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c512d784-0d2a-48c0-9766-51ac40c28452', '', '', '2020-07-09 21:19:01', '2020-07-09 18:19:01', '', 0, 'http://crystalmebel/2020/07/09/c512d784-0d2a-48c0-9766-51ac40c28452/', 0, 'customize_changeset', '', 0),
(94, 1, '2020-07-09 21:43:49', '2020-07-09 18:43:49', '<!-- wp:paragraph -->\n<p>Вы можете нам позвонить</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>+380668856790</p>\n<!-- /wp:paragraph -->', 'Контакты', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-07-09 21:43:49', '2020-07-09 18:43:49', '', 40, 'http://crystalmebel/2020/07/09/40-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2020-07-09 21:45:40', '0000-00-00 00:00:00', '', 'phone', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-07-09 21:45:40', '0000-00-00 00:00:00', '', 0, 'http://crystalmebel/?p=95', 1, 'nav_menu_item', '', 0),
(97, 1, '2020-07-09 21:49:48', '2020-07-09 18:49:48', '<!-- wp:paragraph -->\n<p>Вы можете нам позвонить</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><code>&lt;!--This link will work on Android </code><code>and</code><code>iPhone. It will be visible to desktop users but will result in an error when clicked --&gt;</code><code>&lt;\na href=</code><code>\"tel:+380668856790\"</code><code>&gt;+38 (066) 885-6790&lt;/a&gt;</code><code>&lt;\na href=</code><code>\"tel:380668856790\"</code><code>&gt;Call Me&lt;/a&gt;</code></p>\n<!-- /wp:paragraph -->', 'Контакты', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-07-09 21:49:48', '2020-07-09 18:49:48', '', 40, 'http://crystalmebel/2020/07/09/40-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2020-07-09 21:50:24', '2020-07-09 18:50:24', '<!-- wp:paragraph -->\n<p>Вы можете нам позвонить</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<p><code>&lt;!--This link will work on Android </code><code>and</code><code>iPhone. It will be visible to desktop users but will result in an error when clicked --&gt;</code><code>&lt;\na href=</code><code>\"tel:+380668856790\"</code><code>&gt;+38 (066) 885-6790&lt;/a&gt;</code><code>&lt;\na href=</code><code>\"tel:380668856790\"</code><code>&gt;Call Me&lt;/a&gt;</code></p>\n\n<!-- /wp:html -->', 'Контакты', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-07-09 21:50:24', '2020-07-09 18:50:24', '', 40, 'http://crystalmebel/2020/07/09/40-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2020-07-09 21:58:39', '2020-07-09 18:58:39', '<!-- wp:paragraph -->\n<p>Вы можете нам позвонить</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html /-->', 'Контакты', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-07-09 21:58:39', '2020-07-09 18:58:39', '', 40, 'http://crystalmebel/2020/07/09/40-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2020-07-09 22:02:52', '2020-07-09 19:02:52', '{\n    \"clean-commerce::nav_menu_locations[social]\": {\n        \"value\": -4307706408019228700,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-09 19:02:52\"\n    },\n    \"nav_menu[-4307706408019228700]\": {\n        \"value\": {\n            \"name\": \"\\u0421\\u043e\\u0446 \\u0441\\u0435\\u0442\\u0438\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-09 19:02:52\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4a29a5bb-81b2-4440-b4e8-9be72ab28144', '', '', '2020-07-09 22:02:52', '2020-07-09 19:02:52', '', 0, 'http://crystalmebel/2020/07/09/4a29a5bb-81b2-4440-b4e8-9be72ab28144/', 0, 'customize_changeset', '', 0),
(101, 1, '2020-07-09 22:10:07', '2020-07-09 19:10:07', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2020-07-09 22:10:07', '2020-07-09 19:10:07', '', 0, 'http://crystalmebel/?p=101', 1, 'nav_menu_item', '', 0),
(103, 1, '2020-07-09 22:23:20', '2020-07-09 19:23:20', '<!-- wp:html -->\n<div id=\"tophead\">\n			<div class=\"container\">\n				<div id=\"quick-contact\">\n					<ul>\n													<li class=\"quick-call\">\n								<a href=\"tel:380668856790\">380668856790</a>\n							</li>\n																	</ul>\n				</div> <!-- #quick-contact -->\n\n									<div class=\"header-social-wrapper\">\n						<div class=\"widget clean_commerce_widget_social\"><ul id=\"menu-%d0%bc%d0%b5%d0%bd%d1%8e-%d1%81%d0%be%d1%86%d0%b8%d0%b0%d0%bb%d1%8c%d0%bd%d1%8b%d1%85-%d1%81%d1%81%d1%8b%d0%bb%d0%be%d0%ba\" class=\"menu\">\n<li id=\"menu-item-29\" class=\"menu-item menu-item-type-custom menu-item-object-custom menu-item-29\"><a href=\"https://www.instagram.com/kravchenko5609/\"><span class=\"screen-reader-text\">Instagram</span></a></li>\n<li id=\"menu-item-30\" class=\"menu-item menu-item-type-custom menu-item-object-custom menu-item-30\"><a href=\"mailto:wordpress@example.com\"><span class=\"screen-reader-text\">Email</span></a></li>\n</ul></div>					</div><!-- .header-social-wrapper -->\n				\n			</div> <!-- .container -->\n		</div>\n<!-- /wp:html -->', 'Контакты', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-07-09 22:23:20', '2020-07-09 19:23:20', '', 40, 'http://crystalmebel/2020/07/09/40-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2020-07-09 22:29:12', '2020-07-09 19:29:12', '<!-- wp:html -->\n<div id=\"tophead\">\n			<div class=\"container\">\n				<div id=\"quick-contact\">\n					<ul>\n													<li class=\"quick-call\">\n	<p> Вы можете нам позвонить</p>							<a href=\"tel:380668856790\">380668856790</a>\n							</li>\n																	</ul>\n				</div> <!-- #quick-contact -->\n\n									\n				\n			</div> <!-- .container -->\n		</div>\n<!-- /wp:html -->', 'Контакты', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-07-09 22:29:12', '2020-07-09 19:29:12', '', 40, 'http://crystalmebel/2020/07/09/40-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2020-07-09 22:29:46', '2020-07-09 19:29:46', '<!-- wp:html -->\n<div id=\"tophead\">\n			<div class=\"container\">\n				<div id=\"quick-contact\">\n					<ul>\n	<p> Вы можете нам позвонить</p>													<li class=\"quick-call\">\n							<a href=\"tel:380668856790\">380668856790</a>\n							</li>\n																	</ul>\n				</div> <!-- #quick-contact -->\n\n									\n				\n			</div> <!-- .container -->\n		</div>\n<!-- /wp:html -->', 'Контакты', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-07-09 22:29:46', '2020-07-09 19:29:46', '', 40, 'http://crystalmebel/2020/07/09/40-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2020-07-09 22:30:59', '2020-07-09 19:30:59', '<!-- wp:html -->\n<div id=\"tophead\">\n	<div class=\"container\">\n		<div id=\"quick-contact\">\n			<ul>\n<p> Вы можете нам позвонить</p>													<li class=\"quick-call\">\n<a href=\"tel:380668856790\">380668856790</a>\n</li>																	</ul>\n</div> <!-- #quick-contact -->\n\n									\n				\n			</div> <!-- .container -->\n		</div>\n<!-- /wp:html -->', 'Контакты', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-07-09 22:30:59', '2020-07-09 19:30:59', '', 40, 'http://crystalmebel/2020/07/09/40-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2020-07-09 22:34:45', '2020-07-09 19:34:45', '<!-- wp:html -->\n<div id=\"tophead\">\n	<div class=\"container\">\n		<div id=\"quick-contact\">\n			<ul>\n<p> Вы можете нам позвонить</p>													<li class=\"quick-call\">\n<button><a href=\"tel:380668856790\">380668856790</a></button>\n\n</li>																	</ul>\n</div> <!-- #quick-contact -->\n\n									\n				\n			</div> <!-- .container -->\n		</div>\n<!-- /wp:html -->', 'Контакты', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-07-09 22:34:45', '2020-07-09 19:34:45', '', 40, 'http://crystalmebel/2020/07/09/40-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2020-07-09 22:40:50', '2020-07-09 19:40:50', '<!-- wp:html -->\n<div id=\"tophead\">\n	<div class=\"container\">\n		<div id=\"quick-contact\">\n			<ul>\n<p> Вы можете нам позвонить</p>													<li class=\"quick-call\">\n<button><a href=\"tel:380668856790\">380668856790</a></button>\n</li>	\n<li class=\"quick-call\">\n<button><a href=\"tel:380960551617\">+380960551617</a></button>\n</li>																</ul>\n</div> <!-- #quick-contact -->\n\n									\n				\n			</div> <!-- .container -->\n		</div>\n<!-- /wp:html -->', 'Контакты', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-07-09 22:40:50', '2020-07-09 19:40:50', '', 40, 'http://crystalmebel/2020/07/09/40-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2020-07-09 22:57:02', '2020-07-09 19:57:02', '<!-- wp:paragraph -->\n<p>Вы можете нам позвонить</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html -->\n<div id=\"tophead\">\n	<div class=\"container\">\n		<div id=\"quick-contact\">\n			<ul>\n												<li class=\"quick-call\">\n<button><a href=\"tel:380668856790\">380668856790</a></button>\n</li>	\n<li class=\"quick-call\">\n<button><a href=\"tel:380960551617\">+380960551617</a></button>\n</li>																</ul>\n</div> <!-- #quick-contact -->\n\n									\n				\n			</div> <!-- .container -->\n		</div>\n<!-- /wp:html -->', 'Контакты', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-07-09 22:57:02', '2020-07-09 19:57:02', '', 40, 'http://crystalmebel/2020/07/09/40-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 17, 'order', '0'),
(2, 17, 'display_type', ''),
(3, 17, 'thumbnail_id', '0'),
(4, 18, 'order', '0'),
(5, 18, 'display_type', ''),
(6, 18, 'thumbnail_id', '0'),
(7, 19, 'order', '0'),
(8, 19, 'display_type', ''),
(9, 19, 'thumbnail_id', '0'),
(10, 20, 'order', '0'),
(11, 20, 'display_type', ''),
(12, 20, 'thumbnail_id', '0'),
(13, 21, 'order', '0'),
(14, 21, 'display_type', ''),
(15, 21, 'thumbnail_id', '0'),
(16, 22, 'order', '0'),
(17, 22, 'display_type', ''),
(18, 22, 'thumbnail_id', '0'),
(19, 23, 'order', '0'),
(20, 23, 'display_type', ''),
(21, 23, 'thumbnail_id', '0'),
(22, 24, 'order', '0'),
(23, 24, 'display_type', ''),
(24, 24, 'thumbnail_id', '0'),
(25, 25, 'order', '0'),
(26, 25, 'display_type', ''),
(27, 25, 'thumbnail_id', '0'),
(28, 26, 'order', '0'),
(29, 26, 'display_type', ''),
(30, 26, 'thumbnail_id', '0'),
(31, 27, 'order', '0'),
(32, 27, 'display_type', ''),
(33, 27, 'thumbnail_id', '0'),
(34, 28, 'order', '0'),
(35, 28, 'display_type', ''),
(36, 28, 'thumbnail_id', '0'),
(37, 29, 'order', '0'),
(38, 29, 'display_type', ''),
(39, 29, 'thumbnail_id', '0'),
(40, 30, 'order', '0'),
(41, 30, 'display_type', ''),
(42, 30, 'thumbnail_id', '0'),
(43, 31, 'order', '0'),
(44, 31, 'display_type', ''),
(45, 31, 'thumbnail_id', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без категорії', '%d0%b1%d0%b5%d0%b7-%d0%ba%d0%b0%d1%82%d0%b5%d0%b3%d0%be%d1%80%d1%96%d1%97', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(16, 'Crystal mebel menu', 'crystal-mebel-menu', 0),
(17, 'Диваны', 'divany', 0),
(18, 'Прямые диваны', 'pryamyye-divany', 0),
(19, 'Диваны для ежедневного сна', 'divany-dlya-yezhednevnogo-sna', 0),
(20, 'Угловые диваны', 'uglovyye-divany', 0),
(21, 'Компактные диваны', 'kompaktnyye-divany', 0),
(22, 'Детские диваны', 'detskiye-divany', 0),
(23, 'Комплекты мягкой мебели', 'komplekty-myagkoy-mebeli', 0),
(24, 'Кровати', 'krovati', 0),
(25, 'Кресла, пуфы, стулья', 'kresla-pufy-stulya', 0),
(26, 'Стеллажи, этажерки', 'stellazhi-etazherki', 0),
(27, 'Столы', 'stoly', 0),
(28, 'Тумбы', 'tumby', 0),
(29, 'Полки', 'polki', 0),
(30, 'Зеркала', 'zerkala', 0),
(31, 'Прочее', 'procheye', 0),
(32, 'Поиск', '%d0%bf%d0%be%d0%b8%d1%81%d0%ba', 0),
(33, 'Соц сети', '%d1%81%d0%be%d1%86-%d1%81%d0%b5%d1%82%d0%b8', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(44, 16, 0),
(45, 16, 0),
(46, 16, 0),
(47, 16, 0),
(48, 16, 0),
(49, 16, 0),
(50, 16, 0),
(51, 16, 0),
(90, 32, 0),
(101, 33, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'product_type', '', 0, 0),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'nav_menu', '', 0, 8),
(17, 17, 'product_cat', '', 0, 0),
(18, 18, 'product_cat', '', 17, 0),
(19, 19, 'product_cat', '', 17, 0),
(20, 20, 'product_cat', '', 17, 0),
(21, 21, 'product_cat', '', 17, 0),
(22, 22, 'product_cat', '', 17, 0),
(23, 23, 'product_cat', '', 17, 0),
(24, 24, 'product_cat', '', 0, 0),
(25, 25, 'product_cat', '', 0, 0),
(26, 26, 'product_cat', '', 0, 0),
(27, 27, 'product_cat', '', 0, 0),
(28, 28, 'product_cat', '', 0, 0),
(29, 29, 'product_cat', '', 0, 0),
(30, 30, 'product_cat', '', 0, 0),
(31, 31, 'product_cat', '', 0, 0),
(32, 32, 'nav_menu', '', 0, 1),
(33, 33, 'nav_menu', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'modamebel'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', 'ru_RU'),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'text_widget_custom_html'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"85686dfe82b9ff7b504a40d52fa68cdd0802d5183368da9b4c04379b102ebc5f\";a:4:{s:10:\"expiration\";i:1595227448;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36\";s:5:\"login\";i:1594017848;}s:64:\"2bc8e633b1811230dbdc8739cb870cbe3f0c893e0dbc08d9ab6df8e74b082648\";a:4:{s:10:\"expiration\";i:1595245376;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:133:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36 OPR/67.0.3575.137\";s:5:\"login\";i:1594035776;}s:64:\"4500a20bc3ef3ef046d1853982b5e1ba9939b61783e03e34d6a4d973374d0474\";a:4:{s:10:\"expiration\";i:1594905063;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36\";s:5:\"login\";i:1594732263;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, '_woocommerce_tracks_anon_id', 'woo:apNbCMgnyTeYQnjmvED4fnrq'),
(20, 1, 'wc_last_active', '1594684800'),
(21, 1, 'edit_page_per_page', '21'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:11:\"css-classes\";i:3;s:3:\"xfn\";i:4;s:11:\"description\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-product_cat\";i:3;s:15:\"add-product_tag\";}'),
(24, 1, '_order_count', '0'),
(25, 1, 'nav_menu_recently_edited', '33'),
(26, 1, 'jetpack_tracks_anon_id', 'jetpack:LI22wvn8x68ddsFO5oUeUICf'),
(27, 1, 'billing_first_name', ''),
(28, 1, 'billing_last_name', ''),
(29, 1, 'billing_company', ''),
(30, 1, 'billing_address_1', ''),
(31, 1, 'billing_address_2', ''),
(32, 1, 'billing_city', ''),
(33, 1, 'billing_postcode', ''),
(34, 1, 'billing_country', ''),
(35, 1, 'billing_state', ''),
(36, 1, 'billing_phone', ''),
(37, 1, 'billing_email', '0960551617m@gmail.com'),
(38, 1, 'shipping_first_name', ''),
(39, 1, 'shipping_last_name', ''),
(40, 1, 'shipping_company', ''),
(41, 1, 'shipping_address_1', ''),
(42, 1, 'shipping_address_2', ''),
(43, 1, 'shipping_city', ''),
(44, 1, 'shipping_postcode', ''),
(45, 1, 'shipping_country', ''),
(46, 1, 'shipping_state', ''),
(47, 1, 'last_update', '1594126842'),
(48, 1, 'wp_user-settings', 'editor=tinymce'),
(49, 1, 'wp_user-settings-time', '1594319066');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'crystalmebel', '$P$BVvxLALRriDtc6Fx2/Ju/vj3uNKteM/', 'crystalmebel', '0960551617m@gmail.com', 'http://crystalmebel', '2020-07-06 06:43:42', '', 0, 'modamebel');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_admin_notes`
--

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `icon` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_520_ci,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_wc_admin_notes`
--

INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `icon`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`) VALUES
(1, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Подключиться к WooCommerce.com', 'Подключайтесь, чтобы получать важные уведомления о продукте и обновления.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-07-06 11:44:57', NULL, 0),
(2, 'wc-admin-onboarding-email-marketing', 'info', 'en_US', 'Советы, обновления продуктов и новые идеи', 'Мы готовы вам помочь — получайте советы, новости о продуктах и вдохновляющие идеи прямо на почту.', 'mail', '{}', 'unactioned', 'woocommerce-admin', '2020-07-06 11:45:11', NULL, 0),
(3, 'wc-admin-marketing-intro', 'info', 'en_US', 'Найдите свою аудиторию', 'Расширяйте базу заказчиков и увеличивайте продажи с помощью маркетинговых инструментов для WooCommerce.', 'speaker', '{}', 'unactioned', 'woocommerce-admin', '2020-07-06 11:45:11', NULL, 0),
(4, 'wc-admin-onboarding-profiler-reminder', 'update', 'en_US', 'Добро пожаловать в WooCommerce! Настройте свой магазин и начните продавать', 'Мы поможем вам пройти самые важные этапы, чтобы ваш магазин заработал.', 'info', '{}', 'actioned', 'woocommerce-admin', '2020-07-06 05:45:13', NULL, 0),
(5, 'wc-admin-mobile-app', 'info', 'en_US', 'Установите мобильное приложение Woo', 'Установите мобильное приложение WooCommerce для управления заказами, получения уведомлений о продажах и просмотра ключевых показателей — где бы вы ни находились.', 'phone', '{}', 'unactioned', 'woocommerce-admin', '2020-07-09 15:53:57', NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_admin_note_actions`
--

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_wc_admin_note_actions`
--

INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`) VALUES
(1, 1, 'connect', 'Подключить', '?page=wc-addons&section=helper', 'unactioned', 0),
(2, 2, 'yes-please', 'Да, пожалуйста!', 'https://woocommerce.us8.list-manage.com/subscribe/post?u=2c1434dc56f9506bf3c3ecd21&amp;id=13860df971&amp;SIGNUPPAGE=plugin', 'actioned', 0),
(3, 3, 'open-marketing-hub', 'Открыть маркетинговый центр', 'http://crystalmebel/wp-admin/admin.php?page=wc-admin&path=/marketing', 'actioned', 0),
(4, 4, 'continue-profiler', 'Продолжить настройку магазина', 'http://crystalmebel/wp-admin/admin.php?page=wc-admin&enable_onboarding=1', 'unactioned', 1),
(5, 4, 'skip-profiler', 'Пропустить установку', 'http://crystalmebel/wp-admin/admin.php?page=wc-admin&reset_profiler=0', 'actioned', 0),
(6, 5, 'learn-more', 'Узнать больше', 'https://woocommerce.com/mobile/', 'actioned', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_category_lookup`
--

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_wc_category_lookup`
--

INSERT INTO `wp_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(15, 15);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_customer_lookup`
--

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_order_coupon_lookup`
--

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_order_product_lookup`
--

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT '0',
  `product_gross_revenue` double NOT NULL DEFAULT '0',
  `coupon_amount` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `shipping_amount` double NOT NULL DEFAULT '0',
  `shipping_tax_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_order_stats`
--

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT '0',
  `total_sales` double NOT NULL DEFAULT '0',
  `tax_total` double NOT NULL DEFAULT '0',
  `shipping_total` double NOT NULL DEFAULT '0',
  `net_total` double NOT NULL DEFAULT '0',
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_order_tax_lookup`
--

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT '0',
  `order_tax` double NOT NULL DEFAULT '0',
  `total_tax` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0',
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Пониженная ставка', '%d0%bf%d0%be%d0%bd%d0%b8%d0%b6%d0%b5%d0%bd%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d0%b0%d0%b2%d0%ba%d0%b0'),
(2, 'Нулевая ставка', '%d0%bd%d1%83%d0%bb%d0%b5%d0%b2%d0%b0%d1%8f-%d1%81%d1%82%d0%b0%d0%b2%d0%ba%d0%b0');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Украина новая почта', 0),
(2, 'Украина новая почта', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'UA', 'country'),
(2, 2, 'UA', 'country');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Индексы таблицы `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Индексы таблицы `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Индексы таблицы `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Индексы таблицы `wp_create_map`
--
ALTER TABLE `wp_create_map`
  ADD PRIMARY KEY (`map_id`);

--
-- Индексы таблицы `wp_group_map`
--
ALTER TABLE `wp_group_map`
  ADD PRIMARY KEY (`group_map_id`);

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_map_locations`
--
ALTER TABLE `wp_map_locations`
  ADD PRIMARY KEY (`location_id`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Индексы таблицы `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Индексы таблицы `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Индексы таблицы `wp_wc_category_lookup`
--
ALTER TABLE `wp_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Индексы таблицы `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Индексы таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Индексы таблицы `wp_wc_order_coupon_lookup`
--
ALTER TABLE `wp_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Индексы таблицы `wp_wc_order_product_lookup`
--
ALTER TABLE `wp_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Индексы таблицы `wp_wc_order_stats`
--
ALTER TABLE `wp_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Индексы таблицы `wp_wc_order_tax_lookup`
--
ALTER TABLE `wp_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Индексы таблицы `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Индексы таблицы `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Индексы таблицы `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Индексы таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Индексы таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Индексы таблицы `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Индексы таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Индексы таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Индексы таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_create_map`
--
ALTER TABLE `wp_create_map`
  MODIFY `map_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_group_map`
--
ALTER TABLE `wp_group_map`
  MODIFY `group_map_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_map_locations`
--
ALTER TABLE `wp_map_locations`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1777;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
