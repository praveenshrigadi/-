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
						<div class="row d-flex">
					<span id="orderstatus" class="badge badge-danger px-2 m-1 cursor-pointer" data-status="pending">Pending</span>
					<span id="orderstatus" class="badge badge-danger px-2 m-1 cursor-pointer" data-status="confirm">Confirm</span>
					<span id="orderstatus" class="badge badge-danger px-2 m-1 cursor-pointer" data-status="process">Process</span>
					<span id="orderstatus" class="badge badge-danger px-2 m-1 cursor-pointer" data-status="delivered">Delivered</span>
					<span id="orderstatus" class="badge badge-danger px-2 m-1 cursor-pointer" data-status="cancelled">Cancelled</span>
						</div>
                        <table id="Order_List" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                                <th>Sr No</th>
                                                <th>Name</th>
                                                <th>Order No</th>
                                                <th>Date</th>
                                                <th>Status</th>
												<th>Update Status</th>
                                                <th>Pay. Status</th>
                                                <th>Action</th>
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
        <script src="<?= BaseUrl; ?>admin/js/order.js"></script>
    </body>
</html>