class String
    def match?(regex)
      !!self.match(regex)
    end
  end
  
  def username_valid(str)
    loop do
      if (str.rindex(/_/)) == (str.length - 1)
        puts "Invalid. #{@usr_req}"
      elsif str.match?(/\W/)
        puts "Invalid. #{@usr_req}"
      elsif (str.length >= 4) != (str.length <= 25)
        puts "Invalid. #{@usr_req}"
      elsif str.index(/[^a-zA-Z]/) == 0
        puts "Invalid. #{@usr_req}"
      else
        true
      end
    break if self == true
    end
    puts "Thank you. Username accepted."
  end
  
  @usr_req = %{Please enter a username which must:
  
  - be between 4 and 25 characters
  - begin with a letter underscore
  - contain only letters, numbers and underscores
  - not end with an underscore
  
  }
  
  puts @usr_req
  
  test_usr = gets.chomp
  
  puts username_valid(test_usr)