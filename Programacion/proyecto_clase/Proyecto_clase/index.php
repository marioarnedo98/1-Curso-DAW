<?php
require 'model.php';


if (isset($_GET['Registro'])){
  include 'register.html.php';
}
elseif(isset($_GET['Team'])){
  include 'results.html.php';
}
elseif (isset($_GET['Contact'])) {
 include 'contact.html.php';
}
elseif (isset ($_POST['back'])){
  include 'portada.html.php';
}
elseif (isset($_POST['Contact'])) {
  $form_name= $_POST['name'];
  $form_mail = $_POST['correo'];
  $form_text = $_POST['message'];
  email($form_mail,$form_name, $form_text);
  include 'portada.html.php';
}
elseif (isset($_POST['Submit'])){

    error_reporting(E_ALL);
    $name = $_POST ['firstname'];
    $lastname= $_POST['lastname'];
    $address = $_POST['address'];
    $tel = $_POST['tlf'];
    $username = $_POST['username'];
    $password = $_POST['password'];
    $password2 = $_POST['confirm_password'];
    $email=$_POST['email'];


    Registro($name,$lastname, $address,$tel,$username,$password,$password2,$email);
    include 'results.html.php';
}else{
  include 'portada.html.php';
}
?>