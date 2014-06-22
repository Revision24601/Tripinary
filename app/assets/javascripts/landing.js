$(document).ready (function () {
	$( "#submit_location" ).click('ajax:before', function( event ) {
		event.preventDefault();
	  	if ( $( "input:first" ).val() != "" ) {
	    	$("form").submit();
	  	}
	  	else
	  		$( "span" ).text( "Please Enter A City Name!" ).show();
	  
	})
});