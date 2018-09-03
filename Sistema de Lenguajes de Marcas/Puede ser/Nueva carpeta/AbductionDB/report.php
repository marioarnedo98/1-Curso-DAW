<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Aliens Adbucted Me</title>
    <link rel="stylesheet" href="css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset2">
                <h2>Aliens Adbucted Me - Report an abduction</h2>
<?php
error_reporting(E_ALL);
$name = $_POST ['firstname'];
$lastname= $_POST['lastname'];
$when_it_happened = $_POST['whenithappened'];
$how_long = $_POST['howlong'];
$how_many = $_POST['howmany'];
$alien_description = $_POST['aliendescription'];
$what_they_did = $_POST['whattheydid'];
$frank_spotted= $_POST['frackspotted'];
$email=$_POST['email'];
$other= $_POST ['other'];
/**
 * Create the email
 */

try{
    $con=new mysqli('localhost', 'root', '', 'aliendatabase');
    if($con->connect_errno){
        throw new Exception($con->connect_error);
    }
    $query="INSERT INTO aliens_abduction (first_name, last_name, when_it_happened,how_long,how_many,alien_description,what_they_did,frank_spotted,other,email)" .
    "VALUES('$name','$lastname', '$when_it_happened','$how_long','$how_many','$other ','$what_they_did','$frank_spotted','$alien_description','$email')";
    
    $result= mysqli_query($con, $query);
    if($con->error){
        throw new Exception ($con->error);
        if($result== FALSE)
            throw new Exception ($this->mysqli->error);
            mysqli_close($con);

    }
}
catch (Exception $e){
    echo $e->getmessage();
    exit();
}

    //confirmation
    echo '<p class="lead">Thanks to submitting the form. The information has been correctly sent </p>';
    echo 'You were abducted ' . $when_it_happened;
    echo ' and where gone for ' . $how_long . '<br/>';
    echo 'Number of aliens: ' . $how_many. '<br/>';
    echo 'Describe them: ' . $alien_description . '<br/>';
    echo 'The aliens did this: ' . $what_they_did . '<br/>';
    echo 'Was Frank there? ' . $frank_spotted . '<br/>';
    echo 'Other comments: ' . $other . '<br/>';
    echo 'Your email address is ' . $email;
?>
<p><a href="index.php">Home</a></p>
</div>
</div>
</div>
</body>
</html>
