require 'lib/template_renderer'
require 'modules/auth'
Application = require 'application'
AppLayout = require 'views/app_layout'

Application.on "initialize:after", (options) ->
  Backbone.history.start()
  # Freeze the object
  Object.freeze? this

Application.addInitializer ->
  Application.layout = new AppLayout()
  Application.layout.render()
  Application.module('Auth').start()

$ ->
  Application.start()
