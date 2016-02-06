# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->

  $('a.intro.blink').delay(6000).queue ->
    $(this).addClass 'animated bounce'

  $('a.intro.blink').click ->
    $(this).addClass('animated fadeOutUp')
    $('p.about').slideDown()

  $('a.about.blink').click ->
    $(this).addClass('animated fadeOutUp')
    $('p.skills').slideDown()

  $('a.skills.blink').click ->
    $(this).addClass('animated fadeOutUp')
    $('p.history').slideDown()



