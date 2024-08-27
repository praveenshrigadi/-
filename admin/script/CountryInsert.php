<?php
// Include your database connection file
include('../../connection/connection.php');

session_start();
$html = array();

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Collect form data
    $id = mysqli_real_escape_string($conn, $_POST['id']);
    $shortname = mysqli_real_escape_string($conn, $_POST['shortname']);
    $shortcode = mysqli_real_escape_string($conn, $_POST['shortcode']);
    $Zone = mysqli_real_escape_string($conn, $_POST['Zone']);
	
	if(!empty($id)){
		// File uploaded successfully, now insert data into the database
            $sql = "UPDATE `country_fridget` SET `sortname`='".$shortname."',`name`='".$shortcode."',`zone`='".$Zone."' WHERE `id` = '".$id."'";
	}else{
		// File uploaded successfully, now insert data into the database
            $sql = "INSERT INTO `country_fridget`( `sortname`, `name`, `zone`)  VALUES
                    ('$shortname','$shortcode','$Zone')";
	}
            

            // Execute the query
            if (mysqli_query($conn, $sql)) {
                $html['error'] = 'success';
                $html['msg'] = 'Successfully Inserted';
            } else {
                // Failed
                $html['error'] = 'error';
                $html['msg'] = 'Failed to Inserted: ' . mysqli_error($conn);
            }
    
    }

 else {
    $html['error'] = 'error';
    $html['msg'] = 'Direct access not allowed';
}

echo json_encode($html);
?>
