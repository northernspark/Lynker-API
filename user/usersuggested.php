<?

include '../lib/auth.php';
include '../lib/slack.php';

header('Content-Type: application/json');

$passed_data = json_decode(file_get_contents('php://input'), true);
$passed_networks = explode(",", $passed_data['networks']);

if (empty($passed_networks) || count($passed_networks) == 0) {
	$json_status = 'atleast one network paramater required';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
else {
	foreach ($passed_networks as $item) {
		$network_query = mysql_query("SELECT * FROM `networks` WHERE `network_username` LIKE '$item' LIMIT 0 ,1");
		$network_data = mysql_fetch_assoc($network_query);
		$network_user = $network_data['network_user'];
		$network_type = $network_data['network_type'];
				
		$user_query = mysql_query("SELECT * FROM `users` LEFT JOIN `companies` on `users`.`user_company` LIKE `companies`.`company_key`  WHERE `user_status` LIKE 'active' AND `user_key` LIKE '$network_user' AND `user_key` NOT LIKE '$user_key' ORDER BY `user_name` ASC LIMIT 0, 1");
		while($row = mysql_fetch_array($user_query)) {	
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
			
			if (!in_array($user_key, $user_existing)) {	
				$user_data[] = array('name' => $user_name, 'profile' => $user_profile[0], 'key' => $user_key, 'location' => $user_location, 'headline' => $user_headline, 'company' => $user_company, 'status' => $user_status, 'network' => $network_type);
				
				$user_existing[] = $connection_user;
				$user_count += 1;
			}
			
		}
			
	}
	
	$json_status = 'returned ' . $user_count . ' users';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'true', 'users' => $user_data);
	echo json_encode($json_output);
	exit;
	
}
			
?>