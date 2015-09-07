<?

include '../lib/auth.php';

header('Content-Type: application/json');

$corispndence_query = mysql_query("SELECT * FROM `correspondence` WHERE `correspondence_sender` LIKE '%$user_primary_email%' OR `correspondence_recipient` LIKE '%$user_primary_email%'");
$corispndence_count = mysql_num_rows($corispndence_query);
if ($corispndence_count == 1) {
	while($row = mysql_fetch_array($corispndence_query)) {	
		$corispndence_timestamp = $row['correspondence_timestamp'];
		$corispndence_key = $row['correspondence_key'];
		$corispndence_type = $row['correspondence_type'];
		$corispndence_subject = $row['correspondence_subject'];
		$corispndence_content = $row['correspondence_content'];		
		$corispndence_sender = $row['correspondence_sender'];		
		$corispndence_recipients = explode(",", $row['correspondence_recipient']);		
			
 		$corispndence_output = array('key' => $corispndence_key, 'timestamp' => $corispndence_timestamp, 'type' => $corispndence_type, 'subject' => $corispndence_subject, 'content' => $corispndence_content, 'sender' => $corispndence_sender, 'recipients' => $corispndence_recipients);		
		
	}
	
}
else $corispndence_output = array();

$json_status = 'returned ' . $corispndence_count . ' results';
$json_output[] = array('status' => $json_status, 'sucsess' => 'true', 'results' => $corispndence_output);
echo json_encode($json_output);
exit;
?>