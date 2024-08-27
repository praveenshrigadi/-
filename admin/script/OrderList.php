<?php

session_start();

include '../../connection/connection.php';

$html=array();

if(isset($_POST['id'])){
  $status = $_POST['id'];
}else{
  $status='pending';
}

$sql = "SELECT * FROM order_details where Order_status = '".$status."'";

$query = mysqli_query($conn,$sql) or die("Query Unsuccessful.");

while($row = mysqli_fetch_assoc($query)){
    
    
        $html[]= $row;
    }

echo json_encode($html)

	

		?>