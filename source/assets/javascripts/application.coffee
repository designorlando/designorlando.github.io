ColorSelector = () ->

  setBackground = (color, i) ->
    $('body').removeClass().addClass("color--#{i}")

  cookie = $.cookie('background_color') || ''
  color_num = $.cookie('color_num') || 0
  setBackground(cookie, color_num) if cookie && color_num

  $('.colors a').each (i) ->
    x = i + 1
    el = $(@)
    color = el.attr('href')

    el.on 'click', (e) ->
      e.preventDefault()
      color = $(@).attr('href')

      setBackground(color, x)
      $.cookie('background_color', color, { expires: 7 })
      $.cookie('color_num', x, { expires: 7 })

window.ColorSelector = ColorSelector
