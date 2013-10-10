# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
       $('[name="American"]').on "click", (event) ->
              $('label#height').text("Height (inches)")
	      $('label#mass').text("Mass (pounds)")