var WaldoView = Backbone.View.extend({
  el: 'body',
  loadingRequests: 0,

  events: {
    'loading:start': 'loadingStart',
    'loading:stop' : 'loadingStop'
  },

  render: function() {
    this.$el.toggleClass('loading', this.loadingRequests > 0);
  },

  loadingStart: function() {
    this.loadingRequests++;
    this.render();
  },

  loadingStop: function() {
    this.loadingRequests--;
    this.render();
  }
});
