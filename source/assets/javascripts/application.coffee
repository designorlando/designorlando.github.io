ColorSelector = () ->

  setBackground = (color) ->
    $('body').css('background-color', color)

  cookie = $.cookie('background_color') || ''
  setBackground(cookie) if cookie

  $('.colors a').each () ->
    el = $(@)
    color = el.attr('href')
    el.css('background-color', color)

    el.on 'click', (e) ->
      e.preventDefault()
      color = $(@).attr('href')
      setBackground(color)
      $.cookie('background_color', color, { expires: 7 })

window.ColorSelector = ColorSelector
