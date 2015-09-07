<? 

include '../lib/auth.php';
include '../lib/keygen.php';
include '../lib/notification.php';
include '../lib/email.php';
include '../lib/slack.php';

header('Content-Type: application/json');

$passed_data = json_decode(file_get_contents('php://input'), true);
$passed_content = str_replace("'", "&#39;" ,$passed_data['content']);
$passed_data = str_replace("'", "&#39;" ,$passed_data['data']);
$passed_type = $passed_data['type'];

if (empty($passed_type)) $passed_type = "feedback";

if (empty($passed_content)) {
	$json_status = 'content required';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
else {
	$slack_message = "*" . $user_name . "*(" . $user_primary_email . ") posted a " . ucfirst($passed_type) . " message - _'" . $passed_content . "'_";
	$slack_image = $user_profile[0];
	$slack_post = post_slack($slack_message, 'general', $slack_image);
		
	$admin_query = mysql_query("SELECT * FROM `users` WHERE `user_type` LIKE 'admin' AND `user_status` LIKE 'active'");
	while($row = mysql_fetch_array($admin_query)) {	
		$email_address[] = end(explode("|", $row['user_emails']));			
			
	}
		
	$email_body = "" . $passed_content . " <strong><p>- " . $user_name . "</strong> (" . $user_primary_email . ")<p><p><pre>" . $passed_data . "</pre>";
	$email_subject = "Lynker " . $passed_type . " message from " . $user_name;
	$email_post = email_user($email_address, $email_subject, $email_body, 'true');
	
	$json_status = 'message sent';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'true');
	echo json_encode($json_output);
	exit;
	
}

?>