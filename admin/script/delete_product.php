<?php
session_start();

include '../../connection/connection.php';


 $id = $_POST['id'];
 $html=array();
 
 $sql = "DELETE FROM product_info WHERE `Product_ID` = '".$id."'";
 $result = mysqli_query($conn,$sql);
 
 if(mysqli_multi_query($conn, $sql)){
	 
 $sql = "select * from product_img where product_id = '".$id."'";
 $result = mysqli_query($conn, $sql);
 
 while($row = mysqli_fetch_assoc($result)){
 $id = $row['id'];
 $name = $row['product_img_name'];
 $sql = "DELETE FROM product_img WHERE id = '".$id."'";
 if(mysqli_multi_query($conn, $sql)){
	$dir = '../product_image/';
	$dir1 = '../product_image_thumb/';
	unlink($dir.$name);
	unlink($dir1.$name);
  }
 }
 
$html['error']='success';
$html['msg']='Delete success';

 } else{
$html['error']='error';
$html['msg']='Delete Failed';
  }
 
 
  echo json_encode($html);
?>
