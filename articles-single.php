<?php include('connection.php');

if(isset($_GET['id']) && !empty($_GET['id']))
{
       $id = $_GET['id'];
   $next_blog = "select * from blog_page where id = (select min(id) from blog_page where id > {$id})";
   $next_blog_query = mysqli_query($conn,$next_blog) or die("Query Unsuccessful.");
   $row_next_blog = mysqli_fetch_assoc($next_blog_query);

   $previous_blog = "select * from blog_page where id = (select max(id) from blog_page where id < {$id})";
   $previous_blog_query = mysqli_query($conn,$previous_blog) or die("Query Unsuccessful.");
   $row_previous_blog = mysqli_fetch_assoc($previous_blog_query);

    $single_blog = "SELECT * FROM blog_page where id = {$id}";
   $single_blog_query = mysqli_query($conn,$single_blog) or die("Query Unsuccessful.");
   $row_single_blog = mysqli_fetch_assoc($single_blog_query);
   

}else{
header('Location:index.php');
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
<meta name="description" content="<?php echo empty($row_single_blog["meta_description"]) ? Description : $row_single_blog["meta_description"]   ?>">
<!-- Meta Keywords -->
<meta name="keywords" content="<?php echo empty($row_single_blog["meta_keyword"]) ? keywords : $row_single_blog["meta_keyword"]   ?>">
<!-- Meta Title -->
<meta name="title" content="<?php echo empty($row_single_blog["meta_title"]) ? Title : $row_single_blog["meta_title"]   ?>">
<!-- SITE TITLE -->
<title><?php echo  $row_single_blog["name_title"] ?></title>
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
   <!-- include('breadcrumbs.php') -->

<!-- START MAIN CONTENT -->
<div class="main_content">

<!-- START SECTION BLOG -->
<div class="section">
	<div class="container">
    	<div class="row">
        	<div class="col-xl-9 col-12">
            	<div class="single_post" itemtype="http://schema.org/BlogPosting">
                	<h2 class="blog_title" itemprop="name"><?= $row_single_blog['name_title'] ?></h2>
                   <!-- <ul class="list_none blog_meta">
                        <li itemprop="date"><i class="ti-calendar"></i> <?= $row_single_blog['blog_date'] ?></li>
                    </ul>-->
                    <div class="blog_img" itemprop="image">
                        <img src="admin/blog-img/<?= $row_single_blog['image'] ?>" alt="<?= $row_single_blog['name_title'] ?>">
                    </div>
                    <div class="blog_content">
                        <div class="blog_text" itemprop="description articleBody">
                            <?= $row_single_blog['content'] ?>
                        </div>
                    </div>
                </div>
                <div class="post_navigation bg_gray mt-5 mb-5">
                    <div class="row align-items-center justify-content-between p-4">
                        <div class="col-5">
                            <?php
                            if(!empty($row_previous_blog['id'])){
                            echo "<a href='articles-single.php?id={$row_previous_blog['id']}'>
                                <div class='post_nav post_nav_prev'>
                                    <i class='ti-arrow-left'></i>
                                    <span>Previous</span>
                                </div>
                            </a>";    
                            }
                            ?>
                            
                        </div>
                        <div class="col-2">
                            <a href="articles.php" class="post_nav_home">
                                <i class="ti-layout-grid2"></i>
                            </a>
                        </div>
                        <div class="col-5">
                            <?php
                            if(!empty($row_next_blog['id'])){
                            echo "<a href='articles-single.php?id={$row_next_blog['id']}'>
                                <div class='post_nav post_nav_next'>
                                    <i class='ti-arrow-right'></i>
                                    <span>Next</span>
                                </div>
                            </a>";    
                            }
                            ?>
                            
                        </div>
                    </div>
                </div>
                <div class="related_post">
                	<div class="content_title">
                    	<h5>Related posts</h5>
                    </div>
                    <div class="row">
					<?php
if(!empty($row_previous_blog['id'])){
?>
                        <div class="col-md-6">
                            <div class="blog_post blog_style2 box_shadow1">
                                <div class="blog_img">
                                    <a href="articles-single.php?id=<?php echo $row_previous_blog['id']; ?>">
                                        <img src="admin/blog-img/<?php echo $row_previous_blog['image']; ?>" alt="<?php echo $row_previous_blog['name_title']; ?>">
                                    </a>
                                </div>
                                <div class="blog_content bg-white">
                                    <div class="blog_text">
                                        <h5 class="blog_title"><a href="articles-single.php?id=<?php echo $row_previous_blog['id']; ?>"><?php echo $row_previous_blog['name_title']; ?></a></h5>
                                       <!-- <ul class="list_none blog_meta">
                                            <li><a href="articles-single.php?id=<?php echo $row_previous_blog['id']; ?>"><i class="ti-calendar"></i> <?php echo $row_previous_blog['blog_date']; ?></a></li>
                                        </ul>-->
                                        <div class="product_desc">
                                            <?php echo $row_previous_blog['content']; ?>
                                        </div>
                                        </div>
                                </div>
                            </div>
                        </div>  
<?php
}
?>						
<?php
if(!empty($row_next_blog['id'])){
?>
                    	<div class="col-md-6">
                            <div class="blog_post blog_style2 box_shadow1">
                                <div class="blog_img">
                                    <a href="articles-single.php?id=<?php echo $row_next_blog['id']; ?>">
                                        <img src="admin/blog-img/<?php echo $row_next_blog['image']; ?>" alt="<?= $row_next_blog['name_title'] ?>">
                                    </a>
                                </div>
                                <div class="blog_content bg-white">
                                    <div class="blog_text">
                                        <h5 class="blog_title"><a href="articles-single.php?id=<?php echo $row_next_blog['id']; ?>"><?php echo $row_next_blog['name_title']; ?></a></h5>
                                       <!-- <ul class="list_none blog_meta">
                                            <li><a href="articles-single.php?id=<?php echo $row_next_blog['id']; ?>"><i class="ti-calendar"></i> <?php echo $row_next_blog['blog_date']; ?></a></li>
                                        </ul> -->
                                       <div class="product_desc">
                                           <?php echo $row_next_blog['content']; ?>
                                       </div>
                                    </div>
                                </div>
                            </div>
                        </div>
						<?php
												}
						?>
                	</div>
                </div>
               
            </div>
            
            	<div class="col-xl-3 col-12">
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
</div>
<!-- END SECTION BLOG -->
</div>
<!-- END MAIN CONTENT -->
  <?php include('footer.php') ?>