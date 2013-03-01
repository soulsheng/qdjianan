<?php

// Administration page base class

abstract class scbAdminPage {
	/** Page args
	 * $page_title string (mandatory)
	 * $parent (string)  (default: options-general.php)
	 * $capability (string)  (default: 'manage_options')
	 * $menu_title (string)  (default: $page_title)
	 * $page_slug (string)  (default: sanitized $page_title)
	 * $toplevel (string)  If not empty, will create a new top level menu (for expected values see http://codex.wordpress.org/Administration_Menus#Using_add_submenu_page)
	 * - $icon_url (string)  URL to an icon for the top level menu
	 * - $position (int)  Position of the toplevel menu (caution!)
	 * $screen_icon (string)  The icon type to use in the screen header
	 * $nonce string  (default: $page_slug)
	 * $action_link (string|bool)  Text of the action link on the Plugins page (default: 'Settings')
	 * $admin_action_priority int  The priority that the admin_menu action should be executed at (default: 10)
	 */
	protected $args;

	// URL to the current plugin directory.
	// Useful for adding css and js files
	protected $plugin_url;

	// Created at page init
	protected $pagehook;

	// scbOptions object holder
	// Normally, it's used for storing formdata
	protected $options;
	protected $option_name;

	// l10n
	protected $textdomain;


//  ____________REGISTRATION COMPONENT____________


	private static $registered = array();

	static function register( $class, $file, $options = null ) {
		if ( isset( self::$reg