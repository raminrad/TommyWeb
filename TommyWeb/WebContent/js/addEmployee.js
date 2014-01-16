$(document).ready(function() {

	$('#addEmployeeButton').unbind("click");
	$('#addEmployeeButton').click(function() {
		var params = $("#newEmployeeForm").serialize();
		var saveUrl = 'saveEmployee.action?' + params;
		var status = '';
		$.ajax({
			type: "GET",
			cache: false,
			url:  saveUrl,
			contentType: "text/html",
			success: function(data) {
				status = data;
				if (status.indexOf('newEmployeeForm') != -1) {
					$('#dialog-form').html(data);
				}
				else {
					$( "#dialog-form" ).dialog( "close" );
					$('#employeeTree').html(data);					
				}
			},
			error: window.errorAlert
		});
	});	
});
