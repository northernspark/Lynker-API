<?

include '../lib/auth.php';

header('Content-Type: application/json');

$passed_data = json_decode(file_get_contents('php://input'), true);
$passed_search = str_replace("'", "&#39;" ,$passed_data['search']);

if (strlen($passed_search) > 1) {
	$search_users = mysql_query("SELECT * FROM `users` LEFT JOIN `companies` on `users`.`user_company` LIKE `companies`.`company_key` WHERE (`user_key` NOT LIKE '$user_key' AND `user_status` LIKE 'active') AND (`user_name` LIKE '%$passed_search%' OR `user_nickname` LIKE '$passed_search' OR `user_headline` LIKE '%$passed_search%') ORDER BY `user_updated` DESC LIMIT 0, 20");
	$search_results = mysql_num_rows($search_users);
	while($row = mysql_fetch_array($search_users)) {	
		$user_name = $row['user_name'];
		$user_email = explode(",", $row['user_emails']);
		$user_profile = explode(",", $row['user_profile']);
		$user_identifyer = $row['user_key'];
		$user_headline = str_replace("&#39;", "'" ,$row['user_headline']);
		$user_company = str_replace("&#39;", "'" ,$row['company_name']);
		
		$search_data[] = array('name' => $user_name, 'email' => $user_email, 'key' => $user_identifyer, 'company' => $user_company, 'profile' => $user_profile, 'headline' => $user_headline, 'type' => 'user');
			
	}
	
	$search_company = mysql_query("SELECT * FROM `companies` WHERE `company_name` LIKE '%$passed_search%' AND `company_status` LIKE 'active' LIMIT 0, 20");
	$search_results = mysql_num_rows($search_company);
	while($row = mysql_fetch_array($search_company)) {	
		$company_name = str_replace("&#39;", "'" ,$row['company_name']);
		$company_key = $row['company_key'];
		$company_location = $row['company_location'];
		$company_logo = $row['company_logo'];
		
		$search_data[] = array('name' => $company_name, 'key' => $company_key, 'location' => $company_location, 'logo' => $company_logo, 'type' => 'company');
			
	}
	
	$json_status = 'returned ' . $search_results . ' results';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'true', 'results' => $search_data);
	echo json_encode($json_output);
	exit;
	
}
else {
	$search_company = mysql_query("SELECT * FROM `companies` WHERE `company_name` LIKE '%$passed_search%' AND `company_status` LIKE 'active' ORDER BY `company_signup` DESC LIMIT 0, 20");
	$search_results = mysql_num_rows($search_company);
	while($row = mysql_fetch_array($search_company)) {	
		$company_name = str_replace("&#39;", "'" ,$row['company_name']);
		$company_key = $row['company_key'];
		$company_location = $row['company_location'];
		$company_logo = $row['company_logo'];
		
		$search_data[] = array('name' => $company_name, 'key' => $company_key, 'location' => $company_location, 'logo' => $company_logo, 'type' => 'company');
			
	}
	
	$json_status = 'returned ' . $search_results . ' results';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'true', 'results' => $search_data);
	echo json_encode($json_output);
	exit;
	
}

?>
