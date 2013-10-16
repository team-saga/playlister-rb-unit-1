require_relative 'class_trackable_module.rb'

class Artist

  extend ClassTrackable

  

  attr_accessor :name, :songs

  def initialize
    @songs = []
    self.class.all << self
  end

  def genres
    @songs.collect{|s| s.genre}
  end

  def self.find_or_create_by_name(string)
   find_by_name(string) || Artist.new.tap{|g| g.name = string}
  end

  def add_song(val)
    @songs << val
  end

  def url
    name.downcase.gsub(' ','-')
  end

end