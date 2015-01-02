<!DOCTYPE HTML>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">  
<title>PHP Challenges</title>  
</head>  
<body>  
	<ol>
		<li> <?php echo "Today is ".date('D d, M Y'); ?>   </li>
		<li> <?php echo "PHP Version: ".phpversion ( ) ?>	</li>
		<li> <?php echo "Tomorrow I 'll learn PHP global variables. <br/>
						This is a bad command : del c:\*.*" ?>	
		</li>				
		<li> <?php  
				$date = strtotime("August 2, 2014 2:00 PM");
				$remaining = $date - time();
				$days_remaining = floor($remaining / 86400);
				$hours_remaining = floor(($remaining % 86400) / 3600);
				echo "There are $days_remaining days and $hours_remaining hours left until my birthday";
			?>  
		</li>
		<li>
			<form method='POST'>
				<h3>Input your name</h3>
				<input type="text" name="Name"/>
				<input type="submit" value="Submit Name"/>				
			</form>
			<?php 
				$name = $_POST['Name'];
				echo "Hi, ".$name."!";
			?>
			
		</li>
		
		<li>
			
		</li>
		
		
	</ol>

</body>  
</html>