/* global jQuery */
(function ($, document) {
  'use strict'
  $(window).scroll(function() {
    var topOfInfo = $('#info').offset().top;
    var upFromBottom = 100;
    if ($(document).scrollTop() > topOfInfo) {
      $('#animate').addClass('sticky-flapping');
    }
    if ($(window).scrollTop() + $(window).height() + upFromBottom > $(document).height()) {
      $('#animate').removeClass('flapping');
      $('#animate').addClass('falling');
    }
    if ($(window).scrollTop() + $(window).height() + upFromBottom < $(document).height()) {
      $('#animate').addClass('flapping');
      $('#animate').removeClass('falling');
    }
  })
})(jQuery, document)
