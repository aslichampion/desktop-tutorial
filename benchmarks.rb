
require 'benchmark'

digitize = Array.new(1000) { rand(10) }.join.to_i

puts Benchmark.measure {
  1000.times do
    digitize.to_s.reverse.chars.map { |digit| digit.to_i }
  end
}

puts Benchmark.measure {
  1000.times do
    digitize.digits
  end
}
