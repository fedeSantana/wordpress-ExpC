<?php
/**
 * Template Name: Podcasts Template
 *
 * Podcasts template by Fede.
 *
 */
?>

<?php get_header(); ?>

	<?php do_action( 'accelerate_before_body_content' ); ?>
	
	<div id="primary">
		<div id="content" class="clearfix">
			<?php while ( have_posts() ) : the_post(); ?>

				<?php get_template_part( 'content', 'page' ); ?>
				<?php include ("podcastTemplate.php"); ?>

			<?php endwhile; ?>

		</div><!-- #content -->
	</div><!-- #primary -->
	
	<?php accelerate_sidebar_select(); ?>
	
	<?php do_action( 'accelerate_after_body_content' ); ?>

<?php get_footer(); ?>