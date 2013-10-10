# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#American_units').click ->
    # alert("American Clicked!")
    # Syntax differences below don't seem to make any difference.
    $('#height').text("Height (inches)")
    $('label#mass').text("Mass (pounds)")

$ ->
  $('#metric_units').click ->
    # alert("Metric Clicked!")
    # Syntax differences below don't seem to make any difference.
    $('#height').text("Height (centimeters)")
    $('label#mass').text("Mass (kilograms)")

