require_relative "../config/environment.rb"

class SiteGenerator
	
	x = LibraryParser.new
	x.get_and_split_array

	index = ERB.new(File.open('lib/views/index.erb').read)
	@songs = Song.all

	File.open('_site/index.html', 'w+') do |f|
	  f << index.result(binding)
	end

	song_show = ERB.new(File.open('lib/views/song_show.erb').read)
	# For each song, first, cast the song into instance var

	@songs.each do |song|
	   @song = song
	  File.open("_site/songs/#{song.url}.html", 'w+') do |f|
	    f << song_show.result(binding)
	  end
	end

	artists_index = ERB.new(File.open('lib/views/artists_index.erb').read)
	@artists = Artist.all

	File.open('_site/artists_index.html', 'w+') do |f|
	  f << artists_index.result(binding)
	end

	artist_show = ERB.new(File.open('lib/views/artist_show.erb').read)

	@artists.each do |artist|
	   @artist = artist
	  File.open("_site/artists/#{artist.url}.html", 'w+') do |f|
	    f << artist_show.result(binding)
	  end
	end	

end
