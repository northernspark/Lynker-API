<?

include '../lib/auth.php';
include '../lib/keygen.php';
include '../lib/slack.php';

header('Content-Type: application/json');

$device_data = json_decode(file_get_contents('php://input'), true);
$device_token = str_replace($replace_symbols ,"&#39;" ,$device_data['token']);
$device_token = stripslashes($device_token);

$device_key = "device_" . generate_key();
if (empty($device_token)) {
	$json_status = 'device token required';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
else {
	$query_existing = mysql_query("SELECT * FROM `devices` WHERE `device_token` LIKE '$device_token'");
	$count_existing = mysql_num_rows($query_existing);
	if ($count_existing == 0) {
		$add_device = mysql_query("INSERT INTO `devices` (`device_id`, `device_timestamp`, `device_key`, `device_user`, `device_name`, `device_token`, `device_type`, `device_enabled`) VALUES (NULL, CURRENT_TIMESTAMP, '$device_key', '$user_key', '$device_name', '$device_token', '$device_type', 'true');");
		if ($add_device) {
			$json_status =  $device_name . ' added';
			$json_output[] = array('status' => $json_status, 'sucsess' => 'true');
			echo json_encode($json_output);
			exit;
			
		}
		else {		
			$slack_message = "*User Device Error:* '" . $device_name . " not added - unknown error'/n*SQL:*" . $add_device;
			$slack_post = post_slack($slack_message, 'development', '');
		
			$json_status =  $device_name . ' was not added - unknown error';
			$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
			echo json_encode($json_output);
			exit;
			
		}
	}
	else {
		$update_device = mysql_query("UPDATE `devices` SET `device_timestamp` = CURRENT_TIMESTAMP, `device_user` = '$user_key', `device_name` = '$device_name', `device_type` = '$device_type' WHERE `device_token` LIKE '$device_token';");
		if ($update_device) {
			$json_status =  $device_name . ' was updated';
			$json_output[] = array('status' => $json_status, 'sucsess' => 'true');
			echo json_encode($json_output);
			exit;
			
		}
		else {
			$slack_message = "*User Device Error:* '" . $device_name . " not added - unknown error'/n*SQL:*" . $add_device;
			$slack_post = post_slack($slack_message, 'development', '');
			
			$json_status =  $device_name . ' was not updated - uknown error';
			$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
			echo json_encode($json_output);
			exit;
			
		}
	
	}
	
}

?>