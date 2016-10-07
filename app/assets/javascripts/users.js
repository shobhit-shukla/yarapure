$(function () {
	$('.timepicker').datetimepicker({format: 'LT'});
	$('.datetimepicker').datetimepicker({format: "YYYY-MM-DD"});

    $("#department a.add_fields").
      data("association-insertion-position", 'before').
      data("association-insertion-node", 'this');

    $('#department').bind('cocoon:after-insert', function() {
        $("#department_from_list").hide();
        $("#department a.add_fields").hide();
    });
    $('#department').bind("cocoon:after-remove", function() {
        $("#department_from_list").show();
        $("#department a.add_fields").show();
    });
});
