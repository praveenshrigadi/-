<?php include('connection.php'); 
if(!isset($_SESSION["ID"])){header('Location: login.php'); exit();} 
$usersessionis=$_SESSION["ID"];

$ORD=$_GET['ord'];
 	$dbaction="SELECT * FROM `order_details` o WHERE o.Order_ID='{$ORD}'";
	$result1 = mysqli_query($conn,$dbaction) or die("Query Failed.");
	$row_ORD= mysqli_fetch_assoc($result1);
?>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Author Name --->
<meta content="Anurag" name="author">
<!-- Favicon Icon -->
<link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.ico">
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
<!-- Navigation -->
<?php include('navigation.php'); ?>
<?php include('breadcrumbs.php'); ?>

<!-- START MAIN CONTENT -->
 
 
 <div id="Order_Data"> 
            <div class="container mt-5 mb-5">
    <div class="row d-flex justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <!--<div class="text-left logo p-1 px-2"> <img src="https://i.imgur.com/2zDU056.png" width="50"> </div>-->
                <div class="invoice p-2">
                    <h5>Your order <span id="ord_staus">Confirmed!</span></h5> <span class="font-weight-bold d-block mt-4">Hello, <span id="ord_name"><?php echo $row_ORD['Ship_FirstName']; ?> <?php echo $row_ORD['Ship_LastName']; ?></span></span> <span>You order has been confirmed and will be shipped in next two days!</span>
                    <div class="payment border-top mt-3 mb-3 border-bottom table-responsive">
                        <table class="table table-borderless">
                            <tbody>
                                <tr>
                                    <td style="width:30%">
                                        <div class="py-2"> <span class="d-block text-muted">Order Date</span> <span id="ord_date"><?php echo $row_ORD['payment_date']; ?></span> </div>
                                    </td>
                                    <td style="width:20%">
                                        <div class="py-2"> <span class="d-block text-muted">Order No</span> #<span id="ord_id"><?php echo $row_ORD['Order_ID']; ?></span> </div>
                                    </td>

                                    <td style="width:50%">
                                        <div class="py-2"> <span class="d-block text-muted">Shiping Address</span> <span id="ord_shipping"><?php echo $row_ORD['Ship_Address1']; ?> <?php echo $row_ORD['Ship_City']; ?> <?php echo $row_ORD['Ship_State']; ?> <?php echo $row_ORD['Ship_Zipcode']; ?></span> </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                  
                        <table class="table table-borderless border-bottom" >
                            <thead>
                                <tr>
                                    <th width="30px">Image</th>
                                    <th>Description</th>
                                    <th class="text-right">Amount</th>
                                </tr>
                            </thead>
                            <tbody id="ord_product">
                                <?php
                               $json = json_decode($row_ORD['Product_info'],true);
                                foreach($json as $json) {
                                    
                                    if(empty($json['product_OptPrice']) or $json['product_OptPrice'] =='None'){
                                        $price=$json['product_price_webuser'];
                                    }else{
                                        $price=$json['product_OptPrice'];
                                    }
 ?>
                                <tr>
                                    <td> <img src="admin/product_image_thumb/<?php echo $uses = $json['product_images_webuser']; ?>" width="70"> </td>
                                    <td><?php echo $uses = $json['product_name_webuser']; ?> <br/> Quantity: <?php echo $uses = $json['product_quantity_webuser']; ?></td>
                                    
                                    <td><div class="text-right"><?php echo $uses = $json['product_currency']; ?> <?php echo $uses = number_format((float)$price,'2',".",""); ?></div></td>
                                    </tr>
                                    <?php 
                                }
                                    ?>
                            </tbody>
                        </table>
                 
                    <div class="row ">
                        <div class="col-md-12">
                            <table class="table table-borderless">
                                <tbody class="totals">
                                    <tr>
                                        <td>
                                            <div class="text-left"> <span class="text-muted">Subtotal</span> </div>
                                        </td>
                                        <td>
                                            <div class="text-right"> <?php echo $row_ORD['currency']; ?> <span id="ord_subtotal">
                                                <?php echo number_format((float)$row_ORD['Total']-$row_ORD['Shipping_Charges'],2,".",""); ?></span> </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="text-left"> <span class="text-muted">Shipping Fee</span> </div>
                                        </td>
                                        <td>
                                            <div class="text-right"> <?php echo $row_ORD['currency']; ?> <span id="ord_shippingcharges"><?php echo number_format((float)$row_ORD['Shipping_Charges'],2,".",""); ?></span> </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="text-left"> <span class="text-muted">Tax Fee</span> </div>
                                        </td>
                                        <td>
                                            <div class="text-right"> <?php echo $row_ORD['currency']; ?> <span id="ord_tax"><?php echo number_format((float)0,2,".",""); ?></span> </div>
                                        </td>
                                    </tr>
                                    <tr class="border-top border-bottom">
                                        <td>
                                            <div class="text-left"> <span class="font-weight-bold">Total</span> </div>
                                        </td>
                                        <td>
                                            <div class="text-right"> <span class="font-weight-bold"><?php echo $row_ORD['currency']; ?> </span><span class="font-weight-bold" id="ord_total"><?php echo number_format((float)$row_ORD['Total'],2,".",""); ?></span></span> </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <p>We will be sending shipping confirmation email when the item shipped successfully!</p>
                    <p class="font-weight-bold mb-0">Thanks for shopping with us!</p> <span>Ramakrsna Team</span>
                </div>
                </div>
        </div>
    </div>
</div>
  </div>     
<!-- END SECTION SHOP -->


<?php include('footer.php'); ?>