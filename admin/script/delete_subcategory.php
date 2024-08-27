<?php
session_start();

include '../../connection/connection.php';


 $id = $_POST['id'];
 $html=array();
$sql = "DELETE FROM sub_category WHERE id = {$id}";
  if(mysqli_multi_query($conn, $sql)){
	$html['msg']='Successfully';

  }else{
$html['type']='error';
$html['msg']='Delete Failed';
  }
  echo json_encode($html);
?>
