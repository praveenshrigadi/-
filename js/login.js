// JavaScript Document
$( document ).ready( function () { 

			$( '#insert_form' ).on( "submit", function ( event ) {
				
				var formData = new FormData( this );
				
				if ( $( '#email' ).val() == "" ) {
					
					alert( "username is required" );

				} 
				else if( $( 'password' ).val() == "" )
           {  
                
			  alert( "Please Select Category" );
			   
			   return false;
           }   
				
				
				else {
					$.ajax( {
						url: "login_update.php",
						method: "POST",
						data: formData,
						contentType: false,
						processData: false,
					
						success: function ( data ) {
							
							$( '#msgshow' ).html( data );
							
							


						}
					} );
				}
				
			});


});


//	 