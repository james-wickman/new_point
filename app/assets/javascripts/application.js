// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require underscore
//= require gmaps/google
//= require_tree .

$(document).on('turbolinks:load', function () {
  $(".home_button").on('click', function() {
      $('html,body').animate({
          scrollTop: $("#home").offset().top},
          'slow');
  });
  $(".products_button").on('click', function() {
      $('html,body').animate({
          scrollTop: $("#products").offset().top},
          'slow');
  });
  $(".distribution_button").on('click', function() {
      $('html,body').animate({
          scrollTop: $("#distribution").offset().top},
          'slow');
  });
  $(".about_us_button").on('click', function() {
      $('html,body').animate({
          scrollTop: $("#about_us").offset().top},
          'slow');
  });
  $(".contact_us_button").on('click', function() {
      $('html,body').animate({
          scrollTop: $("#contact_us").offset().top},
          'slow');
  });
  var trigger = $('.hamburger'),
    overlay = $('.overlay'),
    isClosed = true;

  if ($(window).scrollTop() < 50) {
    run();isClosed = true;
  trigger.removeClass('is-closed');
  trigger.addClass('is-open');
  isClosed = false;
  }
  document.addEventListener('scroll', function (e) {
    if (window.location.hash == '' && $(window).scrollTop() > 10) {
      if (isClosed == false) {
        run();
      }
    }
    else if (window.location.hash == '' && $(window).scrollTop() < 10) {
      if (isClosed == true) {
        run();
      }
    }
  })
  
    function hamburger_cross() {
      if (isClosed == false) {          
        overlay.hide();
        trigger.removeClass('is-open');
        trigger.addClass('is-closed');
        isClosed = true;
      } else {   
        overlay.show();
        trigger.removeClass('is-closed');
        trigger.addClass('is-open');
        isClosed = false;
      }
  }
  function run(e) {
    $("#wrapper").toggleClass("active");
    hamburger_cross();
  }
  $('[data-toggle="offcanvas"]').click(function(e) {
      run(e);
  });


});