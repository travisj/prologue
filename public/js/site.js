(function() {
  $(function() {
    var App, app;
    App = Backbone.View.extend({
      el: '#container',
      template: $("#my-template").html(),
      initialize: function() {
        return this.render();
      },
      render: function() {
        $(this.el).html(Mustache.to_html(this.template, {
          title: 'the Prologue'
        }));
        return this;
      }
    });
    return app = new App;
  });
}).call(this);
