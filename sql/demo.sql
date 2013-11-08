-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Jeu 24 Octobre 2013 à 09:32
-- Version du serveur: 5.5.32-0ubuntu7
-- Version de PHP: 5.5.3-1ubuntu2

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `playground`
--

-- --------------------------------------------------------

--
-- Structure de la table `cms_block`
--

CREATE TABLE IF NOT EXISTS `cms_block` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) NOT NULL,
  `on_call` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_AD680C0E772E836A` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `cms_dynablock`
--

CREATE TABLE IF NOT EXISTS `cms_dynablock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dynarea` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `cms_page`
--

CREATE TABLE IF NOT EXISTS `cms_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `main_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `second_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `heading` longtext COLLATE utf8_unicode_ci,
  `active` tinyint(1) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `push_home` tinyint(1) DEFAULT NULL,
  `display_home` tinyint(1) DEFAULT NULL,
  `publication_date` datetime DEFAULT NULL,
  `close_date` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_D39C1B5D772E836A` (`identifier`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Contenu de la table `cms_page`
--

INSERT INTO `cms_page` (`id`, `title`, `identifier`, `main_image`, `second_image`, `meta_keywords`, `meta_description`, `content`, `heading`, `active`, `sort_order`, `push_home`, `display_home`, `publication_date`, `close_date`, `created_at`, `updated_at`, `category`) VALUES
(1, 'Bravo à tous', 'scooby-doo', 'media/cms/1-scooby-doo.png', 'media/cms/1-scooby-doo.png', NULL, NULL, '<p>Bravo &agrave; tous les gagnants pour votre participation au grand jeu concours Scooby-Doo.&nbsp;</p>\r\n', '<p>Merci &agrave; tous d&#39;avoir participer au grand jeu concours Scooby-Doo</p>\r\n', 1, 0, 1, 1, '2013-10-08 00:00:00', '2013-10-31 00:00:00', '2013-10-12 16:28:11', '2013-10-15 15:19:58', 0);

-- --------------------------------------------------------

--
-- Structure de la table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phoneNumber` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `twitterAccount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebookPage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `main_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Contenu de la table `company`
--

INSERT INTO `company` (`id`, `title`, `address`, `phoneNumber`, `main_image`, `twitterAccount`, `facebookPage`) VALUES
(1, 'Aurélie Bénard', '10 rue Marcellin Berthelot 93700 Drancy', '06 86 92 88 98', 'media/design/1-320px-Logo_de_Drancy.jpg', '','');

-- --------------------------------------------------------

--
-- Structure de la table `core_cronjob`
--

CREATE TABLE IF NOT EXISTS `core_cronjob` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `errorMsg` longtext COLLATE utf8_unicode_ci,
  `stackTrace` longtext COLLATE utf8_unicode_ci,
  `createTime` datetime NOT NULL,
  `scheduleTime` datetime NOT NULL,
  `executeTime` datetime DEFAULT NULL,
  `finishTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `design_theme`
--

CREATE TABLE IF NOT EXISTS `design_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `package` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `theme` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Contenu de la table `design_theme`
--

INSERT INTO `design_theme` (`id`, `title`, `image`, `area`, `package`, `theme`, `author`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'base', NULL, 'admin', 'default', 'base', 'system', 1, '2013-10-07 13:50:04', '2013-10-10 18:44:39'),
(2, 'base', NULL, 'frontend', 'default', 'base', 'system', 1, '2013-10-07 13:50:04', '2013-10-07 13:50:04'),
(3, 'Playground', NULL, 'frontend', 'default', 'playground', 'system', 0, '2013-10-07 13:50:04', '2013-10-07 13:50:04'),
(4, 'playground', NULL, 'admin', 'default', 'playground', 'system', 0, '2013-10-10 18:44:23', '2013-10-10 18:44:23'),
(5, 'test', NULL, 'admin', 'default', 'test', 'system', 0, '2013-10-10 18:44:23', '2013-10-10 18:44:23'),
(6, 'starter', NULL, 'frontend', 'default', 'starter', 'system', 0, '2013-10-22 15:38:09', '2013-10-22 15:38:09');

-- --------------------------------------------------------

--
-- Structure de la table `facebook_app`
--

CREATE TABLE IF NOT EXISTS `facebook_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `app_secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publication_date` datetime DEFAULT NULL,
  `close_date` datetime DEFAULT NULL,
  `is_available` tinyint(1) NOT NULL,
  `is_installed` tinyint(1) NOT NULL,
  `page_tab_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secure_page_tab_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_tab_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_tab_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_tab_source_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_tab_source_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_tab_source_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `app_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5CF5EBD77987212D` (`app_id`),
  UNIQUE KEY `UNIQ_5CF5EBD75B0D5BA6` (`app_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Contenu de la table `facebook_app`
--

INSERT INTO `facebook_app` (`id`, `app_id`, `app_secret`, `publication_date`, `close_date`, `is_available`, `is_installed`, `page_tab_url`, `secure_page_tab_url`, `page_tab_title`, `page_tab_image`, `page_tab_source_type`, `page_tab_source_title`, `page_tab_source_id`, `created_at`, `updated_at`, `app_name`) VALUES
(1, '1397644110467462', '38348b2d47e5873ceea405aa9278a3f1', '2013-10-13 00:00:00', NULL, 0, 0, 'http://fbplaydoc.adfab.fr/%channel%/quiz/connais-tu-bien-ton-entreprise', 'https://fbplaydoc.adfab.fr/%channel%/quiz/connais-tu-bien-ton-entreprise', 'Adfab ou pas Adfab?', NULL, 'quiz', 'Connais-tu bien ton entreprise?', 3, '2013-10-03 10:54:43', '2013-10-16 10:36:02', 'TestAPP'),
(2, '205676699603414', '8ea4eb32766d89e7de54ab8dc05ca17a', '2013-10-03 00:00:00', NULL, 1, 0, 'http://playdoc.adfab.fr/%channel%/instant-gagnant/tentez-de-gagner-une-opel-adam', 'https://playdoc.adfab.fr/%channel%/instant-gagnant/tentez-de-gagner-une-opel-adam', 'Quizz Opel', NULL, NULL, NULL, NULL, '2013-10-03 10:58:56', '2013-10-22 15:25:08', 'TestAdfab'),
(3, '247842782031244', 'a4a7afcb726bab838e1c7134822e018f', '2013-10-03 00:00:00', NULL, 0, 0, 'http://fbplaydoc.adfab.fr/%channel%/instant-gagnant/tentez-de-gagner-une-opel-adam', 'https://fbplaydoc.adfab.fr/%channel%/instant-gagnant/tentez-de-gagner-une-opel-adam', 'Quizz Opel', NULL, 'instantwin', 'Tentez de gagner une Opel Adam', 1, '2013-10-22 15:23:42', '2013-10-22 15:30:13', 'Jeu concours Opel');

-- --------------------------------------------------------

--
-- Structure de la table `facebook_app_page`
--

CREATE TABLE IF NOT EXISTS `facebook_app_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_app` int(11) NOT NULL,
  `id_page` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `facebook_page`
--

CREATE TABLE IF NOT EXISTS `facebook_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_available` tinyint(1) NOT NULL,
  `is_installed` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7F3B5EDC4663E4` (`page_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `facebook_page`
--

INSERT INTO `facebook_page` (`id`, `page_id`, `page_name`, `page_link`, `is_available`, `is_installed`, `created_at`, `updated_at`) VALUES
(1, '277282455698135', '4L Trophy 2013 - 2L4L', 'https://www.facebook.com/4lTrophy2013', 1, 0, '2013-10-22 15:18:00', '2013-10-22 15:18:00'),
(2, '267035770003264', 'Graphik Lily', 'https://www.facebook.com/pages/Graphik-Lily/267035770003264', 1, 0, '2013-10-22 15:40:46', '2013-10-22 15:40:46');

-- --------------------------------------------------------

--
-- Structure de la table `facebook_page_app`
--

CREATE TABLE IF NOT EXISTS `facebook_page_app` (
  `page_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  PRIMARY KEY (`page_id`,`app_id`),
  KEY `IDX_C270EBF6C4663E4` (`page_id`),
  KEY `IDX_C270EBF67987212D` (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` longtext COLLATE utf8_unicode_ci NOT NULL,
  `answer` longtext COLLATE utf8_unicode_ci,
  `is_active` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `game`
--

CREATE TABLE IF NOT EXISTS `game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `partner_id` int(11) DEFAULT NULL,
  `prize_category` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `main_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `second_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `canal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `broadcast_facebook` tinyint(1) DEFAULT NULL,
  `broadcast_platform` tinyint(1) DEFAULT NULL,
  `broadcast_embed` tinyint(1) DEFAULT NULL,
  `push_home` tinyint(1) DEFAULT NULL,
  `display_home` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `publication_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `close_date` datetime DEFAULT NULL,
  `play_limit` int(11) NOT NULL,
  `play_limit_scale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `play_bonus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `layout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stylesheet` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `welcome_block` longtext COLLATE utf8_unicode_ci,
  `termsBlock` longtext COLLATE utf8_unicode_ci,
  `terms_optin` tinyint(1) DEFAULT NULL,
  `conditionsBlock` longtext COLLATE utf8_unicode_ci,
  `columnBlock1` longtext COLLATE utf8_unicode_ci,
  `columnBlock2` longtext COLLATE utf8_unicode_ci,
  `columnBlock3` longtext COLLATE utf8_unicode_ci,
  `fb_app_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_page_tab_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_page_tab_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_share_message` longtext COLLATE utf8_unicode_ci,
  `fb_share_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_request_message` longtext COLLATE utf8_unicode_ci,
  `fbFan` tinyint(1) DEFAULT NULL,
  `tw_share_message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_232B318C772E836A` (`identifier`),
  KEY `IDX_232B318C9393F8FE` (`partner_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Contenu de la table `game`
--

INSERT INTO `game` (`id`, `partner_id`, `prize_category`, `title`, `identifier`, `main_image`, `second_image`, `canal`, `broadcast_facebook`, `broadcast_platform`, `broadcast_embed`, `push_home`, `display_home`, `active`, `publication_date`, `start_date`, `end_date`, `close_date`, `play_limit`, `play_limit_scale`, `play_bonus`, `layout`, `stylesheet`, `welcome_block`, `termsBlock`, `terms_optin`, `conditionsBlock`, `columnBlock1`, `columnBlock2`, `columnBlock3`, `fb_app_id`, `fb_page_tab_title`, `fb_page_tab_image`, `fb_share_message`, `fb_share_image`, `fb_request_message`, `fbFan`, `tw_share_message`, `class_type`, `created_at`, `updated_at`, `type`) VALUES
(1, NULL, 0, 'Tentez de gagner une Opel Adam', 'tentez-de-gagner-une-opel-adam', 'media/game/1-opel-adam.png', 'media/game/1-opel-adam-citadine-premium-1313681.jpg', NULL, 0, 1, 0, 1, 1, 1, '2013-10-03 00:00:00', '2013-10-03 00:00:00', NULL, NULL, 10, 'day', 'none', '', '', '', '', 0, '', '', '', '', '', '', NULL, '', NULL, NULL, 0, '', 'instantwin', '2013-10-02 18:10:42', '2013-10-22 15:30:13', 'instantwin'),
(2, 1, 0, 'Concours photo : Votre plus belle photo de vacances', 'la-plus-belle-photo-de-vacances-2013', 'media/game/2-vacances.png', NULL, NULL, 0, 1, 0, 1, 1, 1, '2013-10-02 00:00:00', '2013-10-02 00:00:00', NULL, NULL, 1, 'always', 'none', '', '', '<h2 class="text-accroche" style="padding: 0px; margin: 0px 0px 20px; border: 0px; outline: 0px; color: rgb(102, 102, 102); font-size: 12px; line-height: 1.6; text-align: justify; -webkit-hyphens: auto; word-wrap: break-word; font-family: Arial, Tahoma, sans-serif;">D&eacute;posez vos plus belles photos de vacances sur maville.com et faites le plein de cadeaux ! Que vous partiez au bout du monde ou au coin de la rue, au soleil ou sous la pluie, sur une &icirc;le ou &agrave; la montagne... D&eacute;posez vos plus beaux clich&eacute;s de vacances avant le 22 d&eacute;cembre.<br style="padding: 0px; margin: 0px;" />\r\nLa participation est limit&eacute;e &agrave; une photo par personne.&nbsp;</h2>\r\n\r\n<h2 class="text-accroche" style="padding: 0px; margin: 0px 0px 20px; border: 0px; outline: 0px; color: rgb(102, 102, 102); font-size: 12px; line-height: 1.6; text-align: justify; -webkit-hyphens: auto; word-wrap: break-word; font-family: Arial, Tahoma, sans-serif;">A Gagner :&nbsp;<br style="padding: 0px; margin: 0px;" />\r\n- 1er prix : CANON A2500 Compact (coloris : rouge)&nbsp;<br style="padding: 0px; margin: 0px;" />\r\n- Du 2&egrave;me au 5&egrave;me prix : Lot de goodies Polabox<br style="padding: 0px; margin: 0px;" />\r\n<br style="padding: 0px; margin: 0px;" />\r\nBonne chance &agrave; tous !</h2>\r\n', '', 0, '', '', '', '', '', '', NULL, '', NULL, NULL, 0, '', 'postvote', '2013-10-02 19:04:23', '2013-10-15 14:54:43', 'postvote'),
(3, NULL, 0, 'Connais-tu bien ton entreprise?', 'connais-tu-bien-ton-entreprise', 'media/game/3-adfab.png', NULL, NULL, 0, 1, 1, 1, 1, 1, '2013-10-13 00:00:00', '2013-10-15 00:00:00', NULL, NULL, 0, '', 'none', '', '', '<p>Adfab ou pas Adfab? Connais-tu vraiment tout les secrets d&#39;Adfab?&nbsp;</p>\r\n', '', 0, '', '', '', '', '', '', NULL, '', NULL, NULL, 1, '', 'quiz', '2013-10-07 10:13:55', '2013-10-18 15:49:33', 'quiz'),
(4, NULL, 0, 'Déclarer votre amour avec Kenzo', 'dclarer-votre-amour-avec-kenzo', 'media/game/4-kenzo.png', NULL, NULL, 0, 1, 1, 1, 1, 1, '2013-10-07 00:00:00', '2013-10-07 00:00:00', NULL, NULL, 0, '', '', '', '', '<p>D&eacute;clarer votre amour avec Kenzo et tentez de gagner un s&eacute;jour &agrave; Bali en amoureux !</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe allowfullscreen="" frameborder="0" height="315" src="//www.youtube.com/embed/xpjU7ix7Bt4" width="420"></iframe></p>\r\n', '', 0, '', '', '', '', '', '', NULL, 'Déclarer votre amour avec Kenzo', NULL, NULL, 0, 'Déclarer votre amour avec Kenzo', 'postvote', '2013-10-07 10:58:26', '2013-10-15 14:54:04', 'postvote'),
(5, NULL, 0, 'Concours de recettes à base de chocolat', 'concours-de-recettes-base-de-chocolat', 'media/game/5-chocolat.png', NULL, NULL, 0, 1, 0, 0, 1, 1, '2013-10-07 00:00:00', '2013-10-07 00:00:00', NULL, NULL, 0, '', '', '', '', '<p>&nbsp;</p>\r\n\r\n<p><b style="color: rgb(35, 35, 35); font-family: Helvetica, Arial, sans-serif; line-height: normal;">Ce mois-ci, on s&#39;int&eacute;resse aux recettes au chocolat.</b><br style="color: rgb(35, 35, 35); font-family: Helvetica, Arial, sans-serif; line-height: normal;" />\r\n<span style="color: rgb(35, 35, 35); font-family: Helvetica, Arial, sans-serif; line-height: normal;">D&eacute;posez vite votre recette au chocolat. 1, 2, 3, go ! &nbsp;&nbsp;</span><br style="color: rgb(35, 35, 35); font-family: Helvetica, Arial, sans-serif; line-height: normal;" />\r\n<br style="color: rgb(35, 35, 35); font-family: Helvetica, Arial, sans-serif; line-height: normal;" />\r\n<b style="color: rgb(35, 35, 35); font-family: Helvetica, Arial, sans-serif; line-height: normal;">D&eacute;posez votre recette jusqu&#39;au 27 octobre et vous gagnerez peut-&ecirc;tre un lot de 6 livres de cuisine offerts par les Editions Prisma ainsi que le&nbsp;<u><a href="http://www.cuisineactuelle.fr/cuisine-pratique/le-magazine/le-magazine-patisserie-n-3-est-en-kiosque-118063" style="color: rgb(51, 51, 51); text-decoration: none; padding: 0px; margin: 0px;">dernier num&eacute;ro du magazine P&acirc;tisserie</a></u>&nbsp;:</b><span style="color: rgb(35, 35, 35); font-family: Helvetica, Arial, sans-serif; line-height: normal;">&nbsp;</span></p>\r\n\r\n<p><img alt="" src="http://www.cuisineactuelle.fr/var/cui/storage/images/media/images/jeux/lots_concours_chocolat/1120044-1-fre-FR/lots_concours_chocolat.jpg" style="width: 659px; height: 260px;" /></p>\r\n\r\n<p><b style="color: rgb(35, 35, 35); font-family: Helvetica, Arial, sans-serif; line-height: normal;">Flashement Bon ! Les livres qui vous font gagner du temps !</b><span style="color: rgb(35, 35, 35); font-family: Helvetica, Arial, sans-serif; line-height: normal;">&nbsp;</span><br style="color: rgb(35, 35, 35); font-family: Helvetica, Arial, sans-serif; line-height: normal;" />\r\n<br style="color: rgb(35, 35, 35); font-family: Helvetica, Arial, sans-serif; line-height: normal;" />\r\n<span style="color: rgb(35, 35, 35); font-family: Helvetica, Arial, sans-serif; line-height: normal;">Flashez, pr&eacute;parez, d&eacute;gustez !&nbsp;</span><br style="color: rgb(35, 35, 35); font-family: Helvetica, Arial, sans-serif; line-height: normal;" />\r\n<br style="color: rgb(35, 35, 35); font-family: Helvetica, Arial, sans-serif; line-height: normal;" />\r\n<span style="color: rgb(35, 35, 35); font-family: Helvetica, Arial, sans-serif; line-height: normal;">Pour chaque recette, la liste des ingr&eacute;dients disponible sur votre t&eacute;l&eacute;phone.&nbsp;</span><br style="color: rgb(35, 35, 35); font-family: Helvetica, Arial, sans-serif; line-height: normal;" />\r\n<span style="color: rgb(35, 35, 35); font-family: Helvetica, Arial, sans-serif; line-height: normal;">- Simple : un flashcode &agrave; scanner avec votre t&eacute;l&eacute;phone ou votre tablette.&nbsp;</span><br style="color: rgb(35, 35, 35); font-family: Helvetica, Arial, sans-serif; line-height: normal;" />\r\n<span style="color: rgb(35, 35, 35); font-family: Helvetica, Arial, sans-serif; line-height: normal;">- Pratique : m&ecirc;me sans r&eacute;seau la liste des ingr&eacute;dients s&rsquo;affiche et s&rsquo;enregistre dans votre t&eacute;l&eacute;phone.&nbsp;</span><br style="color: rgb(35, 35, 35); font-family: Helvetica, Arial, sans-serif; line-height: normal;" />\r\n<br style="color: rgb(35, 35, 35); font-family: Helvetica, Arial, sans-serif; line-height: normal;" />\r\n<span style="color: rgb(35, 35, 35); font-family: Helvetica, Arial, sans-serif; line-height: normal;">30 recettes par volume &ndash; 3,95 &euro; le livre &ndash; disponible en librairies et rayons livre&nbsp;</span><br style="color: rgb(35, 35, 35); font-family: Helvetica, Arial, sans-serif; line-height: normal;" />\r\n<br style="color: rgb(35, 35, 35); font-family: Helvetica, Arial, sans-serif; line-height: normal;" />\r\n<u style="color: rgb(35, 35, 35); font-family: Helvetica, Arial, sans-serif; line-height: normal;"><a href="http://www.editions-prisma.com/" style="color: rgb(51, 51, 51); text-decoration: none; padding: 0px; margin: 0px;">www.editions-prisma.com</a></u><span style="color: rgb(35, 35, 35); font-family: Helvetica, Arial, sans-serif; line-height: normal;">&nbsp;</span></p>\r\n', '', 0, '', '', '', '', '', '', NULL, '', NULL, NULL, 0, '', 'postvote', '2013-10-07 11:22:35', '2013-10-15 15:18:47', 'postvote'),
(6, 1, 0, 'M en concert', 'm-en-concert', 'media/game/6-m.png', 'media/game/6-m-mathieu-chedid-mojo.png', NULL, 0, 1, 1, 0, 1, 1, '2013-10-14 00:00:00', '2013-10-14 00:00:00', NULL, NULL, 0, 'always', 'none', '', '', '<p>M continue son &eacute;pop&eacute;e et revient nous filer le &lsquo;mojo&rsquo; cet automne ! Un partenariat France 2. Joue et gagne tes places de concert en cat&eacute;gorie 1 pour les 13 et 14 d&eacute;cembre prochain &agrave; Bercy (Paris). Et une rencontre avec M le 12 d&eacute;cembre apr&egrave;s-midi ! Bonne chance &agrave; vous</p>\r\n', '<p>ARTICLE 1 : ORGANISATION DU JEU CONCOURS La soci&eacute;t&eacute; anonyme FRANCE TELEVISIONS, immatricul&eacute; au registre du Commerce et des Soci&eacute;t&eacute;s de Paris, sous le num&eacute;ro B 432 766 947 dont le si&egrave;ge social est situ&eacute; au 7, Esplanade Henri de France 75015 PARIS, repr&eacute;sent&eacute; par Monsieur Laurent FRISCH en sa qualit&eacute; de Directeur des Services Interactifs, (Ci-apr&egrave;s d&eacute;nomm&eacute; L&#39;Organisateur) organise, un jeu concours &laquo; Concert M &raquo; accessible sur Internet &agrave; l&#39;adresse http://www.leclubfrancetelevisions.fr/ et http://www.france3.fr et (ci-apr&egrave;s d&eacute;nomm&eacute; le &laquo; Jeu Concours &raquo;). Le Jeu-Concours gratuit sans obligation d&#39;achat, avec tirage au sort, est ouvert du 27 septembre au 13 novembre 2013 inclus. ARTICLE 2 : ACCEPTATION La participation au Jeu Concours implique de la part des joueurs l&#39;acceptation sans aucune r&eacute;serve du pr&eacute;sent r&egrave;glement et de ses &eacute;ventuels avenants ainsi que du principe du Jeu. Tout contrevenant &agrave; l&#39;un ou plusieurs des articles du pr&eacute;sent r&egrave;glement sera priv&eacute; de la possibilit&eacute; de participer au Jeu, mais &eacute;galement du lot qu&#39;il aura pu &eacute;ventuellement gagner. ARTICLE 3 : PARTICIPATION Ce tirage au sort est ouvert &agrave; toute personne en nom propre, sans distinction d&#39;&acirc;ge, d&eacute;sireuse d&#39;y participer r&eacute;sidant en France m&eacute;tropolitaine et DOM TOM &agrave; l&#39;exception des collaborateurs permanents ou occasionnels de l&#39;Organisateur et des membres de leur famille. Les soci&eacute;t&eacute;s, administrations, commerces ou leurs dirigeants et personnels ne peuvent participer au Jeu. Le simple fait pour un mineur de participer au Jeu implique qu&#39;un accord parental pr&eacute;alable, &eacute;crit et dat&eacute; lui a &eacute;t&eacute; donn&eacute;. La participation au Jeu implique la connaissance et l&#39;acceptation des caract&eacute;ristiques et des limites d&#39;Internet notamment en ce qui concerne les performances techniques, les temps de r&eacute;ponse pour consulter, interroger ou transf&eacute;rer des informations, l&#39;absence de protection de certaines donn&eacute;es contre des d&eacute;tournements &eacute;ventuels et les risques de contamination par des &eacute;ventuels virus circulant sur le r&eacute;seau. ARTICLE 4 : MODALITES ET PRINCIPES DU JEU Ce Jeu est ouvert du 27 septembre au 13 novembre2013 inclus. Le principe du jeu est le suivant : A partir du 27 septembre 2013, les internautes pourront se connecter au site pr&eacute; cit&eacute;: http://www.leclubfrancetelevisions.fr/ et http://www.france3.fr devront cliquer sur une ic&ocirc;ne Quiz &laquo; Concert M &raquo; qui les am&egrave;nera &agrave; la page du jeu-concours. Les participants devront r&eacute;pondre aux 3 questions (3 propositions de r&eacute;ponse pour chaque question), et compl&eacute;ter le formulaire d&#39;inscription. Il sera impossible de participer si l&#39;un des champs du formulaire d&#39;inscription n&#39;est pas rempli. Lors de l&#39;inscription, vous certifierez que les donn&eacute;es que vous saisissez sont r&eacute;elles et vraies. Toute fausse d&eacute;claration ou d&eacute;claration erron&eacute;e et/ou incompl&egrave;te, tir&eacute;e au sort sera consid&eacute;r&eacute;e comme nulle et entra&icirc;nera la d&eacute;signation d&#39;un autre participant par un nouveau tirage au sort. ARTICLE 5 : DETERMINATION DES GAGNANTS 5.1 Dispositif g&eacute;n&eacute;ral Un tirage au sort sera effectu&eacute; &agrave; la fin de la p&eacute;riode de jeu parmi tous les joueurs ayant r&eacute;pondu aux 3 questions et d&eacute;signera les gagnants des dotations mises en jeu. Un jury d&#39;honneur compos&eacute; de personnes comp&eacute;tentes et qualifi&eacute;es de l&#39;Organisateur assure le contr&ocirc;le du Jeu lors du tirage au sort des lots mis en jeu. Toute r&eacute;ponse incompl&egrave;te ou effectu&eacute;e apr&egrave;s les dates limites de Jeu sera consid&eacute;r&eacute;e comme nulle. Toute fausse d&eacute;claration ou d&eacute;claration erron&eacute;e et/ou incompl&egrave;te, tir&eacute;e au sort sera consid&eacute;r&eacute;e comme nulle et entra&icirc;nera la d&eacute;signation d&#39;un autre participant par un nouveau tirage au sort. Les dotations sont nominatives et adress&eacute;es aux gagnants. 5.2 Restrictions particuli&egrave;res Il ne sera retenu qu&#39;une participation gagnante par personne, par famille, par foyer. On entend par foyer, les membres d&#39;une m&ecirc;me famille ou situation analogique (PACS, concubinage ou personne r&eacute;sidant sous le m&ecirc;me toit) domicili&eacute;s &agrave; une m&ecirc;me adresse. ARTICLE 6 : DOTATIONS Description des dotations : Il y aura 9 gagnants tir&eacute;s au sort. Rang 1 : Une rencontre avec M le 12/12 dans l&#39;apr&eacute;s-midi. Rang 2 &agrave; 5 : 2 places cat&eacute;gorie 1 le 13 d&eacute;cembre &agrave; Bercy Rang 6 &agrave; 9 : 2 places cat&eacute;gorie 1 le 14 d&eacute;cembre &agrave; Bercy AUTORISATION DE TOURNAGE, DE REPRODUCTION ET DE COMMUNICATION AU PUBLIC Le nom des gagnants sera annonc&eacute; sur le site Internet du Club France T&eacute;l&eacute;visions dans le mois suivant la fin du jeu. En cas de non respect des dispositions qui pr&eacute;c&egrave;dent, ceci entra&icirc;nera l&#39;annulation de la participation concern&eacute;e. Le participant sera d&eacute;finitivement d&eacute;chu de tout droit &agrave; obtenir une quelconque dotation, et aucune r&eacute;clamation ne sera accept&eacute;e de ce fait. Les dotations ne pourront &ecirc;tre ni &eacute;chang&eacute;es, ni reprises, ni converties en esp&egrave;ces. L&#39;Organisateur se chargera de faire entrer les gagnants en possession de leur dotation. L&#39;Organisateur est charg&eacute; de superviser l&#39;envoi des dotations aux gagnants et de leur gestion mat&eacute;rielle. En cas de retour des dotations pour quelque cause que ce soit, aucun renvoi ne sera effectu&eacute;, les dotations seront consid&eacute;r&eacute;es comme d&eacute;finitivement perdues. L&#39;organisateur se r&eacute;serve la possibilit&eacute; de modifier en tout ou partie la dotation si les circonstances le n&eacute;cessitent, sans que cette modification ouvre droit &agrave; une quelconque compensation &agrave; l&#39;&eacute;gard du gagnant. Les &eacute;ventuelles r&eacute;clamations concernant la mise &agrave; disposition des gains doivent &ecirc;tre formul&eacute;es aupr&egrave;s de la Soci&eacute;t&eacute; Organisatrice sous 16 semaines apr&egrave;s la fin du jeu. La Soci&eacute;t&eacute; Organisatrice d&eacute;cline toute responsabilit&eacute; pour tous les incidents qui pourraient survenir pendant la dur&eacute;e de jouissance du prix attribu&eacute; et/ou du fait de son utilisation. Le Gagnant doit autoriser toutes v&eacute;rifications concernant son identit&eacute; et son domicile. De m&ecirc;me, la responsabilit&eacute; de la Soci&eacute;t&eacute; Organisatrice ne pourra &ecirc;tre recherch&eacute;e si le gagnant ne re&ccedil;oit pas ledit gain. ARTICLE 7 : RESPONSABILITE DES ORGANISATEURS L&#39;Organisateur ne saurait &ecirc;tre tenu pour responsable si pour des raisons ind&eacute;pendantes de leur volont&eacute; (cas fortuit ou force majeure ainsi que tout autre &eacute;v&eacute;nement consid&eacute;r&eacute; par elles comme rendant impossible l&#39;ex&eacute;cution du Jeu dans les conditions initialement pr&eacute;vues), le Jeu &eacute;tait partiellement ou totalement modifi&eacute;, report&eacute; ou annul&eacute;. L&#39;Organisateur ne peut &ecirc;tre tenu pour responsable du mauvais fonctionnement du ou des site(s) et/ou du Jeu pour un navigateur donn&eacute;. L&#39;Organisateur ne garantit pas que les sites et/ou le jeu fonctionne sans interruption ou qu&#39;il ne contient pas d&#39;erreurs informatiques quelconques, ni que les d&eacute;fauts constat&eacute;s seront corrig&eacute;s. En cas de dysfonctionnement technique du Jeu, l&#39;Organisateur se r&eacute;serve le droit si il y a lieu d&#39;invalider et/ou d&#39;annuler le Jeu au cours duquel le dit dysfonctionnement a eu lieu. Aucune r&eacute;clamation ne sera accept&eacute;e de ce fait. L&#39;Organisateur ne pourra &ecirc;tre tenu responsable si les donn&eacute;es relatives &agrave; l&#39;inscription d&#39;un participant ne lui parvenait pas pour une quelconque raison dont il ne pourrait &ecirc;tre tenu responsable (par exemple, un probl&egrave;me de connexion &agrave; Internet d&ucirc; &agrave; une quelconque raison chez l&#39;utilisateur, une d&eacute;faillance momentan&eacute;e de nos serveurs pour une raison quelconque, etc.) ou lui arriveraient illisibles ou impossible &agrave; traiter (par exemple, si le participant poss&egrave;de un mat&eacute;riel informatique ou un environnement logiciel inad&eacute;quat pour son inscription, etc.) L&#39;Organisateur ne pourrait &ecirc;tre tenu responsable d&#39;un pr&eacute;judice d&#39;aucune nature (personnelle, physique, mat&eacute;rielle, financi&egrave;re ou autre) survenu &agrave; l&#39;occasion de la participation d&#39;un joueur au Jeu. L&#39;Organisateur ne pourra &ecirc;tre tenu pour responsable du fait de l&#39;impossibilit&eacute; g&eacute;ographique ou technique &agrave; se connecter sur le site Internet cit&eacute; &agrave; l&#39;article 1. L&#39;Organisateur ne saurait &ecirc;tre tenu pour responsable des pertes et /ou vols des dotations et/ou des retards lors de leur acheminement du fait des services postaux ou de leur destruction totale ou partielle pour tout autre cas fortuit. Sa responsabilit&eacute; ne saurait &ecirc;tre engag&eacute;e de ce fait. L&#39;Organisateur disqualifiera syst&eacute;matiquement tout participant qui d&eacute;tournera l&#39;esprit du Jeu en tentant d&#39;augmenter ses chances de gains, soit en utilisant des moyens techniques ou ill&eacute;gaux connus ou &agrave; ce jour inconnus soit en utilisant en captant ou en d&eacute;tournant &agrave; son profit des informations confidentielles. L&#39;Organisateur se r&eacute;serve le droit de proc&eacute;der &agrave; des v&eacute;rifications des m&eacute;thodes utilis&eacute;es par le joueur et d&eacute;terminer les cons&eacute;quences qu&#39;il juge utiles. L&#39;Organisateur se r&eacute;serve le droit d&#39;exercer des poursuites en cas de falsification av&eacute;r&eacute;e. ARTICLE 8 : RECLAMATION Pour toute question ou demande de renseignement sur le Jeu, Le participant devra contacter, sous 3 mois, le Service Client&egrave;le &agrave; l&#39;adresse suivante : France T&eacute;l&eacute;visions - Quiz &laquo; Concert M &raquo; - 7, esplanade Henri de France - 75907 Paris cedex 15. L&#39;Organisateur s&#39;engage &agrave; r&eacute;pondre dans les plus brefs d&eacute;lais &agrave; ces questions ou demandes de renseignements. Toute r&eacute;clamation li&eacute;e &agrave; l&#39;application ou &agrave; l&#39;interpr&eacute;tation du pr&eacute;sent Jeu sera tranch&eacute;e exclusivement par l&#39;Organisateur. ARTICLE 9 : MODIFICATION DU REGLEMENT L&#39;Organisateur se r&eacute;serve la possibilit&eacute; de modifier le pr&eacute;sent r&egrave;glement en cas de besoin, &agrave; prendre toutes d&eacute;cisions qu&#39;ils pourraient estimer utiles pour l&#39;application et l&#39;interpr&eacute;tation du r&egrave;glement, sans que sa responsabilit&eacute; ne soit engag&eacute;e. Toutes modifications, substantielles ou non, au pr&eacute;sent r&egrave;glement peuvent &eacute;ventuellement &ecirc;tre apport&eacute;es pendant le d&eacute;roulement du Jeu, lesquelles seront alors port&eacute;es &agrave; la connaissance des joueurs qui devront s&#39;y soumettre en tant qu&#39;annexes aux pr&eacute;sentes. ARTICLE 10 : VALIDATION ET ACCES AU REGLEMENT DU JEU L&#39;int&eacute;gralit&eacute; du r&egrave;glement est disponible en ligne sur la page Internet du jeu &laquo; Concert M &raquo;. ARTICLE 11 : DONNEES ET INFORMATIONS - LOI INFORMATIQUE ET LIBERTES Les participants autorisent l&#39;utilisation et la diffusion de leur nom et pr&eacute;nom et/ou identifiant dans le cadre de la publication des gagnants. Les participants autorisent l&#39;utilisation et la diffusion de leur nom et pr&eacute;nom et adresses dans toute manifestation publi-promotionnelle, sur le site de l&#39;Organisateur et sur tout site ou support affili&eacute;, sans que cette utilisation puisse ouvrir de droit et r&eacute;mun&eacute;ration autres que le prix gagn&eacute;. En application de la loi n&deg; 78-17 du 6 janvier 1978 relative &agrave; l&#39;informatique, aux fichiers et aux libert&eacute;s, les joueurs inscrits au Jeu disposent des droits d&#39;opposition (art. 38 de la loi), d&#39;acc&egrave;s (art. 39,41 et 42 de la loi), de rectification et de suppression (art. 40 de la loi) des donn&eacute;es les concernant. Pour l&#39;exercer, les joueurs contacteront la Direction de la Communication de FTV &agrave; l&#39;adresse ci-dessous : FTV &laquo; Concert M &raquo; - 7, esplanade Henri de France - 75907 Paris cedex 15. Les joueurs sont inform&eacute;s que les donn&eacute;es les concernant enregistr&eacute;es dans le cadre du Jeu sont n&eacute;cessaires &agrave; la prise en compte de leur participation et &agrave; l&#39;attribution de leurs gains.</p>\r\n', 0, '', '', '', '', '', '', NULL, '', NULL, NULL, 0, '', 'quiz', '2013-10-12 16:41:50', '2013-10-18 15:25:01', 'quiz'),
(7, 4, 0, 'Smartbox tirage au sort', 'smartbox-tirage-au-sort', 'media/game/7-smart-box-1.png', NULL, NULL, 0, 1, 0, 1, 1, 1, '2013-10-16 00:00:00', '2013-10-16 00:00:00', NULL, NULL, 0, '', '', '', '', '<p>Participer au super tirage au sort pour gagner un coffret SmartBox ! Bonne chance &agrave; tous !</p>\r\n', '', 0, '', '', '', '', '', '', NULL, '', NULL, NULL, 0, '', 'lottery', '2013-10-16 10:23:01', '2013-10-16 10:32:27', 'lottery');

-- --------------------------------------------------------

--
-- Structure de la table `game_entry`
--

CREATE TABLE IF NOT EXISTS `game_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `bonus` tinyint(1) DEFAULT NULL,
  `points` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `winner` tinyint(1) DEFAULT NULL,
  `terms_optin` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `drawable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1912E4FFE48FD905` (`game_id`),
  KEY `IDX_1912E4FFA76ED395` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=86 ;

--
-- Contenu de la table `game_entry`
--

INSERT INTO `game_entry` (`id`, `game_id`, `user_id`, `active`, `bonus`, `points`, `winner`, `terms_optin`, `created_at`, `updated_at`, `drawable`) VALUES
(1, 1, 1, 0, 0, '0', 0, NULL, '2013-10-02 18:22:17', '2013-10-02 18:22:17', NULL),
(2, 1, 1, 0, 0, '0', 0, NULL, '2013-10-02 18:24:16', '2013-10-02 18:24:16', NULL),
(3, 1, 1, 0, 0, '0', 0, NULL, '2013-10-02 18:34:34', '2013-10-02 18:34:34', NULL),
(4, 1, 1, 0, 0, '0', 0, NULL, '2013-10-02 18:36:00', '2013-10-02 18:36:00', NULL),
(5, 1, 1, 0, 0, '0', 0, NULL, '2013-10-02 18:36:13', '2013-10-02 18:36:13', NULL),
(6, 1, 1, 0, 0, '0', 0, NULL, '2013-10-02 18:52:20', '2013-10-02 18:52:20', NULL),
(7, 1, 1, 0, 0, '0', 0, NULL, '2013-10-02 19:04:33', '2013-10-02 19:04:33', NULL),
(8, 2, 1, 0, 0, '0', 0, NULL, '2013-10-02 19:04:46', '2013-10-02 19:06:29', NULL),
(9, 2, 1, 0, 0, '0', 0, NULL, '2013-10-03 10:30:06', '2013-10-07 10:29:37', NULL),
(10, 1, 1, 0, 0, '0', 1, NULL, '2013-10-07 09:58:50', '2013-10-07 09:58:51', NULL),
(11, 2, 2, 1, 0, '0', 0, NULL, '2013-10-07 10:18:57', '2013-10-07 10:18:57', NULL),
(12, 1, 1, 0, 0, '0', 1, NULL, '2013-10-07 10:41:05', '2013-10-07 10:41:05', NULL),
(13, 1, 1, 0, 0, '0', 1, NULL, '2013-10-07 10:44:32', '2013-10-07 10:44:32', NULL),
(14, 1, 1, 0, 0, '0', 1, NULL, '2013-10-07 10:44:44', '2013-10-07 10:44:44', NULL),
(15, 4, 1, 0, 0, '0', 0, NULL, '2013-10-07 11:01:07', '2013-10-21 00:45:34', NULL),
(16, 5, 1, 0, 0, '0', 0, NULL, '2013-10-07 11:45:02', '2013-10-21 00:52:43', NULL),
(17, 5, 3, 1, 0, '0', 0, NULL, '2013-10-07 13:00:44', '2013-10-07 13:00:44', NULL),
(18, 1, 1, 0, 0, '0', 1, NULL, '2013-10-07 13:48:55', '2013-10-07 13:48:55', NULL),
(19, 1, 1, 0, 0, '0', 1, NULL, '2013-10-07 13:51:09', '2013-10-07 13:51:09', NULL),
(20, 1, 1, 0, 0, '0', 1, NULL, '2013-10-08 15:35:43', '2013-10-08 15:35:43', NULL),
(21, 6, 1, 0, 0, '0', 1, NULL, '2013-10-12 16:52:40', '2013-10-12 16:52:58', NULL),
(22, 1, 1, 0, 0, '0', 1, NULL, '2013-10-12 17:12:43', '2013-10-12 17:12:43', NULL),
(23, 5, 5, 1, 0, '0', 0, NULL, '2013-10-14 08:21:08', '2013-10-14 08:21:08', NULL),
(24, 1, 6, 0, 0, '0', 1, NULL, '2013-10-14 11:19:41', '2013-10-14 11:19:42', NULL),
(25, 4, 6, 1, 0, '0', 0, NULL, '2013-10-14 11:20:21', '2013-10-14 11:20:21', NULL),
(26, 4, 8, 1, 0, '0', 0, NULL, '2013-10-15 10:53:17', '2013-10-15 10:53:17', NULL),
(27, 2, 8, 0, 0, '0', 0, NULL, '2013-10-15 11:02:50', '2013-10-15 11:14:45', NULL),
(28, 1, 1, 0, 0, '0', 1, NULL, '2013-10-15 14:34:29', '2013-10-15 14:34:29', NULL),
(29, 3, 1, 0, 0, '0', 1, NULL, '2013-10-15 14:39:43', '2013-10-15 14:39:54', NULL),
(30, 3, 7, 0, 0, '0', 1, NULL, '2013-10-15 15:43:16', '2013-10-15 16:00:00', NULL),
(31, 2, 7, 1, 0, '0', 0, NULL, '2013-10-15 15:44:07', '2013-10-15 15:44:07', NULL),
(32, 4, 7, 1, 0, '0', 0, NULL, '2013-10-15 15:45:15', '2013-10-15 15:45:15', NULL),
(33, 6, 7, 0, 0, '0', 1, NULL, '2013-10-15 15:46:23', '2013-10-15 15:46:42', NULL),
(34, 3, 5, 1, 0, '0', 0, NULL, '2013-10-15 15:47:39', '2013-10-15 15:47:39', NULL),
(35, 3, 8, 1, 0, '0', 0, NULL, '2013-10-15 15:48:44', '2013-10-15 15:48:44', NULL),
(36, 3, 1, 0, 0, '0', 1, NULL, '2013-10-15 15:53:25', '2013-10-15 15:54:21', NULL),
(37, 3, 1, 0, 0, '0', 1, NULL, '2013-10-15 15:54:50', '2013-10-15 15:55:43', NULL),
(38, 3, 9, 0, 0, '0', 1, NULL, '2013-10-15 16:00:37', '2013-10-15 16:03:39', NULL),
(39, 3, 1, 1, 0, '0', 0, NULL, '2013-10-15 16:01:39', '2013-10-15 16:01:39', NULL),
(40, 3, 7, 0, 0, '0', 0, NULL, '2013-10-15 16:04:17', '2013-10-15 16:06:03', NULL),
(41, 3, 10, 0, 0, '0', 1, NULL, '2013-10-15 16:10:30', '2013-10-15 16:12:06', NULL),
(42, 6, 10, 0, 0, '0', 1, NULL, '2013-10-15 16:16:36', '2013-10-15 16:16:52', NULL),
(43, 3, 11, 0, 0, '0', 1, NULL, '2013-10-15 17:37:53', '2013-10-15 17:45:45', NULL),
(44, 3, 11, 1, 0, '0', 0, NULL, '2013-10-15 17:46:45', '2013-10-15 17:46:45', NULL),
(45, 7, 1, 0, 0, '0', 1, NULL, '2013-10-16 10:23:13', '2013-10-16 10:23:13', NULL),
(46, 7, 1, 0, 0, '0', 1, NULL, '2013-10-16 10:30:00', '2013-10-16 10:30:00', NULL),
(47, 7, 7, 0, 0, '0', 1, NULL, '2013-10-17 10:28:02', '2013-10-17 10:28:02', NULL),
(48, 3, 7, 0, 0, '0', 1, NULL, '2013-10-17 10:28:40', '2013-10-17 10:29:40', NULL),
(49, 5, 7, 1, 0, '0', 0, NULL, '2013-10-17 10:30:33', '2013-10-17 10:30:33', NULL),
(50, 7, 12, 0, 0, '0', 1, NULL, '2013-10-17 10:42:18', '2013-10-17 10:42:18', NULL),
(51, 7, 12, 0, 0, '0', 1, NULL, '2013-10-17 10:42:44', '2013-10-17 10:42:45', NULL),
(52, 6, 12, 0, 0, '0', 1, NULL, '2013-10-17 10:43:34', '2013-10-17 10:43:46', NULL),
(53, 3, 12, 0, 0, '0', 1, NULL, '2013-10-17 10:44:54', '2013-10-17 10:49:15', NULL),
(54, 3, 12, 1, 0, '0', 0, NULL, '2013-10-17 10:50:21', '2013-10-17 10:50:21', NULL),
(55, 5, 12, 1, 0, '0', 0, NULL, '2013-10-17 10:57:27', '2013-10-17 10:57:27', NULL),
(56, 4, 12, 1, 0, '0', 0, NULL, '2013-10-17 11:01:34', '2013-10-17 11:01:34', NULL),
(57, 1, 12, 0, 0, '0', 1, NULL, '2013-10-17 11:03:35', '2013-10-17 11:03:36', NULL),
(58, 2, 12, 0, 0, '0', 0, NULL, '2013-10-17 11:06:54', '2013-10-17 11:07:45', NULL),
(59, 3, 13, 0, 0, '0', 1, NULL, '2013-10-18 15:06:41', '2013-10-18 15:08:45', NULL),
(60, 7, 9, 0, 0, '0', 1, NULL, '2013-10-18 15:08:13', '2013-10-18 15:08:13', NULL),
(61, 1, 13, 0, 0, '0', 1, NULL, '2013-10-18 15:09:59', '2013-10-18 15:09:59', NULL),
(62, 2, 13, 0, 0, '0', 0, NULL, '2013-10-18 15:10:42', '2013-10-18 17:47:29', NULL),
(63, 5, 13, 1, 0, '0', 0, NULL, '2013-10-18 15:11:56', '2013-10-18 15:11:56', NULL),
(64, 6, 13, 0, 0, '0', 1, NULL, '2013-10-18 15:12:11', '2013-10-18 15:13:57', NULL),
(65, 3, 13, 0, 0, '0', 1, NULL, '2013-10-18 15:16:39', '2013-10-18 16:21:39', NULL),
(66, 7, 13, 0, 0, '0', 1, NULL, '2013-10-18 15:17:30', '2013-10-18 15:17:30', NULL),
(67, 1, 13, 0, 0, '0', 1, NULL, '2013-10-18 15:23:07', '2013-10-18 15:23:07', NULL),
(68, 6, 13, 0, 0, '0', 1, NULL, '2013-10-18 15:25:09', '2013-10-18 15:25:24', NULL),
(69, 6, 13, 0, 0, '0', 1, NULL, '2013-10-18 15:26:03', '2013-10-18 15:34:32', NULL),
(70, 6, 13, 0, 0, '0', 1, NULL, '2013-10-18 15:47:08', '2013-10-18 15:48:06', NULL),
(71, 6, 13, 0, 0, '0', 1, NULL, '2013-10-18 15:50:13', '2013-10-18 17:38:05', NULL),
(72, 4, 13, 1, 0, '0', 0, NULL, '2013-10-18 15:53:27', '2013-10-18 15:53:27', NULL),
(73, 7, 13, 0, 0, '0', 1, NULL, '2013-10-18 16:03:06', '2013-10-18 16:03:06', NULL),
(74, 1, 13, 0, 0, '0', 1, NULL, '2013-10-18 16:03:41', '2013-10-18 16:03:41', NULL),
(75, 1, 13, 0, 0, '0', 1, NULL, '2013-10-18 16:06:13', '2013-10-18 16:06:13', NULL),
(76, 1, 13, 0, 0, '0', 1, NULL, '2013-10-18 16:14:41', '2013-10-18 16:14:42', NULL),
(77, 7, 13, 0, 0, '0', 1, NULL, '2013-10-18 16:28:57', '2013-10-18 16:28:57', NULL),
(78, 7, 13, 0, 0, '0', 1, NULL, '2013-10-18 16:29:46', '2013-10-18 16:29:46', NULL),
(79, 7, 13, 0, 0, '0', 1, NULL, '2013-10-18 16:31:07', '2013-10-18 16:31:07', NULL),
(80, 7, 13, 0, 0, '0', 1, NULL, '2013-10-18 16:31:36', '2013-10-18 16:31:36', NULL),
(81, 3, 13, 1, 0, '0', 0, NULL, '2013-10-18 16:44:09', '2013-10-18 16:44:09', NULL),
(82, 4, 5, 1, 0, '0', 0, NULL, '2013-10-21 00:40:36', '2013-10-21 00:40:36', NULL),
(83, 1, 5, 0, 0, '0', 1, NULL, '2013-10-23 11:06:34', '2013-10-23 11:06:34', 0),
(84, 1, 5, 0, 0, '0', 1, NULL, '2013-10-23 11:07:29', '2013-10-23 11:07:29', 0),
(85, 1, 1, 0, 0, '0', 1, NULL, '2013-10-23 15:41:50', '2013-10-23 15:41:50', 0);

-- --------------------------------------------------------

--
-- Structure de la table `game_instantwin`
--

CREATE TABLE IF NOT EXISTS `game_instantwin` (
  `id` int(11) NOT NULL,
  `occurrence_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `schedule_occurrence_auto` tinyint(1) NOT NULL,
  `occurrence_number` int(11) DEFAULT NULL,
  `occurrence_draw_frequency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scratchcard_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `game_instantwin`
--

INSERT INTO `game_instantwin` (`id`, `occurrence_type`, `schedule_occurrence_auto`, `occurrence_number`, `occurrence_draw_frequency`, `scratchcard_image`) VALUES
(1, 'datetime', 1, 10, 'day', 'media/game/1-opel-adam-citadine-premium-1313681.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `game_instantwin_occurrence`
--

CREATE TABLE IF NOT EXISTS `game_instantwin_occurrence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instantwin_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `entry_id` int(11) DEFAULT NULL,
  `prize_id` int(11) DEFAULT NULL,
  `occurrence_date` datetime NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B53C680BBA364942` (`entry_id`),
  KEY `IDX_B53C680B89B15F33` (`instantwin_id`),
  KEY `IDX_B53C680BA76ED395` (`user_id`),
  KEY `IDX_B53C680BBBE43214` (`prize_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=288 ;

--
-- Contenu de la table `game_instantwin_occurrence`
--

INSERT INTO `game_instantwin_occurrence` (`id`, `instantwin_id`, `user_id`, `entry_id`, `prize_id`, `occurrence_date`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, '2013-10-23 01:28:32', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(2, 1, NULL, NULL, NULL, '2013-10-23 17:04:49', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(3, 1, NULL, NULL, NULL, '2013-10-23 20:43:51', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(4, 1, NULL, NULL, NULL, '2013-10-23 18:17:02', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(5, 1, NULL, NULL, NULL, '2013-10-23 00:16:41', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(6, 1, 5, 84, NULL, '2013-10-23 09:38:51', 0, '2013-10-02 18:10:43', '2013-10-23 11:07:29'),
(7, 1, 5, 83, NULL, '2013-10-23 10:06:44', 0, '2013-10-02 18:10:43', '2013-10-23 11:06:34'),
(8, 1, NULL, NULL, NULL, '2013-10-23 07:51:52', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(9, 1, NULL, NULL, NULL, '2013-10-23 21:57:44', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(10, 1, 1, 85, NULL, '2013-10-23 15:40:32', 0, '2013-10-02 18:10:43', '2013-10-23 15:41:50'),
(11, 1, NULL, NULL, NULL, '2013-10-24 01:32:28', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(12, 1, NULL, NULL, NULL, '2013-10-24 02:16:44', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(13, 1, NULL, NULL, NULL, '2013-10-24 21:39:45', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(14, 1, NULL, NULL, NULL, '2013-10-24 19:24:34', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(15, 1, NULL, NULL, NULL, '2013-10-24 12:59:51', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(16, 1, NULL, NULL, NULL, '2013-10-24 05:28:24', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(17, 1, NULL, NULL, NULL, '2013-10-24 06:55:11', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(18, 1, NULL, NULL, NULL, '2013-10-24 16:12:18', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(19, 1, NULL, NULL, NULL, '2013-10-24 07:01:59', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(20, 1, NULL, NULL, NULL, '2013-10-24 23:00:17', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(21, 1, NULL, NULL, NULL, '2013-10-25 11:45:24', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(22, 1, NULL, NULL, NULL, '2013-10-25 16:50:17', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(23, 1, NULL, NULL, NULL, '2013-10-25 15:49:38', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(24, 1, NULL, NULL, NULL, '2013-10-25 08:28:12', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(25, 1, NULL, NULL, NULL, '2013-10-25 16:45:20', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(26, 1, NULL, NULL, NULL, '2013-10-25 01:17:27', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(27, 1, NULL, NULL, NULL, '2013-10-25 00:00:08', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(28, 1, NULL, NULL, NULL, '2013-10-25 11:22:14', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(29, 1, NULL, NULL, NULL, '2013-10-25 03:34:42', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(30, 1, NULL, NULL, NULL, '2013-10-25 10:44:49', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(31, 1, NULL, NULL, NULL, '2013-10-26 13:28:09', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(32, 1, NULL, NULL, NULL, '2013-10-26 22:51:00', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(33, 1, NULL, NULL, NULL, '2013-10-26 03:24:17', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(34, 1, NULL, NULL, NULL, '2013-10-26 03:00:16', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(35, 1, NULL, NULL, NULL, '2013-10-26 05:42:32', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(36, 1, NULL, NULL, NULL, '2013-10-26 13:44:27', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(37, 1, NULL, NULL, NULL, '2013-10-26 03:31:34', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(38, 1, NULL, NULL, NULL, '2013-10-26 19:41:16', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(39, 1, NULL, NULL, NULL, '2013-10-26 21:44:07', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(40, 1, NULL, NULL, NULL, '2013-10-26 20:50:48', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(41, 1, NULL, NULL, NULL, '2013-10-27 11:22:17', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(42, 1, NULL, NULL, NULL, '2013-10-27 13:55:59', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(43, 1, NULL, NULL, NULL, '2013-10-27 07:54:59', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(44, 1, NULL, NULL, NULL, '2013-10-27 05:26:36', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(45, 1, NULL, NULL, NULL, '2013-10-27 10:49:42', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(46, 1, NULL, NULL, NULL, '2013-10-27 18:48:18', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(47, 1, NULL, NULL, NULL, '2013-10-27 22:52:57', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(48, 1, NULL, NULL, NULL, '2013-10-27 20:30:26', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(49, 1, NULL, NULL, NULL, '2013-10-27 07:57:32', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(50, 1, NULL, NULL, NULL, '2013-10-27 19:55:05', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(51, 1, NULL, NULL, NULL, '2013-10-28 23:23:29', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(52, 1, NULL, NULL, NULL, '2013-10-28 10:13:56', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(53, 1, NULL, NULL, NULL, '2013-10-28 21:19:47', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(54, 1, NULL, NULL, NULL, '2013-10-28 16:04:04', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(55, 1, NULL, NULL, NULL, '2013-10-28 03:36:52', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(56, 1, NULL, NULL, NULL, '2013-10-28 07:28:00', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(57, 1, NULL, NULL, NULL, '2013-10-28 14:45:27', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(58, 1, NULL, NULL, NULL, '2013-10-28 09:35:31', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(59, 1, NULL, NULL, NULL, '2013-10-28 11:59:22', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(60, 1, NULL, NULL, NULL, '2013-10-28 20:02:23', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(61, 1, NULL, NULL, NULL, '2013-10-29 13:50:01', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(62, 1, NULL, NULL, NULL, '2013-10-29 04:11:06', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(63, 1, NULL, NULL, NULL, '2013-10-29 11:26:37', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(64, 1, NULL, NULL, NULL, '2013-10-29 03:27:17', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(65, 1, NULL, NULL, NULL, '2013-10-29 20:34:31', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(66, 1, NULL, NULL, NULL, '2013-10-29 06:20:32', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(67, 1, NULL, NULL, NULL, '2013-10-29 21:01:45', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(68, 1, NULL, NULL, NULL, '2013-10-29 03:05:03', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(69, 1, NULL, NULL, NULL, '2013-10-29 11:04:29', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(70, 1, NULL, NULL, NULL, '2013-10-29 09:40:17', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(71, 1, NULL, NULL, NULL, '2013-10-30 19:51:46', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(72, 1, NULL, NULL, NULL, '2013-10-30 23:26:10', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(73, 1, NULL, NULL, NULL, '2013-10-30 03:26:37', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(74, 1, NULL, NULL, NULL, '2013-10-30 07:16:17', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(75, 1, NULL, NULL, NULL, '2013-10-30 06:52:03', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(76, 1, NULL, NULL, NULL, '2013-10-30 17:09:30', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(77, 1, NULL, NULL, NULL, '2013-10-30 19:55:50', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(78, 1, NULL, NULL, NULL, '2013-10-30 15:36:30', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(79, 1, NULL, NULL, NULL, '2013-10-30 02:04:16', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(80, 1, NULL, NULL, NULL, '2013-10-30 04:28:48', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(81, 1, NULL, NULL, NULL, '2013-10-31 14:37:49', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(82, 1, NULL, NULL, NULL, '2013-10-31 17:30:15', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(83, 1, NULL, NULL, NULL, '2013-10-31 03:02:34', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(84, 1, NULL, NULL, NULL, '2013-10-31 14:05:29', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(85, 1, NULL, NULL, NULL, '2013-10-31 22:09:00', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(86, 1, NULL, NULL, NULL, '2013-10-31 02:46:31', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(87, 1, NULL, NULL, NULL, '2013-10-31 16:34:17', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(88, 1, NULL, NULL, NULL, '2013-10-31 11:07:44', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(89, 1, NULL, NULL, NULL, '2013-10-31 14:38:59', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(90, 1, NULL, NULL, NULL, '2013-10-31 16:23:27', 1, '2013-10-02 18:10:43', '2013-10-02 18:10:43'),
(91, 1, NULL, NULL, NULL, '2013-10-09 12:00:00', 1, '2013-10-02 18:46:13', '2013-10-02 18:46:13'),
(92, 1, NULL, NULL, NULL, '2013-10-03 22:25:00', 1, '2013-10-03 11:25:25', '2013-10-03 11:25:25'),
(93, 1, NULL, NULL, NULL, '2013-10-03 11:47:04', 1, '2013-10-03 11:25:26', '2013-10-03 11:25:26'),
(94, 1, NULL, NULL, NULL, '2013-10-03 14:07:54', 1, '2013-10-03 11:25:26', '2013-10-03 11:25:26'),
(95, 1, NULL, NULL, NULL, '2013-10-03 18:32:36', 1, '2013-10-03 11:25:27', '2013-10-03 11:25:27'),
(96, 1, NULL, NULL, NULL, '2013-10-03 22:11:51', 1, '2013-10-03 11:25:27', '2013-10-03 11:25:27'),
(97, 1, NULL, NULL, NULL, '2013-10-03 21:45:20', 1, '2013-10-03 11:25:27', '2013-10-03 11:25:27'),
(98, 1, NULL, NULL, NULL, '2013-10-03 21:03:20', 1, '2013-10-03 11:25:28', '2013-10-03 11:25:28'),
(99, 1, NULL, NULL, NULL, '2013-10-04 10:23:10', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(100, 1, NULL, NULL, NULL, '2013-10-04 17:24:39', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(101, 1, NULL, NULL, NULL, '2013-10-04 21:35:48', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(102, 1, NULL, NULL, NULL, '2013-10-04 03:44:48', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(103, 1, NULL, NULL, NULL, '2013-10-04 09:05:10', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(104, 1, NULL, NULL, NULL, '2013-10-04 08:43:54', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(105, 1, NULL, NULL, NULL, '2013-10-04 04:17:04', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(106, 1, NULL, NULL, NULL, '2013-10-05 11:34:18', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(107, 1, NULL, NULL, NULL, '2013-10-05 06:17:41', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(108, 1, NULL, NULL, NULL, '2013-10-05 03:18:12', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(109, 1, NULL, NULL, NULL, '2013-10-05 01:58:34', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(110, 1, NULL, NULL, NULL, '2013-10-05 09:52:23', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(111, 1, NULL, NULL, NULL, '2013-10-05 09:31:34', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(112, 1, NULL, NULL, NULL, '2013-10-05 01:48:48', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(113, 1, NULL, NULL, NULL, '2013-10-06 02:27:49', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(114, 1, NULL, NULL, NULL, '2013-10-06 11:03:01', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(115, 1, NULL, NULL, NULL, '2013-10-06 12:40:09', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(116, 1, 1, 18, NULL, '2013-10-06 21:04:38', 0, '2013-10-03 11:25:29', '2013-10-07 13:48:55'),
(117, 1, NULL, NULL, NULL, '2013-10-06 01:47:34', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(118, 1, NULL, NULL, NULL, '2013-10-06 06:50:12', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(119, 1, 1, 19, NULL, '2013-10-06 19:22:38', 0, '2013-10-03 11:25:29', '2013-10-07 13:51:09'),
(120, 1, 1, 14, NULL, '2013-10-07 04:50:17', 0, '2013-10-03 11:25:29', '2013-10-07 10:44:44'),
(121, 1, NULL, NULL, NULL, '2013-10-07 17:28:02', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(122, 1, NULL, NULL, NULL, '2013-10-07 14:57:44', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(123, 1, 1, 10, NULL, '2013-10-07 07:26:09', 0, '2013-10-03 11:25:29', '2013-10-07 09:58:51'),
(124, 1, NULL, NULL, NULL, '2013-10-07 21:43:19', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(125, 1, 1, 13, NULL, '2013-10-07 05:56:59', 0, '2013-10-03 11:25:29', '2013-10-07 10:44:32'),
(126, 1, 1, 12, NULL, '2013-10-07 06:13:29', 0, '2013-10-03 11:25:29', '2013-10-07 10:41:05'),
(127, 1, NULL, NULL, NULL, '2013-10-08 01:11:23', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(128, 1, NULL, NULL, NULL, '2013-10-08 08:38:17', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(129, 1, NULL, NULL, NULL, '2013-10-08 07:01:57', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(130, 1, NULL, NULL, NULL, '2013-10-08 03:21:31', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(131, 1, NULL, NULL, NULL, '2013-10-08 07:08:54', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(132, 1, NULL, NULL, NULL, '2013-10-08 19:55:48', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(133, 1, 1, 20, NULL, '2013-10-08 12:18:39', 0, '2013-10-03 11:25:29', '2013-10-08 15:35:43'),
(134, 1, NULL, NULL, NULL, '2013-10-09 13:19:43', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(135, 1, NULL, NULL, NULL, '2013-10-09 21:28:53', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(136, 1, NULL, NULL, NULL, '2013-10-09 23:43:50', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(137, 1, NULL, NULL, NULL, '2013-10-09 10:16:34', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(138, 1, NULL, NULL, NULL, '2013-10-09 21:34:19', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(139, 1, NULL, NULL, NULL, '2013-10-09 13:35:37', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(140, 1, NULL, NULL, NULL, '2013-10-09 11:11:20', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(141, 1, NULL, NULL, NULL, '2013-10-10 00:58:20', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(142, 1, NULL, NULL, NULL, '2013-10-10 15:54:45', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(143, 1, NULL, NULL, NULL, '2013-10-10 03:24:12', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(144, 1, NULL, NULL, NULL, '2013-10-10 05:26:24', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(145, 1, NULL, NULL, NULL, '2013-10-10 13:14:33', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(146, 1, NULL, NULL, NULL, '2013-10-10 20:24:14', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(147, 1, NULL, NULL, NULL, '2013-10-10 07:52:49', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(148, 1, NULL, NULL, NULL, '2013-10-11 09:30:23', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(149, 1, NULL, NULL, NULL, '2013-10-11 10:09:21', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(150, 1, NULL, NULL, NULL, '2013-10-11 06:08:38', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(151, 1, NULL, NULL, NULL, '2013-10-11 04:23:25', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(152, 1, NULL, NULL, NULL, '2013-10-11 18:40:07', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(153, 1, NULL, NULL, NULL, '2013-10-11 11:49:02', 1, '2013-10-03 11:25:29', '2013-10-03 11:25:29'),
(154, 1, NULL, NULL, NULL, '2013-10-11 17:30:49', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(155, 1, NULL, NULL, NULL, '2013-10-12 20:24:28', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(156, 1, NULL, NULL, NULL, '2013-10-12 20:33:57', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(157, 1, NULL, NULL, NULL, '2013-10-12 20:26:42', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(158, 1, NULL, NULL, NULL, '2013-10-12 06:49:31', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(159, 1, NULL, NULL, NULL, '2013-10-12 15:33:11', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(160, 1, 1, 22, NULL, '2013-10-12 15:48:20', 0, '2013-10-03 11:25:30', '2013-10-12 17:12:43'),
(161, 1, NULL, NULL, NULL, '2013-10-12 00:09:17', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(162, 1, NULL, NULL, NULL, '2013-10-13 20:48:07', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(163, 1, NULL, NULL, NULL, '2013-10-13 01:39:38', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(164, 1, NULL, NULL, NULL, '2013-10-13 18:33:15', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(165, 1, NULL, NULL, NULL, '2013-10-13 17:56:07', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(166, 1, NULL, NULL, NULL, '2013-10-13 00:04:02', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(167, 1, NULL, NULL, NULL, '2013-10-13 15:44:31', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(168, 1, NULL, NULL, NULL, '2013-10-13 19:03:47', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(169, 1, NULL, NULL, NULL, '2013-10-14 14:52:34', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(170, 1, NULL, NULL, NULL, '2013-10-14 15:58:15', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(171, 1, NULL, NULL, NULL, '2013-10-14 02:08:15', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(172, 1, NULL, NULL, NULL, '2013-10-14 12:30:02', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(173, 1, NULL, NULL, NULL, '2013-10-14 21:26:44', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(174, 1, NULL, NULL, NULL, '2013-10-14 09:49:41', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(175, 1, 6, 24, NULL, '2013-10-14 09:59:22', 0, '2013-10-03 11:25:30', '2013-10-14 11:19:42'),
(176, 1, NULL, NULL, NULL, '2013-10-15 23:32:51', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(177, 1, NULL, NULL, NULL, '2013-10-15 01:40:32', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(178, 1, NULL, NULL, NULL, '2013-10-15 02:24:36', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(179, 1, NULL, NULL, NULL, '2013-10-15 05:07:27', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(180, 1, 1, 28, NULL, '2013-10-15 11:05:37', 0, '2013-10-03 11:25:30', '2013-10-15 14:34:29'),
(181, 1, NULL, NULL, NULL, '2013-10-15 03:12:35', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(182, 1, NULL, NULL, NULL, '2013-10-15 15:52:54', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(183, 1, NULL, NULL, NULL, '2013-10-16 07:23:54', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(184, 1, NULL, NULL, NULL, '2013-10-16 07:37:05', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(185, 1, NULL, NULL, NULL, '2013-10-16 11:19:25', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(186, 1, NULL, NULL, NULL, '2013-10-16 17:14:26', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(187, 1, NULL, NULL, NULL, '2013-10-16 16:44:46', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(188, 1, NULL, NULL, NULL, '2013-10-16 15:39:07', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(189, 1, NULL, NULL, NULL, '2013-10-16 11:40:10', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(190, 1, 12, 57, NULL, '2013-10-17 10:10:15', 0, '2013-10-03 11:25:30', '2013-10-17 11:03:35'),
(191, 1, 13, 75, NULL, '2013-10-17 15:18:43', 0, '2013-10-03 11:25:30', '2013-10-18 16:06:13'),
(192, 1, NULL, NULL, NULL, '2013-10-17 05:48:21', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(193, 1, 13, 76, NULL, '2013-10-17 11:46:06', 0, '2013-10-03 11:25:30', '2013-10-18 16:14:42'),
(194, 1, NULL, NULL, NULL, '2013-10-17 05:42:38', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(195, 1, NULL, NULL, NULL, '2013-10-17 05:18:25', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(196, 1, NULL, NULL, NULL, '2013-10-17 07:22:22', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(197, 1, NULL, NULL, NULL, '2013-10-18 18:19:28', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(198, 1, 13, 67, NULL, '2013-10-18 09:37:13', 0, '2013-10-03 11:25:30', '2013-10-18 15:23:07'),
(199, 1, NULL, NULL, NULL, '2013-10-18 17:06:39', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(200, 1, 13, 61, NULL, '2013-10-18 11:38:29', 0, '2013-10-03 11:25:30', '2013-10-18 15:09:59'),
(201, 1, 13, 74, NULL, '2013-10-18 02:58:11', 0, '2013-10-03 11:25:30', '2013-10-18 16:03:41'),
(202, 1, NULL, NULL, NULL, '2013-10-18 21:11:50', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(203, 1, NULL, NULL, NULL, '2013-10-18 17:26:28', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(204, 1, NULL, NULL, NULL, '2013-10-19 18:05:33', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(205, 1, NULL, NULL, NULL, '2013-10-19 13:05:24', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(206, 1, NULL, NULL, NULL, '2013-10-19 08:53:47', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(207, 1, NULL, NULL, NULL, '2013-10-19 03:06:51', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(208, 1, NULL, NULL, NULL, '2013-10-19 18:10:55', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(209, 1, NULL, NULL, NULL, '2013-10-19 19:57:56', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(210, 1, NULL, NULL, NULL, '2013-10-19 03:12:18', 1, '2013-10-03 11:25:30', '2013-10-03 11:25:30'),
(211, 1, NULL, NULL, NULL, '2013-10-20 06:23:47', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(212, 1, NULL, NULL, NULL, '2013-10-20 17:28:08', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(213, 1, NULL, NULL, NULL, '2013-10-20 15:54:52', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(214, 1, NULL, NULL, NULL, '2013-10-20 18:06:30', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(215, 1, NULL, NULL, NULL, '2013-10-20 15:04:48', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(216, 1, NULL, NULL, NULL, '2013-10-20 01:56:32', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(217, 1, NULL, NULL, NULL, '2013-10-20 04:34:39', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(218, 1, NULL, NULL, NULL, '2013-10-21 06:26:24', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(219, 1, NULL, NULL, NULL, '2013-10-21 14:27:34', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(220, 1, NULL, NULL, NULL, '2013-10-21 15:00:34', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(221, 1, NULL, NULL, NULL, '2013-10-21 15:52:50', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(222, 1, NULL, NULL, NULL, '2013-10-21 05:54:28', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(223, 1, NULL, NULL, NULL, '2013-10-21 18:22:26', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(224, 1, NULL, NULL, NULL, '2013-10-21 12:00:10', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(225, 1, NULL, NULL, NULL, '2013-10-22 11:57:54', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(226, 1, NULL, NULL, NULL, '2013-10-22 08:21:15', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(227, 1, NULL, NULL, NULL, '2013-10-22 12:06:35', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(228, 1, NULL, NULL, NULL, '2013-10-22 10:06:26', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(229, 1, NULL, NULL, NULL, '2013-10-22 13:34:43', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(230, 1, NULL, NULL, NULL, '2013-10-22 17:19:58', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(231, 1, NULL, NULL, NULL, '2013-10-22 08:29:43', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(232, 1, NULL, NULL, NULL, '2013-10-23 14:51:19', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(233, 1, NULL, NULL, NULL, '2013-10-23 01:46:31', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(234, 1, NULL, NULL, NULL, '2013-10-23 15:46:59', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(235, 1, NULL, NULL, NULL, '2013-10-23 04:36:32', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(236, 1, NULL, NULL, NULL, '2013-10-23 18:15:53', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(237, 1, NULL, NULL, NULL, '2013-10-23 12:22:14', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(238, 1, NULL, NULL, NULL, '2013-10-23 23:44:33', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(239, 1, NULL, NULL, NULL, '2013-10-24 08:33:30', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(240, 1, NULL, NULL, NULL, '2013-10-24 23:09:50', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(241, 1, NULL, NULL, NULL, '2013-10-24 10:02:47', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(242, 1, NULL, NULL, NULL, '2013-10-24 04:45:32', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(243, 1, NULL, NULL, NULL, '2013-10-24 17:30:56', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(244, 1, NULL, NULL, NULL, '2013-10-24 17:09:17', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(245, 1, NULL, NULL, NULL, '2013-10-24 22:32:52', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(246, 1, NULL, NULL, NULL, '2013-10-25 17:26:00', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(247, 1, NULL, NULL, NULL, '2013-10-25 14:28:33', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(248, 1, NULL, NULL, NULL, '2013-10-25 12:43:56', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(249, 1, NULL, NULL, NULL, '2013-10-25 15:07:37', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(250, 1, NULL, NULL, NULL, '2013-10-25 10:03:42', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(251, 1, NULL, NULL, NULL, '2013-10-25 22:07:14', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(252, 1, NULL, NULL, NULL, '2013-10-25 00:08:43', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(253, 1, NULL, NULL, NULL, '2013-10-26 14:15:43', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(254, 1, NULL, NULL, NULL, '2013-10-26 16:22:55', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(255, 1, NULL, NULL, NULL, '2013-10-26 20:19:02', 1, '2013-10-03 11:25:31', '2013-10-03 11:25:31'),
(256, 1, NULL, NULL, NULL, '2013-10-26 12:59:39', 1, '2013-10-03 11:25:32', '2013-10-03 11:25:32'),
(257, 1, NULL, NULL, NULL, '2013-10-26 12:12:38', 1, '2013-10-03 11:25:32', '2013-10-03 11:25:32'),
(258, 1, NULL, NULL, NULL, '2013-10-26 14:10:30', 1, '2013-10-03 11:25:32', '2013-10-03 11:25:32'),
(259, 1, NULL, NULL, NULL, '2013-10-26 09:00:28', 1, '2013-10-03 11:25:32', '2013-10-03 11:25:32'),
(260, 1, NULL, NULL, NULL, '2013-10-27 17:30:05', 1, '2013-10-03 11:25:32', '2013-10-03 11:25:32'),
(261, 1, NULL, NULL, NULL, '2013-10-27 17:52:43', 1, '2013-10-03 11:25:32', '2013-10-03 11:25:32'),
(262, 1, NULL, NULL, NULL, '2013-10-27 02:08:34', 1, '2013-10-03 11:25:32', '2013-10-03 11:25:32'),
(263, 1, NULL, NULL, NULL, '2013-10-27 06:09:33', 1, '2013-10-03 11:25:32', '2013-10-03 11:25:32'),
(264, 1, NULL, NULL, NULL, '2013-10-27 15:11:05', 1, '2013-10-03 11:25:32', '2013-10-03 11:25:32'),
(265, 1, NULL, NULL, NULL, '2013-10-27 07:00:10', 1, '2013-10-03 11:25:32', '2013-10-03 11:25:32'),
(266, 1, NULL, NULL, NULL, '2013-10-27 10:37:05', 1, '2013-10-03 11:25:32', '2013-10-03 11:25:32'),
(267, 1, NULL, NULL, NULL, '2013-10-28 18:39:02', 1, '2013-10-03 11:25:32', '2013-10-03 11:25:32'),
(268, 1, NULL, NULL, NULL, '2013-10-28 11:24:42', 1, '2013-10-03 11:25:32', '2013-10-03 11:25:32'),
(269, 1, NULL, NULL, NULL, '2013-10-28 13:26:08', 1, '2013-10-03 11:25:32', '2013-10-03 11:25:32'),
(270, 1, NULL, NULL, NULL, '2013-10-28 01:33:27', 1, '2013-10-03 11:25:32', '2013-10-03 11:25:32'),
(271, 1, NULL, NULL, NULL, '2013-10-28 15:07:34', 1, '2013-10-03 11:25:32', '2013-10-03 11:25:32'),
(272, 1, NULL, NULL, NULL, '2013-10-28 11:31:05', 1, '2013-10-03 11:25:32', '2013-10-03 11:25:32'),
(273, 1, NULL, NULL, NULL, '2013-10-28 08:20:02', 1, '2013-10-03 11:25:32', '2013-10-03 11:25:32'),
(274, 1, NULL, NULL, NULL, '2013-10-29 17:26:26', 1, '2013-10-03 11:25:32', '2013-10-03 11:25:32'),
(275, 1, NULL, NULL, NULL, '2013-10-29 22:46:43', 1, '2013-10-03 11:25:32', '2013-10-03 11:25:32'),
(276, 1, NULL, NULL, NULL, '2013-10-29 08:00:35', 1, '2013-10-03 11:25:32', '2013-10-03 11:25:32'),
(277, 1, NULL, NULL, NULL, '2013-10-29 03:54:52', 1, '2013-10-03 11:25:32', '2013-10-03 11:25:32'),
(278, 1, NULL, NULL, NULL, '2013-10-29 06:38:17', 1, '2013-10-03 11:25:32', '2013-10-03 11:25:32'),
(279, 1, NULL, NULL, NULL, '2013-10-29 06:50:23', 1, '2013-10-03 11:25:32', '2013-10-03 11:25:32'),
(280, 1, NULL, NULL, NULL, '2013-10-29 21:37:39', 1, '2013-10-03 11:25:32', '2013-10-03 11:25:32'),
(281, 1, NULL, NULL, NULL, '2013-10-30 09:38:06', 1, '2013-10-03 11:25:32', '2013-10-03 11:25:32'),
(282, 1, NULL, NULL, NULL, '2013-10-30 05:18:03', 1, '2013-10-03 11:25:32', '2013-10-03 11:25:32'),
(283, 1, NULL, NULL, NULL, '2013-10-30 21:18:33', 1, '2013-10-03 11:25:32', '2013-10-03 11:25:32'),
(284, 1, NULL, NULL, NULL, '2013-10-30 15:06:22', 1, '2013-10-03 11:25:32', '2013-10-03 11:25:32'),
(285, 1, NULL, NULL, NULL, '2013-10-30 06:19:17', 1, '2013-10-03 11:25:32', '2013-10-03 11:25:32'),
(286, 1, NULL, NULL, NULL, '2013-10-30 21:13:17', 1, '2013-10-03 11:25:32', '2013-10-03 11:25:32'),
(287, 1, NULL, NULL, NULL, '2013-10-30 13:01:26', 1, '2013-10-03 11:25:32', '2013-10-03 11:25:32');

-- --------------------------------------------------------

--
-- Structure de la table `game_lottery`
--

CREATE TABLE IF NOT EXISTS `game_lottery` (
  `id` int(11) NOT NULL,
  `draw_auto` tinyint(1) NOT NULL,
  `draw_date` datetime DEFAULT NULL,
  `winners` int(11) NOT NULL,
  `substitutes` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `game_lottery`
--

INSERT INTO `game_lottery` (`id`, `draw_auto`, `draw_date`, `winners`, `substitutes`) VALUES
(7, 1, NULL, 30, 0);

-- --------------------------------------------------------

--
-- Structure de la table `game_postvote`
--

CREATE TABLE IF NOT EXISTS `game_postvote` (
  `id` int(11) NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `post_display_mode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vote_anonymous` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `game_postvote`
--

INSERT INTO `game_postvote` (`id`, `template`, `post_display_mode`, `vote_anonymous`) VALUES
(2, 'photo', 'vote', 1),
(4, 'text', 'random', 0),
(5, 'recipe', 'vote', 1);

-- --------------------------------------------------------

--
-- Structure de la table `game_postvote_form`
--

CREATE TABLE IF NOT EXISTS `game_postvote_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postvote_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `form` longtext COLLATE utf8_unicode_ci,
  `form_template` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_DE235CD4BBCDD91A` (`postvote_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Contenu de la table `game_postvote_form`
--

INSERT INTO `game_postvote_form` (`id`, `postvote_id`, `title`, `description`, `form`, `form_template`) VALUES
(1, 2, '', '', '[{"form_properties":[{"name":"form_properties","namespace":"","title":"","description":"","class":"","model_name":"","id":"","class_name":""}]},{"line_text":[{"name":"titre","type":"Zend\\\\Form\\\\Element\\\\Text","order":"4","data":{"placeholder":"votre titre","label":"Titre","required":"true","class":"","id":"","length":{"min":"","max":""}}}]},{"line_upload":[{"name":"upload","type":"file","order":"6","data":{"label":"Votre photo","required":"true","class":"","id":"","filesize":{"min":"","max":""},"filefilessize":{"min":"","max":""},"filecount":{"min":"","max":""},"fileextension":"","fileexcludeextension":"","filemimetype":"","fileexcludemimetype":"","fileexists":"","fileimagesize":{"minheight":"","maxheight":"","minwidth":"","maxwidth":""},"fileiscompressed":"","fileisimage":"","filewordcount":{"min":"","max":""}}}]}]', '<li id="edit_form_text4" class="edit_form_text" style="background-color: rgb(255, 255, 255);"><input type="hidden" name="required" value="true"><label class="main_label" for="form_input">Titre</label><input type="text" class="form_input" placeholder="votre titre"><input type="hidden" name="input_name" value="titre"><input type="hidden" name="class" value=""><input type="hidden" name="id" value=""><input type="hidden" name="min" value=""><input type="hidden" name="max" value=""><button type="button" class="btn btn-link pull-right delete_li">Supprimer</button><button type="button" class="btn btn-link pull-right edit_li">Editer</button><div style="clear:both;"></div></li><li id="edit_form_text6" class="edit_form_upload" style="background-color: rgb(255, 255, 255);"><input type="hidden" name="required" value="true"><label class="main_label" for="form_input">Votre photo</label><input type="file" class="form_input"><input type="hidden" name="input_name" value="upload"><input type="hidden" name="class" value=""><input type="hidden" name="id" value=""><input type="hidden" name="filesize_min" value=""><input type="hidden" name="filesize_max" value=""><input type="hidden" name="filefilessize_min" value=""><input type="hidden" name="filefilessize_max" value=""><input type="hidden" name="filecount_min" value=""><input type="hidden" name="filecount_max" value=""><input type="hidden" name="fileextension" value=""><input type="hidden" name="fileexcludeextension" value=""><input type="hidden" name="filemimetype" value=""><input type="hidden" name="fileexcludemimetype" value=""><input type="hidden" name="fileexists" value=""><input type="hidden" name="fileimagesize_minheight" value=""><input type="hidden" name="fileimagesize_maxheight" value=""><input type="hidden" name="fileimagesize_minwidth" value=""><input type="hidden" name="fileimagesize_maxwidth" value=""><input type="hidden" name="fileiscompressed" value=""><input type="hidden" name="fileisimage" value=""><input type="hidden" name="filewordcount_min" value=""><input type="hidden" name="filewordcount_max" value=""><button type="button" class="btn btn-link pull-right delete_li">Supprimer</button><button type="button" class="btn btn-link pull-right edit_li">Editer</button><div style="clear:both;"></div></li>'),
(2, 4, 'Déclarez votre amour avec Kenzo', '', '[{"form_properties":[{"name":"form_properties","namespace":"","title":"Déclarez votre amour avec Kenzo","description":"","class":"","model_name":"","id":"","class_name":""}]},{"line_text":[{"name":"titre","type":"Zend\\\\Form\\\\Element\\\\Text","order":"1","data":{"placeholder":"Le titre","label":"Le titre","required":"true","class":"","id":"","length":{"min":"","max":""}}}]},{"line_paragraph":[{"name":"declaration","type":"Zend\\\\Form\\\\Element\\\\Textarea","order":"2","data":{"placeholder":"Votre déclaration","label":"Votre déclaration","required":"true","class":"","id":"","length":{"min":"","max":""}}}]}]', '<li id="edit_form_text1" class="edit_form_text" style="background-color: rgb(255, 255, 255);"><input type="hidden" name="required" value="true"><label class="main_label" for="form_input">Le titre</label><input type="text" class="form_input" placeholder="Le titre"><input type="hidden" name="input_name" value="titre"><input type="hidden" name="class" value=""><input type="hidden" name="id" value=""><input type="hidden" name="min" value=""><input type="hidden" name="max" value=""><button type="button" class="btn btn-link pull-right delete_li">Supprimer</button><button type="button" class="btn btn-link pull-right edit_li">Editer</button><div style="clear:both;"></div></li><li id="edit_form_paragraph2" class="edit_form_paragraph" style="background-color: rgb(255, 255, 255);"><input type="hidden" name="required" value="true"><label class="main_label" for="form_paragraph">Votre déclaration</label><textarea type="text" class="form_paragraph" placeholder="Votre déclaration"></textarea><input type="hidden" name="input_name" value="declaration"><input type="hidden" name="class" value=""><input type="hidden" name="id" value=""><input type="hidden" name="min" value=""><input type="hidden" name="max" value=""><button type="button" class="btn btn-link pull-right delete_li">Supprimer</button><button type="button" class="btn btn-link pull-right edit_li">Editer</button><div style="clear:both;"></div></li>'),
(3, 5, '', '', '[{"form_properties":[{"name":"form_properties","namespace":"","title":"","description":"","class":"","model_name":"","id":"","class_name":""}]},{"line_text":[{"name":"titre","type":"Zend\\\\Form\\\\Element\\\\Text","order":"1","data":{"placeholder":"Titre de la recette","label":"Titre de la recette","required":"true","class":"","id":"","length":{"min":"","max":""}}}]},{"line_paragraph":[{"name":"ingredients","type":"Zend\\\\Form\\\\Element\\\\Textarea","order":"2","data":{"placeholder":"Les ingrédients","label":"Les ingrédients","required":"true","class":"","id":"","length":{"min":"","max":""}}}]},{"line_paragraph":[{"name":"recette","type":"Zend\\\\Form\\\\Element\\\\Textarea","order":"3","data":{"placeholder":"Votre recette","label":"Votre recette","required":"true","class":"","id":"","length":{"min":"","max":""}}}]},{"line_upload":[{"name":"upload","type":"file","order":"4","data":{"label":"Fichier","required":"0","class":"","id":"","filesize":{"min":"","max":""},"filefilessize":{"min":"","max":""},"filecount":{"min":"","max":""},"fileextension":"","fileexcludeextension":"","filemimetype":"","fileexcludemimetype":"","fileexists":"","fileimagesize":{"minheight":"","maxheight":"","minwidth":"","maxwidth":""},"fileiscompressed":"","fileisimage":"","filewordcount":{"min":"","max":""}}}]}]', '<li id="edit_form_text1" class="edit_form_text" style="background-color: rgb(255, 255, 255);"><input type="hidden" name="required" value="true"><label class="main_label" for="form_input">Titre de la recette</label><input type="text" class="form_input" placeholder="Titre de la recette"><input type="hidden" name="input_name" value="titre"><input type="hidden" name="class" value=""><input type="hidden" name="id" value=""><input type="hidden" name="min" value=""><input type="hidden" name="max" value=""><button type="button" class="btn btn-link pull-right delete_li">Supprimer</button><button type="button" class="btn btn-link pull-right edit_li">Editer</button><div style="clear:both;"></div></li><li id="edit_form_paragraph2" class="edit_form_paragraph" style="background-color: rgb(255, 255, 255);"><input type="hidden" name="required" value="true"><label class="main_label" for="form_paragraph">Les ingrédients</label><textarea type="text" class="form_paragraph" placeholder="Les ingrédients"></textarea><input type="hidden" name="input_name" value="ingredients"><input type="hidden" name="class" value=""><input type="hidden" name="id" value=""><input type="hidden" name="min" value=""><input type="hidden" name="max" value=""><button type="button" class="btn btn-link pull-right delete_li">Supprimer</button><button type="button" class="btn btn-link pull-right edit_li">Editer</button><div style="clear:both;"></div></li><li id="edit_form_paragraph3" class="edit_form_paragraph" style="background-color: rgb(255, 255, 255);"><input type="hidden" name="required" value="true"><label class="main_label" for="form_paragraph">Votre recette</label><textarea type="text" class="form_paragraph" placeholder="Votre recette"></textarea><input type="hidden" name="input_name" value="recette"><input type="hidden" name="class" value=""><input type="hidden" name="id" value=""><input type="hidden" name="min" value=""><input type="hidden" name="max" value=""><button type="button" class="btn btn-link pull-right delete_li">Supprimer</button><button type="button" class="btn btn-link pull-right edit_li">Editer</button><div style="clear:both;"></div></li><li id="edit_form_text4" class="edit_form_upload"><input type="hidden" name="required" value="0"><label class="main_label" for="form_input">Fichier</label><input type="file" class="form_input"><input type="hidden" name="input_name" value="upload"><input type="hidden" name="class" value=""><input type="hidden" name="id" value=""><input type="hidden" name="filesize_min" value=""><input type="hidden" name="filesize_max" value=""><input type="hidden" name="filefilessize_min" value=""><input type="hidden" name="filefilessize_max" value=""><input type="hidden" name="filecount_min" value=""><input type="hidden" name="filecount_max" value=""><input type="hidden" name="fileextension" value=""><input type="hidden" name="fileexcludeextension" value=""><input type="hidden" name="filemimetype" value=""><input type="hidden" name="fileexcludemimetype" value=""><input type="hidden" name="fileexists" value=""><input type="hidden" name="fileimagesize_minheight" value=""><input type="hidden" name="fileimagesize_maxheight" value=""><input type="hidden" name="fileimagesize_minwidth" value=""><input type="hidden" name="fileimagesize_maxwidth" value=""><input type="hidden" name="fileiscompressed" value=""><input type="hidden" name="fileisimage" value=""><input type="hidden" name="filewordcount_min" value=""><input type="hidden" name="filewordcount_max" value=""><button type="button" class="btn btn-link pull-right delete_li">Supprimer</button><button type="button" class="btn btn-link pull-right edit_li">Editer</button><div style="clear:both;"></div></li>');

-- --------------------------------------------------------

--
-- Structure de la table `game_postvote_post`
--

CREATE TABLE IF NOT EXISTS `game_postvote_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postvote_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `entry_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D621CD16BBCDD91A` (`postvote_id`),
  KEY `IDX_D621CD16A76ED395` (`user_id`),
  KEY `IDX_D621CD16BA364942` (`entry_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Contenu de la table `game_postvote_post`
--

INSERT INTO `game_postvote_post` (`id`, `postvote_id`, `user_id`, `entry_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 8, 2, '2013-10-02 19:06:09', '2013-10-02 19:06:29'),
(2, 2, 1, 9, 2, '2013-10-07 10:20:44', '2013-10-07 10:29:37'),
(3, 5, 3, 17, 0, '2013-10-07 13:01:22', '2013-10-07 13:01:22'),
(4, 5, 5, 23, 0, '2013-10-14 08:21:20', '2013-10-14 08:21:20'),
(5, 2, 8, 27, 2, '2013-10-15 11:03:19', '2013-10-15 11:14:45'),
(6, 2, 12, 58, 2, '2013-10-17 11:07:33', '2013-10-17 11:07:45'),
(7, 2, 13, 62, 2, '2013-10-18 17:47:04', '2013-10-18 17:47:29'),
(8, 4, 1, 15, 2, '2013-10-21 00:45:26', '2013-10-21 00:45:34'),
(9, 5, 1, 16, 2, '2013-10-21 00:50:14', '2013-10-21 00:52:43');

-- --------------------------------------------------------

--
-- Structure de la table `game_postvote_post_element`
--

CREATE TABLE IF NOT EXISTS `game_postvote_post_element` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E85325C94B89032C` (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Contenu de la table `game_postvote_post_element`
--

INSERT INTO `game_postvote_post_element` (`id`, `post_id`, `name`, `value`, `position`, `created_at`, `updated_at`) VALUES
(1, 1, 'upload', 'media/game/game2_post1_oasis_44.jpg', '1', '2013-10-02 19:06:09', '2013-10-02 19:06:20'),
(2, 2, 'upload', 'media/game/game2_post2_chrysanthemum_75.jpg', '3', '2013-10-07 10:20:44', '2013-10-07 10:27:05'),
(3, 2, 'titre', 'Une fleur', '1', '2013-10-07 10:27:05', '2013-10-07 10:27:05'),
(4, 2, 'description', 'Elle est trop belle', '2', '2013-10-07 10:27:05', '2013-10-07 10:27:05'),
(5, 3, 'upload', 'media/game/game5_post3_mousse.jpg', '0', '2013-10-07 13:01:22', '2013-10-07 13:05:08'),
(6, 4, 'upload', 'media/game/game5_post4_sheetah.jpg', '0', '2013-10-14 08:21:21', '2013-10-14 08:21:21'),
(7, 5, 'upload', 'media/game/game2_post5_capture-decran-2013-10-14-10-02-01_35.png', '3', '2013-10-15 11:03:19', '2013-10-15 11:03:26'),
(8, 5, 'titre', 'EGZ - Ma Photo', '1', '2013-10-15 11:03:26', '2013-10-15 11:03:26'),
(9, 5, 'description', 'EGZ - la photo de moi', '2', '2013-10-15 11:03:26', '2013-10-15 11:03:26'),
(10, 6, 'upload', 'media/game/game2_post6_wallpaper-3013056_86.jpg', '2', '2013-10-17 11:07:34', '2013-10-17 11:07:38'),
(11, 6, 'titre', 'Aventure', '1', '2013-10-17 11:07:38', '2013-10-17 11:07:38'),
(12, 7, 'titre', 'lool', '1', '2013-10-18 17:47:04', '2013-10-18 17:47:04'),
(13, 7, 'upload', 'media/game/game2_post7_formulaire-contact.jpg', '2', '2013-10-18 17:47:04', '2013-10-18 17:47:04'),
(14, 8, 'titre', 'Ilo veyou', '1', '2013-10-21 00:45:26', '2013-10-21 00:45:26'),
(15, 8, 'declaration', 'Camille', '2', '2013-10-21 00:45:26', '2013-10-21 00:45:26'),
(16, 9, 'upload', 'media/game/game5_post9_sheetah.jpg', '4', '2013-10-21 00:50:14', '2013-10-21 00:52:23'),
(17, 9, 'titre', 'Mousse au chocolat', '1', '2013-10-21 00:52:23', '2013-10-21 00:52:23'),
(18, 9, 'ingredients', '- Chocolat\r\n- Crème fraîche', '2', '2013-10-21 00:52:23', '2013-10-21 00:52:23'),
(19, 9, 'recette', 'Mélanger, servez frais', '3', '2013-10-21 00:52:23', '2013-10-21 00:52:23');

-- --------------------------------------------------------

--
-- Structure de la table `game_postvote_vote`
--

CREATE TABLE IF NOT EXISTS `game_postvote_vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `ip` longtext COLLATE utf8_unicode_ci,
  `message` longtext COLLATE utf8_unicode_ci,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D6BB24FF4B89032C` (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Contenu de la table `game_postvote_vote`
--

INSERT INTO `game_postvote_vote` (`id`, `post_id`, `userId`, `ip`, `message`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '89.251.49.46', NULL, NULL, '2013-10-02 19:06:58', '2013-10-02 19:06:58'),
(2, 2, 1, '89.251.49.46', NULL, NULL, '2013-10-07 10:31:44', '2013-10-07 10:31:44'),
(3, 7, 13, '89.251.49.46', NULL, NULL, '2013-10-18 17:48:57', '2013-10-18 17:48:57');

-- --------------------------------------------------------

--
-- Structure de la table `game_prize`
--

CREATE TABLE IF NOT EXISTS `game_prize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) DEFAULT NULL,
  `prize_category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `qty` int(11) NOT NULL,
  `unit_price` double NOT NULL,
  `currency` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_63FBF24EE48FD905` (`game_id`),
  KEY `IDX_63FBF24EDD7B12D8` (`prize_category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Contenu de la table `game_prize`
--

INSERT INTO `game_prize` (`id`, `game_id`, `prize_category_id`, `title`, `identifier`, `content`, `qty`, `unit_price`, `currency`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Casque Audio Adam', '', 'Casque audio bluetooth Adam', 250, 99, 'EU', '2013-10-02 18:10:42', '2013-10-22 15:30:13'),
(2, 3, NULL, 'Casque Audio Adam', '', 'fghgj', 250, 99, 'EU', '2013-10-07 10:13:55', '2013-10-16 10:36:02'),
(3, 5, NULL, 'Livres de cuisine Prisma', 'www.editions-prisma.com', '30 recettes par volume – 3,95 € le livre – disponible en librairies et rayons livre \r\n\r\n ', 6, 3, 'EU', '2013-10-07 11:22:35', '2013-10-15 15:18:47'),
(4, 6, NULL, 'Place de concert', '', 'Place de concert de catégorie 1 pour le concert de M', 20, 83, 'EU', '2013-10-12 16:41:50', '2013-10-18 15:25:01'),
(5, 7, NULL, 'Un coffret SmartBox', '', '', 30, 55, 'EU', '2013-10-16 10:23:01', '2013-10-16 10:32:27');

-- --------------------------------------------------------

--
-- Structure de la table `game_prize_category`
--

CREATE TABLE IF NOT EXISTS `game_prize_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `picto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `game_prize_category_user`
--

CREATE TABLE IF NOT EXISTS `game_prize_category_user` (
  `prize_category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`prize_category_id`,`user_id`),
  KEY `IDX_A59118AADD7B12D8` (`prize_category_id`),
  KEY `IDX_A59118AAA76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `game_quiz`
--

CREATE TABLE IF NOT EXISTS `game_quiz` (
  `id` int(11) NOT NULL,
  `draw_auto` tinyint(1) NOT NULL,
  `winners` int(11) NOT NULL,
  `substitutes` int(11) NOT NULL,
  `timer` tinyint(1) NOT NULL,
  `timer_duration` int(11) NOT NULL,
  `question_grouping` int(11) NOT NULL,
  `victory_conditions` int(11) NOT NULL,
  `max_points` int(11) DEFAULT NULL,
  `max_correct_answers` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `game_quiz`
--

INSERT INTO `game_quiz` (`id`, `draw_auto`, `winners`, `substitutes`, `timer`, `timer_duration`, `question_grouping`, `victory_conditions`, `max_points`, `max_correct_answers`) VALUES
(3, 1, 1, 0, 0, 0, 1, 50, 0, 4),
(6, 1, 20, 0, 0, 0, 0, 0, 0, 3);

-- --------------------------------------------------------

--
-- Structure de la table `game_quiz_answer`
--

CREATE TABLE IF NOT EXISTS `game_quiz_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT NULL,
  `answer` longtext COLLATE utf8_unicode_ci,
  `explanation` longtext COLLATE utf8_unicode_ci,
  `video` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `correct` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E9CCF87E1E27F6BF` (`question_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Contenu de la table `game_quiz_answer`
--

INSERT INTO `game_quiz_answer` (`id`, `question_id`, `answer`, `explanation`, `video`, `image`, `points`, `position`, `correct`, `created_at`, `updated_at`) VALUES
(1, 1, 'Clowns sans frontières', NULL, NULL, NULL, 0, 1, 1, '2013-10-12 16:44:03', '2013-10-12 16:44:03'),
(2, 1, 'Perce-neige', NULL, NULL, NULL, 0, 2, 0, '2013-10-12 16:44:03', '2013-10-12 16:44:03'),
(3, 1, 'Rêves', NULL, NULL, NULL, 0, 3, 0, '2013-10-12 16:44:03', '2013-10-12 16:44:03'),
(4, 2, 'Marcial Di Fonzo Bo', NULL, NULL, NULL, 0, 1, 0, '2013-10-12 16:46:02', '2013-10-12 16:47:58'),
(5, 2, 'Cyril Houplain', NULL, NULL, NULL, 0, 2, 0, '2013-10-12 16:46:02', '2013-10-12 16:47:58'),
(6, 2, 'James Thierriée', NULL, NULL, NULL, 0, 3, 1, '2013-10-12 16:46:02', '2013-10-12 16:47:58'),
(7, 3, 'Vanessa Paradis', NULL, NULL, NULL, 0, 1, 0, '2013-10-12 16:50:39', '2013-10-12 16:50:39'),
(8, 3, 'Sa mère', NULL, NULL, NULL, 0, 2, 1, '2013-10-12 16:50:39', '2013-10-12 16:50:39'),
(9, 3, 'Une illustre inconnue', NULL, NULL, NULL, 0, 3, 0, '2013-10-12 16:50:39', '2013-10-12 16:50:39'),
(10, 4, '2011', NULL, NULL, NULL, 0, 2, 1, '2013-10-15 14:39:11', '2013-10-18 15:50:02'),
(11, 4, '1789', NULL, NULL, NULL, 0, 1, 0, '2013-10-15 14:39:11', '2013-10-18 15:50:02'),
(12, 4, '- 800 avant JC', NULL, NULL, NULL, 0, 0, 0, '2013-10-15 14:39:11', '2013-10-18 15:50:02'),
(13, 9, 'C...A', NULL, NULL, NULL, 0, 1, 1, '2013-10-15 15:51:08', '2013-10-15 15:51:08'),
(14, 9, 'Natacha !', NULL, NULL, NULL, 0, 2, 0, '2013-10-15 15:51:08', '2013-10-15 15:51:08'),
(15, 7, 'Stéphanie de Monaco', NULL, NULL, NULL, 0, 0, 0, '2013-10-15 15:51:38', '2013-10-15 15:51:38'),
(16, 7, 'Fabien', NULL, NULL, NULL, 0, 0, 1, '2013-10-15 15:51:38', '2013-10-15 15:51:38'),
(17, 6, '2000', NULL, NULL, NULL, 0, 0, 0, '2013-10-15 15:52:41', '2013-10-15 15:52:41'),
(18, 6, '200', NULL, NULL, NULL, 0, 0, 0, '2013-10-15 15:52:41', '2013-10-15 15:52:41'),
(19, 6, 'plein', NULL, NULL, NULL, 0, 0, 1, '2013-10-15 15:52:41', '2013-10-15 15:52:41');

-- --------------------------------------------------------

--
-- Structure de la table `game_quiz_question`
--

CREATE TABLE IF NOT EXISTS `game_quiz_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `question` longtext COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `video` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hint` longtext COLLATE utf8_unicode_ci,
  `prediction` tinyint(1) DEFAULT NULL,
  `timer` tinyint(1) NOT NULL,
  `timer_duration` int(11) DEFAULT NULL,
  `weight` int(11) NOT NULL,
  `max_points` int(11) DEFAULT NULL,
  `max_correct_answers` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CAD72C60853CD175` (`quiz_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Contenu de la table `game_quiz_question`
--

INSERT INTO `game_quiz_question` (`id`, `quiz_id`, `type`, `question`, `position`, `video`, `image`, `hint`, `prediction`, `timer`, `timer_duration`, `weight`, `max_points`, `max_correct_answers`, `created_at`, `updated_at`) VALUES
(1, 6, 1, '<p>De quelle association M est-il le parrain?</p>\r\n', 1, '', NULL, '', 0, 0, 0, 1, 0, 1, '2013-10-12 16:44:03', '2013-10-12 16:44:03'),
(2, 6, 1, '<p>Avec quel sc&eacute;nographe M a-t-il travaill&eacute; pour la mise en sc&egrave;ne de son spectacle IL(s)?</p>\r\n', 2, '', NULL, '', 0, 0, 0, 1, 0, 1, '2013-10-12 16:46:02', '2013-10-12 16:47:58'),
(3, 6, 1, '<p>A qui d&eacute;clare-il sa flamme sur le titre Baya?</p>\r\n', 3, '', NULL, '', 0, 0, 0, 1, 0, 1, '2013-10-12 16:50:39', '2013-10-12 16:50:39'),
(4, 3, 0, '<p>Quelle est la date de cr&eacute;ation de l&#39;entreprise?</p>\r\n', 1, '', NULL, '', 0, 0, 0, 1, 0, 1, '2013-10-15 14:39:11', '2013-10-18 15:50:02'),
(5, 3, 2, '<p>Qui porte des chaussons chez Adfab?</p>\r\n', 2, '', NULL, '', 0, 0, 0, 1, 0, 0, '2013-10-15 14:40:50', '2013-10-15 14:40:50'),
(6, 3, 0, '<p>Combien de personnes y-a-il dans l&#39;entreprise?</p>\r\n', 3, '', NULL, '', 0, 0, 0, 1, 0, 1, '2013-10-15 14:41:12', '2013-10-15 15:52:41'),
(7, 3, 0, '<p>Qui porte un bonnet?</p>\r\n', 4, '', NULL, '', 0, 0, 0, 1, 0, 1, '2013-10-15 14:41:25', '2013-10-15 15:51:38'),
(8, 3, 2, '<p>Qui est le premier &agrave; d&eacute;jeuner le midi?&nbsp;</p>\r\n', 5, '', NULL, '', 0, 0, 0, 1, 0, 0, '2013-10-15 14:42:03', '2013-10-15 14:42:03'),
(9, 3, 0, '<p>Qui est le plus fort au Babyfoot?</p>\r\n', 6, '', NULL, '<p>N.....A</p>\r\n', 0, 0, 0, 1, 0, 1, '2013-10-15 14:42:37', '2013-10-15 15:51:08'),
(10, 3, 2, '<p>Qui est ch&#39;ti ?&nbsp;</p>\r\n', 7, '', NULL, '<p>J...N R...O</p>\r\n', 0, 0, 0, 1, 0, 0, '2013-10-15 14:43:34', '2013-10-15 14:43:34'),
(11, 3, 2, '<p>O&ugrave; se trouve le p&ocirc;le Chewing-gum?</p>\r\n', 9, '', NULL, '', 0, 0, 0, 1, 0, 0, '2013-10-15 14:45:31', '2013-10-15 14:45:31');

-- --------------------------------------------------------

--
-- Structure de la table `game_quiz_reply`
--

CREATE TABLE IF NOT EXISTS `game_quiz_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `totalCorrectAnswers` int(11) NOT NULL,
  `maxCorrectAnswers` int(11) NOT NULL,
  `totalQuestions` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_EF07788DBA364942` (`entry_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=70 ;

--
-- Contenu de la table `game_quiz_reply`
--

INSERT INTO `game_quiz_reply` (`id`, `entry_id`, `created_at`, `updated_at`, `totalCorrectAnswers`, `maxCorrectAnswers`, `totalQuestions`) VALUES
(1, 21, '2013-10-12 16:52:58', '2013-10-12 16:52:58', 0, 0, 0),
(2, 21, '2013-10-12 16:52:58', '2013-10-12 16:52:58', 0, 0, 0),
(3, 21, '2013-10-12 16:52:58', '2013-10-12 16:52:58', 0, 0, 0),
(4, 29, '2013-10-15 14:39:54', '2013-10-15 14:39:54', 0, 0, 0),
(5, 33, '2013-10-15 15:46:42', '2013-10-15 15:46:42', 0, 0, 0),
(6, 33, '2013-10-15 15:46:42', '2013-10-15 15:46:42', 0, 0, 0),
(7, 33, '2013-10-15 15:46:42', '2013-10-15 15:46:42', 0, 0, 0),
(8, 36, '2013-10-15 15:54:21', '2013-10-15 15:54:21', 0, 0, 0),
(9, 36, '2013-10-15 15:54:21', '2013-10-15 15:54:21', 0, 0, 0),
(10, 36, '2013-10-15 15:54:21', '2013-10-15 15:54:21', 0, 0, 0),
(11, 36, '2013-10-15 15:54:21', '2013-10-15 15:54:21', 0, 0, 0),
(12, 36, '2013-10-15 15:54:21', '2013-10-15 15:54:21', 0, 0, 0),
(13, 36, '2013-10-15 15:54:21', '2013-10-15 15:54:21', 0, 0, 0),
(14, 36, '2013-10-15 15:54:21', '2013-10-15 15:54:21', 0, 0, 0),
(15, 36, '2013-10-15 15:54:21', '2013-10-15 15:54:21', 0, 0, 0),
(16, 37, '2013-10-15 15:55:43', '2013-10-15 15:55:43', 0, 0, 0),
(17, 37, '2013-10-15 15:55:43', '2013-10-15 15:55:43', 0, 0, 0),
(18, 37, '2013-10-15 15:55:43', '2013-10-15 15:55:43', 0, 0, 0),
(19, 37, '2013-10-15 15:55:43', '2013-10-15 15:55:43', 0, 0, 0),
(20, 37, '2013-10-15 15:55:43', '2013-10-15 15:55:43', 0, 0, 0),
(21, 37, '2013-10-15 15:55:43', '2013-10-15 15:55:43', 0, 0, 0),
(22, 37, '2013-10-15 15:55:43', '2013-10-15 15:55:43', 0, 0, 0),
(23, 37, '2013-10-15 15:55:43', '2013-10-15 15:55:43', 0, 0, 0),
(24, 30, '2013-10-15 15:59:58', '2013-10-15 15:59:58', 0, 0, 0),
(25, 30, '2013-10-15 15:59:59', '2013-10-15 15:59:59', 0, 0, 0),
(26, 30, '2013-10-15 15:59:59', '2013-10-15 15:59:59', 0, 0, 0),
(27, 30, '2013-10-15 15:59:59', '2013-10-15 15:59:59', 0, 0, 0),
(28, 30, '2013-10-15 15:59:59', '2013-10-15 15:59:59', 0, 0, 0),
(29, 30, '2013-10-15 15:59:59', '2013-10-15 15:59:59', 0, 0, 0),
(30, 30, '2013-10-15 15:59:59', '2013-10-15 15:59:59', 0, 0, 0),
(31, 30, '2013-10-15 16:00:00', '2013-10-15 16:00:00', 0, 0, 0),
(32, 38, '2013-10-15 16:03:39', '2013-10-15 16:03:39', 0, 0, 0),
(33, 38, '2013-10-15 16:03:39', '2013-10-15 16:03:39', 0, 0, 0),
(34, 38, '2013-10-15 16:03:39', '2013-10-15 16:03:39', 0, 0, 0),
(35, 38, '2013-10-15 16:03:39', '2013-10-15 16:03:39', 0, 0, 0),
(36, 38, '2013-10-15 16:03:39', '2013-10-15 16:03:39', 0, 0, 0),
(37, 38, '2013-10-15 16:03:39', '2013-10-15 16:03:39', 0, 0, 0),
(38, 38, '2013-10-15 16:03:39', '2013-10-15 16:03:39', 0, 0, 0),
(39, 38, '2013-10-15 16:03:39', '2013-10-15 16:03:39', 0, 0, 0),
(40, 40, '2013-10-15 16:06:03', '2013-10-15 16:06:03', 0, 0, 0),
(41, 40, '2013-10-15 16:06:03', '2013-10-15 16:06:03', 0, 0, 0),
(42, 40, '2013-10-15 16:06:03', '2013-10-15 16:06:03', 0, 0, 0),
(43, 40, '2013-10-15 16:06:03', '2013-10-15 16:06:03', 0, 0, 0),
(44, 40, '2013-10-15 16:06:03', '2013-10-15 16:06:03', 0, 0, 0),
(45, 40, '2013-10-15 16:06:03', '2013-10-15 16:06:03', 0, 0, 0),
(46, 40, '2013-10-15 16:06:03', '2013-10-15 16:06:03', 0, 0, 0),
(47, 40, '2013-10-15 16:06:03', '2013-10-15 16:06:03', 0, 0, 0),
(48, 41, '2013-10-15 16:12:06', '2013-10-15 16:12:06', 0, 0, 0),
(49, 41, '2013-10-15 16:12:06', '2013-10-15 16:12:06', 0, 0, 0),
(50, 41, '2013-10-15 16:12:06', '2013-10-15 16:12:06', 0, 0, 0),
(51, 41, '2013-10-15 16:12:06', '2013-10-15 16:12:06', 0, 0, 0),
(52, 41, '2013-10-15 16:12:06', '2013-10-15 16:12:06', 0, 0, 0),
(53, 41, '2013-10-15 16:12:06', '2013-10-15 16:12:06', 0, 0, 0),
(54, 41, '2013-10-15 16:12:06', '2013-10-15 16:12:06', 0, 0, 0),
(55, 41, '2013-10-15 16:12:06', '2013-10-15 16:12:06', 0, 0, 0),
(56, 42, '2013-10-15 16:16:52', '2013-10-15 16:16:52', 0, 0, 0),
(57, 42, '2013-10-15 16:16:52', '2013-10-15 16:16:52', 0, 0, 0),
(58, 42, '2013-10-15 16:16:52', '2013-10-15 16:16:52', 0, 0, 0),
(59, 43, '2013-10-15 17:45:45', '2013-10-15 17:45:45', 2, 3, 16),
(60, 48, '2013-10-17 10:29:40', '2013-10-17 10:29:40', 2, 3, 16),
(61, 52, '2013-10-17 10:43:46', '2013-10-17 10:43:46', 1, 3, 3),
(62, 53, '2013-10-17 10:49:15', '2013-10-17 10:49:15', 2, 3, 16),
(63, 59, '2013-10-18 15:08:45', '2013-10-18 15:08:45', 2, 3, 16),
(64, 64, '2013-10-18 15:13:57', '2013-10-18 15:13:57', 2, 3, 3),
(65, 68, '2013-10-18 15:25:24', '2013-10-18 15:25:24', 0, 3, 3),
(66, 69, '2013-10-18 15:34:32', '2013-10-18 15:34:32', 1, 3, 3),
(67, 70, '2013-10-18 15:48:06', '2013-10-18 15:48:06', 1, 3, 3),
(68, 65, '2013-10-18 16:21:40', '2013-10-18 16:21:40', 4, 4, 16),
(69, 71, '2013-10-18 17:38:05', '2013-10-18 17:38:05', 3, 3, 3);

-- --------------------------------------------------------

--
-- Structure de la table `game_quiz_reply_answer`
--

CREATE TABLE IF NOT EXISTS `game_quiz_reply_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reply_id` int(11) DEFAULT NULL,
  `question_id` int(11) NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `answer_id` int(11) NOT NULL,
  `answer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `points` int(11) NOT NULL,
  `correct` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_116224468A0E4E7F` (`reply_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=65 ;

--
-- Contenu de la table `game_quiz_reply_answer`
--

INSERT INTO `game_quiz_reply_answer` (`id`, `reply_id`, `question_id`, `question`, `answer_id`, `answer`, `points`, `correct`, `created_at`, `updated_at`) VALUES
(1, 59, 4, '<p>Quelle est la date de cr&eacute;ation de l&#39;entreprise?</p>\r\n', 0, '12 janvier 1803', 0, 0, '2013-10-15 17:45:45', '2013-10-15 17:45:45'),
(2, 59, 5, '<p>Qui porte des chaussons chez Adfab?</p>\r\n', 0, 'Les frères Labbé', 0, 0, '2013-10-15 17:45:45', '2013-10-15 17:45:45'),
(3, 59, 6, '<p>Combien de personnes y-a-il dans l&#39;entreprise?</p>\r\n', 19, 'plein', 0, 1, '2013-10-15 17:45:45', '2013-10-15 17:45:45'),
(4, 59, 7, '<p>Qui porte un bonnet?</p>\r\n', 16, 'Fabien', 0, 1, '2013-10-15 17:45:45', '2013-10-15 17:45:45'),
(5, 59, 8, '<p>Qui est le premier &agrave; d&eacute;jeuner le midi?&nbsp;</p>\r\n', 0, 'Christophe', 0, 0, '2013-10-15 17:45:45', '2013-10-15 17:45:45'),
(6, 59, 9, '<p>Qui est le plus fort au Babyfoot?</p>\r\n', 14, 'Natacha !', 0, 0, '2013-10-15 17:45:45', '2013-10-15 17:45:45'),
(7, 59, 10, '<p>Qui est ch&#39;ti ?&nbsp;</p>\r\n', 0, 'lol', 0, 0, '2013-10-15 17:45:45', '2013-10-15 17:45:45'),
(8, 59, 11, '<p>O&ugrave; se trouve le p&ocirc;le Chewing-gum?</p>\r\n', 0, 'Chez Aurélie !!!', 0, 0, '2013-10-15 17:45:45', '2013-10-15 17:45:45'),
(9, 60, 4, '<p>Quelle est la date de cr&eacute;ation de l&#39;entreprise?</p>\r\n', 0, '2011', 0, 0, '2013-10-17 10:29:40', '2013-10-17 10:29:40'),
(10, 60, 5, '<p>Qui porte des chaussons chez Adfab?</p>\r\n', 0, 'nicolas', 0, 0, '2013-10-17 10:29:40', '2013-10-17 10:29:40'),
(11, 60, 6, '<p>Combien de personnes y-a-il dans l&#39;entreprise?</p>\r\n', 19, 'plein', 0, 1, '2013-10-17 10:29:40', '2013-10-17 10:29:40'),
(12, 60, 7, '<p>Qui porte un bonnet?</p>\r\n', 16, 'Fabien', 0, 1, '2013-10-17 10:29:40', '2013-10-17 10:29:40'),
(13, 60, 8, '<p>Qui est le premier &agrave; d&eacute;jeuner le midi?&nbsp;</p>\r\n', 0, 'nicolas', 0, 0, '2013-10-17 10:29:40', '2013-10-17 10:29:40'),
(14, 60, 9, '<p>Qui est le plus fort au Babyfoot?</p>\r\n', 14, 'Natacha !', 0, 0, '2013-10-17 10:29:40', '2013-10-17 10:29:40'),
(15, 60, 10, '<p>Qui est ch&#39;ti ?&nbsp;</p>\r\n', 0, 'Julien Relano', 0, 0, '2013-10-17 10:29:40', '2013-10-17 10:29:40'),
(16, 60, 11, '<p>O&ugrave; se trouve le p&ocirc;le Chewing-gum?</p>\r\n', 0, 'chez aurélie', 0, 0, '2013-10-17 10:29:40', '2013-10-17 10:29:40'),
(17, 61, 1, '<p>De quelle association M est-il le parrain?</p>\r\n', 2, 'Perce-neige', 0, 0, '2013-10-17 10:43:46', '2013-10-17 10:43:46'),
(18, 61, 2, '<p>Avec quel sc&eacute;nographe M a-t-il travaill&eacute; pour la mise en sc&egrave;ne de son spectacle IL(s)?</p>\r\n', 5, 'Cyril Houplain', 0, 0, '2013-10-17 10:43:46', '2013-10-17 10:43:46'),
(19, 61, 3, '<p>A qui d&eacute;clare-il sa flamme sur le titre Baya?</p>\r\n', 8, 'Sa mère', 0, 1, '2013-10-17 10:43:46', '2013-10-17 10:43:46'),
(20, 62, 4, '<p>Quelle est la date de cr&eacute;ation de l&#39;entreprise?</p>\r\n', 0, '2010', 0, 0, '2013-10-17 10:49:15', '2013-10-17 10:49:15'),
(21, 62, 5, '<p>Qui porte des chaussons chez Adfab?</p>\r\n', 0, 'bonne question', 0, 0, '2013-10-17 10:49:15', '2013-10-17 10:49:15'),
(22, 62, 6, '<p>Combien de personnes y-a-il dans l&#39;entreprise?</p>\r\n', 19, 'plein', 0, 1, '2013-10-17 10:49:15', '2013-10-17 10:49:15'),
(23, 62, 7, '<p>Qui porte un bonnet?</p>\r\n', 16, 'Fabien', 0, 1, '2013-10-17 10:49:15', '2013-10-17 10:49:15'),
(24, 62, 8, '<p>Qui est le premier &agrave; d&eacute;jeuner le midi?&nbsp;</p>\r\n', 0, 'ça dépend', 0, 0, '2013-10-17 10:49:15', '2013-10-17 10:49:15'),
(25, 62, 9, '<p>Qui est le plus fort au Babyfoot?</p>\r\n', 14, 'Natacha !', 0, 0, '2013-10-17 10:49:15', '2013-10-17 10:49:15'),
(26, 62, 10, '<p>Qui est ch&#39;ti ?&nbsp;</p>\r\n', 0, 'Julien Relano', 0, 0, '2013-10-17 10:49:15', '2013-10-17 10:49:15'),
(27, 62, 11, '<p>O&ugrave; se trouve le p&ocirc;le Chewing-gum?</p>\r\n', 0, 'CDP', 0, 0, '2013-10-17 10:49:15', '2013-10-17 10:49:15'),
(28, 63, 4, '<p>Quelle est la date de cr&eacute;ation de l&#39;entreprise?</p>\r\n', 0, '2000', 0, 0, '2013-10-18 15:08:45', '2013-10-18 15:08:45'),
(29, 63, 5, '<p>Qui porte des chaussons chez Adfab?</p>\r\n', 0, 'Nicolas', 0, 0, '2013-10-18 15:08:45', '2013-10-18 15:08:45'),
(30, 63, 6, '<p>Combien de personnes y-a-il dans l&#39;entreprise?</p>\r\n', 18, '200', 0, 0, '2013-10-18 15:08:45', '2013-10-18 15:08:45'),
(31, 63, 7, '<p>Qui porte un bonnet?</p>\r\n', 16, 'Fabien', 0, 1, '2013-10-18 15:08:45', '2013-10-18 15:08:45'),
(32, 63, 8, '<p>Qui est le premier &agrave; d&eacute;jeuner le midi?&nbsp;</p>\r\n', 0, 'Moi', 0, 0, '2013-10-18 15:08:45', '2013-10-18 15:08:45'),
(33, 63, 9, '<p>Qui est le plus fort au Babyfoot?</p>\r\n', 13, 'C...A', 0, 1, '2013-10-18 15:08:45', '2013-10-18 15:08:45'),
(34, 63, 10, '<p>Qui est ch&#39;ti ?&nbsp;</p>\r\n', 0, 'Lol', 0, 0, '2013-10-18 15:08:45', '2013-10-18 15:08:45'),
(35, 63, 11, '<p>O&ugrave; se trouve le p&ocirc;le Chewing-gum?</p>\r\n', 0, 'Aurélie', 0, 0, '2013-10-18 15:08:45', '2013-10-18 15:08:45'),
(36, 64, 1, '<p>De quelle association M est-il le parrain?</p>\r\n', 1, 'Clowns sans frontières', 0, 1, '2013-10-18 15:13:57', '2013-10-18 15:13:57'),
(37, 64, 2, '<p>Avec quel sc&eacute;nographe M a-t-il travaill&eacute; pour la mise en sc&egrave;ne de son spectacle IL(s)?</p>\r\n', 6, 'James Thierriée', 0, 1, '2013-10-18 15:13:57', '2013-10-18 15:13:57'),
(38, 64, 3, '<p>A qui d&eacute;clare-il sa flamme sur le titre Baya?</p>\r\n', 7, 'Vanessa Paradis', 0, 0, '2013-10-18 15:13:57', '2013-10-18 15:13:57'),
(39, 65, 1, '<p>De quelle association M est-il le parrain?</p>\r\n', 2, 'Perce-neige', 0, 0, '2013-10-18 15:25:24', '2013-10-18 15:25:24'),
(40, 65, 2, '<p>Avec quel sc&eacute;nographe M a-t-il travaill&eacute; pour la mise en sc&egrave;ne de son spectacle IL(s)?</p>\r\n', 4, 'Marcial Di Fonzo Bo', 0, 0, '2013-10-18 15:25:24', '2013-10-18 15:25:24'),
(41, 65, 3, '<p>A qui d&eacute;clare-il sa flamme sur le titre Baya?</p>\r\n', 9, 'Une illustre inconnue', 0, 0, '2013-10-18 15:25:24', '2013-10-18 15:25:24'),
(42, 66, 1, '<p>De quelle association M est-il le parrain?</p>\r\n', 2, 'Perce-neige', 0, 0, '2013-10-18 15:34:32', '2013-10-18 15:34:32'),
(43, 66, 2, '<p>Avec quel sc&eacute;nographe M a-t-il travaill&eacute; pour la mise en sc&egrave;ne de son spectacle IL(s)?</p>\r\n', 5, 'Cyril Houplain', 0, 0, '2013-10-18 15:34:32', '2013-10-18 15:34:32'),
(44, 66, 3, '<p>A qui d&eacute;clare-il sa flamme sur le titre Baya?</p>\r\n', 8, 'Sa mère', 0, 1, '2013-10-18 15:34:32', '2013-10-18 15:34:32'),
(45, 67, 1, '<p>De quelle association M est-il le parrain?</p>\r\n', 2, 'Perce-neige', 0, 0, '2013-10-18 15:48:06', '2013-10-18 15:48:06'),
(46, 67, 2, '<p>Avec quel sc&eacute;nographe M a-t-il travaill&eacute; pour la mise en sc&egrave;ne de son spectacle IL(s)?</p>\r\n', 5, 'Cyril Houplain', 0, 0, '2013-10-18 15:48:06', '2013-10-18 15:48:06'),
(47, 67, 3, '<p>A qui d&eacute;clare-il sa flamme sur le titre Baya?</p>\r\n', 8, 'Sa mère', 0, 1, '2013-10-18 15:48:06', '2013-10-18 15:48:06'),
(48, 68, 4, '<p>Quelle est la date de cr&eacute;ation de l&#39;entreprise?</p>\r\n', 10, '2011', 0, 1, '2013-10-18 16:21:40', '2013-10-18 16:21:40'),
(49, 68, 5, '<p>Qui porte des chaussons chez Adfab?</p>\r\n', 0, 'Nicolas', 0, 0, '2013-10-18 16:21:40', '2013-10-18 16:21:40'),
(50, 68, 6, '<p>Combien de personnes y-a-il dans l&#39;entreprise?</p>\r\n', 19, 'plein', 0, 1, '2013-10-18 16:21:40', '2013-10-18 16:21:40'),
(51, 68, 7, '<p>Qui porte un bonnet?</p>\r\n', 16, 'Fabien', 0, 1, '2013-10-18 16:21:40', '2013-10-18 16:21:40'),
(52, 68, 8, '<p>Qui est le premier &agrave; d&eacute;jeuner le midi?&nbsp;</p>\r\n', 0, 'Virac', 0, 0, '2013-10-18 16:21:40', '2013-10-18 16:21:40'),
(53, 68, 9, '<p>Qui est le plus fort au Babyfoot?</p>\r\n', 13, 'C...A', 0, 1, '2013-10-18 16:21:40', '2013-10-18 16:21:40'),
(54, 68, 10, '<p>Qui est ch&#39;ti ?&nbsp;</p>\r\n', 0, 'Guillaume', 0, 0, '2013-10-18 16:21:40', '2013-10-18 16:21:40'),
(55, 68, 11, '<p>O&ugrave; se trouve le p&ocirc;le Chewing-gum?</p>\r\n', 0, 'Aurélie', 0, 0, '2013-10-18 16:21:40', '2013-10-18 16:21:40'),
(56, 69, 1, '<p>De quelle association M est-il le parrain?</p>\r\n', 1, 'Clowns sans frontières', 0, 1, '2013-10-18 17:38:05', '2013-10-18 17:38:05'),
(57, 69, 1, '<p>De quelle association M est-il le parrain?</p>\r\n', 2, 'Perce-neige', 0, 0, '2013-10-18 17:38:05', '2013-10-18 17:38:05'),
(58, 69, 1, '<p>De quelle association M est-il le parrain?</p>\r\n', 3, 'Rêves', 0, 0, '2013-10-18 17:38:05', '2013-10-18 17:38:05'),
(59, 69, 2, '<p>Avec quel sc&eacute;nographe M a-t-il travaill&eacute; pour la mise en sc&egrave;ne de son spectacle IL(s)?</p>\r\n', 4, 'Marcial Di Fonzo Bo', 0, 0, '2013-10-18 17:38:05', '2013-10-18 17:38:05'),
(60, 69, 2, '<p>Avec quel sc&eacute;nographe M a-t-il travaill&eacute; pour la mise en sc&egrave;ne de son spectacle IL(s)?</p>\r\n', 5, 'Cyril Houplain', 0, 0, '2013-10-18 17:38:05', '2013-10-18 17:38:05'),
(61, 69, 2, '<p>Avec quel sc&eacute;nographe M a-t-il travaill&eacute; pour la mise en sc&egrave;ne de son spectacle IL(s)?</p>\r\n', 6, 'James Thierriée', 0, 1, '2013-10-18 17:38:05', '2013-10-18 17:38:05'),
(62, 69, 3, '<p>A qui d&eacute;clare-il sa flamme sur le titre Baya?</p>\r\n', 7, 'Vanessa Paradis', 0, 0, '2013-10-18 17:38:05', '2013-10-18 17:38:05'),
(63, 69, 3, '<p>A qui d&eacute;clare-il sa flamme sur le titre Baya?</p>\r\n', 8, 'Sa mère', 0, 1, '2013-10-18 17:38:05', '2013-10-18 17:38:05'),
(64, 69, 3, '<p>A qui d&eacute;clare-il sa flamme sur le titre Baya?</p>\r\n', 9, 'Une illustre inconnue', 0, 0, '2013-10-18 17:38:05', '2013-10-18 17:38:05');

-- --------------------------------------------------------

--
-- Structure de la table `game_treasurehunt`
--

CREATE TABLE IF NOT EXISTS `game_treasurehunt` (
  `id` int(11) NOT NULL,
  `player_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `winners` int(11) NOT NULL,
  `timer` tinyint(1) NOT NULL,
  `timer_duration` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `game_treasurehunt_step`
--

CREATE TABLE IF NOT EXISTS `game_treasurehunt_step` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `treasurehunt_id` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `domain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hint` longtext COLLATE utf8_unicode_ci,
  `area` longtext COLLATE utf8_unicode_ci,
  `timer` tinyint(1) NOT NULL,
  `timer_duration` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4819297179CEC17D` (`treasurehunt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `leader_board`
--

CREATE TABLE IF NOT EXISTS `leader_board` (
  `game_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `points` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`game_id`,`user_id`),
  KEY `IDX_C8F46BDFE48FD905` (`game_id`),
  KEY `IDX_C8F46BDFA76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `opengraphapplication_opengraphdomain`
--

CREATE TABLE IF NOT EXISTS `opengraphapplication_opengraphdomain` (
  `opengraphapplication_id` int(11) NOT NULL,
  `opengraphdomain_id` int(11) NOT NULL,
  PRIMARY KEY (`opengraphapplication_id`,`opengraphdomain_id`),
  KEY `IDX_EE48FC32947B7ED1` (`opengraphapplication_id`),
  KEY `IDX_EE48FC32B545A07C` (`opengraphdomain_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `opengraph_action`
--

CREATE TABLE IF NOT EXISTS `opengraph_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `definition` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B5B881A177153098` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

--
-- Contenu de la table `opengraph_action`
--

INSERT INTO `opengraph_action` (`id`, `code`, `label`, `definition`, `created_at`, `updated_at`) VALUES
(1, 'look', 'look', 'look at a page for discovering, flipping...', '2013-08-09 05:23:13', '2013-08-13 18:47:57'),
(3, 'add_to_wishlist', 'Add to wishlist', 'Adding an item to your wishlist', '2013-08-09 05:24:09', '2013-08-13 18:48:48'),
(5, 'add_to_cart', 'Add to cart', 'Adding an item to your cart', '2013-08-13 18:49:11', '2013-08-13 18:49:11'),
(6, 'login', 'Login', 'login with an account on the website', '2013-08-13 18:49:37', '2013-08-13 18:49:37'),
(7, 'logout', 'Logout', 'Logout of your account', '2013-08-13 18:49:58', '2013-08-13 18:49:58'),
(8, 'modify', 'Modify', 'Modifying your account settings, an article...', '2013-08-13 18:50:28', '2013-08-13 18:50:28'),
(9, 'register', 'Register', 'Creating a new account', '2013-08-13 18:50:48', '2013-08-13 18:50:48'),
(10, 'remove_from_wishlist', 'Remove from wishlist', 'Removing an item from your wishlist', '2013-08-13 18:51:20', '2013-08-13 18:51:20'),
(11, 'remove_from_cart', 'Remove from cart', 'Removing an item from your cart', '2013-08-13 18:51:58', '2013-08-13 18:51:58'),
(12, 'checkout', 'Checkout', 'Checkout the cart and buy the items.', '2013-08-13 18:52:26', '2013-08-13 18:52:26'),
(13, 'play', 'play', 'play a game', '2013-10-05 19:29:29', '2013-10-05 19:29:29'),
(14, 'complete', 'complete', 'complete a form, a game...', '2013-10-06 15:57:57', '2013-10-20 08:12:38'),
(15, 'share_on_twitter', 'share on Twitter', 'share a link, an article, a game...', '2013-10-06 16:40:07', '2013-10-06 16:41:27'),
(16, 'share_by_mail', 'Share by mail', NULL, '2013-10-06 16:41:48', '2013-10-06 16:41:48'),
(17, 'share_on_google', 'Share on Google', NULL, '2013-10-06 16:42:06', '2013-10-06 16:42:06'),
(18, 'share_on_facebook', 'Share on Facebook', NULL, '2013-10-06 16:42:29', '2013-10-06 16:42:29'),
(19, 'sponsorize', 'sponsorize', 'sponsorize a friend...', '2013-10-06 17:03:19', '2013-10-06 17:03:19'),
(20, 'subscribe', 'Subscribe', 'Subscribe to a newsletter...', '2013-10-06 19:24:32', '2013-10-06 19:24:32'),
(21, 'post', 'Post', 'Post an application, a Post&Vote entry...', '2013-10-15 08:02:04', '2013-10-15 08:02:04'),
(22, 'vote', 'Vote', 'Vote for a candidate, a Post&Vote entry...', '2013-10-15 08:06:42', '2013-10-15 08:06:42');

-- --------------------------------------------------------

--
-- Structure de la table `opengraph_application`
--

CREATE TABLE IF NOT EXISTS `opengraph_application` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `definition` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C5C284F9A4E2186E` (`app_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `opengraph_application_domain`
--

CREATE TABLE IF NOT EXISTS `opengraph_application_domain` (
  `opengraphdomain_id` int(11) NOT NULL,
  `opengraphapplication_id` int(11) NOT NULL,
  PRIMARY KEY (`opengraphdomain_id`,`opengraphapplication_id`),
  KEY `IDX_F81B75C3B545A07C` (`opengraphdomain_id`),
  KEY `IDX_F81B75C3947B7ED1` (`opengraphapplication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `opengraph_domain`
--

CREATE TABLE IF NOT EXISTS `opengraph_domain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_55DD13382B36786B` (`title`),
  UNIQUE KEY `UNIQ_55DD1338A7A91E0B` (`domain`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Contenu de la table `opengraph_domain`
--

INSERT INTO `opengraph_domain` (`id`, `domain`, `description`, `created_at`, `updated_at`, `title`) VALUES
(2, 'http://pmagento.local', 'demo de pg avec Magento', '2013-08-12 11:15:33', '2013-08-12 11:15:33', 'Demo Magento'),
(3, 'http://playground.local', 'The Games platform !', '2013-10-05 19:13:58', '2013-10-05 19:13:58', 'Playground');

-- --------------------------------------------------------

--
-- Structure de la table `opengraph_object`
--

CREATE TABLE IF NOT EXISTS `opengraph_object` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `definition` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5AD9A6DF77153098` (`code`),
  KEY `IDX_5AD9A6DF727ACA70` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Contenu de la table `opengraph_object`
--

INSERT INTO `opengraph_object` (`id`, `parent_id`, `code`, `label`, `definition`, `created_at`, `updated_at`) VALUES
(1, null, 'page', 'A page of the website', '2013-08-09 18:32:43', '2013-10-15 08:13:25', '0000-00-00 00:00:00'),
(2, null, 'Category page', 'A page presenting a collection (of products, articles...). ', '2013-08-10 05:14:42', '2013-08-13 18:56:59', '0000-00-00 00:00:00'),
(3, null, 'Product', 'A page presenting a product', '2013-08-13 18:57:39', '2013-08-13 18:57:39', '0000-00-00 00:00:00'),
(4, null, 'Article', 'A page presenting an article.', '2013-08-13 18:58:06', '2013-08-13 18:58:06', '0000-00-00 00:00:00'),
(5, null, 'Cart', 'The cart used on an e-commerce platform', '2013-08-13 18:59:19', '2013-08-13 18:59:19', '0000-00-00 00:00:00'),
(6, null, 'User', 'user', '2013-08-13 19:24:57', '2013-08-13 19:24:57', '0000-00-00 00:00:00'),
(7, null, 'game', 'a game', '2013-10-05 19:30:00', '2013-10-05 19:30:00', '0000-00-00 00:00:00'),
(8, null, 'entry', 'entry of a game', '2013-10-12 14:19:04', '2013-10-12 14:19:04', '0000-00-00 00:00:00'),
(10, null, 'Reply', 'the content of the form submited by the user (contact form, quiz answers...)', '2013-10-15 07:56:01', '2013-10-15 07:56:01', '0000-00-00 00:00:00'),
(11, null, 'Post&Vote post', 'A Post&Vote entry submited by the player', '2013-10-15 08:03:56', '2013-10-20 08:18:22', '0000-00-00 00:00:00'),
(12, null, 'Vote', 'vote', '2013-10-20 08:19:31', '2013-10-20 08:19:31', '0000-00-00 00:00:00'),
(13, null, 'reward', 'reward', '2013-10-20 20:47:41', '2013-10-20 20:47:41', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `opengraph_object_attribute`
--

CREATE TABLE IF NOT EXISTS `opengraph_object_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `definition` longtext COLLATE utf8_unicode_ci,
  `mandatory` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_10B5BA8A232D562B` (`object_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- Contenu de la table `opengraph_object_attribute`
--

INSERT INTO `opengraph_object_attribute` (`id`, `object_id`, `code`, `label`, `type`, `definition`, `mandatory`, `created_at`, `updated_at`) VALUES
(2, 2, 'name', 'nom', 'defi', '2013-08-11 17:00:39', 127, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 1, 'url', 'URL', 'Url de l''objet', '2013-08-13 19:06:23', 127, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 1, 'title', 'Title', 'Object title', '2013-08-13 19:06:48', 127, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 6, 'email', 'email', 'Email', '2013-08-14 05:37:06', 127, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 7, 'id', 'Game id', '', '2013-10-06 21:40:02', 127, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 7, 'classType', 'Game Type', '', '2013-10-06 21:40:32', 127, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 8, 'winner', 'winner', 'winner', '2013-10-12 23:48:18', 127, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 8, 'points', 'points', 'points', '2013-10-12 23:48:42', 127, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 2, 'url', 'url', '', '2013-10-13 23:32:16', 127, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 10, 'totalCorrectAnswers', 'Total correct answers', 'The total of possible correct answers replied by the user', '2013-10-15 07:58:14', 127, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 10, 'maxCorrectAnswers', 'Max correct answers', 'The max amount of possible correct answers', '2013-10-15 07:59:02', 127, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 11, 'id', 'Id', '', '2013-10-15 08:04:26', 127, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 11, 'url', 'Url', '', '2013-10-15 08:04:41', 127, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 11, 'title', 'Title', '', '2013-10-15 08:05:10', 127, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 1, 'type', 'Type of the page', 'a type can be : homepage, cms, game, ...', '2013-10-15 08:14:19', 127, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 6, 'city', 'City', '', '2013-10-16 02:11:21', 127, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 6, 'optin', 'Optin', '', '2013-10-16 02:18:37', 127, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 6, 'optinPartner', 'optinPartner', '', '2013-10-16 02:18:53', 127, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 8, 'createdAt', 'Date de création', '', '2013-10-20 09:47:08', 127, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 6, 'createdAt', 'Date d''inscription', '', '2013-10-20 09:52:01', 127, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 13, 'id', 'Reward Id', '', '2013-10-20 20:48:36', 127, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 13, 'category', 'Category', '', '2013-10-20 21:07:26', 127, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `opengraph_object_attribute_mapping`
--

CREATE TABLE IF NOT EXISTS `opengraph_object_attribute_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_id` int(11) DEFAULT NULL,
  `xpath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `objectMapping_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_51B7514FB6E62EFA` (`attribute_id`),
  KEY `IDX_51B7514FBBC5EA86` (`objectMapping_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=58 ;

--
-- Contenu de la table `opengraph_object_attribute_mapping`
--

INSERT INTO `opengraph_object_attribute_mapping` (`id`, `attribute_id`, `xpath`, `created_at`, `updated_at`, `objectMapping_id`) VALUES
(1, 9, '//input[@id=''email'']', '2013-08-15 00:25:10', '2013-08-15 04:13:11', NULL),
(2, 7, 'ceci est cool', '2013-08-15 00:25:24', '2013-08-15 00:52:58', NULL),
(3, 8, NULL, '2013-08-15 00:25:24', '2013-08-15 00:25:24', NULL),
(4, 9, NULL, '2013-08-15 02:30:05', '2013-08-15 02:30:05', NULL),
(22, 10, 'xpathid', '2013-10-12 18:38:19', '2013-10-12 18:50:04', 4),
(23, 11, 'eee', '2013-10-12 18:53:38', '2013-10-12 18:53:38', 4),
(28, 10, '', '2013-10-12 23:36:22', '2013-10-12 23:36:22', 12),
(29, 11, '', '2013-10-12 23:36:22', '2013-10-12 23:36:22', 12),
(30, 14, '', '2013-10-13 00:05:47', '2013-10-13 00:05:47', 13),
(31, 15, '', '2013-10-13 00:05:47', '2013-10-13 00:05:47', 13),
(32, 8, '//div[@class=''col-2'']/p[1]/strong', '2013-10-13 14:27:07', '2013-10-13 14:27:07', 14),
(33, 2, '//div[@class=''page-title category-title'']/h1', '2013-10-13 23:53:40', '2013-10-13 23:53:40', 15),
(34, 15, '//div[@class=''category-products'']/div[@class=''toolbar'']/div[@class=''pager'']/p[@class=''amount'']/strong', '2013-10-13 23:53:40', '2013-10-13 23:58:49', NULL),
(36, 9, '//input[@id=''email'']', '2013-10-14 00:25:48', '2013-10-14 00:25:48', 17),
(37, 9, '', '2013-10-16 02:10:36', '2013-10-16 02:10:36', 18),
(38, 24, '', '2013-10-16 02:11:57', '2013-10-16 02:11:57', 18),
(39, 25, '', '2013-10-16 02:19:40', '2013-10-16 02:19:40', 19),
(40, 26, '', '2013-10-16 02:19:58', '2013-10-16 02:19:58', 19),
(41, 9, '', '2013-10-19 22:58:38', '2013-10-19 22:58:38', 20),
(42, 9, '', '2013-10-19 23:41:41', '2013-10-19 23:41:41', 21),
(43, 7, '', '2013-10-19 23:53:53', '2013-10-19 23:53:53', 22),
(44, 18, '', '2013-10-20 08:15:20', '2013-10-20 08:15:20', 23),
(45, 10, '', '2013-10-20 08:21:29', '2013-10-20 08:21:29', 24),
(46, 11, '', '2013-10-20 08:21:29', '2013-10-20 08:21:29', 24),
(47, 20, '', '2013-10-20 08:21:54', '2013-10-20 08:21:54', 25),
(48, 10, '', '2013-10-20 08:23:20', '2013-10-20 08:23:20', 26),
(49, 11, '', '2013-10-20 08:23:20', '2013-10-20 08:23:20', 26),
(50, 20, '', '2013-10-20 08:23:37', '2013-10-20 08:23:37', 27),
(51, 20, '', '2013-10-20 08:23:59', '2013-10-20 08:23:59', 28),
(52, 10, '', '2013-10-20 08:26:00', '2013-10-20 08:26:00', 29),
(53, 11, '', '2013-10-20 08:26:00', '2013-10-20 08:26:00', 29),
(54, 20, '', '2013-10-20 08:26:17', '2013-10-20 08:26:17', 30),
(55, 20, '', '2013-10-20 08:26:42', '2013-10-20 08:26:42', 31),
(56, 27, '', '2013-10-20 09:48:40', '2013-10-20 09:48:40', 4),
(57, 28, '', '2013-10-20 09:52:41', '2013-10-20 09:52:41', 32);

-- --------------------------------------------------------

--
-- Structure de la table `opengraph_object_mapping`
--

CREATE TABLE IF NOT EXISTS `opengraph_object_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `xpath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `storyMapping_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_817AD59E1C0EF70` (`storyMapping_id`),
  KEY `IDX_817AD59E232D562B` (`object_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=33 ;

--
-- Contenu de la table `opengraph_object_mapping`
--

INSERT INTO `opengraph_object_mapping` (`id`, `object_id`, `xpath`, `created_at`, `updated_at`, `storyMapping_id`) VALUES
(1, 1, '', '2013-10-12 16:59:57', '2013-10-12 16:59:57', NULL),
(4, 7, 'xpathobject', '2013-10-12 17:29:42', '2013-10-12 18:38:19', 15),
(12, 7, '', '2013-10-12 23:36:22', '2013-10-12 23:36:22', 5),
(13, 8, '', '2013-10-13 00:05:47', '2013-10-13 00:05:47', 5),
(14, 1, '', '2013-10-13 14:27:07', '2013-10-13 14:27:07', 2),
(15, 2, '', '2013-10-13 23:53:40', '2013-10-13 23:53:40', 16),
(17, 6, '//input[@id=''email'']', '2013-10-14 00:25:48', '2013-10-14 00:27:11', 1),
(18, 6, '', '2013-10-16 02:10:36', '2013-10-16 02:10:36', 14),
(19, 6, '', '2013-10-16 02:19:40', '2013-10-16 02:19:40', 12),
(20, 6, '', '2013-10-19 22:58:38', '2013-10-19 22:58:38', 18),
(21, 6, '', '2013-10-19 23:30:08', '2013-10-19 23:30:08', 19),
(22, 1, '', '2013-10-19 23:53:53', '2013-10-19 23:53:53', 20),
(23, 10, '', '2013-10-20 08:15:20', '2013-10-20 08:15:20', 5),
(24, 7, '', '2013-10-20 08:21:29', '2013-10-20 08:21:29', 21),
(25, 8, '', '2013-10-20 08:21:54', '2013-10-20 08:21:54', 21),
(26, 7, '', '2013-10-20 08:23:20', '2013-10-20 08:23:20', 22),
(27, 8, '', '2013-10-20 08:23:37', '2013-10-20 08:23:37', 22),
(28, 11, '', '2013-10-20 08:23:59', '2013-10-20 08:23:59', 22),
(29, 7, '', '2013-10-20 08:26:00', '2013-10-20 08:26:00', 23),
(30, 11, '', '2013-10-20 08:26:17', '2013-10-20 08:26:17', 23),
(31, 12, '', '2013-10-20 08:26:26', '2013-10-20 08:26:26', 23),
(32, 6, '', '2013-10-20 09:52:41', '2013-10-20 09:52:41', 10);

-- --------------------------------------------------------

--
-- Structure de la table `opengraph_story`
--

CREATE TABLE IF NOT EXISTS `opengraph_story` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `definition` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `action_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_FD5B796B77153098` (`code`),
  KEY `IDX_FD5B796B9D32F035` (`action_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=25 ;

--
-- Contenu de la table `opengraph_story`
--

INSERT INTO `opengraph_story` (`id`, `code`, `label`, `definition`, `created_at`, `updated_at`, `action_id`) VALUES
(4, 'look_at_page', 'Look at a web page', 'Browse a page of the website', '2013-08-12 09:51:09', '2013-10-15 08:14:55', 1),
(5, 'add_product_to_wishlist', 'Add a product to wishlist', 'Add a product to wishlist', '2013-08-12 12:29:31', '2013-08-13 19:11:31', 3),
(6, 'login', 'Login', 'Login on the website with an account', '2013-08-13 19:24:37', '2013-10-12 20:19:25', 6),
(7, 'logout', 'Logout', 'Logout story', '2013-08-15 02:26:06', '2013-10-19 23:29:45', 7),
(8, 'play_a_game', 'Play a game', 'A user play a game', '2013-10-05 19:30:44', '2013-10-19 21:07:09', 13),
(9, 'complete_quiz', 'Complete a quiz', '', '2013-10-06 15:59:09', '2013-10-20 08:13:32', 14),
(10, 'share_a_game_by_mail', 'Share a game by mail', '', '2013-10-06 16:43:11', '2013-10-15 08:08:50', 16),
(11, 'share_a_game_on_twitter', 'Share a Game on Twitter', '', '2013-10-06 16:43:46', '2013-10-15 08:09:01', 15),
(12, 'share_a_game_on_facebook', 'Share a Game on Facebook', '', '2013-10-06 16:44:17', '2013-10-15 08:09:11', 18),
(13, 'share_a_game_on_google', 'Share a Game on Google', '', '2013-10-06 16:45:18', '2013-10-15 08:09:22', 17),
(14, 'register_user', 'Register an account', 'A new account is registered', '2013-10-06 17:01:36', '2013-10-15 08:09:44', 9),
(15, 'sponsorize_a_friend', 'Sponsorize a friend', 'Sponsorize a Friend to create an account', '2013-10-06 17:04:03', '2013-10-15 08:09:54', 19),
(16, 'subscribe_to_newsletter', 'Subscribe to Company Newsletter', '', '2013-10-06 19:25:40', '2013-10-15 08:10:17', 20),
(17, 'subscribe_to_partner_newsletter', 'Subscribe to a partner Newsletter', '', '2013-10-06 19:26:16', '2013-10-15 08:10:29', 20),
(18, 'modify_account', 'Modify user account', '', '2013-10-06 20:54:09', '2013-10-12 20:19:41', 8),
(19, 'look at a category', 'Look at a category', '', '2013-10-13 23:28:49', '2013-10-13 23:28:49', 1),
(20, 'post_to_postvote', 'Post to a Post&Vote', '', '2013-10-15 08:02:45', '2013-10-15 08:05:35', 21),
(21, 'vote_for_postvote', 'Vote for Post&Vote', '', '2013-10-15 08:08:21', '2013-10-20 08:20:04', 22),
(22, 'complete_instanwin', 'Complete an instantwin', '', '2013-10-20 08:16:41', '2013-10-20 08:16:41', 14),
(23, 'complete_postvote', 'Complete a Post & Vote', '', '2013-10-20 08:17:57', '2013-10-20 08:17:57', 14),
(24, 'complete_reward', 'Complete Reward', '', '2013-10-20 20:50:04', '2013-10-20 20:50:04', 14);

-- --------------------------------------------------------

--
-- Structure de la table `opengraph_story_mapping`
--

CREATE TABLE IF NOT EXISTS `opengraph_story_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `story_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `domain_id` int(11) DEFAULT NULL,
  `conditions_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conditions_xpath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_before_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_before_xpath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_after_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_after_xpath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `points` int(11) NOT NULL,
  `picto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hint` longtext COLLATE utf8_unicode_ci,
  `activity_stream_text` longtext COLLATE utf8_unicode_ci,
  `countLimit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1F32883AAA5D4036` (`story_id`),
  KEY `IDX_1F32883A115F0EE5` (`domain_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=25 ;

--
-- Contenu de la table `opengraph_story_mapping`
--

INSERT INTO `opengraph_story_mapping` (`id`, `story_id`, `created_at`, `updated_at`, `domain_id`, `conditions_url`, `conditions_xpath`, `event_before_url`, `event_before_xpath`, `event_after_url`, `event_after_xpath`, `points`, `picto`, `hint`, `activity_stream_text`, `countLimit`) VALUES
(1, 6, '2013-08-12 12:27:41', '2013-10-13 13:47:21', 2, '/customer/account/', '//a[@title=''Log Out'']', '/customer/account/login/', '//a[@title=''Log In'']', '/customer/account/', '//a[@title=''Log Out'']', 45, NULL, 'Try to login ;)', 'Has logged in', 0),
(2, 4, '2013-08-12 12:29:48', '2013-10-13 23:23:55', 2, 'http://pmagento.local/about-magento-demo-store', '', '', '', '', '', 0, NULL, '', '', 0),
(3, 7, '2013-08-15 02:30:05', '2013-08-15 04:34:47', 2, '/logoutSuccess/', '//a[@title=''Log In'']', '/ic.adfab.fr\\\\/pmagento/', '//a[@title=''Log Out'']', '/ic.adfab.fr\\\\/pmagento/', '//a[@title=''Log In'']', 0, NULL, NULL, NULL, NULL),
(5, 9, '2013-10-06 16:00:31', '2013-10-20 08:14:43', 3, '', '', '', '', 'complete_quiz.post', '', 55, 'media/story/5-capture-decran-2013-08-05-a-21-20-39.png', 'Une bonne réponse ;)', 'Encore une bonne réponse !', 0),
(6, 10, '2013-10-06 16:46:31', '2013-10-06 23:14:02', 3, '', '', '', '', 'sendShareMail.post', '', 150, 'media/story/6-capture-decran-2013-08-22-a-20-03-25.png', 'share by mail !', 'A mail has been sent', NULL),
(7, 12, '2013-10-06 16:47:12', '2013-10-06 23:14:57', 3, '', '', '', '', 'postFbWall.post', '', 99, 'media/story/7-capture-decran-2013-08-22-a-20-04-28.png', 'share on FB', 'a share on FB', NULL),
(8, 11, '2013-10-06 16:53:03', '2013-10-06 23:14:29', 3, '', '', '', '', 'postTwitter.post', '', 34, NULL, 'share on twitter', 'A tweet has been sent', NULL),
(9, 13, '2013-10-06 16:53:43', '2013-10-06 23:14:37', 3, '', '', '', '', 'postGoogle.post', '', 67, NULL, 'share game on Google', 'Share on Google', NULL),
(10, 14, '2013-10-06 17:02:29', '2013-10-06 17:02:29', 3, '', '', '', '', 'register.post', '', 900, NULL, 'New account', 'New account', NULL),
(11, 15, '2013-10-06 17:30:33', '2013-10-06 23:27:49', 3, '', '', '', '', 'sponsor.post', '', 1250, NULL, 'sponsorize a friend', 'a friend has been sponsorized', 0),
(12, 16, '2013-10-06 19:27:31', '2013-10-06 19:27:31', 3, '', '', 'updateNewsletter.pre', '', 'updateNewsletter.post', '', 17, NULL, 'Subscribe to newsletter', 'Has subscribed to newsletter', NULL),
(13, 17, '2013-10-06 19:28:33', '2013-10-06 19:28:33', 3, '', '', 'updateNewsletterPartner.pre', '', 'updateNewsletterPartner.post', '', 53, NULL, 'subscribe to partner newsletter', 'Has subscribed to a partner newsletter', NULL),
(14, 18, '2013-10-06 20:55:38', '2013-10-12 20:20:18', 3, '', '', 'updateInfo.pre', '', 'updateInfo.post', '', 112, NULL, 'Modify user account', 'Has modified its account', 0),
(15, 8, '2013-10-06 21:44:19', '2013-10-12 14:51:57', 3, '', '', '', '', 'play.post', '', 121, NULL, 'hint', 'activitystream', 0),
(16, 19, '2013-10-13 23:33:00', '2013-10-13 23:33:00', 2, '', '//body[contains(@class, ''catalog-category-view'')]', '', '', '', '', 50, NULL, '', '', 0),
(17, 8, '2013-10-19 19:46:18', '2013-10-19 19:46:18', 2, '', '', '', '', 'play.post', '', 10, NULL, 'lfg', '', 0),
(18, 6, '2013-10-19 21:09:09', '2013-10-19 21:09:09', 3, '', '', '', '', 'login.post', '', 123, NULL, '', '', 0),
(19, 7, '2013-10-19 21:09:34', '2013-10-19 21:10:36', 3, '', '', '', '', 'logout.post', '', 23, NULL, '', '', 0),
(20, 4, '2013-10-19 23:53:26', '2013-10-20 08:31:12', 3, '', '', '', '', 'rendertoprecise', '', 23, NULL, '', '', 0),
(21, 22, '2013-10-20 08:20:54', '2013-10-20 08:20:54', 3, '', '', '', '', 'complete_instantwin.post', '', 187, NULL, '', '', 0),
(22, 23, '2013-10-20 08:22:53', '2013-10-20 08:22:53', 3, '', '', '', '', 'complete_postvote.post', '', 86, NULL, '', '', 0),
(23, 21, '2013-10-20 08:24:51', '2013-10-20 08:25:16', 3, '', '', '', '', 'vote_postvote.post', '', 17, NULL, '', '', 0),
(24, 24, '2013-10-20 20:51:13', '2013-10-20 20:51:13', 3, '', '', '', '', 'complete_reward.post', '', 100, NULL, '', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `opengraph_story_object`
--

CREATE TABLE IF NOT EXISTS `opengraph_story_object` (
  `story_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  PRIMARY KEY (`story_id`,`object_id`),
  KEY `IDX_CFCD38D9AA5D4036` (`story_id`),
  KEY `IDX_CFCD38D9232D562B` (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `opengraph_story_object`
--

INSERT INTO `opengraph_story_object` (`story_id`, `object_id`) VALUES
(4, 1),
(6, 3),
(6, 6),
(7, 6),
(8, 7),
(8, 8),
(9, 7),
(9, 8),
(9, 10),
(10, 7),
(11, 7),
(12, 7),
(13, 7),
(14, 6),
(15, 6),
(16, 6),
(17, 6),
(18, 6),
(19, 2),
(20, 7),
(20, 8),
(20, 11),
(21, 6),
(21, 7),
(21, 11),
(21, 12),
(22, 7),
(22, 8),
(23, 7),
(23, 8),
(23, 11),
(24, 13);

-- --------------------------------------------------------

--
-- Structure de la table `opengraph_story_telling`
--

CREATE TABLE IF NOT EXISTS `opengraph_story_telling` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `opengraph_story_mapping_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `object` longtext COLLATE utf8_unicode_ci,
  `secret_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `points` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C93A81957430E6AA` (`opengraph_story_mapping_id`),
  KEY `IDX_C93A8195A76ED395` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=247 ;

--
-- Contenu de la table `opengraph_story_telling`
--

INSERT INTO `opengraph_story_telling` (`id`, `opengraph_story_mapping_id`, `user_id`, `object`, `secret_key`, `points`, `created_at`, `updated_at`) VALUES
(1, NULL, 85, 'youhou', NULL, 2013, '2013-10-06 10:37:34', '0000-00-00 00:00:00'),
(2, NULL, 85, '{"game":{"id":4,"type":"instantwin"}}', NULL, 2013, '2013-10-06 14:37:07', '0000-00-00 00:00:00'),
(6, 5, 85, '{"game":{"id":5,"type":"quiz"}}', NULL, 2013, '2013-10-06 16:03:37', '0000-00-00 00:00:00'),
(7, 5, 85, '{"game":{"id":5,"type":"quiz"}}', NULL, 2013, '2013-10-06 16:03:37', '0000-00-00 00:00:00'),
(8, 6, 85, '{"topic":{"subject":"quiz grg"}}', '007E5D17F613D69', 2013, '2013-10-06 16:51:12', '0000-00-00 00:00:00'),
(9, 10, 86, '[]', NULL, 2013, '2013-10-06 17:40:06', '0000-00-00 00:00:00'),
(10, 10, 87, '[]', NULL, 2013, '2013-10-06 17:42:13', '0000-00-00 00:00:00'),
(11, 10, 88, '[]', NULL, 2013, '2013-10-06 17:45:39', '0000-00-00 00:00:00'),
(12, 10, 89, '[]', NULL, 2013, '2013-10-06 17:48:20', '0000-00-00 00:00:00'),
(13, 11, 85, '{"user":{"id":89,"email":"tttd@test.com"}}', NULL, 2013, '2013-10-06 17:48:20', '0000-00-00 00:00:00'),
(27, 12, 4, '{"user":{"id":4,"email":"admin@test.com"}}', NULL, 2013, '2013-10-06 20:25:08', '0000-00-00 00:00:00'),
(28, 13, 4, '{"user":{"id":4,"email":"admin@test.com"}}', NULL, 2013, '2013-10-06 20:25:08', '0000-00-00 00:00:00'),
(29, 14, 4, '{"user":{"before":{"address":"adresse222","city":"ville222","telephone":"0123232324"}}}', NULL, 2013, '2013-10-06 20:56:11', '0000-00-00 00:00:00'),
(30, 14, 4, '{"before":{"address":"adresse222","city":"ville222","telephone":"0123232324"},"after":{"address":"adresse1","city":"ville1","telephone":"0123232300"}}', NULL, 2013, '2013-10-06 21:00:06', '0000-00-00 00:00:00'),
(31, 14, 4, '{"before":{"address":"adresse1"},"after":{"address":"adresse12"}}', NULL, 2013, '2013-10-06 21:17:16', '0000-00-00 00:00:00'),
(35, 15, 4, '{}', NULL, 2013, '2013-10-06 21:59:34', '0000-00-00 00:00:00'),
(36, 15, 4, '{"game":{"id":4,"classType":"instantwin"}}', NULL, 2013, '2013-10-06 22:03:11', '0000-00-00 00:00:00'),
(37, 15, 4, '{"game":{"id":4,"classType":"instantwin"}}', NULL, 2013, '2013-10-06 22:05:26', '0000-00-00 00:00:00'),
(38, 10, 90, '{"user":{"email":"aag@test.com"}}', NULL, 2013, '2013-10-06 22:08:40', '0000-00-00 00:00:00'),
(39, 11, 85, '{"user":{"id":90,"email":"aag@test.com"}}', NULL, 2013, '2013-10-06 22:08:40', '0000-00-00 00:00:00'),
(40, 15, 85, '{"game":{"id":4,"classType":"instantwin"}}', NULL, 2013, '2013-10-06 23:17:12', '0000-00-00 00:00:00'),
(41, 14, 85, '{"before":{"address":null,"city":null},"after":{"address":"sdfsdf","city":"ville"}}', NULL, 2013, '2013-10-06 23:17:38', '0000-00-00 00:00:00'),
(42, 6, 85, '{"game":{"id":4,"classType":"instantwin"}}', '54007BE619FBD71', 2013, '2013-10-06 23:17:54', '0000-00-00 00:00:00'),
(43, 15, 85, '{"game":{"id":5,"classType":"quiz"}}', NULL, 2013, '2013-10-06 23:49:33', '0000-00-00 00:00:00'),
(44, 5, 85, '{"game":{"id":5,"type":"quiz"},"winner":null,"correctAnswers":null}', NULL, 2013, '2013-10-06 23:49:59', '0000-00-00 00:00:00'),
(45, 15, 4, '{"game":{"id":5,"classType":"quiz"}}', NULL, 2013, '2013-10-06 23:57:00', '0000-00-00 00:00:00'),
(46, 5, 4, '{"game":{"id":5,"type":"quiz"},"winner":true,"correctAnswers":2}', NULL, 2013, '2013-10-06 23:57:09', '0000-00-00 00:00:00'),
(47, 7, 4, '{"game":{"id":5,"classType":"quiz"}}', 'E88B924ED4F44CC', 2013, '2013-10-07 00:13:21', '0000-00-00 00:00:00'),
(48, 15, 4, '{"game":{"id":5,"classType":"quiz"}}', NULL, 2013, '2013-10-07 00:15:41', '0000-00-00 00:00:00'),
(49, 15, 4, '{"game":{"id":4,"classType":"instantwin"}}', NULL, 2013, '2013-10-09 23:07:28', '0000-00-00 00:00:00'),
(50, 15, 4, '{"game":{"id":4,"classType":"instantwin"}}', NULL, 2013, '2013-10-09 23:08:18', '0000-00-00 00:00:00'),
(51, 15, 4, '{"game":{"id":4,"classType":"instantwin"}}', NULL, 2013, '2013-10-09 23:14:33', '0000-00-00 00:00:00'),
(52, 15, 4, '{"game":{"id":4,"classType":"instantwin"}}', NULL, 2013, '2013-10-09 23:16:03', '0000-00-00 00:00:00'),
(53, 15, 4, '{"game":{"id":4,"classType":"instantwin"}}', NULL, 2013, '2013-10-09 23:16:38', '0000-00-00 00:00:00'),
(54, 15, 4, '{"game":{"id":4,"classType":"instantwin"}}', NULL, 2013, '2013-10-09 23:18:14', '0000-00-00 00:00:00'),
(55, 15, 4, '{"game":{"id":4,"classType":"instantwin"}}', NULL, 2013, '2013-10-09 23:18:45', '0000-00-00 00:00:00'),
(56, 15, 4, '{"game":{"id":4,"classType":"instantwin"}}', NULL, 2013, '2013-10-09 23:26:38', '0000-00-00 00:00:00'),
(57, 15, 4, '{"game":{"id":4,"classType":"instantwin"}}', NULL, 2013, '2013-10-09 23:43:39', '0000-00-00 00:00:00'),
(58, 15, 4, '{"game":{"id":4,"classType":"instantwin"}}', NULL, 2013, '2013-10-09 23:47:30', '0000-00-00 00:00:00'),
(59, 15, 4, '{"game":{"id":4,"classType":"instantwin"}}', NULL, 2013, '2013-10-09 23:50:19', '0000-00-00 00:00:00'),
(60, 15, 4, '{"game":{"id":4,"classType":"instantwin"}}', NULL, 2013, '2013-10-09 23:51:01', '0000-00-00 00:00:00'),
(61, 15, 4, '{"game":{"id":4,"classType":"instantwin"}}', NULL, 2013, '2013-10-09 23:51:14', '0000-00-00 00:00:00'),
(62, 15, 4, '{"game":{"id":4,"classType":"instantwin"}}', NULL, 2013, '2013-10-10 00:04:48', '0000-00-00 00:00:00'),
(63, 15, 4, '{"game":{"id":4,"classType":"instantwin"}}', NULL, 2013, '2013-10-10 00:05:53', '0000-00-00 00:00:00'),
(64, 15, 4, '{"game":{"id":4,"classType":"instantwin"}}', NULL, 2013, '2013-10-10 00:14:16', '0000-00-00 00:00:00'),
(65, 15, 4, '{"game":{"id":4,"classType":"instantwin"}}', NULL, 2013, '2013-10-10 00:33:39', '0000-00-00 00:00:00'),
(66, 15, 4, '{"game":{"id":4,"classType":"instantwin"}}', NULL, 2013, '2013-10-10 00:36:02', '0000-00-00 00:00:00'),
(67, 15, 4, '{"game":{"id":4,"classType":"instantwin"}}', NULL, 2013, '2013-10-10 00:53:23', '0000-00-00 00:00:00'),
(68, 5, 4, '{"game":{"id":5,"type":"quiz"},"winner":true,"correctAnswers":1}', NULL, 2013, '2013-10-10 00:57:36', '0000-00-00 00:00:00'),
(69, 15, 4, '{"game":{"id":5,"classType":"quiz"}}', NULL, 2013, '2013-10-10 07:01:40', '0000-00-00 00:00:00'),
(70, 5, 4, '{"game":{"id":5,"type":"quiz"},"winner":true,"correctAnswers":0}', NULL, 2013, '2013-10-10 07:02:21', '0000-00-00 00:00:00'),
(71, 15, 4, '{"game":{"id":5,"classType":"quiz"}}', NULL, 2013, '2013-10-10 07:02:50', '0000-00-00 00:00:00'),
(72, 5, 4, '{"game":{"id":5,"type":"quiz"},"winner":true,"correctAnswers":0}', NULL, 2013, '2013-10-10 07:19:24', '0000-00-00 00:00:00'),
(73, 15, 4, '{"game":{"id":5,"classType":"quiz"}}', NULL, 2013, '2013-10-10 07:20:15', '0000-00-00 00:00:00'),
(74, 5, 4, '{"game":{"id":5,"type":"quiz"},"winner":true,"correctAnswers":1}', NULL, 2013, '2013-10-10 07:23:15', '0000-00-00 00:00:00'),
(75, 15, 4, '{"game":{"id":5,"classType":"quiz"}}', NULL, 2013, '2013-10-10 07:23:58', '0000-00-00 00:00:00'),
(76, 5, 4, '{"game":{"id":5,"type":"quiz"},"winner":true,"correctAnswers":1}', NULL, 2013, '2013-10-10 07:24:46', '0000-00-00 00:00:00'),
(77, 15, 4, '{"game":{"id":5,"classType":"quiz"}}', NULL, 2013, '2013-10-10 07:25:02', '0000-00-00 00:00:00'),
(78, 5, 4, '{"game":{"id":5,"type":"quiz"},"winner":true,"correctAnswers":0}', NULL, 2013, '2013-10-10 07:27:12', '0000-00-00 00:00:00'),
(79, 15, 4, '{"game":{"id":5,"classType":"quiz"}}', NULL, 2013, '2013-10-10 07:27:37', '0000-00-00 00:00:00'),
(80, 5, 4, '{"game":{"id":5,"type":"quiz"},"winner":true,"correctAnswers":1}', NULL, 2013, '2013-10-10 07:28:53', '0000-00-00 00:00:00'),
(81, 15, 4, '{"game":{"id":5,"classType":"quiz"}}', NULL, 2013, '2013-10-10 07:29:10', '0000-00-00 00:00:00'),
(82, 5, 4, '{"game":{"id":5,"type":"quiz"},"winner":true,"correctAnswers":1}', NULL, 2013, '2013-10-10 07:39:32', '0000-00-00 00:00:00'),
(83, 15, 4, '{"game":{"id":5,"classType":"quiz"}}', NULL, 2013, '2013-10-10 07:39:55', '0000-00-00 00:00:00'),
(84, 5, 4, '{"game":{"id":5,"type":"quiz"},"winner":true,"correctAnswers":1}', NULL, 2013, '2013-10-10 07:52:45', '0000-00-00 00:00:00'),
(85, 15, 4, '{"game":{"id":5,"classType":"quiz"}}', NULL, 2013, '2013-10-10 07:52:51', '0000-00-00 00:00:00'),
(86, 5, 4, '{"game":{"id":5,"type":"quiz"},"winner":true,"correctAnswers":1}', NULL, 2013, '2013-10-10 07:53:54', '0000-00-00 00:00:00'),
(87, 15, 4, '{"game":{"id":5,"classType":"quiz"}}', NULL, 2013, '2013-10-10 07:54:11', '0000-00-00 00:00:00'),
(88, 10, 91, '{"user":{"email":"tttg@test.com"}}', NULL, 2013, '2013-10-11 01:58:22', '0000-00-00 00:00:00'),
(89, 15, 4, '[]', NULL, 2013, '2013-10-12 23:11:08', '0000-00-00 00:00:00'),
(90, 15, 4, '[]', NULL, 2013, '2013-10-12 23:13:47', '0000-00-00 00:00:00'),
(91, 15, 4, '[]', NULL, 2013, '2013-10-12 23:16:22', '0000-00-00 00:00:00'),
(92, 15, 4, '[]', NULL, 2013, '2013-10-12 23:17:09', '0000-00-00 00:00:00'),
(93, 15, 4, '{"game":{"id":4,"classType":"instantwin"}}', NULL, 2013, '2013-10-12 23:20:22', '0000-00-00 00:00:00'),
(94, 15, 4, '{"game":{"id":4,"classType":"instantwin"}}', NULL, 2013, '2013-10-13 00:05:56', '0000-00-00 00:00:00'),
(95, 5, 4, '{"game":{"id":5,"type":"quiz"},"winner":true,"correctAnswers":1}', NULL, 2013, '2013-10-13 00:06:23', '0000-00-00 00:00:00'),
(96, 15, 4, '{"game":{"id":5,"classType":"quiz"}}', NULL, 2013, '2013-10-13 00:07:27', '0000-00-00 00:00:00'),
(97, 5, 4, '{"game":{"id":5,"classType":"quiz"}}', NULL, 2013, '2013-10-13 00:07:36', '0000-00-00 00:00:00'),
(98, 15, 4, '{"game":{"id":5,"classType":"quiz"}}', NULL, 2013, '2013-10-13 00:09:00', '0000-00-00 00:00:00'),
(99, 5, 4, '{"game":{"id":5,"classType":"quiz"},"entry":{"winner":true,"points":0}}', NULL, 2013, '2013-10-13 00:09:09', '0000-00-00 00:00:00'),
(100, 15, 4, '{"game":{"id":5,"classType":"quiz"}}', NULL, 2013, '2013-10-13 01:22:30', '0000-00-00 00:00:00'),
(101, 15, 4, '{"game":{"id":5,"classType":"quiz"}}', NULL, 2013, '2013-10-13 01:27:27', '0000-00-00 00:00:00'),
(102, 5, 4, '{"game":{"id":5,"classType":"quiz"},"entry":{"winner":true,"points":0}}', NULL, 2013, '2013-10-13 01:27:27', '0000-00-00 00:00:00'),
(103, 15, 4, '{"game":{"id":5,"classType":"quiz"}}', NULL, 2013, '2013-10-13 01:27:56', '0000-00-00 00:00:00'),
(104, 5, 4, '{"game":{"id":5,"classType":"quiz"},"entry":{"winner":true,"points":0}}', NULL, 2013, '2013-10-13 01:28:02', '0000-00-00 00:00:00'),
(105, 15, 4, '{"game":{"id":5,"classType":"quiz"}}', NULL, 2013, '2013-10-13 01:31:19', '0000-00-00 00:00:00'),
(106, 5, 4, '{"game":{"id":5,"classType":"quiz"},"entry":{"winner":true,"points":0}}', NULL, 2013, '2013-10-13 01:31:30', '0000-00-00 00:00:00'),
(107, 15, 4, '{"game":{"id":5,"classType":"quiz"}}', NULL, 2013, '2013-10-13 01:37:27', '0000-00-00 00:00:00'),
(108, 5, 4, '{"game":{"id":5,"classType":"quiz"},"entry":{"winner":true,"points":0}}', NULL, 2013, '2013-10-13 01:37:41', '0000-00-00 00:00:00'),
(109, 15, 4, '{"game":{"id":5,"classType":"quiz"}}', NULL, 2013, '2013-10-13 01:38:03', '0000-00-00 00:00:00'),
(110, 5, 4, '{"game":{"id":5,"classType":"quiz"},"entry":{"winner":true,"points":0}}', NULL, 2013, '2013-10-13 01:38:13', '0000-00-00 00:00:00'),
(111, 15, 4, '{"game":{"id":5,"classType":"quiz"}}', NULL, 2013, '2013-10-13 01:38:39', '0000-00-00 00:00:00'),
(112, 5, 4, '{"game":{"id":5,"classType":"quiz"},"entry":{"winner":false,"points":0}}', NULL, 2013, '2013-10-13 01:38:49', '0000-00-00 00:00:00'),
(113, NULL, NULL, '{"id":"category","properties":{"name":"points","value":"5 Item(s)"}}', NULL, 2013, '2013-10-14 00:17:27', '0000-00-00 00:00:00'),
(114, NULL, NULL, '[]', NULL, 2013, '2013-10-14 00:20:28', '0000-00-00 00:00:00'),
(115, NULL, NULL, '[]', NULL, 2013, '2013-10-14 00:21:32', '0000-00-00 00:00:00'),
(116, NULL, NULL, '[]', NULL, 2013, '2013-10-14 00:21:55', '0000-00-00 00:00:00'),
(117, NULL, NULL, '[]', NULL, 2013, '2013-10-14 00:25:58', '0000-00-00 00:00:00'),
(118, NULL, NULL, '{"id":"user"}', NULL, 2013, '2013-10-14 00:26:17', '0000-00-00 00:00:00'),
(119, NULL, NULL, '[]', NULL, 2013, '2013-10-14 00:27:23', '0000-00-00 00:00:00'),
(120, NULL, NULL, '{"id":"user"}', NULL, 2013, '2013-10-14 00:27:37', '0000-00-00 00:00:00'),
(121, NULL, NULL, '{"id":"category","properties":{"name":"name","value":"Hoodies"}}', NULL, 2013, '2013-10-14 01:10:25', '0000-00-00 00:00:00'),
(122, NULL, NULL, '{"id":"homepage","properties":{"name":"title","value":"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit."}}', NULL, 2013, '2013-10-14 22:25:48', '0000-00-00 00:00:00'),
(123, 15, 4, '{"game":{"id":5,"classType":"quiz"}}', NULL, 2013, '2013-10-16 01:56:12', '0000-00-00 00:00:00'),
(124, 14, 4, '[]', NULL, 2013, '2013-10-16 01:56:58', '0000-00-00 00:00:00'),
(125, 14, 4, '[]', NULL, 2013, '2013-10-16 01:58:03', '0000-00-00 00:00:00'),
(126, 14, 4, '[]', NULL, 2013, '2013-10-16 02:13:41', '0000-00-00 00:00:00'),
(127, 14, 4, '{"user":{"email":"admin@test.com","city":"hhhdrf"}}', NULL, 2013, '2013-10-16 02:15:46', '0000-00-00 00:00:00'),
(128, 14, 4, '{"before":{"user":{"city":"hhhdrf"}},"after":{"user":{"city":"ccc"}}}', NULL, 2013, '2013-10-16 02:15:57', '0000-00-00 00:00:00'),
(129, 12, 4, '[]', NULL, 2013, '2013-10-16 02:17:15', '0000-00-00 00:00:00'),
(130, 13, 4, '[]', NULL, 2013, '2013-10-16 02:17:15', '0000-00-00 00:00:00'),
(131, 12, 4, '{"before":{"user":{"optin":false,"optinPartner":false}},"after":{"user":{"optin":"1","optinPartner":"1"}}}', NULL, 2013, '2013-10-16 02:20:10', '0000-00-00 00:00:00'),
(132, 13, 4, '[]', NULL, 2013, '2013-10-16 02:20:10', '0000-00-00 00:00:00'),
(133, 12, 4, '{"before":{"user":{"optin":true,"optinPartner":true}},"after":{"user":{"optin":"0","optinPartner":"0"}}}', NULL, 2013, '2013-10-17 02:15:50', '0000-00-00 00:00:00'),
(134, 13, 4, '[]', NULL, 2013, '2013-10-17 02:15:50', '0000-00-00 00:00:00'),
(135, NULL, NULL, '[{"id":"page","properties":[{"name":"title","value":"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit."}]}]', NULL, 2013, '2013-10-19 14:56:31', '0000-00-00 00:00:00'),
(136, NULL, NULL, '[{"id":"page","properties":[{"name":"title","value":"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit."}]}]', NULL, 2013, '2013-10-19 14:57:54', '0000-00-00 00:00:00'),
(137, NULL, NULL, '[{"id":"page","properties":[{"name":"title","value":"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit."}]}]', NULL, 2013, '2013-10-19 15:01:03', '0000-00-00 00:00:00'),
(138, NULL, NULL, '[{"id":"page","properties":[{"name":"title","value":"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit."}]}]', NULL, 2013, '2013-10-19 15:16:26', '0000-00-00 00:00:00'),
(139, NULL, NULL, '[{"id":"page","properties":[{"name":"title","value":"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit."}]}]', NULL, 2013, '2013-10-19 16:18:57', '0000-00-00 00:00:00'),
(140, NULL, NULL, '[{"id":"page","properties":[{"name":"title","value":"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit."}]}]', NULL, 2013, '2013-10-19 16:20:46', '0000-00-00 00:00:00'),
(141, NULL, NULL, '[{"id":"page","properties":[{"name":"title","value":"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit."}]}]', NULL, 2013, '2013-10-19 19:18:44', '0000-00-00 00:00:00'),
(142, 15, 4, '{"game":{"id":4,"classType":"instantwin"}}', NULL, 2013, '2013-10-19 20:58:16', '0000-00-00 00:00:00'),
(143, 15, 4, '{"game":{"id":4,"classType":"instantwin"}}', NULL, 2013, '2013-10-19 20:59:00', '0000-00-00 00:00:00'),
(144, 18, 4, '{"user":{"email":"admin@test.com"}}', NULL, 2013, '2013-10-19 23:21:57', '0000-00-00 00:00:00'),
(145, 19, 4, '[]', NULL, 2013, '2013-10-19 23:27:45', '0000-00-00 00:00:00'),
(146, 18, 4, '{"user":{"email":"admin@test.com"}}', NULL, 2013, '2013-10-19 23:29:11', '0000-00-00 00:00:00'),
(147, 19, 4, '[]', NULL, 2013, '2013-10-19 23:30:21', '0000-00-00 00:00:00'),
(148, 18, 4, '{"user":{"email":"admin@test.com"}}', NULL, 2013, '2013-10-19 23:31:19', '0000-00-00 00:00:00'),
(149, 19, 4, '[]', NULL, 2013, '2013-10-19 23:32:53', '0000-00-00 00:00:00'),
(150, 18, 4, '{"user":{"email":"admin@test.com"}}', NULL, 2013, '2013-10-19 23:36:32', '0000-00-00 00:00:00'),
(151, 19, 4, '[]', NULL, 2013, '2013-10-19 23:38:23', '0000-00-00 00:00:00'),
(152, 18, 4, '{"user":{"email":"admin@test.com"}}', NULL, 2013, '2013-10-19 23:39:49', '0000-00-00 00:00:00'),
(153, 18, 4, '{"user":{"email":"admin@test.com"}}', NULL, 2013, '2013-10-19 23:39:59', '0000-00-00 00:00:00'),
(154, 19, 4, '[]', NULL, 2013, '2013-10-19 23:40:21', '0000-00-00 00:00:00'),
(155, 19, 4, '{"user":{"email":"admin@test.com"}}', NULL, 2013, '2013-10-19 23:42:09', '0000-00-00 00:00:00'),
(156, 19, NULL, '[]', NULL, 2013, '2013-10-19 23:42:22', '0000-00-00 00:00:00'),
(157, 18, 4, '{"user":{"email":"admin@test.com"}}', NULL, 2013, '2013-10-19 23:43:32', '0000-00-00 00:00:00'),
(158, 19, 4, '{"user":{"email":"admin@test.com"}}', NULL, 2013, '2013-10-19 23:43:48', '0000-00-00 00:00:00'),
(159, 18, 4, '{"user":{"email":"admin@test.com"}}', NULL, 2013, '2013-10-19 23:50:10', '0000-00-00 00:00:00'),
(160, 20, NULL, '[]', NULL, 2013, '2013-10-20 08:28:19', '0000-00-00 00:00:00'),
(161, 15, 4, '{"game":{"id":4,"classType":"instantwin"}}', NULL, 2013, '2013-10-20 08:28:28', '0000-00-00 00:00:00'),
(162, 21, 4, '{"game":{"id":4,"classType":"instantwin"},"entry":{"id":174}}', NULL, 2013, '2013-10-20 08:28:28', '0000-00-00 00:00:00'),
(182, 5, 4, '{"game":{"id":5,"classType":"quiz"},"entry":{"winner":true,"points":0},"reply":{"totalCorrectAnswers":1}}', NULL, 2013, '2013-10-20 08:31:37', '0000-00-00 00:00:00'),
(183, 15, 4, '{"game":{"id":5,"classType":"quiz"}}', NULL, 2013, '2013-10-20 08:32:39', '0000-00-00 00:00:00'),
(184, 5, 4, '{"game":{"id":5,"classType":"quiz"},"entry":{"winner":false,"points":0},"reply":{"totalCorrectAnswers":0}}', NULL, 2013, '2013-10-20 08:32:54', '0000-00-00 00:00:00'),
(185, 15, 4, '{"game":{"id":4,"classType":"instantwin"}}', NULL, 2013, '2013-10-20 08:33:35', '0000-00-00 00:00:00'),
(186, 21, 4, '{"game":{"id":4,"classType":"instantwin"},"entry":{"id":176}}', NULL, 2013, '2013-10-20 08:33:35', '0000-00-00 00:00:00'),
(187, 15, 4, '{"game":{"id":3,"classType":"postvote"}}', NULL, 2013, '2013-10-20 08:34:13', '0000-00-00 00:00:00'),
(188, 22, 4, '{"game":{"id":3,"classType":"postvote"},"entry":{"id":177},"post":{"id":4}}', NULL, 2013, '2013-10-20 08:34:34', '0000-00-00 00:00:00'),
(189, 15, 4, '{"game":{"id":5,"classType":"quiz"}}', NULL, 2013, '2013-10-20 09:47:29', '0000-00-00 00:00:00'),
(190, 5, 4, '{"game":{"id":5,"classType":"quiz"},"entry":{"winner":true,"points":0},"reply":{"totalCorrectAnswers":1}}', NULL, 2013, '2013-10-20 09:47:40', '0000-00-00 00:00:00'),
(191, 15, 4, '{"game":{"id":5,"classType":"quiz","createdAt":{"date":"2013-06-08 18:11:34","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-20 09:48:57', '0000-00-00 00:00:00'),
(192, 15, 4, '{"game":{"id":13,"classType":"lottery","createdAt":{"date":"2013-10-20 13:31:54","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-20 14:51:10', '0000-00-00 00:00:00'),
(193, 15, 4, '{"game":{"id":3,"classType":"postvote","createdAt":{"date":"2013-05-29 01:24:52","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-20 14:54:49', '0000-00-00 00:00:00'),
(194, 15, 4, '{"game":{"id":13,"classType":"lottery","createdAt":{"date":"2013-10-20 13:31:54","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-20 19:02:49', '0000-00-00 00:00:00'),
(195, 15, 4, '{"game":{"id":13,"classType":"lottery","createdAt":{"date":"2013-10-20 13:31:54","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-20 19:07:04', '0000-00-00 00:00:00'),
(196, 15, 4, '{"game":{"id":13,"classType":"lottery","createdAt":{"date":"2013-10-20 13:31:54","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-20 19:08:33', '0000-00-00 00:00:00'),
(197, 15, 4, '{"game":{"id":13,"classType":"lottery","createdAt":{"date":"2013-10-20 13:31:54","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-20 20:37:19', '0000-00-00 00:00:00'),
(198, 15, 4, '{"game":{"id":13,"classType":"lottery","createdAt":{"date":"2013-10-20 13:31:54","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-20 21:55:23', '0000-00-00 00:00:00'),
(199, 15, 4, '{"game":{"id":13,"classType":"lottery","createdAt":{"date":"2013-10-20 13:31:54","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-20 21:59:16', '0000-00-00 00:00:00'),
(200, 15, 4, '{"game":{"id":13,"classType":"lottery","createdAt":{"date":"2013-10-20 13:31:54","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-20 22:00:14', '0000-00-00 00:00:00'),
(201, 15, 4, '{"game":{"id":13,"classType":"lottery","createdAt":{"date":"2013-10-20 13:31:54","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-20 22:00:45', '0000-00-00 00:00:00'),
(202, 15, 4, '{"game":{"id":13,"classType":"lottery","createdAt":{"date":"2013-10-20 13:31:54","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-20 22:03:04', '0000-00-00 00:00:00'),
(203, 15, 4, '{"game":{"id":13,"classType":"lottery","createdAt":{"date":"2013-10-20 13:31:54","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-20 22:17:58', '0000-00-00 00:00:00'),
(204, 15, 4, '{"game":{"id":13,"classType":"lottery","createdAt":{"date":"2013-10-20 13:31:54","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-20 22:18:41', '0000-00-00 00:00:00'),
(205, 15, 4, '{"game":{"id":13,"classType":"lottery","createdAt":{"date":"2013-10-20 13:31:54","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-20 22:19:29', '0000-00-00 00:00:00'),
(206, 15, 4, '{"game":{"id":13,"classType":"lottery","createdAt":{"date":"2013-10-20 13:31:54","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-20 22:20:29', '0000-00-00 00:00:00'),
(207, 15, 4, '{"game":{"id":13,"classType":"lottery","createdAt":{"date":"2013-10-20 13:31:54","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-20 22:37:37', '0000-00-00 00:00:00'),
(208, 15, 4, '{"game":{"id":13,"classType":"lottery","createdAt":{"date":"2013-10-20 13:31:54","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-20 22:38:51', '0000-00-00 00:00:00'),
(209, 15, 4, '{"game":{"id":13,"classType":"lottery","createdAt":{"date":"2013-10-20 13:31:54","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-20 22:44:06', '0000-00-00 00:00:00'),
(210, 15, 4, '{"game":{"id":13,"classType":"lottery","createdAt":{"date":"2013-10-20 13:31:54","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-20 22:45:17', '0000-00-00 00:00:00'),
(211, 15, 4, '{"game":{"id":13,"classType":"lottery","createdAt":{"date":"2013-10-20 13:31:54","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-20 22:46:27', '0000-00-00 00:00:00'),
(212, 15, 4, '{"game":{"id":13,"classType":"lottery","createdAt":{"date":"2013-10-20 13:31:54","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-20 22:46:31', '0000-00-00 00:00:00'),
(213, 15, 4, '{"game":{"id":13,"classType":"lottery","createdAt":{"date":"2013-10-20 13:31:54","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-20 22:46:42', '0000-00-00 00:00:00'),
(214, 15, 4, '{"game":{"id":13,"classType":"lottery","createdAt":{"date":"2013-10-20 13:31:54","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-20 22:47:43', '0000-00-00 00:00:00'),
(215, 15, 4, '{"game":{"id":13,"classType":"lottery","createdAt":{"date":"2013-10-20 13:31:54","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-20 22:49:18', '0000-00-00 00:00:00'),
(216, 15, 4, '{"game":{"id":13,"classType":"lottery","createdAt":{"date":"2013-10-20 13:31:54","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-20 22:50:15', '0000-00-00 00:00:00'),
(217, 15, 4, '{"game":{"id":13,"classType":"lottery","createdAt":{"date":"2013-10-20 13:31:54","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-20 22:50:45', '0000-00-00 00:00:00'),
(218, 15, 4, '{"game":{"id":13,"classType":"lottery","createdAt":{"date":"2013-10-20 13:31:54","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-20 22:52:12', '0000-00-00 00:00:00'),
(219, 24, 4, '[]', NULL, 2013, '2013-10-20 22:52:12', '0000-00-00 00:00:00'),
(220, 24, 4, '[]', NULL, 2013, '2013-10-20 22:52:13', '0000-00-00 00:00:00'),
(221, 15, 4, '{"game":{"id":13,"classType":"lottery","createdAt":{"date":"2013-10-20 13:31:54","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-20 22:54:16', '0000-00-00 00:00:00'),
(222, 24, 4, '[]', NULL, 2013, '2013-10-20 22:54:16', '0000-00-00 00:00:00'),
(223, 15, 4, '{"game":{"id":13,"classType":"lottery","createdAt":{"date":"2013-10-20 13:31:54","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-20 22:54:52', '0000-00-00 00:00:00'),
(224, 24, 4, '[]', NULL, 2013, '2013-10-20 22:54:53', '0000-00-00 00:00:00'),
(225, 15, 4, '{"game":{"id":13,"classType":"lottery","createdAt":{"date":"2013-10-20 13:31:54","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-20 22:56:07', '0000-00-00 00:00:00'),
(226, 15, 4, '{"game":{"id":13,"classType":"lottery","createdAt":{"date":"2013-10-20 13:31:54","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-20 23:06:59', '0000-00-00 00:00:00'),
(227, 19, 4, '{"user":{"email":"admin@test.com"}}', NULL, 2013, '2013-10-21 00:26:02', '0000-00-00 00:00:00'),
(228, 10, 92, '{"user":{"createdAt":{"date":"2013-10-21 00:26:44","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-21 00:26:44', '0000-00-00 00:00:00'),
(229, 19, 92, '{"user":{"email":"r1@test.com"}}', NULL, 2013, '2013-10-21 00:27:37', '0000-00-00 00:00:00'),
(230, 10, 93, '{"user":{"createdAt":{"date":"2013-10-21 00:28:20","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-21 00:28:20', '0000-00-00 00:00:00'),
(231, 19, 93, '{"user":{"email":"tttjob@test.com"}}', NULL, 2013, '2013-10-21 00:30:32', '0000-00-00 00:00:00'),
(232, 10, 94, '{"user":{"createdAt":{"date":"2013-10-21 00:31:40","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-21 00:31:40', '0000-00-00 00:00:00'),
(233, 19, 94, '{"user":{"email":"tttwonderb@test.com"}}', NULL, 2013, '2013-10-21 00:33:49', '0000-00-00 00:00:00'),
(234, 18, 4, '{"user":{"email":"admin@test.com"}}', NULL, 2013, '2013-10-21 00:34:02', '0000-00-00 00:00:00'),
(235, 19, 4, '{"user":{"email":"admin@test.com"}}', NULL, 2013, '2013-10-21 00:34:57', '0000-00-00 00:00:00'),
(236, 18, 4, '{"user":{"email":"admin@test.com"}}', NULL, 2013, '2013-10-21 02:07:15', '0000-00-00 00:00:00'),
(237, 24, 4, '[]', NULL, 2013, '2013-10-21 02:07:15', '0000-00-00 00:00:00'),
(238, 15, 4, '{"game":{"id":13,"classType":"lottery","createdAt":{"date":"2013-10-20 13:31:54","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-21 17:48:52', '0000-00-00 00:00:00'),
(239, 5, 4, '{"game":{"id":5,"classType":"quiz"},"entry":{"winner":true,"points":0},"reply":{"totalCorrectAnswers":1}}', NULL, 2013, '2013-10-21 17:49:59', '0000-00-00 00:00:00'),
(240, 15, 4, '{"game":{"id":13,"classType":"lottery","createdAt":{"date":"2013-10-20 13:31:54","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-21 18:06:35', '0000-00-00 00:00:00'),
(241, 15, 4, '{"game":{"id":5,"classType":"quiz","createdAt":{"date":"2013-06-08 18:11:34","timezone_type":3,"timezone":"Europe\\/Berlin"}}}', NULL, 2013, '2013-10-21 18:07:31', '0000-00-00 00:00:00'),
(242, 5, 4, '{"game":{"id":5,"classType":"quiz"},"entry":{"winner":false,"points":0},"reply":{"totalCorrectAnswers":0}}', NULL, 2013, '2013-10-21 18:07:41', '0000-00-00 00:00:00'),
(243, NULL, NULL, '[{"id":"page","properties":[{"name":"title","value":"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit."}]}]', NULL, 2013, '2013-10-23 07:37:34', '0000-00-00 00:00:00'),
(244, NULL, NULL, '[{"id":"page","properties":[{"name":"title","value":"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit."}]}]', NULL, 2013, '2013-10-23 07:37:59', '0000-00-00 00:00:00'),
(245, 18, 4, '{"user":{"email":"admin@test.com"}}', NULL, 2013, '2013-10-23 11:25:36', '0000-00-00 00:00:00'),
(246, NULL, NULL, '[{"id":"page","properties":[{"name":"title","value":"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit."}]}]', NULL, 2013, '2013-10-23 13:19:08', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `opengraph_web_techno`
--

CREATE TABLE IF NOT EXISTS `opengraph_web_techno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `definition` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_DC5BA84577153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `partner`
--

CREATE TABLE IF NOT EXISTS `partner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `bounce_page` tinyint(1) DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `small_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `newsletter` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Contenu de la table `partner`
--

INSERT INTO `partner` (`id`, `name`, `active`, `bounce_page`, `logo`, `small_logo`, `website`, `facebook`, `newsletter`, `created_at`, `updated_at`) VALUES
(1, 'France Télévisions', 1, 1, 'media/partner/1-francetelevision.jpg', 'media/partner/1-images.jpg', 'http://www.francetelevisions.fr', 'https://www.facebook.com/FranceTV', 0, '2013-10-09 09:11:55', '2013-10-09 09:11:55'),
(2, 'Sncf', 1, 1, 'media/partner/2-logo-sncf1.jpg', 'media/partner/2-logo-sncf.jpg', 'http://www.voyages-sncf.com', 'https://www.facebook.com/SNCFOFFICIEL?fref=ts', 0, '2013-10-09 09:14:42', '2013-10-09 09:14:42'),
(3, 'La Poste', 1, 0, 'media/partner/3-logo-la-poste.jpg', 'media/partner/3-logo-la-poste.jpg', NULL, 'https://www.facebook.com/laposte?fref=ts', 0, '2013-10-09 09:16:55', '2013-10-09 09:17:07'),
(4, 'Vente privée', 1, 0, 'media/partner/4-LogoVentePrivee.jpg', 'media/partner/4-hi-256-0-f0bfcaf3f54769d49197e58a49612308f4a27e17.png', NULL, 'https://www.facebook.com/venteprivee?ref=ts&fref=ts', 0, '2013-10-09 09:17:39', '2013-10-09 09:17:39');

-- --------------------------------------------------------

--
-- Structure de la table `partner_subscriber`
--

CREATE TABLE IF NOT EXISTS `partner_subscriber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `partner_id` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B7F1588FA76ED395` (`user_id`),
  KEY `IDX_B7F1588F9393F8FE` (`partner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `reward`
--

CREATE TABLE IF NOT EXISTS `reward` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` longtext COLLATE utf8_unicode_ci,
  `category` longtext COLLATE utf8_unicode_ci,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `countLimit` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `hint` longtext COLLATE utf8_unicode_ci,
  `activity_stream_text` longtext COLLATE utf8_unicode_ci,
  `hide` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Contenu de la table `reward`
--

INSERT INTO `reward` (`id`, `type`, `category`, `title`, `image`, `active`, `points`, `countLimit`, `created_at`, `updated_at`, `hint`, `activity_stream_text`, `hide`) VALUES
(8, 'badge', 'game', 'Star bronze', NULL, 1, 10, 0, '2013-10-20 08:56:49', '2013-10-20 21:28:52', 'Win the Bronze Star', 'Has won the star badge', 0),
(9, 'badge', 'game', 'Joueur bronze', NULL, 1, 2, 0, '2013-10-20 08:58:25', '2013-10-20 09:05:45', NULL, NULL, NULL),
(10, 'badge', 'game', 'Buzzer bronze', NULL, 1, 3, 0, '2013-10-20 08:59:41', '2013-10-20 09:05:54', NULL, NULL, NULL),
(11, 'badge', 'game', 'Incollable bronze', NULL, 1, 33, 0, '2013-10-20 09:01:15', '2013-10-20 09:06:04', NULL, NULL, NULL),
(12, 'badge', 'visitor', 'Journaliste bronze', NULL, 1, 88, 0, '2013-10-20 09:04:35', '2013-10-20 09:06:14', NULL, NULL, NULL),
(13, 'badge', 'visitor', 'Démocrate bronze', NULL, 1, 11, 0, '2013-10-20 09:07:17', '2013-10-20 09:07:17', NULL, NULL, NULL),
(14, 'badge', 'visitor', 'Mailer bronze', NULL, 1, 1, 0, '2013-10-20 09:08:41', '2013-10-20 09:08:41', NULL, NULL, NULL),
(15, 'badge', 'visitor', 'Socializer bronze', NULL, 1, 33, 0, '2013-10-20 09:10:20', '2013-10-20 09:10:20', NULL, NULL, NULL),
(16, 'badge', 'visitor', 'Sponsor bronze', NULL, 1, 33, 0, '2013-10-20 09:13:11', '2013-10-20 09:13:11', NULL, NULL, NULL),
(17, 'badge', 'visitor', 'Ami du site bronze', NULL, 1, 11, 0, '2013-10-20 09:14:21', '2013-10-20 09:14:21', NULL, NULL, NULL),
(18, 'badge', 'game', 'Chanceux bronze', NULL, 1, 22, 0, '2013-10-20 09:43:05', '2013-10-20 09:43:05', NULL, NULL, NULL),
(19, 'badge', 'event', 'Lutin', NULL, 1, 11, 0, '2013-10-20 09:57:20', '2013-10-21 17:52:35', '', '', 1),
(20, 'badge', 'game', 'Chasseur de badges', NULL, 1, 112, 0, '2013-10-20 20:55:01', '2013-10-20 21:04:10', NULL, NULL, NULL),
(21, 'badge', 'game', 'Saisonnier', NULL, 1, 112, 0, '2013-10-20 21:08:37', '2013-10-20 21:08:37', NULL, NULL, NULL),
(22, 'badge', 'event', 'Lapin en chocolat', NULL, 1, 12, 0, '2013-10-20 22:57:59', '2013-10-20 22:57:59', '', '', 0),
(23, 'badge', 'event', 'Citrouille', NULL, 1, 33, 0, '2013-10-20 22:59:50', '2013-10-20 22:59:50', '', '', 0),
(24, 'badge', 'event', 'DJ', NULL, 1, 243, 0, '2013-10-20 23:01:25', '2013-10-20 23:01:25', '', '', 0),
(25, 'badge', 'event', 'Happy new yeah', NULL, 1, 0, 0, '2013-10-20 23:03:12', '2013-10-20 23:03:12', '', '', 0),
(26, 'badge', 'event', 'Cupidon', NULL, 1, 32, 0, '2013-10-20 23:04:34', '2013-10-20 23:04:34', '', '', 0),
(27, 'badge', 'event', 'King of the pie', NULL, 1, 33, 0, '2013-10-20 23:05:57', '2013-10-20 23:05:57', '', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `rewards_storymappings`
--

CREATE TABLE IF NOT EXISTS `rewards_storymappings` (
  `reward_id` int(11) NOT NULL,
  `storymapping_id` int(11) NOT NULL,
  PRIMARY KEY (`reward_id`,`storymapping_id`),
  KEY `IDX_B646EE93E466ACA1` (`reward_id`),
  KEY `IDX_B646EE934E9DECA0` (`storymapping_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `rewards_storymappings`
--

INSERT INTO `rewards_storymappings` (`reward_id`, `storymapping_id`) VALUES
(9, 15),
(15, 9),
(15, 10),
(15, 21),
(15, 24),
(18, 8),
(21, 15),
(23, 13),
(23, 15),
(24, 22),
(24, 23);

-- --------------------------------------------------------

--
-- Structure de la table `reward_achievement`
--

CREATE TABLE IF NOT EXISTS `reward_achievement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `type` longtext COLLATE utf8_unicode_ci,
  `category` longtext COLLATE utf8_unicode_ci,
  `label` longtext COLLATE utf8_unicode_ci,
  `level` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level_label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_83E69223A76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `reward_leaderboard`
--

CREATE TABLE IF NOT EXISTS `reward_leaderboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `leaderboardtype_id` int(11) DEFAULT NULL,
  `total_points` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_user_leaderboard_type` (`user_id`,`leaderboardtype_id`),
  KEY `IDX_DBBBF81A76ED395` (`user_id`),
  KEY `IDX_DBBBF817D6B3850` (`leaderboardtype_id`),
  KEY `idx_total_points` (`total_points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `reward_leaderboard_type`
--

CREATE TABLE IF NOT EXISTS `reward_leaderboard_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Contenu de la table `reward_leaderboard_type`
--

INSERT INTO `reward_leaderboard_type` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'all', '2013-10-02 17:34:28', '2013-10-02 17:34:28'),
(2, 'game', '2013-10-02 17:34:28', '2013-10-02 17:34:28'),
(3, 'sponsorship', '2013-10-02 17:34:28', '2013-10-02 17:34:28'),
(4, 'share', '2013-10-02 17:34:28', '2013-10-02 17:34:28');

-- --------------------------------------------------------

--
-- Structure de la table `reward_rule`
--

CREATE TABLE IF NOT EXISTS `reward_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reward_id` int(11) DEFAULT NULL,
  `completion_type` longtext COLLATE utf8_unicode_ci,
  `count_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_47C93C57E466ACA1` (`reward_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=30 ;

--
-- Contenu de la table `reward_rule`
--

INSERT INTO `reward_rule` (`id`, `reward_id`, `completion_type`, `count_type`, `count`, `created_at`, `updated_at`) VALUES
(8, 8, 'all', 'equals', 10, '2013-10-20 08:57:26', '2013-10-20 21:31:31'),
(9, 9, 'all', 'equals', 10, '2013-10-20 08:58:50', '2013-10-20 08:58:50'),
(10, 10, 'all', 'equals', 10, '2013-10-20 09:00:15', '2013-10-23 13:10:14'),
(11, 11, 'all', 'more_than', 1, '2013-10-20 09:02:40', '2013-10-20 09:02:40'),
(12, 12, 'all', 'equals', 1, '2013-10-20 09:05:02', '2013-10-20 09:05:02'),
(13, 13, 'all', 'equals', 5, '2013-10-20 09:07:51', '2013-10-20 21:06:38'),
(14, 14, 'all', 'equals', 10, '2013-10-20 09:09:14', '2013-10-20 09:09:14'),
(15, 15, 'any', 'equals', 10, '2013-10-20 09:11:02', '2013-10-20 13:25:48'),
(18, 16, 'all', 'equals', 1, '2013-10-20 09:13:39', '2013-10-20 09:13:39'),
(19, 17, 'all', 'equals', 1, '2013-10-20 09:14:45', '2013-10-20 09:14:45'),
(20, 18, 'all', 'equals', 1, '2013-10-20 09:43:54', '2013-10-20 09:43:54'),
(21, 19, 'all', 'equals', 1, '2013-10-20 09:58:12', '2013-10-20 22:55:45'),
(22, 20, 'all', 'equals', 3, '2013-10-20 20:55:45', '2013-10-23 13:17:21'),
(23, 21, 'all', 'equals', 2, '2013-10-20 21:09:17', '2013-10-20 21:09:17'),
(24, 22, 'all', 'equals', 1, '2013-10-20 22:58:49', '2013-10-20 22:58:49'),
(25, 23, 'all', 'equals', 1, '2013-10-20 23:00:48', '2013-10-20 23:00:48'),
(26, 24, 'all', 'equals', 1, '2013-10-20 23:02:08', '2013-10-20 23:02:08'),
(27, 25, 'all', 'equals', 1, '2013-10-20 23:03:55', '2013-10-20 23:03:55'),
(28, 26, 'all', 'equals', 1, '2013-10-20 23:05:10', '2013-10-20 23:05:10'),
(29, 27, 'all', 'equals', 1, '2013-10-20 23:06:37', '2013-10-20 23:06:37');

-- --------------------------------------------------------

--
-- Structure de la table `reward_rule_condition`
--

CREATE TABLE IF NOT EXISTS `reward_rule_condition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_id` int(11) DEFAULT NULL,
  `object` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comparison` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_87C29042744E0351` (`rule_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Contenu de la table `reward_rule_condition`
--

INSERT INTO `reward_rule_condition` (`id`, `rule_id`, `object`, `attribute`, `comparison`, `value`, `created_at`, `updated_at`, `type`) VALUES
(8, 11, '2013-10-20 09:02:40', '2013-10-20 09:02:40', 'reply', 'totalCorrectAnswers', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(9, 20, '2013-10-20 09:43:54', '2013-10-20 09:43:54', 'entry', 'winner', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(10, 21, '2013-10-20 09:58:12', '2013-10-20 22:38:28', 'game', 'createdAt', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'datetime'),
(11, 23, '2013-10-20 21:09:17', '2013-10-20 21:09:17', 'reward', 'category', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(12, 24, '2013-10-20 22:58:49', '2013-10-20 22:58:49', 'game', 'createdAt', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'datetime'),
(13, 25, '2013-10-20 23:00:48', '2013-10-20 23:00:48', 'game', 'createdAt', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'datetime'),
(14, 26, '2013-10-20 23:02:08', '2013-10-20 23:02:08', 'game', 'createdAt', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'datetime'),
(15, 27, '2013-10-20 23:03:55', '2013-10-20 23:03:55', 'game', 'createAt', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'datetime'),
(16, 28, '2013-10-20 23:05:10', '2013-10-20 23:05:10', 'game', 'createdAt', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'datetime'),
(17, 29, '2013-10-20 23:06:37', '2013-10-20 23:06:37', 'game', 'createdAt', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'datetime'),
(19, 10, '2013-10-23 13:10:14', '2013-10-23 13:10:14', 'game', 'classType', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'string'),
(20, 22, '2013-10-23 13:17:21', '2013-10-23 13:17:21', 'reward', 'category', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'string');

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `roleId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_57698A6AB8C2FD88` (`roleId`),
  KEY `IDX_57698A6A727ACA70` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `role`
--

INSERT INTO `role` (`id`, `parent_id`, `roleId`) VALUES
(1, NULL, 'user'),
(2, 1, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `state` int(11) DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` int(11) DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `optin` tinyint(1) DEFAULT NULL,
  `optin_partner` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `registration_source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`),
  KEY `idx_state` (`state`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`user_id`, `username`, `email`, `display_name`, `password`, `state`, `firstname`, `lastname`, `title`, `gender`, `dob`, `avatar`, `telephone`, `mobile`, `address`, `address2`, `postal_code`, `city`, `country`, `optin`, `optin_partner`, `created_at`, `updated_at`, `registration_source`) VALUES
(1, 'admin', 'admin@test.com', NULL, '$2a$14$pHU8LP6ioBASjGwgesdLqeOzYT4eYYOZ6Ajg7aiPuzheZxUrIXeea', 1, 'Aurélie', 'Bénard', NULL, NULL, NULL, NULL, NULL, NULL, '10 rue Marcellin Berthelot', '', 93700, 'Drancy', 'FR', 0, 0, '2013-10-02 17:34:28', '2013-10-08 15:35:54', NULL),
(2, 'Thomas R', 'thomas.roger@adfab.fr', NULL, '$2a$14$aI6iynYXYWe2NzNWxkPiC.ex0dOI2RdpSIFjNBwJSEILM4L/jfsxu', 1, 'Thomas', 'ROGER', 'M', NULL, '1987-04-07', NULL, NULL, NULL, NULL, NULL, 91000, NULL, NULL, 0, 0, '2013-10-07 10:18:54', '2013-10-07 10:18:54', NULL),
(3, 'Greg B', 'gregory.besson@adfab.fr', NULL, '$2a$14$3e6S97IcYiDqKMfAB2B3Ne13WBrOln8srXtEc9nz.QNgViDBi91DO', 1, 'greg', 'besson', 'M', NULL, '1970-10-08', 'media/user/joe.jpeg', NULL, NULL, NULL, '', 55555, NULL, NULL, 0, 0, '2013-10-07 13:00:41', '2013-10-07 13:10:09', NULL),
(4, 'Thomas R', 'thomaroger2@gmail.fr', NULL, '$2a$14$KoQAWun78W2l.zQpcGm6ae83hkE.QBQVhE.0S01kl7flb319zYwjC', 1, 'Thomas', 'ROGER', 'M', NULL, '1987-04-07', NULL, NULL, NULL, NULL, NULL, 91000, NULL, NULL, 0, 0, '2013-10-08 14:58:37', '2013-10-08 14:58:37', NULL),
(5, 'Greg B', 'bessong@gmail.com', NULL, '$2a$14$ExkIB5zyJE0RvdRDokUhneAKjSIbrLzk6xjJYe.8yc6UnMGovd48.', 1, 'greg', 'besson', 'M', NULL, '1970-10-08', 'media/user/sheetah.jpg', NULL, NULL, 'rue de paris', '', 55555, 'paris', 'FR', 1, 1, '2013-10-14 08:18:03', '2013-10-23 11:07:04', NULL),
(6, 'Jeremy L', 'jeremy.lebrun@adfab.fr', NULL, '$2a$14$wbv5mdGD/2Tv3tWEDGWsbOueXMUvT1nm55iftFtUFnJmIi.t0ClEe', 1, 'Jeremy', 'Lebrun', 'M', NULL, '1988-01-01', NULL, NULL, NULL, NULL, NULL, 75000, NULL, NULL, 1, 0, '2013-10-14 10:50:05', '2013-10-14 11:14:25', NULL),
(7, 'Benoit D', 'benoit.durand3@gmail.com', NULL, '$2a$14$VvbrmDA0Vt3wykbEPZO8e.SCHCGS3wiuUkMlBFUs2yK.yg.hDUoIW', 1, 'benoit', 'durand', 'M', NULL, '1993-03-10', NULL, NULL, NULL, NULL, NULL, 93700, NULL, NULL, 0, 0, '2013-10-15 08:36:01', '2013-10-15 08:36:01', NULL),
(8, 'Emmanuel G', 'emmanuel.gonzalez@adfab.fr', NULL, '$2a$14$5LAj3oVw8G7w2BuFwdCdsuBDdD.teU3vVIPOFG0zuuMh2D/g859r2', 1, 'emmanuel', 'gonzalez', 'M', NULL, '0027-04-14', NULL, NULL, NULL, NULL, NULL, 75012, NULL, NULL, 0, 0, '2013-10-15 10:53:00', '2013-10-15 10:53:00', NULL),
(9, 'Melodie T', 'melodie.tran@adfab.fr', NULL, '$2a$14$rcIIiqRj/vAyG9CivNKMAerSwQd9T2a.a6YZtKmE739inMQlFXWN.', 1, 'melodie', 'tran', 'Me', NULL, '1989-10-05', NULL, NULL, NULL, NULL, '', 77600, NULL, NULL, 1, 0, '2013-10-15 16:00:35', '2013-10-18 15:11:41', NULL),
(10, 'Guillaume D', 'guillaume.deplanque@adfab.fr', NULL, '$2a$14$Wi3WrC7iD3Vyf8kA5kuq1OCXiO0z7cCJmL.TWkFkDDpbZ7KEN9gp2', 1, 'Guillaume', 'DEPLANQUE', 'M', NULL, '1992-05-03', NULL, NULL, NULL, NULL, NULL, 77310, NULL, NULL, 0, 0, '2013-10-15 16:10:28', '2013-10-15 16:10:28', NULL),
(11, 'Olivier P', 'olivier.pompilius@adfab.fr', NULL, '$2a$14$OikGt5NAB/VbAFoiarZv4OHqzL2JVLcPggMyFEwyNxK6GF1VQ9YSa', 1, 'Olivier', 'Pompilius', 'M', NULL, '1970-01-01', NULL, NULL, NULL, NULL, NULL, 75000, NULL, NULL, 0, 0, '2013-10-15 17:37:51', '2013-10-15 17:37:51', NULL),
(12, 'Coralie Noulette', 'coralie.noulette@adfab.fr', NULL, '$2a$14$2ckH37bDrk7d4iGON.PKcebkd6HViRdhzn6Bo/tw3sneQKwc6kI4u', 1, 'Coralie', 'NOULETTE', 'Me', NULL, '1984-04-08', 'media/user/shura_kirigakure_by_virgounce-d3ldu3w.png', NULL, NULL, '1 rue grande', '', 77000, 'MELUN', 'FR', 0, 0, '2013-10-17 10:42:16', '2013-10-17 11:09:15', NULL),
(13, 'Virac P', 'virac.phim@adfab.fr', NULL, '$2a$14$y0/q/hCZrtSlwZV2KFo38OaxILNVctXQRfPIgwriBsn8zJc5gm9iG', 1, 'Virac', 'PHIM', 'M', NULL, '1987-06-17', NULL, '0612345789', NULL, 'Rue de la rue', '', 93160, 'NLG', 'FR', 1, 1, '2013-10-18 15:06:20', '2013-10-18 16:15:26', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user_password_reset`
--

CREATE TABLE IF NOT EXISTS `user_password_reset` (
  `request_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `request_time` datetime NOT NULL,
  PRIMARY KEY (`request_key`),
  UNIQUE KEY `UNIQ_DA84AD0BA76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_provider`
--

CREATE TABLE IF NOT EXISTS `user_provider` (
  `provider_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`provider_id`),
  UNIQUE KEY `UNIQ_7249979CA76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_role`
--

CREATE TABLE IF NOT EXISTS `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `IDX_2DE8C6A3A76ED395` (`user_id`),
  KEY `IDX_2DE8C6A3D60322AC` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(1, 2),
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
(13, 1);

-- --------------------------------------------------------

--
-- Structure de la table `user_signup_email_verification`
--

CREATE TABLE IF NOT EXISTS `user_signup_email_verification` (
  `request_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `request_time` datetime NOT NULL,
  PRIMARY KEY (`request_key`),
  UNIQUE KEY `UNIQ_EF4B92EAB08E074E` (`email_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `facebook_page_app`
--
ALTER TABLE `facebook_page_app`
  ADD CONSTRAINT `FK_C270EBF67987212D` FOREIGN KEY (`app_id`) REFERENCES `facebook_app` (`id`),
  ADD CONSTRAINT `FK_C270EBF6C4663E4` FOREIGN KEY (`page_id`) REFERENCES `facebook_page` (`id`);

--
-- Contraintes pour la table `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `FK_232B318C9393F8FE` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`);

--
-- Contraintes pour la table `game_entry`
--
ALTER TABLE `game_entry`
  ADD CONSTRAINT `FK_1912E4FFA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FK_1912E4FFE48FD905` FOREIGN KEY (`game_id`) REFERENCES `game` (`id`);

--
-- Contraintes pour la table `game_instantwin`
--
ALTER TABLE `game_instantwin`
  ADD CONSTRAINT `FK_C0817820BF396750` FOREIGN KEY (`id`) REFERENCES `game` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `game_instantwin_occurrence`
--
ALTER TABLE `game_instantwin_occurrence`
  ADD CONSTRAINT `FK_B53C680B89B15F33` FOREIGN KEY (`instantwin_id`) REFERENCES `game_instantwin` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B53C680BA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FK_B53C680BBA364942` FOREIGN KEY (`entry_id`) REFERENCES `game_entry` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B53C680BBBE43214` FOREIGN KEY (`prize_id`) REFERENCES `game_prize` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `game_lottery`
--
ALTER TABLE `game_lottery`
  ADD CONSTRAINT `FK_2FD991ACBF396750` FOREIGN KEY (`id`) REFERENCES `game` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `game_postvote`
--
ALTER TABLE `game_postvote`
  ADD CONSTRAINT `FK_E578EECBBF396750` FOREIGN KEY (`id`) REFERENCES `game` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `game_postvote_form`
--
ALTER TABLE `game_postvote_form`
  ADD CONSTRAINT `FK_DE235CD4BBCDD91A` FOREIGN KEY (`postvote_id`) REFERENCES `game_postvote` (`id`);

--
-- Contraintes pour la table `game_postvote_post`
--
ALTER TABLE `game_postvote_post`
  ADD CONSTRAINT `FK_D621CD16A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FK_D621CD16BA364942` FOREIGN KEY (`entry_id`) REFERENCES `game_entry` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D621CD16BBCDD91A` FOREIGN KEY (`postvote_id`) REFERENCES `game_postvote` (`id`);

--
-- Contraintes pour la table `game_postvote_post_element`
--
ALTER TABLE `game_postvote_post_element`
  ADD CONSTRAINT `FK_E85325C94B89032C` FOREIGN KEY (`post_id`) REFERENCES `game_postvote_post` (`id`);

--
-- Contraintes pour la table `game_postvote_vote`
--
ALTER TABLE `game_postvote_vote`
  ADD CONSTRAINT `FK_D6BB24FF4B89032C` FOREIGN KEY (`post_id`) REFERENCES `game_postvote_post` (`id`);

--
-- Contraintes pour la table `game_prize`
--
ALTER TABLE `game_prize`
  ADD CONSTRAINT `FK_63FBF24EDD7B12D8` FOREIGN KEY (`prize_category_id`) REFERENCES `game_prize_category` (`id`),
  ADD CONSTRAINT `FK_63FBF24EE48FD905` FOREIGN KEY (`game_id`) REFERENCES `game` (`id`);

--
-- Contraintes pour la table `game_prize_category_user`
--
ALTER TABLE `game_prize_category_user`
  ADD CONSTRAINT `FK_A59118AAA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FK_A59118AADD7B12D8` FOREIGN KEY (`prize_category_id`) REFERENCES `game_prize_category` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `game_quiz`
--
ALTER TABLE `game_quiz`
  ADD CONSTRAINT `FK_4F0796BEBF396750` FOREIGN KEY (`id`) REFERENCES `game` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `game_quiz_answer`
--
ALTER TABLE `game_quiz_answer`
  ADD CONSTRAINT `FK_E9CCF87E1E27F6BF` FOREIGN KEY (`question_id`) REFERENCES `game_quiz_question` (`id`);

--
-- Contraintes pour la table `game_quiz_question`
--
ALTER TABLE `game_quiz_question`
  ADD CONSTRAINT `FK_CAD72C60853CD175` FOREIGN KEY (`quiz_id`) REFERENCES `game_quiz` (`id`);

--
-- Contraintes pour la table `game_quiz_reply`
--
ALTER TABLE `game_quiz_reply`
  ADD CONSTRAINT `FK_EF07788DBA364942` FOREIGN KEY (`entry_id`) REFERENCES `game_entry` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `game_quiz_reply_answer`
--
ALTER TABLE `game_quiz_reply_answer`
  ADD CONSTRAINT `FK_116224468A0E4E7F` FOREIGN KEY (`reply_id`) REFERENCES `game_quiz_reply` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `game_treasurehunt`
--
ALTER TABLE `game_treasurehunt`
  ADD CONSTRAINT `FK_E3D84238BF396750` FOREIGN KEY (`id`) REFERENCES `game` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `game_treasurehunt_step`
--
ALTER TABLE `game_treasurehunt_step`
  ADD CONSTRAINT `FK_4819297179CEC17D` FOREIGN KEY (`treasurehunt_id`) REFERENCES `game_treasurehunt` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `leader_board`
--
ALTER TABLE `leader_board`
  ADD CONSTRAINT `FK_C8F46BDFA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FK_C8F46BDFE48FD905` FOREIGN KEY (`game_id`) REFERENCES `game` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `opengraphapplication_opengraphdomain`
--
ALTER TABLE `opengraphapplication_opengraphdomain`
  ADD CONSTRAINT `FK_EE48FC32947B7ED1` FOREIGN KEY (`opengraphapplication_id`) REFERENCES `opengraph_application` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_EE48FC32B545A07C` FOREIGN KEY (`opengraphdomain_id`) REFERENCES `opengraph_domain` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `opengraph_application_domain`
--
ALTER TABLE `opengraph_application_domain`
  ADD CONSTRAINT `FK_F81B75C3947B7ED1` FOREIGN KEY (`opengraphapplication_id`) REFERENCES `opengraph_application` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_F81B75C3B545A07C` FOREIGN KEY (`opengraphdomain_id`) REFERENCES `opengraph_domain` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `opengraph_object`
--
ALTER TABLE `opengraph_object`
  ADD CONSTRAINT `FK_5AD9A6DF727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `opengraph_object` (`id`);

--
-- Contraintes pour la table `opengraph_object_attribute`
--
ALTER TABLE `opengraph_object_attribute`
  ADD CONSTRAINT `FK_10B5BA8A232D562B` FOREIGN KEY (`object_id`) REFERENCES `opengraph_object` (`id`);

--
-- Contraintes pour la table `opengraph_object_attribute_mapping`
--
ALTER TABLE `opengraph_object_attribute_mapping`
  ADD CONSTRAINT `FK_51B7514FB6E62EFA` FOREIGN KEY (`attribute_id`) REFERENCES `opengraph_object_attribute` (`id`),
  ADD CONSTRAINT `FK_51B7514FBBC5EA86` FOREIGN KEY (`objectMapping_id`) REFERENCES `opengraph_object_mapping` (`id`);

--
-- Contraintes pour la table `opengraph_object_mapping`
--
ALTER TABLE `opengraph_object_mapping`
  ADD CONSTRAINT `FK_817AD59E1C0EF70` FOREIGN KEY (`storyMapping_id`) REFERENCES `opengraph_story_mapping` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_817AD59E232D562B` FOREIGN KEY (`object_id`) REFERENCES `opengraph_object` (`id`);

--
-- Contraintes pour la table `opengraph_story`
--
ALTER TABLE `opengraph_story`
  ADD CONSTRAINT `FK_FD5B796B9D32F035` FOREIGN KEY (`action_id`) REFERENCES `opengraph_action` (`id`);

--
-- Contraintes pour la table `opengraph_story_mapping`
--
ALTER TABLE `opengraph_story_mapping`
  ADD CONSTRAINT `FK_1F32883A115F0EE5` FOREIGN KEY (`domain_id`) REFERENCES `opengraph_domain` (`id`),
  ADD CONSTRAINT `FK_1F32883AAA5D4036` FOREIGN KEY (`story_id`) REFERENCES `opengraph_story` (`id`);

--
-- Contraintes pour la table `opengraph_story_object`
--
ALTER TABLE `opengraph_story_object`
  ADD CONSTRAINT `FK_CFCD38D9232D562B` FOREIGN KEY (`object_id`) REFERENCES `opengraph_object` (`id`),
  ADD CONSTRAINT `FK_CFCD38D9AA5D4036` FOREIGN KEY (`story_id`) REFERENCES `opengraph_story` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `opengraph_story_telling`
--
ALTER TABLE `opengraph_story_telling`
  ADD CONSTRAINT `FK_C93A81957430E6AA` FOREIGN KEY (`opengraph_story_mapping_id`) REFERENCES `opengraph_story_mapping` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C93A8195A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `partner_subscriber`
--
ALTER TABLE `partner_subscriber`
  ADD CONSTRAINT `FK_B7F1588F9393F8FE` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`),
  ADD CONSTRAINT `FK_B7F1588FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Contraintes pour la table `rewards_storymappings`
--
ALTER TABLE `rewards_storymappings`
  ADD CONSTRAINT `FK_B646EE934E9DECA0` FOREIGN KEY (`storymapping_id`) REFERENCES `opengraph_story_mapping` (`id`),
  ADD CONSTRAINT `FK_B646EE93E466ACA1` FOREIGN KEY (`reward_id`) REFERENCES `reward_rule` (`id`);

--
-- Contraintes pour la table `reward_achievement`
--
ALTER TABLE `reward_achievement`
  ADD CONSTRAINT `FK_83E69223A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Contraintes pour la table `reward_action_leaderboard_type`
--
ALTER TABLE `reward_action_leaderboard_type`
  ADD CONSTRAINT `FK_2C75513A7D6B3850` FOREIGN KEY (`leaderboardtype_id`) REFERENCES `reward_leaderboard_type` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2C75513A9D32F035` FOREIGN KEY (`action_id`) REFERENCES `reward_action` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `reward_event`
--
ALTER TABLE `reward_event`
  ADD CONSTRAINT `FK_5C7251FB9D32F035` FOREIGN KEY (`action_id`) REFERENCES `reward_action` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_5C7251FBA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `reward_leaderboard`
--
ALTER TABLE `reward_leaderboard`
  ADD CONSTRAINT `FK_DBBBF817D6B3850` FOREIGN KEY (`leaderboardtype_id`) REFERENCES `reward_leaderboard_type` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DBBBF81A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `reward_rule`
--
ALTER TABLE `reward_rule`
  ADD CONSTRAINT `FK_47C93C57E466ACA1` FOREIGN KEY (`reward_id`) REFERENCES `reward` (`id`);

--
-- Contraintes pour la table `reward_rule_condition`
--
ALTER TABLE `reward_rule_condition`
  ADD CONSTRAINT `FK_87C29042744E0351` FOREIGN KEY (`rule_id`) REFERENCES `reward_rule` (`id`);

--
-- Contraintes pour la table `role`
--
ALTER TABLE `role`
  ADD CONSTRAINT `FK_57698A6A727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `role` (`id`);

--
-- Contraintes pour la table `user_provider`
--
ALTER TABLE `user_provider`
  ADD CONSTRAINT `FK_7249979CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FK_2DE8C6A3A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2DE8C6A3D60322AC` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
