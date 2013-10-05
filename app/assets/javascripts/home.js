var checkin = function(e) {
  var roomId = $(this).data('roomId');

  var posX = $('.floorplan').offset().left,
      posY = $('.floorplan').offset().top;

  posX = (e.pageX - posX);
  posY = (e.pageY - posY);

  posX = posX / $('.floorplan').width();
  posY = posY / $('.floorplan').height();

  var options = {
    x: posX,
    y: posY
  };

  if (roomId) {
    options.room_id = roomId
  }

  $.post('/checkins', options, function() {
    window.location.href = '/home';
  });

  return false;
}

$(document).ready(function() {
  $(document).on('click', '.room', checkin);
  $(document).on('click', '.floorplan', checkin);
});
