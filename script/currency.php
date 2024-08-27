<?php
include('../connection/connection.php');
$cur=$_POST['currency'];
$id=$_POST['id'];

$sql = "SELECT * FROM `product_info` where Product_ID=".$id."";
$result = mysqli_query($conn,$sql);
$row = mysqli_fetch_assoc($result);
$html=array();
if($cur == "INR"){
    $html['currency']="INR";
    $price=$row['Product_Price'];
    $html['price']=number_format((float)$price,2,".");
    $html['id']=$id;
}else{
    $html['currency']="USD";
    $amount=$row['Product_USD'];
/*$sql_currency = "SELECT * FROM `currency` c where Currency_Name='USD'";
$result = mysqli_query($conn,$sql_currency);
$row = mysqli_fetch_assoc($result);
    $amt = (!empty($row['Amount'])) ? $row['Amount'] : '0';
     $price =  $amt*$amount;
     $usd = $row['Product_USD']; */
    $html['price']=number_format((float)$amount,2,".");
    $html['id']=$id;
}

echo json_encode($html);

?>
