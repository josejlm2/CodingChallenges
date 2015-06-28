#Variables need by the program
$container = []

#-----------------
answers_file = File.open("answers.txt", "w")				#Where answers will be placed
$First = true 												#Used to get rid of first line
$Counter = 0												#Set Counter
#-----------------


File.open("B-small-practice.txt").readlines.each do |line|  #open file one line at a time
	
	if ($First)
		$First = false
	else 
		$Counter += 1
		answers_file.print "Case ##{$Counter}: "			#Counts the lines
		
		#Problem code goes here ---------------------------------------------------
			
		$container = line.split()
		$container = $container.reverse
		$container.each do |item|
			answers_file.print "#{item} "
			print "#{item} "
		end
		answers_file.puts ""
		puts ""
		
		#--------------------------------------------------------------------------
	end
   
end
answers_file.close 											#close answers file 