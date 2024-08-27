<?php 
include('connection.php');
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
<title>Articles</title>
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


<!-- START MAIN CONTENT -->
<div class="main_content">

<!-- START SECTION BLOG -->
<div class="section">
	<div class="container">
    	<div class="row">
        	<div class="col-lg-10 col-12">
                <div class="row" id="loadData">

            </div>
        </div>
        <div class="col-lg-2 col-12">
            <h4>Category</h4>
               <!--
                <?php 
$BCat="select * from blog_category where status = 'Active'";
$result_BCat = mysqli_query($conn,$BCat) or die("Query Failed.");
while($row_Bcat = mysqli_fetch_assoc($result_BCat)){
                ?>
        <small class="badge border"><?= $row_Bcat['Category']?></small>
            <?php } ?> -->
            
<?php
$Nav="select * from blog_category";
$result_Nav = mysqli_query($conn,$Nav) or die("Query Failed.");
    while($row_Nav1 = mysqli_fetch_assoc($result_Nav)){
    ?>
    <a href="articles-category.php?criteria=<?php echo $row_Nav1["Category"]; ?>">
   <small class="badge border mb-2">
    <span class="dropdown-item nav-link nav_item"><span><?php echo $row_Nav1["Category"];?></span></span>
    </small>
    </a>
    <?php
    }
    ?>
        </div>
    </div>
</div>
<!-- END SECTION BLOG -->

</div>
<!-- END MAIN CONTENT -->

   <?php include('footer.php') ?>