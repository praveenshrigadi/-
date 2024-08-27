<?php
session_start();

include '../../connection/connection.php';


 $id = $_POST['id'];
 $html=array();
 
 $sql = "DELETE FROM `options` WHERE `id` = '".$id."'";
 $result = mysqli_query($conn,$sql);
 
 if(mysqli_multi_query($conn, $sql)){
 
$html['error']='success';
$html['msg']='Delete success';

 } else{
$html['error']='error';
$html['msg']='Delete Failed';
  }
 
 
  echo json_encode($html);
?>
