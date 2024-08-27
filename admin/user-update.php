<?php 
include('header.php'); 
if(!empty($_GET['id'])){
	$sql= "select * from webuser where id = '".$_GET['id']."'";
	 $query = mysqli_query($conn, $sql) or die("Query Unsuccessful.");
	$row = mysqli_fetch_assoc($query);
}else{
    header('Location:user-details.php');
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
                                <h1 class="m-0">User</h1>
                            </div><!-- /.col -->
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item">User</li>
                                    <li class="breadcrumb-item active">Update</li>
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
                            <form id="UpdateUser">
                                <div class="row">
								<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="name" class="col-md-12 col-12">Title<span class="text-danger"></span></label>
                                        <input type="text" name="name" value="<?= (!empty($row['name'])) ? $row['name'] : '' ?>" class="form-control" placeholder="Name">
										 <input type="hidden" name="id" value="<?= (!empty($row['id'])) ? $row['id'] : '' ?>" class="form-control" placeholder="ID">
								</div>
								<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="email" class="col-md-12 col-12">Email ID<span class="text-danger"></span></label>
                                        <input type="email" name="email" value="<?= (!empty($row['email'])) ? $row['email'] : '' ?>" class="form-control" placeholder="EmailID">
								</div>
									<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="password" class="col-md-12 col-12">Password<span class="text-danger"></span></label>
                                        <input type="password" name="password" value="<?= (!empty($row['password'])) ? $row['password'] : '' ?>" class="form-control" placeholder="Password">
								</div>

									<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="status" class="col-md-12 col-12">Select Status<span class="text-danger"></span></label>
                                       <select class="form-control" name="status">
									   <option value="">Select Status</option>
									   <option <?= ($row['status'] === '1' ) ? 'selected' :''; ?> value="1">Active</option>
									   <option <?= ($row['status'] === '0' ) ? 'selected' :''; ?> value="0">Inactive</option>
										</select>
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
        <script src="<?= BaseUrl; ?>admin/js/user.js"></script>
    </body>
</html>