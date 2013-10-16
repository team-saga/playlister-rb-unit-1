require_relative "../config/environment.rb"

#generate
x = LibraryParser.new
x.get_and_split_array

index = ERB.new(File.open('lib/views/index.erb').read)
@songs = Song.all
@genres = Genre.all

File.open('_site/index.html', 'w+') do |f|
  f << index.result(binding)
end

show = ERB.new(File.open('lib/views/show.erb').read)
# For each song, first, cast the song into instance var

@songs.each do |song|
   @song = song
  File.open("_site/songs/#{song.url}.html", 'w+') do |f|
    f << show.result
  end
end

# dogs.each do |dog|
#   File.open("_site/dogs/#{dog.url}.html", 'w+') do |f|
#     f << show.result(binding)
#   end
# end