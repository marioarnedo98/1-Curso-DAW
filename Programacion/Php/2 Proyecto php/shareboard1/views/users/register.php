<div class="hello">
<div class="formlogin">
    <h1>Register User</h1>
    <form method="post" action="<?php $_SERVER['PHP_SELF']; ?>">
    	<div class="form-group form-name">
    		<label>Name</label>
    		<input type="text" name="name" class="form-control" placeholder="Your name"/>
    	</div>
    	<div class="form-group form-email">
    		<label>Email</label>
    		<input type="text" name="email" class="form-control" placeholder="Your email"/>
    	</div>
    	<div class="form-group form-pass" >
    		<label>Password</label>
    		<input type="password" name="password" class="form-control" placeholder="Your password"/>
    	</div>
    	<input class="btn btn-primary btn-green-login" name="submit" type="submit" value="Submit" />
    </form>
	</div>
	</div>
