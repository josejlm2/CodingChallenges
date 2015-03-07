def	 ReadMore(line)
	#puts line.size
	if (line.size > 55)
		#line = line.to_c
		for i in 0..39
			print line[i]
		end
		print "... <Read More> \n"
		#puts ""
	else 
		puts line
	end
end


$line = "Amy Lawrence was proud and glad, and she tried to make Tom see it in her face - but he wouldn't look."
$line1 = "Tom was tugging at a button-hole and looking sheepish."
$line2 = "Two thousand verses is a great many - very, very great many."
$line3 = "Tom's mouth watered for the apple, but he stuck to his work."

#File.open(ARGV[0]).each_line do |line|
    ReadMore($line)
    ReadMore($line1)
    ReadMore($line2)
    ReadMore($line3)
#end
