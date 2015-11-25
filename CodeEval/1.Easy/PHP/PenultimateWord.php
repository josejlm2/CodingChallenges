<?php
$lines = file($argv[1], FILE_SKIP_EMPTY_LINES | FILE_IGNORE_NEW_LINES);
foreach ($lines as $line) {
    $array = explode(" ", $line);
	print $array[sizeof($array)-2]."\n";	
}
?>