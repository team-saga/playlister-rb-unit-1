require_relative './spec_helper'

describe "Artist" do

	let(:artist) {Artist.new}
	let(:song) {Song.new}

	it "can be initialized" do
		artist.should be_an_instance_of(Artist)
	end

	it "can have a name" do
		artist.name = "Jay-Z & Kanye West"
		artist.name.should eq("Jay-Z & Kanye West")
	end

	it "can have songs" do
		artist.tap {|a| a.songs = Song.new; a.songs = Song.new }
	end

	it "can have genres through songs" do
		song.genre = "hip-hop"
		artist.songs = song
		artist.songs[0].genre.should eq("hip-hop")
	end

	it "can keep track of artists created" do
		Artist.reset_artists
		#create a bunch of new artists
		5.times do
			Artist.new
		end

		Artist.all.length.should eq(5)
	end

	it "can count how many songs an artist has" do
		artist.songs = [song,Song.new,Song.new,Song.new]
		artist.songs.count.should eq(4)
	end

	it "can reset the artists created" do
    Artist.reset_artists
    Artist.count.should eq(0)
	end

end