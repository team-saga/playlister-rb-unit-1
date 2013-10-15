require_relative '../environment'
describe "Artist" do
	it "can be initialized" do
		Artist.new.should be_an_instance_of(Artist)
	end

	it "can have a name" do
		artist = Artist.new
		artist.name = "Jay-Z & Kanye West"
		artist.name.should eq("Jay-Z & Kanye West")
	end

	it "can have songs" do
	end

	it "can have genres through songs"

	it "can keep track of artists created"

	it "can sort artists in alphabetical order"

	it "can count how many songs an artist has"

	it "can return the return the genre for an artist's songs"

	it "can reset the artists created"





end