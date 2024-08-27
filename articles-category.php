<?php 
include('connection.php');
$Name  = (!empty($_GET['criteria'])) ? $_GET['criteria'] : '';
if(!empty($Name)){
$cat="select * from blog_category c, blog_page b where c.Category='".$Name."' and c.id=b.Blog_category and  c.status = 'Active';";
$result_cat = mysqli_query($conn,$cat) or die("Query Failed.");
$catcount = mysqli_num_rows($result_cat);
}else{
    header('Loction: index.php');
}


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
                <div class="row">
                    <?php
                    if($catcount > 0){
                     while($row_cat = mysqli_fetch_assoc($result_cat)){
                         ?>
                         <div class="col-xl-4 col-md-6">
	<div class="blog_post blog_style2 box_shadow1">
		<div class="blog_img">
			<a href="articles-single.php?id=10">
				<img src="admin/blog-img/<?php echo $row_cat['image']; ?>" alt="blog_small_img1">
			</a>
		</div>
		<div class="blog_content bg-white">
			<div class="blog_text">
				<h6 class="blog_title"><a href="articles-single.php?id=<?php echo $row_cat['id']; ?>"><?php echo $row_cat['name_title']; ?></a></h6>
				<div class="product_desc" style=" display: -webkit-box;-webkit-line-clamp: 4;-webkit-box-orient: vertical;overflow: hidden;text-overflow: ellipsis;">
				<p><?php echo $row_cat['content']; ?></p>
				</div>
			</div>
		</div>
	</div>
</div>	
                         <?php
                         }
                         } else {
                         ?>
                         <div class="col-12 m-2">
                             <h4>No Record Found..</h4>
                             </div>
                         <?php } ?>

            </div>
        </div>
        <div class="col-lg-2 col-12">
            <h4>Category</h4>
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