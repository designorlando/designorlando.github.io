ColorSelector = () ->

  $('.colors a').each () ->
    el = $(@)
    color = el.attr('href')
    el.css('background-color', color)

    el.on 'click', (e) ->
      e.preventDefault()
      $('body').css('background-color', $(@).attr('href'))

window.ColorSelector = ColorSelector
