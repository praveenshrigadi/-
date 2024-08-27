<?php

session_start();

include '../../connection/connection.php';

$html=array();

$sql = "SELECT c.id,c.name,c.zone,c.sortname FROM `country_fridget` c";	

$query = mysqli_query($conn,$sql) or die("Query Unsuccessful.");

while($row = mysqli_fetch_assoc($query)){
    
    
        $html[]= $row;
    }

echo json_encode($html)

	

		?>