(function ($, document) {
  'use strict'

  function initialize () {
    if(!$("#wedding_response_names").val().length) {
      $('.coming').hide();
    }
    if(!$('#wedding_response_coming_yes').is(':checked')) {
      $('.staying-details').hide();
      $('.message-box').hide();
    }
    if(!$('#wedding_response_coming_no').is(':checked')) {
      $('.message-box').hide();
    }
  };

  function onNamesEntered () {
   $('.coming').show();
  }

  function onClickYes () {
    $('.staying-details').show('slow', 'linear');
    $('.message-box').show();
  };

  function onClickNo () {
    $('.staying-details').hide('slow', 'linear');
    $('.message-box').show();
  };

  $(document).ready(initialize)
             .on('keyup', '#wedding_response_names', onNamesEntered)
             .on('click', '#wedding_response_coming_yes', onClickYes)
             .on('click', '#wedding_response_coming_no', onClickNo)
})(jQuery, document)

