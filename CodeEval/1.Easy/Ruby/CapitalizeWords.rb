a = line.strip.split(" ")
a.each_with_index do |t,i |
  t.split("").each_with_index do |r,k|
    if k ==0
      t[k] = r.upcase
    end 
  end 
  
  a[i] =  t
end 

puts a.join(" ")