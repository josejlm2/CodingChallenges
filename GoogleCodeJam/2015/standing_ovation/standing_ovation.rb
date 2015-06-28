#Variables need by the program
$container = []

#-----------------
answers_file = File.open("answers.txt", "w")				#Where answers will be placed
#-----------------

#open file one line at a time
File.open("A-large.txt").readlines.each_with_index do |line, index|  
	
	if (index != 0)
		answers_file.print "Case ##{index}: "				#Counts the lines
		#print "Case ##{index}: "							#Counts the lines
		#puts ""
		
		#Problem code goes here ---------------------------------------------------
		
		$people = line.chomp.split(" ")
		$people = $people.at(1)
		#puts $people.inspect
		
		people_needed = 0
		total = 0
		friends = 0
		$people.split("").each_with_index do |count, shyness_level|
			#puts "Shy Level #{shyness_level}: #{count}"  #0-1  1-1 2-1 
			
			total += count.to_i	
			if (shyness_level >= total) #there has to be at least one more person than the shyness_level
				friends += 1  #keeps track of number of friends
				total  += 1   #evens out the number of people needed and the total so we can proceed to the next level
			end
			
			
			
			
		end
		puts "FRIENDS: #{friends} TOTAL #{total}  \n\n"
		answers_file.print friends
		#--------------------------------------------------------------------------
		puts ""
		answers_file.puts ""
	end
   
end
#answers_file.close 											#close answers file 