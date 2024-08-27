<?php
session_start();

include '../../connection/connection.php';

 $id = $_POST['id'];
 $html=array();
 
$sql = "DELETE FROM zoneeditor WHERE id = {$id}";
  if(mysqli_multi_query($conn, $sql)){
$html['error']='success';
	$html['msg']='Delete Successfully';

  }else{
$html['error']='error';
$html['msg']='Delete Failed';
  }
  echo json_encode($html);
?>
