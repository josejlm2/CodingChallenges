def separateWords(line) 
    $numbers = []
	$FIRST = true
	$CONTAINS_WORDS = false
	$myString = ""
	line.split(",").each do |i|
	    print i
		if (i =~ /[A-Za-z0-9]/)
			if (i =~ /[A-Za-z]/)
				$CONTAINS_WORDS = true
				if ($FIRST)
					$FIRST = false
					$myString += "#{i}"
				else 
					$myString += ",#{i}"
				end
			else
				$numbers.push(i)
			end
		else 
			print line 
		end	
	end
	
	if ($numbers.empty? == false)
		$FIRST = true
		
		$numbers.each do |i|
			
			if ($FIRST)
				$FIRST = false
				if ($CONTAINS_WORDS)
					$myString += "|#{i}"
				else
					$myString += "#{i}"
				end
				
			else 
				$myString += ",#{i}"
			end
		end 
		print "#{$myString}\n"
	end
	
end

File.open(ARGV[0]).each_line do |line|
    separateWords(line)
end