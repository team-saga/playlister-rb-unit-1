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
    @genres << genre
  end

  def songs
    @songs.flatten
  end

  def self.reset_artists
    @@artists = []
  end

  def self.all
    @@artists
  end

  def self.sort
    @@artists.sort_by do |artist|
      artist.name
    end
    # names = []
    # self.all.each do |artist|
    #   names << artist.name
    # end
    # names.sort
  end

  def self.count
    @@artists.length
  end


end

# binding.pry