def square(number)
  number * number
end

square1 = square(2+2)*2 # => square(4)*2 = 32
square2 = square (2+2)*2 # => square(4*2) = 64
puts "square1: #{square1}, square2: #{square2}"
