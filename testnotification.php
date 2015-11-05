<?

include 'lib/auth.php';
include 'lib/keygen.php';
include 'lib/notification.php';

header('Content-Type: application/json');

$passed_data = json_decode(file_get_contents('php://input'), true);
$passed_users = explode(",", $passed_data['users']);
$passed_message = $passed_data['message'];
$passed_type = $passed_data['message'];

if ($user_type != "admin") {
	$json_status = 'you do not have permission to access this API';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
else if (empty($passed_message)) {
	$json_status = 'message required';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
else if (count($passed_users) == 0) {
	$json_status = 'users required';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
else {
	$notification_output = post_notification($passed_message, $passed_users, $type, $status, $data);
	echo json_encode($notification_output);
	exit;
	
}

?>
