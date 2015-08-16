$(document).on "ready page:load", ->
  $('#department').on 'change', ->
    $.ajax 'get_course_types', 
    type: 'GET',
    dataType: 'script',
    data: {
      department_id: $('#department').find(':selected').val()
    }
