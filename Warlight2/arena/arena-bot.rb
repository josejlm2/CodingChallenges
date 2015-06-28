#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'world-map.rb'
require_relative 'round.rb'
require_relative 'server-settings.rb'
require_relative 'game-logic.rb'
require_relative 'bot.rb'

class ArenaBot
	
	def initialize()
		@bot1 = Bot.new()
	end 
#Script start.
  
	
		Dir::mkdir("maps") unless File.exists?("maps")
		Dir.chdir("maps")
		#RUN A GAME
		Dir.glob("*.txt").each_with_index do |textfile, index|
    
			#Set Settings
			server_settings = File.open("server_settings.txt", 'w')
			puts "GAME: #{index + 1}"
			
			
			#Set Environment
			File.open(textfile).readlines.each_with_index do |line, index|  
				server_settings.puts line
			end
		
			server_settings.close
		
			File.open("server_settings.txt").readlines.each_with_index do |line, index|  
				puts line
			end
	
  
  
	def run()
	    get_settings()
		@bot1.run()

	end
	
	#Declare Winner
	#server_settings.puts "WINNER: #{index + 1}"
	
	
    end
  
end

