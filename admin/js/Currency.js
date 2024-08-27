$( document ).ready( function ()
{
var url = baseurl;

//Main Category Insert

   $("#CurrForm").validate({
    rules: {
        name: {
            required: true
        },
        amount: {
            required: true
        }
    },
    messages: {
        name: {
            required: "Please enter a category name",
        },
        amount: {
            required: "Please enter a meta title",
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
            url: url + "admin/script/CurrencyInsert.php",
            cache: false,
            processData: false,
            contentType: false,
            data: new FormData(form),
            success: function (data) {
				
                var obj = jQuery.parseJSON(data);

                if (obj.error == 'success') {
                    toastr.success(obj.msg)
                    $("#CurrForm")[0].reset();
                    CategoryList();
                } else {
                    toastr.error(obj.msg)
                }
            }
        });
        return false; // required to block normal submit since you used ajax
    }
});

function CategoryList() {
    $.ajax({
        url: url + 'admin/script/CurrencyList.php',
        method: 'GET',
        dataType: 'json',
        success: function (data) {

            // Initialize DataTable
            var reportTable = $('#currency_List').DataTable({
                destroy: true,
                data: data,
                columns: [
                    { 
					"data": "id"
						},
                    { "data": "Currency_Name" },
                    { "data": "Amount" },
					 {
                        "data": "id",
                        "render": function (data, type, full, meta) {
                            return '<i data-id=' + data + ' id="Edit" class="fa fa-edit text-primary" style="cursor:pointer" title="Delete"></i>';
                        }
                    },
                    {
                        "data": "id",
                        "render": function (data, type, full, meta) {
                            return '<i data-id=' + data + ' id="delete" class="fa fa-trash text-danger" style="cursor:pointer" title="Delete"></i>';
                        }
                    }
                ]
            });
        },
        error: function (error) {
            console.error('Error fetching data:', error);
        }
    });
}



$(document).on('click', '#delete', function(){
		var id = $(this).attr("data-id");

		if(confirm("Are you sure you want to remove this?"))
		{
			$.ajax({
				url:url + "/admin/script/delete_currency.php",
				method:"POST",
				data:{id:id},
				success:function(data){
			var obj = jQuery.parseJSON(data);
                    
                    if(obj.error == 'success'){
                       toastr.success('Successfully Deleted');
                        CategoryList();
                    }else{
         toastr.error(obj.msg); 
                    }}
			});
		}
	});
	
$(document).on('click', '#Edit', function(){
	var id = $(this).attr("data-id");
	window.location.href = url + 'admin/currency.php?id='+id;
});
	
CategoryList();
	
})