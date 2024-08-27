<?php
// Include your database connection file
include('../../connection/connection.php');

session_start();
$html = array();

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Collect form data
    $main = mysqli_real_escape_string($conn, $_POST['MainCategory']);
	$sub = mysqli_real_escape_string($conn, $_POST['SubCategory']);
    $name = mysqli_real_escape_string($conn, $_POST['name']);
    $Meta_Title = mysqli_real_escape_string($conn, $_POST['Meta_Title']);
    $Meta_Description = mysqli_real_escape_string($conn, $_POST['Meta_Description']);
    $Meta_Keywords = mysqli_real_escape_string($conn, $_POST['Meta_Keywords']);
    $Description = mysqli_real_escape_string($conn, $_POST['Description']);
    $time = time();

   // File upload handling
$targetDir = "../category-img/";

// Add timestamp to the filename to make it unique
$timestamp = time();
$imageFileName = $timestamp . '_' . basename($_FILES["image"]["name"]);
$targetFile = $targetDir . $imageFileName;
 
$uploadOk = 1;
$imageFileType = strtolower(pathinfo($targetFile, PATHINFO_EXTENSION));


    // Check if image file is a actual image or fake image
    if (isset($_POST["submit"])) {
        $check = getimagesize($_FILES["image"]["tmp_name"]);
        if ($check !== false) {
            $uploadOk = 1;
        } else {
            $html['error'] = 'error';
            $html['msg'] = 'File is not an image.';
            $uploadOk = 0;
        }
    }

    // Check file size (less than 500KB)
    if ($_FILES["image"]["size"] > 500000) {
        $html['error'] = 'error';
        $html['msg'] = 'Sorry, your file is too large. It should be less than 500KB.';
        $uploadOk = 0;
    }

    // Allow certain file formats
    if ($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
        && $imageFileType != "gif"
    ) {
        $html['error'] = 'error';
        $html['msg'] = 'Sorry, only JPG, JPEG, PNG & GIF files are allowed.';
        $uploadOk = 0;
    }

    // Check if $uploadOk is set to 0 by an error
    if ($uploadOk == 0) {
        $html['error'] = 'error';
        //$html['msg'] = 'Sorry, your file was not uploaded.';
        // if everything is ok, try to upload file
    } else {
        if (move_uploaded_file($_FILES["image"]["tmp_name"], $targetFile)) {
            // File uploaded successfully, now insert data into the database
            $sql = "INSERT INTO `2nd_sub_category`(`sub_category`, `sub_sub_categroy`, `img`, `description`, `main_category`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
                    ('$sub','$name', '$imageFileName', '$Description','$main','$Meta_Title','$Meta_Keywords','$Meta_Description')";

            // Execute the query
            if (mysqli_query($conn, $sql)) {
                $html['error'] = 'success';
                $html['msg'] = 'Successfully Inserted';
            } else {
                // Failed
                $html['error'] = 'error';
                $html['msg'] = 'Failed to Inserted: ' . mysqli_error($conn);
            }
        } else {
            // Error in uploading the file
            $html['error'] = 'error';
            $html['msg'] = 'Sorry, there was an error uploading your file.';
        }
    }

    // Close the database connection
    mysqli_close($conn);
} else {
    $html['error'] = 'error';
    $html['msg'] = 'Direct access not allowed';
}

echo json_encode($html);
?>
