$(document).ready(function() {
  $(document).on('click', '.room', function(e) {
    $.post('/checkins', {
      x: (e.pageX - $(this).offset().left) / $(this).width(),
      y: (e.pageY - $(this).offset().top) / $(this).height(),
      room_id: $(this).data('roomId')
    }, function() {
      window.location.href = '/home';
    });
    return false;
  });
});
