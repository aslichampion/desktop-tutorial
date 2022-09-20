
# while loop implementation

def fizzBuzz1(num)
    
    n = 1
    while n <= num
        puts "FizzBuzz" if (n % 3 == 0) && (n % 5 == 0)
        puts "Fizz" if n % 3 == 0
        puts "Buzz" if n % 5 == 0
        puts n if (n % 3 != 0) && (n % 5 != 0)
        n += 1
    end

end


# for loop implementation with string concatenation

def fizzBuzz2(x)

    for n in 1..x
        output = ""
        output += "Fizz" if n % 3 == 0
        output += "Buzz" if n % 5 == 0
        output += n.to_s if output == ""
        puts output
    end

end

# .upto iterating over |i| with index numbers. More rubyist, 
# but still a string concatenatation implementation and doesnt 
# print numbers amongst the words

def fizzBuzz3(n)

    1.upto n do |i|
        string = ""
        string += "Fizz" if i % 3 == 0
        string += "Buzz" if i % 5 == 0
        puts "#{i} = #{string}"
    end

end

# ternerary operator approach utilising  % x && % y therefore % x * y
# single line split for readability

def fizzBuzz4(n)

    puts (1..n).map { |i| 
        (i % 15).zero? ? "FizzBuzz" : 
        (i % 3).zero? ? "Fizz" : 
        (i % 5).zero? ? "Buzz" : 
        i  
    }

end

# case approach with modulo tests set to variables prior, and 3 separate 
# strings rather than concatenation 


def fizzBuzz5(num)

    (1..num).each do |num|
        byThree = (num % 3 == 0)
        byFive = (num % 5 == 0)
        case
            when byThree && byFive then puts "FizzBuzz"
            when byThree then puts "Fizz"
            when byFive then puts "Buzz"
            else puts "#{num}"
        end
    end

end


# call below

#fizzBuzz1(100) 
#fizzBuzz2(100) 
#fizzBuzz3(100) 
#fizzBuzz4(100) 
#fizzBuzz5(100)

# benchmark below

require 'benchmark'

puts Benchmark.measure {
  1.times do
    fizzBuzz1(1000000)
  end
}


#fizzBuzz1 benchmark ##100,000: 0.249571   0.154567   0.404138 (  1.537542) ## 1,000,000: 2.488247   1.514897   4.003144 ( 15.762550)
#fizzBuzz2 benchmark ##100,000: 0.229368   0.136130   0.365498 (  1.410471) ## 1,000,000: 2.288977   1.383180   3.672157 ( 14.534670)
#fizzBuzz3 benchmark ##100,000: 0.247554   0.137719   0.385273 (  1.691751) ## 1,000,000: 2.460262   1.352137   3.812399 ( 16.050474)
#fizzBuzz4 benchmark ##100,000: 0.220345   0.134202   0.354547 (  1.237396) ## 1,000,000: 2.188907   1.340715   3.529622 ( 13.286709)
#fizzBuzz5 benchmark ##100,000: 0.213810   0.133224   0.347034 (  1.329092) ## 1,000,000: 2.145584   1.345676   3.491260 ( 12.803101)