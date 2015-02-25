def	find_writer(sentence)
	word_list = []
	num_list = []
	splitTest = false
	listCount = 0
	
	#get the elements
	sentence.split("").each{
		|x|
		if (splitTest == false)
			if(x != "|")
				word_list.push(x)
			else
				splitTest = true
			end
		end
	}
	
	#get the positions
	sentence.split(" ").each{
		|x|
		num_list.push(x.to_i)
	}
	
	#delete extra elements captured
	num_list.delete_at(0)
	num_list.delete_at(0)
	
	#print out writer
	while (num_list.empty? == false) do
		for i in 1..word_list.size
			if (num_list[0] == i)
				#get the previous element because the index it's ahead by 1
				print word_list[i-1]
				num_list.delete_at(0)
			end
		end
	end	
	puts ""
end

$line = "osSE5Gu0Vi8WRq93UvkYZCjaOKeNJfTyH6tzDQbxFm4M1ndXIPh27wBA rLclpg| 3 35 27 62 51 27 46 57 26 10 46 63 57 45 15 43 53"
$line1 = "3Kucdq9bfCEgZGF2nwx8UpzQJyHiOm0hoaYP6ST1WM7Nks5XjrR4IltBeDLV vA| 2 26 33 55 34 50 33 61 44 28 46 32 28 30 3 50 34 61 40 7 1 31"
#File.open(ARGV[0]).each_line do |line|
	find_writer($line)
	find_writer($line1)
#end