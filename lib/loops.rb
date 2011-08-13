puts "* while loops execute a code block as long as an expression is true"
count = 0
while count < 3
  puts count
  count += 1
end

puts "\n* Like if statements, while loops can be used as statement modifiers"
count = 0
puts count while (count < 3 && count += 1)

puts "\n* You can use for..in for iteration. The next and break keywords can be used in loops"
for value in [0, 1, 2, 3, 4]
  next if value == 1
  break if value == 3
  puts value
end

puts "\nAn until loop executes until an expression is true"
count = 0
until count == 3
   puts count
   count += 1
end

puts "\nuntil loops can also be statement modifiers"
count = 0
puts(count += 1) until count == 3
