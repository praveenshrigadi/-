<?php 
include('connection.php');

$arrival ="SELECT * FROM `product_info` where Product_Status='Active'  order by `Product_Added` desc limit 7";
$arrival_query=mysqli_query($conn,$arrival) or die('Arrival Query Failed');

$featured ="SELECT * FROM `product_info` where Feature = 'Y' and Product_Status='Active' order by `Product_ID` desc limit 7";
$featured_query=mysqli_query($conn,$featured) or die('Featured Query Failed');

$deals ="SELECT * FROM `product_info` where Deals = 'Y' and Product_Status='Active' order by `Product_ID` desc limit 7";
$deals_query=mysqli_query($conn,$deals) or die('Deals Query Failed');

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
<meta name="description" content="One-stop shop for original, authentic and premium spiritual services and products such as Astro Services, Rudraksha, Gemstones, Puja Services, Parad and more
">
<!-- Meta Keywords -->
<meta name="keywords" content="<?= Keywords ?>">
<!-- Meta Title -->
<meta name="title" content="<?= Title ?>">
<!-- SITE TITLE -->
<title>Online Vedic Astrology Services and Premium Spiritual Store</title>
<!-- Css File --->
<?php include('css.php'); ?>




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
<?php include('navigation1.php'); ?> 
<!-- START SECTION BANNER -->
<div class="banner_section slide_medium shop_banner_slider staggered-animation-wrap">
	<div class="container">
    	<div class="row">
        	<div class="col-lg-9 offset-lg-3">
                <div id="carouselExampleControls" class="carousel slide light_arrow" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active background_bg" data-img-src="assets/images/banner1.png">
                            <div class="banner_slide_content banner_content_inner">
                                <div class="col-lg-12 col-12">
                                    <div class="banner_content overflow-hidden text-left">
                                       <!-- <h5 class="mb-3 staggered-animation font-weight-light" data-animation="slideInLeft" data-animation-delay="0.5s">Get up to 50% off Today Only!</h5>
                                        <h2 class="staggered-animation" data-animation="slideInLeft" data-animation-delay="1s">Idols</h2> -->
                                        <a class="btn btn-fill-out rounded-0 staggered-animation text-uppercase" href="rudraksha.php" data-animation-delay="1.5s">Know More</a>
                                    </div>
                                </div>
                            </div> 
                        </div>
                        <div class="carousel-item background_bg" data-img-src="assets/images/banner2.png">
                            <div class="banner_slide_content banner_content_inner">
                                <div class="col-lg-12 col-12">
                                    <div class="banner_content overflow-hidden text-left">
                                      <!-- <h5 class="mb-3 staggered-animation font-weight-light" data-animation="slideInLeft" data-animation-delay="0.5s">Get up to 50% off Today Only!</h5>
                                        <h2 class="staggered-animation" data-animation="slideInLeft" data-animation-delay="1s">Idols</h2> -->
                                        <a class="btn btn-fill-out rounded-0 staggered-animation text-uppercase" href="gemstones.php" data-animation-delay="1.5s">Know More</a>
                                    </div>
                                </div>
                            </div> 
                        </div>
                        <div class="carousel-item background_bg" data-img-src="assets/images/banner3.png">
                            <div class="banner_slide_content banner_content_inner">
                                <div class="col-lg-12 col-12">
                                    <div class="banner_content overflow-hidden text-left">
                                       <!-- <h5 class="mb-3 staggered-animation font-weight-light" data-animation="slideInLeft" data-animation-delay="0.5s">Get up to 50% off Today Only!</h5>
                                        <h2 class="staggered-animation" data-animation="slideInLeft" data-animation-delay="1s">Idols</h2> -->
                                        <a class="btn btn-fill-out rounded-0 staggered-animation text-uppercase" href="online-puja-services.php" data-animation-delay="1.5s">Know More</a>
                                    </div>
                                </div>
                            </div> 
                        </div>
                        <div class="carousel-item background_bg" data-img-src="assets/images/banner4.png">
                            <div class="banner_slide_content banner_content_inner">
                                <div class="col-lg-12 col-12">
                                    <div class="banner_content overflow-hidden text-left">
                                       <!-- <h5 class="mb-3 staggered-animation font-weight-light" data-animation="slideInLeft" data-animation-delay="0.5s">Get up to 50% off Today Only!</h5>
                                        <h2 class="staggered-animation" data-animation="slideInLeft" data-animation-delay="1s">Idols</h2> -->
                                        <a class="btn btn-fill-out rounded-0 staggered-animation text-uppercase" href="vedic-astrology.php" data-animation-delay="1.5s">Know More</a>
                                    </div>
                                </div>
                            </div> 
                        </div>
                        <div class="carousel-item background_bg" data-img-src="assets/images/banner5.png">
                            <div class="banner_slide_content banner_content_inner">
                                <div class="col-lg-12 col-12">
                                    <div class="banner_content overflow-hidden text-left">
                                       <!-- <h5 class="mb-3 staggered-animation font-weight-light" data-animation="slideInLeft" data-animation-delay="0.5s">Get up to 50% off Today Only!</h5>
                                        <h2 class="staggered-animation" data-animation="slideInLeft" data-animation-delay="1s">Idols</h2> -->
                                        <a class="btn btn-fill-out rounded-0 staggered-animation text-uppercase" href="category.php"  data-animation-delay="1.5s">Know More</a>
                                    </div>
                                </div>
                            </div> 
                        </div>
                    </div>
                    <ol class="carousel-indicators indicators_style1">
                        <li data-target="#carouselExampleControls" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleControls" data-slide-to="1"></li>
                        <li data-target="#carouselExampleControls" data-slide-to="2"></li>
                        <li data-target="#carouselExampleControls" data-slide-to="3"></li>
                        <li data-target="#carouselExampleControls" data-slide-to="4"></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END SECTION BANNER -->

<!-- END MAIN CONTENT -->
<div class="main_content">

<!-- START SECTION SHOP -->
<div class="section small_pb">
	<div class="container">
		<div class="row">
			<div class="col-12">
            	<div class="heading_tab_header">
                    <div class="heading_s2">
                        <h2>Exclusive Products</h2>
                    </div>
                    <div class="tab-style2">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#tabmenubar" aria-expanded="false"> 
                            <span class="ion-android-menu"></span>
                        </button>
                        <ul class="nav nav-tabs justify-content-center justify-content-md-end" id="tabmenubar" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="arrival-tab" data-toggle="tab" href="#arrival" role="tab" aria-controls="arrival" aria-selected="true">New Arrival</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="featured-tab" data-toggle="tab" href="#featured" role="tab" aria-controls="featured" aria-selected="false">Featured</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="special-tab" data-toggle="tab" href="#special" role="tab" aria-controls="special" aria-selected="false">Special Offer
    </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
		</div>
        <div class="row">
        	<div class="col-12">
                <div class="tab_slider">
                	<div class="tab-pane fade show active" id="arrival" role="tabpanel" aria-labelledby="arrival-tab">
	<?php
if(mysqli_num_rows($arrival_query) > 0){
					echo '<div class="product_slider carousel_slider owl-carousel owl-theme nav_style1 owl-loaded owl-drag" data-loop="true" data-dots="false" data-nav="true" data-margin="20" data-responsive="{&quot;0&quot;:{&quot;items&quot;: &quot;1&quot;}, &quot;481&quot;:{&quot;items&quot;: &quot;2&quot;}, &quot;768&quot;:{&quot;items&quot;: &quot;3&quot;}, &quot;1199&quot;:{&quot;items&quot;: &quot;4&quot;}}">';
	while($row_arrival=mysqli_fetch_assoc($arrival_query)){	
	    
	    $arrival_img ="SELECT * FROM `product_img` where product_id = {$row_arrival['Product_ID']} and seq in ('1','0')";
$arrival_img_query=mysqli_query($conn,$arrival_img) or die('Arrival Img Query Failed');
$row_arrival_img=mysqli_fetch_assoc($arrival_img_query);

$sql_arrival_comment = "SELECT count(product_id) as count , sum(rate) as sum FROM product_review where product_id = {$row_arrival['Product_ID']}";
   $query_arrival_comment = mysqli_query($conn,$sql_arrival_comment) or die("Query Unsuccessful2.");
   $row_arrival_comment = mysqli_fetch_assoc($query_arrival_comment);
   
      if($row_arrival_comment["sum"] != 0){
$rat = ceil(($row_arrival_comment["sum"]/$row_arrival_comment["count"])*20)."%";
	   }else{
                $rat = 0;
 }
	    
?>	
                            <div class="item">
                                <div class="product">
                                    <div class="product_img">
                                        <a href="product.php?id=<?php echo $row_arrival['Product_ID']; ?>">
                                            <img src="admin/product_image_thumb/<?php echo $row_arrival_img['product_img_name']; ?>" alt="<?php echo $row_arrival['Product_Name']; ?>">
                                        </a>
                                        <div class="product_action_box">
                                            <ul class="list_none pr_action_btn">
                                                <li class="add-to-cart"><a href="product.php?id=<?php echo $row_arrival['Product_ID']; ?>"><i class="icon-basket-loaded"></i> Add To Cart</a></li>
                                                <li><a href="product.php?id=<?php echo $row_arrival['Product_ID']; ?>"><i class="icon-heart"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product_info">
                                        <h6 class="product_title"><a href="product.php?id=<?php echo $row_arrival['Product_ID']; ?>"><?php echo $row_arrival['Product_Name']; ?></a></h6>
                                        <div class="product_price">
                                            
                                            <span class="price">₹ <?php echo $row_arrival["Product_Price"]; ?> | $ <?php echo $row_arrival["Product_USD"]; ?></span>
                                            <!--<del>₹<?php $discount=ceil($row_arrival["Product_Price"]*$row_arrival["Product_Discount"]/100); echo $price=$row_arrival["Product_Price"]-$discount; ?></del> -->
                                            <div class="on_sale">
                                                <span><?php echo $row_arrival['Product_Discount']; ?>% Off</span>
                                            </div>
                                        </div>
                                        <div class="rating_wrap">
                                            <div class="rating">
                                                <div class="product_rate" style="width:<?php echo $rat; ?>%"></div>
                                            </div>
                                            <span class="rating_num">(<?php echo $row_arrival_comment["count"]; ?>)</span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                       
					<?php 
					
					}
					echo '</div>';
					}else{
echo 'No Data';
}
					?>
					</div>
                    <div class="tab-pane fade" id="featured" role="tabpanel" aria-labelledby="featured-tab">
                      <?php
if(mysqli_num_rows($featured_query) > 0){
					echo '<div class="product_slider carousel_slider owl-carousel owl-theme nav_style1 owl-loaded owl-drag" data-loop="true" data-dots="false" data-nav="true" data-margin="20" data-responsive="{&quot;0&quot;:{&quot;items&quot;: &quot;1&quot;}, &quot;481&quot;:{&quot;items&quot;: &quot;2&quot;}, &quot;768&quot;:{&quot;items&quot;: &quot;3&quot;}, &quot;1199&quot;:{&quot;items&quot;: &quot;4&quot;}}">';
	while($row_featured=mysqli_fetch_assoc($featured_query)){	
	    
	    $featured_img ="SELECT * FROM `product_img` where product_id = {$row_featured['Product_ID']} and seq in ('1','0')";
$featured_img_query=mysqli_query($conn,$featured_img) or die('Features Img Query Failed');
$featured_img_img=mysqli_fetch_assoc($featured_img_query);

$sql_featured_comment = "SELECT count(product_id) as count , sum(rate) as sum FROM product_review where product_id = {$row_featured['Product_ID']}";
   $query_featured_comment = mysqli_query($conn,$sql_featured_comment) or die("Query Unsuccessful2.");
   $row_featured_comment = mysqli_fetch_assoc($query_featured_comment);
   
      if($row_featured_comment["sum"] != 0){
$feat = ceil(($row_featured_comment["sum"]/$row_featured_comment["count"])*20);
	   }else{
                $feat = 0;
 }
	    
?>	
                            <div class="item">
                                <div class="product">
                                    <div class="product_img">
                                        <a href="product.php?id=<?php echo $row_featured['Product_ID']; ?>">
                                            <img src="admin/product_image_thumb/<?php echo $featured_img_img['product_img_name']; ?>" alt="<?php echo $row_featured['Product_Name']; ?>">
                                        </a>
                                        <div class="product_action_box">
                                            <ul class="list_none pr_action_btn">
                                                <li class="add-to-cart"><a href="product.php?id=<?php echo $row_featured['Product_ID']; ?>"><i class="icon-basket-loaded"></i> Add To Cart</a></li>
                                                <li><a href="product.php?id=<?php echo $row_featured['Product_ID']; ?>"><i class="icon-heart"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product_info">
                                        <h6 class="product_title"><a href="product.php?id=<?php echo $row_featured['Product_ID']; ?>"><?php echo $row_featured['Product_Name']; ?></a></h6>
                                        <div class="product_price">
                                            
                                            <span class="price">₹ <?php echo $row_featured["Product_Price"]; ?> | $ <?php echo $row_featured["Product_USD"]; ?></span>
                                            <!-- <del>₹<?php $discount=ceil($row_featured["Product_Price"]*$row_featured["Product_Discount"]/100); echo $price=$row_featured["Product_Price"]-$discount; ?></del> -->
                                            <div class="on_sale">
                                                <span><?php echo $row_featured['Product_Discount']; ?>% Off</span>
                                            </div>
                                        </div>
                                        <div class="rating_wrap">
                                            <div class="rating">
                                                <div class="product_rate" style="width:<?php echo $feat; ?>%"></div>
                                            </div>
                                            <span class="rating_num">(<?php echo $row_featured_comment["count"]; ?>)</span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                       
					<?php 
					
					}
					echo '</div>
                   ';
					}else{
echo 'No Data';
}
					?>
					
                    </div>
                   <div class="tab-pane fade" id="special" role="tabpanel" aria-labelledby="special-tab">
                   <?php
$special ="SELECT * FROM `product_info` where Sale_Offer = 'Y' and Product_Status='Active' order by `Product_ID` desc limit 7";
$special_query=mysqli_query($conn,$special) or die('Special Query Failed');

if(mysqli_num_rows($special_query) > 0){
					echo '<div class="product_slider carousel_slider owl-carousel owl-theme nav_style1 owl-loaded owl-drag" data-loop="true" data-dots="false" data-nav="true" data-margin="20" data-responsive="{&quot;0&quot;:{&quot;items&quot;: &quot;1&quot;}, &quot;481&quot;:{&quot;items&quot;: &quot;2&quot;}, &quot;768&quot;:{&quot;items&quot;: &quot;3&quot;}, &quot;1199&quot;:{&quot;items&quot;: &quot;4&quot;}}">';
	while($row_special=mysqli_fetch_assoc($special_query)){	
	    
$special_img ="SELECT * FROM `product_img` where product_id = {$row_special['Product_ID']} and seq in ('1','0')";
$special_img_query=mysqli_query($conn,$special_img) or die('special Img Query Failed');
$row_special_img=mysqli_fetch_assoc($special_img_query);

$sql_special_comment = "SELECT count(product_id) as count , sum(rate) as sum FROM product_review where product_id = {$row_special['Product_ID']}";
   $query_special_comment = mysqli_query($conn,$sql_special_comment) or die("Query Unsuccessful2.");
   $row_special_comment = mysqli_fetch_assoc($query_special_comment);
   
      if($row_special_comment["sum"] != 0){
$rat = ceil(($row_special_comment["sum"]/$row_special_comment["count"])*20)."%";
	   }else{
                $rat = 0;
 }
	    
?>	
                            <div class="item">
                                <div class="product">
                                    <div class="product_img">
                                        <a href="product.php?id=<?php echo $row_special['Product_ID']; ?>">
                                            <img src="admin/product_image_thumb/<?php echo $row_special_img['product_img_name']; ?>" alt="<?php echo $row_special['Product_Name']; ?>">
                                        </a>
                                        <div class="product_action_box">
                                            <ul class="list_none pr_action_btn">
                                                <li class="add-to-cart"><a href="product.php?id=<?php echo $row_special['Product_ID']; ?>"><i class="icon-basket-loaded"></i> Add To Cart</a></li>
                                                <li><a href="product.php?id=<?php echo $row_special['Product_ID']; ?>"><i class="icon-heart"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product_info">
                                        <h6 class="product_title"><a href="product.php?id=<?php echo $row_special['Product_ID']; ?>"><?php echo $row_special['Product_Name']; ?></a></h6>
                                        <div class="product_price">
                                            
                                            <span class="price">₹ <?php echo $row_special["Product_Price"]; ?> | $ <?php echo $row_special["Product_USD"]; ?></span>
                                           <!-- <del>₹<?php $discount=ceil($row_special["Product_Price"]*$row_special["Product_Discount"]/100); echo $price=$row_special["Product_Price"]-$discount; ?></del> -->
                                            <div class="on_sale">
                                                <span><?php echo $row_special['Product_Discount']; ?>% Off</span>
                                            </div>
                                        </div>
                                        <div class="rating_wrap">
                                            <div class="rating">
                                                <div class="product_rate" style="width:<?php echo $rat; ?>%"></div>
                                            </div>
                                            <span class="rating_num">(<?php echo $row_special_comment["count"]; ?>)</span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                       
					<?php 
					
					}
					echo '</div>';
					}else{
echo 'No Data';
}
					?>
                    </div>
                    <div class="tab-pane fade" id="sellers" role="tabpanel" aria-labelledby="sellers-tab">
                           
                    </div>
                
                </div>
            </div>
        </div> 
    </div>
</div>
<!-- END SECTION SHOP -->

<!-- START SECTION BANNER --> 
<div class="section pb_20 small_pt">
	<div class="container">
    	<div class="row">
        	<div class="col-md-6">
            	<div class="single_banner">
                	<img src="assets/images/shop_banner_img1.jpg" alt="shop_banner_img1">
                    <div class="single_banner_info">
                        <h5 class="single_bn_title1">Super Sale</h5>
                        <h3 class="single_bn_title">New Collection</h3>
                        <a href="shop-left-sidebar.html" class="single_bn_link">Shop Now</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
            	<div class="single_banner">
                	<img src="assets/images/shop_banner_img2.jpg" alt="shop_banner_img2">
                    <div class="single_banner_info">
                        <h3 class="single_bn_title">New Season</h3>
                        <h4 class="single_bn_title1">Sale 40% Off</h4>
                        <a href="shop-left-sidebar.html" class="single_bn_link">Shop Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END SECTION BANNER --> 

<!-- START SECTION SHOP -->
<div class="section small_pt small_pb">
	<div class="container">
    	<div class="row">
			<div class="col-md-12">
            	<div class="heading_tab_header">
                    <div class="heading_s2">
                        <h2>Popular Pujas</h2>
                    </div>
                    <!--<div class="deal_timer">
                    	<div class="countdown_time countdown_style1" data-time="2022/04/28 13:22:15"></div>
                    </div>-->
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
            	<?php
if(mysqli_num_rows($deals_query) > 0){
					echo '<div class="product_slider carousel_slider owl-carousel owl-theme nav_style1 owl-loaded owl-drag" data-loop="true" data-dots="false" data-nav="true" data-margin="20" data-responsive="{&quot;0&quot;:{&quot;items&quot;: &quot;1&quot;}, &quot;481&quot;:{&quot;items&quot;: &quot;2&quot;}, &quot;768&quot;:{&quot;items&quot;: &quot;3&quot;}, &quot;1199&quot;:{&quot;items&quot;: &quot;4&quot;}}">';
	while($row_deals=mysqli_fetch_assoc($deals_query)){	
	    
	    $deals_img ="SELECT * FROM `product_img` where product_id = {$row_deals['Product_ID']} and seq in ('1','0')";
$deals_img_query=mysqli_query($conn,$deals_img) or die('deals Img Query Failed');
$row_deals_img=mysqli_fetch_assoc($deals_img_query);

$sql_deals_comment = "SELECT count(product_id) as count , sum(rate) as sum FROM product_review where product_id = {$row_deals['Product_ID']}";
   $query_deals_comment = mysqli_query($conn,$sql_deals_comment) or die("Query Unsuccessful2.");
   $row_deals_comment = mysqli_fetch_assoc($query_deals_comment);
   
      if($row_deals_comment["sum"] != 0){
$rat = ceil(($row_deals_comment["sum"]/$row_deals_comment["count"])*20)."%";
	   }else{
                $rat = 0;
 }
	    
?>	
                            <div class="item">
                                <div class="product">
                                    <div class="product_img">
                                        <a href="product.php?id=<?php echo $row_deals['Product_ID']; ?>">
                                            <img src="admin/product_image_thumb/<?php echo (!empty($row_deals_img['product_img_name']) ? $row_deals_img['product_img_name'] : ''); ?>" alt="<?php echo $row_deals['Product_Name']; ?>">
                                        </a>
                                        <div class="product_action_box">
                                            <ul class="list_none pr_action_btn">
                                                <li class="add-to-cart"><a href="product.php?id=<?php echo $row_deals['Product_ID']; ?>"><i class="icon-basket-loaded"></i> Add To Cart</a></li>
                                                <li><a href="product.php?id=<?php echo $row_deals['Product_ID']; ?>"><i class="icon-heart"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product_info">
                                        <h6 class="product_title"><a href="product.php?id=<?php echo $row_deals['Product_ID']; ?>"><?php echo $row_deals['Product_Name']; ?></a></h6>
                                        <div class="product_price">
                                            
                                            <span class="price">₹ <?php echo $row_deals["Product_Price"]; ?> | ₹<?php echo $row_deals["Product_USD"]; ?> </span>
                                            <!--<del>₹<?php $discount=ceil($row_deals["Product_Price"]*$row_deals["Product_Discount"]/100); echo $price=$row_deals["Product_Price"]-$discount; ?></del> -->
                                            <div class="on_sale">
                                                <span><?php echo $row_deals['Product_Discount']; ?>% Off</span>
                                            </div>
                                        </div>
                                        <div class="rating_wrap">
                                            <div class="rating">
                                                <div class="product_rate" style="width:<?php echo $rat; ?>%"></div>
                                            </div>
                                            <span class="rating_num">(<?php echo $row_deals_comment["count"]; ?>)</span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                       
					<?php 
					
					}
					echo '</div>';
					}else{
echo 'No Data';
}
					?>
            </div>
		</div>
    </div>
</div>
<!-- END SECTION SHOP -->


<!-- START SECTION SHOP -->
<div class="section small_pt pb_20">
	<div class="container">
    	<div class="row">
			<div class="col-md-12">
            	<div class="heading_tab_header">
                    <div class="heading_s2">
                        <h2>Featured Products</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12" id="FeaturedProducts">
         <?php include('featureproduct.php'); ?>
            </div>
		</div>
    </div>
</div>
<!-- END SECTION SHOP -->


<!-- START SECTION BANNER --> 
<div class="section pb_20 small_pt">
	<div class="container-fluid px-2">
    	<div class="row no-gutters">
        	<div class="col-md-4">
            	<div class="sale_banner">
                	<a class="hover_effect1" href="index-2.html#">
                		<img src="assets/images/shop_banner_img3.jpg" alt="shop_banner_img3">
                    </a>
                </div>
            </div>
            <div class="col-md-4">
            	<div class="sale_banner">
                	<a class="hover_effect1" href="index-2.html#">
                		<img src="assets/images/shop_banner_img4.jpg" alt="shop_banner_img4">
                    </a>
                </div>
            </div>
            <div class="col-md-4">
            	<div class="sale_banner">
                	<a class="hover_effect1" href="index-2.html#">
                		<img src="assets/images/shop_banner_img5.jpg" alt="shop_banner_img5">
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END SECTION BANNER --> 

<!-- START BLOG -->
<div class="section small_pt">
	<div class="container">
    	<div class="row">
			<div class="col-md-12">
            	<div class="heading_tab_header">
                    <div class="heading_s2">
                        <h2>Articles</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="row blog">

        </div>
    </div>
</div>
<!-- END BLOG -->

</div>
<!-- END MAIN CONTENT -->
<?php include('footer.php') ?>