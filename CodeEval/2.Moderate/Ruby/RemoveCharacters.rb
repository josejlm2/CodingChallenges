line1 = "how are you, abc"
line2 = "hello world, def"

def remove_characters(line)
  a = line.strip.split(",")  
  puts a[0].delete a[1], "^ "
end 


remove_characters(line1) #how re you
remove_characters(line2) #hllo worl