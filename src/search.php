<?php session_start(); 
	if(!$_SESSION['user'])
		header('Location: index.php');
	$mysqli = mysqli_connect("127.0.0.1", "root", "", "cocktails");
		
	$search = $_POST['search'];
	$cocktail_list = array();

	
	$result = $mysqli->query("SELECT id FROM cocktail WHERE name = '$search'");	
	if($result->num_rows)
	{
		while($row = $result->fetch_array())
		{
			$cocktail_list[] = $row['id'];
		}	
	}
	
	$result = $mysqli->query("SELECT id FROM ingredient WHERE name = '$search'");	
	if($result->num_rows)
	{
		while($row = $result->fetch_array())
		{
			$ingredient_id = $row['id'];
			$c = $mysqli->query("SELECT cocktail_id FROM ingredient_list WHERE ingredient_id = $ingredient_id");
			while($r = $c->fetch_array())
				$cocktail_list[] = $r['cocktail_id'];
		}	
	}
	
	$result = $mysqli->query("SELECT id FROM equipment WHERE name = '$search'");	
	if($result->num_rows)
	{
		while($row = $result->fetch_array())
		{
			$ingredient_id = $row['id'];
			$c = $mysqli->query("SELECT cocktail_id FROM equipment_list WHERE equipment_id = $ingredient_id");
			while($r = $c->fetch_array())
				$cocktail_list[] = $r['cocktail_id'];
		}	
	}
	
	$result = array_unique($cocktail_list);
	$_SESSION['cocktail_list'] = $result;
	header('Location: result.php');
	
?>