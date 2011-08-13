puts "* Range literals with two or three dots"
puts "Two dots is inclusive, i.e. 1 to 5: 1..5"
puts "Three dots is exclusive, i.e. 1 to 4: 1...5"

puts "\n* Just like Array and Hash, Range implements Enumerable so we can iterate with the each method:"
(1..5).each do |value|
  puts value
end
