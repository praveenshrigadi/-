<?php
session_start();
session_regenerate_id(true);
include('../connection/connection.php');
$html=array();

$Account=str_replace("'","\'",$_POST["Account"]);
$Cheque=str_replace("'","\'",$_POST["Cheque"]);
$ORDID=str_replace("'","\'",$_POST["ORDID"]);


$sql = "UPDATE order_details SET AccountNo = '".$Account."', Cheque = '".$Cheque."' and Payment_status = 'Complete' WHERE Order_ID = '".$ORDID."'";
		
   if(mysqli_query($conn, $sql)){
	   $html['type']='success';
		$html['msg']='Successfully';
		}else{
		    $html['type']='error';
			$html['msg']= 'Error';
		}
		
		echo json_encode($html);
	
		?>