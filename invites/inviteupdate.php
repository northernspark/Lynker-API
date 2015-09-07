<?

include '../lib/auth.php';
include '../lib/keygen.php';
include '../lib/notification.php';
include '../lib/email.php';

header('Content-Type: application/json');

$passed_data = json_decode(file_get_contents('php://input'), true);
$passed_connection = $passed_data['connection'];
$passed_parameters = $passed_data['parameters'];

if (empty($passed_parameters)) $passed_parameters = "basic";
if (empty($passed_connection)) {
	$json_status =  "connection key required";
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
else {
	$connection_query = mysql_query("SELECT * FROM `connections` WHERE `connection_key` LIKE '$passed_connection' AND (`connection_sender_key` LIKE '$user_key' OR `connection_recipient_key` LIKE '$user_key') LIMIT 0, 1");
	$connection_count = mysql_num_rows($connection_query);
	if ($connection_count > 0) {
		$connection_data = mysql_fetch_assoc($connection_query);
		$connection_timestamp = $connection_data['connection_timestamp'];
		if ($user_key == $connection_data['connection_recipient_key']) {
			$connection_parameters = explode(",", $connection_data['connection_recipient_privileges']);
			$connection_key = "connection_recipient_privileges";
			$connection_recipient = $connection_data['connection_sender_key'];
				
		}
		else {
			$connection_parameters = explode(",", $connection_data['connection_sender_privileges']);
			$connection_key = "connection_sender_privileges";
			$connection_recipient = $connection_data['connection_recipient_key'];
			
		}
		
		$connection_update = mysql_query("UPDATE `connections` SET `$connection_key` = '$passed_parameters' WHERE `connection_key` LIKE '$passed_connection';");
		if ($connection_update) {
			$passed_parameters = explode(",", $passed_parameters);
			if (count($passed_parameters) > count($connection_parameters)) {
				foreach ($passed_parameters as $value) {
					if (!in_array($value, $connection_parameters) && $value != "basics") {
						$passed_updated[] = str_replace("_", " ", $value);
						
					}
					
				}
				
				if (count($passed_updated) == 1) $notification_updated .= "" . str_replace("_", " ", $passed_updated[0]) . "";
				else if (count($passed_updated) == 2) $notification_updated .= "" . str_replace("_", " ", $passed_updated[0]) . " and " . str_replace("_", " ", $passed_updated[1]);
				else {
					foreach ($passed_updated as $value) {
						if ($value == end($passed_parameters))  $notification_updated .= " and " . str_replace("_", " ", $value) . "";
						else if ($value == $passed_parameters[1]) $notification_updated .= "" . str_replace("_", " ", $value) . "";
						else $notification_updated .= ", " . str_replace("_", " ", $value) . "";
						
					}
										
				}
				
				if (empty($user_gender)) $user_gender = "their";
				elseif ($user_gender == "male") $user_gender = "his";
				elseif ($user_gender == "female") $user_gender = "her";
				
				$notification_message = "[" . $user_name . "] has shared " . $user_gender . " " . $notification_updated . " details with you";
				$notification_user = array($connection_recipient);
				$notification_post = post_notification($notification_message, $notification_user, 'update', 'pending', $user_key);
				
			}
			
			$json_status =  "connection updated";
			$json_output[] = array('status' => $json_status, 'sucsess' => 'true');
			echo json_encode($json_output);
			exit;
			
		}
		else {
			$json_status =  "connection not updated - unknown error";
			$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
			echo json_encode($json_output);
			exit;
			
		}
						
	}
	else {
		$json_status =  "connection does not exist";
		$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
		echo json_encode($json_output);
		exit;
		
	}
	
}

?>