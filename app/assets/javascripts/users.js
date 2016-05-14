$(function() {
  $('#copy_address').change(function() {
    $('#user_permanent_address').val($('#user_current_address').val());
  });
  $('#user_source_other').change(function() {
    if($(this).is(':checked')) {
      $('#other_text').show();
    } else {
      $('#other_text').hide();
    }
  }).change();
});
