<?

function post_notification($message, $users, $type, $status, $data) { 
	if (count($users) > 49) return $output[] = array('status' => 'users limited too 50', 'sucsess' => 'false' ,'users' => $users);
	else {
		foreach ($users as $notification_user){
			if (strlen($notification_user) > 1) {
				$existing_query = mysql_query("SELECT * FROM `notifications` WHERE `notification_message` LIKE '$message' AND `notification_user` LIKE '$notification_user'");
				$existing_count = mysql_num_rows($existing_query);
				$existing_data = mysql_fetch_assoc($existing_query);
				$existing_key = $existing_data['notification_key'];
				
				if ($existing_count == 0) {
					$notification_key = "alert_" . generate_key();
					$notification_message = str_replace("'", "&#39;" , $message);
					$notification_type = $type;
					if (empty($notification_type)) $notification_type = "update";
					$notification_status = $status;
					if (empty($notification_status)) $notification_status = "pending";
					$notification_data = $data;
										
					$add_notification = mysql_query("INSERT INTO `notifications` (`notification_id`, `notification_key`, `notification_timestamp`, `notification_user`, `notification_message`, `notification_type`, `notification_data`, `notification_status`, `notification_hidden`) VALUES (NULL, '$notification_key', CURRENT_TIMESTAMP, '$notification_user', '$notification_message', '$notification_type', '$notification_data', '$notification_status', 'false');");
					if ($add_notification) {
						$add_sucsess = "true";						
						//if ($notification_user != $user_key && $notification_status != "pending") {
						if ($notification_status == "pending") {							
							$device_query = mysql_query("SELECT * FROM `devices` WHERE `device_user` LIKE '$notification_user' AND `device_enabled` LIKE 'true'");
							while($row = mysql_fetch_array($device_query)) {
								$device_name = $row['device_name'];
								$device_token = $row['device_token'];
								$device_message = str_replace("&#39;", "'", $message);
																
								//if (in_array('push', $user_notificationstype)) {	
									$payload['aps'] = array('alert' => $device_message, 'sound' => 'default', 'type' => $notification_type, 'data' => $notification_data);
									$payload = json_encode($payload);
									
									$apns_address = 'gateway.sandbox.push.apple.com';
									$apns_port = 2195;
									
									$stream_context = stream_context_create();
									stream_context_set_option($stream_context, 'ssl', 'local_cert', 'lynkerdist.pem.pem');
									stream_context_set_option($stream_context, 'ssl', 'passphrase', '**LynkerApp-Push**');
									
									$apns = stream_socket_client('ssl://' . $apns_address . ':' . $apns_port, $error, $error_string, 60, STREAM_CLIENT_CONNECT, $stream_context);
									$apns_error = $error . " " . $error_string;
									
									if (!$apns) $device_data[] = array('message' => $device_message, 'device' => $device_name, 'token' => $device_token, 'error' => $apns_error);
									else $device_data[] = array('message' => $device_message, 'device' => $device_name, 'token' => $device_token, 'error' => $apns_error);
									
									$apns_message = chr(0) . chr(0) . chr(32) . pack('H*', str_replace(' ', '', $device_token)) . chr(0) . chr(strlen($payload)) . $payload;
									fwrite($apns, $apns_message);
									
									socket_close($apns);
									
									fclose($apns);
								
									return $output[] = array('status' => 'notification added', 'sucsess' => 'true', 'message' => $message, 'users' => $notification_user, 'payload' => $device_data, 'push' => $device_token);	
																							
								//}
								//else return array('status' => 'notification added - push notifications disbled', 'sucsess' => 'true', 'message' => $message, 'users' => $notification_user, 'payload' => $payload);	
											
							}	
							
						}
						
					}
					
				}
				else {
					$add_notification = mysql_query("UPDATE `notifications` SET `notification_timestamp` = CURRENT_TIMESTAMP, `notification_status` = 'pending' WHERE `notification_key` LIKE '$existing_key';");
					return $output[] = array('status' => 'notification updated', 'sucsess' => 'true', 'message' => $message, 'users' => $notification_user);	
										
				}
				
			}
			
		}
		
	}	
	
}

?>
