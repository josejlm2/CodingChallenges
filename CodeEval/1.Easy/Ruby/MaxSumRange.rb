=begin
	Print out the maximum possible gain over the period. If no gain is possible, print 0.
=end


def max_sum_range(line)
	
	$numbers_list = line.split(/[;]|\s/)
	$answer  = 0
	
	#get the period
	period = $numbers_list[0].to_i
	$numbers_list = $numbers_list.drop(1)
	
	$i = 0
	begin 
		
		$sum = 0
		for k in $i..(period-1)+$i
			$sum += $numbers_list[k].to_i
		end
		
		if $answer < $sum then
			$answer = $sum
		end
		
		#puts $sum
		
		$i = $i + 1
		
	end until $i + period > $numbers_list.length
	
	puts $answer
	#return answer
end

$line1 = "5;7 -3 -10 4 2 8 -2 4 -5 -2"
$line2 = "6;-4 3 -10 5 3 -7 -3 7 -6 3"
$line3 = "3;-7 0 -45 34 -24 7"


#File.open(ARGV[0]).each_line do |line|
	max_sum_range($line1) # --> 16
	max_sum_range($line2) # --> 0
	max_sum_range($line3) # --> 17
	
#end
