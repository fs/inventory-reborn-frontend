application = require 'application'
LoginView = require 'views/unauthenticated/login'

module.exports = class UnauthenticatedLayout extends Marionette.Layout
  template: 'views/templates/layouts/unauthenticated'
  el: "body"

  regions:
    singInContent: '#content'

  onRender: ->
    @singInContent.show new LoginView
