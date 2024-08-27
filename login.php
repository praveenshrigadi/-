<?php if(isset($_SESSION["webuser_id"])){header('Location: my-account.php'); exit();}?>
<!-- <script>  
 $(document).ready(function(){  
	 
	 function clearconsole() {
  console.log(window.console);
  if(window.console || window.console.firebug) {
   console.clear();
  }
}

      
       
      
 });  
 </script>-->
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
<meta name="description" content="<?php echo Description ?>">
<!-- Meta Keywords -->
<meta name="keywords" content="<?php echo Keywords ?>">
<!-- Meta Title -->
<meta name="title" content="<?php echo Title ?>">
<!-- SITE TITLE -->
<title><?php echo Title ?></title>
<!-- STYLE --->
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
</head>

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
                            <h3>Login</h3>
                        </div>
                          <div class="alert" id="msgshow"></div>
                           <form method="post" id="insert_form">  
                          <div class="form-group">
                         <input type="email"  class="form-control" name="name" id="name" placeholder="Your Email">
                         
                      </div>
                        
                        <div class="form-group">
                         <input type="password"  class="form-control" name="password" id="password" placeholder="Password">
                         
                      </div>
                         
                          
                          <div class="form-group">
                                <button type="submit" class="btn btn-fill-out btn-block" name="login">Log in</button>
                            </div>
                          
                          
                     </form>
                       <!-- <div class="different_login">
                            <span> or</span>
                        </div>
                        <ul class="btn-login list_none text-center">
                            <li><a href="#" class="btn btn-facebook"><i class="ion-social-facebook"></i>Facebook</a></li>
                            <li><a href="#" class="btn btn-google"><i class="ion-social-googleplus"></i>Google</a></li>
                        </ul>-->
                        <div class="form-note text-center">Don't Have an Account? <a href="signup.php">Sign up now</a> <br/> Click Here If <a href="forgetpassword.php">Forget Password</a> </div>
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