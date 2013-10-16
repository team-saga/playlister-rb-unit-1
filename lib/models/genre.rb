require_relative 'class_trackable_module.rb'

class Genre
  
  extend ClassTrackable

  

  attr_accessor :name, :songs

  def initialize
    @songs = []
    self.class.all << self
  end

  def artists
    @songs.collect{|s| s.artist}
  end

  def self.find_or_create_by_name(string)
    find_by_name(string) || Genre.new.tap{|g| g.name = string}
  end

  def add_song(val)
    @songs << val
  end

  def url
    name.downcase.gsub(' ','-')
  end

end