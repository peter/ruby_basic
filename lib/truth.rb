puts "* All objects evaluate to true except false and nil:"
[0, '', [], 1.0, "hello", Object.new, true, false, nil].each do |value|
  if value
    puts("#{value.inspect} is true")
  else
    puts("#{value.inspect} is false")
  end
end
