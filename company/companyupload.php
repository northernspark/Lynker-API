<?

include '../lib/auth.php';
include '../lib/slack.php';

header('Content-Type: application/json');

$passed_data = json_decode(file_get_contents('php://input'), true);
$passed_identifyer = $passed_data['key'];
$passed_name = str_replace("'", "&#39;" ,$passed_data['name']);
$passed_description	= str_replace("'", "&#39;" ,$passed_data['description']);
$passed_website	= $passed_data['website'];
$passed_logo = $passed_data['logo'];
$passed_domain = $passed_data['domain'];
$passed_key = "comp_" . $passed_data['key'];
$passed_location = str_replace("'", "&#39;" ,$passed_data['location']);
$passed_office = str_replace("'", "&#39;" ,$passed_data['office']);
$passed_angellist = $passed_data['angellist'];
$passed_linkedin = end(explode("/", $passed_data['linkedin']));
$passed_twitter = $passed_data['twitter'];
$passed_facebook = $passed_data['facebook'];
$passed_phone = $passed_data['phone'];
$passed_tags = $passed_data['tags'];

$instagram_search = json_decode(file_get_contents('https://api.instagram.com/v1/users/search?q=' . $passed_name . '&access_token=463375653.b882fcd.d4295a53494a4006a20a7a8c1492e9e5'));
$instagram_user = $instagram_search->data[0]->username;
$instagram_identifyer = $instagram_search->data[0]->id;
if (stripos($instagram_user, $passed_name) === false) $instagram_user = "";
else $passed_instagram = $instagram_identifyer . "," . $instagram_user;

if (isset($passed_facebook)) {
	$facebook_search = json_decode(file_get_contents('https://graph.facebook.com/' . $passed_facebook . '?access_token=CAAVRq7jrQKgBAAdsSM3eZAtKX0chlVTsMe0F7sAKLFaIBebrWJHZA3aTxzdEzVak5ecUtYiSFvh2h8sowDczDz4u0K7a0nn4XgTlTae7jBEyvl39zZBaZCxkqFmMO3AmKGyRaizXxf5ZBIRZAxkziN8aJmOxBA5R2l4vSIrzO39PEYydAbrVyPHS0vFAofxELhcDH5c4yaxnoUXSJDndA3poZBtnIPVBk9nlZCW5mVj4pNLGHQ5Rm7rj'));
	$facebook_identifyer = $facebook_search->id;
	$facebook_cover = $facebook_search->cover->source;
	$facebook_website = $facebook_search->website;
	
	if (isset($facebook_identifyer)) $passed_facebook = $facebook_identifyer . "," . $passed_facebook;
	if (isset($facebook_website)) $passed_website = $passed_website . "," . str_replace(" ", ",", $facebook_website);
		
}

if (empty($passed_name)) {
	$json_status = 'name required';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
elseif (empty($passed_identifyer)) {
	$json_status = 'id required';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
else {	
	$company_query = mysql_query("SELECT * FROM `companies` WHERE `company_key` LIKE '$passed_key' AND `company_status` LIKE 'active' LIMIT 0, 1");
	$company_count = mysql_num_rows($company_query);
	if ($company_count == 0) {
		$company_insert = mysql_query("INSERT INTO `companies` (`company_id`, `company_signup`, `company_updated`, `company_name`, `company_key`, `company_status`, `company_location`, `company_office`, `company_contact`, `company_domain`, `company_logo`, `company_cover`, `company_summary`, `company_website`, `company_linkedin`, `company_angellist`, `company_twitter`, `company_facebook`, `company_instagram`, `company_admins`) VALUES (NULL, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '$passed_name', '$passed_key', 'active', '$passed_location', '$passed_office', '$passed_phone', '$passed_domain', '$passed_logo', '$facebook_cover', '$passed_description', '$passed_website', '$passed_linkedin', '$passed_angellist', '$passed_twitter', '$passed_facebook', '$passed_instagram', '');");
		
		if ($company_insert) {
			$slack_website = explode("," ,$passed_website);
			$slack_message = "*" . $passed_name . "*(" . $slack_website[0] . ") has been added to Lynker!";
			$slack_post = post_slack($slack_message, 'companies', $passed_logo);
			
			$json_status = 'company added';
			$json_output[] = array('status' => $json_status, 'sucsess' => 'true', 'key' => $passed_key);
			echo json_encode($json_output);
			exit;
			
		}
		else {
			$slack_message = "*Company Upload Error:* 'company not added - unknown error'/n*SQL:*" . $company_insert;
			$slack_post = post_slack($slack_message, 'development', '');
			
			$json_status = 'company not added - unknown error';
			$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
			echo json_encode($json_output);
			exit;
			
		}
	}
	else {
		$json_status = 'Company already exists';
		$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
		echo json_encode($json_output);
		exit;
		
	}
}

?>