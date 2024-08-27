<?php 
session_start();
include('../connection/connection.php');
	if(isset($_POST['code']) && !empty($_POST['code'])){
	    $email = $_POST["email"];
	    $code = $_POST["code"];
   $sql = "SELECT * FROM `webuser` WHERE md5(email)='{$email}' and `verification_code`='{$code}' ";
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

