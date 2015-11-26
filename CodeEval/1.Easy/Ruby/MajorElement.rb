def major_element(line)
  array = line.strip.split(',') #dont forget to strip new lines!!!
  uniqArray = array.uniq

  counter = 0
  ans = 0
  
  uniqArray.each do |i|
    if array.count(i) > counter
      counter = array.count(i)
      ans = i
    end
  end 

  if counter > (array.length)/2
    print ans
  else
    print "None"
  end 
  puts ""
end 

File.open(ARGV[0]).each_line do |line|
    major_element(line)
end