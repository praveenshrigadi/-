<?php include('connection.php');
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
<title><?php echo Title ?> Category</title>
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

<!-- START SECTION SHOP -->
	<div class="container">
	    	<div class="row mt-3">
			<!--<div class="col-lg-9 offset-lg-3">-->

			
				<?php 
				$sql = "SELECT * FROM category order BY seq";
$query = mysqli_query($conn,$sql) or die("Query Unsuccessful.");
				$i=0;
				while($row = mysqli_fetch_assoc($query)) {
					   $a=++$i;	  
     echo "<div class='col-md-3 col-4' id='product_name' data-id='{$row['category_id']}'>
                        <div class='product'>
                            <div class='product_img'><a href='shop-product-detail.html'>
                                    <img src='admin/category-img/{$row['img']}' alt='product_img{$a}'>
                                </a>
                               
                            </div>
                            <div class='product_info' style='text-align: center'>
                                <h6 class='product_title'>{$row['name']}</h6>
 </div>
                        </div>
                    </div>";
    }  
	?>
			
        
        </div>
    </div>

<!-- END SECTION SHOP -->

<?php include('footer.php') ?>