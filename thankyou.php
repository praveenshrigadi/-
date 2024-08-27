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
<!-- Navigation -->
<?php include('navigation.php'); ?>
<?php include('breadcrumbs.php'); ?>

<!-- START MAIN CONTENT -->
<div class="main_content">

<!-- START 404 SECTION -->
<div class="section">
	<div class="error_wrap">
    	<div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-9 col-md-10 order-lg-first">
                	<div class="text-center">
                      <?php if(isset($_POST['yes'])) {?>
                       <h5 class="mb-2 mb-sm-3">Your Email Address Is Verified.<br>
                       <a href="login.php" style="color: #000000; text-decoration: underline;">Login</a></h5> 
                       
                       <?php } else { ?>
                        <div class="error_txt" >THANK YOU</div>
                        <h3 class="mb-2 mb-sm-3">Registration successful, please verify in the registered Email-Id</h3> 
                       <?php }?>
                       
                       <?php if(isset($_POST['enq'])) {?>
                       <h5 class="mb-2 mb-sm-3">Contact Form Submited Succesfully</h5> 
                       
                       <?php } ?>
                        

<script>


</script>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END 404 SECTION -->


<!-- END MAIN CONTENT -->
<?php include('footer.php') ?>