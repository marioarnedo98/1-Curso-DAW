<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Contact with us</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <link rel="stylesheet" href="css/form.css">
        <link rel="icon" href="img/logo.png" type="image/gif" sizes="16x16">
    </head>
    <body >
        <div class="container">
            <div class="container form-top">
                <div class="row">
                    <div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12">
                        <div class="panel panel-danger">
                            <div class="panel-body">
                                <form id="reused_form" action="index.php" method="post">
                                    <div class="form-group">
                                        <label >Name</label>
                                        <input type="text" name="name" required class="form-control" placeholder="Enter Name">
                                    </div>
                                    <div class="form-group">
                                        <label >Email</label>
                                        <input type="email" name="correo" required class="form-control" placeholder="Enter Email">
                                    </div>
                                    <div class="form-group">
                                        <label >Message</label>
                                        <textarea rows="3" name="message" class="form-control" placeholder="Type Your Message"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" value="Send" name="Contact" class="btn btn-raised btn-lg btn-warning">
                                        <a href="index.php?back" class="btn btn-raised btn-lg btn-warning">Go back</a>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>