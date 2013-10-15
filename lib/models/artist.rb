class Artist
  attr_accessor :name, :songs, :genres

  def initialize
    @songs = []
    @genres = []
  end

  def songs=(song)
    self.songs << song
  end

  def genres=(genre)
    self.genres << genre
  end

  def songs
    self.songs.flatten
  end

end