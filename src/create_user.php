<?php

	$user = $_POST["user"];
	$pass = $_POST["pass"];
	$email = $_POST["email"];
	
	$mysqli = mysqli_connect("127.0.0.1", "root", "", "cocktails");

	if (!$mysqli) {
		echo "Error: Unable to connect to MySQL." . PHP_EOL;
		die();
	}
	
	$result = $mysqli->query("SELECT id, username, password, email FROM user WHERE username = '$user' OR email = '$email'");
	if (! $result->num_rows)
	{	
		$mysqli->query("INSERT INTO user (email, username, password) VALUES ('$email', '$user', '$pass')");
		echo "<h1>User successfully registered!</h1><br><h2><a href='index.php'>Go to homepage</a></h2>";
	}
	else	
	{
		echo "<h1>User with the same username or email already exists.</h1>";
	}
	
	if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
		$echo "<h1>Invalid email format</h1>";
	}
	
	mysqli_close($mysqli);
	
	?>