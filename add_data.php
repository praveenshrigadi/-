<?php
include_once("connection/connection.php");

if(isset($_POST['submit']))
{
$name=$_POST['name'];
$email=$_POST['email'];
$view=$_POST['password'];
$password=password_hash($view, PASSWORD_DEFAULT);
$status=0;
$activationcode=password_hash($view, PASSWORD_DEFAULT);



function verificationstmail($email , $name, $activationcode){
$to = $email;
$subject = 'Thanks for joining , Verify Your Account';
$from = 'info@ramakrsna.com';


// Compose a simple HTML email message
$message = '<html><body>';
$message .= '<h1 style="color:#080;">Verify Your Account</h1>';
$message .= '<p style="color:#000;font-size:18px;">Thanks for joining ! Please click the button below to verify your email. </p>';
$message .= '<a href="https://ramakrsna.com/verify_account.php?active='.$activationcode.'" style="color:#000;font-size:18px;">Verify</a>';
$message .= '</body></html>';

// To send HTML mail, the Content-type header must be set
$headers  = 'MIME-Version: 1.0' . "\r\n";
$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

// More headers. From is required, rest other headers are optional
// Create email headers
$headers .= 'From: '.$from."\r\n".
    'Reply-To: '.$from."\r\n" .
    'X-Mailer: PHP/' . phpversion();

if(mail($to,$subject,$message,$headers)){
	header('Location:thankyou.php');
}else{
	header("Location: signup.php");
}	
}

$insert = $conn->query("insert into webuser(name,email,password,activationcode,status,paas_view) values('$name','$email','$password','$activationcode','$status','$view')");

if($insert)
{
    echo"<script>alert('Succesfully Register')</script>";
	verificationstmail($email , $name, $activationcode);
}
else
{
header("Location: signup.php"); 
}


}
?>