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
$email = mysqli_real_escape_string($conn, $_POST['email']);

$sql ="select * from webuser where id ='".$id."'";
$query = mysqli_query($conn,$sql);
$row = mysqli_fetch_assoc($query);

$oldPassword = mysqli_real_escape_string($conn,$row['password']);
$password = mysqli_real_escape_string($conn, $_POST['password']);
if($oldPassword == $password){
    $NewPassword = $oldPassword;
}else{
    $NewPassword = password_hash($password, PASSWORD_DEFAULT); 
}

$status = mysqli_real_escape_string($conn, $_POST['status']);

$sql = "UPDATE `webuser` SET `name` = '".$name."', `email` = '".$email."', `password`= '".$NewPassword."', `status`= '".$status."',`paas_view`='".$password."' WHERE `id` = '".$id."'";

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
