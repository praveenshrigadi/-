<?php
include('../connection/connection.php');

	if(isset($_POST['webuser_update_id'])){
	
		$webuser_update_id = $_POST['webuser_update_id'];
		$webuser_Country = $_POST['Country'];
		$webuser_Pincode = $_POST['Pincode'];
		$webuser_StateName = $_POST['StateName'];
		$webuser_cityname = $_POST['cityname'];
		$webuser_addressi = $_POST['addressi'];
		

		$nl2brsdf=nl2br($webuser_addressi);
		$query = " UPDATE `webuser` SET `Address`='$webuser_addressi', `Country`='$webuser_Country', `State`='$webuser_StateName', `City`='$webuser_cityname', `Zipcode`='$webuser_Pincode' WHERE  `id`= $webuser_update_id;" ;
      
	 $message = '<div class="alert alert-success" role="alert" >Data Updated successfully</div>';
		
	if ( mysqli_query($conn,$query) ) {
		echo $webuser_update_id;
		
	} 
	};
	
	
	if(isset($_POST['accountid'])){
	
		$accountid=$_POST['accountid'];
	$webuser_name = $_POST[ 'usename' ];
	$webuser_Last_Name = $_POST[ 'Last_Name' ];
	$webuser_phone_number = $_POST[ 'phone_number' ];

		$query = " UPDATE `webuser` SET 
		
		`name`='$webuser_name',
		`Last_Name`='$webuser_Last_Name',
		`phone_number`='$webuser_phone_number'
		
		
		WHERE  `id`= $accountid;" ;
      
		$message = '<div class="alert alert-success" role="alert" >Data Updated successfully</div>';
		
	if ( mysqli_query($conn,$query) ) {
		echo $message;
		
	} 
	
	
	};

?>