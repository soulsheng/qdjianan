<?php get_header(); ?>
<div class="mainbody">
	<div class="con">
	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>	
		<div class="postbox">
			<div class="postboxheader">
				<div class="postboxheader_comments">
<strong><?php comments_popup_link('暂无评论','1条评论','%条评论', '','评论关闭' ); ?></strong>	
				</div>
				<div class="postboxheader_title">
					<h2><a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>"><?php the_title(); ?></a></h2>
					<p>发布于：<?php the_time('Y年m月d日')?><span>|</span>作者：<?php the_author(); ?><span>|</span>日志分类：<?php printf(__('%s'), get_the_category_list(', ')); ?><span>|</span>围观群众：<?php echo getPostViews(get_the_ID()); ?></p>
				</div>
			</div>
			<div class="postbody">
				<?php if ( has_post_thumbnail()) : ?><p><?php the_post_thumbnail( 'post-thumbnails'); ?></p><?php endif; ?>
				<?php the_excerpt(); ?>
			</div>
			<div class="postlink">
				<a class="linkmore" href="<?php the_permalink(); ?>" title="<?php the_title(); ?>">+阅读全文</a>
			</div>
			<?php  the_tags('<div class="postfooter"><p><strong>标签：</strong>' , ', ', '</p></div>'); ?>
		</div>
		<?php endwhile; ?>
	<div class="pagenavigation"><?php par_pagenavi(9); ?></div>
	<?php else : ?>
	<div class="postbox">
		<h1>对不起，您所查看的网页不存在！</h1>
	</div>
	<?php endif; ?>	
	</div>
	<?php get_sidebar(); ?>
</div>
<?php get_footer(); ?>