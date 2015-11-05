<?

include '../lib/auth.php';

header('Content-Type: application/json');

$passed_data = json_decode(file_get_contents('php://input'), true);
$passed_username = strip_tags($passed_data['username']);

if (empty($passed_username)) {
	$json_status = 'username required';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
}
elseif (strlen($passed_username) < 3) {
	$json_status = 'username too short.';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
else {
	$username_query = mysql_query("SELECT * FROM `users` WHERE `user_nickname` LIKE '$passed_username' LIMIT 0, 1");
	$username_exists = mysql_num_rows($username_query);
	if ($username_exists == 0) {
		$json_status = 'username is valid!';
		$json_output[] = array('status' => $json_status, 'sucsess' => 'true');
		echo json_encode($json_output);
		exit;
	}
	else {
		$json_status = 'username is in use, try another.';
		$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
		echo json_encode($json_output);
		exit;
		
	}
}

?>