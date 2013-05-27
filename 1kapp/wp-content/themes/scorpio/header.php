<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php if (is_home() ) {bloginfo('name'); if ( $paged >= 2 || $page >= 2 ){echo ' - ' . sprintf( __( '第%s页'), max( $paged, $page ) ); }	print ' - '; bloginfo('description'); } else { wp_title(''); print '_'; bloginfo('name');if ( $paged >= 2 || $page >= 2 ){echo ' - ' . sprintf( __( '第%s页'), max( $paged, $page ) ); }}?></title>
<link href="<?php bloginfo( 'stylesheet_url' ); ?>" type="text/css" rel="stylesheet" />
<?php wp_head(); ?>
</head>
<body>
<div class="header">
	<div class="headernav">
<?php wp_nav_menu( array(
	'theme_location'  => 'top_menu', 
	'container_class' => '',
	'container'       => '',	
	'items_wrap'      => '<ul>%3$s</ul>',
	'link_before'     => '',
	'link_after'      => ''
	));
?>
	</div>
	<div class="headermain">
		<div class="headertitle">
			<h1><a href="<?php bloginfo('home') ?>" title="<?php bloginfo('name') ?>"><?php bloginfo('name') ?></a></h1>
			<p><?php bloginfo('description') ?></p>
		</div>
		<div class="headershare">
			<ul>
				<li><a class="icon_rss" href="<?php bloginfo('rss2_url'); ?>" target="_blank">rss</a></li>
				<li><a class="icon_mail" href="mailto:<?php bloginfo('admin_email'); ?>">mail</a></li>
				<li><a class="icon_weibo" href="<?php the_author_meta('weibo',1); ?>" target="_blank">weibo</a></li>
			</ul>
		</div>
	</div>
</div>