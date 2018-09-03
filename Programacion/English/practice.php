<?php
	
	// Constants
	define("TITLE", "If, Else, Elseif");
	
	// Custom Variables
$my_name	= "Mario Arnedo";
$species			= "Estegosaurio";
$nativeLanguage		= "Spanish";
$yearsOnEarth 		= 19;
?>

<!DOCTYPE html>
<html>
	<head>
		<title>PHP <?php echo TITLE; ?></title>
		<link href="../assets/styles.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper">
			<a href="/" title="Back to directory" id="logo">
				<img src="../assets/img/logo.png" alt="PHP">
			</a>
			
			<h1>Get Your Hands Dirty: <small><?php echo TITLE; ?></small></h1>
			<hr>
			
			<h2>Your Example</h2>
			
			<div class="sandbox">
				<?php
					if ($species == "Human") {
         
				        echo "<p>Welcome, Human. You and the rest of the humans will love this big earth.</p>";

				    } elseif ($species == "Estegosaurio") {
				         
				        echo "<p>Welcome, Estegosaurio! Please leave the boy human alone. </p>";
				         
				    } else {
				         
				        echo "<p>Welcome to Earth!Please.Don't touch.anything. Have fun!</p>";
				         
				    }
				?>
				<h5>Another example:</h5>
				
				<?php
				
					if ($yearsOnEarth == 18) {
						
						echo "<p>Congratulations for being on Earth for 20 years! U can go to the disco and buy some alchohol!</p>";
						
					} elseif ($yearsOnEarth < 18) {
						
						echo "<p>U are a little older to go to the disco...</p>";
						
					} else {
						
						echo "<p>U can go to the disco!!! Have fun!!</p>";
						
					}
				
				?>
				<h5>A combination:</h5>
				
				<?php
				
					if ($nativeLanguage == "Spanish") {
						
						echo "<p>Hola que tal no deberia de estar esto aqui por que es una asignatura en ingles pero da igual un saludo profe</p>";
						
					} elseif ($species == "Estegosaurio") {
						
						echo "<p>Oh! You must be a Estegosaurio. I'm glad to meet u. You rock</p>";
						
					} else {
						
						echo "<p>Well then, you do not speak Spanish, or are you a human. So sad to hear this...</p>";
						
					}
				
				?>
				
			</div><!-- end sandbox -->
			
			<a href="index.php" class="button">Back to the lecture</a>
			
			<hr>
			
			<small>&copy;<?php echo date('Y'); ?> - <?php echo $my_name; ?></small>
		</div><!-- end wrapper -->
		
		<div class="copyright-info">
			<?php include('../assets/includes/copyright.php'); ?>
		</div><!-- end copyright-info -->
	</body>
</html>
