<?php

// D:\hshome\bccontacts\jobprodirectory.com\ppp.php

//require("js-plugin/neko-contact-ajax-plugin/php/PHPMailerAutoload.php");
require 'js-plugin/neko-contact-ajax-plugin/php/PHPMailerAutoload.php';

$mail = new PHPMailer;

$mail->IsSMTP();                                      // set mailer to use SMTP
$mail->Host = "mail.jobprodirectory.com";  // specify main and backup server
$mail->SMTPAuth = true;     // turn on SMTP authentication
$mail->Username = "contact@jobprodirectory.com";  // SMTP username
$mail->Password = "cTa32CB2!"; // SMTP password

$mail->From = "contact@jobprodirectory.com";
$mail->FromName = "Mailer";
//$mail->AddAddress("contact@jobprodirectory.com", "JobPro Directory");
$mail->AddAddress("jobprodirectorybc@gmail.com", "JobPro Directory");
//$mail->AddAddress("ellen@example.com");          		// name is optional
$mail->AddReplyTo("contact@jobprodirectory.com", "JobPro Directory");

$mail->WordWrap = 50;                            		// set word wrap to 50 characters
//$mail->AddAttachment("/var/tmp/file.tar.gz");  		// add attachments
//$mail->AddAttachment("/tmp/image.jpg", "new.jpg");	// optional name
$mail->IsHTML(true);                                  	// set email format to HTML

$mail->Subject = "Here is the subject";
$mail->Body    = "This is the HTML message body <b>in bold!</b>";
$mail->AltBody = "This is the body in plain text for non-HTML mail clients";

if(!$mail->Send())
{
   echo "Message could not be sent. <p>";
   echo "Mailer Error: " . $mail->ErrorInfo;
   exit;
}

echo "Message has been sent";
?>