<?php

/*注册导航菜单*/

if ( function_exists( 'register_nav_menus' ) ) {

	register_nav_menus(

		array(

		  'top_menu' => '主导航'

		)

	);

}

/*TinyMCE编辑器*/

function enable_more_buttons($buttons) {   

    $buttons[] = 'hr';   

    $buttons[] = 'del';   

    $buttons[] = 'sub';   

    $buttons[] = 'sup';   

    $buttons[] = 'fontselect';   

    $buttons[] = 'fontsizeselect';   

    $buttons[] = 'cleanup';   

    $buttons[] = 'styleselect';   

    return $buttons;   

    }   

add_filter("mce_buttons_3", "enable_more_buttons"); 

/*缩略图*/

if ( function_exists( 'add_image_size' ) ) 

	add_theme_support( 'post-thumbnails' );

/*if ( function_exists( 'add_image_size' ) ) {

	add_image_size( 'jx-thumb', 150, 120 ,true );

}*/

/*widget*/

if ( function_exists('register_sidebar') )

    register_sidebar(array(	'name'=>'sidebar',

							'before_widget' => '<div class="sidebarbox">',

							'after_widget' => '</div>',

							'before_title' => '<div class="sidebarheader"><h2>',

							'after_title' => '</h2></div>',		

    ));

/*分页*/

function par_pagenavi($range = 9){

	global $paged, $wp_query;

	if ( !$max_page ) {$max_page = $wp_query->max_num_pages;}

	if($max_page > 1){if(!$paged){$paged = 1;}

	previous_posts_link('上一页');

	if($paged != 1){echo "<span></span>";}

	if($max_page > $range){

	if($paged < $range){for($i = 1; $i <= ($range + 1); $i++){echo "<a href='" . get_pagenum_link($i) ."'";

	if($i==$paged)echo " class='current'";echo ">$i</a>";}}

	elseif($paged >= ($max_page - ceil(($range/2)))){

	for($i = $max_page - $range; $i <= $max_page; $i++){echo "<a href='" . get_pagenum_link($i) ."'";

	if($i==$paged)echo " class='current'";echo ">$i</a>";}}

	elseif($paged >= $range && $paged < ($max_page - ceil(($range/2)))){

	for($i = ($paged - ceil($range/2)); $i <= ($paged + ceil(($range/2))); $i++){

		echo "<a href='" . get_pagenum_link($i) ."'";if($i==$paged) echo " class='current'";echo ">$i</a>";}}}

	else{for($i = 1; $i <= $max_page; $i++){echo "<a href='" . get_pagenum_link($i) ."'";

	if($i==$paged)echo " class='current'";echo ">$i</a>";}}

	if($paged != $max_page){echo "<span></span>";}}

	next_posts_link('下一页');

}

/*Remove revision*/

remove_action('pre_post_update','wp_save_post_revision');

add_action('wp_print_scripts','disable_autosave');

	function disable_autosave() {

		wp_deregister_script('autosave');

}

//获取点击次数

function getPostViews($postID){

$count_key = 'post_views_count';

$count = get_post_meta($postID, $count_key, true);

if($count==""){

delete_post_meta($postID, $count_key);

add_post_meta($postID, $count_key, '0');

return "0人";}

return $count.'人';}

function setPostViews($postID) {

$count_key = 'post_views_count';

$count = get_post_meta($postID, $count_key, true);

if($count==""){

$count = 0;

delete_post_meta($postID, $count_key);

add_post_meta($postID, $count_key, '0');

}else{

$count++;

update_post_meta($postID, $count_key, $count);}}

//获取点击次数 end

function gzippy() {

 ob_start('ob_gzhandler');

}

if(!stristr($_SERVER['REQUEST_URI'], 'tinymce') && !ini_get('zlib.output_compression')) {

 add_action('init', 'gzippy');

}






add_filter('user_contactmethods','my_user_contactmethods');
function my_user_contactmethods($user_contactmethods ){
	$user_contactmethods ['weibo'] = '新浪微博';
//	$user_contactmethods ['t-qq'] = '腾讯微博';
//	$user_contactmethods ['imessage'] = 'iMessage';
	return $user_contactmethods ;
}






if ( ! function_exists( 'wpui_comment' ) ) :

function wpui_comment( $comment, $args, $depth ) {

	$GLOBALS['comment'] = $comment;

	switch ( $comment->comment_type ) :

		case 'pingback' :

		case 'trackback' :

	?>

	<li class="post pingback">

		<p><?php _e( 'Pingback:' ); ?> <?php comment_author_link(); ?><?php edit_comment_link( __( '编辑' ), '<span class="edit-link">', '</span>' ); ?></p>

	<?php

			break;

		default :

	?>

	<li <?php comment_class(); ?> id="li-comment-<?php comment_ID(); ?>">

		<div id="comment-<?php comment_ID(); ?>" class="comment">

			<div class="comments_meta">

				<div class="comment-author vcard">

					<?php

						$avatar_size = 40;

						if ( '0' != $comment->comment_parent )

							$avatar_size = 40;

						echo get_avatar( $comment, $avatar_size );

						printf( __( '%1$s%2$s' ),

							sprintf( '<p>%s</p>', get_comment_author() ),

							sprintf( '<p>%3$s</p>',

								esc_url( get_comment_link( $comment->comment_ID ) ),

								get_comment_time( 'c' ),

								sprintf( __( '%1$s at %2$s' ), get_comment_date(), get_comment_time() )

							)

						);

					?>

				</div><!-- .comment-author .vcard -->

				<?php if ( $comment->comment_approved == '0' ) : ?>

					<em class="comment-awaiting-moderation"><?php _e( '您的评论正在等待审核' ); ?></em>

					<br />

				<?php endif; ?>

			</div>

			<div class="comment-content"><?php comment_text(); ?></div>

			<div class="reply">

				<?php comment_reply_link( array_merge( $args, array( 'reply_text' => __( '回复' ), 'depth' => $depth, 'max_depth' => $args['max_depth'] ) ) ); ?>

                <?php edit_comment_link( __( '编辑' ), '<span class="edit-link">', '</span>' ); ?>

			</div><!-- .reply -->

		</div><!-- #comment-## -->



	<?php

			break;

	endswitch;

}

endif; // ends check for wpui_comment()
?>