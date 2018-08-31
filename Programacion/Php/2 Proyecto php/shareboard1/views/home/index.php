<div class="text-center principal">
<div class="texthere">
	<h1>Mario <sup class="number-two">2</sup></h1>
	<h3>New (and last) PHP proyect</h3>	
	<a class="btn btn-primary text-center btn-green" href="<?php echo ROOT_PATH;?>users/register">Register now</a>
	<a class="btn btn-primary text-center btn-black" href="<?php echo ROOT_PATH;?>shares">Share your notice</a>
</div>
</div>
</div>
<div class="row secondrow">
	<div class="col-md-6 second">
		<h1>The power of PHP</h1>
		<p>In this proyect we're going to see one Shareboard with images in the beginning.</p>
	</div>
	<div class="col-md-6 first">
		<img src="./assets/img/second.jpg">
	</div>
</div>
<div class="row footer">
	<div class="col-md-4">
		<h3>About me</h3>
		<p>I was born in Logroño, La Rioja in 1998, currently residing in Villamediana de Iregua</p><br>
		<p>In 2017 I started studying in Centro Sagrado Corazon Jesuitas, in the modality of DAW</p><br>
		<p>t all started with the ideology that the world of technology was in full swing, so I investigated things and saw that I was entertained, that I had a future and a lot to investigate and innovate, I also realized that you can study in my city, that's the reason why I'm here, making this website.</p>
	</div>
	<div class="col-md-4 navigationindex" >
		<h3>Navigation</h3>
		<ul>
            <li><a href="<?php echo ROOT_URL; ?>">Home</a></li>
            <li><a href="<?php echo ROOT_URL; ?>shares">Shares</a></li>
            <?php if(isset($_SESSION['is_logged_in'])) : ?>
            <li><a href="<?php echo ROOT_URL; ?>">You are currently logged as <?php echo $_SESSION['user_data']['name']; ?></a></li>
			<li>Not <?php echo $_SESSION['user_data']['name']; ?>? <a href="<?php echo ROOT_URL; ?>users/logout">Logout</a></li>
			<?php else : ?>
            <li><a href="<?php echo ROOT_URL; ?>users/login">Login</a></li>
            <li><a href="<?php echo ROOT_URL; ?>users/register">Register</a></li>
          <?php endif; ?>
          </ul>
	</div>
	<div class="col-md-4 follow">
		<h3>Follow me!</h3>
		<i class="fa fa-twitter">&nbsp;</i><a href="http://twitter.com/marioarnedo1" target="_blank">Twitter</a><br>
		<i class="fa fa-instagram" style="color:black;">&nbsp;</i><a href="https://www.instagram.com/marioarnedo98/" target="_blank">Instagram</a> <br>
		<i class="fa fa-paper-plane">&nbsp; </i><a href="mailto:marioarnedo1@gmail.com">Email me!</a>
	</div>
</div>
<div class="end">
	<p>Mario, 2018</p>
</div>