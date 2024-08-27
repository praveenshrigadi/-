<?php

session_start();

include '../../connection/connection.php';

$html=array();


	
	
 $val = str_replace("'","\'",$_POST["statu"]);

 $id = str_replace("'","\'",$_POST["id"]);

$sql="UPDATE `category` SET `seq`='".$val."' WHERE `category_id`='".$id."'";

$query = mysqli_query($conn,$sql) or die("Query Unsuccessful.");

   if (mysqli_query($conn, $sql)) {
          $html['error']='success';
          $html['msg'] = 'Successfully Update';
       
        } else {
            // failed
            $html['error']='error';
          $html['msg'] = 'failed to update';
           //mysqli_error($conn)
        }

echo json_encode($html)

	

		?>