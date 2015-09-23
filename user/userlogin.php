<?

include '../lib/auth.php';
include '../lib/keygen.php';
include '../lib/slack.php';

header('Content-Type: application/json');

$passed_data = json_decode(file_get_contents('php://input'), true);
$passed_email = $passed_data['email'];
//$passed_password = password_hash($passed_data['password'] ,PASSWORD_BCRYPT);
///$passed_password = password_hash("rasmuslerdorf", PASSWORD_DEFAULT);
	$passed_password = md5($passed_data['password']);

if (empty($passed_email)) {
	$json_status = 'email required';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
elseif (empty($passed_password)) {
	$json_status = 'password required';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
else {
	$user_query = mysql_query("SELECT * FROM `users` LEFT JOIN `companies` on `users`.`user_company` LIKE `companies`.`company_key` WHERE `user_status` LIKE 'active' AND `user_emails` LIKE '%$passed_email%' AND `user_password` LIKE '$passed_password' LIMIT 0, 1");
	$user_count = mysql_num_rows($user_query);
	if ($user_count == 1) {
		while($row = mysql_fetch_array($user_query)) {	
			$user_key = $row['user_key'];
			$user_names = explode(" ", $row['user_name']);
			$user_name = $row['user_name'];
			$user_type = $row['user_type'];		
			$user_emails = explode(",", $row['user_emails']);
			$user_location = $row['user_location'];			
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
			
			$company_name = $row['company_name'];	
			$company_key = $row['company_key'];		
			$company_location = $row['company_location'];		
			$company_contact = $row['company_contact'];		
			$company_logo = $row['company_logo'];		
			$company_summary = $row['company_summary'];		
			$company_website = $row['company_website'];		
			$company_linkedin = $row['company_linkedin'];		
			$company_angellist = $row['company_angellist'];		
			$company_facebook = $row['company_facebook'];
			$company_twitter = $row['company_twitter'];
	
			if (isset($company_key)) {			
				$company_networks = array('facebook' => $company_facebook, 'twitter' => $company_twitter, 'angellist' => $company_angellist, 'linkedin' => $company_linkedin);
				$company_data = array('key' => $company_key, 'name' => $company_name, 'networks' => $company_networks, 'logo' => $company_logo, 'location' => $company_location, 'summary' => $company_summary, 'website' => $company_website);
				
			}
		
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
			
			$user_contacts = array('skype' => $user_skype, 'address' => $user_address, 'phones' => $user_phones, 'emails' => $user_emails);
			$user_details = array('dob' => $user_dob ,'location' => $user_location, 'summary' => $user_bio, 'gender' => $user_gender, 'profile' => $user_profile, 'headline' => $user_headline, 'website' => $user_website);
			$user_name = array('fullname' => $user_name, 'firstname' => $user_names[0], 'lastname' => $user_names[1]);
			$user_data = array('key' => $user_key, 'name' => $user_name, 'type' => $user_type, 'about' => $user_details, 'company' => $company_data, 'contact' => $user_contacts, 'notifications' => $user_notifications, 'networks' => $user_networks, 'directory' => $user_directory);
		}
		
		$user_update = mysql_query("UPDATE `users` SET `user_updated` = CURRENT_TIMESTAMP WHERE `user_key` LIKE '$user_key';");
		
		$token_generated = "at_" . generate_key();
		$token_expiry = strtotime('+90 days');
		$token_query = mysql_query("INSERT INTO `tokens` (`token_id`, `token_expiry`, `token_queryed`, `token_status`, `token_access`, `token_user`, `token_device`) VALUES (NULL, CURRENT_TIMESTAMP, '$token_expiry', 'active', '$token_generated', '$user_key', '$passed_device');");
		$token_output = array('token' => $token_generated, 'expiry' => $token_query);
	
		if ($token_query) {
			$json_status = 'user logged in';
			$json_output[] = array('status' => $json_status, 'sucsess' => 'true', 'user' => $user_data, 'token' => $token_output);
			echo json_encode($json_output);
			exit;
			
		}
		else {
			$slack_message = "*User Login Error:* 'access token could not be created'/n*SQL:*" . $token_query;
			$slack_post = post_slack($slack_message, 'development', '');
			
			$json_status = 'access token could not be created';
			$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
			echo json_encode($json_output);
			exit;
		}
		
	}
	else {
		$json_status = 'login credentials incorrect';
		$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
		echo json_encode($json_output);
		exit;
		
	}
			
}

?>