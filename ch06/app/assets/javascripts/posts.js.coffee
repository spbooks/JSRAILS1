# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#test_click').click (e) ->
    do notify

  notify = -> alert('Hello!')

  $(".blurb_content").hide()
  $('.blurb_target').click (e) ->
    $(this).parent().next(".blurb_content").toggle(400)
    return false
