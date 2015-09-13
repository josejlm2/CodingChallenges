=begin
	Table rows are separated by pipes '|'. All table rows contain scores for each category, so all lines are of an equal length. 
	You need to print the highest score for each category. 
=end


def highest_score(line)
	
	$numbers_list = line.split(/[|]/)
	$answer = Array.new($numbers_list[0].split(/\s/).length){|index| 0} #initialize answer array with 0s
	#print $answer
	#puts ""
	
	#print $numbers_list
	#puts ""
		
	$numbers_list.each do |category_list|
		t = category_list.split(/\s/)
		t.delete_if {|element| element.empty? } #eleminate extra empty element
		
		t.each_with_index do |number, index|			
			number.to_i
						
			if($answer.at(index) < number.to_i)			
				$answer[index] = number.to_i
				#puts number.to_s + "-> " +$answer.at(index).to_s 
				#puts ""				
			end
		end

	end
	
	
	$answer.each do |a|
		print a
		print " "
	end
	
	puts ""
	
end

$line1 = "72 64 150 | 100 18 33 | 13 250 -6"
$line2 = "10 25 -30 44 | 5 16 70 8 | 13 1 31 12"
$line3 = "100 6 300 20 10 | 5 200 6 9 500 | 1 10 3 400 143"
$line4 = "64 915 100 -762 693 633 380 -681 -971 9 502 -404 -998 -494 989 168 722 232 905 41 | 514 632 -778 -405 864 -38 179 -724 -62 -430 6 36 -326 -499 957 702 -998 -18 462 937 | 887 823 768 -960 966 -535 624 291 -515 156 542 818 989 821 881 19 766 -328 271 432 | 527 381 756 -797 879 -208 843 -520 99 -472 746 526 -40 532 850 187 97 -177 -880 647 | -842 13 -769 -967 328 -129 -446 -767 992 -691 148 -108 160 -129 189 950 319 -571 -3 -691 | 996 105 517 856 -808 470 -350 782 225 -89 -301 -822 -597 -180 -87 -176 -466 -570 965 -968 | 421 826 881 937 767 -396 -481 837 -89 -383 848 189 -109 941 -815 883 -493 -277 178 -89 | -563 876 773 941 -448 -288 825 -498 -358 602 717 -693 105 988 -312 718 569 -846 558 320 | -760 333 18 308 262 905 623 -446 343 384 -176 74 -126 741 687 -288 108 398 21 -329 | 745 630 -223 -728 -735 -885 590 -800 956 -657 -905 325 -702 417 857 69 -202 -271 180 318"
$line5 = "1 2 3 4 | 5 6 7 8 | 9 10 11 12 | 100 200 300 400"

#File.open(ARGV[0]).each_line do |line|
	highest_score($line1) # --> 100 250 150
	highest_score($line2) # --> 13 25 70 44
	highest_score($line3) # --> 100 200 300 400 500
	highest_score($line4) # --> 100 200 300 400 500
	highest_score($line5) # --> 100 200 300 400 500
	
	
#end
