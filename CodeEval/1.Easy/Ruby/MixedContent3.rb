#PROBLEM
#--------
#You have a string of words and digits divided by comma. 
#Write a program which separates words with digits. 
#You shouldn't change the order elements. 

def separateWords(line) 
	
	$numbers = []
	$myString = ""
	$FIRST = true
	
	#get the words
	line.split(",").each do |i|
		if (i =~ /[A-Za-z]/)
			if ($FIRST)
				$FIRST = false
				$myString += "#{i}"
			else 
				$myString += ",#{i}"
			end
		else
			$numbers.push(i)
		end
	end
	
	if ($myString.to_s.strip.length == 0)
		puts line	# Just numbers so print line
	else 
		$FIRST = true
		$numbers.each do |i|
			if (i == $numbers.first)
				$myString += "|#{i}"				
			elsif (i == $numbers.last)
				$myString += ",#{i}"
				puts $myString	
			else 
				$myString += ",#{i}"
			end
		end 
	end
	
end


$line = "8,33,21,0,16,50,37,0,melon,7,apricot,peach,pineapple,17,21,24,13,14,43,41"
$line1 = "24,13,14,43,41"
$line2 = "12,5,melon,0,apricot,banana,14,10,banana,46,40,36,orange,banana,50,22,15,banana"
$line3 = "apricot,apricot,38,7,5,25,orange,orange,pineapple,4,42,orange,pear,grapes,mango,9,apricot"
$line4 = "29,12,1,21,36,7,47,34,18,49"
$line5 = "just,words,here,no,numbers"

#File.open(ARGV[0]).each_line do |line|
    separateWords($line)
    separateWords($line1)
    separateWords($line2)
    separateWords($line3)
    separateWords($line4)
    separateWords($line5)
#end