(function ($, document) {
  'use strict'

  function initialize () {
    if(!$('#wedding_response_coming_yes').is(':checked')) {
      $('.staying-details').hide();
      $('.message-box').hide();
    }
    if(!$('#wedding_response_coming_no').is(':checked')) {
      $('.message-box').hide();
    }
  };

  function onClickYes () {
    $('.staying-details').show('slow', 'linear');
    $('.message-box').show();
  };

  function onClickNo () {
    $('.staying-details').hide('slow', 'linear');
    $('.message-box').show();
  };

  $(document).ready(initialize)
             .on('click', '#wedding_response_coming_yes', onClickYes)
             .on('click', '#wedding_response_coming_no', onClickNo)
})(jQuery, document)

