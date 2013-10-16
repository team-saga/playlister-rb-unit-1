class Song

  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
   @@all.size
  end

  def self.reset_all
     @@all = []
  end

  def genre=(genre)
    @genre = genre 
    genre.add_song(self) 
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self) 
  end

  def self.find_by_name(string)
    @@all.detect{|a| a.name == string}
  end

  def url
    self.name.downcase.gsub(' ','-')
  end

end