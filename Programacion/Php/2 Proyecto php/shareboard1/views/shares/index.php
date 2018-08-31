<div id="shares">
	<div class="notices row">
	<h1> Our notices </h1>
	</div>
	<div class="row">
		<div class="col-md-3 upbotoons">
	<h2>Do u want to say something?</h2>
</div>
	<div class="col-md-3 botoons">
		<?php if(isset($_SESSION['is_logged_in'])) : ?>
		<a class="btn btn-success btn-share btn-green-login btn-link first-btn-write" href="<?php echo ROOT_PATH; ?>shares/add">Write a notice</a>
		</div>
		<?php else:?>
			<h3> U need to be a user to write something</h3>
			<div class="col-md-6">
				<a class="btn btn-success btn-share btn-green-login btn-link first-btn first-btn-write" href="<?php echo ROOT_URL; ?>users/register">Register</a>
			</div>
			<div class="col-md-6">
				<a class="btn btn-success btn-share btn-green-login btn-link first-btn-write" href="<?php echo ROOT_URL; ?>users/login">Login</a>
			</div>
	</div>
		<?php endif; ?>
	</div>
	<div class="row">
		<?php foreach($viewmodel as $item) : 
			$textintro= substr ($item['body'],0,200);
			?>
		<div class="col-md-6">
			<div class="card">
				<a href="./shares/view/<?php echo $item['id'];?>"><img src="<?php echo $item['img']; ?>" alt="<?php echo $item['img']; ?>" class="share-img"></a>
				<div class="entrance">
					<h3><a href="./shares/view/<?php echo $item['id'];?>"><?php echo $item['title']; ?></a></h3>
					<small>Created by: <?php echo $item['name']; ?></small>
					</div>
					<hr/>
					<p><?php echo $textintro;?></p>
					<br />
					<a class="btn btn-default btn-green-login btn-link btn-readmore" href="./shares/view/<?php echo $item['id'];?>">Read More</a>
		</div>
		</div>
		<?php endforeach; ?>
	</div>
	<button onclick="topFunction()" id="myBtn" title="Go to top">&#9650;</button>
</div>

