#Variables need by the program
$container = []

#-----------------
answers_file = File.open("answers.txt", "w")				#Where answers will be placed
#-----------------

#open file one line at a time
File.open("B-small-attempt0.txt").readlines.each_with_index do |line, index|  
	

	
	
	$NO_MORE_PANCAKES = false
	
	if (index%2 == 0 && index != 0)  #skip the first line and odd numbers since they give unnecessary info
		pancakes = Hash.new(0)
		print "Case ##{index/2}: "
		answers_file.print "Case ##{index/2}: "
			
		#pancakes = line.chomp.split(" ")
		
		line.chomp.split(" ").each_with_index do |pancakes_total,diner| #get the number of diners and pancakes
			pancakes[diner] = pancakes_total.to_i
		end
		
		
		
		
		minutes = 0
		loop do 
			special_minute = false
					
			#asses situation to make plan
			target = 0
			target_value = 0
			pancakes.each_pair do |key, value|
				if value > 3
					special_minute = true
					target = key	
					target_value = value
				end
			end
						
			#special minute
			if(special_minute)
				minutes += 1
				
				#split large numbers by 2
				temp = target_value/2
				pancakes[target] = target_value - temp
				pancakes[pancakes.length] = temp
			else
				#eat			
				minutes += 1
				pancakes.each_pair do |key, item|
					pancakes[key] = item - 1
				end
			end
		
			#remove empty diners
			pancakes.delete_if {|key, value| value == 0 }

		  break if (pancakes.empty?)
		end 
		print minutes
		answers_file.print minutes
		puts ""
		answers_file.puts ""
	
	end
	
	
	
   
end
answers_file.close 											#close answers file 