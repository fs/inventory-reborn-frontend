UserSession = require 'models/user_session'

module.exports =  class LoginView extends Marionette.ItemView
  template: 'templates/unauthenticated/login'
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
        localStorage["API_KEY"] = userSession.attributes.authentication_token
        (new Backbone.Router).navigate "",
          trigger: true
          replace: true
