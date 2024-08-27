$(document).ready(function() {
 function Category(page){
      $.ajax({
        url: "script/Category.php",
        type: "POST",
        cache:false,
        data : { 
		page_no : page	
		},
        success: function(data){
          if(data){
            $("#Category_more").remove();
            $("#Category_list").html(data);
          }else{
            $("#Category_more").html("Finished");
            $("#Category_more").prop("disabled",true);
          }
          
        }
      });
    }

/**  Option Change  ***/
$('#option_value').change(function() {
    option();
});
 
 
function option(){
     var currency=$("#currency_value option:selected").val();
     var id=$("#option_value option:selected").attr('data-id');
     var pid=$("#option_value option:selected").attr('data-pid');
     var opt=$("#option_value").val();
          $.ajax({
        url: "script/option.php",
        type: "POST",
        dataType: "JSON",
        cache:false,
        data : { 
		currency : currency,
		id : id,
		opt : opt,
		pid : pid,
		},
        success: function(data){
			if(data.opt === 'none'){
				$("#option_price").text();
				$('#option'+data.id).val('None');
				$('#value'+data.id).val('0');
				$('#optiondescription').addClass('d-none');
			}else{
				$("#option_price").text(data.price);
				$('#option'+data.id).val(data.opt);
				$('#value'+data.id).val(data.price);
				$('#optiondescription').removeClass('d-none');
				$('#Option_Description').text(data.desc);

			}
			option();
          
        }
      });
}


		$(document).on("click","#Category_more",function(){
		  $("#Category_more").html("Loading...");
		  var page = $(this).data("id");
		  Category(page);
		});
		
$(document).on("click","#product_name",function(){
			var name=$(this).data("id");
		$.ajax({
        url: "script/Category_check1.php",
        type: "POST",
        data : { 
		name : name	
		},
        success: function(data){
          if(parseInt(data) === 1){
		location.href="sub_category.php?id="+name;
          }else{
			 location.href="product_view.php?id="+name+"&cat=main";
          }
          
        }
      });
		});
		
		$(document).on("click","#sub_product_name",function(){
			var name=$(this).data("id");
		    $.ajax({
        url: "script/Category_check.php",
        type: "POST",
        data : { 
		name : name	
		},
        success: function(data){
       var data = data;
	   
   if(parseInt(data) === 1){
		location.href="sub_sub_category.php?id="+name;
          }else{
			 location.href="product_view.php?id="+name+"&cat=sub";
          } 	   
        }
      });
		});
		
		$(document).on("click","#2nd_product_name",function(){
			var name=$(this).data("id");
			location.href="product_view.php?id="+name;
});



	  $('.star_rating span').on('click', function(){
			var onStar = parseFloat($(this).data('value'), 10); // The star currently selected
			var stars = $(this).parent().children('.star_rating span');
			for (var i = 0; i < stars.length; i++) {
				$(stars[i]).removeClass('selected');
			}
			for (i = 0; i < onStar; i++) {
				$(stars[i]).addClass('selected');
			}
		});


 $("#insert_form").submit(function (event) { 
           event.preventDefault();  
           if($('#name').val() == "")  
           {  
                alert("Email is required");  
           }  
           else if($('#password').val() == '')  
           {  
                alert("password is required");  
           }  
             
           else  
           {  
                $.ajax({  
                     url:"script/login_update.php",  
                     method:"POST",  
                     data:$('#insert_form').serialize(), dataType: "json", 
                     beforeSend:function(){  
                          $('#insert').val("Inserting");  
                     },  
                     success:function(data){  
                          $('#insert_form')[0].reset();  
                          if(data.Stauts == 'Flase' )
						{
						     $("#msgshow").addClass("alert-danger");
	                        $("#msgshow").removeClass("alert-success");
							$('#msgshow' ).text( 'Incorrect username or password');
						} 
						 
						else if(data.Stauts == 'True' )
						{
						    $("#msgshow").addClass("alert-success");
	                        $("#msgshow").removeClass("alert-danger");
							$( '#msgshow' ).text( 'True');
							console.clear();
							window.location.replace("index.php");
						}
                     }  
                });  
           }  
      });
	$(document).on("click","#plus",function(){
	 var id=$(this).data("id");
	 var name=$('#quantity'+id).val();
	 var action="add";

	$.ajax({  
                     url:"script/decrement.php",  
                     method:"POST",  
                     data:{
					id:id,
    					name:name,
					action:action					
					 },success:function(data){
						 location.reload();
					 }
						 
						
                     }); 
	});

	$(document).on("click","#minus",function(){
	 var id=$(this).data("id");
	 var name=$('#quantity'+id).val();
	 var action="minus";
	$.ajax({  
                     url:"script/decrement.php",  
                     method:"POST",  
                     data:{
					id:id,
					name:name,
					action:action					
					 },success:function(data){
						 location.reload();
					 }
						 
						
                     }); 
	});
	
	
	$('#currency_value').on('change', function() {
var id = $(this).attr('data-id');
var currency = $(this).val();
$.ajax({
url: "script/currency.php",
type: "POST",
data: {
	id: id,
currency: currency
},
cache: false,
success: function(result){

	var data = JSON.parse(result);
$('#price_currency').html(data.price);
$('#price'+data.id).val(data.price);
$('#currency'+data.id).val(data.currency);
}
});
}); 
	
	
	$('#countrfs').on('change', function() {
var country_id = this.value;
$.ajax({
url: "script/country.php",
type: "POST",
data: {
country_id: country_id
},
cache: false,
success: function(result){
	Total();
$("#shipping").html(result);
Total();
}
});
}); 

$('#Bill_country').on('change', function() {
var country_id = this.value;
var weight = $('#total_weight').text();


$.ajax({
url: "script/country.php",
type: "POST",
data: {
country_id: country_id,
weight : weight
},
cache: false,
success: function(result){
result = result.toLocaleString('en-US', {minimumFractionDigits: 2, maximumFractionDigits: 2});
$("#Shipping_Price").html(result);
Total1();
}
});
});

$('#Ship_country').on('change', function() {
var country_id = this.value;
var weight = $('#total_weight').text();

$.ajax({
url: "script/country.php",
type: "POST",
data: {
country_id: country_id,
weight : weight
},
cache: false,
success: function(result){
var result = result.toLocaleString('en-US', {minimumFractionDigits: 2, maximumFractionDigits: 2});
$("#Shipping_Price").html(result);

Total1();
}
});
});
$('#sameaddress').on('click', function() {
	if($(this).prop("checked") == true){
     $('#ship_name').val($('#Bill_name').val());
     $('#ship_last').val($('#Bill_last').val());
     $('#Ship_country').val($('#Bill_country').val());
     $('#ship_address').val($('#Bill_address').val());
     $('#ship_city').val($('#Bill_city').val());
     $('#ship_state').val($('#bill_state').val());
     $('#ship_zipcode').val($('#bill_zipcode').val());
            }
            else if($(this).prop("checked") == false){
          $('#ship_name').val('');
          $('#ship_last').val('');
		  $('#Ship_country').val('');
		  $('#ship_address').val('');
		  $('#ship_city').val('');
          $('#ship_state').val('');
          $('#ship_zipcode').val('');
            }
});


function Total1(){
	
	var sub_total=$('#sub_total').text();
	var without_commas = parseFloat(sub_total.replace(/,/g, ''));
	var shipping=$('#Shipping_Price').text();
	var total = parseFloat(without_commas) + parseFloat(shipping);
	var subtotal = total.toLocaleString('en-US', {minimumFractionDigits: 2, maximumFractionDigits: 2});
	$('#total').html(subtotal);	
}
Total1();
function Total(){

	var sub_total=$('#subtotal').text();
	var shipping=$('#shipping').text();
	var total = parseFloat(sub_total) + parseFloat(shipping);
	var subtotal = total.toFixed(2);
	$('#total').html(subtotal);		
}
		
		
	$('#placeorder').on('click', function(e) {
		var Bill_name = $("#Bill_name").val();
		var Bill_last = $("#Bill_last").val();
		var Bill_country = $("#Bill_country").val();
		var Bill_address = $("#Bill_address").val();
		var Bill_city = $("#Bill_city").val();
		var bill_state = $("#bill_state").val();
		var bill_zipcode = $("#bill_zipcode").val();
		var bill_phone = $("#bill_phone").val();
		var bill_email = $("#bill_email").val();
		var ship_name = $("#ship_name").val();
		var ship_last = $("#ship_last").val();
		var Ship_country = $("#Ship_country").val();
		var ship_address = $("#ship_address").val();
		var ship_city = $("#ship_city").val();
		var ship_state = $("#ship_state").val();
		var ship_zipcode = $("#ship_zipcode").val();

		if(Bill_name == "" | Bill_last== "" | Bill_country== "" | Bill_address== ""| Bill_city== "" | bill_state== "" | bill_zipcode== "" | bill_phone== "" | bill_email== "" | ship_name== "" | ship_last== "" | Ship_country== "" | ship_address== "" | ship_city== "" | ship_state== "" | ship_zipcode== ""){
			alert('All Fields are required');
		}else{
					e.preventDefault();
			var str = $('#bill_detai').serialize();

			   $.ajax({
        url: "script/Bill_data.php",
        type: "POST",
        data :str,
		success: function(data){
if(data){
	
location.href="payment.php?OrderID="+data;
	
}
}
      });
		}
			
	});	
	
	
	function check_required_inputs() {
    $('input,textarea,select').each(function(){
        if( $(this).val() == "" ){
          return false;
        }
    });
    return true;
}



var rating_data = 0;


    $(document).on('click', '.selected', function(){

        rating_data = $(this).data('value');

    });
    
        $('#Reviews').click(function(){

        $id=$(this).data('pid');
        review($id);
    });

function review(id){
$id = id;

}

    $('#save_review').click(function(){

        var user_name = $('#name').val();
        var Email_ID = $('#email').val();
        var user_review = $('#message').val();
        var id = $(this).data('id');
  if(user_name == '' || user_review == '')
        {
            alert("Please Fill Both Field");
            return false;
        }
        else
        {
            $.ajax({
                url:"script/submit_rating.php",
                method:"POST",
                data:{rating_data:rating_data,id:id, user_name:user_name,Email_ID:Email_ID, user_review:user_review},
                success:function(data)
                {
                    if(data == 'succ'){
location.reload();                    
                    }

                }
            });
        }

    });
    
    
		function BlogDetails(){
			   $.ajax({
					url:"script/blog_view.php",
					method:"GET",
					 dataType: 'JSON',
					success:function(response)
					{
					    $.each(response, function(key, value) {
str='<div class="col-md-4 col-6">';
str+='<div class="product">';
str+='<div class="product_img">';
str+='<a href="articles-single.php?id='+value.id+'">';
str+='<img src="admin/blog-img/'+value.image+'" alt="'+value.name_title+'">';
str+='</a>';
str+='</div>';
str+='<div class="product_info">';
str+='<h6 class="product_title" alt="Shree Ganesh Brass Idol"><a href="articles-single.php?id='+value.id+'">'+value.name_title+'</a></h6>';
str+='<a href="articles-single.php?id='+value.id+'"><div class="product_desc" style=" display: -webkit-box;-webkit-line-clamp: 4;-webkit-box-orient: vertical;overflow: hidden;text-overflow: ellipsis;">'+value.content+'</div></a>';
str+='</div>';
str+='</div>';
str+='</div>';

$('.blog').append(str);

					    });
					}

					})
		}
    
    BlogDetails();
    
	  // Load Data from Database with Ajax
		function blog_data(page){
		  $.ajax({
			url: "script/blog_data.php",
			type: "POST",
			cache:false,
			data : { page_no : page },
			success: function(data){
			  if(data){
				$("#pagination").remove();
				$("#loadData").append(data);
			  }else{
				$("#ajaxbtn").html("Finished");
				$("#ajaxbtn").prop("disabled",true);
			  }
			  
			}
		  });
		}
		blog_data();

		// Add Click Event on ajaxbtn
		$(document).on("click","#ajaxbtn",function(){
		  $("#ajaxbtn").html("Loading...");
		  var pid = $(this).data("id");
		  blog_data(pid);
		});


    $('#newsletter').click(function(){

        var Email = $('#email').val();
      
  if(email == '')
        {
            alert("Please Fill Email Id");
            return false;
        }
        else
        {
            $.ajax({
                url:"script/Newsletter.php",
                method:"POST",
                data:{Email:Email},
                success:function(data)
                {
                    if(data == 'succ'){
location.reload();                    
                    }

                }
            });
        }

    });
    
    $('#Pincode1').keyup(function() {
		var Pincode = $(this).val(); 
		 
		    $.ajax({  
                url:"script/my_account_edit.php",  
                method:"POST",  
                data:{Pincode:Pincode},  
                dataType:"json",  
                success:function(data){ 
					if(data.status == '0'){
						
						$('#pinmsg').text('Incorrect Pincode'); 
						$( 'button:submit' ).attr( 'disabled', true );
						$('#District').val('');  
                     	$('#StateName').val('');
						
					}else{
                     $('#District').val(data.District);  
                     $('#StateName').val(data.StateName);  
						$('#pinmsg').text(''); 
						$( 'button:submit' ).attr( 'disabled', false );
					}
                }  
           }); 
		 
		 
		 
		 
		 });
		 
		  $('#address-tab').click(function(){
		      var id=$(this).data('id');
		      load_datae(id);
		  })
		   $('#account-detail-tab').click(function(){
		      var id=$(this).data('id');
		      load_datae(id);
		  })
		 
		 	function load_datae(name) {
 var webuserppid = name; 
			$.ajax( { //create an ajax request to display.php
				type: "POST",
				url: "script/my_account_edit.php",
				data: {
					webuserppid: webuserppid,

				},
				dataType: "json", //expect html to be returned                
				success: function ( data ) {
    				 $('#addressli').text(data.Address);  
                     $('#pincodeli').text(data.Zipcode);  
                     $('#districtli').text(data.Country);  
                     $('#stateli').text(data.State);
					$('#cityli').text(data.City); 
					$('#usename').val(data.name); 
					$('#Last_Name').val(data.Last_Name); 
					$('#phone_number').val(data.phone_number); 
					$('#email').val(data.email); 
					$('#accountid').val(data.id);
					$('#ordertbl').hide();
    					
				}

			} );
		}
		 
		 
		 
		  $('#Address_form').on("submit", function(event){  
           event.preventDefault();  
        
                $.ajax({  
                     url:"script/my_account_update.php",  
                     method:"POST",  
                     data:$('#Address_form').serialize(),  
                     beforeSend:function(){  
                          $('#insert').val("Inserting");  
                     },  
                     success:function(data){  
                          $('#add_data_Modal').modal('hide');  
                          //$('#messageshow').html(data);
						  load_datae(data);
                     }  
                });  
             
      }); 
    
    $('#account_up').on("submit", function(event){  
           event.preventDefault();  
         
                $.ajax({  
                     url:"script/my_account_update.php",  
                     method:"POST",  
                     data:$('#account_up').serialize(),  
                     beforeSend:function(){  
                          $('#insert').val("Inserting");  
                     },  
                     success:function(data){  
                         $('html, body').animate({ scrollTop: 0 }, 0);
  				   $("#messageshowq").css('display','block');
					$("#messageshowq").fadeIn();
				$('#messageshowq').html(data);
					setTimeout(function () {$("#messageshowq").fadeOut("slow");}, 3000);
					
                    
						 
                     }  
                });  
             
      }); 
    
     $(document).on('click', '.edit_data', function(){  
           var webuserid = $(this).attr("id");  
           $.ajax({  
                url:"script/my_account_edit.php",  
                method:"POST",  
                data:{webuserid:webuserid},  
                dataType:"json",  
                success:function(data){  
					$('#countrfs option[value="'+data.country+'"]').prop('selected', true);
                     $('#addressli').text(data.Address);  
                     $('#pincodeli').text(data.Zipcode);  
                     $('#districtli').text(data.Country);  
                     $('#stateli').text(data.State);
					$('#cityli').text(data.City); 
                    
					 $('#webuser_update_id').val(data.id);
                     $('#add_data_Modal').modal('show'); 
					
                }  
           });  
      });
      
    
/*	
	  $('.View_data').click(function() {
           var orderid = $(this).attr("id");  
           $.ajax({  
                url:"script/my_account_edit.php",  
                method:"POST",  
                data:{orderid:orderid},  
                dataType:"json", 
                cache:false,
                success:function(data){  
                     $('#Order_Data').modal('show');
                     var count = data.length;
                     $('#ord_name').html(data[0].Ship_FirstName);
                     $('#ord_date').html(data[0].payment_date);
                     $('#ord_id').html(data[0].Order_ID);
                     $('#ord_shipping').html(data[0].Ship_Address1+'\n\r'+data[0].Ship_City+'\n\r'+data[0].Ship_State+'\n\r'+data[0].Ship_Zipcode);
                     
                     table='';
$.each(data, function(i, item) {
     var amount=parseInt(data[i].amount) * parseInt(data[i].quantity);
table+='<tr><td width="20%"> <img src="admin/product_image_thumb/'+data[i].images+'" width="70"> </td><td width="60%"> <span class="font-weight-bold">'+data[i].product_name+'</span><div class="product-qty"> <span class="d-block">Quantity:'+data[i].quantity+'</span></div></td><td width="20%"><div class="text-right"> <span class="font-weight-bold">₹'+amount+'</span></div></td></tr>';
});
                     $('#ord_product').html(table);
                     
                     var Subtotal=parseInt(data[0].Total) - parseInt(data[0].Shipping_Charges);
                     $('#ord_subtotal').html(Subtotal);
                     $('#ord_shippingcharges').html(data[0].Shipping_Charges);
                     $('#ord_total').html(data[0].Total);

                }  
           });  
      });
      */
      
      	/*===================================*
	11. CONTACT FORM JS
    *===================================*/
	$("#submitContact").on("click", function(event) {
	    event.preventDefault();
	    var mydata = $("#enq").serialize();
	    $.ajax({
	        type: "POST",
	        dataType: "json",
	        url: "script/contact.php",
	        data: mydata,
	        cache:false,
	        success: function(data) {
	    if (data.type === "error") {
	                 $("#alert-msg").fadeIn();
	                  $("#alert-msg").addClass("alert, alert-danger");
					setTimeout(function () {
					    $("#alert-msg").fadeOut("slow");
					    }, 3000);
	               
	      	            } else {
	                $("#alert-msg").fadeIn();
					setTimeout(function () {$("#alert-msg").fadeOut("slow");}, 3000);
	                $("#alert-msg").addClass("alert, alert-success");
	                $("#alert-msg").removeClass("alert, alert-danger");
	                $("#first-name").val("");
	                $("#email").val("");
					$("#phone").val("");
	                $("#subject").val("");
	                $("#description").val("");

	            }
	            $("#alert-msg").html(data.msg);
	            $("#alert-msg").show();
	        },
	        error: function(xhr, textStatus) {
	            alert(textStatus);
	        }
	    });
	});
	
   
   // jquery
$('#femail').keyup(function(event){
    //ajax request
      event.preventDefault();
	    var mydata = $("#forget").serialize();
    $.ajax({
         type: "POST",
        url: "script/emailCheck.php",
        data: mydata,
        dataType: 'json',
        success: function(data) {
            if(data.result) {
                $("#submit").removeAttr('disabled');
                $("#message").text('');
            }
            else {
                $("#message").addClass('text-danger');
$("#message").text('Email Does not Exsit');
            }
        },
        error: function(data){
            //error
        }
    });
});

   // jquery
$('#code').keyup(function(event){
    //ajax request
      event.preventDefault();
	    var mydata = $("#code").val();
	    var email = $("#cemail").val();
    $.ajax({
         type: "POST",
        url: "script/codeCheck.php",
        data: {
         code : mydata,
         email : email
        },
        dataType: 'json',
        success: function(data) {
            if(data.result) {
                $("#npassword").removeAttr('disabled');
                $("#cpassword").removeAttr('disabled');
                $("#submitPassword").removeAttr('disabled');
                $("#message").text('');
            }
            else {
                $("#message").addClass('text-danger');
$("#message").text('Code Does not Match');
            }
        },
        error: function(data){
            //error
        }
    });
});


 	/*===================================*
	11. Change Password FORM JS
    *===================================*/
	$("#submitPassword").on("click", function(event) {
	    event.preventDefault();
	    var mydata = $("#changepassword").serialize();
	   $.ajax({
	        type: "POST",
	        dataType: "json",
	        url: "script/reset_password.php",
	        data: mydata,
	        cache:false,
	        success: function(data) {
	    if (data.type === "error") {
	                 $("#alert-msg").fadeIn();
	                  $("#alert-msg").addClass("alert, alert-danger");
					setTimeout(function () {
					    $("#alert-msg").fadeOut("slow");
					    }, 3000);
	               
	      	            } else {
	                $("#alert-msg").fadeIn();
					setTimeout(function () {$("#alert-msg").fadeOut("slow");}, 3000);
	                $("#alert-msg").addClass("alert, alert-success");
	                $("#alert-msg").removeClass("alert, alert-danger");
                window.location.href = "../index.php";
	            }
	            $("#alert-msg").html(data.msg);
	            $("#alert-msg").show();
	        },
	        error: function(xhr, textStatus) {
	            alert(textStatus);
	        }
	    });
	});
	

	$(document).on("click", "#OfflinePayment", function(){
    var id = $(this).data("ord");
    var inputValue = $('input[name="payment"]:checked').val();
    var Account = '';
    var Cheque = '';

    if(inputValue === 'Cash'){
        Account = $('#AccNo').val();
        if(Account === ''){
            $("#CashError").removeClass("hidden");   
            $("#CashError").fadeIn();
            setTimeout(function () {$("#CashError").fadeOut("slow");}, 3000);
            $("#CashError").addClass("alert-danger");
            $("#CashError").removeClass("alert-success");
            return false;
        }
    } else if(inputValue === 'Cheque'){
        Cheque = $('#ChequeNo').val();
        if(Cheque === ''){
            $("#ChqError").removeClass("hidden");   
            $("#ChqError").fadeIn();
            setTimeout(function () {$("#ChqError").fadeOut("slow");}, 3000);
            $("#ChqError").addClass("alert-danger");
            $("#ChqError").removeClass("alert-success");
            return false;
        }
    }

    $.ajax({
        type: "POST",
        url: "script/OffPayment.php",
        data: {
            Account: Account,
            Cheque: Cheque,
            ORDID: id
        },
        dataType: 'json',
        success: function(data) {
            console.log(data);
            if (data.type === "error") {
                window.location.href = "order-failed.php";
            } else {
                window.location.href = "order-completed.php";
            }
        },
        error: function(xhr, textStatus, errorThrown){
            console.log(xhr);
            console.log(textStatus);
            console.log(errorThrown);
        }
    });
});

		
})
