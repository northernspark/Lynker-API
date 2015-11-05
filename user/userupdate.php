<?

include '../lib/auth.php';
include '../lib/keygen.php';
include '../lib/slack.php';
include '../lib/email.php';

header('Content-Type: application/json');

$passed_data = json_decode(file_get_contents('php://input'), true);
$passed_items = $passed_data['items'];
$passed_count = count($passed_items);
$passed_notify = $passed_data['notify'];
if (empty($passed_notify)) $passed_notify = "false";

if (empty($passed_items)) {
	$json_status = 'nothing passed';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
}
else {
	$item_id = 0;
	foreach ($passed_items as $key => $variable){
		$passed_variable = str_replace("'" ,"&#39;" ,$variable);
		$passed_variable = strip_tags($passed_variable);

		if ($key == "user_verified") {
			if ($variable == "true") {
				$slack_message = "*" . $user_name . "* just became a verifyed user!";
				$slack_post = post_slack($slack_message, 'users', $user_profiles[0]);
			
				$admin_query = mysql_query("SELECT * FROM `users` WHERE `user_type` LIKE 'admin' AND `user_status` LIKE 'active'");
				while($row = mysql_fetch_array($admin_query)) {	
					$user_email = explode(",", $user_email);
					$user_email = explode("]", $user_email[0]);			
					$user_email = $user_email[1];	
					
					$email_address = explode(",", $row['user_emails']);
					$email_address = end(explode("|", $user_emails[0]));			
					$email_name = explode(" ", $row['user_name']);		
					$email_body = "Hi <strong>" . $email_name[0] . "</strong>, <p>A verifyed user has been confirmed via Twitter.<p><center>Name: <strong>" . $user_name . "</strong><br/>Email: <strong>" . $user_email . "</strong></center>";
					$email_post = email_user($email_address, "A Verifyed User was confirmed!", $email_body, 'true');
	
				}
				
			}
			
		}
		
		if ($key == "user_password") $passed_variable = password_hash($passed_variable ,PASSWORD_BCRYPT);	
		
		if (empty($passed_variable)) {
			$item_status = $key . ' was null (' . $variable[0];
			$item_output[] = array('status' => $item_status, 'sucsess' => 'true');
			
		}
		else {
			$update_query = mysql_query("UPDATE `users` SET `user_updated` = CURRENT_TIMESTAMP, `$key` = '$passed_variable' WHERE `user_key` LIKE '$user_key';");
			if ($update_query) {
				$item_id += 1;
				$item_status = $key . ' update with ' . $passed_variable;
				$item_output[] = array('status' => $item_status, 'sucsess' => 'true');
				
				
			}			
			else {
				$item_status = 'could not update ' . $key . ' - unknown error';
				$item_output[] = array('status' => $item_status, 'sucsess' => 'false');
		
			}
			
		}

	}
	
	$json_status = 'updated ' . $item_id . ' of ' . $passed_count . ' items';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'true', 'items' => $item_output);
	echo json_encode($json_output);
	exit;
	
}

?>