window.errorAlert = function (jqxhr, textStatus, errorThrown) {
	$( "#dialog-error" ).dialog( "open" );
	$('#dialog-error').html(jqxhr.responseText);
};
	
$(document).ready(function() {
	
    $( "#dialog-error" ).dialog({
        autoOpen: false,
        height: 500,
        width: 800,
        modal: true,
        close: function() {
        	$('#dialog-error').html('');
        },
    });	
		
	$('#linkHideAll').toggle();

	$('#linkShowAll').click(function() {
		$.ajax({
			type: "GET",
			cache: false,
			url: 'showAll.action',
			contentType: "text/html",
			success: function(html) {
				$('#employeeTree').html(html);
				$('#linkShowAll').toggle();
				$('#linkHideAll').toggle();
			},
			error: window.errorAlert
		});
	});

	$('#linkHideAll').click(function() {
		$('#linkShowAll').toggle();
		$('#linkHideAll').toggle();		
		$('#employeeTree').html('');
	});
});