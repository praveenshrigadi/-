<?php
include('../connection/connection.php');
	if(isset($_POST['webuserppid'])){
		$webuserid=$_POST['webuserppid'];
	$dbaction="SELECT * FROM webuser WHERE id =$webuserid";
	$result1 = mysqli_query($conn,$dbaction) or die("Query Failed.");
	$accounts = mysqli_fetch_assoc($result1);
header('Content-Type: application/json');
echo json_encode($accounts);	
	
	}
	
	
		if(isset($_POST['webuserid'])){
		$webuserid=$_POST['webuserid'];
	$dbaction="SELECT * FROM webuser WHERE id =$webuserid";
	$result1 = mysqli_query($conn,$dbaction) or die("Query Failed.");
	$accounts = mysqli_fetch_assoc($result1);
header('Content-Type: application/json');
echo json_encode($accounts);	
	
	}
	
	
	if(isset($_POST['Pincode'])){
	$Pincode_id=$_POST['Pincode'];
	$Pincode="SELECT * FROM postal_code WHERE Pincode =".$Pincode_id." LIMIT 1";
	$result1 = mysqli_query($conn,$Pincode) or die("Query Failed.");
	$Pincodeinfo = mysqli_fetch_assoc($result1);
	$numrowst=mysqli_num_rows($result1);
	if($numrowst > 0) {
	
header('Content-Type: application/json');
echo json_encode($Pincodeinfo);	
	}
	else{
		$pincodestatus = array("status"=>0);
		header('Content-Type: application/json');
echo json_encode($pincodestatus);	
	}
	
	
	}
	
	if(isset($_POST['orderid'])){
		$webuserid=$_POST['orderid'];
	$dbaction="SELECT * FROM `order_details` o, `sub_order` s WHERE o.Order_ID =s.orderid and o.Order_ID=$webuserid ";
	$result1 = mysqli_query($conn,$dbaction) or die("Query Failed.");
	
header('Content-Type: application/json');

 $data = array();
    while($accounts = mysqli_fetch_assoc($result1))
    {
        $data[] = $accounts;
    }
echo json_encode($data);	
	
	}
	
		if(isset($_POST['userid'])){
		$webuserid=$_POST['userid'];
	$dbaction="SELECT Order_ID, DATE_FORMAT(payment_date, '%M %d, %Y') as date,Order_status,FORMAT(Total, 2) as Total  FROM order_details WHERE userid =$webuserid and Payment_status='Complete'";
	$result1 = mysqli_query($conn,$dbaction) or die("Query Failed.");
	
header('Content-Type: application/json');

 $data = array();
    while($accounts = mysqli_fetch_assoc($result1))
    {
        $data[] = $accounts;
    }
echo json_encode($data);	
	
	}
	
?>