// JavaScript Document
$(document).ready(function(){	

	load_cart_data();
load_short_cart();
	function load_cart_data()
	{
		$.ajax({
			url:"script/fetch_cart.php",
			method:"POST",
			dataType:"json",
			success:function(data)
			{
				$('#cart_details').html(data.cart_details);
				$('.total_price').text(data.total_price);
				$('.badge').text(data.total_item);
			}
		});
	}
	
	function load_short_cart()
	{
		$.ajax({
			url:"script/short_cart.php",
			method:"POST",
			dataType:"json",
			success:function(data)
			{
				$('#short_cart').html(data.cart_details);
				
			}
		});
	}

	/*$('#cart-popover').popover({
		html : true,
        container: 'body',
        content:function(){
        	return $('#popover_content_wrapper').html();
        }
	});*/

	$(document).on('click', '.add_to_cart', function(){
		var product_id = $(this).attr("id");
		var product_name = $('#name'+product_id+'').val();
		var currency = $('#currency'+product_id+'').val();
		var weight = $('#weight'+product_id+'').val();
		var product_price = $('#price'+product_id+'').val();
		var product_quantity = $('#quantity'+product_id).val();
		var product_images = $('#images'+product_id).val();
        var product_Option = $('#option'+product_id).val();
        var product_OptPrice = $('#value'+product_id).val();

		var action = "add";
		if(product_quantity > 0)
		{
			$.ajax({
				url:"script/action.php",
				method:"POST",
				data:{product_id:product_id, product_name:product_name,currency : currency,weight:weight, product_price:product_price, product_quantity:product_quantity,product_images:product_images,product_Option:product_Option,product_OptPrice:product_OptPrice, action:action},
				success:function(data)
				{
console.log(data);
				    if(data === 'currency'){
                    alert("Please Select correct Currency");				        
				    }else{
					load_cart_data();load_short_cart();
					alert("Product added to Cart");				        
				    }

				}
			});
		}
		else
		{
			alert("lease Enter Number of Quantity");
		}
	});

	$(document).on('click', '.delete', function(){
		var product_id = $(this).attr("id");
		var product_option = $(this).data("option");
		console.log(product_option);
		var action = 'remove';
		if(confirm("Are you sure you want to remove this product?"))
		{
			$.ajax({
				url:"script/action.php",
				method:"POST",
				data:{
				    product_id:product_id,
				    product_option:product_option,
				    action:action},
				success:function()
				{
					load_cart_data();
					load_short_cart();
					$('#cart-popover').popover('hide');
					alert("Item has been removed from Cart");
					location.reload();
				}
			});
		}
		else
		{
			return false;
		}
	});

	$(document).on('click', '#clear_cart', function(){
		var action = 'empty';
		$.ajax({
			url:"script/action.php",
			method:"POST",
			data:{action:action},
			success:function()
			{
				load_cart_data();load_short_cart();
				$('#cart-popover').popover('hide');
				alert("Your Cart has been clear");
			}
		});
	});
    
});
