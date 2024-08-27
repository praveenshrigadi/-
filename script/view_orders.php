 <?php include('config.php') ?>
 
<?php
	if(isset($_POST['webuseridTest'])){
		$webuseridTest=$_POST['webuseridTest'];
		
	$dbaction="SELECT * FROM sub_order WHERE mainorderid =$webuseridTest";
$accounts = $db->query($dbaction)->fetchAll();
header('Content-Type: application/json');
echo json_encode($accounts);	
	
	
	}?> 