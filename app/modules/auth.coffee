application = require 'application'

module.exports = application.module "Auth", (Mod) ->
  class AuthController extends Marionette.Controller
    login: ->
      UnauthenticatedLayout = require 'views/UnauthenticatedLayout'
      @loginView = new UnauthenticatedLayout
      @loginView.render()

  class AuthRouter extends Marionette.AppRouter
    appRoutes:
      'login': 'login'

    controller: new AuthController

  Mod.addInitializer ->
    new AuthRouter

  @startWithParent = false
