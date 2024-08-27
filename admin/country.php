<?php 
include('header.php');
if(!empty($_GET['id'])){
	$sql="select * from country_fridget where id = '".$_GET['id']."'";
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
                                <h1 class="m-0">Add Country</h1>
                            </div><!-- /.col -->
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item">Home</li>
                                    <li class="breadcrumb-item active">Add Country</li>
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
                            <form id="CountryForm">
                                <div class="row">
<div class="input-group col-md-12 col-12 mb-3">
<label for="shortname" class="col-md-12 col-12">Short Name<span class="text-danger"></span></label>
<input type="text" value="<?= (!empty($row['sortname'])) ? $row['sortname']:''?>" name="shortname" class="form-control" placeholder="Short Name i.e UK,IN">
<input type="hidden" value="<?= (!empty($row['id'])) ? $row['id']:''?>" name="id" class="form-control" placeholder="">
</div>

<div class="input-group col-md-12 col-12 mb-3">
<label for="shortcode" class="col-md-12 col-12">Country Name<span class="text-danger"></span></label>
<input type="text" value="<?= (!empty($row['name'])) ? $row['name']:''?>" name="shortcode" class="form-control" placeholder="Country Name">
</div>

<div class="input-group col-md-12 col-12 mb-3">
<label for="Zone" class="col-md-12 col-12">Zone<span class="text-danger"></span></label>
<select class="form-control" name="Zone">
<option></option>
<?php 
$sql="select * from zoneeditor group by Zone_name order by Zone_name";
$result = mysqli_query($conn,$sql);
while($row1 = mysqli_fetch_assoc($result)){
?>
<option value="<?php echo $row1['Zone_name'] ?>" <?= ($row1['id']==$row['zone']) ?'selected' : '' ?>><?php echo $row1['Zone_name'] ?></option>
<?php } ?>
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
                    <div class="col-sm-7 col-12 card p-2">
                        <table id="Country_List" class="table table-bordered table-striped">
                            <thead>
                                <tr>
											   <th>No</th>
                                                <th>Code</th>
                                                <th>Name</th>
                                                <th>Zone</th>
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
        <script src="<?= BaseUrl; ?>admin/js/country.js"></script>
    </body>
</html>