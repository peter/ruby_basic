puts "* Arrays are a resizable sequence of values accessed by index"
a = ["Ruby", 3.14]
a[1] = 99
a << "Rails"
puts "a == #{a}"

puts "\n* For values without spaces, arrays can be created with %w (single quoted) and %W (double quoted)"
b = %w{C Java Ruby}
puts "b = #{b}"
puts "b[1] == #{b[1]}"

puts "\n* Access subarrays with []"
puts "b[2, 1] == #{b[2, 1]}"
puts "b[1..2] == #{b[1..2]}"

puts "\n* Concatenation works like with strings"
puts "a + b == #{a + b}"

puts "\n* There are many useful Array methods"
c = [3, 3, 2, 1]
puts "c = #{c}"
expressions = [
  "c.join(' | ')",
  "c.map { |x| x**2 }.inspect",
  "c.select { |x| x % 2 == 0 }.inspect",
  "c.reject { |x| x < 3 }.inspect",
  "c.inject { |sum, i| sum + i }.inspect",
  "c.include?(2).inspect",
  "c.sort.inspect",
  "c.uniq.inspect",
  "c.uniq.select { |x| x < 3 }.sort.join(' | ')"
]
expressions.each do |expression|
  puts "#{expression} => #{eval(expression)}"
end

puts "\n* Methods that end with exclamation mutate the object (potentially destrucive/dangerous)"
a.reject! { |value| value != 'Ruby' }
puts "a.reject! { |value| value != 'Ruby' } => a == #{a}"

puts "\n* Iteration can be done with each and a code block accepting an argument"
c.each do |value|
  puts value.to_s
end

puts "\n* If you need the index you can iterate using each_with_index"
c.each_with_index do |value, i|
  puts "index #{i}: #{value}"
end

puts "\n* Set operations are supported through the | (union), & (intersection), and - (difference) operators"
d = [1, 3, 5]
puts "c = #{c}"
puts "d = #{d}"
puts "Union: c | d => #{c | d}"
puts "Intersection: c & d => #{c & d}"
puts "Difference: c - d => #{c - d}"
