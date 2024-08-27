<?php 
include('header.php');
if(!empty($_GET['id'])){
	$sql="select * from zoneeditor where id = '".$_GET['id']."'";
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
                                <h1 class="m-0">Add Zone</h1>
                            </div><!-- /.col -->
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item">Home</li>
                                    <li class="breadcrumb-item active">Add Zone</li>
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
                            <form id="ZoneForm">
                                <div class="row">
<div class="input-group col-md-12 col-12 mb-3">
<label for="name" class="col-md-12 col-12">Zone Name<span class="text-danger"></span></label>
<input type="text" value="<?= (!empty($row['Zone_name'])) ? $row['Zone_name']:''?>" name="name" class="form-control" placeholder="Zone Name">
<input type="hidden" value="<?= (!empty($row['id'])) ? $row['id']:''?>" name="id" class="form-control" placeholder="i.e INR, USD, GBP">
</div>

<div class="input-group col-md-12 col-12 mb-3">
<label for="code" class="col-md-12 col-12">Zone Code<span class="text-danger"></span></label>
<input type="text" value="<?= (!empty($row['Zone_Code'])) ? $row['Zone_Code']:''?>" name="code" class="form-control" placeholder="Zone Code">
</div>

<div class="input-group col-md-12 col-12 mb-3">
<label for="weight" class="col-md-12 col-12">Weight in grams<span class="text-danger"></span></label>
<input type="text" value="<?= (!empty($row['Weight'])) ? $row['Weight']:''?>" name="weight" class="form-control" placeholder="Weight in grams">
</div>

<div class="input-group col-md-12 col-12 mb-3">
<label for="INR" class="col-md-12 col-12">INR Price<span class="text-danger"></span></label>
<input type="text" value="<?= (!empty($row['INR_Price'])) ? $row['INR_Price']:''?>" name="INR" class="form-control" placeholder="INR Price">
</div>

<div class="input-group col-md-12 col-12 mb-3">
<label for="USD" class="col-md-12 col-12">USD Price<span class="text-danger"></span></label>
<input type="text" value="<?= (!empty($row['USD_Price'])) ? $row['USD_Price']:''?>" name="USD" class="form-control" placeholder="USD Price">
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
                        <table id="Zone_List" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                                 <th>No</th>
                                                <th>Name</th>
                                                <th>Code</th>
                                                <th>Weight</th>
                                                <th>INR </th>
                                                <th>USD </th>
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
        <script src="<?= BaseUrl; ?>admin/js/zone.js"></script>
    </body>
</html>