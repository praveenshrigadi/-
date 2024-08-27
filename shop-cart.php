<?php include('connection.php');
 ?>
 <!DOCTYPE html>
<html lang="en">
<head>
<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Favicon Icon -->
<link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.ico">
<!-- Author Name --->
<meta content="Anurag" name="author">
<!-- View Port -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Meta Conical -->
<link rel="canonical" href="<?php echo Conical ?>" />
<!-- Meta Description -->
<meta name="description" content="<?php echo Description ?>">
<!-- Meta Keywords -->
<meta name="keywords" content="<?php echo Keywords ?>">
<!-- Meta Title -->
<meta name="title" content="<?php echo Title ?>">
<!-- SITE TITLE -->
<title><?php echo Title ?></title>
<!-- Css File --->
<?php include('css.php') ;?>
</head>
<!-- LOADER -->
<div class="preloader">
    <div class="lds-ellipsis">
        <span></span>
        <span></span>
        <span></span>
    </div>
</div>
<!-- END LOADER -->
<body>

<!-- End Screen Load Popup Section --> 
<!-- Navigation -->
<?php include('navigation.php'); ?>
<?php include('breadcrumbs.php') ?>

<!-- START MAIN CONTENT -->
<div class="main_content">

<!-- START SECTION SHOP -->
<div class="section" style="padding-top:0px !important">
	<div class="container">
	    
	            <div class="row">
            <div class="col-12">
            	<div class="medium_divider"></div>
            	<div class="divider center_icon"><i class="ti-shopping-cart-full"></i></div>
            	<div class="medium_divider"></div>
            </div>
        </div>
	    
        <div class="row">
            <div class="col-12">
                <div class="table-responsive shop_cart_table">
                	<table class="table">
                    	<thead>
                        	<tr>
                            	<th class="product-thumbnail">&nbsp;</th>
                                <th class="product-name">Product</th>
                                <th class="product-price">Price</th>
                                <th class="product-quantity">Quantity</th>
                                <th class="product-subtotal">Total</th>
                                <th class="product-remove">Remove</th>
                            </tr>
                        </thead>
                        <tbody>
                        	<?php
							if(isset($_SESSION['webuser_id'])){
	$total_price = 0;
$total_item = 0;

$output = '

';
if(!empty($_SESSION['webuser_id']))
{
	foreach($_SESSION['webuser_id'] as $keys => $values)
	{

		$output .= '<tr>
                            	<td class="product-thumbnail"><a href="product.php?id='.$values["product_id_webuser"].'"><img src="admin/product_image_thumb/'.$values["product_images_webuser"].'" alt="product1"></a></td>
								
                                <td class="product-name" data-title="Product"><a href="product.php?id='.$values["product_id_webuser"].'">'.$values["product_name_webuser"].'</a></td>';
								
                            if($values["product_OptPrice"]=='None' or empty($values["product_OptPrice"])){
                                        $price=$values["product_price_webuser"];
                                    }else{
                                        $pprice=$values["product_price_webuser"];
										$oprice=$values["product_OptPrice"];
										$price = $oprice;
                                    }
                                    $q = str_replace(',', '', $price);
                              
                                $output .= '<td class="product-price" data-title="Price">'.$values["product_currency"].' '.number_format($q, 2).'</td>
                                <td class="product-quantity" data-title="Quantity">
								<div class="quantity">
                                <input type="button" value="-" data-id="'. $values["product_id_webuser"].'" class="minus" id="minus">
                                <input type="text" id="quantity'. $values["product_id_webuser"].'" readonly name="quantity" value="'.$values["product_quantity_webuser"].'" title="Qty" class="qty">
                                <input type="button" data-id="'. $values["product_id_webuser"].'" value="+" class="plus" id="plus">
                              </div>
							  </td>
                              	<td class="product-subtotal" data-title="Total'. $values["product_id_webuser"].'" data-id="'. $values["product_id_webuser"].'">'.$values["product_currency"].' '.number_format($values["product_quantity_webuser"] * $q, 2).'</td>
                                <td class="product-remove" data-title="Remove"><a href="#" class="item_remove delete" id="'. $values["product_id_webuser"].'" data-option="'. $values["product_Option"].'"><i class="ti-close"></i></a></td>
								
								
                            </tr>
		
		
		
		';
		$total_price = $total_price + ($values["product_quantity_webuser"] * $q);
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
$data = array(
	'cart_details'		=>	$output,
	'total_price'		=>	'' . number_format($total_price, 2),
	'total_item'		=>	''.$total_item
);	

echo $output;	
}
?>
                            
                           
                        </tbody>
                        <tfoot>
                        	<tr>
                            	<td colspan="6" class="px-0">
                                	<div class="row no-gutters align-items-center">

                                    	<!--<div class="col-lg-4 col-md-6 mb-3 mb-md-0">
                                            <div class="coupon field_form input-group">
                                                <input type="text" value="" class="form-control form-control-sm" placeholder="Enter Coupon Code..">
                                                <div class="input-group-append">
                                                	<button class="btn btn-fill-out btn-sm" type="submit">Apply Coupon</button>
                                                </div>
                                            </div>
                                    	</div>
                                        <div class="col-lg-8 col-md-6 text-left text-md-right">
                                            <button class="btn btn-line-fill btn-sm" type="submit">Update Cart</button>
                                        </div>--->
                                    </div>
                                </td>
                            </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>

        <div class="row">
        	<div class="col-md-6">
            	<!--<div class="heading_s1 mb-3">
            		<h6>Calculate Shipping</h6>
                </div>
                <form class="field_form shipping_calculator">
                    <div class="form-row">
                        <div class="form-group col-lg-12">
                            <div class="custom_select">
                                <select class="form-control" id="countrfs">
                         <?php
						 $country = "SELECT * FROM country_fridget";
$query_country = mysqli_query($conn,$country) or die("Query Unsuccessful.");
if(mysqli_num_rows($query_country) > 0){
	while($country = mysqli_fetch_assoc($query_country)) {
		$id=$country["id"];
		$name=$country["name"];
		echo '<option value='.$id.'>'.$name.'</option>';
	}
}
						 ?>
                                </select>
                            </div>
                        </div>
                    </div>
                    
                </form>-->
            </div>
            <div class="col-md-6">
            	<div class="border p-3 p-md-4">
                    <div class="heading_s1 mb-3">
                        <h6>Cart Totals</h6>
                    </div>
                    <div class="table-responsive">
                        <table class="table">
                            <tbody>
                                <tr>
                                    <td class="cart_total_label">Cart Subtotal</td>
	<td class="cart_total_amount"><?php echo (!empty($values["product_currency"])) ? $values["product_currency"] : ''; ?> <span  id="subtotal"> <?php echo number_format((float)$total_price,2,".");?></span></td>
                                </tr>
                           <!--     <tr>
                                    <td class="cart_total_label">Shipping</td>
                                    <td class="cart_total_amount">Rs. <span id="shipping">0.00</span></td>
                                </tr>
                                <tr>
                                    <td class="cart_total_label">Total</td>
                                    <td class="cart_total_amount">Rs. <strong id="total"><?php echo number_format($total_price, 2);?></strong></td>
                                </tr>-->
                            </tbody>
                        </table>
                    </div>
                    <a href="checkout.php" class="btn btn-fill-out">Proceed To CheckOut</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END SECTION SHOP -->



</div>
<!-- END MAIN CONTENT -->

<!-- START FOOTER -->
<?php include('footer.php') ?>
<!-- START FOOTER -->

</body>
</html>