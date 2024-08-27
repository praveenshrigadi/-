<?php

session_start();

include '../../connection/connection.php';

$html=array();

 $Change_Status = $_POST['statu'];

 $Category_ID = $_POST['id'];

$sql = "UPDATE product_info SET Deals = '".$Change_Status."' WHERE Product_ID  = '".$Category_ID."'";

$query = mysqli_query($conn,$sql) or die("Query Unsuccessful.");

   if (mysqli_query($conn, $sql)) {
          $html['error']='success';
          $html['msg'] = 'Successfully Update';
       
        } else {
            // failed
            $html['error']='error';
          $html['msg'] = 'failed to update';
           //mysqli_error($conn)
        }

echo json_encode($html)

	

		?>