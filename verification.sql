-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 19, 2022 at 12:48 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `verification`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add police station model', 7, 'add_policestationmodel'),
(26, 'Can change police station model', 7, 'change_policestationmodel'),
(27, 'Can delete police station model', 7, 'delete_policestationmodel'),
(28, 'Can view police station model', 7, 'view_policestationmodel'),
(29, 'Can add police officer model', 8, 'add_policeofficermodel'),
(30, 'Can change police officer model', 8, 'change_policeofficermodel'),
(31, 'Can delete police officer model', 8, 'delete_policeofficermodel'),
(32, 'Can view police officer model', 8, 'view_policeofficermodel'),
(33, 'Can add crime model', 9, 'add_crimemodel'),
(34, 'Can change crime model', 9, 'change_crimemodel'),
(35, 'Can delete crime model', 9, 'delete_crimemodel'),
(36, 'Can view crime model', 9, 'view_crimemodel'),
(37, 'Can add criminal model', 10, 'add_criminalmodel'),
(38, 'Can change criminal model', 10, 'change_criminalmodel'),
(39, 'Can delete criminal model', 10, 'delete_criminalmodel'),
(40, 'Can view criminal model', 10, 'view_criminalmodel');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crime_details`
--

DROP TABLE IF EXISTS `crime_details`;
CREATE TABLE IF NOT EXISTS `crime_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `crime_aadhar` varchar(100) DEFAULT NULL,
  `crime_type` varchar(100) DEFAULT NULL,
  `crime_desc` varchar(100) DEFAULT NULL,
  `crime_added_date` date DEFAULT NULL,
  `aadhar_blk` varchar(100) DEFAULT NULL,
  `date_blk` varchar(100) DEFAULT NULL,
  `desc_blk` varchar(100) DEFAULT NULL,
  `type_blk` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crime_details`
--

INSERT INTO `crime_details` (`id`, `crime_aadhar`, `crime_type`, `crime_desc`, `crime_added_date`, `aadhar_blk`, `date_blk`, `desc_blk`, `type_blk`) VALUES
(5, '964204151', 'Assault', 'physically assaulted a pedestrian', '2022-10-10', 'dcc61800a3c540e928ec2445c8d93470ae300454b1c3bc951241421dcbed685e', 'e44ecf6749f9b6210239f400dfe86e9bca67495a890463d60ca478750259f414', '64011c53c478cbcb05c63975767b1be510d2079c41e2b1122c135d46e893591a', 'a00fb47cd72259425b7cc4596af6fc5c2e4aa151c1b164fc3583a41d4001c8fe'),
(16, '987789987788', 'Tax Evassion', 'tax evassion was done by him  for 2 years\r\n', '2022-10-12', 'cc4ab49124d0ce9d446edb5172fe402bea6ebd944c07528f80b91646bbd9dd89', 'fc346392d27fbca476387d7ab3e05118a5952075c92c064eaaccf4218097f813', '0cf8e81564cbc9198f6895888a858df33dcddb906a6006959d04d64282700673', '17ee410edc1a819d8eb3a7b4d30f07acccd318df1bef251a1227aa68cbb23fc6'),
(15, '9898989898989', 'Assault', 'street brawl', '2022-10-11', '3f87aa2b709d6d9edfe7bb91866f4870f9f7d476388feab923c9fcb61857ba5f', 'fbfe1980426b58ce8ab4f035d899abf45ce4c940986719cadc5daeded195603b', '2a6169fab42fb38d789e825979ae18be0049995dadaf75565f4cde207e285f35', 'aca1955193b540ef6149e602af555648d3696cca7c1841ab29272a087e0ab0b1'),
(27, '123456789123', 'Drug Peddling', 'running a drug racket', '2022-12-17', '62477f05a9bb8c424272dad7f7c2cb462b3e957b2207717ea82dcb3f308de42a', 'c6c98f7be428ee53b006e4cecbc7d1d82f56a57ef8b29e743ae94750268d0a59', '0d994b3eb2ee3fdbe45db249a888a0d306bef1157fa77451b7e94e789c93e621', '4e7ba761ad958c78cca725eb34d90a7b07fb5417e05caada7a3384149482f480'),
(28, '951357789321', 'Grand Theft Auto', 'stole a bmw car', '2022-12-17', '4c229e0b7ad2784b97df4c45a41618dca117a55d741c479e6f0dd1beac64c90b', 'a3edffdaf3f9b3f980fefe7452644e2ff7f5678e3141f44a8f6bc675acf9672a', 'a068cdcf16aa4b30bf5218d2ea89d49f498033266e43c7c6d1ca71323b2eaea9', '1308bfe9da509a56721a30767a4719622af7a94476f447a126a9e9694aa36e64'),
(29, '537519528564', 'Assault', 'street brawl and physical assault', '2022-12-17', '680f520e732fa094f4aaf6498f4ae42e250e1fe06299a9b200220ba7e2ac292c', 'ba442bd2a8b795c87256ea9398aa1092e2463f742bfbb7dd37c90c3989374a18', 'e3d00dd840d21b29a9659b1f7bad6017998388ec1c5a177368d101a4402431b1', '774bdbb763e4291b29c7924f07aa7f74a8ae85f593f07f25e9788e19769c5441'),
(31, '629874122255', 'Tax Evassion', 'not paying the income tax', '2022-12-17', '049437c87383236b21110a8617fc0bf2b541c3017c7f9f2a82fb43e067ab279d', '7d46602c8fe0ed00c9e784e6f224551e080acf64a8ee049bfa1ad9093a057568', 'b8047d208c43a1251e05513f81f1cd772d82a6bc986a5eb106b52897634f491b', '05b3f28f490939a4c17392afe139445961bc9239681a7155122557963ae5af9c'),
(32, '9898989898989', 'Grand Theft Auto', 'stole a bike', '2022-12-19', '3f87aa2b709d6d9edfe7bb91866f4870f9f7d476388feab923c9fcb61857ba5f', 'adfc035f4d81c8ab130dae0bcc68efc3060d516d00b14ce996b007e50b8560f0', '469ebcd70f78f5eb64273ba4066c0d45d5a0bfdcedd0e111775d9265d46a4e32', 'b0e458221f7c3464c84dccb3bf9dd7caacbe6ebaa4029aa12b749978781a6e32');

-- --------------------------------------------------------

--
-- Table structure for table `criminals_details`
--

DROP TABLE IF EXISTS `criminals_details`;
CREATE TABLE IF NOT EXISTS `criminals_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `criminal_aadhar` varchar(100) DEFAULT NULL,
  `criminal_name` varchar(100) DEFAULT NULL,
  `criminal_email` varchar(100) DEFAULT NULL,
  `criminal_contact` varchar(100) DEFAULT NULL,
  `criminal_city` varchar(100) DEFAULT NULL,
  `criminal_profile` varchar(100) DEFAULT NULL,
  `criminal_crime_date` date DEFAULT NULL,
  `aadhar_block` varchar(100) DEFAULT NULL,
  `city_block` varchar(100) DEFAULT NULL,
  `contact_block` varchar(100) DEFAULT NULL,
  `date_block` varchar(100) DEFAULT NULL,
  `email_block` varchar(100) DEFAULT NULL,
  `name_block` varchar(100) DEFAULT NULL,
  `profile_block` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `criminals_details`
--

INSERT INTO `criminals_details` (`id`, `criminal_aadhar`, `criminal_name`, `criminal_email`, `criminal_contact`, `criminal_city`, `criminal_profile`, `criminal_crime_date`, `aadhar_block`, `city_block`, `contact_block`, `date_block`, `email_block`, `name_block`, `profile_block`) VALUES
(5, '9898989898989', 'jim doe', 'doe@gmail.com', '8989898989', 'hyderabad', 'images/face9_9bHlxnm.jpg', '2022-10-12', '3f87aa2b709d6d9edfe7bb91866f4870f9f7d476388feab923c9fcb61857ba5f', '2e0f0f7489484025a811b6311ae848a72315a462ff6f3922376bd6667590eb1e', '4dab464159e884c371142e2e229c2f837382bafa67e20386d3aef3ffed2e9b3a', 'd99e91336b5148b0aeb921bb1f22b0e1411adfa0a905b52d818cb25b40b61922', '4042089a627378d2d26b6c3ebc555782ced547afa92dcdd545397c2a1e45923a', '1db401749acdfe8e3f86008feb9ad1b1dcbfa32862a7fbac10f68f11efa1d9c8', '86a0f9f5296e78f14b83984a94a10dfb58785b77c981fc7d02d798ea5d8cc5e3'),
(19, '951357789321', 'john doe', 'doe@gmail.com', '4863214789', 'pune', 'images/team-3.jpg', '2022-12-17', '4c229e0b7ad2784b97df4c45a41618dca117a55d741c479e6f0dd1beac64c90b', '7349131aed46c7a323f844b5d1f5eafe92eabcac29b7547bf4c26b49fb9736e1', 'efc1e7dc75feb328d0b8eb962e02db4f08ec8a0b88e5d427b30909c6fdb9aa3e', 'cb03f2a75e781e834cace8303f027ed90974a8d9f1abcf7e49e26bf3c7f8e524', '812bebdb64d652c54c239bf7269c6b1d332746c4ed4b8042c7107d38ebece784', 'a9cfe0155f9ef9b556ea61d305b23ab934577911f159c417df4ab8a92679a4a1', '7c75b17dc78061555afa5108592a1006234b09c78cc08db8904bf7b4924159af'),
(20, '537519528564', 'Jim helpert', 'helpert@gmail.com', '8642398452', 'bangalore', 'images/testimonial-2.jpg', '2022-12-17', '680f520e732fa094f4aaf6498f4ae42e250e1fe06299a9b200220ba7e2ac292c', '2419dbd1ec71e32b8aaf46e704f075a35ac90fe0c123347ded7cf0e352ae50fa', '620741016f17c4e4dfb4f90a59eb5c60b8afe6630cbb48f0eb737b3ce325394e', 'd124ab5103d5aadaf7714f862a5286d83926e2f9136a885de5fce0f23cfa9fb6', 'c5818fe4b30d9c519282ff38901de6515601cabb4a8f47bcc29fc443755509d5', 'aa4528c85fa378ef0a26f7d2c3aa3dd0e4f819f55086703fd3b42a0fd3db5718', '1bc84024f6ba3dbf4f7aca2251b9c56bf011ac483269c945adf7257b5ddbf5d9'),
(18, '123456789123', 'mbappe', 'mbappe@gmail.com', '7418529638', 'Hyderabad', 'images/firefox_7EBSrkR.png', '2022-12-17', '62477f05a9bb8c424272dad7f7c2cb462b3e957b2207717ea82dcb3f308de42a', '0376e7d19c4a120089a5e449a8c45794e5a7510e4c821d0afc3ce2ecb4605000', '4d9e59d71f9335bf3c6007326c0607c1278d2c5572c3e31d95412cb1f65f1dbf', 'cd3bc7861d1c2857dc56a0a071588b4013f0161e5cca8b8c059ee1252ee86abd', 'd32732db10830ccd09d23ecb7de45db21453a194994c14befcf175df97e361cc', '10dece8d27e14fb8cc614be7c75ddd34106edf3e5e252b8f9bb2c8396250b502', 'f35fd66f79ad5f372b2ca35495acc9e981b83ec39d0af026e0a2ff6be8ed84f9'),
(21, '629874122255', 'chandler bing', 'bing@gmail.com', '7774455666', 'Gulbarga', 'images/team-4.jpg', '2022-12-17', '049437c87383236b21110a8617fc0bf2b541c3017c7f9f2a82fb43e067ab279d', '0c3753dba40265c8b4ac427956986e89dc80d799d10f22e8896a7302fef4c580', 'bc2e96dc1ffaac8f5b0ba95a1272403cfe97e50d3218185c572478f45086cc9d', '06e846dd3c8fcbae6a32d4944dc6a479490beb9d7fec0d4db3a94bed8f4bbc17', '757d91c03e7406870d3bdcb03427fb05bacf5fc4b7aab2b68bb771692be93799', 'ae3d86312f4393dea32a4fca3e1328a077685af49e1f9debaa46dcf28983062f', 'a29727876f60e07f7d115b342c00252f614deac72757d25eac9435bdb29a2f2a');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'adminapp', 'policestationmodel'),
(8, 'adminapp', 'policeofficermodel'),
(9, 'adminapp', 'crimemodel'),
(10, 'adminapp', 'criminalmodel');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-10-07 09:03:57.872963'),
(2, 'auth', '0001_initial', '2022-10-07 09:03:59.983838'),
(3, 'admin', '0001_initial', '2022-10-07 09:04:00.519812'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-10-07 09:04:00.558804'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-10-07 09:04:00.600804'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-10-07 09:04:00.932839'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-10-07 09:04:01.073781'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-10-07 09:04:01.171768'),
(9, 'auth', '0004_alter_user_username_opts', '2022-10-07 09:04:01.199769'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-10-07 09:04:01.306762'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-10-07 09:04:01.313762'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-10-07 09:04:01.338757'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-10-07 09:04:01.471748'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-10-07 09:04:01.572742'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-10-07 09:04:01.694736'),
(16, 'auth', '0011_update_proxy_permissions', '2022-10-07 09:04:01.717734'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-10-07 09:04:01.813729'),
(18, 'sessions', '0001_initial', '2022-10-07 09:04:01.951719'),
(19, 'adminapp', '0001_initial', '2022-10-07 09:05:08.107817'),
(20, 'adminapp', '0002_policeofficermodel', '2022-10-07 09:05:50.934294'),
(21, 'adminapp', '0003_crimemodel', '2022-10-07 09:06:22.529430'),
(22, 'adminapp', '0004_criminalmodel', '2022-10-07 09:06:45.443076'),
(23, 'adminapp', '0005_criminalmodel_aadhar_block_criminalmodel_city_block_and_more', '2022-12-16 06:25:15.495023'),
(24, 'adminapp', '0006_alter_criminalmodel_criminal_crime_date', '2022-12-16 07:18:37.276231'),
(25, 'adminapp', '0007_crimemodel_aadhar_blk_crimemodel_date_blk_and_more', '2022-12-16 07:44:35.245573');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('vwk2q5ixygvodzy1dyrgwtymn3kosxvm', 'eyJvZmZpY2VyX2lkIjoxN30:1oiXLq:j4H0cMiKALl3Zwcfmmwh-nlijerU2nhXocRs8ryKaMc', '2022-10-26 08:44:30.978712'),
('z0e57twhxncq42n2r9x9iwge6kxyxmxk', 'eyJvZmZpY2VyX2lkIjoyMn0:1otln4:HT3aFMhVTjrawSO5KStqeiD__IqIgwY0ba8yA7mUtr8', '2022-11-26 08:23:02.410904'),
('gmxloo1mw4w7x327zcu8f2kqw6nk93fp', 'eyJvZmZpY2VyX2lkIjoxN30:1oy8ma:W8MbYTaDuNpIIpY6chS84ghAW-QPdNiXaq_ZEuF9xrM', '2022-12-08 09:44:36.298212'),
('z7mrwlsag2rz42njo6ymetevow1mfhs4', 'eyJvZmZpY2VyX2lkIjo4fQ:1p7FN6:tS4GNzfPKSKs39k-HyzRtEn2pR_2UwXi-Dq4hPPhFTA', '2023-01-02 12:35:56.295372');

-- --------------------------------------------------------

--
-- Table structure for table `police_officers_details`
--

DROP TABLE IF EXISTS `police_officers_details`;
CREATE TABLE IF NOT EXISTS `police_officers_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `officer_station` varchar(100) DEFAULT NULL,
  `officer_badgeno` varchar(100) DEFAULT NULL,
  `officer_name` varchar(100) DEFAULT NULL,
  `officer_email` varchar(100) DEFAULT NULL,
  `officer_number` varchar(100) DEFAULT NULL,
  `officer_password` varchar(100) DEFAULT NULL,
  `officer_profile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `police_officers_details`
--

INSERT INTO `police_officers_details` (`id`, `officer_station`, `officer_badgeno`, `officer_name`, `officer_email`, `officer_number`, `officer_password`, `officer_profile`) VALUES
(6, 'ps thane', '984645', 'joel', 'roy@gmail.com', '8686862426', '1234\"123456789\"\"123456789\"\"123456789\"', 'images/face13.jpg'),
(12, 'Malakpet', '12121', 'Mark Selby', 'mark@gmail.com', '1234567890', 'mark', 'images/face7_muLXZEn.jpg'),
(15, 'ps abids', '4545454', 'jim', 'jim@gmail.com', '8686862424', '1234\"123456789\"\"123456789\"', 'images/face3_yBtg76k.jpg'),
(22, 'ps cyberarab', '45454545', 'shivaji', 'shivaji@gmail.com', '9898989898', '1234', 'images/face18_jYYqtfO.jpg'),
(16, 'ps jammu', '464644', 'tim', 'tim@gmail.com', '8686862424', '1234', 'images/face3_N1FhPpF.jpg'),
(8, 'ps cyberarab', '96420', 'hank shrader ', 'shrader@gmail.com', '8686862434', '1234', 'images/face24.jpg'),
(17, 'ps faridabad', '984645', 'dougles', 'dougles@gmail.com', '8686862424', '1234', 'images/face1_9JRTeh1.jpg'),
(38, 'ps abids', '4545454', 'Mohd hashwar', 'mohd.hashwar552@gmail.com', '8328035152', 'MgFrUDqQ', 'images/person_4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `police_station_details`
--

DROP TABLE IF EXISTS `police_station_details`;
CREATE TABLE IF NOT EXISTS `police_station_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `station_state` varchar(100) DEFAULT NULL,
  `station_city` varchar(100) DEFAULT NULL,
  `station_name` varchar(100) DEFAULT NULL,
  `station_locality` varchar(100) DEFAULT NULL,
  `station_areacode` varchar(10) DEFAULT NULL,
  `station_contact` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `police_station_details`
--

INSERT INTO `police_station_details` (`id`, `station_state`, `station_city`, `station_name`, `station_locality`, `station_areacode`, `station_contact`) VALUES
(1, 'Andhra', 'Hyderabad', 'ps abids', 'jagdish', '500001', '0402753125'),
(2, 'Maharashtra', 'Mumbai', 'ps thane', 'railway', '400080', '0402753124'),
(3, 'Andhra Pradesh', ' Hyderabad ', 'ps cyberarab', 'jagdish market,abids,hyderabad', '500001', '8179239991'),
(4, 'Andhra', 'Hyderabad', 'Malakpet', 'Mlkpt', '12345', '9879879870'),
(5, 'Andhra Pradesh', ' Hyderabad ', 'ps ou', 'osmania univercity', '500061', '898988989898'),
(6, 'Andhra Pradesh', ' Vijayawada ', 'ps araku', 'araku', '500061', '040278562'),
(7, 'Jammu & Kashmir', ' Jammu ', 'ps jammu', 'jammu', '122313', '9642086754'),
(8, 'Jammu & Kashmir', ' Doda ', 'pd doda', 'doda', '51515', '6262161659'),
(9, 'Bihar', ' Arwal ', 'ps arwal', 'arwal', '555000', '3939393939'),
(10, 'Haryana', ' Faridabad ', 'ps faridabad', 'faridabad', '555666', '3547896542'),
(11, 'Delhi', ' Central Delhi ', 'ps central', 'central delhi', '454545', '7878787878'),
(12, 'Gujarat', ' Anjar ', 'ps anjar', 'anjar', '500031', '9999999999');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
