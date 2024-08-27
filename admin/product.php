<?php 
include('header.php'); 
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
                                <h1 class="m-0">Product List</h1>
                            </div><!-- /.col -->
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item">Home</li>
                                    <li class="breadcrumb-item active">Product List</li>
                                </ol>
                            </div><!-- /.col -->
                        </div><!-- /.row -->
                    </div><!-- /.container-fluid -->
                </div>
                <!-- /.content-header -->
                <!-- Main content -->
                <div class="row m-2">
                    <div class="col-sm-12 col-12 card p-2">
					<div><span class="float-right m-2 btn btn-success"><a href="<?= BaseUrl ?>admin/add-product.php" class="text-white">Add Product</a></span></div>
                        <table id="Product_List" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                                <th>Sr No</th>
                                                <th>Product Name</th>
                                                <th>Category</th>
                                                <th>Status</th>
                                                <th>Featured</th>
                                                <th>Sales</th>
                                                <th>Deals</th>
                                                <th>options</th>
                                                <th><i class="fa fa-edit" aria-hidden="true" style="color:primary"></i></th>
                                                <th><i class="fa fa-image" aria-hidden="true" style="color:green"></i></th>
                                                <th><i class="fa fa-trash" aria-hidden="true" style="color:red"></i></th>
                                            </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
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