<header class="header_wrap fixed-top header_with_topbar">
	
    <div class="bottom_header dark_skin main_menu_uppercase">
    	<div class="container">
            <nav class="navbar navbar-expand-lg"> 
                <a class="navbar-brand" href="index.php">
                    <img class="logo_light" src="assets/images/logo_light.png" alt="logo" />
                    <img class="logo_dark" src="assets/images/logo_dark.png" alt="logo" />
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-expanded="false"> 
                    <span class="ion-android-menu"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
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
                    <li><a href="javascript:void(0);" class="nav-link search_trigger"><i class="linearicons-magnifier"></i></a>
                        <div class="search_wrap">
                            <span class="close-search"><i class="ion-ios-close-empty"></i></span>
                            <form method="get" action="s.php">
                                <input type="text" placeholder="Search" class="form-control" name="s" id="search_input">
                                <button type="submit" class="search_icon"><i class="ion-ios-search-strong"></i></button>
                            </form>
                        </div><div class="search_overlay"></div>
                    </li>
           
                     <li class="dropdown cart_dropdown"><a class="nav-link cart_trigger" href="#" data-toggle="dropdown"><i class="linearicons-cart"></i><span class="cart_count badge">0</span></a>
                                <div class="cart_box dropdown-menu dropdown-menu-right" id="short_cart">
                                    
                                </div>
                            </li>
                          	<li><a href="<?php if(isset($_SESSION["ID"])){
								echo 'my-account.php';
							}else{
								echo 'login.php';
							} ?>" class="nav-link"><i class="linearicons-user"></i></a></li>
                            
                            
                            
                </ul>
            </nav>
        </div>
    </div>
</header>