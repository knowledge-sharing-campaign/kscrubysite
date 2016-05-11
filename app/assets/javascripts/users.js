$(function() {
  $('#copy_address').change(function() {
    $('#user_permanent_address').val($('#user_current_address').val());
  });
  $('input[name="user[source]"]').change(function() {
    if($('input[name="user[source]"]:checked').val() === 'Other') {
      $('#user_source').show();
    } else {
      $('#user_source').hide();
    }
  });
  $('input[name="user[source]"]').change();
});
