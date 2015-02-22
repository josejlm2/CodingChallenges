def valid?(line)
	if (line =~ /(^[\w|"])(\w|[.+])*@([\w|.])*(.com|.net)/i  )
		#puts "TRUE: #{line}"
		puts true
	else	
		#puts "FALSE: #{line}"
		puts false
	end
end

$line = "foo@bar.com"
#File.open(ARGV[0]).each_line do |line|
	valid?($line)
	valid?("1@d.net") 
	valid?("admin#codeeval.com")
	valid?("good123@bad.com")
	
#end