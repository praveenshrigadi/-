 <?php

//fetch_cart.php
session_start();
if(isset($_SESSION['webuser_id'])){
	$total_price = 0;
$total_item = 0;

$output = '

';
if(!empty($_SESSION['webuser_id']))
{
	foreach($_SESSION['webuser_id'] as $keys => $values)
	{
		$output .= '
		
		
		
			<tr>
                            	<td class="product-thumbnail"><a href="#"><img src="admin/product_image_thumb/'.$values["product_images_webuser"].'" alt="product1"></a></td>
								
                                <td class="product-name" data-title="Product"><a href="#">'.$values["product_name_webuser"].'</a></td>
								
                                <td class="product-price" data-title="Price">'.$values["product_price_webuser"].'</td>
                                <td class="product-quantity" data-title="Quantity">
								<div class="quantity">
                                <input type="button" value="-" class="minus">
                                <input type="text" id="quantity" name="quantity" value="'.$values["product_quantity_webuser"].'" title="Qty" class="qty" size="4">
                                <input type="button" value="+" class="plus">
                              </div>
							  </td>
                              	<td class="product-subtotal" data-title="Total">'.number_format($values["product_quantity_webuser"] * $values["product_price_webuser"], 2).'</td>
                                <td class="product-remove" data-title="Remove"><a href="#" class="item_remove delete" data-option="'. $values["product_Option"].'" id="'. $values["product_id_webuser"].'"><i class="ti-close"></i></a></td>
								
								
                            </tr>
		
		
		
		';
		$total_price = $total_price + ($values["product_quantity_webuser"] * $values["product_price_webuser"]);
		$total_item = $total_item + 1;
	}
	
	$output .= '
	
	';
}
else
{
	$output .= '
    <tr>
    	<td colspan="6" align="center">
    		Your Cart is Empty!Test
    	</td>
    </tr>
    ';
}
$output .= '';
	if(!empty($_SESSION['webuser_id'][0]['product_currency'])){
	$currency=$_SESSION['webuser_id'][0]['product_currency'];    
	}else{
	    $currency='0';
	}
	
$data = array(
	'cart_details'		=>	$output,
	'total_price'		=>	'' . number_format($total_price, 2),
	'total_item'		=>	''.$total_item,
    'currency'              => $currency
);	

echo json_encode($data);
	
	
	
	
}/*
else
{
	
	$total_price = 0;
$total_item = 0;

$output = '

';
if(!empty($_SESSION["shopping_cart"]))
{
	foreach($_SESSION["shopping_cart"] as $keys => $values)
	{
		$output .= '
		
		
		
			<tr>
                            	<td class="product-thumbnail"><a href="#"><img src="admin/product_image_thumb/'.$values["product_images"].'" alt="product1"></a></td>
                                <td class="product-name" data-title="Product"><a href="#">'.$values["product_name"].'</a></td>
                                <td class="product-price" data-title="Price">Rs.'.$values["product_price"].'</td>
                                <td class="product-quantity" data-title="Quantity">
								
							<div class="quantity">
                           <input type="button" value="-" class="minus">
                           <input type="text" name="quantity" id="quantity30" value="'.$values["product_quantity"].'" title="Qty" class="qty" size="4">
                           <input type="button" value="+" class="plus">
                        </div></td>
                              	<td class="product-subtotal" data-title="Total">'.number_format($values["product_quantity"] * $values["product_price"], 2).'</td>
                                <td class="product-remove" data-title="Remove"><a href="#" class="item_remove delete" id="'. $values["product_id"].'"><i class="ti-close"></i></a></td>
								
								
                            </tr>
		
		
		
		';
		$total_price = $total_price + ($values["product_quantity"] * $values["product_price"]);
		$total_item = $total_item + 1;
	}
	$output .= '
	
	';
}
else
{
	$output .= '
    <tr>
    	<td colspan="6" align="center">
    		Your Cart is Empty!
    	</td>
    </tr>
    ';
}
$output .= '';
$data = array(
	'cart_details'		=>	$output,
	'total_price'		=>	'' . number_format($total_price, 2),
	'total_item'		=>	''.$total_item
);	

echo json_encode($data);
	
}*/
?>