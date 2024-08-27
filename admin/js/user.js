$( document ).ready( function ()
{
var url = baseurl;



//Main Category Insert
  $("#UpdateUser").validate({
         rules: {
            name: {
                required: true
            },
            email: {
                required: true,
                email: true // Ensure the email format is correct
            },
            password: {
                required: true,
                minlength: 6 // Example: Password must be at least 6 characters long
            },
            status: {
                required: true
            }
        },
        messages: {
            name: {
                required: "Please enter the name of the blog"
            },
            email: {
                required: "Please enter an email address",
                email: "Please enter a valid email address" // Error message for invalid email format
            },
            password: {
                required: "Please enter a password",
                minlength: "Your password must be at least 6 characters long" // Example error message for password length
            },
            status: {
                required: "Please select a status"
            }
        },
    errorElement: 'span',
    errorPlacement: function (error, element) {
        error.addClass('invalid-feedback');
        element.closest('.form-group').append(error);
    },
    highlight: function (element, errorClass, validClass) {
        $(element).addClass('is-invalid');
    },
    unhighlight: function (element, errorClass, validClass) {
        $(element).removeClass('is-invalid');
    },
    submitHandler: function (form) {

        $.ajax({
            type: "POST",
            url: url + "admin/script/UserUpdate.php",
            cache: false,
            processData: false,
            contentType: false,
            data: new FormData(form),
            success: function (data) {
				console.log(data);
                var obj = jQuery.parseJSON(data);

                if (obj.error == 'success') {
                    
                    toastr.success(obj.msg);
                    setTimeout(function() {
       window.location.href=url+"/admin/user-details.php";
}, 5000);
                } else {
                    toastr.error(obj.msg);
                }
            }
        });
        return false; // required to block normal submit since you used ajax
    }
});

function UserList() {
    $.ajax({
        url: url + 'admin/script/UserList.php',
        method: 'GET',
        dataType: 'json',
        success: function (data) {
            // Initialize DataTable
            var reportTable = $('#User_List').DataTable({
                destroy: true,
                data: data,
                columns: [
                    { 
					"data": "id"
					},
					 { 
					"data": "name"
					},
					 { 
					"data": "phone_number"
					},
				  {
                        "data": "email"
                    }, {
                        "data": "status",
						"render": function (data, type, full, meta) {
                           return data === '1' ? '<span class="badge bg-success">Active</span>' :
                                                     '<span class="badge bg-danger">Inactive</span>';
                        }
                    },
					 { 
					"data": "id",
					"render": function (data, type, full, meta) {
                            return '<i data-id=' + data + ' id="edit" class="fa fa-edit text-primary" style="cursor:pointer" title="Edit"></i>';
                        }
					}, { 
					"data": "id",
					"render": function (data, type, full, meta) {
                            return '<i data-id=' + data + ' id="delete" class="fa fa-trash text-danger" style="cursor:pointer" title="Delete"></i>';
                        }
					},
                    
                ]
            });
        },
        error: function (error) {
            console.error('Error fetching data:', error);
        }
    });
}


$(document).on('click', '#edit', function(){
    var id = $(this).attr("data-id");
    window.location.href=url+"/admin/user-update.php?id="+id;
});

$(document).on('click', '#delete', function(){
		var id = $(this).attr("data-id");

		if(confirm("Are you sure you want to remove this?"))
		{
			$.ajax({
				url:url + "/admin/script/delete_user.php",
				method:"POST",
				data:{id:id},
				success:function(data){
			var obj = jQuery.parseJSON(data);
                    
                    if(obj.error == 'success'){
                       toastr.success(obj.msg);
                        UserList();
                    }else{
         toastr.error(obj.msg); 
                    }}
			});
		}
	});
	
	UserList();
});