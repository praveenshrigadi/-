<?php
// Include your database connection file
include('../../connection/connection.php');

session_start();
$html = array();

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Collect form data
    $id = mysqli_real_escape_string($conn, $_POST['id']);
    $name = mysqli_real_escape_string($conn, $_POST['name']);
    $amount = mysqli_real_escape_string($conn, $_POST['amount']);
	
	if(!empty($id)){
		// File uploaded successfully, now insert data into the database
            $sql = "UPDATE `currency` SET `Currency_Name`='".$name."',`Amount`='".$amount."' WHERE `id` = '".$id."'";
	}else{
		// File uploaded successfully, now insert data into the database
            $sql = "INSERT INTO `currency`( `Currency_Name`,`Amount`) VALUES
                    ('$name','$amount')";
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
