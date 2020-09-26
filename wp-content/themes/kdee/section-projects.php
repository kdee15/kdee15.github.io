<section class="o-block projects-block" id="projects">

  <h2 class="a-block-title">{ projects }</h2>

  <div class="container-fluid p-0">
    <div class="grid-wrapper row no-gutters">

      <?php

      $args=array(
        'post_type' => 'projects',
        'post_status' => 'publish',
        'orderby' => 'meta_value date',
        'order' => 'DESC',
        'posts_per_page' => 4
      );
      $my_query = null;
      $my_query = new WP_Query($args);

      if( $my_query->have_posts() ) {
        while ($my_query->have_posts()) : $my_query->the_post(); ?>

          <article class="card blog-card col-12">
            <div class="o-card big-card option-<?php echo rand(1,4); ?>">
              <div class="a-card-bg"></div>
              <figure class="m-card-image">
                <img src="<?php the_field('cover_desk') ?>">
              </figure>
              <div class="m-card-body">
                <h3 class="a-card-header">{&nbsp;<?php the_title(); ?>&nbsp;}</h3>
              </div>
              <div class="m-card-footer">
                  <div class="m-text-wrapper"><?php the_excerpt(); ?></div>

                <a class="a-card-link" href="<?php the_permalink() ?>">see project ...</a>
              </div>
            </div>
          </article>

        <?php

        endwhile;
      }
      wp_reset_query();  // Restore global post data stomped by the_post().
      ?>

    </div>
    <div class="row m-block-footer">
      <a class="a-text-link" href="<?php echo esc_url( home_url( '/' ) ); ?>?page_id=26"> << VIEW MORE PROJECTS >> </a>
    </div>


  </div>

</section>