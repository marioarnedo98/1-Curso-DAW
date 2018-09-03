<?php
	
	// Constants
	define("TITLE", "Intro to Functions");
	
	// Custom Variables
	$myName	= "Mario";
	$lessonNum	= 23;
	
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
			
			<h2>Your Example</h2>
			
			<div class="sandbox">
				
				<h3>Using <code>sort()</code></h3>
				<?php
					
					// Custom array
					$myfullname = array("Mario", "Arnedo", "Gonzalez", "It's cool");
					
					sort($myfullname);
					foreach ($myfullname as $fullname) {
					    echo "$fullname <br>";
					}
					
				?>
				
				<h3>Using <code>rsort()</code></h3>
				<?php
					
					$toeat = array("Spaghetti", "Lasagna", "Burger", "Sausages");
					
					rsort($toeat);
					
					foreach ($toeat as $italian) {
					    echo "$italian <br>";
					}
				?>
				
				<h3>Using <code>strtolower()</code></h3>
				<?php
					$elephant = "An elephant swung on the web of a spider";
					$elephant = strtolower($elephant);
						echo $elephant;
					
				?>
				
				<h3>Using <code>sha1()</code></h3>
				<?php
					$password = "helloword";
					echo "Whithout magic: $password <br>";
					
					$password = sha1($password);
					echo "With magic: $password";
					
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
