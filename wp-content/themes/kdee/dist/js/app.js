// JAVASCRIPT LAYER [APP.JS]  =========================================================================================

jQuery(document).ready(function($) {
/*
 * JavaScript Templates Runtime
 * https://github.com/blueimp/JavaScript-Templates
 *
 * Copyright 2011, Sebastian Tschan
 * https://blueimp.net
 *
 * Licensed under the MIT license:
 * http://www.opensource.org/licenses/MIT
 */

/* global define */

;(function ($) {
    'use strict'
    var tmpl = function (id, data) {
        var f = tmpl.cache[id]
        return data ? f(data, tmpl) : function (data) {
            return f(data, tmpl)
        }
    }
    tmpl.cache = {}
    tmpl.encReg = /[<>&"'\x00]/g // eslint-disable-line no-control-regex
    tmpl.encMap = {
        '<': '&lt;',
        '>': '&gt;',
        '&': '&amp;',
        '"': '&quot;',
        "'": '&#39;'
    }
    tmpl.encode = function (s) {
        return (s == null ? '' : '' + s).replace(
            tmpl.encReg,
            function (c) {
                return tmpl.encMap[c] || ''
            }
        )
    }
    if (typeof define === 'function' && define.amd) {
        define(function () {
            return tmpl
        })
    } else if (typeof module === 'object' && module.exports) {
        module.exports = tmpl
    } else {
        $.tmpl = tmpl
    }
}(this))
// JAVASCRIPT LAYER [APP.JS]  =========================================================================================

// ====== INDEX  ======================================================================================================
// ==
// == A. MOBILE CLASS
// ==
// ====== INDEX  ======================================================================================================

// A. SHOW/HIDE +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
// A.1. MOBILE CLASS --------------------------------------------------------------------------------------------------
    
  var deviceAgent = navigator.userAgent.toLowerCase();

  $('html').addClass('desktop');
  
  if (deviceAgent.match(/(iphone|ipod|ipad)/)) {
    $('html').removeClass('desktop');
    $('html').addClass('ios');
    $('html').addClass('mobile');
  }
  
  if (deviceAgent.match(/android/)) {
    $('html').removeClass('desktop');
    $('html').addClass('android');
    $('html').addClass('mobile');
  }
  
  if (deviceAgent.match(/blackberry/)) {
    $('html').removeClass('desktop');
    $('html').addClass('blackberry');
    $('html').addClass('mobile');
  }
  
  if (deviceAgent.match(/(symbianos|^sonyericsson|^nokia|^samsung|^lg)/)) {
    $('html').removeClass('desktop');
    $('html').addClass('mobile');
  }
    
// A.1. END -----------------------------------------------------------------------------------------------------------
  
// A. END +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// JAVASCRIPT LAYER [APP.JS]  =========================================================================================

// A. GLOBAL FUNCTIONS ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
// A.1. FUNCTIONS -----------------------------------------

initToggleFunctions();
initSwiperFunctions();
initScrollFunctions();
initAltTextFunctions();

// A.1. END -----------------------------------------------

// A.2. SCREEN SIZE CHECK ---------------------------------
    
	var screen = $( window ).width();
	console.log('I am a device, and my width is: ' + screen);
    
// A.2. END -----------------------------------------------

// A. END +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// JAVASCRIPT LAYER [APP.JS]  =========================================================================================

// A. TOGGLE FUNCTIONS ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

function initToggleFunctions() {

  // A.1. GENERAL SHOW ------------------------------------

  $('.showhide').click(function(e) {

    var target = $(this).attr('href');

    if ($(target).hasClass('hidden') ) {

      $(target).removeClass('hidden');
      $('.showhide').addClass('close');

    } else {

      $(target).addClass('hidden');
      $('.showhide').removeClass('close');

    }

    e.preventDefault();

  });

  // A.1. END ---------------------------------------------

  // A.2. TOGGLE DIV --------------------------------------

  var currentContent = '';
  $('.toggle-div').on('click', function(){
    currentContent = $(this).attr('name');
    if($('#'+currentContent).hasClass('on')){
      $('#'+currentContent).removeClass('on');
    }else{
      hideAllContent();
      showCurrentContent(currentContent);
    }
  });

  function hideAllContent(){
    $('.toggle-content').removeClass('on');
  };

  function showCurrentContent(currentContentDiv){
    $('#'+currentContentDiv).addClass('on');
  };

  // A.2. END ---------------------------------------------

  // A.3. SLIDE DIV --------------------------------------

  var slideContent = '';
  $('.slide-div').on('click', function(){
    slideContent = $(this).attr('name');
    if($('#'+slideContent).hasClass('on')){
      $('#'+slideContent).removeClass('on');
      $('.'+slideContent).removeClass('on');
    }else{
      hideSlideContent();
      showSlideContent(slideContent);
    }
  });

  function hideSlideContent(){
    $('.slide-div').removeClass('on');
    $('.slide-content').removeClass('on');
  };

  function showSlideContent(slideContentDiv){
    $('#'+slideContentDiv).addClass('on');
    $('.'+slideContentDiv).addClass('on');
  };

  // A.3. END ---------------------------------------------

  // A.4. MOBILE SHOWHIDE ---------------------------------

  (function($){
    if($('html').hasClass('mobile')){
      $('.a-config').on('click', function(){
        //e.preventDefault();
        if($('.a-config').hasClass('active')){
          $('.a-config').removeClass('active');
          $('body').removeClass('fixed');
        } else {
          $('.a-config').addClass('active');
          $('body').addClass('fixed');
        }
      });
    }
  })(jQuery)

  // A.4. END ---------------------------------------------

  // A.5. BURGER MENU -------------------------------------

  $('.reveal').click(function(e) {

    var target = $(this).attr('href');

    if ($(target).hasClass('hidden') ) {

      $(target).removeClass('hidden');
      $('.reveal').addClass('close');

    } else {

      $(target).addClass('hidden');
      $('.reveal').removeClass('close');

    }

    e.preventDefault();

  });

  $('.o-hamburger').click(function(e) {

    var target = $(this).attr('href');

    if ($(target).hasClass('hidden') ) {

      $(target).removeClass('hidden');
      $('.c-hamburger').addClass('is-active');
      $('body').addClass('fixed');

    } else {

      $(target).addClass('hidden');
      $('.c-hamburger').removeClass('is-active');
      $('body').removeClass('fixed');

    }

    e.preventDefault();

  });


  var burgerContent = '';
  $('.o-hamburger').on('click', function(){
    burgerContent = $(this).attr('name');
    if($('#'+burgerContent).hasClass('on')){
      $('#'+burgerContent).removeClass('on');
      $('.'+burgerContent).removeClass('on');
      $('.o-navigation').removeClass('on');
    }else{
      hideBurgerContent();
      showBurgerContent(burgerContent);
    }
  });

  function hideBurgerContent(){
    $('.o-burger-nav').removeClass('on');
    $('.o-hamburger').removeClass('on');
    $('.o-navigation').removeClass('on');
  };

  function showBurgerContent(burgerContentDiv){
    $('#'+burgerContentDiv).addClass('on');
    $('.'+burgerContentDiv).addClass('on');
    $('.o-navigation').addClass('on');
  };

  $('.a-scroll-link').on('click', function(){
    $('.o-navigation').removeClass('on');
    $('.burger-nav').removeClass('on');
    $('#burger-nav').removeClass('on');
  });

  // A.5. END ---------------------------------------------

  // A.6. MODAL POPUPS ------------------------------------

  var modalContent = '';
  $('.modal-open').on('click', function(){
    modalContent = $(this).attr('name');
    if($('#'+modalContent).hasClass('on')){
      $('#'+modalContent).removeClass('on');
      $('body').removeClass('modal-open');
    }else{
      hideAllContent();
      showmodalContent(modalContent);
    }
  });

  function hideAllContent(){
    $('.o-modal-full').removeClass('on');
    $('body').removeClass('modal-open');
  };

  function showmodalContent(modalContentDiv){
    $('#'+modalContentDiv).addClass('on');
    $('body').addClass('modal-open');
  };

  // A.6. END ---------------------------------------------

}

// A. END +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// JAVASCRIPT LAYER [APP.JS]  =========================================================================================

// A. CAROUSEL FUNCTIONS ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

function initSwiperFunctions() {

  // A.1. HOME CAROUSEL -----------------------------------

  $('.owl-desktop').owlCarousel({
    loop:true,
    nav:true,
    dots: true,
    responsive:{
      0:{
        items:1
      },
      600:{
        items:1
      },
      1000:{
        items:1
      }
    }
  })

  // A.1. END ---------------------------------------------

  // A.1. HOME CAROUSEL -----------------------------------

  $('.owl-tablet').owlCarousel({ 
    loop:true,
    nav:true,
    dots: true,
    responsive:{
      0:{
        items:1
      },
      992:{
        items:2
      },
      1200:{
        items:3
      }
    }
  })

  // A.1. END ---------------------------------------------

  // A.1. HOME CAROUSEL -----------------------------------

  $('.owl-mobile').owlCarousel({
    loop:true,
    nav:true,
    dots: true,
    responsive:{
      0:{
        items:1
      },
      450:{
        items:2
      },
      768:{
        items:3
      },
      992:{
        items:4
      }
    }
  })

  // A.1. END ---------------------------------------------

}
    

// A. END +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// JAVASCRIPT LAYER [APP.JS]  =========================================================================================

// A. SHOW/HIDE +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// A.9. AUTO HEIGHT ---------------------------------------------------------------------------------------------------

/*
    http://codepen.io/micahgodbolt/pen/FgqLc

    Thanks to CSS Tricks for pointing out this bit of jQuery
    http://css-tricks.com/equal-height-blocks-in-rows/
    It's been modified into a function called at page load and then each time the page is resized.
    One large modification was to remove the set height before each new calculation.
*/

var equalheight;
equalheight = function (container) {
  var currentTallest = 0,
      currentRowStart = 0,
      topPosition = 0,
      currentDiv = 0,
      rowDivs = [],
      $el;
  $(container).each(function () {

    $el = $(this);
    $($el).height('auto');
    topPosition = $el.position().top;

    if (currentRowStart != topPosition) {
      for (currentDiv = 0; currentDiv < rowDivs.length; currentDiv++) {
        rowDivs[currentDiv].height(currentTallest);
      }
      rowDivs.length = 0; // empty the array
      currentRowStart = topPosition;
      currentTallest = $el.height();
      rowDivs.push($el);
    } else {
      rowDivs.push($el);
      currentTallest = (currentTallest < $el.height()) ? ($el.height()) : (currentTallest);
    }
    for (currentDiv = 0; currentDiv < rowDivs.length; currentDiv++) {
      rowDivs[currentDiv].height(currentTallest);
    }
  });
};

$(document).ready(function() {

  equalheight('.features-block .reason-card .m-card-title');
  equalheight('.features-block .reason-card .m-card-body');

  if($(window).width() >= 767) {

    equalheight('.reasons-block .reason-card .m-card-title');
    equalheight('.reasons-block .reason-card .m-card-body');

  }

});

$(window).resize(function() {

  equalheight('.features-block .reason-card .m-card-title');
  equalheight('.features-block .reason-card .m-card-body');

  if($(window).width() >= 767) {

    equalheight('.reasons-block .reason-card .m-card-title');
    equalheight('.reasons-block .reason-card .m-card-body');

  }

});

// A.9. END -----------------------------------------------------------------------------------------------------------

// A. END +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
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
  // var RandomNumPath = 'http://www.kdee.co.za/wp-content/themes/kdee';
  var RandomNumPath = 'http://staging.kdee.co.za/kdee.co.za/wp-content/themes/kdee';
  // var RandomNumPath = 'http://localhost/kdee/kdee.co.za/3_root/wp-content/themes/kdee';
  var RandomNum = Math.floor( Math.random() * totalImages);

  $(document).ready(function(){

    $('.o-home-header').attr("style","background-image:url('"+ RandomNumPath +"/dist/images/background/bg-main"+RandomNum+".jpg')");
    $('.contact-block').attr("style","background-image:url('"+ RandomNumPath +"/dist/images/background/bg-contact"+RandomNum+".jpg')");
    //$('.article').attr("style","background-image:url('../../../../../dist/images/background/bg-main"+RandomNum+".jpg')");

  });

  // A.2. END ---------------------------------------------

}
    

// A. END +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// FILE END +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

});