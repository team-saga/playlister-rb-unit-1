require_relative '../environment'
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
		song.genre = "rap"
		artist.songs = song
		artist.songs[0].genre.should eq("rap")
	end

	it "can keep track of artists created"

	it "can sort artists in alphabetical order"

	it "can count how many songs an artist has"

	it "can return the return the genre for an artist's songs"

	it "can reset the artists created"





end