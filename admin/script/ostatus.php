<?php
// Include your database connection file
include('../../connection/connection.php');

session_start();
$html = array();
// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
 // Collect form data
$id = mysqli_real_escape_string($conn, $_POST['Order_ID']);
$status = mysqli_real_escape_string($conn, $_POST['Order_Status']);

	// File uploaded successfully, now insert data into the database
            $sql = "UPDATE `order_details` SET `Order_status` = '".$status."' WHERE `id` = '".$id."'";

            // Execute the query
            if (mysqli_query($conn, $sql)) {
                $html['error'] = 'success';
                $html['msg'] = 'Successfully Update';
            } else {
                // Failed
                $html['error'] = 'error';
                $html['msg'] = 'Failed to Update: ' . mysqli_error($conn);
            }


   


    // Close the database connection
    mysqli_close($conn);
} else {
    $html['error'] = 'error';
    $html['msg'] = 'Direct access not allowed';
}

echo json_encode($html);
?>
