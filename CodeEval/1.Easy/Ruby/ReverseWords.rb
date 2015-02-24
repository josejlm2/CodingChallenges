def reverse_words(sentence)
	list = []
	sentence.split.each{
		|x|
		list.push(x)
	}
	
	list.reverse.each{
		|x|
		print "#{x} "
	}
	
	puts " "
end

$line = "Hello World"
$line1 = "Hello CodeEval"
#File.open(ARGV[0]).each_line do |line|
	reverse_words($line)
	reverse_words($line1)
#end