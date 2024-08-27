<?php

session_start();

include '../../connection/connection.php';

$html=array();

// Check the server request method
if ($_SERVER['REQUEST_METHOD'] == 'GET') {
$sql = "select * from 2nd_sub_category";
}
else{
	$id=$_POST['id'];
	$sql = "select * from 2nd_sub_category where sub_category = '".$id."'";
}	



$query = mysqli_query($conn,$sql) or die("Query Unsuccessful.");

while($row = mysqli_fetch_assoc($query)){
    
    
        $html[]= $row;
    }

echo json_encode($html)

	

		?>