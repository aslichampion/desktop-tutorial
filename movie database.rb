# class String definition method allows me to append titleize on to any string
# output of puts movies is for testing purposes only to ensure keys are formatted as symbols

class String
    def titleize
      self.split(" ").map{|word| word.capitalize}.join(" ")
    end
end

movies = {
    avengers_endgame: 5,
    memento: 4
}    

puts "What would you like to do?"
choice = gets.chomp
case choice
    when "add"
      puts "What is the Movie title?"
      title = gets.chomp.downcase.split.join('_').to_sym
        if
        movies[title.to_sym].nil?
        puts "What is the rating?"
        rating = gets.chomp.to_i
        movies[title] = rating
        puts "Great, #{title.to_s.tr('_', ' ').titleize} has been added"
        puts movies
        else
        puts "Hmm, #{title.to_s.tr('_', ' ').titleize} is already in the list"
        end
    when "update"
      puts "Updated"
    when "display"
      puts "Movies!"
    when "delete"
      puts "Deleted!"
    else puts "Error!"
end