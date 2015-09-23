<?

include '../lib/auth.php';
include '../lib/keygen.php';
include '../lib/notification.php';
include '../lib/email.php';

header('Content-Type: application/json');

$passed_data = json_decode(file_get_contents('php://input'), true);
$passed_type = $passed_data['type'];
$passed_friends = explode("," ,$passed_data['friends']);

if (empty($passed_type)) {
	$json_status = 'type required';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
else if (empty($passed_friends)) {
	$json_status = 'more than one friend required';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
else {
	foreach ($passed_friends as $user) {
		$network_query = mysql_query("SELECT * FROM `networks` WHERE `network_type` LIKE '$passed_type' AND `network_username` LIKE '$user' LIMIT 0 ,1");
		$network_exists = mysql_num_rows($network_query);
		$network_data = mysql_fetch_assoc($network_query);
		$network_user = $network_data['network_user'];
	
		if ($network_exists == 1) {
			$invitation_query = mysql_query("SELECT * FROM `connections` WHERE (`connection_sender_key` LIKE '$network_user' AND `connection_recipient_key` LIKE '$user_key') OR (`connection_sender_key` LIKE '$user_key' AND `connection_recipient_key` LIKE '$network_user') LIMIT 0, 1");
			$invitation_exists = mysql_num_rows($invitation_query);
			
			if ($invitation_exists == 0)  {
				$friend_query = mysql_query("SELECT * FROM `users` WHERE `user_key` LIKE '$network_user' AND `user_status` LIKE 'active' LIMIT 0, 1");
				$friend_data = mysql_fetch_assoc($friend_query);
				$friend_name = $friend_data['user_name'];
				$friend_emails[] = end(explode("|" , reset(explode(",", $friend_data['user_emails']))));
				$friend_keys[] = array($friend_data['user_key']);
								
			}
			
		}
		
	}
	
	$invited_message = '[' . $user_name . '] has just joined Lynker!';
	$invited_notification = post_notification($invited_message, $friend_keys, 'referal', 'pending', $user_key);
	
	$email_address = $friend_emails;	
	$email_subject = '' . $user_name . ' has just joined Lynker!';
	$email_name = explode(" ", $passed_name);		
	$email_body .= "Your " . ucfirst($passed_type) . " friend <strong>" . $user_name . "</strong> (" . $user_primary_email . "), has just joined Lynker, why not connect with them?<p>";
	$email_body .= "<div style='margin-top:50px; margin-bottom:30px; font-weight:400; font-size:11px;' align='center'><a href='" . $user_directory . "' target='_blank' style='padding:14px; text-decoration:none; color:white; background-color:#F23E5B; border-radius:4;'>Lynk-up with " . reset(explode(" ", $user_name)) . "</a></div>";
	$email_post = email_user($email_address, $email_subject, $email_body, 'false');
	
	$json_status = count($invite_user) . ' users invited';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'true', 'invited' => $friend_keys ,'recipt' => $email_post);
	echo json_encode($json_output);
	exit;

}

?>