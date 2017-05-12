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
     isClosed = false;

  $("body").click(function(e) {
    if($('.hamburger').hasClass('is-open')){
      if ($(e.target).hasClass('nav')) {
        console.log('false');
          return false;
      }
      else if ($(e.target).hasClass('hamburger')) {
        console.log('false');
          return false;
      }
      else if ($(e.target) == $('[data-toggle="offcanvas"]')) {
        console.log('run')
        return false;
      }
      else{
        run();
      }
    }
    
  })
  function run(e) {
    e.preventDefault();
    $("#wrapper").toggleClass("active");
  }
  $('[data-toggle="offcanvas"]').click(function(e) {
      run(e);
  });


});