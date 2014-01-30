Application = require 'application'
UnauthenticatedLayout = require 'views/unauthenticated_layout'
HomeView = require 'views/home_view'

module.exports = Application.module "Auth", (Mod) ->
  class AuthController extends Marionette.Controller
    home: ->
      homeView = new HomeView()
      Application.layout.content.show(homeView)

    login: ->
      @loginView = new UnauthenticatedLayout
      @loginView.render()

  class AuthRouter extends Marionette.AppRouter
    appRoutes:
      '': 'home'
      'login': 'login'

    controller: new AuthController

  Mod.addInitializer ->
    new AuthRouter

  @startWithParent = false
