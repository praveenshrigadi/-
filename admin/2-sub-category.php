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
                                <h1 class="m-0">2nd Sub Category</h1>
                            </div><!-- /.col -->
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item">Home</li>
                                    <li class="breadcrumb-item active">2nd Sub Category</li>
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
                            <form id="2nSubCatForm">
                                <div class="row">
								<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="MainCategory" class="col-md-12 col-12">Main Category<span class="text-danger">*</span></label>
                                       <select class="form-control" name="MainCategory"  id="MainCategoryPost" required>
									   <option></option>
										</select>
                                    </div>
									
									<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="SubCategory" class="col-md-12 col-12">Sub Category<span class="text-danger">*</span></label>
                                       <select class="form-control" name="SubCategory"  id="SubCategoryPost" required>
										</select>
                                    </div>
								
								<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="name" class="col-md-12 col-12">Name<span class="text-danger">*</span></label>
                                        <input type="text" name="name" class="form-control" placeholder="Name">
                                    </div>
                                    <div class="input-group col-md-12 col-12 mb-3">
                                        <label for="Meta_Title" class="col-md-12 col-12">Meta Title<span class="text-danger">*</span></label>
                                        <input type="text" name="Meta_Title" class="form-control" placeholder="Meta Title">
                                    </div>
                                    <div class="input-group col-md-12 col-12 mb-3">
                                        <label for="Meta_Description" class="col-md-12 col-12">Meta Description<span class="text-danger">*</span></label>
												<textarea name="Meta_Description" class="form-control" placeholder="Meta Description"></textarea>
                                    </div>
                                    <div class="input-group col-md-12 col-12 mb-3">
                                        <label for="Meta_Keywords" class="col-md-12 col-12">Meta Keywords<span class="text-danger"></span></label>
                                        <input type="text" name="Meta_Keywords" class="form-control" placeholder="Meta Keywords">
                                    </div>
									<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="Description" class="col-md-12 col-12">Description<span class="text-danger">*</span></label>
                                       <textarea name="Description" class="form-control" placeholder="Description"></textarea>
                                    </div>
									<div class="input-group col-md-12 col-12 mb-3">
									 <label for="Description" class="col-md-12 col-12">Image<span
                                                class="text-danger">*</span></label>
                      <div class="custom-file">
                        <input type="file" class="custom-file-input" name="image" id="image">
                        <label class="custom-file-label" for="image">Choose file</label>
                      </div>
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
                        <table id="category_List" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                                <th>Sr No</th>
                                                <th>Name</th>
                                                <th><i class="fa fa-trash" aria-hidden="true" style="color:red"></i></th>
                                                <th>Status</th>
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
        <script src="<?= BaseUrl; ?>admin/js/2ndSubCategory.js"></script>
    </body>
</html>