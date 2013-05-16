#-------------------------------------
#  $.colorer
#  by Drew Barontini
#  v0.0.1
#-------------------------------------

$ = jQuery

$.fn.extend

  colorer: (options) ->

    settings =
      save: true

    settings = $.extend settings, options

    hash = window.location.hash

    $.fn.getOrSetCookie() unless settings.save == false

    return @each (i) ->
      x = i + 1
      el = $(@)
      color = el.attr('href')

      el.on 'click', (e) ->
        e.preventDefault()
        color = $(@).attr('href')

        $.fn.setBackground(color, x)
        $.cookie('background_color', color, { expires: 7 })
        $.cookie('color_num', x, { expires: 7 })

$.fn.getOrSetCookie = () ->
  cookie = $.cookie('background_color') || ''
  color_num = $.cookie('color_num') || 0
  $.fn.setBackground(cookie, color_num) if cookie && color_num

$.fn.setBackground = (color, i) ->
  $('body').removeClass().addClass("color--#{i}")
