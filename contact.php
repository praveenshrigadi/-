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


<!-- START SECTION CONTACT -->
<div class="section pb_70">
	<div class="container">
        <div class="row">
            <div class="col-xl-4 col-md-6">
            	<div class="contact_wrap contact_style3">
                    <div class="contact_icon">
                        <i class="linearicons-map2"></i>
                    </div>
                    <div class="contact_text">
                        <span>Address</span>
                        <p>123 Street, Old Trafford, London, UK</p>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-md-6">
            	<div class="contact_wrap contact_style3">
                    <div class="contact_icon">
                        <i class="linearicons-envelope-open"></i>
                    </div>
                    <div class="contact_text">
                        <span>Email Address</span>
                        <a href="mailto:info@ramakrsna.com">info@ramakrsna.com</a>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-md-6">
            	<div class="contact_wrap contact_style3">
                    <div class="contact_icon">
                        <i class="linearicons-tablet2"></i>
                    </div>
                    <div class="contact_text">
                        <span>Phone</span>
                        <p>+ 457 789 789 65</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END SECTION CONTACT -->

<!-- START SECTION CONTACT -->
<div class="section pt-0">
	<div class="container">
    	<div class="row">
        	<div class="col-lg-6">
            	<div class="heading_s1">
                	<h2>Get In touch</h2>
                </div>
                <p class="leads">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim. Nullam id varius nunc id varius nunc.</p>
                <div class="field_form">
                    <form method="post" id="enq">
                        <div class="row">
                            <div class="form-group col-md-6">
                                <input required placeholder="Enter Name *" id="first-name" class="form-control" name="name" type="text">
                             </div>
                            <div class="form-group col-md-6">
                                <input required placeholder="Enter Email *" id="email" class="form-control" name="email" type="email">
                            </div>
                            <div class="form-group col-md-6">
                                <input required placeholder="Enter Phone No. *" id="phone" class="form-control" name="phone">
                            </div>
                            <div class="form-group col-md-6">
                                <input placeholder="Enter Subject" id="subject" class="form-control" name="subject">
                            </div>
                            <div class="form-group col-md-12">
                                <textarea required placeholder="Message *" id="description" class="form-control" name="message" rows="4"></textarea>
                            </div>
                            <div class="col-md-12">
                                <button type="submit" title="Submit Your Message!" class="btn btn-fill-out" id="submitContact" name="submit" value="Submit">Send Message</button>
                            </div>
                            <div class="col-md-12">
                                <div id="alert-msg" class="alert-msg text-center"></div>
                            </div>
                        </div>
                    </form>		
                </div>
            </div>
            <div class="col-lg-6 pt-2 pt-lg-0 mt-4 mt-lg-0">
            	<!--<div id="map" class="contact_map2" data-zoom="12" data-latitude="40.680" data-longitude="-73.945" data-icon="assets/images/marker.png"></div>-->
            </div>
        </div>
    </div>
</div>
<!-- END SECTION CONTACT -->

</div>
<!-- END MAIN CONTENT -->
  <?php include('footer.php') ?>