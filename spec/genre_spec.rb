require_relative '../environment'

describe "Genre" do
	it "can initialize a genre" do
		Genre.new.should be_an_instance_of(Genre)
	end

	it "has a name" do
		genre = Genre.new
		genre.name = "hip-hop"
		genre.name.should eq("hip-hop")
	end

	it "has many songs" do
		genre = Genre.new.tap{|genre| genre.name = "hip-hop"}
		3.times do
			genre.songs = Song.new
		end
		genre.songs.length.should eq(3)
	end

	it "has many artists" do
		genre = Genre.new
		genre.name = "hip-hop"
		2.times do
			genre.artists = Artist.new
		end
		genre.artists.length.should eq(2)
	end

	it "keeps unique artists" do
		genre = Genre.new
		genre.artists = ["Adele", "Adele", "Kanye"]
		genre.artists.should eq(["Adele", "Kanye"])
	end

	it "keeps count genres" do
		Genre.reset_genres
		3.times do
			genre = Genre.new
		end
		Genre.count.should eq(3)
	end

	it "can reset all genres created" do
		Genre.reset_genres
		Genre.count.should eq(0)
	end

	it "can count all the songs that belong to a genre" do
		genre = Genre.new
		genre.songs = [Song.new, Song.new, Song.new]
		genre.songs.length.should eq(3)
	end

	it "can count all the artists that belong to a genre" do
		genre = Genre.new
		genre.artists = [Artist.new, Artist.new, Artist.new]
		genre.artists.length.should eq(3)
	end

	it "only knows about its own artists" do
  	genre = Genre.new.tap { |genre| genre.name = "rap" }
  	no_genre_artist = Artist.new
  	genre_artist = Artist.new
  	genre_artist.add_song(Song.new.tap { |song| song.genre = genre })
  	genre.artists.count.should eq(1)
	end
end