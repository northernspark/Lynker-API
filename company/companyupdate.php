<?

include '../lib/auth.php';
include '../lib/keygen.php';

header('Content-Type: application/json');

$passed_data = json_decode(file_get_contents('php://input'), true);
$passed_profile = $passed_data['profile'];



?>