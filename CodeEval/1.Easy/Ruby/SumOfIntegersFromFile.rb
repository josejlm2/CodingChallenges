$answer = 0
File.open(ARGV[0]).each_line do |line|
    $answer += line.to_i
end

puts $answer