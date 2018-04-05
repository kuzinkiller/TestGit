$(function() {
  $(".datepickerQ").datepicker({});
});

$('#schedule-form').submit(
    function(event) {
//      var strFromDate = $('#fromDate').val();
//      var strToDate = $('#toDate').val();
      var isValidate = true;
//      $('#date_error').hide();
//      if (strFromDate && strToDate && strFromDate.trim().length > 0
//          && strToDate.trim().length > 0) {
//        var from = new Date(strFromDate);
//        var toDate = new Date(strToDate);
//        if (toDate < from) {
//          isValidate = false;
//        }
//      }

      if (isValidate) {
        var formData = {
//          'fromDate' : strFromDate,
//          'toDate' : strToDate,
          'scheduleTime' : $('#scheduleTime').val()
//          'matchingPoint' : $('#matchingPoint').val(),
//          'contactUs' : $('#contactUs:checked').length > 0
        };
        // process the form
        $.ajax({
          type : 'POST',
          url : '/cms/backup/update',
          data : formData,
          success : function(data, text) {
            setData(null, data);
            showDialogNotify();
          },
          error : function(request, status, error) {
            console.log(error);
          },
        });
      } else {
        $('#date_error').show();
      }

      event.preventDefault();
    });