<?php
session_start();
include('../connection/connection.php');

$sql = "SELECT * from admin where email = '".$_SESSION['EmailID']."'";
$query = mysqli_query($conn,$sql) or die("Query Unsuccessful.");
$rowcount=mysqli_num_rows($query);
if(empty($_SESSION['name']) || $rowcount === 0){
header("Location:/index.php");
}

$uriSegments = explode("/", parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH));
?>