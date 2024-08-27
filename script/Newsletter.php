<?php
session_start();

include('../connection/connection.php');

$Email=str_replace("'","\'",$_POST["Email"]);

	  $sql = "INSERT INTO `newsletter`(`email`) VALUES ('{$Email}')";
	 
   if(mysqli_query($conn, $sql)){
			echo 'succ';
		}else{
			echo 'Not Inserted';
		}



