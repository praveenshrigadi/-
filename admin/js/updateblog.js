$( document ).ready( function ()
{
var url = baseurl;


//Main Category Insert
  $("#UpdateBlogForm").validate({
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
            url: url + "admin/script/BlogUpdate.php",
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





$('#description').summernote();

});