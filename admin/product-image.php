<?php 
include('header.php'); 
$sql="select * from category";
$result = mysqli_query($conn,$sql) or die("Query Failed.");
$sql1="select * from product_info where Product_ID = '".$_GET['id']."'";
$result1 = mysqli_query($conn,$sql1) or die("Query Failed.");
$row1 = mysqli_fetch_assoc($result1);
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
                                <h1 class="m-0">Add Product Image</h1>
                            </div><!-- /.col -->
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item">Home</li>
                                    <li class="breadcrumb-item active">Add Product Image</li>
                                </ol>
                            </div><!-- /.col -->
                        </div><!-- /.row -->
                    </div><!-- /.container-fluid -->
                </div>
                <!-- /.content-header -->
                <!-- Main content -->
                <div class="row m-2">
                    <div class="col-sm-12 col-12">
                        <div class="row card m-1 p-2">
                             <form id="ImageForm" enctype="multipart/form-data">
                                <div class="row">
									<div class="input-group col-md-12 col-12 mb-3">
									 <label for="Description" class="col-md-12 col-12">Image<span
                                                class="text-danger"></span></label>
                      <div class="custom-file">
                        <input type="file" class="custom-file-input" multiple="multiple" accept=".png, .jpg, .gif" name="Product_IMG[]" id="Product_IMG">
                        <label class="custom-file-label" for="image">Choose file</label>
                      </div>
					  <input type="hidden" name="id" class="form-control" value="<?= (!empty($_GET['id'])) ? $_GET['id'] : '' ?>" placeholder="ID">
                    </div>
                                  <div class="input-group col-md-4 col-4 mb-3">
                                        <button type="submit" id="submit"
                                            class="btn btn-block btn-success btn-outline-success text-white">Submit</button>
                                    </div>
                                </div>
                            </form>
							<hr>
							<div class="input-group col-md-12 col-12 mb-3">
									 <label for="name" class="col-md-12 col-12">Product Name<span class="text-danger"></span></label>
								<input type="text" readonly name="name" class="form-control" value="<?= (!empty($row1['Product_Name'])) ? $row1['Product_Name'] : '' ?>" placeholder="Name">
								
                    </div>
                        </div>
                    </div>
<div class="col-12">
    <div class="row m-1 p-2">
        <?php
        $sql_img="SELECT * FROM product_img where product_id='".$_GET['id']."' order by seq";
        $result_img = mysqli_query($conn,$sql_img) or die("Query Failed.");
        $num=mysqli_num_rows($result_img);
        while($row_img = mysqli_fetch_assoc($result_img)){
        ?>
        <div class="col-sm-3">
                <div class="card">
						<span class="btn position-absolute" id="del_img" data-id="<?php echo $row_img['id']; ?>"><i class="fas fa-times text-danger"></i></span>
                            
<img src="product_image_thumb/<?php echo $row_img['product_img_name']; ?>">
<div class="dropdown_seq" style=" position: absolute;    right: 5px;    top: 5px;    background: white;">
<select name="imgno" class="sel" data-id="<?php echo $row_img['id']; ?>">
    <option value="<?php echo $row_img['seq']; ?>"><?php echo $row_img['seq']; ?></option>
<?php 
for($i=1; $i<=$num; $i++)
{
    echo "<option value=".$i.">".$i."</option>";
}
?>
</select>
</div>
<span class="alert alert-success" id="ImgMsg<?php echo $row_img['id']; ?>" style="margin:0px;padding:2px;display:none"></span>
                        </div>
                    </div>
        <?php
        }
        ?>
    </div>
</div>

                </div>
                <!-- /.container-fluid -->
            </div>
            <?php include('footer.php'); ?>
        </div>
		
        <?php include('js.php'); ?>
        
		
		<!-- AdminLTE -->
        <script src="<?= BaseUrl; ?>admin/js/productimage.js"></script>
    </body>
</html>