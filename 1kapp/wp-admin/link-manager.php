<?php
/**
 * Link Management Administration Screen.
 *
 * @package WordPress
 * @subpackage Administration
 */

/** Load WordPress Administration Bootstrap */
require_once ('admin.php');
if ( ! current_user_can( 'manage_links' ) )
	wp_die( __( 'You do not have sufficient permissions to edit the links for this site.' ) );

$wp_list_table = _get_list_table('WP_Links_List_Table');

// Handle bulk deletes
$doaction = $wp_list_table->current_action();

if ( $doaction && isset( $_REQUEST['linkcheck'] ) ) {
	check_admin_referer( 'bulk-bookmarks' );

	if ( 'delete' == $doaction ) {
		$bulklinks = (array) $_REQUEST['linkcheck'];
		foreach ( $bulklinks as $link_id ) {
			$link_id = (int) $link_id;

			wp_delete_link( $link_id );
		}

		wp_redirect( add_query_arg('deleted', count( $bulklinks ), admin_url( 'link-manager.php' ) ) );
		exit;
	}
} elseif ( ! empty( $_GET['_wp_http_referer'] ) ) {
	 wp_redirect( remove_query_arg( array( '_wp_http_referer', '_wpnonce' ), stripslashes( $_SERVER['REQUEST_URI'] ) ) );
	 exit;
}

$wp_list_table->prepare_items();

$title = __('Links');
$this_file = $parent_file = 'link-manager.php';

get_current_screen()->add_help_tab( array(
'id'		=> 'overview',
'title'		=> __('Overview'),
'content'	=>
	'<p>' . sprintf(__('You can add links here to be displayed on your site, usually using <a href="%s">Widgets</a>. By default, links to several sites in the WordPress community are included as examples.'), 'widgets.php') . '</