<?php 
include('header.php');
$sql="select * from icons order by id desc";
$result = mysqli_query($conn,$sql) or die("Query Failed."); 
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title><?= AppName; ?></title>
        <?php include('css.php'); ?>
          <!--[if lt IE 8]><!-->
<link rel="stylesheet" href="<?= BaseUrl; ?>assets/css/ramakrshna.css">
<!--<![endif]-->
    </head>
	<script>
function copyToClipboard(element) {
  var $temp = $("<input>");
  $("body").append($temp);
  $temp.val($(element).text()).select();
  document.execCommand("copy");
  $temp.remove();

  // Show a toaster notification
  toastr.success('Data has been copied to the clipboard.', $temp.val());
}
</script>
    <body class="hold-transition sidebar-mini">
        <div class="wrapper">
            <?php include('navigation.php'); ?>
            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <div class="content-header">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h1 class="m-0">Icon List</h1>
                            </div><!-- /.col -->
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item">Home</li>
                                    <li class="breadcrumb-item active">Icon List</li>
                                </ol>
                            </div><!-- /.col -->
                        </div><!-- /.row -->
                    </div><!-- /.container-fluid -->
                </div>
                <!-- /.content-header -->
                <!-- Main content -->
				<div class="col-12">
                <div class="row">
                    
						<?php
                    $i=0;
                    while($row = mysqli_fetch_assoc($result)){
                        $a = ++$i;
                    ?>
						
						<div class="col-md-3 col-sm-6 col-12">
            <div class="info-box">
              <span class="info-box-icon"><i class="<?php echo $row['classname'] ?>"></i></span>

              <div class="info-box-content">
                <span class="info-box-text" id="copy<?php echo $a; ?>"><?php echo $row['classname'] ?></span>
                <span class="info-box-number"><button class="btn btn-block btn-primary" onclick="copyToClipboard('#copy<?php echo $a ?>')">Copy</button></span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
		  
		  <?php } ?>
					
					
					
                    </div>
                </div>
                <!-- /.container-fluid -->
            </div>
            <?php include('footer.php'); ?>
        </div>
		
        <?php include('js.php'); ?>
        
		
		<!-- AdminLTE -->
        <script src="<?= BaseUrl; ?>admin/js/product.js"></script>
    </body>
</html>