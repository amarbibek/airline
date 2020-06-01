<?php
include 'core/init.php';
//logged_in_redirect();
protect_page();
admin_protect();

include 'includes/overall/header.php';
?>
<nav>
            <ul>
                <li><a href="admin.php">Add admin</a></li>
                <li><a href="addflights.php">Add flight</a></li>
                <li><a href="modify.php">Modify flight</a></li>
                <li><a href="delete_flight.php">Delete flight</a></li>
				<li><a href="view_feedbacks.php">View feedbacks</a></li>
				<li><?php echo '<a href="https://mail.google.com/mail/?view=cm&fs=1&to= ' . $user_data['email'] . '&su=SUBJECT&body=BODY">'; ?>Send email</a></li>
            
              
            </ul>
</nav>
		<br>
		<br>
<style>
td{
	padding-left:30px;
}
</style>
		
<?php
$sql="select * from `feedback`";
$result=mysql_query($sql) or die("oops feedback");
if($result){
	echo"<table>";
	echo"<tr>";
	echo"<th>";
	echo"ID";
	echo"</th>";
	echo"<th>";
	echo"NAME";
	echo"</th>";
	echo"<th>";
	echo"EMAIL";
	echo"</th>";
	echo"<th>";
	echo"MESSAGE";
	echo"</th>";
	echo"</tr>";
	while($rows=mysql_fetch_array($result)){
		echo"<tr>";
		echo"<td>";
		echo $rows['id'];
		echo"</td>";
		echo"<td>";
		
		echo $rows['name'];
		echo"</td>";
		echo"<td>";
		
		echo $rows['email'];
		echo"</td>";
		echo"<td>";
		
		echo $rows['message'];
		echo"</td>";
		
		echo"</tr>";
	}
}
echo"</table>";
 ?>
		
		

<!--
<form action="" method="post">
<ul>
<li>
<h2>Add flights</h2>
</li>
<li>
Flight name*:<br>
<input type="text" name="flight_name" placeholder="Flight name...">
</li>
<li>
Leaving from*:<br>
<input type="text" name="leaving_from" placeholder="Source...">
</li>
<li>
Going to*:<br>
<input type="text" name="going_to" placeholder="Destination..."></li>
<li>
Departure date*:<br>
<input type="date" name="depart_date"placeholder="mm/dd/yyyy" >
</li>
<li>
Departure time*:<br>
<input type="time" name="depart_time" placeholder="hh:mm:ss">
</li>
<li>
Arrival time*:<br>
<input type="time" name="arrival_time" placeholder="hh:mm:ss">
</li>
<li>
Fare*:<br>
<input type="number" name="fare" placeholder="The amount...">

</li>
<li>
<input type="submit" value="Add flight">
</li>










</ul>
-->

<?php

include 'includes/overall/footer.php'; ?>