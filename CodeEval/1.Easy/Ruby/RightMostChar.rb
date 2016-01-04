def rightmost_char(line)
  a = line.strip.split(',')
  str = a[0].split('')
  ans = -1
  str.each_with_index do |v,i|
    if v === a[1]
      ans = i
    end 
  end 
  
  puts ans
end 

File.open(ARGV[0]).each_line do |line|
    rightmost_char(line)
end