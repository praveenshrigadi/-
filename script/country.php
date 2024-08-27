<?php
include('../connection/connection.php');
session_start();

// Initialize total price as float
$total_price = 0.0;

if (isset($_SESSION['webuser_id'])) {
    foreach ($_SESSION['webuser_id'] as $values) {
        $currency = $values["product_currency"];

        // Determine the price based on options
        $price = ($values["product_Option"] === 'None' || empty($values["product_OptPrice"]))
            ? $values["product_price_webuser"]
            : $values["product_OptPrice"];

        // Remove commas and convert price to float
        $price = str_replace(',', '', $price);
        $price = floatval($price);

        // Calculate total price for this item
        $quantity = intval($values["product_quantity_webuser"]); // Ensure quantity is an integer
        $t = $quantity * $price;
        $total_price += $t;
    }
}

// Convert total price to float for comparison
$total_price = floatval($total_price);

if ($total_price <= 2000 &&  $_POST["country_id"] == 103) {
    if (!empty($_POST["country_id"]) && isset($_POST['weight'])) {
        $state_id = intval($_POST["country_id"]); // Sanitize input
        $weight = floatval($_POST['weight']); // Sanitize input

        // Prepare and execute query with parameterized statements
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
        $row = $result->fetch_assoc();
        
        if ($result->num_rows > 0) {
            // Determine price based on currency
            if ($currency === 'USD') {
                $price = !empty($row['USD_Price']) ? $row['USD_Price'] : 0;
            } elseif ($currency === 'INR') {
                $price = !empty($row['INR_Price']) ? $row['INR_Price'] : 0;
            } else {
                $price = 0;
            }
        } else {
            // Fallback query if no result found
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
            
            if ($result->num_rows > 0) {
                // Determine price based on currency
                if ($currency === 'USD') {
                    $price = !empty($row['USD_Price']) ? $row['USD_Price'] : 0;
                } elseif ($currency === 'INR') {
                    $price = !empty($row['INR_Price']) ? $row['INR_Price'] : 0;
                } else {
                    $price = 0;
                }
            } else {
                $price = 0;
            }
        }
    } else {
        $price = 0;
    }
} else {
    $price = 0;
}

$format = number_format((float)$price, 2, ".", "");
echo $format;
?>
