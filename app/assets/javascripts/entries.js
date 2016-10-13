$(function(){
	console.log('ready')
	$("#entry_rate, #entry_no_of_jars").on('change paste keyup input', function(){
		var rate = parseInt($('#entry_rate').val());
		var jars = parseInt($('#entry_no_of_jars').val());
		console.log($('#entry_rate').val())
		console.log(rate)
		$('#entry_amount').val(rate*jars);
	});	
});
