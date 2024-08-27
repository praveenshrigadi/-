<?php include('connection.php'); ?>
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
<meta name="description" content="<?php echo Description  ?>">
<!-- Meta Keywords -->
<meta name="keywords" content="<?php echo Keywords   ?>">
<!-- Meta Title -->
<meta name="title" content="<?php echo  Title   ?>">
<!-- SITE TITLE -->
<title><?php echo  Title   ?></title>
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


<!-- STAT SECTION ABOUT --> 
<div class="section">
	<div class="container">
    	<div class="row align-items-center">
        Sample Page
        </div>
    </div>
</div>
<!-- END SECTION ABOUT --> 

</div>
<!-- END MAIN CONTENT -->
  <?php include('footer.php') ?>