$( document ).ready( function ()
{
var url = baseurl;


function ProductList() {
    $.ajax({
        url: url + 'admin/script/ProductList.php',
        method: 'GET',
        dataType: 'json',
        success: function (data) {
            // Initialize DataTable
            var reportTable = $('#Product_List').DataTable({
                destroy: true,
                data: data,
                columns: [
                    { 
					"data": "Product_ID"
					},
					 { 
					"data": "Product_Name"
					},
					 { 
					"data": "name"
					},
					  {
                        "data": "Product_Status",
                        "render": function (data, type, full, meta) {
                            return data === 'Active' ? '<span class="badge badge-success px-2" style="cursor: pointer;" data-id=' + full.Product_ID + ' id="Pro-Status" data-status="Inactive" data-category-id="2">'+data+'</span>' :
                                                     '<span class="badge badge-danger px-2" style="cursor: pointer;" data-id=' + full.Product_ID + ' id="Pro-Status" data-status="Active" data-category-id="2">'+data+'</span>';
                        }
                    },
					 { 
					"data": "Feature",
					"render": function (data, type, full, meta) {
                            return data === 'Y' ? '<i data-id=' + full.Product_ID + ' id="Fea-Status" data-status="N" class="fa fa-check text-success" style="cursor:pointer" title="Active"></i>' :
                                                     '<i data-id=' + full.Product_ID + ' id="Fea-Status" data-status="Y" class="fa fa-times text-danger" style="cursor:pointer" title="Inactive"></i>';
                        }
					},
					 { 
					"data": "Sale_Offer",
					"render": function (data, type, full, meta) {
                            return data === 'Y' ? '<i data-id=' + full.Product_ID + ' id="Sal-Status" data-status="N" class="fa fa-check text-success" style="cursor:pointer" title="Active"></i>' :
                                                     '<i data-id=' + full.Product_ID + ' id="Sal-Status" data-status="Y" class="fa fa-times text-danger" style="cursor:pointer" title="Inactive"></i>';
                        }
					},
					 { 
					"data": "Deals",
					"render": function (data, type, full, meta) {
                            return data === 'Y' ? '<i data-id=' + full.Product_ID + ' id="Deal-Status" data-status="N" class="fa fa-check text-success" style="cursor:pointer" title="Active"></i>' :
                                                     '<i data-id=' + full.Product_ID + ' id="Deal-Status" data-status="Y" class="fa fa-times text-danger" style="cursor:pointer" title="Inactive"></i>';
                        }
					},
					 { 
					"data": "Product_ID",
					 "render": function (data, type, full, meta) {
                            return '<i data-id=' + data + ' id="Edit" class="fa fa-edit text-primary" style="cursor:pointer" title="Edit"></i>';
                        }
					},
					 { 
					"data": "Product_ID",
					"render": function (data, type, full, meta) {
                            return '<i data-id=' + data + ' id="Image" class="fa fa-image text-success" style="cursor:pointer" title="Image"></i>';
                        }
					},
					 { 
					"data": "Product_ID",
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

$(document).on('click', '#Pro-Status', function() {
    var id = $(this).attr("data-id");
    var statu = $(this).attr("data-status");
    $.ajax({
        url: url + 'admin/script/ProStatus.php',
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
                    ProductList();
                } else {
                    toastr.error(obj.msg)
                }
        },
        error: function(error) {
            console.error('Error fetching data:', error);
        }
    });
});


$(document).on('click', '#Fea-Status', function() {
    var id = $(this).attr("data-id");
    var statu = $(this).attr("data-status");
    $.ajax({
        url: url + 'admin/script/FeaStatus.php',
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
                    ProductList();
                } else {
                    toastr.error(obj.msg)
                }
        },
        error: function(error) {
            console.error('Error fetching data:', error);
        }
    });
});

$(document).on('click', '#Sal-Status', function() {
    var id = $(this).attr("data-id");
    var statu = $(this).attr("data-status");
    $.ajax({
        url: url + 'admin/script/SalStatus.php',
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
                    ProductList();
                } else {
                    toastr.error(obj.msg)
                }
        },
        error: function(error) {
            console.error('Error fetching data:', error);
        }
    });
});

$(document).on('click', '#Deal-Status', function() {
    var id = $(this).attr("data-id");
    var statu = $(this).attr("data-status");
    $.ajax({
        url: url + 'admin/script/DealStatus.php',
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
                    ProductList();
                } else {
                    toastr.error(obj.msg)
                }
        },
        error: function(error) {
            console.error('Error fetching data:', error);
        }
    });
});

//Main Category Insert
  $("#updateProductForm").validate({
    rules: {
         name: {
            required: true
        },
		code: {
            required: true
        },
        meta_description: {
            required: true
        },
        meta_title: {
            required: true
        },
        INR: {
            required: true
        }, 
		USD: {
            required: true
        }, 
		weight: {
            required: true
        }, 
		discount: {
            required: true
        }, 
		qty: {
            required: true
        }, 
		sku: {
            required: true
        }, 
		MainCategory: {
            required: true
        }, 
		description: {
            required: true
        }, 
		add_information: {
            required: true
        },
		short_description: {
            required: true
        }
    },
    messages: {
        	name: {
           required: "Please enter a category name",
        },
		code: {
           required: "Please enter a category name",
        },
        meta_description: {
           required: "Please enter a category name",
        },
        meta_title: {
           required: "Please enter a category name",
        },
        INR: {
          required: "Please enter a category name",
        }, 
		USD: {
           required: "Please enter a category name",
        }, 
		weight: {
           required: "Please enter a category name",
        }, 
		discount: {
           required: "Please enter a category name",
        }, 
		qty: {
           required: "Please enter a category name",
        }, 
		sku: {
          required: "Please enter a category name",
        }, 
		MainCategory: {
           required: "Please enter a category name",
        }, 
		description: {
           required: "Please enter a category name",
        }, 
		add_information: {
           required: "Please enter a category name",
        },
		short_description: {
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
            url: url + "admin/script/ProductInsert.php",
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
        success: function(data) {
			 var data = JSON.parse(data);
				   var select = $('#SubCategoryPost');
            // Clear existing options
            select.empty();
			 select.append('<option></option>');
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


$(document).on('change', '#SubCategoryPost', function() {
    var id = $(this).val();
    $.ajax({
        url: url + 'admin/script/2ndSubCatList.php',
        method: "POST",
        cache: false,
        data: {
            id: id
        },
        success: function(data) {
			 var data = JSON.parse(data);
				   var select = $('#2ndSubCategoryPost');
            // Clear existing options
			select.append('<option></option>');
            select.empty();
            // Add new options
           for (var i = 0; i < data.length; i++) {
                var option = $('<option>', {
                    value: data[i].id,
                    text: data[i].sub_sub_categroy
                });
                select.append(option);
            }
			
        },
        error: function(error) {
            console.error('Error fetching data:', error);
        }
    });
});

$(document).on('click', '#Edit', function() {
	  var id = $(this).attr("data-id");
	  window.location.href= url + "admin/add-update.php?id="+id;
});

$('#description').summernote()
$('#add_information').summernote()
$('#short_description').summernote()


});