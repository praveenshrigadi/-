<?php include('connection.php');

$Category = $_GET['id'];

$sql = "SELECT * FROM 2nd_sub_category where sub_category = {$Category}";
$sub_sub_query = mysqli_query($conn,$sql) or die("Query Unsuccessful.");


$sql1 = "SELECT * FROM sub_category where id = {$Category}";
$query1 = mysqli_query($conn,$sql1) or die("Query Unsuccessful.");
$row1=mysqli_fetch_assoc($query1);
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
<meta name="description" content="<?php echo (empty($row1['meta_description'])) ? Description : $row1['meta_description'] ?>">
<!-- Meta Keywords -->
<meta name="keywords" content="<?php echo (empty($row1['meta_keyword'])) ? Keywords : $row1['meta_keyword'] ?>">
<!-- Meta Title -->
<meta name="title" content="<?php echo (empty($row1['meta_title'])) ? Title : $row1['meta_title'] ?>">
<!-- SITE TITLE -->
<title><?php echo  (empty($row1['meta_title'])) ? Title : $row1['meta_title'] ?></title>
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
<!-- START SECTION BREADCRUMB -->
<div class="breadcrumb_section bg_gray page-title-mini mb-5">
    <div class="container"><!-- STRART CONTAINER -->
        <div class="row align-items-center">
        	<div class="col-md-6">
                <div class="page-title">
            		<h1> <?= (!empty($row2['sub_category'])) ?  ucwords($row1['sub_category']) : 'Home'; ?> </h1>
                </div>
            </div>
            <div class="col-md-6">
                <ol class="breadcrumb justify-content-md-end">
                  <a href="https://ramakrsna.com/">Home</a> &nbsp; > &nbsp;<?= (!empty($row1['sub_category'])) ?  ucwords($row1['sub_category']) : 'Home'; ?> 
                </ol>
            </div>
        </div>
		
    </div><!-- END CONTAINER-->
</div>
<!-- END SECTION BREADCRUMB -->


<!-- START SECTION SHOP -->
	<div class="container">
    	<div class="row">
			<div class="col-lg-12" id="Sub_Category_list">
            
			
			<?php
			if(mysqli_num_rows($sub_sub_query) > 0){
  $output = "";
  $output .= "
  <div class='row shop_container'>";
							$i=0;
                   while($row = mysqli_fetch_assoc($sub_sub_query)) {
					   $a=++$i;
      $last_id = $a;
      $cat = $row["main_category"];
	  
      $output .= "  <div class='col-md-3 col-6' id='2nd_product_name' data-id='{$row['id']}'>
                        <div class='product'>
                            <div class='product_img'><a href='#'>
                                    <img src='admin/category-img/{$row['img']}' alt='product_img{$a}'>
                                </a>
                               
                            </div>
                            <div class='product_info' style='text-align: center'>
                                <h6 class='product_title'>{$row['sub_sub_categroy']}</h6>
 </div>
                        </div>
                    </div>

 ";
    }    
      $output .= "</div>
	 ";
           
echo $output;
}

?>
               
        	</div>
        
        </div>
    </div>

<!-- END SECTION SHOP -->





<?php include('footer.php') ?>