<?php session_start(); 
	if(!$_SESSION['user'] || !isset($_SESSION['cocktail_list']))
		header('Location: index.php');
	$mysqli = mysqli_connect("127.0.0.1", "root", "", "cocktails");
?>
<html>	
	<head>
		<title>Welcome home, <?php echo $_SESSION['user']; ?></title>
	</head>
	
	<body>
		<a href ="logout.php">Logout </a>
		<br>
		<hr>
		<h1><a href="home.php">Cocktails</a></h1>
		<hr>
		
		<?php
			foreach($_SESSION['cocktail_list'] as $cocktail_id)
			{
				$cocktails = $mysqli->query("SELECT * FROM cocktail WHERE id = $cocktail_id");
				$cocktail_row = $cocktails->fetch_assoc();
				echo "<h2>" . $cocktail_row['name'] . "</h2>";
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
			}
			
			$_SESSION['cocktail_list'] = NULL;
		?>
		
	</body>
	<?php mysqli_close($mysqli); ?>
</html>