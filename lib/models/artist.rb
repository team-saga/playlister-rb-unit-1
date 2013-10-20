class Artist

  attr_accessor :name, :songs
  @@all = []

  def initialize
    @songs = []
    @@all << self
  end

  def add_song(val)
    @songs << val
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

  def genres
    @songs.collect{|s| s.genre}.uniq
  end

  def self.find_or_create_by_name(string)
   find_by_name(string) || Artist.new.tap{|g| g.name = string}
  end

  def self.find_by_name(string)
    @@all.detect{|a| a.name == string}
  end

  def url
    name.downcase.gsub(' ','-')
  end

end