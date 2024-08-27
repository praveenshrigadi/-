<?php
session_start();
print("<pre>".print_r($_SESSION['webuser_id'],true)."</pre>");
echo $action = $_POST['action'];
echo $id=$_POST['id'];
echo $name= $_POST['name'];
if(isset($action) == 'add'){
foreach($_SESSION['webuser_id'] as $keys => $values)
			{
				if($_SESSION['webuser_id'][$keys]['product_id_webuser'] == $id)
				{
					$_SESSION['webuser_id'][$keys]['product_quantity_webuser'] = $name ;
				}
			}
}else if(isset($action) == 'minus'){
foreach($_SESSION['webuser_id'] as $keys => $values)
			{
				if($_SESSION['webuser_id'][$keys]['product_id_webuser'] == $id)
				{
					$_SESSION['webuser_id'][$keys]['product_quantity_webuser'] = $name;
				}
			}
}

?>