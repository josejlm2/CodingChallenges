<?php
$lines = file($argv[1], FILE_SKIP_EMPTY_LINES | FILE_IGNORE_NEW_LINES);
foreach ($lines as $line) {

    $strArray = explode(",", $line); //convert string into array without commas
    $ansArray = array_unique($strArray, SORT_NUMERIC); //delete duplicates
    print implode(",", $ansArray)."\n"; //convert array into string and output answer
	
}
?>