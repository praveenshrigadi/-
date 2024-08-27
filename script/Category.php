<?php
include('../connection/connection.php');

//if(!isset($_SESSION["emailid"])){
	//header('Location: index.php');
//}

	$limit = 9;


if(isset($_POST['page_no'])){
  $page = $_POST['page_no'];
}else{
  $page = 0;
}
//LIMIT {$page},$limit
$sql = "SELECT * FROM category order BY seq";
$query = mysqli_query($conn,$sql) or die("Query Unsuccessful.");

if(mysqli_num_rows($query) > 0){
  $output = "";
  $output .= "
  <div class='row shop_container' style='cursor:pointer'>";
							$i=0;
                   while($row = mysqli_fetch_assoc($query)) {
					   $a=++$i;
      $last_id = $row["category_id"];
	  
      $output .= "  <div class='col-md-3 col-4' id='product_name' data-id='{$row['category_id']}'>
                        <div class='product'>
                            <div class='product_img'><a href='shop-product-detail.html'>
                                    <img src='admin/category-img/{$row['img']}' alt='product_img{$a}'>
                                </a>
                               
                            </div>
                            <div class='product_info' style='text-align: center'>
                                <h6 class='product_title'>{$row['name']}</h6>
 </div>
                        </div>
                    </div>

 ";
    }    
      $output .= "</div>
	  
	  ";
    echo $output;              

}else{
 
}
/*

<div class='row'>
                    <div class='col-12'>
                        <ul class='pagination mt-3 justify-content-center pagination_style1'>    
                                  <button id='Category_more' class='btn btn-sm btn-primary' data-id='{$last_id}'>Load More</button>
                        </ul>
                    </div>
                </div>
*/
mysqli_close($conn);
?>



 
        		