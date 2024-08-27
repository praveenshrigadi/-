$( document ).ready( function ()
{
var url = baseurl;


function ProductList() {
    $.ajax({
        url: url + 'admin/script/CountryList.php',
        method: 'GET',
        dataType: 'json',
        success: function (data) {
            // Initialize DataTable
            var reportTable = $('#Country_List').DataTable({
                destroy: true,
                data: data,
                columns: [
                    { 
					"data": "id"
					},
					 { 
					"data": "sortname"
					},
					 { 
					"data": "name"
					},{ 
					"data": "zone"
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
  $("#CountryForm").validate({
    rules: {
         shortname: {
            required: true
        },
		shortcode: {
            required: true
        },
        Zone: {
            required: true
        }
    },
    messages: {
		shortname: {
           required: "Please enter a short name",
        },
		shortcode: {
           required: "Please enter a country name",
        },
        Zone: {
           required: "Please enter a zone",
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
            url: url + "admin/script/CountryInsert.php",
            cache: false,
            processData: false,
            contentType: false,
            data: new FormData(form),
            success: function (data) {
				
                var obj = jQuery.parseJSON(data);

                if (obj.error == 'success') {
                    toastr.success(obj.msg);
                     $("#CountryForm")[0].reset();
					 ProductList();
                } else {
                    toastr.error(obj.msg);
                }
            }
        });
        return false; // required to block normal submit since you used ajax
    }
});



$(document).on('click', '#Edit', function() {
	  var id = $(this).attr("data-id");
	  window.location.href= url + "admin/country.php?id="+id;
});

ProductList();

$(document).on('click', '#delete', function(){
		var id = $(this).attr("data-id");

		if(confirm("Are you sure you want to remove this?"))
		{
			$.ajax({
				url:url + "/admin/script/delete_country.php",
				method:"POST",
				data:{id:id},
				success:function(data){
			var obj = jQuery.parseJSON(data);
                    
                    if(obj.error == 'success'){
                       toastr.success(obj.msg);
                        ProductList();
                    }else{
         toastr.error(obj.msg); 
                    }}
			});
		}
	});
});