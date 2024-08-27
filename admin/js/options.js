$( document ).ready( function ()
{
var url = baseurl;

OptionList();

function OptionList() {
    $.ajax({
        url: url + 'admin/script/OptionList.php',
        method: 'GET',
        dataType: 'json',
        success: function (data) {
            // Initialize DataTable
            var reportTable = $('#Options_List').DataTable({
                destroy: true,
                data: data,
                columns: [
                    { 
					"data": null,
					"render": function (data, type, full, meta) {
                            return meta.row+1;
                        }
					},
					 { 
					"data": "Prd_Name"
					},
					 { 
					"data": "Opt_Name"
					},
					  { 
					"data": "Description"
					},
					  { 
					"data": "Price",
					"render": function (data, type, full, meta) {
                            return 'INR '+data;
                        }
					},
					  { 
					"data": "USDPrice",
						"render": function (data, type, full, meta) {
                            return 'USD '+data;
                        }
					},
					  { 
					"data": "id",
					"render": function (data, type, full, meta) {
                            return '<i data-id=' + data + ' id="Edit" class="fa fa-edit text-primary" style="cursor:pointer" title="Edit"></i>';
                        }
					},
					 { 
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


//Main Category Insert
  $("#OptionForm").validate({
    rules: {
         pid: {
            required: true
        },
         name: {
            required: true
        },
		optionname: {
            required: true
        },
        description: {
            required: true
        },
        INR: {
            required: true
        }, 
		USD: {
            required: true
        }
    },
    messages: {
         pid: {
            required: "Please enter a id",
        },
        	name: {
           required: "Please enter a category name",
        },
		optionname: {
           required: "Please enter a option name",
        },
        description: {
           required: "Please enter a description",
        },
        INR: {
          required: "Please enter a category name",
        }, 
		USD: {
           required: "Please enter a category name",
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
            url: url + "admin/script/OptionInsert.php",
            cache: false,
            processData: false,
            contentType: false,
            data: new FormData(form),
            success: function (data) {
				
                var obj = jQuery.parseJSON(data);

                if (obj.error == 'success') {
                    toastr.success(obj.msg);
                    window.location.href= url + 'admin/product.php';
                } else {
                    toastr.error(obj.msg);
                }
            }
        });
        return false; // required to block normal submit since you used ajax
    }
});

//Main Category Insert
  $("#OptionUpdate").validate({
    rules: {
         id: {
            required: true
        },pid: {
            required: true
        },
         name: {
            required: true
        },
		optionname: {
            required: true
        },
        description: {
            required: true
        },
        INR: {
            required: true
        }, 
		USD: {
            required: true
        }
    },
    messages: {
         id: {
            required: "Please enter a id",
        }, pid: {
            required: "Please enter a id",
        },
        	name: {
           required: "Please enter a category name",
        },
		optionname: {
           required: "Please enter a option name",
        },
        description: {
           required: "Please enter a description",
        },
        INR: {
          required: "Please enter a category name",
        }, 
		USD: {
           required: "Please enter a category name",
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
            url: url + "admin/script/OptionUpdate.php",
            cache: false,
            processData: false,
            contentType: false,
            data: new FormData(form),
            success: function (data) {
				
                var obj = jQuery.parseJSON(data);

                if (obj.error == 'success') {
                    toastr.success(obj.msg);
                    window.location.href= url + 'admin/options.php';
                } else {
                    toastr.error(obj.msg);
                }
            }
        });
        return false; // required to block normal submit since you used ajax
    }
});


$(document).on('click', '#delete', function(){
		var id = $(this).attr("data-id");

		if(confirm("Are you sure you want to remove this option?"))
		{
			$.ajax({
				url:url + "/admin/script/delete_option.php",
				method:"POST",
				data:{id:id},
				success:function(data){
			var obj = jQuery.parseJSON(data);
                    
                    if(obj.error == 'success'){
                       toastr.success(obj.msg);
                        OptionList();
                    }else{
         toastr.error(obj.msg); 
                    }}
			});
		}
	});

$(document).on('click', '#Edit', function() {
	  var id = $(this).attr("data-id");
	  window.location.href= url + "admin/update-option.php?id="+id;
});

});