<?
//$database_connect = mysql_connect(':/Applications/MAMP/tmp/mysql/mysql.sock', 'root', 'root');
$database_connect = mysql_connect('109.169.18.127', 'lynkeradmin', 'getoutmyserver19'); 

if (!$database_connect) { 
	$json_status = 'database not connected';
    $json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
} 

mysql_select_db("lynkerdb");

$session_timestamp = date("Y-m-d H:i:s");
$session_headers = $_SERVER;
$session_ip = $_SERVER['HTTP_CLIENT_IP'];
$session_timezone = $_SERVER["HTTP_LK_TIMEZONE"];

date_default_timezone_set($session_timezone);

$device_version = $session_headers["HTTP_LK_VERSION"];
$device_name = str_replace("'", "&#39;" ,$session_headers["HTTP_LK_DEVICENAME"]);
$device_type = str_replace("'", "&#39;" ,$session_headers["HTTP_LK_DEVICETYPE"]);
$device_push = $session_headers["HTTP_LK_PUSH"];

$auth_exclude = array('userexists.php', 'usersignup.php', 'userlogin.php', 'userreset.php', 'companyupload.php');
$auth_token = $session_headers["HTTP_LK_ACCESS"];

$current_parts = explode('?', $_SERVER["REQUEST_URI"]);
$current_url = $_SERVER["SERVER_NAME"] . $current_parts[0];
$current_file = basename($current_url);
if (!in_array($current_file, $auth_exclude)) {
	if (empty($auth_token)) {	
		header('Content-Type: application/json');
	
		$json_status = 'token is invalid';
		$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
		echo json_encode($json_output);
		exit;
		
	}
	else {
		$auth_query = mysql_query("SELECT * FROM `tokens` WHERE `token_status` LIKE 'active' AND `token_access` LIKE '$auth_token' LIMIT 0, 1");
		$auth_sucsess = mysql_num_rows($auth_query);
		while($row = mysql_fetch_array($auth_query)) {
			$auth_user = $row['token_user'];
			$auth_query_user = mysql_query("SELECT * FROM `users` WHERE `user_key` LIKE '$auth_user' AND `user_status` LIKE 'active'");
			while($row = mysql_fetch_array($auth_query_user))  {	
				$user_emails = explode("," ,$row['user_emails']);
				$user_primary_email = end(explode("|", $user_emails[0]));
				$user_key = $row['user_key'];
				$user_gender = $row['user_gender'];		
				$user_name = $row['user_name'];
				$user_profiles = explode(",", $row['user_profile']);
						
				$user_type = $row['user_type'];
				$user_notificationstype = explode(",", $row['user_notifications']);
									
			}
				
		}
				
		if ($auth_sucsess == 0) {
			header('Content-Type: application/json');
			
			$json_status = 'token is invalid';
			$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
			echo json_encode($json_output);
			exit;
			
		}
		
	}
	
}

//$request_query = mysql_query("INSERT INTO `requests` (`request_id`, `request_timestamp`, `request_domain`, `request_user`, `request_app`, `request_device`, `request_ip`, `request_access`) VALUES (NULL, CURRENT_TIMESTAMP, '$current_url', '$auth_user', '$app_key', '$app_device', '$session_ip', '$auth_token');");

?> 