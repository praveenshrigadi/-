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
                                <h1 class="m-0">Dashboard</h1>
                            </div><!-- /.col -->
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item">Dashboard</li>
                                    <li class="breadcrumb-item active">Information</li>
                                </ol>
                            </div><!-- /.col -->
                        </div><!-- /.row -->
                    </div><!-- /.container-fluid -->
                </div>
                <!-- /.content-header -->

                <!-- Main content -->
                <div class="row m-2">
                    <div class="col-sm-5 col-12">
                        <div class="row m-1 p-2">
                            
                        </div>
                    </div>
                   
                </div>

                <!-- /.container-fluid -->

            </div>
            <?php include('footer.php'); ?>
        </div>

        <?php include('js.php'); ?>


        <!-- AdminLTE -->
        <script src="<?= BaseUrl; ?>Client/js/smtp.js"></script>

    </body>

</html>