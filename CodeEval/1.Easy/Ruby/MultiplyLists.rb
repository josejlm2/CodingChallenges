#Loops only once and uses a boolean to test the lists boundaries
def	multiply(num)
	list = []
	splitTest = false
	listCount = 0
	num.split(" ").each{
		|x|
		if (splitTest == false)
			if(x != "|")
				x = x.to_i
				list.push(x)
			else
				splitTest = true
			end
		else
			print list[listCount] * x.to_i, " "
			listCount += 1
		end
	}
	puts " "
end

$line = "13 4 15 1 15 5 | 1 4 15 14 8 2"
$line1 = "53 76 40 39 82 10 53 41 | 80 62 60 24 88 71 16 21"

#File.open(ARGV[0]).each_line do |line|
	multiply($line)
	multiply($line1)
#end