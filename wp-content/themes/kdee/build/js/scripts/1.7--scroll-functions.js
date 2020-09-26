// JAVASCRIPT LAYER [APP.JS]  =========================================================================================

// A. SCROLL FUNCTIONS ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

function initScrollFunctions() {

// A.4. STICKY BLOCK --------------------------------------------------------------------------------------------------

  gsap.registerPlugin(ScrollTrigger);

  var elemCardBGs = document.querySelectorAll('.a-card-bg, .m-card-footer')

  for (var iT = 0; iT < elemCardBGs.length; iT++) {
    var elemCardBG = elemCardBGs[iT];
    var tl1 = gsap.timeline({
      defaults: {duration: 4},
      scrollTrigger: {
        trigger: elemCardBG,
        scrub: true,
        start: "top bottom",
        end: "top center",
        pinSpacing: true,
      }
    })
      .from(elemCardBG, {y: 80})
      .fromTo(elemCardBG, {opacity: 0}, {opacity: 1})

  }

  var elemCardPics = document.querySelectorAll('.m-card-image, .m-card-body')

  for (var i2 = 0; i2 < elemCardPics.length; i2++) {
    var elemCardPic = elemCardPics[i2];
    var tl2 = gsap.timeline({
      defaults: {duration: 2},
      scrollTrigger: {
        trigger: elemCardPic,
        scrub: true,
        start: "top bottom",
        end: "top center",
        pinSpacing: true,
      }
    })
      .fromTo(elemCardPic, {opacity: 0}, {opacity: 1})
  }

  var elemCardTitles = document.querySelectorAll('.a-card-header, .m-text-wrapper')

  for (var i3 = 0; i3 < elemCardTitles.length; i3++) {
    var elemCardTitle = elemCardTitles[i3];
    var tl3 = gsap.timeline({
      defaults: {duration: 2},
      scrollTrigger: {
        trigger: elemCardTitle,
        scrub: true,
        start: "top bottom",
        end: "top center",
        pinSpacing: true,
      }
    })
      .fromTo(elemCardTitle, {x: -100}, {x: 0})
  }

  var elemCardLinks = document.querySelectorAll('.a-card-link')

  for (var i4 = 0; i4 < elemCardLinks.length; i4++) {
    var elemCardLink = elemCardLinks[i4];
    var tl4 = gsap.timeline({
      defaults: {duration: 2},
      scrollTrigger: {
        trigger: elemCardLink,
        scrub: true,
        start: "top bottom",
        end: "top center",
        pinSpacing: true,
      }
    })
      .fromTo(elemCardLink, {y: 50}, {y: 0})
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