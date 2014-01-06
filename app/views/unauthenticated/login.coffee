application = require 'application'
UserSession = require 'models/user_session'
User = require 'models/user'

module.exports =  class LoginView extends Marionette.ItemView
  template: "views/templates/unauthenticated/login"
  events:
    "submit form": "login"

  initialize: ->
    @model = new UserSession
    @modelBinder = new Backbone.ModelBinder

  onRender: ->
    @modelBinder.bind @model, @el

  login: (e) ->
    self = this
    el = $(@el)
    e.preventDefault()
    el.find("button.btn-primary").val "loading"
    el.find(".alert-error").remove()
    @model.save @model.attributes,
      success: (userSession, response) ->
        el.find("button.btn-primary").val "reset"
        currentUser = new User(response)
        application.currentUser = currentUser
        localStorage["API_KEY"] = currentUser.attributes.authentication_token
        (new Backbone.Router).navigate "",
          trigger: true
          replace: true
