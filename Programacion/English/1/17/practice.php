<?php
	
	// Constants
	define("TITLE", "String Operators");
	
	// Custom Variables
	$myName	= "Mario";
	$lessonNum	= 17;

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
			
			<h1>Tutorial <?php echo $lessonNum; ?>: <small><?php echo TITLE; ?></small></h1>
			<hr>
			
			<h2>Final</h2>
			
			<div class="sandbox">
				
				<h3>Concatenation Operator <code>.</code></h3>
				<?php
					$a = "El animal que tiene mas patas es el cien";
					$b = "pies";
					$c = $a . $b;
					
					echo $c;
				?>
				
				<h3>Concatenating Assignment Operator <code>.=</code></h3>
				<?php
					$a = "Deberia de poner un texto de loren Ipsum ";
					$a .= "pero no, prefiero escribir esto ";
					
					echo $a;
				?>
				
			</div><!-- end sandbox -->
			
			<a href="index.php" class="button">Back to the lecture</a>
			
			<hr>
			
			<small>&copy;<?php echo date('Y'); ?> - <?php echo $myName; ?></small>
		</div><!-- end wrapper -->
		
		<div class="copyright-info">
			<?php include('../assets/includes/copyright.php'); ?>
		</div><!-- end copyright-info -->
	</body>
</html>
