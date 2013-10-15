class Genre

	attr_accessor :name, :songs, :artists

	@@genres = []

	def initialize
		@songs = []
		@artists = []
		@@genres << self
	end

	def songs=(song)
		@songs << song
	end

	def artists=(artist)
		@artists << artist
	end

	def artists
		@artists.flatten.uniq
	end

	def self.reset_genres
		@@genres = []
	end

	def self.all
		@@genres
	end

	def self.count
		@@genres.length
	end

	def songs
		@songs.flatten
	end

end