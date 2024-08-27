$( document ).ready( function ()
{
var url = baseurl;

//Main Category Insert

   $("#MainCatForm").validate({
    rules: {
        name: {
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
        name: {
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
            url: url + "admin/script/MainCatInsert.php",
            cache: false,
            processData: false,
            contentType: false,
            data: new FormData(form),
            success: function (data) {
				
                var obj = jQuery.parseJSON(data);

                if (obj.error == 'success') {
                    toastr.success(obj.msg)
                    $("#MainCatForm")[0].reset();
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
        url: url + 'admin/script/MainCatList.php',
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
					"data": "category_id",
"render": function (data, type, full, meta) {
                            // Generate dropdown with sequence numbers
                            var select = '<select class="sequence-dropdown" data-id="' + full.category_id + '" id="Main-Seq">';
							
							for (var i = 0; i <= len; i++) {
								
                                select += '<option value="' + i + '"';
    if (full.seq == i ) {
        select += ' selected'; 
    }
    
    select += '>' + i  + '</option>'; 
                            }
                            select += '</select>';
                            return select;
                        }
						},
                    { "data": "name" },
                    {
                        "data": "category_id",
                        "render": function (data, type, full, meta) {
                            return '<i data-id=' + data + ' id="delete" class="fa fa-trash text-danger" style="cursor:pointer" title="Delete"></i>';
                        }
                    },
                    {
                        "data": "category_active",
                        "render": function (data, type, full, meta) {
                            return data === 'Active' ? '<i data-id=' + full.category_id + ' id="Cat-Status" data-status="Inactive" class="fa fa-check text-success" style="cursor:pointer" title="Active"></i>' :
                                                     '<i data-id=' + full.category_id + ' id="Cat-Status" data-status="Active" class="fa fa-times text-danger" style="cursor:pointer" title="Inactive"></i>';
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


$(document).on('change', '#MainCat', function() {
    var Change_ID = $(this).val();
    $.ajax({
        url: url + 'admin/script/sub-category-list.php',
        method: "POST",
        cache: false,
        data: {
            Change_ID: Change_ID
        },
        success: function(data) {
            var select = $('#SubCat');
            // Clear existing data
            select.empty();
            // Add new data
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

$(document).on('click', '#Cat-Status', function() {
    var id = $(this).attr("data-id");
    var statu = $(this).attr("data-status");
    $.ajax({
        url: url + 'admin/script/MainStatus.php',
        method: "POST",
        cache: false,
        data: {
            id: id,
			statu: statu
        },
        success: function(data) {
                        var obj = jQuery.parseJSON(data);

                if (obj.error == 'success') {
                    toastr.success(obj.msg)
                    CategoryList();
                } else {
                    toastr.error(obj.msg)
                }
        },
        error: function(error) {
            console.error('Error fetching data:', error);
        }
    });
});

$(document).on('change', '#Main-Seq', function() {
    var id = $(this).attr("data-id");
    var statu = $(this).val();
    $.ajax({
        url: url + 'admin/script/MainSeq.php',
        method: "POST",
        cache: false,
        data: {
            id: id,
			statu: statu
        },
        success: function(data) {
                        var obj = jQuery.parseJSON(data);

                if (obj.error == 'success') {
                    toastr.success(obj.msg)
                    CategoryList();
                } else {
                    toastr.error(obj.msg)
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
				url:url + "/admin/script/delete_category.php",
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
	
	
CategoryList();
	
})