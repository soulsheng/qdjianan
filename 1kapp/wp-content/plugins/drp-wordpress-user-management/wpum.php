<?php

/*
  Plugin Name: DRP Wordpress User Management
  Plugin URI: http://www.directresponsepublishing.com/
  Description: DRP Wordpress User Management is a Wordpress user management plugin which allows you to manage and keep track of all registered users. It let's you check how many people have signed up daily, weekly, monthly and yearly, when they last logged in, if they are logged in, how many times they have logged in, their ip addresses, you are able to ban and unban users by user and by ips and more. It is a total user management tool.
  Version: 1.2
  Author: Direct Response Publishing
  Author URI: http://www.directresponsepublishing.com/
Copyright 2011 Direct Response Publishing  (email : contact@directresponsepublishing.com)

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 */

//only run if there is no collision with other classes 
if (!class_exists('WPUM'))
{
    class WPUM {
		
		const VERSION = '1.2';
		const STATUS_ACTIVE = 1;
		const STATUS_BANNED = -1;
		const DEFAULT_INTERVAL = 2;
		const DEFAULT_BAN_MESSAGE = 'You have been banned.';
		
		private $_db_prefix;
		
		public function init()
		{
			global $wpdb;
			
			$this->_db_prefix = $wpdb->prefix.'wpum_';
			
			add_action('init', array(&$this, 'add_scripts_and_styles'));
			add_action('init', array(&$this, 'add_online_user'));
			
			if(is_admin())
			{
				register_activation_hook(__FILE__, array(&$this, 'activate'));
				
				add_action('admin_init', array(&$this, 'activate'));
				add_action('admin_menu', array(&$this, 'add_admin_menu'));
				add_action('wp_ajax_edit_user_status', array(&$this, 'edit_user_status'));
				add_action('wp_ajax_get_user_logins', array(&$this, 'get_user_logins'));
                add_action('wp_ajax_ping_server', array(&$this, 'add_online_user_ajax'));
			}
			
            add_filter('wp_authenticate_user', array(&$this, 'check_user_status'));
			add_action('wp_login', array(&$this, 'save_user_login'));
			add_action('user_register', array(&$this, 'save_user_default_settings'));
		}

		public function save_banned_ip()
		{
			global $wpdb;
			
			$sql = "INSERT IGNORE INTO 
						".$this->_db_prefix."banned_ips
					SET 
						id = '%s'";
			
			$wpdb->query($wpdb->prepare($sql, $ip));
		}
		
		public function save_user_status($user_id, $status = self::STATUS_ACTIVE)
		{
			update_user_meta($user_id, 'wpum_user_status', $status);	
		}
		
		public function save_user_default_settings($user_id)
		{
			if($this->_check_if_ip_is_found($_SERVER['REMOTE_ADDR']))
			{
				$status = self::STATUS_BANNED;
			}
			else
			{
				$status = self::STATUS_ACTIVE;
			}
			
			$this->save_user_status($user_id, $status);
		}
		
		public function save_user_login($username)
		{
			global $wpdb;
			
			$time = time();
			$ip = $_SERVER['REMOTE_ADDR'];
			
			$user = get_user_by('login', $username);
			
			$insert_data = array(
				'user_id' => $user->ID,
				'login_date' => $time,
				'login_ip' => $ip
			);
			
			$wpdb->insert($this->_db_prefix.'logins', $insert_data);
			
			$data = get_user_meta($user->ID, 'wpum_user_login_details', TRUE);
			
			if(!empty($data))
			{
				$data['count'] = $data['count'] + 1;
			}
			else
			{
				$data = array();
				$data['count'] = 1;
			}
			
			$data['ip'] = $ip;
			$data['date'] = $time;
			
			update_user_meta($user->ID, 'wpum_user_login_details', $data);	
		}
		
		private function _check_if_ip_is_found($ip)
		{
			global $wpdb;
						
			$sql = "SELECT 
						COUNT(*) as count
					FROM
						".$this->_db_prefix."banned_ips
					WHERE
						banned_ip = '%s'";
			
			return ($wpdb->get_var($wpdb->prepare($sql, $ip)) > 0);
		}
		
		public function check_user_status($user)
		{
            if(!is_wp_error($user))
            {
                $status = get_user_meta($user->ID, 'wpum_user_status', TRUE);
					
                if($status == self::STATUS_BANNED)
                {
                    $remove_action = TRUE;
                }
                else
                {
                    if($this->_check_if_ip_is_found($_SERVER['REMOTE_ADDR']))
                    {
                        $remove_action = TRUE;
                    }

                    if($status != self::STATUS_ACTIVE)
                    {
                        if(isset($remove_action))
                        {
                            $this->save_user_status($user->ID, self::STATUS_BANNED);
                        }
                        else
                        {
                            $this->save_user_status($user->ID, self::STATUS_ACTIVE);
                        }
                    }
                }

                if(isset($remove_action))
                {
                    $user = new WP_Error( 'denied', get_option('wpum_ban_message'));
                }
            }
            
            return $user;
		}
		
		public function add_scripts_and_styles()
		{
			wp_register_script('wpum_admin', plugins_url('js/admin.js', __FILE__), array('jquery'));
			wp_register_script('wpum_user', plugins_url('js/user.js', __FILE__), array('jquery'));
			wp_register_script('wpum_datepicker', plugins_url('js/datepicker/datepicker.js', __FILE__), array('jquery'));
			wp_register_style('wpum_admin', plugins_url('css/admin.css', __FILE__));
			wp_register_style('wpum_datepicker', plugins_url('js/datepicker/style.css', __FILE__));
            
			if(is_user_logged_in())
			{
                if(current_user_can('manage_options'))
                {
                    if(is_admin() AND !empty($_GET['page']) AND strpos($_GET['page'], 'drp-wpum') !== FALSE)
                    {
                        wp_enqueue_style('wpum_admin');
                        wp_enqueue_style('wpum_datepicker');

                        $data = array(
                            'statusActive' => self::STATUS_ACTIVE,
                            'statusBanned' => self::STATUS_BANNED,
                            'nonce' =>  wp_create_nonce("edit_wpum_user_status")
                        );

                        wp_localize_script('wpum_admin', 'WPUMData', $data);
                        wp_enqueue_script('wpum_admin');
                        wp_enqueue_script('wpum_datepicker');

                    }
                }
                else
                {
                    $data = array(
                        'interval' => (get_option('wpum_online_interval', self::DEFAULT_INTERVAL) * 60 * 1000),
                        'nonce' =>  wp_create_nonce("add_online_user"),
                        'ajaxurl' => admin_url('admin-ajax.php')
                    );

                    wp_localize_script('wpum_user', 'PingServerData', $data);
                    wp_enqueue_script('wpum_user');
                }
			}
		}
		
		public function edit_user_status()
		{
			check_ajax_referer('edit_wpum_user_status', 'security');
			
			if(current_user_can('manage_options') AND ($_POST['status'] == self::STATUS_ACTIVE OR $_POST['status'] == self::STATUS_BANNED))
			{
				$this->save_user_status($_POST['user_id'], $_POST['status']);
			
				if(get_option('wpum_banunban_user_ips') == 1)
				{
					global $wpdb;
					
					$sql = "SELECT DISTINCT(login_ip) FROM ".$this->_db_prefix."logins WHERE user_id = %d";
					
					$ips =  $wpdb->get_col($wpdb->prepare($sql, $_POST['user_id']));
					
					if($ips)
					{
						if($_POST['status'] == self::STATUS_BANNED)
						{
							$this->_ban_ips($ips);
						}
						else
						{
							$this->_delete_ips($ips);
						}
					}
				}
				
				echo '1';
			}
			else
			{
				echo '0';
			}
			
			exit;
		}
		
		public function get_user_logins()
		{
			if(current_user_can('manage_options'))
			{
				global $wpdb;
				
				$sql = "SELECT 
							DISTINCT(login_ip) 
						FROM "
							.$this->_db_prefix."logins 
						WHERE 
							user_id = %d";
							
				$ips = $wpdb->get_results($wpdb->prepare($sql, $_GET['user_id']));
				
				include('views/admin/userip-list.php');
			}
			else
			{
				echo '0';
			}
			
			exit;
		}

		
		public function activate()
		{
			$version = get_option('wpum_version', FALSE);
			
			if(self::VERSION != $version) 
			{
				require_once( ABSPATH . 'wp-admin/includes/upgrade.php' );
				
                $sql = '';
                
				//create banned ip's table
				$sql = "CREATE TABLE ".$this->_db_prefix."banned_ips (
						 banned_ip varchar(15) NOT NULL,
						  PRIMARY KEY  (banned_ip)				  
						)";
				
				dbDelta($sql);
				
				//create logins table
				$sql = "CREATE TABLE ".$this->_db_prefix."logins (
						  id bigint(20) NOT NULL AUTO_INCREMENT,
						  user_id bigint(20) NOT NULL,
						  login_ip varchar(15) NOT NULL,
						  login_date int(10) NOT NULL,
						  PRIMARY KEY  (id),
						  KEY user_id (user_id)
						)";

				dbDelta($sql);
				
				//create online users table
				$sql = "CREATE TABLE ".$this->_db_prefix."online_users (
						  user_id bigint(20) NOT NULL,
						  last_active int(10) NOT NULL,
						  ip varchar(15) NOT NULL,
						  PRIMARY KEY  (user_id),
						  KEY last_active (last_active)
						)";
				
				dbDelta($sql);
				
				if($version == FALSE)
				{
					update_option('wpum_online_interval', self::DEFAULT_INTERVAL);
					update_option('wpum_ban_message', self::DEFAULT_BAN_MESSAGE);
					update_option('wpum_banunban_user_ips', 1);
				}
				
				update_option('wpum_version', self::VERSION);
			}
		}
		
		public function add_online_user()
		{
			if(is_user_logged_in() AND current_user_can('manage_options') == FALSE)
			{
				global $wpdb;
				
				$user_id = get_current_user_id();
				$last_active = time();
				$ip = $_SERVER['REMOTE_ADDR'];
				
				$sql = "INSERT INTO
							".$this->_db_prefix."online_users 
						(user_id, last_active, ip) 
						VALUES 
						(%d, %d, '%s')
  						ON DUPLICATE KEY UPDATE last_active = %d";
				
				$wpdb->query($wpdb->prepare($sql, $user_id, $last_active, $ip, $last_active));
			}
		}
		
		public function add_online_user_ajax()
		{
			check_ajax_referer('add_online_user', 'security');
			
			$this->add_online_user();
			
			echo '1';
			
			exit;
		}
		
		private function _delete_online_users()
		{
			global $wpdb;
			
			$active = time() - (get_option('wpum_online_interval', self::DEFAULT_INTERVAL) * 60);
			
			$sql = "DELETE FROM
						".$this->_db_prefix."online_users
					WHERE
						last_active < %d";
			
			$wpdb->query($wpdb->prepare($sql, $active));
		}
		
		public function add_admin_menu()
		{
            add_menu_page('DRP WPUM', 'DRP WPUM', 'manage_options', 'drp-wpum', array(&$this, 'dashboard'));
            add_submenu_page('drp-wpum', 'DRP WPUM - Registered Users', 'Registered Users', 'manage_options', 'drp-wpum', array(&$this, 'dashboard'));
			add_submenu_page('drp-wpum', 'DRP WPUM - Banned IPs', 'Banned IPs', 'manage_options', 'drp-wpum-ban', array(&$this, 'ban'));
			add_submenu_page('drp-wpum', 'DRP WPUM - Settings', 'Settings', 'manage_options', 'drp-wpum-settings', array(&$this, 'settings'));
		}
		
		public function settings()
		{
			if($_POST AND wp_verify_nonce($_POST["_wpnonce"], 'wpum_edit_settings'))
			{
				if(empty($_POST['ban_message']))
				{
					$error = 'Please enter a ban message.';
				}
				elseif(empty($_POST['online_interval']) OR !ctype_digit($_POST['online_interval']) OR $_POST['online_interval'] == 0)
				{
					$error = 'Please enter a valid number for the online user interval.';
				}
				else
				{
					update_option('wpum_ban_message', $_POST['ban_message']);
					update_option('wpum_online_interval', $_POST['online_interval']);
					
					if(!empty($_POST['banunban_user_ips']) AND $_POST['banunban_user_ips'] == 1)
					{
						update_option('wpum_banunban_user_ips', 1);
					}
					else
					{
						update_option('wpum_banunban_user_ips', 0);
					}
					
					$message = 'You have edited your settings.';
				}
			}
			
			include('views/admin/settings.php');
		}
		
		public function ban()
		{
			$action = (isset($_REQUEST['action'])) ? $_REQUEST['action'] : ''; 
			
			if($action == 'add')
			{
				$this->_add_bannedip();
			}
			elseif($action == 'delete')
			{
				$this->_delete_bannedip();
			}
			else
			{
				$this->_list_bannedips();
			}
		}
		
		private function _add_bannedip()
		{
			if($_POST AND wp_verify_nonce($_POST["_wpnonce"], 'wpum_add_bannedip'))
			{
				$banned_ip = (empty($_POST['banned_ip'])) ? '' : array_filter(explode(';', $_POST['banned_ip']));
				
				if(empty($banned_ip))
				{
					$error = 'Please enter an ip to ban';
				}
				else
				{
					$count = $this->_ban_ips($banned_ip);
					
					$this->_redirect(admin_url("admin.php?page=drp-wpum-ban&added=true&count=".$count));
				}
			}
			
			include('views/admin/bannedip-add.php');
		}
		
		private function _delete_bannedip()
		{
			$query = '';
			
			if($_POST AND wp_verify_nonce($_POST["_wpnonce"], 'wpum_delete_bannedip'))
			{
				if(!empty($_POST['banned_ips']) AND is_array($_POST['banned_ips']))
				{
					global $wpdb;
				
					$this->_delete_ips($_POST['banned_ips']);
					
					$query = "&deleted=true";
				}
			}
			
			$this->_redirect(admin_url("admin.php?page=drp-wpum-ban".$query));
		}
	
		private function _list_bannedips()
		{
			require_once('lib/pagination.php');
			
			global $wpdb;
			
			$where_sql = '';
			
			if(!empty($_GET['ip']))
			{
				$where_sql = " WHERE banned_ip = '".$wpdb->escape(trim($_GET['ip']))."'";
			}	
			
			$count_sql = "SELECT 
							COUNT(*)
						FROM 
							".$this->_db_prefix."banned_ips
						{$where_sql}";
			
			$pagination = new WPUM_Pagination(array(
				'total_items' => $wpdb->get_var($count_sql),
				'url' => admin_url('admin.php')
			));
		
			if($pagination->total_items > 0)
			{
				$sql = "SELECT 
							* 
						FROM "
							.$this->_db_prefix."banned_ips
						{$where_sql}
						LIMIT
							".$pagination->offset.", ".$pagination->items_per_page;
			
				$ips = $wpdb->get_results($sql);
			}
			
			if(isset($_GET['added']) AND isset($_GET['count']))
			{
				$message = 'You have succesfully banned ';
				$message .= ($_GET['count'] == 1) ? '1 IP' : $_GET['count'].' IPs.';
			}
			elseif(isset($_GET['deleted']))
			{
				$message = 'IP(s) have been successfully deleted.';
			}
			
			include('views/admin/bannedip-list.php');
		}

		private function _ban_ips(array $banned_ips)
		{
			global $wpdb;
					
			$sql = "INSERT IGNORE INTO 
						".$this->_db_prefix."banned_ips
					SET 
						banned_ip = '%s'";
			
			$count = 0;
			
			foreach($banned_ips as $ip)
			{
				$wpdb->query($wpdb->prepare($sql, trim($ip)));
				$count++;
			}
			
			return $count;
		}
		
		
		private function _delete_ips(array $delete_ips)
		{
			global $wpdb;
			
			$filtered_ips = array();
					
			foreach($delete_ips as $banned_ip)
			{
				$filtered_ips[] = "'".trim($wpdb->escape($banned_ip))."'";
			}
					
			$ips = implode(', ', $filtered_ips);
			
			$sql = "DELETE FROM 
						".$this->_db_prefix."banned_ips 
					WHERE
						banned_ip IN (".$ips.")";
			
			$wpdb->query($sql);
		}
		
		public function dashboard()
		{
			$this->_delete_online_users();
			
			require_once('lib/pagination.php');
		
			global $wpdb;
			
			$join_sql = $group_sql = '';
			$where_sql = array();
			
			if(!empty($_GET['status']) AND ($_GET['status'] == WPUM::STATUS_ACTIVE OR $_GET['status'] == WPUM::STATUS_BANNED))
			{
				if($_GET['status'] == WPUM::STATUS_ACTIVE)
				{
					$where_sql[] = "(b.umeta_id is null OR b.meta_value = ".$_GET['status'].")";
				}
				else
				{
					$where_sql[] = "b.meta_value = ".$_GET['status'];
				}
			}
			
			if(!empty($_GET['online']) AND $_GET['online'] == 1)
			{
				$join_sql .= "INNER JOIN "
									.$this->_db_prefix."online_users as o 
								ON 
									a.ID = o.user_id";
			}
			else
			{
				$join_sql .= "LEFT JOIN "
									.$this->_db_prefix."online_users as o 
								ON 
									a.ID = o.user_id";
			}
			
			if(!empty($_GET['date']))
			{
				switch($_GET['date'])
				{
					case 1;				
						$where_sql[] = "a.user_registered >= '".date('Y-m-d H:i:s', strtotime('-24 hours'))."'";
					break;
					
					case 2;
						$where_sql[] = "a.user_registered >= '".date('Y-m-d H:i:s', strtotime('-1 week'))."'";
					break;
					
					case 3;
						$where_sql[] = "a.user_registered >= '".date('Y-m-d H:i:s', strtotime('-1 month'))."'";
					break;
					
					case 4;
						$where_sql[] = "a.user_registered >= '".date('Y-m-d H:i:s', strtotime('-1 year'))."'";
					break;
					
					
					case 5;
						$where_sql[] = "(a.user_registered >= '".date('Y-m-d 00:00:00', strtotime($_GET['date_start']))."' 
										AND a.user_registered <= '".date('Y-m-d 23:59:59', strtotime($_GET['date_end']))."')";
					break;
					
					default;
					break;
				}
			}
			
			if(!empty($_GET['ip']) AND $_GET['ip'] != 'Enter IP')
			{
				$join_sql .= " INNER JOIN ".$this->_db_prefix."logins as d ON a.ID = d.user_id";
				$group_sql = "GROUP BY d.user_id";
				$where_sql[] = "d.login_ip = '".$wpdb->escape(trim($_GET['ip']))."'";
			}
			
			if(!empty($where_sql))
			{
				$where_sql = "WHERE ".implode(' AND ', $where_sql);
			}
			else
			{
				$where_sql = '';
			}
			
			$count_sql = "SELECT 
								COUNT(*)
							FROM 
								".$wpdb->users." as a
							LEFT JOIN
								".$wpdb->usermeta." as b
							ON
								a.ID = b.user_id AND b.meta_key = 'wpum_user_status'
							{$join_sql}
							{$where_sql}
							{$group_sql}";
			
            $total_items = $wpdb->get_var($count_sql);
            
			$pagination = new WPUM_Pagination(array(
				'total_items' => ($total_items > 0 ) ? $total_items : 0,
				'url' => admin_url('admin.php')
			));
		
			if($pagination->total_items > 0)
			{
				$sql = "SELECT
							a.*, b.meta_value as wpum_user_status, c.meta_value as wpum_user_login_details, o.last_active
						FROM
							".$wpdb->users." as a
						LEFT JOIN
							".$wpdb->usermeta." as b
						ON
							a.ID = b.user_id AND b.meta_key = 'wpum_user_status'
						LEFT JOIN
							".$wpdb->usermeta." as c
						ON									 
							a.ID = c.user_id AND c.meta_key = 'wpum_user_login_details'
						{$join_sql}
						{$where_sql}
						{$group_sql}
						LIMIT
							".$pagination->offset.", ".$pagination->items_per_page;
				
				$users = $wpdb->get_results($sql);
			}
				
			include('views/admin/user-list.php');
		}
		
		private function _redirect($url)
		{
			echo '<script type="text/javascript">';
			echo "window.location.href = '".$url."'";	
			echo '</script>';
			
			exit;				
		}
    }
	
	//create the object
	$wpusermanagement = new WPUM();
	
	//initiate the object
	$wpusermanagement->init();
}

?>