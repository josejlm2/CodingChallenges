def mod(line)
	
	num = []
	line.split(",").each{
		|x|
		puts x
		num.push(x.to_i)
	}
	
	num1 = num[0]
	num2 = num[1]

	
	
	puts num.inspect

end




$line = "20,6"
#File.open(ARGV[0]).each_line do |line|
    mod($line)
#end