require_relative "../config/environment.rb"

class SiteGenerator
	
	x = LibraryParser.new
	x.get_and_split_array

	songs-index = ERB.new(File.open('lib/views/songs-index.erb').read)
	@songs = Song.all

	File.open('_site/songs-index.html', 'w+') do |f|
	  f << songs-index.result(binding)
	end

	song-show = ERB.new(File.open('lib/views/song-show.erb').read)
	# For each song, first, cast the song into instance var

	@songs.each do |song|
	   @song = song
	  File.open("_site/songs/#{song.url}.html", 'w+') do |f|
	    f << song-show.result
	  end
	end

	artists-index = ERB.new(File.open('lib/views/artists-index.erb').read)
	@artists = Artist.all

	File.open('_site/artists-index.html', 'w+') do |f|
	  f << artists-index.result(binding)
	end

	artist-show = ERB.new(File.open('lib/views/artist-show.erb').read)

	@artists.each do |artist|
	   @artist = artist
	  File.open("_site/artists/#{artist.url}.html", 'w+') do |f|
	    f << artist-show.result
	  end
	end	

end
