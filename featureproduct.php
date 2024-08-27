 <?php
$FP = "SELECT * FROM product_info where Feature='Y' order by Product_ID desc LIMIT 15";
$FP_query = mysqli_query($conn,$FP) or die("Query Unsuccessful.");
 
if(mysqli_num_rows($FP_query) > 0){
    echo '<div class="product_slider product_list carousel_slider owl-carousel owl-theme nav_style3 owl-loaded owl-drag" data-loop="true" data-dots="false" data-nav="true" data-margin="20" data-responsive="{&quot;0&quot;:{&quot;items&quot;: &quot;1&quot;}, &quot;767&quot;:{&quot;items&quot;: &quot;2&quot;}, &quot;991&quot;:{&quot;items&quot;: &quot;3&quot;}, &quot;1199&quot;:{&quot;items&quot;: &quot;3&quot;}}"> <div class="item">';
    
    $i=0;
    while($row_FP = mysqli_fetch_assoc($FP_query)) {
        
             $FP_img ="SELECT * FROM `product_img` where product_id = {$row_FP['Product_ID']}";
$FP_img_query=mysqli_query($conn,$FP_img) or die('Image Img Query Failed');
$row_img=mysqli_fetch_assoc($FP_img_query);

$FP_comment1 = "SELECT count(product_id) as count , sum(rate) as sum FROM product_review where product_id = {$row_FP['Product_ID']}";
   $query_FP_comment1 = mysqli_query($conn,$FP_comment1) or die("Query Unsuccessful2.");
   $row_FP_comment1 = mysqli_fetch_assoc($query_FP_comment1);
   
      if($row_FP_comment1["sum"] != 0){
$feat = ceil(($row_FP_comment1["sum"]/$row_FP_comment1["count"])*20)."%";
	   }else{
                $feat = "0%";
 }
        
$discount=ceil($row_FP["Product_Price"]*$row_FP["Product_Discount"]/100); 
$price=$row_FP["Product_Price"]-$discount;
        $a=++$i;
        echo '<div class="product" id="'.$a.'">
                            <div class="product_img">
                                <a href="product.php?id='.$row_FP['Product_ID'].'">
                                    <img src="admin/product_image_thumb/'.$row_img['product_img_name'].'" alt="'.$row_FP['Product_Name'].'">
                                </a>
                            </div>
                            <div class="product_info">
                                <h6 class="product_title"><a href="product.php?id='.$row_FP['Product_ID'].'">'.$row_FP['Product_Name'].'</a></h6>
                                <div class="product_price">
                                            
                                            <span class="price">₹ '.$row_FP["Product_Price"].' | $ '.$row_FP["Product_USD"].'</span>
                                            <!--<del>₹'.$price.'</del>-->                                            <div class="on_sale">
                                                <span>'.$row_FP['Product_Discount'].'% Off</span>
                                            </div>
                                <div class="rating_wrap">
                                            <div class="rating">
                                                <div class="product_rate" style="width:'.$feat.'"></div>
                                            </div>
                                            <span class="rating_num">('.$row_FP_comment1["count"].')</span>
                                        </div>
                            </div>
                        </div>
						</div>';
        if($a % 3 == 0){
     echo '</div> <div class="item">';      
    }
 
    }
    
    echo '</div></div>';
}

?>