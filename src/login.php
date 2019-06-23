<?php

	$mysqli = mysqli_connect("127.0.0.1", "root", "", "cocktails");
	if (!$mysqli) {
		echo "<h1>Error: Unable to connect to MySQL.</h1>" . PHP_EOL;
		die();
	}
	
	$user = $_POST["user"];
	$pass = $_POST["pass"];
	
	$result = $mysqli->query("SELECT id, username, password, email FROM user WHERE username = '$user'");
	if (!$result->num_rows)
	{
		echo "<h1>User with username $user wasnt found.</h1>";
	}
	else
	{
		$row = $result->fetch_assoc();
		if( $pass == $row["password"] )
		{

			session_start();
			$_SESSION['user'] = $user; 
			header('Location: home.php'); // REDIRECT
		}
		else
			echo "<h1>Username or Password is invalid</h1>";
	}
	mysqli_close($mysqli);	


?>