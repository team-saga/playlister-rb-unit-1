require_relative './spec_helper'


describe "LibraryParser" do

 it "should be able to read a single file" do
  # Read in a file from the data source
  data = File.read("data").first

  # Return true if file was read in
  data.should eg(true)

  # test reading files for edge cases

 end


 it "should be able to create an artist"

 it "should be able to create an song"

 it "should be able to create an genre"

 it "should associate the genre in the record with the corresponding artist"

  it "should associate the song in the record with the corresponding artist"

end

