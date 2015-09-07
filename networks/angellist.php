<?

$angel_parameters = array('grant_type' => 'authorization_code', 'client_id' => 'c94731429c53bcc60eb9dc464d7b386e6ed5e310c71b8d4d', 'client_secret' => 'd4312364a7628b4175a843cf9424c2a2adb6e3615aba6ea3', 'code' => $_GET['code']);

$angel_url = 'https://angel.co/api/oauth/token';

$redirect_context = stream_context_create(array('http' => array('method' => 'POST', 'content' => http_build_query($angel_parameters))));
$redirect_response = file_get_contents($angel_url, false, $redirect_context);

$returned_data = json_decode($redirect_response);
$returned_token = $returned_data->access_token;

$user_contents = json_decode(file_get_contents('https://api.angel.co/1/me?access_token=' . $returned_token));
$user_name = $user_contents->name;
$user_bio = $user_contents->bio;
$user_key = $user_contents->id;
$user_profile = explode("/", $user_contents->angellist_url);
$user_profile = end(explode('/', $user_contents->angellist_url));

$redirect_url = "Location: lynker://ANGELLIST/" . $returned_token . "/" . $user_key . "/" . $user_name . "/" . $user_profile . "/" . $user_bio;
	
include 'redirectpage.php';

if (isset($returned_token) && !empty($user_contents)) {
	header($redirect_url);
	exit();
	
}

?>
