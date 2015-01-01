<?php
	for($i = 1; $i <= 12; $i++){
        for($k = 1; $k <= 12; $k++){
			$text = ($i*$k);
			if ($k!=1){
				printf("%4.4s", $text);
			}else{
				printf($text);
			}
        }
		print "\n";
    }
?>
