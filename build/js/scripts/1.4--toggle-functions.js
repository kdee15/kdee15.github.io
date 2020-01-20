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