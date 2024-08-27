<?php
require 'connection/connection.php';

if(isset($_GET['active'])){
	$passwordddd=$_GET['active'];
 $passwordddd.'<br>';

   $sql = "SELECT * FROM webuser where activationcode ='".$passwordddd."'";
   $query = mysqli_query($conn,$sql) or die("Query Unsuccessful.");
   $row = mysqli_fetch_assoc($query);

      $hashedPassword=$row["activationcode"];

 if ($passwordddd === $hashedPassword) {
    $sql1 = "update webuser set status = '1' where activationcode ='".$passwordddd."'";
    if(mysqli_query($conn,$sql1)){
        ?>
        <form id="myForm" action="thankyou.php" method="post">
<input type="hidden" value="yes" name="yes">
</form>
<script type="text/javascript">
    document.getElementById('myForm').submit();
</script>
<?php
    }else{
        
    }
	
 }else
	 
 {
	 echo "notoke";
 }

}
?>