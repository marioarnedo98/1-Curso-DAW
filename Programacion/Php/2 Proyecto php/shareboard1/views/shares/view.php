		<?php foreach($viewmodel as $item) : ?>
			<div class="card">
				<img src="<?php echo $item['img']; ?>" alt="<?php echo $item['img']; ?>" class="share-img">
				<div class="entrance">
					<h3><?php echo $item['title']; ?></h3>
					<small>Written by: <?php echo $item['name']; ?></small>
					</div>
					<hr/>
					<p><?php echo $item['body']; ?></p>
					<br />
		</div>
		</div>
		<?php endforeach; ?>
	</div>