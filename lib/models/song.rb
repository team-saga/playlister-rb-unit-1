require_relative 'class_trackable_module.rb'

class Song

  extend ClassTrackable



  attr_accessor :name, :artist, :genre

  def initialize
    self.class.all << self

  end

  def genre=(genre)
    @genre = genre 
    genre.add_song(self) 
  end

   def add_song(val)
    @songs << val
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self) 
  end

  def url
    self.name.downcase.gsub(' ','-')
  end

end