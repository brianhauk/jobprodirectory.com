<?php
/**
 * This example shows settings to use when sending via Google's Gmail servers.
 */

//SMTP needs accurate times, and the PHP time zone MUST be set
//This should be done in your php.ini, but this is how to do it if you don't have access to that
//date_default_timezone_set('Etc/UTC');

// D:\hshome\bccontacts\jobprodirectory.com\ppp.php

//require("js-plugin/neko-contact-ajax-plugin/php/PHPMailerAutoload.php");
require 'js-plugin/neko-contact-ajax-plugin/php/PHPMailerAutoload.php';

//Create a new PHPMailer instance
$mail = new PHPMailer;

// openssl extension is required -- loaded via php.ini
echo (extension_loaded('openssl')?'SSL loaded':'SSL not loaded')."\n";

//Tell PHPMailer to use SMTP
$mail->isSMTP();

//Enable SMTP debugging
// 0 = off (for production use)
// 1 = client messages
// 2 = client and server messages
$mail->SMTPDebug = 2;

//Ask for HTML-friendly debug output
$mail->Debugoutput = 'html';

/* As for what kind to use, the answer is generally simple: Don't use SSL on port 465, it's been deprecated since 1998 and is only used by Microsoft products that didn't get the memo; use TLS on port 587 instead:

$mail->SMTPSecure = 'tls';
$mail->Host = 'smtp.gmail.com';
$mail->Port = 587;
or more succinctly:

$mail->Host = 'tls://smtp.gmail.com:587';
Don't mix up these modes either; valid combinations are tls on port 587 (or possibly 25) and ssl on port 465. ssl on port 587 or tls on port 465 will not work.
*/

//Set the hostname of the mail server
$mail->Host = gethostbyname('smtp.gmail.com');
//$mail->Host = 'smtp.gmail.com';

// use
// $mail->Host = gethostbyname('smtp.gmail.com');
// if your network does not support SMTP over IPv6

//Set the SMTP port number - 587 for authenticated TLS, a.k.a. RFC4409 SMTP submission
$mail->Port = 587;

//Set the encryption system to use - ssl (deprecated) or tls
$mail->SMTPSecure = 'tls';

//Whether to use SMTP authentication
$mail->SMTPAuth = true;

//Username to use for SMTP authentication - use full email address for gmail
$mail->Username = "suzyli999@gmail.com";

//Password to use for SMTP authentication
$mail->Password = "meifenhe";

//Set who the message is to be sent from
$mail->setFrom('contact@jobprodirectory.com', 'JobPro Directory');

//Set an alternative reply-to address
$mail->addReplyTo('jobprodirectorybc@gmail.com', 'JobPro Directory BC');

//Set who the message is to be sent to
$mail->addAddress('contact@jobprodirectory.com', 'John Doe');

//Set the subject line
$mail->Subject = 'PHPMailer GMail SMTP test';

//Read an HTML message body from an external file, convert referenced images to embedded,
//convert HTML into a basic plain-text alternative body
//$mail->msgHTML(file_get_contents('contents.html'), dirname(__FILE__));

$mail->msgHTML(file_get_contents('index.html'), dirname(__FILE__));

//Replace the plain text body with one created manually
$mail->AltBody = 'This is a plain-text message body';

//Attach an image file
//$mail->addAttachment('phpmailer_mini.png');

//send the message, check for errors
if (!$mail->send()) {
    echo "Mailer Error: " . $mail->ErrorInfo;
} else {
    echo "Message sent!";
}
