puts "* Symbol literals are created by prefixing a string with a colon"
puts ":action.class => #{:action.class}"
puts ":'this is also a symbol'.class => #{:'this is also a symbol'.class}"
puts "convert to string with to_s - :action.to_s == 'action'"
puts "convert string to symbol with to_sym - 'action'.to_sym == :action"

puts "\n* Symbols are immutable - there is only one instance of every symbol"
puts ":action.equal?(:action) == true"
puts "'action'.equal?('action') == false"

puts "\n* Symbols are typically used as keys in hashes"
my_hash = {:controller => "home", :action => "index"}
puts my_hash.inspect
