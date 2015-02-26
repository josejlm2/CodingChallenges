#SOLUTION 1
=begin 
		Language 	Ruby	
		Date 		Feb 26, 2015
		Score		100	
		Time		82 ms
		Memory		3671198 bytes
		Points 		32.342	

def word_to_digit(sentence)
	sentence.split(";").each{
		|x|
		case x
			when /zero(.*)/ 
				print 0
			when /one(.*)/
				print 1
			when /two(.*)/
				print 2
			when /three(.*)/
				print 3
			when /four(.*)/
				print 4
			when /five(.*)/
				print 5
			when /six(.*)/
				print 6
			when /seven(.*)/
				print 7
			when /eight(.*)/
				print 8
			when /nine(.*)/
				print 9
			else 
				puts "Error: #{x}"
		end
	}
	puts ""
end



$line = "zero;two;five;seven;eight;four"
$line1 = "three;seven;eight;nine;two"
#File.open(ARGV[0]).each_line do |line|
    word_to_digit($line)
    word_to_digit($line1)
#end
=end 



#SOLUTION 2
 def word_to_digit(sentence)
	#sentence = sentence.gsub(/(zero|one|two|three|four|five|six|seven|eight|nine|;)/, "zero" => 0, "one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9)
	puts sentence.gsub(/(zero|one|two|three|four|five|six|seven|eight|nine|;)/, "zero" => 0, "one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9)
end

$line = "zero;two;five;seven;eight;four"
$line1 = "three;seven;eight;nine;two"
#File.open(ARGV[0]).each_line do |line|
    word_to_digit($line)
    word_to_digit($line1)
#end
