<?

//include 'auth.php';
//include 'slack.php';
//include 'email.php';

$active_query = mysql_query("SELECT * FROM `users` WHERE DATE(`timestamp`) = CURDATE()");
$active_count = mysql_num_rows($active_query);

$invitations_query = mysql_query("");
$invitations_count = mysql_num_rows($invitations_query);

$company_query = mysql_query("");
$company_count = mysql_num_rows($company_query);

$admin_query = mysql_query("");

?>