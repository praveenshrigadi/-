<?php
session_start();

include '../../connection/connection.php';

 $id = $_POST['id'];
 $html=array();
 
 $sql="select * from blog_page WHERE id = {$id}";
 $result = mysqli_query($conn,$sql);
 $row = mysqli_fetch_assoc($result);
 
 $image = $row['image'];
 $targetDir = "../blog-img/";
 unlink($targetDir.$image);
 
$sql = "DELETE FROM blog_page WHERE id = {$id}";
  if(mysqli_multi_query($conn, $sql)){
$html['error']='success';
	$html['msg']='Delete Successfully';

  }else{
$html['error']='error';
$html['msg']='Delete Failed';
  }
  echo json_encode($html);
?>
