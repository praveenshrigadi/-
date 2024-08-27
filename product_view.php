<?php include('connection.php');

if(!empty($_GET['cat'])){
$Cat=$_GET['cat'];
}else{
	$Cat='';
}
if(!empty($_GET['id'])){
$id=$_GET['id'];	
}else{
	header('Location:404.php');
}


if($Cat === 'sub'){
$sql = "SELECT * FROM product_info where Product_Sub_Category={$id} and Product_Status='Active'";
$sub = "select * from sub_category where id='".$_GET['id']."'";
}else if($Cat === 'main'){
$sql = "SELECT * FROM product_info where Product_Main_Category={$id} and Product_Status='Active'";
$sql1 = "SELECT * FROM `product_img` m, `product_info` i  WHERE  i.`Product_ID`=m.`product_id` and i.`Product_Main_Category`={$id} and Product_Status='Active'";
$sub = "select * from category where category_id='".$_GET['id']."'";
}else{
$sql = "SELECT * FROM product_info where Product_Sub_Sub_Category={$id} and Product_Status='Active'";
$sub = "select * from 2nd_sub_category where id='".$_GET['id']."'";
}
$prod_query = mysqli_query($conn,$sql) or die("Query Unsuccessful.");
$count_query = mysqli_num_rows($prod_query);
$query1 = mysqli_query($conn,$sub) or die("Query Unsuccessful.");
$row1 = mysqli_fetch_assoc($query1);


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

<?php
if($Cat === 'sub'){
    $title = $row1['sub_category'];
    $Keywords = $row1['meta_keyword'];
    $Description = $row1['meta_description'];
    $meta_title = $row1['meta_title'];
}else if($Cat === 'main'){
    $title = $row1['name'];
    $Keywords = $row1['meta_keyword'];
    $Description = $row1['meta_description'];
    $meta_title = $row1['meta_title'];
}else{
    $title = $row1['sub_sub_categroy'];
    $Keywords = $row1['meta_keyword'];
    $Description = $row1['meta_description'];
    $meta_title = $row1['meta_title'];
}
?>
<!-- Meta Description -->
<meta name="description" content="<?php echo (empty($Description)) ? Description : $Description ?>">
<!-- Meta Keywords -->
<meta name="keywords" content="<?php echo (empty($Keywords)) ? Keywords : $Keywords ?>">
<!-- Meta Title -->
<meta name="title" content="<?php echo (empty($meta_title)) ? Title : $meta_title ?>">

<!-- SITE TITLE -->
<title><?php echo (empty($meta_title)) ? '' : $meta_title ?></title>
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

<br>

<!-- START SECTION SHOP -->
	<div class="container">
    	<div class="row">
			<div class="col-lg-12" id="Sub_Category_list">
            	
			<?php
			if($count_query > 0){
			    $output = "";
  $output .= "
  <div class='row shop_container'>";
  
  
							$i=0;
                   while($row = mysqli_fetch_assoc($prod_query)) {
                        $sql1 = "SELECT * FROM `product_img` m  WHERE  m.`product_id`=".$row['Product_ID'];
                       $query1=mysqli_query($conn,$sql1) or die('Arrival Query Failed');
                       $row1 = mysqli_fetch_assoc($query1);
					   $a=++$i;
					  $discount=$row['Product_Price'] * $row['Product_Discount']/100;
					   $price=$row['Product_Price'] - $discount;
					   $usdprice = $row['Product_USD'];
					   $imgage = (empty($row1['product_img_name'])) ? '' : $row1['product_img_name'];
    			  $output .= "<div class='col-md-3 col-6'>
                        <div class='product'>
                            <div class='product_img'>
                                <a href='shop-product-detail.html'>
                                    <img src='admin/product_image_thumb/{$imgage}' alt='product_img1'>
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
                                    <span class='price'>₹ ".number_format((float)$price, 2, '.', '')." | $ ".number_format((float)$usdprice, 2, '.', '')."</span>";
                                    /* <del>₹{$row['Product_Price']}</del> */
                                  $output .= "</div>
                                  <div class='on_sale'>
                                        <span>{$row['Product_Discount']}% Off</span>
                                    </div>
                                <div class='rating_wrap'>
                                    <div class='rating'>
                                        <div class='product_rate' style='width:0%'></div>
                                    </div>
                                    <span class='rating_num'>(0)</span>
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
}
else{
    
    echo "<div class='col-12 m-2'>No Product Available</div>";
    
}
			
			?>
			
               
        	</div>
        
        </div>
    </div>

<!-- END SECTION SHOP -->





<?php include('footer.php') ?>