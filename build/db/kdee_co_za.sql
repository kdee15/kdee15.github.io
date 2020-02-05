-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 05, 2020 at 12:25 PM
-- Server version: 5.7.29-0ubuntu0.16.04.1
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kdee_co_za`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-05-27 07:18:31', '2019-05-27 07:18:31', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://staging.kdee.co.za/kdee.co.za/', 'yes'),
(2, 'home', 'http://staging.kdee.co.za/kdee.co.za/', 'yes'),
(3, 'blogname', 'kdee.co.za', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'kdee15@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:23:"gutenberg/gutenberg.php";i:2;s:41:"navz-photo-gallery/navz-photo-gallery.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'kdee', 'yes'),
(41, 'stylesheet', 'kdee', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:14:"social_sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"instagram";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(102, 'cron', 'a:6:{i:1580901511;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1580930311;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1580973511;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1580973529;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1580973531;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'nonce_key', 'U(lu!JfrN=k3!qZ%|SADExLEH>CW^$NstSCi=lH*ur_m<[${<RB:DeAL6qj8f  G', 'no'),
(110, 'nonce_salt', '-AB/?MJiW1j-7S[C(5Fo8l|-,o+t5pxQD4Sc)qN9xdKk_`nfOu=6ZuJV^&Q]~xyX', 'no'),
(111, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentynineteen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1558942355;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(122, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1580894242;s:7:"checked";a:5:{s:4:"kdee";s:0:"";s:14:"twentynineteen";s:3:"1.4";s:15:"twentyseventeen";s:3:"2.2";s:13:"twentysixteen";s:3:"2.0";s:12:"twentytwenty";s:3:"1.1";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(123, 'auth_key', '>)(qa<YhcE)NA.lNVBSaPG~$(RyU?Ww&?4ig_d|$k:A$>P2`W*X/+z13Pok~tEZ%', 'no'),
(124, 'auth_salt', 'R< V>fWR6BuM7:~<xhVj)^m#1h}-!S`i{e~6B|xbSJwHQZ;O<uMgvgng.?hL}__C', 'no'),
(125, 'logged_in_key', 'Rr5OH-velBuzF/.3)QYOQ6wtGBNuXt~d`mu/{#d{3fo;;I ..<RsGze^6;P2r-ay', 'no'),
(126, 'logged_in_salt', '8g#(?0EnypT4nRU%(dvRp1k#J(`T{|{7eWY%Lq=k=H/V)9Z};O}mwYSu5Sp,*Exi', 'no'),
(149, 'recently_activated', 'a:0:{}', 'yes'),
(154, 'acf_version', '5.8.7', 'yes'),
(155, 'current_theme', '', 'yes'),
(156, 'theme_mods_kdee', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(157, 'theme_switched', '', 'yes'),
(234, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:16:"kdee15@gmail.com";s:7:"version";s:5:"5.2.5";s:9:"timestamp";i:1579092185;}', 'no'),
(270, 'recovery_mode_email_last_sent', '1579183770', 'yes'),
(272, 'category_children', 'a:0:{}', 'yes'),
(398, 'admin_email_lifespan', '1595248058', 'yes'),
(399, 'db_upgraded', '', 'yes'),
(403, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.3.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.3.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.3.2";s:7:"version";s:5:"5.3.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.3";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1580894238;s:15:"version_checked";s:5:"5.3.2";s:12:"translations";a:0:{}}', 'no'),
(404, 'can_compress_scripts', '0', 'no'),
(480, '_site_transient_timeout_browser_da344fee744522623884cb6d69611127', '1581365287', 'no'),
(481, '_site_transient_browser_da344fee744522623884cb6d69611127', 'a:10:{s:4:"name";s:7:"Firefox";s:7:"version";s:4:"72.0";s:8:"platform";s:9:"Macintosh";s:10:"update_url";s:24:"https://www.firefox.com/";s:7:"img_src";s:44:"http://s.w.org/images/browsers/firefox.png?1";s:11:"img_src_ssl";s:45:"https://s.w.org/images/browsers/firefox.png?1";s:15:"current_version";s:2:"56";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(482, '_site_transient_timeout_php_check_12edeb5890095749089987982a1404ce', '1581365288', 'no'),
(483, '_site_transient_php_check_12edeb5890095749089987982a1404ce', 'a:5:{s:19:"recommended_version";s:3:"7.3";s:15:"minimum_version";s:6:"5.6.20";s:12:"is_supported";b:1;s:9:"is_secure";b:1;s:13:"is_acceptable";b:1;}', 'no'),
(499, '_site_transient_timeout_theme_roots', '1580896040', 'no'),
(500, '_site_transient_theme_roots', 'a:5:{s:4:"kdee";s:7:"/themes";s:14:"twentynineteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";s:12:"twentytwenty";s:7:"/themes";}', 'no'),
(501, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1580894244;s:7:"checked";a:7:{s:41:"navz-photo-gallery/navz-photo-gallery.php";s:5:"1.6.5";s:30:"advanced-custom-fields/acf.php";s:5:"5.8.7";s:19:"akismet/akismet.php";s:5:"4.1.3";s:23:"gutenberg/gutenberg.php";s:5:"7.2.0";s:21:"hello-dolly/hello.php";s:5:"1.7.2";s:9:"hello.php";s:5:"1.7.2";s:24:"wp-all-import/plugin.php";s:5:"3.5.2";}s:8:"response";a:1:{s:23:"gutenberg/gutenberg.php";O:8:"stdClass":12:{s:2:"id";s:23:"w.org/plugins/gutenberg";s:4:"slug";s:9:"gutenberg";s:6:"plugin";s:23:"gutenberg/gutenberg.php";s:11:"new_version";s:5:"7.3.0";s:3:"url";s:40:"https://wordpress.org/plugins/gutenberg/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/gutenberg.7.3.0.zip";s:5:"icons";a:2:{s:2:"2x";s:62:"https://ps.w.org/gutenberg/assets/icon-256x256.jpg?rev=1776042";s:2:"1x";s:62:"https://ps.w.org/gutenberg/assets/icon-128x128.jpg?rev=1776042";}s:7:"banners";a:2:{s:2:"2x";s:65:"https://ps.w.org/gutenberg/assets/banner-1544x500.jpg?rev=1718710";s:2:"1x";s:64:"https://ps.w.org/gutenberg/assets/banner-772x250.jpg?rev=1718710";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.3.2";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:6:{s:41:"navz-photo-gallery/navz-photo-gallery.php";O:8:"stdClass":9:{s:2:"id";s:32:"w.org/plugins/navz-photo-gallery";s:4:"slug";s:18:"navz-photo-gallery";s:6:"plugin";s:41:"navz-photo-gallery/navz-photo-gallery.php";s:11:"new_version";s:5:"1.6.5";s:3:"url";s:49:"https://wordpress.org/plugins/navz-photo-gallery/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/navz-photo-gallery.1.6.5.zip";s:5:"icons";a:1:{s:2:"1x";s:71:"https://ps.w.org/navz-photo-gallery/assets/icon-128x128.png?rev=1561241";}s:7:"banners";a:1:{s:2:"1x";s:73:"https://ps.w.org/navz-photo-gallery/assets/banner-772x250.png?rev=1561242";}s:11:"banners_rtl";a:0:{}}s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"5.8.7";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.7.zip";s:5:"icons";a:2:{s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";}s:7:"banners";a:2:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";}s:11:"banners_rtl";a:0:{}}s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.1.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:21:"hello-dolly/hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:21:"hello-dolly/hello.php";s:11:"new_version";s:5:"1.7.2";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855";s:2:"1x";s:64:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855";}s:7:"banners";a:1:{s:2:"1x";s:66:"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:5:"1.7.2";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855";s:2:"1x";s:64:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855";}s:7:"banners";a:1:{s:2:"1x";s:66:"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855";}s:11:"banners_rtl";a:0:{}}s:24:"wp-all-import/plugin.php";O:8:"stdClass":9:{s:2:"id";s:27:"w.org/plugins/wp-all-import";s:4:"slug";s:13:"wp-all-import";s:6:"plugin";s:24:"wp-all-import/plugin.php";s:11:"new_version";s:5:"3.5.2";s:3:"url";s:44:"https://wordpress.org/plugins/wp-all-import/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/wp-all-import.3.5.2.zip";s:5:"icons";a:2:{s:2:"2x";s:66:"https://ps.w.org/wp-all-import/assets/icon-256x256.png?rev=1181068";s:2:"1x";s:66:"https://ps.w.org/wp-all-import/assets/icon-128x128.png?rev=1181068";}s:7:"banners";a:1:{s:2:"1x";s:67:"https://ps.w.org/wp-all-import/assets/banner-772x250.png?rev=735306";}s:11:"banners_rtl";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 8, '_edit_last', '1'),
(4, 8, '_edit_lock', '1579547972:1'),
(5, 15, '_wp_attached_file', '2020/01/Screenshot-2019-02-27-at-23.11.46.png'),
(6, 15, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2784;s:6:"height";i:1704;s:4:"file";s:45:"2020/01/Screenshot-2019-02-27-at-23.11.46.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-02-27-at-23.11.46-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-02-27-at-23.11.46-300x184.png";s:5:"width";i:300;s:6:"height";i:184;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2019-02-27-at-23.11.46-768x470.png";s:5:"width";i:768;s:6:"height";i:470;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-27-at-23.11.46-1024x627.png";s:5:"width";i:1024;s:6:"height";i:627;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(7, 16, '_wp_attached_file', '2020/01/Screenshot-2019-02-27-at-23.12.16.png'),
(8, 16, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2784;s:6:"height";i:1704;s:4:"file";s:45:"2020/01/Screenshot-2019-02-27-at-23.12.16.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-02-27-at-23.12.16-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-02-27-at-23.12.16-300x184.png";s:5:"width";i:300;s:6:"height";i:184;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2019-02-27-at-23.12.16-768x470.png";s:5:"width";i:768;s:6:"height";i:470;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-27-at-23.12.16-1024x627.png";s:5:"width";i:1024;s:6:"height";i:627;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(9, 17, '_wp_attached_file', '2020/01/Screenshot-2019-02-27-at-23.12.50.png'),
(10, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2784;s:6:"height";i:1704;s:4:"file";s:45:"2020/01/Screenshot-2019-02-27-at-23.12.50.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-02-27-at-23.12.50-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-02-27-at-23.12.50-300x184.png";s:5:"width";i:300;s:6:"height";i:184;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2019-02-27-at-23.12.50-768x470.png";s:5:"width";i:768;s:6:"height";i:470;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-27-at-23.12.50-1024x627.png";s:5:"width";i:1024;s:6:"height";i:627;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(11, 18, '_wp_attached_file', '2020/01/Screenshot-2019-02-27-at-23.14.56.png'),
(12, 18, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2784;s:6:"height";i:1704;s:4:"file";s:45:"2020/01/Screenshot-2019-02-27-at-23.14.56.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-02-27-at-23.14.56-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-02-27-at-23.14.56-300x184.png";s:5:"width";i:300;s:6:"height";i:184;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2019-02-27-at-23.14.56-768x470.png";s:5:"width";i:768;s:6:"height";i:470;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-27-at-23.14.56-1024x627.png";s:5:"width";i:1024;s:6:"height";i:627;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(13, 19, '_wp_attached_file', '2020/01/Screenshot-2019-02-27-at-23.17.39.png'),
(14, 19, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:932;s:6:"height";i:1626;s:4:"file";s:45:"2020/01/Screenshot-2019-02-27-at-23.17.39.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-02-27-at-23.17.39-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-02-27-at-23.17.39-172x300.png";s:5:"width";i:172;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-27-at-23.17.39-768x1340.png";s:5:"width";i:768;s:6:"height";i:1340;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-27-at-23.17.39-587x1024.png";s:5:"width";i:587;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(15, 20, '_wp_attached_file', '2020/01/Screenshot-2019-02-27-at-23.18.08.png'),
(16, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:932;s:6:"height";i:1626;s:4:"file";s:45:"2020/01/Screenshot-2019-02-27-at-23.18.08.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-02-27-at-23.18.08-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-02-27-at-23.18.08-172x300.png";s:5:"width";i:172;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-27-at-23.18.08-768x1340.png";s:5:"width";i:768;s:6:"height";i:1340;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-27-at-23.18.08-587x1024.png";s:5:"width";i:587;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(17, 21, '_wp_attached_file', '2020/01/Screenshot-2019-02-27-at-23.18.57.png'),
(18, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:932;s:6:"height";i:1626;s:4:"file";s:45:"2020/01/Screenshot-2019-02-27-at-23.18.57.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-02-27-at-23.18.57-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-02-27-at-23.18.57-172x300.png";s:5:"width";i:172;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-27-at-23.18.57-768x1340.png";s:5:"width";i:768;s:6:"height";i:1340;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-27-at-23.18.57-587x1024.png";s:5:"width";i:587;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(19, 22, '_wp_attached_file', '2020/01/Screenshot-2019-02-27-at-23.19.42.png'),
(20, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:932;s:6:"height";i:1626;s:4:"file";s:45:"2020/01/Screenshot-2019-02-27-at-23.19.42.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-02-27-at-23.19.42-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-02-27-at-23.19.42-172x300.png";s:5:"width";i:172;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-27-at-23.19.42-768x1340.png";s:5:"width";i:768;s:6:"height";i:1340;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-27-at-23.19.42-587x1024.png";s:5:"width";i:587;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(21, 23, '_wp_attached_file', '2020/01/Screenshot-2019-02-27-at-23.19.58.png'),
(22, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:932;s:6:"height";i:1626;s:4:"file";s:45:"2020/01/Screenshot-2019-02-27-at-23.19.58.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-02-27-at-23.19.58-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-02-27-at-23.19.58-172x300.png";s:5:"width";i:172;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-27-at-23.19.58-768x1340.png";s:5:"width";i:768;s:6:"height";i:1340;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-27-at-23.19.58-587x1024.png";s:5:"width";i:587;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(23, 24, '_wp_attached_file', '2020/01/Screenshot-2019-02-27-at-23.21.09.png'),
(24, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:932;s:6:"height";i:1626;s:4:"file";s:45:"2020/01/Screenshot-2019-02-27-at-23.21.09.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-02-27-at-23.21.09-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-02-27-at-23.21.09-172x300.png";s:5:"width";i:172;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-27-at-23.21.09-768x1340.png";s:5:"width";i:768;s:6:"height";i:1340;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-27-at-23.21.09-587x1024.png";s:5:"width";i:587;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(25, 14, '_edit_last', '1'),
(26, 14, '_edit_lock', '1579805172:1'),
(27, 14, 'start_date', 'January 2008'),
(28, 14, '_start_date', 'field_5e203b22c64ac'),
(29, 14, 'end_date', 'Present'),
(30, 14, '_end_date', 'field_5e203b36c64ad'),
(31, 14, 'technologies', 'Wordpress, HTML5, CSS, JQuery, Bootrstap 4'),
(32, 14, '_technologies', 'field_5e203b46c64ae'),
(33, 14, 'my_role', '<ul>\r\n 	<li>Frontend design and conceptualisation</li>\r\n 	<li>complete site management</li>\r\n 	<li>HTML/CSS/JQuery implementation</li>\r\n 	<li>Wordpress custom theme development</li>\r\n</ul>'),
(34, 14, '_my_role', 'field_5e203b76c64af'),
(35, 14, 'images', '15,16,17,18,19,20,21,22,23,24'),
(36, 1, '_edit_lock', '1579171373:1'),
(37, 25, '_edit_last', '1'),
(38, 25, '_edit_lock', '1579550333:1'),
(39, 25, 'start_date', 'June 2010'),
(40, 25, '_start_date', 'field_5e203b22c64ac'),
(41, 25, 'end_date', 'January 2011'),
(42, 25, '_end_date', 'field_5e203b36c64ad'),
(43, 25, 'technologies', 'Microsoft MVC (ASP.NET), with HTML frontend'),
(44, 25, '_technologies', 'field_5e203b46c64ae'),
(45, 25, 'my_role', '<ul>\r\n 	<li>Assisted with frontend design and conceptualisation</li>\r\n 	<li>Frontend development &amp; implementation</li>\r\n 	<li>HTML/CSS/JQuery implementation</li>\r\n</ul>'),
(46, 25, '_my_role', 'field_5e203b76c64af'),
(47, 26, '_edit_lock', '1579175458:1'),
(48, 26, '_wp_page_template', 'archive-projects.php'),
(49, 14, '_thumbnail_id', '18'),
(50, 14, 'gallery', '15,16,17,18'),
(51, 14, 'gallery_desk', '50,49,48,47'),
(53, 14, 'cover_desk', '67'),
(54, 14, '_cover_desk', 'field_5e21672a9ef76'),
(55, 14, 'cover_tab', '44'),
(56, 14, '_cover_tab', 'field_5e2167579ef77'),
(57, 14, 'coevr_mob', '19'),
(58, 14, '_coevr_mob', 'field_5e2167889ef78'),
(59, 14, 'cover_mob', '66'),
(60, 14, '_cover_mob', 'field_5e2167889ef78'),
(61, 33, '_wp_attached_file', '2020/01/cover-pic.jpg'),
(62, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2557;s:6:"height";i:1306;s:4:"file";s:21:"2020/01/cover-pic.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"cover-pic-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"cover-pic-300x153.jpg";s:5:"width";i:300;s:6:"height";i:153;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"cover-pic-768x392.jpg";s:5:"width";i:768;s:6:"height";i:392;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"cover-pic-1024x523.jpg";s:5:"width";i:1024;s:6:"height";i:523;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(63, 14, 'show_desk', 'a:1:{i:0;s:4:"show";}'),
(64, 14, '_show_desk', 'field_5e22c92fbe1be'),
(65, 14, 'show_tab', ''),
(66, 14, '_show_tab', 'field_5e22cab36fe80'),
(67, 14, 'show_mob', 'a:1:{i:0;s:4:"show";}'),
(68, 14, '_show_mob', 'field_5e22cac86fe81'),
(69, 14, 'color_1', '#000000'),
(70, 14, '_color_1', 'field_5e2408b533af0'),
(71, 14, 'color_2', '#eeee22'),
(72, 14, '_color_2', 'field_5e2408d133af1'),
(73, 14, 'color_3', '#1e73be'),
(74, 14, '_color_3', 'field_5e2408ec33af2'),
(75, 43, '_wp_attached_file', '2020/01/Screenshot-2020-01-19-at-09.57.25.png'),
(76, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1919;s:6:"height";i:945;s:4:"file";s:45:"2020/01/Screenshot-2020-01-19-at-09.57.25.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-01-19-at-09.57.25-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-01-19-at-09.57.25-300x148.png";s:5:"width";i:300;s:6:"height";i:148;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2020-01-19-at-09.57.25-768x378.png";s:5:"width";i:768;s:6:"height";i:378;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2020-01-19-at-09.57.25-1024x504.png";s:5:"width";i:1024;s:6:"height";i:504;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(77, 44, '_wp_attached_file', '2020/01/cover-tablet.png'),
(78, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:768;s:6:"height";i:1021;s:4:"file";s:24:"2020/01/cover-tablet.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"cover-tablet-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"cover-tablet-226x300.png";s:5:"width";i:226;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:25:"cover-tablet-768x1021.png";s:5:"width";i:768;s:6:"height";i:1021;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(79, 14, '_wp_old_date', '2020-01-16'),
(82, 47, '_wp_attached_file', '2011/01/Screenshot-2020-01-20-at-21.30.35.jpg'),
(83, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2032;s:6:"height";i:1169;s:4:"file";s:45:"2011/01/Screenshot-2020-01-20-at-21.30.35.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-01-20-at-21.30.35-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-01-20-at-21.30.35-300x173.jpg";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2020-01-20-at-21.30.35-768x442.jpg";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2020-01-20-at-21.30.35-1024x589.jpg";s:5:"width";i:1024;s:6:"height";i:589;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(84, 48, '_wp_attached_file', '2011/01/Screenshot-2020-01-20-at-21.31.00.jpg'),
(85, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2032;s:6:"height";i:1169;s:4:"file";s:45:"2011/01/Screenshot-2020-01-20-at-21.31.00.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-01-20-at-21.31.00-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-01-20-at-21.31.00-300x173.jpg";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2020-01-20-at-21.31.00-768x442.jpg";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2020-01-20-at-21.31.00-1024x589.jpg";s:5:"width";i:1024;s:6:"height";i:589;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(86, 49, '_wp_attached_file', '2011/01/Screenshot-2020-01-20-at-21.33.11.jpg'),
(87, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2032;s:6:"height";i:1169;s:4:"file";s:45:"2011/01/Screenshot-2020-01-20-at-21.33.11.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-01-20-at-21.33.11-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-01-20-at-21.33.11-300x173.jpg";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2020-01-20-at-21.33.11-768x442.jpg";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2020-01-20-at-21.33.11-1024x589.jpg";s:5:"width";i:1024;s:6:"height";i:589;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(88, 50, '_wp_attached_file', '2011/01/Screenshot-2020-01-20-at-21.34.53.jpg'),
(89, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2032;s:6:"height";i:1169;s:4:"file";s:45:"2011/01/Screenshot-2020-01-20-at-21.34.53.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-01-20-at-21.34.53-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-01-20-at-21.34.53-300x173.jpg";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2020-01-20-at-21.34.53-768x442.jpg";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2020-01-20-at-21.34.53-1024x589.jpg";s:5:"width";i:1024;s:6:"height";i:589;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(90, 25, '_wp_old_date', '2020-01-16'),
(91, 25, 'color_1', '#c12f30'),
(92, 25, '_color_1', 'field_5e2408b533af0'),
(93, 25, 'color_2', '#c12f30'),
(94, 25, '_color_2', 'field_5e2408d133af1'),
(95, 25, 'color_3', '#c12f30'),
(96, 25, '_color_3', 'field_5e2408ec33af2'),
(97, 25, 'cover_desk', '56'),
(98, 25, '_cover_desk', 'field_5e21672a9ef76'),
(99, 25, 'show_desk', 'a:1:{i:0;s:4:"show";}'),
(100, 25, '_show_desk', 'field_5e22c92fbe1be'),
(101, 25, 'cover_tab', ''),
(102, 25, '_cover_tab', 'field_5e2167579ef77'),
(103, 25, 'show_tab', ''),
(104, 25, '_show_tab', 'field_5e22cab36fe80'),
(105, 25, 'cover_mob', ''),
(106, 25, '_cover_mob', 'field_5e2167889ef78'),
(107, 25, 'show_mob', ''),
(108, 25, '_show_mob', 'field_5e22cac86fe81'),
(109, 14, '_wp_old_date', '2011-01-01'),
(110, 52, '_edit_last', '1'),
(111, 52, '_edit_lock', '1579550154:1'),
(112, 53, '_wp_attached_file', '2020/01/capitec-1.jpg'),
(113, 53, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:833;s:6:"height";i:625;s:4:"file";s:21:"2020/01/capitec-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"capitec-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"capitec-1-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"capitec-1-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(114, 54, '_wp_attached_file', '2020/01/capitec-2.jpg'),
(115, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:833;s:6:"height";i:625;s:4:"file";s:21:"2020/01/capitec-2.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"capitec-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"capitec-2-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"capitec-2-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(116, 52, 'start_date', 'January 2011'),
(117, 52, '_start_date', 'field_5e203b22c64ac'),
(118, 52, 'end_date', 'September 2011'),
(119, 52, '_end_date', 'field_5e203b36c64ad'),
(120, 52, 'color_1', '#1a3a67'),
(121, 52, '_color_1', 'field_5e2408b533af0'),
(122, 52, 'color_2', '#c12f30'),
(123, 52, '_color_2', 'field_5e2408d133af1'),
(124, 52, 'color_3', '#1a3a67'),
(125, 52, '_color_3', 'field_5e2408ec33af2'),
(126, 52, 'technologies', 'Microsoft MVC (ASP.NET), with XAML frontend'),
(127, 52, '_technologies', 'field_5e203b46c64ae'),
(128, 52, 'my_role', '<ul>\r\n 	<li>UI/UX consulting</li>\r\n 	<li>assisted with frontend design &amp; implementation</li>\r\n 	<li>UI Standards Origination &amp; Implementation</li>\r\n 	<li>XAML frontend development</li>\r\n</ul>'),
(129, 52, '_my_role', 'field_5e203b76c64af'),
(130, 52, 'cover_desk', '54'),
(131, 52, '_cover_desk', 'field_5e21672a9ef76'),
(132, 52, 'show_desk', 'a:1:{i:0;s:4:"show";}'),
(133, 52, '_show_desk', 'field_5e22c92fbe1be'),
(134, 52, 'cover_tab', ''),
(135, 52, '_cover_tab', 'field_5e2167579ef77'),
(136, 52, 'show_tab', ''),
(137, 52, '_show_tab', 'field_5e22cab36fe80'),
(138, 52, 'cover_mob', ''),
(139, 52, '_cover_mob', 'field_5e2167889ef78'),
(140, 52, 'show_mob', ''),
(141, 52, '_show_mob', 'field_5e22cac86fe81'),
(142, 52, 'gallery_desk', '54,53'),
(143, 52, '_wp_old_date', '2020-01-20'),
(144, 55, '_wp_attached_file', '2010/06/vlc-1.jpg'),
(145, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:833;s:6:"height";i:625;s:4:"file";s:17:"2010/06/vlc-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"vlc-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"vlc-1-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"vlc-1-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(146, 25, 'gallery_desk', '55'),
(147, 56, '_wp_attached_file', '2010/06/vlc-cover.jpg'),
(148, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:805;s:6:"height";i:510;s:4:"file";s:21:"2010/06/vlc-cover.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"vlc-cover-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"vlc-cover-300x190.jpg";s:5:"width";i:300;s:6:"height";i:190;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"vlc-cover-768x487.jpg";s:5:"width";i:768;s:6:"height";i:487;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1460991560";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(149, 57, '_edit_last', '1'),
(150, 57, '_edit_lock', '1579856225:1'),
(151, 57, 'start_date', 'September 2011'),
(152, 57, '_start_date', 'field_5e203b22c64ac'),
(153, 57, 'end_date', 'September 2012'),
(154, 57, '_end_date', 'field_5e203b36c64ad'),
(155, 57, 'color_1', '#007054'),
(156, 57, '_color_1', 'field_5e2408b533af0'),
(157, 57, 'color_2', '#66a042'),
(158, 57, '_color_2', 'field_5e2408d133af1'),
(159, 57, 'color_3', '#aaaaaa'),
(160, 57, '_color_3', 'field_5e2408ec33af2'),
(161, 57, 'technologies', 'microsoft MVC (ASP.NET), with HTML frontend'),
(162, 57, '_technologies', 'field_5e203b46c64ae'),
(163, 57, 'my_role', '<ul>\r\n 	<li>UI/UX assistance</li>\r\n 	<li>visual conceptualisation consulting</li>\r\n 	<li>lead frontend developer</li>\r\n 	<li>HTML/CSS/JQuery implementation</li>\r\n</ul>'),
(164, 57, '_my_role', 'field_5e203b76c64af'),
(165, 57, 'cover_desk', '60'),
(166, 57, '_cover_desk', 'field_5e21672a9ef76'),
(167, 57, 'show_desk', 'a:1:{i:0;s:4:"show";}'),
(168, 57, '_show_desk', 'field_5e22c92fbe1be'),
(169, 57, 'cover_tab', ''),
(170, 57, '_cover_tab', 'field_5e2167579ef77'),
(171, 57, 'show_tab', ''),
(172, 57, '_show_tab', 'field_5e22cab36fe80'),
(173, 57, 'cover_mob', ''),
(174, 57, '_cover_mob', 'field_5e2167889ef78'),
(175, 57, 'show_mob', ''),
(176, 57, '_show_mob', 'field_5e22cac86fe81'),
(177, 58, '_wp_attached_file', '2020/01/om-1.jpg'),
(178, 58, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:833;s:6:"height";i:625;s:4:"file";s:16:"2020/01/om-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"om-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"om-1-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"om-1-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(179, 59, '_wp_attached_file', '2020/01/om-2.jpg'),
(180, 59, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:833;s:6:"height";i:625;s:4:"file";s:16:"2020/01/om-2.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"om-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"om-2-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"om-2-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(181, 60, '_wp_attached_file', '2020/01/om-cover.jpg'),
(182, 60, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:805;s:6:"height";i:432;s:4:"file";s:20:"2020/01/om-cover.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"om-cover-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"om-cover-300x161.jpg";s:5:"width";i:300;s:6:"height";i:161;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"om-cover-768x412.jpg";s:5:"width";i:768;s:6:"height";i:412;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1460993185";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(183, 57, 'gallery_desk', '59,58'),
(184, 61, '_edit_last', '1'),
(185, 61, '_edit_lock', '1579856471:1'),
(186, 62, '_wp_attached_file', '2020/01/waterfront-1.jpg'),
(187, 62, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:805;s:6:"height";i:433;s:4:"file";s:24:"2020/01/waterfront-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"waterfront-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"waterfront-1-300x161.jpg";s:5:"width";i:300;s:6:"height";i:161;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"waterfront-1-768x413.jpg";s:5:"width";i:768;s:6:"height";i:413;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1460992239";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(188, 63, '_wp_attached_file', '2020/01/waterfront-2.jpg'),
(189, 63, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:833;s:6:"height";i:625;s:4:"file";s:24:"2020/01/waterfront-2.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"waterfront-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"waterfront-2-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"waterfront-2-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(190, 64, '_wp_attached_file', '2020/01/waterfront-cover.jpg'),
(191, 64, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:805;s:6:"height";i:433;s:4:"file";s:28:"2020/01/waterfront-cover.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"waterfront-cover-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"waterfront-cover-300x161.jpg";s:5:"width";i:300;s:6:"height";i:161;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"waterfront-cover-768x413.jpg";s:5:"width";i:768;s:6:"height";i:413;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1460992239";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(192, 61, 'start_date', 'January 2010'),
(193, 61, '_start_date', 'field_5e203b22c64ac'),
(194, 61, 'end_date', 'October 2013'),
(195, 61, '_end_date', 'field_5e203b36c64ad'),
(196, 61, 'color_1', '#f8e43f'),
(197, 61, '_color_1', 'field_5e2408b533af0'),
(198, 61, 'color_2', '#1a3a67'),
(199, 61, '_color_2', 'field_5e2408d133af1'),
(200, 61, 'color_3', '#aaaaaa'),
(201, 61, '_color_3', 'field_5e2408ec33af2'),
(202, 61, 'technologies', 'Sharepoint 2007, HTML(5), CSS, JQuery'),
(203, 61, '_technologies', 'field_5e203b46c64ae'),
(204, 61, 'my_role', '<ul>\r\n 	<li>sharepoint CMS developer</li>\r\n 	<li>Jquery implementation</li>\r\n 	<li>Customised blog masterpages &amp; implemented blogging module</li>\r\n 	<li>Support &amp; maintenance</li>\r\n</ul>'),
(205, 61, '_my_role', 'field_5e203b76c64af'),
(206, 61, 'cover_desk', '64'),
(207, 61, '_cover_desk', 'field_5e21672a9ef76'),
(208, 61, 'show_desk', 'a:1:{i:0;s:4:"show";}'),
(209, 61, '_show_desk', 'field_5e22c92fbe1be'),
(210, 61, 'cover_tab', ''),
(211, 61, '_cover_tab', 'field_5e2167579ef77'),
(212, 61, 'show_tab', ''),
(213, 61, '_show_tab', 'field_5e22cab36fe80'),
(214, 61, 'cover_mob', ''),
(215, 61, '_cover_mob', 'field_5e2167889ef78'),
(216, 61, 'show_mob', ''),
(217, 61, '_show_mob', 'field_5e22cac86fe81'),
(218, 61, 'gallery_desk', '62,63'),
(219, 61, '_wp_old_date', '2020-01-20'),
(220, 66, '_wp_attached_file', '2008/01/cover-mobi.jpg'),
(221, 66, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1242;s:6:"height";i:2208;s:4:"file";s:22:"2008/01/cover-mobi.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:22:"cover-mobi-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"cover-mobi-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:22:"cover-mobi-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"cover-mobi-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:23:"cover-mobi-864x1536.jpg";s:5:"width";i:864;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:24:"cover-mobi-1152x2048.jpg";s:5:"width";i:1152;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(223, 67, '_wp_attached_file', '2008/01/cover-pic.jpg'),
(224, 67, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:21:"2008/01/cover-pic.jpg";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:21:"cover-pic-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"cover-pic-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:21:"cover-pic-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"cover-pic-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:22:"cover-pic-1536x864.jpg";s:5:"width";i:1536;s:6:"height";i:864;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(225, 68, '_wp_attached_file', '2008/01/mobi-1.jpg'),
(226, 68, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1242;s:6:"height";i:2208;s:4:"file";s:18:"2008/01/mobi-1.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:18:"mobi-1-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"mobi-1-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"mobi-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"mobi-1-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:19:"mobi-1-864x1536.jpg";s:5:"width";i:864;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:20:"mobi-1-1152x2048.jpg";s:5:"width";i:1152;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(227, 69, '_wp_attached_file', '2008/01/mobi-2.jpg'),
(228, 69, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1242;s:6:"height";i:2208;s:4:"file";s:18:"2008/01/mobi-2.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:18:"mobi-2-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"mobi-2-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"mobi-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"mobi-2-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:19:"mobi-2-864x1536.jpg";s:5:"width";i:864;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:20:"mobi-2-1152x2048.jpg";s:5:"width";i:1152;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(229, 70, '_wp_attached_file', '2008/01/mobi-3.jpg'),
(230, 70, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1242;s:6:"height";i:2208;s:4:"file";s:18:"2008/01/mobi-3.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:18:"mobi-3-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"mobi-3-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"mobi-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"mobi-3-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:19:"mobi-3-864x1536.jpg";s:5:"width";i:864;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:20:"mobi-3-1152x2048.jpg";s:5:"width";i:1152;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(233, 72, '_wp_attached_file', '2008/01/mobi-5.jpg'),
(234, 72, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1242;s:6:"height";i:2208;s:4:"file";s:18:"2008/01/mobi-5.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:18:"mobi-5-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"mobi-5-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"mobi-5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"mobi-5-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:19:"mobi-5-864x1536.jpg";s:5:"width";i:864;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:20:"mobi-5-1152x2048.jpg";s:5:"width";i:1152;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(235, 73, '_wp_attached_file', '2008/01/mobi-6.jpg'),
(236, 73, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1242;s:6:"height";i:2208;s:4:"file";s:18:"2008/01/mobi-6.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:18:"mobi-6-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"mobi-6-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"mobi-6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"mobi-6-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:19:"mobi-6-864x1536.jpg";s:5:"width";i:864;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:20:"mobi-6-1152x2048.jpg";s:5:"width";i:1152;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(237, 14, 'gallery_mob', '73,74,72,69,70,68'),
(238, 74, '_wp_attached_file', '2008/01/mobi-7.jpg'),
(239, 74, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1242;s:6:"height";i:2208;s:4:"file";s:18:"2008/01/mobi-7.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:18:"mobi-7-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"mobi-7-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"mobi-7-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"mobi-7-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:19:"mobi-7-864x1536.jpg";s:5:"width";i:864;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:20:"mobi-7-1152x2048.jpg";s:5:"width";i:1152;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(240, 75, '_edit_last', '1'),
(241, 75, '_edit_lock', '1579856269:1'),
(242, 75, 'start_date', 'October 2012'),
(243, 75, '_start_date', 'field_5e203b22c64ac'),
(244, 75, 'end_date', 'April 2014'),
(245, 75, '_end_date', 'field_5e203b36c64ad'),
(246, 75, 'color_1', '#7e6f2c'),
(247, 75, '_color_1', 'field_5e2408b533af0'),
(248, 75, 'color_2', '#af2048'),
(249, 75, '_color_2', 'field_5e2408d133af1'),
(250, 75, 'color_3', '#aaaaaa'),
(251, 75, '_color_3', 'field_5e2408ec33af2'),
(252, 75, 'technologies', 'sharepoint 2010, HTML(5), CSS, JQuery'),
(253, 75, '_technologies', 'field_5e203b46c64ae'),
(254, 75, 'my_role', '<ul>\r\n 	<li>UI/UX consulting</li>\r\n 	<li>visual conceptualisation consulting</li>\r\n 	<li>lead sharepoint CMS developer</li>\r\n 	<li>HTML/CSS/JQuery implementation</li>\r\n</ul>'),
(255, 75, '_my_role', 'field_5e203b76c64af'),
(256, 75, 'cover_desk', '76'),
(257, 75, '_cover_desk', 'field_5e21672a9ef76'),
(258, 75, 'show_desk', 'a:1:{i:0;s:4:"show";}'),
(259, 75, '_show_desk', 'field_5e22c92fbe1be'),
(260, 75, 'cover_tab', ''),
(261, 75, '_cover_tab', 'field_5e2167579ef77'),
(262, 75, 'show_tab', ''),
(263, 75, '_show_tab', 'field_5e22cab36fe80'),
(264, 75, 'cover_mob', ''),
(265, 75, '_cover_mob', 'field_5e2167889ef78'),
(266, 75, 'show_mob', ''),
(267, 75, '_show_mob', 'field_5e22cac86fe81'),
(268, 76, '_wp_attached_file', '2020/01/cover-desk.jpg'),
(269, 76, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:22:"2020/01/cover-desk.jpg";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:22:"cover-desk-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"cover-desk-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:22:"cover-desk-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"cover-desk-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:23:"cover-desk-1536x864.jpg";s:5:"width";i:1536;s:6:"height";i:864;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(270, 77, '_wp_attached_file', '2020/01/usbed-1.jpg'),
(271, 77, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:833;s:6:"height";i:625;s:4:"file";s:19:"2020/01/usbed-1.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:19:"usbed-1-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:19:"usbed-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"usbed-1-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(272, 78, '_wp_attached_file', '2020/01/usbed-2.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(273, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:833;s:6:"height";i:625;s:4:"file";s:19:"2020/01/usbed-2.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:19:"usbed-2-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:19:"usbed-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"usbed-2-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(274, 79, '_wp_attached_file', '2020/01/usbed-3.jpg'),
(275, 79, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:833;s:6:"height";i:625;s:4:"file";s:19:"2020/01/usbed-3.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:19:"usbed-3-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:19:"usbed-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"usbed-3-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(276, 80, '_wp_attached_file', '2020/01/usbed-4.jpg'),
(277, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:833;s:6:"height";i:625;s:4:"file";s:19:"2020/01/usbed-4.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:19:"usbed-4-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:19:"usbed-4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"usbed-4-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(278, 75, 'gallery_desk', '80,79,78,77'),
(279, 81, '_edit_last', '1'),
(280, 81, '_edit_lock', '1579856292:1'),
(281, 82, '_wp_attached_file', '2020/01/cover-desk-1.jpg'),
(282, 82, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:24:"2020/01/cover-desk-1.jpg";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:24:"cover-desk-1-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"cover-desk-1-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:24:"cover-desk-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"cover-desk-1-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:25:"cover-desk-1-1536x864.jpg";s:5:"width";i:1536;s:6:"height";i:864;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(283, 83, '_wp_attached_file', '2020/01/usb-1.jpg'),
(284, 83, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:833;s:6:"height";i:625;s:4:"file";s:17:"2020/01/usb-1.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:17:"usb-1-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"usb-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"usb-1-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(285, 84, '_wp_attached_file', '2020/01/usb-2.jpg'),
(286, 84, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:833;s:6:"height";i:625;s:4:"file";s:17:"2020/01/usb-2.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:17:"usb-2-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"usb-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"usb-2-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(287, 85, '_wp_attached_file', '2020/01/usb-3.jpg'),
(288, 85, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:833;s:6:"height";i:625;s:4:"file";s:17:"2020/01/usb-3.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:17:"usb-3-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"usb-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"usb-3-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(289, 81, 'start_date', 'October 2012'),
(290, 81, '_start_date', 'field_5e203b22c64ac'),
(291, 81, 'end_date', 'April 2014'),
(292, 81, '_end_date', 'field_5e203b36c64ad'),
(293, 81, 'color_1', '#af2048'),
(294, 81, '_color_1', 'field_5e2408b533af0'),
(295, 81, 'color_2', '#7e6f2c'),
(296, 81, '_color_2', 'field_5e2408d133af1'),
(297, 81, 'color_3', '#aaaaaa'),
(298, 81, '_color_3', 'field_5e2408ec33af2'),
(299, 81, 'technologies', 'sharepoint 2010, HTML(5), CSS, JQuery'),
(300, 81, '_technologies', 'field_5e203b46c64ae'),
(301, 81, 'my_role', '<ul>\r\n 	<li>UI/UX consulting</li>\r\n 	<li>visual conceptualisation consulting</li>\r\n 	<li>lead sharepoint CMS developer</li>\r\n 	<li>HTML/CSS/JQuery implementation</li>\r\n</ul>'),
(302, 81, '_my_role', 'field_5e203b76c64af'),
(303, 81, 'cover_desk', '82'),
(304, 81, '_cover_desk', 'field_5e21672a9ef76'),
(305, 81, 'show_desk', 'a:1:{i:0;s:4:"show";}'),
(306, 81, '_show_desk', 'field_5e22c92fbe1be'),
(307, 81, 'cover_tab', ''),
(308, 81, '_cover_tab', 'field_5e2167579ef77'),
(309, 81, 'show_tab', ''),
(310, 81, '_show_tab', 'field_5e22cab36fe80'),
(311, 81, 'cover_mob', ''),
(312, 81, '_cover_mob', 'field_5e2167889ef78'),
(313, 81, 'show_mob', ''),
(314, 81, '_show_mob', 'field_5e22cac86fe81'),
(315, 81, 'gallery_desk', '85,84,83'),
(316, 86, '_edit_last', '1'),
(317, 86, '_edit_lock', '1579856373:1'),
(318, 86, 'start_date', 'August 2014'),
(319, 86, '_start_date', 'field_5e203b22c64ac'),
(320, 86, 'end_date', 'June 2015'),
(321, 86, '_end_date', 'field_5e203b36c64ad'),
(322, 86, 'color_1', '#3a5181'),
(323, 86, '_color_1', 'field_5e2408b533af0'),
(324, 86, 'color_2', '#d3ad53'),
(325, 86, '_color_2', 'field_5e2408d133af1'),
(326, 86, 'color_3', '#aaaaaa'),
(327, 86, '_color_3', 'field_5e2408ec33af2'),
(328, 86, 'technologies', 'AngularJS, HTML(5), CSS, JQuery, Gulp'),
(329, 86, '_technologies', 'field_5e203b46c64ae'),
(330, 86, 'my_role', '<ul>\r\n 	<li>UI/UX assistance &amp; wireframing</li>\r\n 	<li>App frontend UI design and implementation</li>\r\n 	<li>Admin Console desktop frontend UI design</li>\r\n 	<li>Admin Console desktop frontend implementation</li>\r\n</ul>'),
(331, 86, '_my_role', 'field_5e203b76c64af'),
(332, 86, 'cover_desk', '87'),
(333, 86, '_cover_desk', 'field_5e21672a9ef76'),
(334, 86, 'show_desk', 'a:1:{i:0;s:4:"show";}'),
(335, 86, '_show_desk', 'field_5e22c92fbe1be'),
(336, 86, 'cover_tab', ''),
(337, 86, '_cover_tab', 'field_5e2167579ef77'),
(338, 86, 'show_tab', ''),
(339, 86, '_show_tab', 'field_5e22cab36fe80'),
(340, 86, 'cover_mob', '90'),
(341, 86, '_cover_mob', 'field_5e2167889ef78'),
(342, 86, 'show_mob', 'a:1:{i:0;s:4:"show";}'),
(343, 86, '_show_mob', 'field_5e22cac86fe81'),
(344, 87, '_wp_attached_file', '2020/01/cover-desk-2.jpg'),
(345, 87, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:24:"2020/01/cover-desk-2.jpg";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:24:"cover-desk-2-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"cover-desk-2-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:24:"cover-desk-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"cover-desk-2-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:25:"cover-desk-2-1536x864.jpg";s:5:"width";i:1536;s:6:"height";i:864;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(346, 88, '_wp_attached_file', '2020/01/stj-9.jpg'),
(347, 88, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:833;s:6:"height";i:625;s:4:"file";s:17:"2020/01/stj-9.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:17:"stj-9-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"stj-9-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"stj-9-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(348, 89, '_wp_attached_file', '2020/01/stj-10.jpg'),
(349, 89, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:833;s:6:"height";i:625;s:4:"file";s:18:"2020/01/stj-10.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:18:"stj-10-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"stj-10-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"stj-10-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(350, 90, '_wp_attached_file', '2020/01/cover-mobi.jpg'),
(351, 90, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1242;s:6:"height";i:2208;s:4:"file";s:22:"2020/01/cover-mobi.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:22:"cover-mobi-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"cover-mobi-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:22:"cover-mobi-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"cover-mobi-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:23:"cover-mobi-864x1536.jpg";s:5:"width";i:864;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:24:"cover-mobi-1152x2048.jpg";s:5:"width";i:1152;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(352, 91, '_wp_attached_file', '2020/01/stj-1.jpg'),
(353, 91, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1242;s:6:"height";i:2208;s:4:"file";s:17:"2020/01/stj-1.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:17:"stj-1-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"stj-1-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"stj-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"stj-1-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:18:"stj-1-864x1536.jpg";s:5:"width";i:864;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:19:"stj-1-1152x2048.jpg";s:5:"width";i:1152;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1460031167";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(354, 92, '_wp_attached_file', '2020/01/stj-2.jpg'),
(355, 92, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1242;s:6:"height";i:2208;s:4:"file";s:17:"2020/01/stj-2.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:17:"stj-2-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"stj-2-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"stj-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"stj-2-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:18:"stj-2-864x1536.jpg";s:5:"width";i:864;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:19:"stj-2-1152x2048.jpg";s:5:"width";i:1152;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1460031116";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(356, 93, '_wp_attached_file', '2020/01/stj-3.jpg'),
(357, 93, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1242;s:6:"height";i:2208;s:4:"file";s:17:"2020/01/stj-3.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:17:"stj-3-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"stj-3-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"stj-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"stj-3-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:18:"stj-3-864x1536.jpg";s:5:"width";i:864;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:19:"stj-3-1152x2048.jpg";s:5:"width";i:1152;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1460031141";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(358, 94, '_wp_attached_file', '2020/01/stj-4.jpg'),
(359, 94, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1242;s:6:"height";i:2208;s:4:"file";s:17:"2020/01/stj-4.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:17:"stj-4-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"stj-4-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"stj-4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"stj-4-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:18:"stj-4-864x1536.jpg";s:5:"width";i:864;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:19:"stj-4-1152x2048.jpg";s:5:"width";i:1152;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1460031275";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(360, 95, '_wp_attached_file', '2020/01/stj-5.jpg'),
(361, 95, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1242;s:6:"height";i:2208;s:4:"file";s:17:"2020/01/stj-5.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:17:"stj-5-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"stj-5-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"stj-5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"stj-5-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:18:"stj-5-864x1536.jpg";s:5:"width";i:864;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:19:"stj-5-1152x2048.jpg";s:5:"width";i:1152;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1460031075";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(362, 96, '_wp_attached_file', '2020/01/stj-6.jpg'),
(363, 96, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1242;s:6:"height";i:2208;s:4:"file";s:17:"2020/01/stj-6.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:17:"stj-6-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"stj-6-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"stj-6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"stj-6-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:18:"stj-6-864x1536.jpg";s:5:"width";i:864;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:19:"stj-6-1152x2048.jpg";s:5:"width";i:1152;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1460031193";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(364, 97, '_wp_attached_file', '2020/01/stj-7.jpg'),
(365, 97, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1242;s:6:"height";i:2208;s:4:"file";s:17:"2020/01/stj-7.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:17:"stj-7-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"stj-7-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"stj-7-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"stj-7-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:18:"stj-7-864x1536.jpg";s:5:"width";i:864;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:19:"stj-7-1152x2048.jpg";s:5:"width";i:1152;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1460031248";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(366, 98, '_wp_attached_file', '2020/01/stj-8.jpg'),
(367, 98, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1242;s:6:"height";i:2208;s:4:"file";s:17:"2020/01/stj-8.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:17:"stj-8-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"stj-8-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"stj-8-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"stj-8-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:18:"stj-8-864x1536.jpg";s:5:"width";i:864;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:19:"stj-8-1152x2048.jpg";s:5:"width";i:1152;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1460031300";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(368, 86, 'gallery_desk', '88,89'),
(369, 86, 'gallery_mob', '98,97,96,95,94,93,92,91,90'),
(370, 99, '_edit_last', '1'),
(371, 99, '_edit_lock', '1579856402:1'),
(372, 99, 'start_date', 'October 2014'),
(373, 99, '_start_date', 'field_5e203b22c64ac'),
(374, 99, 'end_date', 'January 2015'),
(375, 99, '_end_date', 'field_5e203b36c64ad'),
(376, 99, 'color_1', '#000000'),
(377, 99, '_color_1', 'field_5e2408b533af0'),
(378, 99, 'color_2', '#ffffff'),
(379, 99, '_color_2', 'field_5e2408d133af1'),
(380, 99, 'color_3', '#aaaaaa'),
(381, 99, '_color_3', 'field_5e2408ec33af2'),
(382, 99, 'technologies', 'wordpress, HTML(5), CSS, JQuery, Gulp'),
(383, 99, '_technologies', 'field_5e203b46c64ae'),
(384, 99, 'my_role', '<ul>\r\n 	<li>Custom wordpress theming</li>\r\n 	<li>HTML/CSS/JQuery implementation</li>\r\n 	<li>assisted with UI/UX development</li>\r\n</ul>'),
(385, 99, '_my_role', 'field_5e203b76c64af'),
(386, 99, 'cover_desk', '100'),
(387, 99, '_cover_desk', 'field_5e21672a9ef76'),
(388, 99, 'show_desk', 'a:1:{i:0;s:4:"show";}'),
(389, 99, '_show_desk', 'field_5e22c92fbe1be'),
(390, 99, 'cover_tab', ''),
(391, 99, '_cover_tab', 'field_5e2167579ef77'),
(392, 99, 'show_tab', ''),
(393, 99, '_show_tab', 'field_5e22cab36fe80'),
(394, 99, 'cover_mob', '106'),
(395, 99, '_cover_mob', 'field_5e2167889ef78'),
(396, 99, 'show_mob', 'a:1:{i:0;s:4:"show";}'),
(397, 99, '_show_mob', 'field_5e22cac86fe81'),
(398, 100, '_wp_attached_file', '2020/01/cover-desk-3.jpg'),
(399, 100, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:24:"2020/01/cover-desk-3.jpg";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:24:"cover-desk-3-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"cover-desk-3-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:24:"cover-desk-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"cover-desk-3-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:25:"cover-desk-3-1536x864.jpg";s:5:"width";i:1536;s:6:"height";i:864;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(400, 101, '_wp_attached_file', '2020/01/navigator-1.jpg'),
(401, 101, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:833;s:6:"height";i:625;s:4:"file";s:23:"2020/01/navigator-1.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:23:"navigator-1-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:23:"navigator-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"navigator-1-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(402, 102, '_wp_attached_file', '2020/01/navigator-2.jpg'),
(403, 102, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:833;s:6:"height";i:625;s:4:"file";s:23:"2020/01/navigator-2.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:23:"navigator-2-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:23:"navigator-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"navigator-2-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(404, 103, '_wp_attached_file', '2020/01/navigator-3.jpg'),
(405, 103, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:833;s:6:"height";i:625;s:4:"file";s:23:"2020/01/navigator-3.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:23:"navigator-3-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:23:"navigator-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"navigator-3-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(406, 104, '_wp_attached_file', '2020/01/navigator-4.jpg'),
(407, 104, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:833;s:6:"height";i:625;s:4:"file";s:23:"2020/01/navigator-4.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:23:"navigator-4-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:23:"navigator-4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"navigator-4-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(408, 105, '_wp_attached_file', '2020/01/navigator-5.jpg'),
(409, 105, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:833;s:6:"height";i:625;s:4:"file";s:23:"2020/01/navigator-5.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:23:"navigator-5-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:23:"navigator-5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"navigator-5-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(410, 106, '_wp_attached_file', '2020/01/cover-mobi-1.jpg'),
(411, 106, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1242;s:6:"height";i:2208;s:4:"file";s:24:"2020/01/cover-mobi-1.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:24:"cover-mobi-1-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"cover-mobi-1-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:24:"cover-mobi-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"cover-mobi-1-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:25:"cover-mobi-1-864x1536.jpg";s:5:"width";i:864;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:26:"cover-mobi-1-1152x2048.jpg";s:5:"width";i:1152;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(412, 107, '_wp_attached_file', '2020/01/nav-1.jpg'),
(413, 107, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:312;s:6:"height";i:625;s:4:"file";s:17:"2020/01/nav-1.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:17:"nav-1-150x300.jpg";s:5:"width";i:150;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"nav-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(414, 108, '_wp_attached_file', '2020/01/nav-2.jpg'),
(415, 108, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:312;s:6:"height";i:625;s:4:"file";s:17:"2020/01/nav-2.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:17:"nav-2-150x300.jpg";s:5:"width";i:150;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"nav-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(416, 109, '_wp_attached_file', '2020/01/nav-3.jpg'),
(417, 109, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:312;s:6:"height";i:625;s:4:"file";s:17:"2020/01/nav-3.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:17:"nav-3-150x300.jpg";s:5:"width";i:150;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"nav-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(418, 110, '_wp_attached_file', '2020/01/nav-4.jpg'),
(419, 110, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:312;s:6:"height";i:625;s:4:"file";s:17:"2020/01/nav-4.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:17:"nav-4-150x300.jpg";s:5:"width";i:150;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"nav-4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(420, 111, '_wp_attached_file', '2020/01/nav-5.jpg'),
(421, 111, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:312;s:6:"height";i:625;s:4:"file";s:17:"2020/01/nav-5.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:17:"nav-5-150x300.jpg";s:5:"width";i:150;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"nav-5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(422, 112, '_wp_attached_file', '2020/01/nav-6.jpg'),
(423, 112, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:312;s:6:"height";i:625;s:4:"file";s:17:"2020/01/nav-6.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:17:"nav-6-150x300.jpg";s:5:"width";i:150;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"nav-6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(424, 99, 'gallery_desk', '105,104,103,102,101'),
(425, 99, 'gallery_mob', '112,111,110,109,108,107'),
(426, 113, '_edit_last', '1'),
(427, 113, '_edit_lock', '1579856433:1'),
(428, 113, 'start_date', 'May 2014'),
(429, 113, '_start_date', 'field_5e203b22c64ac'),
(430, 113, 'end_date', 'July 2015'),
(431, 113, '_end_date', 'field_5e203b36c64ad'),
(432, 113, 'color_1', '#ee3380'),
(433, 113, '_color_1', 'field_5e2408b533af0'),
(434, 113, 'color_2', '#87d1d7'),
(435, 113, '_color_2', 'field_5e2408d133af1'),
(436, 113, 'color_3', '#aaaaaa'),
(437, 113, '_color_3', 'field_5e2408ec33af2'),
(438, 113, 'technologies', 'wordpress, HTML(5), CSS, JQuery, Gulp'),
(439, 113, '_technologies', 'field_5e203b46c64ae'),
(440, 113, 'my_role', '<ul>\r\n 	<li>Custom wordpress theming</li>\r\n 	<li>HTML/CSS/JQuery implementation</li>\r\n 	<li>assisted with UI/UX development</li>\r\n</ul>'),
(441, 113, '_my_role', 'field_5e203b76c64af'),
(442, 113, 'cover_desk', '114'),
(443, 113, '_cover_desk', 'field_5e21672a9ef76'),
(444, 113, 'show_desk', 'a:1:{i:0;s:4:"show";}'),
(445, 113, '_show_desk', 'field_5e22c92fbe1be'),
(446, 113, 'cover_tab', ''),
(447, 113, '_cover_tab', 'field_5e2167579ef77'),
(448, 113, 'show_tab', ''),
(449, 113, '_show_tab', 'field_5e22cab36fe80'),
(450, 113, 'cover_mob', '115'),
(451, 113, '_cover_mob', 'field_5e2167889ef78'),
(452, 113, 'show_mob', 'a:1:{i:0;s:4:"show";}'),
(453, 113, '_show_mob', 'field_5e22cac86fe81'),
(454, 114, '_wp_attached_file', '2020/01/cover-desk-4.jpg'),
(455, 114, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:24:"2020/01/cover-desk-4.jpg";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:24:"cover-desk-4-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"cover-desk-4-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:24:"cover-desk-4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"cover-desk-4-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:25:"cover-desk-4-1536x864.jpg";s:5:"width";i:1536;s:6:"height";i:864;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(456, 115, '_wp_attached_file', '2020/01/cover-mobi-2.jpg'),
(457, 115, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1242;s:6:"height";i:2208;s:4:"file";s:24:"2020/01/cover-mobi-2.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:24:"cover-mobi-2-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"cover-mobi-2-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:24:"cover-mobi-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"cover-mobi-2-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:25:"cover-mobi-2-864x1536.jpg";s:5:"width";i:864;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:26:"cover-mobi-2-1152x2048.jpg";s:5:"width";i:1152;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(458, 116, '_wp_attached_file', '2020/01/cw-1.jpg'),
(459, 116, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:312;s:6:"height";i:625;s:4:"file";s:16:"2020/01/cw-1.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:16:"cw-1-150x300.jpg";s:5:"width";i:150;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:16:"cw-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(460, 117, '_wp_attached_file', '2020/01/cw-2.jpg'),
(461, 117, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:312;s:6:"height";i:625;s:4:"file";s:16:"2020/01/cw-2.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:16:"cw-2-150x300.jpg";s:5:"width";i:150;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:16:"cw-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(462, 118, '_wp_attached_file', '2020/01/cw-3.jpg'),
(463, 118, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:312;s:6:"height";i:625;s:4:"file";s:16:"2020/01/cw-3.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:16:"cw-3-150x300.jpg";s:5:"width";i:150;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:16:"cw-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(464, 119, '_wp_attached_file', '2020/01/cw-4.jpg'),
(465, 119, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:312;s:6:"height";i:625;s:4:"file";s:16:"2020/01/cw-4.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:16:"cw-4-150x300.jpg";s:5:"width";i:150;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:16:"cw-4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(466, 120, '_wp_attached_file', '2020/01/cw-5.jpg'),
(467, 120, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:312;s:6:"height";i:625;s:4:"file";s:16:"2020/01/cw-5.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:16:"cw-5-150x300.jpg";s:5:"width";i:150;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:16:"cw-5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(468, 121, '_wp_attached_file', '2020/01/cw-6.jpg'),
(469, 121, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:312;s:6:"height";i:625;s:4:"file";s:16:"2020/01/cw-6.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:16:"cw-6-150x300.jpg";s:5:"width";i:150;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:16:"cw-6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(470, 122, '_wp_attached_file', '2020/01/cw-7.jpg'),
(471, 122, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:312;s:6:"height";i:625;s:4:"file";s:16:"2020/01/cw-7.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:16:"cw-7-150x300.jpg";s:5:"width";i:150;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:16:"cw-7-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(472, 123, '_wp_attached_file', '2020/01/cw-8.jpg'),
(473, 123, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:312;s:6:"height";i:625;s:4:"file";s:16:"2020/01/cw-8.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:16:"cw-8-150x300.jpg";s:5:"width";i:150;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:16:"cw-8-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(474, 124, '_wp_attached_file', '2020/01/cw-9.jpg'),
(475, 124, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:312;s:6:"height";i:625;s:4:"file";s:16:"2020/01/cw-9.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:16:"cw-9-150x300.jpg";s:5:"width";i:150;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:16:"cw-9-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(476, 125, '_wp_attached_file', '2020/01/cw-10.jpg'),
(477, 125, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:312;s:6:"height";i:625;s:4:"file";s:17:"2020/01/cw-10.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:17:"cw-10-150x300.jpg";s:5:"width";i:150;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"cw-10-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(478, 126, '_wp_attached_file', '2020/01/cw-11.jpg'),
(479, 126, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:833;s:6:"height";i:625;s:4:"file";s:17:"2020/01/cw-11.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:17:"cw-11-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"cw-11-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"cw-11-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(480, 127, '_wp_attached_file', '2020/01/cw-12.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(481, 127, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:833;s:6:"height";i:625;s:4:"file";s:17:"2020/01/cw-12.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:17:"cw-12-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"cw-12-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"cw-12-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(482, 128, '_wp_attached_file', '2020/01/cw-13.jpg'),
(483, 128, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:833;s:6:"height";i:625;s:4:"file";s:17:"2020/01/cw-13.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:17:"cw-13-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"cw-13-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"cw-13-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(484, 129, '_wp_attached_file', '2020/01/cw-14.jpg'),
(485, 129, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:833;s:6:"height";i:625;s:4:"file";s:17:"2020/01/cw-14.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:17:"cw-14-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"cw-14-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"cw-14-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(486, 130, '_wp_attached_file', '2020/01/cw-15.jpg'),
(487, 130, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:833;s:6:"height";i:625;s:4:"file";s:17:"2020/01/cw-15.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:17:"cw-15-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"cw-15-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"cw-15-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(488, 131, '_wp_attached_file', '2020/01/cw-16.jpg'),
(489, 131, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:833;s:6:"height";i:625;s:4:"file";s:17:"2020/01/cw-16.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:17:"cw-16-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"cw-16-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"cw-16-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(490, 113, 'gallery_desk', '131,130,129,128,127,126'),
(491, 113, 'gallery_mob', '125,124,123,122,121,120,119,118,117,116'),
(492, 132, '_edit_last', '1'),
(493, 132, '_edit_lock', '1579858917:1'),
(494, 133, '_wp_attached_file', '2020/01/intelleapp-2.jpg'),
(495, 133, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1242;s:6:"height";i:2208;s:4:"file";s:24:"2020/01/intelleapp-2.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:24:"intelleapp-2-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"intelleapp-2-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:24:"intelleapp-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"intelleapp-2-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:25:"intelleapp-2-864x1536.jpg";s:5:"width";i:864;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:26:"intelleapp-2-1152x2048.jpg";s:5:"width";i:1152;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1460046249";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(496, 134, '_wp_attached_file', '2020/01/intelleapp-3.jpg'),
(497, 134, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1242;s:6:"height";i:2208;s:4:"file";s:24:"2020/01/intelleapp-3.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:24:"intelleapp-3-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"intelleapp-3-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:24:"intelleapp-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"intelleapp-3-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:25:"intelleapp-3-864x1536.jpg";s:5:"width";i:864;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:26:"intelleapp-3-1152x2048.jpg";s:5:"width";i:1152;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1460046232";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(498, 135, '_wp_attached_file', '2020/01/intelleapp-4.jpg'),
(499, 135, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1242;s:6:"height";i:2208;s:4:"file";s:24:"2020/01/intelleapp-4.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:24:"intelleapp-4-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"intelleapp-4-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:24:"intelleapp-4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"intelleapp-4-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:25:"intelleapp-4-864x1536.jpg";s:5:"width";i:864;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:26:"intelleapp-4-1152x2048.jpg";s:5:"width";i:1152;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1460046225";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(500, 132, 'start_date', 'November 2015'),
(501, 132, '_start_date', 'field_5e203b22c64ac'),
(502, 132, 'end_date', 'June 2016'),
(503, 132, '_end_date', 'field_5e203b36c64ad'),
(504, 132, 'color_1', '#3a5181'),
(505, 132, '_color_1', 'field_5e2408b533af0'),
(506, 132, 'color_2', '#f9bc45'),
(507, 132, '_color_2', 'field_5e2408d133af1'),
(508, 132, 'color_3', '#aaaaaa'),
(509, 132, '_color_3', 'field_5e2408ec33af2'),
(510, 132, 'technologies', 'AngularJS, HTML(5), CSS, JQuery, Cordova, X-Code, Gulp'),
(511, 132, '_technologies', 'field_5e203b46c64ae'),
(512, 132, 'my_role', '<ul>\r\n 	<li>UI/UX consulting</li>\r\n 	<li>Development team lead</li>\r\n 	<li>Frontend development &amp; implementation</li>\r\n 	<li>Play &amp; App Store submissions</li>\r\n</ul>'),
(513, 132, '_my_role', 'field_5e203b76c64af'),
(514, 132, 'cover_desk', '136'),
(515, 132, '_cover_desk', 'field_5e21672a9ef76'),
(516, 132, 'show_desk', ''),
(517, 132, '_show_desk', 'field_5e22c92fbe1be'),
(518, 132, 'cover_tab', ''),
(519, 132, '_cover_tab', 'field_5e2167579ef77'),
(520, 132, 'show_tab', ''),
(521, 132, '_show_tab', 'field_5e22cab36fe80'),
(522, 132, 'cover_mob', '134'),
(523, 132, '_cover_mob', 'field_5e2167889ef78'),
(524, 132, 'show_mob', 'a:1:{i:0;s:4:"show";}'),
(525, 132, '_show_mob', 'field_5e22cac86fe81'),
(526, 132, 'gallery_mob', '133,134,135'),
(527, 136, '_wp_attached_file', '2020/01/cover-desk-5.jpg'),
(528, 136, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:24:"2020/01/cover-desk-5.jpg";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:24:"cover-desk-5-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"cover-desk-5-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:24:"cover-desk-5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"cover-desk-5-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:25:"cover-desk-5-1536x864.jpg";s:5:"width";i:1536;s:6:"height";i:864;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(529, 137, '_edit_last', '1'),
(530, 137, '_edit_lock', '1579858799:1'),
(531, 138, '_wp_attached_file', '2020/01/tpg-2.jpg'),
(532, 138, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1242;s:6:"height";i:2208;s:4:"file";s:17:"2020/01/tpg-2.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:17:"tpg-2-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"tpg-2-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"tpg-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"tpg-2-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:18:"tpg-2-864x1536.jpg";s:5:"width";i:864;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:19:"tpg-2-1152x2048.jpg";s:5:"width";i:1152;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(533, 139, '_wp_attached_file', '2020/01/tpg-1.jpg'),
(534, 139, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1242;s:6:"height";i:2208;s:4:"file";s:17:"2020/01/tpg-1.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:17:"tpg-1-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"tpg-1-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"tpg-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"tpg-1-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:18:"tpg-1-864x1536.jpg";s:5:"width";i:864;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:19:"tpg-1-1152x2048.jpg";s:5:"width";i:1152;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(535, 140, '_wp_attached_file', '2020/01/tpg-3.jpg'),
(536, 140, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1242;s:6:"height";i:2208;s:4:"file";s:17:"2020/01/tpg-3.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:17:"tpg-3-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"tpg-3-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"tpg-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"tpg-3-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:18:"tpg-3-864x1536.jpg";s:5:"width";i:864;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:19:"tpg-3-1152x2048.jpg";s:5:"width";i:1152;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(537, 141, '_wp_attached_file', '2020/01/tpg-4.jpg'),
(538, 141, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1242;s:6:"height";i:2208;s:4:"file";s:17:"2020/01/tpg-4.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:17:"tpg-4-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"tpg-4-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"tpg-4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"tpg-4-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:18:"tpg-4-864x1536.jpg";s:5:"width";i:864;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:19:"tpg-4-1152x2048.jpg";s:5:"width";i:1152;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(539, 142, '_wp_attached_file', '2020/01/tpg-5.jpg'),
(540, 142, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1242;s:6:"height";i:2208;s:4:"file";s:17:"2020/01/tpg-5.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:17:"tpg-5-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"tpg-5-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"tpg-5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"tpg-5-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:18:"tpg-5-864x1536.jpg";s:5:"width";i:864;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:19:"tpg-5-1152x2048.jpg";s:5:"width";i:1152;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(541, 143, '_wp_attached_file', '2020/01/tpg-6.jpg'),
(542, 143, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1242;s:6:"height";i:2208;s:4:"file";s:17:"2020/01/tpg-6.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:17:"tpg-6-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"tpg-6-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"tpg-6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"tpg-6-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:18:"tpg-6-864x1536.jpg";s:5:"width";i:864;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:19:"tpg-6-1152x2048.jpg";s:5:"width";i:1152;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(543, 144, '_wp_attached_file', '2020/01/tpg-7.jpg'),
(544, 144, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1242;s:6:"height";i:2208;s:4:"file";s:17:"2020/01/tpg-7.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:17:"tpg-7-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"tpg-7-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"tpg-7-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"tpg-7-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:18:"tpg-7-864x1536.jpg";s:5:"width";i:864;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:19:"tpg-7-1152x2048.jpg";s:5:"width";i:1152;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(545, 145, '_wp_attached_file', '2020/01/tpg-8.jpg'),
(546, 145, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1242;s:6:"height";i:2208;s:4:"file";s:17:"2020/01/tpg-8.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:17:"tpg-8-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"tpg-8-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:17:"tpg-8-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"tpg-8-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:18:"tpg-8-864x1536.jpg";s:5:"width";i:864;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:19:"tpg-8-1152x2048.jpg";s:5:"width";i:1152;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"kirk daniels";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(547, 137, 'start_date', 'August 2015'),
(548, 137, '_start_date', 'field_5e203b22c64ac'),
(549, 137, 'end_date', 'June 2016'),
(550, 137, '_end_date', 'field_5e203b36c64ad'),
(551, 137, 'color_1', '#ff625f'),
(552, 137, '_color_1', 'field_5e2408b533af0'),
(553, 137, 'color_2', '#ff625f'),
(554, 137, '_color_2', 'field_5e2408d133af1'),
(555, 137, 'color_3', '#aaaaaa'),
(556, 137, '_color_3', 'field_5e2408ec33af2'),
(557, 137, 'technologies', 'AngularJS, HTML(5), CSS, JQuery, Cordova, X-Code, Gulp'),
(558, 137, '_technologies', 'field_5e203b46c64ae'),
(559, 137, 'my_role', '<ul>\r\n 	<li>UI/UX consulting</li>\r\n 	<li>Development team lead</li>\r\n 	<li>Frontend development &amp; implementation</li>\r\n 	<li>Play &amp; App Store submissions</li>\r\n</ul>'),
(560, 137, '_my_role', 'field_5e203b76c64af'),
(561, 137, 'cover_desk', ''),
(562, 137, '_cover_desk', 'field_5e21672a9ef76'),
(563, 137, 'show_desk', ''),
(564, 137, '_show_desk', 'field_5e22c92fbe1be'),
(565, 137, 'cover_tab', ''),
(566, 137, '_cover_tab', 'field_5e2167579ef77'),
(567, 137, 'show_tab', ''),
(568, 137, '_show_tab', 'field_5e22cab36fe80'),
(569, 137, 'cover_mob', '138'),
(570, 137, '_cover_mob', 'field_5e2167889ef78'),
(571, 137, 'show_mob', 'a:1:{i:0;s:4:"show";}'),
(572, 137, '_show_mob', 'field_5e22cac86fe81'),
(573, 137, 'gallery_mob', '138,145,144,143,142,141,140,139'),
(574, 14, '_wp_old_slug', 'tonplaygo'),
(575, 137, '_wp_old_slug', 'tonplaygo-2'),
(576, 146, '_edit_last', '1'),
(577, 146, '_edit_lock', '1579859445:1'),
(578, 146, 'start_date', 'August 2016'),
(579, 146, '_start_date', 'field_5e203b22c64ac'),
(580, 146, 'end_date', 'December 2017'),
(581, 146, '_end_date', 'field_5e203b36c64ad'),
(582, 146, 'color_1', '#004d7b'),
(583, 146, '_color_1', 'field_5e2408b533af0'),
(584, 146, 'color_2', '#00c5de'),
(585, 146, '_color_2', 'field_5e2408d133af1'),
(586, 146, 'color_3', '#aaaaaa'),
(587, 146, '_color_3', 'field_5e2408ec33af2'),
(588, 146, 'technologies', 'Drupal 7, Bootstrap 3, JQuery, HTML 5, SASS, Compass'),
(589, 146, '_technologies', 'field_5e203b46c64ae'),
(590, 146, 'my_role', '<ul>\r\n 	<li>Frontend development</li>\r\n</ul>\r\n&nbsp;'),
(591, 146, '_my_role', 'field_5e203b76c64af'),
(592, 146, 'cover_desk', '147'),
(593, 146, '_cover_desk', 'field_5e21672a9ef76'),
(594, 146, 'show_desk', 'a:1:{i:0;s:4:"show";}'),
(595, 146, '_show_desk', 'field_5e22c92fbe1be'),
(596, 146, 'cover_tab', ''),
(597, 146, '_cover_tab', 'field_5e2167579ef77'),
(598, 146, 'show_tab', ''),
(599, 146, '_show_tab', 'field_5e22cab36fe80'),
(600, 146, 'cover_mob', '165'),
(601, 146, '_cover_mob', 'field_5e2167889ef78'),
(602, 146, 'show_mob', 'a:1:{i:0;s:4:"show";}'),
(603, 146, '_show_mob', 'field_5e22cac86fe81'),
(604, 147, '_wp_attached_file', '2020/01/cover-desk-6.jpg'),
(605, 147, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:24:"2020/01/cover-desk-6.jpg";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:24:"cover-desk-6-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"cover-desk-6-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:24:"cover-desk-6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"cover-desk-6-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:25:"cover-desk-6-1536x864.jpg";s:5:"width";i:1536;s:6:"height";i:864;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(616, 153, '_wp_attached_file', '2020/01/Screenshot-2019-02-28-at-00.05.47-scaled.jpg'),
(617, 153, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2560;s:6:"height";i:1567;s:4:"file";s:52:"2020/01/Screenshot-2019-02-28-at-00.05.47-scaled.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.05.47-300x184.jpg";s:5:"width";i:300;s:6:"height";i:184;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.05.47-1024x627.jpg";s:5:"width";i:1024;s:6:"height";i:627;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.05.47-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.05.47-768x470.jpg";s:5:"width";i:768;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.05.47-1536x940.jpg";s:5:"width";i:1536;s:6:"height";i:940;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:47:"Screenshot-2019-02-28-at-00.05.47-2048x1254.jpg";s:5:"width";i:2048;s:6:"height";i:1254;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}s:14:"original_image";s:37:"Screenshot-2019-02-28-at-00.05.47.jpg";}'),
(618, 154, '_wp_attached_file', '2020/01/Screenshot-2019-02-28-at-00.06.58-scaled.jpg'),
(619, 154, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2560;s:6:"height";i:1567;s:4:"file";s:52:"2020/01/Screenshot-2019-02-28-at-00.06.58-scaled.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.06.58-300x184.jpg";s:5:"width";i:300;s:6:"height";i:184;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.06.58-1024x627.jpg";s:5:"width";i:1024;s:6:"height";i:627;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.06.58-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.06.58-768x470.jpg";s:5:"width";i:768;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.06.58-1536x940.jpg";s:5:"width";i:1536;s:6:"height";i:940;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:47:"Screenshot-2019-02-28-at-00.06.58-2048x1254.jpg";s:5:"width";i:2048;s:6:"height";i:1254;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}s:14:"original_image";s:37:"Screenshot-2019-02-28-at-00.06.58.jpg";}'),
(620, 155, '_wp_attached_file', '2020/01/Screenshot-2019-02-28-at-00.07.52-scaled.jpg'),
(621, 155, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2560;s:6:"height";i:1567;s:4:"file";s:52:"2020/01/Screenshot-2019-02-28-at-00.07.52-scaled.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.07.52-300x184.jpg";s:5:"width";i:300;s:6:"height";i:184;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.07.52-1024x627.jpg";s:5:"width";i:1024;s:6:"height";i:627;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.07.52-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.07.52-768x470.jpg";s:5:"width";i:768;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.07.52-1536x940.jpg";s:5:"width";i:1536;s:6:"height";i:940;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:47:"Screenshot-2019-02-28-at-00.07.52-2048x1254.jpg";s:5:"width";i:2048;s:6:"height";i:1254;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}s:14:"original_image";s:37:"Screenshot-2019-02-28-at-00.07.52.jpg";}'),
(622, 156, '_wp_attached_file', '2020/01/Screenshot-2019-02-28-at-00.08.50-scaled.jpg'),
(623, 156, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2560;s:6:"height";i:1567;s:4:"file";s:52:"2020/01/Screenshot-2019-02-28-at-00.08.50-scaled.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.08.50-300x184.jpg";s:5:"width";i:300;s:6:"height";i:184;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.08.50-1024x627.jpg";s:5:"width";i:1024;s:6:"height";i:627;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.08.50-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.08.50-768x470.jpg";s:5:"width";i:768;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.08.50-1536x940.jpg";s:5:"width";i:1536;s:6:"height";i:940;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:47:"Screenshot-2019-02-28-at-00.08.50-2048x1254.jpg";s:5:"width";i:2048;s:6:"height";i:1254;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}s:14:"original_image";s:37:"Screenshot-2019-02-28-at-00.08.50.jpg";}'),
(624, 157, '_wp_attached_file', '2020/01/Screenshot-2019-02-28-at-00.09.56-scaled.jpg'),
(625, 157, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2560;s:6:"height";i:1567;s:4:"file";s:52:"2020/01/Screenshot-2019-02-28-at-00.09.56-scaled.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.09.56-300x184.jpg";s:5:"width";i:300;s:6:"height";i:184;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.09.56-1024x627.jpg";s:5:"width";i:1024;s:6:"height";i:627;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.09.56-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.09.56-768x470.jpg";s:5:"width";i:768;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.09.56-1536x940.jpg";s:5:"width";i:1536;s:6:"height";i:940;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:47:"Screenshot-2019-02-28-at-00.09.56-2048x1254.jpg";s:5:"width";i:2048;s:6:"height";i:1254;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}s:14:"original_image";s:37:"Screenshot-2019-02-28-at-00.09.56.jpg";}'),
(626, 158, '_wp_attached_file', '2020/01/Screenshot-2019-02-28-at-00.10.20-scaled.jpg'),
(627, 158, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2560;s:6:"height";i:1567;s:4:"file";s:52:"2020/01/Screenshot-2019-02-28-at-00.10.20-scaled.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.10.20-300x184.jpg";s:5:"width";i:300;s:6:"height";i:184;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.10.20-1024x627.jpg";s:5:"width";i:1024;s:6:"height";i:627;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.10.20-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.10.20-768x470.jpg";s:5:"width";i:768;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.10.20-1536x940.jpg";s:5:"width";i:1536;s:6:"height";i:940;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:47:"Screenshot-2019-02-28-at-00.10.20-2048x1254.jpg";s:5:"width";i:2048;s:6:"height";i:1254;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}s:14:"original_image";s:37:"Screenshot-2019-02-28-at-00.10.20.jpg";}'),
(628, 159, '_wp_attached_file', '2020/01/Screenshot-2019-02-28-at-00.11.41-scaled.jpg'),
(629, 159, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2560;s:6:"height";i:1567;s:4:"file";s:52:"2020/01/Screenshot-2019-02-28-at-00.11.41-scaled.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.11.41-300x184.jpg";s:5:"width";i:300;s:6:"height";i:184;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.11.41-1024x627.jpg";s:5:"width";i:1024;s:6:"height";i:627;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.11.41-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.11.41-768x470.jpg";s:5:"width";i:768;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.11.41-1536x940.jpg";s:5:"width";i:1536;s:6:"height";i:940;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:47:"Screenshot-2019-02-28-at-00.11.41-2048x1254.jpg";s:5:"width";i:2048;s:6:"height";i:1254;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}s:14:"original_image";s:37:"Screenshot-2019-02-28-at-00.11.41.jpg";}'),
(630, 160, '_wp_attached_file', '2020/01/Screenshot-2019-02-28-at-00.13.06-scaled.jpg'),
(631, 160, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2560;s:6:"height";i:1567;s:4:"file";s:52:"2020/01/Screenshot-2019-02-28-at-00.13.06-scaled.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.13.06-300x184.jpg";s:5:"width";i:300;s:6:"height";i:184;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.13.06-1024x627.jpg";s:5:"width";i:1024;s:6:"height";i:627;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.13.06-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.13.06-768x470.jpg";s:5:"width";i:768;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.13.06-1536x940.jpg";s:5:"width";i:1536;s:6:"height";i:940;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:47:"Screenshot-2019-02-28-at-00.13.06-2048x1254.jpg";s:5:"width";i:2048;s:6:"height";i:1254;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}s:14:"original_image";s:37:"Screenshot-2019-02-28-at-00.13.06.jpg";}'),
(632, 161, '_wp_attached_file', '2020/01/Screenshot-2019-02-28-at-00.14.04-scaled.jpg'),
(633, 161, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2560;s:6:"height";i:1567;s:4:"file";s:52:"2020/01/Screenshot-2019-02-28-at-00.14.04-scaled.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.14.04-300x184.jpg";s:5:"width";i:300;s:6:"height";i:184;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.14.04-1024x627.jpg";s:5:"width";i:1024;s:6:"height";i:627;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.14.04-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.14.04-768x470.jpg";s:5:"width";i:768;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.14.04-1536x940.jpg";s:5:"width";i:1536;s:6:"height";i:940;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:47:"Screenshot-2019-02-28-at-00.14.04-2048x1254.jpg";s:5:"width";i:2048;s:6:"height";i:1254;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}s:14:"original_image";s:37:"Screenshot-2019-02-28-at-00.14.04.jpg";}'),
(634, 162, '_wp_attached_file', '2020/01/Screenshot-2019-02-28-at-00.15.36-scaled.jpg'),
(635, 162, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2560;s:6:"height";i:1567;s:4:"file";s:52:"2020/01/Screenshot-2019-02-28-at-00.15.36-scaled.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.15.36-300x184.jpg";s:5:"width";i:300;s:6:"height";i:184;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.15.36-1024x627.jpg";s:5:"width";i:1024;s:6:"height";i:627;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.15.36-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.15.36-768x470.jpg";s:5:"width";i:768;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.15.36-1536x940.jpg";s:5:"width";i:1536;s:6:"height";i:940;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:47:"Screenshot-2019-02-28-at-00.15.36-2048x1254.jpg";s:5:"width";i:2048;s:6:"height";i:1254;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}s:14:"original_image";s:37:"Screenshot-2019-02-28-at-00.15.36.jpg";}'),
(636, 163, '_wp_attached_file', '2020/01/Screenshot-2019-02-28-at-11.11.13.jpg'),
(637, 163, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2032;s:6:"height";i:1169;s:4:"file";s:45:"2020/01/Screenshot-2019-02-28-at-11.11.13.jpg";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-11.11.13-300x173.jpg";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-11.11.13-1024x589.jpg";s:5:"width";i:1024;s:6:"height";i:589;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-11.11.13-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-11.11.13-768x442.jpg";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-11.11.13-1536x884.jpg";s:5:"width";i:1536;s:6:"height";i:884;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(638, 164, '_wp_attached_file', '2020/01/Screenshot-2019-02-28-at-11.11.30.jpg'),
(639, 164, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2032;s:6:"height";i:1169;s:4:"file";s:45:"2020/01/Screenshot-2019-02-28-at-11.11.30.jpg";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-11.11.30-300x173.jpg";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-11.11.30-1024x589.jpg";s:5:"width";i:1024;s:6:"height";i:589;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-11.11.30-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-11.11.30-768x442.jpg";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-11.11.30-1536x884.jpg";s:5:"width";i:1536;s:6:"height";i:884;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(640, 146, 'gallery_desk', '164,163,162,161,160,159,158,157,156,155,154,153,147'),
(641, 165, '_wp_attached_file', '2020/01/cover-mobi-3.jpg'),
(642, 165, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1242;s:6:"height";i:2208;s:4:"file";s:24:"2020/01/cover-mobi-3.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:24:"cover-mobi-3-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"cover-mobi-3-576x1024.jpg";s:5:"width";i:576;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:24:"cover-mobi-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"cover-mobi-3-768x1365.jpg";s:5:"width";i:768;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:25:"cover-mobi-3-864x1536.jpg";s:5:"width";i:864;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:26:"cover-mobi-3-1152x2048.jpg";s:5:"width";i:1152;s:6:"height";i:2048;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(643, 166, '_wp_attached_file', '2020/01/Screenshot-2019-02-27-at-23.59.51.png'),
(644, 166, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:932;s:6:"height";i:1626;s:4:"file";s:45:"2020/01/Screenshot-2019-02-27-at-23.59.51.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-02-27-at-23.59.51-172x300.png";s:5:"width";i:172;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-27-at-23.59.51-587x1024.png";s:5:"width";i:587;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-02-27-at-23.59.51-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-27-at-23.59.51-768x1340.png";s:5:"width";i:768;s:6:"height";i:1340;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2019-02-27-at-23.59.51-880x1536.png";s:5:"width";i:880;s:6:"height";i:1536;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(645, 167, '_wp_attached_file', '2020/01/Screenshot-2019-02-28-at-00.00.16.png'),
(646, 167, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:932;s:6:"height";i:1626;s:4:"file";s:45:"2020/01/Screenshot-2019-02-28-at-00.00.16.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.00.16-172x300.png";s:5:"width";i:172;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.00.16-587x1024.png";s:5:"width";i:587;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.00.16-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.00.16-768x1340.png";s:5:"width";i:768;s:6:"height";i:1340;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.00.16-880x1536.png";s:5:"width";i:880;s:6:"height";i:1536;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(647, 168, '_wp_attached_file', '2020/01/Screenshot-2019-02-28-at-00.00.53.png'),
(648, 168, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:932;s:6:"height";i:1626;s:4:"file";s:45:"2020/01/Screenshot-2019-02-28-at-00.00.53.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.00.53-172x300.png";s:5:"width";i:172;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.00.53-587x1024.png";s:5:"width";i:587;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.00.53-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.00.53-768x1340.png";s:5:"width";i:768;s:6:"height";i:1340;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.00.53-880x1536.png";s:5:"width";i:880;s:6:"height";i:1536;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(649, 169, '_wp_attached_file', '2020/01/Screenshot-2019-02-28-at-00.01.41.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(650, 169, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:932;s:6:"height";i:1626;s:4:"file";s:45:"2020/01/Screenshot-2019-02-28-at-00.01.41.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.01.41-172x300.png";s:5:"width";i:172;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.01.41-587x1024.png";s:5:"width";i:587;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.01.41-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.01.41-768x1340.png";s:5:"width";i:768;s:6:"height";i:1340;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.01.41-880x1536.png";s:5:"width";i:880;s:6:"height";i:1536;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(651, 170, '_wp_attached_file', '2020/01/Screenshot-2019-02-28-at-00.02.50.png'),
(652, 170, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:932;s:6:"height";i:1626;s:4:"file";s:45:"2020/01/Screenshot-2019-02-28-at-00.02.50.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.02.50-172x300.png";s:5:"width";i:172;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.02.50-587x1024.png";s:5:"width";i:587;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.02.50-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.02.50-768x1340.png";s:5:"width";i:768;s:6:"height";i:1340;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.02.50-880x1536.png";s:5:"width";i:880;s:6:"height";i:1536;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(653, 171, '_wp_attached_file', '2020/01/Screenshot-2019-02-28-at-00.03.40.png'),
(654, 171, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:932;s:6:"height";i:1626;s:4:"file";s:45:"2020/01/Screenshot-2019-02-28-at-00.03.40.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.03.40-172x300.png";s:5:"width";i:172;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.03.40-587x1024.png";s:5:"width";i:587;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.03.40-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.03.40-768x1340.png";s:5:"width";i:768;s:6:"height";i:1340;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.03.40-880x1536.png";s:5:"width";i:880;s:6:"height";i:1536;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(655, 172, '_wp_attached_file', '2020/01/Screenshot-2019-02-28-at-00.04.18.png'),
(656, 172, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:932;s:6:"height";i:1626;s:4:"file";s:45:"2020/01/Screenshot-2019-02-28-at-00.04.18.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.04.18-172x300.png";s:5:"width";i:172;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.04.18-587x1024.png";s:5:"width";i:587;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.04.18-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.04.18-768x1340.png";s:5:"width";i:768;s:6:"height";i:1340;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.04.18-880x1536.png";s:5:"width";i:880;s:6:"height";i:1536;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(657, 173, '_wp_attached_file', '2020/01/Screenshot-2019-02-28-at-00.05.25.png'),
(658, 173, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:932;s:6:"height";i:1626;s:4:"file";s:45:"2020/01/Screenshot-2019-02-28-at-00.05.25.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.05.25-172x300.png";s:5:"width";i:172;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.05.25-587x1024.png";s:5:"width";i:587;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-02-28-at-00.05.25-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.05.25-768x1340.png";s:5:"width";i:768;s:6:"height";i:1340;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2019-02-28-at-00.05.25-880x1536.png";s:5:"width";i:880;s:6:"height";i:1536;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(659, 146, 'gallery_mob', '173,172,171,170,169,168,167,166'),
(660, 61, '_wp_old_date', '2013-01-20'),
(661, 61, '_wp_old_date', '2014-01-01'),
(662, 57, '_wp_old_date', '2020-01-20'),
(663, 75, '_wp_old_date', '2020-01-23'),
(664, 81, '_wp_old_date', '2020-01-23'),
(665, 86, '_wp_old_date', '2020-01-23'),
(666, 99, '_wp_old_date', '2020-01-23'),
(667, 113, '_wp_old_date', '2020-01-23'),
(668, 132, '_wp_old_date', '2020-01-23'),
(669, 137, '_wp_old_date', '2020-01-23'),
(670, 132, '_wp_old_date', '2015-11-01'),
(671, 176, '_edit_last', '1'),
(672, 176, '_edit_lock', '1579859483:1'),
(673, 177, '_wp_attached_file', '2020/01/Screenshot-2019-05-24-at-11.35.20.png'),
(674, 177, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2032;s:6:"height";i:1169;s:4:"file";s:45:"2020/01/Screenshot-2019-05-24-at-11.35.20.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-05-24-at-11.35.20-300x173.png";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-05-24-at-11.35.20-1024x589.png";s:5:"width";i:1024;s:6:"height";i:589;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-05-24-at-11.35.20-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2019-05-24-at-11.35.20-768x442.png";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2019-05-24-at-11.35.20-1536x884.png";s:5:"width";i:1536;s:6:"height";i:884;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(675, 178, '_wp_attached_file', '2020/01/Screenshot-2019-05-24-at-11.36.00.png'),
(676, 178, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2032;s:6:"height";i:1169;s:4:"file";s:45:"2020/01/Screenshot-2019-05-24-at-11.36.00.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-05-24-at-11.36.00-300x173.png";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-05-24-at-11.36.00-1024x589.png";s:5:"width";i:1024;s:6:"height";i:589;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-05-24-at-11.36.00-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2019-05-24-at-11.36.00-768x442.png";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2019-05-24-at-11.36.00-1536x884.png";s:5:"width";i:1536;s:6:"height";i:884;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(677, 179, '_wp_attached_file', '2020/01/Screenshot-2019-05-24-at-11.36.17.png'),
(678, 179, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1988;s:6:"height";i:1125;s:4:"file";s:45:"2020/01/Screenshot-2019-05-24-at-11.36.17.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-05-24-at-11.36.17-300x170.png";s:5:"width";i:300;s:6:"height";i:170;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-05-24-at-11.36.17-1024x579.png";s:5:"width";i:1024;s:6:"height";i:579;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-05-24-at-11.36.17-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2019-05-24-at-11.36.17-768x435.png";s:5:"width";i:768;s:6:"height";i:435;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2019-05-24-at-11.36.17-1536x869.png";s:5:"width";i:1536;s:6:"height";i:869;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(679, 180, '_wp_attached_file', '2020/01/Screenshot-2019-05-24-at-11.36.41.png'),
(680, 180, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2032;s:6:"height";i:1169;s:4:"file";s:45:"2020/01/Screenshot-2019-05-24-at-11.36.41.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-05-24-at-11.36.41-300x173.png";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-05-24-at-11.36.41-1024x589.png";s:5:"width";i:1024;s:6:"height";i:589;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-05-24-at-11.36.41-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2019-05-24-at-11.36.41-768x442.png";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2019-05-24-at-11.36.41-1536x884.png";s:5:"width";i:1536;s:6:"height";i:884;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(681, 181, '_wp_attached_file', '2020/01/Screenshot-2019-05-24-at-11.37.30.png'),
(682, 181, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2032;s:6:"height";i:1169;s:4:"file";s:45:"2020/01/Screenshot-2019-05-24-at-11.37.30.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-05-24-at-11.37.30-300x173.png";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-05-24-at-11.37.30-1024x589.png";s:5:"width";i:1024;s:6:"height";i:589;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-05-24-at-11.37.30-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2019-05-24-at-11.37.30-768x442.png";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2019-05-24-at-11.37.30-1536x884.png";s:5:"width";i:1536;s:6:"height";i:884;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(683, 182, '_wp_attached_file', '2020/01/Screenshot-2019-05-24-at-11.38.02.png'),
(684, 182, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2032;s:6:"height";i:1169;s:4:"file";s:45:"2020/01/Screenshot-2019-05-24-at-11.38.02.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-05-24-at-11.38.02-300x173.png";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-05-24-at-11.38.02-1024x589.png";s:5:"width";i:1024;s:6:"height";i:589;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-05-24-at-11.38.02-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2019-05-24-at-11.38.02-768x442.png";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2019-05-24-at-11.38.02-1536x884.png";s:5:"width";i:1536;s:6:"height";i:884;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(685, 183, '_wp_attached_file', '2020/01/Screenshot-2019-05-24-at-11.38.52.png'),
(686, 183, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2032;s:6:"height";i:1169;s:4:"file";s:45:"2020/01/Screenshot-2019-05-24-at-11.38.52.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2019-05-24-at-11.38.52-300x173.png";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2019-05-24-at-11.38.52-1024x589.png";s:5:"width";i:1024;s:6:"height";i:589;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2019-05-24-at-11.38.52-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2019-05-24-at-11.38.52-768x442.png";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2019-05-24-at-11.38.52-1536x884.png";s:5:"width";i:1536;s:6:"height";i:884;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(687, 184, '_wp_attached_file', '2020/01/cover-desk-7.jpg'),
(688, 184, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:24:"2020/01/cover-desk-7.jpg";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:24:"cover-desk-7-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"cover-desk-7-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:24:"cover-desk-7-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"cover-desk-7-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:25:"cover-desk-7-1536x864.jpg";s:5:"width";i:1536;s:6:"height";i:864;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(689, 176, 'start_date', 'June 2016'),
(690, 176, '_start_date', 'field_5e203b22c64ac'),
(691, 176, 'end_date', 'ongoing'),
(692, 176, '_end_date', 'field_5e203b36c64ad'),
(693, 176, 'color_1', '#003865'),
(694, 176, '_color_1', 'field_5e2408b533af0'),
(695, 176, 'color_2', '#ce0058'),
(696, 176, '_color_2', 'field_5e2408d133af1'),
(697, 176, 'color_3', '#969696'),
(698, 176, '_color_3', 'field_5e2408ec33af2'),
(699, 176, 'technologies', 'Sitecore, JQuery, Bootstrap 3, HTML5, SASS, Gulp'),
(700, 176, '_technologies', 'field_5e203b46c64ae'),
(701, 176, 'my_role', ''),
(702, 176, '_my_role', 'field_5e203b76c64af'),
(703, 176, 'cover_desk', '184'),
(704, 176, '_cover_desk', 'field_5e21672a9ef76'),
(705, 176, 'show_desk', 'a:1:{i:0;s:4:"show";}'),
(706, 176, '_show_desk', 'field_5e22c92fbe1be'),
(707, 176, 'cover_tab', ''),
(708, 176, '_cover_tab', 'field_5e2167579ef77'),
(709, 176, 'show_tab', ''),
(710, 176, '_show_tab', 'field_5e22cab36fe80'),
(711, 176, 'cover_mob', ''),
(712, 176, '_cover_mob', 'field_5e2167889ef78'),
(713, 176, 'show_mob', ''),
(714, 176, '_show_mob', 'field_5e22cac86fe81'),
(715, 176, 'gallery_desk', '183,182,181,180,179,178,177'),
(716, 176, '_wp_old_date', '2020-01-24'),
(717, 176, '_wp_old_date', '2017-01-01'),
(718, 146, '_wp_old_date', '2020-01-23'),
(719, 176, '_wp_old_date', '2016-01-01'),
(720, 186, '_edit_last', '1'),
(721, 186, '_edit_lock', '1580761217:1'),
(722, 187, '_wp_attached_file', '2020/02/cover-desk.jpg'),
(723, 187, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:22:"2020/02/cover-desk.jpg";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:22:"cover-desk-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"cover-desk-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:22:"cover-desk-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"cover-desk-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:23:"cover-desk-1536x864.jpg";s:5:"width";i:1536;s:6:"height";i:864;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(724, 188, '_wp_attached_file', '2020/02/Screenshot-2020-01-24-at-10.43.43.png'),
(725, 188, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2032;s:6:"height";i:1169;s:4:"file";s:45:"2020/02/Screenshot-2020-01-24-at-10.43.43.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-01-24-at-10.43.43-300x173.png";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2020-01-24-at-10.43.43-1024x589.png";s:5:"width";i:1024;s:6:"height";i:589;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-01-24-at-10.43.43-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2020-01-24-at-10.43.43-768x442.png";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2020-01-24-at-10.43.43-1536x884.png";s:5:"width";i:1536;s:6:"height";i:884;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(726, 189, '_wp_attached_file', '2020/02/Screenshot-2020-01-24-at-10.44.27.png'),
(727, 189, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2032;s:6:"height";i:1169;s:4:"file";s:45:"2020/02/Screenshot-2020-01-24-at-10.44.27.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-01-24-at-10.44.27-300x173.png";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2020-01-24-at-10.44.27-1024x589.png";s:5:"width";i:1024;s:6:"height";i:589;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-01-24-at-10.44.27-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2020-01-24-at-10.44.27-768x442.png";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2020-01-24-at-10.44.27-1536x884.png";s:5:"width";i:1536;s:6:"height";i:884;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(728, 190, '_wp_attached_file', '2020/02/Screenshot-2020-01-24-at-10.45.27.png'),
(729, 190, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2032;s:6:"height";i:1169;s:4:"file";s:45:"2020/02/Screenshot-2020-01-24-at-10.45.27.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-01-24-at-10.45.27-300x173.png";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2020-01-24-at-10.45.27-1024x589.png";s:5:"width";i:1024;s:6:"height";i:589;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-01-24-at-10.45.27-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2020-01-24-at-10.45.27-768x442.png";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2020-01-24-at-10.45.27-1536x884.png";s:5:"width";i:1536;s:6:"height";i:884;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(730, 191, '_wp_attached_file', '2020/02/Screenshot-2020-01-24-at-10.45.47.png'),
(731, 191, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2032;s:6:"height";i:1169;s:4:"file";s:45:"2020/02/Screenshot-2020-01-24-at-10.45.47.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-01-24-at-10.45.47-300x173.png";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2020-01-24-at-10.45.47-1024x589.png";s:5:"width";i:1024;s:6:"height";i:589;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-01-24-at-10.45.47-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2020-01-24-at-10.45.47-768x442.png";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2020-01-24-at-10.45.47-1536x884.png";s:5:"width";i:1536;s:6:"height";i:884;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(732, 192, '_wp_attached_file', '2020/02/Screenshot-2020-01-24-at-10.46.24.png'),
(733, 192, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2032;s:6:"height";i:1169;s:4:"file";s:45:"2020/02/Screenshot-2020-01-24-at-10.46.24.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-01-24-at-10.46.24-300x173.png";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2020-01-24-at-10.46.24-1024x589.png";s:5:"width";i:1024;s:6:"height";i:589;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-01-24-at-10.46.24-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2020-01-24-at-10.46.24-768x442.png";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2020-01-24-at-10.46.24-1536x884.png";s:5:"width";i:1536;s:6:"height";i:884;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(734, 193, '_wp_attached_file', '2020/02/Screenshot-2020-01-24-at-10.47.31.png'),
(735, 193, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2032;s:6:"height";i:1169;s:4:"file";s:45:"2020/02/Screenshot-2020-01-24-at-10.47.31.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-01-24-at-10.47.31-300x173.png";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2020-01-24-at-10.47.31-1024x589.png";s:5:"width";i:1024;s:6:"height";i:589;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-01-24-at-10.47.31-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2020-01-24-at-10.47.31-768x442.png";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2020-01-24-at-10.47.31-1536x884.png";s:5:"width";i:1536;s:6:"height";i:884;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(736, 194, '_wp_attached_file', '2020/02/Screenshot-2020-01-24-at-10.47.53.png'),
(737, 194, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2032;s:6:"height";i:1169;s:4:"file";s:45:"2020/02/Screenshot-2020-01-24-at-10.47.53.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-01-24-at-10.47.53-300x173.png";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2020-01-24-at-10.47.53-1024x589.png";s:5:"width";i:1024;s:6:"height";i:589;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-01-24-at-10.47.53-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2020-01-24-at-10.47.53-768x442.png";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2020-01-24-at-10.47.53-1536x884.png";s:5:"width";i:1536;s:6:"height";i:884;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(738, 195, '_wp_attached_file', '2020/02/Screenshot-2020-01-24-at-10.48.36.png'),
(739, 195, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2032;s:6:"height";i:1169;s:4:"file";s:45:"2020/02/Screenshot-2020-01-24-at-10.48.36.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-01-24-at-10.48.36-300x173.png";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2020-01-24-at-10.48.36-1024x589.png";s:5:"width";i:1024;s:6:"height";i:589;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-01-24-at-10.48.36-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2020-01-24-at-10.48.36-768x442.png";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2020-01-24-at-10.48.36-1536x884.png";s:5:"width";i:1536;s:6:"height";i:884;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(740, 186, 'start_date', 'January 2018'),
(741, 186, '_start_date', 'field_5e203b22c64ac'),
(742, 186, 'end_date', 'July 2019'),
(743, 186, '_end_date', 'field_5e203b36c64ad'),
(744, 186, 'color_1', '#00586f'),
(745, 186, '_color_1', 'field_5e2408b533af0'),
(746, 186, 'color_2', '#f54b28'),
(747, 186, '_color_2', 'field_5e2408d133af1'),
(748, 186, 'color_3', '#009fa2'),
(749, 186, '_color_3', 'field_5e2408ec33af2'),
(750, 186, 'technologies', '.NET Sitecore, HTML5, JQuery, SASS, Gulp'),
(751, 186, '_technologies', 'field_5e203b46c64ae'),
(752, 186, 'my_role', ''),
(753, 186, '_my_role', 'field_5e203b76c64af'),
(754, 186, 'cover_desk', '187'),
(755, 186, '_cover_desk', 'field_5e21672a9ef76'),
(756, 186, 'show_desk', 'a:1:{i:0;s:4:"show";}'),
(757, 186, '_show_desk', 'field_5e22c92fbe1be'),
(758, 186, 'cover_tab', ''),
(759, 186, '_cover_tab', 'field_5e2167579ef77'),
(760, 186, 'show_tab', ''),
(761, 186, '_show_tab', 'field_5e22cab36fe80'),
(762, 186, 'cover_mob', ''),
(763, 186, '_cover_mob', 'field_5e2167889ef78'),
(764, 186, 'show_mob', ''),
(765, 186, '_show_mob', 'field_5e22cac86fe81'),
(766, 186, 'gallery_desk', '196,197,195,194,193,192,191,190,189,188'),
(767, 196, '_wp_attached_file', '2020/02/Screenshot-2020-02-03-at-22.14.01.png'),
(768, 196, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2032;s:6:"height";i:1169;s:4:"file";s:45:"2020/02/Screenshot-2020-02-03-at-22.14.01.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.14.01-300x173.png";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2020-02-03-at-22.14.01-1024x589.png";s:5:"width";i:1024;s:6:"height";i:589;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.14.01-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.14.01-768x442.png";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2020-02-03-at-22.14.01-1536x884.png";s:5:"width";i:1536;s:6:"height";i:884;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(769, 197, '_wp_attached_file', '2020/02/Screenshot-2020-02-03-at-22.14.07.png'),
(770, 197, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2032;s:6:"height";i:1169;s:4:"file";s:45:"2020/02/Screenshot-2020-02-03-at-22.14.07.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.14.07-300x173.png";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2020-02-03-at-22.14.07-1024x589.png";s:5:"width";i:1024;s:6:"height";i:589;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.14.07-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.14.07-768x442.png";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2020-02-03-at-22.14.07-1536x884.png";s:5:"width";i:1536;s:6:"height";i:884;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(771, 198, '_edit_last', '1'),
(772, 198, '_edit_lock', '1580761593:1'),
(773, 199, '_wp_attached_file', '2020/02/cover-pic.jpg'),
(774, 199, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2557;s:6:"height";i:1306;s:4:"file";s:21:"2020/02/cover-pic.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:21:"cover-pic-300x153.jpg";s:5:"width";i:300;s:6:"height";i:153;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"cover-pic-1024x523.jpg";s:5:"width";i:1024;s:6:"height";i:523;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:21:"cover-pic-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"cover-pic-768x392.jpg";s:5:"width";i:768;s:6:"height";i:392;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:22:"cover-pic-1536x785.jpg";s:5:"width";i:1536;s:6:"height";i:785;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:23:"cover-pic-2048x1046.jpg";s:5:"width";i:2048;s:6:"height";i:1046;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(775, 200, '_wp_attached_file', '2020/02/Screenshot-2020-02-03-at-22.17.41.png'),
(776, 200, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2032;s:6:"height";i:1169;s:4:"file";s:45:"2020/02/Screenshot-2020-02-03-at-22.17.41.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.17.41-300x173.png";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2020-02-03-at-22.17.41-1024x589.png";s:5:"width";i:1024;s:6:"height";i:589;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.17.41-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.17.41-768x442.png";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2020-02-03-at-22.17.41-1536x884.png";s:5:"width";i:1536;s:6:"height";i:884;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(777, 201, '_wp_attached_file', '2020/02/Screenshot-2020-02-03-at-22.18.14.png'),
(778, 201, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1988;s:6:"height";i:1125;s:4:"file";s:45:"2020/02/Screenshot-2020-02-03-at-22.18.14.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.18.14-300x170.png";s:5:"width";i:300;s:6:"height";i:170;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2020-02-03-at-22.18.14-1024x579.png";s:5:"width";i:1024;s:6:"height";i:579;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.18.14-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.18.14-768x435.png";s:5:"width";i:768;s:6:"height";i:435;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2020-02-03-at-22.18.14-1536x869.png";s:5:"width";i:1536;s:6:"height";i:869;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(779, 202, '_wp_attached_file', '2020/02/Screenshot-2020-02-03-at-22.18.40.png'),
(780, 202, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2032;s:6:"height";i:1169;s:4:"file";s:45:"2020/02/Screenshot-2020-02-03-at-22.18.40.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.18.40-300x173.png";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2020-02-03-at-22.18.40-1024x589.png";s:5:"width";i:1024;s:6:"height";i:589;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.18.40-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.18.40-768x442.png";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2020-02-03-at-22.18.40-1536x884.png";s:5:"width";i:1536;s:6:"height";i:884;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(781, 203, '_wp_attached_file', '2020/02/Screenshot-2020-02-03-at-22.18.50.png'),
(782, 203, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2032;s:6:"height";i:1169;s:4:"file";s:45:"2020/02/Screenshot-2020-02-03-at-22.18.50.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.18.50-300x173.png";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2020-02-03-at-22.18.50-1024x589.png";s:5:"width";i:1024;s:6:"height";i:589;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.18.50-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.18.50-768x442.png";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2020-02-03-at-22.18.50-1536x884.png";s:5:"width";i:1536;s:6:"height";i:884;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(783, 204, '_wp_attached_file', '2020/02/Screenshot-2020-02-03-at-22.19.07.png'),
(784, 204, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2032;s:6:"height";i:1169;s:4:"file";s:45:"2020/02/Screenshot-2020-02-03-at-22.19.07.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.19.07-300x173.png";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2020-02-03-at-22.19.07-1024x589.png";s:5:"width";i:1024;s:6:"height";i:589;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.19.07-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.19.07-768x442.png";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2020-02-03-at-22.19.07-1536x884.png";s:5:"width";i:1536;s:6:"height";i:884;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(785, 205, '_wp_attached_file', '2020/02/Screenshot-2020-02-03-at-22.19.41.png'),
(786, 205, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2032;s:6:"height";i:1169;s:4:"file";s:45:"2020/02/Screenshot-2020-02-03-at-22.19.41.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.19.41-300x173.png";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2020-02-03-at-22.19.41-1024x589.png";s:5:"width";i:1024;s:6:"height";i:589;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.19.41-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.19.41-768x442.png";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2020-02-03-at-22.19.41-1536x884.png";s:5:"width";i:1536;s:6:"height";i:884;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(787, 206, '_wp_attached_file', '2020/02/Screenshot-2020-02-03-at-22.21.01.png'),
(788, 206, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2032;s:6:"height";i:1169;s:4:"file";s:45:"2020/02/Screenshot-2020-02-03-at-22.21.01.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.21.01-300x173.png";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2020-02-03-at-22.21.01-1024x589.png";s:5:"width";i:1024;s:6:"height";i:589;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.21.01-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.21.01-768x442.png";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2020-02-03-at-22.21.01-1536x884.png";s:5:"width";i:1536;s:6:"height";i:884;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(789, 207, '_wp_attached_file', '2020/02/Screenshot-2020-02-03-at-22.21.17.png'),
(790, 207, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2032;s:6:"height";i:1169;s:4:"file";s:45:"2020/02/Screenshot-2020-02-03-at-22.21.17.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.21.17-300x173.png";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2020-02-03-at-22.21.17-1024x589.png";s:5:"width";i:1024;s:6:"height";i:589;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.21.17-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.21.17-768x442.png";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2020-02-03-at-22.21.17-1536x884.png";s:5:"width";i:1536;s:6:"height";i:884;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(791, 208, '_wp_attached_file', '2020/02/Screenshot-2020-02-03-at-22.21.42.png'),
(792, 208, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2032;s:6:"height";i:1169;s:4:"file";s:45:"2020/02/Screenshot-2020-02-03-at-22.21.42.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.21.42-300x173.png";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2020-02-03-at-22.21.42-1024x589.png";s:5:"width";i:1024;s:6:"height";i:589;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.21.42-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.21.42-768x442.png";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2020-02-03-at-22.21.42-1536x884.png";s:5:"width";i:1536;s:6:"height";i:884;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(793, 209, '_wp_attached_file', '2020/02/Screenshot-2020-02-03-at-22.21.57.png'),
(794, 209, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2032;s:6:"height";i:1169;s:4:"file";s:45:"2020/02/Screenshot-2020-02-03-at-22.21.57.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.21.57-300x173.png";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2020-02-03-at-22.21.57-1024x589.png";s:5:"width";i:1024;s:6:"height";i:589;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.21.57-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.21.57-768x442.png";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2020-02-03-at-22.21.57-1536x884.png";s:5:"width";i:1536;s:6:"height";i:884;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(795, 210, '_wp_attached_file', '2020/02/Screenshot-2020-02-03-at-22.22.02.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(796, 210, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2032;s:6:"height";i:1169;s:4:"file";s:45:"2020/02/Screenshot-2020-02-03-at-22.22.02.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.22.02-300x173.png";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:46:"Screenshot-2020-02-03-at-22.22.02-1024x589.png";s:5:"width";i:1024;s:6:"height";i:589;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.22.02-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:45:"Screenshot-2020-02-03-at-22.22.02-768x442.png";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:46:"Screenshot-2020-02-03-at-22.22.02-1536x884.png";s:5:"width";i:1536;s:6:"height";i:884;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(797, 198, 'start_date', 'June 2017'),
(798, 198, '_start_date', 'field_5e203b22c64ac'),
(799, 198, 'end_date', 'January 2018'),
(800, 198, '_end_date', 'field_5e203b36c64ad'),
(801, 198, 'color_1', '#f64440'),
(802, 198, '_color_1', 'field_5e2408b533af0'),
(803, 198, 'color_2', '#000000'),
(804, 198, '_color_2', 'field_5e2408d133af1'),
(805, 198, 'color_3', '#fec540'),
(806, 198, '_color_3', 'field_5e2408ec33af2'),
(807, 198, 'technologies', 'Drupal 8, Bootstrap 4, JQuery, HTML 5, SASS, Gulp'),
(808, 198, '_technologies', 'field_5e203b46c64ae'),
(809, 198, 'my_role', ''),
(810, 198, '_my_role', 'field_5e203b76c64af'),
(811, 198, 'cover_desk', '199'),
(812, 198, '_cover_desk', 'field_5e21672a9ef76'),
(813, 198, 'show_desk', 'a:1:{i:0;s:4:"show";}'),
(814, 198, '_show_desk', 'field_5e22c92fbe1be'),
(815, 198, 'cover_tab', ''),
(816, 198, '_cover_tab', 'field_5e2167579ef77'),
(817, 198, 'show_tab', ''),
(818, 198, '_show_tab', 'field_5e22cab36fe80'),
(819, 198, 'cover_mob', ''),
(820, 198, '_cover_mob', 'field_5e2167889ef78'),
(821, 198, 'show_mob', ''),
(822, 198, '_show_mob', 'field_5e22cac86fe81'),
(823, 198, 'gallery_desk', '200,210,209,208,207,206,205,204,203,202,201');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-05-27 07:18:31', '2019-05-27 07:18:31', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-05-27 07:18:31', '2019-05-27 07:18:31', '', 0, 'http://localhost/kdee/kdee.co.za/3_root/?p=1', 0, 'post', '', 1),
(2, 1, '2019-05-27 07:18:31', '2019-05-27 07:18:31', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://localhost/kdee/kdee.co.za/3_root/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-05-27 07:18:31', '2019-05-27 07:18:31', '', 0, 'http://localhost/kdee/kdee.co.za/3_root/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-05-27 07:18:31', '2019-05-27 07:18:31', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/kdee/kdee.co.za/3_root.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-05-27 07:18:31', '2019-05-27 07:18:31', '', 0, 'http://localhost/kdee/kdee.co.za/3_root/?page_id=3', 0, 'page', '', 0),
(8, 1, '2020-01-16 10:37:04', '2020-01-16 10:37:04', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:8:"projects";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:1:{i:0;s:14:"featured_image";}s:11:"description";s:0:"";}', 'Projects', 'projects', 'publish', 'closed', 'closed', '', 'group_5e203b182450e', '', '', '2020-01-20 19:21:54', '2020-01-20 19:21:54', '', 0, 'http://localhost/kdee/kdee.co.za/3_root/?post_type=acf-field-group&#038;p=8', 0, 'acf-field-group', '', 0),
(9, 1, '2020-01-16 10:37:04', '2020-01-16 10:37:04', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Start Date', 'start_date', 'publish', 'closed', 'closed', '', 'field_5e203b22c64ac', '', '', '2020-01-16 10:37:04', '2020-01-16 10:37:04', '', 8, 'http://localhost/kdee/kdee.co.za/3_root/?post_type=acf-field&p=9', 0, 'acf-field', '', 0),
(10, 1, '2020-01-16 10:37:04', '2020-01-16 10:37:04', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'End Date', 'end_date', 'publish', 'closed', 'closed', '', 'field_5e203b36c64ad', '', '', '2020-01-16 10:37:04', '2020-01-16 10:37:04', '', 8, 'http://localhost/kdee/kdee.co.za/3_root/?post_type=acf-field&p=10', 1, 'acf-field', '', 0),
(11, 1, '2020-01-16 10:37:04', '2020-01-16 10:37:04', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Nuts and Bolts', 'technologies', 'publish', 'closed', 'closed', '', 'field_5e203b46c64ae', '', '', '2020-01-19 07:45:05', '2020-01-19 07:45:05', '', 8, 'http://localhost/kdee/kdee.co.za/3_root/?post_type=acf-field&#038;p=11', 5, 'acf-field', '', 0),
(12, 1, '2020-01-16 10:37:04', '2020-01-16 10:37:04', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:0;}', 'My Role', 'my_role', 'publish', 'closed', 'closed', '', 'field_5e203b76c64af', '', '', '2020-01-19 07:45:05', '2020-01-19 07:45:05', '', 8, 'http://localhost/kdee/kdee.co.za/3_root/?post_type=acf-field&#038;p=12', 6, 'acf-field', '', 0),
(13, 1, '2020-01-16 10:38:20', '2020-01-16 10:38:20', 'a:7:{s:4:"type";s:13:"photo_gallery";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:14:"fields[gallery";a:1:{s:10:"edit_modal";s:7:"Default";}s:10:"edit_modal";s:7:"Default";}', 'Gallery Desktop', 'gallery_desk', 'publish', 'closed', 'closed', '', 'field_5e203ce8d908c', '', '', '2020-01-19 07:45:05', '2020-01-19 07:45:05', '', 8, 'http://localhost/kdee/kdee.co.za/3_root/?post_type=acf-field&#038;p=13', 10, 'acf-field', '', 0),
(14, 1, '2008-01-01 00:00:49', '2008-01-01 00:00:49', 'Public facing website for Montana Vikings Basketball Club.\r\n\r\nResponsive website. Passion project that has been ongoing since 2008.', 'Montana Vikings Basketball Club', '', 'publish', 'closed', 'closed', '', 'mvbc', '', '', '2020-01-23 18:48:01', '2020-01-23 18:48:01', '', 0, 'http://localhost/kdee/kdee.co.za/3_root/?post_type=projects&#038;p=14', 0, 'projects', '', 0),
(15, 1, '2020-01-16 10:41:42', '2020-01-16 10:41:42', '', 'Screenshot 2019-02-27 at 23.11.46', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-02-27-at-23-11-46', '', '', '2020-01-16 10:41:42', '2020-01-16 10:41:42', '', 14, 'http://localhost/kdee/kdee.co.za/3_root/wp-content/uploads/2020/01/Screenshot-2019-02-27-at-23.11.46.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2020-01-16 10:41:44', '2020-01-16 10:41:44', '', 'Screenshot 2019-02-27 at 23.12.16', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-02-27-at-23-12-16', '', '', '2020-01-16 10:41:44', '2020-01-16 10:41:44', '', 14, 'http://localhost/kdee/kdee.co.za/3_root/wp-content/uploads/2020/01/Screenshot-2019-02-27-at-23.12.16.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2020-01-16 10:41:45', '2020-01-16 10:41:45', '', 'Screenshot 2019-02-27 at 23.12.50', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-02-27-at-23-12-50', '', '', '2020-01-16 10:41:45', '2020-01-16 10:41:45', '', 14, 'http://localhost/kdee/kdee.co.za/3_root/wp-content/uploads/2020/01/Screenshot-2019-02-27-at-23.12.50.png', 0, 'attachment', 'image/png', 0),
(18, 1, '2020-01-16 10:41:46', '2020-01-16 10:41:46', '', 'Screenshot 2019-02-27 at 23.14.56', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-02-27-at-23-14-56', '', '', '2020-01-16 10:41:46', '2020-01-16 10:41:46', '', 14, 'http://localhost/kdee/kdee.co.za/3_root/wp-content/uploads/2020/01/Screenshot-2019-02-27-at-23.14.56.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2020-01-16 10:41:47', '2020-01-16 10:41:47', '', 'Screenshot 2019-02-27 at 23.17.39', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-02-27-at-23-17-39', '', '', '2020-01-16 10:41:47', '2020-01-16 10:41:47', '', 14, 'http://localhost/kdee/kdee.co.za/3_root/wp-content/uploads/2020/01/Screenshot-2019-02-27-at-23.17.39.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2020-01-16 10:41:48', '2020-01-16 10:41:48', '', 'Screenshot 2019-02-27 at 23.18.08', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-02-27-at-23-18-08', '', '', '2020-01-16 10:41:48', '2020-01-16 10:41:48', '', 14, 'http://localhost/kdee/kdee.co.za/3_root/wp-content/uploads/2020/01/Screenshot-2019-02-27-at-23.18.08.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2020-01-16 10:41:50', '2020-01-16 10:41:50', '', 'Screenshot 2019-02-27 at 23.18.57', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-02-27-at-23-18-57', '', '', '2020-01-16 10:41:50', '2020-01-16 10:41:50', '', 14, 'http://localhost/kdee/kdee.co.za/3_root/wp-content/uploads/2020/01/Screenshot-2019-02-27-at-23.18.57.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2020-01-16 10:41:51', '2020-01-16 10:41:51', '', 'Screenshot 2019-02-27 at 23.19.42', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-02-27-at-23-19-42', '', '', '2020-01-16 10:41:51', '2020-01-16 10:41:51', '', 14, 'http://localhost/kdee/kdee.co.za/3_root/wp-content/uploads/2020/01/Screenshot-2019-02-27-at-23.19.42.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2020-01-16 10:41:52', '2020-01-16 10:41:52', '', 'Screenshot 2019-02-27 at 23.19.58', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-02-27-at-23-19-58', '', '', '2020-01-16 10:41:52', '2020-01-16 10:41:52', '', 14, 'http://localhost/kdee/kdee.co.za/3_root/wp-content/uploads/2020/01/Screenshot-2019-02-27-at-23.19.58.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2020-01-16 10:41:54', '2020-01-16 10:41:54', '', 'Screenshot 2019-02-27 at 23.21.09', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-02-27-at-23-21-09', '', '', '2020-01-16 10:41:54', '2020-01-16 10:41:54', '', 14, 'http://localhost/kdee/kdee.co.za/3_root/wp-content/uploads/2020/01/Screenshot-2019-02-27-at-23.21.09.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2010-06-01 00:00:57', '2010-06-01 00:00:57', '<h3>myvirginactive</h3>\r\nWeb based wellness management solution for clients of Virgin. Project developed by Virgin UK for SA market.', 'Virgin Life Care', '', 'publish', 'closed', 'closed', '', '2', '', '', '2020-01-20 20:00:49', '2020-01-20 20:00:49', '', 0, 'http://localhost/kdee/kdee.co.za/3_root/?post_type=projects&#038;p=25', 0, 'projects', '', 0),
(26, 1, '2020-01-16 11:09:49', '2020-01-16 11:09:49', '', 'Projects', '', 'publish', 'closed', 'closed', '', 'projects', '', '', '2020-01-16 11:10:53', '2020-01-16 11:10:53', '', 0, 'http://localhost/kdee/kdee.co.za/3_root/?page_id=26', 0, 'page', '', 0),
(27, 1, '2020-01-16 11:09:49', '2020-01-16 11:09:49', '', 'Projects', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2020-01-16 11:09:49', '2020-01-16 11:09:49', '', 26, 'http://localhost/kdee/kdee.co.za/3_root/?p=27', 0, 'revision', '', 0),
(28, 1, '2020-01-16 15:10:31', '2020-01-16 15:10:31', 'a:7:{s:4:"type";s:13:"photo_gallery";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:14:"fields[gallery";a:1:{s:10:"edit_modal";s:7:"Default";}s:10:"edit_modal";s:7:"Default";}', 'Gallery Tablet', 'gallery_tab', 'publish', 'closed', 'closed', '', 'field_5e207cb887270', '', '', '2020-01-19 07:45:05', '2020-01-19 07:45:05', '', 8, 'http://localhost/kdee/kdee.co.za/3_root/?post_type=acf-field&#038;p=28', 14, 'acf-field', '', 0),
(29, 1, '2020-01-16 15:10:31', '2020-01-16 15:10:31', 'a:7:{s:4:"type";s:13:"photo_gallery";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:14:"fields[gallery";a:1:{s:10:"edit_modal";s:7:"Default";}s:10:"edit_modal";s:7:"Default";}', 'Gallery Mobile', 'gallery_mob', 'publish', 'closed', 'closed', '', 'field_5e207cb58726f', '', '', '2020-01-19 07:45:05', '2020-01-19 07:45:05', '', 8, 'http://localhost/kdee/kdee.co.za/3_root/?post_type=acf-field&#038;p=29', 18, 'acf-field', '', 0),
(30, 1, '2020-01-17 07:52:01', '2020-01-17 07:52:01', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Desktop Cover Picture', 'cover_desk', 'publish', 'closed', 'closed', '', 'field_5e21672a9ef76', '', '', '2020-01-19 07:45:05', '2020-01-19 07:45:05', '', 8, 'http://localhost/kdee/kdee.co.za/3_root/?post_type=acf-field&#038;p=30', 8, 'acf-field', '', 0),
(31, 1, '2020-01-17 07:52:01', '2020-01-17 07:52:01', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Tablet Cover Picture', 'cover_tab', 'publish', 'closed', 'closed', '', 'field_5e2167579ef77', '', '', '2020-01-19 07:45:05', '2020-01-19 07:45:05', '', 8, 'http://localhost/kdee/kdee.co.za/3_root/?post_type=acf-field&#038;p=31', 12, 'acf-field', '', 0),
(32, 1, '2020-01-17 07:52:01', '2020-01-17 07:52:01', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Mobile Cover Picture', 'cover_mob', 'publish', 'closed', 'closed', '', 'field_5e2167889ef78', '', '', '2020-01-19 07:45:05', '2020-01-19 07:45:05', '', 8, 'http://localhost/kdee/kdee.co.za/3_root/?post_type=acf-field&#038;p=32', 16, 'acf-field', '', 0),
(33, 1, '2020-01-17 15:59:17', '2020-01-17 15:59:17', '', 'cover pic', '', 'inherit', 'open', 'closed', '', 'cover-pic', '', '', '2020-01-17 15:59:17', '2020-01-17 15:59:17', '', 14, 'http://localhost/kdee/kdee.co.za/3_root/wp-content/uploads/2020/01/cover-pic.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2020-01-18 09:01:24', '2020-01-18 09:01:24', 'a:12:{s:4:"type";s:8:"checkbox";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:1:{s:4:"show";s:12:"Show Gallery";}s:12:"allow_custom";i:0;s:13:"default_value";a:0:{}s:6:"layout";s:8:"vertical";s:6:"toggle";i:0;s:13:"return_format";s:5:"value";s:11:"save_custom";i:0;}', 'Show this gallery', 'show_desk', 'publish', 'closed', 'closed', '', 'field_5e22c92fbe1be', '', '', '2020-01-19 07:45:05', '2020-01-19 07:45:05', '', 8, 'http://localhost/kdee/kdee.co.za/3_root/?post_type=acf-field&#038;p=34', 9, 'acf-field', '', 0),
(35, 1, '2020-01-18 09:11:17', '2020-01-18 09:11:17', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Desktop Gallery', '', 'publish', 'closed', 'closed', '', 'field_5e22cb186fe82', '', '', '2020-01-19 07:45:05', '2020-01-19 07:45:05', '', 8, 'http://localhost/kdee/kdee.co.za/3_root/?post_type=acf-field&#038;p=35', 7, 'acf-field', '', 0),
(36, 1, '2020-01-18 09:11:17', '2020-01-18 09:11:17', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Tablet Gallery', '', 'publish', 'closed', 'closed', '', 'field_5e22cb496fe83', '', '', '2020-01-19 07:45:05', '2020-01-19 07:45:05', '', 8, 'http://localhost/kdee/kdee.co.za/3_root/?post_type=acf-field&#038;p=36', 11, 'acf-field', '', 0),
(37, 1, '2020-01-18 09:11:17', '2020-01-18 09:11:17', 'a:12:{s:4:"type";s:8:"checkbox";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:1:{s:4:"show";s:12:"Show Gallery";}s:12:"allow_custom";i:0;s:13:"default_value";a:0:{}s:6:"layout";s:8:"vertical";s:6:"toggle";i:0;s:13:"return_format";s:5:"value";s:11:"save_custom";i:0;}', 'Show this gallery', 'show_tab', 'publish', 'closed', 'closed', '', 'field_5e22cab36fe80', '', '', '2020-01-19 07:45:05', '2020-01-19 07:45:05', '', 8, 'http://localhost/kdee/kdee.co.za/3_root/?post_type=acf-field&#038;p=37', 13, 'acf-field', '', 0),
(38, 1, '2020-01-18 09:11:17', '2020-01-18 09:11:17', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Mobile Gallery', '', 'publish', 'closed', 'closed', '', 'field_5e22cb966fe84', '', '', '2020-01-19 07:45:05', '2020-01-19 07:45:05', '', 8, 'http://localhost/kdee/kdee.co.za/3_root/?post_type=acf-field&#038;p=38', 15, 'acf-field', '', 0),
(39, 1, '2020-01-18 09:11:17', '2020-01-18 09:11:17', 'a:12:{s:4:"type";s:8:"checkbox";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:1:{s:4:"show";s:12:"Show Gallery";}s:12:"allow_custom";i:0;s:13:"default_value";a:0:{}s:6:"layout";s:8:"vertical";s:6:"toggle";i:0;s:13:"return_format";s:5:"value";s:11:"save_custom";i:0;}', 'Show this gallery', 'show_mob', 'publish', 'closed', 'closed', '', 'field_5e22cac86fe81', '', '', '2020-01-19 07:45:05', '2020-01-19 07:45:05', '', 8, 'http://localhost/kdee/kdee.co.za/3_root/?post_type=acf-field&#038;p=39', 17, 'acf-field', '', 0),
(40, 1, '2020-01-19 07:45:05', '2020-01-19 07:45:05', 'a:6:{s:4:"type";s:12:"color_picker";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";}', 'Primary Color', 'color_1', 'publish', 'closed', 'closed', '', 'field_5e2408b533af0', '', '', '2020-01-20 19:21:23', '2020-01-20 19:21:23', '', 8, 'http://localhost/kdee/kdee.co.za/3_root/?post_type=acf-field&#038;p=40', 2, 'acf-field', '', 0),
(41, 1, '2020-01-19 07:45:05', '2020-01-19 07:45:05', 'a:6:{s:4:"type";s:12:"color_picker";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";}', 'Secondary Color', 'color_2', 'publish', 'closed', 'closed', '', 'field_5e2408d133af1', '', '', '2020-01-20 19:21:23', '2020-01-20 19:21:23', '', 8, 'http://localhost/kdee/kdee.co.za/3_root/?post_type=acf-field&#038;p=41', 3, 'acf-field', '', 0),
(42, 1, '2020-01-19 07:45:05', '2020-01-19 07:45:05', 'a:6:{s:4:"type";s:12:"color_picker";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";}', 'Tertiary Color', 'color_3', 'publish', 'closed', 'closed', '', 'field_5e2408ec33af2', '', '', '2020-01-20 19:21:23', '2020-01-20 19:21:23', '', 8, 'http://localhost/kdee/kdee.co.za/3_root/?post_type=acf-field&#038;p=42', 4, 'acf-field', '', 0),
(43, 1, '2020-01-19 07:59:15', '2020-01-19 07:59:15', '', 'Screenshot 2020-01-19 at 09.57.25', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-01-19-at-09-57-25', '', '', '2020-01-19 07:59:15', '2020-01-19 07:59:15', '', 14, 'http://localhost/kdee/kdee.co.za/3_root/wp-content/uploads/2020/01/Screenshot-2020-01-19-at-09.57.25.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2020-01-19 08:08:34', '2020-01-19 08:08:34', '', 'cover tablet', '', 'inherit', 'open', 'closed', '', 'cover-tablet', '', '', '2020-01-19 08:08:34', '2020-01-19 08:08:34', '', 14, 'http://localhost/kdee/kdee.co.za/3_root/wp-content/uploads/2020/01/cover-tablet.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2020-01-20 19:19:37', '2020-01-20 19:19:37', 'Public facing website for Montana Vikings Basketball Club.\n\nResponsive website. Passion project that has been ongoing since 2008.', 'Montana Vikings Basketball Club', '', 'inherit', 'closed', 'closed', '', '14-autosave-v1', '', '', '2020-01-20 19:19:37', '2020-01-20 19:19:37', '', 14, 'http://staging.kdee.co.za/kdee.co.za/?p=45', 0, 'revision', '', 0),
(47, 1, '2020-01-20 19:34:10', '2020-01-20 19:34:10', '', 'Screenshot 2020-01-20 at 21.30.35', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-01-20-at-21-30-35', '', '', '2020-01-20 19:34:10', '2020-01-20 19:34:10', '', 14, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2011/01/Screenshot-2020-01-20-at-21.30.35.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2020-01-20 19:34:11', '2020-01-20 19:34:11', '', 'Screenshot 2020-01-20 at 21.31.00', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-01-20-at-21-31-00', '', '', '2020-01-20 19:34:11', '2020-01-20 19:34:11', '', 14, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2011/01/Screenshot-2020-01-20-at-21.31.00.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2020-01-20 19:34:12', '2020-01-20 19:34:12', '', 'Screenshot 2020-01-20 at 21.33.11', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-01-20-at-21-33-11', '', '', '2020-01-20 19:34:12', '2020-01-20 19:34:12', '', 14, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2011/01/Screenshot-2020-01-20-at-21.33.11.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2020-01-20 19:35:45', '2020-01-20 19:35:45', '', 'Screenshot 2020-01-20 at 21.34.53', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-01-20-at-21-34-53', '', '', '2020-01-20 19:35:45', '2020-01-20 19:35:45', '', 14, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2011/01/Screenshot-2020-01-20-at-21.34.53.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2020-01-20 19:39:12', '2020-01-20 19:39:12', '2', 'Virgin Life Care', '', 'inherit', 'closed', 'closed', '', '25-autosave-v1', '', '', '2020-01-20 19:39:12', '2020-01-20 19:39:12', '', 25, 'http://staging.kdee.co.za/kdee.co.za/?p=51', 0, 'revision', '', 0),
(52, 1, '2011-01-20 00:00:31', '2011-01-20 00:00:31', '<h3>Global One Project</h3>\r\nClient Relations Management Solution deployed to consultants in Capitec Banks throughout South Africa.', 'Capitec', '', 'publish', 'closed', 'closed', '', 'capitec', '', '', '2020-01-20 19:57:52', '2020-01-20 19:57:52', '', 0, 'http://staging.kdee.co.za/kdee.co.za/?post_type=projects&#038;p=52', 0, 'projects', '', 0),
(53, 1, '2020-01-20 19:56:47', '2020-01-20 19:56:47', '', 'capitec-1', '', 'inherit', 'open', 'closed', '', 'capitec-1', '', '', '2020-01-20 19:56:47', '2020-01-20 19:56:47', '', 52, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/capitec-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2020-01-20 19:56:48', '2020-01-20 19:56:48', '', 'capitec-2', '', 'inherit', 'open', 'closed', '', 'capitec-2', '', '', '2020-01-20 19:56:48', '2020-01-20 19:56:48', '', 52, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/capitec-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2020-01-20 19:58:42', '2020-01-20 19:58:42', '', 'vlc-1', '', 'inherit', 'open', 'closed', '', 'vlc-1', '', '', '2020-01-20 19:58:42', '2020-01-20 19:58:42', '', 25, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2010/06/vlc-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2020-01-20 20:00:44', '2020-01-20 20:00:44', '', 'vlc-cover', '', 'inherit', 'open', 'closed', '', 'vlc-cover', '', '', '2020-01-20 20:00:44', '2020-01-20 20:00:44', '', 25, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2010/06/vlc-cover.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2011-01-01 00:00:00', '2011-01-01 00:00:00', '<h4>colmex and greenlight uk</h4>\r\nOld Mutual Life Products launched in South America, and the Greenlight Project intended for the UK.', 'Old Mutual', '', 'publish', 'closed', 'closed', '', 'old-mutual', '', '', '2020-01-24 08:59:25', '2020-01-24 08:59:25', '', 0, 'http://staging.kdee.co.za/kdee.co.za/?post_type=projects&#038;p=57', 0, 'projects', '', 0),
(58, 1, '2020-01-20 20:03:20', '2020-01-20 20:03:20', '', 'om-1', '', 'inherit', 'open', 'closed', '', 'om-1', '', '', '2020-01-20 20:03:20', '2020-01-20 20:03:20', '', 57, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/om-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2020-01-20 20:03:21', '2020-01-20 20:03:21', '', 'om-2', '', 'inherit', 'open', 'closed', '', 'om-2', '', '', '2020-01-20 20:03:21', '2020-01-20 20:03:21', '', 57, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/om-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2020-01-20 20:05:10', '2020-01-20 20:05:10', '', 'om-cover', '', 'inherit', 'open', 'closed', '', 'om-cover', '', '', '2020-01-20 20:05:10', '2020-01-20 20:05:10', '', 57, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/om-cover.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2013-01-01 00:00:03', '2013-01-01 00:00:03', '<h4>Public facing website for the V&amp;A Waterfront.</h4>\r\nAt that time, this was Airborne\'s biggest sharepoint implementation.', 'V&A Waterfront', '', 'publish', 'closed', 'closed', '', 'va-waterfront', '', '', '2020-01-24 08:58:08', '2020-01-24 08:58:08', '', 0, 'http://staging.kdee.co.za/kdee.co.za/?post_type=projects&#038;p=61', 0, 'projects', '', 0),
(62, 1, '2020-01-20 20:09:33', '2020-01-20 20:09:33', '', 'waterfront-1', '', 'inherit', 'open', 'closed', '', 'waterfront-1', '', '', '2020-01-20 20:09:33', '2020-01-20 20:09:33', '', 61, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/waterfront-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2020-01-20 20:09:33', '2020-01-20 20:09:33', '', 'waterfront-2', '', 'inherit', 'open', 'closed', '', 'waterfront-2', '', '', '2020-01-20 20:09:33', '2020-01-20 20:09:33', '', 61, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/waterfront-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2020-01-20 20:09:33', '2020-01-20 20:09:33', '', 'waterfront-cover', '', 'inherit', 'open', 'closed', '', 'waterfront-cover', '', '', '2020-01-20 20:09:33', '2020-01-20 20:09:33', '', 61, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/waterfront-cover.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2020-01-22 12:29:07', '2020-01-22 12:29:07', '', 'cover-mobi', '', 'inherit', 'open', 'closed', '', 'cover-mobi', '', '', '2020-01-22 12:29:07', '2020-01-22 12:29:07', '', 14, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2008/01/cover-mobi.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2020-01-22 12:33:09', '2020-01-22 12:33:09', '', 'cover pic', '', 'inherit', 'open', 'closed', '', 'cover-pic-2', '', '', '2020-01-22 12:33:09', '2020-01-22 12:33:09', '', 14, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2008/01/cover-pic.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2020-01-22 12:49:30', '2020-01-22 12:49:30', '', 'mobi-1', '', 'inherit', 'open', 'closed', '', 'mobi-1', '', '', '2020-01-22 12:49:30', '2020-01-22 12:49:30', '', 14, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2008/01/mobi-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2020-01-22 12:49:32', '2020-01-22 12:49:32', '', 'mobi-2', '', 'inherit', 'open', 'closed', '', 'mobi-2', '', '', '2020-01-22 12:49:32', '2020-01-22 12:49:32', '', 14, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2008/01/mobi-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2020-01-22 12:49:34', '2020-01-22 12:49:34', '', 'mobi-3', '', 'inherit', 'open', 'closed', '', 'mobi-3', '', '', '2020-01-22 12:49:34', '2020-01-22 12:49:34', '', 14, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2008/01/mobi-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2020-01-22 12:49:38', '2020-01-22 12:49:38', '', 'mobi-5', '', 'inherit', 'open', 'closed', '', 'mobi-5', '', '', '2020-01-22 12:49:38', '2020-01-22 12:49:38', '', 14, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2008/01/mobi-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2020-01-22 12:49:41', '2020-01-22 12:49:41', '', 'mobi-6', '', 'inherit', 'open', 'closed', '', 'mobi-6', '', '', '2020-01-22 12:49:41', '2020-01-22 12:49:41', '', 14, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2008/01/mobi-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2020-01-22 12:54:13', '2020-01-22 12:54:13', '', 'mobi-7', '', 'inherit', 'open', 'closed', '', 'mobi-7', '', '', '2020-01-22 12:54:13', '2020-01-22 12:54:13', '', 14, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2008/01/mobi-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2012-01-01 00:00:35', '2012-01-01 00:00:35', '<h4>executive development public facing website</h4>\r\nPublic facing website for USB-Ed, a division of the University of Stellenbosch Business School', 'USB ED', '', 'publish', 'closed', 'closed', '', 'usb-ed', '', '', '2020-01-24 09:00:10', '2020-01-24 09:00:10', '', 0, 'http://staging.kdee.co.za/kdee.co.za/?post_type=projects&#038;p=75', 0, 'projects', '', 0),
(76, 1, '2020-01-23 14:43:31', '2020-01-23 14:43:31', '', 'cover-desk', '', 'inherit', 'open', 'closed', '', 'cover-desk', '', '', '2020-01-23 14:43:31', '2020-01-23 14:43:31', '', 75, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/cover-desk.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2020-01-23 14:43:46', '2020-01-23 14:43:46', '', 'usbed-1', '', 'inherit', 'open', 'closed', '', 'usbed-1', '', '', '2020-01-23 14:43:46', '2020-01-23 14:43:46', '', 75, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/usbed-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2020-01-23 14:43:47', '2020-01-23 14:43:47', '', 'usbed-2', '', 'inherit', 'open', 'closed', '', 'usbed-2', '', '', '2020-01-23 14:43:47', '2020-01-23 14:43:47', '', 75, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/usbed-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2020-01-23 14:43:48', '2020-01-23 14:43:48', '', 'usbed-3', '', 'inherit', 'open', 'closed', '', 'usbed-3', '', '', '2020-01-23 14:43:48', '2020-01-23 14:43:48', '', 75, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/usbed-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2020-01-23 14:43:48', '2020-01-23 14:43:48', '', 'usbed-4', '', 'inherit', 'open', 'closed', '', 'usbed-4', '', '', '2020-01-23 14:43:48', '2020-01-23 14:43:48', '', 75, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/usbed-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2013-01-01 00:00:28', '2013-01-01 00:00:28', '<h4>business school project</h4>\r\nUSB staff &amp; student intranet, USB public facing website as well as Belpark Campus portal.', 'USB', '', 'publish', 'closed', 'closed', '', 'usb', '', '', '2020-01-24 09:00:34', '2020-01-24 09:00:34', '', 0, 'http://staging.kdee.co.za/kdee.co.za/?post_type=projects&#038;p=81', 0, 'projects', '', 0),
(82, 1, '2020-01-23 15:57:49', '2020-01-23 15:57:49', '', 'cover-desk', '', 'inherit', 'open', 'closed', '', 'cover-desk-2', '', '', '2020-01-23 15:57:49', '2020-01-23 15:57:49', '', 81, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/cover-desk-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2020-01-23 15:58:11', '2020-01-23 15:58:11', '', 'usb-1', '', 'inherit', 'open', 'closed', '', 'usb-1', '', '', '2020-01-23 15:58:11', '2020-01-23 15:58:11', '', 81, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/usb-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2020-01-23 15:58:12', '2020-01-23 15:58:12', '', 'usb-2', '', 'inherit', 'open', 'closed', '', 'usb-2', '', '', '2020-01-23 15:58:12', '2020-01-23 15:58:12', '', 81, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/usb-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2020-01-23 15:58:12', '2020-01-23 15:58:12', '', 'usb-3', '', 'inherit', 'open', 'closed', '', 'usb-3', '', '', '2020-01-23 15:58:12', '2020-01-23 15:58:12', '', 81, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/usb-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2014-08-01 00:00:14', '2014-08-01 00:00:14', '<h4>St John’s College student activity manager</h4>\r\nAndroid and iOS app, and mobi site for parents, students and teachers to manage student activity.', 'Sports Junction', '', 'publish', 'closed', 'closed', '', 'sports-junction', '', '', '2020-01-24 09:01:54', '2020-01-24 09:01:54', '', 0, 'http://staging.kdee.co.za/kdee.co.za/?post_type=projects&#038;p=86', 0, 'projects', '', 0),
(87, 1, '2020-01-23 16:03:30', '2020-01-23 16:03:30', '', 'cover-desk', '', 'inherit', 'open', 'closed', '', 'cover-desk-3', '', '', '2020-01-23 16:03:30', '2020-01-23 16:03:30', '', 86, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/cover-desk-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2020-01-23 16:03:46', '2020-01-23 16:03:46', '', 'stj-9', '', 'inherit', 'open', 'closed', '', 'stj-9', '', '', '2020-01-23 16:03:46', '2020-01-23 16:03:46', '', 86, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/stj-9.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2020-01-23 16:03:47', '2020-01-23 16:03:47', '', 'stj-10', '', 'inherit', 'open', 'closed', '', 'stj-10', '', '', '2020-01-23 16:03:47', '2020-01-23 16:03:47', '', 86, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/stj-10.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2020-01-23 16:04:06', '2020-01-23 16:04:06', '', 'cover-mobi', '', 'inherit', 'open', 'closed', '', 'cover-mobi-2', '', '', '2020-01-23 16:04:06', '2020-01-23 16:04:06', '', 86, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/cover-mobi.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2020-01-23 16:04:26', '2020-01-23 16:04:26', '', 'stj-1', '', 'inherit', 'open', 'closed', '', 'stj-1', '', '', '2020-01-23 16:04:26', '2020-01-23 16:04:26', '', 86, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/stj-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2020-01-23 16:04:28', '2020-01-23 16:04:28', '', 'stj-2', '', 'inherit', 'open', 'closed', '', 'stj-2', '', '', '2020-01-23 16:04:28', '2020-01-23 16:04:28', '', 86, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/stj-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2020-01-23 16:04:30', '2020-01-23 16:04:30', '', 'stj-3', '', 'inherit', 'open', 'closed', '', 'stj-3', '', '', '2020-01-23 16:04:30', '2020-01-23 16:04:30', '', 86, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/stj-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2020-01-23 16:04:32', '2020-01-23 16:04:32', '', 'stj-4', '', 'inherit', 'open', 'closed', '', 'stj-4', '', '', '2020-01-23 16:04:32', '2020-01-23 16:04:32', '', 86, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/stj-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2020-01-23 16:04:33', '2020-01-23 16:04:33', '', 'stj-5', '', 'inherit', 'open', 'closed', '', 'stj-5', '', '', '2020-01-23 16:04:33', '2020-01-23 16:04:33', '', 86, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/stj-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2020-01-23 16:04:35', '2020-01-23 16:04:35', '', 'stj-6', '', 'inherit', 'open', 'closed', '', 'stj-6', '', '', '2020-01-23 16:04:35', '2020-01-23 16:04:35', '', 86, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/stj-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2020-01-23 16:04:37', '2020-01-23 16:04:37', '', 'stj-7', '', 'inherit', 'open', 'closed', '', 'stj-7', '', '', '2020-01-23 16:04:37', '2020-01-23 16:04:37', '', 86, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/stj-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2020-01-23 16:04:39', '2020-01-23 16:04:39', '', 'stj-8', '', 'inherit', 'open', 'closed', '', 'stj-8', '', '', '2020-01-23 16:04:39', '2020-01-23 16:04:39', '', 86, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/stj-8.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2014-10-01 00:00:07', '2014-10-01 00:00:07', '<h4>client public facing website</h4>\r\nPublic facing website for Navigator Films, a film studio, and production company.', 'Navigator Films', '', 'publish', 'closed', 'closed', '', 'navigator-films', '', '', '2020-01-24 09:02:24', '2020-01-24 09:02:24', '', 0, 'http://staging.kdee.co.za/kdee.co.za/?post_type=projects&#038;p=99', 0, 'projects', '', 0),
(100, 1, '2020-01-23 17:33:09', '2020-01-23 17:33:09', '', 'cover-desk', '', 'inherit', 'open', 'closed', '', 'cover-desk-4', '', '', '2020-01-23 17:33:09', '2020-01-23 17:33:09', '', 99, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/cover-desk-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2020-01-23 17:33:54', '2020-01-23 17:33:54', '', 'navigator-1', '', 'inherit', 'open', 'closed', '', 'navigator-1', '', '', '2020-01-23 17:33:54', '2020-01-23 17:33:54', '', 99, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/navigator-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2020-01-23 17:33:54', '2020-01-23 17:33:54', '', 'navigator-2', '', 'inherit', 'open', 'closed', '', 'navigator-2', '', '', '2020-01-23 17:33:54', '2020-01-23 17:33:54', '', 99, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/navigator-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2020-01-23 17:33:55', '2020-01-23 17:33:55', '', 'navigator-3', '', 'inherit', 'open', 'closed', '', 'navigator-3', '', '', '2020-01-23 17:33:55', '2020-01-23 17:33:55', '', 99, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/navigator-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2020-01-23 17:33:55', '2020-01-23 17:33:55', '', 'navigator-4', '', 'inherit', 'open', 'closed', '', 'navigator-4', '', '', '2020-01-23 17:33:55', '2020-01-23 17:33:55', '', 99, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/navigator-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2020-01-23 17:33:55', '2020-01-23 17:33:55', '', 'navigator-5', '', 'inherit', 'open', 'closed', '', 'navigator-5', '', '', '2020-01-23 17:33:55', '2020-01-23 17:33:55', '', 99, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/navigator-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2020-01-23 17:35:34', '2020-01-23 17:35:34', '', 'cover-mobi', '', 'inherit', 'open', 'closed', '', 'cover-mobi-3', '', '', '2020-01-23 17:35:34', '2020-01-23 17:35:34', '', 99, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/cover-mobi-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2020-01-23 17:35:58', '2020-01-23 17:35:58', '', 'nav-1', '', 'inherit', 'open', 'closed', '', 'nav-1', '', '', '2020-01-23 17:35:58', '2020-01-23 17:35:58', '', 99, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/nav-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2020-01-23 17:35:58', '2020-01-23 17:35:58', '', 'nav-2', '', 'inherit', 'open', 'closed', '', 'nav-2', '', '', '2020-01-23 17:35:58', '2020-01-23 17:35:58', '', 99, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/nav-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2020-01-23 17:35:59', '2020-01-23 17:35:59', '', 'nav-3', '', 'inherit', 'open', 'closed', '', 'nav-3', '', '', '2020-01-23 17:35:59', '2020-01-23 17:35:59', '', 99, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/nav-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2020-01-23 17:35:59', '2020-01-23 17:35:59', '', 'nav-4', '', 'inherit', 'open', 'closed', '', 'nav-4', '', '', '2020-01-23 17:35:59', '2020-01-23 17:35:59', '', 99, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/nav-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2020-01-23 17:36:00', '2020-01-23 17:36:00', '', 'nav-5', '', 'inherit', 'open', 'closed', '', 'nav-5', '', '', '2020-01-23 17:36:00', '2020-01-23 17:36:00', '', 99, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/nav-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2020-01-23 17:36:00', '2020-01-23 17:36:00', '', 'nav-6', '', 'inherit', 'open', 'closed', '', 'nav-6', '', '', '2020-01-23 17:36:00', '2020-01-23 17:36:00', '', 99, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/nav-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2014-05-01 00:00:53', '2014-05-01 00:00:53', '<h4>client public facing website</h4>\r\nPublic facing website for Colourworks, a strategic brand experiences and creative marketing company.', 'Colourworks', '', 'publish', 'closed', 'closed', '', 'colourworks', '', '', '2020-01-24 09:02:53', '2020-01-24 09:02:53', '', 0, 'http://staging.kdee.co.za/kdee.co.za/?post_type=projects&#038;p=113', 0, 'projects', '', 0),
(114, 1, '2020-01-23 18:27:19', '2020-01-23 18:27:19', '', 'cover-desk', '', 'inherit', 'open', 'closed', '', 'cover-desk-5', '', '', '2020-01-23 18:27:19', '2020-01-23 18:27:19', '', 113, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/cover-desk-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2020-01-23 18:27:33', '2020-01-23 18:27:33', '', 'cover-mobi', '', 'inherit', 'open', 'closed', '', 'cover-mobi-4', '', '', '2020-01-23 18:27:33', '2020-01-23 18:27:33', '', 113, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/cover-mobi-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2020-01-23 18:27:53', '2020-01-23 18:27:53', '', 'cw-1', '', 'inherit', 'open', 'closed', '', 'cw-1', '', '', '2020-01-23 18:27:53', '2020-01-23 18:27:53', '', 113, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/cw-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2020-01-23 18:27:53', '2020-01-23 18:27:53', '', 'cw-2', '', 'inherit', 'open', 'closed', '', 'cw-2', '', '', '2020-01-23 18:27:53', '2020-01-23 18:27:53', '', 113, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/cw-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2020-01-23 18:27:54', '2020-01-23 18:27:54', '', 'cw-3', '', 'inherit', 'open', 'closed', '', 'cw-3', '', '', '2020-01-23 18:27:54', '2020-01-23 18:27:54', '', 113, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/cw-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2020-01-23 18:27:54', '2020-01-23 18:27:54', '', 'cw-4', '', 'inherit', 'open', 'closed', '', 'cw-4', '', '', '2020-01-23 18:27:54', '2020-01-23 18:27:54', '', 113, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/cw-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2020-01-23 18:27:54', '2020-01-23 18:27:54', '', 'cw-5', '', 'inherit', 'open', 'closed', '', 'cw-5', '', '', '2020-01-23 18:27:54', '2020-01-23 18:27:54', '', 113, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/cw-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2020-01-23 18:27:55', '2020-01-23 18:27:55', '', 'cw-6', '', 'inherit', 'open', 'closed', '', 'cw-6', '', '', '2020-01-23 18:27:55', '2020-01-23 18:27:55', '', 113, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/cw-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2020-01-23 18:27:55', '2020-01-23 18:27:55', '', 'cw-7', '', 'inherit', 'open', 'closed', '', 'cw-7', '', '', '2020-01-23 18:27:55', '2020-01-23 18:27:55', '', 113, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/cw-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2020-01-23 18:27:55', '2020-01-23 18:27:55', '', 'cw-8', '', 'inherit', 'open', 'closed', '', 'cw-8', '', '', '2020-01-23 18:27:55', '2020-01-23 18:27:55', '', 113, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/cw-8.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(124, 1, '2020-01-23 18:27:56', '2020-01-23 18:27:56', '', 'cw-9', '', 'inherit', 'open', 'closed', '', 'cw-9', '', '', '2020-01-23 18:27:56', '2020-01-23 18:27:56', '', 113, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/cw-9.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2020-01-23 18:27:56', '2020-01-23 18:27:56', '', 'cw-10', '', 'inherit', 'open', 'closed', '', 'cw-10', '', '', '2020-01-23 18:27:56', '2020-01-23 18:27:56', '', 113, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/cw-10.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2020-01-23 18:28:12', '2020-01-23 18:28:12', '', 'cw-11', '', 'inherit', 'open', 'closed', '', 'cw-11', '', '', '2020-01-23 18:28:12', '2020-01-23 18:28:12', '', 113, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/cw-11.jpg', 0, 'attachment', 'image/jpeg', 0),
(127, 1, '2020-01-23 18:28:13', '2020-01-23 18:28:13', '', 'cw-12', '', 'inherit', 'open', 'closed', '', 'cw-12', '', '', '2020-01-23 18:28:13', '2020-01-23 18:28:13', '', 113, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/cw-12.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2020-01-23 18:28:13', '2020-01-23 18:28:13', '', 'cw-13', '', 'inherit', 'open', 'closed', '', 'cw-13', '', '', '2020-01-23 18:28:13', '2020-01-23 18:28:13', '', 113, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/cw-13.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2020-01-23 18:28:14', '2020-01-23 18:28:14', '', 'cw-14', '', 'inherit', 'open', 'closed', '', 'cw-14', '', '', '2020-01-23 18:28:14', '2020-01-23 18:28:14', '', 113, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/cw-14.jpg', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2020-01-23 18:28:14', '2020-01-23 18:28:14', '', 'cw-15', '', 'inherit', 'open', 'closed', '', 'cw-15', '', '', '2020-01-23 18:28:14', '2020-01-23 18:28:14', '', 113, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/cw-15.jpg', 0, 'attachment', 'image/jpeg', 0),
(131, 1, '2020-01-23 18:28:14', '2020-01-23 18:28:14', '', 'cw-16', '', 'inherit', 'open', 'closed', '', 'cw-16', '', '', '2020-01-23 18:28:14', '2020-01-23 18:28:14', '', 113, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/cw-16.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2015-06-01 00:00:25', '2015-06-01 00:00:25', '<h4>STEM content &amp; learning portal for high school students</h4>\r\nAndroid, iOS App &amp; website.', 'IntelleApp', '', 'publish', 'closed', 'closed', '', 'intelleapp', '', '', '2020-01-24 09:41:56', '2020-01-24 09:41:56', '', 0, 'http://staging.kdee.co.za/kdee.co.za/?post_type=projects&#038;p=132', 0, 'projects', '', 0),
(133, 1, '2020-01-23 18:34:08', '2020-01-23 18:34:08', '', 'intelleapp-2', '', 'inherit', 'open', 'closed', '', 'intelleapp-2', '', '', '2020-01-23 18:34:08', '2020-01-23 18:34:08', '', 132, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/intelleapp-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2020-01-23 18:34:10', '2020-01-23 18:34:10', '', 'intelleapp-3', '', 'inherit', 'open', 'closed', '', 'intelleapp-3', '', '', '2020-01-23 18:34:10', '2020-01-23 18:34:10', '', 132, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/intelleapp-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(135, 1, '2020-01-23 18:34:11', '2020-01-23 18:34:11', '', 'intelleapp-4', '', 'inherit', 'open', 'closed', '', 'intelleapp-4', '', '', '2020-01-23 18:34:11', '2020-01-23 18:34:11', '', 132, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/intelleapp-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(136, 1, '2020-01-23 18:36:16', '2020-01-23 18:36:16', '', 'cover-desk', '', 'inherit', 'open', 'closed', '', 'cover-desk-6', '', '', '2020-01-23 18:36:16', '2020-01-23 18:36:16', '', 132, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/cover-desk-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2015-08-01 00:00:03', '2015-08-01 00:00:03', '<h3>Tonplaygo is a free mobile entertainment and gaming platform,</h3>\r\nbuilt around a tangible connection to fashion and high-tech brands.\r\n\r\nAndroid, iOS App &amp; website.', 'Tonplaygo', '', 'publish', 'closed', 'closed', '', 'tonplaygo', '', '', '2020-01-24 09:39:59', '2020-01-24 09:39:59', '', 0, 'http://staging.kdee.co.za/kdee.co.za/?post_type=projects&#038;p=137', 0, 'projects', '', 0),
(138, 1, '2020-01-23 18:39:16', '2020-01-23 18:39:16', '', 'tpg-2', '', 'inherit', 'open', 'closed', '', 'tpg-2', '', '', '2020-01-23 18:39:16', '2020-01-23 18:39:16', '', 137, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/tpg-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(139, 1, '2020-01-23 18:39:41', '2020-01-23 18:39:41', '', 'tpg-1', '', 'inherit', 'open', 'closed', '', 'tpg-1', '', '', '2020-01-23 18:39:41', '2020-01-23 18:39:41', '', 137, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/tpg-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 1, '2020-01-23 18:39:43', '2020-01-23 18:39:43', '', 'tpg-3', '', 'inherit', 'open', 'closed', '', 'tpg-3', '', '', '2020-01-23 18:39:43', '2020-01-23 18:39:43', '', 137, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/tpg-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2020-01-23 18:39:44', '2020-01-23 18:39:44', '', 'tpg-4', '', 'inherit', 'open', 'closed', '', 'tpg-4', '', '', '2020-01-23 18:39:44', '2020-01-23 18:39:44', '', 137, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/tpg-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(142, 1, '2020-01-23 18:39:46', '2020-01-23 18:39:46', '', 'tpg-5', '', 'inherit', 'open', 'closed', '', 'tpg-5', '', '', '2020-01-23 18:39:46', '2020-01-23 18:39:46', '', 137, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/tpg-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(143, 1, '2020-01-23 18:39:48', '2020-01-23 18:39:48', '', 'tpg-6', '', 'inherit', 'open', 'closed', '', 'tpg-6', '', '', '2020-01-23 18:39:48', '2020-01-23 18:39:48', '', 137, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/tpg-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(144, 1, '2020-01-23 18:39:49', '2020-01-23 18:39:49', '', 'tpg-7', '', 'inherit', 'open', 'closed', '', 'tpg-7', '', '', '2020-01-23 18:39:49', '2020-01-23 18:39:49', '', 137, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/tpg-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(145, 1, '2020-01-23 18:39:51', '2020-01-23 18:39:51', '', 'tpg-8', '', 'inherit', 'open', 'closed', '', 'tpg-8', '', '', '2020-01-23 18:39:51', '2020-01-23 18:39:51', '', 137, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/tpg-8.jpg', 0, 'attachment', 'image/jpeg', 0),
(146, 1, '2016-01-01 00:00:50', '2016-01-01 00:00:50', '', 'Harvey Water Softeners', '', 'publish', 'closed', 'closed', '', 'harvey-water-softeners', '', '', '2020-01-24 09:50:44', '2020-01-24 09:50:44', '', 0, 'http://staging.kdee.co.za/kdee.co.za/?post_type=projects&#038;p=146', 0, 'projects', '', 0),
(147, 1, '2020-01-23 18:59:10', '2020-01-23 18:59:10', '', 'cover-desk', '', 'inherit', 'open', 'closed', '', 'cover-desk-7', '', '', '2020-01-23 18:59:10', '2020-01-23 18:59:10', '', 146, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/cover-desk-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(153, 1, '2020-01-23 19:08:03', '2020-01-23 19:08:03', '', 'Screenshot 2019-02-28 at 00.05.47', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-02-28-at-00-05-47', '', '', '2020-01-23 19:08:03', '2020-01-23 19:08:03', '', 146, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/Screenshot-2019-02-28-at-00.05.47.jpg', 0, 'attachment', 'image/jpeg', 0),
(154, 1, '2020-01-23 19:08:07', '2020-01-23 19:08:07', '', 'Screenshot 2019-02-28 at 00.06.58', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-02-28-at-00-06-58', '', '', '2020-01-23 19:08:07', '2020-01-23 19:08:07', '', 146, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/Screenshot-2019-02-28-at-00.06.58.jpg', 0, 'attachment', 'image/jpeg', 0),
(155, 1, '2020-01-23 19:08:10', '2020-01-23 19:08:10', '', 'Screenshot 2019-02-28 at 00.07.52', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-02-28-at-00-07-52', '', '', '2020-01-23 19:08:10', '2020-01-23 19:08:10', '', 146, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/Screenshot-2019-02-28-at-00.07.52.jpg', 0, 'attachment', 'image/jpeg', 0),
(156, 1, '2020-01-23 19:08:13', '2020-01-23 19:08:13', '', 'Screenshot 2019-02-28 at 00.08.50', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-02-28-at-00-08-50', '', '', '2020-01-23 19:08:13', '2020-01-23 19:08:13', '', 146, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/Screenshot-2019-02-28-at-00.08.50.jpg', 0, 'attachment', 'image/jpeg', 0),
(157, 1, '2020-01-23 19:08:17', '2020-01-23 19:08:17', '', 'Screenshot 2019-02-28 at 00.09.56', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-02-28-at-00-09-56', '', '', '2020-01-23 19:08:17', '2020-01-23 19:08:17', '', 146, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/Screenshot-2019-02-28-at-00.09.56.jpg', 0, 'attachment', 'image/jpeg', 0),
(158, 1, '2020-01-23 19:08:20', '2020-01-23 19:08:20', '', 'Screenshot 2019-02-28 at 00.10.20', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-02-28-at-00-10-20', '', '', '2020-01-23 19:08:20', '2020-01-23 19:08:20', '', 146, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/Screenshot-2019-02-28-at-00.10.20.jpg', 0, 'attachment', 'image/jpeg', 0),
(159, 1, '2020-01-23 19:08:24', '2020-01-23 19:08:24', '', 'Screenshot 2019-02-28 at 00.11.41', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-02-28-at-00-11-41', '', '', '2020-01-23 19:08:24', '2020-01-23 19:08:24', '', 146, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/Screenshot-2019-02-28-at-00.11.41.jpg', 0, 'attachment', 'image/jpeg', 0),
(160, 1, '2020-01-23 19:08:29', '2020-01-23 19:08:29', '', 'Screenshot 2019-02-28 at 00.13.06', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-02-28-at-00-13-06', '', '', '2020-01-23 19:08:29', '2020-01-23 19:08:29', '', 146, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/Screenshot-2019-02-28-at-00.13.06.jpg', 0, 'attachment', 'image/jpeg', 0),
(161, 1, '2020-01-23 19:08:32', '2020-01-23 19:08:32', '', 'Screenshot 2019-02-28 at 00.14.04', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-02-28-at-00-14-04', '', '', '2020-01-23 19:08:32', '2020-01-23 19:08:32', '', 146, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/Screenshot-2019-02-28-at-00.14.04.jpg', 0, 'attachment', 'image/jpeg', 0),
(162, 1, '2020-01-23 19:08:35', '2020-01-23 19:08:35', '', 'Screenshot 2019-02-28 at 00.15.36', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-02-28-at-00-15-36', '', '', '2020-01-23 19:08:35', '2020-01-23 19:08:35', '', 146, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/Screenshot-2019-02-28-at-00.15.36.jpg', 0, 'attachment', 'image/jpeg', 0),
(163, 1, '2020-01-23 19:08:39', '2020-01-23 19:08:39', '', 'Screenshot 2019-02-28 at 11.11.13', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-02-28-at-11-11-13', '', '', '2020-01-23 19:08:39', '2020-01-23 19:08:39', '', 146, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/Screenshot-2019-02-28-at-11.11.13.jpg', 0, 'attachment', 'image/jpeg', 0),
(164, 1, '2020-01-23 19:08:40', '2020-01-23 19:08:40', '', 'Screenshot 2019-02-28 at 11.11.30', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-02-28-at-11-11-30', '', '', '2020-01-23 19:08:40', '2020-01-23 19:08:40', '', 146, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/Screenshot-2019-02-28-at-11.11.30.jpg', 0, 'attachment', 'image/jpeg', 0),
(165, 1, '2020-01-23 19:12:36', '2020-01-23 19:12:36', '', 'cover-mobi', '', 'inherit', 'open', 'closed', '', 'cover-mobi-5', '', '', '2020-01-23 19:12:36', '2020-01-23 19:12:36', '', 146, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/cover-mobi-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(166, 1, '2020-01-23 19:12:54', '2020-01-23 19:12:54', '', 'Screenshot 2019-02-27 at 23.59.51', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-02-27-at-23-59-51', '', '', '2020-01-23 19:12:54', '2020-01-23 19:12:54', '', 146, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/Screenshot-2019-02-27-at-23.59.51.png', 0, 'attachment', 'image/png', 0),
(167, 1, '2020-01-23 19:13:02', '2020-01-23 19:13:02', '', 'Screenshot 2019-02-28 at 00.00.16', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-02-28-at-00-00-16', '', '', '2020-01-23 19:13:02', '2020-01-23 19:13:02', '', 146, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/Screenshot-2019-02-28-at-00.00.16.png', 0, 'attachment', 'image/png', 0),
(168, 1, '2020-01-23 19:13:10', '2020-01-23 19:13:10', '', 'Screenshot 2019-02-28 at 00.00.53', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-02-28-at-00-00-53', '', '', '2020-01-23 19:13:10', '2020-01-23 19:13:10', '', 146, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/Screenshot-2019-02-28-at-00.00.53.png', 0, 'attachment', 'image/png', 0),
(169, 1, '2020-01-23 19:13:17', '2020-01-23 19:13:17', '', 'Screenshot 2019-02-28 at 00.01.41', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-02-28-at-00-01-41', '', '', '2020-01-23 19:13:17', '2020-01-23 19:13:17', '', 146, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/Screenshot-2019-02-28-at-00.01.41.png', 0, 'attachment', 'image/png', 0),
(170, 1, '2020-01-23 19:13:25', '2020-01-23 19:13:25', '', 'Screenshot 2019-02-28 at 00.02.50', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-02-28-at-00-02-50', '', '', '2020-01-23 19:13:25', '2020-01-23 19:13:25', '', 146, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/Screenshot-2019-02-28-at-00.02.50.png', 0, 'attachment', 'image/png', 0),
(171, 1, '2020-01-23 19:13:35', '2020-01-23 19:13:35', '', 'Screenshot 2019-02-28 at 00.03.40', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-02-28-at-00-03-40', '', '', '2020-01-23 19:13:35', '2020-01-23 19:13:35', '', 146, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/Screenshot-2019-02-28-at-00.03.40.png', 0, 'attachment', 'image/png', 0),
(172, 1, '2020-01-23 19:13:43', '2020-01-23 19:13:43', '', 'Screenshot 2019-02-28 at 00.04.18', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-02-28-at-00-04-18', '', '', '2020-01-23 19:13:43', '2020-01-23 19:13:43', '', 146, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/Screenshot-2019-02-28-at-00.04.18.png', 0, 'attachment', 'image/png', 0),
(173, 1, '2020-01-23 19:13:50', '2020-01-23 19:13:50', '', 'Screenshot 2019-02-28 at 00.05.25', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-02-28-at-00-05-25', '', '', '2020-01-23 19:13:50', '2020-01-23 19:13:50', '', 146, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/Screenshot-2019-02-28-at-00.05.25.png', 0, 'attachment', 'image/png', 0),
(174, 1, '2020-01-24 06:56:08', '2020-01-24 06:56:08', '<ul>\n 	<li></li>\n</ul>', 'Harvey Water Softeners', '', 'inherit', 'closed', 'closed', '', '146-autosave-v1', '', '', '2020-01-24 06:56:08', '2020-01-24 06:56:08', '', 146, 'http://staging.kdee.co.za/kdee.co.za/?p=174', 0, 'revision', '', 0),
(176, 1, '2016-06-01 00:00:08', '2016-06-01 00:00:08', 'Public facing marketing site for Collinsons Group', 'Collinsons Group', '', 'publish', 'closed', 'closed', '', 'collinsons-group', '', '', '2020-01-24 09:51:23', '2020-01-24 09:51:23', '', 0, 'http://staging.kdee.co.za/kdee.co.za/?post_type=projects&#038;p=176', 0, 'projects', '', 0),
(177, 1, '2020-01-24 09:45:51', '2020-01-24 09:45:51', '', 'Screenshot 2019-05-24 at 11.35.20', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-05-24-at-11-35-20', '', '', '2020-01-24 09:45:51', '2020-01-24 09:45:51', '', 176, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/Screenshot-2019-05-24-at-11.35.20.png', 0, 'attachment', 'image/png', 0),
(178, 1, '2020-01-24 09:45:58', '2020-01-24 09:45:58', '', 'Screenshot 2019-05-24 at 11.36.00', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-05-24-at-11-36-00', '', '', '2020-01-24 09:45:58', '2020-01-24 09:45:58', '', 176, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/Screenshot-2019-05-24-at-11.36.00.png', 0, 'attachment', 'image/png', 0),
(179, 1, '2020-01-24 09:46:02', '2020-01-24 09:46:02', '', 'Screenshot 2019-05-24 at 11.36.17', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-05-24-at-11-36-17', '', '', '2020-01-24 09:46:02', '2020-01-24 09:46:02', '', 176, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/Screenshot-2019-05-24-at-11.36.17.png', 0, 'attachment', 'image/png', 0),
(180, 1, '2020-01-24 09:46:07', '2020-01-24 09:46:07', '', 'Screenshot 2019-05-24 at 11.36.41', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-05-24-at-11-36-41', '', '', '2020-01-24 09:46:07', '2020-01-24 09:46:07', '', 176, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/Screenshot-2019-05-24-at-11.36.41.png', 0, 'attachment', 'image/png', 0),
(181, 1, '2020-01-24 09:46:13', '2020-01-24 09:46:13', '', 'Screenshot 2019-05-24 at 11.37.30', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-05-24-at-11-37-30', '', '', '2020-01-24 09:46:13', '2020-01-24 09:46:13', '', 176, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/Screenshot-2019-05-24-at-11.37.30.png', 0, 'attachment', 'image/png', 0),
(182, 1, '2020-01-24 09:46:17', '2020-01-24 09:46:17', '', 'Screenshot 2019-05-24 at 11.38.02', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-05-24-at-11-38-02', '', '', '2020-01-24 09:46:17', '2020-01-24 09:46:17', '', 176, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/Screenshot-2019-05-24-at-11.38.02.png', 0, 'attachment', 'image/png', 0),
(183, 1, '2020-01-24 09:46:20', '2020-01-24 09:46:20', '', 'Screenshot 2019-05-24 at 11.38.52', '', 'inherit', 'open', 'closed', '', 'screenshot-2019-05-24-at-11-38-52', '', '', '2020-01-24 09:46:20', '2020-01-24 09:46:20', '', 176, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/Screenshot-2019-05-24-at-11.38.52.png', 0, 'attachment', 'image/png', 0),
(184, 1, '2020-01-24 09:48:54', '2020-01-24 09:48:54', '', 'cover-desk', '', 'inherit', 'open', 'closed', '', 'cover-desk-8', '', '', '2020-01-24 09:48:54', '2020-01-24 09:48:54', '', 176, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/01/cover-desk-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(185, 1, '2020-02-03 20:08:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-02-03 20:08:09', '0000-00-00 00:00:00', '', 0, 'http://staging.kdee.co.za/kdee.co.za/?p=185', 0, 'post', '', 0),
(186, 1, '2020-02-03 20:12:04', '2020-02-03 20:12:04', '', 'Airport Dimensions', '', 'publish', 'closed', 'closed', '', 'airport-dimensions', '', '', '2020-02-03 20:14:53', '2020-02-03 20:14:53', '', 0, 'http://staging.kdee.co.za/kdee.co.za/?post_type=projects&#038;p=186', 0, 'projects', '', 0),
(187, 1, '2020-02-03 20:11:12', '2020-02-03 20:11:12', '', 'cover-desk', '', 'inherit', 'open', 'closed', '', 'cover-desk-9', '', '', '2020-02-03 20:11:12', '2020-02-03 20:11:12', '', 186, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/02/cover-desk.jpg', 0, 'attachment', 'image/jpeg', 0),
(188, 1, '2020-02-03 20:11:32', '2020-02-03 20:11:32', '', 'Screenshot 2020-01-24 at 10.43.43', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-01-24-at-10-43-43', '', '', '2020-02-03 20:11:32', '2020-02-03 20:11:32', '', 186, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/02/Screenshot-2020-01-24-at-10.43.43.png', 0, 'attachment', 'image/png', 0),
(189, 1, '2020-02-03 20:11:36', '2020-02-03 20:11:36', '', 'Screenshot 2020-01-24 at 10.44.27', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-01-24-at-10-44-27', '', '', '2020-02-03 20:11:36', '2020-02-03 20:11:36', '', 186, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/02/Screenshot-2020-01-24-at-10.44.27.png', 0, 'attachment', 'image/png', 0),
(190, 1, '2020-02-03 20:11:39', '2020-02-03 20:11:39', '', 'Screenshot 2020-01-24 at 10.45.27', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-01-24-at-10-45-27', '', '', '2020-02-03 20:11:39', '2020-02-03 20:11:39', '', 186, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/02/Screenshot-2020-01-24-at-10.45.27.png', 0, 'attachment', 'image/png', 0),
(191, 1, '2020-02-03 20:11:41', '2020-02-03 20:11:41', '', 'Screenshot 2020-01-24 at 10.45.47', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-01-24-at-10-45-47', '', '', '2020-02-03 20:11:41', '2020-02-03 20:11:41', '', 186, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/02/Screenshot-2020-01-24-at-10.45.47.png', 0, 'attachment', 'image/png', 0),
(192, 1, '2020-02-03 20:11:44', '2020-02-03 20:11:44', '', 'Screenshot 2020-01-24 at 10.46.24', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-01-24-at-10-46-24', '', '', '2020-02-03 20:11:44', '2020-02-03 20:11:44', '', 186, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/02/Screenshot-2020-01-24-at-10.46.24.png', 0, 'attachment', 'image/png', 0),
(193, 1, '2020-02-03 20:11:49', '2020-02-03 20:11:49', '', 'Screenshot 2020-01-24 at 10.47.31', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-01-24-at-10-47-31', '', '', '2020-02-03 20:11:49', '2020-02-03 20:11:49', '', 186, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/02/Screenshot-2020-01-24-at-10.47.31.png', 0, 'attachment', 'image/png', 0),
(194, 1, '2020-02-03 20:11:53', '2020-02-03 20:11:53', '', 'Screenshot 2020-01-24 at 10.47.53', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-01-24-at-10-47-53', '', '', '2020-02-03 20:11:53', '2020-02-03 20:11:53', '', 186, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/02/Screenshot-2020-01-24-at-10.47.53.png', 0, 'attachment', 'image/png', 0),
(195, 1, '2020-02-03 20:11:56', '2020-02-03 20:11:56', '', 'Screenshot 2020-01-24 at 10.48.36', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-01-24-at-10-48-36', '', '', '2020-02-03 20:11:56', '2020-02-03 20:11:56', '', 186, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/02/Screenshot-2020-01-24-at-10.48.36.png', 0, 'attachment', 'image/png', 0),
(196, 1, '2020-02-03 20:14:24', '2020-02-03 20:14:24', '', 'Screenshot 2020-02-03 at 22.14.01', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-02-03-at-22-14-01', '', '', '2020-02-03 20:14:24', '2020-02-03 20:14:24', '', 186, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/02/Screenshot-2020-02-03-at-22.14.01.png', 0, 'attachment', 'image/png', 0),
(197, 1, '2020-02-03 20:14:30', '2020-02-03 20:14:30', '', 'Screenshot 2020-02-03 at 22.14.07', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-02-03-at-22-14-07', '', '', '2020-02-03 20:14:30', '2020-02-03 20:14:30', '', 186, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/02/Screenshot-2020-02-03-at-22.14.07.png', 0, 'attachment', 'image/png', 0),
(198, 1, '2020-02-03 20:26:31', '2020-02-03 20:26:31', '', 'Tipi', '', 'publish', 'closed', 'closed', '', 'tipi', '', '', '2020-02-03 20:26:31', '2020-02-03 20:26:31', '', 0, 'http://staging.kdee.co.za/kdee.co.za/?post_type=projects&#038;p=198', 0, 'projects', '', 0),
(199, 1, '2020-02-03 20:24:54', '2020-02-03 20:24:54', '', 'cover pic', '', 'inherit', 'open', 'closed', '', 'cover-pic-3', '', '', '2020-02-03 20:24:54', '2020-02-03 20:24:54', '', 198, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/02/cover-pic.jpg', 0, 'attachment', 'image/jpeg', 0),
(200, 1, '2020-02-03 20:25:14', '2020-02-03 20:25:14', '', 'Screenshot 2020-02-03 at 22.17.41', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-02-03-at-22-17-41', '', '', '2020-02-03 20:25:14', '2020-02-03 20:25:14', '', 198, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/02/Screenshot-2020-02-03-at-22.17.41.png', 0, 'attachment', 'image/png', 0),
(201, 1, '2020-02-03 20:25:21', '2020-02-03 20:25:21', '', 'Screenshot 2020-02-03 at 22.18.14', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-02-03-at-22-18-14', '', '', '2020-02-03 20:25:21', '2020-02-03 20:25:21', '', 198, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/02/Screenshot-2020-02-03-at-22.18.14.png', 0, 'attachment', 'image/png', 0),
(202, 1, '2020-02-03 20:25:27', '2020-02-03 20:25:27', '', 'Screenshot 2020-02-03 at 22.18.40', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-02-03-at-22-18-40', '', '', '2020-02-03 20:25:27', '2020-02-03 20:25:27', '', 198, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/02/Screenshot-2020-02-03-at-22.18.40.png', 0, 'attachment', 'image/png', 0),
(203, 1, '2020-02-03 20:25:34', '2020-02-03 20:25:34', '', 'Screenshot 2020-02-03 at 22.18.50', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-02-03-at-22-18-50', '', '', '2020-02-03 20:25:34', '2020-02-03 20:25:34', '', 198, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/02/Screenshot-2020-02-03-at-22.18.50.png', 0, 'attachment', 'image/png', 0),
(204, 1, '2020-02-03 20:25:37', '2020-02-03 20:25:37', '', 'Screenshot 2020-02-03 at 22.19.07', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-02-03-at-22-19-07', '', '', '2020-02-03 20:25:37', '2020-02-03 20:25:37', '', 198, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/02/Screenshot-2020-02-03-at-22.19.07.png', 0, 'attachment', 'image/png', 0),
(205, 1, '2020-02-03 20:25:43', '2020-02-03 20:25:43', '', 'Screenshot 2020-02-03 at 22.19.41', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-02-03-at-22-19-41', '', '', '2020-02-03 20:25:43', '2020-02-03 20:25:43', '', 198, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/02/Screenshot-2020-02-03-at-22.19.41.png', 0, 'attachment', 'image/png', 0),
(206, 1, '2020-02-03 20:25:47', '2020-02-03 20:25:47', '', 'Screenshot 2020-02-03 at 22.21.01', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-02-03-at-22-21-01', '', '', '2020-02-03 20:25:47', '2020-02-03 20:25:47', '', 198, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/02/Screenshot-2020-02-03-at-22.21.01.png', 0, 'attachment', 'image/png', 0),
(207, 1, '2020-02-03 20:25:52', '2020-02-03 20:25:52', '', 'Screenshot 2020-02-03 at 22.21.17', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-02-03-at-22-21-17', '', '', '2020-02-03 20:25:52', '2020-02-03 20:25:52', '', 198, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/02/Screenshot-2020-02-03-at-22.21.17.png', 0, 'attachment', 'image/png', 0),
(208, 1, '2020-02-03 20:25:59', '2020-02-03 20:25:59', '', 'Screenshot 2020-02-03 at 22.21.42', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-02-03-at-22-21-42', '', '', '2020-02-03 20:25:59', '2020-02-03 20:25:59', '', 198, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/02/Screenshot-2020-02-03-at-22.21.42.png', 0, 'attachment', 'image/png', 0),
(209, 1, '2020-02-03 20:26:04', '2020-02-03 20:26:04', '', 'Screenshot 2020-02-03 at 22.21.57', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-02-03-at-22-21-57', '', '', '2020-02-03 20:26:04', '2020-02-03 20:26:04', '', 198, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/02/Screenshot-2020-02-03-at-22.21.57.png', 0, 'attachment', 'image/png', 0),
(210, 1, '2020-02-03 20:26:09', '2020-02-03 20:26:09', '', 'Screenshot 2020-02-03 at 22.22.02', '', 'inherit', 'open', 'closed', '', 'screenshot-2020-02-03-at-22-22-02', '', '', '2020-02-03 20:26:09', '2020-02-03 20:26:09', '', 198, 'http://staging.kdee.co.za/kdee.co.za/wp-content/uploads/2020/02/Screenshot-2020-02-03-at-22.22.02.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'kirk'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"6f772d895d64948146b27147f2415a90fbfa309d3308d863cb94651951e8fa5e";a:4:{s:10:"expiration";i:1580933284;s:2:"ip";s:15:"102.182.119.229";s:2:"ua";s:82:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:72.0) Gecko/20100101 Firefox/72.0";s:5:"login";i:1580760484;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '185'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(19, 1, 'wp_user-settings-time', '1579171424'),
(20, 1, 'closedpostboxes_projects', 'a:1:{i:0;s:12:"postimagediv";}'),
(21, 1, 'metaboxhidden_projects', 'a:1:{i:0;s:7:"slugdiv";}'),
(22, 1, 'community-events-location', 'a:1:{s:2:"ip";s:13:"102.182.119.0";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'kirk', '$P$Bnfj7U.Qwrw43bbBTSWBU2Mul2Y7460', 'kirk', 'kdee15@gmail.com', '', '2019-05-27 07:18:31', '', 0, 'kirk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=504;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=824;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
