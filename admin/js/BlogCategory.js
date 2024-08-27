$( document ).ready( function ()
{
var url = baseurl;

//Main Category Insert

   $("#BlogCatForm").validate({
    rules: {
        name: {
            required: true
        }
    },
    messages: {
        name: {
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
            url: url + "admin/script/BlogCatInsert.php",
            cache: false,
            processData: false,
            contentType: false,
            data: new FormData(form),
            success: function (data) {
				
                var obj = jQuery.parseJSON(data);

                if (obj.error == 'success') {
                    toastr.success(obj.msg);
                    $("#BlogCatForm")[0].reset();
                    CategoryList();
                } else {
                    toastr.error(obj.msg);
                }
            }
        });
        return false; // required to block normal submit since you used ajax
    }
});

function CategoryList() {
    $.ajax({
        url: url + 'admin/script/BlogCatList.php',
        method: 'GET',
        dataType: 'json',
        success: function (data) {
		
            // Initialize DataTable
            var reportTable = $('#blog_List').DataTable({
                destroy: true,
                data: data,
                columns: [
                    { 
					"data": "id"
						},
                    { "data": "Category" },
                    {
                        "data": "id",
                        "render": function (data, type, full, meta) {
                            return '<i data-id=' + data + ' id="delete" class="fa fa-trash text-danger" style="cursor:pointer" title="Delete"></i>';
                        }
                    },
                    {
                        "data": "status",
                        "render": function (data, type, full, meta) {
                            return data === 'Active' ? '<i data-id=' + full.id + ' id="Blog-Status" data-status="Inactive" class="fa fa-check text-success" style="cursor:pointer" title="Active"></i>' :
                                                     '<i data-id=' + full.id + ' id="Blog-Status" data-status="Active" class="fa fa-times text-danger" style="cursor:pointer" title="Inactive"></i>';
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



$(document).on('click', '#Blog-Status', function() {
    var id = $(this).attr("data-id");
    var statu = $(this).attr("data-status");
    $.ajax({
        url: url + 'admin/script/BlogCatStatus.php',
        method: "POST",
        cache: false,
        data: {
            id: id,
			statu: statu
        },
        success: function(data) {
                        var obj = jQuery.parseJSON(data);

                if (obj.error == 'success') {
                    toastr.success(obj.msg);
                    CategoryList();
                } else {
                    toastr.error(obj.msg);
                }
        },
        error: function(error) {
            console.error('Error fetching data:', error);
        }
    });
});


$(document).on('click', '#delete', function(){
		var id = $(this).attr("data-id");

		if(confirm("Are you sure you want to remove this?"))
		{
			$.ajax({
				url:url + "/admin/script/delete_blogcat.php",
				method:"POST",
				data:{id:id},
				success:function(data){
			var obj = jQuery.parseJSON(data);
                    
                    if(obj.error == 'success'){
                       toastr.success(obj.msg);
                        CategoryList();
                    }else{
         toastr.error(obj.msg); 
                    }}
			});
		}
	});
	
	
CategoryList();
	
})