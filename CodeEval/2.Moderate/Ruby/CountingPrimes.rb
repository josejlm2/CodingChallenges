def	prime?(num)
	if (num <= 1)
		$ans = false
	else
		$k = 2
		$ans = true
		while $k < num do
			if (num % $k == 0) then
				$ans = false
			end	
			$k +=1	
		end
	end
	return $ans
end

def countPrimes(sentence)
	words = sentence.split(/\W+/)
	$i = words[0].to_i
	$endNum = words[1].to_i
	$counter = 0
	
	while ($i <= $endNum)
		if (prime?($i))
			$counter += 1
		end
		$i += 1
	end
	puts $counter
end

$line = "0,2"
#File.open(ARGV[0]).each_line do |line|
	countPrimes($line)
#end