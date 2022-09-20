


=begin
puts test_hash.flat_map {|k,v| v.product([k])}.group_by(&:first).transform_values {|v| v.map(&:last) }

new_hash = test_hash.inject({}) do |result, (key, values)|
    values.each do |value|
      result[value] ||= []
      result[value].push(key)
    end
    result[:default] = [key] if values.empty?
  
    result
end
  
puts new_hash
=end

test_hash = { 1 => [], 2 => ['A','B'], 3 => ['C'], 4 => ['B','C'], 5 => ['D'] }

def convert_hash(hash)
    hash.each_with_object(Hash.new([])) do |(key, values), hash|
    values.each { |value| hash[value.downcase.to_sym] += [key] }
    hash[:default] += [key] if values.empty?
    end
end

puts convert_hash(test_hash)

# => {:default=>[1], :a=>[2], :b=>[2, 4], :c=>[3, 4], :d=>[5]}
