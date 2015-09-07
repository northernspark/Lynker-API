<?

include '../lib/auth.php';
include '../lib/keygen.php';

header('Content-Type: application/json');

$passed_email = $_GET['uemail'];
if (empty($passed_email)) {
	$json_status = 'email required';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
else {
	$email_query = mysql_query("SELECT * FROM `users` WHERE `user_status` LIKE 'active' AND `user_emails` LIKE '%$passed_email%' LIMIT 0, 1");
	$email_count = mysql_num_rows($email_query);
	if ($email_count == 1) {
		while($row = mysql_fetch_array($email_query)) {
			$emails_array = explode(",", $passed_email);
			if ($emails_array[0] == $passed_email) {
				$user_name = $row['user_name'];
				$user_key = $row['user_key'];
				$user_profile = explode(",", $row['user_profile']);
				//$user_data = array('')
				
				$json_status = 'email already exists';
				$json_output[] = array('status' => $json_status, 'sucsess' => 'false', 'exists' => 'true');
				echo json_encode($json_output);
				exit;
			}
			else {
				$json_status = 'email does not exist';
				$json_output[] = array('status' => $json_status, 'sucsess' => 'true', 'exists' => 'false');
				echo json_encode($json_output);
				exit;
				
			}
		}
	}
	else {
		$json_status = 'email does not exist';
		$json_output[] = array('status' => $json_status, 'sucsess' => 'true', 'exists' => 'false');
		echo json_encode($json_output);
		exit;
		
	}
		
}

?>