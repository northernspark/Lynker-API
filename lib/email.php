<?

function email_user($email_recipient, $email_subject, $email_body, $email_force) { 
	if (empty($email_force)) $email_force = 'false';
	foreach ($email_recipient as $email) {	
		$user_preferences_query = mysql_query("SELECT * FROM `users` WHERE `user_emails` LIKE '%$email%' LIMIT 0, 1");
		$user_preferences = mysql_fetch_assoc($user_preferences_query);
		$user_notifications = explode(",", $user_preferences['user_notifications']);
		$user_status = $user_preferences['user_status'];
		if ($user_status == "active") $user_firstname = reset(explode(" " ,$user_preferences['user_name']));
		
		$corispondence_subject = str_replace("'", "&#39;" ,$email_subject);
		$corispondence_sender = $user_primary_email;
		$corispondence_recipients = $email;
		if (empty($corispondence_sender)) $corispondence_sender = "info@lynkerapp.com";
		$corispondence_query = mysql_query("SELECT * FROM `correspondence` WHERE `correspondence_subject` LIKE '$corispondence_subject' AND `correspondence_sender` LIKE '$corispondence_recipients' AND `correspondence_hidden` LIKE 'false' LIMIT 0, 1");
		$corispondence_exists = mysql_num_rows($corispondence_query);
		$corispondence_data = mysql_fetch_assoc($corispondence_query);
		$corispondence_timestamp = $corispondence_data['correspondence_timestamp'];
				
		if ((in_array('email', $user_notifications) || $email_force == 'true') && $corispondence_exists == 0) {
			$email_formatted .= "<html><body style='margin:0px; padding:0px;'>";
			$email_formatted .= "<div style='background-color:#FAFAFA; color:#424242; letter-spacing:0px; padding:25px; margin:0px;'>";
			$email_formatted .= "<img src='http://api.lynkerapp.com/assets/lynkerlogo.png' style='margin-top:10px; margin-bottom:20px; width:140px;'><p>";	
			if (empty($user_firstname)) $email_formatted .= "Hi,<p>";
			else $email_formatted .= "Hi <strong>" . $user_firstname . "</strong>,<p>";
			$email_formatted .= $email_body;
			$email_formatted .= "</div>";
			$email_formatted .= "<div style='color:#878787; font-size:9px; margin-top:30px; margin-bottom:30px; margin-right:15px; margin-left:15px;' align='center'>";
			if ($email_force == "true") {
				$email_formatted .= "This is an automated email sent via Lynker. For more information please visit our <a href='http://lynkerapp.com/documents/terms.php' style='color:#424242;'>Terms & Conditions</a> page";
			}
			else {
				$email_formatted .= "This is an automated email sent at the request of a Lynker user. To opt out of future emails from Lynker <a href='http://lynkerapp.com/redirect/unsubscribe.php?e=" . $email . "' style='color:#424242;' target='_blank'>Click Here</a>.<p>For more information please visit our <a href='http://lynkerapp.com/documents/terms.php' style='color:#424242;'>Terms & Conditions</a> page";
			}
			$email_formatted .= "</div></body></html>";
			
			$corispondence_key = "mail_" . generate_key();
			$corispondence_content = str_replace("'", "&#39;" ,$email_body);	
			$corispondence_post = mysql_query("INSERT INTO `correspondence` (`correspondence_id`, `correspondence_key`, `correspondence_timestamp`, `correspondence_type`, `correspondence_subject`, `correspondence_content`, `correspondence_sender`, `correspondence_recipient`, `correspondence_hidden`) VALUES (NULL, '$corispondence_key', CURRENT_TIMESTAMP, '', '$corispondence_subject', '$corispondence_content', '$corispondence_sender', '$corispondence_recipients', 'false');");
			
			$config = array();
			$config['api_key'] = "key-2rkvchs-dqj8mmoxvia7xw1oy74v-no7";
			$config['api_url'] = "https://api.mailgun.net/v3/lynkerapp.com/messages";
			
			$message = array();
			$message['from'] = 'Lynker <' . $corispondence_sender . '>';
			$message['to'] = $corispondence_recipients;
			$message['h:Reply-To'] = $corispondence_sender;
			$message['subject'] = $email_subject;
			$message['html'] = $email_formatted;
			
			$ch = curl_init();
			
			curl_setopt($ch, CURLOPT_URL, $config['api_url']);
			curl_setopt($ch, CURLOPT_HTTPAUTH, CURLAUTH_BASIC);
			curl_setopt($ch, CURLOPT_USERPWD, "api:{$config['api_key']}");
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
			curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 10);
			curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
			curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
			curl_setopt($ch, CURLOPT_POST, true); 
			curl_setopt($ch, CURLOPT_POSTFIELDS,$message);
			curl_exec($ch);
			curl_close($ch);
			
			$j = json_decode(curl_exec($ch));
			return array('status' => 'email sent!', 'sucsess' => 'true', 'content' => $email_formatted, 'recipient' => $corispondence_recipients, 'output' => $j);
					
			
		}
		else {
			if ($corispondence_exists > 0) $json_status = 'email not sent - correspondance already sent on ' . $corispondence_timestamp;
			else $json_status = 'email not sent - email notifications disabled by user';
			
			return array('status' => $json_status, 'sucsess' => 'false' ,'notifications' => $user_notifications);
			
		}
		
	}
	
}

?>