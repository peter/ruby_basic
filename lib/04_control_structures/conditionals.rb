puts "* If statements use the keywords if, elsif, and else"
var = 5
if var == 5
  puts "var is 5"
elsif var == 3
  puts "var is 3"
else
  puts "var is something else"
end

puts "\n* If statements return the last evaluated expression and can be used in assignments"
count = 4
message = if count > 10
            "You lose"
          else
            "Enter command"
          end
puts message

puts "\n* You can write more compact if statements by using the optional 'then' separator"
count = 9
message = if count > 10 then    "You lose"
          elsif count == 9 then "About to lose"
          else                  "Enter Command"
          end
puts message

puts "\n* Remember that every value except 'false' and 'nil' is true"
value = ""
if value
  puts "If statement entered for empty string"
end

puts "\n* 'unless <expression>' is equivalent to 'if !<expression>'"

puts "\n* You can use if/unless as a statement modifiers"
puts "count == 4" if count == 4
puts "count is too big" unless count < 10

puts "\n* The conditional (ternary) operator is a compact alternative to the if statement"
puts "<expression> ? : <true-value> : <false-value>"
status = count > 10 ? "Number too big" : "ok"
puts status

puts "\n* The case statement is a powerful alternative to if/elsif/else that uses the === (triple equals) operator"
x = 17
case x
when 0
when 1, 2..5
  puts "Second branch"
when 6..10
  puts "Third branch"
when *[11, 12]
  puts "Fourth branch"
when Integer
  puts "Fifth branch"
when /\d+\.\d+/
  puts "Sixth branch"
when x.to_s.downcase == "peter"
  puts "Seventh branch"
else
  puts "Eight branch"
end

puts "\nNOTE: Unlike in other languages (compare Javas switch statement), there is no fall-through in Rubys case statements"
puts "\nNOTE: Ruby's case statements work with arbitrary run-time expressions, not just compile time constants"
