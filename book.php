<?php
include 'core/init.php';
protect_page();
check_book();
global $total;
global $out1;
$total = array();
$out1 = array();
include 'includes/overall/header.php';
session_start();
?>
<?php
if(isset($_SESSION['sessionvar'])){
$passengers = $_SESSION['sessionvar'];
}
?>
<?php
if(isset($_POST['hi']) || isset($_POST['hii'])){
 $_SESSION['booked'] = $_POST['hi'];
  $_SESSION['booked1'] = $_POST['hii'];

 //print_r($_SESSION['booked']);exit;
}
?>
<?php
if(isset($_POST['submit'])){

	$_SESSION['tickets']=$_POST['check'];
	//print_r($_SESSION['tickets']);
	//print_r($_SESSION['tickets']);
	//exit;
  $var = $_POST['check'];
  if(empty($var))
  {
    echo("You didn't select any seats.");
  }
  else
  {
    $N = count($var);
    if($N==$_SESSION['sessionvar']){

   
    echo("You selected $N seats(s): ");
    for($i=0; $i < $N; $i++)
    {
      echo htmlspecialchars($var[$i] ). " ";
	 mysql_query("UPDATE tckt SET avail=0 where`id`=$var[$i]") or die("update query didnt work!!!");
    }
     }else{
     	echo 'please select ';  echo $_SESSION['sessionvar']; echo " seats... ";
     }
  }
}
?>

<style>
.booked{
background-color:red;
width:50px;
height:50px;	
float:left;
border:2px solid black;
}
.avail{
background-color:green;
width:50px;
height:50px;
float:left;
border:2px solid black;	
}
h2 p{
	//float: left;
	//clear: both;
}	
</style>


<h2>Select <?php echo $_SESSION['sessionvar']?> Seat(s) only! </h2>
<form action="" method="POST">
<?php
	$res = mysql_query("SELECT * FROM tckt ");
 while($row=mysql_fetch_array($res)) {
   $id= $row['id'];
   if($row['avail']==0){
	   echo '<div class="booked">';
	  echo ' <input type="checkbox" name="check" id="check" disabled="disabled" value="';
    echo $id;
	 echo'" />';
	  echo $id;
	 echo '</div>';
   }else{
	     echo '<div class="avail">';
	  echo ' <input type="checkbox" name="check[]" id="check"  value="';
echo $id;
	 echo'" />';
	   echo $id;
	    echo '</div>';
   }
 }
?>

<h2><p>Note:</p></h2> 
<br/>
<h3><div class="booked"></div>&nbsp;&nbsp;&nbsp;Booked seats</h3>
 <br>
 <h2><p>Note:</p></h2>
<!--  <br>
 <br> -->
<h3><div class="avail"></div>&nbsp;&nbsp;&nbsp;Available seats</h3><br>
<input type="submit" name="submit" value="proceed"/>
</form>
 




<script type="text/javascript">

  function checkForm(form)
  {
    
    if(!form.terms.checked) {
      alert("Please indicate that you accept the Terms and Conditions");
      form.terms.focus();
      return false;
    }
    return true;
  }

</script>
<?php 
//print_r($_SESSION['booked']);
 ?>
<?php
$i=1;
if($passengers >0) {
	while ($i <= $passengers)
	{
		
echo "<h2>Please provide passenger $i details:</h2>";	
echo '<form action="payment.php" method="POST"  onsubmit="return checkForm(this);">
<ul>
<li>
Title:
<select>
<option>Mr.</option>
<option>Mrs.</option>
<option>Ms.</option>
</select>
</li>
<li>
First name*:<br>
<input type="text" required name="fname[]" onkeypress="return onlyAlphabets(event,this);"  placeholder="your firstname here...">
</li>
<li>
Last name*:<br>
<input type="text" required name="lname[]" onkeypress="return onlyAlphabets(event,this);"  placeholder="your lastname here...">
</li>
<li>
Passport No.:<br>
<input type="text" name="passport[]" placeholder="your passport No."></li>
<li>
Visa No.:<br>
<input type="text" name="visa[]" placeholder="your Visa No.">
</li>
<li>
Country:
<select>
<option>Afghanistan</option>
<option>Nepal</option>
<option>India</option>
</select>
</li>
<li>
Address1*:<br>
<input type="text" required name="address1[]" placeholder="Enter your address...">
</li>
<li>
Address2:<br>
<input type="text" name="address2[]" placeholder="Enter your address2...">
</li>
<li>
Email*:<br>
<input type="text" required  placeholder="example@mail.com" name="email[]">

</li>
<li>
Contact*:<br>
<input type="number" required  name=contact[]" placeholder="Enter your contact No...">

</li>
<li>
PIN(Enter mobile number for ticket cancellation)*:<br>
<input type="text" required name="pin[]" placeholder="Enter a PIN...">
</li>
 ';

//$j= $_POST['fname'].' '.$_POST['lname'];
//echo $j;
//$out1[$i] = $_POST['fname'];


$i = $i + 1;
	}			
?>
<li>
<li>
<input type="checkbox" name="terms" value="terms"> I agree the terms and conditions of your site.<br>
</li>
<input type="submit" value="Continue" name="continue">
</li>
</ul>

</form>
<?php

}else{
	echo"Please select the number of passengers while searching the flight.&nbsp;&nbsp;&nbsp;"; 
	echo '<a href="flight.php">Goto flight page&nbsp;&nbsp;>></a>';

}

?>



	<?php
	
	$_SESSION['ticket'] = $_POST;
	// $_SESSION['booked'] = $_POST['hi'];
 // $_SESSION['booked1'] = $_POST['hii'];
	
	
	?>			
<?php

include 'includes/overall/footer.php';?>
