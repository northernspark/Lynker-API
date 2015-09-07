<?

include '../lib/auth.php';

header('Content-Type: application/json');

$connections_query = mysql_query("SELECT * FROM `connections` WHERE  (`connection_recipient_key` LIKE '$auth_user') OR (`connection_sender_key` LIKE '$auth_user') AND `connection_status` NOT LIKE 'declined'");
$connections_count = 0;
while($row = mysql_fetch_array($connections_query)) {	
	$connection_status = $row['connection_status'];
	$connection_timestamp = $row['connection_timestamp'];
	$connection_identifyer = $row['connection_key'];
	$connection_recipient = $row['connection_recipient_key'];
	
	if ($auth_user == $connection_recipient) {
		$connection_user = $row['connection_sender_key'];
		$connection_privileges = explode("," ,$row['connection_sender_privileges']);
		$connection_shared = explode("," ,$row['connection_recipient_privileges']);
		$connection_tags = explode("," ,$row['connection_recipient_tags']);
		$connection_sender = "false";
				
	}
	else {
		$connection_user = $row['connection_recipient_key'];
		$connection_privileges = explode("," ,$row['connection_recipient_privileges']);
		$connection_shared = explode("," ,$row['connection_sender_privileges']);
		$connection_sender = "true";
		
	}
	
	$user_data = mysql_query("SELECT * FROM `users` LEFT JOIN `companies` on `users`.`user_company` LIKE `companies`.`company_key`  WHERE (`user_status` LIKE 'active' OR  `user_status` LIKE 'invited') AND `user_key` LIKE '$connection_user' AND `user_key` NOT LIKE '$user_key' ORDER BY `user_name` ASC LIMIT 0, 1");
	while($row = mysql_fetch_array($user_data)) {	
		$user_name = $row['user_name'];
		$user_key = $row['user_key'];
		$user_company = str_replace("&#39;", "'" ,$row['company_name']);	
		$user_profile = explode(",", $row['user_profile']);
		$user_nickname = $row['user_nickname'];
		$user_headline = $row['user_headline'];
		$user_location = $row['user_location'];
		$user_emails = explode(",", $row['user_emails']);
		$user_status = $row['user_status'];
		$user_type = $row['user_type'];
						
		if (!in_array($connection_user, $connections_existing)) {
			$user_details = array('name' => $user_name, 'profile' => $user_profile[0], 'key' => $connection_user, 'nickname' => $user_nickname, 'headline' => $user_headline, 'location' => $user_location, 'emails' => $user_emails, 'company' => $user_company, 'status' => $user_status);
			$connection_data[] = array('key' => $connection_identifyer, 'timestamp' => $connection_timestamp, 'status' => $connection_status, 'privileges' => $connection_privileges, 'shared' => $connection_shared, 'user' => $user_details, 'sender' => $connection_sender);
				
			$connections_existing[] = $connection_user;
			$connections_count += 1;
						
		}
		
	}
	
}

$json_status = 'returned ' . $connections_count . ' connections';
$json_output[] = array('status' => $json_status, 'sucsess' => 'true', 'connections' => $connection_data, 'results' => count($connections_existing));
echo json_encode($json_output);
exit;

?>