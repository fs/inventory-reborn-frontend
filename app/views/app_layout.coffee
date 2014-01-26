module.exports = class AppLayout extends Backbone.Marionette.Layout
  template: 'templates/layouts/app_layout'
  el: "body"
  regions:
    content: "#content"

