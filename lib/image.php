<?

include 'keygen.php';

function resize($target, $newcopy, $w, $h, $ext) {
    list($w_orig, $h_orig) = getimagesize($target);
    $scale_ratio = $w_orig / $h_orig;
    if (($w / $h) > $scale_ratio) $w = $h * $scale_ratio;
	else $h = $w / $scale_ratio;
    
    $img = "";
    $ext = strtolower($ext);
    if ($ext == "gif") $img = imagecreatefromgif($target);
    else if($ext == "png") $img = imagecreatefrompng($target);
    else $img = imagecreatefromjpeg($target);

    $tci = imagecreatetruecolor($w, $h);
	
    imagecopyresampled($tci, $img, 0, 0, 0, 0, $w, $h, $w_orig, $h_orig);
    imagejpeg($tci, $newcopy, 50);
	
}

$passed_file = basename($_FILES['uploadedfile']);
$passed_extension = pathinfo($passed_file, PATHINFO_EXTENSION);

$image_filename = "img_" . generate_key() . ".png";
$image_directory = "../assets/profiles/";
$image_localpath = $image_directory . $image_filename;
$image_fullpath = "http://api.lynkerapp.com/assets/profiles/" . $image_filename;
$image_widthmax = 100;
$image_heightmax = 100;
$image_extension = end(explode(".", $_FILES["uploadedfile"]["name"])); 

if (empty($_FILES["uploadedfile"])) {
	$json_status = 'File required';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}

else if (!is_dir($image_directory)) {
	$json_status = 'Directory does not exist (' . $image_directory . ')';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
else if (!is_writable($image_directory)) {
	$json_status = 'Directory not writable (' . $image_directory . ')';
	$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
	echo json_encode($json_output);
	exit;
	
}
else {
	if (move_uploaded_file($_FILES['uploadedfile']['tmp_name'], $image_localpath)) {
		resize($image_localpath, $image_fullpath, $image_widthmax, $image_heightmax, $image_extension);
		
	    $json_status = 'Image uploaded';
		$json_output[] = array('status' => $json_status, 'sucsess' => 'true', 'image' => $image_fullpath);
		echo json_encode($json_output);
		exit;
		
	}
	else {
	    $json_status = 'Image not uploaded - unknown error';
		$json_output[] = array('status' => $json_status, 'sucsess' => 'false');
		echo json_encode($json_output);
		exit;
		
	}
	
}

?>