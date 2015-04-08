#PROBLEM
#--------
#You have a string of words and digits divided by comma. 
#Write a program which separates words with digits. 
#You shouldn't change the order elements. 


def separateWords(line) 
	
	$numbers = []
	$words = []
	
	line.split(",").each do |i|
		if (i =~ /[A-Za-z]/)
			$words.push(i)
		else
			$numbers.push(i)
		end
	end
	
	if ($words.empty? == false)
		print $words.at(0)
		$words.delete(0)
		
		$words.each do |i|
			print ",#{i}"
		end
		print "|"
	end
	
	if ($numbers.empty? == false)
		print $numbers.at(0)
		$numbers.delete(0)
		
		$numbers.each do |i|
			print ",#{i}"
		end
		puts ""
	end
end


$line = "8,33,21,0,16,50,37,0,melon,7,apricot,peach,pineapple,17,21,24,13,14,43,41"
$line1 = "24,13,14,43,41"
$line2 = "12,5,melon,0,apricot,banana,14,10,banana,46,40,36,orange,banana,50,22,15,banana"
$line3 = "apricot,apricot,38,7,5,25,orange,orange,pineapple,4,42,orange,pear,grapes,mango,9"
$line4 = "29,12,1,21,36,7,47,34,18,49"

#File.open(ARGV[0]).each_line do |line|
    separateWords($line)
    separateWords($line1)
    separateWords($line2)
    separateWords($line3)
    separateWords($line4)
#end