def add(num)
	$answer = 0
	#split number into chars. Then loop and add them together
	num.to_s.chars.each{
		|x|
		$answer += x.to_s.to_i
	}
	puts $answer
end

File.open(ARGV[0]).each_line do |line|
	add(line)
end