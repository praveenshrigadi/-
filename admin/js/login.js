$( document ).ready( function ()
{
    $( "#LoginForm" ).validate( {
        rules: {
            Email: {
                required: true,
                email: true
            },
            Password: {
                required: true
            }
        }, messages: {
            Email: {
                required: "Please enter a email address",
                email: "Please enter a valid email address"
            },
            Password: {
                required: "Please provide a password",
                minlength: "Your password must be at least 5 characters long"
            }
        },
        errorElement: 'span',
        errorPlacement: function ( error, element )
        {
            error.addClass( 'invalid-feedback' );
            element.closest( '.form-group' ).append( error );
        },
        highlight: function ( element, errorClass, validClass )
        {
            $( element ).addClass( 'is-invalid' );
        },
        unhighlight: function ( element, errorClass, validClass )
        {
            $( element ).removeClass( 'is-invalid' );
        },
        submitHandler: function ( form )
        {
            // Append "Remember Me" checkbox value to the serialized data
            var formData = $( "#LoginForm" ).serialize();
            formData += "&RememberMe=" + ( $( "#RememberMe" ).is( ":checked" ) ? 1 : 0 );

            $.ajax( {
                type: "POST",
                url: "./script/Login.php",
                cache: "false",
                data: formData,
                success: function ( data )
                {
                    var obj = jQuery.parseJSON( data );

                    if ( obj.error == 'success' )
                    {
				window.location.href = 'dashboard.php';
                    } else
                    {
                        toastr.error( obj.msg )
                    }



                }
            } );
            return false; // required to block normal submit since you used ajax
        }

    } );

} );


