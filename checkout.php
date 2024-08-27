<?php include('connection.php');

if(empty($_SESSION['webuser_id'])){
      header('Location:index.php');
}
if(isset($_SESSION["ID"])){
$user = "SELECT * FROM `webuser` where id=".$_SESSION["ID"];
$result_user = mysqli_query($conn,$user);
$row_user = mysqli_fetch_array($result_user);	
$name=$row_user["name"];
$last=$row_user["Last_Name"];
$country=$row_user["Country"];
$address=$row_user["Address"];
$city=$row_user["City"];
$state=$row_user["State"];
$zipcode=$row_user["Zipcode"];
$phone=$row_user["phone_number"];
$email=$row_user["email"];
}else{
    header('Location:login.php');
}
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
<?php include('navigation.php') ?>
<?php include('breadcrumbs.php') ?>


<!-- START MAIN CONTENT -->
<div class="main_content">

<!-- START SECTION SHOP -->
<div class="section" style="padding-top:0px !important">
	<div class="container">
           <div class="row">
            <div class="col-12">
            	<div class="medium_divider"></div>
            	<div class="divider center_icon"><i class="linearicons-credit-card"></i></div>
            	<div class="medium_divider"></div>
            </div>
        </div>
        <div class="row">
        	<div class="col-md-6">
            	<div class="heading_s1">
            		<h4>Billing Details</h4>
                </div>
                <form method="post" id="bill_detai">
                    <div class="form-group">
                        <input type="text" required class="form-control" name="Bill_name" value="<?php echo empty($name)? '' : $name ?>" id="Bill_name" placeholder="First name *">
                    </div>
                    <div class="form-group">
                        <input type="text" required class="form-control" value="<?php echo empty($last)? '' : $last ?>" name="Bill_last" id="Bill_last" placeholder="Last name *">
                    </div>
                    <div class="form-group">
                        <div class="custom_select">
                           <select class="form-control" name="Bill_country" placeholder="Select Country" required id="Bill_country">
                               <option value="">Select Country</option>
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
                    <div class="form-group">
                        <input type="text" class="form-control" name="Bill_address" id="Bill_address" value="<?php echo empty($address)? '' : $address ?>" required="" placeholder="Address *">
                    </div>
                    <div class="form-group">
                        <input class="form-control" required name="Bill_city" value="<?php echo empty($city)? '' : $city ?>" id="Bill_city" type="text"  placeholder="City / Town *">
                    </div>
                    <div class="form-group">
                        <input class="form-control" required name="bill_state" id="bill_state" value="<?php echo empty($state)? '' : $state ?>" type="text" placeholder="State / County *">
                    </div>
                    <div class="form-group">
                        <input class="form-control" value="<?php echo empty($zipcode)? '' : $zipcode ?>" name="bill_zipcode" id="bill_zipcode" required type="text" placeholder="Postcode / ZIP *">
                    </div>
                    <div class="form-group">
     <input class="form-control" type="tel" id="bill_phone" value="<?php echo empty($phone)? '' : $phone ?>" name="bill_phone" required pattern="[0-9]{10}" placeholder="Phone *">
                    </div>
                    <div class="form-group">
                        <input class="form-control" name="bill_email" value="<?php echo empty($email)? '' : $email ?>" id="bill_email" required type="email" placeholder="Email address *">
                    </div>
                    <div class="ship_detail">
                    	<div class="form-group">
                    	<div class="chek-form">
                            <div class="custome-checkbox">
                                <input class="form-check-input" type="checkbox" name="checkbox" id="differentaddress">
								 <input class="form-check-input" type="checkbox" name="checkbox" id="sameaddress">
                                <label class="form-check-label label_info" for="sameaddress"><span>Shipping address same as above</span></label>
                            </div>
                        </div>
                    </div>
                    	<div class="different_address1">
                        <div class="form-group">
                            <input type="text" required class="form-control" name="ship_name" id="ship_name" placeholder="First name *">
                        </div>
                        <div class="form-group">
                            <input type="text" required class="form-control" name="ship_last" id="ship_last" placeholder="Last name *">
                        </div>
                        <div class="form-group">
                            <div class="custom_select">
                               <select class="form-control" required name="Ship_country" id="Ship_country">
                                   <option value="">Select Country</option>
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
                        <div class="form-group">
                            <input type="text" class="form-control" name="ship_address" id="ship_address" required placeholder="Address *">
                        </div>
                        <div class="form-group">
                            <input class="form-control" required name="ship_city" id="ship_city" type="text" placeholder="City / Town *">
                        </div>
                        <div class="form-group">
                            <input class="form-control" required name="ship_state" id="ship_state" type="text" placeholder="State / County *">
                        </div>
                        <div class="form-group">
                            <input class="form-control" required name="ship_zipcode" id="ship_zipcode" type="text" placeholder="Postcode / ZIP *">
                        </div>
                    </div>
                    </div>
                    <div class="heading_s1">
                        <h4>Additional information</h4>
                    </div>
                    <div class="form-group mb-0">
                        <textarea rows="5" class="form-control" name="additional_information" id="additional_information" placeholder="Order notes"></textarea>
                    </div>
              
            </div>
            <div class="col-md-6">
                <div class="order_review">
                    <div class="heading_s1">
                        <h4>Your Orders</h4>
                    </div>
                    <div class="table-responsive order_table">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th style="width:50%">Product</th>
                                    <th style="width:50%">Total</th>
                                </tr>
                            </thead>
                            <tbody>
							<?php
						if(isset($_SESSION['webuser_id']))
		{
				$total_price = 0;
				$total_weight=0;
				$data="";
			foreach($_SESSION['webuser_id'] as $keys => $values)
	{
	    
	     if($values["product_OptPrice"]=='None' or empty($values["product_OptPrice"])){
                                        $price=$values["product_price_webuser"];
                                    }else{
                                        $pprice=$values["product_price_webuser"];
										$oprice=$values["product_OptPrice"];
										$price = $oprice;
                                    }
                        $q = str_replace(',', '', $price);
                        $t = $values["product_quantity_webuser"]  * floatval($q);
		$data .= '<tr>
                                    <td>'. $values["product_name_webuser"].' <span class="product-qty">x '. $values["product_quantity_webuser"].'</span></br>'.$values["product_Option"].'</td>
                                    
                                    <td>'.$values["product_currency"].' '.number_format((float)$t,2,".").'</td>
                              
                                </tr>';
                                    $total_price = $total_price + $t;
                                    $total_weight =$total_weight + ($values["product_weight"] * $values["product_quantity_webuser"]);
	}
    $data.='  <span id="total_weight" style="display:none">'.$total_weight.'</span>';
			
		echo $data;
		}
						?>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th>SubTotal</th>
                                    <td class="product-subtotal"><?php echo $values["product_currency"] ?> <span id="sub_total"><?php echo empty($total_price) ? '0': number_format((float)$total_price, 2,".") ;?></span></td>
                                </tr>
                                <tr>
                                    <th>Shipping</th>
                                    <td><?php echo $values["product_currency"] ?> <span id="Shipping_Price">0.00</span></td>
                                </tr>
                                <tr>
                                    <th>Total </th>
                                    <td class="product-subtotal"><?php echo $values["product_currency"] ?> <span id="total">
									<?php empty($total_price) ? '0': $total_price;?></span></td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                    <!--<div class="payment_method">
                        <div class="heading_s1">
                            <h4>Payment</h4>
                        </div>
                        <div class="payment_option">
                            <div class="custome-radio">
                                <input class="form-check-input" required="" type="radio" name="payment_option" id="exampleRadios3" value="option3" checked="">
                                <label class="form-check-label" for="exampleRadios3">Direct Bank Transfer</label>
                                <p data-method="option3" class="payment-text">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration. </p>
                            </div>
                            <div class="custome-radio">
                                <input class="form-check-input" type="radio" name="payment_option" id="exampleRadios4" value="option4">
                                <label class="form-check-label" for="exampleRadios4">Check Payment</label>
                                <p data-method="option4" class="payment-text">Please send your cheque to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
                            </div>
                            <div class="custome-radio">
                                <input class="form-check-input" type="radio" name="payment_option" id="exampleRadios5" value="option5">
                                <label class="form-check-label" for="exampleRadios5">Paypal</label>
                                <p data-method="option5" class="payment-text">Pay via PayPal; you can pay with your credit card if you don't have a PayPal account.</p>
                            </div>
                        </div>
                    </div>-->
                    <button id="placeorder" class="btn btn-fill-out btn-block">Place Order</button>
                </div>
            </div>
			</form>
        </div>
    </div>
</div>
<!-- END SECTION SHOP -->


</div>
<!-- END MAIN CONTENT -->
<?php include('footer.php') ?>