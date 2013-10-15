class LibraryParser

  def make_objects
    artist = Artist.new.tap{|x| x.name = @parsed[0]}
    genre = Genre.new.tap{|x| x.name = @parsed[2]; x.artists = artist}
    song = Song.new.tap{|x| x.name = @parsed[1]; x.artist = artist; x.genre = genre}

    artist.songs = song
    artist.genres = genre
    genre.songs = song
  end

  def get_and_split_array
    Dir.foreach("data") do |item|
       if item != "." && item != ".."
        @parsed = item.gsub!("[","- ").gsub!("]"," - ").split(" - ")
        make_objects
      end
    end
  end


end

# x = LibraryParser.new
# binding.pry