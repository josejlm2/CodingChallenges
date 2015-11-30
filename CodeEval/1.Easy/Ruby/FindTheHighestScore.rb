line = "72 64 150 | 100 18 33 | 13 250 -6"

a = line.strip.split('|')
ans = Hash.new

a.each_with_index do |block, i |
    b = block.split(' ')
   
  if i == 0 
    b.each_with_index do |elem, index|
       ans[index] = elem.to_i
    end 
   
  else
    b.each_with_index do |elem, index|
      if ans[index] < elem.to_i
        ans[index] = elem.to_i
      end        
    end 
  end
  
end

ans.each do |num|
  print num.last
  print " "
end

puts ""