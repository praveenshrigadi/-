<?php 
session_start();
$Email=$_POST["Email"];
$Phone= $_POST["Phone"];
$Product_info = $_POST["Product_info"];
$BillName= $_POST["Name"];
$Last= $_POST["Last"];
$Address= $_POST["Address"];
$State= $_POST["State"];
$City= $_POST["City"];
$Zipcode= $_POST["Zipcode"];
$Country= $_POST["Country"];
$Shipping_Charges= $_POST["Shipping_Charges"];
$Amount= $_POST["Amount"];
$surl="succ.php";
$furl="fail.php";

$MERCHANT_KEY = "wBBBD8fF";
$SALT = "a4eY6gQSvi";
// Merchant Key and Salt as provided by Payu.

$PAYU_BASE_URL = "https://sandboxsecure.payu.in";		// For Sandbox Mode
//$PAYU_BASE_URL = "https://secure.payu.in";			// For Production Mode

$action = '';

$posted = array();
if(!empty($_POST)) {
    //print_r($_POST);
  foreach($_POST as $key => $value) {    
    $posted[$key] = $value; 
	
  }
}

$formError = 0;

if(empty($posted['txnid'])) {
  // Generate random transaction id
  $txnid = substr(hash('sha256', mt_rand() . microtime()), 0, 20);
} else {
  $txnid = $posted['txnid'];
}
$hash = '';
// Hash Sequence
$hashSequence = "key|txnid|amount|productinfo|firstname|email|udf1|udf2|udf3|udf4|udf5|udf6|udf7|udf8|udf9|udf10";
if(empty($posted['hash']) && sizeof($posted) > 0) {
  if(
          empty($posted['key'])
          || empty($posted['txnid'])
          || empty($posted['amount'])
          || empty($posted['firstname'])
          || empty($posted['email'])
          || empty($posted['phone'])
          || empty($posted['productinfo'])
          || empty($posted['surl'])
          || empty($posted['furl'])
		  || empty($posted['service_provider'])
  ) {
    $formError = 1;
  } else {
    //$posted['productinfo'] = json_encode(json_decode('[{"name":"tutionfee","description":"","value":"500","isRequired":"false"},{"name":"developmentfee","description":"monthly tution fee","value":"1500","isRequired":"false"}]'));
	$hashVarsSeq = explode('|', $hashSequence);
    $hash_string = '';	
	foreach($hashVarsSeq as $hash_var) {
      $hash_string .= isset($posted[$hash_var]) ? $posted[$hash_var] : '';
      $hash_string .= '|';
    }

    $hash_string .= $SALT;


    $hash = strtolower(hash('sha512', $hash_string));
    $action = $PAYU_BASE_URL . '/_payment';
  }
} elseif(!empty($posted['hash'])) {
  $hash = $posted['hash'];
  $action = $PAYU_BASE_URL . '/_payment';
}
?>

<html>
  <head>
  <script>
    var hash = '<?php echo $hash ?>';
    function submitPayuForm() {
      if(hash == '') {
        return;
      }
      var payuForm = document.forms.payuForm;
      payuForm.submit();
    }
  </script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  </head>
  <body onload="submitPayuForm()">
  
    <h2>Please wait, you are redirecting to gateway......</h2>
	
    <br/>
    <?php if($formError) { ?>
	
      <!--<span style="color:red">Please fill all mandatory fields.</span>-->
      <br/>
      <br/>
    <?php } ?>
    <form action="<?php echo $action; ?>" method="post" id="payuForm" name="payuForm">
	<div style="display:block;">
      <input type="hidden" name="key" value="<?php echo $MERCHANT_KEY ?>" />
      <input type="hidden" name="hash" value="<?php echo $hash ?>"/>
      <input type="hidden" name="txnid" value="<?php echo $txnid ?>" />
      <table>
        <tr>
          <td><b>Mandatory Parameters</b></td>
        </tr>
        
        <tr>
          <td>Email: </td>
          <td><input name="email" id="email" value="<?php echo (empty($Email)) ? '' : $Email; ?>" /></td>
          <td>Phone: </td>
          <td><input name="phone" value="<?php echo (empty($Phone)) ? '' : $Phone; ?>" /></td>
        </tr>
        <tr>
          <td>Product Info: </td>
          <td colspan="3"><textarea name="productinfo"><?php echo (empty($Product_info)) ? '' : $Product_info ?></textarea></td>
        </tr>
        <tr>
          <td>Success URI: </td>
          <td colspan="3"><input name="surl" value="<?php echo (empty($surl)) ? '' : $surl; ?>" size="64" /></td>
        </tr>
        <tr>
          <td>Failure URI: </td>
          <td colspan="3"><input name="furl" value="<?php echo (empty($furl)) ? '' : $furl ?>" size="64" /></td>
        </tr>

        <tr>
          <td colspan="3"><input type="hidden" name="service_provider" value="payu_paisa" size="64" /></td>
        </tr>

        <tr>
          <td><b>Optional Parameters</b></td>
        </tr>
        <tr>
          <td>Last Name: </td>
          <td><input name="lastname" id="lastname" value="<?php echo (empty($Last)) ? '' : $Last; ?>" /></td>
          <td>Cancel URI: </td>
          <td><input name="curl" value="" /></td>
        </tr>
        <tr>
          <td>Address1: </td>
          <td><input name="address1" value="<?php echo (empty($Address)) ? '' : $Address; ?>" /></td>
        </tr>
        <tr>
          <td>City: </td>
          <td><input name="city" value="<?php echo (empty($City)) ? '' : $City; ?>" /></td>
          <td>State: </td>
          <td><input name="state" value="<?php echo (empty($State)) ? '' : $State; ?>" /></td>
        </tr>
        <tr>
          <td>Country: </td>
          <td><input name="country" value="<?php echo (empty($Country)) ? '' : $Country; ?>" /></td>
          <td>Zipcode: </td>
          <td><input name="zipcode" value="<?php echo (empty($Zipcode)) ? '' : $Zipcode; ?>" /></td>
        </tr>
        <tr>
          <td>UDF1: </td>
          <td><input name="udf1" value="<?php echo (empty($Shipping_Charges)) ? '' : $Shipping_Charges; ?>" /></td>
       
        <tr>
         <td>PG: </td>
          <td><input name="pg" value="<?php echo (empty($posted['pg'])) ? '' : $posted['pg']; ?>" /></td>
        </tr>
		<tr>
          <td>Amount: </td>
          <td><input name="amount" value="<?php echo (empty($Amount)) ? '0' : $Amount ?>" /></td>
          <td>First Name: </td>
          <td>
		  <input name="firstname" id="firstname" value="<?php echo (empty($BillName)) ? '' : $BillName; ?>"></td>

			
			</tr>
        <tr>
         <?php if(!$hash) { ?>
            <td colspan="4"><input type="submit" name="submit" id="submit" value="Submit" /></td>
          <?php } ?>
        </tr>

      </table>
	  </div>
	   
    </form>
<script type="text/javascript">
        window.onload = function () {
        document.payuForm.submit.click();
        }
    </script>

  </body>
</html>