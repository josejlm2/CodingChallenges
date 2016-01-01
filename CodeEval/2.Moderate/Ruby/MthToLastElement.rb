def get_m_elem(line)
  a = line.strip.split(" ") #eliminate trailing special characters like \n
  index = a[-1].to_i #get the index
  
  if index <= a.length - 1 #make sure index is valid
    puts a[-1 - index]  #get mth element
  end
end 