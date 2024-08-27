<?php
session_start();
include('../connection/connection.php');
if(isset($_POST["rating_data"])){
	$Email=str_replace("'","\'",$_POST['Email_ID']);
	$message=str_replace("'","\'",$_POST['user_review']);
	$name=str_replace("'","\'",$_POST['user_name']);
	$rating=str_replace("'","\'",$_POST['rating_data']);
	$id=str_replace("'","\'",$_POST['id']);
	$date=date('Y-m-d');
	 $time=date('H:m:s');

	$sql = "INSERT INTO `product_review` (`product_id`,`name`,`comment`,`emailid`,`date`,`time`,`rate`) VALUES ('{$id}','{$name}','{$message}','{$Email}','{$date}','{$time}','{$rating}')";

   if(mysqli_query($conn, $sql)){
			echo 'succ';
		}else{
			echo 'Not Inserted';
		}

}else{
	echo 'Empty Field';
}

