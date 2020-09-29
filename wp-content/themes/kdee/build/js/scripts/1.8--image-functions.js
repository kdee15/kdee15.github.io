// JAVASCRIPT LAYER [APP.JS]  =========================================================================================

// A. SCROLL FUNCTIONS ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

function initAltTextFunctions() {

  // A.1. INSTA IMAGE MANIPULATE --------------------------

  $(".instagram-pics img").each(function() {
    $(this).after('<div class="m-image-text"><p class="alt">' + $(this).attr('alt') + '</p></div>');
    $(".o-insta-feed .clear a").addClass("a-btn btn-blue");
  })

  // A.1. END ---------------------------------------------

  // A.2. RANDOM BACKGROUND -------------------------------

  var totalImages = 1;
  var RandomNumPath = 'http://www.kdee.co.za/wp-content/themes/kdee';
  // var RandomNumPath = 'http://staging.kdee.co.za/kdee.co.za/wp-content/themes/kdee';
  // var RandomNumPath = 'http://localhost/kdee/kdee.co.za/3_root/wp-content/themes/kdee';
  var RandomNum = Math.floor( Math.random() * totalImages);

  $(document).ready(function(){

    $('.o-home-header').attr("style","background-image:url('"+ RandomNumPath +"/dist/images/background/bg-main"+RandomNum+".jpg')");
    $('.contact-block').attr("style","background-image:url('"+ RandomNumPath +"/dist/images/background/bg-contact"+RandomNum+".jpg')");

  });

  // A.2. END ---------------------------------------------

}
    

// A. END +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++