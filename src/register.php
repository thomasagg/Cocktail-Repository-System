<!doctype HTML>
<html>
	<body>
	<form action="create_user.php" method="post">	<!-- POST GET -->
		<?php echo 'Username:' ?> <input type="text" name="user"><br>
		Password: <input type="password" name="pass"><br>
		Email: <input type="text" name="email"><br>
		<input type="submit" value="Register">
	</form>
	</body>
</html>