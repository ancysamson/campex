$(document).on "ready page:load", ->
  $('#paper_id').on 'change', ->
    $.ajax 'get_paper_teachers', 
    type: 'GET',
    dataType: 'script',
    data: {
      paper_id: $('#paper_id').find(':selected').val()
    }