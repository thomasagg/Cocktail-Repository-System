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
		<form action="add_2database.php" method="post">
			Cocktail name: <input name="cocktail_name" type="text" placeholder="Name" />
			<br><br>
			<div id="ingredients">
				Add ingredients:
				<br>
				Ingredient: <input name="ingr[]" type="text" placeholder="Ingredient Name" />
				<input name='ingr_quant[]' type='text' placeholder='Ingredient Quantity'/>
				<input name='ingr_dosage[]' type='text' placeholder='Ingredient Dosage'/>
			</div>
			<button id="addIngr">Add more ingredients</button>
			
			<br><br>
			<div id="equipment">
				Add equipment:
				<br>
				Equipment: <input name="equip[]" type="text" placeholder="Equipment Name" />
				<input name='equip_quant[]' type='text' placeholder='Equipment Quantity'/>
			</div>
			<button id="addEquip">Add more equipment</button>
			
			<br><br>
			<div id="steps">
				Add Steps:
				<br>
				<input name="step_title[]" type="text" placeholder="Step Title"/>
				<input name="step_descr[]" type="text" placeholder="Step Description"/>
			</div>
			<button id="addStep">Add more steps</button>
			
			<br><br>
			<input type="submit">
			
		</form>
	</body>
	<script>
		$(function() {
		  $("#addIngr").click(function(e) {
			e.preventDefault();
			$("#ingredients").append("<br>Ingredient: <input name='ingr[]' type='text' placeholder='Ingredient Name' />");
			$("#ingredients").append("<input name='ingr_quant[]' type='text' placeholder='Ingredient Quantity'/>");
			$("#ingredients").append("<input name='ingr_dosage[]' type='text' placeholder='Ingredient Dosage'/>");
		  });
		  
		  $("#addEquip").click(function(e) {
			e.preventDefault();
			$("#equipment").append("<br>Equipment: <input name='equip[]' type='text' placeholder='Equipment Name' />");
			$("#equipment").append("<input name='equip_quant[]' type='text' placeholder='Equipment Quantity'/>");
		  });
		  
		  $("#addStep").click(function(e) {
			e.preventDefault();
			$("#steps").append("<br><input name='step_title[]' type='text' placeholder='Step Title'/><input name='step_descr[]' type='text' placeholder='Step Description' />");
		  });
		  
		  
		});

		</script>
	<?php mysqli_close($mysqli); ?>
</html>