<?php
session_start();
// Include your database connection file
include('../connection/connection.php');

// Check if the remember-me cookie is set
if (isset($_COOKIE['Emltkn'])) {
    $rememberedToken = mysqli_real_escape_string($conn, $_COOKIE['Emltkn']);

    // Retrieve user with the matching remember-me token
    $sql = "SELECT * FROM admin WHERE remember_me_token = '".$rememberedToken."'";
    $query = mysqli_query($conn, $sql) or die("Query Unsuccessful.");
    $row = mysqli_fetch_array($query);

    if (mysqli_num_rows($query) > 0) {
        // Log in the user using session variables
        $_SESSION['EmailID'] = $row['email'];
        $_SESSION['id'] = $row['id'];
        $_SESSION['name'] = $row['username'];

        // Redirect the user to the desired page after successful login
        header('Location:'.BaseUrl.'admin/dashboard.php');
        exit();
    }
}
?>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title><?= Title ?></title>

        <!-- Google Font: Source Sans Pro -->
        <link rel="stylesheet"
            href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="<?= BaseUrl; ?>admin/plugins/fontawesome-free/css/all.min.css">
        <!-- icheck bootstrap -->
        <link rel="stylesheet" href="<?= BaseUrl; ?>admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="<?= BaseUrl; ?>admin/dist/css/adminlte.min.css">
        <!-- Toastr -->
        <link rel="stylesheet" href="<?= BaseUrl; ?>admin/plugins/toastr/toastr.min.css">
    </head>

    <body class="hold-transition login-page">
        <div class="login-box">
            <!-- /.login-logo -->
            <div class="card card-outline card-primary">
                <div class="card-header text-center">
                    <a href="<?= website; ?>" class="h3">
                        <img src="<?= BaseUrl; ?>assets/images/logo_light.png" class="w-50">
                    </a>
                </div>
                <div class="card-body">
                    <p class="login-box-msg">Sign in to start your session</p>

                    <form id="LoginForm" method="post">
                        <div class="input-group mb-3">
                            <input type="email" class="form-control" id="Email" Name="Email" placeholder="Email">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-envelope"></span>
                                </div>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <input type="password" class="form-control" id="Password" name="Password"
                                placeholder="Password">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-lock"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-8">
                                <div class="">
                                    <input type="checkbox" name="RememberMe" id="RememberMe">
                                    <label for="remember">
                                        Remember Me
                                    </label>
                                </div>
                            </div>
                            <!-- /.col -->
                            <div class="col-4">
                                <button type="submit" class="btn btn-primary btn-block">Sign In</button>
                            </div>
                            <!-- /.col -->
                        </div>
                    </form>

                    <div class="social-auth-links text-center mt-2 mb-3" style="display:none;">
                        <a href="#" class="btn btn-block btn-primary">
                            <i class="fab fa-facebook mr-2"></i> Sign in using Facebook
                        </a>
                        <a href="#" class="btn btn-block btn-danger">
                            <i class="fab fa-google-plus mr-2"></i> Sign in using Google+
                        </a>
                    </div>
                    <!-- /.social-auth-links -->

                   <!-- <p class="mb-1">
                        <a href="<?= BaseUrl ?>admin/forgot-password.php">I forgot my password</a>
                    </p>
                    <p class="mb-0">
                        <a href="<?= BaseUrl ?>admin/register.php" class="text-center">Register a new membership</a>
                    </p>  -->
                </div>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->
        </div>
        <!-- /.login-box -->

        <!-- jQuery -->
        <script src="<?= BaseUrl; ?>admin/plugins/jquery/jquery.min.js"></script>
        <!-- Bootstrap 4 -->
        <script src="<?= BaseUrl; ?>admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- AdminLTE App -->
        <script src="<?= BaseUrl; ?>admin/dist/js/adminlte.min.js"></script>
        <!-- jquery-validation -->
        <script src="<?= BaseUrl; ?>admin/plugins/jquery-validation/jquery.validate.min.js"></script>
        <script src="<?= BaseUrl; ?>admin/plugins/jquery-validation/additional-methods.min.js"></script>
        <!-- Toastr -->
        <script src="<?= BaseUrl; ?>admin/plugins/toastr/toastr.min.js"></script>
        <!-- Custom Script -->
        <script src="<?= BaseUrl; ?>admin/js/login.js"></script>
    </body>

</html>