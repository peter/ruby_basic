def print_values(first_arg, *args)
  puts "first_arg = #{first_arg.inspect} args = #{args.inspect}"
  puts first_arg.inspect
  args.each do |arg|
    puts arg.inspect
  end
end

print_values(1, 2, 3, "foobar")

# The asterisk (splat operator) also converts from an Array to arguments
my_arguments = [1, 2, 3, "foobar"]
print_values(*my_arguments)

# Zero variable arguments
print_values(1)
