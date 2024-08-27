$( document ).ready( function ()
{
var url = baseurl;


function BlogList() {
    $.ajax({
        url: url + 'admin/script/BlogList.php',
        method: 'GET',
        dataType: 'json',
        success: function (data) {
            // Initialize DataTable
            var reportTable = $('#Blog_List').DataTable({
                destroy: true,
                data: data,
                columns: [
                    { 
					"data": "id"
					},
					 { 
					"data": "name_title"
					},
					 { 
					"data": "Category"
					},
				  {
                        "data": "blog_date"
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


// Function to get main categories using AJAX
function getMainCategories() {
    $.ajax({
        url: url + 'admin/script/BlogCatList.php',
        method: 'GET',
        dataType: 'json',
        success: function (data) {
            var select = $('#BlogCategoryPost');
            // Clear existing options
            select.empty();
			select.append('<option></option>');
            // Add new options
            for (var i = 0; i < data.length; i++) {
                var option = $('<option>', {
                    value: data[i].id,
                    text: data[i].Category
                });
                select.append(option);
            }
        },
        error: function (error) {
            console.error('Error fetching data:', error);
        }
    });
}

//Main Category Insert
  $("#BlogForm").validate({
    rules: {
         name: {
            required: true
        },
        meta_description: {
            required: true
        },
        meta_title: {
            required: true
        },
        meta_keywords: {
            required: true
        }, 
		BlogCategory: {
            required: true
        },
		description: {
            required: true
        }
    },
    messages: {
		name: {
           required: "Please enter a Blog name",
        },
        meta_description: {
           required: "Please enter a Meta Description",
        },
        meta_title: {
           required: "Please enter a Meta Title",
        },
        meta_keywords: {
          required: "Please enter a Meta Keywords",
        },
		BlogCategory: {
           required: "Please select a blog category",
        }, 
		description: {
           required: "Please enter a blog body",
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
            url: url + "admin/script/BlogInsert.php",
            cache: false,
            processData: false,
            contentType: false,
            data: new FormData(form),
            success: function (data) {
				
                var obj = jQuery.parseJSON(data);

                if (obj.error == 'success') {
                    toastr.success(obj.msg);
                    window.location.href= url + 'admin/blog.php';
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
	  window.location.href= url + "admin/update-blog.php?id="+id;
});




$('#description').summernote();

BlogList();

$(document).on('click', '#delete', function(){
		var id = $(this).attr("data-id");

		if(confirm("Are you sure you want to remove this?"))
		{
			$.ajax({
				url:url + "/admin/script/delete_blog.php",
				method:"POST",
				data:{id:id},
				success:function(data){
			var obj = jQuery.parseJSON(data);
                    if(obj.error == 'success'){
                       toastr.success(obj.msg);
                        BlogList();
                    }else{
         toastr.error(obj.msg); 
                    }
				    
				}
			});
		}
	});
	
	getMainCategories();
});