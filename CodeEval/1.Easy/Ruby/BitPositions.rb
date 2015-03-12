=begin

Given a number n and two integers p1,p2 determine if the bits in position p1 and p2 are the same or not. 
Positions p1 and p2 are 1 based

=end

def equal?(line)
	numbers = line.split(/\W+/)
	$binary = numbers[0].to_i.to_s(2).reverse
	puts $binary
	$Num1 = numbers[1].to_i - 1
	$Num2 = numbers[2].to_i - 1
	
	if($binary[$Num1] == $binary[$Num2])
		puts true
	else
		puts false
	end
	puts $binary[$Num1]
	puts $binary[$Num2]
end

$lines = "125,1,2"
#File.open(ARGV[0]).each_line do |line|
	equal?($lines) # --> false
#end
