class Artist

  attr_accessor :name, :songs, :genres

  @@artists = []

  def initialize
    @@artists << self
    @songs = []
    @genres = []
  end

  def genre_has_artist?(genre)
    genre && !genre.artists.include?(self)
  end

  def add_song(song)
    self.songs << song
    self.genres << song.genre
    if genre_has_artist?(song.genre)
      song.genre.artists << self
    end
  end

  def self.reset_artists
    @@artists.clear
  end

  def self.all
    @@artists
  end

  def self.count
    all.count
  end

  def self.find_or_create_by_name(string)
    all.detect{|a| a.name == string} || Artist.new.tap{|a| a.name = string}
  end

end


# binding.pry