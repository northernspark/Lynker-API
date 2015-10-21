<?

include '../lib/auth.php';

header('Content-Type: application/json');

$passed_data = json_decode(file_get_contents('php://input'), true);
$passed_image = $passed_data['image'];

if (empty($passed_image)) {
	$json_status =  'image required';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
else {
	$image_array = implode(",", $user_profiles);
	$image_array = str_replace($passed_image, "", $image_array);
	$image_array = str_replace(",,", ",", $image_array);
	$image_array = $passed_image . "," . $image_array;
	
	$user_update = mysql_query("UPDATE `users` SET `user_profile` = '$image_array' WHERE `user_key` LIKE '$user_key';");
	if ($user_update) {
		$json_images = explode(",", $image_array);
		$json_status =  'image added';
		$json_output[] = array('status' => $json_status, 'sucsess' => 'true', 'profiles' => $json_images);
		echo json_encode($json_output);
		exit;
		
	}
	else {
		$json_status =  'image not added - unknown error';
		$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
		echo json_encode($json_output);
		exit;
		
	}
	
}

?>
