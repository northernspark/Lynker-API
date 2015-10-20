<?

include '../lib/auth.php';
include '../lib/keygen.php';
include '../lib/notification.php';
include '../lib/slack.php';
include '../lib/email.php';

header('Content-Type: application/json');

$passed_data = json_decode(file_get_contents('php://input'), true);
$passed_profile = implode(",", $passed_data['profile']);
$passed_email = $passed_data['email'];
$passed_name = str_replace("'", "&#39;" ,$passed_data['name']);
$passed_location = str_replace("'", "&#39;" ,$passed_data['location']);
$passed_headline = str_replace("'", "&#39;" ,$passed_data['headline']);
$passed_bio = str_replace("'", "&#39;" ,$passed_data['description']);
$passed_website = $passed_data['website'];
$passed_company = str_replace("'", "&#39;" ,$passed_data['company']);
$passed_type = $passed_data['type'];
$passed_password = password_hash($passed_data['password'] ,PASSWORD_BCRYPT);

if (empty($passed_type)) $passed_type = "user";

$user_key = "user_" . generate_key();
$user_name = explode(" ", $passed_name);
$user_emails = explode(",", $passed_email);
$user_notifications = "email,push";
$user_profile = $user_profile = explode(",", $passed_profile);			

if (empty($passed_data['email'])) {	
	$json_status = 'email required';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
else if (empty($passed_data['password'])) {
	$json_status = 'password required';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
else {	
	$invited_query = mysql_query("SELECT * FROM `users` WHERE  `user_status` LIKE 'invited' AND `user_emails` LIKE '%$passed_email%'");
	$invited_count = mysql_num_rows($invited_query);
	if ($invited_count == 1) {
		while($row = mysql_fetch_array($invited_query)) {	
			$invite_email = $row['user_invited'];
			$invite_user_query = mysql_query("SELECT * FROM `users` WHERE  `user_status` LIKE 'active' AND `user_emails` LIKE '%$invite_email%'");
			$invite_user_data = mysql_fetch_assoc($invite_user_query);
				
			$invited_key = array($invite_user_data['user_key']);
			$invited_email = explode(",", $invite_user_data['user_emails']);
			$invited_name = $invite_user_data['user_name'];
						
			$invited_message = '[' . $passed_name . '] has just joined Lynker!';
			$invited_notification = post_notification($invited_message, $invited_key, 'referal', 'viewed', $user_key);
				
			$invited_email = end(explode("]", $user_emails[0]));
			$invited_name = explode(" ", $invited_name);		
			$invited_emailbody = "<strong>" . $passed_name . "</strong> has joined you on a path to greatness by joining Lynker!";
			$invited_emailsubject = "A friend joined Lynker!";
			$invited_emailpost = email_user($invited_email, $invited_emailsubject, $invited_emailbody, 'false');
		
		}
			
	}
	
	$user_query = mysql_query("SELECT * FROM `users` WHERE `user_emails` LIKE '%$passed_email%'  LIMIT 0, 1");
	$user_count = mysql_num_rows($user_query);
	$user_data = mysql_fetch_assoc($user_query);	
		
	if ($user_count == 0) {
		$user_insert = mysql_query("INSERT INTO `users` (`user_id`, `user_signup`, `user_updated`, `user_key`, `user_type`, `user_status`, `user_verified`, `user_name`, `user_nickname`, `user_emails`, `user_password`, `user_latitude`, `user_longitude`, `user_gender`, `user_dob`, `user_summary`, `user_profile`, `user_headline`, `user_location`, `user_company`, `user_website`, `user_skype`, `user_phones`, `user_address`, `user_notifications`, `user_invited`) VALUES (NULL, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '$user_key', '$passed_type', 'active', 'false', '$passed_name', '', '$passed_email', '$passed_password', '0.0000000', '0.0000000', '', '0000-00-00 00:00:00.000000', '$passed_bio', '$passed_profile', '$passed_headline', '$passed_location', '$passed_company', '$passed_website', '', '', '', '$user_notifications', '');");
		
	}
	else {
		$user_key = $user_data['user_key'];
		$user_insert = mysql_query("UPDATE `users` SET `user_status` = 'active', `user_verified` = 'false', `user_name` = '$passed_name', `user_password` = '$passed_password', `user_summary` = '$passed_bio', `user_profile` = '$passed_profile', `user_headline` = '$passed_headline', `user_location` = '$passed_location', `user_company` = '$passed_company', `user_website` = '$passed_website' WHERE `user_key` = '$user_key';");
		
	}
	
	if ($user_insert) {
		$token_generated = "at_" . generate_key();
		$token_expiry = strtotime('+90 days');
		$token_query = mysql_query("INSERT INTO `tokens` (`token_id`, `token_expiry`, `token_queryed`, `token_status`, `token_access`, `token_user`, `token_device`) VALUES (NULL, CURRENT_TIMESTAMP, '$token_expiry', 'active', '$token_generated', '$user_key', '$passed_device');");
		$token_output = array('token' => $token_generated, 'expiry' => $token_query);
			
		
		$user_directory = "http://lynkerapp.com/" . substr(end(explode("_", $user_key)) , 0, 8);		
		$user_notifications = array('');		
		$user_details = array('location' => $passed_location, 'summary' => $passed_bio, 'profile' => $user_profile, 'website' => $passed_website, 'headline' => $passed_headline);
		$user_name = array('fullname' => $passed_name, 'firstname' => $user_name[0], 'lastname' => $user_name[1]);
		$user_output = array('key' => $user_key, 'name' => $user_name, 'type' => $passed_type, 'about' => $user_details, 'company' => $passed_company, 'emails' => $user_emails, 'directory' => $user_directory);
		
		//$notification_user = array($user_key);
		//$notification_post = post_notification('Welcome to [Lynker]. Take the tour...', $notification_user, 'welcome', 'viewed', '');
		
		$notification_user = array($user_key);
		$notification_post = post_notification('You are now connected with [Joe Barbour] (Co-Founder of [Lynker]). Tap to say hello!', $notification_user, 'response', 'viewed', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM');
		
		$connection_key = "con_" . generate_key();
		$connection_query = mysql_query("INSERT INTO `connections` (`connection_id`, `connection_timestamp`, `connection_key`, `connection_sender_key`, `connection_sender_privileges`, `connection_sender_notifications`, `connection_recipient_key`, `connection_recipient_privileges`, `connection_recipient_notifications`, `connection_type`, `connection_hidden`, `connection_status`) VALUES (NULL, CURRENT_TIMESTAMP, '$connection_key', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist,work_email', 'false', '$user_key' ,'basic,work_email', 'false', 'user', 'false', 'accepted');");
	
		$slack_user = end(explode("|", $user_emails[0]));	
		$slack_message = "*" . $passed_name . "*(" . $slack_user . ") just joined Lynker!";
		$slack_image = $user_profile[0];
		$slack_post = post_slack($slack_message, 'users', $slack_image);
		
		$email_address = array(end(explode("|", $user_emails[0])));			
		$email_name = explode(" ", $passed_name);		
		$email_body = "Thanks for downloading Lynker!<p>The concept behind Lynker was to reinvent not only the address book but the way people connect and exchange personal details. With that in mind we have come up with a solution we believe to be super easy, fast and even fun!<p>So now you have signed up to Lynker now what you ask? Well we recommend you firstly build up your profile, add your phone number, Skype, Facebook etc and the it's time to start sharing them with people.<p>THEN, it's time to start connecting! You of course can connect with people in you existing address book just by going to invite. You can also invite people by email but the best way is using 'nearby'. Nearby allow you with twos tap to connect with people in close proximity to you. Amazing right?Thanks for downloading Lynker, and if you have any questions please either reply to this email or send a message via the feedback section in the app<p><p>If you have any questions about this email or Lynker in general just reply to this email.<p><p>Kind Regards, <br/> - <strong>Joe</strong> (Co-founder of Lynker)<p><p>";
		//$email_post = email_user($email_address, "Welcome to Lynker", $email_body, 'true');
		
		$json_status =  $passed_email . ' added';
		$json_output[] = array('status' => $json_status, 'sucsess' => 'true', 'user' => $user_output, 'token' => $token_output , 'emails' => $email_post);
		echo json_encode($json_output);
		exit;
		
		
	}
	else {
		$slack_user = end(explode("|", $user_emails[0]));	
		$slack_message = "*User Signup Error:* '" . $passed_email . " not added - unknown error'/n*SQL:*" . $user_insert;
		$slack_post = post_slack($slack_message, 'development', '');
		
		$json_status =  $passed_email . ' not added - unknown error';
		$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
		echo json_encode($json_output);
		exit;
		
	}
	


}


?>

