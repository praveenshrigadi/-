 <!-- Navbar -->
 <nav class="main-header navbar navbar-expand navbar-white navbar-light">

     <!-- Left navbar links -->
     <ul class="navbar-nav">
         <li class="nav-item">
             <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
         </li>
     </ul>


     <ul class="navbar-nav ml-auto">
         <li class="nav-item">
             <!-- Brand Logo -->
             <a href="<?= BaseUrl; ?>" class="brand-link float-left">
                 <img src="<?= BaseUrl; ?>assets/images/logo_light.png" alt="<?= AppName; ?>" class="brand-image"
                     style="opacity: .8">
             </a>
         </li>
     </ul>



 </nav>
 <!-- /.navbar -->

 <!-- Main Sidebar Container -->
 <aside class="main-sidebar sidebar-dark-primary elevation-4">
     <!-- Sidebar -->
     <div class="sidebar">
         <!-- Sidebar user panel (optional) -->
         <div class="user-panel mt-3 pb-3 mb-3 d-flex">
             <div class="image">
                 <img src="<?= BaseUrl; ?>admin/dist/img/avatar4.png" class="img-circle elevation-2" alt="User Image">
             </div>
             <div class="info">
                 <a href="#" class="d-block"><?php echo $_SESSION['name']; ?></a>
             </div>
         </div>

         <!-- Sidebar Menu -->
         <nav class="mt-2">
             <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                 data-accordion="false">
			
 <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
                Products
				 <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="<?= BaseUrl ?>admin/product.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Add Product</p>
                </a>
              </li>
              <li class="nav-item">
                 <a href="<?= BaseUrl ?>admin/main-category.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Main Category</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="<?= BaseUrl ?>admin/sub-category.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Sub Category</p>
                </a>
              </li>
              <li class="nav-item">
               <a href="<?= BaseUrl ?>admin/2-sub-category.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>2nd Sub Categrory</p>
                </a>
              </li>
              <li class="nav-item">
               <a href="<?= BaseUrl ?>admin/options.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Making Options</p>
                </a>
              </li>
            </ul>
          </li>

			
 <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
                Blogs
				 <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="<?= BaseUrl ?>admin/blog.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Add Blogs</p>
                </a>
              </li>
              <li class="nav-item">
                 <a href="<?= BaseUrl ?>admin/blog-category.php" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Blogs Category</p>
                </a>
              </li>
            
            </ul>
          </li>
              

 <li class="nav-item">
                 <a href="<?= BaseUrl ?>admin/order-details.php" class="nav-link">
                <i class="nav-icon fas fa-copy"></i>
                  <p>Order Details</p>
                </a>
              </li>


 <li class="nav-item">
                 <a href="<?= BaseUrl ?>admin/user-details.php" class="nav-link">
                <i class="nav-icon fas fa-copy"></i>
                  <p>User Details</p>
                </a>
              </li>

 <li class="nav-item">
                 <a href="<?= BaseUrl ?>admin/icons.php" class="nav-link">
                  <i class="nav-icon fas fa-copy"></i>
                  <p>Icon List</p>
                </a>
              </li>


 <li class="nav-item">
                 <a href="<?= BaseUrl ?>admin/zone.php" class="nav-link">
               <i class="nav-icon fas fa-copy"></i>
                  <p>Zone</p>
                </a>
              </li>


 <li class="nav-item">
                 <a href="<?= BaseUrl ?>admin/country.php" class="nav-link">
                <i class="nav-icon fas fa-copy"></i>
                  <p>Country</p>
                </a>
              </li>


 <li class="nav-item">
                 <a href="<?= BaseUrl ?>admin/enquiry.php" class="nav-link">
                 <i class="nav-icon fas fa-copy"></i>
                  <p>Enquiry Users</p>
                </a>
              </li>

<!-- <li class="nav-item">
                 <a href="<?= BaseUrl ?>admin/currency.php" class="nav-link">
                <i class="nav-icon fas fa-copy"></i>
                  <p>Currency</p>
                </a>
              </li> -->
			  
			   <li class="nav-item">
                 <a href="<?= BaseUrl ?>admin/script/logout.php" class="nav-link">
                <i class="nav-icon fas fa-copy"></i>
                  <p>Logout</p>
                </a>
              </li>
	
             </ul>
         </nav>
         <!-- /.sidebar-menu -->
     </div>
     <!-- /.sidebar -->
 </aside>