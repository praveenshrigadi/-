<?php 
include('header.php'); 
if(!empty($_GET['id'])){
	$sql= "select * from product_info where Product_ID = '".$_GET['id']."'";
	 $query = mysqli_query($conn, $sql) or die("Query Unsuccessful.");
	$row = mysqli_fetch_assoc($query);
}else{
	header('Location:'.BaseUrl.'/admin/product.php');
}

?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title><?= AppName; ?></title>
        <?php include('css.php'); ?>
    </head>
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
                                <h1 class="m-0">Add Option</h1>
                            </div><!-- /.col -->
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item">Home</li>
                                    <li class="breadcrumb-item active">Add Options</li>
                                </ol>
                            </div><!-- /.col -->
                        </div><!-- /.row -->
                    </div><!-- /.container-fluid -->
                </div>
                <!-- /.content-header -->
                <!-- Main content -->
                <div class="row m-2">
                    <div class="col-sm-8 col-12">
                        <div class="row card m-1 p-2">
                            <form id="OptionForm">
                                <div class="row">
								
								<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="pid" class="col-md-12 col-12">Product ID<span class="text-danger">*</span></label>
                                        <input type="text" name="pid" class="form-control" value="<?= (!empty($row['Product_ID'])) ? $row['Product_ID'] : '' ?>"  readonly placeholder="Product ID">
                                        
								</div>
								<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="name" class="col-md-12 col-12">Product Name<span class="text-danger">*</span></label>
                                        <input type="text" name="name" class="form-control" value="<?= (!empty($row['Product_Name'])) ? $row['Product_Name'] : '' ?>"  readonly placeholder="Product Name">
                                        
                                        
								</div>
									<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="optionname" class="col-md-12 col-12">Option Name<span class="text-danger">*</span></label>
                                        <input type="text" name="optionname"  class="form-control" placeholder="Option Name">
								</div>
								<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="description" class="col-md-12 col-12">Description <span class="text-danger">*</span></label>
										<textarea class="form-control" name="description"></textarea>
									</div>
									<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="INR" class="col-md-12 col-12">INR Price<span class="text-danger">*</span></label>
										 <input type="text" name="INR"  class="form-control" placeholder="INR Price">
									</div>
									
									<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="USD" class="col-md-12 col-12">USD Price<span class="text-danger">*</span></label>
										 <input type="text" name="USD" class="form-control" placeholder="USD Price">
									</div>
                                  <div class="input-group col-md-6 col-6 mb-3">
                                        <button type="submit" id="submit"
                                            class="btn btn-block btn-success btn-outline-success text-white">Submit</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- /.container-fluid -->
            </div>
            <?php include('footer.php'); ?>
        </div>
		
        <?php include('js.php'); ?>
        
		
		<!-- AdminLTE -->
        <script src="<?= BaseUrl; ?>admin/js/options.js"></script>
    </body>
</html>