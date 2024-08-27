<?php
session_start();
include('../connection/connection.php');

if(isset($_POST['name'])){
	

$username=$_POST['name'];
$loginPassword=0;

 
$qury="SELECT * FROM webuser where email='".$username."'" ;
$query = mysqli_query($conn,$qury) or die("Query Unsuccessful.");
$numrow=mysqli_num_rows($query);
if($numrow != 0){
$account = mysqli_fetch_assoc($query);


	
$password=$_POST["password"];
	
	$passwordddd=$password;


 $hashedPassword = $account["password"];
 if (password_verify($passwordddd, $hashedPassword)) {
            $loginPassword = 1;
	 		$_SESSION["webuser"] = $account["name"];
	 		$_SESSION["ID"] = $account["id"];
	 		//$_SESSION["webuser_id"] = $account["id"];
	 		$n=(rand(5,20));; 
function getName($n) { 
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'; 
    $randomString = ''; 
  
    for ($i = 0; $i < $n; $i++) { 
        $index = rand(0, strlen($characters) - 1); 
        $randomString .= $characters[$index]; 
    } 
  
    return $randomString; 
} 
  
$_SESSION["webuser_id_uniq"]= getName($n);
	 
	 
	 
	 
	 

   }
else
{
	$loginPassword = '0';
	
}
	
}

if($loginPassword == 1){$log='True';}else{$log='Flase';}
$loginoutput=array("Stauts"=>$log);
echo json_encode($loginoutput);
}
?>