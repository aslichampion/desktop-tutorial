=begin 
class String definition method allows me to append titleize 
on to any string.

used %{ for options text to preserve formatting and make code more 
readable than \n on single line, also set options as a variable to 
call it in multiple user messages.
=end

class String
    def titleize
      self.split(" ").map{|word| word.capitalize}.join(" ")
    end
end

movies = {
    avengers_endgame: 5,
    memento: 4,
    ghostbusters: 3
}    

options = %{
    
    Add     - enters a new film into the database.
    Update  - upates the rating of a film already in the database.
    Display - shows all films currently in the database.
    Delete  - removes a single film from the database.

}

puts "What would you like to do? #{options}"
choice = gets.chomp
case choice
    when "add"
      puts "What is the Movie title?"
      title = gets.chomp.downcase.split.join('_').to_sym
        if
        movies[title].nil?
        puts "What is the rating out of 5?"
        rating = gets.chomp.to_i
        movies[title] = rating
        puts "Great, #{title.to_s.tr('_', ' ').titleize} has been added!"
        else
        puts "Hmm, #{title.to_s.tr('_', ' ').titleize} is already in the list."
        end
    when "update"
        puts "What is the Movie title?"
        title = gets.chomp.downcase.split.join('_').to_sym
          if
          movies[title].nil?
          puts "Oh no! That movie isn't in the list."
          else
          puts "What is the new rating out of 5?"
          rating = gets.chomp.to_i
          movies[title] = rating
          puts "Great, #{title.to_s.tr('_', ' ').titleize} has been updated to a new rating of: #{rating}/5."
          end
    when "display"
        movies.each { |t, r|
            puts "#{t.to_s.tr('_', ' ').titleize}: #{r}/5"
        }
    when "delete"
        puts "Okay, which film would you like to delete?"
        title = gets.chomp.downcase.split.join('_').to_sym
          if
          movies[title].nil?
          puts "Good news! That movie is already nowhere to be found in the list."
          else
          movies.delete(title)
          puts "Okay that film has been deleted!"
          end
    else puts "Hmm, that isn't something I can do. Accepted commands are: #{options}"
end