<?

include '../lib/auth.php';
include '../lib/keygen.php';
include '../lib/notification.php';
include '../lib/email.php';

header('Content-Type: application/json');

$notification_types = array('welcome', 'update', 'response', 'invite', 'appstore', 'referal', 'general');
$notification_password = "getoutmynotifications**" . date("dm-y");
$notification_password = hash('sha256' ,$notification_password);

$passed_data = json_decode(file_get_contents('php://input'), true);
$passed_users = explode(",", $passed_data['users']);
$passed_type = $passed_data['type'];
$passed_message = $passed_data['message'];
$passed_info = $passed_data['data'];
$passed_status = $passed_data['status'];
$passed_search = $passed_data['search'];
$passed_password = hash('sha256' ,$passed_data['password']);
$passed_preview = $passed_data['preview'];

if (empty($passed_status)) $passed_status = "pending";

if (isset($passed_search) && !filter_var($passed_search, FILTER_VALIDATE_EMAIL) === false) {
	$search_query = mysql_query("SELECT * FROM `users` WHERE `user_emails` LIKE '%$passed_search%' AND `user_status` LIKE 'active' LIMIT 0, 1");
	$search_data = mysql_fetch_assoc($search_query);
	$search_user = $search_data['user_key'];
	
	$passed_users = explode(",", $search_user);
				
}

if (isset($passed_data['password'])) {
	if ($notification_password == $passed_password) {
		$search_query = mysql_query("SELECT * FROM `users` WHERE `user_status` LIKE 'active'");
		while($row = mysql_fetch_array($search_query)) {	
			$search_user[] = $row['user_key'];
			
		}
	
		$passed_users = $search_user;
		
	}
	else {
		$json_status = 'password incorrect';
		$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
		echo json_encode($json_output);
		exit;
		
	}
	
}

if (empty($passed_preview)) {
	$preview_output[] = array('preview' => array('message' => $passed_message, 'type' => $passed_type, 'data' => $passed_info, 'users' => $passed_users, 'status' => $passed_status));
	echo json_encode($preview_output);
	exit;
}

if ($user_type != "admin") {
	$json_status = 'you are not authorized to use this api';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
elseif (empty($passed_users)) {
	$json_status = 'users required';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
elseif (empty($passed_type)) {
	$json_status = 'type required';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
elseif (!in_array($passed_type, $notification_types)) {
	$json_status = 'type is not valid';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
elseif (empty($passed_message)) {
	$json_status = 'message required';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
else { 
	$notification_post = post_notification($passed_message, $passed_users, $passed_type, $passed_status, $passed_info);
	$notification_sucess = $notification_post['sucsess'];
	$notification_status = $notification_post['status'];
	
	$json_output[] = array('status' => $notification_status, 'sucsess' => $notification_sucess, 'users' => $passed_users, 'timestamp' => date("Y-m-d H:i:s"));
	echo json_encode($json_output);
	exit;
	
}

?>