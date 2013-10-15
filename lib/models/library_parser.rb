Dir.foreach('../../data') do |item|
 next if item == "." || item == ".."
   item.gsub!("[","- ").gsub!("]"," - ")
   parsed = item.split(" - ")
   artist << parsed[0]
   song << parsed[1]
   genre << parsed[2]
end