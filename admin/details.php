<?php 
include('header.php');

if(isset($_GET['id']) && !empty($_GET['id'])){
   $id=$_GET['id'];
}else{
  echo  header('Location:order-details.php');
} 
$dbaction="SELECT * FROM `order_details` o, `sub_order` s WHERE o.Order_ID =s.orderid and o.id=$id ";
$result1 = mysqli_query($conn,$dbaction) or die("Query Failed.");
$row = mysqli_fetch_assoc($result1);
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
                                <h1 class="m-0">Invoice</h1>
                            </div><!-- /.col -->
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item">Home</li>
                                    <li class="breadcrumb-item active">Invoice</li>
                                </ol>
                            </div><!-- /.col -->
                        </div><!-- /.row -->
                    </div><!-- /.container-fluid -->
                </div>
                <!-- /.content-header -->
                <!-- Main content -->
               <section class="content">
      <div class="container-fluid" id="Print">
        <div class="row">
          <div class="col-12">
            
            <!-- Main content -->
            <div class="invoice p-3 mb-3">
              <!-- title row -->
              <div class="row">
                <div class="col-12 text-center">
                  <h4>
                    <img src="<?= BaseUrl ?>assets/images/logo_light.png" class="w-25">
                  </h4>
				  				<hr>
                </div>

                <!-- /.col -->
              </div>
              <!-- info row -->
              <div class="row invoice-info">
                <div class="col-sm-4 invoice-col">
                  From
                  <address>
                    <strong><?= AppName ?></strong><br>
                    Address 1<br>
                    Address 2<br>
                    Phone: (804) 123-5432<br>
                    Email: info@almasaeedstudio.com
                  </address>
                </div>
                <!-- /.col -->
                <div class="col-sm-4 invoice-col">
                  To
                  <address>
                    <strong><?php if($row['Bill_FirstName'] === $row['Ship_FirstName']){ echo $row['Bill_FirstName'].' '.$row['Bill_LastName'];} else {echo $row['Ship_FirstName'].' '.$row['Ship_LastName'];} ?></strong><br>
                    <?php if($row['Bill_Address1'] === $row['Ship_Address1']){ echo $row['Bill_Address1'];} else {echo $row['Ship_Address1'];} ?> </br>
                                <?php if($row['Bill_State'] === $row['Ship_State']){ echo $row['Bill_State'];} else {echo $row['Ship_State'];} ?> <?php if($row['Bill_City'] === $row['Ship_City']){ echo $row['Bill_City'];} else {echo $row['Ship_City'];} ?> <?php if($row['Bill_Zipcode'] === $row['Ship_Zipcode']){ echo $row['Bill_Zipcode'];} else {echo $row['Ship_Zipcode'];} ?></br>
                                <?php echo $row['Bill_Contact_No']; ?>
                  </address>
                </div>
                <!-- /.col -->
                <div class="col-sm-4 invoice-col">
                  <b>Invoice #<?= (!empty($row['Order_ID'])) ? $row['Order_ID'] : ''  ?></b><br>
                  <br>
                  <b>Order ID:</b> <?= (!empty($row['Order_ID'])) ? $row['Order_ID'] : ''  ?><br>
                  <b>Payment Date:</b> <?= (!empty($row['payment_date'])) ? $row['payment_date'] : ''  ?><br>
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->

              <!-- Table row -->
              <div class="row">
                <div class="col-12 table-responsive">
                  <table class="table table-striped">
                    <thead>
                    <tr>
                      <th>Sr.No</th>
                      <th>Image</th>
                      <th>Item</th>
                      <th>Qty</th>
                      <th>Amount</th>
                    </tr>
                    </thead>
                    <tbody>
					<?php 
                               $json_array = json_decode($row['Product_info'], true);
							  $i=0;
                                foreach($json_array as $json)
                                {
                                ?>
					<tr>
					<td><?php echo ++$i; ?></td>
					<td><img src="<?= BaseUrl ?>admin/product_image_thumb/<?php echo $json['product_images_webuser']; ?>" width="70"></td>
					<td><?php echo $json['product_name_webuser']; ?></td>
					<td><?php echo $json['product_quantity_webuser']; ?></td>
					<?php 
					if($json['product_Option'] === 'None'){
					    $price = $json['product_price_webuser'];
					}else{
					    $price = $json['product_OptPrice'];
					}
                    $q = str_replace(',', '', $price);
                    $t = $json["product_quantity_webuser"]  * floatval($q);
					?>
					<td><?php echo $json['product_currency']; ?> <?php echo number_format($t,2) ?></td>
					</tr>
                     <?php
                                }
                                ?>
                    </tbody>
                  </table>
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->

              <div class="row">
                <!-- accepted payments column -->
                <div class="col-6">
                  <p class="lead">Payment Methods:</p>
		 <img src="<?= BaseUrl ?>admin//dist/img/credit/visa.png" alt="Visa">
        <img src="<?= BaseUrl ?>admin/dist/img/credit/mastercard.png" alt="Mastercard">
        <img src="<?= BaseUrl ?>admin/dist/img/credit/american-express.png" alt="American Express">
        <img src="<?= BaseUrl ?>admin/dist/img/credit/paypal2.png" alt="Paypal">
				 <p class="text-muted well well-sm shadow-none" style="margin-top: 10px;">
                    We will be sending shipping confirmation email when the item shipped successfully!
                  </p>
<p><b>Thanks for shopping with us!</b><br/><?= AppName?> Team</p>
                </div>
                <!-- /.col -->
                <div class="col-6">
                 <div class="table-responsive">
                    <table class="table">
                      <tr>
                        <th style="width:50%">Subtotal:</th>
                        <td><?php echo $json['product_currency']; ?> <?php echo number_format($row['Total']- $row['Shipping_Charges'],2); ?></td>
                      </tr>
                      <tr>
                        <th>Tax:</th>
                        <td><?php echo $json['product_currency']; ?> <span id="ord_tax">0</span></td>
                      </tr>
                      <tr>
                        <th>Shipping:</th>
                        <td><?php echo $json['product_currency']; ?> <?php echo number_format($row['Shipping_Charges'],2); ?></td>
                      </tr>
                      <tr>
                        <th>Total:</th>
                        <td><div class="text-left"> <span class="font-weight-bold"><?php echo $json['product_currency']; ?> </span><span class="font-weight-bold" id="ord_total"><?php echo number_format($row['Total'],2); ?></span> </div></td>
                      </tr>
                    </table>
                  </div>
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->

              <!-- this row will not appear when printing -->
              <div class="row no-print">
                <div class="col-12">
                  <span class="btn btn-primary" onclick="printDiv('Print')"> <i class="fas fa-print"></i> Print </span>          
                </div>
              </div>
            </div>
            <!-- /.invoice -->
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
                <!-- /.container-fluid -->
            </div>
            <?php include('footer.php'); ?>
        </div>
		
        <?php include('js.php'); ?>
        
		<script type="text/javascript">  
      function printDiv(divName){
			var printContents = document.getElementById(divName).innerHTML;
			var originalContents = document.body.innerHTML;

			document.body.innerHTML = printContents;

			window.print();

			document.body.innerHTML = originalContents;

		}
    </script> 
		<!-- AdminLTE -->
        <script src="<?= BaseUrl; ?>admin/js/MainCategory.js"></script>
    </body>
</html>