# Method to calculate if a numebr is a power of 
# 2 which is acheived with bitwise & comparison.
# Utilising this method was chosen as it is quick
# for very large numbers compared to some of the 
# other methods which involve n / 2 until n = 1.

def power_of_2(num)
    ans_is = "Yes! That number is a power of 2"
    ans_is_not = "No, that number is not a power of 2"
    result = num > 0 && (num & (num - 1)) == 0
    if result == true
        puts ans_is
        else 
        puts ans_is_not
    end 
end


# Method to gather an integer from user input.
# This rejects anything that is not a positive 
# integer and is looped to prompt for correct 
# input; 0 is excluded, commas and spaces are 
# removed.

def get_integer
    puts "Please enter a number to check if it is a power of 2: "
    loop do
      @user_num=Integer(gets.delete(', ')) rescue false
        if (@user_num == false) || (@user_num <= 0)
          puts "Positive integers only. Please enter another number: "
        end
      break if (@user_num.is_a? Integer) && (@user_num > 0)
    end
end
  
get_integer
power_of_2(@user_num)