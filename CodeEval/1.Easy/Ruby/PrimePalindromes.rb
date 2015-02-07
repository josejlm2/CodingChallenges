#determine whether a number is a prime number
def	prime?(num)
	$k = 2
	$ans = true
	
	while $k < num do
		if (num % $k == 0) then
			$ans = false
		end	
		$k +=1		
	end
	return $ans
end

#store all the prime palindromes in one array from 0 to 1000
$i = 0
$prime_palindromes = []
while $i < 1000  do
	if ($i.to_s == $i.to_s.reverse && prime?($i))
		$prime_palindromes.push($i)
	end
	$i +=1
end

puts $prime_palindromes.last