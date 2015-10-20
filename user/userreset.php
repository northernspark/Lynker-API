<?

include '../lib/auth.php';
include '../lib/keygen.php';
include '../lib/email.php';

header('Content-Type: application/json');

$passed_data = json_decode(file_get_contents('php://input'), true);
$passed_email = $passed_data['email'];

if (empty($passed_email)) {
	$json_status = "Email required";
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
else {
	$password_new = generate_password();
	$password_encripted = password_hash($password_new ,PASSWORD_BCRYPT);
	$user_query = mysql_query("SELECT * FROM `users` WHERE  `user_status` LIKE 'active' AND `user_emails` LIKE '%$passed_email%'");
	$user_count = mysql_num_rows($user_query);
	if ($user_count == 1) {
		while($row = mysql_fetch_array($user_query)) {	
			$user_key = $row['user_key'];
			$user_name = explode(" ", $row['user_name']);
						
		}
		
		$update_query = mysql_query("UPDATE `users` SET `user_updated` = CURRENT_TIMESTAMP, `user_password` = '$password_encripted' WHERE `user_key` LIKE '$user_key';");	
		if ($update_query) {
			$email_address = array($passed_email);
			$email_body .= "Here is your new Lynker password. You can change this password in the app settings once logged in.<p><center><h4>>" . $password_new  . "</<h4></center><p>";
			$email_post = email_user($email_address, "Password Reset", $email_body, 'true');
			
			$json_status = "Password was reset";
			$json_output[] = array('status' => $json_status, 'sucsess' => 'true');
			echo json_encode($json_output);
			exit;
			
		}
		else {
			$json_status = "Password was not reset - unknown error";
			$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
			echo json_encode($json_output);
			exit;
		
		}
	}
	else {
		$json_status = "Email does not exist in our records";
		$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
		echo json_encode($json_output);
		exit;
		
	}
	
}

?>