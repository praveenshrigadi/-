<?php
session_start();

include '../../connection/connection.php';


$id=str_replace("'","\'",$_POST["id"]);
$val=str_replace("'","\'",$_POST["val"]);

 $html=array();
$sql="UPDATE `product_img` SET `seq`='".$val."' WHERE `id`='".$id."'";

  if(mysqli_multi_query($conn, $sql)){
$html['error']='success';
$html['msg']='Update Success';
  }else{
$html['error']='error';
$html['msg']='Update Failed';
  }
  echo json_encode($html);
?>
