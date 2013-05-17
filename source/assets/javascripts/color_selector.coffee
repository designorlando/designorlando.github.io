class ColorSelector
  constructor: (colors, save = true) ->
    @colors = $(colors)
    @getOrSetCookie() if save?
    @setupColors()

  getOrSetCookie: ->
    background_color = $.cookie('background_color') || ''
    color_num = $.cookie('color_num') || ''
    @setBackgroundColor(color_num) if background_color && color_num

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

        $.cookie('background_color', color, { expires: 7 })
        $.cookie('color_num', x, { expires: 7 })

window.ColorSelector = ColorSelector
