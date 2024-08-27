<?php 
include('connection.php');
$search = isset($_GET['s']) ? $_GET['s'] : '';

// Sanitize the input
$search = htmlspecialchars($search, ENT_QUOTES, 'UTF-8');

// Prepare the SQL statement
$sql = "SELECT * FROM `product_info` WHERE `Product_Name` LIKE ?";
$stmt = $conn->prepare($sql);

// Bind the parameter
$searchTerm = "%$search%";
$stmt->bind_param('s', $searchTerm);

// Execute the query
$stmt->execute();

// Get the result
$result = $stmt->get_result();

// Count the rows
$count = $result->num_rows;

// Check for errors
if ($stmt->error) {
    die('Query failed: ' . $stmt->error);
}

// Close the statement
$stmt->close();

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
<link rel="canonical" href="<?= Conical ?>" />
<!-- Meta Description -->
<meta name="description" content="<?= Description ?>">
<!-- Meta Keywords -->
<meta name="keywords" content="<?= Keywords ?>">
<!-- Meta Title -->
<meta name="title" content="<?= Title ?>">
<!-- SITE TITLE -->
<title><?= Title ?></title>
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

<div class="breadcrumb_section bg_gray page-title-mini mb-5">
    <div class="container"><!-- STRART CONTAINER -->
        <div class="row align-items-center">
        	<div class="col-md-6">
                <div class="page-title">
            		<h1> Search</h1>
                </div>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb justify-content-md-end">
                    <a href="https://ramakrsna.com/">Search</a> &nbsp; &gt; &nbsp;<?php echo $search ?> </ol>
            </div>
        </div>
		
    </div><!-- END CONTAINER-->
</div>

<!-- START SECTION SEARCH -->
	<div class="container">
    	<div class="row">
        	<div class="col-lg-12">
                <?php
			if($count > 0){
			    
  $output = "";
  $output .= "
  <div class='row shop_container'>";
  
  
							$i=0;
                   while($row = mysqli_fetch_assoc($result)) {
                       $sql1 = "SELECT * FROM `product_img` m  WHERE  m.`product_id`=".$row['Product_ID'];
                       $query1=mysqli_query($conn,$sql1) or die('Arrival Query Failed');
                       $row1 = mysqli_fetch_assoc($query1);
					   $a=++$i;
					   $discount=ceil($row['Product_Price']*$row['Product_Discount']/100);
					   $price=ceil($row['Product_Price']-$discount);
    			  $output .= "<div class='col-md-3 col-6'>
                        <div class='product'>
                            <div class='product_img'>
                                <a href='shop-product-detail.html'>
                                    <img src='admin/product_image_thumb/{$row1['product_img_name']}' alt='product_img1'>
                                </a>
                                <div class='product_action_box'>
                                    <ul class='list_none pr_action_btn'>
                                        <li class='add-to-cart'><a href='product.php?id={$row['Product_ID']}'><i class='icon-basket-loaded'></i> Add To Cart</a></li>
                                        <!--<li><a href='shop-compare.html' class='popup-ajax'><i class='icon-shuffle'></i></a></li>
                                        <li><a href='shop-quick-view.html' class='popup-ajax'><i class='icon-magnifier-add'></i></a></li>-->
                                        <li><a href='product.php?id={$row['Product_ID']}'><i class='icon-heart'></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class='product_info'>
                                <h6 class='product_title' alt='{$row['Product_Name']}'><a href='product.php?id={$row['Product_ID']}'>{$row['Product_Name']}</a></h6>
                                <div class='product_price'>
                                    <span class='price'>₹{$price}</span>
                                    <del>₹{$row['Product_Price']}</del>
                                    <div class='on_sale'>
                                        <span>{$row['Product_Discount']}% Off</span>
                                    </div>
                                </div>
                                <div class='rating_wrap'>
                                    <div class='rating'>
                                        <div class='product_rate' style='width:80%'></div>
                                    </div>
                                    <span class='rating_num'>(21)</span>
                                </div>
                                <div class='pr_desc'>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim. Nullam id varius nunc id varius nunc.</p>
                                </div>
                               
                                <div class='list_product_action_box'>
                                    <ul class='list_none pr_action_btn'>
                                        <li class='add-to-cart'><a href='product.php?id=28'><i class='icon-basket-loaded'></i> Add To Cart</a></li>
                                       <!-- <li><a href='#' class='popup-ajax'><i class='icon-shuffle'></i></a></li>
                                        <li><a href='#' class='popup-ajax'><i class='icon-magnifier-add'></i></a></li>-->
                                        <li><a href='product.php?id=28'><i class='icon-heart'></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>";
			}$output .= "</div>
	 ";
           
echo $output;
}else{
    echo 'No result found';
}
			
			?>
				
            </div>
        </div>
    </div>

<!-- END SECTION SEARCH -->

<?php include('footer.php') ?>