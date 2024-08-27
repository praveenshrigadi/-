<?php 
session_start();
include('../connection/connection.php');
	if(isset($_POST['femail']) && !empty($_POST['femail'])){
	    $state_id = $_POST["femail"];
   $sql = "SELECT * FROM `webuser` WHERE `email`='{$state_id}'";
$result = mysqli_query($conn,$sql);

   $count = mysqli_num_rows($result);


   if($count == 1){
 $response['result'] = true;
   }else{
 $response['result'] = false;
   }

 echo json_encode($response);
}

?>

