<?


include '../lib/auth.php';

header('Content-Type: application/json');

$passed_data = json_decode(file_get_contents('php://input'), true);
$passed_connection = $passed_data['key'];

$connection_query = mysql_query("SELECT * FROM `connections` WHERE `connection_key` LIKE '$passed_connection' AND `connection_hidden` LIKE 'false' AND `connection_status` LIKE 'accepted' LIMIT 0, 1");
$connection_count = mysql_num_rows($connection_query);
$connection_data = mysql_fetch_assoc($connection_query);
if ($auth_user == $connection_data['connection_recipient_key']) {
	$connection_privileges = explode(",", $connection_data['connection_sender_privileges']);
 	$connection_recipient = $connection_data['connection_sender_key'];
	
}
else {
	$connection_recipient = $connection_data['connection_recipient_key'];
	$connection_privileges = explode(",", $connection_data['connection_recipient_privileges']);
	
}
if (empty($passed_connection)) {
	$json_status =  'key required';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
		
}
elseif ($connection_count == 0) {
	$json_status =  'connection does not exist';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
elseif ($connection_count == 1) {
	$user_query = mysql_query("SELECT * FROM `users` LEFT JOIN `companies` on `users`.`user_company` LIKE `companies`.`company_key` WHERE `user_key` LIKE '$connection_recipient' AND `user_status` LIKE 'active' LIMIT 0, 1");
	$user_count = mysql_num_rows($user_query);
	if ($user_count == 1) {
		while($row = mysql_fetch_array($user_query)) {
			$user_key = $row['user_key'];
			$user_names = explode(" ", $row['user_name']);
			$user_name = $row['user_name'];
			$user_username = $row['user_nickname'];		
			if (empty($user_username)) $user_directory = "http://lynkerapp.com/" . substr(end(explode("_", $row['user_key'])) , 0, 8);	
			else $user_directory = "http://lynkerapp.com/" . $user_username;
			$user_type = $row['user_type'];		
			$user_emails = explode(",", $row['user_emails']);
			$user_location = $row['user_location'];			
			$user_latitude = $row['user_latitude'];			
			$user_longitude = $row['user_longitude'];							
			$user_gender = $row['user_gender'];			
			$user_dob = $row['user_dob'];			
			$user_bio = trim($row['user_summary']);				
			$user_profile = explode(",", $row['user_profile']);			
			$user_headline = $row['user_headline'];				
			$user_website = $row['user_website'];				
			$user_skype = $row['user_skype'];				
			$user_phones = explode(",", $row['user_phones']);	
			$user_address = explode(",", $row['user_address']);		
			
			$company_name = $row['company_name'];	
			$company_key = $row['company_key'];		
			$company_logo = $row['company_logo'];		
			$company_location = $row['company_location'];		
			
			$network_query = mysql_query("SELECT * FROM `networks` WHERE `network_user` LIKE '$user_key' AND `network_status` LIKE 'active'");
			while($row = mysql_fetch_array($network_query)) {	
				$network_type = $row['network_type'];
				$network_key = $row['network_key'];
				$network_username = $row['network_username'];
				$network_page = $row['network_page'];		
				$network_objects = explode(",", $row['network_data']);
					
				if (!in_array($network_type, $connection_privileges)) $network_data[$network_type] = array("status" => "not available");
				else $network_data[$network_type] = array('username' => $network_username, 'data' => $network_objects, 'key' => $network_key, 'page' => $network_page, 'status' => 'ok');
				
			}			
			
			if (isset($company_key)) $company_data = array('name' => $company_name, 'key' => $company_key, 'logo' => $company_logo, 'location' => $company_location, 'status' => 'ok');
			else $company_data = array("status" => "not available");
			
			if (in_array('basic', $connection_privileges)) {	
				$basics_data = array("gender" => $user_gender, "birthday" => $user_dob, "summary" => $user_bio, "headline" => $user_headline, "location" => $user_location, "website" =>  $user_website, 'username' => $user_username, 'directory' => $user_directory, "status" => "ok");
			}
			else $basics_data = array("status" => "not available");
			
			foreach ($connection_privileges as $item) {
				if (strpos($item, 'phone') !== false) {
					$type = reset(explode("_", $item));
					foreach ($user_phones as $phone) {
						if (strpos($phone, $type) !== false) $phone_items[] = $phone;
											
					}
									
				}
				
				if (count($phone_items) == 0) $phone_data = array("status" => "not available");	
				else $phone_data = array('phones' => $phone_items, "status" => "ok");
				
				if (strpos($item, 'email') !== false) {
					$type = reset(explode("_", $item));
					foreach ($user_emails as $email) {
						if (strpos($email, $type) !== false) $email_items[] = $email;
											
					}
									
				}
				
				if (count($email_items) == 0) $email_data = array("status" => "not available");	
				else $email_data = array('emails' => $email_items, "status" => "ok");
								
			}
			
			if (in_array('address', $address_data)) {	
				$address_data = array("address" => $user_address, "status" => "ok");
			}
			else $address_data = array("status" => "not available");
			
			if (in_array('skype', $connection_privileges)) {	
				$skype_data = array("skype" => $user_skype, "status" => "ok");
			}
			else $skype_data = array("status" => "not available");
			
			if (in_array('location', $connection_privileges)) {	
				$location_data = array("latitude" => $user_latitude, "longitude" => $user_longitude, "status" => "ok");
			}
			else $location_data = array("status" => "not available");
			
			if (empty($network_data)) $network_data = array();
			
			$user_data = array('key' => $user_key, 'name' => $user_name, 'type' => $user_type, 'company' => $company_data, 'basic' => $basics_data, 'skype' => $skype_data, 'scope' => $connection_privileges, 'phone' => $phone_data, 'email' => $email_data, 'address' => $address_data, 'networks' => $network_data, 'location' => $location_data);
						
		}
		
		$json_status = 'user data returned';
		$json_output[] = array('status' => $json_status, 'sucsess' => 'true', 'user' => $user_data);
		echo json_encode($json_output);
		exit;
		
	}
	else {
		$json_status =  'user does not exist';
		$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
		echo json_encode($json_output);
		exit;
		
	}
	
}

?>
