#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

class ArenaBot
	
	
	##
# This method takes a string, int and string as an argument.
# The method will return the indices that are padded on either side
# of the passed in index by 20 (in our case) but not padded by more
# then the size of the passed in text. The word parameter is used to
# decide the top index as we do not want to include the word in our
# padding calculation. 
#
# = Example
#
#  indices("hello bob how are you?", 5, "bob") 
#      # => [0, 13] since the text length is less than 40
#
#  indices("this is a string of text that is long enough for a good example", 31, "is")
#      # => [11, 53] The extra 2 account for the length of the word 'is'.
#    


#Script start.
  base_text = File.open("output.txt", 'w')
  Dir::mkdir("maps") unless File.exists?("maps")
  Dir.chdir("maps")
  Dir.glob("*.txt").each do |textfile|
	File.open(textfile).readlines.each_with_index do |line, index|  
		if (index == 0)
			base_text.puts "#{textfile}: #{line}"
		end
	end

  end
  base_text.close
end