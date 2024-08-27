<?php
session_start();
include('../connection/connection.php');
if(!empty($_POST['cpassword']) && !empty($_POST['npassword']) && !empty($_POST['cemail']) ){
$id=str_replace("'","\'",$_POST['cemail']);
$code=str_replace("'","\'",$_POST['code']);
$new=str_replace("'","\'",$_POST['npassword']);
$confirm=str_replace("'","\'",$_POST['cpassword']);
$pass=password_hash($confirm, PASSWORD_DEFAULT);

	if($new === $confirm){
	    $sql = "SELECT * FROM `webuser` WHERE md5(email) = '{$id}' and `verification_code`= '{$code}'";
$query = mysqli_query($conn,$sql) or die("Query Unsuccessful.");
$count = mysqli_num_rows($query);
$row = mysqli_fetch_assoc($query);
if ($count == 1){
		$sql1="UPDATE `webuser` SET `password` = '{$pass}', `verification_code`=NULL where `id`= {$row['id']}"; 

   if(mysqli_query($conn, $sql1)){
		$html['result']='success';
		$html['msg']='Successfully changed';
		}else{
		$html['result']='error';
		$html['msg']='Not Inserted';
		}
}else{
$html['result']='error';
		$html['msg']='Code Does not match';
}
	}else{
$html['result']='error';
$html['msg']='Password Does not match';
	}

echo json_encode($html);
}

?>

