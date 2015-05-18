# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $("#new_photo .modal-body").dropzone
    paramName: 'photo[image]'
    clickable: '#select_photos_button'
    url: '/photos'


