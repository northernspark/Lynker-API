<?

include '../lib/auth.php';
include '../lib/keygen.php';
include '../lib/notification.php';
include '../lib/email.php';

header('Content-Type: application/json');

$passed_data = json_decode(file_get_contents('php://input'), true);
$passed_parameters = $passed_data['parameters'];
$passed_response = $passed_data['response'];
$passed_recipient = $passed_data['recipient'];
if (empty($passed_parameters) && $passed_response != "blocked") $passed_parameters = 'basic';

if (empty($passed_response)) {
	$json_status = 'respose required';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
elseif (empty($passed_recipient)) {
	$json_status = 'recipient required';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
elseif ($passed_recipient == $user_key) {
	$json_status =  "cannot connect with self";
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
else {
	$invitation_query = mysql_query("SELECT * FROM `connections` WHERE (`connection_sender_key` LIKE '$passed_recipient' AND `connection_recipient_key` LIKE '$user_key') OR (`connection_sender_key` LIKE '$user_key' AND `connection_recipient_key` LIKE '$passed_recipient') LIMIT 0, 1");
	$invitation_content = mysql_fetch_assoc($invitation_query);
	$invitation_key = $invitation_content['connection_key'];
	$invitation_count = mysql_num_rows($invitation_query);
	if ($invitation_count == 1) {
		$update_invitation = mysql_query("UPDATE `connections` SET  `connection_timestamp` = CURRENT_TIMESTAMP, `connection_recipient_privileges` = '$passed_parameters', `connection_status` = '$passed_response' WHERE `connection_key` LIKE '$invitation_key';");
		if ($update_invitation) {		
			$recipient_query = mysql_query("SELECT * FROM `users` WHERE `user_key` LIKE '$passed_recipient' AND `user_status` LIKE 'active' LIMIT 0, 1");
			$recipient_count = mysql_num_rows($recipient_query);
			$recipient_data = mysql_fetch_assoc($recipient_query);
			if ($recipient_count == 1) {
				if ($passed_response == "accepted")	{	
					$recipient_name = $recipient_data['user_name'];
					$recipient_key = array($recipient_data['user_key']);
					
					$notification_message = '[' . $user_name . '] accepted your invite to connect';
					$notification_post = post_notification($notification_message, $recipient_key, 'response', 'pending', $user_key);

				}
				
				$json_status = 'invitation updated';
				$json_output[] = array('status' => $json_status, 'sucsess' => 'true', 'recipt' => $notification_post);
				echo json_encode($json_output);
				exit;
				
			}
			else {
				$json_status = 'invitation updated but sender was not notifyed as they no loger exist';
				$json_output[] = array('status' => $json_status, 'sucsess' => 'true');
				echo json_encode($json_output);
				exit;
				
			}
			
			
		}
		else {
			$json_status = 'invitation not updated - unknown error';
			$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
			echo json_encode($json_output);
			exit;
	
		}
		
	}
	else {
		$json_status = 'invitation does not exist';
		$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
		echo json_encode($json_output);
		exit;

	}
	
}

?>