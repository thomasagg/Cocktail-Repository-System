<?php
session_start(); 
if(!$_SESSION['user'])
	header('Location: index.php');
$mysqli = mysqli_connect("127.0.0.1", "root", "", "cocktails");
	
$cocktail_id = $_POST['cocktail_id'];

$username = $_SESSION['user'];
$result = $mysqli->query("SELECT id FROM user WHERE username = '$username'");
$row = $result->fetch_assoc();
$user_id = $row['id'];

$result = $mysqli->query("SELECT vote FROM ratings WHERE user_id = $user_id AND cocktail_id = $cocktail_id");
if(!$result->num_rows)
{

	if ($_POST['action'] == 'Upvote') {
		$mysqli->query("INSERT INTO ratings (user_id, cocktail_id, vote) VALUES ('$user_id', '$cocktail_id', true)");
		Header("Location: home.php?cocktail=".$cocktail_id);
	} else if ($_POST['action'] == 'Downvote') {
		$mysqli->query("INSERT INTO ratings (user_id, cocktail_id, vote) VALUES ('$user_id', '$cocktail_id', false)");
		Header("Location: home.php?cocktail=".$cocktail_id);
	} else {
		header('Location: home.php');
	}
}
else
{
	$row = $result->fetch_assoc();
	$vote = $row['vote'];
	if ($_POST['action'] == 'Upvote') {
		$mysqli->query("DELETE FROM ratings WHERE user_id = $user_id AND cocktail_id = $cocktail_id");
		if($vote == false)
			$mysqli->query("INSERT INTO ratings (user_id, cocktail_id, vote) VALUES ('$user_id', '$cocktail_id', true)");
		Header("Location: home.php?cocktail=".$cocktail_id);
	} else if ($_POST['action'] == 'Downvote') {
		$mysqli->query("DELETE FROM ratings WHERE user_id = $user_id AND cocktail_id = $cocktail_id");
		if($vote == true)
			$mysqli->query("INSERT INTO ratings (user_id, cocktail_id, vote) VALUES ('$user_id', '$cocktail_id', false)");
		Header("Location: home.php?cocktail=".$cocktail_id);
	} else {
		header('Location: home.php');
	}
}

?>