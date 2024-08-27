<?php
// Include your database connection file
include('../../connection/connection.php');

session_start();
$html = array();

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {

// Collect form data
$ID = !empty($_POST['id']) ? mysqli_real_escape_string($conn, trim($_POST['id'])) : '';
$PID = !empty($_POST['pid']) ? mysqli_real_escape_string($conn, trim($_POST['pid'])) : '';
$name = !empty($_POST['name']) ? mysqli_real_escape_string($conn, trim($_POST['name'])) : '';
$optionname = !empty($_POST['optionname']) ? mysqli_real_escape_string($conn, trim($_POST['optionname'])) : '';
$description = !empty($_POST['description']) ? mysqli_real_escape_string($conn, trim($_POST['description'])) : '';
$INR = !empty($_POST['INR']) ? mysqli_real_escape_string($conn, trim($_POST['INR'])) : '';
$USD = !empty($_POST['USD']) ? mysqli_real_escape_string($conn, trim($_POST['USD'])) : '';

		 // File uploaded successfully, now insert data into the database
            $sql = "UPDATE `options` SET `Opt_Name` = '".$optionname."', `Description`='".$description."', `Price`='".$INR."', `USDPrice`='".$USD."' WHERE `id` = '".$ID."'";

            // Execute the query
            if (mysqli_query($conn, $sql)) {
                $html['error'] = 'success';
                $html['msg'] = 'Successfully Inserted';
            } else {
                // Failed
                $html['error'] = 'error';
                $html['msg'] = 'Failed to Inserted: ' . mysqli_error($conn);
            }
       

    // Close the database connection
    mysqli_close($conn);
} else {
    $html['error'] = 'error';
    $html['msg'] = 'Direct access not allowed';
}

echo json_encode($html);
?>
