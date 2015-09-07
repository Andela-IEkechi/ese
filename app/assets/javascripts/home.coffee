# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $('.slider').slider full_width: true, indicators: false, transition: 2000, interval: 2000, height: 600
  return