<?php
  include 'core/init.php';
protect_page();
check_book();
include 'includes/overall/header.php';
?>
<?php
if(isset($_POST['submit'])){
  $var = $_POST['check'];
  if(empty($var))
  {
    echo("You didn't select any seats.");
  }
  else
  {
    $N = count($var);
    echo("You selected $N seats(s): ");
    for($i=0; $i < $N; $i++)
    {
      echo htmlspecialchars($var[$i] ). " ";
	 mysql_query("UPDATE tckt SET avail=0 where`id`=$var[$i]") or die("update query didnt work!!!");
    }
  }
}
?>
<html>
<head>
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
</style>
</head>
<body>
<h2>Seat selection in PHP</h2>
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
<br/>
<br/>
<br/>
<h2><p>Note:</p></h2>
<br/>
<h3><div class="booked"></div>&nbsp;&nbsp;&nbsp;Booked seats</h3>
<br/>
<h3><div class="avail"></div>&nbsp;&nbsp;&nbsp;Available seats</h3>
<input type="submit" name="submit" value="proceed"/>
</form>
</body>
</html>