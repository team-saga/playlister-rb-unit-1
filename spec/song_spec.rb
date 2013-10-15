describe "Song" do
	let(:song) {Song.new}
  it "can initialize a song" do
    song.should be_an_instance_of(Song)
  end

  it "can have a name" do
    song.name = "1 + 1"
    song.name.should eq("1 + 1")
  end

  it "can have a genre" do
    song.genre = "hip-hop"
    song.genre.should eq("hip-hop")
  end

  it "has an artist" do
    song.artist = "Jay-Z & Kanye West"
    song.artist.should eq("Jay-Z & Kanye West")
  end

end