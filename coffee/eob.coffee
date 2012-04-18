$ ->
  $('#posts li, .posts li').each ->
    $this = $(this)
    len = 1.1 * Math.sqrt $this.width() * $this.height()
    $this.width  len
    $this.height len
    $this.css 'padding', "#{ len/5 }px"

