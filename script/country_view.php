<?php
include('../connection/connection.php');
	if(isset($_POST['countryfs'])){
		
	$dbaction="SELECT * FROM country_fridget";
		$result1 = mysqli_query($conn,$dbaction) or die("Query Failed.");
			$accounts = mysqli_fetch_assoc($result1);

header('Content-Type: application/json');
echo json_encode($accounts);	
	
	
	}?>