<?

$linkedin_parameters = array('grant_type' => 'authorization_code', 'client_id' => '77lvvxpll7j8xi', 'client_secret' => '2Y3sUw2EJt5fDzcZ', 'redirect_uri' => 'http://api.lynkerapp.com/networks/linkedin.php', 'code' => $_GET['code'], 'scope' => 'r_fullprofile,w_messages,r_contactinfo,r_network', 'state' => 'r22eIpoS45Sng4K3o3iuU88tSzpLI0jzxPz');

$linkedin_url = 'https://www.linkedin.com/uas/oauth2/authorization';

$redirect_context = stream_context_create(array('http' => array('method' => 'POST', 'content' => http_build_query($linkedin_parameters))));
$redirect_response = file_get_contents($linkedin_url, false, $redirect_context);

$returned_data = json_decode($redirect_response);
print_r($returned_data);

$returned_token = $returned_data->access_token;
$returned_username = $returned_data->user->username;
$returned_identifyer = $returned_data->user->id;
$returned_profile = $returned_data->user->profile_picture;

$redirect_url = "Location: lynker://LINKEDIN/" . $returned_token . "/" . $returned_identifyer . "/" . $returned_username;
	
/*
include 'redirectpage.php';

if (isset($returned_token)) {
	header($redirect_url);
	exit();
	
}
*/

?>
