puts "* Hashes are associative arrays with a unique set of keys, each corresponding to a value"
a = {:lang => 'Ruby', :framework => 'Rails'}
puts "a = #{a}"

puts "\n* Access a value through its key with []"
puts "a[:lang] == #{a[:lang].inspect}"
puts "a[:perl] == #{a[:perl].inspect}"

puts "\n* Change a value with []="
a[:lang] = 'Java'
puts "a[:lang] = 'Java'"
puts "a == #{a}"

puts "\n* Iterate over keys and values with each do |key, value| ... end"
a.each do |key, value|
  puts "#{key}: #{value}"
end

puts "\n* You can merge two arrays"
b = {:name => "Peter", :framework => "Sinatra"}
puts "b = #{b}"
puts "a.merge(b) == #{a.merge(b)}"

puts "\n* Just like Array, Hash implements the Enumerable module with useful methods like: all?, any?, select, reject, sort"

puts "\n* You can use a hash argument to emulate named method arguments"

def my_method(options = {})
  options.each do |key, value|
    puts "#{key}: #{value}"
  end
end

my_method :apples => "Golden Delicious", :bananas => "Chiquita"
