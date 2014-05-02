# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#Add product's image onclick image
$ ->
  $('.store .entry > img').click ->
    $(this).parent().find(':submit').click()

#Add product's title onclick action
$ ->
  $('.store .entry > h3').click ->
    $(this).parent().find(':submit').click()