$(document).ready(function() {
  $(document).on('click', '.area-map-zone', function(e) {
    $.post('/checkins', {
      x: (e.pageX - $(this).offset().left) / $(this).width(),
      y: (e.pageY - $(this).offset().top) / $(this).height(),
      zone_id: $(this).data('zoneId')
    }, function() {
      window.location.href = window.location.href;
    });
    return false;
  });
});
