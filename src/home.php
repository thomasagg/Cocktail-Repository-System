<?php session_start(); 
	if(!$_SESSION['user'])
		header('Location: index.php');
	$mysqli = mysqli_connect("127.0.0.1", "root", "", "cocktails");
?>
<html>	
	<head>
		<title>Welcome home, <?php echo $_SESSION['user']; ?></title>
		<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	</head>
	
	<body>
		<a href ="logout.php">Logout</a>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<a href ="add_cocktail.php">Add new cocktail</a>
		<br>
		<hr>
		<form action="search.php" method="post">
			<input type="text" placeholder="Search.." name="search">
			<input type="submit" value="Submit">
		</form>
		<hr>
		<h1><a href="home.php">Random Cocktail</a></h1>
		<hr>
		
		<?php
		
			if(isset($_REQUEST['cocktail']))
			{
				$random_cocktail = $_REQUEST['cocktail'];
			
				$cocktails = $mysqli->query("SELECT * FROM cocktail WHERE id = $random_cocktail");
				$cocktail_row = $cocktails->fetch_array();
			}
			else
			{
				$cocktails = $mysqli->query("SELECT id FROM cocktail ORDER BY RAND() LIMIT 1");
				$row = $cocktails->fetch_assoc();			
				$random_cocktail = $row['id'];
				
				$cocktails = $mysqli->query("SELECT * FROM cocktail WHERE id = $random_cocktail");
				$cocktail_row = $cocktails->fetch_array();
			}
			echo "<h2>" . $cocktail_row['name'] . "</h2>";
			
			
			$username = $_SESSION['user'];
			$result = $mysqli->query("SELECT id FROM user WHERE username = '$username'");
			$row = $result->fetch_assoc();
			$user_id = $row['id'];
			
			
			
			
			$result = $mysqli->query("SELECT COUNT(cocktail_id) FROM ratings WHERE cocktail_id = $random_cocktail AND vote = true");
			$upvotes = 0;
			if($result->num_rows)
			{
				$row = $result->fetch_assoc();
				$upvotes = $row['COUNT(cocktail_id)'];
			}
			
			$result = $mysqli->query("SELECT COUNT(cocktail_id) FROM ratings WHERE cocktail_id = $random_cocktail AND vote = false");
			$downvotes = 0;
			if($result->num_rows)
			{
				$row = $result->fetch_assoc();
				$downvotes = $row['COUNT(cocktail_id)'];
			}	
			
			$voted = $mysqli->query("SELECT vote FROM ratings WHERE cocktail_id = $random_cocktail AND user_id = $user_id");
			echo "
				<form action='vote.php' method='post'>
					<input type='hidden' name='cocktail_id' value='$random_cocktail'/>";
			
			if(!$voted->num_rows)
			{
				echo "
					<input type='submit' name='action' value='Upvote' />
					<input type='submit' name='action' value='Downvote' />
				</form>";
			}
			else
			{
				$row = $voted->fetch_assoc();
				if($row['vote'] == true)
				{
					echo "
					<strike><input type='submit' name='action' value='Upvote' /></strike>
					<input type='submit' name='action' value='Downvote' /></form>";
				}
				else
				{
					echo "
					<input type='submit' name='action' value='Upvote' />
					<strike><input type='submit' name='action' value='Downvote'/></strike></form>";
				}
				
			}
			echo "(" . ($upvotes - $downvotes) . ")";
			
			echo $cocktail_row['instruction'];
			echo "<br><h3>Ingredients for 1 drink:</h3>";
			
			$ingredient = $mysqli->query("SELECT ingredient.name, ingredient_list.quantity, 
			ingredient_list.dosage FROM ingredient, ingredient_list 
			WHERE ingredient_list.ingredient_id = ingredient.id AND ingredient_list.cocktail_id = " . $cocktail_row['id']);
			while($ingredient_row = $ingredient->fetch_array())
			{
				echo $ingredient_row['name'] . " " . $ingredient_row['quantity'] . $ingredient_row['dosage'] . "<br>";
			}
			
			echo "<br><h3>Equipment:</h3>";
			
			$equipment = $mysqli->query("SELECT equipment.name, equipment_list.quantity
			FROM equipment, equipment_list 
			WHERE equipment_list.equipment_id = equipment.id AND equipment_list.cocktail_id = " . $cocktail_row['id']);
			while($equipment_row = $equipment->fetch_array())
			{
				echo "x" . $equipment_row['quantity'] . " " . $equipment_row['name'] . "<br>";
			}
			
			echo "<br>";
		?>
		
	</body>
	<script>
	$(function() {
		  $("#addIngr").click(function(e) {
			e.preventDefault();
			$("#ingredients").append("<br>Ingredient: <input name='ingr[]' type='text' placeholder='Ingredient Name' />");
			$("#ingredients").append("<input name='ingr_quant[]' type='text' placeholder='Ingredient Quantity'/>");
			$("#ingredients").append("<input name='ingr_dosage[]' type='text' placeholder='Ingredient Dosage'/>");
		  });
	});
	</script>
	<?php mysqli_close($mysqli); ?>
</html>