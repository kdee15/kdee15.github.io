<?php

/*
Template Name: Project Archive
*/

get_header(); ?>

<!-- C. WORK AREA +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->

    <!-- C.2. SITE MAST ------------------------------------------------------------------------------------------- -->

    <section class="page archive-projects">

      <h2 class="a-block-title">{ projects }</h2>

      <div class="container-fluid">
        <div class="row">

          <?php

          $args=array(
            'post_type' => 'projects',
            'post_status' => 'publish',
            'orderby' => 'meta_value date',
            'order' => 'DESC',
            'posts_per_page' => 999
          );
          $my_query = null;
          $my_query = new WP_Query($args);

          if( $my_query->have_posts() ) {
            while ($my_query->have_posts()) : $my_query->the_post(); ?>

              <article class="card blog-card col-12 col-md-6 col-lg-4">
                <a href="<?php the_permalink() ?>" class="o-card medium-card link-card option-<?php echo rand(1,4); ?>">
                  <div class="a-card-bg"></div>
                  <figure class="m-card-image" style="background-image: url('<?php the_field('cover_desk') ?>');">
                  </figure>
                  <div class="m-card-body">
                    <h4 class="a-card-header">{&nbsp;<?php the_title(); ?>&nbsp;}</h4>
                  </div>
                  <div class="m-card-footer">
                    <div class="m-text-wrapper"><?php the_excerpt(); ?></div>
                  </div>
                </a>
              </article>

            <?php

            endwhile;
          }
          wp_reset_query();  // Restore global post data stomped by the_post().
          ?>

        </div>
      </div>
    </section>
    
    <!-- C.2. END ------------------------------------------------------------------------------------------------- -->
<?php get_footer(); ?>
<!-- C. END +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->

<!-- D. JAVASCRIPT ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->

<!-- D.1. FOOTER JS -->

<?php get_template_part( 'inc/footer-scripts' ); ?>

<!-- D. END +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->