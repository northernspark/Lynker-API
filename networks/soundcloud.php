<?

$soundcloud_parameters = array('client_id' => '8fc3b7eb7c4aa18d3336bb76f8a3e051', 'client_secret' => 'ca16e9d429164c5a63405b0dac9d7221', 'redirect_uri' => 'http://api.lynkerapp.com/networks/soundcloud.php', 'code' => $_GET['code'], 'grant_type' => 'authorization_code');

$soundcloud_url = 'https://api.soundcloud.com/oauth2/token';

$redirect_context = stream_context_create(array('http' => array('method' => 'POST', 'content' => http_build_query($soundcloud_parameters))));
$redirect_response = file_get_contents($soundcloud_url, false, $redirect_context);

$returned_data = json_decode($redirect_response);
$returned_token = $returned_data->access_token;

$user_contents = json_decode(file_get_contents('https://api.soundcloud.com/me?oauth_token=' . $returned_token));
$user_name = $user_contents->permalink;
$user_identifyer = $user_contents->id;
		
$redirect_url = "Location: lynker://SOUNDCLOUD/" . $returned_token . "/" . $user_identifyer . "/" . $user_name;

include 'redirectpage.php';

if (isset($returned_token)) {
	header($redirect_url);
	exit();
	
}

?>
