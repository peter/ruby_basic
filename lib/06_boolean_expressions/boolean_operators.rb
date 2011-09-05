puts "* Boolean expressions return the last evaluated object"
puts "5 && 2 => " + (5 && 2).to_s

a = nil
b = nil
c = 4
puts "\n============================"
puts "Variables: a=#{a.inspect}, b=#{b.inspect}, c=#{c.inspect}"
puts "============================"

puts "\n* The && operator has higher precedence than ||"
puts "a && b || c => " + (a && b || c).inspect
puts "a && (b || c) => " + (a && (b || c)).inspect

puts "\n* Assignment (=) has lower precedence than ||"
result = b || c
puts "result = b || c => result == " + result.inspect

(result = b) || c
puts "(result = b) || c => result == " + result.inspect

puts "\n* Assignment (=) has higher precedence than 'or'"
result = b or c
puts "result = b or c => result == " + result.inspect

puts "\n* Boolean expressions are evaluated from left to right only as far as needed"
$d_method_invoked = false
def d
  puts "d invoked"
  $d_method_invoked = true
end
puts "b && c && d() => " + (b && c && d()).inspect
puts "The d method was never invoked since b is nil" unless $d_method_invoked
