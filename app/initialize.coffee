application = require 'application'
auth = require 'modules/auth'
application.addInitializer ->
  application.module('Auth').start()

$ ->
  application.initialize()


