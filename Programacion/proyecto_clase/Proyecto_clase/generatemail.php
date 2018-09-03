<?php
use PHPMailer\PHPMAiler\PHPMAiler;
use PHPMailer\PHPMailer\Exception;

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
$mail->Password ='mario1eselmejor';
$mail->setFrom($webmaster,'Mario Enterprise');
$mail->AddAddress($email, $name);
$mail->WordWrap = 50;
$mail->IsHTML(true);
$mail->Subject ="Felicidades te registraste";

$message = "<h2>Gracias por enviar tu formulario de contacto, tu mensaje ha sido enviado y en breve recibira una respuesta de nuestros profesionales. Aqui tienes los datos que ha mandado.</h2>";
$message .= "<p>Nombre: $name</p>";
$message .= "<p>Email: $username</p>";
$message .= "<p>Text: $pass</p>";

$mail->Body = $message;

if(!$mail->Send()){
	echo "Mailer Error :" . $mail->ErrorInfo;	
}else{
}
?>