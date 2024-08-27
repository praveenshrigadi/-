<?php 
$ord=$_GET["OrderID"];
$OrdID = "SELECT * FROM order_details where Order_ID={$ord} and Order_status ='pending'";
$query_OrdID = mysqli_query($conn,$OrdID) or die("Query Unsuccessful.");
$ORDID = mysqli_fetch_assoc($query_OrdID);

?>
<html lang="en">
<head>
<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Author Name --->
<meta content="Anurag" name="author">
<!-- View Port -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Meta Conical -->
<link rel="canonical" href="<?php echo Conical ?>" />
<!-- Meta Description -->
<meta name="description" content="<?php echo Description  ?>">
<!-- Meta Keywords -->
<meta name="keywords" content="<?php echo Keywords ?>">
<!-- Meta Title -->
<meta name="title" content="<?php echo  Title   ?>">
<!-- SITE TITLE -->
<title><?php echo  Title   ?></title>
<!-- Css File --->
<?php include('css.php') ;?>
<style>
    .hidden{
        display:none;
    }
</style>
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
            		<h4>Billing Address</h4>
                </div>
                    <form method="post" id="payuForm" name="payuForm">
                    <div class="form-group">
                    <?php echo $ORDID["Bill_FirstName"]; ?> <?php echo $ORDID["Bill_LastName"]; ?><br/>
					<?php
						 $ID=$ORDID["Bill_Country"];
						 $country = "SELECT * FROM country_fridget where id={$ID}";
$query_country = mysqli_query($conn,$country) or die("Query Unsuccessful.");
$country = mysqli_fetch_assoc($query_country);
echo $country["name"]; ?><br/>
<?php echo $ORDID["Bill_Address1"]; ?><br/>
<?php echo $ORDID["Bill_City"]; ?><br/>
<?php echo $ORDID["Bill_State"]; ?><br/>
<?php echo $ORDID["Bill_Zipcode"]; ?><br/>
<?php echo $ORDID["Bill_Contact_No"]; ?><br/>
<?php echo $ORDID["Bill_EmailId"]; ?>
                    </div>
                  
                    <div class="ship_detail">
					<div class="heading_s1">
            		<h4>Shipping Address</h4>
                </div>
                    	<div class="different_address1">
                        <div class="form-group">
							 <?php echo $ORDID["Ship_FirstName"]; ?>  <?php echo $ORDID["Ship_LastName"]; ?><br/>
							  <?php
						 $SID=$ORDID["Ship_Country"];
						 $country = "SELECT * FROM country_fridget where id={$SID}";
$query_country = mysqli_query($conn,$country) or die("Query Unsuccessful.");
$country = mysqli_fetch_assoc($query_country);
echo $country["name"];
						 ?><br/>
						  <?php echo $ORDID["Ship_Address1"]; ?><br/>
						  <?php echo $ORDID["Ship_City"]; ?><br/>
						  <?php echo $ORDID["Ship_State"]; ?><br/>
						  <?php echo $ORDID["Ship_Zipcode"]; ?>
                        </div>
                    </div>
                    </div>
                    <div class="heading_s1">
                        <h4>Additional information</h4>
                    </div>
                    <div class="form-group mb-0">
						 <?php echo $ORDID["Additional_Info"]; ?>
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
                                    <th>Product</th>
                                    <th width="50%">Total</th>
                                </tr>
                            </thead>
                            <tbody>
							<?php

						if(isset($ORDID["Product_info"]))
		{
				$total_price = 0;
				$data='';
				$sess=json_decode($ORDID["Product_info"],true);
				
	foreach($sess as $values) {
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
                                    <td>'. $values["product_name_webuser"].' <span class="product-qty">x '. $values["product_quantity_webuser"].'</span></td>
                                    <td>'.$values["product_currency"].' '.number_format($t,2).'</td>
                                </tr>';
    $total_price = $total_price + $t;
    $rtotal=$total_price;
	}
	
		$rtotal=$total_price+$ORDID["Shipping_Charges"];	
		echo $data;
		}
						?>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th>SubTotal</th>
                                    <td class="product-subtotal"><?php echo $values["product_currency"]; ?> <span id="sub_total"><?php echo number_format((float)$total_price,2,".");?></span></td>
                                </tr>
                                <tr>
                                    <th>Shipping</th>
                                    <td><?php echo $values["product_currency"]; ?> <span id="Shipping_Price"><?php echo number_format((float)$ORDID["Shipping_Charges"],2,"."); ?></span></td>
                                </tr>
                                <tr>
                                    <th>Total</th>
                       
                                    <td class="product-subtotal"><?php echo $values["product_currency"]; ?> <?= $ORDID["Total"] ?></td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>   

                     <h5 class="card-title">Select Payment Method</h5>
                                                    <div class="form-check mb-1">
                                                        <input class="form-check-input" type="radio" name="payment" value="Card">
                                                        <label class="form-check-label">Credit Card / Debit Card / UPI / Wallets </label>
                                                    </div>
                                                    <div class="form-check mb-1">
                                                        <input class="form-check-input" type="radio" name="payment" value="Cash">
                                                        <label class="form-check-label">Cash Deposit</label>
                                                    </div>
                                                    
                                                    <div class="form-check mb-1">
                                                        <input class="form-check-input" type="radio" name="payment" value="Cheque">
                                                        <label class="form-check-label">Cheque / DD / MO</label>
                                                    </div>
                                                    <div id="Cash_div" class="hidden">
                                                    <div class="form-group mt-3">
                        <input type="text" class="form-control" name="AccNo" value="" id="AccNo" placeholder="Account Number">
                        <div class="alert hidden" id="CashError">Required Account Number</div>
                        <label class="mt-2">Cash Deosit on Below detail</label>
                    </div>
                                                    </div>
                                                    <div id="Cheque_div" class="hidden">
                                                    <div class="form-group mt-3">
                        <input type="text" class="form-control" name="ChequeNo" value="" id="ChequeNo" placeholder="Cheque Number">
                        <div class="alert hidden" id="ChqError">Required Cheque Number</div>
                        <label class="mt-2">CHeque on below Deatil</label>
                    </div>
                                                    </div>
                                                     <div id="Card_div" class="hidden">
                                                    	<button class="btn btn-fill-out btn-block" name="payment" id="rzp-button1">Payment</button>
                                                    </div>
                                                    <div id="Submit_div" class="hidden">
                                                    	<button class="btn btn-fill-out btn-block" name="payment" data-ord="<?php echo $_GET['OrderID']; ?>" id="OfflinePayment">Payment</button>
                                                    </div>
                                                    

                                
                             </form>
                </div>
            </div>
			
			
			
        </div>
    </div>
</div>
<!-- END SECTION SHOP -->
  <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
<form name='razorpayform' action="verify.php" method="POST">
    <input type="hidden" name="razorpay_payment_id" id="razorpay_payment_id">
    <input type="hidden" name="razorpay_signature"  id="razorpay_signature" >
    <input type="hidden" name="order_ID"  id="order_ID" value="<?php echo $ORDID["Order_ID"] ?>" >
</form>
<script>
        var options = {
            "key": "rzp_test_DDmk1QSneuyMk1", // Enter the Key ID generated from the Dashboard
            "amount": "<?php echo $rtotal * 100; ?>", // Amount is in currency subunits. Default currency is INR. Hence, 50000 refers to 50000 paise
            "currency": "<?php echo $values["product_currency"]; ?>",
            "name": "Ramakrsna",
            "description": "Online Shopping",
            "image": "https://ramakrsna.com/assets/images/logo_dark.png",
            "callback_url": "verify.php?order_ID=<?php echo $ORDID["Order_ID"] ?>",
            "prefill": {
                "name": "<?php echo $ORDID["Bill_FirstName"]; ?>",
                "email": "<?php echo $ORDID["Bill_EmailId"]; ?>",
                "contact": "<?php echo $ORDID["Bill_Contact_No"]; ?>",
                "merchant_order_id" : "<?php echo $ORDID["Order_ID"] ?>"
            },
            "notes": {
                "address": "<?php echo $ORDID["Bill_Address1"] . " " . $ORDID["Bill_Country"] . " " . $ORDID["Bill_State"] . " " . $ORDID["Bill_City"] . " " . $ORDID["Bill_Zipcode"] ?>",
                "merchant_order_id" : "<?php echo $ORDID["Order_ID"] ?>"
            },
            "theme": {
                "color": "#3399cc"
            }
        };
        var rzp1 = new Razorpay(options);
        document.getElementById('rzp-button1').onclick = function(e) {
            rzp1.open();
            e.preventDefault();
        }
    </script>
<script>
$(document).ready(function(){
    $('input[type="radio"]').click(function(){
        var inputValue = $(this).attr("value");
        
    if(inputValue === 'Card'){
         $("#Cheque_div").addClass("hidden");
       $("#Cash_div").addClass("hidden");
       $("#Submit_div").addClass("hidden");
       $("#Card_div").removeClass("hidden");
    }else if(inputValue === 'Cash'){
          $("#Cheque_div").addClass("hidden");
       $("#Cash_div").removeClass("hidden");
       $("#Submit_div").removeClass("hidden");
       $("#Card_div").addClass("hidden");
    }else if(inputValue === 'Cheque'){
       $("#Cheque_div").removeClass("hidden");
       $("#Cash_div").addClass("hidden");
       $("#Submit_div").removeClass("hidden");
       $("#Card_div").addClass("hidden");
    }else{
       $("#Cheque_div").addClass("hidden");
       $("#Cash_div").addClass("hidden");
       $("#Card_div").addClass("hidden");
       $("#Submit_div").addClass("hidden");
    }
    });
});
</script>
</div>
<!-- END MAIN CONTENT -->
<?php include('footer.php') ?>