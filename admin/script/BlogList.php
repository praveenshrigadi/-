<?php

session_start();

include '../../connection/connection.php';

$html=array();

$sql = "SELECT p.id,p.name_title,c.Category,p.blog_date FROM `blog_page` p
left join `blog_category` c on c.`id`= p.`Blog_category`";	

$query = mysqli_query($conn,$sql) or die("Query Unsuccessful.");

while($row = mysqli_fetch_assoc($query)){
    
    
        $html[]= $row;
    }

echo json_encode($html)

	

		?>