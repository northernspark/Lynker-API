<?

include '../lib/auth.php';
include '../lib/keygen.php';
include '../lib/slack.php';

header('Content-Type: application/json');

$passed_data = json_decode(file_get_contents('php://input'), true);
$passed_coordinates = explode(",", $passed_data['latlng']);
$passed_latitude = $passed_coordinates[0];
$passed_longitude = $passed_coordinates[1];
$passed_update = $passed_data['update'];
$passed_radius = $passed_data['radius'];
$passed_limit = $passed_data['limit'];
if (empty($passed_update)) $passed_update = "true";
if (empty($passed_radius)) $passed_radius = 0.3;
if (empty($passed_limit)) $passed_limit = 20;

if (empty($passed_data['latlng'])) {
	$json_status = 'coordinates requred';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
else {
	$user_coorinates = implode(",", $passed_coordinates);
	if ($passed_update == "true") {
		$user_update = mysql_query("UPDATE `users` SET `user_updated` = CURRENT_TIMESTAMP, `user_latitude` = '$passed_latitude', `user_longitude` = '$passed_longitude' WHERE `user_key` LIKE '$user_key';");
		
	}
	if ($user_update || $passed_update != "false") {		
		$nearby_expiry = date('Y-m-d H:i:s', strtotime('-8 minutes'));
		$nearby_query = mysql_query("SELECT z.user_updated, z.user_key, z.user_name, z.user_latitude, z.user_longitude, z.user_profile, z.user_headline, z.user_company, z.user_location, p.distance_unit * DEGREES(ACOS(COS(RADIANS(p.latpoint)) * COS(RADIANS(z.user_latitude)) * COS(RADIANS(p.longpoint) - RADIANS(z.user_longitude)) + SIN(RADIANS(p.latpoint)) * SIN(RADIANS(z.user_latitude)))) AS distance_in_km FROM users AS z JOIN (SELECT $passed_latitude AS latpoint, $passed_longitude AS longpoint, $passed_radius AS radius, 111.045 AS distance_unit) AS p ON 1=1 WHERE z.user_latitude BETWEEN p.latpoint - (p.radius / p.distance_unit) AND p.latpoint + (p.radius / p.distance_unit) AND z.user_longitude BETWEEN p.longpoint - (p.radius / (p.distance_unit * COS(RADIANS(p.latpoint)))) AND p.longpoint + (p.radius / (p.distance_unit * COS(RADIANS(p.latpoint)))) AND  `user_key` NOT LIKE '$user_key' AND `user_latitude` != 0 AND `user_longitude` != 0 AND `user_updated` > '$nearby_expiry' ORDER BY distance_in_km LIMIT $passed_limit");
		$nearby_count = mysql_num_rows($nearby_query);
		while($row = mysql_fetch_array($nearby_query)) {	
			$nearby_lastupdated = $row['user_updated'];		
			$nearby_key = $row['user_key'];	
			$nearby_name = $row['user_name'];
			$nearby_company = $row['user_company'];
			$nearby_headline = $row['user_headline'];
			$nearby_location = $row['user_location'];
			$nearby_profile = explode(",", $row['user_profile']);
			$nearby_latitude = $row['user_latitude'];	
			$nearby_longitude = $row['user_longitude'];	
			
			$company_query = mysql_query("SELECT * FROM `companies` WHERE `company_key` LIKE '$nearby_company' AND `company_status` LIKE 'active' LIMIT 0 ,1");
			$company_data = mysql_fetch_assoc($company_query);
			$company_name =  str_replace("&#39;", "'" ,$company_data['company_name']);
			if (empty($company_name)) $company_name = "";
						
			$nearby_coordinates = array('lat' => $nearby_latitude, 'lng' => $nearby_longitude, 'radius' => $passed_radius);
			$nearby_data[] = array('name' => $nearby_name, 'profile' => $nearby_profile[0], 'key' => $nearby_key, 'location' => $nearby_location, 'headline' => $nearby_headline, 'updated' => $nearby_lastupdated ,'coordinates' => $nearby_coordinates, 'company' => $company_name);
			
		}
		
		$json_status = 'returned ' . $nearby_count . ' users';
		$json_output[] = array('status' => $json_status, 'sucsess' => 'true', 'results' => $nearby_data);
		echo json_encode($json_output);
		exit;
		
	}
	else {
		$json_status = 'location not updated - unknown error';
		$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
		echo json_encode($json_output);
		exit;
		
	}
	
}

?>