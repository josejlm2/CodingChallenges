def stepwise_words(sentence)
	
	#get the longest word
	longestWord = ""
	sentence.split.each{
		|x|
		if (x.length > longestWord.length)
			longestWord = x
		end
	}
	
	#print out in the correct format
	longestWord.split("").each_with_index{
		|x, i|
		star = "*" * i
		print "#{star}#{x} "
	}
	puts "\n"
end

$line = "cat dog hello"
$line1 = "stop football play"
$line2 = "music is my life"
#File.open(ARGV[0]).each_line do |line|
	stepwise_words($line)
	stepwise_words($line1)
	stepwise_words($line2)
#end