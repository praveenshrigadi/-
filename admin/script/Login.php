<?php
session_start();
// Include your database connection file
include('../../connection/connection.php');

$html = array();
$Email = mysqli_real_escape_string($conn, $_POST['Email']);
$Password = mysqli_real_escape_string($conn, $_POST['Password']);
//$hashedPassword = password_hash($Password, PASSWORD_DEFAULT); 

$sql = "SELECT * FROM admin WHERE email = '".$Email."'";
$query = mysqli_query($conn, $sql) or die("Query Unsuccessful.");
$row = mysqli_fetch_array($query);

if (mysqli_num_rows($query) > 0) {
    if (password_verify($Password, $row['password'])) {
        $_SESSION['EmailID'] = $row['email'];
        $_SESSION['id'] = $row['id'];
        $_SESSION['name'] = $row['username'];

        // Check if "Remember Me" is checked
        if (isset($_POST['RememberMe']) && $_POST['RememberMe'] == 1) {
            // Generate a secure token (you may use a more sophisticated method)
            $token = bin2hex(random_bytes(32));

            // Store the token in the database associated with the user
            $tokenExpiration = time() + (30 * 24 * 3600); // Token expiration time (e.g., 30 days)
            $sqlUpdateToken = "UPDATE admin SET remember_me_token = '".$token."', token_expiration = '".$tokenExpiration."' WHERE Email = '".$Email."'";
            mysqli_query($conn, $sqlUpdateToken);

            // Set a secure and HttpOnly cookie with the token
            setcookie('Emltkn', $token, $tokenExpiration, '/', '', true, true);
        }

        $html['error'] = 'success';
        $html['msg'] = 'Login Successful';
    } else {
        $html['error'] = 'error';
        $html['msg'] = 'Password Not Match';
    }
} else {
    $html['error'] = 'error';
    $html['msg'] = 'Email ID Not Match';
}

echo json_encode($html);
?>