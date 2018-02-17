<?

$instagram_parameters = array('grant_type' => 'authorization_code', 'client_id' => '', 'client_secret' => '', 'redirect_uri' => 'http://api.lynkerapp.com/networks/instagram.php', 'code' => $_GET['code']);

$instagram_url = 'https://api.instagram.com/oauth/access_token';

$redirect_context = stream_context_create(array('http' => array('method' => 'POST', 'content' => http_build_query($instagram_parameters))));
$redirect_response = file_get_contents($instagram_url, false, $redirect_context);

$returned_data = json_decode($redirect_response);

$returned_token = $returned_data->access_token;
$returned_username = $returned_data->user->username;
$returned_identifyer = $returned_data->user->id;
$returned_profile = $returned_data->user->profile_picture;

$redirect_url = "Location: lynker://INSTAGRAM/" . $returned_token . "/" . $returned_identifyer . "/" . $returned_username;
	
include 'redirectpage.php';

if (isset($returned_token)) {
	header($redirect_url);
	exit();
	
}

?>
