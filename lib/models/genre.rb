class Genre
  
  attr_accessor :name, :songs
  @@all = []

  def initialize
    @songs = []
    @@all << self
  end

  def add_song(val)
    @songs << val
    # song.genre = self
  end

  def self.count
   @@all.size
  end

   def self.all
    @@all
  end

  def self.reset_all
     @@all = []
  end

  def artists
    @songs.collect{|s| s.artist}
  end

  def self.find_or_create_by_name(string)
    find_by_name(string) || Genre.new.tap{|g| g.name = string}
  end

  def self.find_by_name(string)
    @@all.detect{|a| a.name == string}
  end

  def url
    name.downcase.gsub(' ','-')
  end

  # def sort_by_songs
  #   @songs.count.sort.reverse
  # end

end