<?php
// Include your database connection file
include('../../connection/connection.php');

session_start();
$html = array();

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {

// Collect form data
$name = !empty($_POST['name']) ? mysqli_real_escape_string($conn, trim($_POST['name'])) : '';
$code = !empty($_POST['code']) ? mysqli_real_escape_string($conn, trim($_POST['code'])) : '';
$meta_description = !empty($_POST['meta_description']) ? mysqli_real_escape_string($conn, trim($_POST['meta_description'])) : '';
$meta_title = !empty($_POST['meta_title']) ? mysqli_real_escape_string($conn, trim($_POST['meta_title'])) : '';
$meta_keywords = !empty($_POST['meta_keywords']) ? mysqli_real_escape_string($conn, trim($_POST['meta_keywords'])) : '';
$INR = !empty($_POST['INR']) ? mysqli_real_escape_string($conn, trim($_POST['INR'])) : '';
$USD = !empty($_POST['USD']) ? mysqli_real_escape_string($conn, trim($_POST['USD'])) : '';
$weight = !empty($_POST['weight']) ? mysqli_real_escape_string($conn, trim($_POST['weight'])) : '';
$discount = !empty($_POST['discount']) ? mysqli_real_escape_string($conn, trim($_POST['discount'])) : '';
$qty = !empty($_POST['qty']) ? mysqli_real_escape_string($conn, trim($_POST['qty'])) : '';
$sku = !empty($_POST['sku']) ? mysqli_real_escape_string($conn, trim($_POST['sku'])) : '';
$MainCategory = !empty($_POST['MainCategory']) ? mysqli_real_escape_string($conn, trim($_POST['MainCategory'])) : '';
$SubCategory = !empty($_POST['SubCategory']) ? mysqli_real_escape_string($conn, trim($_POST['SubCategory'])) : '';
$sndSubCategory = !empty($_POST['sndSubCategory']) ? mysqli_real_escape_string($conn, trim($_POST['sndSubCategory'])) : '';
$description = !empty($_POST['description']) ? mysqli_real_escape_string($conn, trim($_POST['description'])) : '';
$add_information = !empty($_POST['add_information']) ? mysqli_real_escape_string($conn, trim($_POST['add_information'])) : '';
$short_description = !empty($_POST['short_description']) ? mysqli_real_escape_string($conn, trim($_POST['short_description'])) : '';

	
	if(!empty($_POST['id'])){
		$ID = mysqli_real_escape_string($conn, $_POST['id']); 
		
		$sql= "UPDATE `product_info` SET `Product_Name` = '".$name."', `Product_Info` = '".$short_description."', `Product_Description` = '".$description."', `Product_Additional_info` = '".$add_information."', `Product_Code` = '".$code."', `Product_Price` = '".$INR."', `Product_USD` = '".$USD."', `Product_Weight` = '".$weight."', `Product_Discount` = '".$discount."', `Product_Qty` = '".$qty."', `Product_SKU` = '".$sku."', `Product_Main_Category` = '".$MainCategory."', `Product_Sub_Category` = '".$SubCategory."', `Product_Sub_Sub_Category` = '".$sndSubCategory."', `meta_description` = '".$meta_description."', `meta_keyword` = '".$meta_keywords."', `meta_title` = '".$meta_title."' WHERE Product_ID ='".$ID."'";
	}else{
		 // File uploaded successfully, now insert data into the database
            $sql = "INSERT INTO `product_info`(`Product_Name`, `Product_Info`, `Product_Description`, `Product_Additional_info`, `Product_Code`, `Product_Price`, `Product_USD`, `Product_Weight`, `Product_Discount`, `Product_Qty`, `Product_SKU`, `Product_Main_Category`, `Product_Sub_Category`, `Product_Sub_Sub_Category`, `meta_description`, `meta_keyword`, `meta_title`) VALUES 
                   ('{$name}','{$short_description}','{$description}','{$add_information}','{$code}','{$INR}','{$USD}','{$weight}','{$discount}','{$qty}','{$sku}','{$MainCategory}','{$SubCategory}','{$sndSubCategory}','{$meta_description}','{$meta_keywords}','{$meta_title}')";
	}
  
           

            // Execute the query
            if (mysqli_query($conn, $sql)) {
                $html['error'] = 'success';
                $html['msg'] = 'Successfully Inserted';
            } else {
                // Failed
                $html['error'] = 'error';
                $html['msg'] = 'Failed to Inserted: ' . mysqli_error($conn);
            }
       

    // Close the database connection
    mysqli_close($conn);
} else {
    $html['error'] = 'error';
    $html['msg'] = 'Direct access not allowed';
}

echo json_encode($html);
?>
