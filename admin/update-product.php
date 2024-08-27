<?php 
include('header.php'); 

if(!empty($_GET['id'])){
	$sql= "select * from product_info where Product_ID = '".$_GET['id']."'";
	 $query = mysqli_query($conn, $sql) or die("Query Unsuccessful.");
	$row = mysqli_fetch_assoc($query);
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
                                <h1 class="m-0">Update Product</h1>
                            </div><!-- /.col -->
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item">Home</li>
                                    <li class="breadcrumb-item active">Update Product</li>
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
                            <form id="updateProductForm">
                                <div class="row">
								<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="name" class="col-md-12 col-12">Product Name<span class="text-danger"></span></label>
                                        <input type="text" name="name" class="form-control" value="<?= (!empty($row['Product_Name'])) ? $row['Product_Name'] : '' ?>" placeholder="Product Name">
										 <input type="hidden" name="id" class="form-control" value="<?= (!empty($row['Product_ID'])) ? $row['Product_ID'] : '' ?>" placeholder="Product ID">
								</div>
									<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="code" class="col-md-12 col-12">Product Code<span class="text-danger"></span></label>
                                        <input type="text" name="code" value="<?= (!empty($row['Product_Code'])) ? $row['Product_Code'] : '' ?>" class="form-control" placeholder="Product Code">
								</div>
								<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="meta_description" class="col-md-12 col-12">Meta Description <span class="text-danger"></span></label>
										<textarea class="form-control" name="meta_description"><?= (!empty($row['meta_description'])) ? $row['meta_description'] : '' ?></textarea>
									</div>
								<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="meta_title" class="col-md-12 col-12">Meta Title <span class="text-danger"></span></label>
										<textarea class="form-control" name="meta_title"><?= (!empty($row['meta_title'])) ? $row['meta_title'] : '' ?></textarea>
									</div>
									
									<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="meta_keywords" class="col-md-12 col-12">Meta Keywords <span class="text-danger"></span></label>
										<textarea class="form-control" name="meta_keywords"><?= (!empty($row['meta_keyword'])) ? $row['meta_keyword'] : '' ?></textarea>
									</div>
									<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="INR" class="col-md-12 col-12">INR Price<span class="text-danger"></span></label>
										 <input type="text" name="INR" value="<?= (!empty($row['Product_Price'])) ? $row['Product_Price'] : '' ?>" class="form-control" placeholder="INR Price">
									</div>
									
									<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="USD" class="col-md-12 col-12">USD Price<span class="text-danger"></span></label>
										 <input type="text" value="<?= (!empty($row['Product_USD'])) ? $row['Product_USD'] : '' ?>" name="USD" class="form-control" placeholder="USD Price">
									</div>
									
									<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="weight" class="col-md-12 col-12">Weight (In grams)<span class="text-danger"></span></label>
										 <input type="text" value="<?= (!empty($row['Product_Weight'])) ? $row['Product_Weight'] : '' ?>" name="weight" class="form-control" placeholder="Weight (In grams) i.e 500">
									</div>
									
									<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="discount" class="col-md-12 col-12">Discount<span class="text-danger"></span></label>
										 <input type="text" value="<?= (!empty($row['Product_Discount'])) ? $row['Product_Discount'] : '' ?>" name="discount" class="form-control" placeholder="Discount">
									</div>
									
									<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="qty" class="col-md-12 col-12">QTY<span class="text-danger"></span></label>
										 <input type="text" value="<?= (!empty($row['Product_Qty'])) ? $row['Product_Qty'] : '' ?>" name="qty" class="form-control" placeholder="QTY">
									</div>
									
									<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="sku" class="col-md-12 col-12">SKU No<span class="text-danger"></span></label>
										 <input type="text" name="sku" value="<?= (!empty($row['Product_SKU'])) ? $row['Product_SKU'] : '' ?>" class="form-control" placeholder="SKU Code">
									</div>
									<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="MainCategory" class="col-md-12 col-12">Main Category<span class="text-danger"></span></label>
                                       <select class="form-control" name="MainCategory"  id="MainCategoryPost">
									   <option></option>
									   <?php
									   $sql="select * from category";
									   $query = mysqli_query($conn,$sql);
										while($row2 = mysqli_fetch_assoc($query))									   
									   {									   
									   ?>
									   <option value="<?= $row2['category_id']; ?>" <?= ($row2['category_id'] === $row['Product_Main_Category'] ) ? 'selected' : '' ?> ><?= $row2['name']; ?></option>
									   <?php } ?>
										</select>
                                    </div>
									
									<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="SubCategory" class="col-md-12 col-12">Sub Category<span class="text-danger"></span></label>
                                       <select class="form-control" name="SubCategory"  id="SubCategoryPost">
									   <option></option>
									   <?php
									   $sql="select * from sub_category";
									   $query = mysqli_query($conn,$sql);
										while($row1 = mysqli_fetch_assoc($query))									   
									   {									   
									   ?>
									   <option value="<?= $row1['id']; ?>" <?= ($row1['id'] === $row['Product_Sub_Category'] ) ? 'selected' : '' ?> ><?= $row1['sub_category']; ?></option>
									   <?php } ?>
										</select>
                                    </div>
									
									<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="2ndSubCategory" class="col-md-12 col-12">2nd Sub Category<span class="text-danger"></span></label>
                                       <select class="form-control" name="sndSubCategory"  id="2ndSubCategoryPost">
									  <option></option>
									  <?php
									   $sql="select * from 2nd_sub_category";
									   $query = mysqli_query($conn,$sql);
										while($row3 = mysqli_fetch_assoc($query))									   
									   {									   
									   ?>
									   <option value="<?= $row3['id']; ?>" <?= ($row3['id'] === $row['Product_Sub_Sub_Category'] ) ? 'selected' : '' ?> ><?= $row3['sub_sub_categroy']; ?></option>
									   <?php } ?>
										</select>
                                    </div>
									<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="description" class="col-md-12 col-12">Description<span class="text-danger"></span></label>
										<textarea class="form-control" name="description" id="description"><?= (!empty($row['Product_Description'])) ? $row['Product_Description'] : '' ?></textarea>
									</div>
									<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="add_information" class="col-md-12 col-12">Additional Information<span class="text-danger"></span></label>
										<textarea class="form-control" name="add_information" id="add_information"><?= (!empty($row['Product_Additional_info'])) ? $row['Product_Additional_info'] : '' ?></textarea>
									</div>
									<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="short_description" class="col-md-12 col-12">Short Description<span class="text-danger"></span></label>
										<textarea class="form-control" name="short_description" id="short_description"><?= (!empty($row['Product_Info'])) ? $row['Product_Info'] : '' ?></textarea>
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
        <script src="<?= BaseUrl; ?>admin/js/updateproduct.js"></script>
    </body>
</html>