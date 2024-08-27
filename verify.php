<?php
include('connection.php');

if(!empty($_POST['razorpay_payment_id'])){
 	$id = $_SESSION['razorpay_order_id'];
	$raz = $_POST['razorpay_payment_id'];
echo	$ver = 'UPDATE order_details SET Payment_status="Complete" , ray_payID="'.$raz.'" WHERE Order_ID="'.$id.'"';

if(mysqli_query($conn,$ver)){
header('Location:order-completed.php');
}   
}
else{
    header('Location:order-failed.php');
}

?>

