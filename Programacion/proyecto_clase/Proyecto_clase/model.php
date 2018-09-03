<?php
use PHPMailer\PHPMAiler\PHPMAiler;
use PHPMailer\PHPMailer\Exception;
function Registro($name,$lastname, $address,$tel,$username,$password,$password2,$email){
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
            header('Location: register.html.php');
        }
    }
    catch(Exception $e){
    echo $e->getMessage();
    exit();
}
}
function email($form_mail,$form_name, $form_text){


require 'vendor/PHPMailer/src/Exception.php';
require 'vendor/PHPMailer/src/PHPMailer.php';
require 'vendor/PHPMAiler/src/SMTP.php';

$mail = new PHPMailer();
$mail->SMTPdebug=2;
$mail->IsSMTP();
$mail->SMTPAuth =true;
$mail->Host = 'smtp.gmail.com';
$mail->Port = 587;
$mail->SMTPSecure = 'tls';
$mail->SMTPAuth=true;
$mail->SMTPOptions = array(
	'ssl' => array(
		'verify_peer'=> false,
		'verify_peer_name'=>false,
		'allow_self_signed'=>true	
		)
	);
$webmaster='daw02.2018@gmail.com';
$mail->Username = $webmaster;
$mail->Password ='start321';
$mail->setFrom($webmaster,'Mario Enterprise');
$mail->addAddress($form_mail, $form_name);
$mail->WordWrap = 50;
$mail->IsHTML(true);
$mail->Subject ="Tu formulario se ha enviado con exito";

$message = "<h2>Gracias por enviar tu formulario de contacto, tu mensaje ha sido enviado y en breve recibira una respuesta.</h2>";
$message .= "<p>Name: $form_name</p>";
$message .= "<p>Email: $form_mail</p>";
$message .= "<p>Text: $form_text</p>";

$mail->Body = $message;

if(!$mail->Send()){
	echo "Mailer Error :" . $mail->ErrorInfo;	
}else{
}

}
?>