<?php

session_start();

include '../../connection/connection.php';

$html=array();

	$id=$_POST['id'];
    $sql = "select * from sub_category where main_category = '".$id."'";


$query = mysqli_query($conn,$sql) or die("Query Unsuccessful.");

while($row = mysqli_fetch_assoc($query)){
    
    
        $html[]= $row;
    }

echo json_encode($html)

	

		?>