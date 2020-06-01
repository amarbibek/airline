<?php
include 'core/init.php';
logged_in_redirect();
include 'includes/overall/header.php';

?>
<?php
$email = trim($_GET['email']);
	//if (isset($_GET['success']) === true && empty($_GET['success']) === true) {
	mysql_query("UPDATE `users` SET `active` = 1 WHERE `email` = '$email'");
	echo "<h2>Thanks,we have activated your account...</h2>
<p>you're free to login.</p>";

?>
<?php
include 'includes/overall/footer.php';
?>