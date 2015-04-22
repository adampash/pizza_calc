# Browserify entry point for the global.js bundle (yay CoffeeScript!)

$ = require 'jquery'

$('.pizza_form').on 'submit', ->
  people = parseInt $(@).find('input').val()
  pizzas = people * 3/8
  console.log pizzas
  $('.pizzas').text("You need #{pizzas} pizzas")
  $('.deets').show()
  false
