# require_relative '../../environment.rb'

class CLI
	attr_accessor :songs, :genres, :artists

	APPROVED_COMMANDS = [:list, :help, :exit]

	def initialize
		@on = true
	end

	def call
		while self.on?
			self.help
		end
	end

	def on?
		@on
	end

	def help
		puts "Enter list, help, exit or play"
		self.command_request
	end

	def exit
		puts "Goodbye!"
		@on = false
	end

  def command(input)
    if APPROVED_COMMANDS.include?(input.strip.downcase.to_sym)
      self.send(input)
    elsif input.start_with?("play")
    	song_request = 
    	self.play(song_request)
    else
      puts "Invalid command"
    end
  end

  def list
  	#list genres
  	#list songs
  	#list artists
  end

  def play
  end

  def command_request
  	self.command(gets.strip)
  end

end