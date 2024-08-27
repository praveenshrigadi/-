<?php
//action.php
session_start();
if(isset($_POST['action']))
{
	if($_POST["action"] == "add")
	{
		if(isset($_SESSION['webuser_id']))
		{
			$is_available = 0;
			foreach($_SESSION['webuser_id'] as $keys => $values)
			{
				if($_SESSION['webuser_id'][$keys]['product_id_webuser'] == $_POST["product_id"] && $_SESSION['webuser_id'][$keys]['product_Option'] == $_POST["product_Option"])
				{
					$is_available++;
					//$_SESSION['webuser_id'][$keys]['product_quantity_webuser'] +
					$_SESSION['webuser_id'][$keys]['product_quantity_webuser'] = $_POST["product_quantity"];
				}
			}
			
			if(isset($_SESSION['webuser_id'][0]['product_currency'])){
			    
			    if($_SESSION['webuser_id'][0]['product_currency'] === $_POST['currency']){
			        	if($is_available == 0)
			{
				$item_array = array(
					'product_id_webuser'               =>     $_POST["product_id"],  
					'product_name_webuser'             =>     $_POST["product_name"], 
					'product_currency'                 =>     $_POST["currency"], 
					'product_weight'                   =>     $_POST["weight"], 
					'product_price_webuser'            =>     $_POST["product_price"],  
					'product_quantity_webuser'         =>     $_POST["product_quantity"],  
					'product_images_webuser'           =>     $_POST["product_images"],
					'product_Option'      => $_POST["product_Option"],
					'product_OptPrice'      => $_POST["product_OptPrice"]
				);
				$_SESSION['webuser_id'][] = $item_array;
			}
			    }else{
			       			        echo 'currency';
			    }
			    
			    
			}else{
			   	if($is_available == 0)
			{
				$item_array = array(
					'product_id_webuser'               =>     $_POST["product_id"],  
					'product_name_webuser'             =>     $_POST["product_name"], 
					'product_currency'                 =>     $_POST["currency"], 
					'product_weight'                   =>     $_POST["weight"], 
					'product_price_webuser'            =>     $_POST["product_price"],  
					'product_quantity_webuser'         =>     $_POST["product_quantity"],  
					'product_images_webuser'           =>     $_POST["product_images"],
					'product_Option'      => $_POST["product_Option"],
					'product_OptPrice'      => $_POST["product_OptPrice"]
				);
				$_SESSION['webuser_id'][] = $item_array;
			}
			}

		}
		else
		{
			$item_array = array(
				'product_id_webuser'               =>     $_POST["product_id"],  
				'product_name_webuser'             =>     $_POST["product_name"], 
				'product_currency'                 =>     $_POST["currency"], 
				'product_weight'                   =>     $_POST["weight"], 
				'product_price_webuser'            =>     $_POST["product_price"],  
				'product_quantity_webuser'         =>     $_POST["product_quantity"],  
				'product_images_webuser'           =>     $_POST["product_images"],
					'product_Option'      => $_POST["product_Option"],
					'product_OptPrice'      => $_POST["product_OptPrice"]
			);
			$_SESSION['webuser_id'][] = $item_array;
		}
	}
	
	
	if($_POST["action"] == 'remove')
	{
		foreach($_SESSION['webuser_id'] as $keys => $values)
		{
			if($values["product_id_webuser"] == $_POST["product_id"] && $values["product_Option"] == $_POST["product_option"] )
			{
				unset($_SESSION['webuser_id'][$keys]);
			}
		}
	}
	if($_POST["action"] == 'empty')
	{
		unset($_SESSION['webuser_id']);
	}
}

?>