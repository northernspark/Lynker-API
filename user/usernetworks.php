<?

include '../lib/auth.php';
include '../lib/keygen.php';

header('Content-Type: application/json');

$passed_data = json_decode(file_get_contents('php://input'), true);
$passed_type = $passed_data['type'];
$passed_username = $passed_data['user'];
$passed_page = strip_tags($passed_data['page']);
$passed_status = $passed_data['status'];
$passed_data = $passed_data['data'];
$passed_token = $passed_data['token'];

if (empty($passed_status)) $passed_status = 'active';

if (empty($passed_type)) {
	$json_status = 'type required';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
else {
	$network_query = mysql_query("SELECT * FROM `networks` WHERE `network_type` LIKE '$passed_type' AND `network_user` LIKE '$user_key' LIMIT 0 ,1");
	$network_count = mysql_num_rows($network_query);
	$network_data = mysql_fetch_assoc($network_query);
	if ($network_count == 0) {
		$network_key = "nw_" . generate_key();
		$network_post = mysql_query("INSERT INTO `networks` (`network_id`, `network_key`, `network_type`, `network_user`, `network_status`, `network_token`, `network_username`, `network_page`, `network_data`) VALUES (NULL, '$network_key', '$passed_type', '$user_key', '$passed_status', '$passed_token', '$passed_username', '$passed_page', '$passed_data');");
	}
	else {
		$network_key = $network_data['network_key'];			
		$network_post = mysql_query("UPDATE `networks` SET `network_status` = '$passed_status', `network_token` = '$passed_token', `network_token` = '$passed_token', `network_username` = '$passed_username', `network_page` = '$passed_page', `network_data` = '$passed_data' WHERE `network_key` LIKE '$network_key';");
				
	}
	
	if ($network_post) {
		$json_status =  $passed_type . ' ' . $passed_status;
		$json_output[] = array('status' => $json_status, 'sucsess' => 'true');
		echo json_encode($json_output);
		exit;
		
	}
	else {
		$json_status =  $passed_type . ' not updated - unknown error';
		$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
		echo json_encode($json_output);
		exit;
		
	}
	
}

?>