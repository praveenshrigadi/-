$( document ).ready( function ()
{
var url = baseurl;

function CategoryList() {
    $.ajax({
        url: url + 'admin/script/2ndSubCatList.php',
        method: 'GET',
        dataType: 'json',
        success: function (data) {
			var len = data.length;
			
            // Initialize DataTable
            var reportTable = $('#category_List').DataTable({
                destroy: true,
                data: data,
                columns: [
                    { 
					"data": "id"
						},
                    { "data": "sub_sub_categroy" },
                    {
                        "data": "id",
                        "render": function (data, type, full, meta) {
                            return '<i data-id=' + data + ' id="delete" class="fa fa-trash text-danger" style="cursor:pointer" title="Delete"></i>';
                        }
                    },
                    {
                        "data": "status",
                        "render": function (data, type, full, meta) {
                            return data === 'Active' ? '<i data-id=' + full.id + ' id="Cat-Status" data-status="Inactive" class="fa fa-check text-success" style="cursor:pointer" title="Active"></i>' :
                                                     '<i data-id=' + full.id + ' id="Cat-Status" data-status="Active" class="fa fa-times text-danger" style="cursor:pointer" title="Inactive"></i>';
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


$(document).on('click', '#Cat-Status', function() {
    var id = $(this).attr("data-id");
    var statu = $(this).attr("data-status");
    $.ajax({
        url: url + 'admin/script/2ndSubStatus.php',
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

// Function to get main categories using AJAX
function getMainCategories() {
    $.ajax({
        url: url + 'admin/script/MainCatList.php',
        method: 'GET',
        dataType: 'json',
        success: function (data) {
            var select = $('#MainCategoryPost');
            // Clear existing options
            select.empty();
			select.append('<option></option>');
            // Add new options
            for (var i = 0; i < data.length; i++) {
                var option = $('<option>', {
                    value: data[i].category_id,
                    text: data[i].name
                });
                select.append(option);
            }
        },
        error: function (error) {
            console.error('Error fetching data:', error);
        }
    });
}

$(document).on('change', '#MainCategoryPost', function() {
    var id = $(this).val();
    $.ajax({
        url: url + 'admin/script/SubCatListPost.php',
        method: "POST",
        cache: false,
        data: {
            id: id
        },
        success: function(data1) {
			 var data = JSON.parse(data1);
				   var select = $('#SubCategoryPost');
            // Clear existing options
            select.empty();
            // Add new options
           for (var i = 0; i < data.length; i++) {
                var option = $('<option>', {
                    value: data[i].id,
                    text: data[i].sub_category
                });
                select.append(option);
            }
			
        },
        error: function(error) {
            console.error('Error fetching data:', error);
        }
    });
});


//Main Category Insert
   $("#2nSubCatForm").validate({
    rules: {
        MainCategory: {
            required: true
        },
		SubCategory: {
            required: true
        }, name: {
            required: true
        },
        Meta_Title: {
            required: true
        },
        Meta_Description: {
            required: true
        },
        Description: {
            required: true
        }
    },
    messages: {
        MainCategory: {
            required: "Please select a main categroy",
        },
		SubCategory: {
            required: "Please select a sub categroy",
        },name: {
            required: "Please enter a category name",
        },
        Meta_Title: {
            required: "Please enter a meta title",
        },
        Meta_Description: {
            required: "Please enter a meta description",
        },
        Description: {
            required: "Please enter a description",
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
            url: url + "admin/script/2ndSubCatInsert.php",
            cache: false,
            processData: false,
            contentType: false,
            data: new FormData(form),
            success: function (data) {
				
                var obj = jQuery.parseJSON(data);

                if (obj.error == 'success') {
                    toastr.success(obj.msg);
                    $("#2nSubCatForm")[0].reset();
                    CategoryList();
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

		if(confirm("Are you sure you want to remove this?"))
		{
			$.ajax({
				url:url + "/admin/script/delete_2ndsubcategory.php",
				method:"POST",
				data:{id:id},
				success:function(data){
			var obj = jQuery.parseJSON(data);
                    
                    if(obj.msg == 'Successfully'){
                       toastr.success('Successfully Deleted');
                        CategoryList();
                    }else{
         toastr.error(obj.msg); 
                    }}
			});
		}
	});


getMainCategories();
CategoryList();

});