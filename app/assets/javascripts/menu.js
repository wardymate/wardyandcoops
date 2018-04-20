(function ($, document) {
  'use strict'

  function onClickMobileLink () {
    $('.navbar-toggleable-xs').toggleClass('show')
  }

  $(document).on('click', '.navbar-toggleable-xs a', onClickMobileLink)
})(jQuery, document)

