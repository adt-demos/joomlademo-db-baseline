SET SESSION sql_require_primary_key = 0;
/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.4.2-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 192.168.131.174    Database: now3b9oyon
-- ------------------------------------------------------
-- Server version	11.4.2-MariaDB-deb12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `jjg9w_action_log_config`
--

DROP TABLE IF EXISTS `jjg9w_action_log_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_action_log_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `id_holder` varchar(255) DEFAULT NULL,
  `title_holder` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `text_prefix` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_action_log_config`
--

LOCK TABLES `jjg9w_action_log_config` WRITE;
/*!40000 ALTER TABLE `jjg9w_action_log_config` DISABLE KEYS */;
INSERT INTO `jjg9w_action_log_config` VALUES
(1,'article','com_content.article','id','title','#__content','PLG_ACTIONLOG_JOOMLA'),
(2,'article','com_content.form','id','title','#__content','PLG_ACTIONLOG_JOOMLA'),
(3,'banner','com_banners.banner','id','name','#__banners','PLG_ACTIONLOG_JOOMLA'),
(4,'user_note','com_users.note','id','subject','#__user_notes','PLG_ACTIONLOG_JOOMLA'),
(5,'media','com_media.file','','name','','PLG_ACTIONLOG_JOOMLA'),
(6,'category','com_categories.category','id','title','#__categories','PLG_ACTIONLOG_JOOMLA'),
(7,'menu','com_menus.menu','id','title','#__menu_types','PLG_ACTIONLOG_JOOMLA'),
(8,'menu_item','com_menus.item','id','title','#__menu','PLG_ACTIONLOG_JOOMLA'),
(9,'newsfeed','com_newsfeeds.newsfeed','id','name','#__newsfeeds','PLG_ACTIONLOG_JOOMLA'),
(10,'link','com_redirect.link','id','old_url','#__redirect_links','PLG_ACTIONLOG_JOOMLA'),
(11,'tag','com_tags.tag','id','title','#__tags','PLG_ACTIONLOG_JOOMLA'),
(12,'style','com_templates.style','id','title','#__template_styles','PLG_ACTIONLOG_JOOMLA'),
(13,'plugin','com_plugins.plugin','extension_id','name','#__extensions','PLG_ACTIONLOG_JOOMLA'),
(14,'component_config','com_config.component','extension_id','name','','PLG_ACTIONLOG_JOOMLA'),
(15,'contact','com_contact.contact','id','name','#__contact_details','PLG_ACTIONLOG_JOOMLA'),
(16,'module','com_modules.module','id','title','#__modules','PLG_ACTIONLOG_JOOMLA'),
(17,'access_level','com_users.level','id','title','#__viewlevels','PLG_ACTIONLOG_JOOMLA'),
(18,'banner_client','com_banners.client','id','name','#__banner_clients','PLG_ACTIONLOG_JOOMLA'),
(19,'application_config','com_config.application','','name','','PLG_ACTIONLOG_JOOMLA'),
(20,'task','com_scheduler.task','id','title','#__scheduler_tasks','PLG_ACTIONLOG_JOOMLA'),
(21,'field','com_fields.field','id','title','#__fields','PLG_ACTIONLOG_JOOMLA');
/*!40000 ALTER TABLE `jjg9w_action_log_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_action_logs`
--

DROP TABLE IF EXISTS `jjg9w_action_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_action_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message_language_key` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `log_date` datetime NOT NULL,
  `extension` varchar(50) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `ip_address` varchar(40) NOT NULL DEFAULT '0.0.0.0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_user_id_logdate` (`user_id`,`log_date`),
  KEY `idx_user_id_extension` (`user_id`,`extension`),
  KEY `idx_extension_item_id` (`extension`,`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_action_logs`
--

LOCK TABLES `jjg9w_action_logs` WRITE;
/*!40000 ALTER TABLE `jjg9w_action_logs` DISABLE KEYS */;
INSERT INTO `jjg9w_action_logs` VALUES
(1,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2024-06-27 14:54:19','com_users',1000,0,'COM_ACTIONLOGS_DISABLED'),
(2,'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN','{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":1000,\"title\":\"webmaster\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=1000\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\",\"table\":\"#__modules\"}','2024-06-27 15:00:53','com_checkin',1000,1000,'COM_ACTIONLOGS_DISABLED'),
(3,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TAG\",\"id\":2,\"title\":\"Millions\",\"itemlink\":\"index.php?option=com_tags&task=tag.edit&id=2\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:19','com_tags.tag',1000,2,'COM_ACTIONLOGS_DISABLED'),
(4,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TAG\",\"id\":3,\"title\":\"Worldwide\",\"itemlink\":\"index.php?option=com_tags&task=tag.edit&id=3\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:19','com_tags.tag',1000,3,'COM_ACTIONLOGS_DISABLED'),
(5,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TAG\",\"id\":4,\"title\":\"Love\",\"itemlink\":\"index.php?option=com_tags&task=tag.edit&id=4\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:19','com_tags.tag',1000,4,'COM_ACTIONLOGS_DISABLED'),
(6,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TAG\",\"id\":5,\"title\":\"Joomla 5\",\"itemlink\":\"index.php?option=com_tags&task=tag.edit&id=5\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:19','com_tags.tag',1000,5,'COM_ACTIONLOGS_DISABLED'),
(7,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_FIELD\",\"id\":1,\"title\":\"About the Author\",\"itemlink\":\"index.php?option=com_fields&task=field.edit&id=1\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:19','com_fields.field',1000,1,'COM_ACTIONLOGS_DISABLED'),
(8,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":8,\"title\":\"Blog\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=8\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:19','com_categories.category',1000,8,'COM_ACTIONLOGS_DISABLED'),
(9,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":9,\"title\":\"Help\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=9\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:19','com_categories.category',1000,9,'COM_ACTIONLOGS_DISABLED'),
(10,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":10,\"title\":\"Joomla\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=10\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:19','com_categories.category',1000,10,'COM_ACTIONLOGS_DISABLED'),
(11,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":11,\"title\":\"Typography\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=11\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:19','com_categories.category',1000,11,'COM_ACTIONLOGS_DISABLED'),
(12,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"About\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:19','com_content.article',1000,1,'COM_ACTIONLOGS_DISABLED'),
(13,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":2,\"title\":\"Working on Your Site\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:19','com_content.article',1000,2,'COM_ACTIONLOGS_DISABLED'),
(14,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":3,\"title\":\"Welcome to your blog\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=3\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:19','com_content.article',1000,3,'COM_ACTIONLOGS_DISABLED'),
(15,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":4,\"title\":\"About your home page\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=4\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:19','com_content.article',1000,4,'COM_ACTIONLOGS_DISABLED'),
(16,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":5,\"title\":\"Your Modules\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=5\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:19','com_content.article',1000,5,'COM_ACTIONLOGS_DISABLED'),
(17,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":6,\"title\":\"Your Template\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=6\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:19','com_content.article',1000,6,'COM_ACTIONLOGS_DISABLED'),
(18,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":7,\"title\":\"Millions\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=7\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:19','com_content.article',1000,7,'COM_ACTIONLOGS_DISABLED'),
(19,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":8,\"title\":\"Love\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=8\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:19','com_content.article',1000,8,'COM_ACTIONLOGS_DISABLED'),
(20,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":9,\"title\":\"Joomla\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=9\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:19','com_content.article',1000,9,'COM_ACTIONLOGS_DISABLED'),
(21,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":10,\"title\":\"New feature: Workflows\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=10\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:19','com_content.article',1000,10,'COM_ACTIONLOGS_DISABLED'),
(22,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":11,\"title\":\"Typography\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=11\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:19','com_content.article',1000,11,'COM_ACTIONLOGS_DISABLED'),
(23,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":102,\"title\":\"Blog\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=102\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_menus.item',1000,102,'COM_ACTIONLOGS_DISABLED'),
(24,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":103,\"title\":\"Help\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=103\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_menus.item',1000,103,'COM_ACTIONLOGS_DISABLED'),
(25,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":104,\"title\":\"Login\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=104\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_menus.item',1000,104,'COM_ACTIONLOGS_DISABLED'),
(26,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":105,\"title\":\"Logout\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=105\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_menus.item',1000,105,'COM_ACTIONLOGS_DISABLED'),
(27,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":106,\"title\":\"Sample Layouts\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=106\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_menus.item',1000,106,'COM_ACTIONLOGS_DISABLED'),
(28,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":107,\"title\":\"Typography\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=107\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_menus.item',1000,107,'COM_ACTIONLOGS_DISABLED'),
(29,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":108,\"title\":\"Create a Post\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=108\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_menus.item',1000,108,'COM_ACTIONLOGS_DISABLED'),
(30,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":109,\"title\":\"Working on Your Site\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=109\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_menus.item',1000,109,'COM_ACTIONLOGS_DISABLED'),
(31,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":110,\"title\":\"Site Administrator\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=110\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_menus.item',1000,110,'COM_ACTIONLOGS_DISABLED'),
(32,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":111,\"title\":\"Change Password\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=111\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_menus.item',1000,111,'COM_ACTIONLOGS_DISABLED'),
(33,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":112,\"title\":\"Log out\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=112\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_menus.item',1000,112,'COM_ACTIONLOGS_DISABLED'),
(34,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":113,\"title\":\"Login\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=113\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_menus.item',1000,113,'COM_ACTIONLOGS_DISABLED'),
(35,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":114,\"title\":\"Logout\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=114\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_menus.item',1000,114,'COM_ACTIONLOGS_DISABLED'),
(36,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":115,\"title\":\"Search\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=115\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_menus.item',1000,115,'COM_ACTIONLOGS_DISABLED'),
(37,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":116,\"title\":\"Site Settings\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=116\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_menus.item',1000,116,'COM_ACTIONLOGS_DISABLED'),
(38,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":117,\"title\":\"Template Settings\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=117\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_menus.item',1000,117,'COM_ACTIONLOGS_DISABLED'),
(39,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":118,\"title\":\"Blog\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=118\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_menus.item',1000,118,'COM_ACTIONLOGS_DISABLED'),
(40,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":119,\"title\":\"Category List\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=119\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_menus.item',1000,119,'COM_ACTIONLOGS_DISABLED'),
(41,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":120,\"title\":\"Articles\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=120\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_menus.item',1000,120,'COM_ACTIONLOGS_DISABLED'),
(42,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":121,\"title\":\"About your home page\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=121\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_menus.item',1000,121,'COM_ACTIONLOGS_DISABLED'),
(43,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":122,\"title\":\"New feature: Workflows\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=122\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_menus.item',1000,122,'COM_ACTIONLOGS_DISABLED'),
(44,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":123,\"title\":\"Millions\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=123\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_menus.item',1000,123,'COM_ACTIONLOGS_DISABLED'),
(45,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":124,\"title\":\"Love\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=124\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_menus.item',1000,124,'COM_ACTIONLOGS_DISABLED'),
(46,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":125,\"title\":\"Joomla\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=125\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_menus.item',1000,125,'COM_ACTIONLOGS_DISABLED'),
(47,'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED','{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":110,\"title\":\"Main Menu Blog\",\"extension_name\":\"Main Menu Blog\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=110\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_modules.module',1000,110,'COM_ACTIONLOGS_DISABLED'),
(48,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"Special Menu\",\"extension_name\":\"Special Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_modules.module',1000,111,'COM_ACTIONLOGS_DISABLED'),
(49,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":112,\"title\":\"Syndication\",\"extension_name\":\"Syndication\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=112\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_modules.module',1000,112,'COM_ACTIONLOGS_DISABLED'),
(50,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":113,\"title\":\"Archived Articles\",\"extension_name\":\"Archived Articles\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=113\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_modules.module',1000,113,'COM_ACTIONLOGS_DISABLED'),
(51,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":114,\"title\":\"Latest Posts\",\"extension_name\":\"Latest Posts\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=114\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_modules.module',1000,114,'COM_ACTIONLOGS_DISABLED'),
(52,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":115,\"title\":\"Older Posts\",\"extension_name\":\"Older Posts\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=115\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_modules.module',1000,115,'COM_ACTIONLOGS_DISABLED'),
(53,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":116,\"title\":\"Bottom Menu\",\"extension_name\":\"Bottom Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=116\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_modules.module',1000,116,'COM_ACTIONLOGS_DISABLED'),
(54,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":117,\"title\":\"Search\",\"extension_name\":\"Search\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=117\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_modules.module',1000,117,'COM_ACTIONLOGS_DISABLED'),
(55,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":118,\"title\":\"Image\",\"extension_name\":\"Image\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=118\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_modules.module',1000,118,'COM_ACTIONLOGS_DISABLED'),
(56,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":119,\"title\":\"Popular Tags\",\"extension_name\":\"Popular Tags\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=119\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_modules.module',1000,119,'COM_ACTIONLOGS_DISABLED'),
(57,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":120,\"title\":\"Similar Items\",\"extension_name\":\"Similar Items\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=120\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_modules.module',1000,120,'COM_ACTIONLOGS_DISABLED'),
(58,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":121,\"title\":\"Site Information\",\"extension_name\":\"Site Information\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=121\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_modules.module',1000,121,'COM_ACTIONLOGS_DISABLED'),
(59,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":16,\"title\":\"Login Form\",\"extension_name\":\"Login Form\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=16\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:01:21','com_modules.module',1000,16,'COM_ACTIONLOGS_DISABLED'),
(60,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"11\",\"title\":\"Cassiopeia - Default\",\"extension_name\":\"Cassiopeia - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=11\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:02:50','com_templates.style',1000,11,'COM_ACTIONLOGS_DISABLED'),
(61,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}','2024-06-27 15:03:17','com_users',1000,0,'COM_ACTIONLOGS_DISABLED'),
(62,'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN','{\"action\":\"login\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}','2024-06-27 15:32:22','com_users',1000,0,'COM_ACTIONLOGS_DISABLED'),
(63,'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED','{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"11\",\"title\":\"Cassiopeia - Default\",\"extension_name\":\"Cassiopeia - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=11\",\"userid\":1000,\"username\":\"webmaster\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=1000\"}','2024-06-27 15:32:45','com_templates.style',1000,11,'COM_ACTIONLOGS_DISABLED');
/*!40000 ALTER TABLE `jjg9w_action_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_action_logs_extensions`
--

DROP TABLE IF EXISTS `jjg9w_action_logs_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_action_logs_extensions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `extension` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_action_logs_extensions`
--

LOCK TABLES `jjg9w_action_logs_extensions` WRITE;
/*!40000 ALTER TABLE `jjg9w_action_logs_extensions` DISABLE KEYS */;
INSERT INTO `jjg9w_action_logs_extensions` VALUES
(1,'com_banners'),
(2,'com_cache'),
(3,'com_categories'),
(4,'com_config'),
(5,'com_contact'),
(6,'com_content'),
(7,'com_installer'),
(8,'com_media'),
(9,'com_menus'),
(10,'com_messages'),
(11,'com_modules'),
(12,'com_newsfeeds'),
(13,'com_plugins'),
(14,'com_redirect'),
(15,'com_tags'),
(16,'com_templates'),
(17,'com_users'),
(18,'com_checkin'),
(19,'com_scheduler'),
(20,'com_fields');
/*!40000 ALTER TABLE `jjg9w_action_logs_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_action_logs_users`
--

DROP TABLE IF EXISTS `jjg9w_action_logs_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_action_logs_users` (
  `user_id` int(10) unsigned NOT NULL,
  `notify` tinyint(3) unsigned NOT NULL,
  `extensions` text NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `idx_notify` (`notify`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_action_logs_users`
--

LOCK TABLES `jjg9w_action_logs_users` WRITE;
/*!40000 ALTER TABLE `jjg9w_action_logs_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjg9w_action_logs_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_assets`
--

DROP TABLE IF EXISTS `jjg9w_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_assets`
--

LOCK TABLES `jjg9w_assets` WRITE;
/*!40000 ALTER TABLE `jjg9w_assets` DISABLE KEYS */;
INSERT INTO `jjg9w_assets` VALUES
(1,0,0,291,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.api\":{\"8\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2,1,1,2,1,'com_admin','com_admin','{}'),
(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6,1,11,12,1,'com_config','com_config','{}'),
(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8,1,17,116,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.execute.transition\":{\"6\":1,\"5\":1}}'),
(9,1,117,118,1,'com_cpanel','com_cpanel','{}'),
(10,1,119,120,1,'com_installer','com_installer','{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11,1,121,124,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1}}'),
(12,11,122,123,2,'com_languages.language.1','English (en-GB)','{}'),
(13,1,125,126,1,'com_login','com_login','{}'),
(14,1,127,128,1,'com_mails','com_mails','{}'),
(15,1,129,130,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16,1,131,140,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1}}'),
(17,1,141,142,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18,1,143,240,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1}}'),
(19,1,241,244,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20,1,245,246,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1}}'),
(21,1,247,248,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1}}'),
(23,1,249,250,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1}}'),
(24,1,255,258,1,'com_users','com_users','{\"core.admin\":{\"7\":1}}'),
(26,1,259,260,1,'com_wrapper','com_wrapper','{}'),
(27,8,18,19,2,'com_content.category.2','Uncategorised','{}'),
(28,3,4,5,2,'com_banners.category.3','Uncategorised','{}'),
(29,7,14,15,2,'com_contact.category.4','Uncategorised','{}'),
(30,19,242,243,2,'com_newsfeeds.category.5','Uncategorised','{}'),
(32,24,256,257,2,'com_users.category.7','Uncategorised','{}'),
(33,1,261,262,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34,1,263,264,1,'com_joomlaupdate','com_joomlaupdate','{}'),
(35,1,265,266,1,'com_tags','com_tags','{}'),
(36,1,267,268,1,'com_contenthistory','com_contenthistory','{}'),
(37,1,269,270,1,'com_ajax','com_ajax','{}'),
(38,1,271,272,1,'com_postinstall','com_postinstall','{}'),
(39,18,144,145,2,'com_modules.module.1','Main Menu','{}'),
(40,18,146,147,2,'com_modules.module.2','Login','{}'),
(41,18,148,149,2,'com_modules.module.3','Popular Articles','{}'),
(42,18,150,151,2,'com_modules.module.4','Recently Added Articles','{}'),
(43,18,152,153,2,'com_modules.module.8','Toolbar','{}'),
(44,18,154,155,2,'com_modules.module.9','Notifications','{}'),
(45,18,156,157,2,'com_modules.module.10','Logged-in Users','{}'),
(46,18,158,159,2,'com_modules.module.12','Admin Menu','{}'),
(49,18,164,165,2,'com_modules.module.15','Title','{}'),
(50,18,166,167,2,'com_modules.module.16','Login Form','{}'),
(51,18,168,169,2,'com_modules.module.17','Breadcrumbs','{}'),
(52,18,170,171,2,'com_modules.module.79','Multilanguage status','{}'),
(53,18,174,175,2,'com_modules.module.86','Joomla Version','{}'),
(54,16,132,133,2,'com_menus.menu.1','Main Menu','{}'),
(55,18,178,179,2,'com_modules.module.87','Sample Data','{}'),
(56,8,20,37,2,'com_content.workflow.1','COM_WORKFLOW_BASIC_WORKFLOW','{}'),
(57,56,21,22,3,'com_content.stage.1','COM_WORKFLOW_BASIC_STAGE','{}'),
(58,56,23,24,3,'com_content.transition.1','Unpublish','{}'),
(59,56,25,26,3,'com_content.transition.2','Publish','{}'),
(60,56,27,28,3,'com_content.transition.3','Trash','{}'),
(61,56,29,30,3,'com_content.transition.4','Archive','{}'),
(62,56,31,32,3,'com_content.transition.5','Feature','{}'),
(63,56,33,34,3,'com_content.transition.6','Unfeature','{}'),
(64,56,35,36,3,'com_content.transition.7','Publish & Feature','{}'),
(65,1,251,252,1,'com_privacy','com_privacy','{}'),
(66,1,253,254,1,'com_actionlogs','com_actionlogs','{}'),
(67,18,160,161,2,'com_modules.module.88','Latest Actions','{}'),
(68,18,162,163,2,'com_modules.module.89','Privacy Dashboard','{}'),
(70,18,172,173,2,'com_modules.module.103','Site','{}'),
(71,18,176,177,2,'com_modules.module.104','System','{}'),
(72,18,180,181,2,'com_modules.module.91','System Dashboard','{}'),
(73,18,182,183,2,'com_modules.module.92','Content Dashboard','{}'),
(74,18,184,185,2,'com_modules.module.93','Menus Dashboard','{}'),
(75,18,186,187,2,'com_modules.module.94','Components Dashboard','{}'),
(76,18,188,189,2,'com_modules.module.95','Users Dashboard','{}'),
(77,18,190,191,2,'com_modules.module.99','Frontend Link','{}'),
(78,18,192,193,2,'com_modules.module.100','Messages','{}'),
(79,18,194,195,2,'com_modules.module.101','Post Install Messages','{}'),
(80,18,196,197,2,'com_modules.module.102','User Status','{}'),
(82,18,198,199,2,'com_modules.module.105','3rd Party','{}'),
(83,18,200,201,2,'com_modules.module.106','Help Dashboard','{}'),
(84,18,202,203,2,'com_modules.module.107','Privacy Requests','{}'),
(85,18,204,205,2,'com_modules.module.108','Privacy Status','{}'),
(86,18,206,207,2,'com_modules.module.96','Popular Articles','{}'),
(87,18,208,209,2,'com_modules.module.97','Recently Added Articles','{}'),
(88,18,210,211,2,'com_modules.module.98','Logged-in Users','{}'),
(89,18,212,213,2,'com_modules.module.90','Login Support','{}'),
(90,1,273,274,1,'com_scheduler','com_scheduler','{}'),
(91,1,275,276,1,'com_associations','com_associations','{}'),
(92,1,277,278,1,'com_categories','com_categories','{}'),
(93,1,279,280,1,'com_fields','com_fields','{}'),
(94,1,281,282,1,'com_workflow','com_workflow','{}'),
(95,1,283,284,1,'com_guidedtours','com_guidedtours','{}'),
(96,18,214,215,2,'com_modules.module.109','Guided Tours','{}'),
(97,1,285,286,1,'com_scheduler.task.1','com_scheduler.task.1','{}'),
(98,1,287,288,1,'com_scheduler.task.2','com_scheduler.task.2','{}'),
(99,1,289,290,1,'com_scheduler.task.3','com_scheduler.task.3','{}'),
(100,8,38,41,2,'com_content.fieldgroup.1','The Author','{}'),
(101,100,39,40,3,'com_content.field.1','About the Author','{}'),
(102,8,42,85,2,'com_content.workflow.2','Blog Workflow','{}'),
(103,102,43,44,3,'com_content.stage.2','Idea','{}'),
(104,102,45,46,3,'com_content.stage.3','Copywriting','{}'),
(105,102,47,48,3,'com_content.stage.4','Graphic Design','{}'),
(106,102,49,50,3,'com_content.stage.5','Fact Check','{}'),
(107,102,51,52,3,'com_content.stage.6','Content Review','{}'),
(108,102,53,54,3,'com_content.stage.7','Published','{}'),
(109,102,55,56,3,'com_content.stage.8','On Hold','{}'),
(110,102,57,58,3,'com_content.stage.9','Trashed','{}'),
(111,102,59,60,3,'com_content.stage.10','Unpublished','{}'),
(112,102,61,62,3,'com_content.transition.8','Write Article','{}'),
(113,102,63,64,3,'com_content.transition.9','Graphic Design','{}'),
(114,102,65,66,3,'com_content.transition.10','Check Facts','{}'),
(115,102,67,68,3,'com_content.transition.11','Review Content','{}'),
(116,102,69,70,3,'com_content.transition.12','Edit','{}'),
(117,102,71,72,3,'com_content.transition.13','Publish and Feature','{}'),
(118,102,73,74,3,'com_content.transition.14','Set on Hold','{}'),
(119,102,75,76,3,'com_content.transition.15','Trash','{}'),
(120,102,77,78,3,'com_content.transition.16','Resume Idea','{}'),
(121,102,79,80,3,'com_content.transition.17','Unpublish','{}'),
(122,102,81,82,3,'com_content.transition.18','Trash','{}'),
(123,102,83,84,3,'com_content.transition.19','Publish again','{}'),
(124,8,86,95,2,'com_content.category.8','Blog','{}'),
(125,8,96,103,2,'com_content.category.9','Help','{}'),
(126,8,104,111,2,'com_content.category.10','Joomla','{}'),
(127,8,112,115,2,'com_content.category.11','Typography','{}'),
(128,125,97,98,3,'com_content.article.1','About','{}'),
(129,125,99,100,3,'com_content.article.2','Working on Your Site','{}'),
(130,124,87,88,3,'com_content.article.3','Welcome to your blog','{}'),
(131,124,89,90,3,'com_content.article.4','About your home page','{}'),
(132,124,91,92,3,'com_content.article.5','Your Modules','{}'),
(133,124,93,94,3,'com_content.article.6','Your Template','{}'),
(134,126,105,106,3,'com_content.article.7','Millions','{}'),
(135,126,107,108,3,'com_content.article.8','Love','{}'),
(136,126,109,110,3,'com_content.article.9','Joomla','{}'),
(137,125,101,102,3,'com_content.article.10','New feature: Workflows','{}'),
(138,127,113,114,3,'com_content.article.11','Typography','{}'),
(139,16,134,135,2,'com_menus.menu.2','Main Menu Blog ','{}'),
(140,16,136,137,2,'com_menus.menu.3','Special Menu ','{}'),
(141,16,138,139,2,'com_menus.menu.4','Bottom Menu ','{}'),
(142,18,216,217,2,'com_modules.module.110','Main Menu Blog','{}'),
(143,18,218,219,2,'com_modules.module.111','Special Menu','{}'),
(144,18,220,221,2,'com_modules.module.112','Syndication','{}'),
(145,18,222,223,2,'com_modules.module.113','Archived Articles','{}'),
(146,18,224,225,2,'com_modules.module.114','Latest Posts','{}'),
(147,18,226,227,2,'com_modules.module.115','Older Posts','{}'),
(148,18,228,229,2,'com_modules.module.116','Bottom Menu','{}'),
(149,18,230,231,2,'com_modules.module.117','Search','{}'),
(150,18,232,233,2,'com_modules.module.118','Image','{}'),
(151,18,234,235,2,'com_modules.module.119','Popular Tags','{}'),
(152,18,236,237,2,'com_modules.module.120','Similar Items','{}'),
(153,18,238,239,2,'com_modules.module.121','Site Information','{}');
/*!40000 ALTER TABLE `jjg9w_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_associations`
--

DROP TABLE IF EXISTS `jjg9w_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_associations`
--

LOCK TABLES `jjg9w_associations` WRITE;
/*!40000 ALTER TABLE `jjg9w_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjg9w_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_banner_clients`
--

DROP TABLE IF EXISTS `jjg9w_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `metakey` text DEFAULT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT 0,
  `metakey_prefix` varchar(400) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT -1,
  `track_clicks` tinyint(4) NOT NULL DEFAULT -1,
  `track_impressions` tinyint(4) NOT NULL DEFAULT -1,
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_banner_clients`
--

LOCK TABLES `jjg9w_banner_clients` WRITE;
/*!40000 ALTER TABLE `jjg9w_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjg9w_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_banner_tracks`
--

DROP TABLE IF EXISTS `jjg9w_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_banner_tracks`
--

LOCK TABLES `jjg9w_banner_tracks` WRITE;
/*!40000 ALTER TABLE `jjg9w_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjg9w_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_banners`
--

DROP TABLE IF EXISTS `jjg9w_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT 0,
  `impmade` int(11) NOT NULL DEFAULT 0,
  `clicks` int(11) NOT NULL DEFAULT 0,
  `clickurl` varchar(2048) NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `catid` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT 0,
  `metakey_prefix` varchar(400) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT -1,
  `track_clicks` tinyint(4) NOT NULL DEFAULT -1,
  `track_impressions` tinyint(4) NOT NULL DEFAULT -1,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `reset` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_banners`
--

LOCK TABLES `jjg9w_banners` WRITE;
/*!40000 ALTER TABLE `jjg9w_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjg9w_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_categories`
--

DROP TABLE IF EXISTS `jjg9w_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) unsigned NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `params` text DEFAULT NULL,
  `metadesc` varchar(1024) NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL DEFAULT '' COMMENT 'The keywords for the page.',
  `metadata` varchar(2048) NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL,
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_categories`
--

LOCK TABLES `jjg9w_categories` WRITE;
/*!40000 ALTER TABLE `jjg9w_categories` DISABLE KEYS */;
INSERT INTO `jjg9w_categories` VALUES
(1,0,0,0,19,0,'','system','ROOT','root','','',1,NULL,NULL,1,'{}','','','{}',1000,'2024-06-27 14:53:29',1000,'2024-06-27 14:53:29',0,'*',1),
(2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\",\"workflow_id\":\"use_default\"}','','','{\"author\":\"\",\"robots\":\"\"}',1000,'2024-06-27 14:53:29',1000,'2024-06-27 14:53:29',0,'*',1),
(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',1000,'2024-06-27 14:53:29',1000,'2024-06-27 14:53:29',0,'*',1),
(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',1000,'2024-06-27 14:53:29',1000,'2024-06-27 14:53:29',0,'*',1),
(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',1000,'2024-06-27 14:53:29',1000,'2024-06-27 14:53:29',0,'*',1),
(7,32,1,9,10,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,NULL,NULL,1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',1000,'2024-06-27 14:53:29',1000,'2024-06-27 14:53:29',0,'*',1),
(8,124,1,11,12,1,'blog','com_content','Blog','blog','','',1,NULL,NULL,1,'{\"workflow_id\":\"2\"}','','','',1000,'2024-06-27 15:01:19',1000,'2024-06-27 15:01:19',0,'*',1),
(9,125,1,13,14,1,'help','com_content','Help','help','','',1,NULL,NULL,1,'{}','','','',1000,'2024-06-27 15:01:19',1000,'2024-06-27 15:01:19',0,'*',1),
(10,126,1,15,16,1,'joomla','com_content','Joomla','joomla','','',1,NULL,NULL,1,'{}','','','',1000,'2024-06-27 15:01:19',1000,'2024-06-27 15:01:19',0,'*',1),
(11,127,1,17,18,1,'typography','com_content','Typography','typography','','',1,NULL,NULL,1,'{}','','','',1000,'2024-06-27 15:01:19',1000,'2024-06-27 15:01:19',0,'*',1);
/*!40000 ALTER TABLE `jjg9w_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_contact_details`
--

DROP TABLE IF EXISTS `jjg9w_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `catid` int(11) NOT NULL DEFAULT 0,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL DEFAULT '',
  `sortname2` varchar(255) NOT NULL DEFAULT '',
  `sortname3` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(7) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Set if contact is featured.',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_contact_details`
--

LOCK TABLES `jjg9w_contact_details` WRITE;
/*!40000 ALTER TABLE `jjg9w_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjg9w_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_content`
--

DROP TABLE IF EXISTS `jjg9w_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `catid` int(10) unsigned NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_alias` (`alias`(191))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_content`
--

LOCK TABLES `jjg9w_content` WRITE;
/*!40000 ALTER TABLE `jjg9w_content` DISABLE KEYS */;
INSERT INTO `jjg9w_content` VALUES
(1,128,'About','about','<p>This tells you a bit about this blog and the person who writes it.</p><p>When you are logged in you will be able to edit this page by selecting the edit icon.</p>','',1,9,'2024-06-27 15:01:19',1000,'Joomla','2024-06-27 15:01:19',1000,NULL,NULL,'2024-06-27 15:01:19',NULL,'','{}','{}',1,1,'','',1,0,'{}',0,'*',''),
(2,129,'Working on Your Site','working-on-your-site','<p>Here are some basic tips for working on your site.</p><ul><li>Joomla! has a \'front end\' that you are looking at now and an \'administrator\' or \'back end\' which is where you do the more advanced work of creating your site such as setting up the menus and deciding what modules to show. You need to login to the administrator separately using the same user name and password that you used to login to this part of the site.</li><li>One of the first things you will probably want to do is change the site title and tag line and to add a logo. To do this select the Template Settings link in the menu which is visible if you log in. To change your site description, browser title, default email and other items, select Site Settings. More advanced configuration options are available in the administrator.</li><li>To totally change the look of your site you will probably want to install a new template. Go to System, select Install - Extensions from the list and the extension installer will open. There are many free and commercial templates available for Joomla.</li><li>As you have already seen, you can control who can see different parts of you site. When you work with modules and articles, setting the Access level to Registered will mean that only logged in users can see them.</li><li>When you create a new article or other kind of content you also can save it as Published or Unpublished. If it is Unpublished site visitors will not be able to see it but you will.</li><li>You can learn much more about working with Joomla from the <a href=\'https://docs.joomla.org/\'>Joomla documentation site</a> and get help from other users at the <a href=\'https://forum.joomla.org/\'>Joomla forums</a>. In the administrator there are help buttons on every page that provide detailed information about the functions on that page.</li></ul>','',1,9,'2024-06-27 15:01:19',1000,'Joomla','2024-06-27 15:01:19',1000,NULL,NULL,'2024-06-27 15:01:19',NULL,'','{}','{}',1,2,'','',3,1,'{}',0,'*',''),
(3,130,'Welcome to your blog','welcome-to-your-blog','<p>This is a sample blog posting.</p><p>If you log in to the site (the Administrator Login link is on the very bottom of this page) you will be able to edit it and all of the other existing articles. You will also be able to create a new article and make other changes to the site.</p><p>As you add and modify articles you will see how your site changes and also how you can customise it in various ways.</p><p>Go ahead, you can\'t break it.</p>','',1,8,'2024-06-27 15:01:19',1000,'Joomla','2024-06-27 15:01:19',1000,NULL,NULL,'2024-06-27 15:01:19',NULL,'{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa1-1200.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa1-1200.jpg?width=1200&height=400\",\"float_intro\":\"\",\"image_intro_alt\":\"Amazing Andromeda Galaxy\",\"image_intro_alt_empty\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/cassiopeia\\/nasa1-400.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa1-400.jpg?width=400&height=400\",\"float_fulltext\":\"float-start\",\"image_fulltext_alt\":\"\",\"image_fulltext_alt_empty\":1,\"image_fulltext_caption\":\"www.nasa.gov\\/multimedia\\/imagegallery\"}','{}','{}',1,1,'','',1,0,'{}',1,'*',''),
(4,131,'About your home page','about-your-home-page','<p>Your home page is set to display the four most recent articles from the blog category in a column. Then there are links to the next two oldest articles. You can change those numbers by editing the content options settings in the blog tab in your site administrator. There is a link to your site administrator if you are logged in.</p><p>If you want to have your blog post broken into two parts, an introduction and then a full length separate page, use the Read More span to insert a break.</p>','<p>On the full page you will see both the introductory content and the rest of the article. You can change the settings to hide the introduction if you want.</p>',1,8,'2024-06-27 15:01:19',1000,'Joomla','2024-06-27 15:01:19',1000,NULL,NULL,'2024-06-27 15:01:19',NULL,'{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa2-1200.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa2-1200.jpg?width=1200&height=400\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":1,\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/cassiopeia\\/nasa2-400.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa2-400.jpg?width=400&height=400\",\"float_fulltext\":\"float-start\",\"image_fulltext_alt\":\"\",\"image_fulltext_alt_empty\":1,\"image_fulltext_caption\":\"www.nasa.gov\\/multimedia\\/imagegallery\"}','{}','{}',1,2,'','',1,2,'{}',1,'*',''),
(5,132,'Your Modules','your-modules','<p>Your site has some commonly used modules already preconfigured. These include:</p><ul><li>Image (type: Custom), which holds the image beneath the menu. This is a Custom module that you can edit to change the image.</li><li>Popular Tags (type: Tags - Popular), which will appear if you use tagging on your articles. Enter a tag in the Tags field when editing.</li><li>Older Posts (type: Articles - Category), which lists out articles by categories.</li><li>Syndication (type: Syndication Feeds), which allows your readers to read your posts in a news reader.</li><li>Login Form (type: Login), which allows your users to access restricted areas of the website.</li></ul><p>Each of these modules has many options which you can experiment with in the Module Manager in your site Administrator. When you are logged in you can also select the edit icon in the top right corner which will take you to an edit screen for that module. Always be sure to save and close any module you edit.</p><p>Joomla! also includes many other modules you can incorporate in your site. As you develop your site you may want to add more modules that you can find at the <a href=\"https://extensions.joomla.org/\">Joomla Extensions Directory.</a></p>','',1,8,'2024-06-27 15:01:19',1000,'Joomla','2024-06-27 15:01:19',1000,NULL,NULL,'2024-06-27 15:01:19',NULL,'{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa3-1200.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa3-1200.jpg?width=1200&height=400\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":1,\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/cassiopeia\\/nasa3-400.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa3-400.jpg?width=400&height=400\",\"float_fulltext\":\"float-start\",\"image_fulltext_alt\":\"Crab Nebula\",\"image_fulltext_alt_empty\":\"\",\"image_fulltext_caption\":\"www.nasa.gov\\/multimedia\\/imagegallery\"}','{}','{}',1,3,'','',1,0,'{}',1,'*',''),
(6,133,'Your Template','your-template','<p>Templates control the look and feel of your website.</p><p>This blog is installed with the Cassiopeia template.</p><p>You can edit the options by selecting the Working on Your Site, Template Settings link in the menu which is visible when you log in.</p><p>For example you can change the site background colour, highlights colour, site title, site description and title font used.</p><p>More options are available in the site administrator. You may also install a new template using the extension manager.</p>','',1,8,'2024-06-27 15:01:19',1000,'Joomla','2024-06-27 15:01:19',1000,NULL,NULL,'2024-06-27 15:01:19',NULL,'{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa4-1200.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa4-1200.jpg?width=1200&height=400\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":1,\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/cassiopeia\\/nasa4-400.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa4-400.jpg?width=400&height=400\",\"float_fulltext\":\"float-start\",\"image_fulltext_alt\":\"\",\"image_fulltext_alt_empty\":1,\"image_fulltext_caption\":\"www.nasa.gov\\/multimedia\\/imagegallery\"}','{}','{}',1,0,'','',1,0,'{}',1,'*',''),
(7,134,'Millions','millions','<p><strong>Millions of Websites are built on Joomla!</strong></p><p>Learn more about beautiful blog presentation.</p>','<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est</p>',1,10,'2024-06-27 15:01:19',1000,'Joomla','2024-06-27 15:01:19',1000,NULL,NULL,'2024-06-27 15:01:19',NULL,'{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa1-640.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa1-640.jpg?width=640&height=320\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":1,\"image_intro_caption\":\"\"}','{}','{}',1,1,'','',1,1,'{}',0,'*',''),
(8,135,'Love','love','<p><strong>We love Joomla to the moon and back!</strong></p><p>Thank you to all volunteers who have contributed!</p>','<p>Uurnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. Lotus root water spinach fennel kombu maize bamboo shoot green bean swiss chard seakale pumpkin onion chickpea gram corn pea. Brussels sprout coriander water chestnut gourd swiss chard wakame kohlrabi beetroot carrot watercress. Corn amaranth salsify bunya nuts nori azuki bean chickweed potato bell pepper artichoke.</p> ',1,10,'2024-06-27 15:01:19',1000,'Joomla','2024-06-27 15:01:19',1000,NULL,NULL,'2024-06-27 15:01:19',NULL,'{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa2-640.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa2-640.jpg?width=640&height=320\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":1,\"image_intro_caption\":\"\"}','{}','{}',1,2,'','',1,0,'{}',0,'*',''),
(9,136,'Joomla','joomla','<p><strong>We proudly present Joomla Version 5!</strong></p><p>Learn more about workflows in Joomla.</p>','<p>Cupcake ipsum dolor. Sit amet cotton candy ice cream sesame snaps cake marshmallow powder. Ice cream chocolate cake marshmallow halvah bonbon. Dragée carrot cake danish candy muffin brownie. Candy sugar plum ice cream chupa chups macaroon tiramisu soufflé oat cake. Topping cheesecake lollipop gummi bears icing sweet roll donut liquorice. Pie jelly-o candy donut oat cake cotton candy.</p>',1,10,'2024-06-27 15:01:19',1000,'Joomla','2024-06-27 15:01:19',1000,NULL,NULL,'2024-06-27 15:01:19',NULL,'{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa3-640.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa3-640.jpg?width=640&height=320\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":1,\"image_intro_caption\":\"\"}','{}','{}',1,0,'','',1,0,'{}',0,'*',''),
(10,137,'New feature: Workflows','new-feature-workflows','<p>Workflows manage the stages your articles must go through until they are published.</p><p>The component to manage workflows is not enabled by default.</p><p>To see the workflow that we have provided with the sample data, you first need to enable this functionality.</p><ol><li>Access the administration area</li><li>From \'Content\' > \'Articles\' > \'Options\' > \'Integration\' tab set \'Enable workflow\' to \'Yes\'</li><li>Save changes</li></ol><p>Now when you access \'Content\' again you will see the section \'Workflows\'.</p><p>When you edit an article you will also see the new transitions for articles related to workflows.</p>','',1,9,'2024-06-27 15:01:19',1000,'Joomla','2024-06-27 15:01:19',1000,NULL,NULL,'2024-06-27 15:01:19',NULL,'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/cassiopeia\\/nasa4-400.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa4-400.jpg?width=400&height=400\",\"float_fulltext\":\"float-end\",\"image_fulltext_alt\":\"\",\"image_fulltext_alt_empty\":1,\"image_fulltext_caption\":\"www.nasa.gov\\/multimedia\\/imagegallery\"}','{}','{}',1,0,'','',1,0,'{}',0,'*',''),
(11,138,'Typography','typography','<h1>Colour Scheme</h1> <p> <span class=\"btn btn-secondary\">secondary</span>   <span class=\"btn btn-primary\">primary</span>   <span class=\"btn btn-info\">info</span>   <span class=\"btn btn-success\">success</span>   <span class=\"btn btn-warning\">warning</span>   <span class=\"btn btn-danger\">danger</span> </p> <p><span class=\"text text-secondary\">text-secondary</span>  <span class=\"text text-primary\">text-primary</span>  <span class=\"text text-info\">text-info</span>  <span class=\"text text-success\">text-success</span>  <span class=\"text text-warning\">text-warning</span>  <span class=\"text text-danger\">text-danger</span></p><h1>Typography (h1)</h1><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)</p><h2>Lorem Ipsum Dolor Sit Amet (h2)</h2><p><strong>Lorem ipsum dolor sit amet, consectetuer adipiscing elit </strong> (strong), sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)</p><h3>Lorem Ipsum Dolor Sit Amet (h3)</h3><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)</p><h4>Lorem Ipsum Dolor Sit Amet (h4)</h4><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)</p><h5>Lorem Ipsum Dolor Sit Amet (h5)</h5><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)</p> <p><a href=\"index.php\"> Lorem ipsum dolor (a)</a></p><h1>Lists</h1> <p>(ol)(li)</p> <ol> <li>Lorem ipsum dolor sit amet consectetur</li> <li>Lorem ipsum dolor sit amet consectetur</li> </ol> <p>(ul)(li)</p> <ul> <li>Lorem ipsum dolor sit amet consectetur</li> <li>Lorem ipsum dolor sit amet consectetur</li> </ul> <h1>Displays</h1><p class=\"display-1\">Lorem (display-1)</p><p class=\"display-2\">Lorem (display-2)</p><p class=\"display-3\">Lorem ipsum (display-3)</p><p class=\"display-4\">Lorem ipsum (display-4)</p><p class=\"lead\">Lorem ipsum arma virumque cano (lead)</p>','',1,11,'2024-06-27 15:01:19',1000,'Joomla','2024-06-27 15:01:19',1000,NULL,NULL,'2024-06-27 15:01:19',NULL,'','{}','{}',1,0,'','',1,2,'{}',0,'*','');
/*!40000 ALTER TABLE `jjg9w_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_content_frontpage`
--

DROP TABLE IF EXISTS `jjg9w_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `featured_up` datetime DEFAULT NULL,
  `featured_down` datetime DEFAULT NULL,
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_content_frontpage`
--

LOCK TABLES `jjg9w_content_frontpage` WRITE;
/*!40000 ALTER TABLE `jjg9w_content_frontpage` DISABLE KEYS */;
INSERT INTO `jjg9w_content_frontpage` VALUES
(3,1,NULL,NULL),
(4,2,NULL,NULL),
(5,3,NULL,NULL),
(6,4,NULL,NULL);
/*!40000 ALTER TABLE `jjg9w_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_content_rating`
--

DROP TABLE IF EXISTS `jjg9w_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `rating_sum` int(10) unsigned NOT NULL DEFAULT 0,
  `rating_count` int(10) unsigned NOT NULL DEFAULT 0,
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_content_rating`
--

LOCK TABLES `jjg9w_content_rating` WRITE;
/*!40000 ALTER TABLE `jjg9w_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjg9w_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_content_types`
--

DROP TABLE IF EXISTS `jjg9w_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(400) NOT NULL DEFAULT '',
  `table` varchar(2048) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_content_types`
--

LOCK TABLES `jjg9w_content_types` WRITE;
/*!40000 ALTER TABLE `jjg9w_content_types` DISABLE KEYS */;
INSERT INTO `jjg9w_content_types` VALUES
(1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"ArticleTable\",\"prefix\":\"Joomla\\\\Component\\\\Content\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"asset_id\", \"note\":\"note\"}, \"special\":{\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"ordering\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"ContactTable\",\"prefix\":\"Joomla\\\\Component\\\\Contact\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"NewsfeedTable\",\"prefix\":\"Joomla\\\\Component\\\\Newsfeeds\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerDate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}','',''),
(5,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"TagTable\",\"prefix\":\"Joomla\\\\Component\\\\Tags\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"BannerTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"ClientTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"NoteTable\",\"prefix\":\"Joomla\\\\Component\\\\Users\\\\Administrator\\\\Table\\\\\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
/*!40000 ALTER TABLE `jjg9w_content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_contentitem_tag_map`
--

DROP TABLE IF EXISTS `jjg9w_contentitem_tag_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(9) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_contentitem_tag_map`
--

LOCK TABLES `jjg9w_contentitem_tag_map` WRITE;
/*!40000 ALTER TABLE `jjg9w_contentitem_tag_map` DISABLE KEYS */;
INSERT INTO `jjg9w_contentitem_tag_map` VALUES
('com_content.article',1,3,2,'2024-06-27 15:01:20',1),
('com_content.article',1,3,3,'2024-06-27 15:01:20',1),
('com_content.article',1,3,4,'2024-06-27 15:01:20',1),
('com_content.article',1,3,5,'2024-06-27 15:01:20',1),
('com_content.article',2,4,2,'2024-06-27 15:01:20',1),
('com_content.article',2,4,3,'2024-06-27 15:01:20',1),
('com_content.article',2,4,4,'2024-06-27 15:01:20',1),
('com_content.article',2,4,5,'2024-06-27 15:01:20',1),
('com_content.article',3,5,2,'2024-06-27 15:01:20',1),
('com_content.article',3,5,3,'2024-06-27 15:01:20',1),
('com_content.article',3,5,4,'2024-06-27 15:01:20',1),
('com_content.article',3,5,5,'2024-06-27 15:01:20',1),
('com_content.article',4,6,2,'2024-06-27 15:01:20',1),
('com_content.article',4,6,3,'2024-06-27 15:01:20',1),
('com_content.article',4,6,4,'2024-06-27 15:01:20',1),
('com_content.article',4,6,5,'2024-06-27 15:01:20',1);
/*!40000 ALTER TABLE `jjg9w_contentitem_tag_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_extensions`
--

DROP TABLE IF EXISTS `jjg9w_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `changelogurl` text DEFAULT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(4) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 0,
  `access` int(10) unsigned NOT NULL DEFAULT 1,
  `protected` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Flag to indicate if the extension is protected. Protected extensions cannot be disabled.',
  `locked` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Flag to indicate if the extension is locked. Locked extensions cannot be uninstalled.',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) DEFAULT 0,
  `state` int(11) DEFAULT 0,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_extensions`
--

LOCK TABLES `jjg9w_extensions` WRITE;
/*!40000 ALTER TABLE `jjg9w_extensions` DISABLE KEYS */;
INSERT INTO `jjg9w_extensions` VALUES
(1,0,'com_wrapper','component','com_wrapper',NULL,'',1,1,1,0,1,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Wrapper\",\"filename\":\"wrapper\"}','','',NULL,NULL,0,0,NULL),
(2,0,'com_admin','component','com_admin',NULL,'',1,1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Admin\"}','','',NULL,NULL,0,0,NULL),
(3,0,'com_banners','component','com_banners',NULL,'',1,1,1,0,1,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Banners\",\"filename\":\"banners\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}','',NULL,NULL,0,0,NULL),
(4,0,'com_cache','component','com_cache',NULL,'',1,1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Cache\"}','','',NULL,NULL,0,0,NULL),
(5,0,'com_categories','component','com_categories',NULL,'',1,1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"2007-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Categories\"}','','',NULL,NULL,0,0,NULL),
(6,0,'com_checkin','component','com_checkin',NULL,'',1,1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Checkin\"}','','',NULL,NULL,0,0,NULL),
(7,0,'com_contact','component','com_contact',NULL,'',1,1,1,0,1,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Contact\",\"filename\":\"contact\"}','{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_ids\":1,\"custom_fields_enable\":\"1\"}','',NULL,NULL,0,0,NULL),
(8,0,'com_cpanel','component','com_cpanel',NULL,'',1,1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"2007-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Cpanel\"}','','',NULL,NULL,0,0,NULL),
(9,0,'com_installer','component','com_installer',NULL,'',1,1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Installer\"}','{\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}','',NULL,NULL,0,0,NULL),
(10,0,'com_languages','component','com_languages',NULL,'',1,1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Languages\"}','{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}','',NULL,NULL,0,0,NULL),
(11,0,'com_login','component','com_login',NULL,'',1,1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Login\"}','','',NULL,NULL,0,0,NULL),
(12,0,'com_media','component','com_media',NULL,'',1,1,0,1,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Media\",\"filename\":\"media\"}','{\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"restrict_uploads_extensions\":\"bmp,gif,jpg,jpeg,png,webp,avif,ico,mp3,m4a,mp4a,ogg,mp4,mp4v,mpeg,mov,odg,odp,ods,odt,pdf,ppt,txt,xcf,xls,csv\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png,jpeg,webp,avif\",\"audio_extensions\":\"mp3,m4a,mp4a,ogg\",\"video_extensions\":\"mp4,mp4v,mpeg,mov,webm\",\"doc_extensions\":\"odg,odp,ods,odt,pdf,ppt,txt,xcf,xls,csv\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,image\\/webp,image\\/avif,audio\\/ogg,audio\\/mpeg,audio\\/mp4,video\\/mp4,video\\/webm,video\\/mpeg,video\\/quicktime,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\"}','',NULL,NULL,0,0,NULL),
(13,0,'com_menus','component','com_menus',NULL,'',1,1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Menus\",\"filename\":\"menus\"}','{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}','',NULL,NULL,0,0,NULL),
(14,0,'com_messages','component','com_messages',NULL,'',1,1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Messages\"}','','',NULL,NULL,0,0,NULL),
(15,0,'com_modules','component','com_modules',NULL,'',1,1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Modules\",\"filename\":\"modules\"}','','',NULL,NULL,0,0,NULL),
(16,0,'com_newsfeeds','component','com_newsfeeds',NULL,'',1,1,1,0,1,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}','{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"sef_ids\":1}','',NULL,NULL,0,0,NULL),
(17,0,'com_plugins','component','com_plugins',NULL,'',1,1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Plugins\"}','','',NULL,NULL,0,0,NULL),
(18,0,'com_templates','component','com_templates',NULL,'',1,1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Templates\"}','{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png,webp\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass,json\",\"font_formats\":\"woff,woff2,ttf,otf\",\"compressed_formats\":\"zip\",\"difference\":\"SideBySide\"}','',NULL,NULL,0,0,NULL),
(19,0,'com_content','component','com_content',NULL,'',1,1,0,1,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Content\",\"filename\":\"content\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"0\",\"info_block_show_title\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"0\",\"flags\":\"1\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":100,\"show_tags\":\"1\",\"record_hits\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"urls_position\":0,\"captcha\":\"\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_configure_edit_options\":\"1\",\"show_permissions\":\"1\",\"show_associations_edit\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_category_heading_title_text\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":1,\"blog_class_leading\":\"\",\"num_intro_articles\":4,\"blog_class\":\"\",\"num_columns\":1,\"multi_column_order\":\"0\",\"num_links\":4,\"show_subcategory_content\":\"0\",\"link_intro_image\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"display_num\":\"10\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_featured\":\"show\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\",\"sef_ids\":1,\"custom_fields_enable\":\"1\",\"workflow_enabled\":\"0\"}','',NULL,NULL,0,0,NULL),
(20,0,'com_config','component','com_config',NULL,'',1,1,0,1,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Config\",\"filename\":\"config\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','',NULL,NULL,0,0,NULL),
(21,0,'com_redirect','component','com_redirect',NULL,'',1,1,0,0,1,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Redirect\"}','','',NULL,NULL,0,0,NULL),
(22,0,'com_users','component','com_users',NULL,'',1,1,0,1,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Users\",\"filename\":\"users\"}','{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"12\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','',NULL,NULL,0,0,NULL),
(23,0,'com_finder','component','com_finder',NULL,'',1,1,0,0,1,'{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Finder\",\"filename\":\"finder\"}','{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}','',NULL,NULL,0,0,NULL),
(24,0,'com_joomlaupdate','component','com_joomlaupdate',NULL,'',1,1,0,1,1,'{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.3\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Joomlaupdate\"}','{\"updatesource\":\"default\",\"customurl\":\"\"}','',NULL,NULL,0,0,NULL),
(25,0,'com_tags','component','com_tags',NULL,'',1,1,1,0,1,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"2013-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Tags\",\"filename\":\"tags\"}','{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_description\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}','',NULL,NULL,0,0,NULL),
(26,0,'com_contenthistory','component','com_contenthistory',NULL,'',1,1,1,0,1,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"2013-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Contenthistory\",\"filename\":\"contenthistory\"}','','',NULL,NULL,0,0,NULL),
(27,0,'com_ajax','component','com_ajax',NULL,'',1,1,1,1,1,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"2013-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}','','',NULL,NULL,0,0,NULL),
(28,0,'com_postinstall','component','com_postinstall',NULL,'',1,1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"2013-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Postinstall\"}','','',NULL,NULL,0,0,NULL),
(29,0,'com_fields','component','com_fields',NULL,'',1,1,1,0,1,'{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Fields\",\"filename\":\"fields\"}','','',NULL,NULL,0,0,NULL),
(30,0,'com_associations','component','com_associations',NULL,'',1,1,1,0,1,'{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Associations\"}','','',NULL,NULL,0,0,NULL),
(31,0,'com_privacy','component','com_privacy',NULL,'',1,1,1,0,1,'{\"name\":\"com_privacy\",\"type\":\"component\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Privacy\",\"filename\":\"privacy\"}','','',NULL,NULL,0,0,NULL),
(32,0,'com_actionlogs','component','com_actionlogs',NULL,'',1,1,1,0,1,'{\"name\":\"com_actionlogs\",\"type\":\"component\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Actionlogs\"}','{\"ip_logging\":0,\"csv_delimiter\":\",\",\"loggable_extensions\":[\"com_banners\",\"com_cache\",\"com_categories\",\"com_checkin\",\"com_config\",\"com_contact\",\"com_content\",\"com_fields\",\"com_installer\",\"com_media\",\"com_menus\",\"com_messages\",\"com_modules\",\"com_newsfeeds\",\"com_plugins\",\"com_redirect\",\"com_scheduler\",\"com_tags\",\"com_templates\",\"com_users\"]}','',NULL,NULL,0,0,NULL),
(33,0,'com_workflow','component','com_workflow',NULL,'',1,1,0,1,1,'{\"name\":\"com_workflow\",\"type\":\"component\",\"creationDate\":\"2017-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WORKFLOW_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Workflow\"}','{}','',NULL,NULL,0,0,NULL),
(34,0,'com_mails','component','com_mails',NULL,'',1,1,1,1,1,'{\"name\":\"com_mails\",\"type\":\"component\",\"creationDate\":\"2019-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MAILS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Mails\"}','','',NULL,NULL,0,0,NULL),
(35,0,'com_scheduler','component','com_scheduler',NULL,'',1,1,1,0,1,'{\"name\":\"com_scheduler\",\"type\":\"component\",\"creationDate\":\"2021-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"COM_SCHEDULER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Scheduler\"}','{}','',NULL,NULL,0,0,NULL),
(36,0,'com_guidedtours','component','com_guidedtours',NULL,'',1,1,0,0,1,'{\"name\":\"com_guidedtours\",\"type\":\"component\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"COM_GUIDEDTOURS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Guidedtours\"}','{}','',NULL,NULL,0,0,NULL),
(37,0,'lib_joomla','library','joomla',NULL,'',0,1,1,1,1,'{\"name\":\"lib_joomla\",\"type\":\"library\",\"creationDate\":\"2008-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','',NULL,NULL,0,0,NULL),
(38,0,'lib_phpass','library','phpass',NULL,'',0,1,1,1,1,'{\"name\":\"lib_phpass\",\"type\":\"library\",\"creationDate\":\"2004-01\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"https:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}','','',NULL,NULL,0,0,NULL),
(39,0,'mod_articles_archive','module','mod_articles_archive',NULL,'',0,1,1,0,1,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesArchive\",\"filename\":\"mod_articles_archive\"}','','',NULL,NULL,0,0,NULL),
(40,0,'mod_articles_latest','module','mod_articles_latest',NULL,'',0,1,1,0,1,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesLatest\",\"filename\":\"mod_articles_latest\"}','','',NULL,NULL,0,0,NULL),
(41,0,'mod_articles_popular','module','mod_articles_popular',NULL,'',0,1,1,0,1,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesPopular\",\"filename\":\"mod_articles_popular\"}','','',NULL,NULL,0,0,NULL),
(42,0,'mod_banners','module','mod_banners',NULL,'',0,1,1,0,1,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Banners\",\"filename\":\"mod_banners\"}','','',NULL,NULL,0,0,NULL),
(43,0,'mod_breadcrumbs','module','mod_breadcrumbs',NULL,'',0,1,1,0,1,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Breadcrumbs\",\"filename\":\"mod_breadcrumbs\"}','','',NULL,NULL,0,0,NULL),
(44,0,'mod_custom','module','mod_custom',NULL,'',0,1,1,0,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Custom\",\"filename\":\"mod_custom\"}','','',NULL,NULL,0,0,NULL),
(45,0,'mod_feed','module','mod_feed',NULL,'',0,1,1,0,1,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"2005-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Feed\",\"filename\":\"mod_feed\"}','','',NULL,NULL,0,0,NULL),
(46,0,'mod_footer','module','mod_footer',NULL,'',0,1,1,0,1,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Footer\",\"filename\":\"mod_footer\"}','','',NULL,NULL,0,0,NULL),
(47,0,'mod_login','module','mod_login',NULL,'',0,1,1,0,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Login\",\"filename\":\"mod_login\"}','','',NULL,NULL,0,0,NULL),
(48,0,'mod_menu','module','mod_menu',NULL,'',0,1,1,0,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Menu\",\"filename\":\"mod_menu\"}','','',NULL,NULL,0,0,NULL),
(49,0,'mod_articles_news','module','mod_articles_news',NULL,'',0,1,1,0,1,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesNews\",\"filename\":\"mod_articles_news\"}','','',NULL,NULL,0,0,NULL),
(50,0,'mod_random_image','module','mod_random_image',NULL,'',0,1,1,0,1,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\RandomImage\",\"filename\":\"mod_random_image\"}','','',NULL,NULL,0,0,NULL),
(51,0,'mod_related_items','module','mod_related_items',NULL,'',0,1,1,0,1,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\RelatedItems\",\"filename\":\"mod_related_items\"}','','',NULL,NULL,0,0,NULL),
(52,0,'mod_stats','module','mod_stats',NULL,'',0,1,1,0,1,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Stats\",\"filename\":\"mod_stats\"}','','',NULL,NULL,0,0,NULL),
(53,0,'mod_syndicate','module','mod_syndicate',NULL,'',0,1,1,0,1,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"2006-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Syndicate\",\"filename\":\"mod_syndicate\"}','','',NULL,NULL,0,0,NULL),
(54,0,'mod_users_latest','module','mod_users_latest',NULL,'',0,1,1,0,1,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"2009-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\UsersLatest\",\"filename\":\"mod_users_latest\"}','','',NULL,NULL,0,0,NULL),
(55,0,'mod_whosonline','module','mod_whosonline',NULL,'',0,1,1,0,1,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Whosonline\",\"filename\":\"mod_whosonline\"}','','',NULL,NULL,0,0,NULL),
(56,0,'mod_wrapper','module','mod_wrapper',NULL,'',0,1,1,0,1,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"2004-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Wrapper\",\"filename\":\"mod_wrapper\"}','','',NULL,NULL,0,0,NULL),
(57,0,'mod_articles_category','module','mod_articles_category',NULL,'',0,1,1,0,1,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesCategory\",\"filename\":\"mod_articles_category\"}','','',NULL,NULL,0,0,NULL),
(58,0,'mod_articles_categories','module','mod_articles_categories',NULL,'',0,1,1,0,1,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesCategories\",\"filename\":\"mod_articles_categories\"}','','',NULL,NULL,0,0,NULL),
(59,0,'mod_languages','module','mod_languages',NULL,'',0,1,1,0,1,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Languages\",\"filename\":\"mod_languages\"}','','',NULL,NULL,0,0,NULL),
(60,0,'mod_finder','module','mod_finder',NULL,'',0,1,0,0,1,'{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Finder\",\"filename\":\"mod_finder\"}','','',NULL,NULL,0,0,NULL),
(61,0,'mod_custom','module','mod_custom',NULL,'',1,1,1,0,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Custom\",\"filename\":\"mod_custom\"}','','',NULL,NULL,0,0,NULL),
(62,0,'mod_feed','module','mod_feed',NULL,'',1,1,1,0,1,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"2005-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Feed\",\"filename\":\"mod_feed\"}','','',NULL,NULL,0,0,NULL),
(63,0,'mod_latest','module','mod_latest',NULL,'',1,1,1,0,1,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Latest\",\"filename\":\"mod_latest\"}','','',NULL,NULL,0,0,NULL),
(64,0,'mod_logged','module','mod_logged',NULL,'',1,1,1,0,1,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"2005-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Logged\",\"filename\":\"mod_logged\"}','','',NULL,NULL,0,0,NULL),
(65,0,'mod_login','module','mod_login',NULL,'',1,1,1,0,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"2005-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Login\",\"filename\":\"mod_login\"}','','',NULL,NULL,0,0,NULL),
(66,0,'mod_loginsupport','module','mod_loginsupport',NULL,'',1,1,1,0,1,'{\"name\":\"mod_loginsupport\",\"type\":\"module\",\"creationDate\":\"2019-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_LOGINSUPPORT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Loginsupport\",\"filename\":\"mod_loginsupport\"}','','',NULL,NULL,0,0,NULL),
(67,0,'mod_menu','module','mod_menu',NULL,'',1,1,1,0,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"2006-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Menu\",\"filename\":\"mod_menu\"}','','',NULL,NULL,0,0,NULL),
(68,0,'mod_popular','module','mod_popular',NULL,'',1,1,1,0,1,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Popular\",\"filename\":\"mod_popular\"}','','',NULL,NULL,0,0,NULL),
(69,0,'mod_quickicon','module','mod_quickicon',NULL,'',1,1,1,0,1,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Quickicon\",\"filename\":\"mod_quickicon\"}','','',NULL,NULL,0,0,NULL),
(70,0,'mod_frontend','module','mod_frontend',NULL,'',1,1,1,0,1,'{\"name\":\"mod_frontend\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_FRONTEND_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Frontend\",\"filename\":\"mod_frontend\"}','','',NULL,NULL,0,0,NULL),
(71,0,'mod_messages','module','mod_messages',NULL,'',1,1,1,0,1,'{\"name\":\"mod_messages\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Messages\",\"filename\":\"mod_messages\"}','','',NULL,NULL,0,0,NULL),
(72,0,'mod_post_installation_messages','module','mod_post_installation_messages',NULL,'',1,1,1,0,1,'{\"name\":\"mod_post_installation_messages\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_POST_INSTALLATION_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PostInstallationMessages\",\"filename\":\"mod_post_installation_messages\"}','','',NULL,NULL,0,0,NULL),
(73,0,'mod_user','module','mod_user',NULL,'',1,1,1,0,1,'{\"name\":\"mod_user\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_USER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\User\",\"filename\":\"mod_user\"}','','',NULL,NULL,0,0,NULL),
(74,0,'mod_title','module','mod_title',NULL,'',1,1,1,0,1,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Title\",\"filename\":\"mod_title\"}','','',NULL,NULL,0,0,NULL),
(75,0,'mod_toolbar','module','mod_toolbar',NULL,'',1,1,1,0,1,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Toolbar\",\"filename\":\"mod_toolbar\"}','','',NULL,NULL,0,0,NULL),
(76,0,'mod_multilangstatus','module','mod_multilangstatus',NULL,'',1,1,1,0,1,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"2011-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\MultilangStatus\",\"filename\":\"mod_multilangstatus\"}','{\"cache\":\"0\"}','',NULL,NULL,0,0,NULL),
(77,0,'mod_version','module','mod_version',NULL,'',1,1,1,0,1,'{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"2012-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Version\",\"filename\":\"mod_version\"}','{\"cache\":\"0\"}','',NULL,NULL,0,0,NULL),
(78,0,'mod_stats_admin','module','mod_stats_admin',NULL,'',1,1,1,0,1,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\StatsAdmin\",\"filename\":\"mod_stats_admin\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','',NULL,NULL,0,0,NULL),
(79,0,'mod_tags_popular','module','mod_tags_popular',NULL,'',0,1,1,0,1,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"2013-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\TagsPopular\",\"filename\":\"mod_tags_popular\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','',NULL,NULL,0,0,NULL),
(80,0,'mod_tags_similar','module','mod_tags_similar',NULL,'',0,1,1,0,1,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"2013-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\TagsSimilar\",\"filename\":\"mod_tags_similar\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','',NULL,NULL,0,0,NULL),
(81,0,'mod_sampledata','module','mod_sampledata',NULL,'',1,1,1,0,1,'{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"2017-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Sampledata\",\"filename\":\"mod_sampledata\"}','{}','',NULL,NULL,0,0,NULL),
(82,0,'mod_latestactions','module','mod_latestactions',NULL,'',1,1,1,0,1,'{\"name\":\"mod_latestactions\",\"type\":\"module\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_LATESTACTIONS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\LatestActions\",\"filename\":\"mod_latestactions\"}','{}','',NULL,NULL,0,0,NULL),
(83,0,'mod_privacy_dashboard','module','mod_privacy_dashboard',NULL,'',1,1,1,0,1,'{\"name\":\"mod_privacy_dashboard\",\"type\":\"module\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_PRIVACY_DASHBOARD_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PrivacyDashboard\",\"filename\":\"mod_privacy_dashboard\"}','{}','',NULL,NULL,0,0,NULL),
(84,0,'mod_submenu','module','mod_submenu',NULL,'',1,1,1,0,1,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"2006-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Submenu\",\"filename\":\"mod_submenu\"}','{}','',NULL,NULL,0,0,NULL),
(85,0,'mod_privacy_status','module','mod_privacy_status',NULL,'',1,1,1,0,1,'{\"name\":\"mod_privacy_status\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_PRIVACY_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PrivacyStatus\",\"filename\":\"mod_privacy_status\"}','{}','',NULL,NULL,0,0,NULL),
(86,0,'mod_guidedtours','module','mod_guidedtours',NULL,'',1,1,1,0,1,'{\"name\":\"mod_guidedtours\",\"type\":\"module\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"MOD_GUIDEDTOURS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\GuidedTours\",\"filename\":\"mod_guidedtours\"}','{}','',NULL,NULL,0,0,NULL),
(87,0,'plg_actionlog_joomla','plugin','joomla',NULL,'actionlog',0,1,1,0,1,'{\"name\":\"plg_actionlog_joomla\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_ACTIONLOG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Actionlog\\\\Joomla\",\"filename\":\"joomla\"}','{}','',NULL,NULL,1,0,NULL),
(88,0,'plg_api-authentication_basic','plugin','basic',NULL,'api-authentication',0,0,1,0,1,'{\"name\":\"plg_api-authentication_basic\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_BASIC_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\ApiAuthentication\\\\Basic\",\"filename\":\"basic\"}','{}','',NULL,NULL,1,0,NULL),
(89,0,'plg_api-authentication_token','plugin','token',NULL,'api-authentication',0,1,1,0,1,'{\"name\":\"plg_api-authentication_token\",\"type\":\"plugin\",\"creationDate\":\"2019-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\ApiAuthentication\\\\Token\",\"filename\":\"token\"}','{}','',NULL,NULL,2,0,NULL),
(90,0,'plg_authentication_cookie','plugin','cookie',NULL,'authentication',0,1,1,0,1,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"2013-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Cookie\",\"filename\":\"cookie\"}','','',NULL,NULL,1,0,NULL),
(91,0,'plg_authentication_joomla','plugin','joomla',NULL,'authentication',0,1,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Joomla\",\"filename\":\"joomla\"}','','',NULL,NULL,2,0,NULL),
(92,0,'plg_authentication_ldap','plugin','ldap',NULL,'authentication',0,0,1,0,1,'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Ldap\",\"filename\":\"ldap\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','',NULL,NULL,3,0,NULL),
(93,0,'plg_behaviour_compat','plugin','compat',NULL,'behaviour',0,1,1,0,1,'{\"name\":\"plg_behaviour_compat\",\"type\":\"plugin\",\"creationDate\":\"2023-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_COMPAT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Compat\",\"filename\":\"compat\"}','{\"classes_aliases\":\"1\",\"es5_assets\":\"1\"}','',NULL,NULL,1,0,NULL),
(94,0,'plg_behaviour_taggable','plugin','taggable',NULL,'behaviour',0,1,1,0,1,'{\"name\":\"plg_behaviour_taggable\",\"type\":\"plugin\",\"creationDate\":\"2015-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_TAGGABLE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Taggable\",\"filename\":\"taggable\"}','{}','',NULL,NULL,2,0,NULL),
(95,0,'plg_behaviour_versionable','plugin','versionable',NULL,'behaviour',0,1,1,0,1,'{\"name\":\"plg_behaviour_versionable\",\"type\":\"plugin\",\"creationDate\":\"2015-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_VERSIONABLE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Versionable\",\"filename\":\"versionable\"}','{}','',NULL,NULL,3,0,NULL),
(96,0,'plg_content_confirmconsent','plugin','confirmconsent',NULL,'content',0,0,1,0,1,'{\"name\":\"plg_content_confirmconsent\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_CONTENT_CONFIRMCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\ConfirmConsent\",\"filename\":\"confirmconsent\"}','{}','',NULL,NULL,1,0,NULL),
(97,0,'plg_content_contact','plugin','contact',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"2014-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2014 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Contact\",\"filename\":\"contact\"}','','',NULL,NULL,2,0,NULL),
(98,0,'plg_content_emailcloak','plugin','emailcloak',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\EmailCloak\",\"filename\":\"emailcloak\"}','{\"mode\":\"1\"}','',NULL,NULL,3,0,NULL),
(99,0,'plg_content_fields','plugin','fields',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Fields\",\"filename\":\"fields\"}','','',NULL,NULL,4,0,NULL),
(100,0,'plg_content_finder','plugin','finder',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"2011-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Finder\",\"filename\":\"finder\"}','','',NULL,NULL,5,0,NULL),
(101,0,'plg_content_joomla','plugin','joomla',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"2010-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Joomla\",\"filename\":\"joomla\"}','','',NULL,NULL,6,0,NULL),
(102,0,'plg_content_loadmodule','plugin','loadmodule',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\LoadModule\",\"filename\":\"loadmodule\"}','{\"style\":\"xhtml\"}','',NULL,NULL,7,0,NULL),
(103,0,'plg_content_pagebreak','plugin','pagebreak',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\PageBreak\",\"filename\":\"pagebreak\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','',NULL,NULL,8,0,NULL),
(104,0,'plg_content_pagenavigation','plugin','pagenavigation',NULL,'content',0,1,1,0,1,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"2006-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\PageNavigation\",\"filename\":\"pagenavigation\"}','{\"position\":\"1\"}','',NULL,NULL,9,0,NULL),
(105,0,'plg_content_vote','plugin','vote',NULL,'content',0,0,1,0,1,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Vote\",\"filename\":\"vote\"}','','',NULL,NULL,10,0,NULL),
(106,0,'plg_editors-xtd_article','plugin','article',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"2009-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Article\",\"filename\":\"article\"}','','',NULL,NULL,1,0,NULL),
(107,0,'plg_editors-xtd_contact','plugin','contact',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"2016-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Contact\",\"filename\":\"contact\"}','','',NULL,NULL,2,0,NULL),
(108,0,'plg_editors-xtd_fields','plugin','fields',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Fields\",\"filename\":\"fields\"}','','',NULL,NULL,3,0,NULL),
(109,0,'plg_editors-xtd_image','plugin','image',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"2004-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Image\",\"filename\":\"image\"}','','',NULL,NULL,4,0,NULL),
(110,0,'plg_editors-xtd_menu','plugin','menu',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"2016-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Menu\",\"filename\":\"menu\"}','','',NULL,NULL,5,0,NULL),
(111,0,'plg_editors-xtd_module','plugin','module',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"2015-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2015 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Module\",\"filename\":\"module\"}','','',NULL,NULL,6,0,NULL),
(112,0,'plg_editors-xtd_pagebreak','plugin','pagebreak',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"2004-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\PageBreak\",\"filename\":\"pagebreak\"}','','',NULL,NULL,7,0,NULL),
(113,0,'plg_editors-xtd_readmore','plugin','readmore',NULL,'editors-xtd',0,1,1,0,1,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"2006-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\ReadMore\",\"filename\":\"readmore\"}','','',NULL,NULL,8,0,NULL),
(114,0,'plg_editors_codemirror','plugin','codemirror',NULL,'editors',0,1,1,0,1,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2021 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"https:\\/\\/codemirror.net\\/\",\"version\":\"6.0.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\CodeMirror\",\"filename\":\"codemirror\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','',NULL,NULL,1,0,NULL),
(115,0,'plg_editors_none','plugin','none',NULL,'editors',0,1,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"2005-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\None\",\"filename\":\"none\"}','','',NULL,NULL,2,0,NULL),
(116,0,'plg_editors_tinymce','plugin','tinymce',NULL,'editors',0,1,1,0,1,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-08\",\"author\":\"Tiny Technologies, Inc\",\"copyright\":\"Tiny Technologies, Inc\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"https:\\/\\/www.tiny.cloud\",\"version\":\"6.8.3\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\TinyMCE\",\"filename\":\"tinymce\"}','{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"blocks\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styles\",\"|\",\"blocks\",\"fontfamily\",\"fontsize\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"jtemplate\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}','',NULL,NULL,3,0,NULL),
(117,0,'plg_extension_finder','plugin','finder',NULL,'extension',0,1,1,0,1,'{\"name\":\"plg_extension_finder\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\Finder\",\"filename\":\"finder\"}','','',NULL,NULL,1,0,NULL),
(118,0,'plg_extension_joomla','plugin','joomla',NULL,'extension',0,1,1,0,1,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"2010-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\Joomla\",\"filename\":\"joomla\"}','','',NULL,NULL,2,0,NULL),
(119,0,'plg_extension_namespacemap','plugin','namespacemap',NULL,'extension',0,1,1,1,1,'{\"name\":\"plg_extension_namespacemap\",\"type\":\"plugin\",\"creationDate\":\"2017-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_NAMESPACEMAP_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\NamespaceMap\",\"filename\":\"namespacemap\"}','{}','',NULL,NULL,3,0,NULL),
(120,0,'plg_fields_calendar','plugin','calendar',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Calendar\",\"filename\":\"calendar\"}','','',NULL,NULL,1,0,NULL),
(121,0,'plg_fields_checkboxes','plugin','checkboxes',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Checkboxes\",\"filename\":\"checkboxes\"}','','',NULL,NULL,2,0,NULL),
(122,0,'plg_fields_color','plugin','color',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Color\",\"filename\":\"color\"}','','',NULL,NULL,3,0,NULL),
(123,0,'plg_fields_editor','plugin','editor',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Editor\",\"filename\":\"editor\"}','{\"buttons\":0,\"width\":\"100%\",\"height\":\"250px\",\"filter\":\"\\\\Joomla\\\\CMS\\\\Component\\\\ComponentHelper::filterText\"}','',NULL,NULL,4,0,NULL),
(124,0,'plg_fields_imagelist','plugin','imagelist',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Imagelist\",\"filename\":\"imagelist\"}','','',NULL,NULL,5,0,NULL),
(125,0,'plg_fields_integer','plugin','integer',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Integer\",\"filename\":\"integer\"}','{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}','',NULL,NULL,6,0,NULL),
(126,0,'plg_fields_list','plugin','list',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\ListField\",\"filename\":\"list\"}','','',NULL,NULL,7,0,NULL),
(127,0,'plg_fields_media','plugin','media',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Media\",\"filename\":\"media\"}','','',NULL,NULL,8,0,NULL),
(128,0,'plg_fields_radio','plugin','radio',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Radio\",\"filename\":\"radio\"}','','',NULL,NULL,9,0,NULL),
(129,0,'plg_fields_sql','plugin','sql',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\SQL\",\"filename\":\"sql\"}','','',NULL,NULL,10,0,NULL),
(130,0,'plg_fields_subform','plugin','subform',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_subform\",\"type\":\"plugin\",\"creationDate\":\"2017-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FIELDS_SUBFORM_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Subform\",\"filename\":\"subform\"}','','',NULL,NULL,11,0,NULL),
(131,0,'plg_fields_text','plugin','text',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Text\",\"filename\":\"text\"}','','',NULL,NULL,12,0,NULL),
(132,0,'plg_fields_textarea','plugin','textarea',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Textarea\",\"filename\":\"textarea\"}','{\"rows\":10,\"cols\":10,\"maxlength\":\"\",\"filter\":\"\\\\Joomla\\\\CMS\\\\Component\\\\ComponentHelper::filterText\"}','',NULL,NULL,13,0,NULL),
(133,0,'plg_fields_url','plugin','url',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Url\",\"filename\":\"url\"}','','',NULL,NULL,14,0,NULL),
(134,0,'plg_fields_user','plugin','user',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\User\",\"filename\":\"user\"}','','',NULL,NULL,15,0,NULL),
(135,0,'plg_fields_usergrouplist','plugin','usergrouplist',NULL,'fields',0,1,1,0,1,'{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\UsergroupList\",\"filename\":\"usergrouplist\"}','','',NULL,NULL,16,0,NULL),
(136,0,'plg_filesystem_local','plugin','local',NULL,'filesystem',0,1,1,0,1,'{\"name\":\"plg_filesystem_local\",\"type\":\"plugin\",\"creationDate\":\"2017-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FILESYSTEM_LOCAL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Filesystem\\\\Local\",\"filename\":\"local\"}','{}','',NULL,NULL,1,0,NULL),
(137,0,'plg_finder_categories','plugin','categories',NULL,'finder',0,1,1,0,1,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Categories\",\"filename\":\"categories\"}','','',NULL,NULL,1,0,NULL),
(138,0,'plg_finder_contacts','plugin','contacts',NULL,'finder',0,1,1,0,1,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Contacts\",\"filename\":\"contacts\"}','','',NULL,NULL,2,0,NULL),
(139,0,'plg_finder_content','plugin','content',NULL,'finder',0,1,1,0,1,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Content\",\"filename\":\"content\"}','','',NULL,NULL,3,0,NULL),
(140,0,'plg_finder_newsfeeds','plugin','newsfeeds',NULL,'finder',0,1,1,0,1,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}','','',NULL,NULL,4,0,NULL),
(141,0,'plg_finder_tags','plugin','tags',NULL,'finder',0,1,1,0,1,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"2013-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Tags\",\"filename\":\"tags\"}','','',NULL,NULL,5,0,NULL),
(142,0,'plg_installer_folderinstaller','plugin','folderinstaller',NULL,'installer',0,1,1,0,1,'{\"name\":\"plg_installer_folderinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Folder\",\"filename\":\"folderinstaller\"}','','',NULL,NULL,2,0,NULL),
(143,0,'plg_installer_override','plugin','override',NULL,'installer',0,1,1,0,1,'{\"name\":\"plg_installer_override\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_OVERRIDE_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Override\",\"filename\":\"override\"}','','',NULL,NULL,4,0,NULL),
(144,0,'plg_installer_packageinstaller','plugin','packageinstaller',NULL,'installer',0,1,1,0,1,'{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Package\",\"filename\":\"packageinstaller\"}','','',NULL,NULL,1,0,NULL),
(145,0,'plg_installer_urlinstaller','plugin','urlinstaller',NULL,'installer',0,1,1,0,1,'{\"name\":\"plg_installer_urlinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Url\",\"filename\":\"urlinstaller\"}','','',NULL,NULL,3,0,NULL),
(146,0,'plg_installer_webinstaller','plugin','webinstaller',NULL,'installer',0,1,1,0,1,'{\"name\":\"plg_installer_webinstaller\",\"type\":\"plugin\",\"creationDate\":\"2017-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Web\",\"filename\":\"webinstaller\"}','{\"tab_position\":\"1\"}','',NULL,NULL,5,0,NULL),
(147,0,'plg_media-action_crop','plugin','crop',NULL,'media-action',0,1,1,0,1,'{\"name\":\"plg_media-action_crop\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_CROP_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Crop\",\"filename\":\"crop\"}','{}','',NULL,NULL,1,0,NULL),
(148,0,'plg_media-action_resize','plugin','resize',NULL,'media-action',0,1,1,0,1,'{\"name\":\"plg_media-action_resize\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_RESIZE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Resize\",\"filename\":\"resize\"}','{}','',NULL,NULL,2,0,NULL),
(149,0,'plg_media-action_rotate','plugin','rotate',NULL,'media-action',0,1,1,0,1,'{\"name\":\"plg_media-action_rotate\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_ROTATE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Rotate\",\"filename\":\"rotate\"}','{}','',NULL,NULL,3,0,NULL),
(150,0,'plg_privacy_actionlogs','plugin','actionlogs',NULL,'privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Actionlogs\",\"filename\":\"actionlogs\"}','{}','',NULL,NULL,1,0,NULL),
(151,0,'plg_privacy_consents','plugin','consents',NULL,'privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_consents\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONSENTS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Consents\",\"filename\":\"consents\"}','{}','',NULL,NULL,2,0,NULL),
(152,0,'plg_privacy_contact','plugin','contact',NULL,'privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_contact\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Contact\",\"filename\":\"contact\"}','{}','',NULL,NULL,3,0,NULL),
(153,0,'plg_privacy_content','plugin','content',NULL,'privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_content\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Content\",\"filename\":\"content\"}','{}','',NULL,NULL,4,0,NULL),
(154,0,'plg_privacy_message','plugin','message',NULL,'privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_message\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_MESSAGE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Message\",\"filename\":\"message\"}','{}','',NULL,NULL,5,0,NULL),
(155,0,'plg_privacy_user','plugin','user',NULL,'privacy',0,1,1,0,1,'{\"name\":\"plg_privacy_user\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_USER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\User\",\"filename\":\"user\"}','{}','',NULL,NULL,6,0,NULL),
(156,0,'plg_quickicon_joomlaupdate','plugin','joomlaupdate',NULL,'quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Joomlaupdate\",\"filename\":\"joomlaupdate\"}','','',NULL,NULL,1,0,NULL),
(157,0,'plg_quickicon_extensionupdate','plugin','extensionupdate',NULL,'quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Extensionupdate\",\"filename\":\"extensionupdate\"}','','',NULL,NULL,2,0,NULL),
(158,0,'plg_quickicon_overridecheck','plugin','overridecheck',NULL,'quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_overridecheck\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_OVERRIDECHECK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\OverrideCheck\",\"filename\":\"overridecheck\"}','','',NULL,NULL,3,0,NULL),
(159,0,'plg_quickicon_downloadkey','plugin','downloadkey',NULL,'quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_downloadkey\",\"type\":\"plugin\",\"creationDate\":\"2019-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_DOWNLOADKEY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Downloadkey\",\"filename\":\"downloadkey\"}','','',NULL,NULL,4,0,NULL),
(160,0,'plg_quickicon_privacycheck','plugin','privacycheck',NULL,'quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_privacycheck\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_QUICKICON_PRIVACYCHECK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\PrivacyCheck\",\"filename\":\"privacycheck\"}','{}','',NULL,NULL,5,0,NULL),
(161,0,'plg_quickicon_phpversioncheck','plugin','phpversioncheck',NULL,'quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"2016-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\PhpVersionCheck\",\"filename\":\"phpversioncheck\"}','','',NULL,NULL,6,0,NULL),
(162,0,'plg_quickicon_eos','plugin','eos',NULL,'quickicon',0,1,1,0,1,'{\"name\":\"plg_quickicon_eos\",\"type\":\"plugin\",\"creationDate\":\"2023-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.4.0\",\"description\":\"PLG_QUICKICON_EOS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Eos\",\"filename\":\"eos\"}','','',NULL,NULL,7,0,NULL),
(163,0,'plg_sampledata_blog','plugin','blog',NULL,'sampledata',0,1,1,0,1,'{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"2017-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\SampleData\\\\Blog\",\"filename\":\"blog\"}','','',NULL,NULL,1,0,NULL),
(164,0,'plg_sampledata_multilang','plugin','multilang',NULL,'sampledata',0,1,1,0,1,'{\"name\":\"plg_sampledata_multilang\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SAMPLEDATA_MULTILANG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\SampleData\\\\MultiLanguage\",\"filename\":\"multilang\"}','','',NULL,NULL,2,0,NULL),
(165,0,'plg_schemaorg_article','plugin','article',NULL,'schemaorg',0,1,1,0,0,'{\"name\":\"plg_schemaorg_article\",\"type\":\"plugin\",\"creationDate\":\"2024-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2024 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.0\",\"description\":\"PLG_SCHEMAORG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Article\",\"filename\":\"article\"}','{}','',NULL,NULL,1,0,NULL),
(166,0,'plg_schemaorg_blogposting','plugin','blogposting',NULL,'schemaorg',0,1,1,0,0,'{\"name\":\"plg_schemaorg_blogposting\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_BLOGPOSTING_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\BlogPosting\",\"filename\":\"blogposting\"}','{}','',NULL,NULL,2,0,NULL),
(167,0,'plg_schemaorg_book','plugin','book',NULL,'schemaorg',0,1,1,0,0,'{\"name\":\"plg_schemaorg_book\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_BOOK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Book\",\"filename\":\"book\"}','{}','',NULL,NULL,3,0,NULL),
(168,0,'plg_schemaorg_event','plugin','event',NULL,'schemaorg',0,1,1,0,0,'{\"name\":\"plg_schemaorg_event\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_EVENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Event\",\"filename\":\"event\"}','{}','',NULL,NULL,4,0,NULL),
(169,0,'plg_schemaorg_jobposting','plugin','jobposting',NULL,'schemaorg',0,1,1,0,0,'{\"name\":\"plg_schemaorg_jobposting\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_JOBPOSTING_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\JobPosting\",\"filename\":\"jobposting\"}','{}','',NULL,NULL,5,0,NULL),
(170,0,'plg_schemaorg_organization','plugin','organization',NULL,'schemaorg',0,1,1,0,0,'{\"name\":\"plg_schemaorg_organization\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_ORGANIZATION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Organization\",\"filename\":\"organization\"}','{}','',NULL,NULL,6,0,NULL),
(171,0,'plg_schemaorg_person','plugin','person',NULL,'schemaorg',0,1,1,0,0,'{\"name\":\"plg_schemaorg_person\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_PERSON_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Person\",\"filename\":\"person\"}','{}','',NULL,NULL,7,0,NULL),
(172,0,'plg_schemaorg_recipe','plugin','recipe',NULL,'schemaorg',0,1,1,0,0,'{\"name\":\"plg_schemaorg_recipe\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_RECIPE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Recipe\",\"filename\":\"recipe\"}','{}','',NULL,NULL,8,0,NULL),
(173,0,'plg_schemaorg_custom','plugin','custom',NULL,'schemaorg',0,1,1,0,0,'{\"name\":\"plg_schemaorg_custom\",\"type\":\"plugin\",\"creationDate\":\"2024-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2024 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.0\",\"description\":\"PLG_SCHEMAORG_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Custom\",\"filename\":\"custom\"}','{}','',NULL,NULL,9,0,NULL),
(174,0,'plg_system_accessibility','plugin','accessibility',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_accessibility\",\"type\":\"plugin\",\"creationDate\":\"2020-02-15\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_ACCESSIBILITY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Accessibility\",\"filename\":\"accessibility\"}','{}','',NULL,NULL,1,0,NULL),
(175,0,'plg_system_actionlogs','plugin','actionlogs',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\ActionLogs\",\"filename\":\"actionlogs\"}','{}','',NULL,NULL,2,0,NULL),
(176,0,'plg_system_cache','plugin','cache',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"2007-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Cache\",\"filename\":\"cache\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','',NULL,NULL,3,0,NULL),
(177,0,'plg_system_debug','plugin','debug',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"2006-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Debug\",\"filename\":\"debug\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','',NULL,NULL,4,0,NULL),
(178,0,'plg_system_fields','plugin','fields',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Fields\",\"filename\":\"fields\"}','','',NULL,NULL,5,0,NULL),
(179,0,'plg_system_highlight','plugin','highlight',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Highlight\",\"filename\":\"highlight\"}','','',NULL,NULL,6,0,NULL),
(180,0,'plg_system_httpheaders','plugin','httpheaders',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_httpheaders\",\"type\":\"plugin\",\"creationDate\":\"2017-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_HTTPHEADERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Httpheaders\",\"filename\":\"httpheaders\"}','{}','',NULL,NULL,7,0,NULL),
(181,0,'plg_system_jooa11y','plugin','jooa11y',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_jooa11y\",\"type\":\"plugin\",\"creationDate\":\"2022-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_SYSTEM_JOOA11Y_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Jooa11y\",\"filename\":\"jooa11y\"}','','',NULL,NULL,8,0,NULL),
(182,0,'plg_system_languagecode','plugin','languagecode',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"2011-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\LanguageCode\",\"filename\":\"languagecode\"}','','',NULL,NULL,9,0,NULL),
(183,0,'plg_system_languagefilter','plugin','languagefilter',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"2010-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\LanguageFilter\",\"filename\":\"languagefilter\"}','','',NULL,NULL,10,0,NULL),
(184,0,'plg_system_log','plugin','log',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"2007-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Log\",\"filename\":\"log\"}','','',NULL,NULL,11,0,NULL),
(185,0,'plg_system_logout','plugin','logout',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"2009-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Logout\",\"filename\":\"logout\"}','','',NULL,NULL,12,0,NULL),
(186,0,'plg_system_privacyconsent','plugin','privacyconsent',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"2018-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\PrivacyConsent\",\"filename\":\"privacyconsent\"}','{}','',NULL,NULL,14,0,NULL),
(187,0,'plg_system_redirect','plugin','redirect',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"2009-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Redirect\",\"filename\":\"redirect\"}','','',NULL,NULL,15,0,NULL),
(188,0,'plg_system_remember','plugin','remember',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"2007-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Remember\",\"filename\":\"remember\"}','','',NULL,NULL,16,0,NULL),
(189,0,'plg_system_schedulerunner','plugin','schedulerunner',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_schedulerunner\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_SCHEDULERUNNER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\ScheduleRunner\",\"filename\":\"schedulerunner\"}','{}','',NULL,NULL,17,0,NULL),
(190,0,'plg_system_schemaorg','plugin','schemaorg',NULL,'system',0,1,1,0,0,'{\"name\":\"plg_system_schemaorg\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SYSTEM_SCHEMAORG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Schemaorg\",\"filename\":\"schemaorg\"}','{}','',NULL,NULL,18,0,NULL),
(191,0,'plg_system_sef','plugin','sef',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"2007-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Sef\",\"filename\":\"sef\"}','','',NULL,NULL,19,0,NULL),
(192,0,'plg_system_shortcut','plugin','shortcut',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_shortcut\",\"type\":\"plugin\",\"creationDate\":\"2022-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_SYSTEM_SHORTCUT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Shortcut\",\"filename\":\"shortcut\"}','{}','',NULL,NULL,21,0,NULL),
(193,0,'plg_system_skipto','plugin','skipto',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_skipto\",\"type\":\"plugin\",\"creationDate\":\"2020-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_SKIPTO_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Skipto\",\"filename\":\"skipto\"}','{}','',NULL,NULL,22,0,NULL),
(194,0,'plg_system_stats','plugin','stats',NULL,'system',0,0,1,0,1,'{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"2013-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Stats\",\"filename\":\"stats\"}','{\"mode\":3,\"lastrun\":1719500068,\"unique_id\":\"7cecc7b15341d81e6074c7f67b02893a298f308f\",\"interval\":12}','',NULL,NULL,23,0,NULL),
(195,0,'plg_system_task_notification','plugin','tasknotification',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_task_notification\",\"type\":\"plugin\",\"creationDate\":\"2021-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_TASK_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\TaskNotification\",\"filename\":\"tasknotification\"}','','',NULL,NULL,24,0,NULL),
(196,0,'plg_system_webauthn','plugin','webauthn',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_webauthn\",\"type\":\"plugin\",\"creationDate\":\"2019-07-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_WEBAUTHN_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Webauthn\",\"filename\":\"webauthn\"}','{}','',NULL,NULL,26,0,NULL),
(197,0,'plg_task_check_files','plugin','checkfiles',NULL,'task',0,1,1,0,1,'{\"name\":\"plg_task_check_files\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_CHECK_FILES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Checkfiles\",\"filename\":\"checkfiles\"}','{}','',NULL,NULL,1,0,NULL),
(198,0,'plg_task_deleteactionlogs','plugin','deleteactionlogs',NULL,'task',0,1,1,0,1,'{\"name\":\"plg_task_deleteactionlogs\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_DELETEACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\DeleteActionLogs\",\"filename\":\"deleteactionlogs\"}','{}','',NULL,NULL,2,0,NULL),
(199,0,'plg_task_globalcheckin','plugin','globalcheckin',NULL,'task',0,1,1,0,0,'{\"name\":\"plg_task_globalcheckin\",\"type\":\"plugin\",\"creationDate\":\"2023-06-22\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_GLOBALCHECKIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Globalcheckin\",\"filename\":\"globalcheckin\"}','{}','',NULL,NULL,3,0,NULL),
(200,0,'plg_task_requests','plugin','requests',NULL,'task',0,1,1,0,1,'{\"name\":\"plg_task_requests\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_REQUESTS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Requests\",\"filename\":\"requests\"}','{}','',NULL,NULL,4,0,NULL),
(201,0,'plg_task_privacyconsent','plugin','privacyconsent',NULL,'task',0,1,1,0,1,'{\"name\":\"plg_task_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\PrivacyConsent\",\"filename\":\"privacyconsent\"}','{}','',NULL,NULL,5,0,NULL),
(202,0,'plg_task_rotatelogs','plugin','rotatelogs',NULL,'task',0,1,1,0,1,'{\"name\":\"plg_task_rotatelogs\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_ROTATELOGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\RotateLogs\",\"filename\":\"rotatelogs\"}','{}','',NULL,NULL,6,0,NULL),
(203,0,'plg_task_sessiongc','plugin','sessiongc',NULL,'task',0,1,1,0,1,'{\"name\":\"plg_task_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"2023-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\SessionGC\",\"filename\":\"sessiongc\"}','{}','',NULL,NULL,7,0,NULL),
(204,0,'plg_task_site_status','plugin','sitestatus',NULL,'task',0,1,1,0,1,'{\"name\":\"plg_task_site_status\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_SITE_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\SiteStatus\",\"filename\":\"sitestatus\"}','{}','',NULL,NULL,8,0,NULL),
(205,0,'plg_task_updatenotification','plugin','updatenotification',NULL,'task',0,1,1,0,1,'{\"name\":\"plg_task_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\UpdateNotification\",\"filename\":\"updatenotification\"}','{}','',NULL,NULL,9,0,NULL),
(206,0,'plg_multifactorauth_totp','plugin','totp',NULL,'multifactorauth',0,1,1,0,1,'{\"name\":\"plg_multifactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"2013-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Totp\",\"filename\":\"totp\"}','','',NULL,NULL,1,0,NULL),
(207,0,'plg_multifactorauth_yubikey','plugin','yubikey',NULL,'multifactorauth',0,1,1,0,1,'{\"name\":\"plg_multifactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"2013-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Yubikey\",\"filename\":\"yubikey\"}','','',NULL,NULL,2,0,NULL),
(208,0,'plg_multifactorauth_webauthn','plugin','webauthn',NULL,'multifactorauth',0,1,1,0,1,'{\"name\":\"plg_multifactorauth_webauthn\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_WEBAUTHN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Webauthn\",\"filename\":\"webauthn\"}','','',NULL,NULL,3,0,NULL),
(209,0,'plg_multifactorauth_email','plugin','email',NULL,'multifactorauth',0,1,1,0,1,'{\"name\":\"plg_multifactorauth_email\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_EMAIL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Email\",\"filename\":\"email\"}','','',NULL,NULL,4,0,NULL),
(210,0,'plg_multifactorauth_fixed','plugin','fixed',NULL,'multifactorauth',0,0,1,0,1,'{\"name\":\"plg_multifactorauth_fixed\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_FIXED_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Fixed\",\"filename\":\"fixed\"}','','',NULL,NULL,5,0,NULL),
(211,0,'plg_user_contactcreator','plugin','contactcreator',NULL,'user',0,0,1,0,1,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"2009-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\ContactCreator\",\"filename\":\"contactcreator\"}','{\"autowebpage\":\"\",\"category\":\"4\",\"autopublish\":\"0\"}','',NULL,NULL,1,0,NULL),
(212,0,'plg_user_joomla','plugin','joomla',NULL,'user',0,1,1,0,1,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"2006-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Joomla\",\"filename\":\"joomla\"}','{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}','',NULL,NULL,2,0,NULL),
(213,0,'plg_user_profile','plugin','profile',NULL,'user',0,0,1,0,1,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"2008-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Profile\",\"filename\":\"profile\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','',NULL,NULL,3,0,NULL),
(214,0,'plg_user_terms','plugin','terms',NULL,'user',0,0,1,0,1,'{\"name\":\"plg_user_terms\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TERMS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Terms\",\"filename\":\"terms\"}','{}','',NULL,NULL,4,0,NULL),
(215,0,'plg_user_token','plugin','token',NULL,'user',0,1,1,0,1,'{\"name\":\"plg_user_token\",\"type\":\"plugin\",\"creationDate\":\"2019-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Token\",\"filename\":\"token\"}','{}','',NULL,NULL,5,0,NULL),
(216,0,'plg_webservices_banners','plugin','banners',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_banners\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Banners\",\"filename\":\"banners\"}','{}','',NULL,NULL,1,0,NULL),
(217,0,'plg_webservices_config','plugin','config',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_config\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Config\",\"filename\":\"config\"}','{}','',NULL,NULL,2,0,NULL),
(218,0,'plg_webservices_contact','plugin','contact',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_contact\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Contact\",\"filename\":\"contact\"}','{}','',NULL,NULL,3,0,NULL),
(219,0,'plg_webservices_content','plugin','content',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_content\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Content\",\"filename\":\"content\"}','{}','',NULL,NULL,4,0,NULL),
(220,0,'plg_webservices_installer','plugin','installer',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_installer\",\"type\":\"plugin\",\"creationDate\":\"2020-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_INSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Installer\",\"filename\":\"installer\"}','{}','',NULL,NULL,5,0,NULL),
(221,0,'plg_webservices_languages','plugin','languages',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_languages\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Languages\",\"filename\":\"languages\"}','{}','',NULL,NULL,6,0,NULL),
(222,0,'plg_webservices_media','plugin','media',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_media\",\"type\":\"plugin\",\"creationDate\":\"2021-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"PLG_WEBSERVICES_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Media\",\"filename\":\"media\"}','{}','',NULL,NULL,7,0,NULL),
(223,0,'plg_webservices_menus','plugin','menus',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_menus\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Menus\",\"filename\":\"menus\"}','{}','',NULL,NULL,7,0,NULL),
(224,0,'plg_webservices_messages','plugin','messages',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_messages\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Messages\",\"filename\":\"messages\"}','{}','',NULL,NULL,8,0,NULL),
(225,0,'plg_webservices_modules','plugin','modules',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_modules\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Modules\",\"filename\":\"modules\"}','{}','',NULL,NULL,9,0,NULL),
(226,0,'plg_webservices_newsfeeds','plugin','newsfeeds',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}','{}','',NULL,NULL,10,0,NULL),
(227,0,'plg_webservices_plugins','plugin','plugins',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_plugins\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PLUGINS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Plugins\",\"filename\":\"plugins\"}','{}','',NULL,NULL,11,0,NULL),
(228,0,'plg_webservices_privacy','plugin','privacy',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_privacy\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Privacy\",\"filename\":\"privacy\"}','{}','',NULL,NULL,12,0,NULL),
(229,0,'plg_webservices_redirect','plugin','redirect',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_redirect\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Redirect\",\"filename\":\"redirect\"}','{}','',NULL,NULL,13,0,NULL),
(230,0,'plg_webservices_tags','plugin','tags',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_tags\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Tags\",\"filename\":\"tags\"}','{}','',NULL,NULL,14,0,NULL),
(231,0,'plg_webservices_templates','plugin','templates',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_templates\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Templates\",\"filename\":\"templates\"}','{}','',NULL,NULL,15,0,NULL),
(232,0,'plg_webservices_users','plugin','users',NULL,'webservices',0,1,1,0,1,'{\"name\":\"plg_webservices_users\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_USERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Users\",\"filename\":\"users\"}','{}','',NULL,NULL,16,0,NULL),
(233,0,'plg_workflow_featuring','plugin','featuring',NULL,'workflow',0,1,1,0,1,'{\"name\":\"plg_workflow_featuring\",\"type\":\"plugin\",\"creationDate\":\"2020-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_FEATURING_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Featuring\",\"filename\":\"featuring\"}','{}','',NULL,NULL,1,0,NULL),
(234,0,'plg_workflow_notification','plugin','notification',NULL,'workflow',0,1,1,0,1,'{\"name\":\"plg_workflow_notification\",\"type\":\"plugin\",\"creationDate\":\"2020-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Notification\",\"filename\":\"notification\"}','{}','',NULL,NULL,2,0,NULL),
(235,0,'plg_workflow_publishing','plugin','publishing',NULL,'workflow',0,1,1,0,1,'{\"name\":\"plg_workflow_publishing\",\"type\":\"plugin\",\"creationDate\":\"2020-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_PUBLISHING_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Publishing\",\"filename\":\"publishing\"}','{}','',NULL,NULL,3,0,NULL),
(236,0,'plg_system_guidedtours','plugin','guidedtours',NULL,'system',0,1,1,0,1,'{\"name\":\"plg_system_guidedtours\",\"type\":\"plugin\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"PLG_SYSTEM_GUIDEDTOURS_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\GuidedTours\",\"filename\":\"guidedtours\"}','{}','',NULL,NULL,15,0,NULL),
(237,0,'atum','template','atum',NULL,'',1,1,1,0,1,'{\"name\":\"atum\",\"type\":\"template\",\"creationDate\":\"2016-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ATUM_XML_DESCRIPTION\",\"group\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}','','',NULL,NULL,0,0,NULL),
(238,0,'cassiopeia','template','cassiopeia',NULL,'',0,1,1,0,1,'{\"name\":\"cassiopeia\",\"type\":\"template\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_CASSIOPEIA_XML_DESCRIPTION\",\"group\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}','{\"brand\":\"1\",\"logoFile\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":0,\"backTop\":0}','',NULL,NULL,0,0,NULL),
(239,0,'files_joomla','file','joomla',NULL,'',0,1,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"2024-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.1\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL),
(240,0,'English (en-GB) Language Pack','package','pkg_en-GB',NULL,'',0,1,1,1,1,'{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"2024-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.1.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}','','',NULL,NULL,0,0,NULL),
(241,240,'English (en-GB)','language','en-GB',NULL,'',0,1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2024-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.1\",\"description\":\"en-GB site language\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL),
(242,240,'English (en-GB)','language','en-GB',NULL,'',1,1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2024-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.1\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL),
(243,240,'English (en-GB)','language','en-GB',NULL,'',3,1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2024-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.1\",\"description\":\"en-GB api language\",\"group\":\"\"}','','',NULL,NULL,0,0,NULL);
/*!40000 ALTER TABLE `jjg9w_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_fields`
--

DROP TABLE IF EXISTS `jjg9w_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0,
  `context` varchar(255) NOT NULL DEFAULT '',
  `group_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `default_value` text DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'text',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `required` tinyint(4) NOT NULL DEFAULT 0,
  `only_use_in_subform` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `fieldparams` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL,
  `created_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_user_id` (`created_user_id`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_fields`
--

LOCK TABLES `jjg9w_fields` WRITE;
/*!40000 ALTER TABLE `jjg9w_fields` DISABLE KEYS */;
INSERT INTO `jjg9w_fields` VALUES
(1,101,'com_content.article',1,'About the Author','about-the-author','About the Author','','textarea','','',1,0,0,NULL,NULL,0,'{\"hint\":\"\",\"class\":\"\",\"label_class\":\"\",\"show_on\":\"\",\"render_class\":\"\",\"showlabel\":\"1\",\"label_render_class\":\"\",\"display\":\"3\",\"prefix\":\"\",\"suffix\":\"\",\"layout\":\"\",\"display_readonly\":\"2\"}','{\"rows\":3,\"cols\":80,\"maxlength\":400,\"filter\":\"\"}','*','2024-06-27 15:01:19',1000,'2024-06-27 15:01:19',1000,1);
/*!40000 ALTER TABLE `jjg9w_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_fields_categories`
--

DROP TABLE IF EXISTS `jjg9w_fields_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`field_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_fields_categories`
--

LOCK TABLES `jjg9w_fields_categories` WRITE;
/*!40000 ALTER TABLE `jjg9w_fields_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjg9w_fields_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_fields_groups`
--

DROP TABLE IF EXISTS `jjg9w_fields_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_fields_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0,
  `context` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_fields_groups`
--

LOCK TABLES `jjg9w_fields_groups` WRITE;
/*!40000 ALTER TABLE `jjg9w_fields_groups` DISABLE KEYS */;
INSERT INTO `jjg9w_fields_groups` VALUES
(1,100,'com_content.article','The Author','','',1,NULL,NULL,0,'{\"display_readonly\":\"1\"}','*','2024-06-27 15:01:19',1000,'2024-06-27 15:01:19',1000,1);
/*!40000 ALTER TABLE `jjg9w_fields_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_fields_values`
--

DROP TABLE IF EXISTS `jjg9w_fields_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_fields_values` (
  `field_id` int(10) unsigned NOT NULL,
  `item_id` varchar(255) NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` mediumtext DEFAULT NULL,
  KEY `idx_field_id` (`field_id`),
  KEY `idx_item_id` (`item_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_fields_values`
--

LOCK TABLES `jjg9w_fields_values` WRITE;
/*!40000 ALTER TABLE `jjg9w_fields_values` DISABLE KEYS */;
INSERT INTO `jjg9w_fields_values` VALUES
(1,'4','Uurnip greens yarrow ricebean endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale.'),
(1,'10','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.');
/*!40000 ALTER TABLE `jjg9w_fields_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_finder_filters`
--

DROP TABLE IF EXISTS `jjg9w_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `map_count` int(10) unsigned NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  `params` mediumtext DEFAULT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_finder_filters`
--

LOCK TABLES `jjg9w_finder_filters` WRITE;
/*!40000 ALTER TABLE `jjg9w_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjg9w_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_finder_links`
--

DROP TABLE IF EXISTS `jjg9w_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(400) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `indexdate` datetime NOT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 1,
  `state` int(11) NOT NULL DEFAULT 1,
  `access` int(11) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `publish_start_date` datetime DEFAULT NULL,
  `publish_end_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `list_price` double unsigned NOT NULL DEFAULT 0,
  `sale_price` double unsigned NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL,
  `object` mediumblob DEFAULT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`(100)),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_language` (`language`),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_finder_links`
--

LOCK TABLES `jjg9w_finder_links` WRITE;
/*!40000 ALTER TABLE `jjg9w_finder_links` DISABLE KEYS */;
INSERT INTO `jjg9w_finder_links` VALUES
(1,'index.php?option=com_tags&view=tag&id=2','index.php?option=com_tags&view=tag&id[0]=2:millions','Millions','','2024-06-27 15:01:19','dea36f3b8d99bc633483e4dd5c331106',1,1,1,'*',NULL,NULL,'2024-06-27 15:01:19',NULL,0,0,5,'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"en-GB\";i:2;s:0:\"\";i:3;a:14:{s:2:\"id\";i:2;s:5:\"alias\";s:8:\"millions\";s:7:\"summary\";s:0:\"\";s:10:\"created_by\";i:1000;s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:8:\"modified\";s:19:\"2024-06-27 15:01:19\";s:11:\"modified_by\";i:1000;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":31:{s:10:\"tag_layout\";s:9:\"_:default\";s:12:\"save_history\";s:1:\"1\";s:13:\"history_limit\";i:5;s:14:\"show_tag_title\";s:1:\"0\";s:23:\"tag_list_show_tag_image\";s:1:\"0\";s:29:\"tag_list_show_tag_description\";s:1:\"0\";s:14:\"tag_list_image\";s:0:\"\";s:16:\"tag_list_orderby\";s:5:\"title\";s:26:\"tag_list_orderby_direction\";s:3:\"ASC\";s:13:\"show_headings\";s:1:\"0\";s:18:\"tag_list_show_date\";s:1:\"0\";s:24:\"tag_list_show_item_image\";s:1:\"0\";s:30:\"tag_list_show_item_description\";s:1:\"0\";s:32:\"tag_list_item_maximum_characters\";i:0;s:17:\"return_any_or_all\";s:1:\"1\";s:16:\"include_children\";s:1:\"0\";s:7:\"maximum\";i:200;s:24:\"tag_list_language_filter\";s:3:\"all\";s:11:\"tags_layout\";s:9:\"_:default\";s:16:\"all_tags_orderby\";s:5:\"title\";s:26:\"all_tags_orderby_direction\";s:3:\"ASC\";s:23:\"all_tags_show_tag_image\";s:1:\"0\";s:29:\"all_tags_show_tag_description\";s:1:\"0\";s:31:\"all_tags_tag_maximum_characters\";i:20;s:22:\"all_tags_show_tag_hits\";s:1:\"0\";s:12:\"filter_field\";s:1:\"1\";s:21:\"show_pagination_limit\";s:1:\"1\";s:15:\"show_pagination\";s:1:\"2\";s:23:\"show_pagination_results\";s:1:\"1\";s:19:\"tag_field_ajax_mode\";s:1:\"1\";s:14:\"show_feed_link\";s:1:\"1\";}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:4:\"slug\";s:10:\"2:millions\";s:6:\"author\";s:9:\"Webmaster\";s:6:\"layout\";s:3:\"tag\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:9:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:4:\"link\";i:4;s:7:\"metakey\";i:5;s:8:\"metadesc\";i:6;s:10:\"metaauthor\";i:7;s:6:\"author\";i:8;s:16:\"created_by_alias\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;N;i:10;N;i:11;s:51:\"index.php?option=com_tags&view=tag&id[0]=2:millions\";i:12;N;i:13;s:19:\"2024-06-27 15:01:19\";i:14;i:1;i:15;a:3:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:3:\"Tag\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:3;}}s:6:\"Author\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:9:\"Webmaster\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:5;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:7;}}}i:16;s:8:\"Millions\";i:17;i:5;i:18;s:39:\"index.php?option=com_tags&view=tag&id=2\";}'),
(2,'index.php?option=com_tags&view=tag&id=3','index.php?option=com_tags&view=tag&id[0]=3:worldwide','Worldwide','','2024-06-27 15:01:19','676bfa4bfc656481af3bc378e5505d86',1,1,1,'*',NULL,NULL,'2024-06-27 15:01:19',NULL,0,0,5,'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"en-GB\";i:2;s:0:\"\";i:3;a:14:{s:2:\"id\";i:3;s:5:\"alias\";s:9:\"worldwide\";s:7:\"summary\";s:0:\"\";s:10:\"created_by\";i:1000;s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:8:\"modified\";s:19:\"2024-06-27 15:01:19\";s:11:\"modified_by\";i:1000;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":31:{s:10:\"tag_layout\";s:9:\"_:default\";s:12:\"save_history\";s:1:\"1\";s:13:\"history_limit\";i:5;s:14:\"show_tag_title\";s:1:\"0\";s:23:\"tag_list_show_tag_image\";s:1:\"0\";s:29:\"tag_list_show_tag_description\";s:1:\"0\";s:14:\"tag_list_image\";s:0:\"\";s:16:\"tag_list_orderby\";s:5:\"title\";s:26:\"tag_list_orderby_direction\";s:3:\"ASC\";s:13:\"show_headings\";s:1:\"0\";s:18:\"tag_list_show_date\";s:1:\"0\";s:24:\"tag_list_show_item_image\";s:1:\"0\";s:30:\"tag_list_show_item_description\";s:1:\"0\";s:32:\"tag_list_item_maximum_characters\";i:0;s:17:\"return_any_or_all\";s:1:\"1\";s:16:\"include_children\";s:1:\"0\";s:7:\"maximum\";i:200;s:24:\"tag_list_language_filter\";s:3:\"all\";s:11:\"tags_layout\";s:9:\"_:default\";s:16:\"all_tags_orderby\";s:5:\"title\";s:26:\"all_tags_orderby_direction\";s:3:\"ASC\";s:23:\"all_tags_show_tag_image\";s:1:\"0\";s:29:\"all_tags_show_tag_description\";s:1:\"0\";s:31:\"all_tags_tag_maximum_characters\";i:20;s:22:\"all_tags_show_tag_hits\";s:1:\"0\";s:12:\"filter_field\";s:1:\"1\";s:21:\"show_pagination_limit\";s:1:\"1\";s:15:\"show_pagination\";s:1:\"2\";s:23:\"show_pagination_results\";s:1:\"1\";s:19:\"tag_field_ajax_mode\";s:1:\"1\";s:14:\"show_feed_link\";s:1:\"1\";}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:4:\"slug\";s:11:\"3:worldwide\";s:6:\"author\";s:9:\"Webmaster\";s:6:\"layout\";s:3:\"tag\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:9:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:4:\"link\";i:4;s:7:\"metakey\";i:5;s:8:\"metadesc\";i:6;s:10:\"metaauthor\";i:7;s:6:\"author\";i:8;s:16:\"created_by_alias\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;N;i:10;N;i:11;s:52:\"index.php?option=com_tags&view=tag&id[0]=3:worldwide\";i:12;N;i:13;s:19:\"2024-06-27 15:01:19\";i:14;i:1;i:15;a:3:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:3:\"Tag\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:3;}}s:6:\"Author\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:9:\"Webmaster\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:5;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:7;}}}i:16;s:9:\"Worldwide\";i:17;i:5;i:18;s:39:\"index.php?option=com_tags&view=tag&id=3\";}'),
(3,'index.php?option=com_tags&view=tag&id=4','index.php?option=com_tags&view=tag&id[0]=4:love','Love','','2024-06-27 15:01:19','8dfbcb6fed1e092279c7d676110b3371',1,1,1,'*',NULL,NULL,'2024-06-27 15:01:19',NULL,0,0,5,'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"en-GB\";i:2;s:0:\"\";i:3;a:14:{s:2:\"id\";i:4;s:5:\"alias\";s:4:\"love\";s:7:\"summary\";s:0:\"\";s:10:\"created_by\";i:1000;s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:8:\"modified\";s:19:\"2024-06-27 15:01:19\";s:11:\"modified_by\";i:1000;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":31:{s:10:\"tag_layout\";s:9:\"_:default\";s:12:\"save_history\";s:1:\"1\";s:13:\"history_limit\";i:5;s:14:\"show_tag_title\";s:1:\"0\";s:23:\"tag_list_show_tag_image\";s:1:\"0\";s:29:\"tag_list_show_tag_description\";s:1:\"0\";s:14:\"tag_list_image\";s:0:\"\";s:16:\"tag_list_orderby\";s:5:\"title\";s:26:\"tag_list_orderby_direction\";s:3:\"ASC\";s:13:\"show_headings\";s:1:\"0\";s:18:\"tag_list_show_date\";s:1:\"0\";s:24:\"tag_list_show_item_image\";s:1:\"0\";s:30:\"tag_list_show_item_description\";s:1:\"0\";s:32:\"tag_list_item_maximum_characters\";i:0;s:17:\"return_any_or_all\";s:1:\"1\";s:16:\"include_children\";s:1:\"0\";s:7:\"maximum\";i:200;s:24:\"tag_list_language_filter\";s:3:\"all\";s:11:\"tags_layout\";s:9:\"_:default\";s:16:\"all_tags_orderby\";s:5:\"title\";s:26:\"all_tags_orderby_direction\";s:3:\"ASC\";s:23:\"all_tags_show_tag_image\";s:1:\"0\";s:29:\"all_tags_show_tag_description\";s:1:\"0\";s:31:\"all_tags_tag_maximum_characters\";i:20;s:22:\"all_tags_show_tag_hits\";s:1:\"0\";s:12:\"filter_field\";s:1:\"1\";s:21:\"show_pagination_limit\";s:1:\"1\";s:15:\"show_pagination\";s:1:\"2\";s:23:\"show_pagination_results\";s:1:\"1\";s:19:\"tag_field_ajax_mode\";s:1:\"1\";s:14:\"show_feed_link\";s:1:\"1\";}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:4:\"slug\";s:6:\"4:love\";s:6:\"author\";s:9:\"Webmaster\";s:6:\"layout\";s:3:\"tag\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:9:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:4:\"link\";i:4;s:7:\"metakey\";i:5;s:8:\"metadesc\";i:6;s:10:\"metaauthor\";i:7;s:6:\"author\";i:8;s:16:\"created_by_alias\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;N;i:10;N;i:11;s:47:\"index.php?option=com_tags&view=tag&id[0]=4:love\";i:12;N;i:13;s:19:\"2024-06-27 15:01:19\";i:14;i:1;i:15;a:3:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:3:\"Tag\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:3;}}s:6:\"Author\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:9:\"Webmaster\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:5;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:7;}}}i:16;s:4:\"Love\";i:17;i:5;i:18;s:39:\"index.php?option=com_tags&view=tag&id=4\";}'),
(4,'index.php?option=com_tags&view=tag&id=5','index.php?option=com_tags&view=tag&id[0]=5:joomla-5','Joomla 5','','2024-06-27 15:01:19','f267397e7d876635e3534fe020f4c8c5',1,1,1,'*',NULL,NULL,'2024-06-27 15:01:19',NULL,0,0,5,'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"en-GB\";i:2;s:0:\"\";i:3;a:14:{s:2:\"id\";i:5;s:5:\"alias\";s:8:\"joomla 5\";s:7:\"summary\";s:0:\"\";s:10:\"created_by\";i:1000;s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:8:\"modified\";s:19:\"2024-06-27 15:01:19\";s:11:\"modified_by\";i:1000;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":31:{s:10:\"tag_layout\";s:9:\"_:default\";s:12:\"save_history\";s:1:\"1\";s:13:\"history_limit\";i:5;s:14:\"show_tag_title\";s:1:\"0\";s:23:\"tag_list_show_tag_image\";s:1:\"0\";s:29:\"tag_list_show_tag_description\";s:1:\"0\";s:14:\"tag_list_image\";s:0:\"\";s:16:\"tag_list_orderby\";s:5:\"title\";s:26:\"tag_list_orderby_direction\";s:3:\"ASC\";s:13:\"show_headings\";s:1:\"0\";s:18:\"tag_list_show_date\";s:1:\"0\";s:24:\"tag_list_show_item_image\";s:1:\"0\";s:30:\"tag_list_show_item_description\";s:1:\"0\";s:32:\"tag_list_item_maximum_characters\";i:0;s:17:\"return_any_or_all\";s:1:\"1\";s:16:\"include_children\";s:1:\"0\";s:7:\"maximum\";i:200;s:24:\"tag_list_language_filter\";s:3:\"all\";s:11:\"tags_layout\";s:9:\"_:default\";s:16:\"all_tags_orderby\";s:5:\"title\";s:26:\"all_tags_orderby_direction\";s:3:\"ASC\";s:23:\"all_tags_show_tag_image\";s:1:\"0\";s:29:\"all_tags_show_tag_description\";s:1:\"0\";s:31:\"all_tags_tag_maximum_characters\";i:20;s:22:\"all_tags_show_tag_hits\";s:1:\"0\";s:12:\"filter_field\";s:1:\"1\";s:21:\"show_pagination_limit\";s:1:\"1\";s:15:\"show_pagination\";s:1:\"2\";s:23:\"show_pagination_results\";s:1:\"1\";s:19:\"tag_field_ajax_mode\";s:1:\"1\";s:14:\"show_feed_link\";s:1:\"1\";}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:4:\"slug\";s:10:\"5:joomla-5\";s:6:\"author\";s:9:\"Webmaster\";s:6:\"layout\";s:3:\"tag\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:9:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:4:\"link\";i:4;s:7:\"metakey\";i:5;s:8:\"metadesc\";i:6;s:10:\"metaauthor\";i:7;s:6:\"author\";i:8;s:16:\"created_by_alias\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;N;i:10;N;i:11;s:51:\"index.php?option=com_tags&view=tag&id[0]=5:joomla-5\";i:12;N;i:13;s:19:\"2024-06-27 15:01:19\";i:14;i:1;i:15;a:3:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:3:\"Tag\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:3;}}s:6:\"Author\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:9:\"Webmaster\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:5;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:7;}}}i:16;s:8:\"Joomla 5\";i:17;i:5;i:18;s:39:\"index.php?option=com_tags&view=tag&id=5\";}'),
(5,'index.php?option=com_content&view=category&id=8','index.php?option=com_content&view=category&id=8','Blog','','2024-06-27 15:01:19','4164858babbad5b513acb97598c78604',1,1,1,'*',NULL,NULL,'2024-06-27 15:01:19',NULL,0,0,1,'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"en-GB\";i:2;s:0:\"\";i:3;a:17:{s:2:\"id\";i:8;s:5:\"alias\";s:4:\"blog\";s:9:\"extension\";s:11:\"com_content\";s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}s:14:\"\0*\0initialized\";b:0;s:12:\"\0*\0separator\";s:1:\".\";}s:3:\"lft\";i:11;s:9:\"parent_id\";i:1;s:5:\"level\";i:1;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":1:{s:11:\"workflow_id\";s:1:\"2\";}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"summary\";s:0:\"\";s:10:\"created_by\";i:1000;s:8:\"modified\";s:19:\"2024-06-27 15:01:19\";s:11:\"modified_by\";i:1000;s:4:\"slug\";s:6:\"8:blog\";s:6:\"layout\";s:8:\"category\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:4:\"link\";i:4;s:7:\"metakey\";i:5;s:8:\"metadesc\";i:6;s:10:\"metaauthor\";i:7;s:6:\"author\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;N;i:10;N;i:11;s:47:\"index.php?option=com_content&view=category&id=8\";i:12;N;i:13;s:19:\"2024-06-27 15:01:19\";i:14;i:1;i:15;a:2:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:8:\"Category\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:8;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:7;}}}i:16;s:4:\"Blog\";i:17;i:1;i:18;s:47:\"index.php?option=com_content&view=category&id=8\";}'),
(6,'index.php?option=com_content&view=category&id=9','index.php?option=com_content&view=category&id=9','Help','','2024-06-27 15:01:19','2354c55d864210ab46f4dde5c4bb7a48',1,1,1,'*',NULL,NULL,'2024-06-27 15:01:19',NULL,0,0,1,'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"en-GB\";i:2;s:0:\"\";i:3;a:17:{s:2:\"id\";i:9;s:5:\"alias\";s:4:\"help\";s:9:\"extension\";s:11:\"com_content\";s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}s:14:\"\0*\0initialized\";b:0;s:12:\"\0*\0separator\";s:1:\".\";}s:3:\"lft\";i:13;s:9:\"parent_id\";i:1;s:5:\"level\";i:1;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"summary\";s:0:\"\";s:10:\"created_by\";i:1000;s:8:\"modified\";s:19:\"2024-06-27 15:01:19\";s:11:\"modified_by\";i:1000;s:4:\"slug\";s:6:\"9:help\";s:6:\"layout\";s:8:\"category\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:4:\"link\";i:4;s:7:\"metakey\";i:5;s:8:\"metadesc\";i:6;s:10:\"metaauthor\";i:7;s:6:\"author\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;N;i:10;N;i:11;s:47:\"index.php?option=com_content&view=category&id=9\";i:12;N;i:13;s:19:\"2024-06-27 15:01:19\";i:14;i:1;i:15;a:2:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:8:\"Category\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:8;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:7;}}}i:16;s:4:\"Help\";i:17;i:1;i:18;s:47:\"index.php?option=com_content&view=category&id=9\";}'),
(7,'index.php?option=com_content&view=category&id=10','index.php?option=com_content&view=category&id=10','Joomla','','2024-06-27 15:01:19','d7b71ea107d9c8d9f5cbb1bf7a6e0164',1,1,1,'*',NULL,NULL,'2024-06-27 15:01:19',NULL,0,0,1,'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"en-GB\";i:2;s:0:\"\";i:3;a:17:{s:2:\"id\";i:10;s:5:\"alias\";s:6:\"joomla\";s:9:\"extension\";s:11:\"com_content\";s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}s:14:\"\0*\0initialized\";b:0;s:12:\"\0*\0separator\";s:1:\".\";}s:3:\"lft\";i:15;s:9:\"parent_id\";i:1;s:5:\"level\";i:1;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"summary\";s:0:\"\";s:10:\"created_by\";i:1000;s:8:\"modified\";s:19:\"2024-06-27 15:01:19\";s:11:\"modified_by\";i:1000;s:4:\"slug\";s:9:\"10:joomla\";s:6:\"layout\";s:8:\"category\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:4:\"link\";i:4;s:7:\"metakey\";i:5;s:8:\"metadesc\";i:6;s:10:\"metaauthor\";i:7;s:6:\"author\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;N;i:10;N;i:11;s:48:\"index.php?option=com_content&view=category&id=10\";i:12;N;i:13;s:19:\"2024-06-27 15:01:19\";i:14;i:1;i:15;a:2:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:8:\"Category\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:8;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:7;}}}i:16;s:6:\"Joomla\";i:17;i:1;i:18;s:48:\"index.php?option=com_content&view=category&id=10\";}'),
(8,'index.php?option=com_content&view=category&id=11','index.php?option=com_content&view=category&id=11','Typography','','2024-06-27 15:01:19','4641cc076d4b8a7985b686cda5f586c9',1,1,1,'*',NULL,NULL,'2024-06-27 15:01:19',NULL,0,0,1,'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"en-GB\";i:2;s:0:\"\";i:3;a:17:{s:2:\"id\";i:11;s:5:\"alias\";s:10:\"typography\";s:9:\"extension\";s:11:\"com_content\";s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}s:14:\"\0*\0initialized\";b:0;s:12:\"\0*\0separator\";s:1:\".\";}s:3:\"lft\";i:17;s:9:\"parent_id\";i:1;s:5:\"level\";i:1;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"summary\";s:0:\"\";s:10:\"created_by\";i:1000;s:8:\"modified\";s:19:\"2024-06-27 15:01:19\";s:11:\"modified_by\";i:1000;s:4:\"slug\";s:13:\"11:typography\";s:6:\"layout\";s:8:\"category\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:4:\"link\";i:4;s:7:\"metakey\";i:5;s:8:\"metadesc\";i:6;s:10:\"metaauthor\";i:7;s:6:\"author\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;N;i:10;N;i:11;s:48:\"index.php?option=com_content&view=category&id=11\";i:12;N;i:13;s:19:\"2024-06-27 15:01:19\";i:14;i:1;i:15;a:2:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:8:\"Category\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:8;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:7;}}}i:16;s:10:\"Typography\";i:17;i:1;i:18;s:48:\"index.php?option=com_content&view=category&id=11\";}'),
(9,'index.php?option=com_content&view=article&id=1','index.php?option=com_content&view=article&id=1:about&catid=9','About',' This tells you a bit about this blog and the person who writes it. When you are logged in you will be able to edit this page by selecting the edit icon. ','2024-06-27 15:01:19','8dbe9f8fe54575c5f906a27a88a4e655',1,1,1,'*','2024-06-27 15:01:19',NULL,'2024-06-27 15:01:19',NULL,0,0,3,'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"en-GB\";i:2;s:154:\" This tells you a bit about this blog and the person who writes it. When you are logged in you will be able to edit this page by selecting the edit icon. \";i:3;a:25:{s:2:\"id\";i:1;s:5:\"alias\";s:5:\"about\";s:7:\"summary\";s:165:\"<p>This tells you a bit about this blog and the person who writes it.</p><p>When you are logged in you will be able to edit this page by selecting the edit icon.</p>\";s:4:\"body\";s:0:\"\";s:6:\"images\";s:0:\"\";s:5:\"catid\";i:9;s:10:\"created_by\";i:1000;s:16:\"created_by_alias\";s:6:\"Joomla\";s:8:\"modified\";s:19:\"2024-06-27 15:01:19\";s:11:\"modified_by\";i:1000;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":86:{s:14:\"article_layout\";s:9:\"_:default\";s:10:\"show_title\";s:1:\"1\";s:11:\"link_titles\";s:1:\"1\";s:10:\"show_intro\";s:1:\"1\";s:19:\"info_block_position\";s:1:\"0\";s:21:\"info_block_show_title\";s:1:\"1\";s:13:\"show_category\";s:1:\"1\";s:13:\"link_category\";s:1:\"1\";s:20:\"show_parent_category\";s:1:\"0\";s:20:\"link_parent_category\";s:1:\"0\";s:17:\"show_associations\";s:1:\"0\";s:5:\"flags\";s:1:\"1\";s:11:\"show_author\";s:1:\"1\";s:11:\"link_author\";s:1:\"0\";s:16:\"show_create_date\";s:1:\"0\";s:16:\"show_modify_date\";s:1:\"0\";s:17:\"show_publish_date\";s:1:\"1\";s:20:\"show_item_navigation\";s:1:\"1\";s:13:\"show_readmore\";s:1:\"1\";s:19:\"show_readmore_title\";s:1:\"1\";s:14:\"readmore_limit\";i:100;s:9:\"show_tags\";s:1:\"1\";s:11:\"record_hits\";s:1:\"1\";s:9:\"show_hits\";s:1:\"1\";s:11:\"show_noauth\";s:1:\"0\";s:13:\"urls_position\";i:0;s:7:\"captcha\";s:0:\"\";s:23:\"show_publishing_options\";s:1:\"1\";s:20:\"show_article_options\";s:1:\"1\";s:27:\"show_configure_edit_options\";s:1:\"1\";s:16:\"show_permissions\";s:1:\"1\";s:22:\"show_associations_edit\";s:1:\"1\";s:12:\"save_history\";s:1:\"1\";s:13:\"history_limit\";i:10;s:25:\"show_urls_images_frontend\";s:1:\"0\";s:24:\"show_urls_images_backend\";s:1:\"1\";s:7:\"targeta\";i:0;s:7:\"targetb\";i:0;s:7:\"targetc\";i:0;s:11:\"float_intro\";s:4:\"left\";s:14:\"float_fulltext\";s:4:\"left\";s:15:\"category_layout\";s:6:\"_:blog\";s:19:\"show_category_title\";s:1:\"0\";s:16:\"show_description\";s:1:\"0\";s:22:\"show_description_image\";s:1:\"0\";s:8:\"maxLevel\";s:1:\"1\";s:21:\"show_empty_categories\";s:1:\"0\";s:16:\"show_no_articles\";s:1:\"1\";s:32:\"show_category_heading_title_text\";s:1:\"1\";s:16:\"show_subcat_desc\";s:1:\"1\";s:21:\"show_cat_num_articles\";s:1:\"0\";s:13:\"show_cat_tags\";s:1:\"1\";s:21:\"show_base_description\";s:1:\"1\";s:11:\"maxLevelcat\";s:2:\"-1\";s:25:\"show_empty_categories_cat\";s:1:\"0\";s:20:\"show_subcat_desc_cat\";s:1:\"1\";s:25:\"show_cat_num_articles_cat\";s:1:\"1\";s:20:\"num_leading_articles\";i:1;s:18:\"blog_class_leading\";s:0:\"\";s:18:\"num_intro_articles\";i:4;s:10:\"blog_class\";s:0:\"\";s:11:\"num_columns\";i:1;s:18:\"multi_column_order\";s:1:\"0\";s:9:\"num_links\";i:4;s:24:\"show_subcategory_content\";s:1:\"0\";s:16:\"link_intro_image\";s:1:\"0\";s:21:\"show_pagination_limit\";s:1:\"1\";s:12:\"filter_field\";s:4:\"hide\";s:13:\"show_headings\";s:1:\"1\";s:14:\"list_show_date\";s:1:\"0\";s:11:\"date_format\";s:0:\"\";s:14:\"list_show_hits\";s:1:\"1\";s:16:\"list_show_author\";s:1:\"1\";s:11:\"display_num\";s:2:\"10\";s:11:\"orderby_pri\";s:5:\"order\";s:11:\"orderby_sec\";s:5:\"rdate\";s:10:\"order_date\";s:9:\"published\";s:15:\"show_pagination\";s:1:\"2\";s:23:\"show_pagination_results\";s:1:\"1\";s:13:\"show_featured\";s:4:\"show\";s:14:\"show_feed_link\";s:1:\"1\";s:12:\"feed_summary\";s:1:\"0\";s:18:\"feed_show_readmore\";s:1:\"0\";s:7:\"sef_ids\";i:1;s:20:\"custom_fields_enable\";s:1:\"1\";s:16:\"workflow_enabled\";s:1:\"0\";}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"version\";i:1;s:8:\"ordering\";i:0;s:8:\"category\";s:4:\"Help\";s:9:\"cat_state\";i:1;s:10:\"cat_access\";i:1;s:4:\"slug\";s:7:\"1:about\";s:7:\"catslug\";s:6:\"9:help\";s:6:\"author\";s:9:\"Webmaster\";s:6:\"layout\";s:7:\"article\";s:7:\"context\";s:19:\"com_content.article\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:7:\"metakey\";i:4;s:8:\"metadesc\";i:5;s:10:\"metaauthor\";i:6;s:6:\"author\";i:7;s:16:\"created_by_alias\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;s:19:\"2024-06-27 15:01:19\";i:10;N;i:11;s:60:\"index.php?option=com_content&view=article&id=1:about&catid=9\";i:12;N;i:13;s:19:\"2024-06-27 15:01:19\";i:14;i:1;i:15;a:4:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:7:\"Article\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:9;}}s:6:\"Author\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:6:\"Joomla\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:10;}}s:8:\"Category\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:4:\"Help\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:1;s:2:\"id\";i:12;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:7;}}}i:16;s:5:\"About\";i:17;i:3;i:18;s:46:\"index.php?option=com_content&view=article&id=1\";}'),
(10,'index.php?option=com_content&view=article&id=2','index.php?option=com_content&view=article&id=2:working-on-your-site&catid=9','Working on Your Site',' Here are some basic tips for working on your site. Joomla! has a \'front end\' that you are looking at now and an \'administrator\' or \'back end\' which is where you do the more advanced work of creating your site such as setting up the menus and deciding what modules to show. You need to login to the administrator separately using the same user name and password that you used to login to this part of the site. One of the first things you will probably want to do is change the site title and tag line and to add a logo. To do this select the Template Settings link in the menu which is visible if you log in. To change your site description, browser title, default email and other items, select Site Settings. More advanced configuration options are available in the administrator. To totally change the look of your site you will probably want to install a new template. Go to System, select Install - Extensions from the list and the extension installer will open. There are many free and commercial templates available for Joomla. As you have already seen, you can control who can see different parts of you site. When you work with modules and articles, setting the Access level to Registered will mean that only logged in users can see them. When you create a new article or other kind of content you also can save it as Published or Unpublished. If it is Unpublished site visitors will not be able to see it but you will. You can learn much more about working with Joomla from the Joomla documentation site and get help from other users at the Joomla forums. In the administrator there are help buttons on every page that provide detailed information about the functions on that page. ','2024-06-27 15:01:19','87c7962247633a4fe8216f6c466ec8f0',1,1,3,'*','2024-06-27 15:01:19',NULL,'2024-06-27 15:01:19',NULL,0,0,3,'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:3;i:1;s:5:\"en-GB\";i:2;s:1692:\" Here are some basic tips for working on your site. Joomla! has a \'front end\' that you are looking at now and an \'administrator\' or \'back end\' which is where you do the more advanced work of creating your site such as setting up the menus and deciding what modules to show. You need to login to the administrator separately using the same user name and password that you used to login to this part of the site. One of the first things you will probably want to do is change the site title and tag line and to add a logo. To do this select the Template Settings link in the menu which is visible if you log in. To change your site description, browser title, default email and other items, select Site Settings. More advanced configuration options are available in the administrator. To totally change the look of your site you will probably want to install a new template. Go to System, select Install - Extensions from the list and the extension installer will open. There are many free and commercial templates available for Joomla. As you have already seen, you can control who can see different parts of you site. When you work with modules and articles, setting the Access level to Registered will mean that only logged in users can see them. When you create a new article or other kind of content you also can save it as Published or Unpublished. If it is Unpublished site visitors will not be able to see it but you will. You can learn much more about working with Joomla from the Joomla documentation site and get help from other users at the Joomla forums. In the administrator there are help buttons on every page that provide detailed information about the functions on that page. \";i:3;a:25:{s:2:\"id\";i:2;s:5:\"alias\";s:20:\"working on your site\";s:7:\"summary\";s:1833:\"<p>Here are some basic tips for working on your site.</p><ul><li>Joomla! has a \'front end\' that you are looking at now and an \'administrator\' or \'back end\' which is where you do the more advanced work of creating your site such as setting up the menus and deciding what modules to show. You need to login to the administrator separately using the same user name and password that you used to login to this part of the site.</li><li>One of the first things you will probably want to do is change the site title and tag line and to add a logo. To do this select the Template Settings link in the menu which is visible if you log in. To change your site description, browser title, default email and other items, select Site Settings. More advanced configuration options are available in the administrator.</li><li>To totally change the look of your site you will probably want to install a new template. Go to System, select Install - Extensions from the list and the extension installer will open. There are many free and commercial templates available for Joomla.</li><li>As you have already seen, you can control who can see different parts of you site. When you work with modules and articles, setting the Access level to Registered will mean that only logged in users can see them.</li><li>When you create a new article or other kind of content you also can save it as Published or Unpublished. If it is Unpublished site visitors will not be able to see it but you will.</li><li>You can learn much more about working with Joomla from the <a href=\'https://docs.joomla.org/\'>Joomla documentation site</a> and get help from other users at the <a href=\'https://forum.joomla.org/\'>Joomla forums</a>. In the administrator there are help buttons on every page that provide detailed information about the functions on that page.</li></ul>\";s:4:\"body\";s:0:\"\";s:6:\"images\";s:0:\"\";s:5:\"catid\";i:9;s:10:\"created_by\";i:1000;s:16:\"created_by_alias\";s:6:\"Joomla\";s:8:\"modified\";s:19:\"2024-06-27 15:01:19\";s:11:\"modified_by\";i:1000;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":86:{s:14:\"article_layout\";s:9:\"_:default\";s:10:\"show_title\";s:1:\"1\";s:11:\"link_titles\";s:1:\"1\";s:10:\"show_intro\";s:1:\"1\";s:19:\"info_block_position\";s:1:\"0\";s:21:\"info_block_show_title\";s:1:\"1\";s:13:\"show_category\";s:1:\"1\";s:13:\"link_category\";s:1:\"1\";s:20:\"show_parent_category\";s:1:\"0\";s:20:\"link_parent_category\";s:1:\"0\";s:17:\"show_associations\";s:1:\"0\";s:5:\"flags\";s:1:\"1\";s:11:\"show_author\";s:1:\"1\";s:11:\"link_author\";s:1:\"0\";s:16:\"show_create_date\";s:1:\"0\";s:16:\"show_modify_date\";s:1:\"0\";s:17:\"show_publish_date\";s:1:\"1\";s:20:\"show_item_navigation\";s:1:\"1\";s:13:\"show_readmore\";s:1:\"1\";s:19:\"show_readmore_title\";s:1:\"1\";s:14:\"readmore_limit\";i:100;s:9:\"show_tags\";s:1:\"1\";s:11:\"record_hits\";s:1:\"1\";s:9:\"show_hits\";s:1:\"1\";s:11:\"show_noauth\";s:1:\"0\";s:13:\"urls_position\";i:0;s:7:\"captcha\";s:0:\"\";s:23:\"show_publishing_options\";s:1:\"1\";s:20:\"show_article_options\";s:1:\"1\";s:27:\"show_configure_edit_options\";s:1:\"1\";s:16:\"show_permissions\";s:1:\"1\";s:22:\"show_associations_edit\";s:1:\"1\";s:12:\"save_history\";s:1:\"1\";s:13:\"history_limit\";i:10;s:25:\"show_urls_images_frontend\";s:1:\"0\";s:24:\"show_urls_images_backend\";s:1:\"1\";s:7:\"targeta\";i:0;s:7:\"targetb\";i:0;s:7:\"targetc\";i:0;s:11:\"float_intro\";s:4:\"left\";s:14:\"float_fulltext\";s:4:\"left\";s:15:\"category_layout\";s:6:\"_:blog\";s:19:\"show_category_title\";s:1:\"0\";s:16:\"show_description\";s:1:\"0\";s:22:\"show_description_image\";s:1:\"0\";s:8:\"maxLevel\";s:1:\"1\";s:21:\"show_empty_categories\";s:1:\"0\";s:16:\"show_no_articles\";s:1:\"1\";s:32:\"show_category_heading_title_text\";s:1:\"1\";s:16:\"show_subcat_desc\";s:1:\"1\";s:21:\"show_cat_num_articles\";s:1:\"0\";s:13:\"show_cat_tags\";s:1:\"1\";s:21:\"show_base_description\";s:1:\"1\";s:11:\"maxLevelcat\";s:2:\"-1\";s:25:\"show_empty_categories_cat\";s:1:\"0\";s:20:\"show_subcat_desc_cat\";s:1:\"1\";s:25:\"show_cat_num_articles_cat\";s:1:\"1\";s:20:\"num_leading_articles\";i:1;s:18:\"blog_class_leading\";s:0:\"\";s:18:\"num_intro_articles\";i:4;s:10:\"blog_class\";s:0:\"\";s:11:\"num_columns\";i:1;s:18:\"multi_column_order\";s:1:\"0\";s:9:\"num_links\";i:4;s:24:\"show_subcategory_content\";s:1:\"0\";s:16:\"link_intro_image\";s:1:\"0\";s:21:\"show_pagination_limit\";s:1:\"1\";s:12:\"filter_field\";s:4:\"hide\";s:13:\"show_headings\";s:1:\"1\";s:14:\"list_show_date\";s:1:\"0\";s:11:\"date_format\";s:0:\"\";s:14:\"list_show_hits\";s:1:\"1\";s:16:\"list_show_author\";s:1:\"1\";s:11:\"display_num\";s:2:\"10\";s:11:\"orderby_pri\";s:5:\"order\";s:11:\"orderby_sec\";s:5:\"rdate\";s:10:\"order_date\";s:9:\"published\";s:15:\"show_pagination\";s:1:\"2\";s:23:\"show_pagination_results\";s:1:\"1\";s:13:\"show_featured\";s:4:\"show\";s:14:\"show_feed_link\";s:1:\"1\";s:12:\"feed_summary\";s:1:\"0\";s:18:\"feed_show_readmore\";s:1:\"0\";s:7:\"sef_ids\";i:1;s:20:\"custom_fields_enable\";s:1:\"1\";s:16:\"workflow_enabled\";s:1:\"0\";}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"version\";i:1;s:8:\"ordering\";i:0;s:8:\"category\";s:4:\"Help\";s:9:\"cat_state\";i:1;s:10:\"cat_access\";i:1;s:4:\"slug\";s:22:\"2:working-on-your-site\";s:7:\"catslug\";s:6:\"9:help\";s:6:\"author\";s:9:\"Webmaster\";s:6:\"layout\";s:7:\"article\";s:7:\"context\";s:19:\"com_content.article\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:7:\"metakey\";i:4;s:8:\"metadesc\";i:5;s:10:\"metaauthor\";i:6;s:6:\"author\";i:7;s:16:\"created_by_alias\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;s:19:\"2024-06-27 15:01:19\";i:10;N;i:11;s:75:\"index.php?option=com_content&view=article&id=2:working-on-your-site&catid=9\";i:12;N;i:13;s:19:\"2024-06-27 15:01:19\";i:14;i:1;i:15;a:4:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:7:\"Article\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:9;}}s:6:\"Author\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:6:\"Joomla\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:10;}}s:8:\"Category\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:4:\"Help\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:1;s:2:\"id\";i:12;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:7;}}}i:16;s:20:\"Working on Your Site\";i:17;i:3;i:18;s:46:\"index.php?option=com_content&view=article&id=2\";}'),
(11,'index.php?option=com_content&view=article&id=3','index.php?option=com_content&view=article&id=3:welcome-to-your-blog&catid=8','Welcome to your blog',' This is a sample blog posting. If you log in to the site (the Administrator Login link is on the very bottom of this page) you will be able to edit it and all of the other existing articles. You will also be able to create a new article and make other changes to the site. As you add and modify articles you will see how your site changes and also how you can customise it in various ways. Go ahead, you can\'t break it. ','2024-06-27 15:01:19','b00f75a18e58ed2a9d9da6b187c77cd4',1,1,1,'*','2024-06-27 15:01:19',NULL,'2024-06-27 15:01:19',NULL,0,0,3,'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"en-GB\";i:2;s:421:\" This is a sample blog posting. If you log in to the site (the Administrator Login link is on the very bottom of this page) you will be able to edit it and all of the other existing articles. You will also be able to create a new article and make other changes to the site. As you add and modify articles you will see how your site changes and also how you can customise it in various ways. Go ahead, you can\'t break it. \";i:3;a:27:{s:2:\"id\";i:3;s:5:\"alias\";s:20:\"welcome to your blog\";s:7:\"summary\";s:444:\"<p>This is a sample blog posting.</p><p>If you log in to the site (the Administrator Login link is on the very bottom of this page) you will be able to edit it and all of the other existing articles. You will also be able to create a new article and make other changes to the site.</p><p>As you add and modify articles you will see how your site changes and also how you can customise it in various ways.</p><p>Go ahead, you can\'t break it.</p>\";s:4:\"body\";s:0:\"\";s:6:\"images\";s:573:\"{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa1-1200.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa1-1200.jpg?width=1200&height=400\",\"float_intro\":\"\",\"image_intro_alt\":\"Amazing Andromeda Galaxy\",\"image_intro_alt_empty\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/cassiopeia\\/nasa1-400.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa1-400.jpg?width=400&height=400\",\"float_fulltext\":\"float-start\",\"image_fulltext_alt\":\"\",\"image_fulltext_alt_empty\":1,\"image_fulltext_caption\":\"www.nasa.gov\\/multimedia\\/imagegallery\"}\";s:5:\"catid\";i:8;s:10:\"created_by\";i:1000;s:16:\"created_by_alias\";s:6:\"Joomla\";s:8:\"modified\";s:19:\"2024-06-27 15:01:19\";s:11:\"modified_by\";i:1000;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":86:{s:14:\"article_layout\";s:9:\"_:default\";s:10:\"show_title\";s:1:\"1\";s:11:\"link_titles\";s:1:\"1\";s:10:\"show_intro\";s:1:\"1\";s:19:\"info_block_position\";s:1:\"0\";s:21:\"info_block_show_title\";s:1:\"1\";s:13:\"show_category\";s:1:\"1\";s:13:\"link_category\";s:1:\"1\";s:20:\"show_parent_category\";s:1:\"0\";s:20:\"link_parent_category\";s:1:\"0\";s:17:\"show_associations\";s:1:\"0\";s:5:\"flags\";s:1:\"1\";s:11:\"show_author\";s:1:\"1\";s:11:\"link_author\";s:1:\"0\";s:16:\"show_create_date\";s:1:\"0\";s:16:\"show_modify_date\";s:1:\"0\";s:17:\"show_publish_date\";s:1:\"1\";s:20:\"show_item_navigation\";s:1:\"1\";s:13:\"show_readmore\";s:1:\"1\";s:19:\"show_readmore_title\";s:1:\"1\";s:14:\"readmore_limit\";i:100;s:9:\"show_tags\";s:1:\"1\";s:11:\"record_hits\";s:1:\"1\";s:9:\"show_hits\";s:1:\"1\";s:11:\"show_noauth\";s:1:\"0\";s:13:\"urls_position\";i:0;s:7:\"captcha\";s:0:\"\";s:23:\"show_publishing_options\";s:1:\"1\";s:20:\"show_article_options\";s:1:\"1\";s:27:\"show_configure_edit_options\";s:1:\"1\";s:16:\"show_permissions\";s:1:\"1\";s:22:\"show_associations_edit\";s:1:\"1\";s:12:\"save_history\";s:1:\"1\";s:13:\"history_limit\";i:10;s:25:\"show_urls_images_frontend\";s:1:\"0\";s:24:\"show_urls_images_backend\";s:1:\"1\";s:7:\"targeta\";i:0;s:7:\"targetb\";i:0;s:7:\"targetc\";i:0;s:11:\"float_intro\";s:4:\"left\";s:14:\"float_fulltext\";s:4:\"left\";s:15:\"category_layout\";s:6:\"_:blog\";s:19:\"show_category_title\";s:1:\"0\";s:16:\"show_description\";s:1:\"0\";s:22:\"show_description_image\";s:1:\"0\";s:8:\"maxLevel\";s:1:\"1\";s:21:\"show_empty_categories\";s:1:\"0\";s:16:\"show_no_articles\";s:1:\"1\";s:32:\"show_category_heading_title_text\";s:1:\"1\";s:16:\"show_subcat_desc\";s:1:\"1\";s:21:\"show_cat_num_articles\";s:1:\"0\";s:13:\"show_cat_tags\";s:1:\"1\";s:21:\"show_base_description\";s:1:\"1\";s:11:\"maxLevelcat\";s:2:\"-1\";s:25:\"show_empty_categories_cat\";s:1:\"0\";s:20:\"show_subcat_desc_cat\";s:1:\"1\";s:25:\"show_cat_num_articles_cat\";s:1:\"1\";s:20:\"num_leading_articles\";i:1;s:18:\"blog_class_leading\";s:0:\"\";s:18:\"num_intro_articles\";i:4;s:10:\"blog_class\";s:0:\"\";s:11:\"num_columns\";i:1;s:18:\"multi_column_order\";s:1:\"0\";s:9:\"num_links\";i:4;s:24:\"show_subcategory_content\";s:1:\"0\";s:16:\"link_intro_image\";s:1:\"0\";s:21:\"show_pagination_limit\";s:1:\"1\";s:12:\"filter_field\";s:4:\"hide\";s:13:\"show_headings\";s:1:\"1\";s:14:\"list_show_date\";s:1:\"0\";s:11:\"date_format\";s:0:\"\";s:14:\"list_show_hits\";s:1:\"1\";s:16:\"list_show_author\";s:1:\"1\";s:11:\"display_num\";s:2:\"10\";s:11:\"orderby_pri\";s:5:\"order\";s:11:\"orderby_sec\";s:5:\"rdate\";s:10:\"order_date\";s:9:\"published\";s:15:\"show_pagination\";s:1:\"2\";s:23:\"show_pagination_results\";s:1:\"1\";s:13:\"show_featured\";s:4:\"show\";s:14:\"show_feed_link\";s:1:\"1\";s:12:\"feed_summary\";s:1:\"0\";s:18:\"feed_show_readmore\";s:1:\"0\";s:7:\"sef_ids\";i:1;s:20:\"custom_fields_enable\";s:1:\"1\";s:16:\"workflow_enabled\";s:1:\"0\";}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"version\";i:1;s:8:\"ordering\";i:0;s:8:\"category\";s:4:\"Blog\";s:9:\"cat_state\";i:1;s:10:\"cat_access\";i:1;s:4:\"slug\";s:22:\"3:welcome-to-your-blog\";s:7:\"catslug\";s:6:\"8:blog\";s:6:\"author\";s:9:\"Webmaster\";s:6:\"layout\";s:7:\"article\";s:7:\"context\";s:19:\"com_content.article\";s:8:\"imageUrl\";s:129:\"images/sampledata/cassiopeia/nasa1-1200.jpg#joomlaImage://local-images/sampledata/cassiopeia/nasa1-1200.jpg?width=1200&height=400\";s:8:\"imageAlt\";s:24:\"Amazing Andromeda Galaxy\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:7:\"metakey\";i:4;s:8:\"metadesc\";i:5;s:10:\"metaauthor\";i:6;s:6:\"author\";i:7;s:16:\"created_by_alias\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;s:19:\"2024-06-27 15:01:19\";i:10;N;i:11;s:75:\"index.php?option=com_content&view=article&id=3:welcome-to-your-blog&catid=8\";i:12;N;i:13;s:19:\"2024-06-27 15:01:19\";i:14;i:1;i:15;a:4:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:7:\"Article\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:9;}}s:6:\"Author\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:6:\"Joomla\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:10;}}s:8:\"Category\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:4:\"Blog\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:1;s:2:\"id\";i:13;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:7;}}}i:16;s:20:\"Welcome to your blog\";i:17;i:3;i:18;s:46:\"index.php?option=com_content&view=article&id=3\";}'),
(12,'index.php?option=com_content&view=article&id=4','index.php?option=com_content&view=article&id=4:about-your-home-page&catid=8','About your home page',' Your home page is set to display the four most recent articles from the blog category in a column. Then there are links to the next two oldest articles. You can change those numbers by editing the content options settings in the blog tab in your site administrator. There is a link to your site administrator if you are logged in. If you want to have your blog post broken into two parts, an introduction and then a full length separate page, use the Read More span to insert a break. ','2024-06-27 15:01:19','d8d5632caa9a9e5580f290b2ea6d3a8b',1,1,1,'*','2024-06-27 15:01:19',NULL,'2024-06-27 15:01:19',NULL,0,0,3,'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"en-GB\";i:2;s:486:\" Your home page is set to display the four most recent articles from the blog category in a column. Then there are links to the next two oldest articles. You can change those numbers by editing the content options settings in the blog tab in your site administrator. There is a link to your site administrator if you are logged in. If you want to have your blog post broken into two parts, an introduction and then a full length separate page, use the Read More span to insert a break. \";i:3;a:27:{s:2:\"id\";i:4;s:5:\"alias\";s:20:\"about your home page\";s:7:\"summary\";s:497:\"<p>Your home page is set to display the four most recent articles from the blog category in a column. Then there are links to the next two oldest articles. You can change those numbers by editing the content options settings in the blog tab in your site administrator. There is a link to your site administrator if you are logged in.</p><p>If you want to have your blog post broken into two parts, an introduction and then a full length separate page, use the Read More span to insert a break.</p>\";s:4:\"body\";s:161:\"<p>On the full page you will see both the introductory content and the rest of the article. You can change the settings to hide the introduction if you want.</p>\";s:6:\"images\";s:548:\"{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa2-1200.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa2-1200.jpg?width=1200&height=400\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":1,\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/cassiopeia\\/nasa2-400.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa2-400.jpg?width=400&height=400\",\"float_fulltext\":\"float-start\",\"image_fulltext_alt\":\"\",\"image_fulltext_alt_empty\":1,\"image_fulltext_caption\":\"www.nasa.gov\\/multimedia\\/imagegallery\"}\";s:5:\"catid\";i:8;s:10:\"created_by\";i:1000;s:16:\"created_by_alias\";s:6:\"Joomla\";s:8:\"modified\";s:19:\"2024-06-27 15:01:19\";s:11:\"modified_by\";i:1000;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":86:{s:14:\"article_layout\";s:9:\"_:default\";s:10:\"show_title\";s:1:\"1\";s:11:\"link_titles\";s:1:\"1\";s:10:\"show_intro\";s:1:\"1\";s:19:\"info_block_position\";s:1:\"0\";s:21:\"info_block_show_title\";s:1:\"1\";s:13:\"show_category\";s:1:\"1\";s:13:\"link_category\";s:1:\"1\";s:20:\"show_parent_category\";s:1:\"0\";s:20:\"link_parent_category\";s:1:\"0\";s:17:\"show_associations\";s:1:\"0\";s:5:\"flags\";s:1:\"1\";s:11:\"show_author\";s:1:\"1\";s:11:\"link_author\";s:1:\"0\";s:16:\"show_create_date\";s:1:\"0\";s:16:\"show_modify_date\";s:1:\"0\";s:17:\"show_publish_date\";s:1:\"1\";s:20:\"show_item_navigation\";s:1:\"1\";s:13:\"show_readmore\";s:1:\"1\";s:19:\"show_readmore_title\";s:1:\"1\";s:14:\"readmore_limit\";i:100;s:9:\"show_tags\";s:1:\"1\";s:11:\"record_hits\";s:1:\"1\";s:9:\"show_hits\";s:1:\"1\";s:11:\"show_noauth\";s:1:\"0\";s:13:\"urls_position\";i:0;s:7:\"captcha\";s:0:\"\";s:23:\"show_publishing_options\";s:1:\"1\";s:20:\"show_article_options\";s:1:\"1\";s:27:\"show_configure_edit_options\";s:1:\"1\";s:16:\"show_permissions\";s:1:\"1\";s:22:\"show_associations_edit\";s:1:\"1\";s:12:\"save_history\";s:1:\"1\";s:13:\"history_limit\";i:10;s:25:\"show_urls_images_frontend\";s:1:\"0\";s:24:\"show_urls_images_backend\";s:1:\"1\";s:7:\"targeta\";i:0;s:7:\"targetb\";i:0;s:7:\"targetc\";i:0;s:11:\"float_intro\";s:4:\"left\";s:14:\"float_fulltext\";s:4:\"left\";s:15:\"category_layout\";s:6:\"_:blog\";s:19:\"show_category_title\";s:1:\"0\";s:16:\"show_description\";s:1:\"0\";s:22:\"show_description_image\";s:1:\"0\";s:8:\"maxLevel\";s:1:\"1\";s:21:\"show_empty_categories\";s:1:\"0\";s:16:\"show_no_articles\";s:1:\"1\";s:32:\"show_category_heading_title_text\";s:1:\"1\";s:16:\"show_subcat_desc\";s:1:\"1\";s:21:\"show_cat_num_articles\";s:1:\"0\";s:13:\"show_cat_tags\";s:1:\"1\";s:21:\"show_base_description\";s:1:\"1\";s:11:\"maxLevelcat\";s:2:\"-1\";s:25:\"show_empty_categories_cat\";s:1:\"0\";s:20:\"show_subcat_desc_cat\";s:1:\"1\";s:25:\"show_cat_num_articles_cat\";s:1:\"1\";s:20:\"num_leading_articles\";i:1;s:18:\"blog_class_leading\";s:0:\"\";s:18:\"num_intro_articles\";i:4;s:10:\"blog_class\";s:0:\"\";s:11:\"num_columns\";i:1;s:18:\"multi_column_order\";s:1:\"0\";s:9:\"num_links\";i:4;s:24:\"show_subcategory_content\";s:1:\"0\";s:16:\"link_intro_image\";s:1:\"0\";s:21:\"show_pagination_limit\";s:1:\"1\";s:12:\"filter_field\";s:4:\"hide\";s:13:\"show_headings\";s:1:\"1\";s:14:\"list_show_date\";s:1:\"0\";s:11:\"date_format\";s:0:\"\";s:14:\"list_show_hits\";s:1:\"1\";s:16:\"list_show_author\";s:1:\"1\";s:11:\"display_num\";s:2:\"10\";s:11:\"orderby_pri\";s:5:\"order\";s:11:\"orderby_sec\";s:5:\"rdate\";s:10:\"order_date\";s:9:\"published\";s:15:\"show_pagination\";s:1:\"2\";s:23:\"show_pagination_results\";s:1:\"1\";s:13:\"show_featured\";s:4:\"show\";s:14:\"show_feed_link\";s:1:\"1\";s:12:\"feed_summary\";s:1:\"0\";s:18:\"feed_show_readmore\";s:1:\"0\";s:7:\"sef_ids\";i:1;s:20:\"custom_fields_enable\";s:1:\"1\";s:16:\"workflow_enabled\";s:1:\"0\";}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"version\";i:1;s:8:\"ordering\";i:0;s:8:\"category\";s:4:\"Blog\";s:9:\"cat_state\";i:1;s:10:\"cat_access\";i:1;s:4:\"slug\";s:22:\"4:about-your-home-page\";s:7:\"catslug\";s:6:\"8:blog\";s:6:\"author\";s:9:\"Webmaster\";s:6:\"layout\";s:7:\"article\";s:7:\"context\";s:19:\"com_content.article\";s:8:\"imageUrl\";s:129:\"images/sampledata/cassiopeia/nasa2-1200.jpg#joomlaImage://local-images/sampledata/cassiopeia/nasa2-1200.jpg?width=1200&height=400\";s:8:\"imageAlt\";s:0:\"\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:7:\"metakey\";i:4;s:8:\"metadesc\";i:5;s:10:\"metaauthor\";i:6;s:6:\"author\";i:7;s:16:\"created_by_alias\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;s:19:\"2024-06-27 15:01:19\";i:10;N;i:11;s:75:\"index.php?option=com_content&view=article&id=4:about-your-home-page&catid=8\";i:12;N;i:13;s:19:\"2024-06-27 15:01:19\";i:14;i:1;i:15;a:4:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:7:\"Article\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:9;}}s:6:\"Author\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:6:\"Joomla\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:10;}}s:8:\"Category\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:4:\"Blog\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:1;s:2:\"id\";i:13;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:7;}}}i:16;s:20:\"About your home page\";i:17;i:3;i:18;s:46:\"index.php?option=com_content&view=article&id=4\";}'),
(13,'index.php?option=com_content&view=article&id=5','index.php?option=com_content&view=article&id=5:your-modules&catid=8','Your Modules',' Your site has some commonly used modules already preconfigured. These include: Image (type: Custom), which holds the image beneath the menu. This is a Custom module that you can edit to change the image. Popular Tags (type: Tags - Popular), which will appear if you use tagging on your articles. Enter a tag in the Tags field when editing. Older Posts (type: Articles - Category), which lists out articles by categories. Syndication (type: Syndication Feeds), which allows your readers to read your posts in a news reader. Login Form (type: Login), which allows your users to access restricted areas of the website. Each of these modules has many options which you can experiment with in the Module Manager in your site Administrator. When you are logged in you can also select the edit icon in the top right corner which will take you to an edit screen for that module. Always be sure to save and close any module you edit. Joomla! also includes many other modules you can incorporate in your site. As you develop your site you may want to add more modules that you can find at the Joomla Extensions Directory. ','2024-06-27 15:01:19','f119ef7427456b0779023da7995b0424',1,1,1,'*','2024-06-27 15:01:19',NULL,'2024-06-27 15:01:19',NULL,0,0,3,'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"en-GB\";i:2;s:1113:\" Your site has some commonly used modules already preconfigured. These include: Image (type: Custom), which holds the image beneath the menu. This is a Custom module that you can edit to change the image. Popular Tags (type: Tags - Popular), which will appear if you use tagging on your articles. Enter a tag in the Tags field when editing. Older Posts (type: Articles - Category), which lists out articles by categories. Syndication (type: Syndication Feeds), which allows your readers to read your posts in a news reader. Login Form (type: Login), which allows your users to access restricted areas of the website. Each of these modules has many options which you can experiment with in the Module Manager in your site Administrator. When you are logged in you can also select the edit icon in the top right corner which will take you to an edit screen for that module. Always be sure to save and close any module you edit. Joomla! also includes many other modules you can incorporate in your site. As you develop your site you may want to add more modules that you can find at the Joomla Extensions Directory. \";i:3;a:27:{s:2:\"id\";i:5;s:5:\"alias\";s:12:\"your modules\";s:7:\"summary\";s:1224:\"<p>Your site has some commonly used modules already preconfigured. These include:</p><ul><li>Image (type: Custom), which holds the image beneath the menu. This is a Custom module that you can edit to change the image.</li><li>Popular Tags (type: Tags - Popular), which will appear if you use tagging on your articles. Enter a tag in the Tags field when editing.</li><li>Older Posts (type: Articles - Category), which lists out articles by categories.</li><li>Syndication (type: Syndication Feeds), which allows your readers to read your posts in a news reader.</li><li>Login Form (type: Login), which allows your users to access restricted areas of the website.</li></ul><p>Each of these modules has many options which you can experiment with in the Module Manager in your site Administrator. When you are logged in you can also select the edit icon in the top right corner which will take you to an edit screen for that module. Always be sure to save and close any module you edit.</p><p>Joomla! also includes many other modules you can incorporate in your site. As you develop your site you may want to add more modules that you can find at the <a href=\"https://extensions.joomla.org/\">Joomla Extensions Directory.</a></p>\";s:4:\"body\";s:0:\"\";s:6:\"images\";s:560:\"{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa3-1200.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa3-1200.jpg?width=1200&height=400\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":1,\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/cassiopeia\\/nasa3-400.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa3-400.jpg?width=400&height=400\",\"float_fulltext\":\"float-start\",\"image_fulltext_alt\":\"Crab Nebula\",\"image_fulltext_alt_empty\":\"\",\"image_fulltext_caption\":\"www.nasa.gov\\/multimedia\\/imagegallery\"}\";s:5:\"catid\";i:8;s:10:\"created_by\";i:1000;s:16:\"created_by_alias\";s:6:\"Joomla\";s:8:\"modified\";s:19:\"2024-06-27 15:01:19\";s:11:\"modified_by\";i:1000;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":86:{s:14:\"article_layout\";s:9:\"_:default\";s:10:\"show_title\";s:1:\"1\";s:11:\"link_titles\";s:1:\"1\";s:10:\"show_intro\";s:1:\"1\";s:19:\"info_block_position\";s:1:\"0\";s:21:\"info_block_show_title\";s:1:\"1\";s:13:\"show_category\";s:1:\"1\";s:13:\"link_category\";s:1:\"1\";s:20:\"show_parent_category\";s:1:\"0\";s:20:\"link_parent_category\";s:1:\"0\";s:17:\"show_associations\";s:1:\"0\";s:5:\"flags\";s:1:\"1\";s:11:\"show_author\";s:1:\"1\";s:11:\"link_author\";s:1:\"0\";s:16:\"show_create_date\";s:1:\"0\";s:16:\"show_modify_date\";s:1:\"0\";s:17:\"show_publish_date\";s:1:\"1\";s:20:\"show_item_navigation\";s:1:\"1\";s:13:\"show_readmore\";s:1:\"1\";s:19:\"show_readmore_title\";s:1:\"1\";s:14:\"readmore_limit\";i:100;s:9:\"show_tags\";s:1:\"1\";s:11:\"record_hits\";s:1:\"1\";s:9:\"show_hits\";s:1:\"1\";s:11:\"show_noauth\";s:1:\"0\";s:13:\"urls_position\";i:0;s:7:\"captcha\";s:0:\"\";s:23:\"show_publishing_options\";s:1:\"1\";s:20:\"show_article_options\";s:1:\"1\";s:27:\"show_configure_edit_options\";s:1:\"1\";s:16:\"show_permissions\";s:1:\"1\";s:22:\"show_associations_edit\";s:1:\"1\";s:12:\"save_history\";s:1:\"1\";s:13:\"history_limit\";i:10;s:25:\"show_urls_images_frontend\";s:1:\"0\";s:24:\"show_urls_images_backend\";s:1:\"1\";s:7:\"targeta\";i:0;s:7:\"targetb\";i:0;s:7:\"targetc\";i:0;s:11:\"float_intro\";s:4:\"left\";s:14:\"float_fulltext\";s:4:\"left\";s:15:\"category_layout\";s:6:\"_:blog\";s:19:\"show_category_title\";s:1:\"0\";s:16:\"show_description\";s:1:\"0\";s:22:\"show_description_image\";s:1:\"0\";s:8:\"maxLevel\";s:1:\"1\";s:21:\"show_empty_categories\";s:1:\"0\";s:16:\"show_no_articles\";s:1:\"1\";s:32:\"show_category_heading_title_text\";s:1:\"1\";s:16:\"show_subcat_desc\";s:1:\"1\";s:21:\"show_cat_num_articles\";s:1:\"0\";s:13:\"show_cat_tags\";s:1:\"1\";s:21:\"show_base_description\";s:1:\"1\";s:11:\"maxLevelcat\";s:2:\"-1\";s:25:\"show_empty_categories_cat\";s:1:\"0\";s:20:\"show_subcat_desc_cat\";s:1:\"1\";s:25:\"show_cat_num_articles_cat\";s:1:\"1\";s:20:\"num_leading_articles\";i:1;s:18:\"blog_class_leading\";s:0:\"\";s:18:\"num_intro_articles\";i:4;s:10:\"blog_class\";s:0:\"\";s:11:\"num_columns\";i:1;s:18:\"multi_column_order\";s:1:\"0\";s:9:\"num_links\";i:4;s:24:\"show_subcategory_content\";s:1:\"0\";s:16:\"link_intro_image\";s:1:\"0\";s:21:\"show_pagination_limit\";s:1:\"1\";s:12:\"filter_field\";s:4:\"hide\";s:13:\"show_headings\";s:1:\"1\";s:14:\"list_show_date\";s:1:\"0\";s:11:\"date_format\";s:0:\"\";s:14:\"list_show_hits\";s:1:\"1\";s:16:\"list_show_author\";s:1:\"1\";s:11:\"display_num\";s:2:\"10\";s:11:\"orderby_pri\";s:5:\"order\";s:11:\"orderby_sec\";s:5:\"rdate\";s:10:\"order_date\";s:9:\"published\";s:15:\"show_pagination\";s:1:\"2\";s:23:\"show_pagination_results\";s:1:\"1\";s:13:\"show_featured\";s:4:\"show\";s:14:\"show_feed_link\";s:1:\"1\";s:12:\"feed_summary\";s:1:\"0\";s:18:\"feed_show_readmore\";s:1:\"0\";s:7:\"sef_ids\";i:1;s:20:\"custom_fields_enable\";s:1:\"1\";s:16:\"workflow_enabled\";s:1:\"0\";}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"version\";i:1;s:8:\"ordering\";i:0;s:8:\"category\";s:4:\"Blog\";s:9:\"cat_state\";i:1;s:10:\"cat_access\";i:1;s:4:\"slug\";s:14:\"5:your-modules\";s:7:\"catslug\";s:6:\"8:blog\";s:6:\"author\";s:9:\"Webmaster\";s:6:\"layout\";s:7:\"article\";s:7:\"context\";s:19:\"com_content.article\";s:8:\"imageUrl\";s:129:\"images/sampledata/cassiopeia/nasa3-1200.jpg#joomlaImage://local-images/sampledata/cassiopeia/nasa3-1200.jpg?width=1200&height=400\";s:8:\"imageAlt\";s:0:\"\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:7:\"metakey\";i:4;s:8:\"metadesc\";i:5;s:10:\"metaauthor\";i:6;s:6:\"author\";i:7;s:16:\"created_by_alias\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;s:19:\"2024-06-27 15:01:19\";i:10;N;i:11;s:67:\"index.php?option=com_content&view=article&id=5:your-modules&catid=8\";i:12;N;i:13;s:19:\"2024-06-27 15:01:19\";i:14;i:1;i:15;a:4:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:7:\"Article\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:9;}}s:6:\"Author\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:6:\"Joomla\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:10;}}s:8:\"Category\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:4:\"Blog\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:1;s:2:\"id\";i:13;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:7;}}}i:16;s:12:\"Your Modules\";i:17;i:3;i:18;s:46:\"index.php?option=com_content&view=article&id=5\";}'),
(14,'index.php?option=com_content&view=article&id=6','index.php?option=com_content&view=article&id=6:your-template&catid=8','Your Template',' Templates control the look and feel of your website. This blog is installed with the Cassiopeia template. You can edit the options by selecting the Working on Your Site, Template Settings link in the menu which is visible when you log in. For example you can change the site background colour, highlights colour, site title, site description and title font used. More options are available in the site administrator. You may also install a new template using the extension manager. ','2024-06-27 15:01:19','cbb7870b0348a2e955848fcdf97143e5',1,1,1,'*','2024-06-27 15:01:19',NULL,'2024-06-27 15:01:19',NULL,0,0,3,'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"en-GB\";i:2;s:483:\" Templates control the look and feel of your website. This blog is installed with the Cassiopeia template. You can edit the options by selecting the Working on Your Site, Template Settings link in the menu which is visible when you log in. For example you can change the site background colour, highlights colour, site title, site description and title font used. More options are available in the site administrator. You may also install a new template using the extension manager. \";i:3;a:27:{s:2:\"id\";i:6;s:5:\"alias\";s:13:\"your template\";s:7:\"summary\";s:512:\"<p>Templates control the look and feel of your website.</p><p>This blog is installed with the Cassiopeia template.</p><p>You can edit the options by selecting the Working on Your Site, Template Settings link in the menu which is visible when you log in.</p><p>For example you can change the site background colour, highlights colour, site title, site description and title font used.</p><p>More options are available in the site administrator. You may also install a new template using the extension manager.</p>\";s:4:\"body\";s:0:\"\";s:6:\"images\";s:548:\"{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa4-1200.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa4-1200.jpg?width=1200&height=400\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":1,\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/cassiopeia\\/nasa4-400.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa4-400.jpg?width=400&height=400\",\"float_fulltext\":\"float-start\",\"image_fulltext_alt\":\"\",\"image_fulltext_alt_empty\":1,\"image_fulltext_caption\":\"www.nasa.gov\\/multimedia\\/imagegallery\"}\";s:5:\"catid\";i:8;s:10:\"created_by\";i:1000;s:16:\"created_by_alias\";s:6:\"Joomla\";s:8:\"modified\";s:19:\"2024-06-27 15:01:19\";s:11:\"modified_by\";i:1000;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":86:{s:14:\"article_layout\";s:9:\"_:default\";s:10:\"show_title\";s:1:\"1\";s:11:\"link_titles\";s:1:\"1\";s:10:\"show_intro\";s:1:\"1\";s:19:\"info_block_position\";s:1:\"0\";s:21:\"info_block_show_title\";s:1:\"1\";s:13:\"show_category\";s:1:\"1\";s:13:\"link_category\";s:1:\"1\";s:20:\"show_parent_category\";s:1:\"0\";s:20:\"link_parent_category\";s:1:\"0\";s:17:\"show_associations\";s:1:\"0\";s:5:\"flags\";s:1:\"1\";s:11:\"show_author\";s:1:\"1\";s:11:\"link_author\";s:1:\"0\";s:16:\"show_create_date\";s:1:\"0\";s:16:\"show_modify_date\";s:1:\"0\";s:17:\"show_publish_date\";s:1:\"1\";s:20:\"show_item_navigation\";s:1:\"1\";s:13:\"show_readmore\";s:1:\"1\";s:19:\"show_readmore_title\";s:1:\"1\";s:14:\"readmore_limit\";i:100;s:9:\"show_tags\";s:1:\"1\";s:11:\"record_hits\";s:1:\"1\";s:9:\"show_hits\";s:1:\"1\";s:11:\"show_noauth\";s:1:\"0\";s:13:\"urls_position\";i:0;s:7:\"captcha\";s:0:\"\";s:23:\"show_publishing_options\";s:1:\"1\";s:20:\"show_article_options\";s:1:\"1\";s:27:\"show_configure_edit_options\";s:1:\"1\";s:16:\"show_permissions\";s:1:\"1\";s:22:\"show_associations_edit\";s:1:\"1\";s:12:\"save_history\";s:1:\"1\";s:13:\"history_limit\";i:10;s:25:\"show_urls_images_frontend\";s:1:\"0\";s:24:\"show_urls_images_backend\";s:1:\"1\";s:7:\"targeta\";i:0;s:7:\"targetb\";i:0;s:7:\"targetc\";i:0;s:11:\"float_intro\";s:4:\"left\";s:14:\"float_fulltext\";s:4:\"left\";s:15:\"category_layout\";s:6:\"_:blog\";s:19:\"show_category_title\";s:1:\"0\";s:16:\"show_description\";s:1:\"0\";s:22:\"show_description_image\";s:1:\"0\";s:8:\"maxLevel\";s:1:\"1\";s:21:\"show_empty_categories\";s:1:\"0\";s:16:\"show_no_articles\";s:1:\"1\";s:32:\"show_category_heading_title_text\";s:1:\"1\";s:16:\"show_subcat_desc\";s:1:\"1\";s:21:\"show_cat_num_articles\";s:1:\"0\";s:13:\"show_cat_tags\";s:1:\"1\";s:21:\"show_base_description\";s:1:\"1\";s:11:\"maxLevelcat\";s:2:\"-1\";s:25:\"show_empty_categories_cat\";s:1:\"0\";s:20:\"show_subcat_desc_cat\";s:1:\"1\";s:25:\"show_cat_num_articles_cat\";s:1:\"1\";s:20:\"num_leading_articles\";i:1;s:18:\"blog_class_leading\";s:0:\"\";s:18:\"num_intro_articles\";i:4;s:10:\"blog_class\";s:0:\"\";s:11:\"num_columns\";i:1;s:18:\"multi_column_order\";s:1:\"0\";s:9:\"num_links\";i:4;s:24:\"show_subcategory_content\";s:1:\"0\";s:16:\"link_intro_image\";s:1:\"0\";s:21:\"show_pagination_limit\";s:1:\"1\";s:12:\"filter_field\";s:4:\"hide\";s:13:\"show_headings\";s:1:\"1\";s:14:\"list_show_date\";s:1:\"0\";s:11:\"date_format\";s:0:\"\";s:14:\"list_show_hits\";s:1:\"1\";s:16:\"list_show_author\";s:1:\"1\";s:11:\"display_num\";s:2:\"10\";s:11:\"orderby_pri\";s:5:\"order\";s:11:\"orderby_sec\";s:5:\"rdate\";s:10:\"order_date\";s:9:\"published\";s:15:\"show_pagination\";s:1:\"2\";s:23:\"show_pagination_results\";s:1:\"1\";s:13:\"show_featured\";s:4:\"show\";s:14:\"show_feed_link\";s:1:\"1\";s:12:\"feed_summary\";s:1:\"0\";s:18:\"feed_show_readmore\";s:1:\"0\";s:7:\"sef_ids\";i:1;s:20:\"custom_fields_enable\";s:1:\"1\";s:16:\"workflow_enabled\";s:1:\"0\";}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"version\";i:1;s:8:\"ordering\";i:0;s:8:\"category\";s:4:\"Blog\";s:9:\"cat_state\";i:1;s:10:\"cat_access\";i:1;s:4:\"slug\";s:15:\"6:your-template\";s:7:\"catslug\";s:6:\"8:blog\";s:6:\"author\";s:9:\"Webmaster\";s:6:\"layout\";s:7:\"article\";s:7:\"context\";s:19:\"com_content.article\";s:8:\"imageUrl\";s:129:\"images/sampledata/cassiopeia/nasa4-1200.jpg#joomlaImage://local-images/sampledata/cassiopeia/nasa4-1200.jpg?width=1200&height=400\";s:8:\"imageAlt\";s:0:\"\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:7:\"metakey\";i:4;s:8:\"metadesc\";i:5;s:10:\"metaauthor\";i:6;s:6:\"author\";i:7;s:16:\"created_by_alias\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;s:19:\"2024-06-27 15:01:19\";i:10;N;i:11;s:68:\"index.php?option=com_content&view=article&id=6:your-template&catid=8\";i:12;N;i:13;s:19:\"2024-06-27 15:01:19\";i:14;i:1;i:15;a:4:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:7:\"Article\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:9;}}s:6:\"Author\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:6:\"Joomla\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:10;}}s:8:\"Category\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:4:\"Blog\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:1;s:2:\"id\";i:13;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:7;}}}i:16;s:13:\"Your Template\";i:17;i:3;i:18;s:46:\"index.php?option=com_content&view=article&id=6\";}'),
(15,'index.php?option=com_content&view=article&id=7','index.php?option=com_content&view=article&id=7:millions&catid=10','Millions',' Millions of Websites are built on Joomla! Learn more about beautiful blog presentation. ','2024-06-27 15:01:19','7051df30f2dbf0a6a13be08c7ff69fa8',1,1,1,'*','2024-06-27 15:01:19',NULL,'2024-06-27 15:01:19',NULL,0,0,3,'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"en-GB\";i:2;s:89:\" Millions of Websites are built on Joomla! Learn more about beautiful blog presentation. \";i:3;a:27:{s:2:\"id\";i:7;s:5:\"alias\";s:8:\"millions\";s:7:\"summary\";s:117:\"<p><strong>Millions of Websites are built on Joomla!</strong></p><p>Learn more about beautiful blog presentation.</p>\";s:4:\"body\";s:274:\"<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est</p>\";s:6:\"images\";s:241:\"{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa1-640.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa1-640.jpg?width=640&height=320\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":1,\"image_intro_caption\":\"\"}\";s:5:\"catid\";i:10;s:10:\"created_by\";i:1000;s:16:\"created_by_alias\";s:6:\"Joomla\";s:8:\"modified\";s:19:\"2024-06-27 15:01:19\";s:11:\"modified_by\";i:1000;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":86:{s:14:\"article_layout\";s:9:\"_:default\";s:10:\"show_title\";s:1:\"1\";s:11:\"link_titles\";s:1:\"1\";s:10:\"show_intro\";s:1:\"1\";s:19:\"info_block_position\";s:1:\"0\";s:21:\"info_block_show_title\";s:1:\"1\";s:13:\"show_category\";s:1:\"1\";s:13:\"link_category\";s:1:\"1\";s:20:\"show_parent_category\";s:1:\"0\";s:20:\"link_parent_category\";s:1:\"0\";s:17:\"show_associations\";s:1:\"0\";s:5:\"flags\";s:1:\"1\";s:11:\"show_author\";s:1:\"1\";s:11:\"link_author\";s:1:\"0\";s:16:\"show_create_date\";s:1:\"0\";s:16:\"show_modify_date\";s:1:\"0\";s:17:\"show_publish_date\";s:1:\"1\";s:20:\"show_item_navigation\";s:1:\"1\";s:13:\"show_readmore\";s:1:\"1\";s:19:\"show_readmore_title\";s:1:\"1\";s:14:\"readmore_limit\";i:100;s:9:\"show_tags\";s:1:\"1\";s:11:\"record_hits\";s:1:\"1\";s:9:\"show_hits\";s:1:\"1\";s:11:\"show_noauth\";s:1:\"0\";s:13:\"urls_position\";i:0;s:7:\"captcha\";s:0:\"\";s:23:\"show_publishing_options\";s:1:\"1\";s:20:\"show_article_options\";s:1:\"1\";s:27:\"show_configure_edit_options\";s:1:\"1\";s:16:\"show_permissions\";s:1:\"1\";s:22:\"show_associations_edit\";s:1:\"1\";s:12:\"save_history\";s:1:\"1\";s:13:\"history_limit\";i:10;s:25:\"show_urls_images_frontend\";s:1:\"0\";s:24:\"show_urls_images_backend\";s:1:\"1\";s:7:\"targeta\";i:0;s:7:\"targetb\";i:0;s:7:\"targetc\";i:0;s:11:\"float_intro\";s:4:\"left\";s:14:\"float_fulltext\";s:4:\"left\";s:15:\"category_layout\";s:6:\"_:blog\";s:19:\"show_category_title\";s:1:\"0\";s:16:\"show_description\";s:1:\"0\";s:22:\"show_description_image\";s:1:\"0\";s:8:\"maxLevel\";s:1:\"1\";s:21:\"show_empty_categories\";s:1:\"0\";s:16:\"show_no_articles\";s:1:\"1\";s:32:\"show_category_heading_title_text\";s:1:\"1\";s:16:\"show_subcat_desc\";s:1:\"1\";s:21:\"show_cat_num_articles\";s:1:\"0\";s:13:\"show_cat_tags\";s:1:\"1\";s:21:\"show_base_description\";s:1:\"1\";s:11:\"maxLevelcat\";s:2:\"-1\";s:25:\"show_empty_categories_cat\";s:1:\"0\";s:20:\"show_subcat_desc_cat\";s:1:\"1\";s:25:\"show_cat_num_articles_cat\";s:1:\"1\";s:20:\"num_leading_articles\";i:1;s:18:\"blog_class_leading\";s:0:\"\";s:18:\"num_intro_articles\";i:4;s:10:\"blog_class\";s:0:\"\";s:11:\"num_columns\";i:1;s:18:\"multi_column_order\";s:1:\"0\";s:9:\"num_links\";i:4;s:24:\"show_subcategory_content\";s:1:\"0\";s:16:\"link_intro_image\";s:1:\"0\";s:21:\"show_pagination_limit\";s:1:\"1\";s:12:\"filter_field\";s:4:\"hide\";s:13:\"show_headings\";s:1:\"1\";s:14:\"list_show_date\";s:1:\"0\";s:11:\"date_format\";s:0:\"\";s:14:\"list_show_hits\";s:1:\"1\";s:16:\"list_show_author\";s:1:\"1\";s:11:\"display_num\";s:2:\"10\";s:11:\"orderby_pri\";s:5:\"order\";s:11:\"orderby_sec\";s:5:\"rdate\";s:10:\"order_date\";s:9:\"published\";s:15:\"show_pagination\";s:1:\"2\";s:23:\"show_pagination_results\";s:1:\"1\";s:13:\"show_featured\";s:4:\"show\";s:14:\"show_feed_link\";s:1:\"1\";s:12:\"feed_summary\";s:1:\"0\";s:18:\"feed_show_readmore\";s:1:\"0\";s:7:\"sef_ids\";i:1;s:20:\"custom_fields_enable\";s:1:\"1\";s:16:\"workflow_enabled\";s:1:\"0\";}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"version\";i:1;s:8:\"ordering\";i:0;s:8:\"category\";s:6:\"Joomla\";s:9:\"cat_state\";i:1;s:10:\"cat_access\";i:1;s:4:\"slug\";s:10:\"7:millions\";s:7:\"catslug\";s:9:\"10:joomla\";s:6:\"author\";s:9:\"Webmaster\";s:6:\"layout\";s:7:\"article\";s:7:\"context\";s:19:\"com_content.article\";s:8:\"imageUrl\";s:126:\"images/sampledata/cassiopeia/nasa1-640.jpg#joomlaImage://local-images/sampledata/cassiopeia/nasa1-640.jpg?width=640&height=320\";s:8:\"imageAlt\";s:0:\"\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:7:\"metakey\";i:4;s:8:\"metadesc\";i:5;s:10:\"metaauthor\";i:6;s:6:\"author\";i:7;s:16:\"created_by_alias\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;s:19:\"2024-06-27 15:01:19\";i:10;N;i:11;s:64:\"index.php?option=com_content&view=article&id=7:millions&catid=10\";i:12;N;i:13;s:19:\"2024-06-27 15:01:19\";i:14;i:1;i:15;a:4:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:7:\"Article\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:9;}}s:6:\"Author\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:6:\"Joomla\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:10;}}s:8:\"Category\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:6:\"Joomla\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:1;s:2:\"id\";i:14;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:7;}}}i:16;s:8:\"Millions\";i:17;i:3;i:18;s:46:\"index.php?option=com_content&view=article&id=7\";}'),
(16,'index.php?option=com_content&view=article&id=8','index.php?option=com_content&view=article&id=8:love&catid=10','Love',' We love Joomla to the moon and back! Thank you to all volunteers who have contributed! ','2024-06-27 15:01:19','1b8c90cfe3c1122573b1f05c94035ed4',1,1,1,'*','2024-06-27 15:01:19',NULL,'2024-06-27 15:01:19',NULL,0,0,3,'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"en-GB\";i:2;s:88:\" We love Joomla to the moon and back! Thank you to all volunteers who have contributed! \";i:3;a:27:{s:2:\"id\";i:8;s:5:\"alias\";s:4:\"love\";s:7:\"summary\";s:116:\"<p><strong>We love Joomla to the moon and back!</strong></p><p>Thank you to all volunteers who have contributed!</p>\";s:4:\"body\";s:557:\"<p>Uurnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. Lotus root water spinach fennel kombu maize bamboo shoot green bean swiss chard seakale pumpkin onion chickpea gram corn pea. Brussels sprout coriander water chestnut gourd swiss chard wakame kohlrabi beetroot carrot watercress. Corn amaranth salsify bunya nuts nori azuki bean chickweed potato bell pepper artichoke.</p> \";s:6:\"images\";s:241:\"{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa2-640.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa2-640.jpg?width=640&height=320\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":1,\"image_intro_caption\":\"\"}\";s:5:\"catid\";i:10;s:10:\"created_by\";i:1000;s:16:\"created_by_alias\";s:6:\"Joomla\";s:8:\"modified\";s:19:\"2024-06-27 15:01:19\";s:11:\"modified_by\";i:1000;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":86:{s:14:\"article_layout\";s:9:\"_:default\";s:10:\"show_title\";s:1:\"1\";s:11:\"link_titles\";s:1:\"1\";s:10:\"show_intro\";s:1:\"1\";s:19:\"info_block_position\";s:1:\"0\";s:21:\"info_block_show_title\";s:1:\"1\";s:13:\"show_category\";s:1:\"1\";s:13:\"link_category\";s:1:\"1\";s:20:\"show_parent_category\";s:1:\"0\";s:20:\"link_parent_category\";s:1:\"0\";s:17:\"show_associations\";s:1:\"0\";s:5:\"flags\";s:1:\"1\";s:11:\"show_author\";s:1:\"1\";s:11:\"link_author\";s:1:\"0\";s:16:\"show_create_date\";s:1:\"0\";s:16:\"show_modify_date\";s:1:\"0\";s:17:\"show_publish_date\";s:1:\"1\";s:20:\"show_item_navigation\";s:1:\"1\";s:13:\"show_readmore\";s:1:\"1\";s:19:\"show_readmore_title\";s:1:\"1\";s:14:\"readmore_limit\";i:100;s:9:\"show_tags\";s:1:\"1\";s:11:\"record_hits\";s:1:\"1\";s:9:\"show_hits\";s:1:\"1\";s:11:\"show_noauth\";s:1:\"0\";s:13:\"urls_position\";i:0;s:7:\"captcha\";s:0:\"\";s:23:\"show_publishing_options\";s:1:\"1\";s:20:\"show_article_options\";s:1:\"1\";s:27:\"show_configure_edit_options\";s:1:\"1\";s:16:\"show_permissions\";s:1:\"1\";s:22:\"show_associations_edit\";s:1:\"1\";s:12:\"save_history\";s:1:\"1\";s:13:\"history_limit\";i:10;s:25:\"show_urls_images_frontend\";s:1:\"0\";s:24:\"show_urls_images_backend\";s:1:\"1\";s:7:\"targeta\";i:0;s:7:\"targetb\";i:0;s:7:\"targetc\";i:0;s:11:\"float_intro\";s:4:\"left\";s:14:\"float_fulltext\";s:4:\"left\";s:15:\"category_layout\";s:6:\"_:blog\";s:19:\"show_category_title\";s:1:\"0\";s:16:\"show_description\";s:1:\"0\";s:22:\"show_description_image\";s:1:\"0\";s:8:\"maxLevel\";s:1:\"1\";s:21:\"show_empty_categories\";s:1:\"0\";s:16:\"show_no_articles\";s:1:\"1\";s:32:\"show_category_heading_title_text\";s:1:\"1\";s:16:\"show_subcat_desc\";s:1:\"1\";s:21:\"show_cat_num_articles\";s:1:\"0\";s:13:\"show_cat_tags\";s:1:\"1\";s:21:\"show_base_description\";s:1:\"1\";s:11:\"maxLevelcat\";s:2:\"-1\";s:25:\"show_empty_categories_cat\";s:1:\"0\";s:20:\"show_subcat_desc_cat\";s:1:\"1\";s:25:\"show_cat_num_articles_cat\";s:1:\"1\";s:20:\"num_leading_articles\";i:1;s:18:\"blog_class_leading\";s:0:\"\";s:18:\"num_intro_articles\";i:4;s:10:\"blog_class\";s:0:\"\";s:11:\"num_columns\";i:1;s:18:\"multi_column_order\";s:1:\"0\";s:9:\"num_links\";i:4;s:24:\"show_subcategory_content\";s:1:\"0\";s:16:\"link_intro_image\";s:1:\"0\";s:21:\"show_pagination_limit\";s:1:\"1\";s:12:\"filter_field\";s:4:\"hide\";s:13:\"show_headings\";s:1:\"1\";s:14:\"list_show_date\";s:1:\"0\";s:11:\"date_format\";s:0:\"\";s:14:\"list_show_hits\";s:1:\"1\";s:16:\"list_show_author\";s:1:\"1\";s:11:\"display_num\";s:2:\"10\";s:11:\"orderby_pri\";s:5:\"order\";s:11:\"orderby_sec\";s:5:\"rdate\";s:10:\"order_date\";s:9:\"published\";s:15:\"show_pagination\";s:1:\"2\";s:23:\"show_pagination_results\";s:1:\"1\";s:13:\"show_featured\";s:4:\"show\";s:14:\"show_feed_link\";s:1:\"1\";s:12:\"feed_summary\";s:1:\"0\";s:18:\"feed_show_readmore\";s:1:\"0\";s:7:\"sef_ids\";i:1;s:20:\"custom_fields_enable\";s:1:\"1\";s:16:\"workflow_enabled\";s:1:\"0\";}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"version\";i:1;s:8:\"ordering\";i:0;s:8:\"category\";s:6:\"Joomla\";s:9:\"cat_state\";i:1;s:10:\"cat_access\";i:1;s:4:\"slug\";s:6:\"8:love\";s:7:\"catslug\";s:9:\"10:joomla\";s:6:\"author\";s:9:\"Webmaster\";s:6:\"layout\";s:7:\"article\";s:7:\"context\";s:19:\"com_content.article\";s:8:\"imageUrl\";s:126:\"images/sampledata/cassiopeia/nasa2-640.jpg#joomlaImage://local-images/sampledata/cassiopeia/nasa2-640.jpg?width=640&height=320\";s:8:\"imageAlt\";s:0:\"\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:7:\"metakey\";i:4;s:8:\"metadesc\";i:5;s:10:\"metaauthor\";i:6;s:6:\"author\";i:7;s:16:\"created_by_alias\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;s:19:\"2024-06-27 15:01:19\";i:10;N;i:11;s:60:\"index.php?option=com_content&view=article&id=8:love&catid=10\";i:12;N;i:13;s:19:\"2024-06-27 15:01:19\";i:14;i:1;i:15;a:4:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:7:\"Article\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:9;}}s:6:\"Author\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:6:\"Joomla\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:10;}}s:8:\"Category\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:6:\"Joomla\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:1;s:2:\"id\";i:14;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:7;}}}i:16;s:4:\"Love\";i:17;i:3;i:18;s:46:\"index.php?option=com_content&view=article&id=8\";}'),
(17,'index.php?option=com_content&view=article&id=9','index.php?option=com_content&view=article&id=9:joomla&catid=10','Joomla',' We proudly present Joomla Version 5! Learn more about workflows in Joomla. ','2024-06-27 15:01:19','f330c679fbbf6b364098d85c83982b76',1,1,1,'*','2024-06-27 15:01:19',NULL,'2024-06-27 15:01:19',NULL,0,0,3,'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"en-GB\";i:2;s:76:\" We proudly present Joomla Version 5! Learn more about workflows in Joomla. \";i:3;a:27:{s:2:\"id\";i:9;s:5:\"alias\";s:6:\"joomla\";s:7:\"summary\";s:104:\"<p><strong>We proudly present Joomla Version 5!</strong></p><p>Learn more about workflows in Joomla.</p>\";s:4:\"body\";s:395:\"<p>Cupcake ipsum dolor. Sit amet cotton candy ice cream sesame snaps cake marshmallow powder. Ice cream chocolate cake marshmallow halvah bonbon. Dragée carrot cake danish candy muffin brownie. Candy sugar plum ice cream chupa chups macaroon tiramisu soufflé oat cake. Topping cheesecake lollipop gummi bears icing sweet roll donut liquorice. Pie jelly-o candy donut oat cake cotton candy.</p>\";s:6:\"images\";s:241:\"{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa3-640.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa3-640.jpg?width=640&height=320\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":1,\"image_intro_caption\":\"\"}\";s:5:\"catid\";i:10;s:10:\"created_by\";i:1000;s:16:\"created_by_alias\";s:6:\"Joomla\";s:8:\"modified\";s:19:\"2024-06-27 15:01:19\";s:11:\"modified_by\";i:1000;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":86:{s:14:\"article_layout\";s:9:\"_:default\";s:10:\"show_title\";s:1:\"1\";s:11:\"link_titles\";s:1:\"1\";s:10:\"show_intro\";s:1:\"1\";s:19:\"info_block_position\";s:1:\"0\";s:21:\"info_block_show_title\";s:1:\"1\";s:13:\"show_category\";s:1:\"1\";s:13:\"link_category\";s:1:\"1\";s:20:\"show_parent_category\";s:1:\"0\";s:20:\"link_parent_category\";s:1:\"0\";s:17:\"show_associations\";s:1:\"0\";s:5:\"flags\";s:1:\"1\";s:11:\"show_author\";s:1:\"1\";s:11:\"link_author\";s:1:\"0\";s:16:\"show_create_date\";s:1:\"0\";s:16:\"show_modify_date\";s:1:\"0\";s:17:\"show_publish_date\";s:1:\"1\";s:20:\"show_item_navigation\";s:1:\"1\";s:13:\"show_readmore\";s:1:\"1\";s:19:\"show_readmore_title\";s:1:\"1\";s:14:\"readmore_limit\";i:100;s:9:\"show_tags\";s:1:\"1\";s:11:\"record_hits\";s:1:\"1\";s:9:\"show_hits\";s:1:\"1\";s:11:\"show_noauth\";s:1:\"0\";s:13:\"urls_position\";i:0;s:7:\"captcha\";s:0:\"\";s:23:\"show_publishing_options\";s:1:\"1\";s:20:\"show_article_options\";s:1:\"1\";s:27:\"show_configure_edit_options\";s:1:\"1\";s:16:\"show_permissions\";s:1:\"1\";s:22:\"show_associations_edit\";s:1:\"1\";s:12:\"save_history\";s:1:\"1\";s:13:\"history_limit\";i:10;s:25:\"show_urls_images_frontend\";s:1:\"0\";s:24:\"show_urls_images_backend\";s:1:\"1\";s:7:\"targeta\";i:0;s:7:\"targetb\";i:0;s:7:\"targetc\";i:0;s:11:\"float_intro\";s:4:\"left\";s:14:\"float_fulltext\";s:4:\"left\";s:15:\"category_layout\";s:6:\"_:blog\";s:19:\"show_category_title\";s:1:\"0\";s:16:\"show_description\";s:1:\"0\";s:22:\"show_description_image\";s:1:\"0\";s:8:\"maxLevel\";s:1:\"1\";s:21:\"show_empty_categories\";s:1:\"0\";s:16:\"show_no_articles\";s:1:\"1\";s:32:\"show_category_heading_title_text\";s:1:\"1\";s:16:\"show_subcat_desc\";s:1:\"1\";s:21:\"show_cat_num_articles\";s:1:\"0\";s:13:\"show_cat_tags\";s:1:\"1\";s:21:\"show_base_description\";s:1:\"1\";s:11:\"maxLevelcat\";s:2:\"-1\";s:25:\"show_empty_categories_cat\";s:1:\"0\";s:20:\"show_subcat_desc_cat\";s:1:\"1\";s:25:\"show_cat_num_articles_cat\";s:1:\"1\";s:20:\"num_leading_articles\";i:1;s:18:\"blog_class_leading\";s:0:\"\";s:18:\"num_intro_articles\";i:4;s:10:\"blog_class\";s:0:\"\";s:11:\"num_columns\";i:1;s:18:\"multi_column_order\";s:1:\"0\";s:9:\"num_links\";i:4;s:24:\"show_subcategory_content\";s:1:\"0\";s:16:\"link_intro_image\";s:1:\"0\";s:21:\"show_pagination_limit\";s:1:\"1\";s:12:\"filter_field\";s:4:\"hide\";s:13:\"show_headings\";s:1:\"1\";s:14:\"list_show_date\";s:1:\"0\";s:11:\"date_format\";s:0:\"\";s:14:\"list_show_hits\";s:1:\"1\";s:16:\"list_show_author\";s:1:\"1\";s:11:\"display_num\";s:2:\"10\";s:11:\"orderby_pri\";s:5:\"order\";s:11:\"orderby_sec\";s:5:\"rdate\";s:10:\"order_date\";s:9:\"published\";s:15:\"show_pagination\";s:1:\"2\";s:23:\"show_pagination_results\";s:1:\"1\";s:13:\"show_featured\";s:4:\"show\";s:14:\"show_feed_link\";s:1:\"1\";s:12:\"feed_summary\";s:1:\"0\";s:18:\"feed_show_readmore\";s:1:\"0\";s:7:\"sef_ids\";i:1;s:20:\"custom_fields_enable\";s:1:\"1\";s:16:\"workflow_enabled\";s:1:\"0\";}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"version\";i:1;s:8:\"ordering\";i:0;s:8:\"category\";s:6:\"Joomla\";s:9:\"cat_state\";i:1;s:10:\"cat_access\";i:1;s:4:\"slug\";s:8:\"9:joomla\";s:7:\"catslug\";s:9:\"10:joomla\";s:6:\"author\";s:9:\"Webmaster\";s:6:\"layout\";s:7:\"article\";s:7:\"context\";s:19:\"com_content.article\";s:8:\"imageUrl\";s:126:\"images/sampledata/cassiopeia/nasa3-640.jpg#joomlaImage://local-images/sampledata/cassiopeia/nasa3-640.jpg?width=640&height=320\";s:8:\"imageAlt\";s:0:\"\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:7:\"metakey\";i:4;s:8:\"metadesc\";i:5;s:10:\"metaauthor\";i:6;s:6:\"author\";i:7;s:16:\"created_by_alias\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;s:19:\"2024-06-27 15:01:19\";i:10;N;i:11;s:62:\"index.php?option=com_content&view=article&id=9:joomla&catid=10\";i:12;N;i:13;s:19:\"2024-06-27 15:01:19\";i:14;i:1;i:15;a:4:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:7:\"Article\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:9;}}s:6:\"Author\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:6:\"Joomla\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:10;}}s:8:\"Category\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:6:\"Joomla\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:1;s:2:\"id\";i:14;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:7;}}}i:16;s:6:\"Joomla\";i:17;i:3;i:18;s:46:\"index.php?option=com_content&view=article&id=9\";}'),
(18,'index.php?option=com_content&view=article&id=10','index.php?option=com_content&view=article&id=10:new-feature-workflows&catid=9','New feature: Workflows',' Workflows manage the stages your articles must go through until they are published. The component to manage workflows is not enabled by default. To see the workflow that we have provided with the sample data, you first need to enable this functionality. Access the administration area From \'Content\' > \'Articles\' > \'Options\' > \'Integration\' tab set \'Enable workflow\' to \'Yes\' Save changes Now when you access \'Content\' again you will see the section \'Workflows\'. When you edit an article you will also see the new transitions for articles related to workflows. ','2024-06-27 15:01:19','bf34d63c13147688ceef67e5a2d11480',1,1,1,'*','2024-06-27 15:01:19',NULL,'2024-06-27 15:01:19',NULL,0,0,3,'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"en-GB\";i:2;s:562:\" Workflows manage the stages your articles must go through until they are published. The component to manage workflows is not enabled by default. To see the workflow that we have provided with the sample data, you first need to enable this functionality. Access the administration area From \'Content\' > \'Articles\' > \'Options\' > \'Integration\' tab set \'Enable workflow\' to \'Yes\' Save changes Now when you access \'Content\' again you will see the section \'Workflows\'. When you edit an article you will also see the new transitions for articles related to workflows. \";i:3;a:25:{s:2:\"id\";i:10;s:5:\"alias\";s:21:\"new feature workflows\";s:7:\"summary\";s:624:\"<p>Workflows manage the stages your articles must go through until they are published.</p><p>The component to manage workflows is not enabled by default.</p><p>To see the workflow that we have provided with the sample data, you first need to enable this functionality.</p><ol><li>Access the administration area</li><li>From \'Content\' > \'Articles\' > \'Options\' > \'Integration\' tab set \'Enable workflow\' to \'Yes\'</li><li>Save changes</li></ol><p>Now when you access \'Content\' again you will see the section \'Workflows\'.</p><p>When you edit an article you will also see the new transitions for articles related to workflows.</p>\";s:4:\"body\";s:0:\"\";s:6:\"images\";s:410:\"{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/cassiopeia\\/nasa4-400.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa4-400.jpg?width=400&height=400\",\"float_fulltext\":\"float-end\",\"image_fulltext_alt\":\"\",\"image_fulltext_alt_empty\":1,\"image_fulltext_caption\":\"www.nasa.gov\\/multimedia\\/imagegallery\"}\";s:5:\"catid\";i:9;s:10:\"created_by\";i:1000;s:16:\"created_by_alias\";s:6:\"Joomla\";s:8:\"modified\";s:19:\"2024-06-27 15:01:19\";s:11:\"modified_by\";i:1000;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":86:{s:14:\"article_layout\";s:9:\"_:default\";s:10:\"show_title\";s:1:\"1\";s:11:\"link_titles\";s:1:\"1\";s:10:\"show_intro\";s:1:\"1\";s:19:\"info_block_position\";s:1:\"0\";s:21:\"info_block_show_title\";s:1:\"1\";s:13:\"show_category\";s:1:\"1\";s:13:\"link_category\";s:1:\"1\";s:20:\"show_parent_category\";s:1:\"0\";s:20:\"link_parent_category\";s:1:\"0\";s:17:\"show_associations\";s:1:\"0\";s:5:\"flags\";s:1:\"1\";s:11:\"show_author\";s:1:\"1\";s:11:\"link_author\";s:1:\"0\";s:16:\"show_create_date\";s:1:\"0\";s:16:\"show_modify_date\";s:1:\"0\";s:17:\"show_publish_date\";s:1:\"1\";s:20:\"show_item_navigation\";s:1:\"1\";s:13:\"show_readmore\";s:1:\"1\";s:19:\"show_readmore_title\";s:1:\"1\";s:14:\"readmore_limit\";i:100;s:9:\"show_tags\";s:1:\"1\";s:11:\"record_hits\";s:1:\"1\";s:9:\"show_hits\";s:1:\"1\";s:11:\"show_noauth\";s:1:\"0\";s:13:\"urls_position\";i:0;s:7:\"captcha\";s:0:\"\";s:23:\"show_publishing_options\";s:1:\"1\";s:20:\"show_article_options\";s:1:\"1\";s:27:\"show_configure_edit_options\";s:1:\"1\";s:16:\"show_permissions\";s:1:\"1\";s:22:\"show_associations_edit\";s:1:\"1\";s:12:\"save_history\";s:1:\"1\";s:13:\"history_limit\";i:10;s:25:\"show_urls_images_frontend\";s:1:\"0\";s:24:\"show_urls_images_backend\";s:1:\"1\";s:7:\"targeta\";i:0;s:7:\"targetb\";i:0;s:7:\"targetc\";i:0;s:11:\"float_intro\";s:4:\"left\";s:14:\"float_fulltext\";s:4:\"left\";s:15:\"category_layout\";s:6:\"_:blog\";s:19:\"show_category_title\";s:1:\"0\";s:16:\"show_description\";s:1:\"0\";s:22:\"show_description_image\";s:1:\"0\";s:8:\"maxLevel\";s:1:\"1\";s:21:\"show_empty_categories\";s:1:\"0\";s:16:\"show_no_articles\";s:1:\"1\";s:32:\"show_category_heading_title_text\";s:1:\"1\";s:16:\"show_subcat_desc\";s:1:\"1\";s:21:\"show_cat_num_articles\";s:1:\"0\";s:13:\"show_cat_tags\";s:1:\"1\";s:21:\"show_base_description\";s:1:\"1\";s:11:\"maxLevelcat\";s:2:\"-1\";s:25:\"show_empty_categories_cat\";s:1:\"0\";s:20:\"show_subcat_desc_cat\";s:1:\"1\";s:25:\"show_cat_num_articles_cat\";s:1:\"1\";s:20:\"num_leading_articles\";i:1;s:18:\"blog_class_leading\";s:0:\"\";s:18:\"num_intro_articles\";i:4;s:10:\"blog_class\";s:0:\"\";s:11:\"num_columns\";i:1;s:18:\"multi_column_order\";s:1:\"0\";s:9:\"num_links\";i:4;s:24:\"show_subcategory_content\";s:1:\"0\";s:16:\"link_intro_image\";s:1:\"0\";s:21:\"show_pagination_limit\";s:1:\"1\";s:12:\"filter_field\";s:4:\"hide\";s:13:\"show_headings\";s:1:\"1\";s:14:\"list_show_date\";s:1:\"0\";s:11:\"date_format\";s:0:\"\";s:14:\"list_show_hits\";s:1:\"1\";s:16:\"list_show_author\";s:1:\"1\";s:11:\"display_num\";s:2:\"10\";s:11:\"orderby_pri\";s:5:\"order\";s:11:\"orderby_sec\";s:5:\"rdate\";s:10:\"order_date\";s:9:\"published\";s:15:\"show_pagination\";s:1:\"2\";s:23:\"show_pagination_results\";s:1:\"1\";s:13:\"show_featured\";s:4:\"show\";s:14:\"show_feed_link\";s:1:\"1\";s:12:\"feed_summary\";s:1:\"0\";s:18:\"feed_show_readmore\";s:1:\"0\";s:7:\"sef_ids\";i:1;s:20:\"custom_fields_enable\";s:1:\"1\";s:16:\"workflow_enabled\";s:1:\"0\";}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"version\";i:1;s:8:\"ordering\";i:0;s:8:\"category\";s:4:\"Help\";s:9:\"cat_state\";i:1;s:10:\"cat_access\";i:1;s:4:\"slug\";s:24:\"10:new-feature-workflows\";s:7:\"catslug\";s:6:\"9:help\";s:6:\"author\";s:9:\"Webmaster\";s:6:\"layout\";s:7:\"article\";s:7:\"context\";s:19:\"com_content.article\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:7:\"metakey\";i:4;s:8:\"metadesc\";i:5;s:10:\"metaauthor\";i:6;s:6:\"author\";i:7;s:16:\"created_by_alias\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;s:19:\"2024-06-27 15:01:19\";i:10;N;i:11;s:77:\"index.php?option=com_content&view=article&id=10:new-feature-workflows&catid=9\";i:12;N;i:13;s:19:\"2024-06-27 15:01:19\";i:14;i:1;i:15;a:4:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:7:\"Article\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:9;}}s:6:\"Author\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:6:\"Joomla\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:10;}}s:8:\"Category\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:4:\"Help\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:1;s:2:\"id\";i:12;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:7;}}}i:16;s:22:\"New feature: Workflows\";i:17;i:3;i:18;s:47:\"index.php?option=com_content&view=article&id=10\";}'),
(19,'index.php?option=com_content&view=article&id=11','index.php?option=com_content&view=article&id=11:typography&catid=11','Typography',' Colour Scheme secondary primary info success warning danger text-secondary text-primary text-info text-success text-warning text-danger Typography (h1) Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p) Lorem Ipsum Dolor Sit Amet (h2) Lorem ipsum dolor sit amet, consectetuer adipiscing elit (strong), sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p) Lorem Ipsum Dolor Sit Amet (h3) Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p) Lorem Ipsum Dolor Sit Amet (h4) Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p) Lorem Ipsum Dolor Sit Amet (h5) Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p) Lorem ipsum dolor (a) Lists (ol)(li) Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur (ul)(li) Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur Displays Lorem (display-1) Lorem (display-2) Lorem ipsum (display-3) Lorem ipsum (display-4) Lorem ipsum arma virumque cano (lead) ','2024-06-27 15:01:19','8161fd0dc18a9040aa83757d9f48dfda',1,1,1,'*','2024-06-27 15:01:19',NULL,'2024-06-27 15:01:19',NULL,0,0,3,'O:52:\"Joomla\\Component\\Finder\\Administrator\\Indexer\\Result\":19:{i:0;i:1;i:1;s:5:\"en-GB\";i:2;s:1903:\" Colour Scheme secondary primary info success warning danger text-secondary text-primary text-info text-success text-warning text-danger Typography (h1) Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p) Lorem Ipsum Dolor Sit Amet (h2) Lorem ipsum dolor sit amet, consectetuer adipiscing elit (strong), sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p) Lorem Ipsum Dolor Sit Amet (h3) Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p) Lorem Ipsum Dolor Sit Amet (h4) Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p) Lorem Ipsum Dolor Sit Amet (h5) Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p) Lorem ipsum dolor (a) Lists (ol)(li) Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur (ul)(li) Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur Displays Lorem (display-1) Lorem (display-2) Lorem ipsum (display-3) Lorem ipsum (display-4) Lorem ipsum arma virumque cano (lead) \";i:3;a:25:{s:2:\"id\";i:11;s:5:\"alias\";s:10:\"typography\";s:7:\"summary\";s:2717:\"<h1>Colour Scheme</h1> <p> <span class=\"btn btn-secondary\">secondary</span>   <span class=\"btn btn-primary\">primary</span>   <span class=\"btn btn-info\">info</span>   <span class=\"btn btn-success\">success</span>   <span class=\"btn btn-warning\">warning</span>   <span class=\"btn btn-danger\">danger</span> </p> <p><span class=\"text text-secondary\">text-secondary</span>  <span class=\"text text-primary\">text-primary</span>  <span class=\"text text-info\">text-info</span>  <span class=\"text text-success\">text-success</span>  <span class=\"text text-warning\">text-warning</span>  <span class=\"text text-danger\">text-danger</span></p><h1>Typography (h1)</h1><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)</p><h2>Lorem Ipsum Dolor Sit Amet (h2)</h2><p><strong>Lorem ipsum dolor sit amet, consectetuer adipiscing elit </strong> (strong), sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)</p><h3>Lorem Ipsum Dolor Sit Amet (h3)</h3><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)</p><h4>Lorem Ipsum Dolor Sit Amet (h4)</h4><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)</p><h5>Lorem Ipsum Dolor Sit Amet (h5)</h5><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)</p> <p><a href=\"index.php\"> Lorem ipsum dolor (a)</a></p><h1>Lists</h1> <p>(ol)(li)</p> <ol> <li>Lorem ipsum dolor sit amet consectetur</li> <li>Lorem ipsum dolor sit amet consectetur</li> </ol> <p>(ul)(li)</p> <ul> <li>Lorem ipsum dolor sit amet consectetur</li> <li>Lorem ipsum dolor sit amet consectetur</li> </ul> <h1>Displays</h1><p class=\"display-1\">Lorem (display-1)</p><p class=\"display-2\">Lorem (display-2)</p><p class=\"display-3\">Lorem ipsum (display-3)</p><p class=\"display-4\">Lorem ipsum (display-4)</p><p class=\"lead\">Lorem ipsum arma virumque cano (lead)</p>\";s:4:\"body\";s:0:\"\";s:6:\"images\";s:0:\"\";s:5:\"catid\";i:11;s:10:\"created_by\";i:1000;s:16:\"created_by_alias\";s:6:\"Joomla\";s:8:\"modified\";s:19:\"2024-06-27 15:01:19\";s:11:\"modified_by\";i:1000;s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":86:{s:14:\"article_layout\";s:9:\"_:default\";s:10:\"show_title\";s:1:\"1\";s:11:\"link_titles\";s:1:\"1\";s:10:\"show_intro\";s:1:\"1\";s:19:\"info_block_position\";s:1:\"0\";s:21:\"info_block_show_title\";s:1:\"1\";s:13:\"show_category\";s:1:\"1\";s:13:\"link_category\";s:1:\"1\";s:20:\"show_parent_category\";s:1:\"0\";s:20:\"link_parent_category\";s:1:\"0\";s:17:\"show_associations\";s:1:\"0\";s:5:\"flags\";s:1:\"1\";s:11:\"show_author\";s:1:\"1\";s:11:\"link_author\";s:1:\"0\";s:16:\"show_create_date\";s:1:\"0\";s:16:\"show_modify_date\";s:1:\"0\";s:17:\"show_publish_date\";s:1:\"1\";s:20:\"show_item_navigation\";s:1:\"1\";s:13:\"show_readmore\";s:1:\"1\";s:19:\"show_readmore_title\";s:1:\"1\";s:14:\"readmore_limit\";i:100;s:9:\"show_tags\";s:1:\"1\";s:11:\"record_hits\";s:1:\"1\";s:9:\"show_hits\";s:1:\"1\";s:11:\"show_noauth\";s:1:\"0\";s:13:\"urls_position\";i:0;s:7:\"captcha\";s:0:\"\";s:23:\"show_publishing_options\";s:1:\"1\";s:20:\"show_article_options\";s:1:\"1\";s:27:\"show_configure_edit_options\";s:1:\"1\";s:16:\"show_permissions\";s:1:\"1\";s:22:\"show_associations_edit\";s:1:\"1\";s:12:\"save_history\";s:1:\"1\";s:13:\"history_limit\";i:10;s:25:\"show_urls_images_frontend\";s:1:\"0\";s:24:\"show_urls_images_backend\";s:1:\"1\";s:7:\"targeta\";i:0;s:7:\"targetb\";i:0;s:7:\"targetc\";i:0;s:11:\"float_intro\";s:4:\"left\";s:14:\"float_fulltext\";s:4:\"left\";s:15:\"category_layout\";s:6:\"_:blog\";s:19:\"show_category_title\";s:1:\"0\";s:16:\"show_description\";s:1:\"0\";s:22:\"show_description_image\";s:1:\"0\";s:8:\"maxLevel\";s:1:\"1\";s:21:\"show_empty_categories\";s:1:\"0\";s:16:\"show_no_articles\";s:1:\"1\";s:32:\"show_category_heading_title_text\";s:1:\"1\";s:16:\"show_subcat_desc\";s:1:\"1\";s:21:\"show_cat_num_articles\";s:1:\"0\";s:13:\"show_cat_tags\";s:1:\"1\";s:21:\"show_base_description\";s:1:\"1\";s:11:\"maxLevelcat\";s:2:\"-1\";s:25:\"show_empty_categories_cat\";s:1:\"0\";s:20:\"show_subcat_desc_cat\";s:1:\"1\";s:25:\"show_cat_num_articles_cat\";s:1:\"1\";s:20:\"num_leading_articles\";i:1;s:18:\"blog_class_leading\";s:0:\"\";s:18:\"num_intro_articles\";i:4;s:10:\"blog_class\";s:0:\"\";s:11:\"num_columns\";i:1;s:18:\"multi_column_order\";s:1:\"0\";s:9:\"num_links\";i:4;s:24:\"show_subcategory_content\";s:1:\"0\";s:16:\"link_intro_image\";s:1:\"0\";s:21:\"show_pagination_limit\";s:1:\"1\";s:12:\"filter_field\";s:4:\"hide\";s:13:\"show_headings\";s:1:\"1\";s:14:\"list_show_date\";s:1:\"0\";s:11:\"date_format\";s:0:\"\";s:14:\"list_show_hits\";s:1:\"1\";s:16:\"list_show_author\";s:1:\"1\";s:11:\"display_num\";s:2:\"10\";s:11:\"orderby_pri\";s:5:\"order\";s:11:\"orderby_sec\";s:5:\"rdate\";s:10:\"order_date\";s:9:\"published\";s:15:\"show_pagination\";s:1:\"2\";s:23:\"show_pagination_results\";s:1:\"1\";s:13:\"show_featured\";s:4:\"show\";s:14:\"show_feed_link\";s:1:\"1\";s:12:\"feed_summary\";s:1:\"0\";s:18:\"feed_show_readmore\";s:1:\"0\";s:7:\"sef_ids\";i:1;s:20:\"custom_fields_enable\";s:1:\"1\";s:16:\"workflow_enabled\";s:1:\"0\";}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}s:14:\"\0*\0initialized\";b:1;s:12:\"\0*\0separator\";s:1:\".\";}s:7:\"version\";i:1;s:8:\"ordering\";i:0;s:8:\"category\";s:10:\"Typography\";s:9:\"cat_state\";i:1;s:10:\"cat_access\";i:1;s:4:\"slug\";s:13:\"11:typography\";s:7:\"catslug\";s:13:\"11:typography\";s:6:\"author\";s:9:\"Webmaster\";s:6:\"layout\";s:7:\"article\";s:7:\"context\";s:19:\"com_content.article\";s:10:\"metaauthor\";N;}i:4;N;i:5;a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:7:\"metakey\";i:4;s:8:\"metadesc\";i:5;s:10:\"metaauthor\";i:6;s:6:\"author\";i:7;s:16:\"created_by_alias\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}i:6;s:1:\"*\";i:7;N;i:8;N;i:9;s:19:\"2024-06-27 15:01:19\";i:10;N;i:11;s:67:\"index.php?option=com_content&view=article&id=11:typography&catid=11\";i:12;N;i:13;s:19:\"2024-06-27 15:01:19\";i:14;i:1;i:15;a:4:{s:4:\"Type\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:7:\"Article\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:9;}}s:6:\"Author\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:6:\"Joomla\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:10;}}s:8:\"Category\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:10:\"Typography\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:1:\"*\";s:6:\"nested\";b:1;s:2:\"id\";i:15;}}s:8:\"Language\";a:1:{i:0;O:8:\"stdClass\":6:{s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;s:8:\"language\";s:0:\"\";s:6:\"nested\";b:0;s:2:\"id\";i:7;}}}i:16;s:10:\"Typography\";i:17;i:3;i:18;s:47:\"index.php?option=com_content&view=article&id=11\";}');
/*!40000 ALTER TABLE `jjg9w_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_finder_links_terms`
--

DROP TABLE IF EXISTS `jjg9w_finder_links_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_finder_links_terms` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_finder_links_terms`
--

LOCK TABLES `jjg9w_finder_links_terms` WRITE;
/*!40000 ALTER TABLE `jjg9w_finder_links_terms` DISABLE KEYS */;
INSERT INTO `jjg9w_finder_links_terms` VALUES
(1,1,0.17),
(10,1,0.17),
(1,2,1.97321),
(15,2,2.34652),
(1,3,0.72),
(2,3,0.72),
(3,3,0.72),
(4,3,0.72),
(9,3,0.72),
(10,3,0.72),
(11,3,0.72),
(12,3,0.72),
(13,3,0.72),
(14,3,0.72),
(15,3,0.72),
(16,3,0.72),
(17,3,0.72),
(18,3,0.72),
(19,3,0.72),
(2,4,0.17),
(11,4,0.17),
(2,5,2.22),
(3,7,0.17),
(12,7,0.17),
(3,8,0.98679),
(16,8,1.17348),
(17,10,0.07),
(13,10,0.17),
(4,10,0.54),
(9,11,0.48),
(11,11,0.48),
(12,11,0.48),
(14,11,0.48),
(18,11,0.48),
(19,11,0.48),
(15,11,0.76),
(16,11,0.76),
(13,11,1.04),
(4,11,1.48),
(7,11,1.48),
(10,11,1.88),
(17,11,2.52),
(5,13,0.17),
(16,13,0.17),
(9,14,0.18669),
(14,14,0.18669),
(15,14,0.18669),
(12,14,0.56007),
(5,14,0.98679),
(11,14,1.17348),
(6,16,0.17),
(17,16,0.17),
(10,17,0.37338),
(6,17,0.98679),
(7,19,0.34),
(18,19,0.34),
(8,20,0.34),
(19,20,0.34),
(8,21,2.46679),
(19,21,2.93348),
(9,23,0.17),
(9,24,0.04669),
(14,24,0.04669),
(19,24,0.04669),
(11,24,0.09338),
(13,24,0.14007),
(10,24,0.18676),
(12,24,0.18676),
(9,25,0.18669),
(10,25,0.18669),
(11,25,0.37338),
(15,26,0.23331),
(17,26,0.23331),
(10,26,0.46662),
(12,26,1.23321),
(9,26,1.46652),
(9,27,0.14),
(13,27,0.14),
(16,27,0.14),
(12,27,0.28),
(14,27,0.28),
(11,27,0.56),
(10,27,1.4),
(9,28,0.14),
(13,28,0.14),
(14,28,0.14),
(15,28,0.14),
(18,28,0.14),
(12,28,0.28),
(10,28,0.7),
(9,29,0.09331),
(10,29,0.09331),
(13,29,0.09331),
(11,29,0.18662),
(9,30,0.14),
(9,31,0.09331),
(12,31,0.09331),
(13,31,0.09331),
(14,31,0.09331),
(18,31,0.09331),
(11,32,0.18669),
(14,32,0.18669),
(18,32,0.18669),
(9,32,0.37338),
(13,32,0.74676),
(9,33,0.18669),
(13,33,0.18669),
(9,34,0.09331),
(17,34,0.09331),
(11,34,0.18662),
(14,34,0.27993),
(12,34,0.37324),
(10,34,0.46655),
(13,34,0.65317),
(9,35,0.09331),
(10,35,0.27993),
(11,35,0.27993),
(9,36,0.28),
(10,36,0.28),
(12,36,0.28),
(13,36,0.28),
(9,37,0.18669),
(11,37,0.18669),
(10,37,0.37338),
(12,37,1.54686),
(9,38,0.28),
(9,39,0.42),
(14,39,0.42),
(9,40,0.23331),
(16,41,0.14),
(9,41,0.28),
(11,41,0.7),
(18,41,0.98),
(14,41,1.12),
(13,41,1.26),
(12,41,1.68),
(10,41,2.52),
(13,42,0.18669),
(14,42,0.18669),
(18,42,0.18669),
(10,42,0.37338),
(11,42,0.37338),
(9,42,0.56007),
(9,43,0.09331),
(16,43,0.18662),
(18,43,0.46655),
(12,43,0.55986),
(13,43,0.55986),
(11,43,0.86645),
(10,43,1.30634),
(9,44,0.18669),
(14,44,0.18669),
(10,44,0.37338),
(13,44,0.37338),
(18,44,0.37338),
(9,45,0.14),
(10,45,0.14),
(16,45,0.14),
(9,46,0.18669),
(12,46,0.18669),
(13,46,0.37338),
(18,46,0.37338),
(11,46,0.56007),
(10,46,1.12014),
(9,47,0.28),
(16,48,0.14),
(9,48,0.42),
(14,48,0.56),
(18,48,0.7),
(12,48,0.84),
(11,48,0.98),
(13,48,1.54),
(10,48,2.1),
(10,54,0.7),
(10,55,0.23331),
(10,56,0.28),
(10,57,0.28),
(13,57,0.28),
(18,57,0.56),
(10,58,0.14),
(11,58,0.14),
(13,58,0.14),
(11,59,0.60669),
(13,59,0.60669),
(14,59,0.60669),
(12,59,1.21338),
(10,59,1.82007),
(10,60,0.74662),
(10,61,0.32669),
(13,61,0.32669),
(10,62,0.18669),
(14,62,0.18669),
(18,62,0.18669),
(11,62,0.37338),
(13,62,0.37338),
(10,63,0.09331),
(12,63,0.09331),
(13,63,0.09331),
(18,63,0.09331),
(10,64,0.32669),
(11,64,0.32669),
(12,64,0.32669),
(18,64,0.32669),
(10,65,0.37331),
(11,65,0.74662),
(12,65,0.74662),
(18,65,0.74662),
(13,65,1.11993),
(11,66,0.09331),
(13,66,0.09331),
(10,66,0.27993),
(13,67,0.09331),
(15,67,0.09331),
(10,67,0.18662),
(14,68,0.42),
(10,68,0.84),
(10,69,0.23331),
(10,70,0.32669),
(10,71,0.14),
(10,72,0.32669),
(11,73,0.14),
(12,73,0.28),
(14,73,0.28),
(10,73,0.7),
(13,73,0.7),
(13,74,0.28),
(14,74,0.28),
(12,74,0.56),
(10,74,0.84),
(10,75,0.46669),
(10,76,0.60669),
(10,77,0.32669),
(12,77,0.65338),
(10,78,0.32669),
(14,78,0.32669),
(10,79,0.28),
(11,79,0.28),
(10,80,0.37331),
(10,81,0.37331),
(10,82,0.32669),
(18,82,0.32669),
(10,83,0.51331),
(14,83,0.51331),
(10,84,0.37331),
(10,85,0.42),
(10,86,0.27993),
(10,87,0.60669),
(10,88,0.23331),
(10,89,0.37338),
(10,90,0.23331),
(10,91,0.42),
(14,91,0.42),
(10,92,0.46669),
(13,92,0.46669),
(10,93,0.23331),
(18,93,0.23331),
(13,94,0.14),
(14,94,0.14),
(18,94,0.14),
(10,94,0.28),
(10,95,0.28),
(10,96,0.18669),
(12,97,0.18669),
(18,97,0.18669),
(10,97,0.56007),
(10,98,0.42),
(10,99,0.14),
(10,100,0.09331),
(11,100,0.09331),
(18,100,0.09331),
(10,101,0.14),
(13,101,0.28),
(10,102,0.18669),
(12,102,0.18669),
(16,102,0.18669),
(18,102,0.18669),
(10,103,0.18669),
(11,104,0.09331),
(13,104,0.09331),
(10,104,0.18662),
(12,104,0.27993),
(10,105,0.51331),
(14,106,0.32669),
(10,106,0.65338),
(10,107,0.42),
(13,108,0.09331),
(18,108,0.09331),
(11,108,0.18662),
(12,108,0.18662),
(14,108,0.18662),
(10,108,0.37324),
(10,109,0.23331),
(10,110,0.18669),
(10,111,0.23331),
(15,111,0.23331),
(17,111,0.23331),
(10,112,0.23331),
(10,113,0.18669),
(10,114,0.18669),
(11,114,0.18669),
(12,114,0.18669),
(14,114,0.18669),
(10,115,0.18669),
(10,116,0.14),
(11,116,0.14),
(14,116,0.14),
(11,117,0.23331),
(10,117,0.46662),
(13,117,0.46662),
(10,118,0.18669),
(10,119,0.18669),
(14,119,0.18669),
(10,120,0.32669),
(10,121,0.18669),
(13,121,0.37338),
(10,122,0.18669),
(10,123,0.18669),
(13,123,0.18669),
(14,123,0.18669),
(10,124,0.23331),
(10,125,0.65338),
(13,125,3.03355),
(12,126,0.18669),
(13,126,0.18669),
(14,126,0.18669),
(15,126,0.18669),
(17,126,0.18669),
(10,126,0.56007),
(10,127,0.18669),
(10,128,0.18669),
(10,129,0.18669),
(18,129,0.18669),
(11,130,0.14),
(14,130,0.14),
(10,130,0.28),
(18,130,0.88),
(10,131,0.14),
(18,131,0.14),
(10,132,0.14),
(18,132,0.14),
(12,133,0.09331),
(14,133,0.09331),
(15,133,0.09331),
(11,133,0.18662),
(13,133,0.18662),
(10,133,0.55986),
(11,134,0.09331),
(12,134,0.09331),
(13,134,0.09331),
(14,134,0.09331),
(15,134,0.09331),
(10,134,0.77314),
(10,135,0.14),
(10,136,0.18669),
(10,137,0.18669),
(10,138,0.32669),
(12,138,0.32669),
(13,138,0.32669),
(14,138,0.65338),
(10,139,0.27993),
(13,140,0.23331),
(11,140,0.46662),
(10,140,0.69993),
(10,141,0.18669),
(10,142,0.23331),
(12,142,0.23331),
(10,143,0.37331),
(10,144,0.74662),
(10,145,0.32669),
(10,146,0.42),
(18,146,0.42),
(10,147,0.46669),
(10,148,0.18669),
(10,149,0.18669),
(13,149,0.18669),
(18,149,0.18669),
(11,150,0.14),
(12,150,0.14),
(10,150,0.42),
(18,150,0.42),
(10,151,0.18669),
(13,152,0.28),
(10,152,0.84),
(10,153,0.46669),
(10,154,0.65338),
(14,155,0.37331),
(10,155,0.74662),
(12,155,0.74662),
(10,156,0.18669),
(12,157,0.37338),
(11,157,0.56007),
(13,157,0.74676),
(14,157,0.93345),
(10,157,2.85369),
(10,158,0.18669),
(13,158,0.18669),
(10,159,0.18669),
(10,160,0.28),
(10,161,0.14),
(13,161,0.14),
(10,162,0.74662),
(14,162,3.09314),
(10,163,0.42),
(14,163,0.42),
(18,164,0.18669),
(13,164,0.56007),
(10,164,0.93345),
(10,165,0.18669),
(10,166,0.46662),
(12,166,0.46662),
(10,167,0.28),
(10,168,0.18669),
(10,169,0.46662),
(14,169,0.46662),
(10,170,0.32669),
(10,171,1.02662),
(10,172,0.09331),
(10,173,0.18669),
(13,173,0.18669),
(14,173,0.18669),
(10,174,0.18669),
(13,175,0.23331),
(10,175,0.46662),
(10,176,0.23331),
(14,176,0.23331),
(10,177,0.32669),
(14,177,0.32669),
(10,178,0.37331),
(13,179,0.18669),
(10,179,0.37338),
(12,179,0.37338),
(10,180,0.18669),
(10,181,0.23331),
(14,182,0.23331),
(10,182,0.46662),
(13,182,1.63317),
(13,183,0.18669),
(14,183,0.18669),
(18,183,0.18669),
(10,183,0.37338),
(10,184,0.37338),
(14,185,0.32669),
(10,185,2.38017),
(18,186,0.18669),
(11,186,1.17348),
(14,186,1.36017),
(10,186,1.73355),
(12,186,1.73355),
(13,186,2.48031),
(11,309,0.23331),
(11,310,0.14),
(16,310,0.14),
(11,311,0.28),
(11,312,0.23331),
(12,312,0.23331),
(11,313,0.23331),
(18,314,0.32669),
(11,314,0.65338),
(11,315,0.42),
(11,316,0.37331),
(11,317,0.28),
(11,318,0.18669),
(11,319,0.28),
(11,320,0.32669),
(11,321,0.28),
(18,321,0.28),
(11,322,0.32669),
(11,323,0.18669),
(11,324,0.18669),
(11,325,1.72679),
(12,340,0.18669),
(12,341,0.28),
(12,342,0.37331),
(13,342,0.37331),
(12,343,0.28),
(12,344,0.32669),
(12,345,0.32669),
(13,345,0.32669),
(12,346,0.18669),
(12,347,0.37338),
(12,348,0.18669),
(12,349,1.17348),
(12,350,0.28),
(12,351,0.18669),
(12,352,1.12),
(12,353,0.56),
(12,354,0.28),
(12,355,0.23331),
(12,356,0.18669),
(12,357,0.18669),
(12,358,0.32669),
(12,359,0.28),
(12,360,0.18669),
(12,361,0.18669),
(13,361,0.18669),
(12,362,0.28),
(12,363,0.18669),
(12,364,0.37331),
(12,365,0.14),
(18,365,0.14),
(12,366,0.18669),
(12,367,0.14),
(18,367,0.14),
(12,368,0.37338),
(12,369,0.23331),
(12,370,0.28),
(12,371,0.14),
(13,371,0.14),
(13,403,0.56),
(13,404,0.28),
(13,405,0.14),
(13,406,0.28),
(13,407,0.23331),
(13,408,0.32669),
(13,409,0.46669),
(13,410,0.23331),
(13,411,0.37331),
(13,412,0.28),
(13,413,0.56),
(13,414,0.32669),
(13,415,0.42),
(13,416,0.18669),
(13,417,0.23331),
(13,418,0.46669),
(13,419,0.23331),
(13,420,0.23331),
(13,421,0.18669),
(13,422,0.18669),
(13,423,0.23331),
(13,424,0.69993),
(13,425,0.32669),
(13,426,0.37331),
(13,427,0.51331),
(13,428,0.23331),
(19,428,0.23331),
(13,429,0.32669),
(14,429,0.32669),
(13,430,0.14),
(14,430,0.14),
(13,431,1.12),
(13,432,0.18669),
(13,433,0.23331),
(13,434,0.14),
(13,435,0.65338),
(13,436,0.46662),
(13,437,0.60669),
(13,438,0.28),
(13,439,0.32669),
(13,440,0.46669),
(13,441,0.23331),
(13,442,0.28),
(13,443,0.18669),
(13,444,1.02662),
(13,445,0.32669),
(13,446,0.56007),
(13,447,0.18669),
(13,448,0.46662),
(13,449,0.14),
(13,450,0.93345),
(13,451,0.32669),
(14,451,0.32669),
(14,466,0.17),
(14,467,0.46669),
(14,468,0.46669),
(19,469,0.28),
(14,469,0.56),
(14,470,0.32669),
(14,471,0.18669),
(14,472,0.18669),
(14,473,0.46669),
(14,474,0.42),
(15,481,0.17),
(15,482,0.32669),
(15,483,0.37331),
(15,484,0.18669),
(17,484,0.18669),
(19,484,2.42697),
(15,485,0.42),
(15,486,0.23331),
(15,487,0.23331),
(15,488,0.46669),
(15,489,0.37338),
(19,489,0.93345),
(15,490,0.23331),
(17,490,0.23331),
(19,490,3.26634),
(15,491,0.28),
(19,491,1.4),
(15,492,0.32669),
(15,493,0.14),
(15,494,0.09331),
(15,495,0.28),
(15,496,0.23331),
(15,497,0.14),
(15,498,0.18669),
(19,498,0.93345),
(15,499,0.14),
(15,500,0.37324),
(15,501,0.42),
(15,502,0.37331),
(15,503,0.23331),
(17,503,0.23331),
(19,503,3.96627),
(15,504,0.23331),
(15,505,0.18669),
(15,506,0.28),
(15,507,0.23331),
(19,507,4.43289),
(15,508,0.23331),
(19,508,1.16655),
(15,509,0.09331),
(15,510,0.28),
(15,511,0.56),
(15,512,0.23331),
(15,513,0.46669),
(15,514,0.32669),
(15,515,0.14),
(16,515,0.14),
(15,516,0.28),
(19,516,0.7),
(15,517,0.14),
(17,517,0.14),
(19,517,1.82),
(15,518,0.18669),
(15,519,0.37331),
(15,520,0.28),
(15,521,0.09331),
(19,521,1.39965),
(15,522,0.18669),
(15,523,0.37331),
(15,524,0.37331),
(16,544,0.74662),
(16,545,0.42),
(16,546,0.42),
(16,547,0.32669),
(16,548,0.23331),
(16,549,0.18669),
(16,550,0.28),
(16,551,0.37338),
(16,552,0.37331),
(16,553,0.18669),
(16,554,0.37331),
(16,555,0.23331),
(16,556,0.32669),
(17,557,0.28),
(16,557,0.56),
(16,558,0.51331),
(16,559,0.28),
(16,560,0.46662),
(16,561,0.37331),
(16,562,0.37331),
(16,563,0.42),
(16,564,0.51331),
(16,565,0.42),
(16,566,0.37338),
(16,567,0.28),
(16,568,0.28),
(16,569,0.28),
(16,570,0.28),
(16,571,0.23331),
(16,572,0.18669),
(16,573,0.23331),
(16,574,0.28),
(16,575,0.51331),
(16,576,0.18669),
(16,577,0.74662),
(16,578,0.23331),
(16,579,0.32669),
(16,580,0.23331),
(16,581,0.23331),
(16,582,0.18669),
(16,583,0.18669),
(16,584,0.18669),
(16,585,0.18669),
(16,586,0.23331),
(16,587,0.14),
(16,588,0.28),
(16,589,0.56),
(16,590,0.32669),
(16,591,0.37331),
(16,592,0.28),
(16,593,0.37331),
(16,594,0.18669),
(16,595,0.37331),
(16,596,0.32669),
(16,597,0.37331),
(16,598,0.32669),
(16,599,0.23331),
(16,600,0.18669),
(16,601,0.98007),
(16,602,0.28),
(16,603,0.46662),
(16,604,0.23331),
(16,605,0.28),
(16,606,0.46669),
(16,607,0.28),
(16,608,0.69993),
(16,609,0.46669),
(16,610,0.09331),
(17,610,0.09331),
(18,610,0.09331),
(16,611,0.28),
(16,612,0.28),
(17,671,0.23331),
(17,672,0.28),
(17,673,0.32669),
(17,674,0.93345),
(17,675,1.16655),
(17,676,0.46669),
(17,677,0.42),
(17,678,0.23331),
(17,679,0.23331),
(17,680,0.56),
(17,681,0.69993),
(17,682,0.32669),
(17,683,0.28),
(17,684,0.46662),
(17,685,0.28),
(17,686,0.23331),
(17,687,0.28),
(17,688,0.42),
(17,689,0.23331),
(17,690,0.32669),
(17,691,0.42),
(17,692,0.37331),
(17,693,0.37331),
(17,694,1.02662),
(17,695,0.28),
(17,696,0.28),
(17,697,0.14),
(17,698,0.18669),
(17,699,0.28),
(17,700,0.32669),
(17,701,0.32669),
(17,702,0.18669),
(17,703,0.28),
(17,704,0.23331),
(17,705,0.32669),
(17,706,0.23331),
(17,707,0.23331),
(17,708,0.37331),
(17,709,0.32669),
(17,710,0.32669),
(17,711,0.42),
(18,711,3.48),
(18,734,0.46669),
(18,735,0.84),
(18,736,0.32669),
(18,737,0.60669),
(18,738,0.42),
(18,739,0.56),
(18,740,0.23331),
(18,741,0.65331),
(18,742,0.23331),
(18,743,0.18669),
(18,744,0.42),
(18,745,0.18669),
(18,746,0.28),
(18,747,0.32669),
(18,748,1.72679),
(18,749,0.60669),
(18,750,0.56),
(18,751,0.18669),
(18,752,0.37331),
(18,753,0.32669),
(18,754,0.32669),
(18,755,0.28),
(18,756,0.18669),
(18,757,0.32669),
(18,758,0.51331),
(18,759,0.23331),
(18,760,0.37331),
(18,761,0.42),
(19,765,0.46655),
(19,766,2.33345),
(19,767,1.63345),
(19,768,1.63345),
(19,769,0.18669),
(19,770,0.18669),
(19,771,2.8),
(19,772,2.05324),
(19,773,0.28),
(19,774,0.42),
(19,775,0.42),
(19,776,0.42),
(19,777,0.42),
(19,778,0.37331),
(19,779,0.93345),
(19,780,0.93345),
(19,781,1.63345),
(19,782,0.46655),
(19,783,1.4),
(19,784,0.09331),
(19,785,0.09331),
(19,786,0.09331),
(19,787,0.09331),
(19,788,0.09331),
(19,789,0.18669),
(19,790,1.63345),
(19,791,0.18669),
(19,792,0.18662),
(19,793,1.86655),
(19,794,1.16655),
(19,795,0.93345),
(19,796,0.93345),
(19,797,1.63345),
(19,798,1.63345),
(19,799,0.09331),
(19,800,0.23345),
(19,801,0.32669),
(19,802,0.93345),
(19,803,0.28),
(19,804,0.42),
(19,805,0.28),
(19,806,0.32669),
(19,807,1.86655),
(19,808,1.4),
(19,809,0.51331),
(19,810,0.42),
(19,811,0.56),
(19,812,0.65331),
(19,813,0.56),
(19,814,0.56),
(19,815,2.1),
(19,816,0.09331),
(19,817,2.56655),
(19,818,1.4),
(19,819,0.37331),
(19,820,1.86655),
(19,821,0.32669),
(19,822,0.93345);
/*!40000 ALTER TABLE `jjg9w_finder_links_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_finder_logging`
--

DROP TABLE IF EXISTS `jjg9w_finder_logging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_finder_logging` (
  `searchterm` varchar(255) NOT NULL DEFAULT '',
  `md5sum` varchar(32) NOT NULL DEFAULT '',
  `query` blob NOT NULL,
  `hits` int(11) NOT NULL DEFAULT 1,
  `results` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`md5sum`),
  KEY `searchterm` (`searchterm`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_finder_logging`
--

LOCK TABLES `jjg9w_finder_logging` WRITE;
/*!40000 ALTER TABLE `jjg9w_finder_logging` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjg9w_finder_logging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_finder_taxonomy`
--

DROP TABLE IF EXISTS `jjg9w_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) unsigned NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) NOT NULL DEFAULT '',
  `state` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `access` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_access` (`access`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_level` (`level`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_finder_taxonomy`
--

LOCK TABLES `jjg9w_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `jjg9w_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `jjg9w_finder_taxonomy` VALUES
(1,0,0,29,0,'','ROOT','root',1,1,'*'),
(2,1,1,8,1,'type','Type','type',1,1,''),
(3,2,2,3,2,'type/tag','Tag','tag',1,1,''),
(4,1,9,14,1,'author','Author','author',1,1,''),
(5,4,10,11,2,'author/webmaster','Webmaster','webmaster',1,1,''),
(6,1,15,18,1,'language','Language','language',1,1,''),
(7,6,16,17,2,'language/2aadaae48c21115dda3f90daaebb4724','*','2aadaae48c21115dda3f90daaebb4724',1,1,''),
(8,2,4,5,2,'type/category','Category','category',1,1,''),
(9,2,6,7,2,'type/article','Article','article',1,1,''),
(10,4,12,13,2,'author/joomla','Joomla','joomla',1,1,''),
(11,1,19,28,1,'category','Category','category',1,1,''),
(12,11,20,21,2,'category/help','Help','help',1,1,'*'),
(13,11,22,23,2,'category/blog','Blog','blog',1,1,'*'),
(14,11,24,25,2,'category/joomla','Joomla','joomla',1,1,'*'),
(15,11,26,27,2,'category/typography','Typography','typography',1,1,'*');
/*!40000 ALTER TABLE `jjg9w_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `jjg9w_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_finder_taxonomy_map`
--

LOCK TABLES `jjg9w_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `jjg9w_finder_taxonomy_map` DISABLE KEYS */;
INSERT INTO `jjg9w_finder_taxonomy_map` VALUES
(1,3),
(1,5),
(1,7),
(2,3),
(2,5),
(2,7),
(3,3),
(3,5),
(3,7),
(4,3),
(4,5),
(4,7),
(5,7),
(5,8),
(6,7),
(6,8),
(7,7),
(7,8),
(8,7),
(8,8),
(9,7),
(9,9),
(9,10),
(9,12),
(10,7),
(10,9),
(10,10),
(10,12),
(11,7),
(11,9),
(11,10),
(11,13),
(12,7),
(12,9),
(12,10),
(12,13),
(13,7),
(13,9),
(13,10),
(13,13),
(14,7),
(14,9),
(14,10),
(14,13),
(15,7),
(15,9),
(15,10),
(15,14),
(16,7),
(16,9),
(16,10),
(16,14),
(17,7),
(17,9),
(17,10),
(17,14),
(18,7),
(18,9),
(18,10),
(18,12),
(19,7),
(19,9),
(19,10),
(19,15);
/*!40000 ALTER TABLE `jjg9w_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_finder_terms`
--

DROP TABLE IF EXISTS `jjg9w_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `phrase` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `weight` float unsigned NOT NULL DEFAULT 0,
  `soundex` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `links` int(11) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term_language` (`term`,`language`),
  KEY `idx_stem` (`stem`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=828 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_finder_terms`
--

LOCK TABLES `jjg9w_finder_terms` WRITE;
/*!40000 ALTER TABLE `jjg9w_finder_terms` DISABLE KEYS */;
INSERT INTO `jjg9w_finder_terms` VALUES
(1,'2','2',0,0,0.1,'',2,'*'),
(2,'millions','millions',0,0,0.5333,'M452',2,'*'),
(3,'webmaster','webmaster',0,0,0.6,'W15236',15,'*'),
(4,'3','3',0,0,0.1,'',2,'*'),
(5,'worldwide','worldwide',0,0,0.6,'W643',1,'*'),
(7,'4','4',0,0,0.1,'',2,'*'),
(8,'love','love',0,0,0.2667,'L100',2,'*'),
(10,'5','5',0,0,0.1,'',3,'*'),
(11,'joomla','joomla',0,0,0.4,'J540',13,'*'),
(13,'8','8',0,0,0.1,'',2,'*'),
(14,'blog','blog',0,0,0.2667,'B420',6,'*'),
(16,'9','9',0,0,0.1,'',2,'*'),
(17,'help','help',0,0,0.2667,'H410',2,'*'),
(19,'10','10',0,0,0.2,'',2,'*'),
(20,'11','11',0,0,0.2,'',2,'*'),
(21,'typography','typography',0,0,0.6667,'T1261',2,'*'),
(23,'1','1',0,0,0.1,'',1,'*'),
(24,'a','a',0,0,0.0667,'A000',7,'*'),
(25,'able','able',0,0,0.2667,'A140',3,'*'),
(26,'about','about',0,0,0.3333,'A130',5,'*'),
(27,'and','and',0,0,0.2,'A530',7,'*'),
(28,'are','are',0,0,0.2,'A600',7,'*'),
(29,'be','be',0,0,0.1333,'B000',4,'*'),
(30,'bit','bit',0,0,0.2,'B300',1,'*'),
(31,'by','by',0,0,0.1333,'B000',5,'*'),
(32,'edit','edit',0,0,0.2667,'E300',5,'*'),
(33,'icon','icon',0,0,0.2667,'I250',2,'*'),
(34,'in','in',0,0,0.1333,'I500',7,'*'),
(35,'it','it',0,0,0.1333,'I300',3,'*'),
(36,'logged','logged',0,0,0.4,'L230',4,'*'),
(37,'page','page',0,0,0.2667,'P200',4,'*'),
(38,'person','person',0,0,0.4,'P625',1,'*'),
(39,'selecting','selecting',0,0,0.6,'S42352',2,'*'),
(40,'tells','tells',0,0,0.3333,'T420',1,'*'),
(41,'the','the',0,0,0.2,'T000',8,'*'),
(42,'this','this',0,0,0.2667,'T200',6,'*'),
(43,'to','to',0,0,0.1333,'T000',7,'*'),
(44,'when','when',0,0,0.2667,'W500',5,'*'),
(45,'who','who',0,0,0.2,'W000',3,'*'),
(46,'will','will',0,0,0.2667,'W400',6,'*'),
(47,'writes','writes',0,0,0.4,'W632',1,'*'),
(48,'you','you',0,0,0.2,'Y000',8,'*'),
(54,'\'administrator\'','\'administrator\'',0,0,1,'A3523636',1,'*'),
(55,'\'back','\'back',0,0,0.3333,'B200',1,'*'),
(56,'\'front','\'front',0,0,0.4,'F653',1,'*'),
(57,'access','access',0,0,0.4,'A200',3,'*'),
(58,'add','add',0,0,0.2,'A300',3,'*'),
(59,'administrator','administrator',0,0,0.8667,'A3523636',5,'*'),
(60,'advanced','advanced',0,0,0.5333,'A31523',1,'*'),
(61,'already','already',0,0,0.4667,'A463',2,'*'),
(62,'also','also',0,0,0.2667,'A420',5,'*'),
(63,'an','an',0,0,0.1333,'A500',4,'*'),
(64,'article','article',0,0,0.4667,'A6324',4,'*'),
(65,'articles','articles',0,0,0.5333,'A63242',5,'*'),
(66,'as','as',0,0,0.1333,'A200',3,'*'),
(67,'at','at',0,0,0.1333,'A300',3,'*'),
(68,'available','available',0,0,0.6,'A1414',2,'*'),
(69,'basic','basic',0,0,0.3333,'B200',1,'*'),
(70,'browser','browser',0,0,0.4667,'B626',1,'*'),
(71,'but','but',0,0,0.2,'B300',1,'*'),
(72,'buttons','buttons',0,0,0.4667,'B352',1,'*'),
(73,'can','can',0,0,0.2,'C500',5,'*'),
(74,'change','change',0,0,0.4,'C520',4,'*'),
(75,'commercial','commercial',0,0,0.6667,'C5624',1,'*'),
(76,'configuration','configuration',0,0,0.8667,'C512635',1,'*'),
(77,'content','content',0,0,0.4667,'C5353',2,'*'),
(78,'control','control',0,0,0.4667,'C5364',2,'*'),
(79,'create','create',0,0,0.4,'C630',2,'*'),
(80,'creating','creating',0,0,0.5333,'C6352',1,'*'),
(81,'deciding','deciding',0,0,0.5333,'D2352',1,'*'),
(82,'default','default',0,0,0.4667,'D143',2,'*'),
(83,'description','description',0,0,0.7333,'D26135',2,'*'),
(84,'detailed','detailed',0,0,0.5333,'D430',1,'*'),
(85,'different','different',0,0,0.6,'D1653',1,'*'),
(86,'do','do',0,0,0.1333,'D000',1,'*'),
(87,'documentation','documentation',0,0,0.8667,'D2535',1,'*'),
(88,'email','email',0,0,0.3333,'E540',1,'*'),
(89,'end\'','end\'',0,0,0.2667,'E530',1,'*'),
(90,'every','every',0,0,0.3333,'E160',1,'*'),
(91,'extension','extension',0,0,0.6,'E23525',2,'*'),
(92,'extensions','extensions',0,0,0.6667,'E235252',2,'*'),
(93,'first','first',0,0,0.3333,'F623',2,'*'),
(94,'for','for',0,0,0.2,'F600',4,'*'),
(95,'forums','forums',0,0,0.4,'F652',1,'*'),
(96,'free','free',0,0,0.2667,'F600',1,'*'),
(97,'from','from',0,0,0.2667,'F650',3,'*'),
(98,'functions','functions',0,0,0.6,'F52352',1,'*'),
(99,'get','get',0,0,0.2,'G300',1,'*'),
(100,'go','go',0,0,0.1333,'G000',3,'*'),
(101,'has','has',0,0,0.2,'H200',2,'*'),
(102,'have','have',0,0,0.2667,'H100',4,'*'),
(103,'here','here',0,0,0.2667,'H600',1,'*'),
(104,'if','if',0,0,0.1333,'I100',4,'*'),
(105,'information','information',0,0,0.7333,'I516535',1,'*'),
(106,'install','install',0,0,0.4667,'I5234',2,'*'),
(107,'installer','installer',0,0,0.6,'I52346',1,'*'),
(108,'is','is',0,0,0.1333,'I200',6,'*'),
(109,'items','items',0,0,0.3333,'I352',1,'*'),
(110,'kind','kind',0,0,0.2667,'K530',1,'*'),
(111,'learn','learn',0,0,0.3333,'L650',3,'*'),
(112,'level','level',0,0,0.3333,'L140',1,'*'),
(113,'line','line',0,0,0.2667,'L500',1,'*'),
(114,'link','link',0,0,0.2667,'L520',4,'*'),
(115,'list','list',0,0,0.2667,'L230',1,'*'),
(116,'log','log',0,0,0.2,'L200',3,'*'),
(117,'login','login',0,0,0.3333,'L250',3,'*'),
(118,'logo','logo',0,0,0.2667,'L200',1,'*'),
(119,'look','look',0,0,0.2667,'L200',2,'*'),
(120,'looking','looking',0,0,0.4667,'L252',1,'*'),
(121,'many','many',0,0,0.2667,'M000',2,'*'),
(122,'mean','mean',0,0,0.2667,'M000',1,'*'),
(123,'menu','menu',0,0,0.2667,'M000',3,'*'),
(124,'menus','menus',0,0,0.3333,'M200',1,'*'),
(125,'modules','modules',0,0,0.4667,'M342',2,'*'),
(126,'more','more',0,0,0.2667,'M600',6,'*'),
(127,'much','much',0,0,0.2667,'M200',1,'*'),
(128,'name','name',0,0,0.2667,'N000',1,'*'),
(129,'need','need',0,0,0.2667,'N300',2,'*'),
(130,'new','new',0,0,0.2,'N000',4,'*'),
(131,'not','not',0,0,0.2,'N300',2,'*'),
(132,'now','now',0,0,0.2,'N000',2,'*'),
(133,'of','of',0,0,0.1333,'O100',6,'*'),
(134,'on','on',0,0,0.1333,'O500',6,'*'),
(135,'one','one',0,0,0.2,'O500',1,'*'),
(136,'only','only',0,0,0.2667,'O540',1,'*'),
(137,'open','open',0,0,0.2667,'O150',1,'*'),
(138,'options','options',0,0,0.4667,'O1352',4,'*'),
(139,'or','or',0,0,0.1333,'O600',1,'*'),
(140,'other','other',0,0,0.3333,'O360',3,'*'),
(141,'part','part',0,0,0.2667,'P630',1,'*'),
(142,'parts','parts',0,0,0.3333,'P632',2,'*'),
(143,'password','password',0,0,0.5333,'P263',1,'*'),
(144,'probably','probably',0,0,0.5333,'P614',1,'*'),
(145,'provide','provide',0,0,0.4667,'P613',1,'*'),
(146,'published','published',0,0,0.6,'P423',2,'*'),
(147,'registered','registered',0,0,0.6667,'R2363',1,'*'),
(148,'same','same',0,0,0.2667,'S500',1,'*'),
(149,'save','save',0,0,0.2667,'S100',3,'*'),
(150,'see','see',0,0,0.2,'S000',4,'*'),
(151,'seen','seen',0,0,0.2667,'S500',1,'*'),
(152,'select','select',0,0,0.4,'S423',2,'*'),
(153,'separately','separately',0,0,0.6667,'S1634',1,'*'),
(154,'setting','setting',0,0,0.4667,'S352',1,'*'),
(155,'settings','settings',0,0,0.5333,'S352',3,'*'),
(156,'show','show',0,0,0.2667,'S000',1,'*'),
(157,'site','site',0,0,0.2667,'S300',5,'*'),
(158,'some','some',0,0,0.2667,'S500',2,'*'),
(159,'such','such',0,0,0.2667,'S000',1,'*'),
(160,'system','system',0,0,0.4,'S350',1,'*'),
(161,'tag','tag',0,0,0.2,'T200',2,'*'),
(162,'template','template',0,0,0.5333,'T5143',2,'*'),
(163,'templates','templates',0,0,0.6,'T51432',2,'*'),
(164,'that','that',0,0,0.2667,'T000',3,'*'),
(165,'them','them',0,0,0.2667,'T500',1,'*'),
(166,'there','there',0,0,0.3333,'T600',2,'*'),
(167,'things','things',0,0,0.4,'T520',1,'*'),
(168,'tips','tips',0,0,0.2667,'T120',1,'*'),
(169,'title','title',0,0,0.3333,'T400',2,'*'),
(170,'totally','totally',0,0,0.4667,'T400',1,'*'),
(171,'unpublished','unpublished',0,0,0.7333,'U51423',1,'*'),
(172,'up','up',0,0,0.1333,'U100',1,'*'),
(173,'used','used',0,0,0.2667,'U230',3,'*'),
(174,'user','user',0,0,0.2667,'U260',1,'*'),
(175,'users','users',0,0,0.3333,'U262',2,'*'),
(176,'using','using',0,0,0.3333,'U252',2,'*'),
(177,'visible','visible',0,0,0.4667,'V214',2,'*'),
(178,'visitors','visitors',0,0,0.5333,'V2362',1,'*'),
(179,'want','want',0,0,0.2667,'W530',3,'*'),
(180,'what','what',0,0,0.2667,'W300',1,'*'),
(181,'where','where',0,0,0.3333,'W600',1,'*'),
(182,'which','which',0,0,0.3333,'W200',3,'*'),
(183,'with','with',0,0,0.2667,'W300',4,'*'),
(184,'work','work',0,0,0.2667,'W620',1,'*'),
(185,'working','working',0,0,0.4667,'W6252',2,'*'),
(186,'your','your',0,0,0.2667,'Y600',6,'*'),
(309,'ahead','ahead',0,0,0.3333,'A300',1,'*'),
(310,'all','all',0,0,0.2,'A400',2,'*'),
(311,'bottom','bottom',0,0,0.4,'B350',1,'*'),
(312,'break','break',0,0,0.3333,'B620',2,'*'),
(313,'can\'t','can\'t',0,0,0.3333,'C530',1,'*'),
(314,'changes','changes',0,0,0.4667,'C520',2,'*'),
(315,'customise','customise',0,0,0.6,'C352',1,'*'),
(316,'existing','existing',0,0,0.5333,'E2352',1,'*'),
(317,'how','how',0,0,0.2,'H000',1,'*'),
(318,'make','make',0,0,0.2667,'M200',1,'*'),
(319,'modify','modify',0,0,0.4,'M310',1,'*'),
(320,'posting','posting',0,0,0.4667,'P2352',1,'*'),
(321,'sample','sample',0,0,0.4,'S514',2,'*'),
(322,'various','various',0,0,0.4667,'V620',1,'*'),
(323,'very','very',0,0,0.2667,'V600',1,'*'),
(324,'ways','ways',0,0,0.2667,'W200',1,'*'),
(325,'welcome','welcome',0,0,0.4667,'W425',1,'*'),
(340,'both','both',0,0,0.2667,'B300',1,'*'),
(341,'broken','broken',0,0,0.4,'B625',1,'*'),
(342,'category','category',0,0,0.5333,'C326',2,'*'),
(343,'column','column',0,0,0.4,'C450',1,'*'),
(344,'display','display',0,0,0.4667,'D214',1,'*'),
(345,'editing','editing',0,0,0.4667,'E352',2,'*'),
(346,'four','four',0,0,0.2667,'F600',1,'*'),
(347,'full','full',0,0,0.2667,'F400',1,'*'),
(348,'hide','hide',0,0,0.2667,'H300',1,'*'),
(349,'home','home',0,0,0.2667,'H500',1,'*'),
(350,'insert','insert',0,0,0.4,'I5263',1,'*'),
(351,'into','into',0,0,0.2667,'I530',1,'*'),
(352,'introduction','introduction',0,0,0.8,'I5363235',1,'*'),
(353,'introductory','introductory',0,0,0.8,'I5363236',1,'*'),
(354,'length','length',0,0,0.4,'L523',1,'*'),
(355,'links','links',0,0,0.3333,'L520',1,'*'),
(356,'most','most',0,0,0.2667,'M230',1,'*'),
(357,'next','next',0,0,0.2667,'N230',1,'*'),
(358,'numbers','numbers',0,0,0.4667,'N162',1,'*'),
(359,'oldest','oldest',0,0,0.4,'O4323',1,'*'),
(360,'post','post',0,0,0.2667,'P230',1,'*'),
(361,'read','read',0,0,0.2667,'R300',2,'*'),
(362,'recent','recent',0,0,0.4,'R253',1,'*'),
(363,'rest','rest',0,0,0.2667,'R230',1,'*'),
(364,'separate','separate',0,0,0.5333,'S163',1,'*'),
(365,'set','set',0,0,0.2,'S300',2,'*'),
(366,'span','span',0,0,0.2667,'S150',1,'*'),
(367,'tab','tab',0,0,0.2,'T100',2,'*'),
(368,'then','then',0,0,0.2667,'T500',1,'*'),
(369,'those','those',0,0,0.3333,'T200',1,'*'),
(370,'two','two',0,0,0.2,'T000',1,'*'),
(371,'use','use',0,0,0.2,'U200',2,'*'),
(403,'allows','allows',0,0,0.4,'A420',1,'*'),
(404,'always','always',0,0,0.4,'A420',1,'*'),
(405,'any','any',0,0,0.2,'A500',1,'*'),
(406,'appear','appear',0,0,0.4,'A160',1,'*'),
(407,'areas','areas',0,0,0.3333,'A620',1,'*'),
(408,'beneath','beneath',0,0,0.4667,'B530',1,'*'),
(409,'categories','categories',0,0,0.6667,'C3262',1,'*'),
(410,'close','close',0,0,0.3333,'C420',1,'*'),
(411,'commonly','commonly',0,0,0.5333,'C540',1,'*'),
(412,'corner','corner',0,0,0.4,'C656',1,'*'),
(413,'custom','custom',0,0,0.4,'C350',1,'*'),
(414,'develop','develop',0,0,0.4667,'D141',1,'*'),
(415,'directory','directory',0,0,0.6,'D6236',1,'*'),
(416,'each','each',0,0,0.2667,'E200',1,'*'),
(417,'enter','enter',0,0,0.3333,'E536',1,'*'),
(418,'experiment','experiment',0,0,0.6667,'E21653',1,'*'),
(419,'feeds','feeds',0,0,0.3333,'F320',1,'*'),
(420,'field','field',0,0,0.3333,'F430',1,'*'),
(421,'find','find',0,0,0.2667,'F530',1,'*'),
(422,'form','form',0,0,0.2667,'F650',1,'*'),
(423,'holds','holds',0,0,0.3333,'H432',1,'*'),
(424,'image','image',0,0,0.3333,'I520',1,'*'),
(425,'include','include',0,0,0.4667,'I5243',1,'*'),
(426,'includes','includes',0,0,0.5333,'I52432',1,'*'),
(427,'incorporate','incorporate',0,0,0.7333,'I526163',1,'*'),
(428,'lists','lists',0,0,0.3333,'L232',2,'*'),
(429,'manager','manager',0,0,0.4667,'M260',2,'*'),
(430,'may','may',0,0,0.2,'M000',2,'*'),
(431,'module','module',0,0,0.4,'M340',1,'*'),
(432,'news','news',0,0,0.2667,'N200',1,'*'),
(433,'older','older',0,0,0.3333,'O436',1,'*'),
(434,'out','out',0,0,0.2,'O300',1,'*'),
(435,'popular','popular',0,0,0.4667,'P460',1,'*'),
(436,'posts','posts',0,0,0.3333,'P232',1,'*'),
(437,'preconfigured','preconfigured',0,0,0.8667,'P6251263',1,'*'),
(438,'reader','reader',0,0,0.4,'R360',1,'*'),
(439,'readers','readers',0,0,0.4667,'R362',1,'*'),
(440,'restricted','restricted',0,0,0.6667,'R23623',1,'*'),
(441,'right','right',0,0,0.3333,'R230',1,'*'),
(442,'screen','screen',0,0,0.4,'S650',1,'*'),
(443,'sure','sure',0,0,0.2667,'S600',1,'*'),
(444,'syndication','syndication',0,0,0.7333,'S53235',1,'*'),
(445,'tagging','tagging',0,0,0.4667,'T252',1,'*'),
(446,'tags','tags',0,0,0.2667,'T200',1,'*'),
(447,'take','take',0,0,0.2667,'T200',1,'*'),
(448,'these','these',0,0,0.3333,'T200',1,'*'),
(449,'top','top',0,0,0.2,'T100',1,'*'),
(450,'type','type',0,0,0.2667,'T100',1,'*'),
(451,'website','website',0,0,0.4667,'W123',2,'*'),
(466,'6','6',0,0,0.1,'',1,'*'),
(467,'background','background',0,0,0.6667,'B2653',1,'*'),
(468,'cassiopeia','cassiopeia',0,0,0.6667,'C100',1,'*'),
(469,'colour','colour',0,0,0.4,'C460',2,'*'),
(470,'example','example',0,0,0.4667,'E2514',1,'*'),
(471,'feel','feel',0,0,0.2667,'F400',1,'*'),
(472,'font','font',0,0,0.2667,'F530',1,'*'),
(473,'highlights','highlights',0,0,0.6667,'H24232',1,'*'),
(474,'installed','installed',0,0,0.6,'I52343',1,'*'),
(481,'7','7',0,0,0.1,'',1,'*'),
(482,'accusam','accusam',0,0,0.4667,'A250',1,'*'),
(483,'aliquyam','aliquyam',0,0,0.5333,'A425',1,'*'),
(484,'amet','amet',0,0,0.2667,'A530',3,'*'),
(485,'beautiful','beautiful',0,0,0.6,'B314',1,'*'),
(486,'built','built',0,0,0.3333,'B430',1,'*'),
(487,'clita','clita',0,0,0.3333,'C430',1,'*'),
(488,'consetetur','consetetur',0,0,0.6667,'C5236',1,'*'),
(489,'diam','diam',0,0,0.2667,'D500',2,'*'),
(490,'dolor','dolor',0,0,0.3333,'D460',3,'*'),
(491,'dolore','dolore',0,0,0.4,'D460',2,'*'),
(492,'dolores','dolores',0,0,0.4667,'D462',1,'*'),
(493,'duo','duo',0,0,0.2,'D000',1,'*'),
(494,'ea','ea',0,0,0.1333,'E000',1,'*'),
(495,'eirmod','eirmod',0,0,0.4,'E653',1,'*'),
(496,'elitr','elitr',0,0,0.3333,'E436',1,'*'),
(497,'eos','eos',0,0,0.2,'E200',1,'*'),
(498,'erat','erat',0,0,0.2667,'E630',2,'*'),
(499,'est','est',0,0,0.2,'E230',1,'*'),
(500,'et','et',0,0,0.1333,'E300',1,'*'),
(501,'gubergren','gubergren',0,0,0.6,'G16265',1,'*'),
(502,'invidunt','invidunt',0,0,0.5333,'I51353',1,'*'),
(503,'ipsum','ipsum',0,0,0.3333,'I125',3,'*'),
(504,'justo','justo',0,0,0.3333,'J300',1,'*'),
(505,'kasd','kasd',0,0,0.2667,'K300',1,'*'),
(506,'labore','labore',0,0,0.4,'L160',1,'*'),
(507,'lorem','lorem',0,0,0.3333,'L650',2,'*'),
(508,'magna','magna',0,0,0.3333,'M250',2,'*'),
(509,'no','no',0,0,0.1333,'N000',1,'*'),
(510,'nonumy','nonumy',0,0,0.4,'N000',1,'*'),
(511,'presentation','presentation',0,0,0.8,'P62535',1,'*'),
(512,'rebum','rebum',0,0,0.3333,'R150',1,'*'),
(513,'sadipscing','sadipscing',0,0,0.6667,'S31252',1,'*'),
(514,'sanctus','sanctus',0,0,0.4667,'S5232',1,'*'),
(515,'sea','sea',0,0,0.2,'S000',2,'*'),
(516,'sed','sed',0,0,0.2,'S300',2,'*'),
(517,'sit','sit',0,0,0.2,'S300',3,'*'),
(518,'stet','stet',0,0,0.2667,'S300',1,'*'),
(519,'takimata','takimata',0,0,0.5333,'T253',1,'*'),
(520,'tempor','tempor',0,0,0.4,'T516',1,'*'),
(521,'ut','ut',0,0,0.1333,'U300',2,'*'),
(522,'vero','vero',0,0,0.2667,'V600',1,'*'),
(523,'voluptua','voluptua',0,0,0.5333,'V413',1,'*'),
(524,'websites','websites',0,0,0.5333,'W1232',1,'*'),
(544,'amaranth','amaranth',0,0,0.5333,'A5653',1,'*'),
(545,'artichoke','artichoke',0,0,0.6,'A632',1,'*'),
(546,'asparagus','asparagus',0,0,0.6,'A2162',1,'*'),
(547,'avocado','avocado',0,0,0.4667,'A123',1,'*'),
(548,'azuki','azuki',0,0,0.3333,'A200',1,'*'),
(549,'back','back',0,0,0.2667,'B200',1,'*'),
(550,'bamboo','bamboo',0,0,0.4,'B510',1,'*'),
(551,'bean','bean',0,0,0.2667,'B500',1,'*'),
(552,'beetroot','beetroot',0,0,0.5333,'B363',1,'*'),
(553,'bell','bell',0,0,0.2667,'B400',1,'*'),
(554,'brussels','brussels',0,0,0.5333,'B6242',1,'*'),
(555,'bunya','bunya',0,0,0.3333,'B500',1,'*'),
(556,'cabbage','cabbage',0,0,0.4667,'C120',1,'*'),
(557,'carrot','carrot',0,0,0.4,'C630',2,'*'),
(558,'cauliflower','cauliflower',0,0,0.7333,'C4146',1,'*'),
(559,'celery','celery',0,0,0.4,'C460',1,'*'),
(560,'chard','chard',0,0,0.3333,'C630',1,'*'),
(561,'chestnut','chestnut',0,0,0.5333,'C353',1,'*'),
(562,'chickpea','chickpea',0,0,0.5333,'C100',1,'*'),
(563,'chickweed','chickweed',0,0,0.6,'C300',1,'*'),
(564,'contributed','contributed',0,0,0.7333,'C53613',1,'*'),
(565,'coriander','coriander',0,0,0.6,'C6536',1,'*'),
(566,'corn','corn',0,0,0.2667,'C650',1,'*'),
(567,'daikon','daikon',0,0,0.4,'D250',1,'*'),
(568,'desert','desert',0,0,0.4,'D263',1,'*'),
(569,'endive','endive',0,0,0.4,'E531',1,'*'),
(570,'fennel','fennel',0,0,0.4,'F540',1,'*'),
(571,'gourd','gourd',0,0,0.3333,'G630',1,'*'),
(572,'gram','gram',0,0,0.2667,'G650',1,'*'),
(573,'green','green',0,0,0.3333,'G650',1,'*'),
(574,'greens','greens',0,0,0.4,'G652',1,'*'),
(575,'horseradish','horseradish',0,0,0.7333,'H62632',1,'*'),
(576,'kale','kale',0,0,0.2667,'K400',1,'*'),
(577,'kohlrabi','kohlrabi',0,0,0.5333,'K461',1,'*'),
(578,'kombu','kombu',0,0,0.3333,'K510',1,'*'),
(579,'lettuce','lettuce',0,0,0.4667,'L320',1,'*'),
(580,'lotus','lotus',0,0,0.3333,'L320',1,'*'),
(581,'maize','maize',0,0,0.3333,'M200',1,'*'),
(582,'moon','moon',0,0,0.2667,'M000',1,'*'),
(583,'napa','napa',0,0,0.2667,'N100',1,'*'),
(584,'nori','nori',0,0,0.2667,'N600',1,'*'),
(585,'nuts','nuts',0,0,0.2667,'N320',1,'*'),
(586,'onion','onion',0,0,0.3333,'O500',1,'*'),
(587,'pea','pea',0,0,0.2,'P000',1,'*'),
(588,'pepper','pepper',0,0,0.4,'P600',1,'*'),
(589,'potato','potato',0,0,0.4,'P300',1,'*'),
(590,'pumpkin','pumpkin',0,0,0.4667,'P5125',1,'*'),
(591,'purslane','purslane',0,0,0.5333,'P6245',1,'*'),
(592,'raisin','raisin',0,0,0.4,'R250',1,'*'),
(593,'ricebean','ricebean',0,0,0.5333,'R215',1,'*'),
(594,'root','root',0,0,0.2667,'R300',1,'*'),
(595,'rutabaga','rutabaga',0,0,0.5333,'R312',1,'*'),
(596,'salsify','salsify',0,0,0.4667,'S421',1,'*'),
(597,'scallion','scallion',0,0,0.5333,'S450',1,'*'),
(598,'seakale','seakale',0,0,0.4667,'S400',1,'*'),
(599,'shoot','shoot',0,0,0.3333,'S300',1,'*'),
(600,'soko','soko',0,0,0.2667,'S000',1,'*'),
(601,'spinach','spinach',0,0,0.4667,'S152',1,'*'),
(602,'sprout','sprout',0,0,0.4,'S163',1,'*'),
(603,'swiss','swiss',0,0,0.3333,'S000',1,'*'),
(604,'thank','thank',0,0,0.3333,'T520',1,'*'),
(605,'uurnip','uurnip',0,0,0.4,'U651',1,'*'),
(606,'volunteers','volunteers',0,0,0.6667,'V45362',1,'*'),
(607,'wakame','wakame',0,0,0.4,'W250',1,'*'),
(608,'water','water',0,0,0.3333,'W360',1,'*'),
(609,'watercress','watercress',0,0,0.6667,'W36262',1,'*'),
(610,'we','we',0,0,0.1333,'W000',3,'*'),
(611,'winter','winter',0,0,0.4,'W536',1,'*'),
(612,'yarrow','yarrow',0,0,0.4,'Y600',1,'*'),
(671,'bears','bears',0,0,0.3333,'B620',1,'*'),
(672,'bonbon','bonbon',0,0,0.4,'B515',1,'*'),
(673,'brownie','brownie',0,0,0.4667,'B650',1,'*'),
(674,'cake','cake',0,0,0.2667,'C000',1,'*'),
(675,'candy','candy',0,0,0.3333,'C530',1,'*'),
(676,'cheesecake','cheesecake',0,0,0.6667,'C000',1,'*'),
(677,'chocolate','chocolate',0,0,0.6,'C430',1,'*'),
(678,'chupa','chupa',0,0,0.3333,'C100',1,'*'),
(679,'chups','chups',0,0,0.3333,'C120',1,'*'),
(680,'cotton','cotton',0,0,0.4,'C350',1,'*'),
(681,'cream','cream',0,0,0.3333,'C650',1,'*'),
(682,'cupcake','cupcake',0,0,0.4667,'C120',1,'*'),
(683,'danish','danish',0,0,0.4,'D520',1,'*'),
(684,'donut','donut',0,0,0.3333,'D530',1,'*'),
(685,'dragée','dragée',0,0,0.4,'D620',1,'*'),
(686,'gummi','gummi',0,0,0.3333,'G500',1,'*'),
(687,'halvah','halvah',0,0,0.4,'H410',1,'*'),
(688,'ice','ice',0,0,0.2,'I200',1,'*'),
(689,'icing','icing',0,0,0.3333,'I252',1,'*'),
(690,'jelly-o','jelly-o',0,0,0.4667,'J400',1,'*'),
(691,'liquorice','liquorice',0,0,0.6,'L262',1,'*'),
(692,'lollipop','lollipop',0,0,0.5333,'L100',1,'*'),
(693,'macaroon','macaroon',0,0,0.5333,'M265',1,'*'),
(694,'marshmallow','marshmallow',0,0,0.7333,'M6254',1,'*'),
(695,'muffin','muffin',0,0,0.4,'M150',1,'*'),
(696,'oat','oat',0,0,0.2,'O300',1,'*'),
(697,'pie','pie',0,0,0.2,'P000',1,'*'),
(698,'plum','plum',0,0,0.2667,'P450',1,'*'),
(699,'powder','powder',0,0,0.4,'P360',1,'*'),
(700,'present','present',0,0,0.4667,'P6253',1,'*'),
(701,'proudly','proudly',0,0,0.4667,'P634',1,'*'),
(702,'roll','roll',0,0,0.2667,'R400',1,'*'),
(703,'sesame','sesame',0,0,0.4,'S500',1,'*'),
(704,'snaps','snaps',0,0,0.3333,'S512',1,'*'),
(705,'soufflé','soufflé',0,0,0.4667,'S140',1,'*'),
(706,'sugar','sugar',0,0,0.3333,'S600',1,'*'),
(707,'sweet','sweet',0,0,0.3333,'S300',1,'*'),
(708,'tiramisu','tiramisu',0,0,0.5333,'T652',1,'*'),
(709,'topping','topping',0,0,0.4667,'T152',1,'*'),
(710,'version','version',0,0,0.4667,'V625',1,'*'),
(711,'workflows','workflows',0,0,0.6,'W62142',2,'*'),
(734,'\'articles\'','\'articles\'',0,0,0.6667,'A63242',1,'*'),
(735,'\'content\'','\'content\'',0,0,0.6,'C5353',1,'*'),
(736,'\'enable','\'enable',0,0,0.4667,'E514',1,'*'),
(737,'\'integration\'','\'integration\'',0,0,0.8667,'I532635',1,'*'),
(738,'\'options\'','\'options\'',0,0,0.6,'O1352',1,'*'),
(739,'\'workflows\'.','\'workflows\'.',0,0,0.8,'W62142',1,'*'),
(740,'\'yes\'','\'yes\'',0,0,0.3333,'Y200',1,'*'),
(741,'administration','administration',0,0,0.9333,'A3523635',1,'*'),
(742,'again','again',0,0,0.3333,'A250',1,'*'),
(743,'area','area',0,0,0.2667,'A600',1,'*'),
(744,'component','component',0,0,0.6,'C5153',1,'*'),
(745,'data','data',0,0,0.2667,'D000',1,'*'),
(746,'enable','enable',0,0,0.4,'E514',1,'*'),
(747,'enabled','enabled',0,0,0.4667,'E5143',1,'*'),
(748,'feature','feature',0,0,0.4667,'F360',1,'*'),
(749,'functionality','functionality',0,0,0.8667,'F523543',1,'*'),
(750,'manage','manage',0,0,0.4,'M200',1,'*'),
(751,'must','must',0,0,0.2667,'M230',1,'*'),
(752,'provided','provided',0,0,0.5333,'P613',1,'*'),
(753,'related','related',0,0,0.4667,'R430',1,'*'),
(754,'section','section',0,0,0.4667,'S350',1,'*'),
(755,'stages','stages',0,0,0.4,'S320',1,'*'),
(756,'they','they',0,0,0.2667,'T000',1,'*'),
(757,'through','through',0,0,0.4667,'T620',1,'*'),
(758,'transitions','transitions',0,0,0.7333,'T652352',1,'*'),
(759,'until','until',0,0,0.3333,'U534',1,'*'),
(760,'workflow','workflow',0,0,0.5333,'W6214',1,'*'),
(761,'workflow\'','workflow\'',0,0,0.6,'W6214',1,'*'),
(765,'ad','ad',0,0,0.1333,'A300',1,'*'),
(766,'adipiscing','adipiscing',0,0,0.6667,'A31252',1,'*'),
(767,'aliquam','aliquam',0,0,0.4667,'A425',1,'*'),
(768,'aliquip','aliquip',0,0,0.4667,'A421',1,'*'),
(769,'arma','arma',0,0,0.2667,'A650',1,'*'),
(770,'cano','cano',0,0,0.2667,'C500',1,'*'),
(771,'consectetuer','consectetuer',0,0,0.8,'C5236',1,'*'),
(772,'consectetur','consectetur',0,0,0.7333,'C5236',1,'*'),
(773,'danger','danger',0,0,0.4,'D526',1,'*'),
(774,'display-1','display-1',0,0,0.6,'D214',1,'*'),
(775,'display-2','display-2',0,0,0.6,'D214',1,'*'),
(776,'display-3','display-3',0,0,0.6,'D214',1,'*'),
(777,'display-4','display-4',0,0,0.6,'D214',1,'*'),
(778,'displays','displays',0,0,0.5333,'D2142',1,'*'),
(779,'elit','elit',0,0,0.2667,'E430',1,'*'),
(780,'enim','enim',0,0,0.2667,'E500',1,'*'),
(781,'euismod','euismod',0,0,0.4667,'E253',1,'*'),
(782,'ex','ex',0,0,0.1333,'E200',1,'*'),
(783,'exerci','exerci',0,0,0.4,'E262',1,'*'),
(784,'h1','h1',0,0,0.1333,'H000',1,'*'),
(785,'h2','h2',0,0,0.1333,'H000',1,'*'),
(786,'h3','h3',0,0,0.1333,'H000',1,'*'),
(787,'h4','h4',0,0,0.1333,'H000',1,'*'),
(788,'h5','h5',0,0,0.1333,'H000',1,'*'),
(789,'info','info',0,0,0.2667,'I510',1,'*'),
(790,'laoreet','laoreet',0,0,0.4667,'L630',1,'*'),
(791,'lead','lead',0,0,0.2667,'L300',1,'*'),
(792,'li','li',0,0,0.1333,'L000',1,'*'),
(793,'lobortis','lobortis',0,0,0.5333,'L1632',1,'*'),
(794,'minim','minim',0,0,0.3333,'M000',1,'*'),
(795,'nibh','nibh',0,0,0.2667,'N100',1,'*'),
(796,'nisl','nisl',0,0,0.2667,'N240',1,'*'),
(797,'nonummy','nonummy',0,0,0.4667,'N000',1,'*'),
(798,'nostrud','nostrud',0,0,0.4667,'N2363',1,'*'),
(799,'ol','ol',0,0,0.1333,'O400',1,'*'),
(800,'p','p',0,0,0.0667,'P000',1,'*'),
(801,'primary','primary',0,0,0.4667,'P656',1,'*'),
(802,'quis','quis',0,0,0.2667,'Q000',1,'*'),
(803,'scheme','scheme',0,0,0.4,'S500',1,'*'),
(804,'secondary','secondary',0,0,0.6,'S536',1,'*'),
(805,'strong','strong',0,0,0.4,'S3652',1,'*'),
(806,'success','success',0,0,0.4667,'S000',1,'*'),
(807,'suscipit','suscipit',0,0,0.5333,'S130',1,'*'),
(808,'tation','tation',0,0,0.4,'T500',1,'*'),
(809,'text-danger','text-danger',0,0,0.7333,'T23526',1,'*'),
(810,'text-info','text-info',0,0,0.6,'T2351',1,'*'),
(811,'text-primary','text-primary',0,0,0.8,'T231656',1,'*'),
(812,'text-secondary','text-secondary',0,0,0.9333,'T232536',1,'*'),
(813,'text-success','text-success',0,0,0.8,'T232',1,'*'),
(814,'text-warning','text-warning',0,0,0.8,'T23652',1,'*'),
(815,'tincidunt','tincidunt',0,0,0.6,'T52353',1,'*'),
(816,'ul','ul',0,0,0.1333,'U400',1,'*'),
(817,'ullamcorper','ullamcorper',0,0,0.7333,'U452616',1,'*'),
(818,'veniam','veniam',0,0,0.4,'V500',1,'*'),
(819,'virumque','virumque',0,0,0.5333,'V652',1,'*'),
(820,'volutpat','volutpat',0,0,0.5333,'V4313',1,'*'),
(821,'warning','warning',0,0,0.4667,'W652',1,'*'),
(822,'wisi','wisi',0,0,0.2667,'W200',1,'*');
/*!40000 ALTER TABLE `jjg9w_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_finder_terms_common`
--

DROP TABLE IF EXISTS `jjg9w_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_finder_terms_common` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT '',
  `custom` int(11) NOT NULL DEFAULT 0,
  UNIQUE KEY `idx_term_language` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_finder_terms_common`
--

LOCK TABLES `jjg9w_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `jjg9w_finder_terms_common` DISABLE KEYS */;
INSERT INTO `jjg9w_finder_terms_common` VALUES
('a','en',0),
('about','en',0),
('above','en',0),
('after','en',0),
('again','en',0),
('against','en',0),
('all','en',0),
('am','en',0),
('an','en',0),
('and','en',0),
('any','en',0),
('are','en',0),
('aren\'t','en',0),
('as','en',0),
('at','en',0),
('be','en',0),
('because','en',0),
('been','en',0),
('before','en',0),
('being','en',0),
('below','en',0),
('between','en',0),
('both','en',0),
('but','en',0),
('by','en',0),
('can\'t','en',0),
('cannot','en',0),
('could','en',0),
('couldn\'t','en',0),
('did','en',0),
('didn\'t','en',0),
('do','en',0),
('does','en',0),
('doesn\'t','en',0),
('doing','en',0),
('don\'t','en',0),
('down','en',0),
('during','en',0),
('each','en',0),
('few','en',0),
('for','en',0),
('from','en',0),
('further','en',0),
('had','en',0),
('hadn\'t','en',0),
('has','en',0),
('hasn\'t','en',0),
('have','en',0),
('haven\'t','en',0),
('having','en',0),
('he','en',0),
('he\'d','en',0),
('he\'ll','en',0),
('he\'s','en',0),
('her','en',0),
('here','en',0),
('here\'s','en',0),
('hers','en',0),
('herself','en',0),
('him','en',0),
('himself','en',0),
('his','en',0),
('how','en',0),
('how\'s','en',0),
('i','en',0),
('i\'d','en',0),
('i\'ll','en',0),
('i\'m','en',0),
('i\'ve','en',0),
('if','en',0),
('in','en',0),
('into','en',0),
('is','en',0),
('isn\'t','en',0),
('it','en',0),
('it\'s','en',0),
('its','en',0),
('itself','en',0),
('let\'s','en',0),
('me','en',0),
('more','en',0),
('most','en',0),
('mustn\'t','en',0),
('my','en',0),
('myself','en',0),
('no','en',0),
('nor','en',0),
('not','en',0),
('of','en',0),
('off','en',0),
('on','en',0),
('once','en',0),
('only','en',0),
('or','en',0),
('other','en',0),
('ought','en',0),
('our','en',0),
('ours','en',0),
('ourselves','en',0),
('out','en',0),
('over','en',0),
('own','en',0),
('same','en',0),
('shan\'t','en',0),
('she','en',0),
('she\'d','en',0),
('she\'ll','en',0),
('she\'s','en',0),
('should','en',0),
('shouldn\'t','en',0),
('so','en',0),
('some','en',0),
('such','en',0),
('than','en',0),
('that','en',0),
('that\'s','en',0),
('the','en',0),
('their','en',0),
('theirs','en',0),
('them','en',0),
('themselves','en',0),
('then','en',0),
('there','en',0),
('there\'s','en',0),
('these','en',0),
('they','en',0),
('they\'d','en',0),
('they\'ll','en',0),
('they\'re','en',0),
('they\'ve','en',0),
('this','en',0),
('those','en',0),
('through','en',0),
('to','en',0),
('too','en',0),
('under','en',0),
('until','en',0),
('up','en',0),
('very','en',0),
('was','en',0),
('wasn\'t','en',0),
('we','en',0),
('we\'d','en',0),
('we\'ll','en',0),
('we\'re','en',0),
('we\'ve','en',0),
('were','en',0),
('weren\'t','en',0),
('what','en',0),
('what\'s','en',0),
('when','en',0),
('when\'s','en',0),
('where','en',0),
('where\'s','en',0),
('which','en',0),
('while','en',0),
('who','en',0),
('who\'s','en',0),
('whom','en',0),
('why','en',0),
('why\'s','en',0),
('with','en',0),
('won\'t','en',0),
('would','en',0),
('wouldn\'t','en',0),
('you','en',0),
('you\'d','en',0),
('you\'ll','en',0),
('you\'re','en',0),
('you\'ve','en',0),
('your','en',0),
('yours','en',0),
('yourself','en',0),
('yourselves','en',0);
/*!40000 ALTER TABLE `jjg9w_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_finder_tokens`
--

DROP TABLE IF EXISTS `jjg9w_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_finder_tokens` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `phrase` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `weight` float unsigned NOT NULL DEFAULT 1,
  `context` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `language` char(7) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_stem` (`stem`),
  KEY `idx_context` (`context`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_finder_tokens`
--

LOCK TABLES `jjg9w_finder_tokens` WRITE;
/*!40000 ALTER TABLE `jjg9w_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjg9w_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `jjg9w_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `phrase` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `term_weight` float unsigned NOT NULL DEFAULT 0,
  `context` tinyint(3) unsigned NOT NULL DEFAULT 2,
  `context_weight` float unsigned NOT NULL DEFAULT 0,
  `total_weight` float unsigned NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_finder_tokens_aggregate`
--

LOCK TABLES `jjg9w_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `jjg9w_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjg9w_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_finder_types`
--

DROP TABLE IF EXISTS `jjg9w_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_finder_types`
--

LOCK TABLES `jjg9w_finder_types` WRITE;
/*!40000 ALTER TABLE `jjg9w_finder_types` DISABLE KEYS */;
INSERT INTO `jjg9w_finder_types` VALUES
(1,'Category',''),
(2,'Contact',''),
(3,'Article',''),
(4,'News Feed',''),
(5,'Tag','');
/*!40000 ALTER TABLE `jjg9w_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_guidedtour_steps`
--

DROP TABLE IF EXISTS `jjg9w_guidedtour_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_guidedtour_steps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tour_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `position` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `interactive_type` int(11) NOT NULL DEFAULT 1,
  `url` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `language` varchar(7) NOT NULL,
  `note` varchar(255) NOT NULL DEFAULT '',
  `params` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tour` (`tour_id`),
  KEY `idx_state` (`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_guidedtour_steps`
--

LOCK TABLES `jjg9w_guidedtour_steps` WRITE;
/*!40000 ALTER TABLE `jjg9w_guidedtour_steps` DISABLE KEYS */;
INSERT INTO `jjg9w_guidedtour_steps` VALUES
(1,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_NEW_DESCRIPTION',1,'bottom','.button-new',2,1,'administrator/index.php?option=com_guidedtours&view=tours','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(2,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_TITLE_DESCRIPTION',2,'bottom','#jform_title',2,2,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(3,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_URL_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_URL_DESCRIPTION',3,'top','#jform_url',2,2,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(4,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONTENT_DESCRIPTION',4,'bottom','#jform_description,#jform_description_ifr',2,3,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(5,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_COMPONENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_COMPONENT_DESCRIPTION',5,'top','joomla-field-fancy-select .choices',2,3,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(6,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_SAVECLOSE_DESCRIPTION',6,'top','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(7,1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONGRATULATIONS_DESCRIPTION',7,'bottom','',0,1,'administrator/index.php?option=com_guidedtours&view=tour&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(8,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_COUNTER_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_COUNTER_DESCRIPTION',8,'top','#toursList tbody tr:nth-last-of-type(1) td:nth-of-type(5) .btn',2,1,'','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(9,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_NEW_DESCRIPTION',9,'bottom','.button-new',2,1,'','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(10,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TITLE_DESCRIPTION',10,'bottom','#jform_title',2,2,'','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(11,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_DESCRIPTION_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_DESCRIPTION_DESCRIPTION',11,'bottom','#jform_description,#jform_description_ifr',2,3,'','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(12,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_STATUS_DESCRIPTION',12,'bottom','#jform_published',2,3,'','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(13,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_POSITION_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_POSITION_DESCRIPTION',13,'top','#jform_position',2,3,'','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(14,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TARGET_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TARGET_DESCRIPTION',14,'top','#jform_target',2,3,'','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(15,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TYPE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TYPE_DESCRIPTION',15,'top','#jform_type',2,3,'','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(16,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_SAVECLOSE_DESCRIPTION',16,'bottom','#save-group-children-save .button-save',2,1,'','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(17,2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_CONGRATULATIONS_DESCRIPTION',17,'bottom','',0,1,'','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(18,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NEW_DESCRIPTION',18,'bottom','.button-new',2,1,'administrator/index.php?option=com_content&view=articles','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(19,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TITLE_DESCRIPTION',19,'bottom','#jform_title',2,2,'administrator/index.php?option=com_content&view=article&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(20,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ALIAS_DESCRIPTION',20,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_content&view=article&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(21,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONTENT_DESCRIPTION',21,'bottom','#jform_articletext,#jform_articletext_ifr',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(22,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_STATUS_DESCRIPTION',22,'bottom','#jform_state',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(23,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CATEGORY_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CATEGORY_DESCRIPTION',23,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(24,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_FEATURED_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_FEATURED_DESCRIPTION',24,'bottom','#jform_featured0',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(25,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ACCESS_DESCRIPTION',25,'bottom','#jform_access',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(26,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TAGS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TAGS_DESCRIPTION',26,'top','joomla-field-fancy-select .choices[data-type=select-multiple]',2,3,'administrator/index.php?option=com_content&view=article&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(27,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NOTE_DESCRIPTION',27,'top','#jform_note',2,2,'administrator/index.php?option=com_content&view=article&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(28,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_VERSIONNOTE_DESCRIPTION',28,'top','#jform_version_note',2,2,'administrator/index.php?option=com_content&view=article&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(29,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_SAVECLOSE_DESCRIPTION',29,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_content&view=article&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(30,3,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONGRATULATIONS_DESCRIPTION',30,'bottom','',0,1,'administrator/index.php?option=com_content&view=article&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(31,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NEW_DESCRIPTION',31,'bottom','.button-new',2,1,'administrator/index.php?option=com_categories&view=categories&extension=com_content','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(32,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TITLE_DESCRIPTION',32,'bottom','#jform_title',2,2,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(33,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ALIAS_DESCRIPTION',33,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(34,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONTENT_DESCRIPTION',34,'bottom','#jform_description,#jform_description_ifr',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(35,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_PARENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_PARENT_DESCRIPTION',35,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(36,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_STATUS_DESCRIPTION',36,'bottom','#jform_published',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(37,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ACCESS_DESCRIPTION',37,'bottom','#jform_access',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(38,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TAGS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TAGS_DESCRIPTION',38,'top','joomla-field-fancy-select .choices[data-type=select-multiple]',2,3,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(39,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NOTE_DESCRIPTION',39,'top','#jform_note',2,2,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(40,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_VERSIONNOTE_DESCRIPTION',40,'top','#jform_version_note',2,2,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(41,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_SAVECLOSE_DESCRIPTION',41,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(42,4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONGRATULATIONS_DESCRIPTION',42,'bottom','',0,1,'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(43,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_NEW_DESCRIPTION',43,'bottom','.button-new',2,1,'administrator/index.php?option=com_menus&view=menus','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(44,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_TITLE_DESCRIPTION',44,'bottom','#jform_title',2,2,'administrator/index.php?option=com_menus&view=menu&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(45,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_UNIQUENAME_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_UNIQUENAME_DESCRIPTION',45,'top','#jform_menutype',2,2,'administrator/index.php?option=com_menus&view=menu&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(46,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_DESCRIPTION_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_DESCRIPTION_DESCRIPTION',46,'top','#jform_menudescription',2,2,'administrator/index.php?option=com_menus&view=menu&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(47,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_SAVECLOSE_DESCRIPTION',47,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_menus&view=menu&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(48,5,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_MENUS_STEP_CONGRATULATIONS_DESCRIPTION',48,'bottom','',0,1,'administrator/index.php?option=com_menus&view=menu&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(49,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NEW_DESCRIPTION',49,'bottom','.button-new',2,1,'administrator/index.php?option=com_tags&view=tags','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(50,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_TITLE_DESCRIPTION',50,'bottom','#jform_title',2,2,'administrator/index.php?option=com_tags&view=tag&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(51,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ALIAS_DESCRIPTION',51,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_tags&view=tag&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(52,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONTENT_DESCRIPTION',52,'bottom','#jform_description,#jform_description_ifr',2,3,'administrator/index.php?option=com_tags&view=tag&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(53,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_PARENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_PARENT_DESCRIPTION',53,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_tags&view=tag&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(54,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_STATUS_DESCRIPTION',54,'bottom','#jform_published',2,3,'administrator/index.php?option=com_tags&view=tag&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(55,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ACCESS_DESCRIPTION',55,'bottom','#jform_access',2,3,'administrator/index.php?option=com_tags&view=tag&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(56,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NOTE_DESCRIPTION',56,'top','#jform_note',2,2,'administrator/index.php?option=com_tags&view=tag&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(57,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_VERSIONNOTE_DESCRIPTION',57,'top','#jform_version_note',2,2,'administrator/index.php?option=com_tags&view=tag&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(58,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_SAVECLOSE_DESCRIPTION',58,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_tags&view=tag&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(59,6,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONGRATULATIONS_DESCRIPTION',59,'bottom','',0,1,'administrator/index.php?option=com_tags&view=tag&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(60,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_NEW_DESCRIPTION',60,'bottom','.button-new',2,1,'administrator/index.php?option=com_banners&view=banners','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(61,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_TITLE_DESCRIPTION',61,'bottom','#jform_name',2,2,'administrator/index.php?option=com_banners&view=banner&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(62,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_ALIAS_DESCRIPTION',62,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_banners&view=banner&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(63,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_DETAILS_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_DETAILS_DESCRIPTION',63,'bottom','.col-lg-9',2,3,'administrator/index.php?option=com_banners&view=banner&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(64,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_STATUS_DESCRIPTION',64,'bottom','#jform_state',2,3,'administrator/index.php?option=com_banners&view=banner&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(65,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CATEGORY_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CATEGORY_DESCRIPTION',65,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_banners&view=banner&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(66,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_PINNED_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_PINNED_DESCRIPTION',66,'bottom','#jform_sticky1',2,3,'administrator/index.php?option=com_banners&view=banner&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(67,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_VERSIONNOTE_DESCRIPTION',67,'top','#jform_version_note',2,2,'administrator/index.php?option=com_banners&view=banner&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(68,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_SAVECLOSE_DESCRIPTION',68,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_banners&view=banner&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(69,7,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CONGRATULATIONS_DESCRIPTION',69,'bottom','',0,1,'administrator/index.php?option=com_banners&view=banner&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(70,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_NEW_DESCRIPTION',70,'bottom','.button-new',2,1,'administrator/index.php?option=com_contact&view=contacts','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(71,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TITLE_DESCRIPTION',71,'bottom','#jform_name',2,2,'administrator/index.php?option=com_contact&view=contact&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(72,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ALIAS_DESCRIPTION',72,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_contact&view=contact&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(73,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_DETAILS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_DETAILS_DESCRIPTION',73,'bottom','.col-lg-9',0,1,'administrator/index.php?option=com_contact&view=contact&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(74,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_STATUS_DESCRIPTION',74,'bottom','#jform_published',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(75,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CATEGORY_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CATEGORY_DESCRIPTION',75,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(76,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_FEATURED_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_FEATURED_DESCRIPTION',76,'bottom','#jform_featured0',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(77,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ACCESS_DESCRIPTION',77,'bottom','#jform_access',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(78,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TAGS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TAGS_DESCRIPTION',78,'top','joomla-field-fancy-select .choices[data-type=select-multiple]',2,3,'administrator/index.php?option=com_contact&view=contact&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(79,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_VERSIONNOTE_DESCRIPTION',79,'top','#jform_version_note',2,2,'administrator/index.php?option=com_contact&view=contact&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(80,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_SAVECLOSE_DESCRIPTION',80,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_contact&view=contact&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(81,8,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CONGRATULATIONS_DESCRIPTION',81,'bottom','',0,1,'administrator/index.php?option=com_contact&view=contact&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(82,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_NEW_DESCRIPTION',82,'bottom','.button-new',2,1,'administrator/index.php?option=com_newsfeeds&view=newsfeeds','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(83,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TITLE_DESCRIPTION',83,'bottom','#jform_name',2,2,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(84,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ALIAS_DESCRIPTION',84,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(85,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_LINK_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_LINK_DESCRIPTION',85,'bottom','#jform_link',2,2,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(86,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_DESCRIPTION_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_DESCRIPTION_DESCRIPTION',86,'bottom','#jform_description,#jform_description_ifr',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(87,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_STATUS_DESCRIPTION',87,'bottom','#jform_published',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(88,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CATEGORY_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CATEGORY_DESCRIPTION',88,'top','joomla-field-fancy-select .choices[data-type=select-one]',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(89,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ACCESS_DESCRIPTION',89,'bottom','#jform_access',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(90,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TAGS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TAGS_DESCRIPTION',90,'top','joomla-field-fancy-select .choices[data-type=select-multiple]',2,3,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(91,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_VERSIONNOTE_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_VERSIONNOTE_DESCRIPTION',91,'top','#jform_version_note',2,2,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(92,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_SAVECLOSE_DESCRIPTION',92,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(93,9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CONGRATULATIONS_DESCRIPTION',93,'bottom','',0,1,'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(94,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_NEW_DESCRIPTION',94,'bottom','.button-new',2,1,'administrator/index.php?option=com_finder&view=filters','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(95,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_TITLE_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_TITLE_DESCRIPTION',95,'bottom','#jform_title',2,2,'administrator/index.php?option=com_finder&view=filter&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(96,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_ALIAS_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_ALIAS_DESCRIPTION',96,'bottom','#jform_alias',2,2,'administrator/index.php?option=com_finder&view=filter&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(97,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONTENT_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONTENT_DESCRIPTION',97,'bottom','.col-lg-9',0,1,'administrator/index.php?option=com_finder&view=filter&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(98,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_STATUS_DESCRIPTION',98,'bottom','#jform_state',2,3,'administrator/index.php?option=com_finder&view=filter&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(99,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_SAVECLOSE_DESCRIPTION',99,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_finder&view=filter&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(100,10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONGRATULATIONS_DESCRIPTION',100,'bottom','',0,1,'administrator/index.php?option=com_finder&view=filter&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(101,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_NEW_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_NEW_DESCRIPTION',101,'bottom','.button-new',2,1,'administrator/index.php?option=com_users&view=user&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(102,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_NAME_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_NAME_DESCRIPTION',102,'bottom','#jform_name',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(103,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_LOGINNAME_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_LOGINNAME_DESCRIPTION',103,'bottom','#jform_username',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(104,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD_DESCRIPTION',104,'bottom','#jform_password',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(105,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD2_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD2_DESCRIPTION',105,'bottom','#jform_password2',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(106,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_EMAIL_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_EMAIL_DESCRIPTION',106,'bottom','#jform_email',2,2,'administrator/index.php?option=com_users&view=user&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(107,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_SYSTEMEMAIL_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_SYSTEMEMAIL_DESCRIPTION',107,'top','#jform_sendEmail0',2,3,'administrator/index.php?option=com_users&view=user&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(108,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_STATUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_STATUS_DESCRIPTION',108,'top','#jform_block0',2,3,'administrator/index.php?option=com_users&view=user&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(109,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORDRESET_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORDRESET_DESCRIPTION',109,'top','#jform_requireReset0',2,3,'administrator/index.php?option=com_users&view=user&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(110,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_SAVECLOSE_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_SAVECLOSE_DESCRIPTION',110,'bottom','#save-group-children-save .button-save',2,1,'administrator/index.php?option=com_users&view=user&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(111,11,'COM_GUIDEDTOURS_TOUR_USERS_STEP_CONGRATULATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_USERS_STEP_CONGRATULATIONS_DESCRIPTION',111,'bottom','',0,1,'administrator/index.php?option=com_users&view=user&layout=edit','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(112,12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_MENUS_TITLE',1,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_MENUS_DESCRIPTION',112,'right','#sidebarmenu',0,1,'','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(113,12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_QUICKACCESS_TITLE',1,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_QUICKACCESS_DESCRIPTION',113,'center','',0,1,'','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(114,12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_NOTIFICATIONS_TITLE',1,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_NOTIFICATIONS_DESCRIPTION',114,'left','.quickicons-for-update_quickicon .card',0,1,'','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(115,12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_TOPBAR_TITLE',1,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_TOPBAR_DESCRIPTION',115,'bottom','#header',0,1,'','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL),
(116,12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_FINALWORDS_TITLE',1,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_FINALWORDS_DESCRIPTION',116,'right','#sidebarmenu nav > ul:first-of-type > li:last-child',0,1,'','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,'*','',NULL);
/*!40000 ALTER TABLE `jjg9w_guidedtour_steps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_guidedtours`
--

DROP TABLE IF EXISTS `jjg9w_guidedtours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_guidedtours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `uid` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `description` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `extensions` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `language` varchar(7) NOT NULL,
  `note` varchar(255) NOT NULL DEFAULT '',
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `autostart` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_state` (`published`),
  KEY `idx_language` (`language`),
  KEY `idx_uid` (`uid`(191))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_guidedtours`
--

LOCK TABLES `jjg9w_guidedtours` WRITE;
/*!40000 ALTER TABLE `jjg9w_guidedtours` DISABLE KEYS */;
INSERT INTO `jjg9w_guidedtours` VALUES
(1,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_TITLE','joomla-guidedtours','COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_DESCRIPTION',1,'[\"com_guidedtours\"]','administrator/index.php?option=com_guidedtours&view=tours','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,1,'*','',1,0),
(2,'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_TITLE','joomla-guidedtoursteps','COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_DESCRIPTION',2,'[\"com_guidedtours\"]','administrator/index.php?option=com_guidedtours&view=tours','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,1,'*','',1,0),
(3,'COM_GUIDEDTOURS_TOUR_ARTICLES_TITLE','joomla-articles','COM_GUIDEDTOURS_TOUR_ARTICLES_DESCRIPTION',3,'[\"com_content\",\"com_categories\"]','administrator/index.php?option=com_content&view=articles','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,1,'*','',1,0),
(4,'COM_GUIDEDTOURS_TOUR_CATEGORIES_TITLE','joomla-categories','COM_GUIDEDTOURS_TOUR_CATEGORIES_DESCRIPTION',4,'[\"com_content\",\"com_categories\"]','administrator/index.php?option=com_categories&view=categories&extension=com_content','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,1,'*','',1,0),
(5,'COM_GUIDEDTOURS_TOUR_MENUS_TITLE','joomla-menus','COM_GUIDEDTOURS_TOUR_MENUS_DESCRIPTION',5,'[\"com_menus\"]','administrator/index.php?option=com_menus&view=menus','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,1,'*','',1,0),
(6,'COM_GUIDEDTOURS_TOUR_TAGS_TITLE','joomla-tags','COM_GUIDEDTOURS_TOUR_TAGS_DESCRIPTION',6,'[\"com_tags\"]','administrator/index.php?option=com_tags&view=tags','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,1,'*','',1,0),
(7,'COM_GUIDEDTOURS_TOUR_BANNERS_TITLE','joomla-banners','COM_GUIDEDTOURS_TOUR_BANNERS_DESCRIPTION',7,'[\"com_banners\"]','administrator/index.php?option=com_banners&view=banners','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,1,'*','',1,0),
(8,'COM_GUIDEDTOURS_TOUR_CONTACTS_TITLE','joomla-contacts','COM_GUIDEDTOURS_TOUR_CONTACTS_DESCRIPTION',8,'[\"com_contact\"]','administrator/index.php?option=com_contact&view=contacts','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,1,'*','',1,0),
(9,'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_TITLE','joomla-newsfeeds','COM_GUIDEDTOURS_TOUR_NEWSFEEDS_DESCRIPTION',9,'[\"com_newsfeeds\"]','administrator/index.php?option=com_newsfeeds&view=newsfeeds','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,1,'*','',1,0),
(10,'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_TITLE','joomla-smartsearch','COM_GUIDEDTOURS_TOUR_SMARTSEARCH_DESCRIPTION',10,'[\"com_finder\"]','administrator/index.php?option=com_finder&view=filters','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,1,'*','',1,0),
(11,'COM_GUIDEDTOURS_TOUR_USERS_TITLE','joomla-users','COM_GUIDEDTOURS_TOUR_USERS_DESCRIPTION',11,'[\"com_users\"]','administrator/index.php?option=com_users&view=users','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,1,'*','',1,0),
(12,'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_TITLE','joomla-welcome','COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_DESCRIPTION',12,'[\"com_cpanel\"]','administrator/index.php','2024-06-27 14:53:30',1000,'2024-06-27 14:53:30',1000,NULL,NULL,1,'*','',1,0);
/*!40000 ALTER TABLE `jjg9w_guidedtours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_history`
--

DROP TABLE IF EXISTS `jjg9w_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` varchar(50) NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL,
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `character_count` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_history`
--

LOCK TABLES `jjg9w_history` WRITE;
/*!40000 ALTER TABLE `jjg9w_history` DISABLE KEYS */;
INSERT INTO `jjg9w_history` VALUES
(1,'com_tags.tag.2','','2024-06-27 15:01:19',1000,496,'9ff3ddc2b5e001b4074424e48506d90198f0954b','{\"id\":2,\"parent_id\":1,\"lft\":1,\"rgt\":2,\"level\":1,\"path\":\"\",\"title\":\"Millions\",\"alias\":\"millions\",\"note\":null,\"description\":\"\",\"published\":1,\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{}\",\"created_user_id\":1000,\"created_time\":\"2024-06-27 15:01:19\",\"created_by_alias\":null,\"modified_user_id\":1000,\"modified_time\":\"2024-06-27 15:01:19\",\"images\":\"{}\",\"urls\":\"{}\",\"hits\":0,\"language\":\"*\",\"version\":1,\"publish_up\":null,\"publish_down\":null}',0),
(2,'com_tags.tag.3','','2024-06-27 15:01:19',1000,502,'0bf8cb7fac106bc5be5aaaa7a305355041d62547','{\"id\":3,\"parent_id\":1,\"lft\":3,\"rgt\":4,\"level\":1,\"path\":\"millions\",\"title\":\"Worldwide\",\"alias\":\"worldwide\",\"note\":\"\",\"description\":\"\",\"published\":1,\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{}\",\"created_user_id\":1000,\"created_time\":\"2024-06-27 15:01:19\",\"created_by_alias\":\"\",\"modified_user_id\":1000,\"modified_time\":\"2024-06-27 15:01:19\",\"images\":\"{}\",\"urls\":\"{}\",\"hits\":0,\"language\":\"*\",\"version\":2,\"publish_up\":null,\"publish_down\":null}',0),
(3,'com_tags.tag.4','','2024-06-27 15:01:19',1000,493,'d281b3f0a2a750d8897359171db8ec3f81b31963','{\"id\":4,\"parent_id\":1,\"lft\":5,\"rgt\":6,\"level\":1,\"path\":\"worldwide\",\"title\":\"Love\",\"alias\":\"love\",\"note\":\"\",\"description\":\"\",\"published\":1,\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{}\",\"created_user_id\":1000,\"created_time\":\"2024-06-27 15:01:19\",\"created_by_alias\":\"\",\"modified_user_id\":1000,\"modified_time\":\"2024-06-27 15:01:19\",\"images\":\"{}\",\"urls\":\"{}\",\"hits\":0,\"language\":\"*\",\"version\":3,\"publish_up\":null,\"publish_down\":null}',0),
(4,'com_tags.tag.5','','2024-06-27 15:01:19',1000,496,'066e08b41ab672a6e383d8fcf4144742de88bf37','{\"id\":5,\"parent_id\":4,\"lft\":6,\"rgt\":7,\"level\":2,\"path\":\"love\",\"title\":\"Joomla 5\",\"alias\":\"joomla-5\",\"note\":\"\",\"description\":\"\",\"published\":1,\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{}\",\"created_user_id\":1000,\"created_time\":\"2024-06-27 15:01:19\",\"created_by_alias\":\"\",\"modified_user_id\":1000,\"modified_time\":\"2024-06-27 15:01:19\",\"images\":\"{}\",\"urls\":\"{}\",\"hits\":0,\"language\":\"*\",\"version\":4,\"publish_up\":null,\"publish_down\":null}',0),
(5,'com_content.category.8','','2024-06-27 15:01:19',1000,476,'772f1829c044864c1d7701fcf7d702003d1578ff','{\"id\":8,\"asset_id\":124,\"parent_id\":1,\"lft\":11,\"rgt\":12,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Blog\",\"alias\":\"blog\",\"note\":null,\"description\":\"\",\"published\":1,\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{\\\"workflow_id\\\":\\\"2\\\"}\",\"metadesc\":null,\"metakey\":null,\"metadata\":null,\"created_user_id\":1000,\"created_time\":\"2024-06-27 15:01:19\",\"modified_user_id\":1000,\"modified_time\":\"2024-06-27 15:01:19\",\"hits\":null,\"language\":\"*\",\"version\":null}',0),
(6,'com_content.category.9','','2024-06-27 15:01:19',1000,455,'c5f35488d1c0df9824883430fb18925a12e52932','{\"id\":9,\"asset_id\":125,\"parent_id\":1,\"lft\":13,\"rgt\":14,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Help\",\"alias\":\"help\",\"note\":null,\"description\":\"\",\"published\":1,\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{}\",\"metadesc\":null,\"metakey\":null,\"metadata\":null,\"created_user_id\":1000,\"created_time\":\"2024-06-27 15:01:19\",\"modified_user_id\":1000,\"modified_time\":\"2024-06-27 15:01:19\",\"hits\":null,\"language\":\"*\",\"version\":null}',0),
(7,'com_content.category.10','','2024-06-27 15:01:19',1000,460,'c73eecac2773d26f471a62d70b5a5f4f55477e29','{\"id\":10,\"asset_id\":126,\"parent_id\":1,\"lft\":15,\"rgt\":16,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Joomla\",\"alias\":\"joomla\",\"note\":null,\"description\":\"\",\"published\":1,\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{}\",\"metadesc\":null,\"metakey\":null,\"metadata\":null,\"created_user_id\":1000,\"created_time\":\"2024-06-27 15:01:19\",\"modified_user_id\":1000,\"modified_time\":\"2024-06-27 15:01:19\",\"hits\":null,\"language\":\"*\",\"version\":null}',0),
(8,'com_content.category.11','','2024-06-27 15:01:19',1000,468,'8d0045c39bc212747c412c71ef31984d525eaaf4','{\"id\":11,\"asset_id\":127,\"parent_id\":1,\"lft\":17,\"rgt\":18,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Typography\",\"alias\":\"typography\",\"note\":null,\"description\":\"\",\"published\":1,\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{}\",\"metadesc\":null,\"metakey\":null,\"metadata\":null,\"created_user_id\":1000,\"created_time\":\"2024-06-27 15:01:19\",\"modified_user_id\":1000,\"modified_time\":\"2024-06-27 15:01:19\",\"hits\":null,\"language\":\"*\",\"version\":null}',0),
(9,'com_content.article.1','','2024-06-27 15:01:19',1000,666,'adf869df1b0fe8bbb55c996d2ea3ad036df95ef5','{\"id\":1,\"asset_id\":128,\"title\":\"About\",\"alias\":\"about\",\"introtext\":\"<p>This tells you a bit about this blog and the person who writes it.<\\/p><p>When you are logged in you will be able to edit this page by selecting the edit icon.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":9,\"created\":\"2024-06-27 15:01:19\",\"created_by\":1000,\"created_by_alias\":\"Joomla\",\"modified\":\"2024-06-27 15:01:19\",\"modified_by\":1000,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2024-06-27 15:01:19\",\"publish_down\":null,\"images\":\"\",\"urls\":\"{}\",\"attribs\":\"{}\",\"version\":1,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{}\",\"featured\":0,\"language\":\"*\",\"note\":null}',0),
(10,'com_content.article.2','','2024-06-27 15:01:19',1000,2378,'88238b63973a360ad3f86175747efb1f479a8a6d','{\"id\":2,\"asset_id\":129,\"title\":\"Working on Your Site\",\"alias\":\"working-on-your-site\",\"introtext\":\"<p>Here are some basic tips for working on your site.<\\/p><ul><li>Joomla! has a \'front end\' that you are looking at now and an \'administrator\' or \'back end\' which is where you do the more advanced work of creating your site such as setting up the menus and deciding what modules to show. You need to login to the administrator separately using the same user name and password that you used to login to this part of the site.<\\/li><li>One of the first things you will probably want to do is change the site title and tag line and to add a logo. To do this select the Template Settings link in the menu which is visible if you log in. To change your site description, browser title, default email and other items, select Site Settings. More advanced configuration options are available in the administrator.<\\/li><li>To totally change the look of your site you will probably want to install a new template. Go to System, select Install - Extensions from the list and the extension installer will open. There are many free and commercial templates available for Joomla.<\\/li><li>As you have already seen, you can control who can see different parts of you site. When you work with modules and articles, setting the Access level to Registered will mean that only logged in users can see them.<\\/li><li>When you create a new article or other kind of content you also can save it as Published or Unpublished. If it is Unpublished site visitors will not be able to see it but you will.<\\/li><li>You can learn much more about working with Joomla from the <a href=\'https:\\/\\/docs.joomla.org\\/\'>Joomla documentation site<\\/a> and get help from other users at the <a href=\'https:\\/\\/forum.joomla.org\\/\'>Joomla forums<\\/a>. In the administrator there are help buttons on every page that provide detailed information about the functions on that page.<\\/li><\\/ul>\",\"fulltext\":\"\",\"state\":1,\"catid\":9,\"created\":\"2024-06-27 15:01:19\",\"created_by\":1000,\"created_by_alias\":\"Joomla\",\"modified\":\"2024-06-27 15:01:19\",\"modified_by\":1000,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2024-06-27 15:01:19\",\"publish_down\":null,\"images\":\"\",\"urls\":\"{}\",\"attribs\":\"{}\",\"version\":1,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":3,\"hits\":0,\"metadata\":\"{}\",\"featured\":0,\"language\":\"*\",\"note\":null}',0),
(11,'com_content.article.3','','2024-06-27 15:01:19',1000,1624,'b94c773c358d31d1e274aa5acf4d4a9bafa54240','{\"id\":3,\"asset_id\":130,\"title\":\"Welcome to your blog\",\"alias\":\"welcome-to-your-blog\",\"introtext\":\"<p>This is a sample blog posting.<\\/p><p>If you log in to the site (the Administrator Login link is on the very bottom of this page) you will be able to edit it and all of the other existing articles. You will also be able to create a new article and make other changes to the site.<\\/p><p>As you add and modify articles you will see how your site changes and also how you can customise it in various ways.<\\/p><p>Go ahead, you can\'t break it.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":8,\"created\":\"2024-06-27 15:01:19\",\"created_by\":1000,\"created_by_alias\":\"Joomla\",\"modified\":\"2024-06-27 15:01:19\",\"modified_by\":1000,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2024-06-27 15:01:19\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa1-1200.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa1-1200.jpg?width=1200&height=400\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"Amazing Andromeda Galaxy\\\",\\\"image_intro_alt_empty\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa1-400.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa1-400.jpg?width=400&height=400\\\",\\\"float_fulltext\\\":\\\"float-start\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_alt_empty\\\":1,\\\"image_fulltext_caption\\\":\\\"www.nasa.gov\\\\\\/multimedia\\\\\\/imagegallery\\\"}\",\"urls\":\"{}\",\"attribs\":\"{}\",\"version\":1,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{}\",\"featured\":1,\"language\":\"*\",\"note\":null}',0),
(12,'com_content.article.4','','2024-06-27 15:01:19',1000,1810,'339fa6af8dfa3a9e99243c19b7d4be4278f3d386','{\"id\":4,\"asset_id\":131,\"title\":\"About your home page\",\"alias\":\"about-your-home-page\",\"introtext\":\"<p>Your home page is set to display the four most recent articles from the blog category in a column. Then there are links to the next two oldest articles. You can change those numbers by editing the content options settings in the blog tab in your site administrator. There is a link to your site administrator if you are logged in.<\\/p><p>If you want to have your blog post broken into two parts, an introduction and then a full length separate page, use the Read More span to insert a break.<\\/p>\",\"fulltext\":\"<p>On the full page you will see both the introductory content and the rest of the article. You can change the settings to hide the introduction if you want.<\\/p>\",\"state\":1,\"catid\":8,\"created\":\"2024-06-27 15:01:19\",\"created_by\":1000,\"created_by_alias\":\"Joomla\",\"modified\":\"2024-06-27 15:01:19\",\"modified_by\":1000,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2024-06-27 15:01:19\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa2-1200.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa2-1200.jpg?width=1200&height=400\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_alt_empty\\\":1,\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa2-400.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa2-400.jpg?width=400&height=400\\\",\\\"float_fulltext\\\":\\\"float-start\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_alt_empty\\\":1,\\\"image_fulltext_caption\\\":\\\"www.nasa.gov\\\\\\/multimedia\\\\\\/imagegallery\\\"}\",\"urls\":\"{}\",\"attribs\":\"{}\",\"version\":1,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{}\",\"featured\":1,\"language\":\"*\",\"note\":null}',0),
(13,'com_content.article.5','','2024-06-27 15:01:19',1000,2386,'3b90fefb52bad9822651f3cbe08b683ba1d209a9','{\"id\":5,\"asset_id\":132,\"title\":\"Your Modules\",\"alias\":\"your-modules\",\"introtext\":\"<p>Your site has some commonly used modules already preconfigured. These include:<\\/p><ul><li>Image (type: Custom), which holds the image beneath the menu. This is a Custom module that you can edit to change the image.<\\/li><li>Popular Tags (type: Tags - Popular), which will appear if you use tagging on your articles. Enter a tag in the Tags field when editing.<\\/li><li>Older Posts (type: Articles - Category), which lists out articles by categories.<\\/li><li>Syndication (type: Syndication Feeds), which allows your readers to read your posts in a news reader.<\\/li><li>Login Form (type: Login), which allows your users to access restricted areas of the website.<\\/li><\\/ul><p>Each of these modules has many options which you can experiment with in the Module Manager in your site Administrator. When you are logged in you can also select the edit icon in the top right corner which will take you to an edit screen for that module. Always be sure to save and close any module you edit.<\\/p><p>Joomla! also includes many other modules you can incorporate in your site. As you develop your site you may want to add more modules that you can find at the <a href=\\\"https:\\/\\/extensions.joomla.org\\/\\\">Joomla Extensions Directory.<\\/a><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":8,\"created\":\"2024-06-27 15:01:19\",\"created_by\":1000,\"created_by_alias\":\"Joomla\",\"modified\":\"2024-06-27 15:01:19\",\"modified_by\":1000,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2024-06-27 15:01:19\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa3-1200.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa3-1200.jpg?width=1200&height=400\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_alt_empty\\\":1,\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa3-400.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa3-400.jpg?width=400&height=400\\\",\\\"float_fulltext\\\":\\\"float-start\\\",\\\"image_fulltext_alt\\\":\\\"Crab Nebula\\\",\\\"image_fulltext_alt_empty\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"www.nasa.gov\\\\\\/multimedia\\\\\\/imagegallery\\\"}\",\"urls\":\"{}\",\"attribs\":\"{}\",\"version\":1,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{}\",\"featured\":1,\"language\":\"*\",\"note\":null}',0),
(14,'com_content.article.6','','2024-06-27 15:01:19',1000,1652,'ff6b44c201711dc087a07947f086148029ae24c4','{\"id\":6,\"asset_id\":133,\"title\":\"Your Template\",\"alias\":\"your-template\",\"introtext\":\"<p>Templates control the look and feel of your website.<\\/p><p>This blog is installed with the Cassiopeia template.<\\/p><p>You can edit the options by selecting the Working on Your Site, Template Settings link in the menu which is visible when you log in.<\\/p><p>For example you can change the site background colour, highlights colour, site title, site description and title font used.<\\/p><p>More options are available in the site administrator. You may also install a new template using the extension manager.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":8,\"created\":\"2024-06-27 15:01:19\",\"created_by\":1000,\"created_by_alias\":\"Joomla\",\"modified\":\"2024-06-27 15:01:19\",\"modified_by\":1000,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2024-06-27 15:01:19\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa4-1200.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa4-1200.jpg?width=1200&height=400\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_alt_empty\\\":1,\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa4-400.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa4-400.jpg?width=400&height=400\\\",\\\"float_fulltext\\\":\\\"float-start\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_alt_empty\\\":1,\\\"image_fulltext_caption\\\":\\\"www.nasa.gov\\\\\\/multimedia\\\\\\/imagegallery\\\"}\",\"urls\":\"{}\",\"attribs\":\"{}\",\"version\":1,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{}\",\"featured\":1,\"language\":\"*\",\"note\":null}',0),
(15,'com_content.article.7','','2024-06-27 15:01:19',1000,1176,'7e6db2b2d4846e3602275e54e30236b0e31c274f','{\"id\":7,\"asset_id\":134,\"title\":\"Millions\",\"alias\":\"millions\",\"introtext\":\"<p><strong>Millions of Websites are built on Joomla!<\\/strong><\\/p><p>Learn more about beautiful blog presentation.<\\/p>\",\"fulltext\":\"<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est<\\/p>\",\"state\":1,\"catid\":10,\"created\":\"2024-06-27 15:01:19\",\"created_by\":1000,\"created_by_alias\":\"Joomla\",\"modified\":\"2024-06-27 15:01:19\",\"modified_by\":1000,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2024-06-27 15:01:19\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa1-640.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa1-640.jpg?width=640&height=320\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_alt_empty\\\":1,\\\"image_intro_caption\\\":\\\"\\\"}\",\"urls\":\"{}\",\"attribs\":\"{}\",\"version\":1,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{}\",\"featured\":0,\"language\":\"*\",\"note\":null}',0),
(16,'com_content.article.8','','2024-06-27 15:01:19',1000,1450,'0c00af21b75e5608d831626dc2959a9c050a7d56','{\"id\":8,\"asset_id\":135,\"title\":\"Love\",\"alias\":\"love\",\"introtext\":\"<p><strong>We love Joomla to the moon and back!<\\/strong><\\/p><p>Thank you to all volunteers who have contributed!<\\/p>\",\"fulltext\":\"<p>Uurnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. Lotus root water spinach fennel kombu maize bamboo shoot green bean swiss chard seakale pumpkin onion chickpea gram corn pea. Brussels sprout coriander water chestnut gourd swiss chard wakame kohlrabi beetroot carrot watercress. Corn amaranth salsify bunya nuts nori azuki bean chickweed potato bell pepper artichoke.<\\/p> \",\"state\":1,\"catid\":10,\"created\":\"2024-06-27 15:01:19\",\"created_by\":1000,\"created_by_alias\":\"Joomla\",\"modified\":\"2024-06-27 15:01:19\",\"modified_by\":1000,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2024-06-27 15:01:19\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa2-640.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa2-640.jpg?width=640&height=320\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_alt_empty\\\":1,\\\"image_intro_caption\\\":\\\"\\\"}\",\"urls\":\"{}\",\"attribs\":\"{}\",\"version\":1,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{}\",\"featured\":0,\"language\":\"*\",\"note\":null}',0),
(17,'com_content.article.9','','2024-06-27 15:01:19',1000,1288,'a53d3b3eb062239a72cb2aeb8c90b89f58110309','{\"id\":9,\"asset_id\":136,\"title\":\"Joomla\",\"alias\":\"joomla\",\"introtext\":\"<p><strong>We proudly present Joomla Version 5!<\\/strong><\\/p><p>Learn more about workflows in Joomla.<\\/p>\",\"fulltext\":\"<p>Cupcake ipsum dolor. Sit amet cotton candy ice cream sesame snaps cake marshmallow powder. Ice cream chocolate cake marshmallow halvah bonbon. Drag\\u00e9e carrot cake danish candy muffin brownie. Candy sugar plum ice cream chupa chups macaroon tiramisu souffl\\u00e9 oat cake. Topping cheesecake lollipop gummi bears icing sweet roll donut liquorice. Pie jelly-o candy donut oat cake cotton candy.<\\/p>\",\"state\":1,\"catid\":10,\"created\":\"2024-06-27 15:01:19\",\"created_by\":1000,\"created_by_alias\":\"Joomla\",\"modified\":\"2024-06-27 15:01:19\",\"modified_by\":1000,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2024-06-27 15:01:19\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa3-640.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa3-640.jpg?width=640&height=320\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_alt_empty\\\":1,\\\"image_intro_caption\\\":\\\"\\\"}\",\"urls\":\"{}\",\"attribs\":\"{}\",\"version\":1,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{}\",\"featured\":0,\"language\":\"*\",\"note\":null}',0),
(18,'com_content.article.10','','2024-06-27 15:01:19',1000,1634,'ce9428afccf7549b1299fadb5cea26b39c1080f4','{\"id\":10,\"asset_id\":137,\"title\":\"New feature: Workflows\",\"alias\":\"new-feature-workflows\",\"introtext\":\"<p>Workflows manage the stages your articles must go through until they are published.<\\/p><p>The component to manage workflows is not enabled by default.<\\/p><p>To see the workflow that we have provided with the sample data, you first need to enable this functionality.<\\/p><ol><li>Access the administration area<\\/li><li>From \'Content\' > \'Articles\' > \'Options\' > \'Integration\' tab set \'Enable workflow\' to \'Yes\'<\\/li><li>Save changes<\\/li><\\/ol><p>Now when you access \'Content\' again you will see the section \'Workflows\'.<\\/p><p>When you edit an article you will also see the new transitions for articles related to workflows.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":9,\"created\":\"2024-06-27 15:01:19\",\"created_by\":1000,\"created_by_alias\":\"Joomla\",\"modified\":\"2024-06-27 15:01:19\",\"modified_by\":1000,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2024-06-27 15:01:19\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_alt_empty\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa4-400.jpg#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/sampledata\\\\\\/cassiopeia\\\\\\/nasa4-400.jpg?width=400&height=400\\\",\\\"float_fulltext\\\":\\\"float-end\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_alt_empty\\\":1,\\\"image_fulltext_caption\\\":\\\"www.nasa.gov\\\\\\/multimedia\\\\\\/imagegallery\\\"}\",\"urls\":\"{}\",\"attribs\":\"{}\",\"version\":1,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{}\",\"featured\":0,\"language\":\"*\",\"note\":null}',0),
(19,'com_content.article.11','','2024-06-27 15:01:19',1000,3307,'05379f01000009a45ae74635b2a68c18def0dfcd','{\"id\":11,\"asset_id\":138,\"title\":\"Typography\",\"alias\":\"typography\",\"introtext\":\"<h1>Colour Scheme<\\/h1> <p> <span class=\\\"btn btn-secondary\\\">secondary<\\/span>   <span class=\\\"btn btn-primary\\\">primary<\\/span>   <span class=\\\"btn btn-info\\\">info<\\/span>   <span class=\\\"btn btn-success\\\">success<\\/span>   <span class=\\\"btn btn-warning\\\">warning<\\/span>   <span class=\\\"btn btn-danger\\\">danger<\\/span> <\\/p> <p><span class=\\\"text text-secondary\\\">text-secondary<\\/span>  <span class=\\\"text text-primary\\\">text-primary<\\/span>  <span class=\\\"text text-info\\\">text-info<\\/span>  <span class=\\\"text text-success\\\">text-success<\\/span>  <span class=\\\"text text-warning\\\">text-warning<\\/span>  <span class=\\\"text text-danger\\\">text-danger<\\/span><\\/p><h1>Typography (h1)<\\/h1><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)<\\/p><h2>Lorem Ipsum Dolor Sit Amet (h2)<\\/h2><p><strong>Lorem ipsum dolor sit amet, consectetuer adipiscing elit <\\/strong> (strong), sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)<\\/p><h3>Lorem Ipsum Dolor Sit Amet (h3)<\\/h3><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)<\\/p><h4>Lorem Ipsum Dolor Sit Amet (h4)<\\/h4><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)<\\/p><h5>Lorem Ipsum Dolor Sit Amet (h5)<\\/h5><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex. (p)<\\/p> <p><a href=\\\"index.php\\\"> Lorem ipsum dolor (a)<\\/a><\\/p><h1>Lists<\\/h1> <p>(ol)(li)<\\/p> <ol> <li>Lorem ipsum dolor sit amet consectetur<\\/li> <li>Lorem ipsum dolor sit amet consectetur<\\/li> <\\/ol> <p>(ul)(li)<\\/p> <ul> <li>Lorem ipsum dolor sit amet consectetur<\\/li> <li>Lorem ipsum dolor sit amet consectetur<\\/li> <\\/ul> <h1>Displays<\\/h1><p class=\\\"display-1\\\">Lorem (display-1)<\\/p><p class=\\\"display-2\\\">Lorem (display-2)<\\/p><p class=\\\"display-3\\\">Lorem ipsum (display-3)<\\/p><p class=\\\"display-4\\\">Lorem ipsum (display-4)<\\/p><p class=\\\"lead\\\">Lorem ipsum arma virumque cano (lead)<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":11,\"created\":\"2024-06-27 15:01:19\",\"created_by\":1000,\"created_by_alias\":\"Joomla\",\"modified\":\"2024-06-27 15:01:19\",\"modified_by\":1000,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2024-06-27 15:01:19\",\"publish_down\":null,\"images\":\"\",\"urls\":\"{}\",\"attribs\":\"{}\",\"version\":1,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{}\",\"featured\":0,\"language\":\"*\",\"note\":null}',0);
/*!40000 ALTER TABLE `jjg9w_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_languages`
--

DROP TABLE IF EXISTS `jjg9w_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_languages` (
  `lang_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text DEFAULT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT 0,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_languages`
--

LOCK TABLES `jjg9w_languages` WRITE;
/*!40000 ALTER TABLE `jjg9w_languages` DISABLE KEYS */;
INSERT INTO `jjg9w_languages` VALUES
(1,0,'en-GB','English (en-GB)','English (United Kingdom)','en','en_gb','','','','',1,1,1);
/*!40000 ALTER TABLE `jjg9w_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_mail_templates`
--

DROP TABLE IF EXISTS `jjg9w_mail_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_mail_templates` (
  `template_id` varchar(127) NOT NULL DEFAULT '',
  `extension` varchar(127) NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `htmlbody` mediumtext NOT NULL,
  `attachments` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`template_id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_mail_templates`
--

LOCK TABLES `jjg9w_mail_templates` WRITE;
/*!40000 ALTER TABLE `jjg9w_mail_templates` DISABLE KEYS */;
INSERT INTO `jjg9w_mail_templates` VALUES
('com_actionlogs.notification','com_actionlogs','','COM_ACTIONLOGS_EMAIL_SUBJECT','COM_ACTIONLOGS_EMAIL_BODY','COM_ACTIONLOGS_EMAIL_HTMLBODY','','{\"tags\":[\"message\",\"date\",\"extension\",\"username\"]}'),
('com_config.test_mail','com_config','','COM_CONFIG_SENDMAIL_SUBJECT','COM_CONFIG_SENDMAIL_BODY','','','{\"tags\":[\"sitename\",\"method\"]}'),
('com_contact.mail','com_contact','','COM_CONTACT_ENQUIRY_SUBJECT','COM_CONTACT_ENQUIRY_TEXT','','','{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\"]}'),
('com_contact.mail.copy','com_contact','','COM_CONTACT_COPYSUBJECT_OF','COM_CONTACT_COPYTEXT_OF','','','{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\",\"contactname\"]}'),
('com_messages.new_message','com_messages','','COM_MESSAGES_NEW_MESSAGE','COM_MESSAGES_NEW_MESSAGE_BODY','','','{\"tags\":[\"subject\",\"message\",\"fromname\",\"sitename\",\"siteurl\",\"fromemail\",\"toname\",\"toemail\"]}'),
('com_privacy.notification.admin.export','com_privacy','','COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_EXPORT_REQUEST','COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_EXPORT_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.admin.remove','com_privacy','','COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_REMOVE_REQUEST','COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_REMOVE_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.export','com_privacy','','COM_PRIVACY_EMAIL_REQUEST_SUBJECT_EXPORT_REQUEST','COM_PRIVACY_EMAIL_REQUEST_BODY_EXPORT_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.remove','com_privacy','','COM_PRIVACY_EMAIL_REQUEST_SUBJECT_REMOVE_REQUEST','COM_PRIVACY_EMAIL_REQUEST_BODY_REMOVE_REQUEST','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.userdataexport','com_privacy','','COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_SUBJECT','COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_BODY','','','{\"tags\":[\"sitename\",\"url\"]}'),
('com_users.massmail.mail','com_users','','COM_USERS_MASSMAIL_MAIL_SUBJECT','COM_USERS_MASSMAIL_MAIL_BODY','','','{\"tags\":[\"subject\",\"body\",\"subjectprefix\",\"bodysuffix\"]}'),
('com_users.password_reset','com_users','','COM_USERS_EMAIL_PASSWORD_RESET_SUBJECT','COM_USERS_EMAIL_PASSWORD_RESET_BODY','','','{\"tags\":[\"name\",\"email\",\"sitename\",\"link_text\",\"link_html\",\"token\"]}'),
('com_users.registration.admin.new_notification','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_NOTIFICATION_TO_ADMIN_BODY','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.admin.verification_request','com_users','','COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_SUBJECT','COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"email\",\"username\",\"activate\"]}'),
('com_users.registration.user.admin_activated','com_users','','COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_SUBJECT','COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.admin_activation','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY_NOPW','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.admin_activation_w_pw','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.registration.user.registration_mail','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_BODY_NOPW','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.registration_mail_w_pw','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_BODY','','','{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.registration.user.self_activation','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY_NOPW','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.self_activation_w_pw','com_users','','COM_USERS_EMAIL_ACCOUNT_DETAILS','COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY','','','{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.reminder','com_users','','COM_USERS_EMAIL_USERNAME_REMINDER_SUBJECT','COM_USERS_EMAIL_USERNAME_REMINDER_BODY','','','{\"tags\":[\"name\",\"username\",\"sitename\",\"email\",\"link_text\",\"link_html\"]}'),
('plg_multifactorauth_email.mail','plg_multifactorauth_email','','PLG_MULTIFACTORAUTH_EMAIL_EMAIL_SUBJECT','PLG_MULTIFACTORAUTH_EMAIL_EMAIL_BODY','','','{\"tags\":[\"code\",\"sitename\",\"siteurl\",\"username\",\"email\",\"fullname\"]}'),
('plg_system_tasknotification.failure_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_BODY','','','{\"tags\": [\"task_id\", \"task_title\", \"exit_code\", \"exec_data_time\", \"task_output\"]}'),
('plg_system_tasknotification.fatal_recovery_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_BODY','','','{\"tags\": [\"task_id\", \"task_title\"]}'),
('plg_system_tasknotification.orphan_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_BODY','','','{\"tags\": [\"task_id\", \"task_title\"]}'),
('plg_system_tasknotification.success_mail','plg_system_tasknotification','','PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_SUBJECT','PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_BODY','','','{\"tags\":[\"task_id\", \"task_title\", \"exec_data_time\", \"task_output\"]}'),
('plg_task_privacyconsent.request.reminder','plg_task_privacyconsent','','PLG_TASK_PRIVACYCONSENT_EMAIL_REMIND_SUBJECT','PLG_TASK_PRIVACYCONSENT_EMAIL_REMIND_BODY','','','{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('plg_task_updatenotification.mail','plg_task_updatenotification','','PLG_TASK_UPDATENOTIFICATION_EMAIL_SUBJECT','PLG_TASK_UPDATENOTIFICATION_EMAIL_BODY','','','{\"tags\":[\"newversion\",\"curversion\",\"sitename\",\"url\",\"link\",\"releasenews\"]}'),
('plg_user_joomla.mail','plg_user_joomla','','PLG_USER_JOOMLA_NEW_USER_EMAIL_SUBJECT','PLG_USER_JOOMLA_NEW_USER_EMAIL_BODY','','','{\"tags\":[\"name\",\"sitename\",\"url\",\"username\",\"password\",\"email\"]}');
/*!40000 ALTER TABLE `jjg9w_mail_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_menu`
--

DROP TABLE IF EXISTS `jjg9w_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT 1 COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned DEFAULT NULL COMMENT 'FK to #__users.id',
  `checked_out_time` datetime DEFAULT NULL COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT 0,
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT 0,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_menu`
--

LOCK TABLES `jjg9w_menu` WRITE;
/*!40000 ALTER TABLE `jjg9w_menu` DISABLE KEYS */;
INSERT INTO `jjg9w_menu` VALUES
(1,'','Menu_Item_Root','root','','','','',1,0,0,0,NULL,NULL,0,0,'',0,'',0,91,0,'*',0,NULL,NULL),
(2,'main','com_banners','Banners','','Banners','index.php?option=com_banners','component',1,1,1,3,NULL,NULL,0,0,'class:bookmark',0,'',1,10,0,'*',1,NULL,NULL),
(3,'main','com_banners','Banners','','Banners/Banners','index.php?option=com_banners&view=banners','component',1,2,2,3,NULL,NULL,0,0,'class:banners',0,'',2,3,0,'*',1,NULL,NULL),
(4,'main','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&view=categories&extension=com_banners','component',1,2,2,5,NULL,NULL,0,0,'class:banners-cat',0,'',4,5,0,'*',1,NULL,NULL),
(5,'main','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',1,2,2,3,NULL,NULL,0,0,'class:banners-clients',0,'',6,7,0,'*',1,NULL,NULL),
(6,'main','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',1,2,2,3,NULL,NULL,0,0,'class:banners-tracks',0,'',8,9,0,'*',1,NULL,NULL),
(7,'main','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',1,1,1,7,NULL,NULL,0,0,'class:address-book',0,'',11,20,0,'*',1,NULL,NULL),
(8,'main','com_contact_contacts','Contacts','','Contacts/Contacts','index.php?option=com_contact&view=contacts','component',1,7,2,7,NULL,NULL,0,0,'class:contact',0,'',12,13,0,'*',1,NULL,NULL),
(9,'main','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&view=categories&extension=com_contact','component',1,7,2,5,NULL,NULL,0,0,'class:contact-cat',0,'',14,15,0,'*',1,NULL,NULL),
(10,'main','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',1,1,1,16,NULL,NULL,0,0,'class:rss',0,'',23,28,0,'*',1,NULL,NULL),
(11,'main','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds&view=newsfeeds','component',1,10,2,16,NULL,NULL,0,0,'class:newsfeeds',0,'',24,25,0,'*',1,NULL,NULL),
(12,'main','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&view=categories&extension=com_newsfeeds','component',1,10,2,5,NULL,NULL,0,0,'class:newsfeeds-cat',0,'',26,27,0,'*',1,NULL,NULL),
(13,'main','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',1,1,1,23,NULL,NULL,0,0,'class:search-plus',0,'',29,38,0,'*',1,NULL,NULL),
(14,'main','com_tags','Tags','','Tags','index.php?option=com_tags&view=tags','component',1,1,1,25,NULL,NULL,0,1,'class:tags',0,'',39,40,0,'',1,NULL,NULL),
(15,'main','com_associations','Multilingual Associations','','Multilingual Associations','index.php?option=com_associations&view=associations','component',1,1,1,30,NULL,NULL,0,0,'class:language',0,'',21,22,0,'*',1,NULL,NULL),
(16,'main','mod_menu_fields','Contact Custom Fields','','contact/Custom Fields','index.php?option=com_fields&context=com_contact.contact','component',1,7,2,29,NULL,NULL,0,0,'class:messages-add',0,'',16,17,0,'*',1,NULL,NULL),
(17,'main','mod_menu_fields_group','Contact Custom Fields Group','','contact/Custom Fields Group','index.php?option=com_fields&view=groups&context=com_contact.contact','component',1,7,2,29,NULL,NULL,0,0,'class:messages-add',0,'',18,19,0,'*',1,NULL,NULL),
(18,'main','com_finder_index','Smart-Search-Index','','Smart Search/Index','index.php?option=com_finder&view=index','component',1,13,2,23,NULL,NULL,0,0,'class:finder',0,'',30,31,0,'*',1,NULL,NULL),
(19,'main','com_finder_maps','Smart-Search-Maps','','Smart Search/Maps','index.php?option=com_finder&view=maps','component',1,13,2,23,NULL,NULL,0,0,'class:finder-maps',0,'',32,33,0,'*',1,NULL,NULL),
(20,'main','com_finder_filters','Smart-Search-Filters','','Smart Search/Filters','index.php?option=com_finder&view=filters','component',1,13,2,23,NULL,NULL,0,0,'class:finder-filters',0,'',34,35,0,'*',1,NULL,NULL),
(21,'main','com_finder_searches','Smart-Search-Searches','','Smart Search/Searches','index.php?option=com_finder&view=searches','component',1,13,2,23,NULL,NULL,0,0,'class:finder-searches',0,'',36,37,0,'*',1,NULL,NULL),
(101,'mainmenu','Home','home','','home','index.php?option=com_content&view=featured','component',1,1,1,19,NULL,NULL,0,1,'',0,'{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"blog_class_leading\":\"\",\"blog_class\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_links\":\"0\",\"link_intro_image\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"1\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}',41,42,1,'*',0,NULL,NULL),
(102,'0main-menu-blog','Blog','blog','','blog','index.php?option=com_content&view=category&layout=blog&id=8','component',1,1,1,19,NULL,NULL,0,1,' ',0,'{\"layout_type\":\"blog\",\"show_category_title\":0,\"num_leading_articles\":4,\"num_intro_articles\":4,\"num_links\":0,\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"blog_class_leading\":\"boxed columns-2\",\"show_pagination\":2,\"secure\":0,\"show_page_heading\":1}',43,44,0,'*',0,NULL,NULL),
(103,'0main-menu-blog','Help','help','','help','index.php?option=com_content&view=category&layout=blog&id=9','component',1,1,1,19,NULL,NULL,0,1,' ',0,'{\"blog_class_leading\":\"\",\"blog_class\":\"boxed\",\"num_leading_articles\":0,\"num_intro_articles\":4,\"num_links\":0,\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":4,\"show_pagination_results\":1,\"article_layout\":\"_:default\",\"link_titles\":0,\"info_block_show_title\":\"\",\"show_category\":0,\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":0,\"link_author\":\"\",\"show_create_date\":0,\"show_modify_date\":\"\",\"show_publish_date\":0,\"show_hits\":0,\"menu_text\":1,\"menu_show\":1,\"show_page_heading\":1,\"secure\":0}',45,50,0,'*',0,NULL,NULL),
(104,'0main-menu-blog','Login','login','','login','index.php?option=com_users&view=login','component',1,1,1,22,NULL,NULL,0,5,' ',0,'{\"loginredirectchoice\":\"1\",\"login_redirect_url\":\"\",\"login_redirect_menuitem\":101,\"logoutredirectchoice\":\"1\",\"logout_redirect_url\":\"\",\"logout_redirect_menuitem\":101,\"secure\":0}',51,52,0,'*',0,NULL,NULL),
(105,'0main-menu-blog','Logout','logout','','logout','index.php?option=com_users&view=login&layout=logout&task=user.menulogout','component',1,1,1,22,NULL,NULL,0,2,' ',0,'{\"logout\":101,\"secure\":0}',53,54,0,'*',0,NULL,NULL),
(106,'0main-menu-blog','Sample Layouts','sample-layouts','','sample-layouts','','heading',1,1,1,0,NULL,NULL,0,1,' ',0,'{\"layout_type\":\"heading\",\"menu_text\":1,\"show_page_heading\":0,\"secure\":0}',55,68,0,'*',0,NULL,NULL),
(107,'0main-menu-blog','Typography','typography','','typography','index.php?option=com_content&view=article&id=11&catid=11','component',1,1,1,19,NULL,NULL,0,1,' ',0,'{\"show_title\":0,\"link_titles\":0,\"show_intro\":1,\"info_block_position\":\"\",\"info_block_show_title\":0,\"show_category\":0,\"show_author\":0,\"show_create_date\":0,\"show_modify_date\":0,\"show_publish_date\":0,\"show_item_navigation\":0,\"show_hits\":0,\"show_tags\":0,\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"secure\":0}',69,70,0,'*',0,NULL,NULL),
(108,'1special-menu','Create a Post','create-a-post','','create-a-post','index.php?option=com_content&view=form&layout=edit','component',1,1,1,19,NULL,NULL,0,3,' ',0,'{\"enable_category\":1,\"catid\":8,\"menu_text\":1,\"show_page_heading\":0,\"secure\":0}',71,76,0,'*',0,NULL,NULL),
(109,'1special-menu','Working on Your Site','working-on-your-site','','working-on-your-site','index.php?option=com_content&view=article&id=2','component',1,1,1,19,NULL,NULL,0,1,' ',0,'{\"menu_text\":1,\"show_page_heading\":0,\"secure\":0}',77,78,0,'*',0,NULL,NULL),
(110,'1special-menu','Site Administrator','site-administrator','','site-administrator','administrator','url',1,1,1,0,NULL,NULL,1,3,' ',0,'{\"menu_text\":1,\"secure\":0}',79,80,0,'*',0,NULL,NULL),
(111,'1special-menu','Change Password','change-password','','change-password','index.php?option=com_users&view=profile&layout=edit','component',1,1,1,22,NULL,NULL,0,2,' ',0,'{\"menu_text\":1,\"show_page_heading\":0,\"secure\":0}',81,82,0,'*',0,NULL,NULL),
(112,'1special-menu','Log out','log-out','','log-out','index.php?option=com_users&view=login','component',1,1,1,22,NULL,NULL,0,1,' ',0,'{\"logindescription_show\":1,\"logoutdescription_show\":1,\"menu_text\":1,\"show_page_heading\":0,\"secure\":0}',83,84,0,'*',0,NULL,NULL),
(113,'2bottom-menu','Login','login-1','','login-1','index.php?Itemid=','alias',1,1,1,0,NULL,NULL,0,5,' ',0,'{\"aliasoptions\":104,\"alias_redirect\":0,\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"secure\":0}',85,86,0,'*',0,NULL,NULL),
(114,'2bottom-menu','Logout','logout-1','','logout-1','index.php?Itemid=','alias',1,1,1,0,NULL,NULL,0,2,' ',0,'{\"aliasoptions\":105,\"alias_redirect\":0,\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"secure\":0}',87,88,0,'*',0,NULL,NULL),
(115,'2bottom-menu','Search','search','','search','index.php?option=com_finder&view=search','component',1,1,1,23,NULL,NULL,0,1,' ',0,'{\"show_date_filters\":\"1\",\"show_advanced\":\"\",\"expand_advanced\":\"1\",\"show_taxonomy\":\"1\",\"show_date\":\"1\",\"show_url\":\"1\",\"menu_text\":0,\"menu_show\":0,\"secure\":0}',89,90,0,'*',0,NULL,NULL),
(116,'1special-menu','Site Settings','site-settings','','create-a-post/site-settings','index.php?option=com_config&view=config','component',1,108,2,20,NULL,NULL,0,6,' ',0,'{\"menu_text\":1,\"show_page_heading\":0,\"secure\":0}',72,73,0,'*',0,NULL,NULL),
(117,'1special-menu','Template Settings','template-settings','','create-a-post/template-settings','index.php?option=com_config&view=templates','component',1,108,2,20,NULL,NULL,0,6,' ',0,'{\"menu_text\":1,\"show_page_heading\":0,\"secure\":0}',74,75,0,'*',0,NULL,NULL),
(118,'0main-menu-blog','Blog','blog','','sample-layouts/blog','index.php?option=com_content&view=category&layout=blog&id=8','component',1,106,2,19,NULL,NULL,0,1,' ',0,'{\"layout_type\":\"blog\",\"show_category_title\":0,\"num_leading_articles\":1,\"num_intro_articles\":2,\"num_links\":2,\"orderby_sec\":\"front\",\"order_date\":\"published\",\"blog_class_leading\":\"boxed columns-1\",\"blog_class\":\"columns-2\",\"show_pagination\":2,\"show_pagination_results\":1,\"show_category\":0,\"info_bloc_position\":0,\"show_publish_date\":0,\"show_hits\":0,\"show_feed_link\":0,\"menu_text\":1,\"show_page_heading\":0,\"secure\":0}',56,57,0,'*',0,NULL,NULL),
(119,'0main-menu-blog','Category List','category-list','','sample-layouts/category-list','index.php?option=com_content&view=category&id=8','component',1,106,2,19,NULL,NULL,0,1,' ',0,'{\"menu_text\":1,\"show_page_heading\":1,\"secure\":0}',58,59,0,'*',0,NULL,NULL),
(120,'0main-menu-blog','Articles','articles','','sample-layouts/articles','index.php?option=com_content&view=category&layout=blog&id=10','component',1,106,2,19,NULL,NULL,0,1,' ',0,'{\"layout_type\":\"blog\",\"show_category_title\":0,\"num_leading_articles\":3,\"num_intro_articles\":0,\"num_links\":2,\"orderby_sec\":\"front\",\"order_date\":\"published\",\"blog_class_leading\":\"boxed columns-3\",\"blog_class\":\"\",\"show_pagination\":2,\"show_pagination_results\":1,\"show_category\":0,\"info_bloc_position\":0,\"show_publish_date\":0,\"show_hits\":0,\"show_feed_link\":0,\"menu_text\":1,\"show_page_heading\":0,\"secure\":0}',60,67,0,'*',0,NULL,NULL),
(121,'0main-menu-blog','About your home page','about-your-home-page','','help/about-your-home-page','index.php?option=com_content&view=article&id=4','component',1,103,2,19,NULL,NULL,0,1,' ',0,'{\"menu_show\":1,\"show_page_heading\":0,\"secure\":0}',46,47,0,'*',0,NULL,NULL),
(122,'0main-menu-blog','New feature: Workflows','new-feature-workflows','','help/new-feature-workflows','index.php?option=com_content&view=article&id=10','component',1,103,2,19,NULL,NULL,0,1,' ',0,'{\"menu_show\":1,\"show_page_heading\":0,\"secure\":0}',48,49,0,'*',0,NULL,NULL),
(123,'0main-menu-blog','Millions','millions','','sample-layouts/articles/millions','index.php?option=com_content&view=article&id=7','component',1,120,3,19,NULL,NULL,0,1,' ',0,'{\"menu_show\":1,\"secure\":0}',61,62,0,'*',0,NULL,NULL),
(124,'0main-menu-blog','Love','love','','sample-layouts/articles/love','index.php?option=com_content&view=article&id=8','component',1,120,3,19,NULL,NULL,0,1,' ',0,'{\"menu_show\":1,\"secure\":0}',63,64,0,'*',0,NULL,NULL),
(125,'0main-menu-blog','Joomla','joomla','','sample-layouts/articles/joomla','index.php?option=com_content&view=article&id=9','component',1,120,3,19,NULL,NULL,0,1,' ',0,'{\"menu_show\":1,\"secure\":0}',65,66,0,'*',0,NULL,NULL);
/*!40000 ALTER TABLE `jjg9w_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_menu_types`
--

DROP TABLE IF EXISTS `jjg9w_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_menu_types`
--

LOCK TABLES `jjg9w_menu_types` WRITE;
/*!40000 ALTER TABLE `jjg9w_menu_types` DISABLE KEYS */;
INSERT INTO `jjg9w_menu_types` VALUES
(1,0,'mainmenu','Main Menu','The main menu for the site',0,1),
(2,139,'0main-menu-blog','Main Menu Blog ','The horizontal dropdown menu',0,0),
(3,140,'1special-menu','Special Menu ','',0,0),
(4,141,'2bottom-menu','Bottom Menu ','',0,0);
/*!40000 ALTER TABLE `jjg9w_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_messages`
--

DROP TABLE IF EXISTS `jjg9w_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT 0,
  `user_id_to` int(10) unsigned NOT NULL DEFAULT 0,
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `priority` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_messages`
--

LOCK TABLES `jjg9w_messages` WRITE;
/*!40000 ALTER TABLE `jjg9w_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjg9w_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_messages_cfg`
--

DROP TABLE IF EXISTS `jjg9w_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_messages_cfg`
--

LOCK TABLES `jjg9w_messages_cfg` WRITE;
/*!40000 ALTER TABLE `jjg9w_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjg9w_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_modules`
--

DROP TABLE IF EXISTS `jjg9w_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_modules`
--

LOCK TABLES `jjg9w_modules` WRITE;
/*!40000 ALTER TABLE `jjg9w_modules` DISABLE KEYS */;
INSERT INTO `jjg9w_modules` VALUES
(1,39,'Main Menu','','',1,'sidebar-right',NULL,NULL,NULL,NULL,1,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),
(2,40,'Login','','',1,'login',NULL,NULL,NULL,NULL,1,'mod_login',1,1,'',1,'*'),
(3,41,'Popular Articles','','',6,'cpanel',NULL,NULL,NULL,NULL,1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),
(4,42,'Recently Added Articles','','',4,'cpanel',NULL,NULL,NULL,NULL,1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),
(8,43,'Toolbar','','',1,'toolbar',NULL,NULL,NULL,NULL,1,'mod_toolbar',3,1,'',1,'*'),
(9,44,'Notifications','','',3,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',3,1,'{\"context\":\"update_quickicon\",\"header_icon\":\"icon-sync\",\"show_jupdate\":\"1\",\"show_eupdate\":\"1\",\"show_oupdate\":\"1\",\"show_privacy\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(10,45,'Logged-in Users','','',2,'cpanel',NULL,NULL,NULL,NULL,1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),
(12,46,'Admin Menu','','',1,'menu',NULL,NULL,NULL,NULL,1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),
(15,49,'Title','','',1,'title',NULL,NULL,NULL,NULL,1,'mod_title',3,1,'',1,'*'),
(16,50,'Login Form','','',7,'sidebar-right',NULL,NULL,NULL,NULL,1,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*'),
(17,51,'Breadcrumbs','','',1,'breadcrumbs',NULL,NULL,NULL,NULL,1,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}',0,'*'),
(79,52,'Multilanguage status','','',2,'status',NULL,NULL,NULL,NULL,1,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
(86,53,'Joomla Version','','',1,'status',NULL,NULL,NULL,NULL,1,'mod_version',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),
(87,55,'Sample Data','','',1,'cpanel',NULL,NULL,NULL,NULL,1,'mod_sampledata',6,1,'{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),
(88,67,'Latest Actions','','',3,'cpanel',NULL,NULL,NULL,NULL,1,'mod_latestactions',6,1,'{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),
(89,68,'Privacy Dashboard','','',5,'cpanel',NULL,NULL,NULL,NULL,1,'mod_privacy_dashboard',6,1,'{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),
(90,89,'Login Support','','',1,'sidebar',NULL,NULL,NULL,NULL,1,'mod_loginsupport',1,1,'{\"forum_url\":\"https://forum.joomla.org/\",\"documentation_url\":\"https://docs.joomla.org/\",\"news_url\":\"https://www.joomla.org/announcements.html\",\"automatic_title\":1,\"prepare_content\":1,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',1,'*'),
(91,72,'System Dashboard','','',1,'cpanel-system',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"system\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),
(92,73,'Content Dashboard','','',1,'cpanel-content',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"content\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),
(93,74,'Menus Dashboard','','',1,'cpanel-menus',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"menus\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),
(94,75,'Components Dashboard','','',1,'cpanel-components',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"components\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),
(95,76,'Users Dashboard','','',1,'cpanel-users',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"users\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}',1,'*'),
(96,86,'Popular Articles','','',3,'cpanel-content',NULL,NULL,NULL,NULL,1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),
(97,87,'Recently Added Articles','','',4,'cpanel-content',NULL,NULL,NULL,NULL,1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),
(98,88,'Logged-in Users','','',2,'cpanel-users',NULL,NULL,NULL,NULL,1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}',1,'*'),
(99,77,'Frontend Link','','',5,'status',NULL,NULL,NULL,NULL,1,'mod_frontend',1,1,'',1,'*'),
(100,78,'Messages','','',4,'status',NULL,NULL,NULL,NULL,1,'mod_messages',3,1,'',1,'*'),
(101,79,'Post Install Messages','','',3,'status',NULL,NULL,NULL,NULL,1,'mod_post_installation_messages',3,1,'',1,'*'),
(102,80,'User Status','','',6,'status',NULL,NULL,NULL,NULL,1,'mod_user',3,1,'',1,'*'),
(103,70,'Site','','',1,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',1,1,'{\"context\":\"site_quickicon\",\"header_icon\":\"icon-desktop\",\"show_users\":\"1\",\"show_articles\":\"1\",\"show_categories\":\"1\",\"show_media\":\"1\",\"show_menuItems\":\"1\",\"show_modules\":\"1\",\"show_plugins\":\"1\",\"show_templates\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(104,71,'System','','',2,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',1,1,'{\"context\":\"system_quickicon\",\"header_icon\":\"icon-wrench\",\"show_global\":\"1\",\"show_checkin\":\"1\",\"show_cache\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(105,82,'3rd Party','','',4,'icon',NULL,NULL,NULL,NULL,1,'mod_quickicon',1,1,'{\"context\":\"mod_quickicon\",\"header_icon\":\"icon-boxes\",\"load_plugins\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(106,83,'Help Dashboard','','',1,'cpanel-help',NULL,NULL,NULL,NULL,1,'mod_submenu',1,0,'{\"menutype\":\"*\",\"preset\":\"help\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"style\":\"System-none\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(107,84,'Privacy Requests','','',1,'cpanel-privacy',NULL,NULL,NULL,NULL,1,'mod_privacy_dashboard',1,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(108,85,'Privacy Status','','',1,'cpanel-privacy',NULL,NULL,NULL,NULL,1,'mod_privacy_status',1,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}',1,'*'),
(109,96,'Guided Tours','','',1,'status',NULL,NULL,NULL,NULL,1,'mod_guidedtours',1,1,'',1,'*'),
(110,142,'Main Menu Blog','','',1,'menu',NULL,NULL,NULL,NULL,1,'mod_menu',1,0,'{\"menutype\":\"0main-menu-blog\",\"layout\":\"cassiopeia:collapse-metismenu\",\"startLevel\":1,\"endLevel\":0,\"showAllChildren\":1,\"class_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"module_tag\":\"nav\",\"bootstrap_size\":0,\"header_tag\":\"h3\",\"style\":0}',0,'*'),
(111,143,'Special Menu','','',1,'sidebar-right',NULL,NULL,NULL,NULL,1,'mod_menu',3,0,'{\"menutype\":\"1special-menu\",\"startLevel\":1,\"endLevel\":0,\"showAllChildren\":1,\"class_sfx\":\"\",\"layout\":\"_:default\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"module_tag\":\"aside\",\"bootstrap_size\":0,\"header_tag\":\"h3\",\"style\":0}',0,'*'),
(112,144,'Syndication','','',6,'sidebar-right',NULL,NULL,NULL,NULL,1,'mod_syndicate',1,0,'{\"display_text\":1,\"text\":\"My Blog\",\"format\":\"rss\",\"layout\":\"_:default\",\"cache\":0,\"module_tag\":\"section\"}',0,'*'),
(113,145,'Archived Articles','','',4,'sidebar-right',NULL,NULL,NULL,NULL,1,'mod_articles_archive',1,1,'{\"count\":10,\"layout\":\"_:default\",\"cache\":1,\"cache_time\":900,\"module_tag\":\"div\",\"cachemode\":\"static\"}',0,'*'),
(114,146,'Latest Posts','','',6,'top-a',NULL,NULL,NULL,NULL,1,'mod_articles_news',1,0,'{\"catid\":10,\"image\":1,\"img_intro_full\":\"intro\",\"item_title\":0,\"link_titles\":\"\",\"item_heading\":\"h4\",\"triggerevents\":1,\"showLastSeparator\":1,\"show_introtext\":1,\"readmore\":1,\"count\":3,\"show_featured\":\"\",\"exclude_current\":0,\"ordering\":\"a.publish_up\",\"direction\":1,\"layout\":\"_:horizontal\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"style\":\"Cassiopeia-noCard\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\"}',0,'*'),
(115,147,'Older Posts','','',2,'bottom-b',NULL,NULL,NULL,NULL,1,'mod_articles_category',1,1,'{\"mode\":\"normal\",\"show_on_article_page\":0,\"show_front\":\"show\",\"count\":6,\"category_filtering_type\":1,\"catid\":8,\"show_child_category_articles\":0,\"levels\":1,\"author_filtering_type\":1,\"author_alias_filtering_type\":1,\"date_filtering\":\"off\",\"date_field\":\"a.created\",\"relative_date\":30,\"article_ordering\":\"a.created\",\"article_ordering_direction\":\"DESC\",\"article_grouping\":\"none\",\"article_grouping_direction\":\"krsort\",\"month_year_format\":\"F Y\",\"item_heading\":5,\"link_titles\":1,\"show_date\":0,\"show_date_field\":\"created\",\"show_date_format\":\"Y-m-d H:i\",\"show_category\":0,\"show_hits\":0,\"show_author\":0,\"show_introtext\":0,\"introtext_limit\":100,\"show_readmore\":0,\"show_readmore_title\":1,\"readmore_limit\":15,\"layout\":\"_:default\",\"owncache\":1,\"cache_time\":900,\"module_tag\":\"div\",\"bootstrap_size\":4,\"header_tag\":\"h3\",\"style\":0}',0,'*'),
(116,148,'Bottom Menu','','',1,'footer',NULL,NULL,NULL,NULL,1,'mod_menu',1,0,'{\"menutype\":\"2bottom-menu\",\"class_sfx\":\"menu-horizontal\",\"startLevel\":1,\"endLevel\":0,\"showAllChildren\":0,\"layout\":\"cassiopeia:dropdown-metismenu\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":0,\"header_tag\":\"h3\",\"style\":0}',0,'*'),
(117,149,'Search','','',1,'search',NULL,NULL,NULL,NULL,1,'mod_finder',1,1,'{\"searchfilter\":\"\",\"show_autosuggest\":1,\"show_advanced\":0,\"show_label\":0,\"alt_label\":\"Search\",\"show_button\":1,\"opensearch\":1,\"opensearch_name\":\"\",\"set_itemid\":0,\"layout\":\"_:default\",\"module_tag\":\"search\"}',0,'*'),
(118,150,'Image','','<p><h1 class=\"display-4 text-thin\">Welcome to Joomla on Cassiopeia!</h1><p class=\"lead\"><strong>You have chosen one of the most powerful CMS Systems in the world.</strong></p><p class=\"lead\">Cassiopeia is the multi-purpose frontend template for Joomla 5.</p><p><a class=\"btn btn-primary btn-lg\" href=\"index.php?option=com_content&view=article&id=11&catid=11\">Typography »</a></p></p>',1,'banner',NULL,NULL,NULL,NULL,1,'mod_custom',1,0,'{\"prepare_content\":0,\"backgroundimage\":\"images\\/banners\\/banner.jpg#joomlaImage:\\/\\/local-images\\/banners\\/banner.jpg?width=1140&height=600\",\"layout\":\"cassiopeia:banner\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\"}',0,'*'),
(119,151,'Popular Tags','','',1,'bottom-b',NULL,NULL,NULL,NULL,1,'mod_tags_popular',1,1,'{\"maximum\":8,\"timeframe\":\"alltime\",\"order_value\":\"count\",\"order_direction\":1,\"display_count\":1,\"no_results_text\":0,\"minsize\":1,\"maxsize\":2,\"layout\":\"_:cloud\",\"owncache\":1,\"module_tag\":\"aside\",\"bootstrap_size\":4,\"header_tag\":\"h3\",\"style\":0}',0,'*'),
(120,152,'Similar Items','','',3,'bottom-b',NULL,NULL,NULL,NULL,1,'mod_tags_similar',1,1,'{\"maximum\":5,\"matchtype\":\"any\",\"layout\":\"_:default\",\"owncache\":1,\"module_tag\":\"div\",\"bootstrap_size\":4,\"header_tag\":\"h3\",\"style\":0}',0,'*'),
(121,153,'Site Information','','',4,'cpanel',NULL,NULL,NULL,NULL,1,'mod_stats_admin',6,1,'{\"serverinfo\":1,\"siteinfo\":1,\"counter\":0,\"increase\":0,\"layout\":\"_:default\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":0,\"header_tag\":\"h3\",\"style\":0}',1,'*');
/*!40000 ALTER TABLE `jjg9w_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_modules_menu`
--

DROP TABLE IF EXISTS `jjg9w_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT 0,
  `menuid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_modules_menu`
--

LOCK TABLES `jjg9w_modules_menu` WRITE;
/*!40000 ALTER TABLE `jjg9w_modules_menu` DISABLE KEYS */;
INSERT INTO `jjg9w_modules_menu` VALUES
(1,0),
(2,0),
(3,0),
(4,0),
(6,0),
(7,0),
(8,0),
(9,0),
(10,0),
(12,0),
(14,0),
(15,0),
(16,-104),
(17,0),
(79,0),
(86,0),
(87,0),
(88,0),
(89,0),
(90,0),
(91,0),
(92,0),
(93,0),
(94,0),
(95,0),
(96,0),
(97,0),
(98,0),
(99,0),
(100,0),
(101,0),
(102,0),
(103,0),
(104,0),
(105,0),
(106,0),
(107,0),
(108,0),
(109,0),
(110,0),
(111,0),
(112,0),
(113,0),
(114,101),
(115,0),
(116,0),
(117,0),
(118,101),
(119,0),
(120,0),
(121,0);
/*!40000 ALTER TABLE `jjg9w_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_newsfeeds`
--

DROP TABLE IF EXISTS `jjg9w_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT 0,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) NOT NULL DEFAULT '',
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `numarticles` int(10) unsigned NOT NULL DEFAULT 1,
  `cache_time` int(10) unsigned NOT NULL DEFAULT 3600,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) NOT NULL DEFAULT 0,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_newsfeeds`
--

LOCK TABLES `jjg9w_newsfeeds` WRITE;
/*!40000 ALTER TABLE `jjg9w_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjg9w_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_overrider`
--

DROP TABLE IF EXISTS `jjg9w_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_overrider` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_overrider`
--

LOCK TABLES `jjg9w_overrider` WRITE;
/*!40000 ALTER TABLE `jjg9w_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjg9w_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_postinstall_messages`
--

DROP TABLE IF EXISTS `jjg9w_postinstall_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT 700 COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(4) NOT NULL DEFAULT 1,
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_postinstall_messages`
--

LOCK TABLES `jjg9w_postinstall_messages` WRITE;
/*!40000 ALTER TABLE `jjg9w_postinstall_messages` DISABLE KEYS */;
INSERT INTO `jjg9w_postinstall_messages` VALUES
(1,239,'COM_CPANEL_WELCOME_BEGINNERS_TITLE','COM_CPANEL_WELCOME_BEGINNERS_MESSAGE','','com_cpanel',1,'message','','','','','3.2.0',1),
(2,239,'COM_CPANEL_MSG_STATS_COLLECTION_TITLE','COM_CPANEL_MSG_STATS_COLLECTION_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/statscollection.php','admin_postinstall_statscollection_condition','3.5.0',1),
(3,239,'PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_TITLE','PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_BODY','PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_ACTION','plg_system_httpheaders',1,'action','site://plugins/system/httpheaders/postinstall/introduction.php','httpheaders_postinstall_action','site://plugins/system/httpheaders/postinstall/introduction.php','httpheaders_postinstall_condition','4.0.0',1),
(4,239,'COM_USERS_POSTINSTALL_MULTIFACTORAUTH_TITLE','COM_USERS_POSTINSTALL_MULTIFACTORAUTH_BODY','COM_USERS_POSTINSTALL_MULTIFACTORAUTH_ACTION','com_users',1,'action','admin://components/com_users/postinstall/multifactorauth.php','com_users_postinstall_mfa_action','admin://components/com_users/postinstall/multifactorauth.php','com_users_postinstall_mfa_condition','4.2.0',1);
/*!40000 ALTER TABLE `jjg9w_postinstall_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_privacy_consents`
--

DROP TABLE IF EXISTS `jjg9w_privacy_consents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_privacy_consents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `state` int(11) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `remind` tinyint(4) NOT NULL DEFAULT 0,
  `token` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_privacy_consents`
--

LOCK TABLES `jjg9w_privacy_consents` WRITE;
/*!40000 ALTER TABLE `jjg9w_privacy_consents` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjg9w_privacy_consents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_privacy_requests`
--

DROP TABLE IF EXISTS `jjg9w_privacy_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_privacy_requests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL DEFAULT '',
  `requested_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `request_type` varchar(25) NOT NULL DEFAULT '',
  `confirm_token` varchar(100) NOT NULL DEFAULT '',
  `confirm_token_created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_privacy_requests`
--

LOCK TABLES `jjg9w_privacy_requests` WRITE;
/*!40000 ALTER TABLE `jjg9w_privacy_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjg9w_privacy_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_redirect_links`
--

DROP TABLE IF EXISTS `jjg9w_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) NOT NULL,
  `new_url` varchar(2048) DEFAULT NULL,
  `referer` varchar(2048) NOT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `header` smallint(6) NOT NULL DEFAULT 301,
  PRIMARY KEY (`id`),
  KEY `idx_old_url` (`old_url`(100)),
  KEY `idx_link_modified` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_redirect_links`
--

LOCK TABLES `jjg9w_redirect_links` WRITE;
/*!40000 ALTER TABLE `jjg9w_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjg9w_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_scheduler_tasks`
--

DROP TABLE IF EXISTS `jjg9w_scheduler_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_scheduler_tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(128) NOT NULL COMMENT 'unique identifier for job defined by plugin',
  `execution_rules` text DEFAULT NULL COMMENT 'Execution Rules, Unprocessed',
  `cron_rules` text DEFAULT NULL COMMENT 'Processed execution rules, crontab-like JSON form',
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `last_exit_code` int(11) NOT NULL DEFAULT 0 COMMENT 'Exit code when job was last run',
  `last_execution` datetime DEFAULT NULL COMMENT 'Timestamp of last run',
  `next_execution` datetime DEFAULT NULL COMMENT 'Timestamp of next (planned) run, referred for execution on trigger',
  `times_executed` int(11) DEFAULT 0 COMMENT 'Count of successful triggers',
  `times_failed` int(11) DEFAULT 0 COMMENT 'Count of failures',
  `locked` datetime DEFAULT NULL,
  `priority` smallint(6) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0 COMMENT 'Configurable list ordering',
  `cli_exclusive` smallint(6) NOT NULL DEFAULT 0 COMMENT 'If 1, the task is only accessible via CLI',
  `params` text NOT NULL,
  `note` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_type` (`type`),
  KEY `idx_state` (`state`),
  KEY `idx_last_exit` (`last_exit_code`),
  KEY `idx_next_exec` (`next_execution`),
  KEY `idx_locked` (`locked`),
  KEY `idx_priority` (`priority`),
  KEY `idx_cli_exclusive` (`cli_exclusive`),
  KEY `idx_checked_out` (`checked_out`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_scheduler_tasks`
--

LOCK TABLES `jjg9w_scheduler_tasks` WRITE;
/*!40000 ALTER TABLE `jjg9w_scheduler_tasks` DISABLE KEYS */;
INSERT INTO `jjg9w_scheduler_tasks` VALUES
(1,97,'Rotate Logs','rotation.logs','{\"rule-type\":\"interval-days\",\"interval-days\":\"30\",\"exec-day\":\"27\",\"exec-time\":\"14:00\"}','{\"type\":\"interval\",\"exp\":\"P30D\"}',1,0,NULL,'2024-07-27 14:00:00',0,0,NULL,0,0,0,'{\"individual_log\":false,\"log_file\":\"\",\"notifications\":{\"success_mail\":\"0\",\"failure_mail\":\"1\",\"fatal_failure_mail\":\"1\",\"orphan_mail\":\"1\"},\"logstokeep\":1}',NULL,'2024-06-27 14:53:30',1000,NULL,NULL),
(2,98,'Session GC','session.gc','{\"rule-type\":\"interval-hours\",\"interval-hours\":\"24\",\"exec-day\":\"01\",\"exec-time\":\"14:00\"}','{\"type\":\"interval\",\"exp\":\"PT24H\"}',1,0,NULL,'2024-06-28 14:00:00',0,0,NULL,0,0,0,'{\"individual_log\":false,\"log_file\":\"\",\"notifications\":{\"success_mail\":\"0\",\"failure_mail\":\"1\",\"fatal_failure_mail\":\"1\",\"orphan_mail\":\"1\"},\"enable_session_gc\":1,\"enable_session_metadata_gc\":1}',NULL,'2024-06-27 14:53:30',1000,NULL,NULL),
(3,99,'Update Notification','update.notification','{\"rule-type\":\"interval-hours\",\"interval-hours\":\"24\",\"exec-day\":\"01\",\"exec-time\":\"14:00\"}','{\"type\":\"interval\",\"exp\":\"PT24H\"}',1,0,NULL,'2024-06-28 14:00:00',0,0,NULL,0,0,0,'{\"individual_log\":false,\"log_file\":\"\",\"notifications\":{\"success_mail\":\"0\",\"failure_mail\":\"1\",\"fatal_failure_mail\":\"1\",\"orphan_mail\":\"1\"},\"email\":\"\",\"language_override\":\"\"}',NULL,'2024-06-27 14:53:30',1000,NULL,NULL);
/*!40000 ALTER TABLE `jjg9w_scheduler_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_schemaorg`
--

DROP TABLE IF EXISTS `jjg9w_schemaorg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_schemaorg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemId` int(10) unsigned DEFAULT NULL,
  `context` varchar(100) DEFAULT NULL,
  `schemaType` varchar(100) DEFAULT NULL,
  `schema` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_schemaorg`
--

LOCK TABLES `jjg9w_schemaorg` WRITE;
/*!40000 ALTER TABLE `jjg9w_schemaorg` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjg9w_schemaorg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_schemas`
--

DROP TABLE IF EXISTS `jjg9w_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_schemas`
--

LOCK TABLES `jjg9w_schemas` WRITE;
/*!40000 ALTER TABLE `jjg9w_schemas` DISABLE KEYS */;
INSERT INTO `jjg9w_schemas` VALUES
(239,'5.1.1-2024-04-18');
/*!40000 ALTER TABLE `jjg9w_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_session`
--

DROP TABLE IF EXISTS `jjg9w_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_session` (
  `session_id` varbinary(192) NOT NULL,
  `client_id` tinyint(3) unsigned DEFAULT NULL,
  `guest` tinyint(3) unsigned DEFAULT 1,
  `time` int(11) NOT NULL DEFAULT 0,
  `data` mediumtext DEFAULT NULL,
  `userid` int(11) DEFAULT 0,
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`),
  KEY `client_id_guest` (`client_id`,`guest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_session`
--

LOCK TABLES `jjg9w_session` WRITE;
/*!40000 ALTER TABLE `jjg9w_session` DISABLE KEYS */;
INSERT INTO `jjg9w_session` VALUES
('7hdjejof6sno3hkbt8bbddl4er',0,0,1719500810,'joomla|s:1212:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjU6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE2O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTcxOTUwMDAyMztzOjQ6Imxhc3QiO2k6MTcxOTUwMDYyMDtzOjM6Im5vdyI7aToxNzE5NTAwODEwO31zOjU6InRva2VuIjtzOjMyOiJlMmExMGI4NTk5ZGUyNjYzYWM0YzFkOTJkNTE4ZTQzZiI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InVzZXJzIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6ImxvZ2luIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImZvcm0iO086ODoic3RkQ2xhc3MiOjI6e3M6NjoicmV0dXJuIjtzOjkxOiJodHRwczovL2NyZXcubnVvY2lhbC51ay9pbmRleC5waHA/b3B0aW9uPWNvbV9jb250ZW50JnZpZXc9YXJ0aWNsZSZpZD0xMSZjYXRpZD0xMSZJdGVtaWQ9MTA3IjtzOjQ6ImRhdGEiO2E6MDp7fX19fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aToxMDAwO31zOjE5OiJwbGdfc3lzdGVtX3dlYmF1dGhuIjtPOjg6InN0ZENsYXNzIjoxOntzOjk6InJldHVyblVybCI7czozMzoiaHR0cHM6Ly9jcmV3Lm51b2NpYWwudWsvaW5kZXgucGhwIjt9czo5OiJjb21fdXNlcnMiO086ODoic3RkQ2xhc3MiOjE6e3M6MTE6Im1mYV9jaGVja2VkIjtpOjE7fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9\";',1000,'webmaster'),
('872cfl7di97mvfsljlo3k6a43m',0,1,1719502305,'joomla|s:824:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjQ6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzE5NTAyMzA0O3M6NDoibGFzdCI7aToxNzE5NTAyMzA0O3M6Mzoibm93IjtpOjE3MTk1MDIzMDQ7fXM6NToidG9rZW4iO3M6MzI6IjNlNDcxOGY4ZjY4YmFhOTIyODFjOTRhYjFlMTIxYWE0Ijt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO31zOjE5OiJwbGdfc3lzdGVtX3dlYmF1dGhuIjtPOjg6InN0ZENsYXNzIjoxOntzOjk6InJldHVyblVybCI7czoyNDoiaHR0cHM6Ly9jcmV3Lm51b2NpYWwudWsvIjt9fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czoxMjoiACoAc2VwYXJhdG9yIjtzOjE6Ii4iO30=\";',0,''),
('dfp8ioos29fn02hnnr49r35jnd',1,0,1719500570,'joomla|s:3008:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjY6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjc3O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTcxOTUwMDA0NTtzOjQ6Imxhc3QiO2k6MTcxOTUwMDU3MDtzOjM6Im5vdyI7aToxNzE5NTAwNTcwO31zOjU6InRva2VuIjtzOjMyOiI3ZmI2MWI5YzQyYTFhMzhmNjE2OTY3M2ZiODgzNWVlYyI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjo0OntzOjEzOiJjb21faW5zdGFsbGVyIjtPOjg6InN0ZENsYXNzIjoyOntzOjc6Im1lc3NhZ2UiO3M6MDoiIjtzOjE3OiJleHRlbnNpb25fbWVzc2FnZSI7czowOiIiO31zOjExOiJjb21fbW9kdWxlcyI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJtb2R1bGVzIjtPOjg6InN0ZENsYXNzIjozOntzOjE6IjAiO086ODoic3RkQ2xhc3MiOjI6e3M6OToiY2xpZW50X2lkIjtpOjA7czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7aToyMDtzOjg6Im9yZGVyaW5nIjtzOjEwOiJhLnBvc2l0aW9uIjtzOjU6InN0YXJ0IjtkOjA7fX1zOjk6ImNsaWVudF9pZCI7czoxOiIwIjtzOjE6IjEiO086ODoic3RkQ2xhc3MiOjM6e3M6OToiY2xpZW50X2lkIjtpOjE7czoxMDoibGltaXRzdGFydCI7aTowO3M6NDoibGlzdCI7YTo0OntzOjk6ImRpcmVjdGlvbiI7czozOiJhc2MiO3M6NToibGltaXQiO2k6MjA7czo4OiJvcmRlcmluZyI7czoxMDoiYS5wb3NpdGlvbiI7czo1OiJzdGFydCI7ZDowO319fXM6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJtb2R1bGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MDp7fXM6NDoiZGF0YSI7Tjt9fXM6MzoiYWRkIjtPOjg6InN0ZENsYXNzIjoxOntzOjY6Im1vZHVsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoxMjoiZXh0ZW5zaW9uX2lkIjtOO3M6NjoicGFyYW1zIjtOO319fXM6MTA6InNhbXBsZWRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiYmxvZyI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo4OiJhcnRpY2xlcyI7YToxMjp7aTowO2k6MTtpOjE7aToyO2k6MjtpOjM7aTozO2k6NDtpOjQ7aTo1O2k6NTtpOjY7aTo2O2k6NztpOjc7aTo4O2k6ODtpOjk7aTo5O2k6MTA7aToxMDtpOjExO3M6NjoiY2F0SWRzIjthOjQ6e2k6MDtpOjg7aToxO2k6OTtpOjI7aToxMDtpOjM7aToxMTt9fXM6OToibWVudXR5cGVzIjthOjM6e2k6MDtzOjE1OiIwbWFpbi1tZW51LWJsb2ciO2k6MTtzOjEzOiIxc3BlY2lhbC1tZW51IjtpOjI7czoxMjoiMmJvdHRvbS1tZW51Ijt9czoxMzoibWVudUlkc0xldmVsMSI7YToxNDp7aTowO2k6MTAyO2k6MTtpOjEwMztpOjI7aToxMDQ7aTozO2k6MTA1O2k6NDtpOjEwNjtpOjU7aToxMDc7aTo2O2k6MTA4O2k6NztpOjEwOTtpOjg7aToxMTA7aTo5O2k6MTExO2k6MTA7aToxMTI7aToxMTtpOjExMztpOjEyO2k6MTE0O2k6MTM7aToxMTU7fX19czoxMzoiY29tX3RlbXBsYXRlcyI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo2OiJzdHlsZXMiO086ODoic3RkQ2xhc3MiOjI6e3M6OToiY2xpZW50X2lkIjtzOjE6IjAiO3M6NDoibGlzdCI7YTo0OntzOjk6ImRpcmVjdGlvbiI7czozOiJhc2MiO3M6NToibGltaXQiO2k6MjA7czo4OiJvcmRlcmluZyI7czoxMDoiYS50ZW1wbGF0ZSI7czo1OiJzdGFydCI7ZDowO319czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InN0eWxlIjtPOjg6InN0ZENsYXNzIjoyOntzOjI6ImlkIjthOjA6e31zOjQ6ImRhdGEiO047fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czoxMjoiACoAc2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjEwMDA7fXM6MTk6InBsZ19zeXN0ZW1fd2ViYXV0aG4iO086ODoic3RkQ2xhc3MiOjE6e3M6OToicmV0dXJuVXJsIjtzOjM4OiJodHRwczovL2NyZXcubnVvY2lhbC51ay9hZG1pbmlzdHJhdG9yLyI7fXM6OToiY29tX3VzZXJzIjtPOjg6InN0ZENsYXNzIjoxOntzOjExOiJtZmFfY2hlY2tlZCI7aToxO31zOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7YTowOnt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9\";',1000,'webmaster'),
('rkqjq9501gsgbf60vvp28lm838',1,0,1719502365,'joomla|s:1528:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjY6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE2O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTcxOTUwMjMzMDtzOjQ6Imxhc3QiO2k6MTcxOTUwMjM2NTtzOjM6Im5vdyI7aToxNzE5NTAyMzY1O31zOjU6InRva2VuIjtzOjMyOiI1OGUzZDllNTAwZDUyMWQ0MjkxYWUyNmE2MmE1MWQ3YSI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoyOntzOjEzOiJjb21faW5zdGFsbGVyIjtPOjg6InN0ZENsYXNzIjoyOntzOjc6Im1lc3NhZ2UiO3M6MDoiIjtzOjE3OiJleHRlbnNpb25fbWVzc2FnZSI7czowOiIiO31zOjEzOiJjb21fdGVtcGxhdGVzIjtPOjg6InN0ZENsYXNzIjoyOntzOjY6InN0eWxlcyI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo5OiJjbGllbnRfaWQiO3M6MToiMCI7czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7aToyMDtzOjg6Im9yZGVyaW5nIjtzOjEwOiJhLnRlbXBsYXRlIjtzOjU6InN0YXJ0IjtkOjA7fX1zOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NToic3R5bGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MTp7aTowO2k6MTE7fXM6NDoiZGF0YSI7Tjt9fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO2k6MTAwMDt9czoxOToicGxnX3N5c3RlbV93ZWJhdXRobiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo5OiJyZXR1cm5VcmwiO3M6Mzg6Imh0dHBzOi8vY3Jldy5udW9jaWFsLnVrL2FkbWluaXN0cmF0b3IvIjt9czo5OiJjb21fdXNlcnMiO086ODoic3RkQ2xhc3MiOjE6e3M6MTE6Im1mYV9jaGVja2VkIjtpOjE7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjthOjA6e319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czoxMjoiACoAc2VwYXJhdG9yIjtzOjE6Ii4iO30=\";',1000,'webmaster');
/*!40000 ALTER TABLE `jjg9w_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_tags`
--

DROP TABLE IF EXISTS `jjg9w_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) unsigned NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL DEFAULT '' COMMENT 'The keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT 1,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_tags`
--

LOCK TABLES `jjg9w_tags` WRITE;
/*!40000 ALTER TABLE `jjg9w_tags` DISABLE KEYS */;
INSERT INTO `jjg9w_tags` VALUES
(1,0,0,9,0,'','ROOT','root','','',1,NULL,NULL,1,'','','','',1000,'2024-06-27 14:53:29','',1000,'2024-06-27 14:53:29','','',0,'*',1,NULL,NULL),
(2,1,1,2,1,'millions','Millions','millions','','',1,NULL,NULL,1,'{}','','','{}',1000,'2024-06-27 15:01:19','',1000,'2024-06-27 15:01:19','{}','{}',0,'*',1,NULL,NULL),
(3,1,3,4,1,'worldwide','Worldwide','worldwide','','',1,NULL,NULL,1,'{}','','','{}',1000,'2024-06-27 15:01:19','',1000,'2024-06-27 15:01:19','{}','{}',0,'*',2,NULL,NULL),
(4,1,5,8,1,'love','Love','love','','',1,NULL,NULL,1,'{}','','','{}',1000,'2024-06-27 15:01:19','',1000,'2024-06-27 15:01:19','{}','{}',0,'*',3,NULL,NULL),
(5,4,6,7,2,'love/joomla-5','Joomla 5','joomla-5','','',1,NULL,NULL,1,'{}','','','{}',1000,'2024-06-27 15:01:19','',1000,'2024-06-27 15:01:19','{}','{}',0,'*',4,NULL,NULL);
/*!40000 ALTER TABLE `jjg9w_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_template_overrides`
--

DROP TABLE IF EXISTS `jjg9w_template_overrides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_template_overrides` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `hash_id` varchar(255) NOT NULL DEFAULT '',
  `extension_id` int(11) DEFAULT 0,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `action` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_extension_id` (`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_template_overrides`
--

LOCK TABLES `jjg9w_template_overrides` WRITE;
/*!40000 ALTER TABLE `jjg9w_template_overrides` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjg9w_template_overrides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_template_styles`
--

DROP TABLE IF EXISTS `jjg9w_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `inheritable` tinyint(4) NOT NULL DEFAULT 0,
  `parent` varchar(50) DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_client_id` (`client_id`),
  KEY `idx_client_id_home` (`client_id`,`home`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_template_styles`
--

LOCK TABLES `jjg9w_template_styles` WRITE;
/*!40000 ALTER TABLE `jjg9w_template_styles` DISABLE KEYS */;
INSERT INTO `jjg9w_template_styles` VALUES
(10,'atum',1,'1','Atum - Default',1,'','{\"hue\":\"hsl(214, 63%, 20%)\",\"bg-light\":\"#f0f4fb\",\"text-dark\":\"#495057\",\"text-light\":\"#ffffff\",\"link-color\":\"#2a69b8\",\"special-color\":\"#001b4c\",\"colorScheme\":\"os\",\"monochrome\":\"0\",\"loginLogo\":\"\",\"loginLogoAlt\":\"\",\"logoBrandLarge\":\"\",\"logoBrandLargeAlt\":\"\",\"logoBrandSmall\":\"\",\"logoBrandSmallAlt\":\"\"}'),
(11,'cassiopeia',0,'1','Cassiopeia - Default',1,'','{\"brand\":\"1\",\"logoFile\":\"\",\"siteTitle\":\"Joomla  Demo\",\"siteDescription\":\"using sample data\",\"useFontScheme\":\"0\",\"systemFontBody\":\"\",\"systemFontHeading\":\"\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"1\",\"stickyHeader\":1,\"backTop\":1}');
/*!40000 ALTER TABLE `jjg9w_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_tuf_metadata`
--

DROP TABLE IF EXISTS `jjg9w_tuf_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_tuf_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT 0,
  `root` text DEFAULT NULL,
  `targets` text DEFAULT NULL,
  `snapshot` text DEFAULT NULL,
  `timestamp` text DEFAULT NULL,
  `mirrors` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Secure TUF Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_tuf_metadata`
--

LOCK TABLES `jjg9w_tuf_metadata` WRITE;
/*!40000 ALTER TABLE `jjg9w_tuf_metadata` DISABLE KEYS */;
INSERT INTO `jjg9w_tuf_metadata` VALUES
(1,1,'{\"signed\":{\"_type\":\"root\",\"spec_version\":\"1.0\",\"version\":4,\"expires\":\"2025-03-02T16:38:55Z\",\"keys\":{\"07eb082f367c034a95878687f6648aa76d93652b6ee73e58817053d89af6c44f\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"9b2af2d9b9727227735253d795bd27ea8f0e294a5f3603e822dc5052b44802b9\"}},\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"a18e5ebabc19d5d5984b601a292ece61ba3662ab2d071dc520da5bd4f8948799\"}},\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"cb0a7a131961a20edea051d6dc2b091fb650bd399bd8514adb67b3c60db9f8f9\"}},\"31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"589d029a68b470deff1ca16dbf3eea6b5b3fcba0ae7bb52c468abc7fb058b2a2\"}},\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"6043c8bacc76ac5c9750f45454dd865c6ca1fc57d69e14cc192cfd420f6a66a9\"}},\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"ad1950e117b29ebe7a38635a2e574123e07571e4f9a011783e053b5f15d2562a\"}},\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"5d451915bc2b93a0e4e4745bc6a8b292d58996d50e0fb66c78c7827152a65879\"}}},\"roles\":{\"root\":{\"keyids\":[\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\",\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\"],\"threshold\":1},\"snapshot\":{\"keyids\":[\"07eb082f367c034a95878687f6648aa76d93652b6ee73e58817053d89af6c44f\",\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\",\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\",\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\"],\"threshold\":1},\"targets\":{\"keyids\":[\"31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3\",\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\",\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\"],\"threshold\":1},\"timestamp\":{\"keyids\":[\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\"],\"threshold\":1}},\"consistent_snapshot\":true},\"signatures\":[{\"keyid\":\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\",\"sig\":\"1c8060aab4c5290dc398199d8f124701bd3f7d3fb47d688e3e61d20eeb90d6e387556ce680ba8db9b99f15332df64da349a03344f50ab4f1fe491efdf88f170c\"}]}','{\"signed\":{\"_type\":\"targets\",\"spec_version\":\"1.0\",\"version\":13,\"expires\":\"2024-09-25T15:44:42Z\",\"targets\":{\"Joomla_5.1.1-Stable-Update_Package.zip\":{\"length\":28087139,\"hashes\":{\"sha512\":\"424d2dadbfd9cd46bf516ff502dd3fe67da20e809480948ed87e0752b03fa9bd9dd7d5c8b4934a4cf4fd01f4b9eb2c8095995dae0b01708ad7c7f48163c26515\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.1.1 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-1-1/Joomla_5.1.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.1.1/Joomla_5.1.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.1.1/Joomla_5.1.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5908-joomla-5-1-1-and-joomla-4-4-5-are-here.html\",\"title\":\"Joomla! 5.1.1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.1.1\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.1.1\"}},\"Joomla_5.2.0-alpha2-Alpha-Update_Package.zip\":{\"length\":27543535,\"hashes\":{\"sha512\":\"367d4e553730d4a462891d543e8eafbca8c79159d86eef800ff56521557447c733e72dbdbc87b34ae00aac82ec3ac19948af17ce41a2341ea22386f52bc8edde\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.2.0-alpha2 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.2.0-alpha2/Joomla_5.2.0-alpha2-Alpha-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://github.com/joomla/joomla-cms/releases/tag/5.2.0-alpha2\",\"title\":\"Joomla! 5.2.0-alpha2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.2.0-alpha2\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Alpha\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.2.0-alpha2\"}}}},\"signatures\":[{\"keyid\":\"31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3\",\"sig\":\"d8c65a24311367e2c9057bc2c11c288639d213e347fa7288a4a1206cc1cd60d0e412e31f44447f66e85d6f0959f9171313e9b7eb3457588123f94798546a0607\"}]}','{\"signed\":{\"_type\":\"snapshot\",\"spec_version\":\"1.0\",\"version\":16,\"expires\":\"2025-01-21T15:48:26Z\",\"meta\":{\"targets.json\":{\"length\":2484,\"hashes\":{\"sha512\":\"6abeacdd1047f8102dbc168e719c5eb0feb8e08b35a29c4d89eb0ebb37be267419999bdececbf3ea57a43c595f89a53a1493a5cb813ec032bd1128c3b077ac6a\"},\"version\":13}}},\"signatures\":[{\"keyid\":\"07eb082f367c034a95878687f6648aa76d93652b6ee73e58817053d89af6c44f\",\"sig\":\"2f760e9708ba4e8611d41e6a04af7648569118dcd31083e87bfd739c920897707918b1c78fb5c19c19cdef5959e8fa943e5a116625520c7a41ab967d55950105\"}]}','{\"signed\":{\"_type\":\"timestamp\",\"spec_version\":\"1.0\",\"version\":184,\"expires\":\"2024-06-29T01:21:01Z\",\"meta\":{\"snapshot.json\":{\"length\":531,\"hashes\":{\"sha512\":\"1fa9480c9d046146e09632c49645a3a914c46e3187ec59688e74d32c78ad7b9e3c97cf418769341d4e8c3b7fdc1cac6c5675240bd4b5926d38f5feb9972a0152\"},\"version\":16}}},\"signatures\":[{\"keyid\":\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\",\"sig\":\"fdb3fe7683ded86a6b6848aea6f00c51c7c9b61f85c3bd4b4a53ab98ef78674799b0b185fa24950abe1669fdaa8146a161f6fae6040fb4249c2b6588746fcf04\"}]}',NULL);
/*!40000 ALTER TABLE `jjg9w_tuf_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_ucm_base`
--

DROP TABLE IF EXISTS `jjg9w_ucm_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(11) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_ucm_base`
--

LOCK TABLES `jjg9w_ucm_base` WRITE;
/*!40000 ALTER TABLE `jjg9w_ucm_base` DISABLE KEYS */;
INSERT INTO `jjg9w_ucm_base` VALUES
(1,3,1,0),
(2,4,1,0),
(3,5,1,0),
(4,6,1,0);
/*!40000 ALTER TABLE `jjg9w_ucm_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_ucm_content`
--

DROP TABLE IF EXISTS `jjg9w_ucm_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext DEFAULT NULL,
  `core_state` tinyint(4) NOT NULL DEFAULT 0,
  `core_checked_out_time` datetime DEFAULT NULL,
  `core_checked_out_user_id` int(10) unsigned DEFAULT NULL,
  `core_access` int(10) unsigned NOT NULL DEFAULT 0,
  `core_params` text DEFAULT NULL,
  `core_featured` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `core_metadata` varchar(2048) NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL,
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL,
  `core_language` char(7) NOT NULL DEFAULT '',
  `core_publish_up` datetime DEFAULT NULL,
  `core_publish_down` datetime DEFAULT NULL,
  `core_content_item_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `core_images` text DEFAULT NULL,
  `core_urls` text DEFAULT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT 0,
  `core_version` int(10) unsigned NOT NULL DEFAULT 1,
  `core_ordering` int(11) NOT NULL DEFAULT 0,
  `core_metakey` text DEFAULT NULL,
  `core_metadesc` text DEFAULT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT 0,
  `core_type_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`(100)),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_ucm_content`
--

LOCK TABLES `jjg9w_ucm_content` WRITE;
/*!40000 ALTER TABLE `jjg9w_ucm_content` DISABLE KEYS */;
INSERT INTO `jjg9w_ucm_content` VALUES
(1,'com_content.article','Welcome to your blog','welcome-to-your-blog','<p>This is a sample blog posting.</p><p>If you log in to the site (the Administrator Login link is on the very bottom of this page) you will be able to edit it and all of the other existing articles. You will also be able to create a new article and make other changes to the site.</p><p>As you add and modify articles you will see how your site changes and also how you can customise it in various ways.</p><p>Go ahead, you can\'t break it.</p>',1,NULL,NULL,1,'{}',1,'{}',1000,'','2024-06-27 15:01:19',1000,'2024-06-27 15:01:19','*','2024-06-27 15:01:19',NULL,3,130,'{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa1-1200.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa1-1200.jpg?width=1200&height=400\",\"float_intro\":\"\",\"image_intro_alt\":\"Amazing Andromeda Galaxy\",\"image_intro_alt_empty\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/cassiopeia\\/nasa1-400.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa1-400.jpg?width=400&height=400\",\"float_fulltext\":\"float-start\",\"image_fulltext_alt\":\"\",\"image_fulltext_alt_empty\":1,\"image_fulltext_caption\":\"www.nasa.gov\\/multimedia\\/imagegallery\"}','{}',0,1,0,'','',8,1),
(2,'com_content.article','About your home page','about-your-home-page','<p>Your home page is set to display the four most recent articles from the blog category in a column. Then there are links to the next two oldest articles. You can change those numbers by editing the content options settings in the blog tab in your site administrator. There is a link to your site administrator if you are logged in.</p><p>If you want to have your blog post broken into two parts, an introduction and then a full length separate page, use the Read More span to insert a break.</p>',1,NULL,NULL,1,'{}',1,'{}',1000,'','2024-06-27 15:01:19',1000,'2024-06-27 15:01:19','*','2024-06-27 15:01:19',NULL,4,131,'{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa2-1200.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa2-1200.jpg?width=1200&height=400\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":1,\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/cassiopeia\\/nasa2-400.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa2-400.jpg?width=400&height=400\",\"float_fulltext\":\"float-start\",\"image_fulltext_alt\":\"\",\"image_fulltext_alt_empty\":1,\"image_fulltext_caption\":\"www.nasa.gov\\/multimedia\\/imagegallery\"}','{}',0,1,0,'','',8,1),
(3,'com_content.article','Your Modules','your-modules','<p>Your site has some commonly used modules already preconfigured. These include:</p><ul><li>Image (type: Custom), which holds the image beneath the menu. This is a Custom module that you can edit to change the image.</li><li>Popular Tags (type: Tags - Popular), which will appear if you use tagging on your articles. Enter a tag in the Tags field when editing.</li><li>Older Posts (type: Articles - Category), which lists out articles by categories.</li><li>Syndication (type: Syndication Feeds), which allows your readers to read your posts in a news reader.</li><li>Login Form (type: Login), which allows your users to access restricted areas of the website.</li></ul><p>Each of these modules has many options which you can experiment with in the Module Manager in your site Administrator. When you are logged in you can also select the edit icon in the top right corner which will take you to an edit screen for that module. Always be sure to save and close any module you edit.</p><p>Joomla! also includes many other modules you can incorporate in your site. As you develop your site you may want to add more modules that you can find at the <a href=\"https://extensions.joomla.org/\">Joomla Extensions Directory.</a></p>',1,NULL,NULL,1,'{}',1,'{}',1000,'','2024-06-27 15:01:19',1000,'2024-06-27 15:01:19','*','2024-06-27 15:01:19',NULL,5,132,'{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa3-1200.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa3-1200.jpg?width=1200&height=400\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":1,\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/cassiopeia\\/nasa3-400.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa3-400.jpg?width=400&height=400\",\"float_fulltext\":\"float-start\",\"image_fulltext_alt\":\"Crab Nebula\",\"image_fulltext_alt_empty\":\"\",\"image_fulltext_caption\":\"www.nasa.gov\\/multimedia\\/imagegallery\"}','{}',0,1,0,'','',8,1),
(4,'com_content.article','Your Template','your-template','<p>Templates control the look and feel of your website.</p><p>This blog is installed with the Cassiopeia template.</p><p>You can edit the options by selecting the Working on Your Site, Template Settings link in the menu which is visible when you log in.</p><p>For example you can change the site background colour, highlights colour, site title, site description and title font used.</p><p>More options are available in the site administrator. You may also install a new template using the extension manager.</p>',1,NULL,NULL,1,'{}',1,'{}',1000,'','2024-06-27 15:01:19',1000,'2024-06-27 15:01:19','*','2024-06-27 15:01:19',NULL,6,133,'{\"image_intro\":\"images\\/sampledata\\/cassiopeia\\/nasa4-1200.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa4-1200.jpg?width=1200&height=400\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_alt_empty\":1,\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/sampledata\\/cassiopeia\\/nasa4-400.jpg#joomlaImage:\\/\\/local-images\\/sampledata\\/cassiopeia\\/nasa4-400.jpg?width=400&height=400\",\"float_fulltext\":\"float-start\",\"image_fulltext_alt\":\"\",\"image_fulltext_alt_empty\":1,\"image_fulltext_caption\":\"www.nasa.gov\\/multimedia\\/imagegallery\"}','{}',0,1,0,'','',8,1);
/*!40000 ALTER TABLE `jjg9w_ucm_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_update_sites`
--

DROP TABLE IF EXISTS `jjg9w_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT 0,
  `last_check_timestamp` bigint(20) DEFAULT 0,
  `extra_query` varchar(1000) DEFAULT '',
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_update_sites`
--

LOCK TABLES `jjg9w_update_sites` WRITE;
/*!40000 ALTER TABLE `jjg9w_update_sites` DISABLE KEYS */;
INSERT INTO `jjg9w_update_sites` VALUES
(1,'Joomla! Core','tuf','https://update.joomla.org/cms/',1,1719500061,'',NULL,NULL),
(2,'Accredited Joomla! Translations','collection','https://update.joomla.org/language/translationlist_5.xml',1,1719500013,'',NULL,NULL),
(3,'Joomla! Update Component','extension','https://update.joomla.org/core/extensions/com_joomlaupdate.xml',1,1719500062,'',NULL,NULL);
/*!40000 ALTER TABLE `jjg9w_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_update_sites_extensions`
--

DROP TABLE IF EXISTS `jjg9w_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT 0,
  `extension_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_update_sites_extensions`
--

LOCK TABLES `jjg9w_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `jjg9w_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `jjg9w_update_sites_extensions` VALUES
(1,239),
(2,240),
(3,24);
/*!40000 ALTER TABLE `jjg9w_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_updates`
--

DROP TABLE IF EXISTS `jjg9w_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT 0,
  `extension_id` int(11) DEFAULT 0,
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(4) DEFAULT 0,
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `changelogurl` text DEFAULT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_updates`
--

LOCK TABLES `jjg9w_updates` WRITE;
/*!40000 ALTER TABLE `jjg9w_updates` DISABLE KEYS */;
INSERT INTO `jjg9w_updates` VALUES
(1,2,0,'Afrikaans','','pkg_af-ZA','package','',0,'5.0.2.1','','https://update.joomla.org/language/details5/af-ZA_details.xml','','',''),
(2,2,0,'Belarusian','','pkg_be-BY','package','',0,'5.1.1.1','','https://update.joomla.org/language/details5/be-BY_details.xml','','',''),
(3,2,0,'Catalan','','pkg_ca-ES','package','',0,'5.1.1.1','','https://update.joomla.org/language/details5/ca-ES_details.xml','','',''),
(4,2,0,'Chinese, Traditional','','pkg_zh-TW','package','',0,'5.0.3.1','','https://update.joomla.org/language/details5/zh-TW_details.xml','','',''),
(5,2,0,'Czech','','pkg_cs-CZ','package','',0,'5.1.2.1','','https://update.joomla.org/language/details5/cs-CZ_details.xml','','',''),
(6,2,0,'Danish','','pkg_da-DK','package','',0,'5.1.1.1','','https://update.joomla.org/language/details5/da-DK_details.xml','','',''),
(7,2,0,'Dutch','','pkg_nl-NL','package','',0,'5.1.1.1','','https://update.joomla.org/language/details5/nl-NL_details.xml','','',''),
(8,2,0,'English, Australia','','pkg_en-AU','package','',0,'5.0.3.1','','https://update.joomla.org/language/details5/en-AU_details.xml','','',''),
(9,2,0,'English, Canada','','pkg_en-CA','package','',0,'5.0.3.1','','https://update.joomla.org/language/details5/en-CA_details.xml','','',''),
(10,2,0,'English, New Zealand','','pkg_en-NZ','package','',0,'5.0.3.2','','https://update.joomla.org/language/details5/en-NZ_details.xml','','',''),
(11,2,0,'English, USA','','pkg_en-US','package','',0,'5.0.3.1','','https://update.joomla.org/language/details5/en-US_details.xml','','',''),
(12,2,0,'Estonian','','pkg_et-EE','package','',0,'5.1.0.1','','https://update.joomla.org/language/details5/et-EE_details.xml','','',''),
(13,2,0,'Finnish','','pkg_fi-FI','package','',0,'5.1.0.1','','https://update.joomla.org/language/details5/fi-FI_details.xml','','',''),
(14,2,0,'Flemish','','pkg_nl-BE','package','',0,'5.1.1.1','','https://update.joomla.org/language/details5/nl-BE_details.xml','','',''),
(15,2,0,'French','','pkg_fr-FR','package','',0,'5.1.1.1','','https://update.joomla.org/language/details5/fr-FR_details.xml','','',''),
(16,2,0,'French, Canada','','pkg_fr-CA','package','',0,'5.1.1.1','','https://update.joomla.org/language/details5/fr-CA_details.xml','','',''),
(17,2,0,'Georgian','','pkg_ka-GE','package','',0,'5.1.1.1','','https://update.joomla.org/language/details5/ka-GE_details.xml','','',''),
(18,2,0,'German','','pkg_de-DE','package','',0,'5.1.1.1','','https://update.joomla.org/language/details5/de-DE_details.xml','','',''),
(19,2,0,'German, Austria','','pkg_de-AT','package','',0,'5.1.1.1','','https://update.joomla.org/language/details5/de-AT_details.xml','','',''),
(20,2,0,'German, Liechtenstein','','pkg_de-LI','package','',0,'5.1.1.1','','https://update.joomla.org/language/details5/de-LI_details.xml','','',''),
(21,2,0,'German, Luxembourg','','pkg_de-LU','package','',0,'5.1.1.1','','https://update.joomla.org/language/details5/de-LU_details.xml','','',''),
(22,2,0,'German, Switzerland','','pkg_de-CH','package','',0,'5.1.1.1','','https://update.joomla.org/language/details5/de-CH_details.xml','','',''),
(23,2,0,'Greek','','pkg_el-GR','package','',0,'5.1.1.1','','https://update.joomla.org/language/details5/el-GR_details.xml','','',''),
(24,2,0,'Hungarian','','pkg_hu-HU','package','',0,'5.1.1.1','','https://update.joomla.org/language/details5/hu-HU_details.xml','','',''),
(25,2,0,'Italian','','pkg_it-IT','package','',0,'5.1.1.1','','https://update.joomla.org/language/details5/it-IT_details.xml','','',''),
(26,2,0,'Japanese','','pkg_ja-JP','package','',0,'5.1.1.1','','https://update.joomla.org/language/details5/ja-JP_details.xml','','',''),
(27,2,0,'Kazakh','','pkg_kk-KZ','package','',0,'5.0.0.4','','https://update.joomla.org/language/details5/kk-KZ_details.xml','','',''),
(28,2,0,'Korean','','pkg_ko-KR','package','',0,'5.0.2.1','','https://update.joomla.org/language/details5/ko-KR_details.xml','','',''),
(29,2,0,'Latvian','','pkg_lv-LV','package','',0,'5.0.1.1','','https://update.joomla.org/language/details5/lv-LV_details.xml','','',''),
(30,2,0,'Pashto Afghanistan','','pkg_ps-AF','package','',0,'5.0.1.1','','https://update.joomla.org/language/details5/ps-AF_details.xml','','',''),
(31,2,0,'Persian Farsi','','pkg_fa-IR','package','',0,'5.1.1.1','','https://update.joomla.org/language/details5/fa-IR_details.xml','','',''),
(32,2,0,'Polish','','pkg_pl-PL','package','',0,'5.1.1.1','','https://update.joomla.org/language/details5/pl-PL_details.xml','','',''),
(33,2,0,'Portuguese, Brazil','','pkg_pt-BR','package','',0,'5.1.1.3','','https://update.joomla.org/language/details5/pt-BR_details.xml','','',''),
(34,2,0,'Romanian','','pkg_ro-RO','package','',0,'5.1.1.1','','https://update.joomla.org/language/details5/ro-RO_details.xml','','',''),
(35,2,0,'Russian','','pkg_ru-RU','package','',0,'5.1.1.1','','https://update.joomla.org/language/details5/ru-RU_details.xml','','',''),
(36,2,0,'Serbian, Cyrillic','','pkg_sr-RS','package','',0,'5.1.2.1','','https://update.joomla.org/language/details5/sr-RS_details.xml','','',''),
(37,2,0,'Serbian, Latin','','pkg_sr-YU','package','',0,'5.1.2.1','','https://update.joomla.org/language/details5/sr-YU_details.xml','','',''),
(38,2,0,'Slovak','','pkg_sk-SK','package','',0,'5.0.1.2','','https://update.joomla.org/language/details5/sk-SK_details.xml','','',''),
(39,2,0,'Slovenian','','pkg_sl-SI','package','',0,'5.1.1.1','','https://update.joomla.org/language/details5/sl-SI_details.xml','','',''),
(40,2,0,'Spanish','','pkg_es-ES','package','',0,'5.1.0.1','','https://update.joomla.org/language/details5/es-ES_details.xml','','',''),
(41,2,0,'Swedish','','pkg_sv-SE','package','',0,'5.1.0.1','','https://update.joomla.org/language/details5/sv-SE_details.xml','','',''),
(42,2,0,'Tamil, India','','pkg_ta-IN','package','',0,'5.1.1.1','','https://update.joomla.org/language/details5/ta-IN_details.xml','','',''),
(43,2,0,'Thai','','pkg_th-TH','package','',0,'5.1.1.1','','https://update.joomla.org/language/details5/th-TH_details.xml','','',''),
(44,2,0,'Turkish','','pkg_tr-TR','package','',0,'5.1.1.1','','https://update.joomla.org/language/details5/tr-TR_details.xml','','',''),
(45,2,0,'Ukrainian','','pkg_uk-UA','package','',0,'5.1.1.1','','https://update.joomla.org/language/details5/uk-UA_details.xml','','',''),
(46,2,0,'Urdu, Pakistan','','pkg_ur-PK','package','',0,'5.1.1.2','','https://update.joomla.org/language/details5/ur-PK_details.xml','','',''),
(47,2,0,'Welsh','','pkg_cy-GB','package','',0,'5.1.1.1','','https://update.joomla.org/language/details5/cy-GB_details.xml','','','');
/*!40000 ALTER TABLE `jjg9w_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_user_keys`
--

DROP TABLE IF EXISTS `jjg9w_user_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(191) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_user_keys`
--

LOCK TABLES `jjg9w_user_keys` WRITE;
/*!40000 ALTER TABLE `jjg9w_user_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjg9w_user_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_user_mfa`
--

DROP TABLE IF EXISTS `jjg9w_user_mfa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_user_mfa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `method` varchar(100) NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `options` mediumtext NOT NULL,
  `created_on` datetime NOT NULL,
  `last_used` datetime DEFAULT NULL,
  `tries` int(11) NOT NULL DEFAULT 0,
  `last_try` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Multi-factor Authentication settings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_user_mfa`
--

LOCK TABLES `jjg9w_user_mfa` WRITE;
/*!40000 ALTER TABLE `jjg9w_user_mfa` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjg9w_user_mfa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_user_notes`
--

DROP TABLE IF EXISTS `jjg9w_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `catid` int(10) unsigned NOT NULL DEFAULT 0,
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) unsigned DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `created_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL,
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `review_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_user_notes`
--

LOCK TABLES `jjg9w_user_notes` WRITE;
/*!40000 ALTER TABLE `jjg9w_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjg9w_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_user_profiles`
--

DROP TABLE IF EXISTS `jjg9w_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_user_profiles`
--

LOCK TABLES `jjg9w_user_profiles` WRITE;
/*!40000 ALTER TABLE `jjg9w_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjg9w_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_user_usergroup_map`
--

DROP TABLE IF EXISTS `jjg9w_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_user_usergroup_map`
--

LOCK TABLES `jjg9w_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `jjg9w_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `jjg9w_user_usergroup_map` VALUES
(1000,8);
/*!40000 ALTER TABLE `jjg9w_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_usergroups`
--

DROP TABLE IF EXISTS `jjg9w_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_usergroups`
--

LOCK TABLES `jjg9w_usergroups` WRITE;
/*!40000 ALTER TABLE `jjg9w_usergroups` DISABLE KEYS */;
INSERT INTO `jjg9w_usergroups` VALUES
(1,0,1,18,'Public'),
(2,1,8,15,'Registered'),
(3,2,9,14,'Author'),
(4,3,10,13,'Editor'),
(5,4,11,12,'Publisher'),
(6,1,4,7,'Manager'),
(7,6,5,6,'Administrator'),
(8,1,16,17,'Super Users'),
(9,1,2,3,'Guest');
/*!40000 ALTER TABLE `jjg9w_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_users`
--

DROP TABLE IF EXISTS `jjg9w_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT 0,
  `sendEmail` tinyint(4) DEFAULT 0,
  `registerDate` datetime NOT NULL,
  `lastvisitDate` datetime DEFAULT NULL,
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime DEFAULT NULL COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT 0 COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Backup Codes',
  `requireReset` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Require user to reset password on next login',
  `authProvider` varchar(100) NOT NULL DEFAULT '' COMMENT 'Name of used authentication plugin',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_username` (`username`),
  KEY `idx_name` (`name`(100)),
  KEY `idx_block` (`block`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_users`
--

LOCK TABLES `jjg9w_users` WRITE;
/*!40000 ALTER TABLE `jjg9w_users` DISABLE KEYS */;
INSERT INTO `jjg9w_users` VALUES
(1000,'Webmaster','webmaster','test@12121212.com','$2y$10$lS1Gea85Q0Sxszf1BkxP2Og00Uv1A1Rawcr9y4..NyyTkZD73CCDy',0,1,'2024-06-27 14:53:30','2024-06-27 15:32:22','0','',NULL,0,'','',0,'');
/*!40000 ALTER TABLE `jjg9w_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_viewlevels`
--

DROP TABLE IF EXISTS `jjg9w_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_viewlevels`
--

LOCK TABLES `jjg9w_viewlevels` WRITE;
/*!40000 ALTER TABLE `jjg9w_viewlevels` DISABLE KEYS */;
INSERT INTO `jjg9w_viewlevels` VALUES
(1,'Public',0,'[1]'),
(2,'Registered',2,'[6,2,8]'),
(3,'Special',3,'[6,3,8]'),
(5,'Guest',1,'[9]'),
(6,'Super Users',4,'[8]');
/*!40000 ALTER TABLE `jjg9w_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_webauthn_credentials`
--

DROP TABLE IF EXISTS `jjg9w_webauthn_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_webauthn_credentials` (
  `id` varchar(1000) NOT NULL COMMENT 'Credential ID',
  `user_id` varchar(128) NOT NULL COMMENT 'User handle',
  `label` varchar(190) NOT NULL COMMENT 'Human readable label',
  `credential` mediumtext NOT NULL COMMENT 'Credential source data, JSON format',
  PRIMARY KEY (`id`(100)),
  KEY `user_id` (`user_id`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_webauthn_credentials`
--

LOCK TABLES `jjg9w_webauthn_credentials` WRITE;
/*!40000 ALTER TABLE `jjg9w_webauthn_credentials` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjg9w_webauthn_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_workflow_associations`
--

DROP TABLE IF EXISTS `jjg9w_workflow_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_workflow_associations` (
  `item_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Extension table id value',
  `stage_id` int(11) NOT NULL COMMENT 'Foreign Key to #__workflow_stages.id',
  `extension` varchar(50) NOT NULL,
  PRIMARY KEY (`item_id`,`extension`),
  KEY `idx_item_stage_extension` (`item_id`,`stage_id`,`extension`),
  KEY `idx_item_id` (`item_id`),
  KEY `idx_stage_id` (`stage_id`),
  KEY `idx_extension` (`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_workflow_associations`
--

LOCK TABLES `jjg9w_workflow_associations` WRITE;
/*!40000 ALTER TABLE `jjg9w_workflow_associations` DISABLE KEYS */;
INSERT INTO `jjg9w_workflow_associations` VALUES
(1,1,'com_content.article'),
(2,1,'com_content.article'),
(7,1,'com_content.article'),
(8,1,'com_content.article'),
(9,1,'com_content.article'),
(10,1,'com_content.article'),
(11,1,'com_content.article'),
(3,7,'com_content.article'),
(4,7,'com_content.article'),
(5,7,'com_content.article'),
(6,7,'com_content.article');
/*!40000 ALTER TABLE `jjg9w_workflow_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_workflow_stages`
--

DROP TABLE IF EXISTS `jjg9w_workflow_stages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_workflow_stages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `workflow_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_workflow_id` (`workflow_id`),
  KEY `idx_checked_out` (`checked_out`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_default` (`default`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_workflow_stages`
--

LOCK TABLES `jjg9w_workflow_stages` WRITE;
/*!40000 ALTER TABLE `jjg9w_workflow_stages` DISABLE KEYS */;
INSERT INTO `jjg9w_workflow_stages` VALUES
(1,57,1,1,1,'COM_WORKFLOW_BASIC_STAGE','',1,NULL,NULL),
(2,103,0,2,1,'Idea','Basic stage. Every newly submitted article for Blog.',0,NULL,NULL),
(3,104,0,2,1,'Copywriting','Copywriter is at work.',0,NULL,NULL),
(4,105,0,2,1,'Graphic Design','Graphic Designer is at work.',0,NULL,NULL),
(5,106,0,2,1,'Fact Check','Fact Checker is at work.',0,NULL,NULL),
(6,107,0,2,1,'Content Review','The article is reviewed, checked for text, illustration, HTML.',0,NULL,NULL),
(7,108,0,2,1,'Published','Online and Published.',1,NULL,NULL),
(8,109,0,2,1,'On Hold','On hold, waiting.',0,NULL,NULL),
(9,110,0,2,1,'Trashed','Not accepted',0,NULL,NULL),
(10,111,0,2,1,'Unpublished','A published article is unpublished and unfeatured',0,NULL,NULL);
/*!40000 ALTER TABLE `jjg9w_workflow_stages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_workflow_transitions`
--

DROP TABLE IF EXISTS `jjg9w_workflow_transitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_workflow_transitions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `workflow_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `from_stage_id` int(11) NOT NULL,
  `to_stage_id` int(11) NOT NULL,
  `options` text NOT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_checked_out` (`checked_out`),
  KEY `idx_from_stage_id` (`from_stage_id`),
  KEY `idx_to_stage_id` (`to_stage_id`),
  KEY `idx_workflow_id` (`workflow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_workflow_transitions`
--

LOCK TABLES `jjg9w_workflow_transitions` WRITE;
/*!40000 ALTER TABLE `jjg9w_workflow_transitions` DISABLE KEYS */;
INSERT INTO `jjg9w_workflow_transitions` VALUES
(1,58,1,1,1,'UNPUBLISH','',-1,1,'{\"publishing\":\"0\"}',NULL,NULL),
(2,59,2,1,1,'PUBLISH','',-1,1,'{\"publishing\":\"1\"}',NULL,NULL),
(3,60,3,1,1,'TRASH','',-1,1,'{\"publishing\":\"-2\"}',NULL,NULL),
(4,61,4,1,1,'ARCHIVE','',-1,1,'{\"publishing\":\"2\"}',NULL,NULL),
(5,62,5,1,1,'FEATURE','',-1,1,'{\"featuring\":\"1\"}',NULL,NULL),
(6,63,6,1,1,'UNFEATURE','',-1,1,'{\"featuring\":\"0\"}',NULL,NULL),
(7,64,7,1,1,'PUBLISH_AND_FEATURE','',-1,1,'{\"publishing\":\"1\",\"featuring\":\"1\"}',NULL,NULL),
(8,112,0,2,1,'Write Article','The content strategist checks any idea which is submitted in category blog. ',2,3,'{\"publishing\":0,\"featuring\":0,\"notification_send_mail\":false}',NULL,NULL),
(9,113,0,2,1,'Graphic Design','The Graphic Designer can now add any illustrations.',3,4,'{\"publishing\":0,\"featuring\":0,\"notification_send_mail\":false}',NULL,NULL),
(10,114,0,2,1,'Check Facts','The article is complete and must be checked by a subject expert.',4,5,'{\"publishing\":0,\"featuring\":0,\"notification_send_mail\":false}',NULL,NULL),
(11,115,0,2,1,'Review Content','The complete article is reviewed.',5,6,'{\"publishing\":0,\"featuring\":0,\"notification_send_mail\":false}',NULL,NULL),
(12,116,0,2,1,'Edit','The article must be reviewed.',6,3,'{\"publishing\":0,\"featuring\":0,\"notification_send_mail\":false}',NULL,NULL),
(13,117,0,2,1,'Publish and Feature','',6,7,'{\"publishing\":1,\"featuring\":1,\"notification_send_mail\":true,\"notification_text\":\"Article published!\",\"notification_groups\":[\"7\"]}',NULL,NULL),
(14,118,0,2,1,'Set on Hold','',-1,8,'{\"publishing\":2,\"featuring\":0,\"notification_send_mail\":false}',NULL,NULL),
(15,119,0,2,1,'Trash','',2,9,'{\"publishing\":-2,\"featuring\":0,\"notification_send_mail\":false}',NULL,NULL),
(16,120,0,2,1,'Resume Idea','An article on hold can be resumed as idea.',8,2,'{\"publishing\":0,\"featuring\":0,\"notification_send_mail\":false}',NULL,NULL),
(17,121,0,2,1,'Unpublish','A published article is unpublished.',7,10,'{\"publishing\":0,\"featuring\":0,\"notification_send_mail\":false}',NULL,NULL),
(18,122,0,2,1,'Trash','Trash a published article.',7,9,'{\"publishing\":0,\"featuring\":0,\"notification_send_mail\":false}',NULL,NULL),
(19,123,0,2,1,'Publish again','Re-activate an unpublished article.',10,7,'{\"publishing\":1,\"featuring\":0,\"notification_send_mail\":true,\"notification_text\":\"Article published!\",\"notification_groups\":[\"7\"]}',NULL,NULL);
/*!40000 ALTER TABLE `jjg9w_workflow_transitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjg9w_workflows`
--

DROP TABLE IF EXISTS `jjg9w_workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjg9w_workflows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) DEFAULT 0,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `extension` varchar(50) NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_asset_id` (`asset_id`),
  KEY `idx_title` (`title`(191)),
  KEY `idx_extension` (`extension`),
  KEY `idx_default` (`default`),
  KEY `idx_created` (`created`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_modified` (`modified`),
  KEY `idx_modified_by` (`modified_by`),
  KEY `idx_checked_out` (`checked_out`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjg9w_workflows`
--

LOCK TABLES `jjg9w_workflows` WRITE;
/*!40000 ALTER TABLE `jjg9w_workflows` DISABLE KEYS */;
INSERT INTO `jjg9w_workflows` VALUES
(1,56,1,'COM_WORKFLOW_BASIC_WORKFLOW','','com_content.article',1,1,'2024-06-27 14:53:29',1000,'2024-06-27 14:53:29',1000,NULL,NULL),
(2,102,1,'Blog Workflow','Blog writing workflow from idea until published and online. Roles: Content Strategist, Copywriter, Graphic Designer, Subject Expert, Content Editor.','com_content.article',0,0,'2024-06-27 15:01:19',1000,'2024-06-27 15:01:19',1000,NULL,NULL);
/*!40000 ALTER TABLE `jjg9w_workflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zzzz`
--

DROP TABLE IF EXISTS `zzzz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zzzz` (
  `idxx` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idxx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zzzz`
--

LOCK TABLES `zzzz` WRITE;
/*!40000 ALTER TABLE `zzzz` DISABLE KEYS */;
/*!40000 ALTER TABLE `zzzz` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2024-06-27 16:37:28
DROP TABLE IF EXISTS `zzzz`;
CREATE TABLE `zzzz` ( `idxx` int(10) unsigned NOT NULL, PRIMARY KEY (`idxx`) ) Engine=INNODB CHARSET=utf8;
