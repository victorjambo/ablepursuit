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
//= require tether
//= require bootstrap
//= require select2-full
//= require jquery_ujs
//= require pnotify
//= require jquery.lazyload.js
//= require turbolinks
//= require_tree .


// Navigation Scripts to Show Header on Scroll-Up
$(document).on('turbolinks:load', function() {
  $("header").lazyload();
  var MQL = 1170;

  //primary navigation slide-in effect
  if ($(window).width() > MQL) {
    var headerHeight = $(".navbar-custom").height();
    $(window).on("scroll", {
      previousTop: 0
    },
    function() {
      var currentTop = $(window).scrollTop();
      //check if user is scrolling up
      if (currentTop < this.previousTop) {
        //if scrolling up...
        if (currentTop > 0 && $(".navbar-custom").hasClass("is-fixed")) {
          $(".navbar-custom").addClass("is-visible");
        } else {
          $(".navbar-custom").removeClass("is-visible is-fixed");
        }
      } else if (currentTop > this.previousTop) {
        //if scrolling down...
        $(".navbar-custom").removeClass("is-visible");
        if (currentTop > headerHeight && !$(".navbar-custom").hasClass("is-fixed")) {
          $(".navbar-custom").addClass("is-fixed");
        }
      }
      this.previousTop = currentTop;
    });
  }

  // change css on show page
  var urlRegex = /(profiles\/\d+|users)/; //regex
  var match = window.location.pathname.match(urlRegex); //returns true or false
  if (match) { 
    $(".navbar-custom .nav li a, .navbar-custom .navbar-brand").css({
      color: "#000"
    });
  }

  // back to top link
  $(window).scroll(function() {
    if($(document).scrollTop() > 552) {
      $("#go-top").css({
        display: "block"
      });
    }
    else {
      $("#go-top").css({
        display: "none"
      });
    }
  });

  // Navbar harmburger menu disappear on click out 
  $(document).click(function (event) {
    var clickover = $(event.target);
    var _opened = $(".navbar-collapse").hasClass("collapse in");
    if (_opened === true && !clickover.hasClass("navbar-toggle")) {
      $("button.navbar-toggle").click();
    }
  });

  
});