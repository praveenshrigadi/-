<?php 
session_start();
if(isset($_SESSION['webuser_id']))
		{
			$data = json_encode($_SESSION['webuser_id']);
		echo $data;
		}

?>