<?

function post_slack($message, $channel, $icon, $attachement) { 
	if (empty($icon)) $icon = "http://api.lynkerapp.com/assets/appicon.png";
	$payload = "payload=" . json_encode(array("channel" =>  "#{$channel}", "text" =>  $message, "icon_url" => "$icon"));
		
	$ch = curl_init();
	curl_setopt($ch, CURLOPT_URL, "https://hooks.slack.com/services/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");
	curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
	curl_setopt($ch, CURLOPT_POSTFIELDS, $payload);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
	$result = curl_exec($ch);
	
	curl_close($ch);
	
}

?>
