<?php
// Include your database connection file
include('../../connection/connection.php');

session_start();
$html = array();
// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
 // Collect form data
$id = mysqli_real_escape_string($conn, $_POST['id']);
$name = mysqli_real_escape_string($conn, $_POST['name']);
$meta_title = mysqli_real_escape_string($conn, $_POST['meta_title']);
$meta_description = mysqli_real_escape_string($conn, $_POST['meta_description']);
$meta_keywords = mysqli_real_escape_string($conn, $_POST['meta_keywords']);
$BlogCategory = mysqli_real_escape_string($conn, $_POST['BlogCategory']);
$description = mysqli_real_escape_string($conn, $_POST['description']);
$time = time();
$date = date('y-m-d');

$sql="select * from blog_page where id = '".$id."'";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_assoc($result);
$old = $row['image'];
if ($_FILES['image']['size'] != 0) {
    
   // File upload handling
$targetDir = "../blog-img/";
unlink($targetDir.$old);
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
            $sql = "UPDATE `blog_page` SET `name_title` = '".$name."', `content` = '".$description."', `blog_date`= '".$date."', `Blog_category`= '".$BlogCategory."', `image`= '".$imageFileName."', `meta_description`= '".$meta_description."', `meta_keyword`= '".$meta_keywords."', `meta_title`= '".$meta_title."' WHERE `id` = '".$id."'";

            // Execute the query
            if (mysqli_query($conn, $sql)) {
                $html['error'] = 'success';
                $html['msg'] = 'Successfully Update';
            } else {
                // Failed
                $html['error'] = 'error';
                $html['msg'] = 'Failed to Update: ' . mysqli_error($conn);
            }
        } else {
            // Error in uploading the file
            $html['error'] = 'error';
            $html['msg'] = 'Sorry, there was an error uploading your file.';
        }
    }
}else{
	// File uploaded successfully, now insert data into the database
            $sql = "UPDATE `blog_page` SET `name_title` = '".$name."', `content` = '".$description."', `blog_date`= '".$date."', `Blog_category`= '".$BlogCategory."', `meta_description`= '".$meta_description."', `meta_keyword`= '".$meta_keywords."', `meta_title`= '".$meta_title."' WHERE `id` = '".$id."'";

            // Execute the query
            if (mysqli_query($conn, $sql)) {
                $html['error'] = 'success';
                $html['msg'] = 'Successfully Update';
            } else {
                // Failed
                $html['error'] = 'error';
                $html['msg'] = 'Failed to Update: ' . mysqli_error($conn);
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
