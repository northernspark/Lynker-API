<?

$angel_parameters = array('grant_type' => 'authorization_code', 'client_id' => '', 'client_secret' => '', 'code' => $_GET['code']);

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
