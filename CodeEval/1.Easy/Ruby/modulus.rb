def mod(line)
	
	num = []
	line.split(",").each{
		|x|
		#puts x
		num.push(x.to_i)
	}
	
	num1 = num[0]
	num2 = num[1]

	result = num1 / num2
	
	answer = num1 - (result.floor * num2)
	
	puts answer
	#puts num.inspect

end




$line = "20,6"
$line2 = "2,3"

#File.open(ARGV[0]).each_line do |line|
    mod($line)
    mod($line2)
#end