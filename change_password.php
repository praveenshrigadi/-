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

<style>
    
    /* The message box is shown when the user clicks on the password field */
#message1 {
  display:none;
  background: white;
  color: #000;
  position: relative;
  padding: 5px;
  margin-top: 5px;
}

#message1 li {
  padding: 0px 35px;
  font-size: inherit;
  list-style:none;
}
#notmatch{
    display:none;
    color:red;
}

/* Add a green text color and a checkmark when the requirements are right */
.valid {
  color: green;
}

.valid:before {
  position: relative;
  left: -35px;
  content: "✔";
}

/* Add a red text color and an "x" when the requirements are wrong */
.invalid {
  color: red;
}

.invalid:before {
  position: relative;
  left: -35px;
  content: "✖";
}
</style>
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
                            <h3>Verification Code</h3>
                        </div>
                        <form method="post" id="changepassword">
                            <div id="alert-msg"></div>
                            <div class="form-group">
                                <input type="text" required class="form-control" name="code" id="code" placeholder="Code" autocomplete="off">
                                <input type="hidden" required class="form-control" name="cemail" id="cemail" placeholder="Emalid" value="<?php echo empty($_GET['c']) ? '' : $_GET['c'];?>" autocomplete="off">
                                <div id="message"></div>
                            </div>
                            <div class="form-group">
                                <input type="password" required class="form-control" name="npassword" id="npassword" placeholder="New Password" disabled autocomplete="off">
                            </div>
                            <div class="form-group">
                                <input type="password" required class="form-control" name="cpassword" id="cpassword" placeholder="Confirm Password" disabled autocomplete="off">
                                <div id="message1">
                                                  <h5>Password must contain the following:</h5>
                                                  <ul>
                                                   <li id="letter" class="invalid">A <b>lowercase</b> letter</li>
                                                  <li id="capital" class="invalid">A <b>capital (uppercase)</b> letter</li>
                                                  <li id="number" class="invalid">A <b>number</b></li>
                                                  <li id="length" class="invalid">Minimum <b>8 characters</b></li>
                                                  </ul>
                                                  
                                                </div>
                            </div>
                            
            <div class="form-group">
                    <button type="submit" title="Submit Your Message!" class="btn btn-fill-out" id="submitPassword" name="submit" value="Submit" disabled>Submit</button>
                              
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
<script>
var myInput = document.getElementById("npassword");
var letter = document.getElementById("letter");
var capital = document.getElementById("capital");
var number = document.getElementById("number");
var length = document.getElementById("length");

// When the user clicks on the password field, show the message box
myInput.onfocus = function() {
  document.getElementById("message1").style.display = "block";
}

// When the user clicks outside of the password field, hide the message box
myInput.onblur = function() {
  document.getElementById("message1").style.display = "none";
}

// When the user starts to type something inside the password field
myInput.onkeyup = function() {
  // Validate lowercase letters
  var lowerCaseLetters = /[a-z]/g;
  if(myInput.value.match(lowerCaseLetters)) {  
    letter.classList.remove("invalid");
    letter.classList.add("valid");
  } else {
    letter.classList.remove("valid");
    letter.classList.add("invalid");
  }
  
  // Validate capital letters
  var upperCaseLetters = /[A-Z]/g;
  if(myInput.value.match(upperCaseLetters)) {  
    capital.classList.remove("invalid");
    capital.classList.add("valid");
  } else {
    capital.classList.remove("valid");
    capital.classList.add("invalid");
  }

  // Validate numbers
  var numbers = /[0-9]/g;
  if(myInput.value.match(numbers)) {  
    number.classList.remove("invalid");
    number.classList.add("valid");
  } else {
    number.classList.remove("valid");
    number.classList.add("invalid");
  }
  
  // Validate length
  if(myInput.value.length >= 8) {
    length.classList.remove("invalid");
    length.classList.add("valid");
  } else {
    length.classList.remove("valid");
    length.classList.add("invalid");
  }
  if(myInput.value.match(upperCaseLetters) && myInput.value.match(numbers) && myInput.value.length >= 8){
      document.getElementById("cpassword").removeAttribute("readonly"); 
  }else{
       document.getElementById("cpassword").setAttribute("readonly","readonly"); 
  }
}
</script>

</div>
<!-- END MAIN CONTENT -->
<?php include('footer.php') ?>
<!-- START FOOTER -->


</body>
</html>