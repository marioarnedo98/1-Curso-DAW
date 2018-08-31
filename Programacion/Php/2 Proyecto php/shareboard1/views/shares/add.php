<div class="hello">
  <div class="formlogin">
    <h1>Share Something!</h1>
    <form method="post" enctype="multipart-form-data" action="<?php $_SERVER['PHP_SELF']; ?>">
    	<div class="form-group form-title">
    		<label>Share Title</label>
    		<input type="text" name="title" class="form-control" placeholder="The title goes here"/>
    	</div>
    	<div class="form-group form-body">
    		<label>Body</label>
    		<textarea name="body" class="form-control"  placeholder="The body goes here"></textarea>
    	</div>
			<div class="form-group form-photo">
    		<label>U have a image to describe it? Paste the URL here (1920x1080 only): </label>
				<input type="text" name="img" class="form-control" placeholder="Add a photo"/>
    	</div>
    	<input class="btn btn-primary btn-green-login" name="submit" type="submit" value="Submit" />
        <a class="btn btn-danger btn-black-login" href="<?php echo ROOT_PATH; ?>shares">Cancel</a>
    </form>
  </div>
</div>