jQuery ->
  $('#tracker_calender').datepicker
    altFormat: "yy-mm-dd"
  
  $('#tracker_calender').change ->
    console.log 
    currentPath = window.location.pathname
    window.location.href = "#{currentPath}/days/new?date=#{$(@).val()}"