<?php
session_start();
include('../connection/connection.php');

    if (!empty($_POST["name"]) & !empty($_POST["email"]) & !empty($_POST["phone"]) & !empty($_POST["subject"]) & !empty($_POST["message"]))
    {
$data=[];
 $name = str_replace("'","\'",$_POST["name"]);
 $email = str_replace("'","\'",$_POST["email"]);
 $phone = str_replace("'","\'",$_POST["phone"]);
 $subject =str_replace("'","\'",$_POST["subject"]);
 $message=str_replace("'","\'",$_POST["message"]);
    $date = date('Y-m-d');
    $time = date('H:i:s');

    $sql="INSERT INTO `contactus`(`Name`, `Email`, `Phone`, `Subject`, `Message`, `Date`, `Time`) VALUES ('".$name."' ,'".$email."', '".$phone."', '".$subject."', '".$message."', '".$date."', '".$time."')";
	if(mysqli_query($conn, $sql)){
    $data['type'] = 'success';
    $data['msg'] = 'Successfully Submited';
                }
                else
                {
    $data['type'] = 'error';
    $data['msg'] = 'All Filleds required';


                }
                
               

    

}else{
    $data['type'] = 'error';
    $data['msg'] = 'Form Submission Failed';
};

 echo json_encode($data);

?>
