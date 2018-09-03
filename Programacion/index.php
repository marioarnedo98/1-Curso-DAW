<div>
	<div class="row">
		<?php if(isset($_SESSION['is_logged_in'])) : ?>
		<a class="btn btn-success btn-share" href="<?php echo ROOT_PATH; ?>shares/add">Share Something</a>
		<?php endif; ?>
	</div>
	<div class="row">
		<?php foreach($viewmodel as $item) : ?>
		<div class="col-md-3">
				<img src="<?php echo $item['img']; ?>" alt="<?php echo $item['img']; ?>" class="share-img">
					<h3><?php echo $item['title']; ?></h3>
					<small><?php echo $item['create_date']; ?></small>
					<hr />
					<p><?php echo $item['body']; ?></p>
					<br />
					<a class="btn btn-default" href="<?php echo $item['link']; ?>" target="_blank">Go To Website</a>
		</div>
		<?php endforeach; ?>
	</div>
</div>