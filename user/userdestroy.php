<?

include '../lib/auth.php';
include '../lib/slack.php';

header('Content-Type: application/json');

$destory_query = mysql_query("UPDATE `tokens` SET `token_status` = 'destroyed' WHERE `token_access` LIKE '$auth_token';");
if ($destory_query) {
	if (isset($device_push)) $device_update = mysql_query("UPDATE `devices` SET `device_enabled` = 'false' WHERE `device_token` LIKE '$device_push';");
	
	$json_status = 'token destroyed';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'true');
	echo json_encode($json_output);
	exit;
	
}
else {
	$slack_message = "*User Destroy Error:* 'company not added - unknown error'/n*SQL:*" . $destory_query;
	$slack_post = post_slack($slack_message, 'development', '');
	
	$json_status = 'token not destroyed - unknown error';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}

?>
