<?php include('connection.php'); 

if(!isset($_SESSION["ID"])){header('Location: login.php'); exit();} $usersessionis=$_SESSION["ID"];
?>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Favicon Icon -->
<link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.ico">
<!-- Author Name --->
<meta content="Anurag" name="author">
<!-- View Port -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Meta Conical -->
<link rel="canonical" href="<?php echo Conical ?>" />
<!-- Meta Description -->
<meta name="description" content="<?php echo Description ?>">
<!-- Meta Keywords -->
<meta name="keywords" content="<?php echo Keywords ?>">
<!-- Meta Title -->
<meta name="title" content="<?php echo Title ?>">
<!-- SITE TITLE -->
<title><?php echo Title ?></title>
<!-- Css File --->
<?php include('css.php') ;?>
</head>
<!-- LOADER -->
<div class="preloader">
    <div class="lds-ellipsis">
        <span></span>
        <span></span>
        <span></span>
    </div>
</div>
<!-- END LOADER -->
<body>
<!-- Navigation -->
<?php include('navigation.php'); ?>
<?php include('breadcrumbs.php'); ?>

<!-- START MAIN CONTENT -->
<div class="main_content">
<!-- START SECTION SHOP -->
<div class="section">
	<div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-4">
                <div class="dashboard_menu">
                    <ul class="nav nav-tabs flex-column" role="tablist">
                      <li class="nav-item">
                        <a class="nav-link active" id="dashboard-tab" data-toggle="tab" href="#dashboard" role="tab" aria-controls="dashboard" aria-selected="false"><i class="ti-layout-grid2"></i>Dashboard </a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" data-toggle="tab"  href="#orders" role="tab" aria-controls="orders" aria-selected="false"><i class="ti-shopping-cart-full"></i>Orders</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" id="address-tab" data-toggle="tab" data-id="<?php echo $_SESSION["ID"]; ?>" href="#address" role="tab" aria-controls="address" aria-selected="true"><i class="ti-location-pin"></i>My Address</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" id="account-detail-tab" data-id="<?php echo $_SESSION["ID"]; ?>" data-toggle="tab" href="#account-detail" role="tab" aria-controls="account-detail" aria-selected="true"><i class="ti-id-badge"></i>Account details</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="logout.php"><i class="ti-lock"></i>Logout</a>
                      </li>
                    </ul>
                </div>
            </div>
                 
            
            <div class="col-lg-9 col-md-11">
                <div class="tab-content dashboard_content">
                  	<div class="tab-pane fade active show" id="dashboard" role="tabpanel" aria-labelledby="dashboard-tab">
                    	<div class="card">
                        	<div class="card-header">
                                <h3>Dashboard</h3>
                            </div>
                            <div class="card-body">
                    			<p>From your account dashboard. you can easily check &amp; view your <a href="javascript:void(0);" onclick="$('#orders-tab').trigger('click')">recent orders</a>, manage your <a href="javascript:void(0);" onclick="$('#address-tab').trigger('click')">shipping and billing addresses</a> and <a href="javascript:void(0);" onclick="$('#account-detail-tab').trigger('click')">edit your password and account details.</a></p>
                            </div>
                        </div>
                  	</div>
                  	<div class="tab-pane fade" id="orders" role="tabpanel" aria-labelledby="orders-tab">
                    	<div class="card">
                        	<div class="card-header">
                                <h3>Orders</h3>
                            </div>
                            <div class="card-body">
                    			<div class="table-responsive">
                                   
                                   <table  class="table">
 										<thead>
                                            <tr>
                                                <th>Order</th>
                                                <th>Date</th>
                                                <th>Status</th>
                                                <th>Total</th>
                                                <th>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                           <?php 
                                           $webuserid=$_SESSION["ID"];
$dbaction="SELECT Order_ID, DATE_FORMAT(payment_date, '%M %d, %Y') as date,Order_status,FORMAT(Total, 2) as Total,currency  FROM order_details WHERE userid ='{$webuserid}' and Payment_status in ('Complete','Received')";
	$result1 = mysqli_query($conn,$dbaction) or die("Query Failed.");
	
	 while($accounts = mysqli_fetch_assoc($result1))
    {
		?>
       <tr>
	   <td>#<?php echo $accounts["Order_ID"]; ?></td>
	   <td><?php echo $accounts["date"];?></td>
	   <td><?php echo $accounts["Order_status"]; ?></td>
	   <td> <?php echo $accounts["currency"]; ?> <?php echo $accounts["Total"]; ?></td>
	   <td><a href="invoice.php?ord=<?php echo $accounts["Order_ID"]; ?>" class="btn btn-fill-out btn-xs View_data">View</a></td></tr>
    <?php
	}
    
                                           ?>
                                        </tbody>
                                        </table>
                                </div>
                            </div>
                        </div>
                  	</div>
					<div class="tab-pane fade" id="address" role="tabpanel" aria-labelledby="address-tab">
                    	<div class="row">
                        	<div class="col-lg-10">
                                <div class="card mb-6 mb-lg-0">
                                   
                                   
                                    <div class="card-header">
                                        <h3>Shipping Address</h3>
                                    </div>
                                    <div class="card-body" id="adress_edit">
                                      <div id="messageshow">
                                        
                                    </div>
                                       
                                        <address>Address : <span id="addressli"></span></address>
                                        <p>City : <span id="cityli"></span></p>
                                        <p>State: <span id="stateli"></span></p>
                                        <p>Country : <span id="districtli"></span></p>
                                         <p>Pincode : <span id="pincodeli"></span></p>
                                        <input type="button" name="edit" value="Edit" id="<?php echo $_SESSION["ID"] ?>" class="btn btn-fill-out btn-sm edit_data" />
                                    </div>
                                     </div> 
                                 </div>
                            </div>
                            
                        </div>
						 <div class="tab-pane fade" id="account-detail" role="tabpanel" aria-labelledby="account-detail-tab">
						<div class="card">
                        	<div class="card-header">
                                <h3>Account Details</h3>
                            </div>
                            <div class="card-body">
                    			<div id="messageshowq">
                                        
                                    </div>
                                <form method="post"  id="account_up">
                                    <div class="row">
                                        <div class="form-group col-md-6">
                                        	<label>First Name <span class="required">*</span></label>
                                            <input required="" class="form-control" name="usename" id="usename" type="text">
                                         </div>
                                         <div class="form-group col-md-6">
                                        	<label>Last Name <span class="required">*</span></label>
                                            <input required="" class="form-control" name="Last_Name" id="Last_Name" type="text">
                                            <input required="" class="form-control" name="accountid" id="accountid" type="hidden">
                                            
                                        </div>
                                        <div class="form-group col-md-12">
                                        	<label>Phone <span class="required">*</span></label>
                                            <input class="form-control" name="phone_number" id="phone_number" type="text">
                                        </div>
                                        <div class="form-group col-md-12">
                                        	<label>Email Address <span class="required">*</span></label>
                                            <input class="form-control" name="email" id="email" type="email" readonly>
                                        </div>
                                       <!-- <div class="form-group col-md-12">
                                        	<label>Current Password <span class="required">*</span></label>
                                            <input  class="form-control" name="cpassword" id="cpassword"  type="password">
                                        </div>
                                        <div class="form-group col-md-12">
                                        	<label>New Password <span class="required">*</span></label>
                                            <input  class="form-control" name="npassword" type="password">
                                        </div>-->
                                        
                                        <div class="col-md-12">
                                            <button type="submit" class="btn btn-fill-out" name="submit" value="Submit">Save</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
					</div>
						
						
					</div>
                   
				</div>
			</div>
		</div>
	</div>
</div>

  <div id="add_data_Modal" class="modal">  
      <div class="modal-dialog">  
           <div class="modal-content">  
                <div class="modal-header">  
                     <button type="button" class="close" data-dismiss="modal">&times;</button>  
                     <h4 class="modal-title"></h4>  
                </div>
                                        <div class="modal-body">  
                     <form method="post" id="Address_form" autocomplete="off">  

                          <label>Address</label>  
                          <textarea name="addressi" id="addressi" class="form-control"  rows="3"></textarea>
                          
                          <label>Country</label>  
                         <select class="form-control" id="countrfs" name="Country">
                             <?php $dbaction="SELECT * FROM country_fridget";
		$result1 = mysqli_query($conn,$dbaction) or die("Query Failed.");
			
			while($accounts = mysqli_fetch_assoc($result1)){
			?>
			<option value="<?php echo $accounts["name"] ?>"><?php echo $accounts["name"] ?></option>
			<?php
			}
			?>
                         </select> 
                          
                          <label>State</label>  
                          <input type="text" name="StateName" id="StateName" class="form-control" /> 
                          
                          <label>City</label>  
                          <input type="text" name="cityname" id="cityname" class="form-control" />  
                          
                          <label>Pincode</label>  
                          <input type="number" name="Pincode" id="Pincode" class="form-control" autocomplete="off"  required/>
                          <div id="pinmsg"></div>
                       
                       
                         <input type="hidden" name="webuser_update_id" id="webuser_update_id" />  
                          <br>
                            <button type="submit" class="btn btn-fill-out" name="submit" value="Submit">Save</button>  
                     </form>  
                </div> 
           </div>  
      </div>  
 </div> 

 <div id="add_data_Modal" class="modal fade">  
      <div class="modal-dialog">  
           <div class="modal-content">  
                <div class="modal-header">  
                     <button type="button" class="close" data-dismiss="modal">&times;</button>  
                     <h4 class="modal-title"></h4>  
                </div>
                                        <div class="modal-body">  
                     <form method="post" id="Address_form">  

                          <label>Address</label>  
                          <textarea name="addressi" id="addressi" class="form-control"  rows="3"></textarea>
                          
                            
                           <label>Country</label>  
                         <select class="form-control" id="countrfs" name="Country"></select> 
                           
                          
                          <label>Pincode</label>  
                          <input type="number" name="Pincode" id="Pincode" class="form-control"  autocomplete="off" required/>
                          <div id="pinmsg"></div>
                            <label>Pincode</label>  
                          <input type="text" name="cityname" id="cityname" class="form-control" />  
                           
                          <label>District</label>  
                          <input type="text" name="District" id="District" class="form-control" readonly/>  
                          
                           <label>StateName</label>  
                          <input type="text" name="StateName" id="StateName" class="form-control" readonly />  
                          
                          <input type="hidden" name="webuser_update_id" id="webuser_update_id" />  
                          <br>
                            <button type="submit" class="btn btn-fill-out" name="submit" value="Submit">Save</button>  
                     </form>  
                </div> 
           </div>  
      </div>  
 </div> 
 
 <div id="Order_Data" class="modal"> 
            <div class="container mt-5 mb-5">
    <div class="row d-flex justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="modal-header">
        <h5 class="modal-title">Invoice</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true" id="close">&times;</span>
        </button>
      </div>
                <!--<div class="text-left logo p-1 px-2"> <img src="https://i.imgur.com/2zDU056.png" width="50"> </div>-->
                <div class="invoice p-2">
                    <h5>Your order <span id="ord_staus">Confirmed!</span></h5> <span class="font-weight-bold d-block mt-4">Hello, <span id="ord_name"></span></span> <span>You order has been confirmed and will be shipped in next two days!</span>
                    <div class="payment border-top mt-3 mb-3 border-bottom table-responsive">
                        <table class="table table-borderless">
                            <tbody>
                                <tr>
                                    <td style="width:30%">
                                        <div class="py-2"> <span class="d-block text-muted">Order Date</span> <span id="ord_date"></span> </div>
                                    </td>
                                    <td style="width:20%">
                                        <div class="py-2"> <span class="d-block text-muted">Order No</span> #<span id="ord_id"></span> </div>
                                    </td>

                                    <td style="width:50%">
                                        <div class="py-2"> <span class="d-block text-muted">Shiping Address</span> <span id="ord_shipping"></span> </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="product border-bottom table-responsive">
                        <table class="table table-borderless">
                                <tbody id="ord_product">
                                
                            </tbody>
                        </table>
                    </div>
                    <div class="row ">
                        <div class="col-md-12">
                            <table class="table table-borderless">
                                <tbody class="totals">
                                    <tr>
                                        <td>
                                            <div class="text-left"> <span class="text-muted">Subtotal</span> </div>
                                        </td>
                                        <td>
                                            <div class="text-right"> ₹<span id="ord_subtotal"></span> </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="text-left"> <span class="text-muted">Shipping Fee</span> </div>
                                        </td>
                                        <td>
                                            <div class="text-right"> ₹<span id="ord_shippingcharges"></span> </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="text-left"> <span class="text-muted">Tax Fee</span> </div>
                                        </td>
                                        <td>
                                            <div class="text-right"> ₹<span id="ord_tax">0</span> </div>
                                        </td>
                                    </tr>
                                    <tr class="border-top border-bottom">
                                        <td>
                                            <div class="text-left"> <span class="font-weight-bold">Total</span> </div>
                                        </td>
                                        <td>
                                            <div class="text-right"> <span class="font-weight-bold">₹</span><span class="font-weight-bold" id="ord_total"></span> </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <p>We will be sending shipping confirmation email when the item shipped successfully!</p>
                    <p class="font-weight-bold mb-0">Thanks for shopping with us!</p> <span>Dealxue Team</span>
                </div>
                </div>
        </div>
    </div>
</div>
  </div>     
<!-- END SECTION SHOP -->


<?php include('footer.php'); ?>