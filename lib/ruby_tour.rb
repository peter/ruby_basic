# Outputting a string
puts "Hello World!"

# Assigning a value to a variable
my_variable = 5

# Defining a class with an instance method
class MyClass
  def my_method
    puts "my_method was invoked"
  end
end

# Instantiating an object from a class
my_object = MyClass.new

# Checking what class an object is
puts "Hello, World".is_a?(String)

# Invoking a method on an object
my_object.my_method

# Creating an array (list) of objects
my_array = [5, "foobar", 3.14]

# Iterating over an array (a typical loop in Ruby)
my_array.each do |value|
  puts value
end

# Create a hash with key-value pairs
my_hash = {
  :name => "Peter",
  :age => 36
}

# Reading a value from a hash
puts my_hash[:name]

# Writing a value to a hash
my_hash[:name] = "Mauritz"

puts my_hash[:name]

# The keys in hashes are symbols. They are prefixed with a colon
