User = require 'models/user'

module.exports = class UserSession extends User
  url: "/users/sign_in"
