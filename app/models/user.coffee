Model = require 'models/model'

module.exports = class User extends Model
  url: 'users'
  defaults:
    email: ''
    full_name: ''
    password: ''
