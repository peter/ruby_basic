puts "* The class hierarchy of small integers is:"
puts "#{2.class} < #{2.class.superclass} < #{2.class.superclass.superclass} < #{2.class.superclass.superclass.superclass}"

puts "\n* Big integers become objects of the class Bignum < Integer"
puts "#{2**100}.class => #{(2**100).class}"

puts "\n* Dividing two integers will truncate the result"
puts "2/3 => #{2/3}"

puts "\n* Floating point numbers are objects of the class Float < Numeric"
puts "(2.0).class => #{(2.0).class}"


puts "\n* If you mix integer and float in an expression the result will be a float"
puts "2/3.0 => #{2/3.0}"

puts "\n* Use the to_i and to_f conversion methods to convert to integer or float"
puts "\"2\".to_i + \"3.0\".to_f => #{"2".to_i + "3.0".to_f}"

puts "\n* Mathematical operators (+,-,/,*) are type checked"
begin
  2 + "3" # => TypeError: String can't be coerced into Fixnum
rescue => e
  puts "2 + \"3\" raises exception: #{e}"
end

puts "\n* Rounding errors with Float but not with BigDecimal"
puts "0.1 == 0.4 - 0.3 => #{0.1 == 0.4 - 0.3}"
require 'bigdecimal'
puts "BigDecimal.new('0.1') == BigDecimal.new('0.4') - BigDecimal.new('0.3') => #{BigDecimal.new('0.1') == BigDecimal.new('0.4') - BigDecimal.new('0.3')}"
