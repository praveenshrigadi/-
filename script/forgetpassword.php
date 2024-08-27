<?php
include('../connection/connection.php');

function random_strings()
{

    $str_result = mt_rand(100000,999999);;
  
    return $str_result;
}
$vc = random_strings();
$sql1 = "SELECT count(verification_code) as count FROM `webuser` where verification_code=$vc";
$result1 = mysqli_query($conn,$sql1);
$row1 = mysqli_fetch_array($result1);
$V_C = $row1["count"];

if($V_C === 1){
	random_strings();
}else{
    
$state_id = $_POST["femail"];
$md=md5($state_id);
$sql = "UPDATE `webuser` set `verification_code` = $vc where email='{$state_id}'";
    if(mysqli_query($conn,$sql)){
        verificationstmail($state_id, $vc, $md);
    }
}

function verificationstmail($id, $vc,$md){
$to = $id;
$subject = 'Verification Code';
$from = 'info@ramakrsna.com';


// Compose a simple HTML email message
$message = '<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml" xmlns:o="urn:schemas-microsoft-com:office:office">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <meta name="x-apple-disable-message-reformatting">
  <title></title>
  <!--[if mso]>
  <noscript>
    <xml>
      <o:OfficeDocumentSettings>
        <o:PixelsPerInch>96</o:PixelsPerInch>
      </o:OfficeDocumentSettings>
    </xml>
  </noscript>
  <![endif]-->
  <style>
    table, td, div, h1, p {font-family: Arial, sans-serif;}
  </style>
</head>
<body style="margin:0;padding:0;">
  <table role="presentation" style="width:100%;border-collapse:collapse;border:0;border-spacing:0;background:#ffffff;">
    <tr>
      <td align="center" style="padding:0;">
        <table role="presentation" style="width:602px;border-collapse:collapse;border:1px solid #cccccc;border-spacing:0;text-align:left;">
          <tr>
            <td align="center" style="padding:40px 0 30px 0;background:#ffffff;">
              <img src="https://ramakrsna.com/assets/images/logo_dark.png" alt="" width="300" style="height:auto;display:block;" />
            </td>
          </tr>
          <tr>
            <td style="padding:36px 30px 42px 30px;">
              <table role="presentation" style="width:100%;border-collapse:collapse;border:0;border-spacing:0;">
                <tr>
                  <td style="padding:0 0 36px 0;color:#153643;">
                    <h1 style="font-size:24px;margin:0 0 20px 0;font-family:Arial,sans-serif;">Verification Code</h1>
                    <p style="margin:0 0 12px 0;font-size:16px;line-height:24px;font-family:Arial,sans-serif;">Enter this <b>"'.$vc.'"</b> code to change your password
                    <br><a href="https://ramakrsna.com/change_password.php?c='.$md.'">Click Here </a>change passord</p>
                  </td>
                </tr>
              </table>
            </td>
          </tr>
          <tr>
            <td style="padding:30px;background:#ee4c50;">
              <table role="presentation" style="width:100%;border-collapse:collapse;border:0;border-spacing:0;font-size:9px;font-family:Arial,sans-serif;">
                <tr>
                  <td style="padding:0;width:50%;" align="left">
                    <p style="margin:0;font-size:14px;line-height:16px;font-family:Arial,sans-serif;color:#ffffff;">
                      &reg; Ramakrsna 2022<br/><a href="https://ramakrsna.com/" style="color:#ffffff;text-decoration:underline;">https://ramakrsna.com</a>
                    </p>
                  </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
</body>
</html>';

// To send HTML mail, the Content-type header must be set
$headers  = 'MIME-Version: 1.0' . "\r\n";
$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

// More headers. From is required, rest other headers are optional
// Create email headers
$headers .= 'From: '.$from."\r\n".
    'Reply-To: '.$from."\r\n" .
    'X-Mailer: PHP/' . phpversion();

if(mail($to,$subject,$message,$headers)){
	header('Location:../change_password.php?c='.$md);
}else{
	header("Location: signup.php");
}	
}

?>
