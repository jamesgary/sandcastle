requirejs.config({
  # Lots of helpful options here: http://requirejs.org/docs/api.html#config
  paths:
    jquery: 'vendor/jquery-1.8.2'
})

require ['controller'], (controller) ->
  controller.setup()
