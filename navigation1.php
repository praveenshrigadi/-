<?php 

$Nav="select * from category order by seq limit 10";
$result_Nav = mysqli_query($conn,$Nav) or die("Query Failed.");

?>
<!-- START HEADER -->
<header class="header_wrap">
	<div class="top-header d-none d-md-block">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-8">
                	<div class="header_topbar_info">
                    	<div class="header_offer">
                    		<span>Energized and Authentic Products</span>
                        </div>
                        <div class="download_wrap">
                            <span class="mr-3">Worldwide Shipping</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-4">
                	<div class="d-flex align-items-center justify-content-center justify-content-md-end">
                        <div class="lng_dropdown">
                    <ul class="icon_list text-center text-lg-left">
                                <li><a href="live-chat-astrologer.php"><i class="linearicons-bubble"></i> Live Chat with Astrologer</a></li>
                            </ul>
                        </div>
                        <div class="ml-3">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="middle-header dark_skin">
    	<div class="container">
        	<div class="nav_block">
                <a class="navbar-brand" href="index.php">
                    <img class="logo_light" src="assets/images/logo_light.png" alt="logo" />
                    <img class="logo_dark" src="assets/images/logo_dark.png" alt="logo" />
                </a>
                <div class="contact_phone order-md-last">
                    <a href="https://wa.me/+917777090950" target="_blank"><i class="ion-social-whatsapp"></i></a>
                    <span><a href="https://wa.me/917777090950" target="_blank">7777090950</a></span>
                </div>
                <div class="product_search_form">
                    <form method="get" action="s.php">
                        <div class="input-group">
                            <input class="form-control" placeholder="Search Product..." required="" name="s"  type="text">
                            <button type="submit" class="search_btn"><i class="linearicons-magnifier"></i></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="bottom_header light_skin main_menu_uppercase bg_dark mb-4">
    	<div class="container">
            <div class="row"> 
            	<div class="col-lg-3 col-md-4 col-sm-6 col-3">
                	<div class="categories_wrap">
                        <button type="button" data-toggle="collapse" data-target="#navCatContent" aria-expanded="false" class="categories_btn">
                            <i class="linearicons-menu"></i><span>All Categories </span>
                        </button>
                            <div id="navCatContent" class="nav_cat navbar collapse">
                            <ul>                           
<?php			while($row_Nav = mysqli_fetch_assoc($result_Nav)){
    

$sql = "SELECT * FROM sub_category a where main_category =".$row_Nav["category_id"]."";
$query = mysqli_query($conn,$sql) or die("Query Unsuccessful.");

if(mysqli_num_rows($query) > 0){
    $link='sub_category';
}else{
    $link='product_view';
}
?>
								<li>
                                    <a class="dropdown-item nav-link nav_item" href="<?php echo $link; ?>.php?id=<?php echo $row_Nav["category_id"];?>&cat=main"><i class="<?php echo $row_Nav["icon"];?>"></i> <span><?php echo $row_Nav["name"];?><br></span></a>
                                </li>
								<?php
				}
									?>
                      
                            </ul>
                            <a href="category.php"><div class="more_categories">More Categories</div></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9 col-md-8 col-sm-6 col-9">
                	<nav class="navbar navbar-expand-lg">
                    	<button class="navbar-toggler side_navbar_toggler" type="button" data-toggle="collapse" data-target="#navbarSidetoggle" aria-expanded="false"> 
                            <span class="ion-android-menu"></span>
                        </button> 
                        <div class="collapse navbar-collapse mobile_side_menu" id="navbarSidetoggle">
                            <ul class="navbar-nav">
                            <li><a class="nav-link nav_item" href="index.php">Home</a></li>
                            <li><a class="nav-link nav_item" href="consultation.php">Consultation</a></li>
                            <li><a class="nav-link nav_item" href="reports.php">Reports</a></li>
                            <li class="nav-item dropdown">
<a class="nav-link dropdown-toggle" href="category.php" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Category</a>
<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
    <?php
$Nav="select * from category order by seq";
$result_Nav = mysqli_query($conn,$Nav) or die("Query Failed.");
    while($row_Nav1 = mysqli_fetch_assoc($result_Nav)){
$sql = "SELECT * FROM sub_category a where main_category =".$row_Nav1["category_id"]."";
$query = mysqli_query($conn,$sql) or die("Query Unsuccessful.");

if(mysqli_num_rows($query) > 0){
    $link='sub_category';
}else{
    $link='product_view';
}
    ?>
    <li>
    <a class="dropdown-item nav-link nav_item" href="<?php echo $link; ?>.php?id=<?php echo $row_Nav1["category_id"];?>&cat=main"><i class="<?php echo $row_Nav1["icon"];?>"></i> <span><?php echo $row_Nav1["name"];?><br></span></a>
    </li>
    <?php
    }
    ?>
</ul>
</li>
                            <li><a class="nav-link nav_item" href="articles.php">Articles</a></li>
                            <li><a class="nav-link nav_item" href="videos.php">Videos</a></li>
                            <li><a class="nav-link nav_item" href="contact.php">Connect</a></li>
                            
                            </ul>
                        </div>
                        <ul class="navbar-nav attr-nav align-items-center">
                        	<li><a href="<?php if(isset($_SESSION["ID"])){
								echo 'my-account.php';
							}else{
								echo 'login.php';
							} ?>" class="nav-link"><i class="linearicons-user"></i></a></li>
                            <li class="dropdown cart_dropdown"><a class="nav-link cart_trigger" href="#" data-toggle="dropdown"><i class="linearicons-cart"></i><span class="cart_count badge">0</span></a>
                                <div class="cart_box dropdown-menu dropdown-menu-right" id="short_cart">
                                    
                                </div>
                            </li>
                        </ul>
                        <div class="pr_search_icon">
                        	<a href="javascript:void(0);" class="nav-link pr_search_trigger"><i class="linearicons-magnifier"></i></a>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- END HEADER -->