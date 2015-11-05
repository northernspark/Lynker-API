<?

include '../lib/auth.php';

header('Content-Type: application/json');

$passed_data = json_decode(file_get_contents('php://input'), true);
$passed_user = $passed_data['user'];

if ($user_type != "admin") {
	$json_status = 'you do not have permission to access this API';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
else if (empty($passed_user)) {
	$json_status = 'user key is required';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
else {
	$user_query = mysql_query("SELECT * FROM `users` LEFT JOIN `companies` on `users`.`user_company` LIKE `companies`.`company_key` WHERE `user_key` LIKE '$passed_user' LIMIT 0, 1");
	$user_exists = mysql_num_rows($user_query);
	if ($user_exists == 1) {
		while($row = mysql_fetch_array($user_query)) {			
			$user_key = $row['user_key'];
			$user_name = $row['user_name'];
			$user_coordinates = array('lat' => $row['user_latitude'], 'lng' => $row['user_longitude']);
			$user_status = $row['user_status'];
			$user_signup = $row['user_signup'];				
			$user_updated = $row['user_updated'];					
			$user_type = $row['user_type'];		
			$user_emails = explode(",", $row['user_emails']);
			$user_city = $row['user_location'];			
			$user_gender = $row['user_gender'];			
			$user_dob = $row['user_dob'];	
			$user_nickname = $row['user_nickname'];	
			if (empty($user_nickname)) $user_directory = "http://lynkerapp.com/" . substr(end(explode("_", $row['user_key'])) , 0, 8);	
			else $user_directory = "http://lynkerapp.com/" . $user_nickname;
			$user_bio = $row['user_summary'];				
			$user_profile = explode(",", $row['user_profile']);			
			$user_headline = $row['user_headline'];				
			$user_website = $row['user_website'];				
			$user_skype = $row['user_skype'];				
			$user_phones = explode(",", $row['user_phones']);	
			$user_address = explode(",", $row['user_address']);				
			$user_notifications = explode(",", $row['user_notifications']);
			$user_company = $row['company_key'];
			
			$network_query = mysql_query("SELECT * FROM `networks` WHERE `network_user` LIKE '$user_key' AND `network_status` LIKE 'active'");
			while($row = mysql_fetch_array($network_query)) {	
				$network_type = $row['network_type'];
				$network_key = $row['network_key'];
				$network_username = $row['network_username'];
				$network_page = $row['network_page'];		
				$network_token = $row['network_token'];					
				$network_objects = explode(",", $row['network_data']);
						
				$network_data = array('username' => $network_username, 'data' => $network_objects, 'key' => $network_key, 'page' => $network_page, 'access' => $network_token);	
				$user_networks[] = array($network_type => $network_data);
				
			}	
	
			$location_query = mysql_query("SELECT * FROM `location` WHERE `location_user` LIKE '$user_key' ORDER BY `location_timestamp` DESC LIMIT 0, 10");		
			while($row = mysql_fetch_array($location_query)) {	
				$location_latitude = $row['location_latitude'];
				$location_longitude = $row['location_longitude'];
				$location_timestamp = $row['location_timestamp'];
				
				$location_data[] = array('lat' => $location_latitude, 'lng' => $location_longitude, 'timestamp' => $location_timestamp);
									
			}
							
			$user_data = array('key' => $user_key, 'name' => $user_name, 'type' => $user_type, 'about' => $user_bio, 'emails' => $user_emails, 'city' => $user_city, 'headline' => $user_headline, 'skype' => $user_skype, 'website' => $user_website, 'phones' => $user_phones, 'address' => $user_address, 'notifications' => $user_notifications, 'directory' => $user_directory, 'status' => $user_status, 'coordinates' => $user_coordinates, 'signup' => $user_signup, 'updated' => $user_updated, 'networks' => $user_networks, 'location' => $location_data);
			
		}
				
		$json_status = 'returned user data';
		$json_output[] = array('status' => $json_status, 'sucsess' => 'true', 'user' => $user_data);
		echo json_encode($json_output);
		exit;
		
	}
	else {
		$json_status = 'user does not exist';
		$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
		echo json_encode($json_output);
		exit;
		
	}
	
}

?>