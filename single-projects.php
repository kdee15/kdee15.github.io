<?php
/**
 * The main template file
 *
 * @package WordPress
 * @subpackage Spartan
 * @since Spartan 1.0
 */

get_header();

?>

<!-- C. WORK AREA +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->

<!-- C.1. PAGE HEADER --------------------------------- -->

<?php get_template_part( 'inc/page-header' ); ?>

<?php get_template_part( 'inc/navigation-page' ); ?>

<!-- C.1. END ----------------------------------------- -->

<main class="p-main page single">

  <!-- C.1. PAGE HEADER ------------------------------- -->

  <?php while ( have_posts() ) : the_post(); ?>

    <figure class="o-article-header">
      <?php the_post_thumbnail(); ?>
      <h3 class="a-post-title"><?php the_title(); ?><span class="a-footnote"><?php the_date(); ?></span></h3>
    </figure>


  <?php endwhile; // end of the loop. ?>

  <!-- C.1. END --------------------------------------- -->

  <!-- C.2. SECTIONS ---------------------------------- -->

  <?php while ( have_posts() ) : the_post(); ?>

    <section class="container">

      <?php the_content(); ?>

      <?php the_field('start_date') ?>

      <?php the_field('gallery') ?>


      <div class="owl-desktop owl-carousel owl-theme">

      <?php
      //Get the images ids from the post_metadata
      $images = acf_photo_gallery('gallery_desk', $post->ID);
      //Check if return array has anything in it
      if( count($images) ):
        //Cool, we got some data so now let's loop over it
        foreach($images as $image):
          $id = $image['id']; // The attachment id of the media
          $title = $image['title']; //The title
          $caption= $image['caption']; //The caption
          $full_image_url= $image['full_image_url']; //Full size image url
//          $full_image_url = acf_photo_gallery_resize_image($full_image_url, 262, 160); //Resized size to 262px width by 160px height image url
//          $desktop_image_url = acf_photo_gallery_resize_image($full_image_url, 1920, 1080); //Resized size to 262px width by 160px height image url
//          $tablet_image_url = acf_photo_gallery_resize_image($full_image_url, 262, 160); //Resized size to 262px width by 160px height image url
//          $mobile_image_url = acf_photo_gallery_resize_image($full_image_url, 262, 160); //Resized size to 262px width by 160px height image url
          $thumbnail_image_url= $image['thumbnail_image_url']; //Get the thumbnail size image url 150px by 150px
          $url= $image['url']; //Goto any link when clicked
          $target= $image['target']; //Open normal or new tab
          $alt = get_field('photo_gallery_alt', $id); //Get the alt which is a extra field (See below how to add extra fields)
          $class = get_field('photo_gallery_class', $id); //Get the class which is a extra field (See below how to add extra fields)
          ?>

            <div class="item">
              <?php if( !empty($url) ){ ?><a href="<?php echo $url; ?>" <?php echo ($target == 'true' )? 'target="_blank"': ''; ?>><?php } ?>
                <img src="<?php echo $full_image_url; ?>" alt="<?php echo $title; ?>" title="<?php echo $title; ?>">
                <?php if( !empty($url) ){ ?></a><?php } ?>
            </div>

        <?php endforeach; endif; ?>


      </div>



      <div class="owl-mobile owl-carousel owl-theme">

      <?php
      //Get the images ids from the post_metadata
      $images = acf_photo_gallery('gallery_mob', $post->ID);
      //Check if return array has anything in it
      if( count($images) ):
        //Cool, we got some data so now let's loop over it
        foreach($images as $image):
          $id = $image['id']; // The attachment id of the media
          $title = $image['title']; //The title
          $caption= $image['caption']; //The caption
          $full_image_url= $image['full_image_url']; //Full size image url
//          $full_image_url = acf_photo_gallery_resize_image($full_image_url, 262, 160); //Resized size to 262px width by 160px height image url
//          $desktop_image_url = acf_photo_gallery_resize_image($full_image_url, 1920, 1080); //Resized size to 262px width by 160px height image url
//          $tablet_image_url = acf_photo_gallery_resize_image($full_image_url, 262, 160); //Resized size to 262px width by 160px height image url
//          $mobile_image_url = acf_photo_gallery_resize_image($full_image_url, 262, 160); //Resized size to 262px width by 160px height image url
          $thumbnail_image_url= $image['thumbnail_image_url']; //Get the thumbnail size image url 150px by 150px
          $url= $image['url']; //Goto any link when clicked
          $target= $image['target']; //Open normal or new tab
          $alt = get_field('photo_gallery_alt', $id); //Get the alt which is a extra field (See below how to add extra fields)
          $class = get_field('photo_gallery_class', $id); //Get the class which is a extra field (See below how to add extra fields)
          ?>

            <div class="item">
              <?php if( !empty($url) ){ ?><a href="<?php echo $url; ?>" <?php echo ($target == 'true' )? 'target="_blank"': ''; ?>><?php } ?>
                <img src="<?php echo $full_image_url; ?>" alt="<?php echo $title; ?>" title="<?php echo $title; ?>">
                <?php if( !empty($url) ){ ?></a><?php } ?>
            </div>

        <?php endforeach; endif; ?>


      </div>


    </section>

  <?php endwhile; // end of the loop. ?>

  <!-- C.2. END --------------------------------------- -->

  <!-- C.3. FOOTER  ----------------------------------- -->

  <?php get_footer(); ?>

  <!-- C.3. END --------------------------------------- -->

</main>

<!-- C. END +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->

<!-- D. JAVASCRIPT ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->

<!-- D.1. FOOTER JS -->

<?php get_template_part( 'inc/footer-scripts' ); ?>

<!-- D. END +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->