var AreaMapView = Backbone.View.extend({
  el: '.area-map',

  events: {
    'click .area-map-zone' : 'zoneClicked'
  },

  initialize: function() {
    this.areaId = this.$el.data('areaId');
  },

  render: function() {
    this.$el.load('/areas/' + this.areaId);
  },

  zoneClicked: function(evt) {
    var $zone = $(evt.currentTarget);
    $.post('/checkins', {
      x: (evt.pageX - $zone.offset().left) / $zone.width(),
      y: (evt.pageY - $zone.offset().top) / $zone.height(),
      zone_id: $zone.data('zoneId')
    }, function() {
      this.render();
    }.bind(this));
    return false;
  }
});
