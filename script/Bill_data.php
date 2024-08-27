<?php 
session_start();
include('../connection/connection.php');

if (isset($_SESSION['webuser_id'])) {
    $total_price = 0.0;
    $weight = 0.0;
    $cur = '';

    foreach ($_SESSION['webuser_id'] as $values) {
        $weight += $values["product_weight"] * $values["product_quantity_webuser"];
        
        // Determine price based on options
        $price = ($values["product_OptPrice"] === 'None' || empty($values["product_OptPrice"]))
            ? $values["product_price_webuser"]
            : $values["product_OptPrice"];
        
        // Remove commas and convert to float
        $price = floatval(str_replace(',', '', $price));
        $total_price += $values["product_quantity_webuser"] * $price;

        $cur = $values["product_currency"];
    }

    $json = json_encode($_SESSION['webuser_id']);
}

$state_id = ($_POST["Ship_country"] != $_POST["Bill_country"]) 
    ? intval($_POST["Ship_country"]) 
    : intval($_POST["Bill_country"]);

$weight = floatval($weight);

if ($total_price <= 2000 && $state_id == 103) {
    // Prepare and execute SQL query for shipping charges
    $stmt = $conn->prepare("
        SELECT *
        FROM country_fridget c
        JOIN zoneeditor z ON z.Zone_name = c.zone
        WHERE c.id = ? AND z.Weight >= ?
        LIMIT 1
    ");
    $stmt->bind_param("id", $state_id, $weight);
    $stmt->execute();
    $result = $stmt->get_result();
    
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $price = ($cur === 'USD') ? $row['USD_Price'] : ($cur === 'INR' ? $row['INR_Price'] : 0);
    } else {
        // Fallback query for shipping charges
        $stmt = $conn->prepare("
            SELECT *
            FROM country_fridget c
            JOIN zoneeditor z ON z.Zone_name = c.zone
            WHERE c.id = ? AND z.Weight <= ?
            ORDER BY z.id DESC
            LIMIT 1
        ");
        $stmt->bind_param("id", $state_id, $weight);
        $stmt->execute();
        $result = $stmt->get_result();
        $row = $result->fetch_assoc();

        $price = ($cur === 'USD') ? $row['USD_Price'] : ($cur === 'INR' ? $row['INR_Price'] : 0);
    }
} else {
    $price = 0;
}

$charg = floatval($price);
$total = $charg + $total_price;

function generateOrderID($conn)
{
    do {
        $ord = substr(str_shuffle('0123456789'), 0, 8);
        $stmt = $conn->prepare("SELECT count(Order_ID) AS count FROM order_details WHERE Order_ID = ?");
        $stmt->bind_param("s", $ord);
        $stmt->execute();
        $result = $stmt->get_result();
        $row = $result->fetch_assoc();
    } while ($row['count'] > 0);

    return $ord;
}

$ord = generateOrderID($conn);

$BillName = $_POST["Bill_name"];
$BillLast = $_POST["Bill_last"];
$BillCountry = $_POST["Bill_country"];
$BillAddress = $_POST["Bill_address"];
$BillCity = $_POST["Bill_city"];
$BillState = $_POST["bill_state"];
$BillZipcode = $_POST["bill_zipcode"];
$BillEmailid = $_POST["bill_email"];
$BillPhone = $_POST["bill_phone"];
$ShipName = $_POST["ship_name"];
$ShipLast = $_POST["ship_last"];
$ShipCountry = $_POST["Ship_country"];
$ShipAddress = $_POST["ship_address"];
$ShipCity = $_POST["ship_city"];
$ShipState = $_POST["ship_state"];
$ShipZipcode = $_POST["ship_zipcode"];
$Information = $_POST["additional_information"];
$userid = $_SESSION["ID"];
$status = "pending";

// Prepare and execute SQL query for inserting order details
$stmt = $conn->prepare("
    INSERT INTO order_details (
       `Bill_FirstName`, `Bill_LastName`, `Bill_Country`, `Bill_Address1`, `Bill_City`, `Bill_State`, `Bill_Zipcode`, `Bill_EmailId`, `Ship_FirstName`, `Ship_LastName`, `Ship_Country`, `Ship_Address1`, `Ship_City`, `Ship_State`, `Ship_Zipcode`, `Additional_Info`, `Product_info`, `Order_ID`, `Bill_Contact_No`, `Order_status`, `Payment_status`, `Shipping_Charges`, `Total`,`currency`, `userid`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
");

$stmt->bind_param(
    "sssssssssssssssssssssssss",
    $BillName, $BillLast, $BillCountry, $BillAddress, $BillCity,
    $BillState, $BillZipcode, $BillEmailid, $ShipName, $ShipLast,
    $ShipCountry, $ShipAddress, $ShipCity, $ShipState, $ShipZipcode,
    $Information, $json, $ord, $BillPhone, $status,
    $status, $charg, $total, $cur, $userid
);

if ($stmt->execute()) {
    $mainid = $stmt->insert_id;

    // Decode JSON
    $data_array = json_decode($json, true);

    // Prepare and execute SQL query for inserting sub-order details
    $stmt = $conn->prepare("
        INSERT INTO sub_order (
            orderid, product_id, product_name, currency, amount, quantity, images, date, time, mainorderid
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    ");

    foreach ($data_array as $item) {
        $pid = $item['product_id_webuser'];
        $name = $item['product_name_webuser'];
        $price1 = empty($item["product_OptPrice"]) || $item["product_OptPrice"] === 'None'
            ? $item["product_price_webuser"]
            : $item["product_OptPrice"];
        $price = floatval(str_replace(',', '', $price1));
        $qty = $item['product_quantity_webuser'];
        $images = $item['product_images_webuser'];
        $date = date('Y-m-d');
        $time = date('H:i:s');

        $stmt->bind_param("ssssssssis", $ord, $pid, $name, $cur, $price, $qty, $images, $date, $time, $mainid);
        $stmt->execute();
    }

    echo $ord;
} else {
    echo "Error: " . $stmt->error;
}
?>
