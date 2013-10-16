require_relative '../../config/environment.rb'
class LibraryParser

  def make_objects(artist_name, song_name, genre_name)
    song = Song.new.tap{|s| s.name = song_name}

    song.artist = Artist.find_or_create_by_name(artist_name)
    song.genre = Genre.find_or_create_by_name(genre_name)
  end

  def get_and_split_array
    Dir.foreach("data") do |item|
       if item != "." && item != ".."
        parsed = item.gsub("[","- ").gsub("]"," - ").split(" - ")
        make_objects(parsed[0], parsed[1], parsed[2])
      end
    end
  end

end

# x = LibraryParser.new

# x.get_and_split_array
# binding.pry