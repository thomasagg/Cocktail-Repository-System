<?php
	session_start(); 
	if(!$_SESSION['user'])
		header('Location: index.php');
	$mysqli = mysqli_connect("127.0.0.1", "root", "", "cocktails");
	
	$cocktail_name = $_POST['cocktail_name'];
	$ingredients = $_POST['ingr'];
	$ingr_quant = $_POST['ingr_quant'];
	$ingr_dosage = $_POST['ingr_dosage'];
	
	$equipment = $_POST['equip'];
	$equip_quant = $_POST['equip_quant'];
	
	$step_titles = $_POST['step_title'];
	$step_descriptions = $_POST['step_descr'];
	
	$cocktail_id = -1;
	
	if($cocktail_name == "")
	{	
		echo "<h1>Please enter a cocktail name!</h2>";
		die();
	}
	else
	{
		$result = $mysqli->query("SELECT id FROM cocktail WHERE name = '$cocktail_name'");
		if ($result->num_rows)
		{
			$row = $result->fetch_assoc();
			echo "Cocktail $cocktail_name already exists";
			die();
		}
	}
	
	$instruction = '<ol>';
	foreach($step_titles as $index=>$title)
	{
		if($title == "" && $step_descriptions[$index] == "")
			continue;
		else if($title == "" && $step_descriptions[$index] != "")
		{
			echo "<h1>You can't give a step without title</h1>";
			die();
		}
		
		$instruction .= "<li>" . $title;
		if($step_descriptions[$index] != "")
		{
			$instruction .= "<ul><li>" . $step_descriptions[$index] . "</li></ul>";
		}
		$instruction .= "</li>";
	}
	$instruction .= "</ul>";
	

	$mysqli->query("INSERT INTO cocktail (name, instruction) VALUES ('$cocktail_name', '$instruction')");
	

	$result = $mysqli->query("SELECT id FROM cocktail WHERE name = '$cocktail_name'");
	$row = $result->fetch_assoc();
	$cocktail_id = $row['id'];
	

	foreach($ingredients as $index=>$ingredient)
	{
		if($ingredient == "" && $ingr_quant[$index] == "" && $ingr_dosage[$index] == "")
			continue;
		else if($ingredient == "" || $ingr_quant[$index] == "" || $ingr_dosage[$index] == "")
		{
			
			echo "<h1>You can't give an empty value to ingredient</h1>";
			$mysqli->query("DELETE FROM ingredient_list WHERE cocktail_id = '$cocktail_id'");
			$mysqli->query("DELETE FROM cocktail WHERE name = '$cocktail_name'");
			die();
		}
		
		
		$result = $mysqli->query("SELECT id FROM ingredient WHERE name = '$ingredient'");
		
		if(!$result->num_rows){
			echo "InsideIF<br>";
			$mysqli->query("INSERT INTO ingredient (name) VALUES ('$ingredient')");
		}
		
		
		$result = $mysqli->query("SELECT id FROM ingredient WHERE name = '$ingredient'");
		$row = $result->fetch_assoc();
		$ingredient_id = $row['id'];
		
		$mysqli->query("INSERT INTO ingredient_list (cocktail_id, ingredient_id, dosage, quantity) VALUES ($cocktail_id, $ingredient_id, '$ingr_dosage[$index]', $ingr_quant[$index])");
	
	}
	
	
	foreach($equipment as $index=>$eq)
	{
		if($eq == "" && $equip_quant[$index] == "")
			continue;
		else if($eq == "" || $equip_quant[$index] == "")
		{
			echo "<h1>You can't give an empty value to equipment</h1>";
			$mysqli->query("DELETE FROM equipment_list WHERE cocktail_id = '$cocktail_id'");
			$mysqli->query("DELETE FROM ingredient_list WHERE cocktail_id = '$cocktail_id'");
			$mysqli->query("DELETE FROM cocktail WHERE name = '$cocktail_name'");
			die();
		}
		
		$result = $mysqli->query("SELECT id FROM equipment WHERE name = '$eq'");
		if (!$result->num_rows)
			$mysqli->query("INSERT INTO equipment (name) VALUES ('$eq')");
		
		
		$result = $mysqli->query("SELECT id FROM equipment WHERE name = '$eq'");
		$row = $result->fetch_assoc();
		$equipment_id = $row['id'];
		
		$mysqli->query("INSERT INTO equipment_list (cocktail_id, equipment_id, quantity) VALUES ($cocktail_id, $equipment_id, $equip_quant[$index])");
	}
?>