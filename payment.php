<?php
require('config.php');
//require('razorpay-php/Razorpay.php');
include('connection.php');
$razorpayOrderId = $_GET["OrderID"];
$_SESSION['razorpay_order_id'] = $razorpayOrderId;
/*
// Include Razorpay SDK
require 'vendor/autoload.php';

$ORDID=$_GET["OrderID"];
$PAY = "SELECT * FROM `order_details` where Order_ID='{$ORDID}'";
$result_PAY = mysqli_query($conn,$PAY);
$row_PAY = mysqli_fetch_array($result_PAY);
	if(isset($_SESSION['webuser_id']))
		{
		    	foreach($_SESSION['webuser_id'] as $keys => $values)
	{
	    $curr = $values["product_currency"];
	}
		    
		}

// Create the Razorpay Order

use Razorpay\Api\Api;
$api = new Api($keyId, $keySecret);

//
// We create an razorpay order using orders api
// Docs: https://docs.razorpay.com/docs/orders
//
$orderData = [
    'receipt'         => $row_PAY["Order_ID"],
    'amount'          => $row_PAY["Total"] * 100, // 2000 rupees in paise
    'currency'        => $curr,
    'payment_capture' => 1 // auto capture
];

$razorpayOrder = $api->order->create($orderData);
$razorpayOrderId = $razorpayOrder['id'];


$_SESSION['razorpay_order_id'] = $razorpayOrderId;

$displayAmount = $amount = $orderData['amount'];

if ($displayCurrency !== 'INR')
{
    $url = "https://api.fixer.io/latest?symbols=$displayCurrency&base=INR";
  echo  $exchange = json_decode(file_get_contents($url), true);

    $displayAmount = $exchange['rates'][$displayCurrency] * $amount / 100;
}



if (isset($_GET['checkout']) and in_array($_GET['checkout'], ['automatic', 'manual'], true))
{
    $checkout = $_GET['checkout'];
}
$address=$row_PAY["Bill_Address1"] . " " . $row_PAY["Bill_Country"] . " " . $row_PAY["Bill_State"] . " " . $row_PAY["Bill_City"] . " " . $row_PAY["Bill_Zipcode"];
$data = [
    "key"               => $keyId,
    "amount"            => $amount,
    "name"              => "Esanskriti",
    "description"       => "Online Shopping",
    "image"             => "assets/images/logo_dark.png",
    "prefill"           => [
    "name"              => $row_PAY["Bill_FirstName"],
    "email"             => $row_PAY["Bill_EmailId"],
    "contact"           => $row_PAY["Bill_Contact_No"],
    ],
    "notes"             => [
    "address"           => $address,
    "merchant_order_id" => $row_PAY["Order_ID"],
    ],
    "theme"             => [
    "color"             => "#F37254"
    ],
    "order_id"          => $razorpayOrderId,
];

if ($displayCurrency !== 'INR')
{
    $data['display_currency']  = $displayCurrency;
    $data['display_amount']    = $displayAmount;
}

$json = json_encode($data);
*/
$checkout = 'manual';

require("checkout/{$checkout}.php");
