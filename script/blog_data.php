<?php
session_start();
include('../connection/connection.php');

$limit = 6;
if(isset($_POST['page_no'])){
  $page = $_POST['page_no'];
}else{
  $page = 0;
}

$sql = "SELECT * FROM blog_page order by id desc LIMIT {$page},$limit";
$query = mysqli_query($conn,$sql) or die("Query Unsuccessful.");
  $output = "";
if(mysqli_num_rows($query) > 0){
    if(isset($_POST['page_no'])){
     $i=$_POST['page_no'];   
    }else{
$i=0;        
    }


    while($row = mysqli_fetch_assoc($query)) {
     
     $last_id = ++$i;;
	   $output .= " <div class='col-xl-4 col-md-6'>
                        <div class='blog_post blog_style2 box_shadow1'>
                            <div class='blog_img'>
                                <a href='articles-single.php?id={$row['id']}'>
                                    <img src='admin/blog-img/{$row['image']}' alt='blog_small_img1'>
                                </a>
                            </div>
                            <div class='blog_content bg-white'>
                                <div class='blog_text'>
                                    <h6 class='blog_title'><a href='articles-single.php?id={$row['id']}'>{$row['name_title']}</a></h6>
                                    <div class='product_desc' style=' display: -webkit-box;-webkit-line-clamp: 4;-webkit-box-orient: vertical;overflow: hidden;text-overflow: ellipsis;'>
                                    {$row['content']}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>";
    }    
      $output .= "</div>
                <div class='col-12 mt-2 mt-md-4' id='pagination' style='text-align-last: center;'>
                <button  id='ajaxbtn' class='btn btn-fill-out btn-sm rounded-0' data-id='{$last_id}'>Load More</button>
                </div>
	   ";        
             

}else{
 $output .= "<div class='col-12 mt-2 mt-md-4' id='pagination' style='text-align-last: center;'>
                      
                </div>";
}
    echo $output; 
mysqli_close($conn);
?>