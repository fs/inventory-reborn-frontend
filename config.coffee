# See docs at http://brunch.readthedocs.org/en/latest/config.html.
exports.config =
  files:
    javascripts:
      defaultExtension: 'coffee'
      joinTo:
        'javascripts/app.js': /^app/
        'javascripts/vendor.js': /^(bower_components|vendor)/

    stylesheets:
      defaultExtension: 'styl'
      joinTo:
        'stylesheets/app.css': /^app(\/|\\)styles(\/|\\)/
        'stylesheets/vendor.css': /^vendor(\/|\\)styles/
      order:
        before: [
          'vendor/styles/bootstrap.min.css'
        ]

    templates:
      defaultExtension: 'hbs'
      joinTo: 'javascripts/app.js'

  plugins:
    coffeelint:
      pattern: /^app\/.*\.coffee$/
