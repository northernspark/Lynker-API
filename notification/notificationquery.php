<?

include '../lib/auth.php';
include '../lib/keygen.php';

header('Content-Type: application/json');

$notification_pending = 0;
$notification_query = mysql_query("SELECT * FROM `notifications` WHERE `notification_user` LIKE '$user_key' AND `notification_hidden` LIKE 'false' ORDER BY `notification_id` DESC LIMIT 0, 50");
$notification_count = mysql_num_rows($notification_query);
while($row = mysql_fetch_array($notification_query)) {
	$notification_key = $row['notification_key'];
	$notification_timestamp = $row['notification_timestamp'];
	$notification_message = $row['notification_message'];
	$notification_type = $row['notification_type'];
	$notification_info = $row['notification_data'];
	$notification_status = $row['notification_status'];
	if ($notification_type == "invite") {
		$notification_username = explode(" ", $row['notification_message']);
		$notification_username = $notification_username[0];
		
		$notification_data[] = array('timestamp' => $notification_timestamp, 'key' => $notification_key, 'message' => $notification_message, 'type' => $notification_type, 'data' => $notification_info, 'status' => $notification_status, 'user' => $notification_username);
				
	}
	else {
		$notification_data[] = array('timestamp' => $notification_timestamp, 'key' => $notification_key, 'message' => $notification_message, 'type' => $notification_type, 'data' => $notification_info, 'status' => $notification_status);
				
	}
					
	if ($notification_status == "pending") $notification_pending += 1;
	
}
	
$json_status = "found " . $notification_count . " notifications";
$json_output[] = array('status' => $json_status, 'sucsess' => 'true', 'notifications' => $notification_data, 'pending' => $notification_pending);
echo json_encode($json_output);
exit;

?>