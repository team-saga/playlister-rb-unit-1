require_relative './spec_helper'

describe "Song" do

  let(:new_song) {Song.new}

  it "can initialize a song" do
   Song.new.should be_an_instance_of(Song)
  end

  it "can have a name" do
    new_song.name = ("Frank")
    new_song.name.should eq ("Frank")
  end

  it "can have a genre" do
    new_song.genre = Genre.find_or_create_by_name("Rock")
    new_song.genre.name.should eq ("Rock")
  end

  it "has an artist" do
   new_song.artist = Artist.find_or_create_by_name("Some Guy")
   new_song.artist.name.should eq ("Some Guy")
  end
end