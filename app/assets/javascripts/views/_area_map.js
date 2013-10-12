var AreaMapView = Backbone.View.extend({
  el: '.area-map',

  events: {
    'click .area-map-zone' : 'zoneClicked'
  },

  zoneClicked: function(evt) {
    var $zone = $(evt.currentTarget);
    $.post('/checkins', {
      x: (evt.pageX - $zone.offset().left) / $zone.width(),
      y: (evt.pageY - $zone.offset().top) / $zone.height(),
      zone_id: $zone.data('zoneId')
    }, function() {
      window.location.href = window.location.href;
    });
    return false;
  }
});
