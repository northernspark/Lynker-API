<?

include '../lib/auth.php';

header('Content-Type: application/json');

$passed_data = json_decode(file_get_contents('php://input'), true);
$passed_search = $passed_data['search'];
$passed_identifyer = $passed_data['key'];
$passed_employees = $passed_data['employees'];
if (empty($passed_employees)) $passed_employees = "false";

if (empty($passed_search) && empty($passed_identifyer)) {
	$json_status = 'search or key is required';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
else {
	if (empty($passed_identifyer)) {
		$search_query = mysql_query("SELECT * FROM `companies` WHERE `company_name` LIKE '%$passed_search%' AND `company_status` LIKE 'active' AND `company_summary` LIKE '%$passed_search%' LIMIT 0, 20");
		$search_results = mysql_num_rows($search_query);
		
	}
	else {
		$search_query = mysql_query("SELECT * FROM `companies` WHERE `company_key` LIKE '%$passed_identifyer%' LIMIT 0, 1");
		$search_results = mysql_num_rows($search_query);
		
	}
	
	while($row = mysql_fetch_array($search_query))  {	
		$company_name = str_replace("&#39;", "'" ,$row['company_name']);
		$company_key = $row['company_key'];
		$company_location = str_replace("&#39;", "'" ,$row['company_location']);
		$company_office = str_replace("&#39;", "'" ,$row['company_office']);
		$company_contact = explode(",", $row['company_contact']);
		$company_logo = $row['company_logo'];
		$company_cover = $row['company_cover'];
		$company_summary = str_replace("&#39;", "'" ,$row['company_summary']);
		$company_website = explode(",", $row['company_website']);
		$company_domain = $row['company_domain'];
		$company_twitter = $row['company_twitter'];
		$company_linkedin = $row['company_linkedin'];
		$company_angellist = $row['company_angellist'];
		$company_facebook = explode(",", $row['company_facebook']);
		$company_instagram = explode(",", $row['company_instagram']);
		$company_directory = "http://lynkerapp.com/company/" . substr(end(explode("_", $row['company_key'])) , 0, 11);	
				
		if ($passed_employees == "true") {
			$employee_query = mysql_query("SELECT * FROM `users` WHERE `user_status` LIKE 'active' AND (`user_company` LIKE '$company_key' OR `user_headline` LIKE '%$company_name%' OR `user_emails` LIKE '%$company_domain%') AND `user_key` NOT LIKE '$auth_user' LIMIT 0, 50");
			$employee_count = mysql_num_rows($employee_query);
			while($row = mysql_fetch_array($employee_query))  {	
				$employee_key = $row['user_key'];
				$employee_name = $row['user_name'];
				$employee_type = $row['user_type'];		
				$employee_headline = $row['user_headline'];		
				$employee_profile = reset(explode(",", $row['user_profile']));				
				$employee_location = $row['user_location'];				
				$employee_email = explode(",", $row['user_emails']);				
										
				$emplyee_output[] = array('key' => $employee_key, 'name' => $employee_name, 'type' => $employee_type, 'profile' => $employee_profile, 'headline' => $employee_headline, 'location' => $employee_location, 'email' => $employee_email[0], 'source' => 'lynker');
				
			}
			/*
			if (isset($company_domain)) {
				
				$emailhunter_query = json_decode(file_get_contents('https://api.emailhunter.co/v1/search?domain=' . $company_domain . '&api_key=17da58d2c923902b0d4f98161353f6405588dfa1'));
				$emailhunter_values = $emailhunter_query->emails;
								
				$email_remove = array("-", ".", "_", "|");
				$email_exclude = array("info", "sales", "hi", "contact", "feedback", "help", "api", "support", "team", "privacy", "jobs", "feeds", "events", "social", "admin", "legal", "www");
								
				foreach ($emailhunter_values as $email) {
					$employee_email = $email->value;
					$employee_name = explode("@", $employee_email);
					$employee_name = str_replace($email_remove, " ", $employee_name[0]);
					$employee_name = preg_replace("/[0-9]/", "", $employee_name);					
					$employee_names = explode(" ", $employee_name);
					$employee_profile = "https://www.gravatar.com/avatar/" . md5($employee_email) . "?s=124&d=identicon&r=PG&d=404";
									
					if (!in_array($employee_name, $email_exclude) && count($employee_names) > 1) {
						$emplyee_output[] = array('key' => '', 'name' => ucwords($employee_name), 'type' => '', 'profile' => $employee_profile, 'headline' => '', 'location' => '', 'email' => $employee_email, 'source' => 'emailhunter');
						
					}
				
				}
				
					
			}
			*/
			
		}
		
		if (count($company_facebook) > 1) $company_facebook = array("id" => $company_facebook[0], 'handle' => $company_facebook[1]);
		else $company_facebook = array("handle" => $company_facebook[0]);
		
		if (count($company_instagram) > 1) $company_instagram = array('id' => $company_instagram[0] ,"handle" => $company_instagram[1]);
		else $company_instagram = array("handle" => $company_instagram[0]);
		
		$company_networks = array('twitter' => $company_twitter, 'linkedin' => $company_linkedin ,'angellist' => $company_angellist, 'facebook' => $company_facebook, 'instagram' => $company_instagram);	
		if ($passed_employees == "true") $company_output[] = array('key' => $company_key, 'name' => $company_name, 'location' => $company_location, 'office' => $company_office, 'logo' => $company_logo, 'description' => $company_summary, 'website' => $company_website, 'networks' => $company_networks, 'employees' => $emplyee_output, 'phone' => $company_contact, 'cover' => $company_cover, 'domain' => $company_domain);
		else $company_output[] = array('key' => $company_key, 'name' => $company_name, 'logo' => $company_logo, 'cover' => $company_cover, 'networks' => $company_networks, 'directory' => $company_directory);
		
	}
	
	$json_status = 'returned ' . $search_results . ' returned';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'true', 'results' => $company_output);
	echo json_encode($json_output);
	exit;
	
}

