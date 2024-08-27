<?php
include('../connection/connection.php');

$sql = "SELECT * FROM `blog_page` order by id desc limit 6";
$result = mysqli_query($conn,$sql);

$blogarray = array();
    while($row =mysqli_fetch_assoc($result))
    {
        $blogarray[] = $row;
    }
    
echo json_encode($blogarray);

?>
