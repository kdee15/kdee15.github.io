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

<main class="p-main page single projects">

  <!-- C.2. SECTIONS ---------------------------------- -->

  <?php while ( have_posts() ) : the_post(); ?>

  <section class="o-block o-project-content">
    <picture class="o-project-cover">
      <source class="a-cover-desk" srcset="<?php the_field('cover_desk') ?>" media="(min-width: 992px)" alt="desk cover">
      <source class="a-cover-tab" srcset="<?php the_field('cover_tab') ?>" media="(min-width: 768px)" alt="tablet cover">
      <img class="a-cover-mob" src="<?php the_field('cover_mob') ?>" alt="mobile cover">
    </picture>
  </section>

  <nav class="o-project-nav">
    <span class="slide-div demo-tab details" name="details">
        <figure class="m-icon">
          <svg version="1.1" class="a-icon laptop" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
               viewBox="0 0 148.2 100" style="enable-background:new 0 0 148.2 100;" xml:space="preserve">
          <g>
            <path d="M148.2,5.9c0-3.4-2.7-5.9-5.9-5.9H5.9C2.5,0,0,2.7,0,5.9v83h148.2V5.9z M140.7,77H7.5V8.4h133.4L140.7,77L140.7,77z"/>
            <path d="M5,100h138.2c2.7,0,5-3,5-6.6v-3.9h-58v1.4c0,2-1.8,3.9-4.1,3.9H62c-2.3,0-4.1-1.8-4.1-3.9v-1.4H0v3.9C0,97,2.3,100,5,100z
              "/>
          </g>
          </svg>
        </figure>
        <p class="a-icon-text">Project Details</p>
      </span>
    <span class="slide-div demo-tab demo-desk" name="demo-desk">
        <figure class="m-icon">
          <svg version="1.1" class="a-icon laptop" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
               viewBox="0 0 148.2 100" style="enable-background:new 0 0 148.2 100;" xml:space="preserve">
          <g>
            <path d="M148.2,5.9c0-3.4-2.7-5.9-5.9-5.9H5.9C2.5,0,0,2.7,0,5.9v83h148.2V5.9z M140.7,77H7.5V8.4h133.4L140.7,77L140.7,77z"/>
            <path d="M5,100h138.2c2.7,0,5-3,5-6.6v-3.9h-58v1.4c0,2-1.8,3.9-4.1,3.9H62c-2.3,0-4.1-1.8-4.1-3.9v-1.4H0v3.9C0,97,2.3,100,5,100z
              "/>
          </g>
          </svg>
        </figure>
        <p class="a-icon-text">Desktop Screens</p>
      </span>
    <span class="slide-div demo-tab demo-tab" name="demo-tab">
        <figure class="m-icon">
          <svg version="1.1" class="a-icon tablet" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
               viewBox="0 0 69.1 100" style="enable-background:new 0 0 69.1 100;" xml:space="preserve">
          <g>
            <path d="M63.4,0H5.8C2.6,0,0,2.6,0,5.8v88.5c0,3.2,2.6,5.8,5.8,5.8h57.6c3.2,0,5.8-2.6,5.8-5.8V5.8C69.2,2.6,66.5,0,63.4,0z
               M34.6,97.4c-2.7,0-4.8-2.2-4.8-4.8c0-2.7,2.2-4.8,4.8-4.8c2.7,0,4.8,2.2,4.8,4.8C39.3,95.2,37.3,97.4,34.6,97.4z M63.5,83.8H5.6V6
              h57.8V83.8z"/>
            <circle cx="34.6" cy="92.6" r="2.9"/>
          </g>
          </svg>
        </figure>
        <p class="a-icon-text">Tablet Screens</p>
      </span>
    <span class="slide-div demo-tab demo-mob" name="demo-mob">
        <figure class="m-icon">
          <svg version="1.1" class="a-icon mobile" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
               viewBox="0 0 51.6 100" style="enable-background:new 0 0 51.6 100;" xml:space="preserve">
          <g>
            <path d="M46.1,0H5.5C2.5,0,0,2.5,0,5.5v88.9c0,3.1,2.5,5.5,5.5,5.5h40.5c3.1,0,5.5-2.5,5.5-5.5V5.7C51.6,2.6,49.1,0,46.1,0z
               M25.8,97.5c-2.6,0-4.6-2.1-4.6-4.6s2.1-4.6,4.6-4.6c2.6,0,4.6,2.1,4.6,4.6S28.4,97.5,25.8,97.5z M46.2,84.6H5.4V9.8h40.8V84.6z"/>
            <circle cx="25.8" cy="92.9" r="2.8"/>
          </g>
          </svg>
        </figure>
        <p class="a-icon-text">Mobile Screens</p>
      </span>
  </nav>

  <div class="o-tab slide-content" id="details">
    <div class="m-detail date date-start">
      <h4 class="a-title">Start date</h4>
      <p class="a-detail"><?php the_field('start_date') ?></p>
    </div>
    <div class="m-detail project-info">
      <h3 class="a-title"><?php the_title() ?></h3>
      <?php the_content() ?>
      <h4 class="a-title">Nuts & Bolts</h4>
      <p class="a-detail"><?php the_field('technologies') ?></p>
      <h4 class="a-title">The stuff I did ...</h4>
      <p class="a-detail"><?php the_field('my_role') ?></p>
    </div>
    <div class="m-detail date date-end">
      <h4 class="a-title">End date</h4>
      <p class="a-detail"><?php the_field('end_date') ?></p>
    </div>
  </div>

  <div class="o-tab slide-content" id="demo-desk">
    <div class="o-wrapper">
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
    </div>
  </div>

  <div class="o-tab slide-content" id="demo-tab">
    <div class="o-wrapper">

      <div class="owl-tablet owl-carousel owl-theme">

        <?php
        //Get the images ids from the post_metadata
        $images = acf_photo_gallery('gallery_tab', $post->ID);
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

    </div>
  </div>


  <div class="o-tab slide-content" id="demo-mob">
    <div class="o-wrapper">

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

    </div>
  </div>

  <?php endwhile; // end of the loop. ?>

  <!-- C.2. END --------------------------------------- -->

  <!-- C.3. FOOTER  ----------------------------------- -->

<!--  <?php //get_footer(); ?>-->

  <!-- C.3. END --------------------------------------- -->

</main>

<!-- C. END +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->

<!-- D. JAVASCRIPT ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->

<!-- D.1. FOOTER JS -->

<?php get_template_part( 'inc/footer-scripts' ); ?>

<style>
  html, body { height: 100%; }
</style>

<!-- D. END +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->