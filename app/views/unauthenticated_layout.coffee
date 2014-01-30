LoginView = require 'views/unauthenticated/login'

module.exports = class UnauthenticatedLayout extends Marionette.Layout
  template: 'templates/layouts/unauthenticated'
  el: "body"

  regions:
    singInContent: '#content'

  onRender: ->
    @singInContent.show new LoginView
