$('.area-map').each(function() {
  new AreaMapView({ el: this });
});

// Forward events to each map
$('.areas').on('checkin:updated', function() {
  $('.area-map').trigger('checkin:updated');
});
