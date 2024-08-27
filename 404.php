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
<title><?php echo Title ?></title>
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
<?php include('navigation.php');?>

<!-- END SECTION BREADCRUMB -->

<!-- START MAIN CONTENT -->
<div class="main_content">

<!-- START 404 SECTION -->
<div class="section">
	<div class="error_wrap">
    	<div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-6 col-md-10 order-lg-first">
                	<div class="text-center">
                        <div class="error_txt">404</div>
                        <h5 class="mb-2 mb-sm-3">oops! The page you requested was not found!</h5> 
                        <p>The page you are looking for was moved, removed, renamed or might never existed.</p>
                        <div class="search_form pb-3 pb-md-4">
                            <form method="post">
                                <input name="text" id="text" type="text" placeholder="Search" class="form-control">
                                <button type="submit" class="btn icon_search"><i class="ion-ios-search-strong"></i></button>
                            </form>
                        </div>
                        <a href="index.php" class="btn btn-fill-out">Back To Home</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END 404 SECTION -->
<?php include('footer.php'); ?>

</body>
</html>