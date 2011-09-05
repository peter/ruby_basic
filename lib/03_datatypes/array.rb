puts "* Arrays are a resizable sequence of values accessed by index"
a = ["Ruby", 3.14]
a[1] = 99
a << "Rails"
puts "a == #{a}"

puts "\n* The +, <<, and [] operators have the same semantics for arrays as for strings"
b = %w{C Java Ruby}
puts "b = #{b}"
puts "b[1] == #{b[1]}"
puts "b[2, 1] == #{b[2, 1]}"
puts "b[1..2] == #{b[1..2]}"
puts "a + b == #{a + b}"

puts "\n* For strings without spaces, create arrays with %w (single quoted) and %W (double quoted):"
puts "%w{C Java Ruby}"

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

puts "\n* Iteration can be done with Enumerable#each and a code block: c.each do |value| .. end"
c.each do |value|
  puts value.to_s
end

puts "\n* If you need access to the index - use the Enumerable#each_with_index method"
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
