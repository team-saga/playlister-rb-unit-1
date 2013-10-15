require_relative '../../environment.rb'

class Artist
  attr_accessor :name, :songs, :genres

  def initialize
    @songs = []
    @genres = []
  end

  def songs=(song)
    @songs << song
  end

  def genres=(genre)
    @genres << genre
  end

  def songs
    @songs.flatten
  end

end

# binding.pry