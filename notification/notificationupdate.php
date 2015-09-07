<?

include '../lib/auth.php';
include '../lib/keygen.php';
include '../lib/slack.php';

header('Content-Type: application/json');

$passed_data = json_decode(file_get_contents('php://input'), true);
$passed_identifyer = $passed_data['key'];

if (empty($passed_identifyer)) {
	$json_status = 'notification is required';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
else {
	$update_notification = mysql_query("UPDATE `notifications` SET `notification_status` = 'viewed' WHERE `notification_key` LIKE '$passed_identifyer';");
	if ($update_notification) {
		$json_status = 'Notification updated';
		$json_output[] = array('status' => $json_status, 'sucsess' => 'true');
		echo json_encode($json_output);
		exit;
	
	}
	else {
		$slack_message = "*Notification Update Error:* 'notification not updated - unknown error'/n*SQL:*" . $update_notification;
		$slack_post = post_slack($slack_message, 'development', '');
		
		$json_status = 'Notification not updated - unknown error';
		$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
		echo json_encode($json_output);
		exit;
		
	}
	
}

?>