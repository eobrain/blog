# BEGIN Grid object
# All sizes are in percentages of window width
window.Grid = (marginWidth, marginHeight, colCount, colSep, cellHeight) ->

  #width of column as a percent
  colWidth = (100 - marginWidth*2 - colSep*(colCount-1)) / colCount

  cellAreaPix = ->
    winWidthPix = $(window).width()
    (winWidthPix*colWidth / 100) * (winWidthPix*cellHeight / 100)


  # BEGIN nested Cell class
  Cell = (x,y) ->
    @allocated = false

    @y = -> y
    @x = -> x

    @left = if x==0
        marginWidth
      else
        marginWidth + x*colWidth + (x-1)*colSep

    @right = left + colWidth

    @top = marginHeight + y*cellHeight

    @bottom = top + marginHeight

    below = (otherCell) -> y > otherCell.y()

    rightOf = (otherCell) -> x > otherCell.x()

    null
  # END nested Cell class


  grid = []

  get = (x,y) ->
    row = grid[y]
    if !row
      row = []
      grid[y] = row
    cell = row[y]
    if !cell
      cell = new Cell x, y
      row[y] = cell
    cell

  # BEGIN nested Shape class
  Shape = (cols,rows) ->
    @cols = -> cols
    @rows = -> rows

    #is this area available at this top-left?
    available = (x,y) ->
      for dy in [0...cols]
        for dx in [0...rows]
          return false if get(x+dx,y+dy).allocated
      return true

    @findAvailableRegion = ->
      y = 0
      while true
        for x in [0...colCount - cols + 1]
          if available x, y
            return new Region x, y, @
        y += 1

    #prefer more square regions
    @score = ->
      if cols > rows
        rows/cols
      else
        cols/rows

  null
  # END nested Shape class

  #all contiguous shapes of cells of given cellcount
  shapes = (cellCount) ->
    result = []
    for cols in [1..cellCount]
      rows = cellCount/cols
      if cols*rows = cellCount
        result.push new Shape cols, rows
    result

  # BEGIN Region classs
  Region = (x,y,shape) ->
    topLeftCell     = get x, y
    @bottomRightCell = get x + shape.cols(), y + shape.rows()
    null

    below = (otherRegion) -> topLeftCell.below otherRegion.bottomRightCell

    rightOf = (otherRegion) -> topLeftCell.rightOf otherRegion.bottomRightCell

    #precondition below and rightOf
    distanceFrom = (otherRegion) ->
      horiz = topLeftCell.left - @bottomRightCell.right
      vert  = topLeftCell.top  - @bottomRightCell.bottom
      Math.sqrt horiz*horiz + vert*vert

    @score = (prevRegion) ->
      score = shape.score()
      if prevRegion
        if below prevRegion && rightOf prevRegion
          score +=  Math.exp -(distanceFrom prevRegion)/10
  # END Region class

  allocate = (prevRegion, areaPix) ->

    bestRegion (regions) ->
      best = null
      bestScore = Number.NEGATIVE_INFINITY
      for region in regions
        score = region.score prevRegion
        if score > bestScore
          bestScore = score
          best = region
      best


    cellCount = Math.ceil areaPix/cellAreaPix
    possibleRegions =  shape.findAvailableRegion() for shape in shapes cellCount

    bestRegion possibleRegions

  prevRegion = null
  $('h1, h2, h3, h4, h5, h6, p, figure, header, footer').each ->
    $this = $(this)
    region = allocate prevRegion, $this.width() * This.height()
    prevRegion = region

  null
# END Grid object