require_relative '../config/environment.rb'

#Songs
@thriller = Song.new()
@thriller.name = "Thriller"
@thriller.artist = "Michael Jackson"
@thriller.genre = "Pop"

@pokerface = Song.new()
@pokerface.name = "Pokerface"
@pokerface.artist = "Lady Gaga"
@pokerface.genre = "Pop"

@wrecking_ball = Song.new()
@wrecking_ball.name = "Wrecking ball"
@wrecking_ball.artist = "Miley Cyrus"
@wrecking_ball.genre = "Pop"

@gold_digger = Song.new()
@gold_digger.name = "Gold Digger"
@gold_digger.artist = "Kanye West"
@gold_digger.genre = "Hip-hop"

@otis_ft_otis_redding = Song.new()
@otis_ft_otis_redding.name = "Otis (ft. Otis Redding)"
@otis_ft_otis_redding.artist = "Jay-Z & Kanye West"
@otis_ft_otis_redding.genre = "Folk"



# seed_data = [
#   ["Thriller","Michael Jackson","Pop" ], 
#   ["Pokerface","Lady Gaga","Pop" ], 
#   ["Wrecking Ball","Miley Cyrus","Pop" ]
# ]
# seed_data.each do |song_data|
#   instance_variable_set(song_data[0]) 
# end
