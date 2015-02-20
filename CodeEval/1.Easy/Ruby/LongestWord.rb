def longestWord(sentence)
	@size  = 0
	$answer = ""
	sentence.split.each{
		|x|
		if (x.size > @size)
			@size = x.size
			$answer = x
		end
	}
	return $answer
end


$line = "another line"
#File.open(ARGV[0]).each_line do |line|
	puts longestWord($line)
#end