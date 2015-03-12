def validate(line)
	#remove spaces and reverse the order
	line = line.gsub(/[" "]/,"").reverse
	
	if (line.size < 20 || line.size > 11  )
		$DOUBLE  = false;		
		$sum = 0
		line.split("").each{
			|x|
			if($DOUBLE == true)
				#puts "#{ x.to_i * 2} -> #{$DOUBLE}"
				$DOUBLE = false
				#split and add double digit numbers 
				if(x.to_i * 2 > 9)
				(x.to_i * 2).to_s.split("").each{
					|y|
					#print " --> Split: #{y} \n"
					$sum += y.to_i
					}
				else
					$sum += x.to_i * 2
				end
			else
				#puts "#{ x} -> #{$DOUBLE}"
				$DOUBLE = true
				if(x.to_i > 9)
				x.to_s.split("").each{
					|y|
					$sum += y.to_i
					}
				else
					$sum += x.to_i
				end
			end
			
		}
		
		if ($sum % 10 == 0)
			puts 1
		else
			puts 0
		end
	
	else
		puts 0
	end
	#puts x

end


$line = "6011 5940 0319 9511"
$line1 = "5537 0213 6797 6815"
$line2 = "5574 8363 8022 9735"
$line3 = "3044 8507 9391 30"
$line4 = "6370 1675 9034 6211 774"
$line5 = "1556 9144 6285 339"
$line6 = "6363 1811 2857 7650"

#File.open(ARGV[0]).each_line do |line|
	validate($line)
	validate($line1)
	validate($line2)
	validate($line3)
	validate($line4)
	validate($line5)
	validate($line6)
	
#end