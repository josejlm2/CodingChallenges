#Variables need by the program
$container = []

#-----------------
answers_file = File.open("answers.txt", "w")				#Where answers will be placed
#-----------------

#open file one line at a time
File.open("B-large-practice.txt").readlines.each_with_index do |line, index|  
	
	if (index%2 == 0 && index != 0)  #skip the first line and odd numbers since they give unnecessary info
		pancakes = Hash.new(0)
		pancakes_eat_only = Hash.new(0)
		print "Case ##{index/2}: "
		answers_file.print "Case ##{index/2}: "
			
		#pancakes = line.chomp.split(" ")
		
		line.chomp.split(" ").each_with_index do |pancakes_total,diner| #get the number of diners and pancakes
			pancakes[diner] = pancakes_total.to_i
			pancakes_eat_only[diner] = pancakes_total.to_i
		end
		
		
		
		
		minutes = 0
		minutes_eat_only = 0
		loop do 
			special_minute = false
					
			#asses situation to make plan
			target = 0
			target_value = 0
			second_biggest = 0
			pancakes.each_pair do |key, value|
				if (value > 5 && target_value < value) #split the biggest one
					special_minute = true
					target = key	
					second_biggest = target_value
					target_value = value
					
					
				end
				
				if(value == 4 && second_biggest < 3)
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
				
				#eat			
				minutes += 1
				pancakes.each_pair do |key, item|
					pancakes[key] = item - 1
				end
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
		
		#Check whether just eating without special minutes is better
		loop do 
			#eat			
			minutes_eat_only += 1
			pancakes_eat_only.each_pair do |key, item|
				pancakes_eat_only[key] = item - 1
			end
			
			#remove empty diners
			pancakes_eat_only.delete_if {|key, value| value == 0 }
			
		 break if (pancakes_eat_only.empty?)
		end 
		
		
		
		if (minutes <= minutes_eat_only)
			print minutes
			answers_file.print minutes
		else 
			print minutes_eat_only
			answers_file.print minutes_eat_only
		end
		
		
		puts ""
		answers_file.puts ""
	
	end
	
	
	
   
end
answers_file.close 											#close answers file 