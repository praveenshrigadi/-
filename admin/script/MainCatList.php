<?php

session_start();

include '../../connection/connection.php';

$html=array();

$sql = "select * from category";
$query = mysqli_query($conn,$sql) or die("Query Unsuccessful.");

while($row = mysqli_fetch_assoc($query)){
    
    
        $html[]= $row;
    }

echo json_encode($html)

	

		?>