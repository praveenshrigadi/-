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

<!-- START HEADER -->
<!-- Navigation -->
<?php include('navigation.php'); ?>
<!-- END HEADER -->
 <?php include('breadcrumbs.php') ?>

<!-- START MAIN CONTENT -->
<div class="main_content">

<!-- START LOGIN SECTION -->
<div class="login_register_wrap section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-xl-6 col-md-10">
                <div class="login_wrap">
            		<div class="padding_eight_all bg-white">
                        <div class="heading_s1">
                            <h3>Forget Password</h3>
                        </div>
                        <form method="post" id="forget" action="script/forgetpassword.php">
                            <div class="form-group">
                                <input type="email" required class="form-control" name="femail" id="femail" placeholder="Enter Your Email ID" autocomplete="off">
                                <div id="message"></div>
                            </div>
            <div class="form-group">
                     <input type="submit" id="submit" class="btn btn-fill-out btn-block" value="Submit"  name="submit" disabled>
                              
                            </div>
                        </form>
                    <!--    <div class="different_login">
                            <span> or</span>
                        </div>
                        <ul class="btn-login list_none text-center">
                            <li><a href="signup.html#" class="btn btn-facebook"><i class="ion-social-facebook"></i>Facebook</a></li>
                            <li><a href="signup.html#" class="btn btn-google"><i class="ion-social-googleplus"></i>Google</a></li>
                        </ul>-->
                        <div class="form-note text-center">Already have an account? <a href="login.php">Log in</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END LOGIN SECTION -->


</div>
<!-- END MAIN CONTENT -->
<?php include('footer.php') ?>
<!-- START FOOTER -->


</body>
</html>