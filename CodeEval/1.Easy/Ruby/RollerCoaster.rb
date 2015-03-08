def	RollerCoaster(line)
	$UPPERCASE = true
	#split the whole line into words
	line.split().each{
		|x|
		#split each word into characters
		x.split(//).each{
			|y|
			#if a letter, upcase or down case accordingly 
			if(y =~ /[a-zA-Z]/)
				if ($UPPERCASE == true)
					print y.upcase
					$UPPERCASE = false
					
				else
					print y.downcase
					$UPPERCASE = true
				end		
				
			#else print character
			else
				print y
			end
		}
		print(" ")
	}
	puts ""
end


$line = "To be, or not to be: that is the question."
$line1 = "Whether 'tis nobler in the mind to suffer."
$line2 = "The slings and arrows of outrageous fortune."

#File.open(ARGV[0]).each_line do |line|
	RollerCoaster($line)
	RollerCoaster($line1)
	RollerCoaster($line2)
#end
