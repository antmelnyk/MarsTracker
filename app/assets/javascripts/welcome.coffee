# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

parallax = ->
  scrolled = $(window).scrollTop()
  $('.bg').css 'height', 620 - scrolled + 'px'
  return

$(window).scroll (e) ->
  parallax()
  return