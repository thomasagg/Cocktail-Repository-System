<?php
	session_start(); 
	if($_SESSION['user'])
		header('Location: home.php');
?>
<!DOCTYPE html>
<html>
	<head>
		<title>Cocktails</title>
	</head>
	<body>
		<form action="login.php" method="post">	<!-- POST GET -->
			<?php echo 'Username:' ?> <input type="text" name="user"><br>
			Password: <input type="password" name="pass"><br>
			<input type="submit" value="Submit">
		</form>
		
		<a href="register.php">New user?</a>
	</body>
</html>