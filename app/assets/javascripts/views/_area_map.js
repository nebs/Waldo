var AreaMapView = Backbone.View.extend({
  events: {
    'click .area-map-zone' : 'zoneClicked',
    'checkin:updated'      : 'checkinUpdated'
  },

  initialize: function() {
    this.areaId = this.$el.data('areaId');
  },

  render: function() {
    this.startLoading();
    this.$el.load('/areas/' + this.areaId, function() {
      this.stopLoading();
    }.bind(this));
  },

  checkinUpdated: function() {
    this.render();
    return false;
  },

  startLoading: function() {
    if (this.isLoading()) {
      return;
    }

    this.$el.trigger('loading:start');
    this.$el.addClass('loading');
  },

  stopLoading: function() {
    if (!this.isLoading()) {
      return;
    }

    this.$el.trigger('loading:stop');
    this.$el.removeClass('loading');
  },

  isLoading: function() {
    return this.$el.hasClass('loading');
  },

  zoneClicked: function(evt) {
    if (this.isLoading()) {
      return;
    }

    var $zone = $(evt.currentTarget);
    this.startLoading();
    $.post('/checkins', {
      x: (evt.pageX - $zone.offset().left) / $zone.width(),
      y: (evt.pageY - $zone.offset().top) / $zone.height(),
      zone_id: $zone.data('zoneId')
    }, function() {
      this.$el.closest('.areas').trigger('checkin:updated');
    }.bind(this));
    return false;
  }
});
