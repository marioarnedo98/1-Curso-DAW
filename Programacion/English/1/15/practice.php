<?php
	
	// Constants
	define("TITLE", "Logical Operators");
	
	// Custom Variables
	$myName	= "Mario";
	$lessonNum	= 15;
	
    $username = "Juana la Loca";
    $password = "amo a felipe";
    
    $cartTotal = 85.99;
    $couponCode = "25Discount";

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
			
			<h2>Final Example</h2>
			<p>Make sure to view the source code in your editor!</p>
			<div class="sandbox">
				
				<h3>And <code>and</code></h3>
				<?php
					if ($username == "Juana la Loca" and $password == "amo a felipe") {
						echo "<p>You are in!</p>";
					}
				?>
				
				<h3>Or <code>or</code></h3>
				<?php
					if ($cartTotal > 49.99 or $couponCode == "25Discount") {
						echo "You get a discount!";
					} else {
						echo "You don't get a discount!";
					}
				?>
				
				<h3>Not <code>!</code></h3>
				<?php
					$ownCat = true;
					
					if ($ownCat) {
						echo "You don't own a Cat. Why?, Buy a Cat, be smart.";
					} else {
						echo "You own a Cat.";
					}
				?>
				
				<h3>And <code>&amp;&amp;</code></h3>
				<?php
					if ($username == "Juana la Loca" and $password == "amo a felipe") {
						echo "<p>You are in!</p>";
					}
					else{
						echo "Wrong login info, check your username or password please";
					}
				?>
				
				<h3>Or <code>||</code></h3>
				<?php
					if ($cartTotal > 49.99 || $couponCode == "25Discount") {
						echo "You get a discount! Go to buy to get it!";
					} else {
						echo "You don't get a discount!";
					}
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
