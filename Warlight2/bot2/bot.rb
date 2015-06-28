#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require_relative 'world-map.rb'
require_relative 'round.rb'
require_relative 'server-settings.rb'
require_relative 'game-logic.rb'

STDOUT.sync = true


class Bot

  def initialize()
	@output_file = File.open("output.txt", "w")				#where the output will be placed 
	@output = "Initializing...\n"
    @settings = ServerSettings.new()
    @round = Round.new(@settings)
    @world_map = WorldMap.new(@round, @settings)
    @game_master = GameLogic.new(@world_map, @round)
  end

  def server_says_go(raw_line)
    command = raw_line.shift
    time    = raw_line.shift.to_i

    case command
    when 'place_armies' then
	  @output +=  "Place_armies\n"
      @round.next_round()
      response = @game_master.place_armies(time)
      if response.nil? || response.empty?
        'No moves'
      else
        response.map do |placement|
          format('%s place_armies %i %i',
                 @settings[:your_bot],
                 placement[0],
                 placement[1])
        end.join(', ') + ', '
      end
    when 'attack/transfer'
      response = @game_master.attack_or_transfer(time)
      if response.nil? || response.empty?
        'No moves'
      else
        response.map do |move|
          format('%s attack/transfer %i %i %i',
                 @settings[:your_bot],
                 move[0],
                 move[1],
                 move[2])
        end.join(', ') + ', '
      end
    else
      raise format('Unknown go command %s, please consult the manual', command)
    end
  end

  def pick_starting_region(raw_line)
    @game_master.pick_starting_region(raw_line.shift.to_i, raw_line.map!{|id| id.to_i})
  end

  def run()
	@output +=  "Run Program\n\n"
    while !$stdin.closed?
      begin
        current_line = $stdin.readline()
        next unless current_line
        current_line = current_line.strip().split()
        next if current_line.empty?  # Skip empty lines

        command = current_line.shift
        case command
			when 'setup_map'                  
				then @world_map.setup_line(current_line) 
				@output +=  "Set Map: #{current_line}\n"
				 
			when 'settings'                   
				then @settings.settings_line(current_line)
				@output +=  "Set Settings: #{current_line}\n"
				
			when 'update_map'                 
				then @world_map.update_map(current_line)
				puts @world_map.map_to_string()
				@output +=  "Update Map\n"
				
			when 'opponent_moves'             
				then @round.opponent_moves = current_line
				@output +=  "Opponent Moves\n"
				
			when 'go'                         
				then puts(server_says_go(current_line))
				@output +=  "Go\n"
				
			when 'pick_starting_region'       
				then puts "\nPick a region: #{current_line}\n"
				@output += "Starting in region #{pick_starting_region(current_line)}\n"
				
			when 'Round', 'Output'            then next
			when 'Maximum', 'Response'        then next # This is only for test input
			else
			  raise(format('Unknown top command %s, consult the manual on theaigames.com',
						   command))
        end

      rescue EOFError => eofError
        break
      end
    end
	@output_file.print "#{@output}" 
  end
	
end

if __FILE__ == $0
  Bot.new().run()
end
