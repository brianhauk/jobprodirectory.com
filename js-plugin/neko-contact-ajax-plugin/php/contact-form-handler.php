<?php
if ( !isset( $_SESSION ) ) session_start();
if ( !$_POST ) exit;
//if ( !defined( "PHP_EOL" ) ) define( "PHP_EOL", "\r\n" );
if ( !defined( "MY_EOL" ) ) define( "MY_EOL", "<br />" );

// D:\hshome\bccontacts\jobprodirectory.com\ppp.php

foreach ($_POST as $key => $value) {
    if (ini_get('magic_quotes_gpc'))
        $_POST[$key] = stripslashes($_POST[$key]);
    	$_POST[$key] = htmlspecialchars(strip_tags($_POST[$key]));
}

// Assign input values to variables for easy reference
$name      = @$_POST["name"];
$organization  = @$_POST["organization"];
$email     = @$_POST["email"];
$phone     = @$_POST["phone"];
$message   = @$_POST["comment"];
$verify    = @$_POST["verify"];

$today = date("D M j G:i:s Y");   // Sat Mar 10 17:16:18 MST 2001

$mailBody = MY_EOL . "Date: " . $today . MY_EOL;	
$mailBody .= MY_EOL . "Name: " . $name . MY_EOL;
$mailBody .= (isset($organization) && !empty($organization))? MY_EOL ." Organization: $organization" . MY_EOL:'';	
$mailBody .= (!empty($email))? MY_EOL .'Email: '. $email . MY_EOL:'';	
$mailBody .= (!empty($phone))? MY_EOL . 'Phone: '. $phone . MY_EOL:'';	
$mailBody .= (!empty($message))? MY_EOL . 'Comment: '. $message . MY_EOL:'';	


//require 'D:/hshome/bccontacts/jobprodirectory.com/js-plugin/neko-contact-ajax-plugin/php/PHPMailerAutoload.php';
require 'PHPMailerAutoload.php';

//Create new PHPMailer instance
$mail = new PHPMailer;

$mail->isSMTP(); 				//Tell PHPMailer to use SMTP

//Enable SMTP debugging
// 0 = off (for production use)
// 1 = client messages
// 2 = client and server messages
$mail->SMTPDebug = 2;
$mail->Debugoutput = 'html';	//Ask for HTML-friendly debug output

$mail->Host = "mail.jobprodirectory.com";  // specify main and backup server
$mail->SMTPAuth = true;     	// turn on SMTP authentication
$mail->Username = "contact@jobprodirectory.com";  // SMTP username
$mail->Password = "cTa32CB2!"; 	// SMTP password 

$mail->From = "contact@jobprodirectory.com";
$mail->FromName = "JobPro Directory";
//$mail->AddAddress("contact@jobprodirectory.com", "JobPro Directory");
$mail->AddAddress("bccontactsdirectory@gmail.com", "BC Contacts Directory");
//$mail->AddAddress("ellen@example.com");          		// name is optional
$mail->AddReplyTo("contact@jobprodirectory.com", "JobPro Directory");

$mail->WordWrap = 50;                            		// set word wrap to 50 characters
//$mail->AddAttachment("/var/tmp/file.tar.gz");  		// add attachments
//$mail->AddAttachment("/tmp/image.jpg", "new.jpg");	// optional name
$mail->IsHTML(true);                                  	// set email format to HTML

$mail->Subject = "JobPro Directory | " . $name . " | " . $organization . " | " . $today ;
$mail->Body    = $mailBody;
$mail->AltBody = $mailBody;  

// Test input values for errors
$errors = array();
 //php verif name
if(isset($_POST["name"])){

        if (!$name) {
            $errors[] = "You must enter a name.";
        } elseif(strlen($name) < 2)  {
            $errors[] = "Name must be at least 2 characters.";
        }
}
    //php verif email
if(isset($_POST["email"])){
    if (!$email) {
        $errors[] = "You must enter an email.";
    } else if (!validEmail($email)) {
        $errors[] = "You must enter a valid email.";
    }
}
    //php verif phone
/****
if(isset($_POST["phone"])){
    if (!$phone) {
        $errors[] = "You must enter a correct phone number.";
    }elseif ( !is_numeric( $phone ) ) {
        $errors[]= 'Your phone number can only contain digits.';
    }
}
****/

//php verif comment
/****
if(isset($_POST["comment"])){
    if (strlen($message) < 10) {
        if (!$message) {
            $errors[] = "You must enter nothing or a longer comment.";
        } else {
            $errors[] = "Comment must be at least 10 characters.";
        }
    }
}
****/

    //php verif captcha
if(isset($_POST["verify"])){
    if (!$verify) {
        $errors[] = "You must enter the security code";
    } else if (md5($verify) != $_SESSION['nekoCheck']['verify']) {
        $errors[] = "The security code you entered is incorrect ";
    }
}

if ($errors) {
        // Output errors and die with a failure message
    $errortext = "";
    foreach ($errors as $error) {
        $errortext .= '<li>'. $error . "</li>";
    }

    echo '<div class="alert alert-danger">The following errors occured:<br><ul>'. $errortext .'</ul></div>';

}else{
 
 /* Send this mail */	
 //if($mail->Send()){
	 
	 /*
	echo "Fromemail = " . $fromemail . MY_EOL;
	echo "Subject = " . $subject . $name . MY_EOL;
	echo "Name = " . $name . "<br>";
	echo "Organization = " . $organization . MY_EOL;
	echo "Email = " . $email . "<br>";
	echo "Phone = " . $phone . "<br>";
	echo "Comments = " . $message . MY_EOL;
	echo "Body = " . $mailBody . MY_EOL;	
	 */
	 
	 if($mail->Send()){
	 
	 //echo htmlspecialchars($_POST['name']);
	 //echo htmlentities($name);
	 
	foreach($_POST as $key=>$value)
	{
	  echo "$key=$value";
	}	 
	 
    echo 'Message has been sent.';
	
	echo '<div class="alert alert-success">Success! Your message has been sent and you should hear from us within one business day.</div>';		

	echo "Fromemail = " . $fromemail . MY_EOL;
	echo "Subject = " . $subject . $name . MY_EOL;
	echo "Name = " . $name . "<br>";
	echo "Organization = " . $organization . MY_EOL;
	echo "Email = " . $email . "<br>";
	echo "Phone = " . $phone . "<br>";
	echo "Comments = " . $message . MY_EOL;
	echo "Body = " . $mailBody . MY_EOL;	
	
	exit;		
    } else {

 	echo "Mailer Error: " . $mail->ErrorInfo;	
	echo '<div class="alert alert-danger">Message could not be sent</div>';	
	}		
}


// FUNCTIONS
function validEmail($email) {
    $isValid = true;
    $atIndex = strrpos($email, "@");
    if (is_bool($atIndex) && !$atIndex) {
        $isValid = false;
    } else {
        $domain = substr($email, $atIndex + 1);
        $local = substr($email, 0, $atIndex);
        $localLen = strlen($local);
        $domainLen = strlen($domain);
        if ($localLen < 1 || $localLen > 64) {
            // local part length exceeded
            $isValid = false;
        } else if ($domainLen < 1 || $domainLen > 255) {
            // domain part length exceeded
            $isValid = false;
        } else if ($local[0] == '.' || $local[$localLen - 1] == '.') {
            // local part starts or ends with '.'
            $isValid = false;
        } else if (preg_match('/\\.\\./', $local)) {
            // local part has two consecutive dots
            $isValid = false;
        } else if (!preg_match('/^[A-Za-z0-9\\-\\.]+$/', $domain)) {
            // character not valid in domain part
            $isValid = false;
        } else if (preg_match('/\\.\\./', $domain)) {
            // domain part has two consecutive dots
            $isValid = false;
        } else if (!preg_match('/^(\\\\.|[A-Za-z0-9!#%&`_=\\/$\'*+?^{}|~.-])+$/', str_replace("\\\\", "", $local))) {
            // character not valid in local part unless
            // local part is quoted
            if (!preg_match('/^"(\\\\"|[^"])+"$/', str_replace("\\\\", "", $local))) {
                $isValid = false;
            }
        }
//        if ($isValid && !(checkdnsrr($domain, "MX") || checkdnsrr($domain, "A"))) {
            // domain not found in DNS  *** COMMENTED OUT BECAUSE WINDOWS PHP DOESN'T SUPPORT THIS CALL
//            $isValid = false;
//        }
    }
    return $isValid;
}

?>
