###
# Copyright 2012, Eamonn O'Brien-Strain eob@well.com
###

HEIGHT_QUANTA = 140
MARGIN = 7

quantize = (height) ->
  recurse = (i) ->
    quantizedHeight = i*HEIGHT_QUANTA + (i-1)*3*MARGIN
    if quantizedHeight >= height
      quantizedHeight
    else
      recurse i+1
  recurse 1

quantizeHeight = ( $li ) ->
  $li.height quantize( $li.height() )

$ ->

  $('#posts li .no-img, .posts li .no-img').each ->
    $li = $(@).parent().parent()
    quantizeHeight $($li)

  $('#posts li img, .posts li img').each ->
    $(@).load ->
      $li = $(@).parent().parent()
      quantizeHeight $li
    $(@).error ->
      $li = $(@).parent().parent()
      $(@).remove()
      setTimeout -> quantizeHeight $li, 1000

  $('#pages li').height $('h1').height()

