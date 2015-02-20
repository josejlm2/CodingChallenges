#determine whether a number is a prime number
def	prime?(num)
	if num == 1
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

$number = 1
$counter = 1
$answer = 0

#get the first 1000 prime numbers adding them as you go
while ($counter <= 1000)
	if (prime?($number)) 
		$answer += $number
		$counter += 1
	end
	$number = $number + 1
end

puts $answer