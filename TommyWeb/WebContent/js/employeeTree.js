$(document).ready(function() {
	
//	function errorAlert(jqxhr, textStatus, errorThrown) {
//		$( "#dialog-error" ).dialog( "open" );
//		$('#dialog-error').html(jqxhr.responseText);
//	}
	
    $( "#dialog-form" ).dialog({
        autoOpen: false,
        height: 300,
        width: 500,
        modal: true
    });	
		
    $( "#dialog-delete" ).dialog({
        autoOpen: false,
        height: 180,
        width: 500,
        modal: true
    });	
	
	$('.deleteElement').click(function() {
		$( '#dialog-delete' ).dialog( "open" );
		$( '#dialog-delete' ).attr('empId', $(this).find(('#empId')).text());
		$( '#dialog-deleteMsg' ).html( 'Are you sure you want to delete ' + $(this).find(('#empName')).text() + '?' );		
	});

    $( "#cancelDeleteButton" ).click(function() {
    	$( "#dialog-delete" ).dialog( "close" );
    });

    $( "#confirmDeleteButton" ).unbind("click");
    $( "#confirmDeleteButton" ).click(function() {
    	console.log('confirm delete button was clicked.');
		var empId = $( '#dialog-delete' ).attr('empId');
		console.log('---------> deleting employee ID ' + empId);
		var deleteUrl = 'deleteEmployee.action?employeeId=' + empId;

		$.ajax({
			type: "GET",
			cache: false,
			url:  deleteUrl,
			contentType: "text/html",
			success: function(html) {
				$('#employeeTree').html(html);
			},
			error: errorAlert
		});			
    	$( "#dialog-delete" ).dialog( "close" );
    });
    
	$('.addElement').click(function() {
		var empId = $(this).find(('#empId')).text();
		$( "#dialog-form" ).dialog( "open" );
		var addUrl = 'addEmployee.action?bossId=' + empId;
		$.ajax({
			type: "GET",
			cache: false,
			url:  addUrl,
			contentType: "text/html",
			success: function(html) {
				$('#dialog-form').html(html);
			},
			error: window.errorAlert
		});
	});
	
});
