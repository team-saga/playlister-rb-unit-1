require_relative '../../config/environment'

class Artist
  attr_accessor :name, :songs, :genres

  @@artists = []

  def initialize
    @songs = []
    @genres = []
    @@artists << self
    #names =[]
  end

  def songs=(song)
    @songs << song
  end

  def genres=(genre)
    genre.artists << self
    @genres << genre
  end

  def songs
    @songs
  end

  def self.reset_artists
    @@artists = []
  end

  def self.all
    @@artists
  end

  # def self.sort
  #   @@artists.sort_by do |artist|
  #     artist.name
  #   end
  #   # names = []
  #   # self.all.each do |artist|
  #   #   names << artist.name
  #   # end
  #   # names.sort
  # end

  def self.count
    @@artists.length
  end

  def self.find_or_create_by_name(string)
    @@all.detect{|a| a.name == string} || Artist.new.tap{|a| a.name = string}
  end


end

# binding.pry