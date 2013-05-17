class ColorSelector
  constructor: (colors) ->
    @colors = $(colors)
    @getOrSetCookie()
    @setupColors()

  getOrSetCookie: ->
    color_num = $.cookie('color_num')
    @setBackgroundColor(color_num) if color_num?

  setBackgroundColor: (color_num) ->
    $('body').removeClass().addClass("color--#{color_num}")

  setupColors: ->
    that = this

    @colors.each (i) ->
      x = i + 1
      elem = $(@)
      color = elem.attr('href')

      elem.on 'click', (e) ->
        e.preventDefault()
        color = $(@).attr('href')

        that.setBackgroundColor(x)

        $.cookie('color_num', x, { expires: 7 })

window.ColorSelector = ColorSelector
