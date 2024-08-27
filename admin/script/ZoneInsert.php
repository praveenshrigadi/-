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
    $code = mysqli_real_escape_string($conn, $_POST['code']);
    $weight = mysqli_real_escape_string($conn, $_POST['weight']);
    $INR = mysqli_real_escape_string($conn, $_POST['INR']);
    $USD = mysqli_real_escape_string($conn, $_POST['USD']);
	
	if(!empty($id)){
		// File uploaded successfully, now insert data into the database
            $sql = "UPDATE `zoneeditor` SET `Zone_name`='".$name."',`Zone_Code`='".$code."',`INR_Price`='".$INR."',`USD_Price`='".$USD."',`Weight`='".$weight."' WHERE `id` = '".$id."'";
	}else{
		// File uploaded successfully, now insert data into the database
            $sql = "INSERT INTO `zoneeditor`( `Zone_name`, `Zone_Code`, `INR_Price`, `USD_Price`, `Weight`)  VALUES
                    ('$name','$code','$INR','$USD','$weight')";
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
