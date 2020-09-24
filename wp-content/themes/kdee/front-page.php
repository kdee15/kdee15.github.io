<?php
/**
* The main template file
*
* @package WordPress
* @subpackage KDee
* @since KDee 1.0
*/

get_header();
?>

<div id="o-header"></div>

<!-- C. WORK AREA +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->

  <main class="p-main">

    <!-- C.1. PAGE HEADER ------------------------------- -->

    <?php get_template_part( 'section-front' ); ?>

    <!-- C.1. END --------------------------------------- -->

    <!-- C.2. SECTIONS -------------------------------- -->

    <?php get_template_part( 'section-feeds' ); ?>

    <?php get_template_part( 'section-projects' ); ?>

    <?php get_template_part( 'section-about' ); ?>

    <?php get_template_part( 'section-stats' ); ?>

    <?php get_template_part( 'section-contact' ); ?>

    <!-- C.2. END ------------------------------------- -->

    <!-- C.3. FOOTER  --------------------------------- -->

    <?php get_footer(); ?>

    <!-- C.3. END ------------------------------------- -->

  </main>

<!-- C. END +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->

<!-- D. JAVASCRIPT ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->

<!-- D.1. FOOTER JS -->

<?php get_template_part( 'inc/footer-scripts' ); ?>

<!-- D. END +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->