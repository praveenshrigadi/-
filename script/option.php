<?php
include('../connection/connection.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $cur = $_POST['currency'];
    $oid = $_POST['id'];
    $opt = $_POST['opt'];
    $pid = $_POST['pid'];
    $html = array();

    // Check if the database connection is established
    if (!$conn) {
        $html['error'] = "Database connection failed.";
        echo json_encode($html);
        exit();
    }

    if ($opt != 'None') {
        // Use prepared statements to prevent SQL injection
        $sql = "SELECT * FROM `options` WHERE id = ? AND Opt_Name = ?";
        $stmt = $conn->prepare($sql);
        if ($stmt) {
            $stmt->bind_param("is", $oid, $opt); // 'i' for integer, 's' for string
            $stmt->execute();
            $result = $stmt->get_result();
            $row = $result->fetch_assoc();

            if ($row) {
                if ($cur == "USD") {
                    $html['currency'] = "USD";
                    $price = $row['USDPrice'];
                } else {
                    $html['currency'] = "INR";
                    $price = $row['Price'];
                }
                $html['price'] = number_format((float)$price, 2, ".");
                $html['id'] = $pid;
                $html['opt'] = $opt;
                $html['desc'] = $row['Description'];
            } else {
                // No matching records found
                $html['error'] = "No matching records found for id: $oid and opt: $opt.";
            }
            $stmt->close();
        } else {
            // SQL prepare error
            $html['error'] = "Failed to prepare the SQL statement.";
        }
    } else {
        $html['price'] = '0.00';
        $html['id'] = $pid;
        $html['opt'] = $opt;
        $html['desc'] = 'None';
    }

    echo json_encode($html);
}
?>
