<?php
/**
 * Displays the content and meta information for a post object.
 *
 * @package P2
 */
?>
<li id="prologue-<?php the_ID(); ?>" <?php post_class(); ?>>
	<?php

	/*
	 * Post meta
	 */

	if ( ! is_page() ):
		$author_posts_url = get_author_posts_url( get_the_author_meta( 'ID' ) );
		$posts_by_title   = sprintf(
			__( 'Posts by %1$s ( @%2$s )', 'p2' ),
			get_the_author_meta( 'display_name' ),
			get_the_author_meta( 'user_nicename' )
		); ?>

		<a href="<?php echo esc_attr( $author_posts_url ); ?>" title="<?php echo esc_attr( $posts_by_title ); ?>" class="post-avatar">
			<?php echo get_avatar( get_the_author_meta('user_email'), 48 ); ?>
		</a>
	<?php endif; ?>
	<h4>
		<?php if ( ! is_page() ): ?>
			<a href="<?php echo esc_attr( $author_posts_url ); ?>" title="<?php echo esc_attr( $posts_by_title ); ?>"><?php the_author(); ?></a>
		<?php endif; ?>
		<span class="meta">
			<?php
			if ( ! is_page() ) {
				echo p2_date_time_with_microformat();
			} ?>
			<span class="actions">
				<?php if ( ! is_singular() ) : ?>
					<?php $before_reply_link = ' | '; ?>
					<a href="<?php the_permalink(); ?>" class="thepermalink" title="<?php esc_attr_e( 'Permalink', 'p2' ); ?>"><?php _e( 'Permalink', 'p2' ); ?></a>
				<?php endif;

				if ( comments_open() && ! post_password_required() ) {
						echo post_reply_link( array(
							'before'        => isset( $before_reply_link ) ? $before_reply_link : '',
							'after'         => '',
							'