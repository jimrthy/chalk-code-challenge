# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  alert("Loaded")

  $('[name="American"]').click ->
    alert "Clicked!"
    $('#height').text("Height (inches)")
    $('label#mass').text("Mass (pounds)")

