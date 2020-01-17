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

<?php get_template_part( 'inc/navigation-page' ); ?>

<!-- C.1. END ----------------------------------------- -->

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

  <ul class="o-project-nav">
    <li class="m-nav-item project-details"><span class="slide-div details" name="details">Project Details</span></li>
    <li class="m-nav-item project-demos">
      <span class="m-nav-title">Demos</span>
      <span class="slide-div demo-tab demo-desk" name="demo-desk">
        <figure class="m-icon">
          <svg version="1.1" class="a-icon laptop" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
               viewBox="0 0 100 100" style="enable-background:new 0 0 100 100;" xml:space="preserve">
          <g>
            <path d="M82.6,30.6c0-1.5-1.2-2.6-2.6-2.6H20c-1.5,0-2.6,1.2-2.6,2.6v36.5h65.2V30.6z M79.3,61.9H20.7V31.7h58.7L79.3,61.9
              L79.3,61.9z"/>
            <path d="M19.6,72h60.8c1.2,0,2.2-1.3,2.2-2.9v-1.7H57.1V68c0,0.9-0.8,1.7-1.8,1.7H44.7c-1,0-1.8-0.8-1.8-1.7v-0.6H17.4v1.7
              C17.4,70.7,18.4,72,19.6,72z"/>
          </g>
          </svg>
        </figure>
      </span>
      <span class="slide-div demo-tab demo-tab" name="demo-tab">
        <figure class="m-icon">
          <svg version="1.1" class="a-icon tablet" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
               viewBox="0 0 100 100" style="enable-background:new 0 0 100 100;" xml:space="preserve">
          <g>
            <path d="M73.5,9.2h-47c-2.6,0-4.7,2.1-4.7,4.7v72.2c0,2.6,2.1,4.7,4.7,4.7h47c2.6,0,4.7-2.1,4.7-4.7V13.9
              C78.3,11.3,76.1,9.2,73.5,9.2z M50,88.7c-2.2,0-3.9-1.8-3.9-3.9c0-2.2,1.8-3.9,3.9-3.9c2.2,0,3.9,1.8,3.9,3.9
              C53.9,86.9,52.2,88.7,50,88.7z M73.6,77.6H26.4V14.1h47.2V77.6z"/>
            <circle cx="50" cy="84.8" r="2.4"/>
          </g>
          </svg>
        </figure>
      </span>
      <span class="slide-div demo-tab demo-mob" name="demo-mob">
        <figure class="m-icon">
          <svg version="1.1" class="a-icon mobile" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
               viewBox="0 0 100 100" style="enable-background:new 0 0 100 100;" xml:space="preserve">
          <g>
            <path d="M67.2,7.6H32.8c-2.6,0-4.7,2.1-4.7,4.7v75.5c0,2.6,2.1,4.7,4.7,4.7h34.4c2.6,0,4.7-2.1,4.7-4.7V12.4
              C71.9,9.8,69.8,7.6,67.2,7.6z M50,90.4c-2.2,0-3.9-1.8-3.9-3.9s1.8-3.9,3.9-3.9c2.2,0,3.9,1.8,3.9,3.9S52.2,90.4,50,90.4z
               M67.3,79.4H32.7V15.9h34.6V79.4z"/>
            <circle cx="50" cy="86.5" r="2.4"/>
          </g>
          </svg>
        </figure>
      </span>
    </li>
  </ul>

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