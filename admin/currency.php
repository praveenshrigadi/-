<?php 
include('header.php');
if(!empty($_GET['id'])){
	$sql="select * from Currency where id = '".$_GET['id']."'";
	$result = mysqli_query($conn,$sql);
	$row = mysqli_fetch_assoc($result);
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
                                <h1 class="m-0">Add Currency</h1>
                            </div><!-- /.col -->
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item">Home</li>
                                    <li class="breadcrumb-item active">Add Currency</li>
                                </ol>
                            </div><!-- /.col -->
                        </div><!-- /.row -->
                    </div><!-- /.container-fluid -->
                </div>
                <!-- /.content-header -->
                <!-- Main content -->
                <div class="row m-2">
                    <div class="col-sm-5 col-12">
                        <div class="row card m-1 p-2">
                            <form id="CurrForm">
                                <div class="row">
								<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="name" class="col-md-12 col-12">Currency Name<span class="text-danger"></span></label>
                                        <input type="text" value="<?= (!empty($row['Currency_Name'])) ? $row['Currency_Name']:''?>" name="name" class="form-control" placeholder="i.e INR, USD, GBP">
										<input type="hidden" value="<?= (!empty($row['id'])) ? $row['id']:''?>" name="id" class="form-control" placeholder="i.e INR, USD, GBP">
                                    </div>
									
									<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="amount" class="col-md-12 col-12">Currency Amount for 1 INR<span class="text-danger"></span></label>
                                        <input type="text" value="<?= (!empty($row['Amount'])) ? $row['Amount']:''?>" name="amount" class="form-control" placeholder="1 INR = 0.0126 USD">
                                    </div>
                                 
                                  <div class="input-group col-md-6 col-6 mb-3">
                                        <button type="submit" id="submit"
                                            class="btn btn-block btn-success btn-outline-success text-white">Submit</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-sm-7 col-12 card p-2">
                        <table id="currency_List" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                                <th>Sr No</th>
                                                <th>Symbol</th>
                                                <th>Amount</th>
                                                 <th><i class="fa fa-edit" aria-hidden="true" style="color:primary"></i></th>
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
        <script src="<?= BaseUrl; ?>admin/js/Currency.js"></script>
    </body>
</html>