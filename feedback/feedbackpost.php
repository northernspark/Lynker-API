<? 

include '../lib/auth.php';
include '../lib/keygen.php';
include '../lib/notification.php';
include '../lib/email.php';
include '../lib/slack.php';

header('Content-Type: application/json');

$message_data = json_decode(file_get_contents('php://input'), true);
$message_content = str_replace("'", "&#39;" ,$message_data['content']);
$message_userdata = str_replace("'", "&#39;" ,$message_data['data']);
$message_type = $message_data['type'];
$message_recipient = $message_data['recipient'];
$message_subject = $message_data['subject'];

if (empty($message_type)) $message_type = "feedback";

if (empty($message_content)) {
	$json_status = 'content required';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
else {
	$slack_message = "*" . $user_name . "*(" . $user_primary_email . ") posted a " . ucfirst($message_type) . " message - _'" . $message_content . "'_";
	$slack_image = $user_profile[0];
	$slack_post = post_slack($slack_message, 'general', $slack_image);
		
	if (empty($message_recipient)) {
		$admin_query = mysql_query("SELECT * FROM `users` WHERE `user_type` LIKE 'admin' AND `user_status` LIKE 'active'");
		while($row = mysql_fetch_array($admin_query)) {	
			$email_address[] = end(explode("|", $row['user_emails']));			
				
		}
		
		$email_subject = "Lynker " . $message_type . " ticket from " . $user_name;
		$email_body = "" . $message_content . " <strong><p>- " . $user_name . "</strong> (" . $user_primary_email . ")<p><p><pre>" . $message_userdata . "</pre>";
				
		
	}
	else {
		$email_address = explode(",", $message_recipient);
		$email_subject = $message_subject;
		$email_body = $message_content;
			
	}
			
	$email_post = email_user($email_address, $email_subject, $email_body, 'true');
	
	$json_status = 'message sent';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'true', 'type' => $message_type);
	echo json_encode($json_output);
	exit;
	
}

?>