/* global jQuery */
(function ($, document) {
  'use strict'
  $(window).scroll(function() {
    var topOfInfo = $('#info').offset().top;
    var upFromBottom = 100;

    if ($(window).scrollTop() + $(window).height() + upFromBottom > $(document).height()) {
      $('.flapping').hide();
      $('.falling').show();
    }
    if ($(window).scrollTop() + $(window).height() + upFromBottom < $(document).height()) {
      $('.flapping').show();
      $('.falling').hide();
    }
  })
})(jQuery, document)
