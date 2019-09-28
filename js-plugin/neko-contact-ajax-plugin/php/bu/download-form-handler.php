<?php
if ( !isset( $_SESSION ) ) session_start();
if ( !$_POST ) exit;
if ( !defined( "PHP_EOL" ) ) define( "PHP_EOL", "\r\n" );


$toemail = "jobprodirectorybc@gmail.com";
$fromemail = "contact@jobprodirectory.com";
$subject = "JobPro Directory Download Request from ";
$smtpserver = "mail.jobprodirectory.com";


foreach ($_POST as $key => $value) {
    if (ini_get('magic_quotes_gpc'))
        $_POST[$key] = stripslashes($_POST[$key]);
    $_POST[$key] = htmlspecialchars(strip_tags($_POST[$key]));
}

// Assign the input values to variables for easy reference
$name      = @$_POST["name"];
$organization      = @$_POST["organization"];
$email     = @$_POST["email"];
$phone     = @$_POST["phone"];
$message   = @$_POST["comment"];
$verify    = @$_POST["verify"];


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


//$fromemail = "info@jobprodirectory.com";
//$toemail = "jobprodirectorybc@gmail.com";
//$subject = "JobPro Directory Contact Request from ";
    // Prepare to send mail 
    $headers  = "From: $fromemail" . PHP_EOL;
    $headers .= "Reply-To: $toemail" . PHP_EOL;
    $headers .= "MIME-Version: 1.0" . PHP_EOL;
    $headers .= "Content-type: text/plain; charset=utf-8" . PHP_EOL;
    $headers .= "Content-Transfer-Encoding: quoted-printable" . PHP_EOL;
	//$headers .= "Host: $smtpserver" . PHP_EOL;

    $mailBody  = "You have been contacted by $name" . PHP_EOL . PHP_EOL;
    $mailBody .= (!empty($organization))?'Organization: '. PHP_EOL.$organization. PHP_EOL . PHP_EOL:'';
    $mailBody .= (!empty($quoteType))?'project Type: '. PHP_EOL.$quoteType. PHP_EOL . PHP_EOL:'';
    $mailBody .= "Message :" . PHP_EOL;
    $mailBody .= $message . PHP_EOL . PHP_EOL;
    $mailBody .= "You can contact $name via email, $email.";
    $mailBody .= (isset($phone) && !empty($phone))?" Or via phone $phone." . PHP_EOL . PHP_EOL:'';
    $mailBody .= "-------------------------------------------------------------------------------------------" . PHP_EOL;


 //$subject = "JobPro Directory Download Request from ";
 	//Send mail
      	if(mail($toemail, $subject .$name, $mailBody, $headers)){ 
		//force specification of from email
		//	if(mail($toemail, $subject .$name, $mailBody, $headers,"-f $fromemail")){
			
		echo "Fromemail = " . $fromemail . "<br>";
		echo "Subject = " . $subject . $name ."<br>";
		echo "Name = " . $name . "<br>";
		echo "Organization = " . $organization . "<br>";
		echo "Email = " . $email . "<br>";
		echo "Phone = " . $phone . "<br>";
		echo "Comments = " . $message . "<br>";
					
        //echo '<div class="alert alert-success">Success! Your download request has been sent and you should hear from us within one business day.</div>';
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
