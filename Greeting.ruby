# Changed deafult program to use UK counties rather than US states which required titleization, this is an 'on rails' feature so needed to use split

print "Hello, what is your first name?"
first_name = gets.chomp.capitalize
#first_name.capitalize!

print "Last name?"
last_name = gets.chomp.capitalize
#last_name.capitalize!

print "What city are you from?"
city = gets.chomp.capitalize
#city.capitalize!

print "Which county is that in?"
state = gets.chomp.split(/ |\_/).map(&:capitalize).join(" ")

#.split(/ |\_/).map(&:capitalize).join(" ")
# research how ^ deals with joined words and how the bracketed modifiers for .split work

#.split.map(&:capitalize).join(" ")

print "Great, so you are #{first_name} #{last_name} from #{city}, #{state}, nice to meet you!"