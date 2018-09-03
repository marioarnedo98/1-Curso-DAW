<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="override.css">
    <link rel="icon" href="img/logo.png" type="image/gif" sizes="16x16">
    <title>Welcome to my Enterprise</title>
</head>

<body>
    <div id="introduction">
        <img src="img/logo.png" alt="Logo">
        <h1>Hello and Welcome to my Enterprise</h1>
    </div>
    <div id="slider">
        <h3>First of all I need to know u better, so tell me about yourself:</h3>
    </div>
    <form action="index.php" method="post">
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="firstname" class="control-label">Your name: <sup>*</sup></label>
                    <input type="text" id="firstname" name="firstname" class="form-control" required>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="lastname" class="control-label"> Your last name: <sup>*</sup></label>
                    <input type="text" id="lastname" name="lastname" class="form-control" required>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8">
                <label for="address" class="control-label"> Where do u live?: <sup>*</sup></label>
                <input type="text" id="address" name="address" class="form-control" required>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">
                <label for="tlf" class="control-label"> Your telephone: <sup>*</sup></label>
                <input type="tel" name="tlf" id="tlf" class="form-control" required maxlength="9">
            </div>
        </div>
        <div id="login">
            <h3>And now let's go to prepare your login</h3>
        </div>
        <div class="row">
            <div class="col-md-3">
                <label for="username" class="control-label">Insert your username: <sup>*</sup></label>
                <input type="text" name="username" id="username" class="form-control" required>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <label for="password" class="control-label">Password: <sup>*</sup></label>
                <input type="password" name="password" id="password" class="form-control" required minlength="8">
            </div>
            <div class="col-md-4">
                <label for="password-check" class="control-label">Insert again your password: <sup>*</sup></label>
                <input type="password" name="confirm_password" id="confirm_password" class="form-control" required minlength="8">
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <label for="email" class="control-panel">E-mail: <sup>*</sup></label>
                <input type="email" name="email" id="email" class="form-control" required>
            </div>
        </div>
        <div id="sucess">
            <div class="row">
                <div class="col-md-6">
                    <h3>U are in,... unless you don't press this button</h3>
                    <input type="submit" value="Press me, please!" name="Submit" class="btn btn-success btn-send">
                </div>
                <div class="col-md6">
                    <h3>Still have questions? Check our contact form!</h3>
                    <a href="index.php?Contact" class="btn btn-success btn-send">Yeah! Let's go to!</a>
                </div>
            </div>
        </div>
    </form>
</body>

</html>