require_relative '../config/environment'

class CLI
  attr_accessor :songs, :genres, :artists

  APPROVED_COMMANDS = [:list, :help, :exit]

  def initialize(songs)
    @songs = songs
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
      puts "Sorry, I don't know what you mean. Please try again."
    end
  end

  def list

    #list all artists and theirs songs and genres:
    # M83 - 8 Songs
    # 1. Midnight City - Folk 
    # 2. Kim & Jesse  - Pop
    # Lady Gaga - 6 Songs
    # 3. Pokerface
    # 4. Some other Lady Gaga Song
    # entering the number plays the song


# Do this later
    #list genres 
    # Folk: 8 Songs, 3 Artists
    #  M83 - Midnight City
    #  Lady Gaga - Poker Face

    #List songs:
    # (1) Songs A-Z
     # >> 
     # 1. First Song
     # 2. Second Song

  end

  def play
    # "play" by showing the song name with "Now playign #{song.name}"
  end

  def command_request
    self.command(gets.downcase.strip)
  end

end

# jukebox = CLI.new(@songs)
# jukebox.call