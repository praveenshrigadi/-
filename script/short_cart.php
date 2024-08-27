 <?php

//fetch_cart.php
session_start();
if(isset($_SESSION['webuser_id'])){
$total_price = 0;



$output = '

<ul class="cart_list">
';
if(!empty($_SESSION['webuser_id']))
{
	foreach($_SESSION['webuser_id'] as $keys => $values)
	{
		$output .= '
		  <li>
                                    <a href="#" class="item_remove delete" id="'. $values["product_id_webuser"].'" data-option="'. $values["product_Option"].'"><i class="ion-close"></i></a>
                                    <a href="product.php?id='. $values["product_id_webuser"].'">
                                    <div>
                                    <img src="admin/product_image_thumb/'.$values["product_images_webuser"].'" alt="cart_thumb1">
                                    </div>
                                    <div style="display: flow-root;">
                                    <span class="cart_quantity">'.$values["product_name_webuser"].'</span>';
                                     if($values["product_Option"]==='None' or empty($values["product_OptPrice"])){
                                        $price=$values["product_price_webuser"];
                                    }else{
                                        $pprice=$values["product_price_webuser"];
										$oprice=$values["product_OptPrice"];
										$price = $oprice;
                                    }
                                    $q = str_replace(',', '', $price);
                                    $t = $values["product_quantity_webuser"]  * floatval($q);
                                    $output.='<span class="cart_quantity"> '.$values["product_quantity_webuser"].' x <span class="cart_amount">'.$price.' = </span>'.number_format($t,2).'</span>
                                   </div>
                                    </a>
                                </li>
		

		';
		$total_price = $total_price + $t;
		
	}
	$output .= '
	 </ul>
                            <div class="cart_footer">
                            <p class="cart_total"><strong>Subtotal:</strong> <span class="cart_price"> <span class="price_symbole"></span></span>'.number_format($total_price, 2).'</p>
                            <p class="cart_buttons"><a href="shop-cart.php" class="btn btn-fill-line view-cart">View Cart</a><a href="checkout.php" class="btn btn-fill-out checkout">Checkout</a></p>
                            </div>	';
                        
}
else
{
	$output .= '<li style=" color: white;">Your Cart is Empty!</li>';
}
$output .= '';
$data = array(
	'cart_details'		=>	$output,
	'total_price'		=>	'' . number_format($total_price, 2)
	
);	

echo json_encode($data);
}/*else
	
{
	
	$total_price = 0;


$output = '

<ul class="cart_list">
';
if(!empty($_SESSION["shopping_cart"]))
{
	foreach($_SESSION["shopping_cart"] as $keys => $values)
	{
		$output .= '
		  <li>
                                    <a href="#" class="item_remove delete" id="'. $values["product_id"].'"><i class="ion-close"></i></a>
                                    <a href="shop-list-left-sidebar.html#"><img src="admin/product_image_thumb/'.$values["product_images"].'" alt="cart_thumb1">'.$values["product_name"].'</a>
                                    <span class="cart_quantity"> '.$values["product_quantity"].' x <span class="cart_amount">'.$values["product_price"].' = </span>'.number_format($values["product_quantity"] * $values["product_price"], 2).'</span>
                                </li>
		

		';
		$total_price = $total_price + ($values["product_quantity"] * $values["product_price"]);
		
	}
	$output .= '
	 </ul>
                            <div class="cart_footer">
                                <p class="cart_total"><strong>Subtotal:</strong> <span class="cart_price"> <span class="price_symbole"></span></span>'.number_format($total_price, 2).'</p>
                                <p class="cart_buttons"><a href="shop-cart.php" class="btn btn-fill-line view-cart">View Cart</a><a href="checkout.php" class="btn btn-fill-out checkout">Checkout</a></p>
                            </div>
	
	';
}
else
{
	$output .= '<li style=" color: white;">Your Cart is Empty!</li>';
}
$output .= '';
$data = array(
	'cart_details'		=>	$output,
	'total_price'		=>	'' . number_format($total_price, 2)
	
);	

echo json_encode($data);
}
*/
?>