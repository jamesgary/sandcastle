define ['jquery', 'lib/anything'], ($, anything) ->
  setup: ->
    $('document').ready ->
      anything.saySomething()
