$( document ).ready( function ()
{
var url = baseurl;


function ProductList() {
    $.ajax({
        url: url + 'admin/script/ZoneList.php',
        method: 'GET',
        dataType: 'json',
        success: function (data) {
            // Initialize DataTable
            var reportTable = $('#Zone_List').DataTable({
                destroy: true,
                data: data,
                columns: [
                    { 
					"data": "id"
					},
					 { 
					"data": "Zone_name"
					},
					 { 
					"data": "Zone_Code"
					},{ 
					"data": "Weight"
					},{ 
					"data": "INR_Price"
					},{ 
					"data": "USD_Price"
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
  $("#ZoneForm").validate({
    rules: {
         name: {
            required: true
        },
		code: {
            required: true
        },
        weight: {
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
        	name: {
           required: "Please enter a zone name",
        },
		code: {
           required: "Please enter a zone code",
        },
        weight: {
           required: "Please enter a weigth in grams",
        },
        INR: {
           required: "Please enter a INR amount",
        },
        USD: {
          required: "Please enter a USD amount",
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
            url: url + "admin/script/ZoneInsert.php",
            cache: false,
            processData: false,
            contentType: false,
            data: new FormData(form),
            success: function (data) {
				
                var obj = jQuery.parseJSON(data);

                if (obj.error == 'success') {
                    toastr.success(obj.msg);
                     $("#ZoneForm")[0].reset();
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
	  window.location.href= url + "admin/zone.php?id="+id;
});

ProductList();

$(document).on('click', '#delete', function(){
		var id = $(this).attr("data-id");

		if(confirm("Are you sure you want to remove this?"))
		{
			$.ajax({
				url:url + "/admin/script/delete_zone.php",
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