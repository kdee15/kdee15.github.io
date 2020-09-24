// JAVASCRIPT LAYER [APP.JS]  =========================================================================================

// A. SCROLL FUNCTIONS ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

function initScrollFunctions() {

// A.4. STICKY BLOCK --------------------------------------------------------------------------------------------------

  var targets = document.querySelectorAll('.blog-card')

  for (var iT = 0; iT < targets.length; iT++) {
    var textElem = targets[iT];
    var tl2 = gsap.timeline({
      defaults: {duration: 4},
      scrollTrigger: {
        trigger: textElem,
        scrub: true,
        start: "top bottom",
        end: "top 25vh",
        pinSpacing: true,
      }
    })
      // .fromTo(textElem, {y: 20}, {y: -90})
      // .fromTo(textElem, {scale: 1.1}, {scale: 1})
      // .fromTo(textElem, {opacity: 1}, {opacity: 0})
  }


// A.4. END -----------------------------------------------------------------------------------------------------------

// A.3. SCROLL TO LINK ------------------------------------------------------------------------------------------------

  $(".a-scroll-link").click(function(event){

    event.preventDefault();

    //calculate destination place
    var dest=0;
    if($(this.hash).offset().top > $(document).height()-$(window).height()){
      dest=$(document).height()-$(window).height();
    }else{
      dest=$(this.hash).offset().top;
    }

    //go to destination
    $('html,body').animate({scrollTop:dest}, 1000,'swing');


    //add active class
    $('.a-scroll-link').removeClass('active');
    $(this).addClass('active');

  });

// A.3. END -----------------------------------------------------------------------------------------------------------


  // A.1. END ---------------------------------------------

}
    

// A. END +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++