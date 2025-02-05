<?php 
include('header.php'); 
if(!empty($_GET['id'])){
	$sql= "select * from blog_page where id = '".$_GET['id']."'";
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
                                <h1 class="m-0">Add Blog</h1>
                            </div><!-- /.col -->
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item">Home</li>
                                    <li class="breadcrumb-item active">Add Blog</li>
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
                            <form id="UpdateBlogForm">
                                <div class="row">
								<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="name" class="col-md-12 col-12">Title<span class="text-danger"></span></label>
                                        <input type="text" name="name" value="<?= (!empty($row['name_title'])) ? $row['name_title'] : '' ?>" class="form-control" placeholder="Blog Title">
										 <input type="hidden" name="id" value="<?= (!empty($row['id'])) ? $row['id'] : '' ?>" class="form-control" placeholder="Blog ID">
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
                                        <label for="MainCategory" class="col-md-12 col-12">Blog Category<span class="text-danger"></span></label>
                                       <select class="form-control" name="BlogCategory"  id="BlogCategoryPost">
									   <option></option>
	<?php
	$sql= "select * from blog_category";
	$result = mysqli_query($conn,$sql);
	while($row1 = mysqli_fetch_assoc($result)){
	?>
	<option value="<?=$row1['id']?>" <?= ($row['Blog_category'] == $row1['id']) ? 'selected' : '' ?>><?=$row1['Category']?></option>
	<?php 
	}
	?>
										</select>
                                    </div>
									
									<div class="input-group col-md-12 col-12 mb-3">
									 <label for="Description" class="col-md-12 col-12">Image<span
                                                class="text-danger"></span></label>
                      <div class="custom-file">
                        <input type="file" value="<?= (!empty($row['image'])) ? $row['image'] : '' ?>" class="custom-file-input" name="image" id="image">
                        <label class="custom-file-label" for="image">Choose file</label>
                      </div>
                    </div>
									
									<div class="input-group col-md-12 col-12 mb-3">
                                        <label for="description" class="col-md-12 col-12">Body<span class="text-danger"></span></label>
										<textarea class="form-control" name="description" id="description"><?= (!empty($row['content'])) ? $row['content'] : '' ?></textarea>
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
        <script src="<?= BaseUrl; ?>admin/js/updateblog.js"></script>
    </body>
</html>