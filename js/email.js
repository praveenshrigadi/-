// JavaScript Document
			
			$(document).ready(function(){
				
var validateEmail = function(elementValue) {
  var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
  return emailPattern.test(elementValue);
}



$('#email').keyup(function() {

  var value = $(this).val();
  var valid = validateEmail(value);

  if (!valid) {


    $(this).css('color', 'red');
	   $('#message').html('');
	  $( 'button:submit' ).attr( 'disabled', true );

  } else {
	  $(this).css('color', '#495057');
   $.post("check-user.php", {value: value} ,  function(data)
                {
                    if (data.status == true)
                    {
                        $('#message').attr('class','success');
						 $( 'button:submit' ).attr( 'disabled', false );

                    } else {
                        $('#message').attr('class','error');
						$( 'button:submit' ).attr( 'disabled', true );
                    }
                    $('#message').html(data.message);
                },'json');

  }



});


        });