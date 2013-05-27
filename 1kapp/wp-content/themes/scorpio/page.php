<?php get_header(); ?>
<div class="mainbody">
	<div class="con">
	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>	
		<div class="postbox">
			<div class="postboxheader">
				<div class="postboxheader_comments">
				</div>
				<div class="postboxheader_title">
					<h1><?php the_title(); ?></h1>
					<p>发布于：<?php the_time('Y年m月d日')?><span>|</span>作者：<?php the_author(); ?><span>|</span>围观群众：<?php setPostViews(get_the_ID()); echo getPostViews(get_the_ID()); ?></p>
				</div>
			</div>
			<div class="postbody">
				<?php the_content(); ?>
			</div>
			<div class="sharelink">
				<?php include (TEMPLATEPATH . '/share.php'); ?>
			</div>			
		</div>
		<?php endwhile; ?>
	<?php else : ?>
	<div class="postbox">
		<h1>对不起，您所查看的网页不存在！</h1>
	</div>
	<?php endif; ?>	
	</div>
	<?php get_sidebar(); ?>
</div>
<?php get_footer(); ?>