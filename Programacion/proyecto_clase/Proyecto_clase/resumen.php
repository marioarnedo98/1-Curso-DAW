<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Your Sumary</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="override.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset2">
                <h2>Congratulations, you are in!</h2>
<?php
error_reporting(E_ALL);
$name = $_POST ['firstname'];
$lastname= $_POST['lastname'];
$address = $_POST['address'];
$tel = $_POST['tlf'];
$username = $_POST['username'];
$password = $_POST['password'];
$password2 = $_POST['confirm_password'];
$email=$_POST['email'];



try{
    $con=new mysqli('localhost', 'root', '', 'employee');
    if($con->connect_errno){
        throw new Exception($con->connect_error);
    }
    if($password==$password2){
        $password= md5 ($password);
        $password2 = md5 ($password2);
    $query="INSERT INTO employes (first_name, last_name,address,tel,username,email, password, password2)" .
    "VALUES('$name','$lastname', '$address','$tel','$username','$email', '$password', '$password2')";
    
    $result= mysqli_query($con, $query);
    if($con->error){
        throw new Exception ($con->error);
        if($result== FALSE)
            throw new Exception ($this->mysqli->error);
            mysqli_close($con);
    }
}
    else{
        echo 'The passwords do not match, you will be redirected back to the form';
        sleep(5);
        header('Location: Welcome.html');
    }
}
catch (Exception $e){
    echo $e->getmessage();
    exit();
}

    //confirmation
    echo '<p class="lead">Thanks to submitting the form. Check if the information has been correctly sent </p>';
    echo 'Name ' . $name;
    echo 'Lastname ' . $lastname . '<br/>';
    echo 'tel ' . $tel. '<br/>';
    echo 'address: ' . $address . '<br/>';
    echo 'username: ' . $username . '<br/>';
    echo 'Your email address is ' . $email;
?>
</div>
</div>
</div>
</body>
</html>
