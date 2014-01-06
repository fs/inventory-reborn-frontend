application = require 'application'

module.exports = class AppLayout extends Backbone.Marionette.Layout
  template: 'views/templates/layouts/appLayout'
  el: "body"
  regions:
    content: "#content"

