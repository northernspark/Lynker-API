<?

include '../lib/auth.php';
include '../lib/keygen.php';
include '../lib/notification.php';
include '../lib/email.php';

header('Content-Type: application/json');

$passed_data = json_decode(file_get_contents('php://input'), true);
$passed_user = $passed_data['user'];
$passed_parameters = $passed_data['parameters'];
$passed_name = str_replace("'", "&#39;" ,$passed_data['name']);
$passed_company = str_replace("'", "&#39;" ,$passed_data['company']);
if (empty($passed_parameters)) $passed_parameters = "basic";
if (empty($passed_name)) $passed_name = "Unknown User";

if (!filter_var($passed_user, FILTER_VALIDATE_EMAIL) === false) $passed_email = "work|" . $passed_user;
else $passed_recipient = $passed_user;

if (empty($passed_user)) {
	$json_status =  "user required";
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
elseif ($passed_recipient == $user_key) {
	$json_status =  "cannot invite self";
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
else {
	if (empty($passed_email)) $recipient_query = mysql_query("SELECT * FROM `users` WHERE `user_key` LIKE '$passed_recipient' LIMIT 0, 1");
	else $recipient_query = mysql_query("SELECT * FROM `users` WHERE `user_emails` LIKE '%$passed_email%' LIMIT 0, 1");

	$recipient_count = mysql_num_rows($recipient_query);
	$recipient_data = mysql_fetch_assoc($recipient_query);
	$recipient_key = $recipient_data['user_key'];
	
	if ($recipient_count == 1) {
		$invitation_email[] = end(explode("|" , reset(explode(",", $recipient_data['user_emails']))));
		$invitation_query = mysql_query("SELECT * FROM `connections` WHERE (`connection_sender_key` LIKE '$recipient_key' AND `connection_recipient_key` LIKE '$user_key') OR (`connection_recipient_key` LIKE '$recipient_key' AND `connection_sender_key` LIKE '$user_key')");
		$invitation_count = mysql_num_rows($invitation_query);
		if ($invitation_count == 0) {
			$connection_key = "con_" . generate_key();
			$connection_post = mysql_query("INSERT INTO `connections` (`connection_id`, `connection_timestamp`, `connection_key`, `connection_sender_key`, `connection_sender_privileges`, `connection_sender_notifications`, `connection_recipient_key`, `connection_recipient_privileges`, `connection_recipient_notifications`, `connection_type`, `connection_hidden`, `connection_status`) 
						VALUES (NULL, CURRENT_TIMESTAMP, '$connection_key', '$user_key', '$passed_parameters', 'false', '$recipient_key', '', 'false', 'user', 'false', 'pending');");
			
		}
		else {
			$json_status =  'User already invited';
			$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
			echo json_encode($json_output);
			exit;
			
		}
		
	}
	else {
		$invitation_email[] = $passed_user;	
		$invited_key = "user_" . generate_key();
		$invited_create = mysql_query("INSERT INTO `users` (`user_id`, `user_signup`, `user_updated`, `user_key`, `user_type`, `user_status`, `user_verified`, `user_name`, `user_nickname`, `user_emails`, `user_password`, `user_latitude`, `user_longitude`, `user_gender`, `user_dob`, `user_summary`, `user_profile`, `user_headline`, `user_location`, `user_company`, `user_website`, `user_skype`, `user_phones`, `user_address`, `user_notifications`, `user_invited`) VALUES (NULL, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '$invited_key', 'user', 'invited', 'false', '$passed_name', '', '$passed_email', '', '0.0000000', '0.0000000', '', '0000-00-00 00:00:00.000000', '', '', '', '', '', '', '', '', '', 'email', '$user_primary_email');");
		
		if ($invited_create) {
			$connection_key = "con_" . generate_key();
			$connection_post = mysql_query("INSERT INTO `connections` (`connection_id`, `connection_timestamp`, `connection_key`, `connection_sender_key`, `connection_sender_privileges`, `connection_sender_notifications`, `connection_recipient_key` , `connection_recipient_privileges`, `connection_recipient_notifications`, `connection_type`, `connection_hidden`, `connection_status`) 
				VALUES (NULL, CURRENT_TIMESTAMP, '$connection_key', '$user_key', '$passed_parameters', 'false', '$invited_key', '', 'false', 'user', 'false', 'pending');");
			
		}
		else {
			$json_status =  $passed_email . ' not created - unknown error';
			$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
			echo json_encode($json_output);
			exit;
			
		}
		
	}
	
	if ($connection_post) {
		$notification_message = "[" . $user_name . "] has invited you to connect";
		$notification_user = array($passed_recipient);		
		$notification_post = post_notification($notification_message, $notification_user, 'invite', 'pending', $user_key);	
		
		$email_body .= "<strong>" . $user_name . "</strong> (" . $user_primary_email . ") has invited you to connect on Lynker, why not connect with them?<p>";
		$email_body .= "<div style='margin-top:50px; margin-bottom:30px; font-weight:400; font-size:11px;' align='center'><a href='" . $user_directory . "' target='_blank' style='padding:14px; text-decoration:none; color:white; background-color:#F23E5B; border-radius:4;'>Lynk-up with " . reset(explode(" ", $user_name)) . "</a></div>";
		$email_recipient = array($passed_user);
		$email_subject = "" . $user_name . " has invited you to connect on Lynker";
		$email_post = email_user($invitation_email, $email_subject, $email_body, 'false');
		
		$json_status =  $passed_email . ' invited';
		$json_output[] = array('status' => $json_status, 'sucsess' => 'true', 'recipt' => $notification_post);
		echo json_encode($json_output);
		exit;
		
	}
	else {
		$json_status =  end(explode("|", $passed_email)) . ' not invited - unknown error';
		$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
		echo json_encode($json_output);
		exit;
		
	}
	

}

?>

