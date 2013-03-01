-- 
-- 表的结构 `wp_commentmeta`
-- 
CREATE TABLE `{prefix_}commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- -- 
-- 表的结构 `wp_comments`
-- 
CREATE TABLE `{prefix_}comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
-- -- 
-- 表的结构 `wp_links`
-- 
CREATE TABLE `{prefix_}links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
-- -- 
-- 表的结构 `wp_options`
-- 
CREATE TABLE `{prefix_}options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8;
-- 
-- 导出表中的数据 `wp_options`
--
INSERT INTO `{prefix_}options` VALUES ('1','siteurl','http://wp3.com','yes');
INSERT INTO `{prefix_}options` VALUES ('2','blogname','我的站点3','yes');
INSERT INTO `{prefix_}options` VALUES ('3','blogdescription','又一个 WordPress 站点','yes');
INSERT INTO `{prefix_}options` VALUES ('4','users_can_register','0','yes');
INSERT INTO `{prefix_}options` VALUES ('5','admin_email','admin@admin.com','yes');
INSERT INTO `{prefix_}options` VALUES ('6','start_of_week','1','yes');
INSERT INTO `{prefix_}options` VALUES ('7','use_balanceTags','0','yes');
INSERT INTO `{prefix_}options` VALUES ('8','use_smilies','1','yes');
INSERT INTO `{prefix_}options` VALUES ('9','require_name_email','1','yes');
INSERT INTO `{prefix_}options` VALUES ('10','comments_notify','1','yes');
INSERT INTO `{prefix_}options` VALUES ('11','posts_per_rss','10','yes');
INSERT INTO `{prefix_}options` VALUES ('12','rss_use_excerpt','0','yes');
INSERT INTO `{prefix_}options` VALUES ('13','mailserver_url','mail.example.com','yes');
INSERT INTO `{prefix_}options` VALUES ('14','mailserver_login','login@example.com','yes');
INSERT INTO `{prefix_}options` VALUES ('15','mailserver_pass','password','yes');
INSERT INTO `{prefix_}options` VALUES ('16','mailserver_port','110','yes');
INSERT INTO `{prefix_}options` VALUES ('17','default_category','1','yes');
INSERT INTO `{prefix_}options` VALUES ('18','default_comment_status','open','yes');
INSERT INTO `{prefix_}options` VALUES ('19','default_ping_status','open','yes');
INSERT INTO `{prefix_}options` VALUES ('20','default_pingback_flag','1','yes');
INSERT INTO `{prefix_}options` VALUES ('21','default_post_edit_rows','20','yes');
INSERT INTO `{prefix_}options` VALUES ('22','posts_per_page','10','yes');
INSERT INTO `{prefix_}options` VALUES ('23','date_format','Y 年 n 月 j 日','yes');
INSERT INTO `{prefix_}options` VALUES ('24','time_format','a g:i','yes');
INSERT INTO `{prefix_}options` VALUES ('25','links_updated_date_format','Y 年 n 月 j 日a g:i','yes');
INSERT INTO `{prefix_}options` VALUES ('26','links_recently_updated_prepend','<em>','yes');
INSERT INTO `{prefix_}options` VALUES ('27','links_recently_updated_append','</em>','yes');
INSERT INTO `{prefix_}options` VALUES ('28','links_recently_updated_time','120','yes');
INSERT INTO `{prefix_}options` VALUES ('29','comment_moderation','0','yes');
INSERT INTO `{prefix_}options` VALUES ('30','moderation_notify','1','yes');
INSERT INTO `{prefix_}options` VALUES ('31','permalink_structure','','yes');
INSERT INTO `{prefix_}options` VALUES ('32','gzipcompression','0','yes');
INSERT INTO `{prefix_}options` VALUES ('33','hack_file','0','yes');
INSERT INTO `{prefix_}options` VALUES ('34','blog_charset','UTF-8','yes');
INSERT INTO `{prefix_}options` VALUES ('35','moderation_keys','','no');
INSERT INTO `{prefix_}options` VALUES ('36','active_plugins','a:3:{i:0;s:29:\"wp-db-backup/wp-db-backup.php\";i:1;s:15:\"ysd-comment.php\";i:2;s:29:\"yunshangdian/yunshangdian.php\";}','yes');
INSERT INTO `{prefix_}options` VALUES ('37','home','http://wp3.com','yes');
INSERT INTO `{prefix_}options` VALUES ('38','category_base','','yes');
INSERT INTO `{prefix_}options` VALUES ('39','ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `{prefix_}options` VALUES ('40','advanced_edit','0','yes');
INSERT INTO `{prefix_}options` VALUES ('41','comment_max_links','2','yes');
INSERT INTO `{prefix_}options` VALUES ('42','gmt_offset','0','yes');
INSERT INTO `{prefix_}options` VALUES ('43','default_email_category','1','yes');
INSERT INTO `{prefix_}options` VALUES ('44','recently_edited','','no');
INSERT INTO `{prefix_}options` VALUES ('45','template','p2','yes');
INSERT INTO `{prefix_}options` VALUES ('46','stylesheet','p2','yes');
INSERT INTO `{prefix_}options` VALUES ('47','comment_whitelist','1','yes');
INSERT INTO `{prefix_}options` VALUES ('48','blacklist_keys','','no');
INSERT INTO `{prefix_}options` VALUES ('49','comment_registration','0','yes');
INSERT INTO `{prefix_}options` VALUES ('50','html_type','text/html','yes');
INSERT INTO `{prefix_}options` VALUES ('51','use_trackback','0','yes');
INSERT INTO `{prefix_}options` VALUES ('52','default_role','subscriber','yes');
INSERT INTO `{prefix_}options` VALUES ('53','db_version','21115','yes');
INSERT INTO `{prefix_}options` VALUES ('54','uploads_use_yearmonth_folders','1','yes');
INSERT INTO `{prefix_}options` VALUES ('55','upload_path','','yes');
INSERT INTO `{prefix_}options` VALUES ('56','blog_public','1','yes');
INSERT INTO `{prefix_}options` VALUES ('57','default_link_category','2','yes');
INSERT INTO `{prefix_}options` VALUES ('58','show_on_front','posts','yes');
INSERT INTO `{prefix_}options` VALUES ('59','tag_base','','yes');
INSERT INTO `{prefix_}options` VALUES ('60','show_avatars','1','yes');
INSERT INTO `{prefix_}options` VALUES ('61','avatar_rating','G','yes');
INSERT INTO `{prefix_}options` VALUES ('62','upload_url_path','','yes');
INSERT INTO `{prefix_}options` VALUES ('63','thumbnail_size_w','150','yes');
INSERT INTO `{prefix_}options` VALUES ('64','thumbnail_size_h','150','yes');
INSERT INTO `{prefix_}options` VALUES ('65','thumbnail_crop','1','yes');
INSERT INTO `{prefix_}options` VALUES ('66','medium_size_w','300','yes');
INSERT INTO `{prefix_}options` VALUES ('67','medium_size_h','300','yes');
INSERT INTO `{prefix_}options` VALUES ('68','avatar_default','mystery','yes');
INSERT INTO `{prefix_}options` VALUES ('69','enable_app','0','yes');
INSERT INTO `{prefix_}options` VALUES ('70','enable_xmlrpc','0','yes');
INSERT INTO `{prefix_}options` VALUES ('71','large_size_w','1024','yes');
INSERT INTO `{prefix_}options` VALUES ('72','large_size_h','1024','yes');
INSERT INTO `{prefix_}options` VALUES ('73','image_default_link_type','file','yes');
INSERT INTO `{prefix_}options` VALUES ('74','image_default_size','','yes');
INSERT INTO `{prefix_}options` VALUES ('75','image_default_align','','yes');
INSERT INTO `{prefix_}options` VALUES ('76','close_comments_for_old_posts','0','yes');
INSERT INTO `{prefix_}options` VALUES ('77','close_comments_days_old','14','yes');
INSERT INTO `{prefix_}options` VALUES ('78','thread_comments','1','yes');
INSERT INTO `{prefix_}options` VALUES ('79','thread_comments_depth','5','yes');
INSERT INTO `{prefix_}options` VALUES ('80','page_comments','0','yes');
INSERT INTO `{prefix_}options` VALUES ('81','comments_per_page','50','yes');
INSERT INTO `{prefix_}options` VALUES ('82','default_comments_page','newest','yes');
INSERT INTO `{prefix_}options` VALUES ('83','comment_order','asc','yes');
INSERT INTO `{prefix_}options` VALUES ('84','sticky_posts','a:0:{}','yes');
INSERT INTO `{prefix_}options` VALUES ('85','widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `{prefix_}options` VALUES ('86','widget_text','a:0:{}','yes');
INSERT INTO `{prefix_}options` VALUES ('87','widget_rss','a:0:{}','yes');
INSERT INTO `{prefix_}options` VALUES ('88','uninstall_plugins','a:0:{}','no');
INSERT INTO `{prefix_}options` VALUES ('89','timezone_string','Asia/Shanghai','yes');
INSERT INTO `{prefix_}options` VALUES ('90','embed_autourls','1','yes');
INSERT INTO `{prefix_}options` VALUES ('91','embed_size_w','','yes');
INSERT INTO `{prefix_}options` VALUES ('92','embed_size_h','600','yes');
INSERT INTO `{prefix_}options` VALUES ('93','page_for_posts','0','yes');
INSERT INTO `{prefix_}options` VALUES ('94','page_on_front','0','yes');
INSERT INTO `{prefix_}options` VALUES ('95','default_post_format','0','yes');
INSERT INTO `{prefix_}options` VALUES ('96','initial_db_version','21115','yes');
INSERT INTO `{prefix_}options` VALUES ('97','wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:9:\"add_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `{prefix_}options` VALUES ('98','widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `{prefix_}options` VALUES ('99','widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `{prefix_}options` VALUES ('100','widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `{prefix_}options` VALUES ('101','widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `{prefix_}options` VALUES ('102','widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `{prefix_}options` VALUES ('103','sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `{prefix_}options` VALUES ('104','cron','a:3:{i:1345527753;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1345527766;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `{prefix_}options` VALUES ('106','_site_transient_update_core','O:8:\"stdClass\":3:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":9:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:49:\"http://cn.wordpress.org/wordpress-3.4.1-zh_CN.zip\";s:6:\"locale\";s:5:\"zh_CN\";s:8:\"packages\";O:8:\"stdClass\":4:{s:4:\"full\";s:49:\"http://cn.wordpress.org/wordpress-3.4.1-zh_CN.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;}s:7:\"current\";s:5:\"3.4.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"3.2\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":9:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:40:\"http://wordpress.org/wordpress-3.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":4:{s:4:\"full\";s:40:\"http://wordpress.org/wordpress-3.4.1.zip\";s:10:\"no_content\";s:51:\"http://wordpress.org/wordpress-3.4.1-no-content.zip\";s:11:\"new_bundled\";s:52:\"http://wordpress.org/wordpress-3.4.1-new-bundled.zip\";s:7:\"partial\";b:0;}s:7:\"current\";s:5:\"3.4.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"3.2\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1345516682;s:15:\"version_checked\";s:5:\"3.4.1\";}','yes');
INSERT INTO `{prefix_}options` VALUES ('111','_site_transient_timeout_browser_da783fcc099482b17eb297eebc5ceb68','1346046168','yes');
INSERT INTO `{prefix_}options` VALUES ('112','_site_transient_browser_da783fcc099482b17eb297eebc5ceb68','a:9:{s:8:\"platform\";s:7:\"Windows\";s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:6:\"14.0.1\";s:10:\"update_url\";s:23:\"http://www.firefox.com/\";s:7:\"img_src\";s:50:\"http://s.wordpress.org/images/browsers/firefox.png\";s:11:\"img_src_ssl\";s:49:\"https://wordpress.org/images/browsers/firefox.png\";s:15:\"current_version\";s:2:\"12\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}','yes');
INSERT INTO `{prefix_}options` VALUES ('113','dashboard_widget_options','a:4:{s:25:\"dashboard_recent_comments\";a:1:{s:5:\"items\";i:5;}s:24:\"dashboard_incoming_links\";a:5:{s:4:\"home\";s:14:\"http://wp3.com\";s:4:\"link\";s:90:\"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://wp3.com/\";s:3:\"url\";s:123:\"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://wp3.com/\";s:5:\"items\";i:10;s:9:\"show_date\";b:0;}s:17:\"dashboard_primary\";a:7:{s:4:\"link\";s:24:\"http://cn.wordpress.org/\";s:3:\"url\";s:29:\"http://cn.wordpress.org/feed/\";s:5:\"title\";s:22:\"WordPress China 博客\";s:5:\"items\";i:2;s:12:\"show_summary\";i:1;s:11:\"show_author\";i:0;s:9:\"show_date\";i:1;}s:19:\"dashboard_secondary\";a:7:{s:4:\"link\";s:28:\"http://planet.wordpress.org/\";s:3:\"url\";s:33:\"http://planet.wordpress.org/feed/\";s:5:\"title\";s:23:\"其它 WordPress 新闻\";s:5:\"items\";i:5;s:12:\"show_summary\";i:0;s:11:\"show_author\";i:0;s:9:\"show_date\";i:0;}}','yes');
INSERT INTO `{prefix_}options` VALUES ('133','_transient_timeout_plugin_slugs','1345603214','no');
INSERT INTO `{prefix_}options` VALUES ('134','_transient_plugin_slugs','a:5:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";i:2;s:29:\"wp-db-backup/wp-db-backup.php\";i:3;s:29:\"yunshangdian/yunshangdian.php\";i:4;s:15:\"ysd-comment.php\";}','no');
INSERT INTO `{prefix_}options` VALUES ('149','recently_activated','a:0:{}','yes');
INSERT INTO `{prefix_}options` VALUES ('150','can_compress_scripts','1','yes');
INSERT INTO `{prefix_}options` VALUES ('151','_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a','1345452237','yes');
INSERT INTO `{prefix_}options` VALUES ('152','_site_transient_poptags_40cd750bba9870f18aada2478b24840a','a:40:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";s:4:\"3211\";}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"Post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";s:4:\"2116\";}s:6:\"plugin\";a:3:{s:4:\"name\";s:6:\"plugin\";s:4:\"slug\";s:6:\"plugin\";s:5:\"count\";s:4:\"1981\";}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";s:4:\"1623\";}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";s:4:\"1562\";}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";s:4:\"1387\";}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";s:4:\"1109\";}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";s:4:\"1090\";}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";s:4:\"1084\";}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";s:4:\"1051\";}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";s:4:\"1006\";}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";s:3:\"923\";}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";s:3:\"845\";}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";s:3:\"792\";}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"Facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";s:3:\"746\";}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";s:3:\"676\";}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";s:3:\"674\";}s:9:\"wordpress\";a:3:{s:4:\"name\";s:9:\"wordpress\";s:4:\"slug\";s:9:\"wordpress\";s:5:\"count\";s:3:\"660\";}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";s:3:\"650\";}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";s:3:\"602\";}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";s:3:\"579\";}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";s:3:\"565\";}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"AJAX\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";s:3:\"547\";}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";s:3:\"547\";}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";s:3:\"479\";}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";s:3:\"471\";}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";s:3:\"471\";}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";s:3:\"457\";}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";s:3:\"456\";}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";s:3:\"453\";}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";s:3:\"437\";}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";s:3:\"419\";}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";s:3:\"413\";}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";s:3:\"402\";}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";s:3:\"390\";}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";s:3:\"388\";}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";s:3:\"388\";}s:5:\"flash\";a:3:{s:4:\"name\";s:5:\"flash\";s:4:\"slug\";s:5:\"flash\";s:5:\"count\";s:3:\"367\";}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";s:3:\"361\";}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";s:3:\"360\";}}','yes');
INSERT INTO `{prefix_}options` VALUES ('154','_site_transient_update_plugins','O:8:\"stdClass\":3:{s:12:\"last_checked\";i:1345516811;s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:5:\"2.5.6\";s:9:\"hello.php\";s:3:\"1.6\";s:29:\"wp-db-backup/wp-db-backup.php\";s:5:\"2.2.3\";s:29:\"yunshangdian/yunshangdian.php\";s:3:\"1.0\";s:15:\"ysd-comment.php\";s:3:\"1.0\";}s:8:\"response\";a:0:{}}','yes');
INSERT INTO `{prefix_}options` VALUES ('156','_site_transient_timeout_theme_roots','1345519995','yes');
INSERT INTO `{prefix_}options` VALUES ('157','_site_transient_theme_roots','a:3:{s:2:\"p2\";s:7:\"/themes\";s:12:\"twentyeleven\";s:7:\"/themes\";s:9:\"twentyten\";s:7:\"/themes\";}','yes');
INSERT INTO `{prefix_}options` VALUES ('158','_transient_timeout_feed_cb4a1b43bf53620e9e1f05442e3557e2','1345559954','no');
INSERT INTO `{prefix_}options` VALUES ('159','_transient_feed_cb4a1b43bf53620e9e1f05442e3557e2','a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:4:\"
  
\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:33:\"
    
    
    
    
    
    
  \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:3:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"link:http://wp3.com/ - Google Blog Search\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"http://www.google.com/search?ie=utf-8&q=link:http://wp3.com/&tbm=blg&tbs=sbd:1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"Your search - <b>link:http://wp3.com/</b> - did not match any documents.  \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://a9.com/-/spec/opensearch/1.1/\";a:3:{s:12:\"totalResults\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:10:\"startIndex\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:12:\"itemsPerPage\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"10\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";a:12:{s:12:\"content-type\";s:28:\"text/xml; charset=ISO-8859-1\";s:4:\"date\";s:29:\"Tue, 21 Aug 2012 02:39:16 GMT\";s:7:\"expires\";s:2:\"-1\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:10:\"set-cookie\";a:2:{i:0;s:143:\"PREF=ID=34963449903c29a7:FF=0:TM=1345516756:LM=1345516756:S=aKw_zXUfhKX46ce-; expires=Thu, 21-Aug-2014 02:39:16 GMT; path=/; domain=.google.com\";i:1;s:212:\"NID=63=nDqJuw5f-kG-sP1jhohGaDvfeQFDRtmuW7-fv3aUIzZECsbALYlBHVXciNPZDAc_RY-TtA-y3SDV-7gFKPVfNORMVj0QrFl-iA2qnUNxccx8iTLi3gcJuqQpPemPHJBD; expires=Wed, 20-Feb-2013 02:39:16 GMT; path=/; domain=.google.com; HttpOnly\";}s:3:\"p3p\";s:122:\"CP=\"This is not a P3P policy! See http://www.google.com/support/accounts/bin/answer.py?hl=en&answer=151657 for more info.\"\";s:6:\"server\";s:3:\"gws\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:7:\"x-cache\";s:19:\"MISS from localhost\";s:14:\"x-cache-lookup\";s:24:\"MISS from localhost:8080\";s:10:\"connection\";s:5:\"close\";}s:5:\"build\";s:14:\"20111015034325\";}','no');
INSERT INTO `{prefix_}options` VALUES ('160','_transient_timeout_feed_mod_cb4a1b43bf53620e9e1f05442e3557e2','1345559954','no');
INSERT INTO `{prefix_}options` VALUES ('161','_transient_feed_mod_cb4a1b43bf53620e9e1f05442e3557e2','1345516754','no');
INSERT INTO `{prefix_}options` VALUES ('162','_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f','1345559954','no');
INSERT INTO `{prefix_}options` VALUES ('163','_transient_dash_20494a3d90a6669585674ed0eb8dcd8f','<p>这个仪表盘小工具会查询 <a href=\"http://blogsearch.google.com/\">Google 博客搜索</a>。当有其它博客链接到您的站点时，它们会显示在这里。目前还未找到引入的的链接，但您不用急。</p>
','no');
INSERT INTO `{prefix_}options` VALUES ('164','_transient_timeout_feed_7d1d7866a17d17cf5f79e1f075b87a31','1345559963','no');
INSERT INTO `{prefix_}options` VALUES ('165','_transient_feed_7d1d7866a17d17cf5f79e1f075b87a31','a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"


\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:50:\"
	
	
	
	
	
	
	
	
	
		
		
		
		
		
		
		
		
		
		
	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"WordPress | China 简体中文\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:23:\"http://cn.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"官方 WordPress China 简体中文站点\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 28 Jun 2012 18:19:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"zh-CN\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"http://wordpress.org/?v=3.5-alpha-21297\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:42:\"
		
		
		
		
		
				

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"WordPress 3.4.1 安全和维护更新\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://cn.wordpress.org/2012/06/29/wordpress-3-4-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"http://cn.wordpress.org/2012/06/29/wordpress-3-4-1/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 28 Jun 2012 16:01:13 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Uncategorized\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"http://cn.wordpress.org/?p=750\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"WordPress 3.4.1 中文版本发布，包含 18 个问题修复。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Jiehan Zheng\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1511:\"<p>WordPress 3.4.1 中文版本现已发布。WordPress 3.4 版本的发布相当顺利，而且下载量十分可观 —— 两周内所有语言版本全球下载总量突破了三百万，中文版本下载量也突破了 50 万，位列本地化版本之首。我们对您的支持深表感谢！</p>
<p>本维护版本修正了 3.4 中存在的 <a href=\"http://core.trac.wordpress.org/query?status=closed&amp;resolution=fixed&amp;milestone=3.4.1&amp;group=resolution&amp;order=severity&amp;desc=1\">18 个问题</a>，包括：</p>
<ul>
<li>修正主题中的页面模版有时不识别的问题。</li>
<li>修复固定链接结构的问题。</li>
<li>修正了插件/主题载入 JavaScript 的问题。</li>
<li>提前支持 iOS 6 上的浏览器文件上传功能。</li>
<li>新代码重新允许插件可以得知自己是被在单站点启用，抑或是被在整个站点网络启用。</li>
<li>修正了在某些 PHP 版本（5.2.4 和 5.4）上、某些特殊 PHP 配置环境下（safe mode 安全模式、open_basedir 限制）不能发送邮件的问题。</li>
</ul>
<p>3.4.1 版本还修复了几个安全问题、增强了安全设计。3.4 中包含的几个漏洞有可能导致信息泄露，以及影响有不可信用户的多站点网络。这些问题是由 WordPress 安全小组发现并修正的。</p>
<p><strong><a href=\"http://cn.wordpress.org/releases/\" target=\"_blank\">由此</a>下载 3.4.1 版本，或通过您的“仪表盘” → “更新”来升级。</strong></p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"http://cn.wordpress.org/2012/06/29/wordpress-3-4-1/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:3:\"100\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:42:\"
		
		
		
		
		
				

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"默认主题翻译丢失的解决办法\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"http://cn.wordpress.org/2012/06/14/restoring-translation-for-default-themes-in-3-4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"http://cn.wordpress.org/2012/06/14/restoring-translation-for-default-themes-in-3-4/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 14 Jun 2012 09:39:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Local Fixes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"http://cn.wordpress.org/?p=733\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:138:\"解决升级后默认主题翻译丢失，显示英文的办法。该问题只影响使用 Twenty Eleven 和 Twenty Ten 主题的用户。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Jiehan Zheng\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1406:\"<p><strong>该问题只影响使用 Twenty Eleven 和 Twenty Ten 主题的用户。</strong></p>
<p>用户在使用自动升级的方法升级 3.4 中文版本之后，默认主题没有一并被更新，因此在单独更新默认主题之后，默认主题的 zh_CN.mo 文件会被删除。要解决这个问题，暂时需要麻烦您手工操作。您可以选择 SSH 或 FTP 等方式来进行操作。</p>
<p>请按照您使用的主题来选择对应的方法。</p>
<h3>Twenty Eleven</h3>
<ol>
<li>下载 <a href=\"http://i18n.svn.wordpress.org/zh_CN/tags/3.4/messages/twentyeleven/zh_CN.mo\" target=\"_blank\">3.4 版本对应的 Twenty Eleven zh_CN.mo</a>。</li>
<li>拷贝/上传 zh_CN.mo 至您的 WordPress 安装目录的：<code>/wp-content/themes/twentyeleven/languages/</code>。</li>
<li>刷新您的站点，即可看到中文界面。</li>
</ol>
<p><strong>&#8211; 或 &#8211;</strong></p>
<h3>Twenty Ten</h3>
<ol>
<li>下载 <a href=\"http://i18n.svn.wordpress.org/zh_CN/tags/3.4/messages/twentyten/zh_CN.mo\" target=\"_blank\">3.4 版本对应的 Twenty Ten zh_CN.mo</a>。</li>
<li>拷贝/上传 zh_CN.mo 至您的 WordPress 安装目录的：<code>/wp-content/themes/twentyten/languages/</code>。</li>
<li>刷新您的站点，即可看到中文界面。</li>
</ol>
<p>我们对该问题给您带来的不便深表歉意。我们会继续研究该问题以及今后的解决方案。</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"http://cn.wordpress.org/2012/06/14/restoring-translation-for-default-themes-in-3-4/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"42\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:42:\"
		
		
		
		
		
				

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"WordPress 3.4 “Green”\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"http://cn.wordpress.org/2012/06/14/green/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"http://cn.wordpress.org/2012/06/14/green/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 14 Jun 2012 07:53:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"http://cn.wordpress.org/?p=718\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"WordPress 3.4 “Green”中文版本发布。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Jiehan Zheng\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:15627:\"<p>WordPress 3.4 简体中文版现已发布。为了向伟大的吉它手 Grant Green 表示敬意，我们给这个版本命名为“Green”。他凡事追求简洁的精神陪伴着我们完成 3.4 版本的开发。</p>
<p>本版本包含对主题自定义功能的优化：自定义顶部、Twitter 内容嵌入，以及图像“说明”栏目。下面的视频短片（英文）向您介绍本版本的其它一些亮点：</p>
<div id=\"v-Gg0EFixV\" class=\"video-player\"><embed id=\"v-Gg0EFixV-video\" src=\"http://s0.videopress.com/player.swf?v=1.03&amp;guid=Gg0EFixV&amp;isDynamicSeeking=true\" type=\"application/x-shockwave-flash\" width=\"692\" height=\"388\" title=\"Introducing WordPress 3.4 &quot;Green&quot;\" wmode=\"direct\" seamlesstabbing=\"true\" allowfullscreen=\"true\" allowscriptaccess=\"always\" overstretch=\"true\"></embed></div>
<p>如果上面视频不能正常播放，请检查您的网络连接。</p>
<h3>面向用户的改进</h3>
<p>3.4 版本最明显的改进就是<strong>实时主题预览</strong>功能了。实时主题预览功能让您可以“试穿”新的主题。对于支持这个功能的主题，您可以更改颜色、背景和顶部图像，并实时预览站点前台效果。</p>
<p>后台其它部分我们也做出了很多小修改，比如我们取消了主题列表的分页功能，让您一次可以看到已安装的所有主题；自定义顶部图像功能可以直接使用媒体库中的图像；自定义顶部图像功能允许您自定义其长、宽等等。</p>
<p>我们为您写文章带来了便利：在写文章时只需另起一段，写上 Twitter 的 tweet 链接，WordPress 就会自动嵌入 tweet 到您的文章中。中文版本方面，我们重写了程序，使用了标准的嵌入 API，同时增强了对土豆网、优酷网和 56.com 视频嵌入的 URL 格式支持，并更新了各个网站最新提供的 HTML 嵌入代码（计划下个版本会支持更多中国网站）。而且，文章中插图的“说明”一栏可以使用简单的 HTML 标签了。</p>
<h3>面向开发者的改进</h3>
<p>3.4 包含了上百个底层修改，特别是 XML-RPC、主题、自定义顶部 API，以及 WP_Query 和翻译系统的大幅性能优化。<a title=\"Codex 官方中文文档的《3.4 版本》一文\" href=\"http://codex.wordpress.org/zh-cn:3.4_%E7%89%88%E6%9C%AC\" target=\"_blank\">这篇 Codex 中文文档文章</a>简要介绍了我们做出的修改，或者您可以<a href=\"http://core.trac.wordpress.org/milestone/3.4\">直接在 Trac 中查看代码的修改</a>。</p>
<p>我们还为开发者写了一篇简短的文章介绍我们的改进，点击阅读<a href=\"http://wpdevel.wordpress.com/2012/06/07/wordpress-3-4-field-guide-for-developers/\">《WordPress 3.4 Field Guide for Developers》</a>（英文）。</p>
<h3>众人拾柴火焰高</h3>
<p>如下人员积极参与了 3.4 版本的开发，特此颁发好人卡：</p>
<p><a href=\"http://profiles.wordpress.org/082net\">082net</a>、<a href=\"http://profiles.wordpress.org/aaroncampbell\">Aaron D. Campbell</a>、<a href=\"http://profiles.wordpress.org/kawauso\">Adam Harley</a>、<a href=\"http://profiles.wordpress.org/ajacommerce\">AJ Acevedo</a>、<a href=\"http://profiles.wordpress.org/akshayagarwal\">akshayagarwal</a>、<a href=\"http://profiles.wordpress.org/xknown\">Alex Concha</a>、<a href=\"http://profiles.wordpress.org/alexkingorg\">Alex King</a>、<a href=\"http://profiles.wordpress.org/viper007bond\">Alex Mills (Viper007Bond)</a>、<a href=\"http://profiles.wordpress.org/ampt\">ampt</a>、<a href=\"http://profiles.wordpress.org/sabreuse\">Amy Hendrix</a>、<a href=\"http://profiles.wordpress.org/andrea_r\">Andrea Rennick</a>、<a href=\"http://profiles.wordpress.org/nacin\">Andrew Nacin</a>、<a href=\"http://profiles.wordpress.org/azaozz\">Andrew Ozz</a>、<a href=\"http://profiles.wordpress.org/andrewryno\">Andrew Ryno</a>、<a href=\"http://profiles.wordpress.org/andy\">Andy Skelton</a>、<a href=\"http://profiles.wordpress.org/arieputranto\">Arie Putranto</a>、<a href=\"http://profiles.wordpress.org/filosofo\">Austin Matzko</a>、<a href=\"http://profiles.wordpress.org/barry\">Barry</a>、<a href=\"http://profiles.wordpress.org/benchapman\">BenChapman</a>、<a href=\"http://profiles.wordpress.org/husobj\">Ben Huson</a>、<a href=\"http://profiles.wordpress.org/benbalter\">Benjamin J. Balter</a>、<a href=\"http://profiles.wordpress.org/billerickson\">Bill Erickson</a>、<a href=\"http://profiles.wordpress.org/bananastalktome\">Billy (bananastalktome)</a>、<a href=\"http://profiles.wordpress.org/boonebgorges\">Boone Gorges</a>、<a href=\"http://profiles.wordpress.org/camiloclc\">camiloclc</a>、<a href=\"http://profiles.wordpress.org/casben79\">casben79</a>、<a href=\"http://profiles.wordpress.org/caspie\">Caspie</a>、<a href=\"http://profiles.wordpress.org/ceefour\">ceefour</a>、<a href=\"http://profiles.wordpress.org/cheald\">cheald</a>、<a href=\"http://profiles.wordpress.org/chellycat\">chellycat</a>、<a href=\"http://profiles.wordpress.org/chexee\">Chelsea Otakan</a>、<a href=\"http://profiles.wordpress.org/chipbennett\">Chip Bennett</a>、<a href=\"http://profiles.wordpress.org/c3mdigital\">Chris Olbekson</a>、<a href=\"http://profiles.wordpress.org/coenjacobs\">Coen Jacobs</a>、<a href=\"http://profiles.wordpress.org/scribu\">Cristi Burcă</a>、<a href=\"http://profiles.wordpress.org/cyapow\">Cyapow</a>、<a href=\"http://profiles.wordpress.org/djcp\">Dan Collis-Puro</a>、<a href=\"http://profiles.wordpress.org/danielbachhuber\">Daniel Bachhuber</a>、<a href=\"http://profiles.wordpress.org/convissor\">Daniel Convissor</a>、<a href=\"http://profiles.wordpress.org/redsweater\">Daniel Jalkut (Red Sweater)</a>、<a href=\"http://profiles.wordpress.org/daniloercoli\">daniloercoli</a>、<a href=\"http://profiles.wordpress.org/koopersmith\">Daryl Koopersmith</a>、<a href=\"http://profiles.wordpress.org/dgwyer\">David Gwyer</a>、<a href=\"http://profiles.wordpress.org/deltafactory\">deltafactory</a>、<a href=\"http://profiles.wordpress.org/demetris\">demetris</a>、<a href=\"http://profiles.wordpress.org/dd32\">Dion Hulse</a>、<a href=\"http://profiles.wordpress.org/dllh\">dllh</a>、<a href=\"http://profiles.wordpress.org/ocean90\">Dominik Schilling</a>、<a href=\"http://profiles.wordpress.org/dougwrites\">Doug Provencio</a>、<a href=\"http://profiles.wordpress.org/drewapicture\">Drew Jaynes (DrewAPicture)</a>、<a href=\"http://profiles.wordpress.org/ebababi\">ebababi</a>、<a href=\"http://profiles.wordpress.org/edward-mindreantre\">edward-mindreantre</a>、<a href=\"http://profiles.wordpress.org/emhr\">emhr</a>、<a href=\"http://profiles.wordpress.org/empireoflight\">Empireoflight</a>、<a href=\"http://profiles.wordpress.org/ericlewis\">Eric Andrew Lewis</a>、<a href=\"http://profiles.wordpress.org/ericmann\">Eric Mann</a>、<a href=\"http://profiles.wordpress.org/ejdanderson\">Evan Anderson</a>、<a href=\"http://profiles.wordpress.org/evansolomon\">Evan Solomon</a>、<a href=\"http://profiles.wordpress.org/fredwu\">Fred Wu</a>、<a href=\"http://profiles.wordpress.org/ounziw\">Fumito Mizuno</a>、<a href=\"http://profiles.wordpress.org/garyc40\">Gary Cao</a>、<a href=\"http://profiles.wordpress.org/garyj\">Gary Jones</a>、<a href=\"http://profiles.wordpress.org/gautamgupta\">Gautam</a>、<a href=\"http://profiles.wordpress.org/soulseekah\">Gennady Kovshenin</a>、<a href=\"http://profiles.wordpress.org/mamaduka\">George Mamadashvili</a>、<a href=\"http://profiles.wordpress.org/georgestephanis\">George Stephanis</a>、<a href=\"http://profiles.wordpress.org/webord\">Gustavo Bordoni</a>、<a href=\"http://profiles.wordpress.org/hearvox\">hearvox</a>、<a href=\"http://profiles.wordpress.org/helenyhou\">Helen Hou-Sandi</a>、<a href=\"http://profiles.wordpress.org/hugobaeta\">Hugo Baeta</a>、<a href=\"http://profiles.wordpress.org/iandstewart\">Ian Stewart</a>、<a href=\"http://profiles.wordpress.org/insertvisionhere\">insertvisionhere</a>、<a href=\"http://profiles.wordpress.org/ipstenu\">Ipstenu</a>、<a href=\"http://profiles.wordpress.org/master-jake\">Jacob Chappell</a>、<a href=\"http://profiles.wordpress.org/jane\">Jane Wells</a>、<a href=\"http://profiles.wordpress.org/japh\">Japh</a>、<a href=\"http://profiles.wordpress.org/jaquers\">jaquers</a>、<a href=\"http://profiles.wordpress.org/jarretc\">JarretC</a>、<a href=\"http://profiles.wordpress.org/jeremyclarke\">jeremyclarke</a>、<a href=\"http://profiles.wordpress.org/jeremyfelt\">Jeremy Felt</a>、<a href=\"http://profiles.wordpress.org/jayjdk\">Jesper Johansen (Jayjdk)</a>、<a href=\"http://profiles.wordpress.org/jiehanzheng\">Jiehan Zheng</a>、<a href=\"http://profiles.wordpress.org/intoxstudio\">Joachim Jensen (Intox Studio)</a>、<a href=\"http://profiles.wordpress.org/jkudish\">Joachim Kudish (jkudish)</a>、<a href=\"http://profiles.wordpress.org/johnbillion\">John Blackbourn (johnbillion)</a>、<a href=\"http://profiles.wordpress.org/aldenta\">John Ford</a>、<a href=\"http://profiles.wordpress.org/johnjamesjacoby\">John James Jacoby</a>、<a href=\"http://profiles.wordpress.org/duck_\">Jon Cave</a>、<a href=\"http://profiles.wordpress.org/joostdevalk\">Joost de Valk</a>、<a href=\"http://profiles.wordpress.org/koke\">Jorge Bernal</a>、<a href=\"http://profiles.wordpress.org/josephscott\">Joseph Scott</a>、<a href=\"http://profiles.wordpress.org/devesine\">Justin</a>、<a href=\"http://profiles.wordpress.org/justindgivens\">Justin Givens</a>、<a href=\"http://profiles.wordpress.org/trepmal\">Kailey Lampert (trepmal)</a>、<a href=\"http://profiles.wordpress.org/kenan3008\">Kenan Dervisevic</a>、<a href=\"http://profiles.wordpress.org/kovshenin\">Konstantin Kovshenin</a>、<a href=\"http://profiles.wordpress.org/kobenland\">Konstantin Obenland</a>、<a href=\"http://profiles.wordpress.org/klagraff\">Kristopher Lagraff</a>、<a href=\"http://profiles.wordpress.org/kurtpayne\">Kurt Payne</a>、<a href=\"http://profiles.wordpress.org/lancewillett\">Lance Willett</a>、<a href=\"http://profiles.wordpress.org/lardjo\">Lardjo</a>、<a href=\"http://profiles.wordpress.org/leewillis77\">Lee Willis (leewillis77)</a>、<a href=\"http://profiles.wordpress.org/linuxologos\">linuxologos</a>、<a href=\"http://profiles.wordpress.org/latz\">Lutz Schroer</a>、<a href=\"http://profiles.wordpress.org/settle\">Mantas Malcius</a>、<a href=\"http://profiles.wordpress.org/netweblogic\">Marcus</a>、<a href=\"http://profiles.wordpress.org/markjaquith\">Mark Jaquith</a>、<a href=\"http://profiles.wordpress.org/markoheijnen\">Marko Heijnen</a>、<a href=\"http://profiles.wordpress.org/markauk\">Mark Rowatt Anderson</a>、<a href=\"http://profiles.wordpress.org/matveb\">Matias Ventura</a>、<a href=\"http://profiles.wordpress.org/sivel\">Matt Martz</a>、<a href=\"http://profiles.wordpress.org/mattonomics\">mattonomics</a>、<a href=\"http://profiles.wordpress.org/iammattthomas\">Matt Thomas</a>、<a href=\"http://profiles.wordpress.org/mattwiebe\">Matt Wiebe</a>、<a href=\"http://profiles.wordpress.org/mattyrob\">MattyRob</a>、<a href=\"http://profiles.wordpress.org/maxcutler\">Max Cutler</a>、<a href=\"http://profiles.wordpress.org/merty\">Mert Yazicioglu</a>、<a href=\"http://profiles.wordpress.org/mgolawala\">mgolawala</a>、<a href=\"http://profiles.wordpress.org/mdawaffe\">Michael Adams (mdawaffe)</a>、<a href=\"http://profiles.wordpress.org/tw2113\">Michael Beckwith</a>、<a href=\"http://profiles.wordpress.org/mfields\">Michael Fields</a>、<a href=\"http://profiles.wordpress.org/mikeschinkel\">Mike Schinkel</a>、<a href=\"http://profiles.wordpress.org/dh-shredder\">Mike Schroder</a>、<a href=\"http://profiles.wordpress.org/toppa\">Mike Toppa</a>、<a href=\"http://profiles.wordpress.org/dimadin\">Milan Dinic</a>、<a href=\"http://profiles.wordpress.org/mitchoyoshitaka\">mitcho (Michael Yoshitaka Erlewine)</a>、<a href=\"http://profiles.wordpress.org/batmoo\">Mohammad Jangda</a>、<a href=\"http://profiles.wordpress.org/mrtorrent\">mrtorrent</a>、<a href=\"http://profiles.wordpress.org/namely\">Name.ly</a>、<a href=\"http://profiles.wordpress.org/Nao\">Naoko McCracken</a>、<a href=\"http://profiles.wordpress.org/alex-ye\">Nashwan Doaqan</a>、<a href=\"http://profiles.wordpress.org/niallkennedy\">Niall Kennedy</a>、<a href=\"http://profiles.wordpress.org/nikolayyordanov\">Nikolay Yordanov</a>、<a href=\"http://profiles.wordpress.org/norocketsurgeon\">norocketsurgeon</a>、<a href=\"http://profiles.wordpress.org/npetetin\">npetetin</a>、<a href=\"http://profiles.wordpress.org/nunomorgadinho\">Nuno Morgadinho</a>、<a href=\"http://profiles.wordpress.org/ocollet\">Olivier Collet</a>、<a href=\"http://profiles.wordpress.org/pbiron\">Paul Biron</a>、<a href=\"http://profiles.wordpress.org/pavelevap\">pavelevap</a>、<a href=\"http://profiles.wordpress.org/petemall\">Pete Mall</a>、<a href=\"http://profiles.wordpress.org/westi\">Peter Westwood</a>、<a href=\"http://profiles.wordpress.org/pishmishy\">pishmishy</a>、<a href=\"http://profiles.wordpress.org/nprasath002\">Prasath Nadarajah</a>、<a href=\"http://profiles.wordpress.org/prettyboymp\">prettyboymp</a>、<a href=\"http://profiles.wordpress.org/ptahdunbar\">Ptah Dunbar</a>、<a href=\"http://profiles.wordpress.org/pw201\">pw201</a>、<a href=\"http://profiles.wordpress.org/ramiy\">Rami Yushuvaev</a>、<a href=\"http://profiles.wordpress.org/rarst\">Rarst</a>、<a href=\"http://profiles.wordpress.org/arena\">RENAUT</a>、<a href=\"http://profiles.wordpress.org/greuben\">Reuben Gunday</a>、<a href=\"http://profiles.wordpress.org/roscius\">Roscius</a>、<a href=\"http://profiles.wordpress.org/rosshanney\">Ross Hanney</a>、<a href=\"http://profiles.wordpress.org/russellwwest\">russellwwest</a>、<a href=\"http://profiles.wordpress.org/ryan\">Ryan Boren</a>、<a href=\"http://profiles.wordpress.org/ryanduff\">Ryan Duff</a>、<a href=\"http://profiles.wordpress.org/rmccue\">Ryan McCue</a>、<a href=\"http://profiles.wordpress.org/zeo\">Safirul Alredha</a>、<a href=\"http://profiles.wordpress.org/solarissmoke\">Samir Shah</a>、<a href=\"http://profiles.wordpress.org/otto42\">Samuel “Otto” Wood</a>、<a href=\"http://profiles.wordpress.org/tenpura\">Seisuke Kuraishi</a>、<a href=\"http://profiles.wordpress.org/sergeybiryukov\">Sergey Biryukov</a>、<a href=\"http://profiles.wordpress.org/simonwheatley\">Simon Wheatley</a>、<a href=\"http://profiles.wordpress.org/sirzooro\">sirzooro</a>、<a href=\"http://profiles.wordpress.org/sksmatt\">sksmatt</a>、<a href=\"http://profiles.wordpress.org/sushkov\">Stas Sușkov</a>、<a href=\"http://profiles.wordpress.org/stephdau\">Stephane Daury (stephdau)</a>、<a href=\"http://profiles.wordpress.org/tamlyn\">tamlyn</a>、<a href=\"http://profiles.wordpress.org/griffinjt\">Thomas Griffin</a>、<a href=\"http://profiles.wordpress.org/tott\">Thorsten Ott</a>、<a href=\"http://profiles.wordpress.org/tobiasbg\">TobiasBg</a>、<a href=\"http://profiles.wordpress.org/tomauger\">Tom Auger</a>、<a href=\"http://profiles.wordpress.org/skithund\">Toni Viemero</a>、<a href=\"http://profiles.wordpress.org/transom\">transom</a>、<a href=\"http://profiles.wordpress.org/sorich87\">Ulrich Sossou</a>、<a href=\"http://profiles.wordpress.org/utkarsh\">Utkarsh Kukreti</a>、<a href=\"http://profiles.wordpress.org/wojtekszkutnik\">Wojtek Szkutnik</a>、<a href=\"http://profiles.wordpress.org/wonderslug\">wonderslug</a>、<a href=\"http://profiles.wordpress.org/xibe\">Xavier Borderie</a>、<a href=\"http://profiles.wordpress.org/yoavf\">Yoav Farhi</a>、<a href=\"http://profiles.wordpress.org/thezman84\">Zach “The Z Man” Abernathy</a>、<a href=\"http://profiles.wordpress.org/tollmanz\">Zack Tollman</a>、<a href=\"http://profiles.wordpress.org/vanillalounge\">Ze Fontainhas</a>，和 <a href=\"http://profiles.wordpress.org/zx2c4\">zx2c4</a>。</p>
<p>好吧，回头见。</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"http://cn.wordpress.org/2012/06/14/green/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"78\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:45:\"
		
		
		
		
		
				
		

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"WordPress 3.4 第二候选发行版本和中文补丁的变更\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"http://cn.wordpress.org/2012/06/07/wordpress-3-4-release-candidate-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"http://cn.wordpress.org/2012/06/07/wordpress-3-4-release-candidate-2/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 07 Jun 2012 03:46:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:13:\"Local Updates\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"Testing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"http://cn.wordpress.org/?p=700\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:128:\"WordPress 3.4 第二候选发行版本（RC2）中文版本发布。中文补丁在本版本做出了极大简化和规范化。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Jiehan Zheng\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2640:\"<p>WordPress 3.4 的第二候选发行版本现已发布，这也是 WordPress China 正式发布的第一个 3.4 系列的中文测试版本。自从第一候选发行版本，WordPress 核心又有了<a href=\"http://core.trac.wordpress.org/log/?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=21018&amp;stop_rev=20949&amp;limit=500\">数十个修改</a>。</p>
<p>WordPress 3.4 核心版本的发布日期初步定在下周初，中文版本可能在核心版本发布 24 小时之内发布。因此，插件和主题的作者们，<strong>第二候选发行版本是正式版发布之前最后一个测试兼容性的机会了</strong>。<a href=\"http://wpdevel.wordpress.com/2012/06/07/wordpress-3-4-field-guide-for-developers/\">开发博客</a>上有些文章可能对您有帮助。</p>
<p>中文版本在本地化补丁上做出了较大简化和更改。出于 WP Polyglots 组对 zh_CN.php 的简化要求，我们去掉了中文本地化设置页面，所有本地化优化功能全部开启，给您带来更清新的 WordPress 体验。而且据我们的了解，大多数用户在 3.4 版本之前一直开启“后台样式优化”、“视频网站嵌入”和“字数统计”功能，这个变化应该不会给您带来过大的影响。如果您需要关闭内容自动嵌入功能，请使用全局开关（“设置” → “媒体” → “自动嵌入”）。</p>
<p>媒体嵌入方面，我们听取了<a href=\"http://shamiao.com/wordpress/wpcomment/wpcn-oembed-objection.htm\" target=\"_blank\">热心用户“沙渺”中肯的建议</a>，使用了核心提供的内建接口来实现优酷、56 和土豆网的视频嵌入功能。同时，如果特别您需要其它视频网站的支持，请您在此处留言。如果技术上十分可行，我们会尽快添加。</p>
<p>中文测试版本的 .zip 和 .tar.gz 包可以<a href=\"http://cn.wordpress.org/releases/#beta\">在这里下载</a>。别忘了更新后到您的站点的 <strong><img src=\"http://wordpress.org/wp-content/themes/twentyten/images/wordpress.png\" alt=\"\" /> → “关于”</strong>页面看看具体的改进哦！</p>
<hr />
<p>If you think you’ve found a bug, you can post to the <a href=\"http://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a> in the support forums. Or, if you’re comfortable writing a reproducible bug report, <a href=\"http://core.trac.wordpress.org/\">file one on WordPress Trac</a>. Known issues that crop up will be listed <a href=\"http://core.trac.wordpress.org/report/6\">here</a>, but we’re hoping for a quiet few days so we can get some great features into your hands next week!</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"http://cn.wordpress.org/2012/06/07/wordpress-3-4-release-candidate-2/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"55\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:45:\"
		
		
		
		
		
				
		

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordPress 3.3.2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://cn.wordpress.org/2012/04/21/wordpress-3-3-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"http://cn.wordpress.org/2012/04/21/wordpress-3-3-2/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 20 Apr 2012 19:51:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"http://cn.wordpress.org/?p=675\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"WordPress 3.3.2 中文版本。该版本是一个安全更新。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Jiehan Zheng\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1836:\"<p>WordPress 3.3.2 现已推出。这是对以往版本的安全更新。</p>
<p>如下 WordPress 包含的外部库推出了安全更新：</p>
<ul>
<li>Plupload（1.5.4 版本） &#8212; WordPress 用它来完成媒体文件的上传。</li>
<li>SWFUpload &#8212; WordPress 原先使用的库，用于上传媒体文件，一些插件可能仍在使用它。</li>
<li>SWFObject &#8212; WordPress 原先用来嵌入 Flash 内容的库，一些插件和主题可能仍在使用它。</li>
</ul>
<p>感谢 <a href=\"https://nealpoole.com/blog/\">Neal Poole</a> 和 <a href=\"http://greywhind.wordpress.com/\">Nathan Partlan</a> 向我们安全小组的<a href=\"http://codex.wordpress.org/FAQ_Security\">反馈</a>关于 Plupload 和 SWFUpload 的问题。感谢 <a href=\"http://mars.iti.pk.edu.pl/~grucha/\">Szymon Gruszecki</a> 找出了另一个 SWFUpload 问题。</p>
<p>WordPress 3.3.2 一并修补了如下问题：</p>
<ul>
<li>在 WordPress “站点网络”功能启用的环境下，站点管理员有可能在整个站点网络范围停用某个插件。多谢安全小组 <a href=\"http://joncave.co.uk/\">Jon Cave</a> 和 <a href=\"http://sixohthree.com/\">Adam Backstrom</a>。</li>
<li>URL 自动链接的算法可能允许跨站脚本攻击。这个问题是 Jon Cave 找到的。</li>
<li>过滤 URL 的算法可能允许跨站脚本攻击。感谢 <a href=\"http://www.sneaked.net/\">Mauro Gentile</a> 向安全小组的热心反馈。</li>
</ul>
<p>上述问题是 WordPress 安全小组修复的。本版本另修复了 5 个非安全问题。详情请参见<a href=\"http://core.trac.wordpress.org/log/branches/3.3?rev=20552&amp;stop_rev=20087\">修订日志</a>。</p>
<p>请<a href=\"http://cn.wordpress.org/releases/\">下载 WordPress 3.3.2</a>，或从您站点的“仪表盘” → “更新”菜单升级。</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"http://cn.wordpress.org/2012/04/21/wordpress-3-3-2/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:3:\"126\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:45:\"
		
		
		
		
		
				
		

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"WordPress 3.3.1 安全和维护更新\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://cn.wordpress.org/2012/01/04/wordpress-3-3-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"http://cn.wordpress.org/2012/01/04/wordpress-3-3-1/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 03 Jan 2012 22:40:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"http://cn.wordpress.org/?p=644\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"WordPress 3.3.1 中文版本。该版本是一个安全和维护更新。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Jiehan Zheng\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:536:\"<p>WordPress 3.3.1 现已发布。本维护版本修复了 3.3 版本的 <a href=\"http://core.trac.wordpress.org/query?status=closed&amp;resolution=fixed&amp;milestone=3.3.1&amp;group=resolution&amp;order=priority\" target=\"_blank\">15 处问题</a>，另外还有一个影响了 3.3 的跨站脚本攻击漏洞。感谢 Joshua H.、Hoang T.、Stefan Zimmerman、Chris K. 和 Go Daddy 安全小组向我们的安全团队上报该问题。</p>
<p>下载 3.3.1，或通过您站点后台的“仪表盘” → “更新”来升级。</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"http://cn.wordpress.org/2012/01/04/wordpress-3-3-1/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:3:\"172\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:42:\"
		
		
		
		
		
				

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"WordPress 3.3 “Sonny”\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"http://cn.wordpress.org/2011/12/13/sonny/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"http://cn.wordpress.org/2011/12/13/sonny/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 13 Dec 2011 00:31:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"http://cn.wordpress.org/?p=618\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"WordPress 3.3 中文版本发布。更新重点：用户体验和中文字数统计。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Jiehan Zheng\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:15645:\"<p>最新最棒的 WordPress 版本 —— 3.3 版本现已推出！本版本代号“Sonny”，献给伟大的爵士萨克斯手 Sonny Stitt 先生。您现在就可以在控制板升级啦！哦对了，差点忘了告诉您，从这个版本开始，中文版本将更强大的控制板（dashboard）改称为“仪表盘”了。</p>
<p>自 3.0 版本以来，WordPress 已经有了<ins datetime=\"2011-12-13T15:47:27+00:00\">六千五百余万</ins>次下载了。作为第三次对 3 系列的修订，本版本主要显著提升了您的使用体验：导航菜单、上传机制，以及导入以往备份等等。</p>
<h3>面向用户</h3>
<p>有经验的用户一定会喜欢全新的“拖放上传工具”、鼠标悬浮式导航菜单、一体化工具栏、增强的合作编辑体验、以及 Tumblr 导入工具。我们也关注新用户的体验。3.3 版本新增了“气泡提示”功能，在每次更新后，在功能上大幅度的改动会主动弹出提醒用户。同时，使用 3.3 版本新安装 WordPress 的用户会看到一个非常友好的消息框，提示如何开始使用 WordPress。每个页面上的“帮助”选项卡也有显著改进，实用性得到极大提升。站点的“仪表盘”也更加兼容 iPad 和其它平板电脑了。</p>
<p>中文版本方面本次新加入了中文字数统计功能，在您写文章时会自动统计中文字数和英文词数之和。</p>
<h3>面向开发者</h3>
<p>开发者应该会喜欢新的<a title=\"文档页面\" href=\"http://codex.wordpress.org/Function_Reference/wp_editor\" target=\"_blank\">编辑器 API</a>、最新的 jQuery 版本、更易用的帮助钩子，和更高的固定的链接性能。更多改进，请参见 <a href=\"http://codex.wordpress.org/Version_3.3\">Codex 文档</a>（英文，正在翻译）和 <a href=\"http://core.trac.wordpress.org/milestone/3.3\">Trac</a>（英文）。</p>
<h3>贡献</h3>
<p>在您的 WordPress 仪表盘的“关于 WordPress”一页列出了所有为 WordPress 做出贡献的人们，但是我们还是想在此再次表示感谢：</p>
<p><a href=\"http://profiles.wordpress.org/users/aaroncampbell\">Aaron D. Campbell</a>、<a href=\"http://profiles.wordpress.org/users/jorbin\">Aaron Jorbin</a>、<a href=\"http://profiles.wordpress.org/users/adambackstrom\">Adam Backstrom</a>、<a href=\"http://profiles.wordpress.org/users/kawauso\">Adam Harley</a>、<a href=\"http://profiles.wordpress.org/users/xknown\">Alex Concha</a>、<a href=\"http://profiles.wordpress.org/users/alexkingorg\">Alex King</a>、<a href=\"http://profiles.wordpress.org/users/viper007bond\">Alex Mills (Viper007Bond)</a>、<a href=\"http://profiles.wordpress.org/users/amereservant\">amereservant</a>、<a href=\"http://profiles.wordpress.org/users/ampt\">ampt</a>、<a href=\"http://profiles.wordpress.org/users/lordandrei\">Andrei Freeman</a>、<a href=\"http://profiles.wordpress.org/users/arena\">Andre Renaut</a>、<a href=\"http://profiles.wordpress.org/users/andrewfrazier\">andrewfrazier</a>、<a href=\"http://profiles.wordpress.org/users/nacin\">Andrew Nacin</a>、<a href=\"http://profiles.wordpress.org/users/azaozz\">Andrew Ozz</a>、<a href=\"http://profiles.wordpress.org/users/andrewryno\">Andrew Ryno</a>、<a href=\"http://profiles.wordpress.org/users/andy\">Andy Skelton</a>、<a href=\"http://profiles.wordpress.org/users/lumination\">Anthony Atkinson</a>、<a href=\"http://profiles.wordpress.org/users/filosofo\">Austin Matzko</a>、<a href=\"http://profiles.wordpress.org/users/simek\">Bartosz Kaszubowski</a>、<a href=\"http://profiles.wordpress.org/users/benbalter\">Benjamin J. Balter</a>、<a href=\"http://profiles.wordpress.org/users/brandondove\">Brandon Dove</a>、<a href=\"http://profiles.wordpress.org/users/carlospaulino\">carlospaulino</a>、<a href=\"http://profiles.wordpress.org/users/caspie\">Caspie</a>、<a href=\"http://profiles.wordpress.org/users/cebradesign\">cebradesign</a>、<a href=\"http://profiles.wordpress.org/users/chexee\">Chelsea Otakan</a>、<a href=\"http://profiles.wordpress.org/users/chipbennett\">Chip Bennett</a>、<a href=\"http://profiles.wordpress.org/users/chrisbliss18\">Chris Jean</a>、<a href=\"http://profiles.wordpress.org/users/coenjacobs\">Coen Jacobs</a>、<a href=\"http://profiles.wordpress.org/users/cgrymala\">Curtiss Grymala</a>、<a href=\"http://profiles.wordpress.org/users/danielbachhuber\">Daniel Bachhuber</a>、<a href=\"http://profiles.wordpress.org/users/koopersmith\">Daryl Koopersmith</a>、<a href=\"http://profiles.wordpress.org/users/dllh\">Daryl L. L. Houston</a>、<a href=\"http://profiles.wordpress.org/users/davecpage\">David</a>、<a href=\"http://profiles.wordpress.org/users/dcowgill\">David Cowgill</a>、<a href=\"http://profiles.wordpress.org/users/dgwyer\">David Gwyer</a>、<a href=\"http://profiles.wordpress.org/users/damst\">Da^MsT</a>、<a href=\"http://profiles.wordpress.org/users/deltafactory\">deltafactory</a>、<a href=\"http://profiles.wordpress.org/users/demetris\">demetris</a>、<a href=\"http://profiles.wordpress.org/users/valendesigns\">Derek Herman</a>、<a href=\"http://profiles.wordpress.org/users/devinreams\">Devin Reams</a>、<a href=\"http://profiles.wordpress.org/users/adeptris\">Digital Raindrops</a>、<a href=\"http://profiles.wordpress.org/users/dd32\">Dion Hulse (@dd32)</a>、<a href=\"http://profiles.wordpress.org/users/ocean90\">Dominik Schilling (ocean90)</a>、<a href=\"http://profiles.wordpress.org/users/dougwrites\">Doug Provencio</a>、<a href=\"http://profiles.wordpress.org/users/dragoonis\">dragoonis</a>、<a href=\"http://profiles.wordpress.org/users/drewapicture\">DrewAPicture</a>、<a href=\"http://profiles.wordpress.org/users/cyberhobo\">Dylan Kuhn</a>、<a href=\"http://profiles.wordpress.org/users/eduplessis\">eduplessis</a>、<a href=\"http://profiles.wordpress.org/users/eightamrock\">Eightamrock</a>、<a href=\"http://profiles.wordpress.org/users/eko-fr\">eko-fr</a>、<a href=\"http://profiles.wordpress.org/users/elpie\">Elpie</a>、<a href=\"http://profiles.wordpress.org/users/elyobo\">elyobo</a>、<a href=\"http://profiles.wordpress.org/users/empireoflight\">Empireoflight</a>、<a href=\"http://profiles.wordpress.org/users/ethitter\">Erick Hitter</a>、<a href=\"http://profiles.wordpress.org/users/ericmann\">Eric Mann</a>、<a href=\"http://profiles.wordpress.org/users/ejdanderson\">Evan Anderson</a>、<a href=\"http://profiles.wordpress.org/users/evansolomon\">Evan Solomon</a>、<a href=\"http://profiles.wordpress.org/users/fonglh\">fonglh</a>、<a href=\"http://profiles.wordpress.org/users/garyc40\">garyc40</a>、<a href=\"http://profiles.wordpress.org/users/garyj\">Gary Jones</a>、<a href=\"http://profiles.wordpress.org/users/logiclord\">Gaurav Aggarwal</a>、<a href=\"http://profiles.wordpress.org/users/georgestephanis\">George Stephanis</a>、<a href=\"http://profiles.wordpress.org/users/goldenapples\">goldenapples</a>、<a href=\"http://profiles.wordpress.org/users/goto10\">goto10</a>、<a href=\"http://profiles.wordpress.org/users/hakre\">hakre</a>、<a href=\"http://profiles.wordpress.org/users/helenyhou\">Helen Hou-Sandi</a>、<a href=\"http://profiles.wordpress.org/users/iandstewart\">Ian Stewart</a>、<a href=\"http://profiles.wordpress.org/users/ipstenu\">Ipstenu</a>、<a href=\"http://profiles.wordpress.org/users/madjax\">Jackson</a>、<a href=\"http://profiles.wordpress.org/users/jacobwg\">Jacob Gillespie</a>、<a href=\"http://profiles.wordpress.org/users/jakemgold\">Jake Goldman</a>、<a href=\"http://profiles.wordpress.org/users/jamescollins\">James Collins</a>、<a href=\"http://profiles.wordpress.org/users/jane\">Jane Wells</a>、<a href=\"http://profiles.wordpress.org/users/jeremyclarke\">jeremyclarke</a>、<a href=\"http://profiles.wordpress.org/users/jayjdk\">Jesper Johansen (Jayjdk)</a>、<a href=\"http://profiles.wordpress.org/users/jgadbois\">jgadbois</a>、<a href=\"http://profiles.wordpress.org/users/jick\">Jick</a>、<a href=\"http://profiles.wordpress.org/users/joehoyle\">Joe Hoyle</a>、<a href=\"http://profiles.wordpress.org/users/johnbillion\">John Blackbourn</a>、<a href=\"http://profiles.wordpress.org/users/vegasgeek\">John Hawkins</a>、<a href=\"http://profiles.wordpress.org/users/johnonolan\">JohnONolan</a>、<a href=\"http://profiles.wordpress.org/users/johnpbloch\">John P. Bloch</a>、<a href=\"http://profiles.wordpress.org/users/duck_\">Jon Cave</a>、<a href=\"http://profiles.wordpress.org/users/koke\">Jorge Bernal</a>、<a href=\"http://profiles.wordpress.org/users/josephscott\">Joseph Scott</a>、<a href=\"http://profiles.wordpress.org/users/jtclarke\">jtclarke</a>、<a href=\"http://profiles.wordpress.org/users/yuraz\">Jurica Zuanovic</a>、<a href=\"http://profiles.wordpress.org/users/justindgivens\">Justin Givens</a>、<a href=\"http://profiles.wordpress.org/users/justinsainton\">Justin Sainton</a>、<a href=\"http://profiles.wordpress.org/users/trepmal\">Kailey Lampert (trepmal)</a>、<a href=\"http://profiles.wordpress.org/users/kevinb\">kevinB</a>、<a href=\"http://profiles.wordpress.org/users/kitchin\">kitchin</a>、<a href=\"http://profiles.wordpress.org/users/kovshenin\">Konstantin Kovshenin</a>、<a href=\"http://profiles.wordpress.org/users/tenpura\">Kuraishi</a>、<a href=\"http://profiles.wordpress.org/users/kurtpayne\">Kurt Payne</a>、<a href=\"http://profiles.wordpress.org/users/lancewillett\">Lance Willett</a>、<a href=\"http://profiles.wordpress.org/users/latz\">Latz</a>、<a href=\"http://profiles.wordpress.org/users/linuxologos\">linuxologos</a>、<a href=\"http://profiles.wordpress.org/users/lloydbudd\">Lloyd Budd</a>、<a href=\"http://profiles.wordpress.org/users/ldebrouwer\">Luc De Brouwer</a>、<a href=\"http://profiles.wordpress.org/users/lukeschlather\">lukeschlather</a>、<a href=\"http://profiles.wordpress.org/users/mako09\">Mako</a>、<a href=\"http://profiles.wordpress.org/users/settle\">Mantas Malcius</a>、<a href=\"http://profiles.wordpress.org/users/marcuspope\">MarcusPope</a>、<a href=\"http://profiles.wordpress.org/users/mark-k\">mark-k</a>、<a href=\"http://profiles.wordpress.org/users/markjaquith\">Mark Jaquith</a>、<a href=\"http://profiles.wordpress.org/users/markmcwilliams\">Mark McWilliams</a>、<a href=\"http://profiles.wordpress.org/users/markoheijnen\">Marko Heijnen</a>、<a href=\"http://profiles.wordpress.org/users/tfnab\">Martin Lormes</a>、<a href=\"http://profiles.wordpress.org/users/masonjames\">masonjames</a>、<a href=\"http://profiles.wordpress.org/users/matveb\">Matias Ventura</a>、<a href=\"http://profiles.wordpress.org/users/matt\">Matt Mullenweg</a>、<a href=\"http://profiles.wordpress.org/users/iammattthomas\">Matt Thomas</a>、<a href=\"http://profiles.wordpress.org/users/mattwiebe\">Matt Wiebe</a>、<a href=\"http://profiles.wordpress.org/users/mattyrob\">MattyRob</a>、<a href=\"http://profiles.wordpress.org/users/merty\">Mert Yazicioglu</a>、<a href=\"http://profiles.wordpress.org/users/mdawaffe\">Michael Adams (mdawaffe)</a>、<a href=\"http://profiles.wordpress.org/users/mfields\">Michael Fields</a>、<a href=\"http://profiles.wordpress.org/users/mau\">Michal “Mau” Pliska</a>、<a href=\"http://profiles.wordpress.org/users/mbijon\">Mike Bijon</a>、<a href=\"http://profiles.wordpress.org/users/dh-shredder\">Mike Schroder</a>、<a href=\"http://profiles.wordpress.org/users/dimadin\">Milan Dinic</a>、<a href=\"http://profiles.wordpress.org/users/mitchoyoshitaka\">mitchoyoshitaka</a>、<a href=\"http://profiles.wordpress.org/users/batmoo\">Mohammad Jangda</a>、<a href=\"http://profiles.wordpress.org/users/mhauan\">Morten Hauan</a>、<a href=\"http://profiles.wordpress.org/users/usermrpapa\">Mr Papa</a>、<a href=\"http://profiles.wordpress.org/users/mrtorrent\">mrtorrent</a>、<a href=\"http://profiles.wordpress.org/users/Nao\">Naoko McCracken</a>、<a href=\"http://profiles.wordpress.org/users/natebedortha\">natebedortha</a>、<a href=\"http://profiles.wordpress.org/users/nbachiyski\">Nikolay Bachiyski</a>、<a href=\"http://profiles.wordpress.org/users/olivm\">olivM</a>、<a href=\"http://profiles.wordpress.org/users/olleicua\">olleicua</a>、<a href=\"http://profiles.wordpress.org/users/otto42\">Otto</a>、<a href=\"http://profiles.wordpress.org/users/pagesimplify\">pagesimplify</a>、<a href=\"http://profiles.wordpress.org/users/paulhastings0\">paulhastings0</a>、<a href=\"http://profiles.wordpress.org/users/pavelevap\">pavelevap</a>、<a href=\"http://profiles.wordpress.org/users/petemall\">pete.mall</a>、<a href=\"http://profiles.wordpress.org/users/westi\">Peter Westwood</a>、<a href=\"http://profiles.wordpress.org/users/peterwilsoncc\">peterwilsoncc</a>、<a href=\"http://profiles.wordpress.org/users/ppaire\">ppaire</a>、<a href=\"http://profiles.wordpress.org/users/ptahdunbar\">Ptah Dunbar</a>、<a href=\"http://profiles.wordpress.org/users/r-a-y\">r-a-y</a>、<a href=\"http://profiles.wordpress.org/users/ramiy\">Rami Y</a>、<a href=\"http://profiles.wordpress.org/users/rasheed\">Rasheed Bydousi</a>、<a href=\"http://profiles.wordpress.org/users/miqrogroove\">Robert Chapin (miqrogroove)</a>、<a href=\"http://profiles.wordpress.org/users/wpmuguru\">Ron Rennick</a>、<a href=\"http://profiles.wordpress.org/users/rosshanney\">Ross Hanney</a>、<a href=\"http://profiles.wordpress.org/users/ruslany\">ruslany</a>、<a href=\"http://profiles.wordpress.org/users/ryan\">Ryan Boren</a>、<a href=\"http://profiles.wordpress.org/users/ryanhellyer\">ryanhellyer</a>、<a href=\"http://profiles.wordpress.org/users/ryanimel\">Ryan Imel</a>、<a href=\"http://profiles.wordpress.org/users/zeo\">Safirul Alredha</a>、<a href=\"http://profiles.wordpress.org/users/solarissmoke\">Samir Shah</a>、<a href=\"http://profiles.wordpress.org/users/gluten\">Sam Margulies</a>、<a href=\"http://profiles.wordpress.org/users/saracannon\">saracannon</a>、<a href=\"http://profiles.wordpress.org/users/scottbasgaard\">Scott Basgaard</a>、<a href=\"http://profiles.wordpress.org/users/sbressler\">Scott Bressler</a>、<a href=\"http://profiles.wordpress.org/users/l3rady\">Scott Cariss</a>、<a href=\"http://profiles.wordpress.org/users/scottconnerly\">scottconnerly</a>、<a href=\"http://profiles.wordpress.org/users/coffee2code\">Scott Reilly</a>、<a href=\"http://profiles.wordpress.org/users/wonderboymusic\">Scott Taylor</a>、<a href=\"http://profiles.wordpress.org/users/scribu\">scribu</a>、<a href=\"http://profiles.wordpress.org/users/sergeybiryukov\">Sergey Biryukov</a>、<a href=\"http://profiles.wordpress.org/users/designsimply\">Sheri Bigelow</a>、<a href=\"http://profiles.wordpress.org/users/simonwheatley\">Simon Wheatley</a>、<a href=\"http://profiles.wordpress.org/users/sirzooro\">sirzooro</a>、<a href=\"http://profiles.wordpress.org/users/sillybean\">Stephanie Leary</a>、<a href=\"http://profiles.wordpress.org/users/tech163\">tech163</a>、<a href=\"http://profiles.wordpress.org/users/thedeadmedic\">TheDeadMedic</a>、<a href=\"http://profiles.wordpress.org/users/tmoorewp\">Tim Moore</a>、<a href=\"http://profiles.wordpress.org/users/tomauger\">Tom Auger</a>、<a href=\"http://profiles.wordpress.org/users/ansimation\">Travis Ballard</a>、<a href=\"http://profiles.wordpress.org/users/sorich87\">Ulrich Sossou</a>、<a href=\"http://profiles.wordpress.org/users/vnsavage\">vnsavage</a>、<a href=\"http://profiles.wordpress.org/users/wpweaver\">wpweaver</a>、<a href=\"http://profiles.wordpress.org/users/wraithkenny\">WraithKenny</a>、<a href=\"http://profiles.wordpress.org/users/yoavf\">Yoav Farhi</a>，和 <a href=\"http://profiles.wordpress.org/users/vanillalounge\">Ze Fontainhas</a>。</p>
<p>同时也特别感谢近期在中、英文支持论坛上热心解答问题的朋友。</p>
<h3>已知问题</h3>
<ul>
<li>默认主题翻译被 WordPress 核心团队的主题更新覆盖 —— 尚无自动解决办法，您可手动复制主题的 .mo 文件到主题中。</li>
</ul>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"http://cn.wordpress.org/2011/12/13/sonny/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:3:\"215\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:54:\"
		
		
		
		
		
				
		
		
		
		

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"WordPress 3.3 第三测试版\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"http://cn.wordpress.org/2011/11/19/wordpress-3-3-beta-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"http://cn.wordpress.org/2011/11/19/wordpress-3-3-beta-3/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 19 Nov 2011 03:30:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:5:{i:0;a:5:{s:4:\"data\";s:13:\"Local Updates\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:7:\"Testing\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:3:\"3.3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:4:\"Beta\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"http://cn.wordpress.org/?p=593\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"WordPress 3.3 第三测试版中文版本发布。新增中文字数统计补丁。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Jiehan Zheng\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1953:\"<p>勇敢的测试者们，好久不见！您的任务来啦：测试安装 WordPress 3.3 第三测试版，看看您能把什么弄坏，然后上报给我们。自第二测试版以来，我们进行了 200 多次代码改进。在最终发布前的测试版本阶段，我们不再添加新功能，把精力集中在修正问题、美化界面和编辑文字这些事情上。</p>
<p>作为勤劳的 WordPress 中文维护者，我当然也没闲着。在 WordPress 3.3 第三测试版中，我们对中文补丁进行了重写，提高了性能，并增加了“亚洲文字字数统计”功能 —— 在您使用中文版本写文章时，将能够正确的中文字数和英文词数之和。如果您有空，欢迎访问控制板（后台）的“设置”→“中文本地化”看看我们有了什么改进。</p>
<p>和往常一样，请插件和主题的作者一定要在 3.3 的测试版上进行测试，这样您才可以找到兼容性问题。尤其是当您的插件或主题使用了 jQuery，请特别注意仔细测试，因为我们的核心程序已经升级到了 jQuery 1.7 版本。</p>
<p>现在就下载 WordPress 3.3 第三测试版（中文）并覆盖安装：<strong><a href=\"http://cn.wordpress.org/release-archive/zh_CN/wordpress-3.3-beta3-19254-zh_CN.zip\" target=\"_blank\">zip</a></strong> (<a href=\"http://cn.wordpress.org/wordpress-3.3-beta3-19254-zh_CN.zip.md5\" target=\"_blank\">md5</a>) / <strong><a href=\"http://cn.wordpress.org/release-archive/zh_CN/wordpress-3.3-beta3-19254-zh_CN.tar.gz\" target=\"_blank\">tar.gz</a></strong> (<a href=\"http://cn.wordpress.org/wordpress-3.3-beta3-19254-zh_CN.tar.gz.md5\" target=\"_blank\">md5</a>)。</p>
<p><strong>强烈不建议在生产环境中测试。</strong></p>
<h3>已知问题</h3>
<ul>
<li>在“中文本地化”页面的提示气泡中，“左上方”应为“右上方”&#8230;</li>
<li>由于翻译模版不同步导致的 30 条翻译缺失。</li>
</ul>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"http://cn.wordpress.org/2011/11/19/wordpress-3-3-beta-3/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:3:\"140\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:42:\"
		
		
		
		
		
				

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordPress 3.2.1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://cn.wordpress.org/2011/07/13/wordpress-3-2-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"http://cn.wordpress.org/2011/07/13/wordpress-3-2-1/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 12 Jul 2011 20:28:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"http://cn.wordpress.org/?p=534\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:133:\"WordPress 3.2.1 中文版本发布。这是一个维护更新。本文章包含了恢复 Twenty Eleven 主题中文翻译的说明。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Jiehan Zheng\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1512:\"<p>现在，在 WordPress 3.2 版本下载量达到一百余万次之后，我们发布 <a title=\"下载页面链接\" href=\"http://cn.wordpress.org/releases/\">WordPress 3.2.1</a>。这个维护版本修复了一些服务器上可能发生的 JSON 不兼容问题，同时还包括控制板样式和 Twenty Eleven 主题的小修补。</p>
<p>要查看所有修改，请访问<a href=\"http://codex.wordpress.org/zh-cn:3.2.1_%E7%89%88%E6%9C%AC\">中文 Codex 文档页面</a>、<a href=\"http://core.trac.wordpress.org/log/branches/3.2/?rev=18436&amp;stop_rev=18398\">更新历史</a>（英文）或<a href=\"http://core.trac.wordpress.org/query?status=closed&amp;group=resolution&amp;milestone=3.2.1\">解决的工单列表</a>（英文）。</p>
<p><a href=\"http://cn.wordpress.org/releases/\"><strong>下载 3.2.1</strong></a>，或在您站点后台的“控制板” → “更新”菜单进行升级。</p>
<h3>手动恢复 Twenty Eleven 主题的翻译</h3>
<p>很多用户在升级了核心程序和 Twenty Eleven 主题之后丢失了 Twenty Eleven 的翻译。请您按照如下方法操作：</p>
<ol>
<li>下载 <a title=\"zh_CN.mo 直接下载链接\" href=\"http://i18n.svn.wordpress.org/zh_CN/tags/3.2.1/messages/twentyeleven/zh_CN.mo\" target=\"_blank\">zh_CN.mo</a> 文件</li>
<li>拷贝至站点 <code>wp-content/themes/twentyeleven/languages/</code> 目录下</li>
</ol>
<p>然后刷新站点，就可以看到中文了。如果仍有问题，请在此留言或通过“联系”页面联系我们。</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"http://cn.wordpress.org/2011/07/13/wordpress-3-2-1/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:3:\"137\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:48:\"
		
		
		
		
		
				
		
		

		
		
				
			
		
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"关于 WordPress 3.2 后台不再支持 IE 6 的说明\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"http://cn.wordpress.org/2011/07/06/on-ie-6/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"http://cn.wordpress.org/2011/07/06/on-ie-6/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 06 Jul 2011 00:01:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:13:\"Local Updates\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:3:\"3.2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:4:\"IE 6\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"http://cn.wordpress.org/?p=515\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:135:\"从 WordPress 3.2 起，后台已不再支持 IE 6 浏览器。希望使用 IE 6 的用户升级浏览器，或换用其它浏览器。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Jiehan Zheng\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1549:\"<p><em>考虑到中国的 IE 6 用户<a href=\"http://www.ie6countdown.com/\" target=\"_blank\">依然很多</a>，WordPress China 根据要求在此做出关于该浏览器的警告。</em></p>
<p>如果您正在使用 IE 6，那么请您注意了：在 3.2 版本中的界面，特别是“控制板”，已经不再支持您的 IE 6 浏览器了。您或许仍然可以使用部分功能，但页面的布局和样式将会十分难看；一些功能甚至无法正常使用。</p>
<p><ins datetime=\"2011-07-06T12:16:09+00:00\">补充说明：这不会影响到您的站点前台；至于您的前台是否支持 IE 6，还取决于您使用的主题。</ins></p>
<p>我们在此建议 IE 6 用户：</p>
<ul>
<li><a href=\"http://www.microsoft.com/windows/internet-explorer/\" target=\"_blank\">升级 Internet Explorer 到更高版本</a>；</li>
<li><a href=\"http://www.google.com/chrome\" target=\"_blank\">换用 Google Chrome</a>；</li>
<li><a href=\"http://www.firefox.com/\" target=\"_blank\">换用 Mozilla Firefox</a>；</li>
<li><a href=\"http://www.apple.com/safari/\" target=\"_blank\">换用 Safari</a>；</li>
<li><a href=\"http://www.opera.com/\" target=\"_blank\">换用 Opera</a>。</li>
</ul>
<p>更多浏览建议，请访问 <a href=\"http://browsehappy.com/\" target=\"_blank\">Browse Happy</a>（英文）站点。</p>
<p>同时，3.2 版本对于服务器的要求也有所更新，最新的版本要求是：</p>
<ul>
<li>PHP 版本高于 5.2.4；</li>
<li>MySQL 版本高于 5.0。</li>
</ul>
<p>希望您做好准备。谢谢您的支持！</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"http://cn.wordpress.org/2011/07/06/on-ie-6/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:3:\"284\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:29:\"http://cn.wordpress.org/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"hourly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Tue, 21 Aug 2012 02:39:21 GMT\";s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:10:\"connection\";s:5:\"close\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:10:\"x-pingback\";s:34:\"http://cn.wordpress.org/xmlrpc.php\";s:13:\"last-modified\";s:29:\"Thu, 28 Jun 2012 18:19:03 GMT\";s:4:\"x-nc\";s:11:\"HIT luv 139\";}s:5:\"build\";s:14:\"20111015034325\";}','no');
INSERT INTO `{prefix_}options` VALUES ('166','_transient_timeout_feed_mod_7d1d7866a17d17cf5f79e1f075b87a31','1345559963','no');
INSERT INTO `{prefix_}options` VALUES ('167','_transient_feed_mod_7d1d7866a17d17cf5f79e1f075b87a31','1345516763','no');
INSERT INTO `{prefix_}options` VALUES ('168','_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51','1345559963','no');
INSERT INTO `{prefix_}options` VALUES ('169','_transient_dash_4077549d03da2e451c8b5f002294ff51','<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://cn.wordpress.org/2012/06/29/wordpress-3-4-1/\' title=\'WordPress 3.4.1 中文版本发布，包含 18 个问题修复。 [&hellip;]\'>WordPress 3.4.1 安全和维护更新</a> <span class=\"rss-date\">2012 年 6 月 28 日</span><div class=\'rssSummary\'>WordPress 3.4.1 中文版本发布，包含 18 个问题修复。 [&hellip;]</div></li><li><a class=\'rsswidget\' href=\'http://cn.wordpress.org/2012/06/14/restoring-translation-for-default-themes-in-3-4/\' title=\'解决升级后默认主题翻译丢失，显示英文的办法。该问题只影响使用 Twenty Eleven 和 Twenty Ten 主题的用户。 [&hellip;]\'>默认主题翻译丢失的解决办法</a> <span class=\"rss-date\">2012 年 6 月 14 日</span><div class=\'rssSummary\'>解决升级后默认主题翻译丢失，显示英文的办法。该问题只影响使用 Twenty Eleven 和 Twenty Ten 主题的用户。 [&hellip;]</div></li></ul></div>','no');
INSERT INTO `{prefix_}options` VALUES ('170','_transient_timeout_feed_867bd5c64f85878d03a060509cd2f92c','1345559972','no');
INSERT INTO `{prefix_}options` VALUES ('171','_transient_feed_867bd5c64f85878d03a060509cd2f92c','a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"


\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:61:\"
	
	
	
	




















































\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"WordPress Planet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WordPress Planet - http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:50:{i:0;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"WordPress.tv: Jake Goldman: Enterprise-class WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=12492\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"http://wordpress.tv/2012/08/20/jake-goldman-enterprise-class-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:654:\"<div id=\"v-vjawLLrC-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/12492/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/12492/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=12492&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/20/jake-goldman-enterprise-class-wordpress/\"><img alt=\"Enterprize-class WordPress\" src=\"http://videos.videopress.com/vjawLLrC/enterprize-class-wordpress_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 21 Aug 2012 01:08:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordCamp Boston\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"WordPress.tv: Shane Pearlman: The Art & Science of Premium\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=12432\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"http://wordpress.tv/2012/08/20/shane-pearlman-the-art-science-of-premium/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:664:\"<div id=\"v-yhA1fI9W-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/12432/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/12432/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=12432&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/20/shane-pearlman-the-art-science-of-premium/\"><img alt=\"The_Art_and_Science_of_Premium\" src=\"http://videos.videopress.com/yhA1fI9W/the_art_and_science_of_premium_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 21 Aug 2012 01:04:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Grant Landram\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"WordPress.tv: Kelli Wise: Using WordPress as Your Company’s Website\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=12071\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"http://wordpress.tv/2012/08/20/kelli-wise-using-wordpress-as-your-companys-website/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:704:\"<div id=\"v-pZurw3pP-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/12071/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/12071/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=12071&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/20/kelli-wise-using-wordpress-as-your-companys-website/\"><img alt=\"Using_WordPress_as_your_co_website_Kelli_Wise\" src=\"http://videos.videopress.com/pZurw3pP/using_wordpress_as_your_co_website_kelli_wise_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 20 Aug 2012 19:15:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Grant Landram\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"WordPress.tv: Chris Cochran: Going Mobile: From 960 to 320\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=12494\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"http://wordpress.tv/2012/08/20/chris-cochran-going-mobile-from-960-to-320/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:669:\"<div id=\"v-sq6fzBie-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/12494/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/12494/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=12494&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/20/chris-cochran-going-mobile-from-960-to-320/\"><img alt=\"Going Mobile &#8211; From 960 to 320\" src=\"http://videos.videopress.com/sq6fzBie/going-mobile-from-960-to-320_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 20 Aug 2012 19:09:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordCamp Boston\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"WordPress.tv: Mark Root-Wiley and Christine Winckler: WYSI-WHA!?! Taming the WordPress Editor\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=13072\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:107:\"http://wordpress.tv/2012/08/20/mark-root-wiley-and-christine-winckler-wysi-wha-taming-the-wordpress-editor/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:788:\"<div id=\"v-n9sfo4eF-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/13072/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/13072/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=13072&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/20/mark-root-wiley-and-christine-winckler-wysi-wha-taming-the-wordpress-editor/\"><img alt=\"WYSI_WHA_Taming_the_WordPress_Editor_Mark_Root_Wiley_and_Christine_Winckler\" src=\"http://videos.videopress.com/n9sfo4eF/wysi_wha_taming_the_wordpress_editor_mark_root_wiley_and_christine_winckler_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 20 Aug 2012 17:36:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Grant Landram\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"WordPress.tv: Andrew Villeneuve: WordPress Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=13077\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"http://wordpress.tv/2012/08/20/andrew-villeneuve-wordpress-security/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:671:\"<div id=\"v-KDHHrAdL-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/13077/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/13077/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=13077&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/20/andrew-villeneuve-wordpress-security/\"><img alt=\"WordPress_Security_Andrew_Villeneuve\" src=\"http://videos.videopress.com/KDHHrAdL/wordpress_security_andrew_villeneuve_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 20 Aug 2012 17:21:40 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Grant Landram\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"WordPress.tv: Scott Berkun: Lessons From History and Blogging Every Day\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=13084\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"http://wordpress.tv/2012/08/20/scott-berkun-lessons-from-history-and-blogging-every-day/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:739:\"<div id=\"v-hWWhRfzq-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/13084/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/13084/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=13084&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/20/scott-berkun-lessons-from-history-and-blogging-every-day/\"><img alt=\"Lessons_From_History_Blogging_Every_Day_Keynote_Scott_Berkun\" src=\"http://videos.videopress.com/hWWhRfzq/lessons_from_history_blogging_every_day_keynote_scott_berkun_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 20 Aug 2012 17:21:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Grant Landram\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"Joseph: A New, New Focus: VaultPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://josephscott.org/?p=6295\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://josephscott.org/archives/2012/08/a-new-new-focus-vaultpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1977:\"<p>Two years ago I posted about &#8220;<a href=\"http://josephscott.org/archives/2010/07/a-new-focus/\">A New Focus</a>&#8220;, where my time at Automattic adjusted to be centered on Akismet.  Back then Akismet was catching <strong>500,000,000</strong> spam comments per month (see the sidebar chart at <a href=\"http://akismet.com/about/\">http://akismet.com/about/</a>).  Today it is catching just over <strong>2,000,000,000</strong> spam comments per month (with a peak of nearly <strong>2,500,000,000</strong> at the end of 2011).  Even with all that growth Akismet has continued to perform well, maintaining a high level of accuracy and performance, something that has been great to be a small part of.</p>
<p>This summer I&#8217;ve been asked to shift my focus again, by joining the <a href=\"http://vaultpress.com/\">VaultPress</a> team.</p>
<p><a href=\"http://vaultpress.com/\"><img src=\"https://lh6.googleusercontent.com/-SkboV9fXhuE/UDBTqUa4NJI/AAAAAAAAAbg/t8O-UxilJqE/s381/vaultpress-logo-home.png\" /></a></p>
<p>If you aren&#8217;t familiar with VaultPress here is the elevator pitch: &#8220;VaultPress syncs the data from your WordPress site (posts, pages, comments, plugin &#038; theme files, and media uploads) as they are added.  On top of that VaultPress will scan your files for code vulnerabilities and changes to core WordPress files.&#8221; (more details are on the <a href=\"http://vaultpress.com/help/get-to-know/\">Get to know VaultPress</a> page)</p>
<p>VaultPress also provides a restore process.  If your WordPress site gets vaporized for some reason doing a fresh install and activating the VaultPress plugin will allow VaultPress.com to push a backup snapshot back to your server.  There is also an option to manually download a backup snapshot, if you just want to pull out something specific.</p>
<p>The last two years focused on Akismet have been great, and now it is exciting to be taking on the new challenge of helping VaultPress improve and grow.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 20 Aug 2012 16:35:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Joseph Scott\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:126:\"WordPress.tv: Meeky Hwang: Save Your Code: One Codebase, 9 Blogs With WordPress Multisite Using Sub-domains And Subdirectories\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=12496\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:141:\"http://wordpress.tv/2012/08/20/meeky-hwang-save-your-code-one-codebase-9-blogs-with-wordpress-multisite-using-sub-domains-and-subdirectories/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:876:\"<div id=\"v-lkaI5cXV-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/12496/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/12496/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=12496&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/20/meeky-hwang-save-your-code-one-codebase-9-blogs-with-wordpress-multisite-using-sub-domains-and-subdirectories/\"><img alt=\"Save Your Code &#8211; One Codebase &#8212; 9 Blogs with WordPress Multisite Using Sub-domains & Subdirectories\" src=\"http://videos.videopress.com/lkaI5cXV/save-your-code-one-codebase-9-blogs-with-wordpress-multisite-using-sub-domains-subdirectories_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 20 Aug 2012 13:10:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordCamp Boston\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:139:\"WordPress.tv: Jason Rivera: The Psychology of Social Media: Harnessing Psychological & Behavioral Connections To Develop Content Strategies\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=12498\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:153:\"http://wordpress.tv/2012/08/19/jason-rivera-the-psychology-of-social-media-harnessing-psychological-behavioral-connections-to-develop-content-strategies/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:903:\"<div id=\"v-gyMCpZ3k-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/12498/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/12498/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=12498&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/19/jason-rivera-the-psychology-of-social-media-harnessing-psychological-behavioral-connections-to-develop-content-strategies/\"><img alt=\"The Psychology of Social Media- harnessing Psychological & Bihavioral Connections to Develop content Strategies\" src=\"http://videos.videopress.com/gyMCpZ3k/the-psychology-of-social-media-harnessing-psychological-bihavioral-connections-to-develop-content-strategies_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 20 Aug 2012 01:11:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordCamp Boston\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"WordPress.tv: John Eckman: Why The @#@#$ Isn’t WordPress a CMS?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=12500\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"http://wordpress.tv/2012/08/19/john-eckman-why-the-isnt-wordpress-a-cms/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:672:\"<div id=\"v-glYrgVPE-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/12500/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/12500/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=12500&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/19/john-eckman-why-the-isnt-wordpress-a-cms/\"><img alt=\"Why the @#@#$ Isn&#8217;t WordPress a CMS\" src=\"http://videos.videopress.com/glYrgVPE/why-the-isnt-wordpress-a-cms_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 19 Aug 2012 19:12:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordCamp Boston\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"Weblog Tools Collection: WordPress Theme Releases for 8/19\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"http://weblogtoolscollection.com/?p=11842\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"http://feedproxy.google.com/~r/weblogtoolscollection/UXMP/~3/5VSRj3BLcr0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1349:\"<p><img class=\"alignnone size-full wp-image-11845\" title=\"busybee\" src=\"http://weblogtoolscollection.com/wp-content/uploads/2012/08/busybee.jpg\" alt=\"\" width=\"150\" height=\"112\" /></p>
<p><a href=\"http://emptynestthemes.com/2012/08/18/busy-bee-wordpress-theme/\"><strong>Busy Bee</strong></a> is a lovely theme suitable for any type of blog or website, taking advantage of new design features and elements including using Google web fonts to ensure a consistent look regardless of what fonts the viewer has installed on their computer.</p>
<p><img class=\"alignnone size-full wp-image-11843\" title=\"snapshot\" src=\"http://weblogtoolscollection.com/wp-content/uploads/2012/08/snapshot.jpg\" alt=\"\" width=\"150\" height=\"113\" /></p>
<p><a href=\"http://wordpress.org/extend/themes/snapshot\"><strong>Snapshot</strong></a> is a theme built for showing off your photography.</p>
<p><img class=\"alignnone size-full wp-image-11844\" title=\"stack\" src=\"http://weblogtoolscollection.com/wp-content/uploads/2012/08/stack.jpg\" alt=\"\" width=\"150\" height=\"113\" /></p>
<p><a href=\"http://wordpress.org/extend/themes/stack\"><strong>Stack</strong></a> is a paper-like Theme for WordPress heavily inspired by the popular &#8216;Stationary&#8217; theme for Tumblr.</p>
<img src=\"http://feeds.feedburner.com/~r/weblogtoolscollection/UXMP/~4/5VSRj3BLcr0\" height=\"1\" width=\"1\" />\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 19 Aug 2012 18:41:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"James\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"WordPress.tv: Reiko Beach: Shopping For A Shopping Cart Solution\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=12502\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"http://wordpress.tv/2012/08/19/reiko-beach-shopping-for-a-shopping-cart-solution/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:686:\"<div id=\"v-NuhdNx0H-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/12502/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/12502/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=12502&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/19/reiko-beach-shopping-for-a-shopping-cart-solution/\"><img alt=\"Shopping for a Shopping Cart Solution\" src=\"http://videos.videopress.com/NuhdNx0H/shopping-for-a-shopping-cart-solution_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 19 Aug 2012 13:13:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordCamp Boston\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"WordPress.tv: Douglas Hanna: Engaging & Growing Your Audience Beyond The Blog Post\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=12504\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"http://wordpress.tv/2012/08/18/douglas-hanna-engaging-growing-your-audience-beyond-the-blog-post/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:732:\"<div id=\"v-3EoVT9XR-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/12504/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/12504/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=12504&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/18/douglas-hanna-engaging-growing-your-audience-beyond-the-blog-post/\"><img alt=\"Engaging & Growing Your Audience Beyond the Blog Post\" src=\"http://videos.videopress.com/3EoVT9XR/engaging-growing-your-audience-beyond-the-blog-post_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 19 Aug 2012 01:14:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordCamp Boston\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"WordPress.tv: Frederick Townes: 21 Optimization Secrets Of Top Media Companies\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=12506\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"http://wordpress.tv/2012/08/18/frederick-townes-21-optimization-secrets-of-top-media-companies/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:718:\"<div id=\"v-2ET2b5Zn-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/12506/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/12506/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=12506&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/18/frederick-townes-21-optimization-secrets-of-top-media-companies/\"><img alt=\"21 Optimization Secrets of Top Media Companies\" src=\"http://videos.videopress.com/2ET2b5Zn/21-optimization-secrets-of-top-media-companies_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 18 Aug 2012 19:15:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordCamp Boston\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:15;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"WordPress.tv: Andrew Nacin: Developer: Andrew Nacin Presents Something Awesome\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=12508\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"http://wordpress.tv/2012/08/18/andrew-nacin-developer-andrew-nacin-presents-something-awesome/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:703:\"<div id=\"v-H7hg5CcS-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/12508/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/12508/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=12508&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/18/andrew-nacin-developer-andrew-nacin-presents-something-awesome/\"><img alt=\"Andrew Nacin Presents Something Awesome\" src=\"http://videos.videopress.com/H7hg5CcS/andrew-nacin-presents-something-awesome_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 18 Aug 2012 13:16:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordCamp Boston\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:16;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"Matt: Spreading Rumors\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"http://ma.tt/?p=41693\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:38:\"http://ma.tt/2012/08/spreading-rumors/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:254:\"<p>Lukasz Lindell writes<a href=\"http://day4.se/how-we-screwed-almost-the-whole-apple-community/\">How we screwed (almost) the whole Apple community</a>. &#8220;We wanted to test this, how easy is it to spread disinformation?&#8221; Fascinating story.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 18 Aug 2012 02:40:02 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:17;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"WordPress.tv: Gregory Cornelius: WordPress Workflows Expanded\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=12521\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"http://wordpress.tv/2012/08/17/gregory-cornelius-wordpress-workflows-expanded/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:663:\"<div id=\"v-XceSKKhT-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/12521/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/12521/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=12521&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/17/gregory-cornelius-wordpress-workflows-expanded/\"><img alt=\"WordPress Workflow Expanded\" src=\"http://videos.videopress.com/XceSKKhT/wordpress-workflow-expanded_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 18 Aug 2012 01:22:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordCamp Boston\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:18;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"WordPress.tv: Daniel Sullivan: The Future of Civic Engagement And Education\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=12510\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"http://wordpress.tv/2012/08/17/daniel-sullivan-the-future-of-civic-engagement-and-education/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:705:\"<div id=\"v-UFxGw82d-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/12510/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/12510/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=12510&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/17/daniel-sullivan-the-future-of-civic-engagement-and-education/\"><img alt=\"The Future of Civic Engagement & Education\" src=\"http://videos.videopress.com/UFxGw82d/the-future-of-civic-engagement-education_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 17 Aug 2012 19:17:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordCamp Boston\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:19;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"Dougal Campbell: Introducing Ajax in the WordPress Dashboard – Tom McFarlin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"http://dougal.gunters.org/?p=69245\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"http://dougal.gunters.org/blog/2012/08/17/introducing-ajax-in-the-wordpress-dashboard-tom-mcfarlin/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:610:\"<p><i>Tom McFarlin has a tutorial over on WPTuts+ about the proper way to handle Dashboard-side Ajax in WordPress.</i></p>
<p><a href=\"http://tommcfarlin.com/introducing-ajax-in-the-wordpress-dashboard/\">Introducing Ajax in the WordPress Dashboard &#8211; Tom McFarlin</a></p>
<p>Original Article: <a href=\"http://dougal.gunters.org/blog/2012/08/17/introducing-ajax-in-the-wordpress-dashboard-tom-mcfarlin/\">Introducing Ajax in the WordPress Dashboard &#8211; Tom McFarlin</a>
<a href=\"http://dougal.gunters.org\">Dougal Campbell&#039;s geek ramblings - WordPress, web development, and world domination.</a></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 17 Aug 2012 18:42:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"Dougal\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:20;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"Weblog Tools Collection: WordPress Plugin Releases for 8/17\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"http://weblogtoolscollection.com/?p=11837\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"http://feedproxy.google.com/~r/weblogtoolscollection/UXMP/~3/wcpz83SqMMw/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1513:\"<h3>New plugins</h3>
<p><a href=\"http://wordpress.org/extend/plugins/author-post-ratings/\"><strong>Author Post Ratings</strong></a> allows a post author to assign a simple 1-5 star rating to a post, page, or custom post type, which will then be displayed on the post.</p>
<p><a href=\"http://wordpress.org/extend/plugins/run-external-crons/\"><strong>Run External Crons</strong></a> enables using WordPress as a cron system that would hit external URLs (ie. any URL) on a scheduled basis.</p>
<p><a href=\"http://wordpress.org/extend/plugins/save-igoogle-ribbon/\"><strong>Save iGoogle Ribbon</strong></a> places a &#8220;Save iGoogle&#8221; ribbon on your WordPress site or network that links to the Save iGoogle campaign.</p>
<p><a href=\"http://wordpress.org/extend/plugins/sideoffer/\"><strong>SideOffer</strong></a> is a sliding side tab designed to generate leads &amp; increase conversions by displaying a highly visible call to action for your users.</p>
<h3>Updated plugins</h3>
<p><a href=\"http://wordpress.org/extend/plugins/backwpup/\"><strong>BackWPup</strong></a> allows you to backup your WordPress database, files, and more.</p>
<p><a href=\"http://bad-behavior.ioerror.us/\"><strong>Bad Behavior</strong></a> complements other link spam solutions by acting as a gatekeeper, preventing spammers from ever delivering their junk, and in many cases, from ever reading your site in the first place.</p>
<img src=\"http://feeds.feedburner.com/~r/weblogtoolscollection/UXMP/~4/wcpz83SqMMw\" height=\"1\" width=\"1\" />\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 17 Aug 2012 14:00:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"James\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:21;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:113:\"WordPress.tv: Jon Moss: Making WordPress Child’s Play: Using WP To Create Class Websites for PreK-12 Classrooms\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=12512\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:126:\"http://wordpress.tv/2012/08/17/jon-moss-making-wordpress-childs-play-using-wp-to-create-class-websites-for-prek-12-classrooms/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:845:\"<div id=\"v-WBUcTYjO-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/12512/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/12512/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=12512&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/17/jon-moss-making-wordpress-childs-play-using-wp-to-create-class-websites-for-prek-12-classrooms/\"><img alt=\"Making WordPress Child&#8217;s Play &#8211; Using WP to Create Classs Websites for PreK-12 Classrooms\" src=\"http://videos.videopress.com/WBUcTYjO/making-wordpress-childs-play-using-wp-to-create-classs-websites-for-prek-12-classrooms1_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 17 Aug 2012 13:18:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordCamp Boston\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:22;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:107:\"WordPress.tv: Adam Engel: Putting the “Social” Back in Socia Media: Building Community Through Blogging\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=12514\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:117:\"http://wordpress.tv/2012/08/16/adam-engel-putting-the-social-back-in-socia-media-building-community-through-blogging/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:813:\"<div id=\"v-15zgdxoH-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/12514/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/12514/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=12514&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/16/adam-engel-putting-the-social-back-in-socia-media-building-community-through-blogging/\"><img alt=\"Putting the &#8220;Social&#8221; Back in Social Media: Building Community Through Blogging\" src=\"http://videos.videopress.com/15zgdxoH/putting-the-social-back-in-social-media-building-community-through-blogging_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 17 Aug 2012 01:19:36 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordCamp Boston\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:23;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:113:\"WordPress.tv: Kevin McCarthy: Developing for a (Relatively) High-Traffic WordPress Multisite Install Using GitHub\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=12516\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:128:\"http://wordpress.tv/2012/08/16/kevin-mccarthy-developing-for-a-relatively-high-traffic-wordpress-multisite-install-using-github/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:823:\"<div id=\"v-yN3Cjft8-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/12516/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/12516/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=12516&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/16/kevin-mccarthy-developing-for-a-relatively-high-traffic-wordpress-multisite-install-using-github/\"><img alt=\"Developing for a (relatively) High-Traffic WordPress Multisite Install Using GitHub\" src=\"http://videos.videopress.com/yN3Cjft8/developing-for-a-relatively-high-traffic-wordpress-multisite-install-using-github_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 16 Aug 2012 19:20:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordCamp Boston\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:24;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"Joseph: Scott Berkun’s Next Book Subject: Automattic & WordPress.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://josephscott.org/?p=6282\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"http://josephscott.org/archives/2012/08/scott-berkuns-next-book-subject-automattic-wordpress-com/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:691:\"<p>Scott Berkun has announced the <a href=\"http://www.scottberkun.com/blog/2012/my-next-book/\">topic for his next book</a>:</p>
<blockquote><p>
The next book is based on the journal I kept while working at WordPress.com. It tells the story of what I learned working for one of the most amazing companies in the world.
</p></blockquote>
<p>Scott worked at <a href=\"http://automattic.com/\">Automattic</a> for 2 years as one of the team leads working on <a href=\"http://wordpress.com/\">WordPress.com</a>.</p>
<p>This is the first time I&#8217;ve seen someone write a book about where I work.  Automattic really is a special place and I look forward to reading Scott&#8217;s treatment of it.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 16 Aug 2012 17:08:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Joseph Scott\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:25;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"Weblog Tools Collection: Start Your Own Theme with _s and Underscores.me\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"http://weblogtoolscollection.com/?p=11833\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"http://feedproxy.google.com/~r/weblogtoolscollection/UXMP/~3/ZPMQUtU1qSY/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1138:\"<p>Back in February, the folks at <a href=\"http://automattic.com\">Automattic</a> released <a href=\"http://weblogtoolscollection.com/archives/2012/02/16/a-new-starter-theme-from-the-automattic-theme-team/\">a fresh new starter theme</a> for the <a href=\"http://wordpress.org/\">WordPress</a> community, lovingly titled _s.</p>
<p>_s was designed to pave the way forward for some great new themes, but getting started <a href=\"http://themeshaper.com/2012/02/21/getting-started-with-the-underscores-theme/\">was a bit of pain</a>. Enter the new site for the _s starter theme, <a href=\"http://underscores.me\">Underscores.me</a>. Underscores.me not only tells you why you should consider using _s to build you next great theme, it also provides a super-simple way to download your own copy, complete with your new theme&#8217;s name, slug, author, author URL, and description already set!</p>
<p>So, if you&#8217;re itching to get your name out there by launching your first theme, there has never been a better time to give _s a try!</p>
<img src=\"http://feeds.feedburner.com/~r/weblogtoolscollection/UXMP/~4/ZPMQUtU1qSY\" height=\"1\" width=\"1\" />\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 16 Aug 2012 14:00:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"James\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:26;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"WordPress.tv: Christina Dulude: Social Networking With BuddyPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=12519\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"http://wordpress.tv/2012/08/16/christina-dulude-social-networking-with-buddypress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:679:\"<div id=\"v-Zk3QVrg4-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/12519/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/12519/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=12519&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/16/christina-dulude-social-networking-with-buddypress/\"><img alt=\"Social Networking with BuddyPress\" src=\"http://videos.videopress.com/Zk3QVrg4/social-networking-with-buddypress_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 16 Aug 2012 13:21:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordCamp Boston\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:27;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"Weblog Tools Collection: WordPress Theme Releases for 8/15\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"http://weblogtoolscollection.com/?p=11825\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"http://feedproxy.google.com/~r/weblogtoolscollection/UXMP/~3/goRkVM7kfbk/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1722:\"<p><img class=\"alignnone size-full wp-image-11826\" title=\"mochalatte\" src=\"http://weblogtoolscollection.com/wp-content/uploads/2012/08/mochalatte.jpg\" alt=\"\" width=\"150\" height=\"113\" /></p>
<p><a href=\"http://emptynestthemes.com/2012/08/10/4898/\"><strong>Mocha Latte</strong></a> is a total redesign and remake of an old theme by the same name, taking advantage of new design features and elements including using Google web fonts to ensure a consistent look regardless of what fonts the viewer has installed on their computer.</p>
<p><img class=\"alignnone size-full wp-image-11828\" title=\"newsline\" src=\"http://weblogtoolscollection.com/wp-content/uploads/2012/08/newsline.jpg\" alt=\"\" width=\"150\" height=\"110\" /></p>
<p><a href=\"http://www.eblogresources.com/newsline/\"><strong>NewsLine</strong></a> has a custom homepage and elegant look.</p>
<p><img class=\"alignnone size-full wp-image-11829\" title=\"projectar2\" src=\"http://weblogtoolscollection.com/wp-content/uploads/2012/08/projectar2.jpg\" alt=\"\" width=\"150\" height=\"113\" /></p>
<p><a href=\"http://www.arrastheme.com/project-ar2/\"><strong>Project AR2</strong></a> is the re-release of Arras WordPress Theme, with up-to-date standards and new features.</p>
<p><img class=\"alignnone size-full wp-image-11827\" title=\"theronlite\" src=\"http://weblogtoolscollection.com/wp-content/uploads/2012/08/theronlite.jpg\" alt=\"\" width=\"150\" height=\"113\" /></p>
<p><a href=\"http://wordpress.org/extend/themes/theron-lite\"><strong>Theron Lite</strong></a> is an all in one wordpress theme with 3 awesome fonts, slider, background image and easy to use theme option panel.</p>
<img src=\"http://feeds.feedburner.com/~r/weblogtoolscollection/UXMP/~4/goRkVM7kfbk\" height=\"1\" width=\"1\" />\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 16 Aug 2012 01:45:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"James\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:28;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"WordPress.tv: Jesse Friedman: Responsive WordPress Theming\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=12523\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"http://wordpress.tv/2012/08/15/jesse-friedman-responsive-wordpress-theming/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:662:\"<div id=\"v-OVmfW10P-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/12523/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/12523/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=12523&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/15/jesse-friedman-responsive-wordpress-theming/\"><img alt=\"Responsive WordPress Theming\" src=\"http://videos.videopress.com/OVmfW10P/responsive-wordpress-theming_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 16 Aug 2012 01:23:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordCamp Boston\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:29;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"WordPress.tv: Sean Butze: Improving Usability In The WordPress Admin Interface\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=12525\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"http://wordpress.tv/2012/08/15/sean-butze-improving-usability-in-the-wordpress-admin-interface/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:730:\"<div id=\"v-qKBSVoXU-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/12525/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/12525/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=12525&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/15/sean-butze-improving-usability-in-the-wordpress-admin-interface/\"><img alt=\"Improving Usability in the WordPress Admin Interface\" src=\"http://videos.videopress.com/qKBSVoXU/improving-usability-in-the-wordpress-admin-interface_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 15 Aug 2012 19:25:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordCamp Boston\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:30;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"Alex King: Sticky Post Support in Carrington Core\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://alexking.org/?p=14179\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"http://alexking.org/blog/2012/08/15/sticky-post-support-in-carrington-core\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2401:\"<p><a href=\"http://crowdfavorite.com/wordpress/carrington-core/\">Carrington Core</a> hasn&#8217;t changed much over the last few years. It&#8217;s stable, does what it&#8217;s supposed to do, and is extensible via standard <a href=\"http://codex.wordpress.org/Plugin_API\">WordPress APIs</a>. Last night I <a href=\"https://github.com/crowdfavorite/wp-carrington-core/commit/970641da9c4e1c7b0b3bad2827cd11c74eaea732\">merged in code</a> to implement a new/overlooked feature for the first time in quite a while: support for <a href=\"http://codex.wordpress.org/Sticky_Posts\">sticky posts</a>.</p>
<p>This is part of the <i>posts</i> context, so it is applied in the <code>content/</code> and <code>excerpt/</code> directories (as well as in the <i>general</i> context for single post views. Examples:</p>
<ul>
<li><code>content/sticky.php</code></li>
<li><code>header/single-sticky.php</code></li>
</ul>
<p>For now I&#8217;ve set the default priority for this template very high &#8211; right at the top. The thinking is that if you are wanting to style sticky posts in a particular way this is probably something you prefer to other view templates. Of course, the priority is filtered so you can customize it as needed on a per-site basis.</p>
<hr />
<p>Carrington Core is a way of organizing your WordPress theme markup that obviates the need for conditional logic (big if/else statements) in the template files. It&#8217;s a system for building websites with WordPress rather than a parent/child theme  <img src=\"http://alexking.org/wp-content/themes/alexking.org-v3/smilies/ak_scare1.gif\" alt=\":scare:\" class=\"wp-smiley\" />  framework  <img src=\"http://alexking.org/wp-content/themes/alexking.org-v3/smilies/ak_scare2.gif\" alt=\":/scare:\" class=\"wp-smiley\" />  for building themes. Years ago we realized that conditional code in templates was the main cause of headaches in sites that we were maintaining. Carrington Core was built as the solution (and it&#8217;s worked beautifully).</p>
<p>I know that the documentation around Carrington Core is laughably bad. I&#8217;m hoping we&#8217;ll be able to improve that soon (<a href=\"http://alexking.org/blog/2012/08/09/hiring-devs-project-manager-denver\">we&#8217;re hiring</a>!). So many ideas and projects, so little time&#8230; In the meantime, grab the code or contribute on <a href=\"http://github.com/crowdfavorite/wp-carrington-core\">GitHub</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 15 Aug 2012 16:41:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Alex\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:31;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"WordPress.tv: George Stephanis: Old, New, Borrowed & Blue: Updating “Kubrick” to CSS3/HTML5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=12527\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:100:\"http://wordpress.tv/2012/08/15/george-stephanis-old-new-borrowed-blue-updating-kubrick-to-css3html5/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:753:\"<div id=\"v-2XKiHPoe-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/12527/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/12527/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=12527&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/15/george-stephanis-old-new-borrowed-blue-updating-kubrick-to-css3html5/\"><img alt=\"Old, New, Borrowed & Blue: Updateing &#8220;Kubric&#8221; to CSS3/Html5\" src=\"http://videos.videopress.com/2XKiHPoe/old-new-borrowed-blue-updatein-kubric-to-css3-html5_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 15 Aug 2012 13:26:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordCamp Boston\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:32;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"WordPress.tv: Erick Hitter: Moving Beyond The Codex: Learning WordPress From Itself\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=12529\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"http://wordpress.tv/2012/08/14/erick-hitter-moving-beyond-the-codex-learning-wordpress-from-itself/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:739:\"<div id=\"v-FnFY5Fva-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/12529/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/12529/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=12529&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/14/erick-hitter-moving-beyond-the-codex-learning-wordpress-from-itself/\"><img alt=\"Moving Beyond the Codex: Learning WordPress From Itself\" src=\"http://videos.videopress.com/FnFY5Fva/moving-beyond-the-codex-learning-wordpress-from-itself_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 15 Aug 2012 01:27:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordCamp Boston\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:33;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"WordPress.tv: Luke Gedeon: JavaScript Actions And Filters in Core: Hooked On JavaScript Works For Me!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=12532\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:116:\"http://wordpress.tv/2012/08/14/luke-gedeon-javascript-actions-and-filters-in-core-hooked-on-javascript-works-for-me/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:723:\"<div id=\"v-L8ufqBHD-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/12532/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/12532/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=12532&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/14/luke-gedeon-javascript-actions-and-filters-in-core-hooked-on-javascript-works-for-me/\"><img alt=\"JavaScript Actions and Filters in Core\" src=\"http://videos.videopress.com/L8ufqBHD/javascript-actions-and-filters-in-core_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 14 Aug 2012 19:29:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordCamp Boston\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:34;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Matt: Pixel Perfect\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"http://ma.tt/?p=41546\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"http://ma.tt/2012/08/pixel-perfect/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:190:\"<p>John Gruber has <a href=\"http://daringfireball.net/2012/08/pixel_perfect\">a great essay on the paradigm shift (yes I just said that) of the Retina Macbook Pro</a>. Highly recommended.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 14 Aug 2012 16:05:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:35;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"Weblog Tools Collection: WordPress for iOS Redesigned\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"http://weblogtoolscollection.com/?p=11822\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"http://feedproxy.google.com/~r/weblogtoolscollection/UXMP/~3/tDN7Qw40vFA/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:914:\"<p>As mentioned during <a href=\"http://weblogtoolscollection.com/archives/2012/08/08/the-state-of-the-word-in-2012/\">the State of the Word</a>, the <a href=\"http://ios.wordpress.org/\">WordPress for iOS app</a> has received a major redesign with <a href=\"http://ios.wordpress.org/2012/08/09/version-3-1/\">the release of version 3.1</a>.</p>
<p>Among several bug fixes, this new release includes an entirely redesigned look with sliding panels, a new sidebar navigation panel, post format support, improved stats, and quick photo and post preview support for the iPad.</p>
<p>If you have an iOS device and haven&#8217;t tried the app yet, now&#8217;s the time to give it a shot, and feel free to <a href=\"http://make.wordpress.org/mobile/\">lend a hand in its development</a>. It is open source after all!</p>
<img src=\"http://feeds.feedburner.com/~r/weblogtoolscollection/UXMP/~4/tDN7Qw40vFA\" height=\"1\" width=\"1\" />\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 14 Aug 2012 14:00:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"James\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:36;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:115:\"WordPress.tv: Stephanie Schechter and Al Caldarone: It’s Goota Be Easier…Simplifying The Theme Building Process\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=12463\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:123:\"http://wordpress.tv/2012/08/14/stephanie-schechter-al-caldarone-its-goota-be-easier-simplifying-the-theme-building-process/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:785:\"<div id=\"v-QADKe4RL-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/12463/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/12463/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=12463&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/14/stephanie-schechter-al-caldarone-its-goota-be-easier-simplifying-the-theme-building-process/\"><img alt=\"It&#8217;s Gotta Be Easier &#8211; Simplifying the Theme Building Process\" src=\"http://videos.videopress.com/QADKe4RL/its-gotta-be-easier-simplifying-the-theme-building-process_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 14 Aug 2012 13:49:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordCamp Boston\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:37;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"BuddyPress: BuddyPress 1.6.1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"http://buddypress.org/?p=1993\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"http://buddypress.org/2012/08/buddypress-1-6-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1129:\"<p>BuddyPress 1.6.1 is now available! This version contains fixes for a few edge case bugs that came up after BuddyPress 1.6 was released last week, including: full compatibility with Multisite installations using <code>NOBLOGREDIRECT</code>; a regression in one of our avatar functions that caused avatars to be malformed in some themes; and a load order issue that caused fatal errors with some legacy themes. You can check out the changelog for the release <a href=\"http://buddypress.trac.wordpress.org/query?status=closed&group=resolution&milestone=1.6.1\">at our bug tracker</a>.</p>
<p>BP 1.6.1 is a recommended upgrade for all installations running BuddyPress 1.6. Have you been holding off on upgrading to 1.6? We&#8217;ve got you covered: the <a href=\"http://codex.buddypress.org/version/1-6/\">BP 1.6 section of the BuddyPress Codex</a> is full of helpful information that&#8217;ll help you get your site up to date.</p>
<p>Upgrade to BuddyPress 1.6.1 from your WordPress plugin updater, or download directly from <a href=\"http://wordpress.org/extend/plugins/buddypress\">the wordpress.org plugin repository</a> today!</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 14 Aug 2012 01:30:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Boone Gorges\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:38;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:107:\"WordPress.tv: K. Adam White: Why We Can Have Nice Things: The Future of Front-end Development And WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=12480\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:122:\"http://wordpress.tv/2012/08/13/k-adam-white-why-we-can-have-nice-things-the-future-of-front-end-development-and-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:808:\"<div id=\"v-pyqytlRG-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/12480/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/12480/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=12480&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/13/k-adam-white-why-we-can-have-nice-things-the-future-of-front-end-development-and-wordpress/\"><img alt=\"Why We Can have Nice Things- The Future of Front-end Development and WordPress\" src=\"http://videos.videopress.com/pyqytlRG/why-we-can-have-nice-things-the-future-of-front-end-development-and-wordpress_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 14 Aug 2012 01:00:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordCamp Boston\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:39;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"WordPress.tv: Ben Metcalfe: Optimizing WordPress For Speed And Scale\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=12482\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"http://wordpress.tv/2012/08/13/ben-metcalfe-optimizing-wordpress-for-speed-and-scale/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:696:\"<div id=\"v-olbJckE5-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/12482/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/12482/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=12482&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/13/ben-metcalfe-optimizing-wordpress-for-speed-and-scale/\"><img alt=\"Optimizing WordPress for Speed and Scale\" src=\"http://videos.videopress.com/olbJckE5/optimizing-wordpress-for-speed-and-scale_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 13 Aug 2012 19:01:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordCamp Boston\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:40;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"Weblog Tools Collection: WordPress Plugin Releases for 8/13\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"http://weblogtoolscollection.com/?p=11813\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"http://feedproxy.google.com/~r/weblogtoolscollection/UXMP/~3/K4bFWgN3eRY/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1889:\"<h3>New plugins</h3>
<p><a href=\"http://wordpress.org/extend/plugins/design-approval-system/\"><strong>Design Approval System</strong></a> will help streamline the process of getting designs (or photos) approved by clients.</p>
<p><a href=\"http://wordpress.org/extend/plugins/web-testimonials/\"><strong>Web Testimonials</strong></a> allows you to manage testimonials placed on your site.</p>
<h3>Updated plugins</h3>
<p><a href=\"http://wordpress.org/extend/plugins/backwpup/\"><strong>BackWPup</strong></a> allows you to backup your WordPress database, files, and more.</p>
<p><a href=\"http://blog.milandinic.com/wordpress/plugins/bbpress-digest/\"><strong>bbPress Digest</strong></a> enables sending of a digests with a list of topics active on a <a href=\"http://bbpress.org\">bbPress</a>-powered forum in the last 24 hours or 7 days.</p>
<p><a href=\"http://simple-press.com/\"><strong>Simple:Press Forum</strong></a> is a feature-rich forum plugin.</p>
<p><a href=\"http://www.jonbishop.com/downloads/wordpress-plugins/socialize/\"><strong>Socialize</strong></a> gives publishers the ability to selectively add actionable social media/social bookmarking buttons to their posts without having to edit the meta keys/values like most other plugins require.</p>
<p><a href=\"http://ajaydsouza.com/wordpress/plugins/top-10/\"><strong>Top 10</strong></a> allows you to track daily and total visits on your blog posts and display the count as well as popular posts.</p>
<p><a href=\"http://www.tcbarrett.com/wordpress-plugins/wp-glossary/\"><strong>WP Glossary</strong></a> allows you to create your own glossary of hot-linked terms.</p>
<p><a href=\"http://wpmarketplaceplugin.com/\"><strong>WP Marketplace</strong></a> will convert your WordPress site into a marketplace in just a few minutes.</p>
<img src=\"http://feeds.feedburner.com/~r/weblogtoolscollection/UXMP/~4/K4bFWgN3eRY\" height=\"1\" width=\"1\" />\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 13 Aug 2012 14:00:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"James\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:41;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"WordPress.tv: Sam Hotchkiss: WordPress As A Web App Framework\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=12484\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"http://wordpress.tv/2012/08/13/sam-hotchkiss-wordpress-as-a-web-app-frameworkd/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:674:\"<div id=\"v-sDL8DEWi-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/12484/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/12484/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=12484&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/13/sam-hotchkiss-wordpress-as-a-web-app-frameworkd/\"><img alt=\"WordPress as a Web App Framework\" src=\"http://videos.videopress.com/sDL8DEWi/wordpress-as-a-web-app-framework_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 13 Aug 2012 13:02:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordCamp Boston\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:42;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"WordPress.tv: Jon Heller: Avoiding Disaster: Setting Up Your Local Development Environment\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=12475\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:106:\"http://wordpress.tv/2012/08/12/jon-heller-avoiding-disaster-setting-up-your-local-development-environment/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:771:\"<div id=\"v-ckaZQ89W-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/12475/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/12475/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=12475&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/12/jon-heller-avoiding-disaster-setting-up-your-local-development-environment/\"><img alt=\"Avoiding Disaster &#8211; Setting Up Your Local Development Environment\" src=\"http://videos.videopress.com/ckaZQ89W/avoiding-disaster-setting-up-your-local-development-environment_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 13 Aug 2012 01:56:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordCamp Boston\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:43;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"WordPress.tv: Derek Christensen: From PSD to WordPress Theme: Bringing Designs To Life\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=12477\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:102:\"http://wordpress.tv/2012/08/12/derek-christensen-from-psd-to-wordpress-theme-bringing-designs-to-life/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:738:\"<div id=\"v-illP0GZV-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/12477/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/12477/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=12477&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/12/derek-christensen-from-psd-to-wordpress-theme-bringing-designs-to-life/\"><img alt=\"From PSD to WordPress Theme- Bringing Designs to Life\" src=\"http://videos.videopress.com/illP0GZV/from-psd-to-wordpress-theme-bringing-designs-to-life_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 12 Aug 2012 19:59:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordCamp Boston\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:44;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"WordPress.tv: Jon Bishop: Creating Content With Shortcodes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=12478\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"http://wordpress.tv/2012/08/12/jon-bishop-creating-content-with-shortcodes-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:672:\"<div id=\"v-MgfFF9YT-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/12478/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/12478/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=12478&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/12/jon-bishop-creating-content-with-shortcodes-2/\"><img alt=\"Creating Content with Shortcodes\" src=\"http://videos.videopress.com/MgfFF9YT/creating-content-with-shortcodes_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 12 Aug 2012 13:58:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordCamp Boston\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:45;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:38:\"WordPress.tv: Alex Mills: Plugin Q & A\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=12923\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"http://wordpress.tv/2012/08/11/alex-mills-plugin-q-a/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:634:\"<div id=\"v-pAEh8NTT-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/12923/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/12923/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=12923&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/11/alex-mills-plugin-q-a/\"><img alt=\"plugin q and a alex mills\" src=\"http://videos.videopress.com/pAEh8NTT/plugin-q-and-a-alex-mills_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 12 Aug 2012 01:29:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Leah\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:46;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"WordPress.tv: Ramesh Kumar: Future of SEO\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=12472\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"http://wordpress.tv/2012/08/11/rames-kumar-future-of-seo/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:614:\"<div id=\"v-wHWpkwlI-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/12472/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/12472/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=12472&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/11/rames-kumar-future-of-seo/\"><img alt=\"Future of SEO\" src=\"http://videos.videopress.com/wHWpkwlI/future-of-seo_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 11 Aug 2012 19:55:10 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordCamp Boston\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:47;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"Weblog Tools Collection: WordPress Theme Releases for 8/11\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"http://weblogtoolscollection.com/?p=11803\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"http://feedproxy.google.com/~r/weblogtoolscollection/UXMP/~3/ro8IRGC7rjM/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1815:\"<p><img class=\"alignnone size-full wp-image-11804\" title=\"crucial\" src=\"http://weblogtoolscollection.com/wp-content/uploads/2012/08/crucial.jpg\" alt=\"\" width=\"150\" height=\"113\" /></p>
<p><a href=\"http://wordpress.org/extend/themes/crucial\"><strong>Crucial</strong></a> is a friendly purple design for your blog.</p>
<p><img class=\"alignnone size-full wp-image-11805\" title=\"d5businessline\" src=\"http://weblogtoolscollection.com/wp-content/uploads/2012/08/d5businessline.jpg\" alt=\"\" width=\"150\" height=\"113\" /></p>
<p><a href=\"http://wordpress.org/extend/themes/d5-business-line\"><strong>D5 Business Line</strong></a> is a theme for small businesses.</p>
<p><img class=\"alignnone size-full wp-image-11806\" title=\"gleam\" src=\"http://weblogtoolscollection.com/wp-content/uploads/2012/08/gleam.jpg\" alt=\"\" width=\"150\" height=\"113\" /></p>
<p><a href=\"http://emptynestthemes.com/2012/08/04/gleam-wordpress-blog-theme/\"><strong>Gleam</strong></a> is a warm, natural feeling two column theme that would suit any site or blog.</p>
<p><img class=\"alignnone size-full wp-image-11807\" title=\"gridiculous\" src=\"http://weblogtoolscollection.com/wp-content/uploads/2012/08/gridiculous.jpg\" alt=\"\" width=\"150\" height=\"112\" /></p>
<p><a href=\"http://wordpress.org/extend/themes/gridiculous\"><strong>Gridiculous</strong></a> is a lightweight HTML5 responsive theme based on the grid layout boilerplate of the same name.</p>
<p><img class=\"alignnone size-full wp-image-11808\" title=\"surface\" src=\"http://weblogtoolscollection.com/wp-content/uploads/2012/08/surface.jpg\" alt=\"\" width=\"150\" height=\"113\" /></p>
<p><a href=\"http://wordpress.org/extend/themes/surface\"><strong>Surface</strong></a> is a simple and clean theme.</p>
<img src=\"http://feeds.feedburner.com/~r/weblogtoolscollection/UXMP/~4/ro8IRGC7rjM\" height=\"1\" width=\"1\" />\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 11 Aug 2012 14:15:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"James\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:48;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"WordPress.tv: Matthew Dorman: Management Strategies for Successful WordPress Projects\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=12467\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:102:\"http://wordpress.tv/2012/08/11/matthew-dorman-management-strategies-for-successful-wordpress-projects/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:743:\"<div id=\"v-LGLIJysL-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/12467/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/12467/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=12467&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/11/matthew-dorman-management-strategies-for-successful-wordpress-projects/\"><img alt=\"Management Strategies for Successful WordPress Projects\" src=\"http://videos.videopress.com/LGLIJysL/management-strategies-for-successful-wordpress-projects_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 11 Aug 2012 13:52:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"WordCamp Boston\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:49;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"WordPress.tv: Nancy Wirsig McClure: Second Year Slump\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://wordpress.tv/?p=12882\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"http://wordpress.tv/2012/08/10/nancy-wirsig-mcclure-second-year-slump/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:647:\"<div id=\"v-Xs3yLA3d-1\" class=\"video-player\">
</div>
<br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/wptv.wordpress.com/12882/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/wptv.wordpress.com/12882/\" /></a> <img alt=\"\" border=\"0\" src=\"http://stats.wordpress.com/b.gif?host=wordpress.tv&blog=5089392&post=12882&subd=wptv&ref=&feed=1\" width=\"1\" height=\"1\" /><div><a href=\"http://wordpress.tv/2012/08/10/nancy-wirsig-mcclure-second-year-slump/\"><img alt=\"nancy-second year slump\" src=\"http://videos.videopress.com/Xs3yLA3d/nancy-second-year-slump_std.original.jpg\" width=\"160\" height=\"120\" /></a></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 11 Aug 2012 01:41:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Leah\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";a:9:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Tue, 21 Aug 2012 02:39:30 GMT\";s:12:\"content-type\";s:8:\"text/xml\";s:14:\"content-length\";s:5:\"75957\";s:10:\"connection\";s:5:\"close\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:13:\"last-modified\";s:29:\"Tue, 21 Aug 2012 02:30:17 GMT\";s:4:\"x-nc\";s:11:\"HIT luv 138\";s:13:\"accept-ranges\";s:5:\"bytes\";}s:5:\"build\";s:14:\"20111015034325\";}','no');
INSERT INTO `{prefix_}options` VALUES ('172','_transient_timeout_feed_mod_867bd5c64f85878d03a060509cd2f92c','1345559972','no');
INSERT INTO `{prefix_}options` VALUES ('173','_transient_feed_mod_867bd5c64f85878d03a060509cd2f92c','1345516772','no');
INSERT INTO `{prefix_}options` VALUES ('174','_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0','1345559973','no');
INSERT INTO `{prefix_}options` VALUES ('175','_transient_dash_aa95765b5cc111c56d5993d476b1c2f0','<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://wordpress.tv/2012/08/20/jake-goldman-enterprise-class-wordpress/\' title=\' [&hellip;]\'>WordPress.tv: Jake Goldman: Enterprise-class WordPress</a></li><li><a class=\'rsswidget\' href=\'http://wordpress.tv/2012/08/20/shane-pearlman-the-art-science-of-premium/\' title=\' [&hellip;]\'>WordPress.tv: Shane Pearlman: The Art &amp; Science of Premium</a></li><li><a class=\'rsswidget\' href=\'http://wordpress.tv/2012/08/20/kelli-wise-using-wordpress-as-your-companys-website/\' title=\' [&hellip;]\'>WordPress.tv: Kelli Wise: Using WordPress as Your Company’s Website</a></li><li><a class=\'rsswidget\' href=\'http://wordpress.tv/2012/08/20/chris-cochran-going-mobile-from-960-to-320/\' title=\' [&hellip;]\'>WordPress.tv: Chris Cochran: Going Mobile: From 960 to 320</a></li><li><a class=\'rsswidget\' href=\'http://wordpress.tv/2012/08/20/mark-root-wiley-and-christine-winckler-wysi-wha-taming-the-wordpress-editor/\' title=\' [&hellip;]\'>WordPress.tv: Mark Root-Wiley and Christine Winckler: WYSI-WHA!?! Taming the WordPress Editor</a></li></ul></div>','no');
INSERT INTO `{prefix_}options` VALUES ('176','_transient_timeout_feed_a5420c83891a9c88ad2a4f04584a5efc','1345559979','no');
INSERT INTO `{prefix_}options` VALUES ('177','_transient_feed_a5420c83891a9c88ad2a4f04584a5efc','a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"
	
\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:72:\"
		
		
		
		
		
		
				

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		

	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"WordPress Plugins » View: Most Popular\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://wordpress.org/extend/plugins/browse/popular/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"WordPress Plugins » View: Most Popular\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 21 Aug 2012 02:31:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"http://bbpress.org/?v=1.1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:15:{i:0;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Google XML Sitemaps\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"http://wordpress.org/extend/plugins/google-sitemap-generator/#post-132\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 09 Mar 2007 22:31:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"132@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"This plugin will generate a special XML sitemap which will help search engines to better index your blog.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Arne\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"WordPress SEO by Yoast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"http://wordpress.org/extend/plugins/wordpress-seo/#post-8321\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 01 Jan 2009 20:34:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"8321@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:131:\"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using the WordPress SEO plugin by Yoast.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Joost de Valk\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Contact Form 7\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"http://wordpress.org/extend/plugins/contact-form-7/#post-2141\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 02 Aug 2007 12:45:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"2141@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"Just another contact form plugin. Simple but flexible.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Takayuki Miyoshi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"All in One SEO Pack\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"http://wordpress.org/extend/plugins/all-in-one-seo-pack/#post-753\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 30 Mar 2007 20:08:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"753@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"WordPress SEO plugin to automatically optimize your Wordpress blog for Search Engines.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"uberdose\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"Jetpack by WordPress.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"http://wordpress.org/extend/plugins/jetpack/#post-23862\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 Jan 2011 02:21:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"23862@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"Supercharge your WordPress site with powerful features previously only available to WordPress.com users.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"Michael Adams (mdawaffe)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Akismet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"http://wordpress.org/extend/plugins/akismet/#post-15\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 09 Mar 2007 22:11:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"15@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"Akismet checks your comments against the Akismet web service to see if they look like spam or not.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Matt Mullenweg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"gtrans\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"http://wordpress.org/extend/plugins/gtrans/#post-30417\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 22 Sep 2011 11:48:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"30417@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"Make your website available to the world using Google Translate\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"kikadev\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"NextGEN Gallery\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"http://wordpress.org/extend/plugins/nextgen-gallery/#post-1169\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 23 Apr 2007 20:08:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"1169@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:109:\"NextGEN Gallery is a fully integrated image gallery plugin for WordPress with dozens of options and features.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Alex Rabe\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"WordPress Importer\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"http://wordpress.org/extend/plugins/wordpress-importer/#post-18101\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 May 2010 17:42:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"18101@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Brian Colinger\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"SEO Ultimate\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"http://wordpress.org/extend/plugins/seo-ultimate/#post-10779\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 21 May 2009 16:15:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"10779@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:149:\"This all-in-one SEO plugin gives you control over title tags, noindex, meta tags, Open Graph, slugs, canonical, autolinks, 404 errors, rich snippets,\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"SEO Design Solutions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"Fast Secure Contact Form\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"http://wordpress.org/extend/plugins/si-contact-form/#post-12636\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 27 Aug 2009 01:20:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"12636@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:131:\"A super customizable contact form that lets your visitors send you email. Blocks all automated spammers. No templates to mess with.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Mike Challis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Spam Free WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://wordpress.org/extend/plugins/spam-free-wordpress/#post-27649\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 21 Jun 2011 10:41:14 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"27649@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:113:\"Todd Lahman&#039;s comment spam blocking plugin that blocks 100% of the automated spam with zero false positives.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Todd Lahman\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"WP Super Cache\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"http://wordpress.org/extend/plugins/wp-super-cache/#post-2572\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 05 Nov 2007 11:40:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"2572@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"A very fast caching engine for WordPress that produces static html files.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Donncha O Caoimh\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"BackWPup\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"http://wordpress.org/extend/plugins/backwpup/#post-11392\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 23 Jun 2009 11:31:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"11392@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"WordPress Backup and more...\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Daniel Huesken\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:30:\"
			
			
			
			
			
			
					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"BuddyPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"http://wordpress.org/extend/plugins/buddypress/#post-10314\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 23 Apr 2009 17:48:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"10314@http://wordpress.org/extend/plugins/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:108:\"Social networking in a box. Build a social network for your company, school, sports team or niche community.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Andy Peatling\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:52:\"http://wordpress.org/extend/plugins/rss/view/popular\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";a:7:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Tue, 21 Aug 2012 02:39:40 GMT\";s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:10:\"connection\";s:5:\"close\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:13:\"last-modified\";s:29:\"Fri, 09 Mar 2007 22:31:32 GMT\";s:4:\"x-nc\";s:11:\"HIT luv 139\";}s:5:\"build\";s:14:\"20111015034325\";}','no');
INSERT INTO `{prefix_}options` VALUES ('178','_transient_timeout_feed_mod_a5420c83891a9c88ad2a4f04584a5efc','1345559979','no');
INSERT INTO `{prefix_}options` VALUES ('179','_transient_feed_mod_a5420c83891a9c88ad2a4f04584a5efc','1345516779','no');
INSERT INTO `{prefix_}options` VALUES ('180','_site_transient_timeout_wporg_theme_feature_list','1345528997','yes');
INSERT INTO `{prefix_}options` VALUES ('181','_site_transient_wporg_theme_feature_list','a:5:{s:6:\"Colors\";a:15:{i:0;s:5:\"black\";i:1;s:4:\"blue\";i:2;s:5:\"brown\";i:3;s:4:\"gray\";i:4;s:5:\"green\";i:5;s:6:\"orange\";i:6;s:4:\"pink\";i:7;s:6:\"purple\";i:8;s:3:\"red\";i:9;s:6:\"silver\";i:10;s:3:\"tan\";i:11;s:5:\"white\";i:12;s:6:\"yellow\";i:13;s:4:\"dark\";i:14;s:5:\"light\";}s:7:\"Columns\";a:6:{i:0;s:10:\"one-column\";i:1;s:11:\"two-columns\";i:2;s:13:\"three-columns\";i:3;s:12:\"four-columns\";i:4;s:12:\"left-sidebar\";i:5;s:13:\"right-sidebar\";}s:5:\"Width\";a:2:{i:0;s:11:\"fixed-width\";i:1;s:14:\"flexible-width\";}s:8:\"Features\";a:18:{i:0;s:8:\"blavatar\";i:1;s:10:\"buddypress\";i:2;s:17:\"custom-background\";i:3;s:13:\"custom-colors\";i:4;s:13:\"custom-header\";i:5;s:11:\"custom-menu\";i:6;s:12:\"editor-style\";i:7;s:21:\"featured-image-header\";i:8;s:15:\"featured-images\";i:9;s:20:\"front-page-post-form\";i:10;s:19:\"full-width-template\";i:11;s:12:\"microformats\";i:12;s:12:\"post-formats\";i:13;s:20:\"rtl-language-support\";i:14;s:11:\"sticky-post\";i:15;s:13:\"theme-options\";i:16;s:17:\"threaded-comments\";i:17;s:17:\"translation-ready\";}s:7:\"Subject\";a:3:{i:0;s:7:\"holiday\";i:1;s:13:\"photoblogging\";i:2;s:8:\"seasonal\";}}','yes');
INSERT INTO `{prefix_}options` VALUES ('183','theme_mods_twentyeleven','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1345517067;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:9:\"sidebar-4\";a:0:{}s:9:\"sidebar-5\";a:0:{}}}}','yes');
INSERT INTO `{prefix_}options` VALUES ('184','current_theme','P2','yes');
INSERT INTO `{prefix_}options` VALUES ('185','theme_mods_themolio','a:2:{i:0;b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1345517573;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `{prefix_}options` VALUES ('186','theme_switched','','yes');
INSERT INTO `{prefix_}options` VALUES ('188','theme_mods_responsive','a:2:{i:0;b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1345518171;s:4:\"data\";a:11:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"main-sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"right-sidebar\";N;s:12:\"left-sidebar\";N;s:17:\"left-sidebar-half\";N;s:18:\"right-sidebar-half\";N;s:13:\"home-widget-1\";N;s:13:\"home-widget-2\";N;s:13:\"home-widget-3\";N;s:14:\"gallery-widget\";N;s:15:\"colophon-widget\";N;}}}','yes');
INSERT INTO `{prefix_}options` VALUES ('191','theme_mods_p2','a:1:{i:0;b:0;}','yes');
INSERT INTO `{prefix_}options` VALUES ('192','prologue_show_titles','1','yes');
INSERT INTO `{prefix_}options` VALUES ('193','p2_manager','a:1:{s:10:\"db_version\";i:1;}','yes');
INSERT INTO `{prefix_}options` VALUES ('194','_site_transient_update_themes','O:8:\"stdClass\":3:{s:12:\"last_checked\";i:1345518196;s:7:\"checked\";a:3:{s:2:\"p2\";s:5:\"1.4.2\";s:12:\"twentyeleven\";s:3:\"1.4\";s:9:\"twentyten\";s:3:\"1.4\";}s:8:\"response\";a:0:{}}','yes');
-- 
-- 表的结构 `wp_postmeta`
-- 
CREATE TABLE `{prefix_}postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
-- -- 
-- 表的结构 `wp_posts`
-- 
CREATE TABLE `{prefix_}posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
-- -- 
-- 表的结构 `wp_term_relationships`
-- 
CREATE TABLE `{prefix_}term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- -- 
-- 表的结构 `wp_term_taxonomy`
-- 
CREATE TABLE `{prefix_}term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
-- -- 
-- 表的结构 `wp_terms`
-- 
CREATE TABLE `{prefix_}terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
-- -- 
-- 表的结构 `wp_usermeta`
-- 
CREATE TABLE `{prefix_}usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
-- -- 
-- 表的结构 `wp_users`
-- 
CREATE TABLE `{prefix_}users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
-- 