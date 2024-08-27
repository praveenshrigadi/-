<?php
include('../connection/connection.php');

//if(!isset($_SESSION["emailid"])){
	//header('Location: index.php');
//}

$name=$_POST['name'];

$sql = "SELECT * FROM 2nd_sub_category a where sub_category = '".$name."'";
$query = mysqli_query($conn,$sql) or die("Query Unsuccessful.");

if(mysqli_num_rows($query) > 0){
	$output = 1;
  }else{
 $output = 0;
}
echo $output;

mysqli_close($conn);
?>



 
        		