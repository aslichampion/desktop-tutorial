=begin

print "Hi, pick a number "
var_1 = gets.chomp

print "Okay, now a second "
var_2 = gets.chomp

if var_1 < var_2
  puts "Higher!"
  elsif var_1 = var_2
  puts "Hmm"
  else
  puts "Lower!"
  end
=end

  def by_three?(x) 
    return x % 3 == 0
  end

  puts by_three?(7)

  def power_of_2(num)
    unless num.is_i
    puts "Sorry! Positive Integer only please."
    else
    num > 0 && (num & (num - 1)) == 0
    end
  end


  
  
  
  
  
  
  
  
  
  
  def my_method(thing)
    thing.do_some_stuff
  end

  puts my_method(actual_thing)