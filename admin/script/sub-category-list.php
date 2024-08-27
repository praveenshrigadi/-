<?php

session_start();

include '../../connection/connection.php';

$html=array();
if(!empty($_POST['Change_ID'])) {
$Change_ID = $_POST["Change_ID"];     
$sql = "select * from sub_category WHERE main_category = $Change_ID";
$query = mysqli_query($conn,$sql) or die("Query Unsuccessful.");

while($row = mysqli_fetch_assoc($query)){
    
    
        $html[]= $row;
    }
}

echo json_encode($html)

	

		?>