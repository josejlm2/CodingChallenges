<?php
function sortTime($line){
  $a = explode(" ", trim($line));
  arsort($a);

  foreach ($a as $value){  
    print $value." ";  
  } 
  
  print "\n";
}

$lines = file($argv[1], FILE_SKIP_EMPTY_LINES | FILE_IGNORE_NEW_LINES);
foreach ($lines as $line) {
    sortTime(trim($line));
}
?>