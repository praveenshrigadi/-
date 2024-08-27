$( document ).ready( function ()
{
var url = baseurl;

   $('input[type="file"]').on("change", function() {
             let filenames = [];
             let files = document.getElementById("Product_IMG").files;
             if (files.length > 1) {
               filenames.push("Total Files (" + files.length + ")");
             } else {
               for (let i in files) {
                 if (files.hasOwnProperty(i)) {
                   filenames.push(files[i].name);
                 }
               }
             }
             $(this)
               .next(".custom-file-label")
               .html(filenames.join(","));
           });
		   
 $('#ImageForm').submit(function(e) {
                e.preventDefault(); // Prevent the form from submitting normally
                var formData = new FormData($(this)[0]); // Create FormData object
                $.ajax({
                    url: url+ 'admin/script/ImgUpload.php', // URL where you handle the upload
                    type: 'POST',
                    data: formData,
                    async: false,
                    cache: false,
                    contentType: false,
                    processData: false,
                    success: function(data) {
                           var obj = jQuery.parseJSON(data);
                if (obj.error == 'success') {
                    toastr.success(obj.msg);
					location.reload();
                } else {
                    toastr.error(obj.msg);
                }
                    }
                });
            });
			
			
			$(document).on('click', '#del_img', function(){
		var id = $(this).attr("data-id");

		if(confirm("Are you sure you want to remove this?"))
		{
			$.ajax({
				url:url + "/admin/script/delete_image.php",
				method:"POST",
				data:{id:id},
				success:function(data){
			var obj = jQuery.parseJSON(data);           
                    if(obj.error == 'success'){
                       toastr.success(obj.msg);
					   location.reload();
                    }else{
         toastr.error(obj.msg); 
                    }}
			});
		}
	});
	
	$(document).on('change', '.sel', function() {
		 var val = $(this).val();
		 var id = $(this).attr('data-id');
		 
		 $.ajax({
				url:url + "/admin/script/order_image.php",
				method:"POST",
				data:{
					id: id,
					val: val},
				success:function(data){
			var obj = jQuery.parseJSON(data);           
                    if(obj.error == 'success'){
                       toastr.success(obj.msg);
					   location.reload();
                    }else{
         toastr.error(obj.msg); 
                    }}
			});
		
	});
});