<?php include('connection.php');
   $id=$_GET['id'];
   $sql = "SELECT * FROM product_info where Product_ID = {$id}";
   $query = mysqli_query($conn,$sql) or die("Query Unsuccessful.");
   $row = mysqli_fetch_assoc($query);
   
   $sql_img = "SELECT * FROM product_img where product_id = {$row['Product_ID']} order by seq";
   $query_img = mysqli_query($conn,$sql_img) or die("Query Unsuccessful.");
   $row1_img = mysqli_fetch_assoc($query_img);
   
    $sql_comment = "SELECT * FROM product_review where product_id = {$id} order by id desc limit 2";
   $query_comment = mysqli_query($conn,$sql_comment) or die("Query Unsuccessful1.");
   
   $sql_comment1 = "SELECT count(product_id) as count , sum(rate) as sum FROM product_review where product_id = {$id}";
   $query_comment1 = mysqli_query($conn,$sql_comment1) or die("Query Unsuccessful2.");
   $row_comment1 = mysqli_fetch_assoc($query_comment1);

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
<meta name="description" content="<?php echo empty($row['meta_description']) ? Description : $row['meta_description'] ?>">
<!-- Meta Keywords -->
<meta name="keywords" content="<?php echo empty($row['meta_keyword']) ? Keywords : $row['meta_keyword'] ?>">
<!-- Meta Title -->
<meta name="title" content="<?php echo empty($row['meta_title']) ? Title : $row['meta_title'] ?>">
<!-- SITE TITLE -->
<title><?php echo empty($row['meta_title']) ? Title : $row['meta_title'] ?></title>
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
   <div class="main_content">
      <!-- START SECTION SHOP -->
      <div class="container">
         <div class="row">
            <div class="col-lg-6 col-md-6 mb-4 mb-md-0">
                 <div class="product_img_box">
                     <img id="product_img" src="admin/product_image/<?php echo $row1_img['product_img_name'] ?>" data-zoom-image="admin/product_image/<?php echo $row1_img['product_img_name'] ?>" alt="product_img1">
                     <a class="product_img_zoom" title="Zoom">
                     <span class="linearicons-zoom-in"></span>
                     </a>
                  </div>
                
               <div class="product-image">
                  <div id="pr_item_gallery" class="product_gallery_item slick_slider slick-initialized slick-slider slick-vertical" data-vertical="true" data-vertical-swiping="true" data-slides-to-show="5" data-slides-to-scroll="1" data-infinite="false">
                     <div aria-live="polite" class="slick-list draggable" style="height: auto;">
                        <div class="slick-track" role="listbox" style="opacity: 1; height: 101px; top: 0px;">
                           <div class="item slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" tabindex="-1" role="option" aria-describedby="slick-slide00" style="width: 77px;">
                               <a class="product_gallery_item " data-image="admin/product_image/<?php echo $row1_img['product_img_name'] ?>" data-zoom-image="admin/product_image/<?php echo $row1_img['product_img_name'] ?>" tabindex="0">
                              <img src="admin/product_image_thumb/<?php echo $row1_img['product_img_name'] ?>" alt="product_small_img1">
                              </a>
                              </div>
                          <?php 
						  if(mysqli_num_rows($query_img) > 0){							  
                   while($row_img = mysqli_fetch_assoc($query_img)) {  
				   ?>
							  <div class="item slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" tabindex="-1" role="option" aria-describedby="slick-slide00" style="width: 77px;">
							  <a class="product_gallery_item " data-image="admin/product_image/<?php echo $row_img['product_img_name'] ?>" data-zoom-image="admin/product_image/<?php echo $row_img['product_img_name'] ?>" tabindex="0">
                              <img src="admin/product_image_thumb/<?php echo $row_img['product_img_name'] ?>" alt="product_small_img1">
                              </a>
                              </div>
							  <?php

						  }
						  }	
						  ?> 
							  
                        </div>


                     </div>
					 
                  </div>

               </div>
            </div>
            <div class="col-lg-6 col-md-6">
               <div class="pr_detail">
                  <div class="product_description">
                     <h4 class="product_title">
                        <!--<a href="shop-product-detail-thumbnails-left.html#">--> <?php echo $row["Product_Name"]; ?><!--</a>-->
                     </h4>
                    <div class="row container">
                          <div class="product_price" style="width:100%">
                         <span class="price" id="price_currency"> 
                         <?php 
                         $discount=ceil($row["Product_Price"]*$row["Product_Discount"]/100); 
                         $price=$row["Product_Price"]; echo number_format((float)$price, 2, '.') 
                         ?>
                         </span>        <span>
                            <select id="currency_value" data-id="<?php echo $row["Product_ID"]; ?>">
                        <option value="INR" >₹</option>
                        <option value="USD" >$</option>
                    </select>
                            </span>
                        <div class="rating_wrap">
                        <div class="rating">
                            <?php 
							if ($row_comment1["count"] > 0) {
							$a = ceil(($row_comment1["sum"]/$row_comment1["count"])*20)."%";
                            if($a > 0){
                            $rat = $a;
                            }else{
                            $rat = 0;
                            }
							}else{
                            $rat = 0;
                            }
							?>
                           <div class="product_rate" style="width:<?php echo $rat ?>"></div>
                        </div>
                        <span class="rating_num">(<?php echo $row_comment1["count"]; ?>)</span>
                     </div>
                        <br><div class="on_sale">
<?php echo $row["Product_Discount"]; ?>% Off
                        </div>
                     </div>
                     
                     </div>
                    
                     <div>
                         
                        </div>
                     
                     <div class="pr_desc">
                        <p><?php echo $row["Product_Info"]; ?></p>
 
                     </div>
           <div class="on_optionn">
                            <?php 
                            $sql_option = "SELECT * from `options` where Prd_ID = {$id}";
$query_option = mysqli_query($conn,$sql_option) or die("Query Unsuccessful2.");

$count=mysqli_num_rows($query_option);
if(mysqli_num_rows($query_option) > 0){
                            ?>
                            <span>Options</span>
                            <span>
                                <select id="option_value">
                                    <option data-id="none" data-pid="<?php echo $row['Product_ID']; ?>">None</option>
                                    <?php 
                                    while($row_option = mysqli_fetch_assoc($query_option)){
                                    ?>
                                <option data-id="<?php echo $row_option['id']; ?>" data-pid="<?php echo $row['Product_ID']; ?>" value="<?php echo $row_option['Opt_Name']; ?>"><?php echo $row_option['Opt_Name']; ?></option>
                                <?php 
                                    }
                                ?>
                            </select>
                            </span>
                            <?php
                            }
                            ?>
                        </div>   
                        <div id="">
                            <span class="price" id="option_price"></span>
                            <div class="description mt-2 d-none" id="optiondescription">
                                <div class="d-flex flex-column">
                            
                             <span id="Option_Description">Making Description</span>    
                             </div>
                            </div>
                        </div>
                    
                     
                  </div>
                  <hr>
                  <div class="cart_extra">
                     <div class="cart-product-quantity">
                        <div class="quantity">
                           <input type="button" value="-" class="minus">
                           <input type="text" name="quantity" id="quantity<?php echo $row["Product_ID"]; ?>" value="1" title="Qty" class="qty" size="4">
                           <input type="button" value="+" class="plus">
                        </div>
                     </div>
                     <div class="cart_btn">
                        <input type="hidden" name="hidden_images" id="images<?php echo $row["Product_ID"]; ?>" value="<?php echo $row1_img['product_img_name'] ?>">
                        <input type="hidden" name="hidden_currency" id="currency<?php echo $row["Product_ID"]; ?>" value="INR">
                         <input type="hidden" name="hidden_weight" id="weight<?php echo $row["Product_ID"]; ?>" value="<?php echo $row['Product_Weight'] ?>">
                         <input type="hidden" name="hidden_name" id="name<?php echo $row["Product_ID"]; ?>" value="<?php echo $row["Product_Name"]; ?>">
                        <input type="hidden" name="hidden_price" id="price<?php echo $row["Product_ID"]; ?>" value="<?php echo $price ?>">
                            <input type="hidden" name="hidden_option" id="option<?php echo $row["Product_ID"]; ?>" value="None">
                          <input type="hidden" name="hidden_value" id="value<?php echo $row["Product_ID"]; ?>" value="0">
                        <button class="btn btn-fill-out btn-addtocart add_to_cart" type="button" name="add_to_cart" id="<?php echo $row["Product_ID"]; ?>"><i class="icon-basket-loaded"></i> Add to cart</button>
                        <a class="add_wishlist" href="#"><i class="icon-heart"></i></a>
                     </div>
                  </div>
                  <hr>
                  <ul class="product-meta">
                     <li>SKU: <a href="#"><?php echo $row["Product_SKU"]; ?></a></li>
                     <?php 
                     if(!empty($row['Product_Main_Category'])){
					 $sql_main="SELECT * FROM category C  WHERE category_id =".$row['Product_Main_Category'];
$result_main = mysqli_query($conn,$sql_main) or die("Query Failed.");
$row_main = mysqli_fetch_assoc($result_main);
					 }
                     ?>
                     <li>Category: <a href="#"><?php echo $row_main["name"]; ?></a></li>
                  </ul>
               </div>
            </div>
         </div>
            
         <div class="row">
            <div class="col-12">
               <div class="large_divider clearfix"></div>
            </div>
         </div>
         <div class="row">
            <div class="col-12">
               <div class="tab-style3">
                  <ul class="nav nav-tabs" role="tablist">
                     <li class="nav-item">
                        <a class="nav-link active" id="Description-tab" data-toggle="tab" href="#Description" role="tab" aria-controls="Description" aria-selected="true">Description</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" id="Additional-info-tab" data-toggle="tab" href="#Additional-info" role="tab" aria-controls="Additional-info" aria-selected="false">Additional info</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" id="Reviews-tab" data-toggle="tab"  href="#Reviews" role="tab" aria-controls="Reviews" aria-selected="false">Reviews (<?php echo $row_comment1["count"]; ?>)</a>
                     </li>
                  </ul>
                  <div class="tab-content shop_info_tab">
                     <div class="tab-pane fade show active" id="Description" role="tabpanel" aria-labelledby="Description-tab">
                        <p><?php echo $row["Product_Description"]; ?></p>
                     </div>
                     <div class="tab-pane fade" id="Additional-info" role="tabpanel" aria-labelledby="Additional-info-tab">
                        <p><?php echo $row["Product_Additional_info"]; ?></p>
                     </div>
                     <div class="tab-pane fade" id="Reviews" role="tabpanel" aria-labelledby="Reviews-tab">
                        <div class="comments">
                            <?php $i=0; ?>
                           <h5 class="product_tab_title"><?php echo $row_comment1["count"]; ?> Review For <span><?php echo $row["Product_Name"]; ?></span></h5>
                           <ul class="list_none comment_list mt-4">
                               <?php if(mysqli_num_rows($query_comment) > 0){
while($row_comment = mysqli_fetch_assoc($query_comment)){
    
    
    if($row_comment["rate"] != 0){
$p = ceil($row_comment["rate"]*20);
	   }else{
             $p = 0;
 }
	?>
				<li>
                                 <div class="comment_img">
                                    <img src="assets/images/user1.jpg" alt="user1">
                                 </div>
                                 <div class="comment_block">
                                    <div class="rating_wrap">
                                       <div class="rating">
                                          <div class="product_rate" style="width:<?php echo $p ?>%"></div>
                                       </div>
                                    </div>
                                    <p class="customer_meta">
                                       <span class="review_author"><?php echo $row_comment["name"]; ?></span>
                                       <span class="comment-date"><?php echo $row_comment["date"]; ?></span>
                                    </p>
                                    <div class="description">
                                       <p><?php echo $row_comment["comment"]; ?></p>
                                    </div>
                                 </div>
                              </li>
				
<?php
				}
					}else{
						echo "You are fist to review this item";
					}
					?>
                           </ul>
                        </div>
                        
                        <div class="review_form field_form">
                           <h5>Add a review</h5>
                          <div class="row mt-3">
                                    <div class="form-group col-12">
                                        <div class="star_rating">
                                            <span data-value="1"><i class="far fa-star"></i></span>
                                            <span data-value="2"><i class="far fa-star"></i></span> 
                                            <span data-value="3"><i class="far fa-star"></i></span>
                                            <span data-value="4"><i class="far fa-star"></i></span>
                                            <span data-value="5"><i class="far fa-star"></i></span>
                                        </div>
                                    </div>
                                    <div class="form-group col-12">
                                        <textarea required placeholder="Your review *" class="form-control" id="message" name="message" rows="4"></textarea>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <input required="required" placeholder="Enter Name *" class="form-control" id="name" name="name" type="text">
                                     </div>
                                    <div class="form-group col-md-6">
                                        <input required="required" placeholder="Enter Email *" id="email" class="form-control" name="email" type="email">
                                    </div>
                                   
                                    <div class="form-group col-12">
                                        <button class="btn btn-fill-out" data-id="<?php echo $row["Product_ID"]; ?>" name="submit" id="save_review" value="Submit">Submit Review</button>
                                    </div>
                                </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="row">
            <div class="col-12">
               <div class="small_divider"></div>
               <div class="divider"></div>
               <div class="medium_divider"></div>
            </div>
         </div>
         <div class="row">
            <div class="col-12">
               <div class="heading_s1">
                  <h3>Releted Products</h3>
               </div>
               <div class="releted_product_slider carousel_slider owl-carousel owl-theme" data-margin="20" data-responsive='{"0":{"items": "1"}, "481":{"items": "2"}, "768":{"items": "3"}, "1199":{"items": "4"}}'>
                 
				 <?php
				 $Product=$row["Product_Main_Category"];
   $sql1 = "SELECT * FROM product_info where Product_Main_Category = {$Product} order by rand() limit 8";
   $query1 = mysqli_query($conn,$sql1) or die("Query Unsuccessful.");

   
		if(mysqli_num_rows($query1) > 0){
$Related_product="";
   while($row1 = mysqli_fetch_assoc($query1)) {
	   $sql1_img = "SELECT * FROM product_img where product_id = {$row1['Product_ID']}";
   $query1_img = mysqli_query($conn,$sql1_img) or die("Query Unsuccessful.");
	   $row1_img = mysqli_fetch_assoc($query1_img);
	   
	   $discount=ceil($row1["Product_Price"]*$row1["Product_Discount"]/100);
	   
	$sql_comment2 = "SELECT count(product_id) as count , sum(rate) as sum FROM product_review where product_id = {$row1['Product_ID']}";
   $query_comment2 = mysqli_query($conn,$sql_comment2) or die("Query Unsuccessful2.");
   $row_comment2 = mysqli_fetch_assoc($query_comment2);
	   if($row_comment2["sum"] != 0){
$cp = ceil(($row_comment2["sum"]/$row_comment2["count"])*20);
	   }else{
                            $cp = 0;
                            }

						$price_related=$row1["Product_Price"];
	echo $Related_product= "<div class='item'>
                     <div class='product'>
                        <div class='product_img'>";
  if(!empty($row1_img['product_img_name'])){
	  $img = $row1_img['product_img_name'];
  }else{
	  $img = '#';
  }
	echo "<img src='admin/product_image_thumb/{$img}' alt='{$img}'>
                           <div class='product_action_box'>
                              <ul class='list_none pr_action_btn'>
                                 <li class='add-to-cart'><a href='product.php?id={$row1['Product_ID']}'><i class='icon-basket-loaded'></i> Add To Cart</a></li>
                                 <li><a href='#'><i class='icon-heart'></i></a></li>
                              </ul>
                           </div>
                        </div>
                        <div class='product_info'>
                           <h6 class='product_title'><a href='product.php?id={$row1['Product_ID']}'>{$row1['Product_Name']}</a></h6>
						   <div class='product_price'>
                              <span class='price'>₹ ".number_format((float)$price_related, 2, '.', '')." | $ ". number_format((float)$row1["Product_USD"], 2, '.', '') ."</span>
                           </div>
                            <div class='on_sale'>
                                 <span>{$row1['Product_Discount']}% Off</span>
                              </div>
                           <div class='rating_wrap'>
                              <div class='rating'>
                                 <div class='product_rate' style='width:{$cp}%'></div>
                              </div>
                              <span class='rating_num'>({$row_comment2["count"]})</span>
                           </div>
                        </div>
                     </div>
                  </div>";  
		}
	
	}

?>				   
                  

 
               </div>
            </div>
         </div>
      </div>
      <!-- END SECTION SHOP -->
   </div>
   </div>
   <?php include('footer.php') ?>