# Browserify entry point for the global.js bundle (yay CoffeeScript!)

$ = require 'jquery'

rand = 0
pizzas = 0
$('.pizza_form').on 'submit', ->
  people = parseInt $(@).find('input').val()
  pizzas = Math.ceil(people * 3/8)
  animatePizzaText(pizzas)
  $('#content').addClass 'done'
  $('.deets').show()
  false

animatePizzaText = (pizzas) ->
  length = "#{pizzas}".length
  if length is 1
    rand = 9
  else if length is 2
    rand = 99
  else if length > 2
    rand = 999
  animateNum()

tick = 0
animateNum = ->
  rand_num = Math.round(Math.random() * rand)
  $('.num').text(rand_num)
  tick++
  if tick is 50
    $('.num').text(pizzas)
    tick = 0
  else
    requestAnimationFrame animateNum unless tick is 50
